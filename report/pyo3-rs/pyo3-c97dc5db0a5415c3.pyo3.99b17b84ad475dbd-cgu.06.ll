Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.06?download=true
inline.NumInlined: 184
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent26get_minimum_leading_spaces:bb.a
  ]

bb.j:                                             ; preds = %.lr.ph.i22
  %i.ag = icmp samesign ugt i64 %1, %.pre.i31
  br i1 %i.ag, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.pre.i31
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !76, !noundef !4
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.loopexit.split.loop.exit14.i28, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24

.loopexit.split.loop.exit14.i28:                  ; preds = %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27
  %i.ak = add nuw nsw i64 %.sroa.0.017.i23, 2
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.thread.i24: ; preds = %.lr.ph.i22, %_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent11consume_eol.exit.i27, %bb.j
  %exitcond.not.i26 = icmp eq i64 %.pre.i31, %1
  br i1 %exitcond.not.i26, label %.outer._crit_edge, label %.lr.ph.i22

_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent20advance_to_next_line.exit32: ; preds = %.lr.ph.i22, %.loopexit.split.loop.exit14.i28
  %.sroa.04.0.i21 = phi i64 [ %i.ak, %.loopexit.split.loop.exit14.i28 ], [ %.pre.i31, %.lr.ph.i22 ] ; 2 uses
  %i.al = icmp ult i64 %.sroa.04.0.i21, %1
  br i1 %i.al, label %.preheader.lr.ph, label %.outer._crit_edge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent8unindent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = invoke noundef i64 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_8unindent14unindent_bytes(ptr noalias nofree noundef nonnull %i.l, i64 noundef %2)
          to label %bb.f unwind label %bb.q

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.o, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.p, i8 noundef 0)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !84, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !84, !noundef !4 ; 2 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.i unwind label %bb.h, !noalias !85

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %.body.thread unwind label %bb.j, !noalias !83

bb.i:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.a, align 8, !range !6, !noalias !85, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !83
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 8, !noalias !85
  %i.aa = load i64, ptr %i.y, align 8, !noalias !85
  %.sroa.09.0.copyload = load i64, ptr %i.d, align 8, !noalias !83 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.not.i = icmp eq i64 %.sroa.09.0.copyload, -1
  br i1 %.not.i, label %bb.p, label %bb.l, !prof !88

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  store i64 %.sroa.09.0.copyload, ptr %i.b, align 8, !noalias !86
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !noalias !86
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x i64> %i.z, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !86
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #24
          to label %bb.n unwind label %bb.m, !noalias !89

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string13FromUtf8ErrorECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %.body.thread unwind label %bb.o, !noalias !89

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !89
  unreachable

