inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvNtNtCsgbCypRs12E4_4pyo35types8sequence16extract_sequenceNtCs7p2uQeJxui2_9deltalake11PyAddActionEBY_:bb.a
  br i1 %i.aw, label %bb.g, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40, !noalias !1559
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.f
  store ptr @265, ptr %i.av, align 8, !noalias !1559
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 45, ptr %i.ax, align 8, !noalias !1559
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i8 0, i64 16, i1 false), !noalias !1556
  %i.ay = insertelement <2 x ptr> <ptr poison, ptr @266>, ptr %i.av, i64 0
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit

_RNvXs_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtB8_8instance5BoundNtB4_10PySequenceENtB4_17PySequenceMethods3len.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %bb.i

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake11PyAddActionEEB1f_.exit, %bb.v, %bb.b
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.copyload7.i.i, %bb.e ], [ null, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %.sroa.04.0.i.i = phi i64 [ %.sroa.04.0.copyload5.i.i, %bb.e ], [ 1, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %i.az = phi <2 x i32> [ %i.au, %bb.e ], [ <i32 3, i32 undef>, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  %i.ba = phi <2 x ptr> [ %i.at, %bb.e ], [ %i.ay, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1559
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store i64 %.sroa.04.0.i.i, ptr %i.bb, align 8, !alias.scope !1556
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %.sroa.5.0.i.i, ptr %.sroa.218.0..sroa_idx.i, align 8, !alias.scope !1556
  %.sroa.319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store <2 x ptr> %i.ba, ptr %.sroa.319.0..sroa_idx.i, align 8, !alias.scope !1556
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false)
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store <2 x i32> %i.az, ptr %.sroa.622.0..sroa_idx.i, align 8, !alias.scope !1556
  store i64 1, ptr %i.ah, align 8, !alias.scope !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.bb)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtB8_8instance5BoundNtB4_10PySequenceENtB4_17PySequenceMethods3len.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0170 = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultjNtNtCsgbCypRs12E4_4pyo33err5PyErrEECs7p2uQeJxui2_9deltalake.exit ], [ %i.ap, %_RNvXs_NtNtCsgbCypRs12E4_4pyo35types8sequenceINtNtB8_8instance5BoundNtB4_10PySequenceENtB4_17PySequenceMethods3len.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, i64 noundef %.sroa.0.0170, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120)
  %i.bc = load i64, ptr %i.ad, align 8, !range !11, !noundef !12
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !62, !noundef !12 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.j, label %bb.k, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %i.bg, align 8
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #40
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !12, !noundef !12
  %i.bj = icmp ule i64 %.sroa.0.0170, %i.bf
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.bf, ptr %i.ai, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods8try_iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.r, %bb.m
  %.pn41 = phi { ptr, i32 } [ %i.bm, %bb.m ], [ %.pn, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake11PyAddActionEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #39
          to label %common.resume unwind label %bb.cw

bb.m:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.ag, align 8, !range !11, !noundef !12
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.025.0.copyload = load ptr, ptr %i.bp, align 8 ; 5 uses
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.526.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.025.0.copyload, ptr %i.bq, align 8
  store i64 1, ptr %0, align 8
  br label %bb.cy

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.56.i.sroa.7.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.56.i.sroa.7.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.529.i.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.529.i.sroa.7.sroa.8.0..sroa.529.i.sroa.7.0..sroa_idx86.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.529.i.sroa.7.sroa.10.0..sroa.529.i.sroa.7.0..sroa_idx86.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.529.i.sroa.7.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.529.i.sroa.7.sroa.7.0..sroa.529.i.sroa.7.0..sroa_idx87.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.529.i.sroa.7.sroa.8.0..sroa.529.i.sroa.7.0..sroa_idx87.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.529.i.sroa.7.sroa.10.0..sroa.529.i.sroa.7.0..sroa_idx87.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.562.i.sroa.7.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.6.sroa.7.sroa.8.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.6.sroa.7.sroa.10.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx10.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  br label %bb.q

bb.q:                                             ; preds = %bb.cv, %bb.p
  invoke void @_RNvMs1_NtNtCsgbCypRs12E4_4pyo35types8iteratorINtNtB9_8instance8BorrowedNtB5_10PyIteratorE4next(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noundef nonnull %.sroa.025.0.copyload)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %.body, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.s ], [ %eh.lpad-body, %.body ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.025.0.copyload) #43
  br label %bb.l

bb.s:                                             ; preds = %bb.q
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.cq = load i64, ptr %i.af, align 8, !range !212, !noundef !12 ; 2 uses
  %.not = icmp eq i64 %i.cq, 2
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.40)
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.025.0.copyload) #43
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.h

bb.w:                                             ; preds = %bb.u
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, i64 48, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.27.0.copyload, ptr %i.ct, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  br label %bb.cx

bb.x:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.27.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %.sroa.27.0.copyload, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1565
  %i.cu = load ptr, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, align 8, !noalias !1565, !nonnull !12, !noundef !12
  %i.cv = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 8), align 8, !noalias !1565, !noundef !12
  store ptr %i.a, ptr %i.h, align 8, !noalias !1565
  store ptr %i.cu, ptr %i.br, align 8, !noalias !1565
  store i64 %i.cv, ptr %i.bs, align 8, !noalias !1565
  %i.cw = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16))
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.x
  %.not.i.i49 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i49, label %bb.y, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i, !prof !20

bb.y:                                             ; preds = %.noexc
  %i.cx = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.y, %.noexc
  %.sroa.0.0.i.i = phi ptr [ %i.cw, %.noexc ], [ %i.cx, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1565
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i)
          to label %.noexc51 unwind label %.loopexit

.noexc51:                                         ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  %i.cy = load i64, ptr %i.y, align 8, !range !11, !noalias !1565, !noundef !12
  %i.cz = trunc nuw i64 %i.cy to i1
  %.sroa.064.0.copyload.i = load ptr, ptr %i.bt, align 8, !noalias !1565 ; 5 uses
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc51
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.da = load <2 x i64>, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.565.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.db = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.565.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.565.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.dc = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.565.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1565
  %i.dd = ptrtoint ptr %.sroa.064.0.copyload.i to i64
  br label %.thread.sink.split

bb.aa:                                            ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1565
  store ptr %.sroa.064.0.copyload.i, ptr %i.z, align 8, !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1565
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1900, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 4)
          to label %bb.ac unwind label %bb.ab, !noalias !1570

bb.ab:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.064.0.copyload.i) #43, !noalias !1570
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  %i.df = load i64, ptr %i.x, align 8, !range !11, !noalias !1565, !noundef !12
  %i.dg = trunc nuw i64 %i.df to i1
  %.sroa.56.i.sroa.0.0.copyload = load i64, ptr %i.bu, align 8, !noalias !1565 ; 2 uses
  %i.dh = load <2 x i64>, ptr %.sroa.56.i.sroa.7.0..sroa_idx82, align 8, !noalias !1565 ; 2 uses
  br i1 %i.dg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.56.i.sroa.7.sroa.8.0..sroa.56.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.di = load <2 x i64>, ptr %.sroa.56.i.sroa.7.sroa.8.0..sroa.56.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !1565
  %.sroa.56.i.sroa.7.sroa.10.0..sroa.56.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.dj = load <2 x i64>, ptr %.sroa.56.i.sroa.7.sroa.10.0..sroa.56.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.064.0.copyload.i) #43, !noalias !1570
  br label %.thread.sink.split

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1565
  store i64 %.sroa.56.i.sroa.0.0.copyload, ptr %i.aa, align 8, !noalias !1565
  store <2 x i64> %i.dh, ptr %.sroa.56.i.sroa.7.0..sroa_idx83, align 8, !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.064.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1565
  %i.dk = load ptr, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, align 8, !noalias !1565, !nonnull !12, !noundef !12
  %i.dl = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 8), align 8, !noalias !1565, !noundef !12
  store ptr %i.a, ptr %i.g, align 8, !noalias !1565
  store ptr %i.dk, ptr %i.bv, align 8, !noalias !1565
  store i64 %i.dl, ptr %i.bw, align 8, !noalias !1565
  %i.dm = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16))
          to label %.noexc.i unwind label %bb.ah, !noalias !1570 ; 2 uses

.noexc.i:                                         ; preds = %bb.ae
  %.not.i146.i = icmp eq ptr %i.dm, null
  br i1 %.not.i146.i, label %bb.af, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit149.i, !prof !20

bb.af:                                            ; preds = %.noexc.i
  %i.dn = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit149.i unwind label %bb.ah, !noalias !1570

bb.ag:                                            ; preds = %bb.an, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.dx, %bb.an ], [ %i.do, %bb.ah ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #39
          to label %.body unwind label %bb.cc, !noalias !1570

bb.ah:                                            ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit149.i, %bb.af, %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit149.i: ; preds = %bb.af, %.noexc.i
  %.sroa.0.0.i147.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.dn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1565
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i147.i)
          to label %bb.ai unwind label %bb.ah, !noalias !1570

bb.ai:                                            ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit149.i
  %i.dp = load i64, ptr %i.v, align 8, !range !11, !noalias !1565, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  %.sroa.070.0.copyload.i = load ptr, ptr %i.bx, align 8, !noalias !1565 ; 5 uses
  br i1 %i.dq, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dr = load <2 x i64>, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.571.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ds = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.571.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.571.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.dt = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.571.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1565
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ak, !noalias !1570

bb.ak:                                            ; preds = %bb.aj
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.al, !noalias !1570

