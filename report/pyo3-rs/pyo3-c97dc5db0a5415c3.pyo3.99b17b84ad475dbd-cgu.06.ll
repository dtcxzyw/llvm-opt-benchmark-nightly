Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.06?download=true
inline.NumInlined: 184
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNvNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object18create_type_object5inner:bb.a
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !317
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mm) ]
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
  %.not.i.i8 = icmp eq i8 %i.nd, 0
  %i.ne = getelementptr inbounds nuw i8, ptr %i.an, i64 189
  %i.nf = load i8, ptr %i.ne, align 1, !range !8, !alias.scope !293
  %i.ng = trunc nuw i8 %i.nf to i1
  %or.cond.i.i = select i1 %.not.i.i8, i1 %i.ng, i1 false
  br i1 %or.cond.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i
  %i.nh = phi i8 [ %.pre.i.i, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i ], [ %i.nd, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i ]
  %.not3.i.i = icmp eq i8 %i.nh, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %i.an, i64 190
  %i.nj = load i8, ptr %i.ni, align 2, !range !8, !alias.scope !293
  %i.nk = trunc nuw i8 %i.nj to i1
  %or.cond6.i.i = select i1 %.not3.i.i, i1 %i.nk, i1 false
  br i1 %or.cond6.i.i, label %bb.ci, label %._crit_edge.i9

._crit_edge.i9:                                   ; preds = %bb.cf
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !320
  br label %bb.cn

bb.cg:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEB7_.exit.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !321, !noundef !4 ; 3 uses
  %i.no = load i64, ptr %i.nl, align 8, !range !7, !alias.scope !321, !noundef !4
  %i.np = icmp eq i64 %i.nn, %i.no
  br i1 %i.np, label %bb.ch, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nl) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i unwind label %.body.thread33.i.i, !noalias !302

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit.i.i: ; preds = %bb.ch, %bb.cg
  %i.nq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8, !alias.scope !321, !nonnull !4, !noundef !4
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.nn ; 2 uses
  store i32 44, ptr %i.ns, align 8, !noalias !302
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass30get_sequence_item_from_mapping, ptr %i.nt, align 8, !noalias !302
  %i.nu = add i64 %i.nn, 1
  store i64 %i.nu, ptr %i.nm, align 8, !alias.scope !321
  %.pre.i.i = load i8, ptr %i.nc, align 8, !range !8, !alias.scope !293
  br label %bb.cf

bb.ci:                                            ; preds = %bb.cf
  %i.nv = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !alias.scope !322, !noundef !4 ; 3 uses
  %i.ny = load i64, ptr %i.nv, align 8, !range !7, !alias.scope !322, !noundef !4
  %i.nz = icmp eq i64 %i.nx, %i.ny
  br i1 %i.nz, label %bb.cj, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nv) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i unwind label %.body.thread33.i.i, !noalias !302

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i: ; preds = %bb.cj, %bb.ci
  %i.oa = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !alias.scope !322, !nonnull !4, !noundef !4
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.ob, i64 %i.nx ; 2 uses
  store i32 39, ptr %i.oc, align 8, !noalias !302
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass33assign_sequence_item_from_mapping, ptr %i.od, align 8, !noalias !302
  %i.oe = add i64 %i.nx, 1                        ; 2 uses
  store i64 %i.oe, ptr %i.nw, align 8, !alias.scope !322
  br label %bb.cn

bb.ck:                                            ; preds = %bb.bt
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyGetSetDefEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #23
          to label %.body.thread.i.i unwind label %bb.cl, !noalias !302

bb.cl:                                            ; preds = %bb.ck, %.body.thread.i.i
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !302
  unreachable

.body97.i:                                        ; preds = %.body.i, %bb.di, %bb.cm, %.body.thread.i.i, %bb.bm, %bb.bi, %bb.bd, %bb.az
  %.pn88.i = phi { ptr, i32 } [ %i.og, %bb.cm ], [ %.pn.i, %.body.i ], [ %.pn.i.i, %.body.thread.i.i ], [ %lpad.thr_comm.split-lp.i15.i.i, %bb.bm ], [ %lpad.thr_comm.split-lp.i.i.i, %bb.bd ], [ %i.jk, %bb.az ], [ %i.kk, %bb.bi ], [ %i.rd, %bb.di ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13PyTypeBuilderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.an) #23
          to label %common.resume unwind label %bb.er, !noalias !288

