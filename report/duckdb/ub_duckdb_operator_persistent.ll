Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_persistent?download=true
inline.NumInlined: 13629
inline.NumDeleted: 7416
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb16CollectionMerger5FlushERNS_20OptimisticDataWriterE:bb.a
  br label %.body

bb.al:                                            ; preds = %bb.ac
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !801, !nonnull !265, !align !266
  %i.cm = load ptr, ptr %0, align 8, !tbaa !802, !nonnull !265, !align !266
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.055)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload = load i64, ptr %i.cn, align 8, !tbaa !98
  invoke void @_ZN6duckdb9DataTable25ResetOptimisticCollectionERNS_13ClientContextENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(124) %i.cl, ptr noundef nonnull align 8 dereferenceable(512) %i.cm, i64 %.sroa.0.0.copyload)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.am
  call void @_ZN6duckdb14TableScanStateD1Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.co = add nuw i64 %.055, 1                    ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !783
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !791
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  %i.cv = icmp ult i64 %i.co, %i.cu
  br i1 %i.cv, label %bb.n, label %._crit_edge58, !llvm.loop !817

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.t, %bb.s, %bb.ak, %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %i.ck, %bb.ak ], [ %i.ci, %bb.ag ], [ %i.bt, %bb.s ], [ %i.bt, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6duckdb14TableScanStateD1Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %5) #30
  br label %bb.ao

bb.ao:                                            ; preds = %.body, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cg, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.av

bb.ap:                                            ; preds = %._crit_edge58
  invoke void @_ZN6duckdb18RowGroupCollection14FinalizeAppendENS_15TransactionDataERNS_16TableAppendStateE(ptr noundef nonnull align 8 dereferenceable(217) %i.m, ptr noundef nonnull byval(%"struct.duckdb::TransactionData") align 8 %8, ptr noundef nonnull align 8 dereferenceable(296) %2)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb20OptimisticDataWriter23WriteUnflushedRowGroupsERNS_25OptimisticWriteCollectionE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.cw = load ptr, ptr %4, align 8, !tbaa !808
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !803
  invoke void @_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_(ptr noundef %i.cw, ptr noundef %i.cy)
          to label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i42 unwind label %bb.at, !inline_history !813

_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i42: ; preds = %bb.ar
  %i.cz = load ptr, ptr %4, align 8, !tbaa !808   ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit44, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i42
  call void @_ZdlPv(ptr noundef nonnull %i.cz) #31, !inline_history !813
  br label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit44

bb.at:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #34, !inline_history !813
  unreachable

_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit44: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i42, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb16TableAppendStateD1Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.bb

bb.au:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge58
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.ad, %bb.ao, %bb.au, %bb.m
  %.pn34 = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.dc, %bb.au ], [ %.pn.pn, %bb.ao ], [ %i.cf, %bb.ad ]
  call void @_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.i
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.av ], [ %i.an, %bb.i ]
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.h
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.aw ], [ %i.am, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.g
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.ax ], [ %i.al, %bb.g ]
  call void @_ZN6duckdb16TableAppendStateD1Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn34.pn.pn.pn

bb.az:                                            ; preds = %bb.b
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !775
  %i.df = icmp eq i8 %i.de, 1
  br i1 %i.df, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN6duckdb20OptimisticDataWriter23WriteUnflushedRowGroupsERNS_25OptimisticWriteCollectionE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.l)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit44
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !791 ; 2 uses
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !783
  %.not.i.i.i45 = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i.i45, label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN6duckdb13PhysicalIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb13PhysicalIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.bb
  store ptr %i.dg, ptr %i.d, align 8, !tbaa !783
  br label %_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EE5clearEv.exit