bb.al:                                            ; preds = %bb.ak
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1570
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.aj
  %i.dw = ptrtoint ptr %.sroa.070.0.copyload.i to i64
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1565
  store ptr %.sroa.070.0.copyload.i, ptr %i.w, align 8, !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1565
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldxECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1900, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @687, i64 noundef 4)
          to label %bb.ao unwind label %bb.an, !noalias !1570

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.070.0.copyload.i) #43, !noalias !1570
  br label %bb.ag

bb.ao:                                            ; preds = %bb.am
  %i.dy = load i64, ptr %i.u, align 8, !range !11, !noalias !1565, !noundef !12
  %i.dz = trunc nuw i64 %i.dy to i1
  %.sroa.076.0.copyload.i = load i64, ptr %i.by, align 8, !noalias !1565 ; 2 uses
  br i1 %i.dz, label %bb.cp, label %bb.ar

bb.ap:                                            ; preds = %bb.aw, %bb.aq
  %.pn126.i = phi { ptr, i32 } [ %i.ea, %bb.aq ], [ %i.el, %bb.aw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #39
          to label %.body unwind label %bb.cc, !noalias !1570

bb.aq:                                            ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit154.i, %bb.as, %bb.ar
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.070.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1565
  %i.eb = load ptr, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, align 8, !noalias !1565, !nonnull !12, !noundef !12
  %i.ec = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 8), align 8, !noalias !1565, !noundef !12
  store ptr %i.a, ptr %i.f, align 8, !noalias !1565
  store ptr %i.eb, ptr %i.bz, align 8, !noalias !1565
  store i64 %i.ec, ptr %i.ca, align 8, !noalias !1565
  %i.ed = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16))
          to label %.noexc152.i unwind label %bb.aq, !noalias !1570 ; 2 uses

.noexc152.i:                                      ; preds = %bb.ar
  %.not.i150.i = icmp eq ptr %i.ed, null
  br i1 %.not.i150.i, label %bb.as, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit154.i, !prof !20

bb.as:                                            ; preds = %.noexc152.i
  %i.ee = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit154.i unwind label %bb.aq, !noalias !1570

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit154.i: ; preds = %bb.as, %.noexc152.i
  %.sroa.0.0.i151.i = phi ptr [ %i.ed, %.noexc152.i ], [ %i.ee, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1565
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i151.i)
          to label %bb.at unwind label %bb.aq, !noalias !1570

bb.at:                                            ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit154.i
  %i.ef = load i64, ptr %i.r, align 8, !range !11, !noalias !1565, !noundef !12
  %i.eg = trunc nuw i64 %i.ef to i1
  %.sroa.082.0.copyload.i = load ptr, ptr %i.cb, align 8, !noalias !1565 ; 5 uses
  br i1 %i.eg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.583.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.eh = load <2 x i64>, ptr %.sroa.583.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.583.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ei = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.583.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.583.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ej = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.583.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1565
  %i.ek = ptrtoint ptr %.sroa.082.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1565
  br label %bb.cm

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1565
  store ptr %.sroa.082.0.copyload.i, ptr %i.s, align 8, !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1565
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionB20_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1900, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 16)
          to label %bb.ax unwind label %bb.aw, !noalias !1570

bb.aw:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.082.0.copyload.i) #43, !noalias !1570
  br label %bb.ap

bb.ax:                                            ; preds = %bb.av
  %i.em = load i64, ptr %i.q, align 8, !range !11, !noalias !1565, !noundef !12
  %i.en = trunc nuw i64 %i.em to i1
  %.sroa.529.i.sroa.0.0.copyload = load i64, ptr %i.cc, align 8, !noalias !1565 ; 2 uses
  %i.eo = load <2 x i64>, ptr %.sroa.529.i.sroa.7.0..sroa_idx86, align 8, !noalias !1565 ; 2 uses
  %i.ep = load <2 x i64>, ptr %.sroa.529.i.sroa.7.sroa.8.0..sroa.529.i.sroa.7.0..sroa_idx86.sroa_idx, align 8, !noalias !1565 ; 2 uses
  %.sroa.529.i.sroa.7.sroa.10.sroa.0.0.copyload = load i64, ptr %.sroa.529.i.sroa.7.sroa.10.0..sroa.529.i.sroa.7.0..sroa_idx86.sroa_idx, align 8, !noalias !1565 ; 2 uses
  br i1 %i.en, label %bb.cl, label %bb.az

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bb, %bb.ay
  %.pn124.i = phi { ptr, i32 } [ %i.eq, %bb.ay ], [ %.pn112.i, %bb.bb ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #39
          to label %.body unwind label %bb.cc, !noalias !1570

bb.ay:                                            ; preds = %bb.be
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1565
  store i64 %.sroa.529.i.sroa.0.0.copyload, ptr %i.t, align 16, !noalias !1565
  store <2 x i64> %i.eo, ptr %.sroa.529.i.sroa.7.0..sroa_idx87, align 8, !noalias !1565
  store <2 x i64> %i.ep, ptr %.sroa.529.i.sroa.7.sroa.8.0..sroa.529.i.sroa.7.0..sroa_idx87.sroa_idx, align 8, !noalias !1565
  store i64 %.sroa.529.i.sroa.7.sroa.10.sroa.0.0.copyload, ptr %.sroa.529.i.sroa.7.sroa.10.0..sroa.529.i.sroa.7.0..sroa_idx87.sroa_idx, align 8, !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.082.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1565
  %i.er = load ptr, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, align 8, !noalias !1565, !nonnull !12, !noundef !12
  %i.es = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 8), align 8, !noalias !1565, !noundef !12
  store ptr %i.a, ptr %i.e, align 8, !noalias !1565
  store ptr %i.er, ptr %i.cd, align 8, !noalias !1565
  store i64 %i.es, ptr %i.ce, align 8, !noalias !1565
  %i.et = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 16))
          to label %.noexc60 unwind label %bb.bc  ; 2 uses

.noexc60:                                         ; preds = %bb.az
  %.not.i = icmp eq ptr %i.et, null
  br i1 %.not.i, label %bb.ba, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit, !prof !20

bb.ba:                                            ; preds = %.noexc60
  %i.eu = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bc

bb.bb:                                            ; preds = %bb.bg, %bb.bc
  %.pn112.i = phi { ptr, i32 } [ %i.fc, %bb.bg ], [ %i.ev, %bb.bc ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cc, !noalias !1570

bb.bc:                                            ; preds = %bb.ba, %bb.az, %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc60, %bb.ba
  %.sroa.0.0.i = phi ptr [ %i.et, %.noexc60 ], [ %i.eu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1565
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
          to label %bb.bd unwind label %bb.bc, !noalias !1570

bb.bd:                                            ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit
  %i.ew = load i64, ptr %i.o, align 8, !range !11, !noalias !1565, !noundef !12
  %i.ex = trunc nuw i64 %i.ew to i1
  %.sroa.088.0.copyload.i = load ptr, ptr %i.cf, align 8, !noalias !1565 ; 5 uses
  br i1 %i.ex, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ey = load <2 x i64>, ptr %.sroa.589.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.589.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ez = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.589.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.589.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.fa = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.589.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1565
  %i.fb = ptrtoint ptr %.sroa.088.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1565
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit157.i unwind label %bb.ay, !noalias !1570

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1565
  store ptr %.sroa.088.0.copyload.i, ptr %i.p, align 8, !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1565
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldxECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1900, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @684, i64 noundef 17)
          to label %bb.bh unwind label %bb.bg, !noalias !1570

bb.bg:                                            ; preds = %bb.bf
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.088.0.copyload.i) #43, !noalias !1570
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bf
  %i.fd = load i64, ptr %i.n, align 8, !range !11, !noalias !1565, !noundef !12
  %i.fe = trunc nuw i64 %i.fd to i1
  %.sroa.094.0.copyload.i = load i64, ptr %i.cg, align 8, !noalias !1565 ; 2 uses
  br i1 %i.fe, label %bb.ch, label %bb.bk

bb.bi:                                            ; preds = %bb.bp, %bb.bj
  %.pn120.i = phi { ptr, i32 } [ %i.ff, %bb.bj ], [ %i.fp, %bb.bp ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit159.i unwind label %bb.cc, !noalias !1570

bb.bj:                                            ; preds = %bb.bl, %bb.bk
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.088.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1565
  %i.fg = load ptr, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds2_8INTERNED, align 8, !noalias !1565, !nonnull !12, !noundef !12
  %i.fh = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds2_8INTERNED, i64 8), align 8, !noalias !1565, !noundef !12
  store ptr %i.a, ptr %i.d, align 8, !noalias !1565
  store ptr %i.fg, ptr %i.ch, align 8, !noalias !1565
  store i64 %i.fh, ptr %i.ci, align 8, !noalias !1565
  %i.fi = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds2_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.bl unwind label %bb.bj, !noalias !1570

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1565
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fi)
          to label %bb.bm unwind label %bb.bj, !noalias !1570

bb.bm:                                            ; preds = %bb.bl
  %i.fj = load i64, ptr %i.l, align 8, !range !11, !noalias !1565, !noundef !12
  %i.fk = trunc nuw i64 %i.fj to i1
  %.sroa.0100.0.copyload.i = load ptr, ptr %i.cj, align 8, !noalias !1565 ; 5 uses
  br i1 %i.fk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.5101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fl = load <2 x i64>, ptr %.sroa.5101.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.5101.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.fm = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.5101.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.5101.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.fn = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.5101.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1565
  %i.fo = ptrtoint ptr %.sroa.0100.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1565
  br label %bb.cg

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1565
  store ptr %.sroa.0100.0.copyload.i, ptr %i.m, align 8, !noalias !1565
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldbECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1900, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @685, i64 noundef 11)
          to label %bb.bq unwind label %bb.bp, !noalias !1570

bb.bp:                                            ; preds = %bb.bo
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0100.0.copyload.i) #43, !noalias !1570
  br label %bb.bi

