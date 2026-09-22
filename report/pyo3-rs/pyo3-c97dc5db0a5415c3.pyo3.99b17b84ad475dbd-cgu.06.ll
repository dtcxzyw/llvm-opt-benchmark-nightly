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
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !84, !noalias !83, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !84, !noalias !83, !noundef !4 ; 2 uses
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
  store i32 %i.g, ptr %i.d, align 4, !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !97
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !96, !noalias !98, !nonnull !4, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
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
  %2 = extractvalue { ptr, ptr } %i.k, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
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
  %.pre.i = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !99, !noalias !97
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.thread35.i
  %i.n = phi ptr [ %2, %.thread35.i ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.0.2237.i = phi ptr [ %i.m, %.thread35.i ], [ %.sroa.8.0.copyload15.i, %._crit_edge.i ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.2237.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.invoke.i unwind label %bb.g, !noalias !97

.invoke.i:                                        ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.b, %bb.f ], [ %.sroa.420.0..sroa_idx.i, %bb.e ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.g, !noalias !97

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.p = landingpad { ptr, i32 }
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
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !97
  unreachable

.thread.i:                                        ; preds = %bb.g, %.thread28.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.h, !noalias !97

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.r = landingpad { ptr, i32 }
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !113
  store ptr @2, ptr %i.e, align 8, !noalias !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !113
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread44.i, !noalias !113

.thread44.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !113
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !114, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !114, !noundef !4 ; 2 uses
  %.not107.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not107.i.i.i.i, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %bb.l unwind label %bb.j, !noalias !113, !inline_history !108

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !115
  %i.n = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #21, !noalias !115 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.invoke.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !9

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.f
  store ptr @3, ptr %i.n, align 8, !noalias !115
  br label %bb.g

bb.g:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  %.sink116.i.i.i.i = phi ptr [ %i.r, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i ], [ %i.n, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ] ; 2 uses
  %.sink114.i.i.i.i = phi i64 [ 23, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i ], [ 22, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sink116.i.i.i.i, i64 8
  store i64 %.sink114.i.i.i.i, ptr %i.p, align 8, !noalias !114
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !113
  store i64 1, ptr %.sroa.5102.0..sroa_idx.i.i.i.i, align 8, !noalias !113
  %.sroa.6103.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sink116.i.i.i.i, ptr %.sroa.6103.0..sroa_idx.i.i.i.i, align 8, !noalias !113
  %.sroa.7104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @4, ptr %.sroa.7104.0..sroa_idx.i.i.i.i, align 8, !noalias !113
  %.sroa.8105.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 3, ptr %.sroa.8105.0..sroa_idx.i.i.i.i, align 8, !noalias !113
  store i32 1, ptr %i.a, align 8, !noalias !113
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  invoke void %i.m(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0)
          to label %bb.l unwind label %bb.j, !noalias !113, !inline_history !108

bb.i:                                             ; preds = %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !116
  %i.r = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #21, !noalias !116 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.invoke.i, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i, !prof !9

.invoke.i:                                        ; preds = %bb.i, %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
          to label %.cont.i unwind label %bb.j, !noalias !113

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit108.i.i.i.i: ; preds = %bb.i
  store ptr @5, ptr %i.r, align 8, !noalias !116
  br label %bb.g

bb.j:                                             ; preds = %.invoke.i, %bb.h, %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.u)
          to label %.thread52.i unwind label %bb.k, !noalias !113 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !113
  unreachable

.thread52.i:                                      ; preds = %bb.j
  %i.x = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %3 = extractvalue { ptr, ptr } %i.v, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0.copyload15.i = load ptr, ptr %i.a, align 8, !noalias !113 ; 2 uses
  %.sroa.8.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload18.i = load ptr, ptr %.sroa.8.0..sroa_idx17.i, align 8, !noalias !113 ; 2 uses
  %.sroa.11.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.0.copyload22.i = load ptr, ptr %.sroa.11.0..sroa_idx21.i, align 8, !noalias !113 ; 2 uses
  %.sroa.12.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx25.i, i64 32, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  store ptr %.sroa.0.0.copyload15.i, ptr %i.c, align 8, !noalias !113
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload18.i, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !113
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.11.0.copyload22.i, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !113
  %i.y = ptrtoint ptr %.sroa.0.0.copyload15.i to i64 ; 2 uses
  %i.z = trunc i64 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !113
  switch i32 %i.z, label %.invoke61.i [
    i32 2, label %bb.m
    i32 0, label %bb.n
  ], !prof !13

bb.m:                                             ; preds = %bb.l, %.thread52.i
  %.sroa.0.0.3456.i = phi ptr [ %i.x, %.thread52.i ], [ %.sroa.8.0.copyload18.i, %bb.l ]
  %.sroa.8.8.3555.i = phi ptr [ %3, %.thread52.i ], [ %.sroa.11.0.copyload22.i, %bb.l ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.3456.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.3555.i)
          to label %.invoke61.i unwind label %bb.o, !noalias !113

.invoke61.i:                                      ; preds = %bb.m, %bb.l
  %i.aa = phi ptr [ %i.b, %bb.m ], [ %.sroa.431.0..sroa_idx.i, %bb.l ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.o, !noalias !113

bb.n:                                             ; preds = %bb.l
  %i.ab = lshr i64 %i.y, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i

bb.o:                                             ; preds = %.invoke61.i, %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.p, !noalias !113

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %bb.n, %.invoke61.i
  %.sroa.0.0.i.i = phi i32 [ %i.ac, %bb.n ], [ -1, %.invoke61.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !113
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %.thread.i, %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !113
  unreachable

.thread.i:                                        ; preds = %bb.o, %.thread44.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.p, !noalias !113

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.q
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !113
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !123
  store ptr @2, ptr %i.e, align 8, !noalias !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !123
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread28.i, !noalias !123

.thread28.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  invoke void %1(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c, !noalias !123, !inline_history !120

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %.thread35.i unwind label %bb.d, !noalias !123 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !123
  unreachable

.thread35.i:                                      ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %2 = extractvalue { ptr, ptr } %i.k, 1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13.i = load ptr, ptr %i.a, align 8, !noalias !123 ; 2 uses
  %.sroa.8.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload15.i = load ptr, ptr %.sroa.8.0..sroa_idx14.i, align 8, !noalias !123 ; 3 uses
  %.sroa.12.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.521.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx17.i, i64 40, i1 false), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  store ptr %.sroa.0.0.copyload13.i, ptr %i.c, align 8, !noalias !123
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload15.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !123
  %.pr.cast.i = ptrtoint ptr %.sroa.0.0.copyload13.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  switch i64 %.pr.cast.i, label %.invoke.i [
    i64 2, label %._crit_edge.i
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  ], !prof !12

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !alias.scope !124, !noalias !123
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.thread35.i
  %i.n = phi ptr [ %2, %.thread35.i ], [ %.pre.i, %._crit_edge.i ]
  %.sroa.0.0.2237.i = phi ptr [ %i.m, %.thread35.i ], [ %.sroa.8.0.copyload15.i, %._crit_edge.i ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.2237.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.invoke.i unwind label %bb.g, !noalias !123

.invoke.i:                                        ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.b, %bb.f ], [ %.sroa.420.0..sroa_idx.i, %bb.e ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.g, !noalias !123

bb.g:                                             ; preds = %.invoke.i, %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.h, !noalias !123

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %.invoke.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ null, %.invoke.i ], [ %.sroa.8.0.copyload15.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !123
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.thread.i, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !123
  unreachable

.thread.i:                                        ; preds = %bb.g, %.thread28.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.h, !noalias !123

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !123
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !136
  store ptr @2, ptr %i.e, align 8, !noalias !136
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136
  %i.g = invoke noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread42.i, !noalias !136

.thread42.i:                                      ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !136
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  invoke void %2(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %._crit_edge.i unwind label %bb.f, !noalias !136, !inline_history !127

._crit_edge.i:                                    ; preds = %bb.c
  %.sroa.8.0..sroa_idx15.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16.pre.i = load ptr, ptr %.sroa.8.0..sroa_idx15.phi.trans.insert.i, align 8, !noalias !136
  %.sroa.11.0..sroa_idx19.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.0.copyload20.pre.i = load ptr, ptr %.sroa.11.0..sroa_idx19.phi.trans.insert.i, align 8, !noalias !136
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !137
  %i.j = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 16, i64 noundef 8) #21, !noalias !137 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
          to label %.noexc12.i unwind label %bb.f, !noalias !136

.noexc12.i:                                       ; preds = %bb.e
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.d
  store ptr @5, ptr %i.j, align 8, !noalias !137
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 23, ptr %i.l, align 8, !noalias !138
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !136
  store i64 1, ptr %.sroa.05.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !136
  %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %.sroa.05.sroa.5.sroa.4.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !136
  %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @4, ptr %.sroa.05.sroa.5.sroa.5.0..sroa.05.sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !136
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 3, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !136
  store i32 1, ptr %i.a, align 8, !noalias !136
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread50.i unwind label %bb.g, !noalias !136 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22, !noalias !136
  unreachable

.thread50.i:                                      ; preds = %bb.f
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 3 uses
  %3 = extractvalue { ptr, ptr } %i.p, 1          ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.r, ptr %i.s, align 8, !noalias !136
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %i.t, align 8, !noalias !136
  store i32 2, ptr %i.c, align 8, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  br label %bb.i

bb.h:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i, %._crit_edge.i
  %.sroa.11.0.copyload20.i = phi ptr [ %.sroa.11.0.copyload20.pre.i, %._crit_edge.i ], [ null, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ] ; 2 uses
  %.sroa.8.0.copyload16.i = phi ptr [ %.sroa.8.0.copyload16.pre.i, %._crit_edge.i ], [ null, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload13.i = load ptr, ptr %i.a, align 8, !noalias !136 ; 2 uses
  %.sroa.12.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx23.i, i64 32, i1 false), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !136
  store ptr %.sroa.0.0.copyload13.i, ptr %i.c, align 8, !noalias !136
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload16.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !136
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.11.0.copyload20.i, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !136
  %i.u = ptrtoint ptr %.sroa.0.0.copyload13.i to i64 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  switch i32 %i.v, label %.invoke.i [
    i32 2, label %bb.i
    i32 0, label %bb.j
  ], !prof !13

bb.i:                                             ; preds = %bb.h, %.thread50.i
  %.sroa.0.0.3254.i = phi ptr [ %i.r, %.thread50.i ], [ %.sroa.8.0.copyload16.i, %bb.h ]
  %.sroa.8.8.3353.i = phi ptr [ %3, %.thread50.i ], [ %.sroa.11.0.copyload20.i, %bb.h ]
  invoke void @_RNvMNtCsdc6yCHiM2ZJ_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.sroa.0.0.3254.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.3353.i)
          to label %.invoke.i unwind label %bb.k, !noalias !136

.invoke.i:                                        ; preds = %bb.i, %bb.h
  %i.w = phi ptr [ %i.b, %bb.i ], [ %.sroa.429.0..sroa_idx.i, %bb.h ]
  invoke void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i unwind label %bb.k, !noalias !136

bb.j:                                             ; preds = %bb.h
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i

bb.k:                                             ; preds = %.invoke.i, %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread.i unwind label %bb.l, !noalias !136

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i: ; preds = %bb.j, %.invoke.i
  %.sroa.0.0.i.i = phi i32 [ %i.y, %bb.j ], [ -1, %.invoke.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %.thread.i, %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !136
  unreachable

.thread.i:                                        ; preds = %bb.k, %.thread42.i
  invoke void @_RNvXs_NtNtCsdc6yCHiM2ZJ_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.l, !noalias !136

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.m
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state11AttachGuardEBH_.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !136
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
  %i.aw = load i8, ptr %i.av, align 8, !range !8, !noalias !267, !noundef !4
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.d, label %_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsdc6yCHiM2ZJ_4pyo3.exit.i.i, !prof !10
end_hunk_0
begin_hunk_1_@_RNvNvNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object18create_type_object5inner:bb.a

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit.i.i: ; preds = %bb.al, %.noexc15.i
  %.pn.i.i.i = phi ptr [ %i.hr, %.noexc15.i ], [ %i.hs, %bb.al ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -40 ; 2 uses
  %i.ht = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !298, !noundef !4
  %.not9.i.i = icmp eq ptr %i.ht, null
  br i1 %.not9.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.an, %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !290, !noalias !292, !nonnull !4, !noundef !4
  %i.hw = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -24
  store ptr %i.hv, ptr %i.hw, align 8, !noalias !298
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i

bb.an:                                            ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit.i.i
  %i.hx = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -32
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !290, !noalias !292, !noundef !4
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !290, !noalias !292
  store ptr %i.hz, ptr %.sroa.0.0.i.i.i, align 8, !noalias !298
  store i64 %i.ib, ptr %i.hx, align 8, !noalias !298
  br label %bb.am

bb.ao:                                            ; preds = %.noexc11.i
  %.sroa.452.0.copyload.i.i = load i64, ptr %i.ec, align 8, !noalias !295
  %.sroa.553.0.copyload.i.i = load ptr, ptr %.sroa.553.0..sroa_idx.i.i, align 8, !noalias !295
  %.sroa.654.0.copyload.i.i = load i64, ptr %.sroa.654.0..sroa_idx.i.i, align 8, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !300
  store ptr %i.ha, ptr %i.ac, align 8, !noalias !300
  store i64 %.sroa.452.0.copyload.i.i, ptr %i.ed, align 8, !noalias !300
  store ptr null, ptr %i.ee, align 8, !noalias !300
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false), !noalias !300
  %i.ic = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14insert_no_growB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.553.0.copyload.i.i, i64 noundef %.sroa.654.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ac)
          to label %.noexc16.i unwind label %.loopexit18.i, !noalias !286

.noexc16.i:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !300
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i

bb.ap:                                            ; preds = %.noexc11.i
  %i.id = load ptr, ptr %i.ec, align 8, !noalias !295, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !295
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i: ; preds = %bb.ap, %.noexc16.i
  %.pn.i16.i.i = phi ptr [ %i.ic, %.noexc16.i ], [ %i.id, %bb.ap ] ; 3 uses
  %.sroa.0.0.i17.i.i = getelementptr inbounds i8, ptr %.pn.i16.i.i, i64 -40 ; 2 uses
  %i.ie = load ptr, ptr %.sroa.0.0.i17.i.i, align 8, !noalias !298, !noundef !4
  %.not7.i.i = icmp eq ptr %i.ie, null
  br i1 %.not7.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !alias.scope !290, !noalias !292, !nonnull !4, !noundef !4
  %i.ih = getelementptr inbounds i8, ptr %.pn.i16.i.i, i64 -16
  store ptr %i.ig, ptr %i.ih, align 8, !noalias !298
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i

bb.ar:                                            ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit18.i.i
  %i.ii = getelementptr inbounds i8, ptr %.pn.i16.i.i, i64 -32
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !290, !noalias !292, !noundef !4
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !290, !noalias !292
  store ptr %i.ik, ptr %.sroa.0.0.i17.i.i, align 8, !noalias !298
  store i64 %i.im, ptr %i.ii, align 8, !noalias !298
  br label %bb.aq

bb.as:                                            ; preds = %.noexc12.i
  %.sroa.444.0.copyload.i.i = load i64, ptr %i.dy, align 8, !noalias !295
  %.sroa.545.0.copyload.i.i = load ptr, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !295
  %.sroa.646.0.copyload.i.i = load i64, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !301
  store ptr %i.hf, ptr %i.ab, align 8, !noalias !301
  store i64 %.sroa.444.0.copyload.i.i, ptr %i.dz, align 8, !noalias !301
  store ptr null, ptr %i.ea, align 8, !noalias !301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false), !noalias !301
  %i.in = invoke noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderEE14insert_no_growB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.545.0.copyload.i.i, i64 noundef %.sroa.646.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ab)
          to label %.noexc17.i unwind label %.loopexit18.i, !noalias !286

.noexc17.i:                                       ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !301
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i

bb.at:                                            ; preds = %.noexc12.i
  %i.io = load ptr, ptr %i.dy, align 8, !noalias !295, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !295
  br label %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i

_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i: ; preds = %bb.at, %.noexc17.i
  %.pn.i25.i.i = phi ptr [ %i.in, %.noexc17.i ], [ %i.io, %bb.at ] ; 3 uses
  %.sroa.0.0.i26.i.i = getelementptr inbounds i8, ptr %.pn.i25.i.i, i64 -40 ; 2 uses
  %i.ip = load ptr, ptr %.sroa.0.0.i26.i.i, align 8, !noalias !298, !noundef !4
  %.not5.i.i = icmp eq ptr %i.ip, null
  br i1 %.not5.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.av, %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !290, !noalias !292, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds i8, ptr %.pn.i25.i.i, i64 -8
  store ptr %i.ir, ptr %i.is, align 8, !noalias !298
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i

bb.av:                                            ; preds = %_RNvMs19_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_5EntryRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderE10or_defaultB1M_.exit27.i.i
  %i.it = getelementptr inbounds i8, ptr %.pn.i25.i.i, i64 -32
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !290, !noalias !292, !noundef !4
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !290, !noalias !292
  store ptr %i.iv, ptr %.sroa.0.0.i26.i.i, align 8, !noalias !298
  store i64 %i.ix, ptr %i.it, align 8, !noalias !298
  br label %bb.au

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder12pymethod_def.exit.i: ; preds = %bb.au, %bb.aq, %bb.am, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE8push_mutCsdc6yCHiM2ZJ_4pyo3.exit.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8push_mutCsdc6yCHiM2ZJ_4pyo3.exit.i.i, %.lr.ph22.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.03.020.i, i64 56 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.fy
  br i1 %i.iz, label %.loopexit.i.backedge, label %.lr.ph22.i

bb.aw:                                            ; preds = %bb.ab
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !286
  unreachable

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items.exit: ; preds = %.loopexit.i, %._crit_edge.jt2.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.an, ptr noundef nonnull align 8 dereferenceable(200) %i.am, i64 200, i1 false), !alias.scope !285, !noalias !284
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %17, ptr %i.aa, align 8, !noalias !304
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %18, ptr %i.jb, align 8, !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !304
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !306
  %i.jc = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i64 24, i1 false)
  store i64 0, ptr %i.jc, align 8, !alias.scope !307, !noalias !308
  %.sroa.4.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i7, align 8, !alias.scope !307, !noalias !308
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !307, !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.je = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !310, !noalias !311, !noundef !4 ; 5 uses
  %i.jg = icmp ult i64 %i.jf, 288230376151711744
  call void @llvm.assume(i1 %i.jg)
  %i.jh = icmp eq i64 %i.jf, 0
  br i1 %i.jh, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items.exit
  %i.ji = load i64, ptr %i.q, align 8, !range !7, !alias.scope !312, !noalias !313, !noundef !4
  %i.jj = icmp eq i64 %i.jf, %i.ji
  br i1 %i.jj, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #25
          to label %bb.bc unwind label %bb.be, !noalias !314

