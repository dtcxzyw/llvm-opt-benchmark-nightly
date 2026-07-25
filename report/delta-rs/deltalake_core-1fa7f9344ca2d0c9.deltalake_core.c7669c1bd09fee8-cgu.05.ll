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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19889)
  %i.w = load i64, ptr %i.j, align 8, !range !123, !alias.scope !19892, !noalias !19889, !noundef !9
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  br i1 %i.x, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j, !noalias !19889

common.resume:                                    ; preds = %bb.s, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 %i.n, ptr %i.j, align 8, !alias.scope !19896
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %common.resume

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writer19ArrowRowGroupWriterE6insertCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.i
  store i64 %i.n, ptr %i.j, align 8, !alias.scope !19896
  %.sroa.3.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  br label %bb.f

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsb_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerNtB5_19ArrowRowGroupWriter5write(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  %i.z = load i64, ptr %i.b, align 8, !range !9719, !noundef !9
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
  %i.ae = load i64, ptr %i.a, align 8, !range !9719, !noundef !9
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
  %i.ah = load i64, ptr %i.c, align 8, !range !9719, !noundef !9
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
  %i.b = shl nuw i64 %2, 5
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
  call void @llvm.experimental.noalias.scope.decl(metadata !19897)
  call void @llvm.experimental.noalias.scope.decl(metadata !19900)
  call void @llvm.experimental.noalias.scope.decl(metadata !19903)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !19906, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19906
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19910)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19910, !noalias !19907, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 16)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !19912

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19919)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !19922, !noalias !19907, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !19923
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !19907

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !19910, !noalias !19907, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !19912, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !19912

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19907
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !19912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19930)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !19933, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !19933
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
  %i.b = shl nuw i64 %2, 3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !19934)
  call void @llvm.experimental.noalias.scope.decl(metadata !19937)
  call void @llvm.experimental.noalias.scope.decl(metadata !19940)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !19943, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19943
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19947)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19947, !noalias !19944, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !19949

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19956)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !19959, !noalias !19944, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !19960
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !19944

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !19947, !noalias !19944, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !19949, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !19949

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19944
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !19949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19967)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !19970, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !19970
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
  %i.b = shl nuw i64 %2, 4
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
  call void @llvm.experimental.noalias.scope.decl(metadata !19971)
  call void @llvm.experimental.noalias.scope.decl(metadata !19974)
  call void @llvm.experimental.noalias.scope.decl(metadata !19977)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !19980, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19980
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19984)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !19984, !noalias !19981, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !19986

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19993)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !19996, !noalias !19981, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !19997
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !19981

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !19984, !noalias !19981, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !19986, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !19986

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !19981
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !19986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20004)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20007, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20007
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
  %i.b = shl nuw i64 %2, 1
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20008)
  call void @llvm.experimental.noalias.scope.decl(metadata !20011)
  call void @llvm.experimental.noalias.scope.decl(metadata !20014)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20017, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20017
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20021)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20021, !noalias !20018, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 2)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20023

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20030)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20033, !noalias !20018, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20034
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20018

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20021, !noalias !20018, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20023, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20023

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20018
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20041)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20044, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20044
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20045)
  call void @llvm.experimental.noalias.scope.decl(metadata !20048)
  call void @llvm.experimental.noalias.scope.decl(metadata !20051)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !20054, !nonnull !9, !noundef !9
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !20054
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20058)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20058, !noalias !20055, !noundef !9
  %i.h = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.g, i64 noundef 1)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !20060

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20067)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !20070, !noalias !20055, !nonnull !9, !noundef !9
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !20071
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.g, !noalias !20055

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %bb.h, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !20058, !noalias !20055, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !20060, !noundef !9
  %.not.i = icmp eq ptr %i.p, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.e, !noalias !20060

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20055
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20078)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !20081, !nonnull !9, !noundef !9
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !20081
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
  %i.b = shl nuw i64 %2, 3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20082)
  call void @llvm.experimental.noalias.scope.decl(metadata !20085)
  call void @llvm.experimental.noalias.scope.decl(metadata !20088)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20091, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20091
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20095)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20095, !noalias !20092, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20097

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20104)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20107, !noalias !20092, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20108
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20092

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20095, !noalias !20092, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20097, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20097

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20092
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20115)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20118, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20118
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
  %i.b = shl nuw i64 %2, 2
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20119)
  call void @llvm.experimental.noalias.scope.decl(metadata !20122)
  call void @llvm.experimental.noalias.scope.decl(metadata !20125)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20128, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20128
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20132)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20132, !noalias !20129, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20134

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20141)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20144, !noalias !20129, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20145
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20129

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20132, !noalias !20129, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20134, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20134

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20129
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20152)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20155, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20155
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20156)
  call void @llvm.experimental.noalias.scope.decl(metadata !20159)
  call void @llvm.experimental.noalias.scope.decl(metadata !20162)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !20165, !nonnull !9, !noundef !9
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !20165
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20169)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !20169, !noalias !20166, !noundef !9
  %i.h = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.g, i64 noundef 1)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.e, !noalias !20171

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20178)
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !20181, !noalias !20166, !nonnull !9, !noundef !9
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !20182
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.g, !noalias !20166

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %bb.h, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.n = load ptr, ptr %i.a, align 8, !alias.scope !20169, !noalias !20166, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !20171, !noundef !9
  %.not.i = icmp eq ptr %i.p, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.e, !noalias !20171

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20166
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20189)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !20192, !nonnull !9, !noundef !9
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !20192
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
  %i.b = shl nuw i64 %2, 2
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20193)
  call void @llvm.experimental.noalias.scope.decl(metadata !20196)
  call void @llvm.experimental.noalias.scope.decl(metadata !20199)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20202, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20202
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20206)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20206, !noalias !20203, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20208

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20215)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20218, !noalias !20203, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20219
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20203

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20206, !noalias !20203, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20208, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20208

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20203
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20226)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20229, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20229
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
  %i.b = shl nuw i64 %2, 2
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20230)
  call void @llvm.experimental.noalias.scope.decl(metadata !20233)
  call void @llvm.experimental.noalias.scope.decl(metadata !20236)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20239, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20239
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20243)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20243, !noalias !20240, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 4)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20245

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20252)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20255, !noalias !20240, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20256
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20240

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20243, !noalias !20240, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20245, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20245

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20240
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20263)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20266, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20266
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
  %i.b = shl nuw i64 %2, 4
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20267)
  call void @llvm.experimental.noalias.scope.decl(metadata !20270)
  call void @llvm.experimental.noalias.scope.decl(metadata !20273)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20276, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20276
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20280)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20280, !noalias !20277, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 16)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20282

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20289)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20292, !noalias !20277, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20293
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20277

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20280, !noalias !20277, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20282, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20282

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20277
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20300)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20303, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20303
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20304)
  %i.l = shl nuw i64 %2, 4
  %i.m = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 1152921504606846975
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20307
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !20309

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @56, %bb.b ], [ @189, %bb.c ]
  %i.q = phi ptr [ @192, %bb.b ], [ @191, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #37
          to label %.cont.i unwind label %bb.e, !noalias !20307

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.y, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20310)
  call void @llvm.experimental.noalias.scope.decl(metadata !20313)
  call void @llvm.experimental.noalias.scope.decl(metadata !20316)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !20319, !noalias !20309, !nonnull !9, !noundef !9
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !20320
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.m, !noalias !20309

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !20321)
  call void @llvm.experimental.noalias.scope.decl(metadata !20324)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !20324, !noalias !20326, !noundef !9
  %i.x = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.w, i64 noundef 16)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.h, !noalias !20327