bb.bq:                                            ; preds = %bb.bo
  %i.fq = load i8, ptr %i.c, align 8, !range !14, !noalias !1565, !noundef !12
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ce, label %bb.bt

bb.br:                                            ; preds = %bb.by, %bb.bs
  %.pn116.i = phi { ptr, i32 } [ %i.fs, %bb.bs ], [ %i.gd, %bb.by ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit161.i unwind label %bb.cc, !noalias !1570

bb.bs:                                            ; preds = %bb.bu, %bb.bt
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bt:                                            ; preds = %bb.bq
  %i.ft = load i8, ptr %i.ck, align 1, !range !14, !noalias !1565, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0100.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1565
  %i.fu = load ptr, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds3_8INTERNED, align 8, !noalias !1565, !nonnull !12, !noundef !12
  %i.fv = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds3_8INTERNED, i64 8), align 8, !noalias !1565, !noundef !12
  store ptr %i.a, ptr %i.b, align 8, !noalias !1565
  store ptr %i.fu, ptr %i.cl, align 8, !noalias !1565
  store i64 %i.fv, ptr %i.cm, align 8, !noalias !1565
  %i.fw = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsr_Cs7p2uQeJxui2_9deltalakeNtB7_11PyAddActionNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds3_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.bu unwind label %bb.bs, !noalias !1570

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1565
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fw)
          to label %bb.bv unwind label %bb.bs, !noalias !1570

bb.bv:                                            ; preds = %bb.bu
  %i.fx = load i64, ptr %i.j, align 8, !range !11, !noalias !1565, !noundef !12
  %i.fy = trunc nuw i64 %i.fx to i1
  %.sroa.0106.0.copyload.i = load ptr, ptr %i.cn, align 8, !noalias !1565 ; 5 uses
  br i1 %i.fy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.sroa.5107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fz = load <2 x i64>, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.5107.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ga = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.5107.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.5107.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gb = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.5107.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1565
  %i.gc = ptrtoint ptr %.sroa.0106.0.copyload.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1565
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1565
  store ptr %.sroa.0106.0.copyload.i, ptr %i.k, align 8, !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1565
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1900, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @686, i64 noundef 5)
          to label %bb.bz unwind label %bb.by, !noalias !1570

bb.by:                                            ; preds = %bb.bx
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0106.0.copyload.i) #43, !noalias !1570
  br label %bb.br

bb.bz:                                            ; preds = %bb.bx
  %i.ge = load i64, ptr %i.i, align 8, !range !11, !noalias !1565, !noundef !12
  %i.gf = trunc nuw i64 %i.ge to i1
  %.sroa.562.i.sroa.0.0.copyload = load i64, ptr %i.co, align 8, !noalias !1565 ; 3 uses
  %i.gg = load <2 x i64>, ptr %.sroa.562.i.sroa.7.0..sroa_idx90, align 8, !noalias !1565 ; 3 uses
  br i1 %i.gf, label %bb.ca, label %bb.cq

bb.ca:                                            ; preds = %bb.bz
  %.sroa.562.i.sroa.7.sroa.8.0..sroa.562.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.gh = load <2 x i64>, ptr %.sroa.562.i.sroa.7.sroa.8.0..sroa.562.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !1565
  %.sroa.562.i.sroa.7.sroa.9.0..sroa.562.i.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.gi = load <2 x i64>, ptr %.sroa.562.i.sroa.7.sroa.9.0..sroa.562.i.sroa.7.0..sroa_idx.sroa_idx, align 8, !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0106.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1565
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit165.i unwind label %bb.cb, !noalias !1570

bb.cb:                                            ; preds = %bb.ca
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #39
          to label %.body unwind label %bb.cc, !noalias !1570

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit165.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1565
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %.loopexit.split-lp

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit159.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit161.i, %bb.cb, %bb.br, %bb.bi, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ap, %bb.ag
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1570
  unreachable

bb.cd:                                            ; preds = %bb.ce, %bb.bw
  %.sroa.18.5 = phi i64 [ %.sroa.18.8.copyload65, %bb.ce ], [ %i.gc, %bb.bw ]
  %i.gl = phi <2 x i64> [ %i.gq, %bb.ce ], [ %i.ga, %bb.bw ]
  %i.gm = phi <2 x i64> [ %i.gr, %bb.ce ], [ %i.gb, %bb.bw ]
  %i.gn = phi <2 x i64> [ %i.gp, %bb.ce ], [ %i.fz, %bb.bw ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit167.i unwind label %bb.cf, !noalias !1570

bb.ce:                                            ; preds = %bb.bq
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.18.8.copyload65 = load i64, ptr %i.go, align 8, !noalias !1569
  %.sroa.32.8..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gp = load <2 x i64>, ptr %.sroa.32.8..sroa_idx68, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.32.8..sroa_idx68.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gq = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.32.8..sroa_idx68.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.32.8..sroa_idx68.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.gr = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.32.8..sroa_idx68.sroa_idx, align 8, !noalias !1569
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0100.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1565
  br label %bb.cd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit161.i: ; preds = %bb.cf, %bb.br
  %.pn118.i = phi { ptr, i32 } [ %i.gs, %bb.cf ], [ %.pn116.i, %bb.br ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #39
          to label %.body unwind label %bb.cc, !noalias !1570

bb.cf:                                            ; preds = %bb.cd
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit161.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit167.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1565
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %.loopexit.split-lp

bb.cg:                                            ; preds = %bb.ch, %bb.bn
  %.sroa.18.6 = phi i64 [ %.sroa.094.0.copyload.i, %bb.ch ], [ %i.fo, %bb.bn ]
  %i.gt = phi <2 x i64> [ %i.gx, %bb.ch ], [ %i.fm, %bb.bn ]
  %i.gu = phi <2 x i64> [ %i.gy, %bb.ch ], [ %i.fn, %bb.bn ]
  %i.gv = phi <2 x i64> [ %i.gw, %bb.ch ], [ %i.fl, %bb.bn ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit169.i unwind label %bb.ci, !noalias !1570

bb.ch:                                            ; preds = %bb.bh
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.gw = load <2 x i64>, ptr %.sroa.595.0..sroa_idx.i, align 8, !noalias !1569
  %.sroa.32.sroa.20.0..sroa.595.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.gx = load <2 x i64>, ptr %.sroa.32.sroa.20.0..sroa.595.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  %.sroa.32.sroa.21.0..sroa.595.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.gy = load <2 x i64>, ptr %.sroa.32.sroa.21.0..sroa.595.0..sroa_idx.i.sroa_idx, align 8, !noalias !1569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.088.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1565
  br label %bb.cg

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit159.i: ; preds = %bb.ci, %bb.bi
  %.pn122.i = phi { ptr, i32 } [ %i.gz, %bb.ci ], [ %.pn120.i, %bb.bi ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa) #39
          to label %.body unwind label %bb.cc, !noalias !1570

bb.ci:                                            ; preds = %bb.cg
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit159.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit169.i: ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1565
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit157.i: ; preds = %bb.cl, %bb.be
  %.sroa.18.7 = phi i64 [ %.sroa.529.i.sroa.0.0.copyload, %bb.cl ], [ %i.fb, %bb.be ]
  %i.ha = phi <2 x i64> [ %i.ep, %bb.cl ], [ %i.ez, %bb.be ]
  %i.hb = phi <2 x i64> [ %i.hg, %bb.cl ], [ %i.fa, %bb.be ]
  %i.hc = phi <2 x i64> [ %i.eo, %bb.cl ], [ %i.ey, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1565
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit171.i unwind label %bb.cj, !noalias !1570

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit157.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.ck, !noalias !1570

bb.ck:                                            ; preds = %bb.cj
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1570
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit171.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit157.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.thread unwind label %.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ax
  %.sroa.529.i.sroa.7.sroa.10.sroa.7.0..sroa.529.i.sroa.7.sroa.10.0..sroa.529.i.sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.529.i.sroa.7.sroa.10.sroa.7.0.copyload = load i64, ptr %.sroa.529.i.sroa.7.sroa.10.sroa.7.0..sroa.529.i.sroa.7.sroa.10.0..sroa.529.i.sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8, !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1565
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.082.0.copyload.i) #43, !noalias !1570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1565
  %i.hf = insertelement <2 x i64> poison, i64 %.sroa.529.i.sroa.7.sroa.10.sroa.0.0.copyload, i64 0
  %i.hg = insertelement <2 x i64> %i.hf, i64 %.sroa.529.i.sroa.7.sroa.10.sroa.7.0.copyload, i64 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs7p2uQeJxui2_9deltalake.exit157.i

bb.cm:                                            ; preds = %bb.cp, %bb.au
  %.sroa.18.8 = phi i64 [ %.sroa.076.0.copyload.i, %bb.cp ], [ %i.ek, %bb.au ]
  %i.hh = phi <2 x i64> [ %i.hn, %bb.cp ], [ %i.ei, %bb.au ]
  %i.hi = phi <2 x i64> [ %i.ho, %bb.cp ], [ %i.ej, %bb.au ]
  %i.hj = phi <2 x i64> [ %i.hm, %bb.cp ], [ %i.eh, %bb.au ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit173.i unwind label %bb.cn, !noalias !1570

bb.cn:                                            ; preds = %bb.cm
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.co, !noalias !1570

bb.co:                                            ; preds = %bb.cn
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !1570
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit173.i: ; preds = %bb.cm
end_hunk_0
begin_hunk_1_@_RNvXs3_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x ptr> %i.al, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.x:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_14TokioDeltaScanNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1762, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1763, i64 noundef 5, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1758, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1764, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1759, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1765, i64 noundef 16, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1760, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1766, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1761)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtCs2HSpDNxY7OE_9hashbrown5tableINtB5_9HashTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsb_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 3) i8 @_RNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider10table_type(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider16get_logical_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 16 captures(none) dereferenceable(320) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  store i64 37, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider20get_table_definition(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(288) %0) unnamed_addr #14 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1767, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs4_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_14TokioDeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_7MapTypeINtNtCsbvkFyIu7lgC_4core7convert7TryFromNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE8try_from(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !122, !noundef !12
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  tail call void @_rjem_sdallocx(ptr noundef nonnull %i.d, i64 noundef 64, i32 noundef 0) #43
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.e = tail call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #43 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.thread, %bb.e
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr @1768, ptr %i.e, align 8, !noalias !9199
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 17, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %.sroa.05.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.05.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %.sroa.05.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @289, ptr %.sroa.05.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.46.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #39
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1770, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1769)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB5_6HandleNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1772, i64 noundef 6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1763, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1771)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtCs7p2uQeJxui2_9deltalake18PyCommitPropertiesNtB5_17FromPyObjectBound20from_py_object_boundBE_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.532.i = alloca [56 x i8], align 8        ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.57.i = alloca [56 x i8], align 8         ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 18 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9205
  %i.p = load ptr, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, align 8, !noalias !9205, !nonnull !12, !noundef !12
  %i.q = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 8), align 8, !noalias !9205, !noundef !12
  store ptr %i.a, ptr %i.d, align 8, !noalias !9205
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !9205
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.q, ptr %i.s, align 8, !noalias !9205
  %i.t = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16)), !noalias !9207 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.b, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.u = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !noalias !9202
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi ptr [ %i.u, %bb.b ], [ %i.t, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9205
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i), !noalias !9202
  %i.v = load i64, ptr %i.l, align 8, !range !11, !noalias !9205, !noundef !12
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.034.0.copyload.i = load ptr, ptr %i.x, align 8, !noalias !9205 ; 5 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.237.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.535.0..sroa_idx.i, i64 48, i1 false), !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9205
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.034.0.copyload.i, ptr %i.y, align 8, !alias.scope !9202, !noalias !9210
  store i64 2, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9205
  br label %_RNvXsK_Cs7p2uQeJxui2_9deltalakeNtB5_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.d:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9205
  store ptr %.sroa.034.0.copyload.i, ptr %i.m, align 8, !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9205
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB2C_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1781, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @576, i64 noundef 15)
          to label %bb.f unwind label %bb.e, !noalias !9202

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.034.0.copyload.i) #43, !noalias !9202
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.k, align 8, !range !11, !noalias !9205, !noundef !12
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9205
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.57.i, i64 56, i1 false), !noalias !9210
  store i64 2, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.034.0.copyload.i) #43, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9205
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit76.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.57.i, i64 48, i1 false), !noalias !9205
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.034.0.copyload.i) #43, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9205
  %i.ae = load ptr, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, align 8, !noalias !9205, !nonnull !12, !noundef !12
  %i.af = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 8), align 8, !noalias !9205, !noundef !12
  store ptr %i.a, ptr %i.c, align 8, !noalias !9205
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !9205
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.af, ptr %i.ah, align 8, !noalias !9205
  %i.ai = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16))
          to label %.noexc.i unwind label %bb.l, !noalias !9202 ; 2 uses

