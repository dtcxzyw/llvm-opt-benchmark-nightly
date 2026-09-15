Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io16PROJStringParser7Private15processAxisSwapERNS1_4StepERKNS0_6common13UnitOfMeasureEiNS3_8AxisTypeEb:bb.a
  %9 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %13 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.289", align 16 ; 8 uses
  %15 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 8 uses
  %16 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %19 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 9 uses
  %20 = alloca %"class.std::shared_ptr.289", align 16 ; 10 uses
  %21 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 9 uses
  %22 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %23 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 10 uses
  %24 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 10 uses
  %25 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %28 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 13 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %31 = alloca [2 x %"class.dropbox::oxygen::nn.292"], align 16 ; 12 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::vector.702", align 8  ; 11 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.m = tail call noundef i32 @_ZNK5osgeo4proj6common13UnitOfMeasure4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #45
  %i.n = icmp eq i32 %i.m, 2                      ; 17 uses
  br i1 %i.n, label %bb.b, label %.loopexit784

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !582  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !582  ; 2 uses
  %.not36.i = icmp eq ptr %i.p, %i.r
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge.i
  %.sroa.027.037.i = phi ptr [ %i.t, %.critedge.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.s = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.037.i, ptr noundef nonnull @.str.513) #41
  br i1 %i.s, label %.noexc.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.027.037.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !582  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !582  ; 2 uses
  %.not3338.i = icmp eq ptr %i.v, %i.x
  br i1 %.not3338.i, label %.loopexit784, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i, %.critedge22.i
  %.sroa.023.039.i = phi ptr [ %i.z, %.critedge22.i ], [ %i.v, %._crit_edge.i ] ; 3 uses
  %i.y = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.039.i, ptr noundef nonnull @.str.513) #41
  br i1 %i.y, label %.noexc.i, label %.critedge22.i

.critedge22.i:                                    ; preds = %.lr.ph41.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.039.i, i64 72 ; 2 uses
  %.not33.i = icmp eq ptr %i.z, %i.x
  br i1 %.not33.i, label %.loopexit784, label %.lr.ph41.i

.noexc.i:                                         ; preds = %.lr.ph.i, %.lr.ph41.i
  %.sroa.023.039.lcssa.sink.i = phi ptr [ %.sroa.023.039.i, %.lr.ph41.i ], [ %.sroa.027.037.i, %.lr.ph.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.023.039.lcssa.sink.i, i64 64
  store i8 1, ptr %i.aa, align 8, !tbaa !584
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ab, ptr %11, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #41
  store i64 24, ptr %i.l, align 8, !tbaa !165
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %11, align 8, !tbaa !163
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !165 ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ac, ptr noundef nonnull align 1 dereferenceable(24) @.str.514, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !164
  %i.af = load ptr, ptr %11, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ah, ptr %12, align 8, !tbaa !160
  store i8 86, ptr %i.ah, align 8, !tbaa !166
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.ai, align 8, !tbaa !164
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.aj, align 1, !tbaa !166
  br label %.critedge292

.loopexit784:                                     ; preds = %.critedge22.i, %bb.a, %._crit_edge.i
  %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E._ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E = phi ptr [ @_ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, %bb.a ], [ @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, %._crit_edge.i ], [ @_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E, %.critedge22.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.ak, ptr %11, align 8, !tbaa !160
  %i.al = load ptr, ptr %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E._ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, align 8, !tbaa !163 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %_ZN5osgeo4proj2cs8AxisName9LongitudeB5cxx11E._ZN5osgeo4proj2cs8AxisName7EastingB5cxx11E, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #41
  store i64 %i.an, ptr %i.k, align 8, !tbaa !165
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i346, label %._crit_edge.i.i345

.noexc.i346:                                      ; preds = %.loopexit784
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %11, align 8, !tbaa !163
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !165
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !166
  br label %._crit_edge.i.i345

._crit_edge.i.i345:                               ; preds = %.noexc.i346, %.loopexit784
  %i.ar = phi ptr [ %i.ap, %.noexc.i346 ], [ %i.ak, %.loopexit784 ] ; 2 uses
  switch i64 %i.an, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %.critedge290
  ]

bb.c:                                             ; preds = %._crit_edge.i.i345
  %i.as = load i8, ptr %i.al, align 1, !tbaa !166
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !166
  br label %.critedge290

bb.d:                                             ; preds = %._crit_edge.i.i345
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %.critedge290

.critedge290:                                     ; preds = %._crit_edge.i.i345, %bb.c, %bb.d
  %i.at = load i64, ptr %i.k, align 8, !tbaa !165 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !164
  %i.av = load ptr, ptr %11, align 8, !tbaa !163
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ax, ptr %12, align 8, !tbaa !160
  %_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, align 8
  %_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E, align 8
  %i.ay = select i1 %i.n, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E.val, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E.val ; 2 uses
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3lonB5cxx11E, i64 8), align 8
  %.val769 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1EB5cxx11E, i64 8), align 8
  %i.az = select i1 %i.n, i64 %.val, i64 %.val769 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  store i64 %i.az, ptr %i.j, align 8, !tbaa !165
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i353, label %._crit_edge.i.i352