bb.h:                                             ; preds = %.invoke.i.i, %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20328)
  call void @llvm.experimental.noalias.scope.decl(metadata !20331)
  call void @llvm.experimental.noalias.scope.decl(metadata !20334)
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !20337, !noalias !20326, !nonnull !9, !noundef !9
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !20338
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body.i unwind label %bb.j, !noalias !20339

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.g
  %i.ac = icmp eq i64 %i.x, 0
  br i1 %i.ac, label %bb.k, label %.invoke.i.i, !prof !70

.invoke.i.i:                                      ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !20324, !noalias !20326, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !20327, !noundef !9
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @473, ptr @475
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #37
          to label %.cont.i.i unwind label %bb.h, !noalias !20327

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20339
  unreachable

bb.k:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20340, !noalias !20304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20307
  call void @llvm.experimental.noalias.scope.decl(metadata !20341)
  call void @llvm.experimental.noalias.scope.decl(metadata !20344)
  call void @llvm.experimental.noalias.scope.decl(metadata !20347)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !20350, !noalias !20309, !nonnull !9, !noundef !9
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !20351
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE3newCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !20309
  br label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE3newCs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20309
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
  %i.b = shl nuw i64 %2, 1
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20352)
  call void @llvm.experimental.noalias.scope.decl(metadata !20355)
  call void @llvm.experimental.noalias.scope.decl(metadata !20358)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20361, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20361
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20365)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20365, !noalias !20362, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 2)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20367

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20374)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20377, !noalias !20362, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20378
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20362

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20365, !noalias !20362, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20367, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20367

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20362
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20385)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20388, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20388
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
  %i.b = shl nuw i64 %2, 1
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20389)
  call void @llvm.experimental.noalias.scope.decl(metadata !20392)
  call void @llvm.experimental.noalias.scope.decl(metadata !20395)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20398, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20398
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20402)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20402, !noalias !20399, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 2)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20404

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20411)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20414, !noalias !20399, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20415
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20399

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20402, !noalias !20399, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20404, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20404

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20399
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20422)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20425, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20425
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
  %i.b = shl nuw i64 %2, 3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20426)
  call void @llvm.experimental.noalias.scope.decl(metadata !20429)
  call void @llvm.experimental.noalias.scope.decl(metadata !20432)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20435, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20435
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20439)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20439, !noalias !20436, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20441

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20448)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20451, !noalias !20436, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20452
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20436

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20439, !noalias !20436, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20441, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20441

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20436
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20459)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20462, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20462
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
  %i.b = shl nuw i64 %2, 3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !20463)
  call void @llvm.experimental.noalias.scope.decl(metadata !20466)
  call void @llvm.experimental.noalias.scope.decl(metadata !20469)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !20472, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !20472
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20476)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !20476, !noalias !20473, !noundef !9
  %i.n = invoke noundef i64 @_RINvNtCsbvkFyIu7lgC_4core3ptr12align_offsethECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.m, i64 noundef 8)
          to label %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.g, !noalias !20478

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20485)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !20488, !noalias !20473, !nonnull !9, !noundef !9
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !20489
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #42
          to label %.body unwind label %bb.i, !noalias !20473

_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.s = icmp eq i64 %i.n, 0
  br i1 %i.s, label %bb.j, label %.invoke.i, !prof !70

.invoke.i:                                        ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.t = load ptr, ptr %i.a, align 8, !alias.scope !20476, !noalias !20473, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !20478, !noundef !9
  %.not.i = icmp eq ptr %i.v, null                ; 3 uses
  %.2.i = select i1 %.not.i, ptr @473, ptr @475
  %.1.i = select i1 %.not.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i = select i1 %.not.i, ptr @472, ptr @474
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i, ptr noundef nonnull %.1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i) #37
          to label %.cont.i unwind label %bb.g, !noalias !20478

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !20473
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtCsbvkFyIu7lgC_4core3ptr9const_ptrPh12align_offsetCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !20478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20496)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !20499, !nonnull !9, !noundef !9
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !20499
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
  %i.c = load i64, ptr %i.a, align 8, !range !246, !noundef !9
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
