inline.NumInlined: 18938
inline.NumDeleted: 8313
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb:bb.a
bb.ca:                                            ; preds = %bb.bv
  %i.lg = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ii unwind label %bb.cd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread: ; preds = %bb.ca
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0547 = phi i1 [ false, %bb.cc ], [ true, %bb.cb ] ; 2 uses
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lj = load ptr, ptr %25, align 8, !tbaa !18   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650: ; preds = %bb.cd
  call void @_ZdlPv(ptr noundef %i.lj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br i1 %.0547, label %bb.ce, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br i1 %.0547, label %bb.ce, label %common.resume

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652
  %.pn596776 = phi { ptr, i32 } [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650 ]
  call void @__cxa_free_exception(ptr %i.lg) #29
  br label %common.resume

bb.cf:                                            ; preds = %bb.al
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ln = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lm)
  %i.lo = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.ln)
  %i.lp = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.lo)
  switch i8 %i.lp, label %bb.ck [
    i8 3, label %bb.cg
    i8 0, label %bb.ch
    i8 1, label %bb.ci
    i8 2, label %bb.cj
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.lq = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL21TimestampTZConversionERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.lq, i64 noundef %4, i64 noundef 1000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ch:                                            ; preds = %bb.cf
  %i.lr = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL21TimestampTZConversionERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.lr, i64 noundef %4, i64 noundef 1000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ci:                                            ; preds = %bb.cf
  call fastcc void @_ZN6duckdbL16DirectConversionERNS_6VectorER10ArrowArraymlm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %8)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cj:                                            ; preds = %bb.cf
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !419 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !352
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !166
  %i.ly = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i653 = icmp eq i64 %6, -1
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !306
  %i.mb = add i64 %i.ly, %2
  %.0.v.i654 = select i1 %.not.i653, i64 %i.mb, i64 %6
  %i.mc = getelementptr [8 x i8], ptr %i.lx, i64 %.0.v.i654
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %i.ma ; 3 uses
  %.not907 = icmp eq i64 %4, 0
  br i1 %.not907, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph884.preheader

.lr.ph884.preheader:                              ; preds = %bb.cj
  %xtraiter1066 = and i64 %4, 1
  %i.me = icmp eq i64 %4, 1
  br i1 %i.me, label %.lr.ph884.epil.preheader, label %.lr.ph884.preheader.new

.lr.ph884.preheader.new:                          ; preds = %.lr.ph884.preheader
  %unroll_iter1069 = and i64 %4, -2
  br label %.lr.ph884

.lr.ph884:                                        ; preds = %.lr.ph884, %.lr.ph884.preheader.new
  %.0549882 = phi i64 [ 0, %.lr.ph884.preheader.new ], [ %i.mo, %.lr.ph884 ] ; 4 uses
  %niter1070 = phi i64 [ 0, %.lr.ph884.preheader.new ], [ %niter1070.next.1, %.lr.ph884 ]
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %.0549882
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !23
  %i.mh = sdiv i64 %i.mg, 1000
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.0549882
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !436
  %i.mj = or disjoint i64 %.0549882, 1            ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !23
  %i.mm = sdiv i64 %i.ml, 1000
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !436
  %i.mo = add nuw i64 %.0549882, 2                ; 2 uses
  %niter1070.next.1 = add nuw i64 %niter1070, 2   ; 2 uses
  %niter1070.ncmp.1 = icmp eq i64 %niter1070.next.1, %unroll_iter1069
  br i1 %niter1070.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa, label %.lr.ph884, !llvm.loop !438