bb.az:                                            ; preds = %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder11class_items.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i unwind label %bb.ba, !noalias !314

bb.ba:                                            ; preds = %bb.az
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body97.i unwind label %bb.bb, !noalias !314

bb.bb:                                            ; preds = %bb.ba
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !314
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i: ; preds = %bb.az
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i unwind label %bb.co, !noalias !315

bb.bc:                                            ; preds = %bb.ay, %bb.ax
  %i.jm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !alias.scope !312, !noalias !313, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.jn, i64 %i.jf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i8 0, i64 32, i1 false), !noalias !314
  %i.jp = add nuw nsw i64 %i.jf, 1
  store i64 %i.jp, ptr %i.je, align 8, !alias.scope !312, !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !311
  %i.jq = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefE16into_boxed_sliceCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc100.i unwind label %bb.co, !noalias !315

.noexc100.i:                                      ; preds = %bb.bc
  %i.jr = extractvalue { ptr, i64 } %i.jq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !316
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jr) ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !alias.scope !317, !noalias !318, !noundef !4 ; 3 uses
  %i.jv = load i64, ptr %i.js, align 8, !range !7, !alias.scope !317, !noalias !318, !noundef !4
  %i.jw = icmp eq i64 %i.ju, %i.jv
  br i1 %i.jw, label %bb.bd, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i