bb.p:                                             ; preds = %bb.k, %.thread
  %.sroa.6.sroa.6.0 = phi i64 [ %i.aa, %bb.k ], [ %i.t, %.thread ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !alias.scope !89
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8, !alias.scope !89
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.body.thread:                                     ; preds = %bb.m, %bb.h, %bb.q
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.ad, %bb.q ], [ %i.u, %bb.h ], [ %i.ab, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body13

bb.q:                                             ; preds = %bb.f, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %.body.thread unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def13getset_getter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !97
  store ptr @2, ptr %i.e, align 8, !noalias !97
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread28.i, !noalias !97

.thread28.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.g, ptr %i.d, align 4, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !96, !nonnull !4, !noundef !4
  invoke void %.val.i.i(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c, !noalias !97, !inline_history !93

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %.thread35.i unwind label %bb.d, !noalias !97 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !97
  unreachable

.thread35.i:                                      ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13.i = load ptr, ptr %i.a, align 8, !noalias !97 ; 2 uses
  %.sroa.8.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload15.i = load ptr, ptr %.sroa.8.0..sroa_idx14.i, align 8, !noalias !97 ; 3 uses
  %.sroa.12.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.521.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx17.i, i64 40, i1 false), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !97
  store ptr %.sroa.0.0.copyload13.i, ptr %i.c, align 8, !noalias !97
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload15.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !97
  %.pr.cast.i = ptrtoint ptr %.sroa.0.0.copyload13.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  switch i64 %.pr.cast.i, label %.invoke.i [
    i64 2, label %._crit_edge.i
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  ], !prof !12

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !97
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.thread35.i
  %i.o = phi ptr [ %i.n, %.thread35.i ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.0.2237.i = phi ptr [ %i.m, %.thread35.i ], [ %.sroa.8.0.copyload15.i, %._crit_edge.i ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.2237.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.invoke.i unwind label %bb.g, !noalias !97

.invoke.i:                                        ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.b, %bb.f ], [ %.sroa.420.0..sroa_idx.i, %bb.e ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.g, !noalias !97

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.h, !noalias !97

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %.invoke.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ null, %.invoke.i ], [ %.sroa.8.0.copyload15.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.thread.i, %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !97
  unreachable

.thread.i:                                        ; preds = %bb.g, %.thread28.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.h, !noalias !97

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !97
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def13getset_setter(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 14 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112
  store ptr @2, ptr %i.e, align 8, !noalias !112
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !112
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread44.i, !noalias !112

.thread44.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  store i32 %i.g, ptr %i.d, align 4, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !113, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !113, !noundef !4 ; 2 uses
  %.not107.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not107.i.i.i.i, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %bb.l unwind label %bb.j, !noalias !112, !inline_history !107

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !114
  %i.n = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #21, !noalias !114 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.invoke.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !9

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.f
  store ptr @3, ptr %i.n, align 8, !noalias !114
  br label %bb.g

bb.g:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  %.sink116.i.i.i.i = phi ptr [ %i.r, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i ], [ %i.n, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ] ; 2 uses
  %.sink114.i.i.i.i = phi i64 [ 23, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i ], [ 22, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink116.i.i.i.i, i64 8
  store i64 %.sink114.i.i.i.i, ptr %i.p, align 8, !noalias !113
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !112
  store i64 1, ptr %.sroa.5102.0..sroa_idx.i.i.i.i, align 8, !noalias !112
  %.sroa.6103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sink116.i.i.i.i, ptr %.sroa.6103.0..sroa_idx.i.i.i.i, align 8, !noalias !112
  %.sroa.7104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @4, ptr %.sroa.7104.0..sroa_idx.i.i.i.i, align 8, !noalias !112
  %.sroa.8105.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 3, ptr %.sroa.8105.0..sroa_idx.i.i.i.i, align 8, !noalias !112
  store i32 1, ptr %i.a, align 8, !noalias !112
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  invoke void %i.m(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0)
          to label %bb.l unwind label %bb.j, !noalias !112, !inline_history !107

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !115
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #21, !noalias !115 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.invoke.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i, !prof !9

.invoke.i:                                        ; preds = %bb.i, %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
          to label %.cont.i unwind label %bb.j, !noalias !112

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i: ; preds = %bb.i
  store ptr @5, ptr %i.r, align 8, !noalias !115
  br label %bb.g

bb.j:                                             ; preds = %.invoke.i, %bb.h, %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.u)
          to label %.thread52.i unwind label %bb.k, !noalias !112 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !112
  unreachable

.thread52.i:                                      ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  %i.y = extractvalue { ptr, ptr } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0.copyload15.i = load ptr, ptr %i.a, align 8, !noalias !112 ; 2 uses
  %.sroa.8.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload18.i = load ptr, ptr %.sroa.8.0..sroa_idx17.i, align 8, !noalias !112 ; 2 uses
  %.sroa.11.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.0.copyload22.i = load ptr, ptr %.sroa.11.0..sroa_idx21.i, align 8, !noalias !112 ; 2 uses
  %.sroa.12.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx25.i, i64 32, i1 false), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  store ptr %.sroa.0.0.copyload15.i, ptr %i.c, align 8, !noalias !112
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload18.i, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !112
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.11.0.copyload22.i, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !112
  %i.z = ptrtoint ptr %.sroa.0.0.copyload15.i to i64 ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  switch i32 %i.aa, label %.invoke61.i [
    i32 2, label %bb.m
    i32 0, label %bb.n
  ], !prof !13

bb.m:                                             ; preds = %bb.l, %.thread52.i
  %.sroa.0.0.3456.i = phi ptr [ %i.x, %.thread52.i ], [ %.sroa.8.0.copyload18.i, %bb.l ]
  %.sroa.8.8.3555.i = phi ptr [ %i.y, %.thread52.i ], [ %.sroa.11.0.copyload22.i, %bb.l ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.3456.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.3555.i)
          to label %.invoke61.i unwind label %bb.o, !noalias !112

.invoke61.i:                                      ; preds = %bb.m, %bb.l
  %i.ab = phi ptr [ %i.b, %bb.m ], [ %.sroa.431.0..sroa_idx.i, %bb.l ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ab)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.o, !noalias !112

bb.n:                                             ; preds = %bb.l
  %i.ac = lshr i64 %i.z, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i

bb.o:                                             ; preds = %.invoke61.i, %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.p, !noalias !112

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %bb.n, %.invoke61.i
  %.sroa.0.0.i.i = phi i32 [ %i.ad, %bb.n ], [ -1, %.invoke61.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %.thread.i, %bb.o
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !112
  unreachable

.thread.i:                                        ; preds = %bb.o, %.thread44.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.p, !noalias !112

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !112
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def6getter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !122
  store ptr @2, ptr %i.e, align 8, !noalias !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !122
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread28.i, !noalias !122

.thread28.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1), "nonnull"(ptr %0) ]
  store i32 %i.g, ptr %i.d, align 4, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  invoke void %1(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c, !noalias !122, !inline_history !119

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %.thread35.i unwind label %bb.d, !noalias !122 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !122
  unreachable

.thread35.i:                                      ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !122
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13.i = load ptr, ptr %i.a, align 8, !noalias !122 ; 2 uses
  %.sroa.8.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload15.i = load ptr, ptr %.sroa.8.0..sroa_idx14.i, align 8, !noalias !122 ; 3 uses
  %.sroa.12.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.521.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx17.i, i64 40, i1 false), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  store ptr %.sroa.0.0.copyload13.i, ptr %i.c, align 8, !noalias !122
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload15.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !122
  %.pr.cast.i = ptrtoint ptr %.sroa.0.0.copyload13.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !122
  switch i64 %.pr.cast.i, label %.invoke.i [
    i64 2, label %._crit_edge.i
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  ], !prof !12

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !123, !noalias !122
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.thread35.i
  %i.o = phi ptr [ %i.n, %.thread35.i ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.0.2237.i = phi ptr [ %i.m, %.thread35.i ], [ %.sroa.8.0.copyload15.i, %._crit_edge.i ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.2237.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.invoke.i unwind label %bb.g, !noalias !122

.invoke.i:                                        ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.b, %bb.f ], [ %.sroa.420.0..sroa_idx.i, %bb.e ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.g, !noalias !122

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.h, !noalias !122

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %.invoke.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ null, %.invoke.i ], [ %.sroa.8.0.copyload15.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !122
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.thread.i, %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !122
  unreachable

.thread.i:                                        ; preds = %bb.g, %.thread28.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.h, !noalias !122

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !122
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RNvNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB7_13GetSetDefType21create_py_get_set_def6setter(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 9 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !135
  store ptr @2, ptr %i.e, align 8, !noalias !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !135
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread42.i, !noalias !135

.thread42.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %0) ]
  invoke void %2(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %._crit_edge.i unwind label %bb.f, !noalias !135, !inline_history !126

._crit_edge.i:                                    ; preds = %bb.c
  %.sroa.8.0..sroa_idx15.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16.pre.i = load ptr, ptr %.sroa.8.0..sroa_idx15.phi.trans.insert.i, align 8, !noalias !135
  %.sroa.11.0..sroa_idx19.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.0.copyload20.pre.i = load ptr, ptr %.sroa.11.0..sroa_idx19.phi.trans.insert.i, align 8, !noalias !135
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !136
  %i.j = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #21, !noalias !136 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
          to label %.noexc12.i unwind label %bb.f, !noalias !135

.noexc12.i:                                       ; preds = %bb.e
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.d
  store ptr @5, ptr %i.j, align 8, !noalias !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 23, ptr %i.l, align 8, !noalias !137
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !135
  store i64 1, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !135
  %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !135
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @4, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !135
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 3, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !135
  store i32 1, ptr %i.a, align 8, !noalias !135
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread50.i unwind label %bb.g, !noalias !135 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !135
  unreachable

.thread50.i:                                      ; preds = %bb.f
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %i.t, align 8, !noalias !135
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.s, ptr %i.u, align 8, !noalias !135
  store i32 2, ptr %i.c, align 8, !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !135
  br label %bb.i

bb.h:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, %._crit_edge.i
  %.sroa.11.0.copyload20.i = phi ptr [ %.sroa.11.0.copyload20.pre.i, %._crit_edge.i ], [ null, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.0.copyload16.i = phi ptr [ %.sroa.8.0.copyload16.pre.i, %._crit_edge.i ], [ null, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload13.i = load ptr, ptr %i.a, align 8, !noalias !135 ; 2 uses
  %.sroa.12.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx23.i, i64 32, i1 false), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  store ptr %.sroa.0.0.copyload13.i, ptr %i.c, align 8, !noalias !135
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload16.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !135
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.11.0.copyload20.i, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !135
  %i.v = ptrtoint ptr %.sroa.0.0.copyload13.i to i64 ; 2 uses
  %i.w = trunc i64 %i.v to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !135
  switch i32 %i.w, label %.invoke.i [
    i32 2, label %bb.i
    i32 0, label %bb.j
  ], !prof !13

bb.i:                                             ; preds = %bb.h, %.thread50.i
  %.sroa.0.0.3254.i = phi ptr [ %i.r, %.thread50.i ], [ %.sroa.8.0.copyload16.i, %bb.h ]
  %.sroa.8.8.3353.i = phi ptr [ %i.s, %.thread50.i ], [ %.sroa.11.0.copyload20.i, %bb.h ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.3254.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.3353.i)
          to label %.invoke.i unwind label %bb.k, !noalias !135

.invoke.i:                                        ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %i.b, %bb.i ], [ %.sroa.429.0..sroa_idx.i, %bb.h ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.k, !noalias !135

bb.j:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.v, 32
  %i.z = trunc nuw i64 %i.y to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i

bb.k:                                             ; preds = %.invoke.i, %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.l, !noalias !135

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %bb.j, %.invoke.i
  %.sroa.0.0.i.i = phi i32 [ %i.z, %bb.j ], [ -1, %.invoke.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !135
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %.thread.i, %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !135
  unreachable

.thread.i:                                        ; preds = %bb.k, %.thread42.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.l, !noalias !135

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !135
  ret i32 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMs_NtNtNtCsdc6yCHiM2ZJ_4pyo35types7weakref5proxyNtB6_14PyWeakrefProxy8new_with5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = tail call noundef ptr @PyWeakref_NewProxy(ptr noundef nonnull %i.d, ptr noundef nonnull %2) #21 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c)
  %i.h = load i64, ptr %i.c, align 8, !range !6, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !10

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sink = phi i64 [ 1, %bb.g ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.8.copyload = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload, ptr %i.k, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object18create_type_object5inner(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i1 noundef zeroext %8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %10, i64 noundef range(i64 0, 3) %11, i64 %12, i64 noundef range(i64 0, 3) %13, i64 %14, i1 noundef zeroext %15, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %17, i64 noundef %18, ptr noalias nofree noundef readonly captures(address, read_provenance) %19, i64 %20, i64 noundef %21) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  %i.r = alloca [1 x i8], align 1                 ; 3 uses
  %i.s = alloca [56 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [56 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [56 x i8], align 8               ; 7 uses
  %i.ac = alloca [56 x i8], align 8               ; 7 uses
  %i.ad = alloca [56 x i8], align 8               ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [200 x i8], align 8              ; 22 uses
  %i.al = alloca [200 x i8], align 8              ; 13 uses
  %i.am = alloca [200 x i8], align 8              ; 22 uses
  %i.an = alloca [200 x i8], align 8              ; 53 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 0, ptr %i.ah, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %i.at, align 8
  %i.au = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !range !8, !noalias !258, !noundef !4
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.d, label %_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsdc6yCHiM2ZJ_4pyo3.exit.i.i, !prof !10

end_hunk_0
begin_hunk_1_@_RNvNvNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object18create_type_object5inner:bb.a

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit.i.i: ; preds = %bb.ak, %.noexc15.i
  %.pn.i.i.i = phi ptr [ %i.hr, %.noexc15.i ], [ %i.hs, %bb.ak ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40 ; 2 uses
  %i.ht = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !283, !noundef !4
  %.not9.i.i = icmp eq ptr %i.ht, null
  br i1 %.not9.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.am, %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !278, !noalias !274, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -24
  store ptr %i.hv, ptr %i.hw, align 8, !noalias !283
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i

bb.am:                                            ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit.i.i
  %i.hx = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -32
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !278, !noalias !274, !noundef !4
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !278, !noalias !274
  store ptr %i.hz, ptr %.sroa.0.0.i.i.i, align 8, !noalias !283
  store i64 %i.ib, ptr %i.hx, align 8, !noalias !283
  br label %bb.al

bb.an:                                            ; preds = %.noexc11.i
  %.sroa.452.0.copyload.i.i = load i64, ptr %i.ec, align 8, !noalias !281
  %.sroa.553.0.copyload.i.i = load ptr, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !281
  %.sroa.654.0.copyload.i.i = load i64, ptr %.sroa.654.0..sroa_idx.i.i, align 8, !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !285
  store ptr %i.ha, ptr %i.ac, align 8, !noalias !285
  store i64 %.sroa.452.0.copyload.i.i, ptr %i.ed, align 8, !noalias !285
  store ptr null, ptr %i.ee, align 8, !noalias !285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !noalias !285
  %i.ic = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14insert_no_growB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.553.0.copyload.i.i, i64 noundef %.sroa.654.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ac)
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !274

.noexc16.i:                                       ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !285
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i

bb.ao:                                            ; preds = %.noexc11.i
  %i.id = load ptr, ptr %i.ec, align 8, !noalias !281, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !281
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i: ; preds = %bb.ao, %.noexc16.i
  %.pn.i16.i.i = phi ptr [ %i.ic, %.noexc16.i ], [ %i.id, %bb.ao ] ; 3 uses
  %.sroa.0.0.i17.i.i = getelementptr inbounds i8, ptr %.pn.i16.i.i, i64 -40 ; 2 uses
  %i.ie = load ptr, ptr %.sroa.0.0.i17.i.i, align 8, !noalias !283, !noundef !4
  %.not7.i.i = icmp eq ptr %i.ie, null
  br i1 %.not7.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !278, !noalias !274, !nonnull !4, !noundef !4
  %i.ih = getelementptr inbounds i8, ptr %.pn.i16.i.i, i64 -16
  store ptr %i.ig, ptr %i.ih, align 8, !noalias !283
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i

bb.aq:                                            ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i
  %i.ii = getelementptr inbounds i8, ptr %.pn.i16.i.i, i64 -32
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !278, !noalias !274, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !278, !noalias !274
  store ptr %i.ik, ptr %.sroa.0.0.i17.i.i, align 8, !noalias !283
  store i64 %i.im, ptr %i.ii, align 8, !noalias !283
  br label %bb.ap

bb.ar:                                            ; preds = %.noexc12.i
  %.sroa.444.0.copyload.i.i = load i64, ptr %i.dy, align 8, !noalias !281
  %.sroa.545.0.copyload.i.i = load ptr, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !281
  %.sroa.646.0.copyload.i.i = load i64, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !286
  store ptr %i.hf, ptr %i.ab, align 8, !noalias !286
  store i64 %.sroa.444.0.copyload.i.i, ptr %i.dz, align 8, !noalias !286
  store ptr null, ptr %i.ea, align 8, !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !286
  %i.in = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14insert_no_growB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.545.0.copyload.i.i, i64 noundef %.sroa.646.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ab)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !274

.noexc17.i:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !286
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i

bb.as:                                            ; preds = %.noexc12.i
  %i.io = load ptr, ptr %i.dy, align 8, !noalias !281, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !281
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i: ; preds = %bb.as, %.noexc17.i
  %.pn.i25.i.i = phi ptr [ %i.in, %.noexc17.i ], [ %i.io, %bb.as ] ; 3 uses
  %.sroa.0.0.i26.i.i = getelementptr inbounds i8, ptr %.pn.i25.i.i, i64 -40 ; 2 uses
  %i.ip = load ptr, ptr %.sroa.0.0.i26.i.i, align 8, !noalias !283, !noundef !4
  %.not5.i.i = icmp eq ptr %i.ip, null
  br i1 %.not5.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.au, %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !278, !noalias !274, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds i8, ptr %.pn.i25.i.i, i64 -8
  store ptr %i.ir, ptr %i.is, align 8, !noalias !283
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i

bb.au:                                            ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i
  %i.it = getelementptr inbounds i8, ptr %.pn.i25.i.i, i64 -32
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !278, !noalias !274, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !278, !noalias !274
  store ptr %i.iv, ptr %.sroa.0.0.i26.i.i, align 8, !noalias !283
  store i64 %i.ix, ptr %i.it, align 8, !noalias !283
  br label %bb.at

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i: ; preds = %bb.at, %bb.ap, %bb.al, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE8push_mutCsdc6yCHiM2ZJ_4pyo3.exit.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8push_mutCsdc6yCHiM2ZJ_4pyo3.exit.i.i, %.lr.ph22.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 56 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fy
  br i1 %i.iz, label %.loopexit.i.backedge, label %.lr.ph22.i

bb.av:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !274
  unreachable

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items.exit: ; preds = %.loopexit.i, %._crit_edge.jt2.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.an, ptr noundef nonnull align 8 dereferenceable(200) %i.am, i64 200, i1 false), !alias.scope !287
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %17, ptr %i.aa, align 8, !noalias !290
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %18, ptr %i.jb, align 8, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !292
  %i.jc = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i64 24, i1 false)
  store i64 0, ptr %i.jc, align 8, !alias.scope !293
  %.sroa.4.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i7, align 8, !alias.scope !293
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !293
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !295, !noalias !292, !noundef !4 ; 5 uses
  %i.jg = icmp ult i64 %i.jf, 288230376151711744
  call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp eq i64 %i.jf, 0
  br i1 %i.jh, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items.exit
  %i.ji = load i64, ptr %i.q, align 8, !range !7, !alias.scope !296, !noalias !292, !noundef !4
  %i.jj = icmp eq i64 %i.jf, %i.ji
  br i1 %i.jj, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #25
          to label %bb.bb unwind label %bb.bd, !noalias !297

bb.ay:                                            ; preds = %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i unwind label %bb.az, !noalias !297

bb.az:                                            ; preds = %bb.ay
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body97.i unwind label %bb.ba, !noalias !297

bb.ba:                                            ; preds = %bb.az
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !297
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i unwind label %bb.cm, !noalias !298

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.jm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !296, !noalias !292, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %i.jf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i8 0, i64 32, i1 false), !noalias !297
  %i.jp = add nuw nsw i64 %i.jf, 1
  store i64 %i.jp, ptr %i.je, align 8, !alias.scope !296, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !300
  %i.jq = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE16into_boxed_sliceCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc100.i unwind label %bb.cm, !noalias !298

.noexc100.i:                                      ; preds = %bb.bb
  %i.jr = extractvalue { ptr, i64 } %i.jq, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !299
  %i.js = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !301, !noundef !4 ; 3 uses
  %i.jv = load i64, ptr %i.js, align 8, !range !7, !alias.scope !301, !noundef !4
  %i.jw = icmp eq i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.bc, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i

bb.bc:                                            ; preds = %.noexc100.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.js) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i unwind label %bb.cm, !noalias !298

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i: ; preds = %bb.bc, %.noexc100.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !301, !nonnull !4, !noundef !4
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.ju ; 2 uses
  store i32 64, ptr %i.jz, align 8, !noalias !302
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.jr, ptr %i.ka, align 8, !noalias !302
  %i.kb = add i64 %i.ju, 1
  store i64 %i.kb, ptr %i.jt, align 8, !alias.scope !301
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i

bb.bd:                                            ; preds = %bb.ax
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #23
          to label %.body97.i unwind label %bb.be, !noalias !297

bb.be:                                            ; preds = %bb.bd
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !297
  unreachable

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i: ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !292
  %i.kd = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i64 24, i1 false), !noalias !303
  store i64 0, ptr %i.kd, align 8, !alias.scope !293
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !293
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !293
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !305, !noalias !292, !noundef !4 ; 5 uses
  %i.kg = icmp ult i64 %i.kf, 230584300921369396
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp eq i64 %i.kf, 0
  br i1 %i.kh, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i
  %i.ki = load i64, ptr %i.p, align 8, !range !7, !alias.scope !306, !noalias !292, !noundef !4
  %i.kj = icmp eq i64 %i.kf, %i.ki
  br i1 %i.kj, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %bb.bk unwind label %bb.bm, !noalias !307

bb.bh:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i unwind label %bb.bi, !noalias !307

bb.bi:                                            ; preds = %bb.bh
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body97.i unwind label %bb.bj, !noalias !307

bb.bj:                                            ; preds = %bb.bi
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !307
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i: ; preds = %bb.bh
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i unwind label %bb.cm, !noalias !298

bb.bk:                                            ; preds = %bb.bg, %bb.bf
  %i.km = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !306, !noalias !292, !nonnull !4, !noundef !4
  %i.ko = getelementptr inbounds nuw [40 x i8], ptr %i.kn, i64 %i.kf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ko, i8 0, i64 40, i1 false), !noalias !307
  %i.kp = add nuw nsw i64 %i.kf, 1
  store i64 %i.kp, ptr %i.ke, align 8, !alias.scope !306, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !309
  %i.kq = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE16into_boxed_sliceCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc103.i unwind label %bb.cm, !noalias !298

.noexc103.i:                                      ; preds = %bb.bk
  %i.kr = extractvalue { ptr, i64 } %i.kq, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kr) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !308
  %i.ks = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !alias.scope !310, !noundef !4 ; 3 uses
  %i.kv = load i64, ptr %i.ks, align 8, !range !7, !alias.scope !310, !noundef !4
  %i.kw = icmp eq i64 %i.ku, %i.kv
  br i1 %i.kw, label %bb.bl, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i

bb.bl:                                            ; preds = %.noexc103.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ks) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i unwind label %bb.cm, !noalias !298

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i: ; preds = %bb.bl, %.noexc103.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !310, !nonnull !4, !noundef !4
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.ku ; 2 uses
  store i32 72, ptr %i.kz, align 8, !noalias !302
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.kr, ptr %i.la, align 8, !noalias !302
  %i.lb = add i64 %i.ku, 1
  store i64 %i.lb, ptr %i.kt, align 8, !alias.scope !310
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i