bb.ck:                                            ; preds = %bb.cf
  %i.mp = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.cl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @__cxa_throw(ptr nonnull %i.mp, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ii unwind label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread: ; preds = %bb.ck
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.0550 = phi i1 [ false, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ms = load ptr, ptr %27, align 8, !tbaa !18   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.ms) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %.0550, label %bb.co, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %.0550, label %bb.co, label %common.resume

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658
  %.pn594779 = phi { ptr, i32 } [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread ], [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658 ], [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656 ]
  call void @__cxa_free_exception(ptr %i.mp) #29
  br label %common.resume

bb.cp:                                            ; preds = %bb.al
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.mw = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mv)
  %i.mx = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.mw)
  %i.my = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.mx)
  switch i8 %i.my, label %bb.cw [
    i8 3, label %bb.cq
    i8 4, label %bb.cr
    i8 0, label %bb.cr
    i8 1, label %bb.cs
    i8 2, label %bb.ct
    i8 5, label %bb.cu
    i8 6, label %bb.cv
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.mz = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.mz, i64 noundef %4, i64 noundef 1000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cr:                                            ; preds = %bb.cp, %bb.cp
  %i.na = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.na, i64 noundef %4, i64 noundef 1000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cs:                                            ; preds = %bb.cp
  %i.nb = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.nb, i64 noundef %4, i64 noundef 1)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ct:                                            ; preds = %bb.cp
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !419 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !352
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !166
  %i.ni = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i659 = icmp eq i64 %6, -1
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !306
  %i.nl = add i64 %i.ni, %2
  %.0.v.i660 = select i1 %.not.i659, i64 %i.nl, i64 %6
  %i.nm = getelementptr [8 x i8], ptr %i.nh, i64 %.0.v.i660
  %i.nn = getelementptr [8 x i8], ptr %i.nm, i64 %i.nk ; 3 uses
  %.not906 = icmp eq i64 %4, 0
  br i1 %.not906, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph881.preheader

.lr.ph881.preheader:                              ; preds = %bb.ct
  %xtraiter1061 = and i64 %4, 1
  %52 = icmp eq i64 %4, 1
  br i1 %52, label %.lr.ph881.epil.preheader, label %.lr.ph881.preheader.new

.lr.ph881.preheader.new:                          ; preds = %.lr.ph881.preheader
  %unroll_iter1064 = and i64 %4, -2
  br label %.lr.ph881

.lr.ph881:                                        ; preds = %.lr.ph881, %.lr.ph881.preheader.new
  %.0552879 = phi i64 [ 0, %.lr.ph881.preheader.new ], [ %60, %.lr.ph881 ] ; 4 uses
  %niter1065 = phi i64 [ 0, %.lr.ph881.preheader.new ], [ %niter1065.next.1, %.lr.ph881 ]
  %53 = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.0552879
  %54 = load i64, ptr %53, align 8, !tbaa !23
  %55 = sdiv i64 %54, 1000
  %56 = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %.0552879 ; 3 uses
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 %55, ptr %57, align 8, !tbaa !439
  %58 = getelementptr inbounds nuw i8, ptr %56, i64 4
  store i32 0, ptr %58, align 4, !tbaa !441
  store i32 0, ptr %56, align 8, !tbaa !442
  %59 = or disjoint i64 %.0552879, 1              ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %59
  %i.np = load i64, ptr %i.no, align 8, !tbaa !23
  %i.nq = sdiv i64 %i.np, 1000
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %59 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i64 %i.nq, ptr %i.ns, align 8, !tbaa !439
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  store i32 0, ptr %i.nt, align 4, !tbaa !441
  store i32 0, ptr %i.nr, align 8, !tbaa !442
  %60 = add nuw i64 %.0552879, 2                  ; 2 uses
  %niter1065.next.1 = add nuw i64 %niter1065, 2   ; 2 uses
  %niter1065.ncmp.1 = icmp eq i64 %niter1065.next.1, %unroll_iter1064
  br i1 %niter1065.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1049.unr-lcssa, label %.lr.ph881, !llvm.loop !443

bb.cu:                                            ; preds = %bb.cp
  %i.nu = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL24IntervalConversionMonthsERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.nu, i64 noundef %4)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cv:                                            ; preds = %bb.cp
  %i.nv = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL31IntervalConversionMonthDayNanosERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.nv, i64 noundef %4)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cw:                                            ; preds = %bb.cp
  %i.nw = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.cx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @__cxa_throw(ptr nonnull %i.nw, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ii unwind label %bb.cz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread: ; preds = %bb.cw
  %i.nx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0554 = phi i1 [ false, %bb.cy ], [ true, %bb.cx ] ; 2 uses
  %i.ny = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nz = load ptr, ptr %29, align 8, !tbaa !18   ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ob = icmp eq ptr %i.nz, %i.oa
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662: ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef %i.nz) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %.0554, label %bb.da, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %.0554, label %bb.da, label %common.resume

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664
  %.pn592782 = phi { ptr, i32 } [ %i.nx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ], [ %i.ny, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662 ]
  call void @__cxa_free_exception(ptr %i.nw) #29
  br label %common.resume

