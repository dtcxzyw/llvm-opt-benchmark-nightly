inline.NumInlined: 5997
inline.NumDeleted: 1809
begin_hunk_0_@_RNvNtCs7p2uQeJxui2_9deltalake6reader24convert_stream_to_reader:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.e) #48
          to label %.body.i unwind label %bb.p, !noalias !15747

bb.p:                                             ; preds = %bb.o, %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15747
  unreachable

bb.q:                                             ; preds = %bb.d, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body8

.body8:                                           ; preds = %.body.i, %bb.q
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %.pn.i, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15759)
  call void @llvm.experimental.noalias.scope.decl(metadata !15762)
  %i.be = load ptr, ptr %i.k, align 8, !alias.scope !15765, !nonnull !19, !noundef !19
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !15765
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %.body8
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
          to label %bb.ac unwind label %bb.z

bb.s:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bh = load i8, ptr %i.h, align 1, !range !113, !noalias !15747, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.ax, ptr %i.m, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15766)
  call void @llvm.experimental.noalias.scope.decl(metadata !15769)
  %i.bi = load ptr, ptr %i.k, align 8, !alias.scope !15772, !nonnull !19, !noundef !19
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !15772
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit12

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit12 unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit12: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bl = load ptr, ptr %i.m, align 8, !nonnull !19, !noundef !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 %i.bh, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %1, ptr %i.bp, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15773
  %i.bq = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 56, i64 noundef range(i64 1, 129) 8) #46, !noalias !15773 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.u, label %bb.x, !prof !28

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit12
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #47
          to label %.noexc13 unwind label %bb.v

.noexc13:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7p2uQeJxui2_9deltalake6reader21StreamToReaderAdapterEBK_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #48
          to label %.body.thread unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bu = insertvalue { ptr, ptr } poison, ptr %i.bq, 0
  %i.bv = insertvalue { ptr, ptr } %i.bu, ptr @140, 1
  ret { ptr, ptr } %i.bv

bb.y:                                             ; preds = %bb.t
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.l) #48
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.r, %bb.ac, %bb.y
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !15776)
  call void @llvm.experimental.noalias.scope.decl(metadata !15779)
  %i.by = load ptr, ptr %i.m, align 8, !alias.scope !15782, !nonnull !19, !noundef !19
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !15782
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #51
          to label %bb.ac unwind label %bb.z

.body.thread:                                     ; preds = %bb.v, %bb.ac
  %.pn19 = phi { ptr, i32 } [ %.pn.ph, %bb.ac ], [ %i.bs, %bb.v ]
  resume { ptr, i32 } %.pn19

bb.ac:                                            ; preds = %bb.b, %bb.r, %.body8, %bb.ab, %bb.aa
  %.pn.ph = phi { ptr, i32 } [ %i.q, %bb.b ], [ %eh.lpad-body9, %.body8 ], [ %eh.lpad-body9, %bb.r ], [ %i.bw, %bb.ab ], [ %i.bw, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEECs7p2uQeJxui2_9deltalake(ptr nonnull %0, ptr nonnull %1) #48
          to label %.body.thread unwind label %bb.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes11static_drop(ptr noalias nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #15 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @141, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs9Ct3XQYJhun_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXCs3CpK1kANj6B_13arrow_pyarrowNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB2_11IntoPyArrow12into_pyarrowCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_Cs3CpK1kANj6B_13arrow_pyarrowNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB5_9ToPyArrow10to_pyarrow(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %1) #48
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 14 uses
  %i.h = alloca [40 x i8], align 8                ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCNvXNtCs7p2uQeJxui2_9deltalake6readerNtB1s_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0INtNtB2A_6option6OptionINtNtB2A_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEEEB1u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145)
  %i.l = load i64, ptr %i.j, align 8, !range !654, !noundef !19 ; 2 uses
  %.not3 = icmp eq i64 %i.l, -9223372036854775807
  br i1 %.not3, label %3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = icmp ne i64 %i.l, -9223372036854775808
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i8, ptr %i.m, align 8, !range !113
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %2, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.c, label %3

3:                                                ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  br label %bb.aw

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !15783)
  call void @llvm.experimental.noalias.scope.decl(metadata !15786)
  call void @llvm.experimental.noalias.scope.decl(metadata !15788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15790
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !15788, !noalias !15791, !noundef !19 ; 6 uses
  %i.r = icmp ult i64 %i.q, 576460752303423488
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15790
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.q, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.e unwind label %bb.d, !noalias !15790

.body.i:                                          ; preds = %.thread.i, %bb.ae, %bb.k, %bb.d
  %.pn34.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.k ], [ %.pn49.i, %.thread.i ], [ %i.s, %bb.d ], [ %i.ck, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i) #48
          to label %.body unwind label %bb.an, !noalias !15791