bb.bm:                                            ; preds = %bb.bg
  %lpad.thr_comm.split-lp.i15.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #23
          to label %.body97.i unwind label %bb.bn, !noalias !307

bb.bn:                                            ; preds = %bb.bm
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !307
  unreachable

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i: ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !292
  %i.ld = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !293, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !292
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.le, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc105.i unwind label %bb.cm, !noalias !298

.noexc105.i:                                      ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i
  %i.lf = load i64, ptr %i.k, align 8, !range !6, !noalias !292, !noundef !4
  %i.lg = trunc nuw i64 %i.lf to i1
  br i1 %i.lg, label %bb.bo, label %bb.bp, !prof !9

bb.bo:                                            ; preds = %.noexc105.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !range !11, !noalias !292, !noundef !4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !noalias !292
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.li, i64 %i.lk) #24
          to label %.noexc106.i unwind label %bb.cm, !noalias !298

.noexc106.i:                                      ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %.noexc105.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.lm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !range !7, !noalias !292, !noundef !4 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !292, !nonnull !4, !noundef !4
  %i.lq = icmp ule i64 %i.le, %i.ln
  call void @llvm.assume(i1 %i.lq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !292
  store i64 %i.ln, ptr %i.o, align 8, !noalias !292
  %i.lr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.lp, ptr %i.lr, align 8, !noalias !292
  %i.ls = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ls, align 8, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !292
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1y_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ll)
          to label %bb.bq unwind label %.body.thread33.i.i, !noalias !302