bb.db:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.od = load <2 x ptr>, ptr %i.oc, align 8, !tbaa !166
  store <2 x ptr> %i.od, ptr %31, align 16, !tbaa !166
  %i.oe = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !42 ; 3 uses
  store ptr %i.og, ptr %i.oe, align 16, !tbaa !42
  %.not.i.i.i.i.i.i665 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i.i.i665, label %_ZN6duckdb12ValidityMaskC2ERKS0_.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 3 uses
  %i.oi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oj = load i32, ptr %i.oh, align 4, !tbaa !3
  %i.ok = add nsw i32 %i.oj, 1
  store i32 %i.ok, ptr %i.oh, align 4, !tbaa !3
  br label %_ZN6duckdb12ValidityMaskC2ERKS0_.exit

bb.de:                                            ; preds = %bb.dc
  %i.ol = atomicrmw volatile add ptr %i.oh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb12ValidityMaskC2ERKS0_.exit

_ZN6duckdb12ValidityMaskC2ERKS0_.exit:            ; preds = %bb.db, %bb.dd, %bb.de
  %i.om = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !359
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !359
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.oq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.op)
          to label %.noexc666 unwind label %bb.dg

.noexc666:                                        ; preds = %_ZN6duckdb12ValidityMaskC2ERKS0_.exit
  %i.or = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_16ArrowDecimalInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.oq)
          to label %_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit unwind label %bb.dg

_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit: ; preds = %.noexc666
  %i.os = invoke noundef zeroext i8 @_ZNK6duckdb16ArrowDecimalInfo11GetBitWidthEv(ptr noundef nonnull align 8 dereferenceable(16) %i.or)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit
  switch i8 %i.os, label %bb.dr [
    i8 0, label %bb.di
    i8 1, label %bb.dl
    i8 2, label %bb.do
  ]

bb.dg:                                            ; preds = %.noexc666, %_ZN6duckdb12ValidityMaskC2ERKS0_.exit
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dh:                                            ; preds = %_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.di:                                            ; preds = %bb.df
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !352
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !166
  %i.oz = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %.not.i669 = icmp eq i64 %6, -1
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !306
  %i.pc = add i64 %i.oz, %2
  %.0.v.i670 = select i1 %.not.i669, i64 %i.pc, i64 %6
  %i.pd = getelementptr [4 x i8], ptr %i.oy, i64 %.0.v.i670
  %i.pe = getelementptr [4 x i8], ptr %i.pd, i64 %i.pb
  invoke void @_ZN6duckdb14ConvertDecimalIPiEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %i.pe, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i8 noundef zeroext 0)
          to label %bb.dw unwind label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dl:                                            ; preds = %bb.df
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !352
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !166
  %i.pk = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %.not.i674 = icmp eq i64 %6, -1
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !306
  %i.pn = add i64 %i.pk, %2
  %.0.v.i675 = select i1 %.not.i674, i64 %i.pn, i64 %6
  %i.po = getelementptr [8 x i8], ptr %i.pj, i64 %.0.v.i675
  %i.pp = getelementptr [8 x i8], ptr %i.po, i64 %i.pm
  invoke void @_ZN6duckdb14ConvertDecimalIPlEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %i.pp, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i8 noundef zeroext 1)
          to label %bb.dw unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.do:                                            ; preds = %bb.df
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !352
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !166
  %i.pv = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
          to label %bb.dp unwind label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %.not.i679 = icmp eq i64 %6, -1
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !306
  %i.py = add i64 %i.pv, %2
  %.0.v.i680 = select i1 %.not.i679, i64 %i.py, i64 %6
  %i.pz = getelementptr [16 x i8], ptr %i.pu, i64 %.0.v.i680
  %i.qa = getelementptr [16 x i8], ptr %i.pz, i64 %i.px
  invoke void @_ZN6duckdb14ConvertDecimalIPNS_9hugeint_tEEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %i.qa, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i8 noundef zeroext 2)
          to label %bb.dw unwind label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dp
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dr:                                            ; preds = %bb.df
  %i.qc = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.ds unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit684.thread