bb.bd:                                            ; preds = %.noexc100.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.js) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i unwind label %bb.co, !noalias !315

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i: ; preds = %bb.bd, %.noexc100.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !317, !noalias !318, !nonnull !4, !noundef !4
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.ju ; 2 uses
  store i32 64, ptr %i.jz, align 8, !noalias !319
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.jr, ptr %i.ka, align 8, !noalias !319
  %i.kb = add i64 %i.ju, 1
  store i64 %i.kb, ptr %i.jt, align 8, !alias.scope !317, !noalias !318
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i

bb.be:                                            ; preds = %bb.ay
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #23
          to label %.body97.i unwind label %bb.bf, !noalias !314

bb.bf:                                            ; preds = %bb.be
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !314
  unreachable

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i: ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !306
  %i.kd = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i64 24, i1 false), !noalias !308
  store i64 0, ptr %i.kd, align 8, !alias.scope !307, !noalias !308
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !alias.scope !307, !noalias !308
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !alias.scope !307, !noalias !308
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !321, !noalias !322, !noundef !4 ; 5 uses
  %i.kg = icmp ult i64 %i.kf, 230584300921369396
  call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp eq i64 %i.kf, 0
  br i1 %i.kh, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i
  %i.ki = load i64, ptr %i.p, align 8, !range !7, !alias.scope !323, !noalias !324, !noundef !4
  %i.kj = icmp eq i64 %i.kf, %i.ki
  br i1 %i.kj, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #25
          to label %bb.bl unwind label %bb.bn, !noalias !325