bb.d:                                             ; preds = %bb.af, %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.c, align 8, !range !98, !noalias !15790, !noundef !19
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !645, !noalias !15790, !noundef !19 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g, !prof !114

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !15790
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #47
          to label %bb.n unwind label %bb.d, !noalias !15790

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !15790, !nonnull !19, !noundef !19
  %i.aa = icmp samesign ule i64 %i.q, %i.w
  call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15790
  store i64 %i.w, ptr %i.g, align 8, !noalias !15790
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.z, ptr %i.ab, align 8, !noalias !15790
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i64 0, ptr %i.ac, align 8, !noalias !15790
  %.not98.i = icmp eq i64 %i.q, 0
  br i1 %.not98.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !15786, !noalias !15792, !noundef !19 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !15786, !noalias !15792, !nonnull !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.am, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !15786, !noalias !15792, !nonnull !19, !noundef !19 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !noalias !15790
  %i.aq = icmp slt i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.am, %.lr.ph.i
  %i.ar = phi i64 [ %i.q, %.lr.ph.i ], [ %i.cx, %bb.am ]
  %.sroa.011.097.i = phi i64 [ 0, %.lr.ph.i ], [ %i.as, %bb.am ] ; 12 uses
  %i.as = add nuw nsw i64 %.sroa.011.097.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.011.097.i, %i.ae
  br i1 %exitcond.not.i, label %.invoke.i, label %bb.m

bb.i:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !15790
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noundef nonnull %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.k, !noalias !15793

bb.j:                                             ; preds = %._crit_edge.i
  call void @llvm.trap()
  unreachable

.thread54.loopexit.i:                             ; preds = %bb.ab, %bb.aa, %bb.y
  %lpad.loopexit56.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread54.loopexit.split-lp.i:                    ; preds = %.invoke.i
  %lpad.loopexit.split-lp57.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.k:                                             ; preds = %bb.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15790
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.af, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15790
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RNvMs_NtCs7p2uQeJxui2_9deltalake6readerNtB4_21StreamToReaderAdapter15normalize_batch.exit unwind label %bb.av

bb.m:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.011.097.i ; 3 uses
  %i.au = load i8, ptr %i.at, align 8, !range !6094, !noalias !15790, !noundef !19
  %.not.i = icmp eq i8 %i.au, 41
  br i1 %.not.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.t, %bb.f
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15790
  %i.av = load ptr, ptr %i.ah, align 8, !alias.scope !15788, !noalias !15791, !nonnull !19, !noundef !19 ; 4 uses
  %i.aw = atomicrmw add ptr %i.av, i64 1 monotonic, align 8, !noalias !15790
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit37.i, %bb.m
  %i.ay = phi i64 [ %.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit37.i ], [ %i.ar, %bb.m ] ; 3 uses
  %i.az = icmp ult i64 %.sroa.011.097.i, %i.ay
  br i1 %i.az, label %bb.ao, label %.invoke.i

bb.q:                                             ; preds = %bb.o
  store ptr %i.av, ptr %i.f, align 8, !noalias !15790
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !15790, !noundef !19 ; 2 uses
  %i.bc = icmp ult i64 %.sroa.011.097.i, %i.bb
  br i1 %i.bc, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !15790, !nonnull !19, !noundef !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.011.097.i
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !15790, !nonnull !19, !noundef !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.w unwind label %.loopexit.i, !noalias !15790