end_hunk_0
begin_hunk_1_@_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb:bb.a
  br label %.body.thread812

.body.thread812:                                  ; preds = %bb.hw, %.body
  %.pn566.pn.pn815 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.abt, %bb.hw ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %46) #29
  br label %.body.thread

.body.thread:                                     ; preds = %.body.thread817.loopexit, %.body.thread817.loopexit.split-lp, %bb.hn, %bb.hm, %bb.hy, %.body.thread812, %bb.hu
  %.pn566.pn.pn.pn = phi { ptr, i32 } [ %.pn566.pn.pn815, %.body.thread812 ], [ %.pn566.pn.ph, %bb.hy ], [ %i.abq, %bb.hu ], [ %i.abe, %bb.hn ], [ %i.abe, %bb.hm ], [ %lpad.loopexit, %.body.thread817.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread817.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %44) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #29
  br label %bb.hz

bb.hz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718, %bb.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720, %.body.thread, %bb.ht, %bb.hc
  %.pn572.pn.pn = phi { ptr, i32 } [ %i.aak, %bb.hc ], [ %.pn572797, %bb.he ], [ %i.aam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit720 ], [ %.pn566.pn.pn.pn, %.body.thread ], [ %i.abp, %bb.ht ], [ %i.aam, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i718 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.ia

bb.ia:                                            ; preds = %bb.fw, %bb.gv, %bb.hz
  %.pn576.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn572.pn.pn, %bb.hz ], [ %.pn576.pn.pn.pn.pn, %bb.gv ], [ %i.yr, %bb.fw ]
  call void @_ZNSt6vectorIN6duckdb6VectorESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  br label %bb.ib