bb.cm:                                            ; preds = %bb.dj, %bb.bo, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder17push_raw_vec_slotNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEB7_.exit.i.i, %bb.bl, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi11descrobject11PyMemberDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i, %bb.bc, %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs971naDxHMnY_8pyo3_ffi12methodobject11PyMethodDefEECsdc6yCHiM2ZJ_4pyo3.exit.i.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body97.i

bb.cn:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i, %._crit_edge.i9
  %i.oh = phi i64 [ %.pre.i, %._crit_edge.i9 ], [ %i.oe, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit27.i.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !292
  %i.oi = getelementptr inbounds nuw i8, ptr %i.an, i64 168 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !alias.scope !289, !noundef !4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 12 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 7 uses
  %i.om = load i64, ptr %i.ok, align 8, !range !7, !alias.scope !320, !noundef !4
  %i.on = icmp eq i64 %i.oh, %i.om
  br i1 %i.on, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #25
          to label %bb.cq unwind label %bb.cp, !noalias !298

bb.cp:                                            ; preds = %bb.ec, %.noexc125.i, %bb.eb, %bb.ds, %bb.dr, %bb.dn, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.co
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.op = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 8 uses
  %i.oq = load ptr, ptr %i.op, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.oq, i64 %i.oh ; 2 uses
  store i32 48, ptr %i.or, align 8, !noalias !298
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store ptr %i.oj, ptr %i.os, align 8, !noalias !298
  %i.ot = add i64 %i.oh, 1                        ; 5 uses
  store i64 %i.ot, ptr %i.ol, align 8, !alias.scope !320
  %i.ou = getelementptr inbounds nuw i8, ptr %i.an, i64 187
  %i.ov = load i8, ptr %i.ou, align 1, !range !8, !alias.scope !289, !noundef !4
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ox = getelementptr inbounds nuw i8, ptr %i.an, i64 176 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !alias.scope !289, !noundef !4
  %i.oz = or i64 %i.oy, 128
  store i64 %i.oz, ptr %i.ox, align 8, !alias.scope !289
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.pa = load i64, ptr %i.an, align 8, !range !311, !alias.scope !289, !noundef !4
  %.not85.i = icmp eq i64 %i.pa, 2
  br i1 %.not85.i, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit112.i, %bb.cy, %bb.cs
  %i.pb = phi i64 [ %i.qm, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit112.i ], [ %i.qb, %bb.cy ], [ %i.ot, %bb.cs ] ; 4 uses
  %i.pc = load ptr, ptr %i.oi, align 8, !alias.scope !289, !noundef !4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 168
  %i.pe = load i64, ptr %i.pd, align 8, !noalias !298, !noundef !4
  %i.pf = and i64 %i.pe, 16384                    ; 2 uses
  %i.pg = icmp ne i64 %i.pf, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %i.an, i64 191 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !range !8, !alias.scope !289, !noundef !4
  %i.pj = trunc nuw i8 %i.pi to i1
  %brmerge.i = or i1 %i.pg, %i.pj
  %.sroa.0.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %brmerge.i, i64 144, i64 136
  %.sroa.0.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.0.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !289, !nonnull !4, !noundef !4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.an, i64 188
  store i8 1, ptr %i.pk, align 4, !alias.scope !324
  %i.pl = load i64, ptr %i.ok, align 8, !range !7, !alias.scope !325, !noundef !4
  %i.pm = icmp eq i64 %i.pb, %i.pl
  br i1 %i.pm, label %bb.cu, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #25
          to label %bb.db unwind label %bb.cp, !noalias !298

bb.cv:                                            ; preds = %bb.cs
  %i.pn = getelementptr inbounds nuw i8, ptr %i.an, i64 191 ; 2 uses
  %i.po = load i8, ptr %i.pn, align 1, !range !8, !alias.scope !289, !noundef !4
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pq = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !289, !nonnull !4, !noundef !4
  store i8 1, ptr %i.pn, align 1, !alias.scope !326
  %i.ps = getelementptr inbounds nuw i8, ptr %i.an, i64 176 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !326, !noundef !4
  %i.pu = or i64 %i.pt, 16384
  store i64 %i.pu, ptr %i.ps, align 8, !alias.scope !326
  %i.pv = load i64, ptr %i.ok, align 8, !range !7, !alias.scope !327, !noundef !4
  %i.pw = icmp eq i64 %i.ot, %i.pv
  br i1 %i.pw, label %bb.cx, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit110.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit110.i unwind label %bb.cp, !noalias !298

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit110.i: ; preds = %bb.cx, %bb.cw
  %i.px = load ptr, ptr %i.op, align 8, !alias.scope !327, !nonnull !4, !noundef !4
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.ot ; 2 uses
  store i32 71, ptr %i.py, align 8, !noalias !298
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store ptr %i.pr, ptr %i.pz, align 8, !noalias !298
  %i.qa = add i64 %i.oh, 2                        ; 2 uses
  store i64 %i.qa, ptr %i.ol, align 8, !alias.scope !327
  br label %bb.cy

bb.cy:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit110.i, %bb.cv
  %i.qb = phi i64 [ %i.qa, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit110.i ], [ %i.ot, %bb.cv ] ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.qd = load i8, ptr %i.qc, align 8, !range !8, !alias.scope !289, !noundef !4
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.ct, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qf = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !289, !nonnull !4, !noundef !4
  store i8 1, ptr %i.qc, align 8, !alias.scope !328
  %i.qh = load i64, ptr %i.ok, align 8, !range !7, !alias.scope !329, !noundef !4
  %i.qi = icmp eq i64 %i.qb, %i.qh
  br i1 %i.qi, label %bb.da, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit112.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit112.i unwind label %bb.cp, !noalias !298

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit112.i: ; preds = %bb.da, %bb.cz
  %i.qj = load ptr, ptr %i.op, align 8, !alias.scope !329, !nonnull !4, !noundef !4
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qb ; 2 uses
  store i32 51, ptr %i.qk, align 8, !noalias !298
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store ptr %i.qg, ptr %i.ql, align 8, !noalias !298
  %i.qm = add i64 %i.qb, 1                        ; 2 uses
  store i64 %i.qm, ptr %i.ol, align 8, !alias.scope !329
  br label %bb.ct

bb.db:                                            ; preds = %bb.cu, %bb.ct
  %i.qn = load ptr, ptr %i.op, align 8, !alias.scope !325, !nonnull !4, !noundef !4
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.pb ; 2 uses
  store i32 52, ptr %i.qo, align 8, !noalias !298
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %.sroa.0.0.i, ptr %i.qp, align 8, !noalias !298
  %i.qq = add i64 %i.pb, 1                        ; 5 uses
  store i64 %i.qq, ptr %i.ol, align 8, !alias.scope !325
  %i.qr = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 8, !range !8, !alias.scope !289, !noundef !4
  %i.qt = trunc nuw i8 %i.qs to i1                ; 2 uses
  %i.qu = load i8, ptr %i.ph, align 1, !range !8, !alias.scope !289
  %.not86.i = icmp eq i8 %i.qu, 0                 ; 2 uses
  %or.cond.i = select i1 %i.qt, i1 %.not86.i, i1 false
  br i1 %or.cond.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qv = getelementptr inbounds nuw i8, ptr %i.an, i64 176 ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !289, !noundef !4
  %i.qx = and i64 %i.qw, %i.pf
  %brmerge4.not.not.i = icmp eq i64 %i.qx, 0
  br i1 %brmerge4.not.not.i, label %bb.dl, label %bb.dm

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !290
  store ptr %i.aa, ptr %i.x, align 8, !noalias !290
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !290
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @13, ptr noundef nonnull %i.x)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdc6yCHiM2ZJ_4pyo3.exit.i unwind label %bb.cp, !noalias !298

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdc6yCHiM2ZJ_4pyo3.exit.i: ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !290
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !330
  %i.qy = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 16, 33) 24, i64 noundef 8) #21, !noalias !330 ; 3 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.de, label %bb.dh, !prof !9

