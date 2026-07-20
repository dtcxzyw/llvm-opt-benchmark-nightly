inline.NumInlined: 2343
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6duckdb21RowNumberColumnReader14InitializeReadEmRKNS_6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS3_EEERN13duckdb_apache6thrift8protocol9TProtocolE:bb.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.05 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.05)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !357
  %i.i = load i64, ptr %i.a, align 8, !tbaa !355
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %i.a, align 8, !tbaa !355
  %i.k = add nuw i64 %.05, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !371
}

declare noundef ptr @_ZNK6duckdb13ParquetReader15GetFileMetadataEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !372
  %i.e = load ptr, ptr %0, align 8, !tbaa !375    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !300
  store i64 %i.i, ptr %i.b, align 8, !tbaa !300
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EE3getILb1EEERKS2_m.exit, label %bb.b, !prof !301

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EE3getILb1EEERKS2_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21RowNumberColumnReader6FilterEmPhS1_RNS_6VectorERKNS_11TableFilterERNS_16TableFilterStateERNS_15SelectionVectorERmb(ptr noundef nonnull align 8 dereferenceable(520) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %9) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i64, ptr %i.a, align 8, !tbaa !355  ; 2 uses
  %i.c = add i64 %i.b, %1
  %i.d = tail call noundef zeroext i8 @_ZN6duckdb8RowGroup16CheckRowIdFilterERKNS_11TableFilterEmm(ptr noundef nonnull align 8 dereferenceable(9) %5, i64 noundef %i.b, i64 noundef %i.c)
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %8, align 8, !tbaa !300
  %i.f = load ptr, ptr %0, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(520) %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb12ColumnReader6FilterEmPhS1_RNS_6VectorERKNS_11TableFilterERNS_16TableFilterStateERNS_15SelectionVectorERmb(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %9)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare noundef zeroext i8 @_ZN6duckdb8RowGroup16CheckRowIdFilterERKNS_11TableFilterEmm(ptr noundef nonnull align 8 dereferenceable(9), i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN6duckdb12ColumnReader6FilterEmPhS1_RNS_6VectorERKNS_11TableFilterERNS_16TableFilterStateERNS_15SelectionVectorERmb(ptr noundef nonnull align 8 dereferenceable(512), i64 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb21RowNumberColumnReader4ReadEmPhS1_RNS_6VectorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(520) %0, i64 noundef returned %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr noundef nonnull align 8 dereferenceable(104) %4) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 10 uses
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.d = icmp ult i64 %1, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %1, -4
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.08.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.08.epil = phi i64 [ %.08.epil.init, %.epil.preheader ], [ %i.h, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.e = load i64, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.c, align 8, !tbaa !355
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08.epil
  store i64 %i.e, ptr %i.g, align 8, !tbaa !300
  %i.h = add nuw i64 %.08.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !376

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  ret i64 %1

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.08 = phi i64 [ 0, %.lr.ph.new ], [ %i.x, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.i = load i64, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !355
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08
  store i64 %i.i, ptr %i.k, align 8, !tbaa !300
  %i.l = load i64, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !355
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8, !tbaa !300
  %i.p = load i64, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !355
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.p, ptr %i.s, align 8, !tbaa !300
  %i.t = load i64, ptr %i.c, align 8, !tbaa !355  ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.c, align 8, !tbaa !355
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.08
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.t, ptr %i.w, align 8, !tbaa !300
  %i.x = add nuw i64 %.08, 4                      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !378
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18StringColumnReaderC2ERKNS_13ParquetReaderERKNS_19ParquetColumnSchemaE(ptr noundef nonnull align 8 dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(157) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb12ColumnReaderC2ERKNS_13ParquetReaderERKNS_19ParquetColumnSchemaE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(157) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb18StringColumnReaderE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.d = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsJSONTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %_ZN6duckdb18StringColumnReader19GetStringColumnTypeERKNS_11LogicalTypeE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.e = load i8, ptr %i.c, align 8, !tbaa !379
  %i.f = icmp eq i8 %i.e, 25
  %..i = select i1 %i.f, i8 0, i8 2
  br label %_ZN6duckdb18StringColumnReader19GetStringColumnTypeERKNS_11LogicalTypeE.exit

_ZN6duckdb18StringColumnReader19GetStringColumnTypeERKNS_11LogicalTypeE.exit: ; preds = %bb.b, %.noexc
  %.0.i = phi i8 [ 1, %.noexc ], [ %..i, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i8 %.0.i, ptr %i.g, align 8, !tbaa !380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !383
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !38
  %i.k = icmp eq i32 %i.j, 7
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN6duckdb18StringColumnReader19GetStringColumnTypeERKNS_11LogicalTypeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !384
  %i.n = zext i32 %i.m to i64
  store i64 %i.n, ptr %i.h, align 8, !tbaa !383
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12ColumnReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(512) %0) #21
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.c, %_ZN6duckdb18StringColumnReader19GetStringColumnTypeERKNS_11LogicalTypeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb18StringColumnReader7IsValidEPKcjb(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = zext i32 %1 to i64
  %i.d = call noundef i32 @_ZN6duckdb8Utf8Proc7AnalyzeEPKcmPNS_20UnicodeInvalidReasonEPm(ptr noundef %0, i64 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = icmp ne i32 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZN6duckdb8Utf8Proc7AnalyzeEPKcmPNS_20UnicodeInvalidReasonEPm(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb18StringColumnReader7IsValidERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  br i1 %1, label %bb.b, label %_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !385
  %i.e = load ptr, ptr %0, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.f = and i64 %i.d, 4294967295
  %i.g = call noundef i32 @_ZN6duckdb8Utf8Proc7AnalyzeEPKcmPNS_20UnicodeInvalidReasonEPm(ptr noundef %i.e, i64 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.h = icmp ne i32 %i.g, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit

_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18StringColumnReader12VerifyStringEPKcjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(521) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.sroa.0 = alloca %struct.anon, align 8         ; 6 uses
  br i1 %3, label %_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit, label %_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit.thread

_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %i.d = call noundef i32 @_ZN6duckdb8Utf8Proc7AnalyzeEPKcmPNS_20UnicodeInvalidReasonEPm(ptr noundef %1, i64 noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not, label %bb.b, label %_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit.thread

bb.b:                                             ; preds = %_ZN6duckdb18StringColumnReader7IsValidEPKcjb.exit
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162, !nonnull !40, !align !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i32 %2, ptr %.sroa.0, align 8, !tbaa !7
  %i.i = icmp ult i32 %2, 13
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4..sroa_idx50 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx50, i8 0, i64 12, i1 false)
  %i.j = icmp eq i32 %2, 0
  br i1 %i.j, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr align 1 %1, i64 %i.c, i1 false)
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre = load ptr, ptr %.sroa.0.8..sroa_idx, align 8
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.f:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 1
  %.sroa.0.4..sroa_idx49 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i32 %i.k, ptr %.sroa.0.4..sroa_idx49, align 4
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.8..sroa.0.8..sroa.0.8. = phi ptr [ %1, %bb.f ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.e ], [ null, %bb.d ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8
  invoke void @_ZN6duckdb4Blob8ToStringB5cxx11ENS_8string_tE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %.sroa.0.8..sroa.0.8..sroa.0.8.)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.l unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.thread: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.q = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
end_hunk_0