.noexc.i353:                                      ; preds = %.critedge290
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc354 unwind label %bb.dw ; 2 uses

.noexc354:                                        ; preds = %.noexc.i353
  store ptr %i.bb, ptr %12, align 8, !tbaa !163
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !165
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !166
  br label %._crit_edge.i.i352

._crit_edge.i.i352:                               ; preds = %.noexc354, %.critedge290
  %i.bd = phi ptr [ %i.bb, %.noexc354 ], [ %i.ax, %.critedge290 ] ; 2 uses
  switch i64 %i.az, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i352
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !166
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !166
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i352
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ay, i64 %i.az, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i352
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !165 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !164
  %i.bh = load ptr, ptr %12, align 8, !tbaa !163
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  br label %.critedge292

.critedge292:                                     ; preds = %bb.g, %.noexc.i
  %i.bj = phi i1 [ false, %bb.g ], [ true, %.noexc.i ] ; 3 uses
  %37 = icmp eq i32 %5, 1
  %i.bk = icmp eq i32 %5, 2                       ; 2 uses
  %_ZN5osgeo4proj2cs13AxisDirection5NORTHE._ZN5osgeo4proj2cs13AxisDirection4EASTE = select i1 %i.bk, ptr @_ZN5osgeo4proj2cs13AxisDirection5NORTHE, ptr @_ZN5osgeo4proj2cs13AxisDirection4EASTE
  %i.bl = select i1 %37, ptr @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE, ptr %_ZN5osgeo4proj2cs13AxisDirection5NORTHE._ZN5osgeo4proj2cs13AxisDirection4EASTE
  %i.bm = select i1 %i.n, ptr @_ZN5osgeo4proj2cs13AxisDirection4EASTE, ptr %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.bn = add i32 %5, -3
  %or.cond = icmp ult i32 %i.bn, -2
  %or.cond294.not = or i1 %or.cond, %i.n          ; 3 uses
  br i1 %or.cond294.not, label %bb.n, label %bb.h

bb.h:                                             ; preds = %.critedge292
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %16, double noundef 9.000000e+01, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.i unwind label %bb.dx

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.j unwind label %bb.dy

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !209 ; 2 uses
  %i.bq = load <2 x ptr>, ptr %15, align 16, !tbaa !208
  store <2 x ptr> %i.bq, ptr %14, align 16, !tbaa !208
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !213
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

bb.m:                                             ; preds = %bb.k
  %i.bv = atomicrmw volatile add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

bb.n:                                             ; preds = %.critedge292
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.bx = load <2 x ptr>, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, align 16, !tbaa !208
  store <2 x ptr> %i.bx, ptr %14, align 16, !tbaa !208
  %.not.i.i.i356 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i356, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i357 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i357, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !213
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit

_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41, !noalias !2123
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %.noexc359 unwind label %bb.dz

.noexc359:                                        ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.r unwind label %bb.s, !noalias !2123

bb.r:                                             ; preds = %.noexc359
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis6createERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_13AxisDirectionERKNS0_6common13UnitOfMeasureERKSt10shared_ptrINS1_8MeridianEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.292") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc359
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41, !noalias !2123
  br label %.body

bb.t:                                             ; preds = %bb.r
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41, !noalias !2123
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !209 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ch, align 8, !tbaa !211
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !212
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #41, !inline_history !41
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !156
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #41, !inline_history !41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i360 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i360, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.ck, %bb.x ], [ %i.cu, %bb.y ]
  %i.cv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cv, label %bb.z, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.t, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  br i1 %or.cond294.not, label %.critedge298, label %.critedge296

.critedge296:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i361 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i361, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.critedge296
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cy, align 8, !tbaa !211
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !212
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !156
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #41, !inline_history !42
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !156
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #41, !inline_history !42
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i362 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i362, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i = phi i32 [ %i.db, %bb.ad ], [ %i.dl, %bb.ae ]
  %i.dm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dm, label %bb.af, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit, !prof !214

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit: ; preds = %.critedge296, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.af
  call void @_ZN5osgeo4proj6common5AngleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %.critedge298

.critedge298:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.dn, ptr %17, align 8, !tbaa !160
  br i1 %i.bj, label %.noexc.i364, label %bb.ag

.noexc.i364:                                      ; preds = %.critedge298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  store i64 23, ptr %i.i, align 8, !tbaa !165
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc365 unwind label %bb.ee ; 2 uses