bb.de:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdc6yCHiM2ZJ_4pyo3.exit.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24
          to label %.noexc114.i unwind label %bb.df, !noalias !298

.noexc114.i:                                      ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.de
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions11PyTypeErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #23
          to label %.body.i unwind label %bb.dg, !noalias !298

bb.dg:                                            ; preds = %bb.df
  %i.rb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !298
  unreachable

bb.dh:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdc6yCHiM2ZJ_4pyo3.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !290
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.047.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rc, i8 0, i64 16, i1 false), !alias.scope !288
  store i64 1, ptr %.sroa.047.sroa.5.0..sroa_idx.i, align 8, !alias.scope !288
  %.sroa.047.sroa.5.sroa.4.0..sroa.047.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.qy, ptr %.sroa.047.sroa.5.sroa.4.0..sroa.047.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !288
  %.sroa.047.sroa.5.sroa.5.0..sroa.047.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @14, ptr %.sroa.047.sroa.5.sroa.5.0..sroa.047.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !288
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %.sroa.448.0..sroa_idx.i, align 8, !alias.scope !288
  store i64 1, ptr %0, align 8, !alias.scope !288
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECsdc6yCHiM2ZJ_4pyo3.exit129.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECsdc6yCHiM2ZJ_4pyo3.exit129.i: ; preds = %bb.eq, %bb.ep, %bb.ed, %bb.dh
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %bb.dj unwind label %bb.di, !noalias !288