.noexc.i:                                         ; preds = %bb.h
  %.not.i71.i = icmp eq ptr %i.ai, null
  br i1 %.not.i71.i, label %bb.i, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit74.i, !prof !20

bb.i:                                             ; preds = %.noexc.i
  %i.aj = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit74.i unwind label %bb.l, !noalias !9202

bb.j:                                             ; preds = %bb.q, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.at, %bb.q ], [ %i.am, %bb.l ] ; 2 uses
  %i.ak = load ptr, ptr %i.n, align 8, !alias.scope !9211, !noalias !9205, !noundef !12
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.af, !noalias !9202

bb.l:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit74.i, %bb.i, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit74.i: ; preds = %bb.i, %.noexc.i
  %.sroa.0.0.i72.i = phi ptr [ %i.ai, %.noexc.i ], [ %i.aj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9205
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i72.i)
          to label %bb.m unwind label %bb.l, !noalias !9202

bb.m:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit74.i
  %i.an = load i64, ptr %i.i, align 8, !range !11, !noalias !9205, !noundef !12
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.040.0.copyload.i = load ptr, ptr %i.ap, align 8, !noalias !9205 ; 5 uses
  br i1 %i.ao, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.243.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.541.0..sroa_idx.i, i64 48, i1 false), !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9205
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.040.0.copyload.i, ptr %i.aq, align 8, !alias.scope !9202, !noalias !9210
  store i64 2, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9205
  %i.ar = load ptr, ptr %i.n, align 8, !alias.scope !9214, !noalias !9205, !noundef !12
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit76.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n), !noalias !9202
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit76.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9205
  store ptr %.sroa.040.0.copyload.i, ptr %i.j, align 8, !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9205
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1781, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @578, i64 noundef 18)
          to label %bb.r unwind label %bb.q, !noalias !9202

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.040.0.copyload.i) #43, !noalias !9202
  br label %bb.j

bb.r:                                             ; preds = %bb.p
  %i.au = load i64, ptr %i.h, align 8, !range !11, !noalias !9205, !noundef !12
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.047.0.copyload.i = load i64, ptr %i.aw, align 8, !noalias !9205 ; 2 uses
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.548.0.copyload.i = load i64, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !9205 ; 2 uses
  br i1 %i.av, label %bb.ai, label %bb.v

bb.s:                                             ; preds = %bb.aa, %bb.u
  %.pn60.i = phi { ptr, i32 } [ %i.az, %bb.u ], [ %i.bk, %bb.aa ] ; 2 uses
  %i.ax = load ptr, ptr %i.n, align 8, !alias.scope !9217, !noalias !9205, !noundef !12
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.af, !noalias !9202

bb.u:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit83.i, %bb.w, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9205
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.040.0.copyload.i) #43, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9205
  %i.ba = load ptr, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, align 8, !noalias !9205, !nonnull !12, !noundef !12
  %i.bb = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 8), align 8, !noalias !9205, !noundef !12
  store ptr %i.a, ptr %i.b, align 8, !noalias !9205
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ba, ptr %i.bc, align 8, !noalias !9205
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !noalias !9205
  %i.be = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16))
          to label %.noexc81.i unwind label %bb.u, !noalias !9202 ; 2 uses

.noexc81.i:                                       ; preds = %bb.v
  %.not.i79.i = icmp eq ptr %i.be, null
  br i1 %.not.i79.i, label %bb.w, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit83.i, !prof !20

bb.w:                                             ; preds = %.noexc81.i
  %i.bf = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsK_Cs7p2uQeJxui2_9deltalakeNtB7_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit83.i unwind label %bb.u, !noalias !9202

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit83.i: ; preds = %bb.w, %.noexc81.i
  %.sroa.0.0.i80.i = phi ptr [ %i.be, %.noexc81.i ], [ %i.bf, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9205
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i80.i)
          to label %bb.x unwind label %bb.u, !noalias !9202

bb.x:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit83.i
  %i.bg = load i64, ptr %i.f, align 8, !range !11, !noalias !9205, !noundef !12
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.054.0.copyload.i = load ptr, ptr %i.bi, align 8, !noalias !9205 ; 5 uses
  br i1 %i.bh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.257.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.555.0..sroa_idx.i, i64 48, i1 false), !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9205
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.054.0.copyload.i, ptr %i.bj, align 8, !alias.scope !9202, !noalias !9210
  store i64 2, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9205
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9205
  store ptr %.sroa.054.0.copyload.i, ptr %i.g, align 8, !noalias !9205
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9205
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCs7p2uQeJxui2_9deltalake13PyTransactionEEEB2g_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1781, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @577, i64 noundef 16)
          to label %bb.ab unwind label %bb.aa, !noalias !9202

bb.aa:                                            ; preds = %bb.z
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload.i) #43, !noalias !9202
  br label %bb.s

bb.ab:                                            ; preds = %bb.z
  %i.bl = load i64, ptr %i.e, align 8, !range !11, !noalias !9205, !noundef !12
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.532.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9205
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.532.i, i64 24, i1 false), !noalias !9210
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload.i) #43, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9205
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9205
  store i64 %.sroa.047.0.copyload.i, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.548.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !9202, !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.i)
  br label %_RNvXsK_Cs7p2uQeJxui2_9deltalakeNtB5_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.532.i, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 56, i1 false), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9205
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.532.i, i64 56, i1 false), !noalias !9210
  store i64 2, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload.i) #43, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9205
  %i.bp = load ptr, ptr %i.n, align 8, !alias.scope !9220, !noalias !9205, !noundef !12
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit86.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n), !noalias !9202
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit86.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit86.i: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i)
  br label %bb.aj

bb.af:                                            ; preds = %bb.t, %bb.k
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !9202
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.t, %bb.s, %bb.k, %bb.j, %bb.e
  %.pn60.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.j ], [ %.pn60.i, %bb.s ], [ %i.z, %bb.e ], [ %.pn.i, %bb.k ], [ %.pn60.i, %bb.t ]
  resume { ptr, i32 } %.pn60.pn.i

bb.ag:                                            ; preds = %bb.ai, %bb.y
  %i.bs = load ptr, ptr %i.n, align 8, !alias.scope !9223, !noalias !9205, !noundef !12
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit87.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n), !noalias !9202
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit87.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit87.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9205
  br label %bb.aj