.body.thread.i.i:                                 ; preds = %bb.ck, %.body.thread33.i.i, %bb.cc, %bb.by
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.ck ], [ %lpad.thr_comm.i.i, %.body.thread33.i.i ], [ %i.mf, %bb.by ], [ %lpad.thr_comm.split-lp.i19.i.i, %bb.cc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #23
          to label %.body97.i unwind label %bb.cl, !noalias !302

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !292
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.o, ptr %i.lt, align 8, !noalias !292
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterRNtNtNtB2w_3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENCNvMB4u_NtB4u_13PyTypeBuilder31finalize_methods_and_properties0EE9from_iterB4y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.br unwind label %.body.thread33.i.i, !noalias !302

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !292
  %i.lu = load i64, ptr %i.an, align 8, !range !311, !alias.scope !293, !noundef !4
  %.not12.i.i = icmp eq i64 %i.lu, 2
  br i1 %.not12.i.i, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lv = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !312, !noalias !292, !noundef !4 ; 3 uses
  %i.lx = load i64, ptr %i.n, align 8, !range !7, !alias.scope !312, !noalias !292, !noundef !4
  %i.ly = icmp eq i64 %i.lw, %i.lx
  br i1 %i.ly, label %bb.bt, label %bb.ce

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
          to label %bb.ce unwind label %bb.ck, !noalias !302

bb.bu:                                            ; preds = %bb.ce, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !292
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !314, !noalias !292, !noundef !4 ; 5 uses
  %i.mb = icmp ult i64 %i.ma, 230584300921369396
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp eq i64 %i.ma, 0
  br i1 %i.mc, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.md = load i64, ptr %i.l, align 8, !range !7, !alias.scope !315, !noalias !292, !noundef !4
  %i.me = icmp eq i64 %i.ma, %i.md
  br i1 %i.me, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #25
          to label %bb.ca unwind label %bb.cc, !noalias !316

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i unwind label %bb.by, !noalias !316

bb.by:                                            ; preds = %bb.bx
  %i.mf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread.i.i unwind label %bb.bz, !noalias !316

bb.bz:                                            ; preds = %bb.by
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !316
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i: ; preds = %bb.bx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i unwind label %.body.thread33.i.i, !noalias !302

bb.ca:                                            ; preds = %bb.bw, %bb.bv
  %i.mh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !alias.scope !315, !noalias !292, !nonnull !4, !noundef !4
  %i.mj = getelementptr inbounds nuw [40 x i8], ptr %i.mi, i64 %i.ma
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mj, i8 0, i64 40, i1 false), !noalias !316
  %i.mk = add nuw nsw i64 %i.ma, 1
  store i64 %i.mk, ptr %i.lz, align 8, !alias.scope !315, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !318
  %i.ml = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE16into_boxed_sliceCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc23.i.i unwind label %.body.thread33.i.i, !noalias !302