_ZN6duckdb6vectorINS_13PhysicalIndexELb1ESaIS1_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN6duckdb13PhysicalIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.bb, %bb.a
  %.sroa.050.0 = phi i64 [ -1, %bb.a ], [ %i.h, %bb.bb ], [ %i.h, %_ZSt8_DestroyIPN6duckdb13PhysicalIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i ]
  ret i64 %.sroa.050.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22BatchInsertGlobalState13AddCollectionERNS_13ClientContextEmmNS_13PhysicalIndexENS_12optional_ptrINS_20OptimisticDataWriterELb1EEE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 noundef %2, i64 noundef %3, i64 %4, ptr %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::optional_ptr.801", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"struct.duckdb::RowGroupBatchEntry", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  store ptr %5, ptr %6, align 8
  store i64 %2, ptr %i.a, align 8, !tbaa !98
  store i64 %3, ptr %i.b, align 8, !tbaa !98
  %i.c = icmp ult i64 %2, %3
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRKmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.z unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.028 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !15     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.028, label %bb.f, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %.028, label %bb.f, label %bb.y

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3349 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #30
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !743, !nonnull !265, !align !266 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(124) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(688) %i.k)
  %i.p = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb9DataTable23GetOptimisticCollectionERNS_13ClientContextENS_13PhysicalIndexE(ptr noundef nonnull align 8 dereferenceable(124) %i.o, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 %4) ; 4 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.r = tail call noundef i64 @_ZNK6duckdb18RowGroupCollection12GetTotalRowsEv(ptr noundef nonnull align 8 dereferenceable(217) %i.q) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.t = load i64, ptr %i.s, align 8, !tbaa !690  ; 2 uses
  %i.u = icmp ult i64 %i.r, %i.t                  ; 2 uses
  %i.v = zext i1 %i.u to i8
  %.not = icmp uge i64 %i.r, %i.t
  %12 = icmp ne ptr %5, null
  %or.cond.not = select i1 %.not, i1 %12, i1 false
  br i1 %or.cond.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZNK6duckdb12optional_ptrINS_20OptimisticDataWriterELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.w = load ptr, ptr %6, align 8, !tbaa !818
  call void @_ZN6duckdb20OptimisticDataWriter23WriteUnflushedRowGroupsERNS_25OptimisticWriteCollectionE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.p)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.y = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_system_errori(i32 noundef %i.y) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !821
  %i.ab = add i64 %i.aa, %i.r
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !821
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !98  ; 2 uses
  store i64 %i.ac, ptr %9, align 8, !tbaa !712
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.af = invoke noundef i64 @_ZNK6duckdb18RowGroupCollection12GetTotalRowsEv(ptr noundef nonnull align 8 dereferenceable(217) %i.ae)
          to label %.noexc36 unwind label %bb.m

.noexc36:                                         ; preds = %.noexc
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !732
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !747
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %4, ptr %i.ah, align 8, !tbaa !98
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 %i.v, ptr %i.ai, align 8, !tbaa !727
  br i1 %i.u, label %bb.k, label %_ZN6duckdb18RowGroupBatchEntryC2ERNS_25OptimisticWriteCollectionEmNS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit

bb.k:                                             ; preds = %.noexc36
  %i.aj = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_18RowGroupCollectionELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(96) %i.p)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 168
  %i.al = load atomic i64, ptr %i.ak seq_cst, align 8 ; 2 uses
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !747
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = atomicrmw add ptr %i.am, i64 %i.al seq_cst, align 8 ; 0 uses
  %.val.pre = load i64, ptr %9, align 8
  br label %_ZN6duckdb18RowGroupBatchEntryC2ERNS_25OptimisticWriteCollectionEmNS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit

bb.m:                                             ; preds = %bb.k, %.noexc, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN6duckdb18RowGroupBatchEntryC2ERNS_25OptimisticWriteCollectionEmNS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit: ; preds = %.noexc36, %bb.l
  %.val = phi i64 [ %i.ac, %.noexc36 ], [ %.val.pre, %bb.l ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !771 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !771 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEES3_ZNS2_22BatchInsertGlobalState13AddCollectionERNS2_13ClientContextEmmNS2_13PhysicalIndexENS2_12optional_ptrINS2_20OptimisticDataWriterELb1EEEE3$_0ET_SH_SH_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i: ; preds = %_ZN6duckdb18RowGroupBatchEntryC2ERNS_25OptimisticWriteCollectionEmNS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit
  %i.ax = udiv exact i64 %i.av, 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i
  %.07.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.ax, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %.sroa.02.06.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aq, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i ] ; 2 uses
  %i.ay = lshr i64 %.07.i.i, 1                    ; 3 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.sroa.02.06.i.i, i64 %i.ay ; 2 uses
  %.val.i.i.i = load i64, ptr %i.az, align 8, !tbaa !712
  %i.ba = icmp ult i64 %.val.i.i.i, %.val         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.07.i.i, %i.bc
  %.sroa.02.1.i.i = select i1 %i.ba, ptr %i.bb, ptr %.sroa.02.06.i.i ; 2 uses
  %.1.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEES3_ZNS2_22BatchInsertGlobalState13AddCollectionERNS2_13ClientContextEmmNS2_13PhysicalIndexENS2_12optional_ptrINS2_20OptimisticDataWriterELb1EEEE3$_0ET_SH_SH_RKT0_T1_.exit", !llvm.loop !822