bb.bi:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEB7_.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i unwind label %bb.bj, !noalias !325

bb.bj:                                            ; preds = %bb.bi
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body97.i unwind label %bb.bk, !noalias !325

bb.bk:                                            ; preds = %bb.bj
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !325
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i: ; preds = %bb.bi
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i unwind label %bb.co, !noalias !315

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %i.km = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !323, !noalias !324, !nonnull !4, !noundef !4
  %i.ko = getelementptr inbounds nuw [40 x i8], ptr %i.kn, i64 %i.kf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ko, i8 0, i64 40, i1 false), !noalias !325
  %i.kp = add nuw nsw i64 %i.kf, 1
  store i64 %i.kp, ptr %i.ke, align 8, !alias.scope !323, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !322
  %i.kq = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefE16into_boxed_sliceCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc103.i unwind label %bb.co, !noalias !315

.noexc103.i:                                      ; preds = %bb.bl
  %i.kr = extractvalue { ptr, i64 } %i.kq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kr) ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !alias.scope !327, !noalias !328, !noundef !4 ; 3 uses
  %i.kv = load i64, ptr %i.ks, align 8, !range !7, !alias.scope !327, !noalias !328, !noundef !4
  %i.kw = icmp eq i64 %i.ku, %i.kv
  br i1 %i.kw, label %bb.bm, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i