.noexc23.i.i:                                     ; preds = %bb.ca
  %i.mm = extractvalue { ptr, i64 } %i.ml, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mm) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !317
  %i.mn = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 8, !alias.scope !319, !noundef !4 ; 3 uses
  %i.mq = load i64, ptr %i.mn, align 8, !range !7, !alias.scope !319, !noundef !4
  %i.mr = icmp eq i64 %i.mp, %i.mq
  br i1 %i.mr, label %bb.cb, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i

bb.cb:                                            ; preds = %.noexc23.i.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mn) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i unwind label %.body.thread33.i.i, !noalias !302

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i: ; preds = %bb.cb, %.noexc23.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !alias.scope !319, !nonnull !4, !noundef !4
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.mp ; 2 uses
  store i32 73, ptr %i.mu, align 8, !noalias !302
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store ptr %i.mm, ptr %i.mv, align 8, !noalias !302
  %i.mw = add i64 %i.mp, 1
  store i64 %i.mw, ptr %i.mo, align 8, !alias.scope !319
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i

bb.cc:                                            ; preds = %bb.bw
  %lpad.thr_comm.split-lp.i19.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #23
          to label %.body.thread.i.i unwind label %bb.cd, !noalias !316

bb.cd:                                            ; preds = %bb.cc
  %i.mx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !316
  unreachable