bb.ai:                                            ; preds = %bb.r
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.351.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.351.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i64 40, i1 false), !noalias !9210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9205
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.047.0.copyload.i, ptr %i.bu, align 8, !alias.scope !9202, !noalias !9210
  %.sroa.250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.548.0.copyload.i, ptr %.sroa.250.0..sroa_idx.i, align 8, !alias.scope !9202, !noalias !9210
  store i64 2, ptr %0, align 8, !alias.scope !9202, !noalias !9210
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.040.0.copyload.i) #43, !noalias !9202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9205
  br label %bb.ag

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit86.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit87.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.57.i)
  br label %_RNvXsK_Cs7p2uQeJxui2_9deltalakeNtB5_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit76.i: ; preds = %bb.o, %bb.n, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9205
  br label %bb.aj

_RNvXsK_Cs7p2uQeJxui2_9deltalakeNtB5_18PyCommitPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit: ; preds = %bb.c, %bb.ac, %bb.aj
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtCs7p2uQeJxui2_9deltalake18PyWriterPropertiesNtB5_17FromPyObjectBound20from_py_object_boundBE_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(address) dereferenceable(264) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.5134.i = alloca [56 x i8], align 8       ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [56 x i8], align 8          ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [96 x i8], align 8                ; 14 uses
  %i.r = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.5112.i = alloca [56 x i8], align 8       ; 7 uses
  %i.s = alloca [64 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 12 uses
  %i.v = alloca [64 x i8], align 8                ; 8 uses
  %i.w = alloca [64 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 8 uses
  %i.z = alloca [64 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [64 x i8], align 8               ; 8 uses
  %i.ac = alloca [64 x i8], align 8               ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 6 uses
  %i.ae = alloca [64 x i8], align 8               ; 8 uses
  %i.af = alloca [64 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [64 x i8], align 8               ; 8 uses
  %i.ai = alloca [64 x i8], align 8               ; 7 uses
  %i.aj = alloca [8 x i8], align 8                ; 6 uses
  %i.ak = alloca [64 x i8], align 8               ; 8 uses
  %i.al = alloca [64 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 10 uses
  store ptr %1, ptr %i.an, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9226)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5134.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9229
  %i.ao = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.ap = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.j, align 8, !noalias !9229
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ao, ptr %i.aq, align 8, !noalias !9229
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ap, ptr %i.ar, align 8, !noalias !9229
  %i.as = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16)), !noalias !9231 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.b, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.at = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi ptr [ %i.at, %bb.b ], [ %i.as, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i)
  %i.au = load i64, ptr %i.al, align 8, !range !11, !noalias !9229, !noundef !12
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0137.0.copyload.i = load ptr, ptr %i.aw, align 8, !noalias !9229 ; 5 uses
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.2140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2140.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5138.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9229
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0137.0.copyload.i, ptr %i.ax, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.d:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9229
  store ptr %.sroa.0137.0.copyload.i, ptr %i.am, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @695, i64 noundef 20)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.ak, align 8, !range !11, !noalias !9229, !noundef !12
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0144.0.copyload.i = load i64, ptr %i.bb, align 8, !noalias !9229 ; 2 uses
  %.sroa.5145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5145.0.copyload.i = load i64, ptr %.sroa.5145.0..sroa_idx.i, align 8, !noalias !9229 ; 2 uses
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.6146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.3149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3149.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6146.0..sroa_idx.i, i64 40, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9229
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0144.0.copyload.i, ptr %i.bc, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.2148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5145.0.copyload.i, ptr %.sroa.2148.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0137.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0137.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9229
  %i.bd = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.be = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.i, align 8, !noalias !9229
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.bd, ptr %i.bf, align 8, !noalias !9229
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !noalias !9229
  %i.bh = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16)), !noalias !9235 ; 2 uses
  %.not.i281.i = icmp eq ptr %i.bh, null
  br i1 %.not.i281.i, label %bb.i, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit283.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.bi = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit283.i

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit283.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i282.i = phi ptr [ %i.bi, %bb.i ], [ %i.bh, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i282.i)
  %i.bj = load i64, ptr %i.ai, align 8, !range !11, !noalias !9229, !noundef !12
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0152.0.copyload.i = load ptr, ptr %i.bl, align 8, !noalias !9229 ; 5 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit283.i
  %.sroa.5153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.2155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2155.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5153.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9229
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0152.0.copyload.i, ptr %i.bm, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.k:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit283.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9229
  store ptr %.sroa.0152.0.copyload.i, ptr %i.aj, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @703, i64 noundef 26)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.bo = load i64, ptr %i.ah, align 8, !range !11, !noalias !9229, !noundef !12
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.0159.0.copyload.i = load i64, ptr %i.bq, align 8, !noalias !9229 ; 2 uses
  %.sroa.5160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5160.0.copyload.i = load i64, ptr %.sroa.5160.0..sroa_idx.i, align 8, !noalias !9229 ; 2 uses
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.6161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.3164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3164.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6161.0..sroa_idx.i, i64 40, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9229
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0159.0.copyload.i, ptr %i.br, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.2163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5160.0.copyload.i, ptr %.sroa.2163.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0152.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0152.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9229
  %i.bs = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.bt = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.h, align 8, !noalias !9229
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !9229
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bt, ptr %i.bv, align 8, !noalias !9229
  %i.bw = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16)), !noalias !9238 ; 2 uses
  %.not.i284.i = icmp eq ptr %i.bw, null
  br i1 %.not.i284.i, label %bb.p, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit286.i, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.bx = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit286.i

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit286.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i285.i = phi ptr [ %i.bx, %bb.p ], [ %i.bw, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i285.i)
  %i.by = load i64, ptr %i.af, align 8, !range !11, !noalias !9229, !noundef !12
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0167.0.copyload.i = load ptr, ptr %i.ca, align 8, !noalias !9229 ; 5 uses
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit286.i
  %.sroa.5168.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.2170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2170.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5168.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9229
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0167.0.copyload.i, ptr %i.cb, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.r:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit286.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9229
  store ptr %.sroa.0167.0.copyload.i, ptr %i.ag, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @696, i64 noundef 25)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.cd = load i64, ptr %i.ae, align 8, !range !11, !noalias !9229, !noundef !12
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.0174.0.copyload.i = load i64, ptr %i.cf, align 8, !noalias !9229 ; 2 uses
  %.sroa.5175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.5175.0.copyload.i = load i64, ptr %.sroa.5175.0..sroa_idx.i, align 8, !noalias !9229 ; 2 uses
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.6176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.3179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3179.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6176.0..sroa_idx.i, i64 40, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9229
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0174.0.copyload.i, ptr %i.cg, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.2178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5175.0.copyload.i, ptr %.sroa.2178.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0167.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0167.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9229
  %i.ch = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.ci = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.g, align 8, !noalias !9229
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ch, ptr %i.cj, align 8, !noalias !9229
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ci, ptr %i.ck, align 8, !noalias !9229
  %i.cl = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.g) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cl)
  %i.cm = load i64, ptr %i.ac, align 8, !range !11, !noalias !9229, !noundef !12
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0182.0.copyload.i = load ptr, ptr %i.co, align 8, !noalias !9229 ; 5 uses
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.5183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.2185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2185.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5183.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9229
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0182.0.copyload.i, ptr %i.cp, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9229
  store ptr %.sroa.0182.0.copyload.i, ptr %i.ad, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @697, i64 noundef 16)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.x
  %i.cr = load i64, ptr %i.ab, align 8, !range !11, !noalias !9229, !noundef !12
  %i.cs = trunc nuw i64 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0189.0.copyload.i = load i64, ptr %i.ct, align 8, !noalias !9229 ; 2 uses
  %.sroa.5190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5190.0.copyload.i = load i64, ptr %.sroa.5190.0..sroa_idx.i, align 8, !noalias !9229 ; 2 uses
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.6191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.3194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3194.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6191.0..sroa_idx.i, i64 40, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9229
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0189.0.copyload.i, ptr %i.cu, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.2193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5190.0.copyload.i, ptr %.sroa.2193.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0182.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0182.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9229
  %i.cv = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds2_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.cw = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds2_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.f, align 8, !noalias !9229
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cv, ptr %i.cx, align 8, !noalias !9229
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.cw, ptr %i.cy, align 8, !noalias !9229
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds2_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.f) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz)
  %i.da = load i64, ptr %i.z, align 8, !range !11, !noalias !9229, !noundef !12
  %i.db = trunc nuw i64 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0197.0.copyload.i = load ptr, ptr %i.dc, align 8, !noalias !9229 ; 5 uses
  br i1 %i.db, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.5198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.2200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2200.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5198.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9229
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0197.0.copyload.i, ptr %i.dd, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9229
  store ptr %.sroa.0197.0.copyload.i, ptr %i.aa, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @698, i64 noundef 18)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.ad
  %i.df = load i64, ptr %i.y, align 8, !range !11, !noalias !9229, !noundef !12
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0204.0.copyload.i = load i64, ptr %i.dh, align 8, !noalias !9229 ; 2 uses
  %.sroa.5205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5205.0.copyload.i = load i64, ptr %.sroa.5205.0..sroa_idx.i, align 8, !noalias !9229 ; 2 uses
  br i1 %i.dg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.6206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.3209.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3209.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6206.0..sroa_idx.i, i64 40, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9229
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0204.0.copyload.i, ptr %i.di, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.2208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5205.0.copyload.i, ptr %.sroa.2208.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0197.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0197.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9229
  %i.dj = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds3_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.dk = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds3_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.e, align 8, !noalias !9229
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !noalias !9229
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.dk, ptr %i.dm, align 8, !noalias !9229
  %i.dn = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds3_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.e) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dn)
  %i.do = load i64, ptr %i.w, align 8, !range !11, !noalias !9229, !noundef !12
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0212.0.copyload.i = load ptr, ptr %i.dq, align 8, !noalias !9229 ; 5 uses
  br i1 %i.dp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.sroa.5213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.2215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2215.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5213.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9229
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0212.0.copyload.i, ptr %i.dr, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !9229
  store ptr %.sroa.0212.0.copyload.i, ptr %i.x, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionjEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @699, i64 noundef 26)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.al:                                            ; preds = %bb.aj
  %i.dt = load i64, ptr %i.v, align 8, !range !11, !noalias !9229, !noundef !12
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0219.0.copyload.i = load i64, ptr %i.dv, align 8, !noalias !9229 ; 2 uses
  %.sroa.5220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5220.0.copyload.i = load i64, ptr %.sroa.5220.0..sroa_idx.i, align 8, !noalias !9229 ; 2 uses
  br i1 %i.du, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.sroa.6221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.3224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3224.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6221.0..sroa_idx.i, i64 40, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9229
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0219.0.copyload.i, ptr %i.dw, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.2223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5220.0.copyload.i, ptr %.sroa.2223.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0212.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0212.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9229
  %i.dx = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds4_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.dy = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds4_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.d, align 8, !noalias !9229
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.dx, ptr %i.dz, align 8, !noalias !9229
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.dy, ptr %i.ea, align 8, !noalias !9229
  %i.eb = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds4_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.d) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9229
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eb)
  %i.ec = load i64, ptr %i.s, align 8, !range !11, !noalias !9229, !noundef !12
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0227.0.copyload.i = load ptr, ptr %i.ee, align 8, !noalias !9229 ; 5 uses
  br i1 %i.ed, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.sroa.5228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2230.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5228.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9229
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0227.0.copyload.i, ptr %i.ef, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9229
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9229
  store ptr %.sroa.0227.0.copyload.i, ptr %i.t, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5112.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 11)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.eh = load i64, ptr %i.r, align 8, !range !11, !noalias !9229, !noundef !12
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5112.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ej, i64 56, i1 false), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9229
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ek, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5112.i, i64 56, i1 false), !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0227.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9229
  br label %bb.bw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5112.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5112.i, i64 24, i1 false), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0227.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9229
  %i.el = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds5_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.em = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds5_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.c, align 8, !noalias !9229
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.el, ptr %i.en, align 8, !noalias !9229
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.em, ptr %i.eo, align 8, !noalias !9229
  %i.ep = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds5_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.aw unwind label %bb.av