bb.t:                                             ; preds = %bb.q
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.011.097.i, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #47
          to label %bb.n unwind label %.loopexit.split-lp.i, !noalias !15790

.loopexit.i:                                      ; preds = %bb.s
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.t
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15794)
  call void @llvm.experimental.noalias.scope.decl(metadata !15797)
  %i.bk = load ptr, ptr %i.f, align 8, !alias.scope !15800, !noalias !15790, !nonnull !19, !noundef !19
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !15801
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #51
          to label %.thread.i unwind label %bb.an, !noalias !15790

bb.w:                                             ; preds = %bb.s
  br i1 %i.bj, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !15802)
  call void @llvm.experimental.noalias.scope.decl(metadata !15805)
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !15808, !noalias !15790, !nonnull !19, !noundef !19
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !15809
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit37.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #51
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit37.i unwind label %.thread54.loopexit.i, !noalias !15790

bb.z:                                             ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_RNvXNtCs7p2uQeJxui2_9deltalake6readerNtB2_21StreamToReaderAdapterNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next:bb.a

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit39.i
  %i.bv = load ptr, ptr %i.ai, align 8, !alias.scope !15788, !noalias !15791, !nonnull !19, !noundef !19
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.sroa.011.097.i ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !15790, !nonnull !19, !noundef !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !15790, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !46, !invariant.load !19, !noalias !15790
  %i.cc = add nsw i64 %i.cb, -1
  %i.cd = and i64 %i.cc, -16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  invoke void @_RNvNtCsb7CrJTM47Nd_10arrow_cast4cast4cast(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.bz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.ac unwind label %.thread54.loopexit.i, !noalias !15790

bb.ac:                                            ; preds = %bb.ab
  %i.cg = load i64, ptr %i.e, align 8, !range !5056, !noalias !15790, !noundef !19 ; 2 uses
  %.not32.i = icmp eq i64 %i.cg, -9223372036854775788
  %i.ch = load ptr, ptr %i.aj, align 8, !noalias !15790 ; 4 uses
  %i.ci = load ptr, ptr %i.ak, align 8, !noalias !15790 ; 3 uses
  br i1 %.not32.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !15790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15790
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.cg, ptr %i.cj, align 8, !alias.scope !15783, !noalias !15793
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ch, ptr %.sroa.221.0..sroa_idx.i, align 8, !alias.scope !15783, !noalias !15793
  %.sroa.322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.ci, ptr %.sroa.322.0..sroa_idx.i, align 8, !alias.scope !15783, !noalias !15793
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !15783, !noalias !15793
  store i64 -9223372036854775808, ptr %i.h, align 8, !alias.scope !15783, !noalias !15793
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.af unwind label %bb.ae, !noalias !15790

bb.ae:                                            ; preds = %bb.ad
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.ag, !noalias !15790

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.d, !noalias !15790

bb.ag:                                            ; preds = %bb.ae
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15790
  unreachable

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15790
  call void @llvm.experimental.noalias.scope.decl(metadata !15818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15790
  store ptr %i.ch, ptr %i.b, align 8, !noalias !15821
  store ptr %i.ci, ptr %i.al, align 8, !noalias !15821
  %i.cm = load i64, ptr %i.ac, align 8, !alias.scope !15818, !noalias !15823, !noundef !19 ; 3 uses
  %i.cn = load i64, ptr %i.g, align 8, !range !45, !alias.scope !15818, !noalias !15823, !noundef !19
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.ai, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aj, !noalias !15790

bb.aj:                                            ; preds = %bb.ai
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !15824
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ak, label %.thread.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #51
          to label %.thread.i unwind label %bb.al, !noalias !15790

bb.al:                                            ; preds = %bb.ak
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15790
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ai, %bb.ah
  %i.ct = load ptr, ptr %i.ab, align 8, !alias.scope !15818, !noalias !15823, !nonnull !19, !noundef !19
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cm ; 2 uses
  store ptr %i.ch, ptr %i.cu, align 8, !noalias !15790
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ci, ptr %i.cv, align 8, !noalias !15790
  %i.cw = add i64 %i.cm, 1
  store i64 %i.cw, ptr %i.ac, align 8, !alias.scope !15818, !noalias !15823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15790
  br label %bb.am

bb.am:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit46.i, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit.i
  %i.cx = phi i64 [ %i.ay, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit46.i ], [ %i.bt, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit.i ]
  %exitcond126.not.i = icmp eq i64 %i.as, %i.q
  br i1 %exitcond126.not.i, label %._crit_edge.i, label %bb.h

bb.an:                                            ; preds = %.thread.i, %bb.v, %.body.i
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15791
  unreachable

bb.ao:                                            ; preds = %bb.p
  %i.cz = load ptr, ptr %i.ai, align 8, !alias.scope !15788, !noalias !15791, !nonnull !19, !noundef !19
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %.sroa.011.097.i ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !noalias !15790, !nonnull !19, !noundef !19 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !15790, !nonnull !19, !align !20, !noundef !19 ; 2 uses
  %i.de = atomicrmw add ptr %i.db, i64 1 monotonic, align 8, !noalias !15790
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %bb.au, label %bb.ap

.invoke.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit39.i, %bb.p, %bb.h
  %i.dg = phi i64 [ %.sroa.011.097.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit39.i ], [ %i.ae, %bb.h ], [ %.sroa.011.097.i, %bb.p ]
  %i.dh = phi i64 [ %i.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit39.i ], [ %i.ae, %bb.h ], [ %i.ay, %bb.p ]
  %i.di = phi ptr [ @139, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit39.i ], [ @136, %bb.h ], [ @139, %bb.p ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dg, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #47
          to label %.cont.i unwind label %.thread54.loopexit.split-lp.i, !noalias !15790

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !15829)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15790
  store ptr %i.db, ptr %i.a, align 8, !noalias !15832
  store ptr %i.dd, ptr %i.am, align 8, !noalias !15832
  %i.dj = load i64, ptr %i.ac, align 8, !alias.scope !15829, !noalias !15834, !noundef !19 ; 3 uses
  %i.dk = load i64, ptr %i.g, align 8, !range !45, !alias.scope !15829, !noalias !15834, !noundef !19
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.aq, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit46.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit46.i unwind label %bb.ar, !noalias !15790

bb.ar:                                            ; preds = %bb.aq
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !15835
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #51
          to label %.thread.i unwind label %bb.at, !noalias !15790

bb.at:                                            ; preds = %bb.as
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !15790
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8push_mutCs7p2uQeJxui2_9deltalake.exit46.i: ; preds = %bb.aq, %bb.ap
  %i.dq = load ptr, ptr %i.ab, align 8, !alias.scope !15829, !noalias !15834, !nonnull !19, !noundef !19
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dj ; 2 uses
  store ptr %i.db, ptr %i.dr, align 8, !noalias !15790
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dd, ptr %i.ds, align 8, !noalias !15790
  %i.dt = add i64 %i.dj, 1
  store i64 %i.dt, ptr %i.ac, align 8, !alias.scope !15829, !noalias !15834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15790
  br label %bb.am

bb.au:                                            ; preds = %bb.ao
  call void @llvm.trap()
  unreachable

.thread.i:                                        ; preds = %bb.as, %bb.ar, %bb.ak, %bb.aj, %bb.v, %bb.u, %.thread54.loopexit.split-lp.i, %.thread54.loopexit.i
  %.pn49.i = phi { ptr, i32 } [ %i.cp, %bb.ak ], [ %i.dm, %bb.as ], [ %lpad.phi.i, %bb.v ], [ %lpad.phi.i, %bb.u ], [ %i.cp, %bb.aj ], [ %i.dm, %bb.ar ], [ %lpad.loopexit56.i, %.thread54.loopexit.i ], [ %lpad.loopexit.split-lp57.i, %.thread54.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #48
          to label %.body.i unwind label %bb.an, !noalias !15790

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.av
  %eh.lpad-body = phi { ptr, i32 } [ %i.du, %bb.av ], [ %.pn34.i, %.body.i ]
  %i.dv = load i64, ptr %i.j, align 8, !range !654, !noundef !19
  %cond = icmp eq i64 %i.dv, -9223372036854775808
  br i1 %cond, label %bb.ay, label %bb.ax

_RNvMs_NtCs7p2uQeJxui2_9deltalake6readerNtB4_21StreamToReaderAdapter15normalize_batch.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.dw = load i64, ptr %i.j, align 8, !range !654, !noundef !19
  %cond6 = icmp eq i64 %i.dw, -9223372036854775808
  br i1 %cond6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs7p2uQeJxui2_9deltalake.exit, label %bb.aw

bb.aw:                                            ; preds = %_RNvMs_NtCs7p2uQeJxui2_9deltalake6readerNtB4_21StreamToReaderAdapter15normalize_batch.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs7p2uQeJxui2_9deltalake.exit, %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMs_NtCs7p2uQeJxui2_9deltalake6readerNtB4_21StreamToReaderAdapter15normalize_batch.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.dx)
  br label %bb.aw

bb.ax:                                            ; preds = %.body, %bb.ay
  resume { ptr, i32 } %eh.lpad-body

bb.ay:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.j) #48
          to label %bb.ax unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @14, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtCs73bmgzuZ8Mg_21tracing_opentelemetry5layer7TimingsNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #14 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @16, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtCs1N9T06jgEdt_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtBO_11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENtNtB1Z_6marker4SendEL_ENtNtNtNtB1Z_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !19, !nonnull !19
  tail call void %i.e(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.a) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtCs1N9T06jgEdt_11arrow_array12record_batch17RecordBatchReaderp4ItemINtNtCsbvkFyIu7lgC_4core6result6ResultNtBO_11RecordBatchNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENtNtB1Z_6marker4SendEL_ENtNtNtNtB1Z_4iter6traits8iterator8Iterator9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !19, !nonnull !19
  tail call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.a) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EBM_4nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !19, !nonnull !19
  tail call void %i.e(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %i.a) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEL_EBM_9size_hintCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !19, !nonnull !19
  tail call void %i.e(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.a) #52
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB2_7SamplerNtB2_17CloneShouldSample9box_cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15843)
  %i.b = load i64, ptr %0, align 8, !range !657, !alias.scope !15843, !noalias !15840, !noundef !19
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !15840, !noalias !15843
  br label %_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %i.a, align 8, !alias.scope !15840, !noalias !15843
  br label %_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call { ptr, ptr } @_RNvXs_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_12ShouldSampleEL_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !15840 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.g, align 8, !alias.scope !15840, !noalias !15843
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.h, align 8, !alias.scope !15840, !noalias !15843
  store i64 2, ptr %i.a, align 8, !alias.scope !15840, !noalias !15843
  br label %_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !15845
  br label %_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !15846
  %i.i = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 2697) 24, i64 noundef range(i64 1, 129) 8) #46, !noalias !15846 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler7SamplerE3newCs7p2uQeJxui2_9deltalake.exit, !prof !28

bb.f:                                             ; preds = %_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #47
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler7SamplerECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #48
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.k

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7sampler7SamplerE3newCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs2_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace7samplerNtB5_7SamplerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr @19, 1
  ret { ptr, ptr } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan10set_statusCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span10set_status(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan11update_nameCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !19, !align !20, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !15852
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !19, !noalias !15849, !nonnull !19
  call void %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #52, !noalias !15849, !inline_history !15859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15849
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan12is_recordingCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span12is_recording(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 16 ptr @_RNvXNtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB2_9BoxedSpanNtB2_14ObjectSafeSpan12span_contextCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 16 ptr @_RNvXs1_NtNtCskFSgV2vI2Ct_13opentelemetry6global5traceNtB5_9BoxedSpanNtNtNtB9_5trace4span4Span12span_context(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