.body.thread33.i.i:                               ; preds = %bb.cj, %bb.ch, %bb.cb, %bb.ca, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i, %bb.bq, %bb.bp
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.ce:                                            ; preds = %bb.bt, %bb.bs
  %i.my = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !alias.scope !312, !noalias !292, !nonnull !4, !noundef !4
  %i.na = getelementptr inbounds nuw [40 x i8], ptr %i.mz, i64 %i.lw ; 4 uses
  store ptr @12, ptr %i.na, align 8, !noalias !302
  %.sroa.4.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr @PyObject_GenericGetDict, ptr %.sroa.4.0..sroa_idx28.i.i, align 8, !noalias !302
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store ptr @PyObject_GenericSetDict, ptr %.sroa.5.0..sroa_idx29.i.i, align 8, !noalias !302
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nb = add i64 %i.lw, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !302
  store i64 %i.nb, ptr %i.lv, align 8, !alias.scope !312, !noalias !292
  br label %bb.bu

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i: ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !292
  %i.nc = getelementptr inbounds nuw i8, ptr %i.an, i64 184 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 8, !range !8, !alias.scope !293, !noundef !4 ; 2 uses
  %i.ne = trunc nuw i8 %i.nd to i1
  %.not.i.i8 = xor i1 %i.ne, true
  %i.nf = getelementptr inbounds nuw i8, ptr %i.an, i64 189
  %i.ng = load i8, ptr %i.nf, align 1, !range !8, !alias.scope !293
  %i.nh = trunc nuw i8 %i.ng to i1
  %or.cond.i.i = select i1 %.not.i.i8, i1 %i.nh, i1 false
  br i1 %or.cond.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i
  %i.ni = phi i8 [ %.pre.i.i, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i ], [ %i.nd, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i ]
  %i.nj = trunc nuw i8 %i.ni to i1
  %.not3.i.i = xor i1 %i.nj, true
  %i.nk = getelementptr inbounds nuw i8, ptr %i.an, i64 190
  %i.nl = load i8, ptr %i.nk, align 2, !range !8, !alias.scope !293
  %i.nm = trunc nuw i8 %i.nl to i1
  %or.cond6.i.i = select i1 %.not3.i.i, i1 %i.nm, i1 false
  br i1 %or.cond6.i.i, label %bb.ci, label %._crit_edge.i9