bb.ib:                                            ; preds = %bb.fv, %bb.ia, %bb.fu
  %.pn576.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yp, %bb.fu ], [ %.pn576.pn.pn.pn.pn.pn.pn, %bb.ia ], [ %i.yq, %bb.fv ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  br label %common.resume

bb.ic:                                            ; preds = %bb.al
  %i.abu = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.id unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742.thread

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %bb.ie unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.thread

bb.ie:                                            ; preds = %bb.id
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.if unwind label %bb.ig

bb.if:                                            ; preds = %bb.ie
  invoke void @__cxa_throw(ptr nonnull %i.abu, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ii unwind label %bb.ig

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742.thread: ; preds = %bb.ic
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.0 = phi i1 [ false, %bb.if ], [ true, %bb.ie ] ; 2 uses
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abx = load ptr, ptr %51, align 8, !tbaa !18  ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.abz = icmp eq ptr %i.abx, %i.aby
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737: ; preds = %bb.ig
  call void @_ZdlPv(ptr noundef %i.abx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i737
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  %i.aca = load ptr, ptr %49, align 8, !tbaa !18  ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.acc = icmp eq ptr %i.aca, %i.acb
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.thread: ; preds = %bb.id
  %i.acd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  %i.ace = load ptr, ptr %49, align 8, !tbaa !18  ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.acg = icmp eq ptr %i.ace, %i.acf
  br i1 %i.acg, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.thread
  call void @_ZdlPv(ptr noundef %i.ace) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739
  call void @_ZdlPv(ptr noundef %i.aca) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br i1 %.0, label %bb.ih, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br i1 %.0, label %bb.ih, label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740.thread
  %.pn604.pn821.ph = phi { ptr, i32 } [ %i.acd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740.thread ], [ %i.abv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742.thread ], [ %i.acd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #29
  br label %bb.ih

bb.ih:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742
  %.pn604.pn821 = phi { ptr, i32 } [ %i.abw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i740 ], [ %i.abw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit742 ], [ %.pn604.pn821.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.abu) #29
  br label %common.resume

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph899
  %lcmp.mod1087.not = icmp eq i64 %xtraiter1086, 0
  br i1 %lcmp.mod1087.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph899.epil.preheader

.lr.ph899.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa, %.lr.ph899.preheader
  %.0529897.epil.init = phi i32 [ 0, %.lr.ph899.preheader ], [ %spec.select608.1, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa ]
  %.0531896.epil.init = phi i64 [ %i.cq, %.lr.ph899.preheader ], [ %spec.select.1, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa ]
  %.0533895.epil.init = phi i64 [ 0, %.lr.ph899.preheader ], [ %i.dp, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa ]
  %lcmp.mod1088 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1088)
  %i.ach = zext nneg i32 %.0529897.epil.init to i64
  %i.aci = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !24
  %i.ack = zext i8 %i.acj to i32
  %i.acl = trunc nuw nsw i64 %.0531896.epil.init to i32
  %i.acm = lshr i32 %i.ack, %i.acl
  %i.acn = trunc nuw i32 %i.acm to i8
  %spec.select1025.epil = and i8 %i.acn, 1
  %i.aco = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0533895.epil.init
  store i8 %spec.select1025.epil, ptr %i.aco, align 1, !tbaa !24
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1043.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1081, 0
  br i1 %lcmp.mod1082.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1043.unr-lcssa, %.lr.ph.i.preheader
  %.03141.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fi, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1043.unr-lcssa ] ; 2 uses
  %lcmp.mod1083 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1083)
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.03141.i.epil.init ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %.val32.i.epil = load i64, ptr %i.acq, align 8, !tbaa !23
  %i.acr = call noundef i64 @llvm.bswap.i64(i64 %.val32.i.epil)
  %i.acs = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.03141.i.epil.init ; 2 uses
  store i64 %i.acr, ptr %i.acs, align 8, !tbaa !426
  %.val34.i.epil = load i64, ptr %i.acp, align 8, !tbaa !23
  %i.act = xor i64 %.val34.i.epil, 128
  %i.acu = call i64 @llvm.bswap.i64(i64 %i.act)
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  store i64 %i.acu, ptr %i.acv, align 8, !tbaa !428
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa: ; preds = %.lr.ph890
  %lcmp.mod1077.not = icmp eq i64 %xtraiter1076, 0
  br i1 %lcmp.mod1077.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph890.epil.preheader

.lr.ph890.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa, %.lr.ph890.preheader
  %.0538888.epil.init = phi i64 [ 0, %.lr.ph890.preheader ], [ %i.jh, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa ] ; 2 uses
  %lcmp.mod1078 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1078)
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.0538888.epil.init
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !23
  %i.acy = sdiv i64 %i.acx, 86400000
  %i.acz = trunc i64 %i.acy to i32
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0538888.epil.init
  store i32 %i.acz, ptr %i.ada, align 4, !tbaa !3
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa: ; preds = %.lr.ph887
  %lcmp.mod1072.not = icmp eq i64 %xtraiter1071, 0
  br i1 %lcmp.mod1072.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph887.epil.preheader

.lr.ph887.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa, %.lr.ph887.preheader
  %.0543885.epil.init = phi i64 [ 0, %.lr.ph887.preheader ], [ %i.kr, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa ] ; 2 uses
  %lcmp.mod1073 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1073)
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.0543885.epil.init
  %i.adc = load i64, ptr %i.adb, align 8, !tbaa !23
  %i.add = sdiv i64 %i.adc, 1000
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.0543885.epil.init
  store i64 %i.add, ptr %i.ade, align 8, !tbaa !433
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa: ; preds = %.lr.ph884
  %lcmp.mod1067.not = icmp eq i64 %xtraiter1066, 0
  br i1 %lcmp.mod1067.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph884.epil.preheader

