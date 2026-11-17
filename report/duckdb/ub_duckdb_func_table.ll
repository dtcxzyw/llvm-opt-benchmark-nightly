Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_table?download=true
inline.NumInlined: 18938
inline.NumDeleted: 8313
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN6duckdb21RangeFunctionBindDataC2ERKNS_6vectorINS_5ValueELb1ESaIS2_EEEb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ai = invoke { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.q unwind label %bb.w       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  store i64 %i.aj, ptr %9, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = extractvalue { i64, i64 } %i.ai, 1
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = invoke { i64, i64 } @_ZNK6duckdb9hugeint_trmERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.an = extractvalue { i64, i64 } %i.am, 0
  store i64 %i.an, ptr %8, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = extractvalue { i64, i64 } %i.am, 1
  store i64 %i.ap, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 0)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.aq = invoke noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br i1 %i.aq, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !4850
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.d, align 8, !tbaa !4850
  br label %bb.z

bb.v:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aa

bb.w:                                             ; preds = %bb.q, %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.s, %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.av, %bb.x ], [ %i.au, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.aa

bb.z:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void

bb.aa:                                            ; preds = %bb.y, %bb.v, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.at, %bb.v ], [ %i.y, %bb.l ], [ %i.x, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aa ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @_ZN6duckdb17TableFunctionDataD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #29
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL13GetParametersEPlmRNS_9hugeint_tES2_S2_(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %4) unnamed_addr #0 !guid !4851 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !993
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.b = load i64, ptr %0, align 8, !tbaa !689
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !993
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.c = load i64, ptr %0, align 8, !tbaa !689
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !993
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !689
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !993
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.f = icmp eq i64 %1, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !993
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !689
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !993
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb9hugeint_tmiERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb9hugeint_tdvERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb9hugeint_trmERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb9hugeint_tneERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21RangeFunctionBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !guid !4852 {
bb.a:
  tail call void @_ZN6duckdb17TableFunctionDataD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastImEEbNS_9hugeint_tERT_(i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb7Hugeint7TryCastIlEEbNS_9hugeint_tERT_(i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb9hugeint_tltERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6duckdb6Vector8SequenceEllm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb9hugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21RangeDateTimeBindDataC2ERKNS_6vectorINS_5ValueELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !4854 {
bb.a:
  %2 = alloca %"struct.duckdb::interval_t", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb21RangeDateTimeBindDataE, i64 16), ptr %0, align 8, !tbaa !705
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !4856
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !793
  %i.g = load ptr, ptr %1, align 8, !tbaa !794
  %.not25.not = icmp eq ptr %i.f, %i.g
  br i1 %.not25.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !776, !range !777, !noundef !762
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.m = invoke i64 @_ZNK6duckdb5Value8GetValueINS_11timestamp_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.pre31 = load ptr, ptr %1, align 8, !tbaa !794
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !793
  %i.n = ptrtoint ptr %.pre to i64
  %i.o = ptrtoint ptr %.pre31 to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.peel = icmp ugt i64 %i.p, 64
  br i1 %.not.peel, label %.peel.next, label %.critedge

.peel.next:                                       ; preds = %bb.e
  %i.q = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.peel.next
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !776, !range !777, !noundef !762
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.v = invoke i64 @_ZNK6duckdb5Value8GetValueINS_11timestamp_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !794
  %.pre32 = load ptr, ptr %i.e, align 8, !tbaa !793
  %i.w = ptrtoint ptr %.pre32 to i64
  %i.x = ptrtoint ptr %.pre33 to i64
  %i.y = sub i64 %i.w, %i.x
  %.not.peel28 = icmp ugt i64 %i.y, 128
  br i1 %.not.peel28, label %.peel.next27, label %.critedge

.peel.next27:                                     ; preds = %bb.i, %bb.m
  %.02026 = phi i64 [ %i.af, %bb.m ], [ 2, %bb.i ] ; 3 uses
  %i.z = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.02026)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.peel.next27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !776, !range !777, !noundef !762
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.02026)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.ae = invoke { i64, i64 } @_ZNK6duckdb5Value8GetValueINS_10interval_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64) %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.l, %.peel.next27, %.lr.ph, %bb.c, %bb.d, %.peel.next, %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.m:                                             ; preds = %bb.l
  %3 = extractvalue { i64, i64 } %i.ae, 0
  %4 = extractvalue { i64, i64 } %i.ae, 1
  store i64 %3, ptr %2, align 8, !tbaa !156
  store i64 %4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !689
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !794
  %.pre34 = load ptr, ptr %i.e, align 8, !tbaa !793
  %i.af = add nuw i64 %.02026, 1                  ; 2 uses
  %i.ag = ptrtoint ptr %.pre34 to i64
  %i.ah = ptrtoint ptr %.pre35 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 6
  %.not = icmp ult i64 %i.af, %i.aj
  br i1 %.not, label %.peel.next27, label %.critedge, !llvm.loop !4853

.critedge:                                        ; preds = %bb.m, %bb.e, %bb.i, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ undef, %bb.e ], [ %i.v, %bb.i ], [ %i.v, %bb.m ]
  %5 = phi i64 [ undef, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.i ], [ %i.m, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !689
  %i.ak = invoke noundef zeroext i1 @_ZN6duckdb8Interval11TryGetMicroERKNS_10interval_tERl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.al = load i64, ptr %i.a, align 8
  %i.am = icmp ne i64 %i.al, 0
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.o:                                             ; preds = %.critedge
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 0, ptr %i.b, align 8, !tbaa !689
  %i.ao = invoke noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %.sroa.3.0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.ao, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !689
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !689
  %i.as = sdiv i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.d, align 8, !tbaa !4856
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.b, %bb.f, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.v:                                             ; preds = %bb.r, %bb.o
  %.pn22 = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %i.an, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @_ZN6duckdb17TableFunctionDataD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #29
  resume { ptr, i32 } %.pn22.pn
}