._crit_edge.i9:                                   ; preds = %bb.cf
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !320
  br label %bb.cn

bb.cg:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !alias.scope !321, !noundef !4 ; 3 uses
  %i.nq = load i64, ptr %i.nn, align 8, !range !7, !alias.scope !321, !noundef !4
  %i.nr = icmp eq i64 %i.np, %i.nq
  br i1 %i.nr, label %bb.ch, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nn) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i unwind label %.body.thread33.i.i, !noalias !302

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i: ; preds = %bb.ch, %bb.cg
  %i.ns = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !alias.scope !321, !nonnull !4, !noundef !4
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %i.np ; 2 uses
  store i32 44, ptr %i.nu, align 8, !noalias !302
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass30get_sequence_item_from_mapping, ptr %i.nv, align 8, !noalias !302
  %i.nw = add i64 %i.np, 1
  store i64 %i.nw, ptr %i.no, align 8, !alias.scope !321
  %.pre.i.i = load i8, ptr %i.nc, align 8, !range !8, !alias.scope !293
  br label %bb.cf

bb.ci:                                            ; preds = %bb.cf
  %i.nx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !alias.scope !322, !noundef !4 ; 3 uses
  %i.oa = load i64, ptr %i.nx, align 8, !range !7, !alias.scope !322, !noundef !4
  %i.ob = icmp eq i64 %i.nz, %i.oa
  br i1 %i.ob, label %bb.cj, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i unwind label %.body.thread33.i.i, !noalias !302

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i: ; preds = %bb.cj, %bb.ci
  %i.oc = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !322, !nonnull !4, !noundef !4
  %i.oe = getelementptr inbounds nuw [16 x i8], ptr %i.od, i64 %i.nz ; 2 uses
  store i32 39, ptr %i.oe, align 8, !noalias !302
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass33assign_sequence_item_from_mapping, ptr %i.of, align 8, !noalias !302
  %i.og = add i64 %i.nz, 1                        ; 2 uses
  store i64 %i.og, ptr %i.ny, align 8, !alias.scope !322
  br label %bb.cn