bb.di:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECsdc6yCHiM2ZJ_4pyo3.exit129.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body97.i unwind label %bb.dk, !noalias !288

bb.dj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str7CStringECsdc6yCHiM2ZJ_4pyo3.exit129.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB2_13PyTypeBuilder5build.exit unwind label %bb.cm, !noalias !288

bb.dk:                                            ; preds = %bb.di
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !288
  unreachable

bb.dl:                                            ; preds = %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit119.i, %bb.do, %bb.dc
  %i.rf = phi i64 [ %i.rq, %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit119.i ], [ %i.qq, %bb.do ], [ %i.qq, %bb.dc ] ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.an, i64 185
  %i.rh = load i8, ptr %i.rg, align 1, !range !8, !alias.scope !289, !noundef !4
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.dt, label %.loopexit.i11

bb.dm:                                            ; preds = %bb.dc
  br i1 %.not86.i, label %bb.dn, label %bb.do, !prof !9

bb.dn:                                            ; preds = %bb.dm
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
          to label %bb.dp unwind label %bb.cp, !noalias !298

bb.do:                                            ; preds = %bb.dm
  br i1 %i.qt, label %bb.dl, label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  unreachable

bb.dq:                                            ; preds = %bb.do
  %i.rj = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.rk = load ptr, ptr %i.rj, align 8, !alias.scope !289, !nonnull !4, !noundef !4
  store i8 1, ptr %i.qr, align 8, !alias.scope !331
  %i.rl = load i64, ptr %i.ok, align 8, !range !7, !alias.scope !332, !noundef !4
  %i.rm = icmp eq i64 %i.qq, %i.rl
  br i1 %i.rm, label %bb.dr, label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit119.i

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #25
          to label %_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit119.i unwind label %bb.cp, !noalias !298

_RINvMNtNtCsdc6yCHiM2ZJ_4pyo37pyclass18create_type_objectNtB3_13PyTypeBuilder9push_slotNtNtCskKLDkoKarTP_4core3ffi6c_voidEB7_.exit119.i: ; preds = %bb.dr, %bb.dq
  %i.rn = load ptr, ptr %i.op, align 8, !alias.scope !332, !nonnull !4, !noundef !4
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.qq ; 2 uses
  store i32 51, ptr %i.ro, align 8, !noalias !298
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  store ptr %i.rk, ptr %i.rp, align 8, !noalias !298
  %i.rq = add i64 %i.pb, 2                        ; 2 uses
  store i64 %i.rq, ptr %i.ol, align 8, !alias.scope !332
  br label %bb.dl

.loopexit.loopexit.i:                             ; preds = %bb.ea, %.lr.ph.i13.prol.loopexit
  %.pre135.i = load i64, ptr %i.ol, align 8, !alias.scope !333
  br label %.loopexit.i11