bb.bm:                                            ; preds = %.noexc103.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ks) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i unwind label %bb.co, !noalias !315

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i: ; preds = %bb.bm, %.noexc103.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !327, !noalias !328, !nonnull !4, !noundef !4
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.ku ; 2 uses
  store i32 72, ptr %i.kz, align 8, !noalias !319
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.kr, ptr %i.la, align 8, !noalias !319
  %i.lb = add i64 %i.ku, 1
  store i64 %i.lb, ptr %i.kt, align 8, !alias.scope !327, !noalias !328
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i

bb.bn:                                            ; preds = %bb.bh
  %lpad.thr_comm.split-lp.i15.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #23
          to label %.body97.i unwind label %bb.bo, !noalias !325

bb.bo:                                            ; preds = %bb.bn
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !325
  unreachable

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i: ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i14.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !306
  %i.ld = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.le = load i64, ptr %i.ld, align 8, !alias.scope !307, !noalias !308, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !306
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.le, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc105.i unwind label %bb.co, !noalias !315

.noexc105.i:                                      ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i
  %i.lf = load i64, ptr %i.k, align 8, !range !6, !noalias !306, !noundef !4
  %i.lg = trunc nuw i64 %i.lf to i1
  br i1 %i.lg, label %bb.bp, label %bb.bq, !prof !9