bb.au:                                            ; preds = %bb.ba, %bb.av
  %.pn.i = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %i.eq, %bb.av ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #39
          to label %bb.bt unwind label %bb.bs

bb.av:                                            ; preds = %bb.aw, %bb.at
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9229
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ep)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.er = load i64, ptr %i.o, align 8, !range !11, !noalias !9229, !noundef !12
  %i.es = trunc nuw i64 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.0233.0.copyload.i = load ptr, ptr %i.et, align 8, !noalias !9229 ; 5 uses
  br i1 %i.es, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.sroa.5234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.2236.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2236.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5234.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9229
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0233.0.copyload.i, ptr %i.eu, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9229
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.bw

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9229
  store ptr %.sroa.0233.0.copyload.i, ptr %i.p, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB1J_(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 25)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0233.0.copyload.i) #43
  br label %bb.au

bb.bb:                                            ; preds = %bb.az
  %i.ew = load i64, ptr %i.n, align 8, !range !767, !noalias !9229, !noundef !12 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ey, i64 56, i1 false), !noalias !9229
  br i1 %i.ex, label %bb.bu, label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i: ; preds = %bb.bf, %bb.be, %bb.bc
  %.pn252.i = phi { ptr, i32 } [ %i.ez, %bb.bc ], [ %.pn248.i, %bb.bf ], [ %.pn248.i, %bb.be ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #39
          to label %bb.bt unwind label %bb.bs

bb.bc:                                            ; preds = %bb.bk
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.sroa.6239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.5125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5125.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239.0..sroa_idx.i, i64 32, i1 false), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9229
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, i64 56, i1 false), !noalias !9229
  store i64 %i.ew, ptr %i.q, align 8, !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0233.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9229
  %i.fa = load ptr, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds6_8INTERNED, align 8, !noalias !9229, !nonnull !12, !noundef !12
  %i.fb = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds6_8INTERNED, i64 8), align 8, !noalias !9229, !noundef !12
  store ptr %i.a, ptr %i.b, align 8, !noalias !9229
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.fa, ptr %i.fc, align 8, !noalias !9229
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.fb, ptr %i.fd, align 8, !noalias !9229
  %i.fe = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsu_Cs7p2uQeJxui2_9deltalakeNtB7_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds6_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.bh unwind label %bb.bg

bb.be:                                            ; preds = %bb.bm, %bb.bg
  %.pn248.i = phi { ptr, i32 } [ %i.fo, %bb.bm ], [ %i.fh, %bb.bg ] ; 2 uses
  %i.ff = load i64, ptr %i.q, align 8, !range !186, !alias.scope !9241, !noalias !9229, !noundef !12
  %i.fg = icmp eq i64 %i.ff, 3
  br i1 %i.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i unwind label %bb.bs

bb.bg:                                            ; preds = %bb.bh, %bb.bd
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9229
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fe)
          to label %bb.bi unwind label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.fi = load i64, ptr %i.l, align 8, !range !11, !noalias !9229, !noundef !12
  %i.fj = trunc nuw i64 %i.fi to i1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0242.0.copyload.i = load ptr, ptr %i.fk, align 8, !noalias !9229 ; 5 uses
  br i1 %i.fj, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %.sroa.5243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.2245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2245.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5243.0..sroa_idx.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9229
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0242.0.copyload.i, ptr %i.fl, align 8, !alias.scope !9226, !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9229
  %i.fm = load i64, ptr %i.q, align 8, !range !186, !alias.scope !9244, !noalias !9229, !noundef !12
  %i.fn = icmp eq i64 %i.fm, 3
  br i1 %i.fn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i unwind label %bb.bc

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9229
  store ptr %.sroa.0242.0.copyload.i, ptr %i.m, align 8, !noalias !9229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9229
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringIB16_NtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEEEB3l_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1904, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @702, i64 noundef 17)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0242.0.copyload.i) #43
  br label %bb.be

bb.bn:                                            ; preds = %bb.bl
  %i.fp = load i64, ptr %i.k, align 8, !range !11, !noalias !9229, !noundef !12
  %i.fq = trunc nuw i64 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br i1 %i.fq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5134.i, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9229
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0242.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9229
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !9234
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.25.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 96, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9229
  store i64 %.sroa.0144.0.copyload.i, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5145.0.copyload.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0159.0.copyload.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5160.0.copyload.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0174.0.copyload.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5175.0.copyload.i, ptr %.sroa.18.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0189.0.copyload.i, ptr %.sroa.19.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.5190.0.copyload.i, ptr %.sroa.20.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0204.0.copyload.i, ptr %.sroa.21.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.5205.0.copyload.i, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0219.0.copyload.i, ptr %.sroa.23.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.5220.0.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !alias.scope !9226, !noalias !9234
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.27.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5134.i, i64 48, i1 false), !noalias !9234
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5112.i)
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5134.i, ptr noundef nonnull align 8 dereferenceable(56) %i.fr, i64 56, i1 false), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9229
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fs, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5134.i, i64 56, i1 false), !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0242.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9229
  %i.ft = load i64, ptr %i.q, align 8, !range !186, !alias.scope !9247, !noalias !9229, !noundef !12
  %i.fu = icmp eq i64 %i.ft, 3
  br i1 %i.fu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEBI_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #39
          to label %bb.bt unwind label %bb.bs

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i: ; preds = %bb.bu, %bb.bq, %bb.bp, %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9229
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bv

bb.bs:                                            ; preds = %bb.br, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i, %bb.au
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.sink.split.i:                                    ; preds = %bb.aq, %bb.ak, %bb.ae, %bb.y, %bb.s, %bb.l, %bb.e
  %.sroa.0227.0.copyload.sink.i = phi ptr [ %.sroa.0227.0.copyload.i, %bb.aq ], [ %.sroa.0212.0.copyload.i, %bb.ak ], [ %.sroa.0197.0.copyload.i, %bb.ae ], [ %.sroa.0182.0.copyload.i, %bb.y ], [ %.sroa.0167.0.copyload.i, %bb.s ], [ %.sroa.0152.0.copyload.i, %bb.l ], [ %.sroa.0137.0.copyload.i, %bb.e ]
  %.pn252.pn.ph.i = phi { ptr, i32 } [ %i.eg, %bb.aq ], [ %i.ds, %bb.ak ], [ %i.de, %bb.ae ], [ %i.cq, %bb.y ], [ %i.cc, %bb.s ], [ %i.bn, %bb.l ], [ %i.ay, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0227.0.copyload.sink.i) #43
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split.i, %bb.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i, %bb.au
  %.pn252.pn.i = phi { ptr, i32 } [ %.pn252.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit.i ], [ %i.fv, %bb.br ], [ %.pn.i, %bb.au ], [ %.pn252.pn.ph.i, %.sink.split.i ]
  resume { ptr, i32 } %.pn252.pn.i

bb.bu:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9229
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i, i64 56, i1 false), !noalias !9234
  store i64 2, ptr %0, align 8, !alias.scope !9226, !noalias !9234
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0233.0.copyload.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9229
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i

bb.bv:                                            ; preds = %bb.bw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEB14_.exit288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5112.i)
  br label %_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.bw:                                            ; preds = %bb.ay, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9229
  br label %bb.bv