declare { i64, i64 } @_ZNK6duckdb5Value8GetValueINS_10interval_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare i64 @_ZNK6duckdb5Value8GetValueINS_11timestamp_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb8Interval11TryGetMicroERKNS_10interval_tERl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb17TableFunctionDataD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21RangeDateTimeBindDataD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !guid !4858 {
bb.a:
  tail call void @_ZN6duckdb17TableFunctionDataD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #29
  tail call void @_ZdlPv(ptr noundef nonnull %0) #31
  ret void
}

declare i64 @_ZN6duckdb11AddOperator9OperationINS_11timestamp_tENS_10interval_tES2_EET1_T_T0_(i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !4865 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !695  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !697    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !688
  %i.s = load ptr, ptr %2, align 8, !tbaa !686    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !691  ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !686
  %i.z = load i64, ptr %i.t, align 8, !tbaa !690
  store i64 %i.z, ptr %i.r, align 8, !tbaa !690
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !691
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !691
  store ptr %i.t, ptr %2, align 8, !tbaa !686
  store i64 0, ptr %i.ab, align 8, !tbaa !691
  store i8 0, ptr %i.t, align 8, !tbaa !690
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4867)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i.i, align 8, !tbaa !688, !alias.scope !4866
  %i.ae = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !686, !alias.scope !4867 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !691, !alias.scope !4867 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !4868
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i.i, align 8, !tbaa !686, !alias.scope !4866
  %i.al = load i64, ptr %i.af, align 8, !tbaa !690, !alias.scope !4867
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !690, !alias.scope !4866
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !691, !alias.scope !4867
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !691, !alias.scope !4866
  store ptr %i.af, ptr %.0911.i.i.i.i, align 8, !tbaa !686, !alias.scope !4867
  store i64 0, ptr %i.an, align 8, !tbaa !691, !alias.scope !4867
  store i8 0, ptr %i.af, align 8, !tbaa !690, !alias.scope !4867
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4870)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i.i18, align 8, !tbaa !688, !alias.scope !4869
  %i.at = load ptr, ptr %.0911.i.i.i.i19, align 8, !tbaa !686, !alias.scope !4870 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !691, !alias.scope !4870 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !4871
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i.i18, align 8, !tbaa !686, !alias.scope !4869
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !690, !alias.scope !4870
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !690, !alias.scope !4869
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !691, !alias.scope !4870
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !691, !alias.scope !4869
  store ptr %i.au, ptr %.0911.i.i.i.i19, align 8, !tbaa !686, !alias.scope !4870
  store i64 0, ptr %i.bc, align 8, !tbaa !691, !alias.scope !4870
  store i8 0, ptr %i.au, align 8, !tbaa !690, !alias.scope !4870
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !94

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !697
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !695
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !696
  ret void
}

end_hunk_0