bb.bp:                                            ; preds = %.noexc105.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !range !11, !noalias !306, !noundef !4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !noalias !306
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.li, i64 %i.lk) #24
          to label %.noexc106.i unwind label %bb.co, !noalias !315

.noexc106.i:                                      ; preds = %bb.bp
  unreachable

bb.bq:                                            ; preds = %.noexc105.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.lm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !range !7, !noalias !306, !noundef !4 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !306, !nonnull !4, !noundef !4
  %i.lq = icmp ule i64 %i.le, %i.ln
  call void @llvm.assume(i1 %i.lq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !306
  store i64 %i.ln, ptr %i.o, align 8, !noalias !306
  %i.lr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.lp, ptr %i.lr, align 8, !noalias !306
  %i.ls = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ls, align 8, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !306
  invoke void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1y_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ll)
          to label %bb.bs unwind label %bb.br, !noalias !319

.body.thread.i.i:                                 ; preds = %bb.cm, %.body.thread33.i.i, %bb.ce, %bb.ca, %bb.br
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.cm ], [ %lpad.thr_comm.i.i, %.body.thread33.i.i ], [ %i.lt, %bb.br ], [ %lpad.thr_comm.split-lp.i19.i.i, %bb.ce ], [ %i.mg, %bb.ca ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #23
          to label %.body97.i unwind label %bb.cn, !noalias !319

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !306
  %i.lu = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.o, ptr %i.lu, align 8, !noalias !306
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterRNtNtNtB2w_3ffi5c_str4CStrNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object16GetSetDefBuilderENCNvMB4u_NtB4u_13PyTypeBuilder31finalize_methods_and_properties0EE9from_iterB4y_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.bt unwind label %bb.br, !noalias !319

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !306
  %i.lv = load i64, ptr %i.an, align 8, !range !329, !alias.scope !307, !noalias !308, !noundef !4
  %.not12.i.i = icmp eq i64 %i.lv, 2
  br i1 %.not12.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !330, !noalias !331, !noundef !4 ; 3 uses
  %i.ly = load i64, ptr %i.n, align 8, !range !7, !alias.scope !330, !noalias !331, !noundef !4
  %i.lz = icmp eq i64 %i.lx, %i.ly
  br i1 %i.lz, label %bb.bv, label %bb.cg

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
          to label %bb.cg unwind label %bb.cm, !noalias !319

bb.bw:                                            ; preds = %bb.cg, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !306
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !alias.scope !333, !noalias !334, !noundef !4 ; 5 uses
  %i.mc = icmp ult i64 %i.mb, 230584300921369396
  call void @llvm.assume(i1 %i.mc)
  %i.md = icmp eq i64 %i.mb, 0
  br i1 %i.md, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.me = load i64, ptr %i.l, align 8, !range !7, !alias.scope !335, !noalias !336, !noundef !4
  %i.mf = icmp eq i64 %i.mb, %i.me
  br i1 %i.mf, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #25
          to label %bb.cc unwind label %bb.ce, !noalias !337

bb.bz:                                            ; preds = %bb.bw
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i unwind label %bb.ca, !noalias !337

bb.ca:                                            ; preds = %bb.bz
  %i.mg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.thread.i.i unwind label %bb.cb, !noalias !337

bb.cb:                                            ; preds = %bb.ca
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !337
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i unwind label %.body.thread33.i.i, !noalias !319

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.mi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !335, !noalias !336, !nonnull !4, !noundef !4
  %i.mk = getelementptr inbounds nuw [40 x i8], ptr %i.mj, i64 %i.mb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mk, i8 0, i64 40, i1 false), !noalias !337
  %i.ml = add nuw nsw i64 %i.mb, 1
  store i64 %i.ml, ptr %i.ma, align 8, !alias.scope !335, !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !334
  %i.mm = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefE16into_boxed_sliceCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc23.i.i unwind label %.body.thread33.i.i, !noalias !319