.loopexit.i11:                                    ; preds = %bb.dt, %.loopexit.loopexit.i, %bb.dl
  %i.rr = phi i64 [ %.pre135.i, %.loopexit.loopexit.i ], [ 0, %bb.dt ], [ %i.rf, %bb.dl ] ; 3 uses
  %i.rs = load i64, ptr %i.ok, align 8, !range !7, !alias.scope !333, !noundef !4
  %i.rt = icmp eq i64 %i.rr, %i.rs
  br i1 %i.rt, label %bb.ds, label %bb.eb

bb.ds:                                            ; preds = %.loopexit.i11
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs971naDxHMnY_8pyo3_ffi6object11PyType_SlotE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ok) #25
          to label %bb.eb unwind label %bb.cp, !noalias !298

bb.dt:                                            ; preds = %bb.dl
  %i.ru = load ptr, ptr %i.op, align 8, !alias.scope !289, !nonnull !4, !noundef !4 ; 3 uses
  %.idx.i = shl i64 %i.rf, 4                      ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx.i
  %i.rw = icmp eq i64 %i.rf, 0
  br i1 %i.rw, label %.loopexit.i11, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %bb.dt
  %i.rx = add i64 %.idx.i, -16                    ; 2 uses
  %i.ry = lshr exact i64 %i.rx, 4
  %i.rz = add nuw nsw i64 %i.ry, 1
  %xtraiter = and i64 %i.rz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol

.lr.ph.i13.prol:                                  ; preds = %.lr.ph.i13.preheader, %bb.dv
  %.sroa.05.0134.i.prol = phi ptr [ %i.sa, %bb.dv ], [ %i.ru, %.lr.ph.i13.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.dv ], [ 0, %.lr.ph.i13.preheader ]
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i.prol, i64 16 ; 2 uses
  %i.sb = load i32, ptr %.sroa.05.0134.i.prol, align 8, !noalias !298, !noundef !4
  %i.sc = icmp eq i32 %i.sb, 4
  br i1 %i.sc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i13.prol
  store i32 45, ptr %.sroa.05.0134.i.prol, align 8, !noalias !298
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i13.prol
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.prol.loopexit, label %.lr.ph.i13.prol, !llvm.loop !253

.lr.ph.i13.prol.loopexit:                         ; preds = %bb.dv, %.lr.ph.i13.preheader
  %.sroa.05.0134.i.unr = phi ptr [ %i.ru, %.lr.ph.i13.preheader ], [ %i.sa, %bb.dv ]
  %i.sd = icmp ult i64 %i.rx, 48
  br i1 %i.sd, label %.loopexit.loopexit.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.prol.loopexit, %bb.ea
  %.sroa.05.0134.i = phi ptr [ %i.sn, %bb.ea ], [ %.sroa.05.0134.i.unr, %.lr.ph.i13.prol.loopexit ] ; 6 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i, i64 16 ; 2 uses
  %i.sf = load i32, ptr %.sroa.05.0134.i, align 8, !noalias !298, !noundef !4
  %i.sg = icmp eq i32 %i.sf, 4
  br i1 %i.sg, label %bb.dw, label %.lr.ph.i13.1

bb.dw:                                            ; preds = %.lr.ph.i13
  store i32 45, ptr %.sroa.05.0134.i, align 8, !noalias !298
  br label %.lr.ph.i13.1

.lr.ph.i13.1:                                     ; preds = %bb.dw, %.lr.ph.i13
  %i.sh = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i, i64 32 ; 2 uses
  %i.si = load i32, ptr %i.se, align 8, !noalias !298, !noundef !4
  %i.sj = icmp eq i32 %i.si, 4
  br i1 %i.sj, label %bb.dx, label %.lr.ph.i13.2

bb.dx:                                            ; preds = %.lr.ph.i13.1
  store i32 45, ptr %i.se, align 8, !noalias !298
  br label %.lr.ph.i13.2