.lr.ph884.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa, %.lr.ph884.preheader
  %.0549882.epil.init = phi i64 [ 0, %.lr.ph884.preheader ], [ %i.mo, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa ] ; 2 uses
  %lcmp.mod1068 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1068)
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %.0549882.epil.init
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !23
  %i.adh = sdiv i64 %i.adg, 1000
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.0549882.epil.init
  store i64 %i.adh, ptr %i.adi, align 8, !tbaa !436
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1049.unr-lcssa: ; preds = %.lr.ph881
  %lcmp.mod1062.not = icmp eq i64 %xtraiter1061, 0
  br i1 %lcmp.mod1062.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph881.epil.preheader

.lr.ph881.epil.preheader:                         ; preds = %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1049.unr-lcssa, %.lr.ph881.preheader
  %.0552879.epil.init = phi i64 [ 0, %.lr.ph881.preheader ], [ %60, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1049.unr-lcssa ] ; 2 uses
  %lcmp.mod1063 = trunc i64 %4 to i1
  call void @llvm.assume(i1 %lcmp.mod1063)
  %61 = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.0552879.epil.init
  %62 = load i64, ptr %61, align 8, !tbaa !23
  %63 = sdiv i64 %62, 1000
  %64 = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %.0552879.epil.init ; 3 uses
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %63, ptr %65, align 8, !tbaa !439
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 4
  store i32 0, ptr %66, align 4, !tbaa !441
  store i32 0, ptr %64, align 8, !tbaa !442
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit: ; preds = %bb.fq, %.lr.ph881.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1049.unr-lcssa, %.lr.ph884.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa, %.lr.ph887.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa, %.lr.ph890.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa, %bb.bc, %bb.aw, %.lr.ph.i.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1043.unr-lcssa, %.lr.ph899.epil.preheader, %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa, %bb.fd, %bb.ct, %bb.cj, %bb.bp, %bb.bf, %bb.bb, %bb.as, %bb.ep, %bb.eo, %bb.en, %bb.el, %.preheader.i, %.preheader38.i, %bb.cq, %bb.cr, %bb.cs, %bb.cu, %bb.cv, %bb.cg, %bb.ch, %bb.ci, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.bm, %bb.bn, %bb.bo, %bb.be, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, %bb.ee, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.at, %bb.ao, %bb.h
  ret void

bb.ii:                                            ; preds = %bb.if, %bb.hb, %bb.go, %bb.fn, %bb.dt, %bb.cy, %bb.cm, %bb.cc, %bb.bs, %bb.bi
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !387    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.137, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL20FlattenRunEndsSwitchIsEEvRNS_6VectorERNS_24ArrowRunEndEncodingStateEmmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %13 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %14 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %15 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %16 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %17 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %18 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %19 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %20 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %21 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %22 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %23 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %24 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %25 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %26 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %27 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %28 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %29 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %30 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %31 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %32 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !329   ; 2 uses
  switch i8 %i.d, label %bb.aat [
    i8 3, label %bb.b
    i8 5, label %bb.ba
    i8 7, label %bb.cy
    i8 9, label %bb.ew
    i8 -52, label %bb.gu
    i8 2, label %bb.iv
    i8 4, label %bb.ku
    i8 6, label %bb.ms
    i8 8, label %bb.oq
    i8 1, label %bb.qo
    i8 11, label %bb.sm
    i8 12, label %bb.uk
    i8 21, label %bb.wi
    i8 -56, label %bb.yj
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.f = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %31)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %31)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !466  ; 3 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %32)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !466  ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !419  ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.not14.i.i = icmp eq i64 %2, 0
  br i1 %.not14.i.i, label %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.013.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %bb.i ] ; 2 uses
  %.01012.i.i = phi i64 [ %.111.i.i, %.lr.ph.i.i ], [ %2, %bb.i ] ; 2 uses
  %i.n = add i64 %.01012.i.i, %.013.i.i
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !475
  %i.r = sext i16 %i.q to i64
  %.not.i.i = icmp ult i64 %3, %i.r               ; 2 uses
  %i.s = add nuw i64 %i.o, 1
  %.111.i.i = select i1 %.not.i.i, i64 %i.o, i64 %.01012.i.i ; 2 uses
  %.1.i.i = select i1 %.not.i.i, i64 %.013.i.i, i64 %i.s ; 5 uses
  %i.t = icmp ult i64 %.1.i.i, %.111.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i, !llvm.loop !477