.noexc23.i.i:                                     ; preds = %bb.cc
  %i.mn = extractvalue { ptr, i64 } %i.mm, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !338
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mn) ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !339, !noalias !340, !noundef !4 ; 3 uses
  %i.mr = load i64, ptr %i.mo, align 8, !range !7, !alias.scope !339, !noalias !340, !noundef !4
  %i.ms = icmp eq i64 %i.mq, %i.mr
  br i1 %i.ms, label %bb.cd, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i

bb.cd:                                            ; preds = %.noexc23.i.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mo) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i unwind label %.body.thread33.i.i, !noalias !319

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i: ; preds = %bb.cd, %.noexc23.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !alias.scope !339, !noalias !340, !nonnull !4, !noundef !4
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.mu, i64 %i.mq ; 2 uses
  store i32 73, ptr %i.mv, align 8, !noalias !319
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store ptr %i.mn, ptr %i.mw, align 8, !noalias !319
  %i.mx = add i64 %i.mq, 1
  store i64 %i.mx, ptr %i.mp, align 8, !alias.scope !339, !noalias !340
  br label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i

bb.ce:                                            ; preds = %bb.by
  %lpad.thr_comm.split-lp.i19.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #23
          to label %.body.thread.i.i unwind label %bb.cf, !noalias !337

bb.cf:                                            ; preds = %bb.ce
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !337
  unreachable

.body.thread33.i.i:                               ; preds = %bb.cl, %bb.cj, %bb.cd, %bb.cc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.cg:                                            ; preds = %bb.bv, %bb.bu
  %i.mz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !alias.scope !330, !noalias !331, !nonnull !4, !noundef !4
  %i.nb = getelementptr inbounds nuw [40 x i8], ptr %i.na, i64 %i.lx ; 4 uses
  store ptr @12, ptr %i.nb, align 8, !noalias !319
  %.sroa.4.0..sroa_idx28.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr @PyObject_GenericGetDict, ptr %.sroa.4.0..sroa_idx28.i.i, align 8, !noalias !319
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store ptr @PyObject_GenericSetDict, ptr %.sroa.5.0..sroa_idx29.i.i, align 8, !noalias !319
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nc = add i64 %i.lx, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !319
  store i64 %i.nc, ptr %i.lw, align 8, !alias.scope !330, !noalias !331
  br label %bb.bw

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i: ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i18.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !306
  %i.nd = getelementptr inbounds nuw i8, ptr %i.an, i64 184 ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 8, !range !8, !alias.scope !307, !noalias !308, !noundef !4 ; 2 uses
  %i.nf = trunc nuw i8 %i.ne to i1
  %.not.i.i8 = xor i1 %i.nf, true
  %i.ng = getelementptr inbounds nuw i8, ptr %i.an, i64 189
  %i.nh = load i8, ptr %i.ng, align 1, !range !8, !alias.scope !307, !noalias !308
  %i.ni = trunc nuw i8 %i.nh to i1
  %or.cond.i.i = select i1 %.not.i.i8, i1 %i.ni, i1 false
  br i1 %or.cond.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i
  %i.nj = phi i8 [ %.pre.i.i, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i ], [ %i.ne, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i ]
  %i.nk = trunc nuw i8 %i.nj to i1
  %.not3.i.i = xor i1 %i.nk, true
  %i.nl = getelementptr inbounds nuw i8, ptr %i.an, i64 190
  %i.nm = load i8, ptr %i.nl, align 2, !range !8, !alias.scope !307, !noalias !308
  %i.nn = trunc nuw i8 %i.nm to i1
  %or.cond6.i.i = select i1 %.not3.i.i, i1 %i.nn, i1 false
  br i1 %or.cond6.i.i, label %bb.ck, label %._crit_edge.i9

._crit_edge.i9:                                   ; preds = %bb.ch
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !341, !noalias !342
  br label %bb.cp

bb.ci:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !343, !noalias !308, !noundef !4 ; 3 uses
  %i.nr = load i64, ptr %i.no, align 8, !range !7, !alias.scope !343, !noalias !308, !noundef !4
  %i.ns = icmp eq i64 %i.nq, %i.nr
  br i1 %i.ns, label %bb.cj, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.no) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i unwind label %.body.thread33.i.i, !noalias !319

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i: ; preds = %bb.cj, %bb.ci
  %i.nt = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !alias.scope !343, !noalias !308, !nonnull !4, !noundef !4
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %i.nu, i64 %i.nq ; 2 uses
  store i32 44, ptr %i.nv, align 8, !noalias !319
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass30get_sequence_item_from_mapping, ptr %i.nw, align 8, !noalias !319
  %i.nx = add i64 %i.nq, 1
  store i64 %i.nx, ptr %i.np, align 8, !alias.scope !343, !noalias !308
  %.pre.i.i = load i8, ptr %i.nd, align 8, !range !8, !alias.scope !307, !noalias !308
  br label %bb.ch

