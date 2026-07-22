inline.NumInlined: 6802
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5flushCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.thread unwind label %bb.y

.thread:                                          ; preds = %.thread91, %bb.z
  %.pn7586 = phi { ptr, i32 } [ %.pn95, %.thread91 ], [ %lpad.thr_comm.split-lp, %bb.z ]
  resume { ptr, i32 } %.pn7586

bb.z:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.l) #38
          to label %.thread unwind label %bb.y
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5writeCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(280) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !9 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 8, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !range !123, !noundef !9
  %.not = icmp eq i64 %i.k, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.m, %bb.q, %bb.aa, %bb.p, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val16 = load i64, ptr %i.m, align 8, !noundef !9
  call void @_RNvMsc_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_26ArrowRowGroupWriterFactory23create_row_group_writer(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, i64 noundef %.val16)
  %i.n = load i64, ptr %i.f, align 8, !range !123, !noundef !9 ; 3 uses
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.o, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !9 ; 2 uses
  %i.s = add i64 %i.r, %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !9 ; 2 uses
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %bb.d

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19888)
  %i.w = load i64, ptr %i.j, align 8, !range !123, !alias.scope !19891, !noalias !19888, !noundef !9
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  br i1 %i.x, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j, !noalias !19888

common.resume:                                    ; preds = %bb.s, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 %i.n, ptr %i.j, align 8, !alias.scope !19895
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %common.resume

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.i
  store i64 %i.n, ptr %i.j, align 8, !alias.scope !19895
  %.sroa.3.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %bb.f

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsb_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_19ArrowRowGroupWriter5write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  %i.z = load i64, ptr %i.b, align 8, !range !9718, !noundef !9
  %.not11 = icmp eq i64 %i.z, 8
  br i1 %.not11, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.aa = sub i64 %i.u, %i.r                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch5slice(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef 0, i64 noundef %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ab = sub i64 %i.h, %i.aa
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch5slice(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i64 noundef %i.aa, i64 noundef %i.ab)
          to label %bb.u unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %i.q, align 8, !noundef !9
  %i.ad = load i64, ptr %i.t, align 8, !noundef !9
  %.not12 = icmp ult i64 %i.ac, %i.ad
  br i1 %.not12, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5flushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef align 8 dereferenceable(280) %1)
  %i.ae = load i64, ptr %i.a, align 8, !range !9718, !noundef !9
  %.not13 = icmp eq i64 %i.ae, 8
  br i1 %.not13, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.r
  store i64 8, ptr %0, align 8
  br label %bb.d

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.s:                                             ; preds = %bb.v, %bb.t
  %.pn = phi { ptr, i32 } [ %i.af, %bb.t ], [ %i.ag, %bb.v ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.e) #38
          to label %common.resume unwind label %bb.ab