_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i:      ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !353
  %.not.i128.i = icmp eq ptr %i.v, null
  br i1 %.not.i128.i, label %.preheader.i, label %.preheader154.i

_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.thread.i: ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !353
  %.not.i128203.i = icmp eq ptr %i.x, null
  br i1 %.not.i128203.i, label %.preheader.i, label %.loopexit.i

.preheader154.i:                                  ; preds = %_ZN6duckdbL12FindRunIndexIsEEmPKT_mm.exit.i
end_hunk_1
begin_hunk_2_@_ZN6duckdbL21TimestampTZConversionERNS_6VectorER10ArrowArraymllml:bb.a
bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ap = add nuw i64 %.02957, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.phthread-pre-split, !llvm.loop !837

.loopexit:                                        ; preds = %bb.k, %bb.b, %.preheader55, %.preheader
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  %.pn39.pn.ph = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn39.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn39.pn

bb.m:                                             ; preds = %bb.i, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef range(i64 1, 1000001) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %.not.i = icmp eq i64 %3, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !306
  %i.i = add i64 %4, %2
  %.0.v.i = select i1 %.not.i, i64 %i.i, i64 %3
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %.0.v.i
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.02228, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !838

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02228 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02228 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !441
  store i32 0, ptr %i.m, align 8, !tbaa !442
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02228
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.p, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  br i1 %i.r, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.146, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.v) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn27 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.s) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %.pn27, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn26

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24IntervalConversionMonthsERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %.not.i = icmp eq i64 %3, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !306
  %i.i = add i64 %4, %2
  %.0.v.i = select i1 %.not.i, i64 %i.i, i64 %3
  %i.j = getelementptr [4 x i8], ptr %i.f, i64 %.0.v.i
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %5, 1
  %i.l = icmp eq i64 %5, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.016.epil.init ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !441
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !439
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016.epil.init
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  store i32 %i.q, ptr %i.m, align 8, !tbaa !442
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.016 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.016 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !441
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !439
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  store i32 %i.v, ptr %i.r, align 8, !tbaa !442
  %i.w = or disjoint i64 %.016, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !441
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !439
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.w
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !442
  %i.ac = add nuw i64 %.016, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !839
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL31IntervalConversionMonthDayNanosERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %.not.i = icmp eq i64 %3, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !306
  %i.i = add i64 %4, %2
  %.0.v.i = select i1 %.not.i, i64 %i.i, i64 %3
  %i.j = getelementptr [16 x i8], ptr %i.f, i64 %.0.v.i
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %5, 1
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %22, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.020.epil.init ; 2 uses
  %8 = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.020.epil.init ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !840
  %11 = sdiv i64 %10, 1000
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %11, ptr %12, align 8, !tbaa !439
  %13 = load <2 x i32>, ptr %7, align 8, !tbaa !3
  store <2 x i32> %13, ptr %8, align 8, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %22, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %14 = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.020 ; 2 uses
  %15 = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.020 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %17 = load i64, ptr %16, align 8, !tbaa !840
  %18 = sdiv i64 %17, 1000
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %18, ptr %19, align 8, !tbaa !439
  %20 = load <2 x i32>, ptr %14, align 8, !tbaa !3
  store <2 x i32> %20, ptr %15, align 8, !tbaa !3
  %21 = or disjoint i64 %.020, 1                  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %21 ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !840
  %i.p = sdiv i64 %i.o, 1000
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !439
  %i.r = load <2 x i32>, ptr %i.l, align 8, !tbaa !3
  store <2 x i32> %i.r, ptr %i.m, align 8, !tbaa !3
  %22 = add nuw i64 %.020, 2                      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !842
}