.lr.ph.i13.2:                                     ; preds = %bb.dx, %.lr.ph.i13.1
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i, i64 48 ; 2 uses
  %i.sl = load i32, ptr %i.sh, align 8, !noalias !298, !noundef !4
  %i.sm = icmp eq i32 %i.sl, 4
  br i1 %i.sm, label %bb.dy, label %.lr.ph.i13.3

bb.dy:                                            ; preds = %.lr.ph.i13.2
  store i32 45, ptr %i.sh, align 8, !noalias !298
  br label %.lr.ph.i13.3

.lr.ph.i13.3:                                     ; preds = %bb.dy, %.lr.ph.i13.2
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.05.0134.i, i64 64 ; 2 uses
  %i.so = load i32, ptr %i.sk, align 8, !noalias !298, !noundef !4
  %i.sp = icmp eq i32 %i.so, 4
  br i1 %i.sp, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph.i13.3
  store i32 45, ptr %i.sk, align 8, !noalias !298
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph.i13.3
  %i.sq = icmp eq ptr %i.sn, %i.rv
  br i1 %i.sq, label %.loopexit.loopexit.i, label %.lr.ph.i13

bb.eb:                                            ; preds = %bb.ds, %.loopexit.i11
  %i.sr = load ptr, ptr %i.op, align 8, !alias.scope !333, !nonnull !4, !noundef !4
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %i.rr ; 2 uses
  store i32 0, ptr %i.ss, align 8, !noalias !298
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store ptr null, ptr %i.st, align 8, !noalias !298
  %i.su = add i64 %i.rr, 1
  store i64 %i.su, ptr %i.ol, align 8, !alias.scope !333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !290
  store ptr %17, ptr %i.f, align 8, !noalias !335
  %i.sv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %18, ptr %i.sv, align 8, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !335
  %.not.i122.i = icmp eq ptr %19, null            ; 2 uses
  %spec.select.i.i = select i1 %.not.i122.i, ptr @32, ptr %19
  %spec.select38.i.i = select i1 %.not.i122.i, i64 8, i64 %20
  store ptr %spec.select.i.i, ptr %i.c, align 8, !noalias !335, !captures !336
  %i.sw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select38.i.i, ptr %i.sw, align 8, !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !335
  store ptr %i.c, ptr %i.b, align 8, !noalias !335
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !335
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.sx, align 8, !noalias !335
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !335
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @33, ptr noundef nonnull %i.b)
          to label %.noexc125.i unwind label %bb.cp, !noalias !288

.noexc125.i:                                      ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !335
  invoke void @_RNvXNvMs_NtNtCsexYYUdYSQU6_5alloc3ffi5c_strNtB7_7CString3newNtNtBb_6string6StringNtB2_11SpecNewImpl13spec_new_implCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc126.i unwind label %bb.cp, !noalias !288

.noexc126.i:                                      ; preds = %.noexc125.i
  %i.sy = load i64, ptr %i.e, align 8, !range !337, !noalias !335, !noundef !4 ; 2 uses
  %.not33.i.i = icmp eq i64 %i.sy, -1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !noalias !335 ; 8 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.tc = load i64, ptr %i.tb, align 8, !noalias !335 ; 7 uses
  br i1 %.not33.i.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %.noexc126.i
  %.sroa.630.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.630.0.copyload.i.i = load i64, ptr %.sroa.630.0..sroa_idx.i.i, align 8, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !335
  store i64 %i.sy, ptr %i.a, align 8, !noalias !335
  %.sroa.4.0..sroa_idx.i123.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ta, ptr %.sroa.4.0..sroa_idx.i123.i, align 8, !noalias !335
  %.sroa.5.0..sroa_idx.i124.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.tc, ptr %.sroa.5.0..sroa_idx.i124.i, align 8, !noalias !335
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.630.0.copyload.i.i, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !noalias !335
  %i.td = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  invoke void @_RNvXsk_NtNtCsdc6yCHiM2ZJ_4pyo33err5implsNtB7_5PyErrINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsexYYUdYSQU6_5alloc3ffi5c_str8NulErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.td, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.ed unwind label %bb.cp, !noalias !288

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !290
  %.sroa.068.0.copyload.i = load ptr, ptr %i.td, align 8, !noalias !290
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.469.0.copyload.i = load i64, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !290
end_hunk_0