bb.t:                                             ; preds = %bb.z, %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef align 8 dereferenceable(280) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.d) #38
          to label %bb.s unwind label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ah = load i64, ptr %i.c, align 8, !range !9718, !noundef !9
  %.not14 = icmp eq i64 %i.ah, 8
  br i1 %.not14, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(280) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y, %bb.x
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.d)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.ab:                                            ; preds = %bb.v, %bb.s
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferNtNtB8_6bigint4i256E3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 5
  %i.c = icmp ugt i64 %2, 576460752303423487
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 576460752303423487
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19896)
  call void @llvm.experimental.noalias.scope.decl(metadata !19899)
  call void @llvm.experimental.noalias.scope.decl(metadata !19902)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !19905, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19905
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19909)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19909, !noalias !19906, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 16)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !19911

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19918)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !19921, !noalias !19906, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !19922
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !19906

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !19909, !noalias !19906, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !19911, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !19911

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19906
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !19911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19929)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !19932, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !19932
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferNtNtB8_8interval15IntervalDayTimeE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19933)
  call void @llvm.experimental.noalias.scope.decl(metadata !19936)
  call void @llvm.experimental.noalias.scope.decl(metadata !19939)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !19942, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19942
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19946)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19946, !noalias !19943, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !19948

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19955)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !19958, !noalias !19943, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !19959
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !19943

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !19946, !noalias !19943, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !19948, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !19948

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19943
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !19948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19966)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !19969, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !19969
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferNtNtB8_8interval20IntervalMonthDayNanoE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 4
  %i.c = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19970)
  call void @llvm.experimental.noalias.scope.decl(metadata !19973)
  call void @llvm.experimental.noalias.scope.decl(metadata !19976)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !19979, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19979
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19983)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19983, !noalias !19980, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !19985

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19992)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !19995, !noalias !19980, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !19996
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !19980

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !19983, !noalias !19980, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !19985, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !19985

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19980
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !19985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20003)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20006, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20006
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferNtNtCs1t1quLay1hV_4half8binary163f16E3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 1
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %3, 0
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20007)
  call void @llvm.experimental.noalias.scope.decl(metadata !20010)
  call void @llvm.experimental.noalias.scope.decl(metadata !20013)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20016, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20016
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20020)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20020, !noalias !20017, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 2)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20022

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20029)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20032, !noalias !20017, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20033
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20017

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20020, !noalias !20017, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20022, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20022

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20017
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20040)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20043, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20043
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferaE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %bb.f ], [ %i.i, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20044)
  call void @llvm.experimental.noalias.scope.decl(metadata !20047)
  call void @llvm.experimental.noalias.scope.decl(metadata !20050)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !20053, !nonnull !9, !noundef !9
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !20053
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20057)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20057, !noalias !20054, !noundef !9
  %i.h = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.g, i64 noundef 1)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !20059

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20066)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !20069, !noalias !20054, !nonnull !9, !noundef !9
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !20070
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.g, !noalias !20054

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %bb.h, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !20057, !noalias !20054, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !20059, !noundef !9
  %.not.i = icmp eq ptr %i.p, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.e, !noalias !20059

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20054
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20077)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !20080, !nonnull !9, !noundef !9
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !20080
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferdE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20081)
  call void @llvm.experimental.noalias.scope.decl(metadata !20084)
  call void @llvm.experimental.noalias.scope.decl(metadata !20087)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20090, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20090
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20094)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20094, !noalias !20091, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20096

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20103)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20106, !noalias !20091, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20107
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20091

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20094, !noalias !20091, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20096, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20096

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20091
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20114)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20117, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20117
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferfE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20118)
  call void @llvm.experimental.noalias.scope.decl(metadata !20121)
  call void @llvm.experimental.noalias.scope.decl(metadata !20124)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20127, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20127
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20131)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20131, !noalias !20128, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20133

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20140)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20143, !noalias !20128, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20144
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20128

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20131, !noalias !20128, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20133, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20133

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20128
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20151)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20154, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20154
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferhE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %bb.f ], [ %i.i, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20155)
  call void @llvm.experimental.noalias.scope.decl(metadata !20158)
  call void @llvm.experimental.noalias.scope.decl(metadata !20161)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !20164, !nonnull !9, !noundef !9
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !20164
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20168)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20168, !noalias !20165, !noundef !9
  %i.h = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.g, i64 noundef 1)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !20170

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20177)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !20180, !noalias !20165, !nonnull !9, !noundef !9
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !20181
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.g, !noalias !20165

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %bb.h, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !20168, !noalias !20165, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !20170, !noundef !9
  %.not.i = icmp eq ptr %i.p, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.e, !noalias !20170

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20165
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20188)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !20191, !nonnull !9, !noundef !9
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !20191
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20192)
  call void @llvm.experimental.noalias.scope.decl(metadata !20195)
  call void @llvm.experimental.noalias.scope.decl(metadata !20198)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20201, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20201
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20205)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20205, !noalias !20202, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20207

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20214)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20217, !noalias !20202, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20218
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20202

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20205, !noalias !20202, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20207, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20207

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20202
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20225)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20228, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20228
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE5sliceCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  store ptr %i.b, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8
  call fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBuffermE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 2
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20229)
  call void @llvm.experimental.noalias.scope.decl(metadata !20232)
  call void @llvm.experimental.noalias.scope.decl(metadata !20235)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20238, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20238
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20242)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20242, !noalias !20239, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20244

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20251)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20254, !noalias !20239, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20255
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20239

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20242, !noalias !20239, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20244, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20244

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20239
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20262)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20265, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20265
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBuffernE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 4
  %i.c = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20266)
  call void @llvm.experimental.noalias.scope.decl(metadata !20269)
  call void @llvm.experimental.noalias.scope.decl(metadata !20272)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20275, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20275
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20279)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20279, !noalias !20276, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 16)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20281

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20288)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20291, !noalias !20276, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20292
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20276

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20279, !noalias !20276, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20281, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20281

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20276
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20299)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20302, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20302
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE5sliceCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !9
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20303)
  %i.l = shl i64 %2, 4
  %i.m = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20306
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !20308

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @56, %bb.b ], [ @189, %bb.c ]
  %i.q = phi ptr [ @192, %bb.b ], [ @191, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #37
          to label %.cont.i unwind label %bb.e, !noalias !20306

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20309)
  call void @llvm.experimental.noalias.scope.decl(metadata !20312)
  call void @llvm.experimental.noalias.scope.decl(metadata !20315)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !20318, !noalias !20308, !nonnull !9, !noundef !9
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !20319
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.m, !noalias !20308

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !20320)
  call void @llvm.experimental.noalias.scope.decl(metadata !20323)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !20323, !noalias !20325, !noundef !9
  %i.x = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.w, i64 noundef 16)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.h, !noalias !20326