_RNvXsu_Cs7p2uQeJxui2_9deltalakeNtB5_18PyWriterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit: ; preds = %bb.g, %bb.j, %bb.u, %bb.w, %bb.ag, %bb.ai, %bb.bv, %bb.ao, %bb.am, %bb.ac, %bb.aa, %bb.q, %bb.n, %bb.c, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5134.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtCs7p2uQeJxui2_9deltalake26PyPostCommitHookPropertiesNtB5_17FromPyObjectBound20from_py_object_boundBE_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9253
  %i.k = load ptr, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, align 8, !noalias !9253, !nonnull !12, !noundef !12
  %i.l = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 8), align 8, !noalias !9253, !noundef !12
  store ptr %i.a, ptr %i.e, align 8, !noalias !9253
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !9253
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.l, ptr %i.n, align 8, !noalias !9253
  %i.o = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16)), !noalias !9255 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.b, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.p = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e), !noalias !9253
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.b ], [ %i.o, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9253
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i.i), !noalias !9250
  %i.q = load i64, ptr %i.h, align 8, !range !11, !noalias !9253, !noundef !12
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.019.0.copyload.i = load ptr, ptr %i.s, align 8, !noalias !9253 ; 5 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.222.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.520.0..sroa_idx.i, i64 48, i1 false), !noalias !9258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9253
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.019.0.copyload.i, ptr %i.t, align 8, !alias.scope !9250, !noalias !9258
  store i8 1, ptr %0, align 8, !alias.scope !9250, !noalias !9258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9253
  br label %_RNvXsv_Cs7p2uQeJxui2_9deltalakeNtB5_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.d:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9253
  store ptr %.sroa.019.0.copyload.i, ptr %i.i, align 8, !noalias !9253
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldbECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1905, i64 noundef 26, ptr noalias noundef nonnull readonly captures(address, read_provenance) @704, i64 noundef 17)
          to label %bb.f unwind label %bb.e, !noalias !9250

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.d, align 8, !range !14, !noalias !9253, !noundef !12
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !9258
  store i8 1, ptr %0, align 8, !alias.scope !9250, !noalias !9258
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.019.0.copyload.i) #43, !noalias !9250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9253
  br label %_RNvXsv_Cs7p2uQeJxui2_9deltalakeNtB5_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !14, !noalias !9253, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.019.0.copyload.i) #43, !noalias !9250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9253
  %i.ab = load ptr, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, align 8, !noalias !9253, !nonnull !12, !noundef !12
  %i.ac = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 8), align 8, !noalias !9253, !noundef !12
  store ptr %i.a, ptr %i.c, align 8, !noalias !9253
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !9253
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.ac, ptr %i.ae, align 8, !noalias !9253
  %i.af = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16)), !noalias !9259 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.af, null
  br i1 %.not.i37.i, label %bb.i, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit39.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ag = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXsv_Cs7p2uQeJxui2_9deltalakeNtB7_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !9250
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit39.i

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit39.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i38.i = phi ptr [ %i.ag, %bb.i ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9253
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i38.i), !noalias !9250
  %i.ah = load i64, ptr %i.f, align 8, !range !11, !noalias !9253, !noundef !12
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.025.0.copyload.i = load ptr, ptr %i.aj, align 8, !noalias !9253 ; 5 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit39.i
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.228.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.526.0..sroa_idx.i, i64 48, i1 false), !noalias !9258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9253
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.025.0.copyload.i, ptr %i.ak, align 8, !alias.scope !9250, !noalias !9258
  store i8 1, ptr %0, align 8, !alias.scope !9250, !noalias !9258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9253
  br label %_RNvXsv_Cs7p2uQeJxui2_9deltalakeNtB5_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.k:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9253
  store ptr %.sroa.025.0.copyload.i, ptr %i.g, align 8, !noalias !9253
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1905, i64 noundef 26, ptr noalias noundef nonnull readonly captures(address, read_provenance) @705, i64 noundef 20)
          to label %bb.m unwind label %bb.l, !noalias !9250

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.am = load i8, ptr %i.b, align 8, !range !14, !noalias !9253, !noundef !12
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i64 56, i1 false), !noalias !9258
  store i8 1, ptr %0, align 8, !alias.scope !9250, !noalias !9258
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.025.0.copyload.i) #43, !noalias !9250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9253
  br label %_RNvXsv_Cs7p2uQeJxui2_9deltalakeNtB5_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !range !1395, !noalias !9253, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.025.0.copyload.i) #43, !noalias !9250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9253
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aa, ptr %i.as, align 1, !alias.scope !9250, !noalias !9258
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ar, ptr %i.at, align 2, !alias.scope !9250, !noalias !9258
  store i8 0, ptr %0, align 8, !alias.scope !9250, !noalias !9258
  br label %_RNvXsv_Cs7p2uQeJxui2_9deltalakeNtB5_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit

bb.p:                                             ; preds = %bb.l, %bb.e
  %.sroa.025.0.copyload.sink.i = phi ptr [ %.sroa.025.0.copyload.i, %bb.l ], [ %.sroa.019.0.copyload.i, %bb.e ]
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.u, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.025.0.copyload.sink.i) #43, !noalias !9250
  resume { ptr, i32 } %.pn.i

_RNvXsv_Cs7p2uQeJxui2_9deltalakeNtB5_26PyPostCommitHookPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound.exit: ; preds = %bb.g, %bb.j, %bb.n, %bb.c, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeNtB5_17FromPyObjectBound20from_py_object_boundBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call fastcc void @_RNvXs7_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeNtB5_12FromPyObject13extract_boundBG_(ptr noalias noundef align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema13PrimitiveTypeNtB5_17FromPyObjectBound20from_py_object_boundBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call fastcc void @_RNvXs7_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema13PrimitiveTypeNtB5_12FromPyObject13extract_boundBG_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema5FieldNtB5_17FromPyObjectBound20from_py_object_boundBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call fastcc void @_RNvXs7_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema5FieldNtB5_12FromPyObject13extract_boundBG_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema7MapTypeNtB5_17FromPyObjectBound20from_py_object_boundBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call fastcc void @_RNvXs7_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema7MapTypeNtB5_12FromPyObject13extract_boundBG_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeNtB5_17FromPyObjectBound20from_py_object_boundBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call fastcc void @_RNvXs7_NtCsgbCypRs12E4_4pyo310conversionNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeNtB5_12FromPyObject13extract_boundBG_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array18logical_null_countCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 -1, 4611686018427387903) i64 @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array3lenCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !noundef !12
  %i.c = lshr i64 %i.b, 2
  %i.d = add nsw i64 %i.c, -1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array5nullsCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(112) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !12
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array6as_anyCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0) unnamed_addr #14 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1776, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array6offsetCs7p2uQeJxui2_9deltalake(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #14 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array8is_emptyCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !noundef !12
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array10list_arrayINtB5_16GenericListArraylENtB7_5Array9data_typeCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(112) %0) unnamed_addr #14 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_10StructTypeINtNtCsbvkFyIu7lgC_4core7convert7TryFromNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE8try_from(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !122, !noundef !12
  %i.b = icmp eq i8 %i.a, 2
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false)
  tail call void @_rjem_sdallocx(ptr noundef nonnull %i.d, i64 noundef 144, i32 noundef 0) #43
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.e = tail call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 16) #43 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e, !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40
end_hunk_1
begin_hunk_2_@_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

.body:                                            ; preds = %bb.p, %bb.k, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.w, %bb.p ], [ %i.t, %bb.k ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #39
          to label %bb.m unwind label %bb.z

bb.p:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !9387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !9387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.z, %bb.s ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions6FormatECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.h) #39
          to label %.body unwind label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.x ], [ %i.ab, %bb.v ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #39
          to label %bb.r unwind label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  %i.ac = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.f) #39
          to label %bb.u unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store <2 x i64> %i.ac, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.z:                                             ; preds = %bb.x, %bb.u, %bb.r, %.body, %bb.m, %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aa:                                            ; preds = %bb.e
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsi_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB5_9DeltaScanNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.h, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1885, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @1886, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1887, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1887, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @1888, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @1889, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1890, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1899, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1898, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.v
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsbvkFyIu7lgC_4core3fmtSNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNtB5_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXss_Cs7p2uQeJxui2_9deltalakeNtB5_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = load ptr, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.o = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.o, ptr %i.q, align 8
  %i.r = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16)), !noalias !9388 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.s = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.b ], [ %i.r, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  %i.t = load i64, ptr %i.l, align 8, !range !11, !noundef !12
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.045.0.copyload = load ptr, ptr %i.v, align 8 ; 5 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.248.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.546.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.045.0.copyload, ptr %i.w, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.w

bb.d:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store ptr %.sroa.045.0.copyload, ptr %i.m, align 8
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1901, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @688, i64 noundef 24)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.d, align 8, !range !14, !noundef !12
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.045.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !1395, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.045.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ae = load ptr, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.af = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.af, ptr %i.ah, align 8
  %i.ai = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16)), !noalias !9391 ; 2 uses
  %.not.i90 = icmp eq ptr %i.ai, null
  br i1 %.not.i90, label %bb.i, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit92, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.aj = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit92

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit92: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i91 = phi ptr [ %i.aj, %bb.i ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i91)
  %i.ak = load i64, ptr %i.j, align 8, !range !11, !noundef !12
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.051.0.copyload = load ptr, ptr %i.am, align 8 ; 5 uses
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit92
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.254.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.552.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.051.0.copyload, ptr %i.an, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