"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEES3_ZNS2_22BatchInsertGlobalState13AddCollectionERNS2_13ClientContextEmmNS2_13PhysicalIndexENS2_12optional_ptrINS2_20OptimisticDataWriterELb1EEEE3$_0ET_SH_SH_RKT0_T1_.exit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZN6duckdb18RowGroupBatchEntryC2ERNS_25OptimisticWriteCollectionEmNS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit
  %.sroa.02.0.lcssa.i.i = phi ptr [ %i.aq, %_ZN6duckdb18RowGroupBatchEntryC2ERNS_25OptimisticWriteCollectionEmNS_13PhysicalIndexENS_17RowGroupBatchTypeE.exit ], [ %.sroa.02.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 3 uses
  %.not.a = icmp eq ptr %.sroa.02.0.lcssa.i.i, %i.as
  br i1 %.not.a, label %.critedge, label %bb.n

bb.n:                                             ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEES3_ZNS2_22BatchInsertGlobalState13AddCollectionERNS2_13ClientContextEmmNS2_13PhysicalIndexENS2_12optional_ptrINS2_20OptimisticDataWriterELb1EEEE3$_0ET_SH_SH_RKT0_T1_.exit"
  %i.bf = load i64, ptr %.sroa.02.0.lcssa.i.i, align 8, !tbaa !712
  %i.bg = icmp eq i64 %i.bf, %.val
  br i1 %i.bg, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bh = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17InternalExceptionC2IJRKmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.z unwind label %bb.s

bb.r:                                             ; preds = %bb.v, %.critedge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread: ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  %.021 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bl) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br i1 %.021, label %bb.t, label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br i1 %.021, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn52 = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  call void @__cxa_free_exception(ptr %i.bh) #30
  br label %bb.x

.critedge:                                        ; preds = %"_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPN6duckdb18RowGroupBatchEntryESt6vectorIS3_SaIS3_EEEES3_ZNS2_22BatchInsertGlobalState13AddCollectionERNS2_13ClientContextEmmNS2_13PhysicalIndexENS2_12optional_ptrINS2_20OptimisticDataWriterELb1EEEE3$_0ET_SH_SH_RKT0_T1_.exit", %bb.n
  %i.bo = invoke ptr @_ZNSt6vectorIN6duckdb18RowGroupBatchEntryESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr %.sroa.02.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(33) %9)
          to label %bb.u unwind label %bb.r       ; 0 uses

bb.u:                                             ; preds = %.critedge
  %i.bp = load ptr, ptr %6, align 8, !tbaa !818
  %.not55 = icmp eq ptr %i.bp, null
  br i1 %.not55, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !98
  invoke void @_ZN6duckdb22BatchInsertGlobalState18ScheduleMergeTasksERNS_13ClientContextEm(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 noundef %i.bq)
          to label %bb.w unwind label %bb.r

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.br = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #30 ; 0 uses
  ret void

bb.x:                                             ; preds = %bb.r, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.m ], [ %.pn52, %bb.t ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.bi, %bb.r ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.bs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #30 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.x
  %.pn33.pn = phi { ptr, i32 } [ %.pn3349, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn, %bb.x ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn33.pn

bb.z:                                             ; preds = %bb.q, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRKmS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.2138", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !823
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !823
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !611, !noalias !823 ; 3 uses
end_hunk_0