.noexc365:                                        ; preds = %.noexc.i364
  store ptr %i.do, ptr %17, align 8, !tbaa !163
  %i.dp = load i64, ptr %i.i, align 8, !tbaa !165 ; 3 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.do, ptr noundef nonnull align 1 dereferenceable(23) @.str.516, i64 23, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !164
  %i.dr = load ptr, ptr %17, align 8, !tbaa !163
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp
  store i8 0, ptr %i.ds, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.dt, ptr %18, align 8, !tbaa !160
  store i8 85, ptr %i.dt, align 8, !tbaa !166
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.du, align 8, !tbaa !164
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.dv, align 1, !tbaa !166
  br label %.critedge303

bb.ag:                                            ; preds = %.critedge298
  %_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, align 8
  %_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E, align 8
  %i.dw = select i1 %i.n, ptr %_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E.val, ptr %_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E.val ; 2 uses
  %.val770 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8LatitudeB5cxx11E, i64 8), align 8
  %.val771 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs8AxisName8NorthingB5cxx11E, i64 8), align 8
  %i.dx = select i1 %i.n, i64 %.val770, i64 %.val771 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  store i64 %i.dx, ptr %i.h, align 8, !tbaa !165
  %i.dy = icmp ugt i64 %i.dx, 15
  br i1 %i.dy, label %.noexc.i368, label %._crit_edge.i.i367

.noexc.i368:                                      ; preds = %bb.ag
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc369 unwind label %bb.ed ; 2 uses

.noexc369:                                        ; preds = %.noexc.i368
  store ptr %i.dz, ptr %17, align 8, !tbaa !163
  %i.ea = load i64, ptr %i.h, align 8, !tbaa !165
  store i64 %i.ea, ptr %i.dn, align 8, !tbaa !166
  br label %._crit_edge.i.i367

._crit_edge.i.i367:                               ; preds = %.noexc369, %bb.ag
  %i.eb = phi ptr [ %i.dz, %.noexc369 ], [ %i.dn, %bb.ag ] ; 2 uses
  switch i64 %i.dx, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %.critedge301
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i367
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !166
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !166
  br label %.critedge301

bb.ai:                                            ; preds = %._crit_edge.i.i367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.dw, i64 %i.dx, i1 false)
  br label %.critedge301

.critedge301:                                     ; preds = %._crit_edge.i.i367, %bb.ah, %bb.ai
  %i.ed = load i64, ptr %i.h, align 8, !tbaa !165 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !164
  %i.ef = load ptr, ptr %17, align 8, !tbaa !163
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 0, ptr %i.eg, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.eh, ptr %18, align 8, !tbaa !160
  %_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, align 8
  %_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E.val = load ptr, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E, align 8
  %i.ei = select i1 %i.n, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E.val, ptr %_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E.val ; 2 uses
  %.val772 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation3latB5cxx11E, i64 8), align 8
  %.val773 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2cs16AxisAbbreviation1NB5cxx11E, i64 8), align 8
  %i.ej = select i1 %i.n, i64 %.val772, i64 %.val773 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i64 %i.ej, ptr %i.g, align 8, !tbaa !165
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %.noexc.i376, label %._crit_edge.i.i375

.noexc.i376:                                      ; preds = %.critedge301
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc377 unwind label %bb.ef ; 2 uses

.noexc377:                                        ; preds = %.noexc.i376
  store ptr %i.el, ptr %18, align 8, !tbaa !163
  %i.em = load i64, ptr %i.g, align 8, !tbaa !165
  store i64 %i.em, ptr %i.eh, align 8, !tbaa !166
  br label %._crit_edge.i.i375

._crit_edge.i.i375:                               ; preds = %.noexc377, %.critedge301
  %i.en = phi ptr [ %i.el, %.noexc377 ], [ %i.eh, %.critedge301 ] ; 2 uses
  switch i64 %i.ej, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i375
  %i.eo = load i8, ptr %i.ei, align 1, !tbaa !166
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !166
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i375
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.ei, i64 %i.ej, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i375
  %i.ep = load i64, ptr %i.g, align 8, !tbaa !165 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !164
  %i.er = load ptr, ptr %18, align 8, !tbaa !163
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  br label %.critedge303