bb.k:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %.sroa.051.0.copyload, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptiondEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1901, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @690, i64 noundef 3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.i, align 8, !range !11, !noundef !12
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.058.0.copyload = load i64, ptr %i.ar, align 8 ; 2 uses
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.559.0.copyload = load double, ptr %.sroa.559.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.362.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.058.0.copyload, ptr %i.as, align 8
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.559.0.copyload, ptr %.sroa.261.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.051.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.051.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.at = load ptr, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.au = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.b, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.au, ptr %i.aw, align 8
  %i.ax = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16)), !noalias !9394 ; 2 uses
  %.not.i93 = icmp eq ptr %i.ax, null
  br i1 %.not.i93, label %bb.p, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit95, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.ay = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXss_Cs7p2uQeJxui2_9deltalakeNtB7_21BloomFilterPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit95

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit95: ; preds = %bb.o, %bb.p
  %.sroa.0.0.i94 = phi ptr [ %i.ay, %bb.p ], [ %i.ax, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i94)
  %i.az = load i64, ptr %i.g, align 8, !range !11, !noundef !12
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.065.0.copyload = load ptr, ptr %i.bb, align 8 ; 5 uses
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit95
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.268.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.566.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.065.0.copyload, ptr %i.bc, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.r:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %.sroa.065.0.copyload, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionyEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1901, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @689, i64 noundef 3)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.be = load i64, ptr %i.f, align 8, !range !11, !noundef !12
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.072.0.copyload = load i64, ptr %i.bg, align 8 ; 2 uses
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.573.0.copyload = load i64, ptr %.sroa.573.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.377.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.674.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.072.0.copyload, ptr %i.bh, align 8
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.573.0.copyload, ptr %.sroa.276.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.065.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.065.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.058.0.copyload, ptr %i.bi, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.559.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.072.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.573.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.ad, ptr %.sroa.11.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.j, %bb.g, %bb.n, %bb.q, %bb.u, %bb.v, %bb.c
  ret void

bb.x:                                             ; preds = %bb.s, %bb.l, %bb.e
  %.sroa.065.0.copyload.sink = phi ptr [ %.sroa.065.0.copyload, %bb.s ], [ %.sroa.051.0.copyload, %bb.l ], [ %.sroa.045.0.copyload, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.ao, %bb.l ], [ %i.x, %bb.e ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.065.0.copyload.sink) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_Cs7p2uQeJxui2_9deltalakeNtB5_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.534 = alloca [56 x i8], align 8          ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.525 = alloca [56 x i8], align 8          ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.516 = alloca [56 x i8], align 8          ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 19 uses
  %i.q = alloca [64 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.0 = alloca [88 x i8], align 8            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.s = load ptr, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.t = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.t, ptr %i.v, align 8
  %i.w = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16)), !noalias !9397 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.b, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.x = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bound8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.x, %bb.b ], [ %i.w, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  %i.y = load i64, ptr %i.q, align 8, !range !11, !noundef !12
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.aa, align 8 ; 5 uses
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.239.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.537.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.036.0.copyload, ptr %i.ab, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.ak

bb.d:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %.sroa.036.0.copyload, ptr %i.r, align 8
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionbEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1902, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 18)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ad = load i8, ptr %i.e, align 8, !range !14, !noundef !12
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.af, i64 56, i1 false)
  store i64 3, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.036.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.at

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !range !1395, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.036.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = load ptr, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.ak = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.d, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ak, ptr %i.am, align 8
  %i.an = call noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16)), !noalias !9400 ; 2 uses
  %.not.i74 = icmp eq ptr %i.an, null
  br i1 %.not.i74, label %bb.i, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit76, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.ao = call noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
  br label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit76

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit76: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i75 = phi ptr [ %i.ao, %bb.i ], [ %i.an, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i75)
  %i.ap = load i64, ptr %i.n, align 8, !range !11, !noundef !12
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.042.0.copyload = load ptr, ptr %i.ar, align 8 ; 5 uses
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit76
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.245.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.543.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.042.0.copyload, ptr %i.as, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.at

bb.k:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store ptr %.sroa.042.0.copyload, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1902, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @694, i64 noundef 18)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.m:                                             ; preds = %bb.k
  %i.au = load i64, ptr %i.m, align 8, !range !11, !noundef !12
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516, i64 56, i1 false)
  store i64 3, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.042.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516, i64 24, i1 false)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.042.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ay = load ptr, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.az = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.c, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.az, ptr %i.bb, align 8
  %i.bc = invoke noundef align 8 ptr @_RNvMs4_NtCshEQ9D8FWP38_9once_cell4syncINtB5_8OnceCellINtNtCsgbCypRs12E4_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16))
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %bb.o
  %.not.i77 = icmp eq ptr %i.bc, null
  br i1 %.not.i77, label %bb.p, label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit80, !prof !20

bb.p:                                             ; preds = %.noexc
  %i.bd = invoke noundef nonnull align 8 ptr @_RINvNtNtCsgbCypRs12E4_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs7_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds0_8INTERNED, i64 16), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit80 unwind label %bb.r

bb.q:                                             ; preds = %bb.y, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.y ], [ %i.be, %bb.r ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #39
          to label %common.resume unwind label %bb.am

bb.r:                                             ; preds = %bb.p, %bb.o, %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit80
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit80: ; preds = %.noexc, %bb.p
  %.sroa.0.0.i78 = phi ptr [ %i.bc, %.noexc ], [ %i.bd, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i78)
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake.exit80
  %i.bf = load i64, ptr %i.k, align 8, !range !11, !noundef !12
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.048.0.copyload = load ptr, ptr %i.bh, align 8 ; 5 uses
  br i1 %i.bg, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.251.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.549.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.048.0.copyload, ptr %i.bi, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bj = load i64, ptr %i.p, align 8, !range !62, !alias.scope !9403, !noundef !12
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume.sink.split:                         ; preds = %bb.l, %bb.e
  %.sroa.036.0.copyload.sink = phi ptr [ %.sroa.036.0.copyload, %bb.e ], [ %.sroa.042.0.copyload, %bb.l ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.at, %bb.l ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.036.0.copyload.sink) #43
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.ap, %bb.q, %bb.aa, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bl, %bb.v ], [ %.pn60, %bb.aa ], [ %i.cj, %bb.ap ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.u
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %.sroa.048.0.copyload, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake21BloomFilterPropertiesEEB1J_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1902, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @692, i64 noundef 23)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.048.0.copyload) #43
  br label %bb.q

bb.z:                                             ; preds = %bb.x
  %i.bo = load i64, ptr %i.j, align 8, !range !11, !noundef !12
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.ar, label %bb.ac

bb.aa:                                            ; preds = %bb.ah, %bb.ab
  %.pn60 = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %i.cb, %bb.ah ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #39
          to label %common.resume unwind label %bb.am

bb.ab:                                            ; preds = %bb.ad, %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.048.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bs = load ptr, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, align 8, !nonnull !12, !noundef !12
  %i.bt = load i64, ptr getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 8), align 8, !noundef !12
  store ptr %i.a, ptr %i.b, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bs, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bt, ptr %i.bv, align 8
  %i.bw = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtNtCsgbCypRs12E4_4pyo34sync9once_lockINtB3_10PyOnceLockINtNtB7_8instance2PyNtNtNtB7_5types6string8PyStringEE11get_or_initNCNvMs7_B5_NtB5_8Interned3get0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 getelementptr inbounds (i8, ptr @_RNvNvXst_Cs7p2uQeJxui2_9deltalakeNtB7_16ColumnPropertiesNtNtCsgbCypRs12E4_4pyo310conversion12FromPyObject13extract_bounds1_8INTERNED, i64 16), ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrRIBD_NtNtB7_6string8PyStringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bw)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  %i.bx = load i64, ptr %i.h, align 8, !range !11, !noundef !12
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.054.0.copyload = load ptr, ptr %i.bz, align 8 ; 5 uses
  br i1 %i.by, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.257.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.555.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.054.0.copyload, ptr %i.ca, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.an

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store ptr %.sroa.054.0.copyload, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_12frompyobject20extract_struct_fieldINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1902, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @693, i64 noundef 8)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload) #43
  br label %bb.aa

bb.ai:                                            ; preds = %bb.ag
  %i.cc = load i64, ptr %i.g, align 8, !range !11, !noundef !12
  %i.cd = trunc nuw i64 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.534, i64 24, i1 false)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.525, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, i64 88, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.ai, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.as, %bb.at, %bb.aj, %bb.c
  ret void

bb.al:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.534, i64 56, i1 false)
  store i64 3, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.054.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.534)
  br label %bb.as

bb.am:                                            ; preds = %bb.aa, %bb.q
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.an:                                            ; preds = %bb.ar, %bb.af
  %i.ch = load i64, ptr %i.p, align 8, !range !62, !alias.scope !9406, !noundef !12
  %i.ci = icmp eq i64 %i.ch, -9223372036854775808
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit83, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i82 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i82: ; preds = %bb.ao
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit83

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit83: ; preds = %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.as

bb.ar:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525, i64 56, i1 false)
  store i64 3, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.048.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.an

bb.as:                                            ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit83, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516)
  br label %bb.ak

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.t, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.as

bb.at:                                            ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRRNtCseo6ZV82fEK1_3url3UrlENtB5_5Value6recordCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !12, !nonnull !12
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1903) #44
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_12DisplayValueRRNtCseo6ZV82fEK1_3url3UrlENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs2y6mmZ7bjoM_12tracing_core5fieldINtB5_10DebugValueRINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs3LITIwzqf1g_4uuid4UuidEENtB5_5Value6recordCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !12, !nonnull !12
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1906) #44
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !14, !noalias !9409, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7p2uQeJxui2_9deltalake.exit

_RNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNCNvCs7p2uQeJxui2_9deltalake25___pyfunction_init_tracing0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB6_() unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNCNvCs7p2uQeJxui2_9deltalake29___pyfunction_create_deltalake0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !9414
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNCNvCs7p2uQeJxui2_9deltalake29___pyfunction_create_deltalakes0_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