declare noundef zeroext i8 @_ZNK6duckdb16ArrowDecimalInfo11GetBitWidthEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConvertDecimalIPiEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef zeroext %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !329   ; 2 uses
  switch i8 %i.b, label %bb.m [
    i8 5, label %bb.b
    i8 7, label %bb.d
    i8 9, label %bb.g
    i8 -52, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !419
  %.not133 = icmp eq i64 %3, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.b, %bb.c
  %.072128 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.e = load ptr, ptr %7, align 8, !tbaa !353    ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph129
  %i.f = lshr i64 %.072128, 6
  %i.g = and i64 %.072128, 63
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = shl nuw i64 1, %i.g
  %i.k = and i64 %i.i, %i.j
  %.not119 = icmp eq i64 %i.k, 0
  br i1 %.not119, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.lr.ph129, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.072128
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.072128
  %i.o = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIisEEbT_RT0_b(i32 noundef %i.m, ptr noundef nonnull align 2 dereferenceable(2) %i.n, i1 noundef zeroext false) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.p = add nuw i64 %.072128, 1                  ; 2 uses
  %exitcond139.not = icmp eq i64 %i.p, %3
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph129, !llvm.loop !843

bb.d:                                             ; preds = %bb.a
  %i.q = icmp eq i8 %8, 0
  br i1 %i.q, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !419
  %.not132 = icmp eq i64 %3, 0
  br i1 %.not132, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.e, %bb.f
  %.074126 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ] ; 5 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !353    ; 2 uses
  %.not.i80 = icmp eq ptr %i.t, null
  br i1 %.not.i80, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82: ; preds = %.lr.ph127
  %i.u = lshr i64 %.074126, 6
  %i.v = and i64 %.074126, 63
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  %i.y = shl nuw i64 1, %i.v
  %i.z = and i64 %i.x, %i.y
  %.not118 = icmp eq i64 %i.z, 0
  br i1 %.not118, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread: ; preds = %.lr.ph127, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.074126
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.074126
  %i.ad = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIiiEEbT_RT0_b(i32 noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ac, i1 noundef zeroext false) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread
  %i.ae = add nuw i64 %.074126, 1                 ; 2 uses
  %exitcond138.not = icmp eq i64 %i.ae, %3
  br i1 %exitcond138.not, label %.loopexit, label %.lr.ph127, !llvm.loop !844

bb.g:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %8, 1
  br i1 %i.af, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !419
  %.not131 = icmp eq i64 %3, 0
  br i1 %.not131, label %.loopexit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.h, %bb.i
  %.075124 = phi i64 [ %i.at, %bb.i ], [ 0, %bb.h ] ; 5 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !353   ; 2 uses
  %.not.i86 = icmp eq ptr %i.ai, null
  br i1 %.not.i86, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88: ; preds = %.lr.ph125
  %i.aj = lshr i64 %.075124, 6
  %i.ak = and i64 %.075124, 63
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23
  %i.an = shl nuw i64 1, %i.ak
  %i.ao = and i64 %i.am, %i.an
  %.not117 = icmp eq i64 %i.ao, 0
  br i1 %.not117, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread: ; preds = %.lr.ph125, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.075124
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.075124
  %i.as = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIilEEbT_RT0_b(i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i1 noundef zeroext false) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread
  %i.at = add nuw i64 %.075124, 1                 ; 2 uses
  %exitcond137.not = icmp eq i64 %i.at, %3
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph125, !llvm.loop !845

bb.j:                                             ; preds = %bb.a
  %i.au = icmp eq i8 %8, 2
  br i1 %i.au, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !419
  %.not130 = icmp eq i64 %3, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.073123 = phi i64 [ %i.bi, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !353   ; 2 uses
  %.not.i92 = icmp eq ptr %i.ax, null
  br i1 %.not.i92, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94: ; preds = %.lr.ph
  %i.ay = lshr i64 %.073123, 6
  %i.az = and i64 %.073123, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !23
  %i.bc = shl nuw i64 1, %i.az
  %i.bd = and i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.073123
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.073123
  %i.bh = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIiNS_9hugeint_tEEEbT_RT0_b(i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i1 noundef zeroext false) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread
  %i.bi = add nuw i64 %.073123, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !846

bb.m:                                             ; preds = %bb.a
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.263, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bk = load i8, ptr %i.a, align 1, !tbaa !329
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i8 noundef zeroext %i.bk)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.t unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread: ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.o ]  ; 2 uses
  %i.bm = landingpad { ptr, i32 }
end_hunk_2