.critedge303:                                     ; preds = %bb.al, %.noexc365
  %38 = icmp ne i32 %5, 1                         ; 2 uses
  %i.et = or i1 %38, %i.n
  %i.eu = select i1 %i.et, ptr @_ZN5osgeo4proj2cs13AxisDirection5NORTHE, ptr @_ZN5osgeo4proj2cs13AxisDirection5SOUTHE
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  br i1 %i.n, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.critedge303
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.ew = load <2 x ptr>, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, align 16, !tbaa !208
  store <2 x ptr> %i.ew, ptr %20, align 16, !tbaa !208
  %.not.i.i.i379 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i379, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i380 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i380, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !213
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.ap:                                            ; preds = %bb.an
  %i.fb = atomicrmw volatile add ptr %i.ex, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.aq:                                            ; preds = %.critedge303
  br i1 %38, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %22, double noundef 1.800000e+02, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.as unwind label %bb.eg

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.at unwind label %bb.eh

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fd = load <2 x ptr>, ptr %21, align 16, !tbaa !208
  store ptr null, ptr %i.fc, align 8, !tbaa !209
  store <2 x ptr> %i.fd, ptr %20, align 16, !tbaa !208
  store ptr null, ptr %21, align 16, !tbaa !402
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.au:                                            ; preds = %bb.aq
  br i1 %i.bk, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %24, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure6DEGREEE)
          to label %bb.aw unwind label %.split.thread

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.288") align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %bb.ax unwind label %.split.thread766

bb.ax:                                            ; preds = %bb.aw
  %i.fe = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !209 ; 2 uses
  %i.fg = load <2 x ptr>, ptr %23, align 16, !tbaa !208
  store <2 x ptr> %i.fg, ptr %20, align 16, !tbaa !208
  %.not.i.i.i382 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i382, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 3 uses
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i383 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i383, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !213
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.ba:                                            ; preds = %bb.ay
  %i.fl = atomicrmw volatile add ptr %i.fh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.bb:                                            ; preds = %bb.au
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.fn = load <2 x ptr>, ptr @_ZN5osgeo4proj2ioL12nullMeridianE, align 16, !tbaa !208
  store <2 x ptr> %i.fn, ptr %20, align 16, !tbaa !208
  %.not.i.i.i385 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i385, label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i386 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i.i.i386, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !213
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !213
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

bb.be:                                            ; preds = %bb.bc
  %i.fs = atomicrmw volatile add ptr %i.fo, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381

_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381: ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ax, %bb.ap, %bb.ao, %bb.am, %bb.at
  %.0184 = phi i1 [ false, %bb.ba ], [ true, %bb.at ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.ao ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.bb ], [ false, %bb.bd ], [ false, %bb.be ] ; 3 uses
  %.0175 = phi i1 [ true, %bb.ba ], [ false, %bb.at ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.ao ], [ true, %bb.ax ], [ true, %bb.az ], [ false, %bb.bb ], [ false, %bb.bd ], [ false, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41, !noalias !2124
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc388 unwind label %bb.ei

.noexc388:                                        ; preds = %_ZNSt10shared_ptrIN5osgeo4proj2cs8MeridianEEC2ERKS4_.exit381
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.bf unwind label %bb.bg, !noalias !2124

bb.bf:                                            ; preds = %.noexc388
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis6createERKNS0_4util11PropertyMapERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_13AxisDirectionERKNS0_6common13UnitOfMeasureERKSt10shared_ptrINS1_8MeridianEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.292") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.bh unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.noexc388
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !2124
  br label %.body389

bb.bh:                                            ; preds = %bb.bf
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41, !noalias !2124
  %i.fv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !209 ; 8 uses
  %.not.i.i392 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i392, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.fx, align 8, !tbaa !211
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !212
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !156
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #41, !inline_history !41
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !156
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #41, !inline_history !41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396

bb.bk:                                            ; preds = %bb.bi
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i393 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i393, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394

bb.bm:                                            ; preds = %bb.bk
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i395 = phi i32 [ %i.ga, %bb.bl ], [ %i.gk, %bb.bm ]
  %i.gl = icmp eq i32 %.0.i.i.i.i395, 1
  br i1 %i.gl, label %bb.bn, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396, !prof !214

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396

_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396: ; preds = %bb.bh, %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i394, %bb.bn
  br i1 %.0175, label %.critedge305, label %.critedge307

.critedge305:                                     ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs8MeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit396
  %i.gm = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i397 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i397, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401, label %bb.bo

bb.bo:                                            ; preds = %.critedge305
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gp = load atomic i64, ptr %i.go acquire, align 8 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 4294967297
  %i.gr = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.gq, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.go, align 8, !tbaa !211
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 0, ptr %i.gs, align 4, !tbaa !212
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !156
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #41, !inline_history !42
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !156
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #41, !inline_history !42
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs8MeridianEEED2Ev.exit401

bb.bq:                                            ; preds = %bb.bo
  %i.gz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i398 = icmp eq i8 %i.gz, 0
  br i1 %.not.i.i.i.i398, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ha = add nsw i32 %i.gr, -1
  store i32 %i.ha, ptr %i.go, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399

bb.bs:                                            ; preds = %bb.bq
  %i.hb = atomicrmw volatile add ptr %i.go, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i399: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i400 = phi i32 [ %i.gr, %bb.br ], [ %i.hb, %bb.bs ]
  %i.hc = icmp eq i32 %.0.i.i.i.i.i400, 1
end_hunk_0