bb.ck:                                            ; preds = %bb.bt
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #23
          to label %.body.thread.i.i unwind label %bb.cl, !noalias !302

bb.cl:                                            ; preds = %bb.ck, %.body.thread.i.i
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !302
  unreachable

.body97.i:                                        ; preds = %.body.i, %bb.di, %bb.cm, %.body.thread.i.i, %bb.bm, %bb.bi, %bb.bd, %bb.az
  %.pn88.i = phi { ptr, i32 } [ %i.oi, %bb.cm ], [ %.pn.i, %.body.i ], [ %.pn.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i15.i.i, %bb.bm ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.bd ], [ %i.jk, %bb.az ], [ %i.kk, %bb.bi ], [ %i.rg, %bb.di ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13PyTypeBuilderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.an) #23
          to label %common.resume unwind label %bb.er, !noalias !288

bb.cm:                                            ; preds = %bb.dj, %bb.bo, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i, %bb.bl, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i, %bb.bc, %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body97.i

bb.cn:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i, %._crit_edge.i9
  %i.oj = phi i64 [ %.pre.i, %._crit_edge.i9 ], [ %i.og, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !292
  %i.ok = getelementptr inbounds nuw i8, ptr %i.an, i64 168 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !alias.scope !289, !noundef !4
  %i.om = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 12 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 7 uses
  %i.oo = load i64, ptr %i.om, align 8, !range !7, !alias.scope !320, !noundef !4
  %i.op = icmp eq i64 %i.oj, %i.oo
  br i1 %i.op, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.om) #25
          to label %bb.cq unwind label %bb.cp, !noalias !298

bb.cp:                                            ; preds = %bb.ec, %.noexc125.i, %bb.eb, %bb.ds, %bb.dr, %bb.dn, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.co
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.or = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 8 uses
  %i.os = load ptr, ptr %i.or, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.os, i64 %i.oj ; 2 uses
  store i32 48, ptr %i.ot, align 8, !noalias !298
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr %i.ol, ptr %i.ou, align 8, !noalias !298
  %i.ov = add i64 %i.oj, 1                        ; 5 uses
  store i64 %i.ov, ptr %i.on, align 8, !alias.scope !320
  %i.ow = getelementptr inbounds nuw i8, ptr %i.an, i64 187
  %i.ox = load i8, ptr %i.ow, align 1, !range !8, !alias.scope !289, !noundef !4
  %i.oy = trunc nuw i8 %i.ox to i1
  br i1 %i.oy, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oz = getelementptr inbounds nuw i8, ptr %i.an, i64 176 ; 2 uses
  %i.pa = load i64, ptr %i.oz, align 8, !alias.scope !289, !noundef !4
  %i.pb = or i64 %i.pa, 128
  store i64 %i.pb, ptr %i.oz, align 8, !alias.scope !289
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.pc = load i64, ptr %i.an, align 8, !range !311, !alias.scope !289, !noundef !4
  %.not85.i = icmp eq i64 %i.pc, 2
  br i1 %.not85.i, label %bb.ct, label %bb.cv

end_hunk_1