bb.ck:                                            ; preds = %bb.ch
  %i.ny = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !344, !noalias !308, !noundef !4 ; 3 uses
  %i.ob = load i64, ptr %i.ny, align 8, !range !7, !alias.scope !344, !noalias !308, !noundef !4
  %i.oc = icmp eq i64 %i.oa, %i.ob
  br i1 %i.oc, label %bb.cl, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ny) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i unwind label %.body.thread33.i.i, !noalias !319

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i: ; preds = %bb.cl, %bb.ck
  %i.od = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.oe = load ptr, ptr %i.od, align 8, !alias.scope !344, !noalias !308, !nonnull !4, !noundef !4
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.oe, i64 %i.oa ; 2 uses
  store i32 39, ptr %i.of, align 8, !noalias !319
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass33assign_sequence_item_from_mapping, ptr %i.og, align 8, !noalias !319
  %i.oh = add i64 %i.oa, 1                        ; 2 uses
  store i64 %i.oh, ptr %i.nz, align 8, !alias.scope !344, !noalias !308
  br label %bb.cp

bb.cm:                                            ; preds = %bb.bv
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #23
          to label %.body.thread.i.i unwind label %bb.cn, !noalias !319

bb.cn:                                            ; preds = %bb.cm, %.body.thread.i.i
  %i.oi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !319
  unreachable

.body97.i:                                        ; preds = %.body.i, %bb.dk, %bb.co, %.body.thread.i.i, %bb.bn, %bb.bj, %bb.be, %bb.ba
  %.pn88.i = phi { ptr, i32 } [ %i.oj, %bb.co ], [ %.pn.i, %.body.i ], [ %.pn.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i15.i.i, %bb.bn ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.be ], [ %i.jk, %bb.ba ], [ %i.kk, %bb.bj ], [ %i.rh, %bb.dk ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13PyTypeBuilderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.an) #23
          to label %common.resume unwind label %bb.et, !noalias !302

bb.co:                                            ; preds = %bb.dl, %bb.bp, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i, %bb.bm, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i, %bb.bd, %bb.bc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body97.i

bb.cp:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i, %._crit_edge.i9
  %i.ok = phi i64 [ %.pre.i, %._crit_edge.i9 ], [ %i.oh, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !306
  %i.ol = getelementptr inbounds nuw i8, ptr %i.an, i64 168 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !alias.scope !303, !noalias !342, !noundef !4
  %i.on = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 12 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 7 uses
  %i.op = load i64, ptr %i.on, align 8, !range !7, !alias.scope !341, !noalias !342, !noundef !4
  %i.oq = icmp eq i64 %i.ok, %i.op
  br i1 %i.oq, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #25
          to label %bb.cs unwind label %bb.cr, !noalias !315

bb.cr:                                            ; preds = %bb.ee, %.noexc125.i, %bb.ed, %bb.du, %bb.dt, %bb.dp, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.cq
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.os = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 8 uses
  %i.ot = load ptr, ptr %i.os, align 8, !alias.scope !341, !noalias !342, !nonnull !4, !noundef !4
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %i.ok ; 2 uses
  store i32 48, ptr %i.ou, align 8, !noalias !315
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store ptr %i.om, ptr %i.ov, align 8, !noalias !315
  %i.ow = add i64 %i.ok, 1                        ; 5 uses
  store i64 %i.ow, ptr %i.oo, align 8, !alias.scope !341, !noalias !342
  %i.ox = getelementptr inbounds nuw i8, ptr %i.an, i64 187
  %i.oy = load i8, ptr %i.ox, align 1, !range !8, !alias.scope !303, !noalias !342, !noundef !4
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pa = getelementptr inbounds nuw i8, ptr %i.an, i64 176 ; 2 uses
  %i.pb = load i64, ptr %i.pa, align 8, !alias.scope !303, !noalias !342, !noundef !4
  %i.pc = or i64 %i.pb, 128
  store i64 %i.pc, ptr %i.pa, align 8, !alias.scope !303, !noalias !342
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.pd = load i64, ptr %i.an, align 8, !range !329, !alias.scope !303, !noalias !342, !noundef !4
  %.not85.i = icmp eq i64 %i.pd, 2
  br i1 %.not85.i, label %bb.cv, label %bb.cx

end_hunk_1