bb.h:                                             ; preds = %.invoke.i.i, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20327)
  call void @llvm.experimental.noalias.scope.decl(metadata !20330)
  call void @llvm.experimental.noalias.scope.decl(metadata !20333)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !20336, !noalias !20325, !nonnull !9, !noundef !9
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !20337
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body.i unwind label %bb.j, !noalias !20338

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %bb.k, label %.invoke.i.i, !prof !70

.invoke.i.i:                                      ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !20323, !noalias !20325, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !20326, !noundef !9
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @473, ptr @475
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #37
          to label %.cont.i.i unwind label %bb.h, !noalias !20326

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20338
  unreachable

bb.k:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20339, !noalias !20303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20306
  call void @llvm.experimental.noalias.scope.decl(metadata !20340)
  call void @llvm.experimental.noalias.scope.decl(metadata !20343)
  call void @llvm.experimental.noalias.scope.decl(metadata !20346)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !20349, !noalias !20308, !nonnull !9, !noundef !9
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !20350
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE3newCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !20308
  br label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE3newCs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20308
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBuffersE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 1
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %3, 0
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20351)
  call void @llvm.experimental.noalias.scope.decl(metadata !20354)
  call void @llvm.experimental.noalias.scope.decl(metadata !20357)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20360, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20360
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20364)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20364, !noalias !20361, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 2)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20366

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20373)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20376, !noalias !20361, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20377
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20361

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20364, !noalias !20361, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20366, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20366

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20361
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20384)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20387, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20387
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBuffertE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 1
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %3, 0
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20388)
  call void @llvm.experimental.noalias.scope.decl(metadata !20391)
  call void @llvm.experimental.noalias.scope.decl(metadata !20394)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20397, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20397
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20401)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20401, !noalias !20398, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 2)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20403

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20410)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20413, !noalias !20398, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20414
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20398

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20401, !noalias !20398, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20403, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20403

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20398
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20421)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20424, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20424
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20425)
  call void @llvm.experimental.noalias.scope.decl(metadata !20428)
  call void @llvm.experimental.noalias.scope.decl(metadata !20431)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20434, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20434
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20438)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20438, !noalias !20435, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20440

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20447)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20450, !noalias !20435, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20451
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20435

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20438, !noalias !20435, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20440, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20440

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20435
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20458)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20461, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20461
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE5sliceCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  store ptr %i.b, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.j, align 8
  call fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferyE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = shl i64 %2, 3
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %.invoke, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.d, label %.invoke, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.b, i64 noundef %i.e)
          to label %bb.f unwind label %bb.d

.invoke:                                          ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ @56, %bb.a ], [ @189, %bb.b ]
  %i.g = phi ptr [ @192, %bb.a ], [ @191, %bb.b ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #37
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20462)
  call void @llvm.experimental.noalias.scope.decl(metadata !20465)
  call void @llvm.experimental.noalias.scope.decl(metadata !20468)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20471, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20471
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20475)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20475, !noalias !20472, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20477

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20484)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20487, !noalias !20472, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20488
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20472

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20475, !noalias !20472, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20477, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20477

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20472
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20495)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20498, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20498
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types14Decimal128TypeE24with_precision_and_scaleCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, i8 noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCs1N9T06jgEdt_11arrow_array5types36validate_decimal_precision_and_scaleNtB2_14Decimal128TypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i8 noundef %2, i8 noundef %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types14Decimal128TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %1) #38
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !245, !noundef !9
  %.not = icmp eq i64 %i.c, -9223372036854775788
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 41, ptr %0, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types14Decimal128TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  store i8 37, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %.sroa.42.0..sroa_idx, align 1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %3, ptr %.sroa.53.0..sroa_idx, align 2
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit(i64 noundef range(i64 24, 265) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef 8) #41 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data17get_parquet_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [264 x i8], align 8               ; 6 uses
  %i.f = alloca [200 x i8], align 8               ; 10 uses
end_hunk_0
