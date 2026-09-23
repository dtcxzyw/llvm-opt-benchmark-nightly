Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvMs0_NtNtCshfaCWemluAW_4sprs6sparse12triplet_iterINtB8_10TriMatIterINtNtNtCslwFuT2d6ECx_4core5slice4iter4IterjEB16_IB17_dEE7into_csjECskcxRuJ53GpR_9rustworkx:bb.a
  %i.em = load i64, ptr %i.el, align 8, !noundef !67 ; 4 uses
  %i.en = icmp ugt i64 %i.em, %.sroa.0123.0241
  br i1 %i.en, label %.lr.ph.preheader, label %.loopexit189

.lr.ph.preheader:                                 ; preds = %bb.at
  %i.eo = xor i64 %.sroa.0123.0241, -1
  %i.ep = add i64 %i.em, %i.eo
  %i.eq = add i64 %.sroa.0123.0241, 1
  %i.er = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.aa)
  %i.es = xor i64 %.sroa.0123.0241, -1
  %i.et = add i64 %i.er, %i.es
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %i.et)
  %i.ev = add i64 %i.eu, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ev, 5
  br i1 %min.iters.check, label %.lr.ph.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ew = and i64 %i.ev, 3                        ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = select i1 %i.ex, i64 4, i64 %i.ew
  %n.vec = sub i64 %i.ev, %i.ey                   ; 2 uses
  %i.ez = add i64 %.sroa.0123.0241, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.06.2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.0123.0241
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.fc, align 8
  store <2 x i64> %broadcast.splat, ptr %i.fd, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %.lr.ph.preheader22, label %vector.body, !llvm.loop !516

.lr.ph.preheader22:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.0123.2239.ph = phi i64 [ %.sroa.0123.0241, %.lr.ph.preheader ], [ %i.ez, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader22, %bb.au
  %.sroa.0123.2239 = phi i64 [ %i.ff, %bb.au ], [ %.sroa.0123.2239.ph, %.lr.ph.preheader22 ]
  %i.ff = add nuw i64 %.sroa.0123.2239, 1         ; 5 uses
  %i.fg = icmp ult i64 %i.ff, %i.aa
  br i1 %i.fg, label %bb.au, label %.invoke

.invoke:                                          ; preds = %bb.ai, %bb.an, %bb.ak, %bb.aj, %.lr.ph, %.lr.ph249
  %i.fh = phi i64 [ %i.ff, %.lr.ph ], [ %i.dk, %.lr.ph249 ], [ %.sroa.06.0243, %bb.an ], [ %.sroa.027.0242, %bb.ak ], [ %i.dn, %bb.aj ], [ %i.y, %bb.ai ]
  %i.fi = phi i64 [ %i.aa, %.lr.ph ], [ %i.aa, %.lr.ph249 ], [ %i.y, %bb.aj ], [ %i.y, %bb.ak ], [ %i.y, %bb.an ], [ %i.y, %bb.ai ]
  %i.fj = phi ptr [ @36, %.lr.ph ], [ @30, %.lr.ph249 ], [ @34, %bb.an ], [ @32, %bb.ak ], [ @31, %bb.aj ], [ @35, %bb.ai ]
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %i.fh, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #61
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

bb.au:                                            ; preds = %.lr.ph
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ff
  store i64 %.sroa.06.2, ptr %i.fk, align 8
  %exitcond.not = icmp eq i64 %i.ff, %i.em
  br i1 %exitcond.not, label %.loopexit189, label %.lr.ph, !llvm.loop !517

bb.av:                                            ; preds = %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i
  %i.fl = load i64, ptr %.sroa.0106.0234, align 8, !noalias !542, !noundef !67
  %i.fm = load i64, ptr %.sroa.7108.0233, align 8, !noalias !542, !noundef !67
  %i.fn = load double, ptr %.sroa.12.0232, align 8, !alias.scope !543, !noundef !67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.fo = load i64, ptr %i.b, align 8, !range !70, !alias.scope !544, !noalias !545, !noundef !67
  %i.fp = icmp eq i64 %i.p, %i.fo
  br i1 %i.fp, label %bb.aw, label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RNvMs4_NtCs87CvPiUlf0m_5alloc7raw_vecINtB5_6RawVecTjjdEE8grow_oneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #62
          to label %._RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i_crit_edge unwind label %bb.d

._RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i_crit_edge: ; preds = %bb.aw
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !544, !noalias !545
  br label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %._RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i_crit_edge, %bb.av
  %i.fq = phi ptr [ %.pre, %._RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterjENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i_crit_edge ], [ %i.o, %bb.av ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %i.p ; 3 uses
  store i64 %i.fl, ptr %i.fr, align 8, !noalias !544
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %i.fm, ptr %.sroa.4113.0..sroa_idx, align 8, !noalias !544
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store double %i.fn, ptr %.sroa.5114.0..sroa_idx, align 8, !noalias !544
  %i.fs = add i64 %i.p, 1                         ; 3 uses
  store i64 %i.fs, ptr %i.d, align 8, !alias.scope !544, !noalias !545
  %i.ft = add i64 %.sroa.0.0235, 1                ; 2 uses
  %i.fu = icmp eq ptr %spec.select187236, %.val3.i ; 2 uses
  %spec.select187.idx = select i1 %i.fu, i64 0, i64 8
  %spec.select187 = getelementptr inbounds nuw i8, ptr %spec.select187236, i64 %spec.select187.idx
  %i.fv = icmp eq ptr %.sroa.7108.1237, %.val1.i  ; 2 uses
  %.sroa.7108.1.idx = select i1 %i.fv, i64 0, i64 8
  %.sroa.7108.1 = getelementptr inbounds nuw i8, ptr %.sroa.7108.1237, i64 %.sroa.7108.1.idx
  %i.fw = icmp eq ptr %i.s, %.val5.i
  br i1 %i.fw, label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i._crit_edge, label %_RNvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjjdEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i104, %.thread, %bb.b
  %.pn68162 = phi { ptr, i32 } [ %.pn66, %bb.b ], [ %.pn68163, %.thread ], [ %.pn68163, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i104 ]
  resume { ptr, i32 } %.pn68162

.thread:                                          ; preds = %bb.c, %bb.d, %bb.b
  %.pn68163 = phi { ptr, i32 } [ %.pn66, %bb.b ], [ %i.n, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %.val79 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.fx = icmp eq i64 %.val79, 0
  br i1 %i.fx, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjjdEEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i104

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i104: ; preds = %.thread
  %.val80 = load ptr, ptr %i.c, align 8, !nonnull !67, !noundef !67
  %i.fy = mul nuw i64 %.val79, 24
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val80, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecTjjdEEECskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs0_NtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !range !78, !noundef !67
  switch i8 %i.c, label %default.unreachable8 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx.exit
    i8 2, label %bb.c
  ]

default.unreachable8:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !range !68, !noundef !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  store i64 0, ptr %1, align 8
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr %i.f, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtCsj855HSQkgLM_15crossbeam_epoch7default9collector()
  %i.i = tail call noundef ptr @_RNvMs1_NtCsj855HSQkgLM_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
  %.pre = load i8, ptr %i.b, align 8, !range !78
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.i, ptr %0, align 8
  store i8 1, ptr %i.b, align 8
  switch i8 %.pre, label %default.unreachable8 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.i
  ], !prof !546

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCscQOBX8uaZYv_3std3sys12thread_local6native4lazy7destroyNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2072
  %i.l = load i64, ptr %i.k, align 8, !noundef !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !67 ; 2 uses
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8
  %i.p = icmp eq i64 %i.l, 0
  %i.q = icmp eq i64 %i.n, 1
  %or.cond.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx.exit, !prof !79

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCsj855HSQkgLM_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.j)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx.exit

bb.i:                                             ; preds = %bb.e
  %i.r = call fastcc noundef ptr @_RNvYNtNtNtNtCscQOBX8uaZYv_3std3sys5stdio4unix6StderrNtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 87 to ptr))
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskcxRuJ53GpR_9rustworkx(ptr %i.r)
  call void @_RNvNtCscQOBX8uaZYv_3std7process5abort() #61
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsj855HSQkgLM_15crossbeam_epoch9collector11LocalHandleECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ null, %bb.c ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.01.i = alloca i64, align 8               ; 9 uses
  %.sroa.06.i = alloca i64, align 8               ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !576, !noalias !575, !nonnull !67, !noundef !67 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !577
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !577
  store ptr %i.c, ptr %i.b, align 8, !alias.scope !575, !noalias !576
  %3 = load <4 x i64>, ptr %2, align 8            ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load <4 x i64>, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  store i64 0, ptr %.sroa.06.i, align 8, !noalias !580
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  store i64 0, ptr %.sroa.01.i, align 8, !noalias !580
  %5 = extractelement <4 x i64> %3, i64 0
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 1)
  switch i64 %i.f, label %bb.b [
    i64 0, label %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i
    i64 1, label %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.i
    i64 2, label %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i
  ]

bb.b:                                             ; preds = %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.j
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.1.i, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1173) #60, !noalias !581
  unreachable

bb.d:                                             ; preds = %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit8.i.i.1.i
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0.3.1.i, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1174) #60, !noalias !582
  unreachable

_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !583
  store <4 x i64> %3, ptr %i.a, align 8, !noalias !583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %i.g = call noundef i64 @_RNvNtCshByAT0BfsDP_7ndarray9dimension8do_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1173), !noalias !585
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !586, !noalias !587, !nonnull !67, !noundef !67
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !alias.scope !586, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !583
  %i.j = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !579, !noalias !585, !noundef !67
  %i.k = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !579, !noalias !585, !noundef !67
  store i64 1, ptr %.sroa.06.i, align 8, !noalias !583
  br label %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i

bb.e:                                             ; preds = %bb.i
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0..1.i, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1175) #60, !noalias !588
  unreachable

_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.i: ; preds = %bb.a
  %6 = extractelement <4 x i64> %3, i64 1         ; 2 uses
  %i.l = icmp slt i64 %6, 0
  %.pre.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !579, !noalias !585 ; 2 uses
  %i.m = select i1 %i.l, i64 %.pre.i.i.i, i64 0
  %spec.select.i.i.i = add i64 %i.m, %6           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.n = icmp ult i64 %spec.select.i.i.i, %.pre.i.i.i
  br i1 %i.n, label %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.g, !prof !77

bb.f:                                             ; preds = %bb.h
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..1.i, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1177) #60, !noalias !591
  unreachable

bb.g:                                             ; preds = %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.1.i, %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.i
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @507, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1176) #60, !noalias !592
  unreachable

_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.i
  %i.o = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !593, !noalias !594, !noundef !67
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !595, !noalias !596
  %i.p = mul i64 %i.o, %spec.select.i.i.i
  %i.q = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.p ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !alias.scope !579, !noalias !585
  br label %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i

_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i, %bb.a
  %i.r = phi ptr [ %i.i, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i ], [ %i.q, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.05.1.i = phi i64 [ %i.j, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i ], [ 0, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 1, %bb.a ]
  %.sroa.0.1.i = phi i64 [ %i.k, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i ], [ 0, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ 0, %bb.a ]
  %.sink.i.i.i = phi ptr [ %.sroa.01.i, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.i ], [ %.sroa.06.i, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i ], [ %.sroa.01.i, %bb.a ]
  store i64 1, ptr %.sink.i.i.i, align 8, !noalias !583
  %7 = extractelement <4 x i64> %4, i64 0
  %i.s = call i64 @llvm.usub.sat.i64(i64 %7, i64 1)
  switch i64 %i.s, label %bb.b [
    i64 0, label %bb.j
    i64 1, label %bb.i
    i64 2, label %bb.h
  ]

bb.h:                                             ; preds = %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..1.i = load i64, ptr %.sroa.01.i, align 8, !noalias !597, !noundef !67 ; 2 uses
  %i.t = icmp eq i64 %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..1.i, 0
  br i1 %i.t, label %_RINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj2_EdE10slice_moveINtNtB8_5slice9SliceInfoANtB25_13SliceInfoElemB1K_B1g_IB1h_Ajj1_EEECskcxRuJ53GpR_9rustworkx.exit, label %bb.f

bb.i:                                             ; preds = %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0..1.i = load i64, ptr %.sroa.06.i, align 8, !noalias !597, !noundef !67 ; 5 uses
  %i.u = icmp ult i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0..1.i, 2
  br i1 %i.u, label %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.1.i, label %bb.e

_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.1.i: ; preds = %bb.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0..sroa_idx.i, i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0..1.i
  %8 = extractelement <4 x i64> %4, i64 1         ; 2 uses
  %i.w = icmp slt i64 %8, 0
  %.pre.i.i.1.i = load i64, ptr %i.v, align 8, !alias.scope !579, !noalias !598 ; 2 uses
  %i.x = select i1 %i.w, i64 %.pre.i.i.1.i, i64 0
  %spec.select.i.i.1.i = add i64 %i.x, %8         ; 2 uses
  %i.y = icmp ult i64 %spec.select.i.i.1.i, %.pre.i.i.1.i
  br i1 %i.y, label %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i, label %bb.g, !prof !77

_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i: ; preds = %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit.i.i.1.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0..1.i
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !599, !noalias !600, !noundef !67
  %i.ab = mul i64 %i.aa, %spec.select.i.i.1.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ab
  %i.ad = add nuw nsw i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0..1.i, 1
  br label %_RINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj2_EdE10slice_moveINtNtB8_5slice9SliceInfoANtB25_13SliceInfoElemB1K_B1g_IB1h_Ajj1_EEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %_RNCINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtBa_9ArrayBaseINtBa_8ViewReprRdEINtNtNtBa_9dimension3dim3DimAjj2_EdE10slice_moveINtNtBa_5slice9SliceInfoANtB27_13SliceInfoElemB1M_B1i_IB1j_Ajj1_EEE0CskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.1.i = load i64, ptr %.sroa.06.i, align 8, !noalias !597, !noundef !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  store <4 x i64> %4, ptr %i.a, align 8, !noalias !597
  %i.ae = icmp ult i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.1.i, 2
  br i1 %i.ae, label %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit8.i.i.1.i, label %bb.c

_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit8.i.i.1.i: ; preds = %bb.j
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0..sroa_idx.i, i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.1.i ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.1.i ; 2 uses
  %i.ah = call noundef i64 @_RNvNtCshByAT0BfsDP_7ndarray9dimension8do_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1173), !noalias !598
  %i.ai = load ptr, ptr %i.b, align 8, !alias.scope !601, !noalias !602, !nonnull !67, !noundef !67
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ah ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8, !alias.scope !601, !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0.3.1.i = load i64, ptr %.sroa.01.i, align 8, !noalias !597, !noundef !67 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0.3.1.i, 0
  br i1 %i.ak, label %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i, label %bb.d

_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i: ; preds = %_RNvXsh_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5index.exit8.i.i.1.i
  %i.al = load i64, ptr %i.af, align 8, !alias.scope !579, !noalias !598, !noundef !67
  %i.am = load i64, ptr %i.ag, align 8, !alias.scope !579, !noalias !598, !noundef !67
  br label %_RINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj2_EdE10slice_moveINtNtB8_5slice9SliceInfoANtB25_13SliceInfoElemB1K_B1g_IB1h_Ajj1_EEECskcxRuJ53GpR_9rustworkx.exit

_RINvMs2_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj2_EdE10slice_moveINtNtB8_5slice9SliceInfoANtB25_13SliceInfoElemB1K_B1g_IB1h_Ajj1_EEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i
  %.sroa.0.0.copyload.i = phi ptr [ %i.aj, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i ], [ %i.ac, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i ], [ %i.r, %bb.h ]
  %i.an = phi i64 [ 1, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i ], [ %i.ad, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i ], [ 1, %bb.h ]
  %.sroa.05.1.1.i = phi i64 [ %i.al, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i ], [ %.sroa.05.1.i, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i ], [ 1, %bb.h ]
  %.sroa.0.1.1.i = phi i64 [ %i.am, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i ], [ %.sroa.0.1.i, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i ], [ 0, %bb.h ]
  %.sink.i.i.1.i = phi ptr [ %.sroa.01.i, %_RNvXsc_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj1_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit5.i.i.1.i ], [ %.sroa.06.i, %_RINvNtCshByAT0BfsDP_7ndarray9dimension16do_collapse_axisINtNtB2_3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx.exit.i.i.1.i ], [ %.sroa.01.i, %bb.h ]
  store i64 %i.an, ptr %.sink.i.i.1.i, align 8, !noalias !597
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !alias.scope !578, !noalias !603
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.1.1.i, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !578, !noalias !603
  %.sroa.5.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.1.1.i, ptr %.sroa.5.0..sroa_idx.i1, align 8, !alias.scope !578, !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvMs1d_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_5EntryNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE14or_insert_withNCNvMsh_BP_NtBP_9PyDiGraph30remove_node_retain_edges_by_id0EBR_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !68, !noundef !67
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !nonnull !67, !noundef !67 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE6insertNCINvNtB8_3map11make_hasherBQ_B1y_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0EBU_.exit
  %.pn = phi ptr [ %.sroa.0.0.i, %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE6insertNCINvNtB8_3map11make_hasherBQ_B1y_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0EBU_.exit ], [ %.sroa.05.0.copyload, %bb.a ]
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.pn, i64 -24
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !67, !noundef !67 ; 8 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.05.0.copyload, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %.val9.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !alias.scope !612, !noalias !613, !nonnull !67, !noundef !67 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  %.val10.i = load i64, ptr %i.f, align 8, !alias.scope !612, !noalias !613, !noundef !67 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val10.i, %.sroa.56.0.copyload ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val9.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.g, align 1, !noalias !614
  %i.h = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.i = bitcast <16 x i1> %i.h to i16            ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !80

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.i, %bb.c ], [ %i.z, %.lr.ph.i.i ]
  %i.j = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = add i64 %.sroa.0.0.lcssa.i.i, %i.k
  %i.m = and i64 %i.l, %.val10.i                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !615, !noundef !67 ; 2 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.d, label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i, !prof !71

bb.d:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val9.i, align 16, !noalias !615
  %i.q = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.r, 0
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.r, i1 true)
  %i.t = zext nneg i16 %i.s to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val9.i, i64 %i.t
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !615
  br label %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.c ]
  %i.u = phi i64 [ %i.v, %.lr.ph.i.i ], [ 0, %bb.c ]
  %i.v = add i64 %i.u, 16                         ; 2 uses
  %i.w = add i64 %i.v, %.sroa.0.010.i.i
  %.sroa.0.0.i.i = and i64 %i.w, %.val10.i        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val9.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !614
  %i.y = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !81

_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.aa = phi i8 [ %.pre.i, %bb.d ], [ %i.o, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i = phi i64 [ %i.t, %bb.d ], [ %i.m, %._crit_edge.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !612, !noalias !613, !noundef !67 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = trunc i8 %i.aa to i1
  %or.cond.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %bb.e, label %bb.f, !prof !79

bb.e:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i
  %i.af = invoke fastcc i64 @_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1y_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.4.0.copyload, ptr noundef nonnull readonly align 8 %i.e) #62
          to label %._crit_edge unwind label %bb.g ; 0 uses

._crit_edge:                                      ; preds = %bb.e
  %.val.i = load ptr, ptr %.sroa.4.0.copyload, align 8, !alias.scope !612, !noalias !613
  %.val8.i = load i64, ptr %i.f, align 8, !alias.scope !612, !noalias !613, !noundef !67
  %i.ag = tail call fastcc noundef i64 @_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot(ptr %.val.i, i64 %.val8.i, i64 noundef %.sroa.56.0.copyload), !noalias !615
  %i.ah = call fastcc noundef nonnull ptr @_RNvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB5_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE14insert_in_slotBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.4.0.copyload, i64 noundef %.sroa.56.0.copyload, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE6insertNCINvNtB8_3map11make_hasherBQ_B1y_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0EBU_.exit

bb.f:                                             ; preds = %_RNvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_13RawTableInner16find_insert_slot.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i, i64 %.sroa.0.0.i5.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.aj = and i8 %i.aa, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = sub i64 %i.ac, %i.ak
  store i64 %i.al, ptr %i.ab, align 8, !alias.scope !617, !noalias !618
  %i.am = lshr i64 %.sroa.56.0.copyload, 57
  %i.an = trunc nuw nsw i64 %i.am to i8           ; 2 uses
  %i.ao = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ap = and i64 %i.ao, %.val10.i
  store i8 %i.an, ptr %i.ai, align 1, !noalias !619
  %i.aq = getelementptr i8, ptr %.val9.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store i8 %i.an, ptr %i.ar, align 1, !noalias !619
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !617, !noalias !618, !noundef !67
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !617, !noalias !618
  %i.av = sub nsw i64 0, %.sroa.0.0.i5.i.i
  %i.aw = getelementptr inbounds [32 x i8], ptr %.val9.i, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !612
  br label %_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE6insertNCINvNtB8_3map11make_hasherBQ_B1y_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0EBU_.exit

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEEBG_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a) #63
          to label %bb.i unwind label %bb.h, !noalias !612

bb.h:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !615
  unreachable

_RINvMs6_NtCs3sCKvcUjPpt_9hashbrown3rawINtB6_8RawTableTNtNtCskcxRuJ53GpR_9rustworkx7digraph7PyAnyIdINtCs3KdTQIMNFBN_8smallvec8SmallVecANtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexj4_EEE6insertNCINvNtB8_3map11make_hasherBQ_B1y_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE0EBU_.exit: ; preds = %bb.f, %._crit_edge
  %.sroa.0.0.i = phi ptr [ %i.ah, %._crit_edge ], [ %i.aw, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtCs9L98AOj04qD_9once_cell3impINtB6_8OnceCellINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtCskcxRuJ53GpR_9rustworkx7graphml4TypeEE10initializeNCINvNtNtBU_4sync9once_lock30try_init_once_cell_py_attachedNCNvXsz_B1r_B1p_NtNtBU_10conversion12IntoPyObject13into_pyobject0BP_NtNtBU_3err5PyErrE0B4l_EB1t_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8
  invoke void @_RNvNtCs9L98AOj04qD_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %1, ptr noundef nonnull %i.a, ptr nonnull @39)
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path33graph_bellman_ford_shortest_paths:bb.a
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit126

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit126: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i125, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i123
  call void @llvm.experimental.noalias.scope.decl(metadata !126325)
  call void @llvm.experimental.noalias.scope.decl(metadata !126326)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val1.i.i = load i64, ptr %i.pa, align 8, !alias.scope !126327, !noundef !67 ; 4 uses
  %i.pb = icmp eq i64 %.val1.i.i, 0
  br i1 %i.pb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit126
  %i.pc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val.i.i = load ptr, ptr %i.pc, align 8, !alias.scope !126327, !nonnull !67, !noundef !67
  %i.pd = shl i64 %.val1.i.i, 3
  %i.pe = icmp slt i64 %.val1.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.pe)
  %i.pf = and i64 %i.pd, -16                      ; 2 uses
  %i.pg = add i64 %i.pf, 16                       ; 2 uses
  %i.ph = add nsw i64 %.val1.i.i, 17
  %i.pi = add i64 %i.ph, %i.pg                    ; 3 uses
  %i.pj = icmp uge i64 %i.pi, %i.pg
  call void @llvm.assume(i1 %i.pj)
  %i.pk = icmp ult i64 %i.pi, 9223372036854775793
  call void @llvm.assume(i1 %i.pk)
  %i.pl = sub nuw nsw i64 -16, %i.pf
  %i.pm = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.pl
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pm, i64 noundef %i.pi, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !126327
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit126
  call void @llvm.experimental.noalias.scope.decl(metadata !126328)
  %.val.i.i.i127 = load ptr, ptr %i.lp, align 8, !alias.scope !126329, !nonnull !67, !noundef !67 ; 2 uses
  %.val1.i.i.i128 = load i64, ptr %i.lr, align 8, !alias.scope !126329, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126330)
  %i.pn = icmp eq i64 %.val1.i.i.i128, 0
  br i1 %i.pn, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i.i129

.lr.ph.i.i.i.i.i129:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ %i.pp, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.po = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i127, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.pp = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.po, align 8, !alias.scope !126330, !noalias !126329 ; 2 uses
  %i.pq = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.pq, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i129
  %i.pr = getelementptr i8, ptr %i.po, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.pr, align 8, !alias.scope !126330, !noalias !126329, !nonnull !67, !noundef !67
  %i.ps = shl nuw i64 %.val8.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %i.ps, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !126331
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i129
  %i.pt = icmp eq i64 %i.pp, %.val1.i.i.i128
  br i1 %i.pt, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i.i129

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !126329 ; 2 uses
  %i.pu = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.pu, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.pv = mul nuw i64 %.val2.i.i.i, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i127, i64 noundef %i.pv, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126329
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.pw = icmp eq ptr %5, null
  br i1 %i.pw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit
  %i.px = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i130 = load i64, ptr %i.px, align 8, !noundef !67
  %i.py = icmp sgt i64 %.val.i.i.i.i.i130, 0
  br i1 %i.py, label %bb.cu, label %bb.ct, !prof !125

bb.ct:                                            ; preds = %bb.cs
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.cu:                                            ; preds = %bb.cs
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.cu, %bb.ct, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit, %bb.j, %bb.i, %bb.g
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_dEEEECskcxRuJ53GpR_9rustworkx.exit135: ; preds = %bb.cp
  store ptr @1063, ptr %i.os, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i64 66, ptr %i.pz, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.046.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qa, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.046.sroa.5.0..sroa_idx, align 8
  %.sroa.046.sroa.5.sroa.4.0..sroa.046.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.046.sroa.5.sroa.4.0..sroa.046.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.046.sroa.5.sroa.5.0..sroa.046.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.os, ptr %.sroa.046.sroa.5.sroa.5.0..sroa.046.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.046.sroa.5.sroa.6.0..sroa.046.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @1064, ptr %.sroa.046.sroa.5.sroa.6.0..sroa.046.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.447.0..sroa_idx, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_dEEEECskcxRuJ53GpR_9rustworkx.exit135, %bb.ce
  store i64 1, ptr %0, align 8
  %i.qb = icmp eq i64 %.sroa.0259.0.copyload, 0
  br i1 %i.qb, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit137, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136: ; preds = %bb.cv
  %i.qc = shl nuw i64 %.sroa.0259.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4260.0.copyload, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit137

bb.cw:                                            ; preds = %.body
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit137: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i136, %bb.cv, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !126332)
  call void @llvm.experimental.noalias.scope.decl(metadata !126333)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val1.i.i138 = load i64, ptr %i.qe, align 8, !alias.scope !126334, !noundef !67 ; 4 uses
  %i.qf = icmp eq i64 %.val1.i.i138, 0
  br i1 %i.qf, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i141, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i139

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i139: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit137
  %i.qg = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val.i.i140 = load ptr, ptr %i.qg, align 8, !alias.scope !126334, !nonnull !67, !noundef !67
  %i.qh = shl i64 %.val1.i.i138, 3
  %i.qi = icmp slt i64 %.val1.i.i138, 2305843009213693950
  call void @llvm.assume(i1 %i.qi)
  %i.qj = and i64 %i.qh, -16                      ; 2 uses
  %i.qk = add i64 %i.qj, 16                       ; 2 uses
  %i.ql = add nsw i64 %.val1.i.i138, 17
  %i.qm = add i64 %i.ql, %i.qk                    ; 3 uses
  %i.qn = icmp uge i64 %i.qm, %i.qk
  call void @llvm.assume(i1 %i.qn)
  %i.qo = icmp ult i64 %i.qm, 9223372036854775793
  call void @llvm.assume(i1 %i.qo)
  %i.qp = sub nuw nsw i64 -16, %i.qj
  %i.qq = getelementptr inbounds i8, ptr %.val.i.i140, i64 %i.qp
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qq, i64 noundef %i.qm, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !126334
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i141

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i141: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i139, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit137
  call void @llvm.experimental.noalias.scope.decl(metadata !126335)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i142 = load ptr, ptr %i.qr, align 8, !alias.scope !126336, !nonnull !67, !noundef !67 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i.i143 = load i64, ptr %i.qs, align 8, !alias.scope !126336, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126337)
  %i.qt = icmp eq i64 %.val1.i.i.i143, 0
  br i1 %i.qt, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i150, label %.lr.ph.i.i.i.i.i144

.lr.ph.i.i.i.i.i144:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i141, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i149
  %.sroa.0.012.i.i.i.i.i145 = phi i64 [ %i.qv, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i149 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i141 ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i142, i64 %.sroa.0.012.i.i.i.i.i145 ; 2 uses
  %i.qv = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i145, 1 ; 2 uses
  %.val8.i.i.i.i.i146 = load i64, ptr %i.qu, align 8, !alias.scope !126337, !noalias !126336 ; 2 uses
  %i.qw = icmp eq i64 %.val8.i.i.i.i.i146, 0
  br i1 %i.qw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i149, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i147

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i147: ; preds = %.lr.ph.i.i.i.i.i144
  %i.qx = getelementptr i8, ptr %i.qu, i64 8
  %.val9.i.i.i.i.i148 = load ptr, ptr %i.qx, align 8, !alias.scope !126337, !noalias !126336, !nonnull !67, !noundef !67
  %i.qy = shl nuw i64 %.val8.i.i.i.i.i146, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i148, i64 noundef %i.qy, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !126338
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i149

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i149: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i147, %.lr.ph.i.i.i.i.i144
  %i.qz = icmp eq i64 %i.qv, %.val1.i.i.i143
  br i1 %i.qz, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i150, label %.lr.ph.i.i.i.i.i144

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i150: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i149, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i141
  %.val2.i.i.i151 = load i64, ptr %i.p, align 8, !alias.scope !126336 ; 2 uses
  %i.ra = icmp eq i64 %.val2.i.i.i151, 0
  br i1 %i.ra, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit153, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i152

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i152: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i150
  %i.rb = mul nuw i64 %.val2.i.i.i151, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i142, i64 noundef %i.rb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126336
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i152, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.g

bb.cx:                                            ; preds = %.body
  resume { ptr, i32 } %.pn73
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path34___pyfunction_graph_distance_matrix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 9 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 6 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [72 x i8], align 8                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = alloca [72 x i8], align 8                ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = alloca [72 x i8], align 8               ; 9 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [72 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2862, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.ad, i64 noundef 3)
  %i.ae = load i64, ptr %i.ac, align 8, !range !68, !noundef !67
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ai = load ptr, ptr %i.ad, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !126485
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.v, ptr noundef nonnull %i.ai), !inline_history !53
  %i.aj = load ptr, ptr %i.v, align 8, !noalias !126485, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !126485, !nonnull !67, !noundef !67 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !126485
  br i1 %.not.i.i.i, label %.noexc49, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.am, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al), !inline_history !53
  br label %.noexc48

.noexc49:                                         ; preds = %.noexc
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 4 uses
  %i.ao = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.an), !inline_history !53
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ap), !inline_history !53
  br label %.noexc48

.noexc48:                                         ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.x), !inline_history !53
  %.sroa.026.0.copyload = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.026.0.copyload, ptr %i.ar, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.429.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65

.body.thread83:                                   ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i, %bb.p, %bb.o, %bb.r, %bb.q, %bb.k, %bb.j, %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.w, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.z, %.body.thread83
  %eh.lpad-body80 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread83 ], [ %.pn20.i.i, %bb.z ], [ %.pn20.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ %.pn20.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.cw, %bb.w ]
  %i.as = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body80

bb.e:                                             ; preds = %.noexc49
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.at, ptr %i.au, align 8
  store i64 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126486)
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !126487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !126488
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.u, ptr noundef nonnull %i.aw)
          to label %.noexc52 unwind label %.body.thread83

.noexc52:                                         ; preds = %bb.f
  %i.ax = load i64, ptr %i.u, align 8, !range !68, !noalias !126488, !noundef !67
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %i.ay, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.g:                                             ; preds = %.noexc52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !126488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false), !noalias !126488
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2385, i64 noundef range(i64 1, 19) 18, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.t)
          to label %bb.h unwind label %.body.thread83

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 300, ptr %i.bb, align 8, !alias.scope !126486, !noalias !126489
  br label %bb.i

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc52
  %i.bc = load i64, ptr %i.az, align 8, !noalias !126488, !noundef !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !alias.scope !126490, !noalias !126491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !126488
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !126488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !126488
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.032.0.copyload = load i64, ptr %i.be, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.435.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.433.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.032.0.copyload, ptr %i.bf, align 8
  br label %bb.bn

bb.i:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126492)
  %.not.i54 = icmp eq ptr %i.bj, null
  br i1 %.not.i54, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !126493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !126494
  invoke void @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo35types5floatdNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull %i.bj)
          to label %.noexc56 unwind label %.body.thread83

.noexc56:                                         ; preds = %bb.j
  %i.bk = load i64, ptr %i.s, align 8, !range !68, !noalias !126494, !noundef !67
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.k, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.k:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !126494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.bm, i64 64, i1 false), !noalias !126494
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2174, i64 noundef range(i64 1, 15) 10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.r)
          to label %bb.l unwind label %.body.thread83

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.m

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc56
  %i.bo = load double, ptr %i.bm, align 8, !noalias !126494, !noundef !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store double %i.bo, ptr %i.bp, align 8, !alias.scope !126495, !noalias !126496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !126494
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !126494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !126494
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.038.0.copyload = load double, ptr %i.bq, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.439.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.038.0.copyload, ptr %i.br, align 8
  br label %bb.bn

bb.m:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !126497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !126497
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path34___pyfunction_graph_distance_matrix:bb.a
  %i.fq = load ptr, ptr %.223.i.i, align 8, !invariant.load !67, !noalias !126514 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.fq, null
  br i1 %.not.i1.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.fq(ptr noundef nonnull %i.fn)
          to label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i unwind label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, !noalias !126501

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.an, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126501
  br label %.body99.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.an
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126501
  br label %.body.i

bb.ao:                                            ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.ap:                                            ; preds = %_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3h_5types3any5PyAnyEB3c_NtB2c_10UndirectedEEs2_0E3newCskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !126499
  %i.ft = load i64, ptr %i.o, align 8, !noalias !126499, !noundef !67 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !126515
  %i.fu = mul i64 %i.ft, 24                       ; 3 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.ft, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.at, label %bb.aq, !prof !73

bb.aq:                                            ; preds = %bb.ap
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !126516
  %i.fw = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fu, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126516 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fy = ptrtoint ptr %i.fw to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.47.0.ph.i.i.i.i = phi i64 [ 8, %bb.ar ], [ 0, %bb.ap ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.47.0.ph.i.i.i.i, i64 %i.fu) #61
          to label %.noexc80.i.i unwind label %.thread160.i.i, !noalias !126501

.noexc80.i.i:                                     ; preds = %bb.at
  unreachable

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.as, %bb.aq
  %.sroa.10.0.i.i.i.i = phi i64 [ %i.fy, %bb.as ], [ 8, %bb.aq ]
  %.sroa.47.0.i.i.i.i = phi i64 [ %i.ft, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %i.fz = inttoptr i64 %.sroa.10.0.i.i.i.i to ptr ; 2 uses
  %i.ga = icmp samesign ule i64 %i.ft, %.sroa.47.0.i.i.i.i
  call void @llvm.assume(i1 %i.ga)
  store i64 %.sroa.47.0.i.i.i.i, ptr %i.f, align 8, !noalias !126515
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.fz, ptr %i.gb, align 8, !noalias !126515
  %i.gc = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126517)
  call void @llvm.experimental.noalias.scope.decl(metadata !126518)
  %.not163.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not163.i.i, label %.loopexit164.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ge = select i1 %.not13.i.i, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs2_0CskcxRuJ53GpR_9rustworkx, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs1_0CskcxRuJ53GpR_9rustworkx ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.gf, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.gf = add nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126520
  %i.gg = load ptr, ptr %i.p, align 8, !noalias !126520, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.gh = invoke noundef i32 %i.ge(ptr noundef nonnull %i.fn, i64 noundef %.val4.i.i.i.i.i.i.i.i.i) #64
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !126521, !inline_history !126422 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !126522)
  call void @llvm.experimental.noalias.scope.decl(metadata !126523)
  call void @llvm.experimental.noalias.scope.decl(metadata !126524)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !126525, !noalias !126526, !nonnull !67, !noundef !67
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !126525, !noalias !126526, !noundef !67
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !126525, !noalias !126526, !noundef !67
  %i.gn = zext i32 %i.gh to i64                   ; 2 uses
  %i.go = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gn
  br i1 %i.go, label %bb.av, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gp, align 8, !alias.scope !126525, !noalias !126526, !nonnull !67, !noundef !67
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gn ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !126527, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gt = load <2 x i32>, ptr %i.gs, align 8, !noalias !126527
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av, %.noexc.i.i.i.i.i.i.i.i.i
  %i.gu = phi <2 x i32> [ %i.gt, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %.noexc.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %bb.av ]
  %i.gv = load ptr, ptr %i.p, align 8, !noalias !126520, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.gw = invoke noundef i32 %i.ge(ptr noundef nonnull %i.fn, i64 noundef %.val4.i.i.i.i.i.i.i.i.i) #64
          to label %.noexc7.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !126521, !inline_history !126422 ; 2 uses

.noexc7.i.i.i.i.i.i.i.i.i:                        ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !126528)
  call void @llvm.experimental.noalias.scope.decl(metadata !126529)
  call void @llvm.experimental.noalias.scope.decl(metadata !126530)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !126531, !noalias !126532, !nonnull !67, !noundef !67
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !126531, !noalias !126532, !noundef !67
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hb, align 8, !alias.scope !126531, !noalias !126532, !noundef !67
  %i.hc = zext i32 %i.gw to i64                   ; 2 uses
  %i.hd = icmp ugt i64 %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i, %i.hc
  br i1 %i.hd, label %bb.aw, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %.noexc7.i.i.i.i.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.he, align 8, !alias.scope !126531, !noalias !126532, !nonnull !67, !noundef !67
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hc ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !126533, !noundef !67
  %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = load <2 x i32>, ptr %i.hh, align 8, !noalias !126533
  br label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i, %bb.aw, %.noexc7.i.i.i.i.i.i.i.i.i
  %i.hj = phi <2 x i32> [ %i.hi, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %.noexc7.i.i.i.i.i.i.i.i.i ], [ splat (i32 -1), %bb.aw ]
  store ptr %i.gj, ptr %i.gd, align 8, !noalias !126520
  store i64 %i.gl, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store <2 x i32> %i.gu, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store i32 %i.gh, ptr %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store ptr %i.gy, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store i64 %i.ha, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store <2 x i32> %i.hj, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store i32 %i.gw, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !126520
  store ptr %i.k, ptr %i.d, align 8, !noalias !126520
  invoke fastcc void @_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtB26_5chain5ChainINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEEB2N_EQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2S_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.d)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i, !noalias !126521

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !126520
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.val4.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !126534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !126519
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gf, %i.ft
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.loopexit164.i.i, label %bb.au

.body.i.i.i.i:                                    ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.au
  %i.hl = landingpad { ptr, i32 }
          cleanup
  store i64 %.val4.i.i.i.i.i.i.i.i.i, ptr %i.gc, align 8, !alias.scope !126535, !noalias !126536
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63
          to label %.thread.i.i unwind label %bb.ax, !noalias !126537

bb.ax:                                            ; preds = %.body.i.i.i.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !126537
  unreachable

.thread160.i.i:                                   ; preds = %bb.at
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.loopexit164.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %i.ft, ptr %i.gc, align 8, !alias.scope !126535, !noalias !126536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !126538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !126515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !126499
  store ptr %i.o, ptr %i.h, align 8, !noalias !126499
  %i.ho = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.ho, align 8, !noalias !126499
  %i.hp = load i64, ptr %i.o, align 8, !noalias !126499, !noundef !67
  %i.hq = icmp ult i64 %i.hp, %i.bh
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  br i1 %i.hq, label %bb.bd, label %bb.az

.loopexit.i.i:                                    ; preds = %bb.be
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp.i.i:                           ; preds = %.noexc86.i.i, %bb.az
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #63
          to label %.thread.i.i unwind label %bb.bm, !noalias !126501

bb.az:                                            ; preds = %.loopexit164.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !126539)
  %i.ht = load ptr, ptr %i.hr, align 8, !alias.scope !126540, !noalias !126541, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126499
  store ptr %i.h, ptr %i.c, align 8, !noalias !126542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126543
  store i64 0, ptr %i.b, align 8, !noalias !126544
  %.sroa.5126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %5 = load <4 x i64>, ptr %i.hs, align 8, !alias.scope !126545, !noalias !126499
  %.sroa.4142.8.copyload.i.i = load i64, ptr %i.hs, align 8, !alias.scope !126545, !noalias !126499 ; 2 uses
  %6 = shufflevector <4 x i64> %5, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %6, ptr %.sroa.5126.0..sroa_idx.i.i, align 8, !noalias !126544
  %.sroa.6128.sroa.6.0..sroa.6128.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ht, ptr %.sroa.6128.sroa.6.0..sroa.6128.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !126544
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !126546
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.hu, align 8, !noalias !126543
  %i.hv = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.i.i, !noalias !126501

.noexc86.i.i:                                     ; preds = %bb.az
  %i.hw = icmp eq i64 %.sroa.4142.8.copyload.i.i, -1
  %i.hx = zext i1 %i.hw to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 %i.hx)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1V_9iterators11AxisIterMutdINtNtNtB1V_9dimension3dim3DimAjj1_EEEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB76_5types3any5PyAnyEB71_NtB61_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx(i64 noundef %.sroa.4142.8.copyload.i.i, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.ba unwind label %.loopexit.split-lp.i.i, !noalias !126501

bb.ba:                                            ; preds = %.noexc86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !126499
  br label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc98.i.i, %bb.bd, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !126500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !126499
  call void @llvm.experimental.noalias.scope.decl(metadata !126547)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i88.i.i = load ptr, ptr %i.hy, align 8, !alias.scope !126547, !noalias !126499, !nonnull !67, !noundef !67 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i89.i.i = load i64, ptr %i.hz, align 8, !alias.scope !126547, !noalias !126499, !noundef !67 ; 4 uses
  %i.ia = icmp eq i64 %.val1.i89.i.i, 0
  br i1 %i.ia, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph161

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph161
  %i.ib = icmp eq i64 %i.id, %.val1.i89.i.i
  br i1 %i.ib, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph161

.lr.ph161:                                        ; preds = %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i160 = phi i64 [ %i.id, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %.val.i88.i.i, i64 %.sroa.0.0.i.i.i.i.i160
  %i.id = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i160, 1 ; 4 uses
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i unwind label %bb.bb, !noalias !126548

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i: ; preds = %.lr.ph163
  %i.ie = add i64 %.sroa.0.1.i.i.i.i.i162, 1      ; 2 uses
  %i.if = icmp eq i64 %i.ie, %.val1.i89.i.i
  br i1 %i.if, label %.body.i.i.i, label %.lr.ph163

bb.bb:                                            ; preds = %.lr.ph161
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = icmp eq i64 %i.id, %.val1.i89.i.i
  br i1 %i.ih, label %.body.i.i.i, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.bb, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i162 = phi i64 [ %i.ie, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i ], [ %i.id, %bb.bb ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %.val.i88.i.i, i64 %.sroa.0.1.i.i.i.i.i162
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ii)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i unwind label %bb.bc, !noalias !126548

bb.bc:                                            ; preds = %.lr.ph163
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !126548
  unreachable

.body.i.i.i:                                      ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i, %bb.bb
  %.val4.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !126547, !noalias !126499 ; 2 uses
  %i.ik = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.ik, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %.body.i.i.i
  %i.il = mul nuw i64 %.val4.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i88.i.i, i64 noundef %i.il, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126548
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !126547, !noalias !126499 ; 2 uses
  %i.im = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.im, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.in = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i88.i.i, i64 noundef %i.in, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126548
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bd:                                            ; preds = %.loopexit164.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.6135.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !126549)
  %i.ip = load ptr, ptr %i.hr, align 8, !alias.scope !126550, !noalias !126551, !nonnull !67, !noundef !67
  %.sroa.4134.8.copyload.i.i = load i64, ptr %i.hs, align 8, !alias.scope !126552, !noalias !126499 ; 2 uses
  %.sroa.7.24.copyload.i.i = load i64, ptr %i.io, align 8, !alias.scope !126552, !noalias !126499
  %i.iq = load <3 x i64>, ptr %.sroa.6135.8..sroa_idx.i.i, align 8, !alias.scope !126552, !noalias !126499
  %i.ir = shufflevector <3 x i64> %i.iq, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %.not.i12.i.not.i.i = icmp eq i64 %.sroa.4134.8.copyload.i.i, 0
  br i1 %.not.i12.i.not.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bd
  %.sroa.4.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.be

bb.be:                                            ; preds = %.noexc98.i.i, %.lr.ph.i.i.i
  %.sroa.2.013.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.iu, %.noexc98.i.i ] ; 4 uses
  %i.is = mul i64 %.sroa.2.013.i.i.i, %.sroa.7.24.copyload.i.i
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.is
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126553
  store i64 %.sroa.2.013.i.i.i, ptr %i.a, align 8, !noalias !126553
  store ptr %i.it, ptr %.sroa.4.0..sroa_idx.i1.i.i.i, align 8, !noalias !126554
  store <2 x i64> %i.ir, ptr %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i, align 8, !noalias !126554
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !126555, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ho, align 8, !noalias !126555
  invoke fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i, i64 noundef %.sroa.2.013.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i1.i.i.i) #64
          to label %.noexc98.i.i unwind label %.loopexit.i.i, !noalias !126501

.noexc98.i.i:                                     ; preds = %bb.be
  %i.iu = add nuw i64 %.sroa.2.013.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126553
  %exitcond.not.i.i.i = icmp eq i64 %i.iu, %.sroa.4134.8.copyload.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.be

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !126499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !126499
  %i.iv = load ptr, ptr %.223.i.i, align 8, !invariant.load !67, !noalias !126499 ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i58, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.iv(ptr noundef nonnull %i.fn)
          to label %bb.bg unwind label %bb.bh, !noalias !126501

bb.bg:                                            ; preds = %bb.bf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126501
  %.val38.i.i = load ptr, ptr %i.k, align 8, !noalias !126499 ; 5 uses
  %.val39.i.i = load ptr, ptr %i.eq, align 8, !noalias !126499, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %i.iw = load ptr, ptr %.val39.i.i, align 8, !invariant.load !67, !noalias !126501 ; 2 uses
  %.not.i101.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i101.i.i, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fn, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126501
  br label %.body99.i.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  invoke void %i.iw(ptr noundef nonnull %.val38.i.i)
          to label %bb.bj unwind label %bb.bk, !noalias !126501

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.iy = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !range !70, !invariant.load !67, !noalias !126501 ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i103.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i103.i.i: ; preds = %bb.bj
  %i.jb = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !range !127, !invariant.load !67, !noalias !126501
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) %i.jc) #59, !noalias !126501
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !range !70, !invariant.load !67, !noalias !126501 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %.body104.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i102.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i102.i.i: ; preds = %bb.bk
  %i.jh = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !range !127, !invariant.load !67, !noalias !126501
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.jf, i64 noundef range(i64 1, -9223372036854775807) %i.ji) #59, !noalias !126501
  br label %.body104.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i103.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !126499
  %.val.i.i = load i64, ptr %i.m, align 8, !noalias !126499 ; 2 uses
  %i.jj = icmp eq i64 %.val.i.i, 0
  br i1 %i.jj, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i106.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i106.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val22.i.i = load ptr, ptr %i.jk, align 8, !noalias !126499, !nonnull !67, !noundef !67
  %i.jl = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i, i64 noundef %i.jl, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !126501
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i106.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !126499
  %.val25.i.i = load ptr, ptr %i.n, align 8, !noalias !126499 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val26.i.i = load i64, ptr %i.jm, align 8, !noalias !126499, !noundef !67 ; 3 uses
  %i.jn = icmp eq i64 %.val26.i.i, 0
  br i1 %i.jn, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i
  %i.jo = shl i64 %.val26.i.i, 4                  ; 2 uses
  %i.jp = add i64 %i.jo, 16                       ; 2 uses
  %i.jq = add i64 %.val26.i.i, 17
  %i.jr = add i64 %i.jq, %i.jp                    ; 4 uses
  %i.js = icmp uge i64 %i.jr, %i.jp
  %i.jt = icmp ult i64 %i.jr, 9223372036854775793
  call void @llvm.assume(i1 %i.js)
  call void @llvm.assume(i1 %i.jt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i.i) ]
  %i.ju = icmp eq i64 %i.jr, 0
  br i1 %i.ju, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.jv = sub nuw nsw i64 -16, %i.jo
  %i.jw = getelementptr inbounds i8, ptr %.val25.i.i, i64 %i.jv
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jw, i64 noundef %i.jr, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !126501
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i

bb.bm:                                            ; preds = %bb.ay
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.bm, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i, %bb.al
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !126501
  unreachable

.thread.i.i:                                      ; preds = %bb.ay, %.thread160.i.i, %.body.i.i.i.i
  %.pn156.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.ay ], [ %i.hn, %.thread160.i.i ], [ %i.hl, %.body.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126556)
  call void @llvm.experimental.noalias.scope.decl(metadata !126557)
  call void @llvm.experimental.noalias.scope.decl(metadata !126558)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !alias.scope !126559, !noalias !126499, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.thread.i.i
  %i.ka = load ptr, ptr %i.j, align 8, !alias.scope !126559, !noalias !126499, !nonnull !67, !noundef !67
  %i.kb = shl nuw i64 %i.jz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ka, i64 noundef %i.kb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126560
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.bl, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit107.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !126499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !126499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !126497
  %i.kc = invoke fastcc noundef nonnull ptr @_RNvMs0_NtCs3Tt2PVjAfPX_5numpy5arrayINtB5_7PyArraydINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EE16from_owned_arrayCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.q)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64 unwind label %.body.thread83

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !126497
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kc, ptr %i.kd, align 8
  store i64 0, ptr %0, align 8
  %i.ke = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65: ; preds = %bb.b, %.noexc48, %bb.bn, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.bn:                                            ; preds = %bb.l, %bb.h
  store i64 1, ptr %0, align 8
  %i.kf = atomicrmw sub ptr %i.an, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35___pyfunction_digraph_floyd_warshall(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = alloca [72 x i8], align 8                ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 7 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [72 x i8], align 8                ; 9 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_paths:bb.a
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.cm, %bb.cl, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit, %bb.da
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_dEEEECskcxRuJ53GpR_9rustworkx.exit150: ; preds = %bb.ch
  store ptr @1063, ptr %i.oj, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i64 66, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.061.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.061.sroa.5.0..sroa_idx, align 8
  %.sroa.061.sroa.5.sroa.4.0..sroa.061.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.061.sroa.5.sroa.4.0..sroa.061.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.061.sroa.5.sroa.5.0..sroa.061.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.oj, ptr %.sroa.061.sroa.5.sroa.5.0..sroa.061.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.061.sroa.5.sroa.6.0..sroa.061.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @1064, ptr %.sroa.061.sroa.5.sroa.6.0..sroa.061.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %.sroa.462.0..sroa_idx, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs87CvPiUlf0m_5alloc3vec3VecIBC_dEEEECskcxRuJ53GpR_9rustworkx.exit150, %bb.bw
  store i64 1, ptr %0, align 8
  %i.ps = icmp eq i64 %.sroa.0286.0.copyload, 0
  br i1 %i.ps, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit152, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i151

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i151: ; preds = %bb.cn
  %i.pt = shl nuw i64 %.sroa.0286.0.copyload, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4287.0.copyload, i64 noundef %i.pt, i64 noundef range(i64 1, -9223372036854775807) 8) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit152

bb.co:                                            ; preds = %.thread297, %bb.cz
  %i.pu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit152: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i151, %bb.cn, %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !126855)
  call void @llvm.experimental.noalias.scope.decl(metadata !126856)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val1.i.i153 = load i64, ptr %i.pv, align 8, !alias.scope !126857, !noundef !67 ; 4 uses
  %i.pw = icmp eq i64 %.val1.i.i153, 0
  br i1 %i.pw, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i156, label %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i154

_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i154: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit152
  %i.px = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val.i.i155 = load ptr, ptr %i.px, align 8, !alias.scope !126857, !nonnull !67, !noundef !67
  %i.py = shl i64 %.val1.i.i153, 3
  %i.pz = icmp slt i64 %.val1.i.i153, 2305843009213693950
  call void @llvm.assume(i1 %i.pz)
  %i.qa = and i64 %i.py, -16                      ; 2 uses
  %i.qb = add i64 %i.qa, 16                       ; 2 uses
  %i.qc = add nsw i64 %.val1.i.i153, 17
  %i.qd = add i64 %i.qc, %i.qb                    ; 3 uses
  %i.qe = icmp uge i64 %i.qd, %i.qb
  call void @llvm.assume(i1 %i.qe)
  %i.qf = icmp ult i64 %i.qd, 9223372036854775793
  call void @llvm.assume(i1 %i.qf)
  %i.qg = sub nuw nsw i64 -16, %i.qa
  %i.qh = getelementptr inbounds i8, ptr %.val.i.i155, i64 %i.qg
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qh, i64 noundef %i.qd, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !126857
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i156

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i156: ; preds = %_RNvMs1_NtCslcZTgAvcSNH_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i154, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit152
  call void @llvm.experimental.noalias.scope.decl(metadata !126858)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i157 = load ptr, ptr %i.qi, align 8, !alias.scope !126859, !nonnull !67, !noundef !67 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i.i158 = load i64, ptr %i.qj, align 8, !alias.scope !126859, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126860)
  %i.qk = icmp eq i64 %.val1.i.i.i158, 0
  br i1 %i.qk, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i165, label %.lr.ph.i.i.i.i.i159

.lr.ph.i.i.i.i.i159:                              ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i156, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i164
  %.sroa.0.012.i.i.i.i.i160 = phi i64 [ %i.qm, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i164 ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i156 ] ; 2 uses
  %i.ql = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i157, i64 %.sroa.0.012.i.i.i.i.i160 ; 2 uses
  %i.qm = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i160, 1 ; 2 uses
  %.val8.i.i.i.i.i161 = load i64, ptr %i.ql, align 8, !alias.scope !126860, !noalias !126859 ; 2 uses
  %i.qn = icmp eq i64 %.val8.i.i.i.i.i161, 0
  br i1 %i.qn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i164, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i162

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i162: ; preds = %.lr.ph.i.i.i.i.i159
  %i.qo = getelementptr i8, ptr %i.ql, i64 8
  %.val9.i.i.i.i.i163 = load ptr, ptr %i.qo, align 8, !alias.scope !126860, !noalias !126859, !nonnull !67, !noundef !67
  %i.qp = shl nuw i64 %.val8.i.i.i.i.i161, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i163, i64 noundef %i.qp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !126861
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i164

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i164: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i162, %.lr.ph.i.i.i.i.i159
  %i.qq = icmp eq i64 %i.qm, %.val1.i.i.i158
  br i1 %i.qq, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i165, label %.lr.ph.i.i.i.i.i159

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i165: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB18_EEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i164, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCslcZTgAvcSNH_9hashbrown5table9HashTablejEECskcxRuJ53GpR_9rustworkx.exit.i.i156
  %.val2.i.i.i166 = load i64, ptr %i.p, align 8, !alias.scope !126859 ; 2 uses
  %i.qr = icmp eq i64 %.val2.i.i.i166, 0
  br i1 %i.qr, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit168, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i167

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i167: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i165
  %i.qs = mul nuw i64 %.val2.i.i.i166, 40
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i157, i64 noundef %i.qs, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !126859
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit168

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit168: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i167, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtCsfztDQZkQYYe_8indexmap6BucketNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBw_B1c_EEENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.g, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1g_ENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit168, %bb.cu
  %i.qt = icmp eq ptr %5, null
  br i1 %i.qt, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qu = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i169 = load i64, ptr %i.qu, align 8, !noundef !67
  %i.qv = icmp sgt i64 %.val.i.i.i.i.i169, 0
  br i1 %i.qv, label %bb.cs, label %bb.cr, !prof !125

bb.cr:                                            ; preds = %bb.cq
  call void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.cs:                                            ; preds = %bb.cq
  call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.ct:                                            ; preds = %bb.d
  %i.qw = load i64, ptr %i.s, align 8, !range !66, !noundef !67 ; 2 uses
  %i.qx = icmp eq i64 %i.qw, -1
  %i.qy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(64) %i.qy, i64 64, i1 false)
  br i1 %i.qx, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.qz, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cp

bb.cv:                                            ; preds = %bb.ct
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6, i64 64, i1 false)
  store i64 %i.qw, ptr %i.t, align 8
  %.not88 = icmp eq ptr %5, null
  br i1 %.not88, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @_Py_IncRef(ptr noundef nonnull %5) #59
  %i.ra = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i = load i64, ptr %i.ra, align 8, !noundef !67
  %i.rb = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.rb, label %bb.cy, label %bb.cx, !prof !125

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %5)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  tail call void @_Py_DecRef(ptr noundef nonnull %5) #59
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.cx, %bb.cy, %bb.cv
  invoke fastcc void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path33graph_bellman_ford_shortest_paths(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.t, i64 noundef %2, i64 noundef %3, i64 %4, ptr noundef %5, double noundef %6)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t) #63
          to label %.thread294 unwind label %bb.co

bb.da:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEECskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

.thread294:                                       ; preds = %bb.cz, %.thread297
  %.pn89292 = phi { ptr, i32 } [ %.pn89293, %.thread297 ], [ %i.rc, %bb.cz ]
  resume { ptr, i32 } %.pn89292

.thread297:                                       ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %bb.f, %.thread300
  %.pn89293 = phi { ptr, i32 } [ %i.ag, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %lpad.thr_comm, %.thread300 ], [ %i.ag, %bb.f ], [ %.pn86, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtB4_6option6OptiondEEECskcxRuJ53GpR_9rustworkx.exit ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx(ptr %5) #63
          to label %.thread294 unwind label %bb.co
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path36___pyfunction_digraph_distance_matrix(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [40 x i8], align 8                ; 10 uses
  %i.s = alloca [8 x i8], align 8                 ; 9 uses
  %i.t = alloca [8 x i8], align 8                 ; 10 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [64 x i8], align 8                ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 6 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 7 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [72 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [72 x i8], align 8               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = alloca [72 x i8], align 8               ; 7 uses
  %i.af = alloca [72 x i8], align 8               ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = alloca [72 x i8], align 8               ; 9 uses
  %i.ai = alloca [72 x i8], align 8               ; 9 uses
  %i.aj = alloca [72 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2868, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.ak, i64 noundef 4)
  %i.al = load i64, ptr %i.aj, align 8, !range !68, !noundef !67
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ap = load ptr, ptr %i.ak, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !127071
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ab, ptr noundef nonnull %i.ap), !inline_history !56
  %i.aq = load ptr, ptr %i.ab, align 8, !noalias !127071, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !127071, !nonnull !67, !noundef !67 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !127071
  br i1 %.not.i.i.i, label %.noexc53, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.at, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.as), !inline_history !56
  br label %.noexc52

.noexc53:                                         ; preds = %.noexc
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 152 ; 4 uses
  %i.av = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.au), !inline_history !56
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc53
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aw), !inline_history !56
  br label %.noexc52

.noexc52:                                         ; preds = %bb.d, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.ad), !inline_history !56
  %.sroa.030.0.copyload = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.030.0.copyload, ptr %i.ay, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73

.body.thread92:                                   ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i, %bb.t, %bb.s, %bb.v, %bb.u, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %bb.aa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.ad, %.body.thread92
  %eh.lpad-body89 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread92 ], [ %.pn20.i.i, %bb.ad ], [ %.pn20.i.i, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i ], [ %.pn20.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ds, %bb.aa ]
  %i.az = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body89

bb.e:                                             ; preds = %.noexc53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  store i64 0, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127072)
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !127073)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !127074
  invoke void @_RNvXsq_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numjNtNtBb_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noundef nonnull %i.bd)
          to label %.noexc56 unwind label %.body.thread92

.noexc56:                                         ; preds = %bb.f
  %i.be = load i64, ptr %i.aa, align 8, !range !68, !noalias !127074, !noundef !67
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  br i1 %i.bf, label %bb.g, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.g:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !127074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 64, i1 false), !noalias !127074
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2385, i64 noundef range(i64 1, 19) 18, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.z)
          to label %bb.h unwind label %.body.thread92

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 300, ptr %i.bi, align 8, !alias.scope !127072, !noalias !127075
  br label %bb.i

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc56
  %i.bj = load i64, ptr %i.bg, align 8, !noalias !127074, !noundef !67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !alias.scope !127076, !noalias !127077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !127074
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !127074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !127074
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.036.0.copyload = load i64, ptr %i.bl, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.439.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.437.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.036.0.copyload, ptr %i.bm, align 8
  br label %bb.cf

bb.i:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !67 ; 2 uses
  %.not.i58 = icmp eq ptr %i.bq, null
  br i1 %.not.i58, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !127078
  invoke void @_RNvXsc_NtNtCsi0YPOvDEjiZ_4pyo35types10boolobjectbNtNtB9_10conversion12FromPyObject7extract(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.y, ptr noundef nonnull %i.bq)
          to label %.noexc60 unwind label %.body.thread92

.noexc60:                                         ; preds = %bb.j
  %i.br = load i8, ptr %i.y, align 8, !range !69, !noalias !127078, !noundef !67
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.k, label %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.k:                                             ; preds = %.noexc60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !127078
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i64 64, i1 false), !noalias !127078
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2846, i64 noundef range(i64 5, 17) 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.x)
          to label %bb.l unwind label %.body.thread92

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 0, ptr %i.bv, align 1
  store i8 0, ptr %i.ae, align 8
  br label %bb.m

_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.noexc60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !range !69, !noalias !127078, !noundef !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.bx, ptr %i.by, align 1
  store i8 0, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !127078
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !127078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !127078
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 64, i1 false)
  br label %bb.cf

bb.m:                                             ; preds = %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit, %_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !range !69, !noundef !67
  %i.cd = trunc nuw i8 %i.cc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !noundef !67 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path36___pyfunction_digraph_distance_matrix:bb.a
  %i.ix = icmp eq i64 %i.it, %.val4.i.i.i.i.i.i.i.i.i
  br i1 %i.ix, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.bf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i227 = phi i64 [ %i.iu, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i ], [ %i.it, %bb.bf ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.gw, i64 %.sroa.0.1.i.i.i.i.i.i227
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iy)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i unwind label %bb.bg, !noalias !127127

bb.bg:                                            ; preds = %.lr.ph228
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127127
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i.i, %bb.bf
  %i.ja = mul nuw nsw i64 %.sroa.47.0.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127127
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127128
  unreachable

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %.body.i.i.i.i
  %i.jb = mul nuw nsw i64 %.sroa.47.0.i.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.jb, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127127
  br label %.thread.i.i

bb.bh:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !127129
  br i1 %or.cond.i.i.i84.i.i, label %.invoke308.i.i, label %bb.bi, !prof !73

bb.bi:                                            ; preds = %bb.bh
  %i.jc = icmp eq i64 %i.gq, 0
  br i1 %i.jc, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !127130
  %i.jd = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.gq, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127130 ; 2 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %.invoke308.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jf = ptrtoint ptr %i.jd to i64
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i: ; preds = %bb.bk, %bb.bi
  %.sroa.10.0.i.i86.i.i = phi i64 [ %i.jf, %bb.bk ], [ 8, %bb.bi ]
  %.sroa.47.0.i.i87.i.i = phi i64 [ %i.gp, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  %i.jg = inttoptr i64 %.sroa.10.0.i.i86.i.i to ptr ; 2 uses
  %i.jh = icmp samesign ule i64 %i.gp, %.sroa.47.0.i.i87.i.i
  call void @llvm.assume(i1 %i.jh)
  store i64 %.sroa.47.0.i.i87.i.i, ptr %i.f, align 8, !noalias !127129
  %i.ji = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.jg, ptr %i.ji, align 8, !noalias !127129
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127131)
  call void @llvm.experimental.noalias.scope.decl(metadata !127132)
  %.not203.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not203.i.i, label %.loopexit204.i.i, label %.lr.ph.i.i.i.i.i.i.i94.i.i

.lr.ph.i.i.i.i.i.i.i94.i.i:                       ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.715.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.917.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.917.sroa.4.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.917.sroa.5.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.917.sroa.6.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.917.sroa.7.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.jl = select i1 %.not13.i.i, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs2_0CskcxRuJ53GpR_9rustworkx, ptr @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs1_0CskcxRuJ53GpR_9rustworkx ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i94.i.i
  %.val4.i.i.i.i.i.i.i95.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i94.i.i ], [ %i.jm, %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.jm = add nuw nsw i64 %.val4.i.i.i.i.i.i.i95.i.i, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !127134
  %i.jn = load ptr, ptr %i.t, align 8, !noalias !127134, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.jo = invoke noundef i32 %i.jl(ptr noundef nonnull %i.gj, i64 noundef %.val4.i.i.i.i.i.i.i95.i.i) #64
          to label %.noexc.i.i.i.i.i.i.i97.i.i unwind label %.body.i.i96.i.i, !noalias !127135, !inline_history !127008

.noexc.i.i.i.i.i.i.i97.i.i:                       ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !127136)
  call void @llvm.experimental.noalias.scope.decl(metadata !127137)
  call void @llvm.experimental.noalias.scope.decl(metadata !127138)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8, !alias.scope !127139, !noalias !127140, !nonnull !67, !noundef !67
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.js = load i64, ptr %i.jr, align 8, !alias.scope !127139, !noalias !127140, !noundef !67
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i98.i.i = load i64, ptr %i.jt, align 8, !alias.scope !127139, !noalias !127140, !noundef !67
  %i.ju = zext i32 %i.jo to i64                   ; 2 uses
  %i.jv = icmp ugt i64 %.val6.i.i.i.i.i.i.i.i.i.i.i.i98.i.i, %i.ju
  br i1 %i.jv, label %bb.bm, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %.noexc.i.i.i.i.i.i.i97.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i101.i.i = load ptr, ptr %i.jw, align 8, !alias.scope !127139, !noalias !127140, !nonnull !67, !noundef !67
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i101.i.i, i64 %i.ju ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !127141, !noundef !67
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i102.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i102.i.i, label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i: ; preds = %bb.bm
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !127141
  br label %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i, %bb.bm, %.noexc.i.i.i.i.i.i.i97.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i103.i.i ], [ -1, %.noexc.i.i.i.i.i.i.i97.i.i ], [ -1, %bb.bm ]
  %i.jz = load ptr, ptr %i.t, align 8, !noalias !127134, !nonnull !67, !align !98, !noundef !67 ; 4 uses
  %i.ka = invoke noundef i32 %i.jl(ptr noundef nonnull %i.gj, i64 noundef %.val4.i.i.i.i.i.i.i95.i.i) #64
          to label %.noexc7.i.i.i.i.i.i.i99.i.i unwind label %.body.i.i96.i.i, !noalias !127135, !inline_history !127008

.noexc7.i.i.i.i.i.i.i99.i.i:                      ; preds = %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !127142)
  call void @llvm.experimental.noalias.scope.decl(metadata !127143)
  call void @llvm.experimental.noalias.scope.decl(metadata !127144)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !alias.scope !127145, !noalias !127146, !nonnull !67, !noundef !67
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %i.ke = load i64, ptr %i.kd, align 8, !alias.scope !127145, !noalias !127146, !noundef !67
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kf, align 8, !alias.scope !127145, !noalias !127146, !noundef !67
  %i.kg = zext i32 %i.ka to i64                   ; 2 uses
  %i.kh = icmp ugt i64 %.val6.i.i.i1.i.i.i.i.i.i.i.i.i.i.i, %i.kg
  br i1 %i.kh, label %bb.bn, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %.noexc7.i.i.i.i.i.i.i99.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ki, align 8, !alias.scope !127145, !noalias !127146, !nonnull !67, !noundef !67
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i5.i.i.i.i.i.i.i.i.i.i.i, i64 %i.kg ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !127147, !noundef !67
  %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i

_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bn
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %.sroa.0.0.copyload.i.i.i8.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.kl, align 8, !noalias !127147
  br label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i, %bb.bn, %.noexc7.i.i.i.i.i.i.i99.i.i
  %.sroa.0.0.i.i.i3.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i8.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E8get_nodeCskcxRuJ53GpR_9rustworkx.exit.i.i.i7.i.i.i.i.i.i.i.i.i.i.i ], [ -1, %.noexc7.i.i.i.i.i.i.i99.i.i ], [ -1, %bb.bn ]
  store ptr %i.jq, ptr %i.jk, align 8, !noalias !127134
  store i64 %i.js, ptr %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store i32 -1, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store i32 %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !127134
  store i32 -1, ptr %.sroa.715.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store ptr %i.kc, ptr %.sroa.917.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store i64 %i.ke, ptr %.sroa.917.sroa.4.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store i32 %.sroa.0.0.i.i.i3.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.917.sroa.5.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store i32 -1, ptr %.sroa.917.sroa.6.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !127134
  store i32 -1, ptr %.sroa.917.sroa.7.0..sroa.917.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !127134
  store ptr %i.o, ptr %i.d, align 8, !noalias !127134
  invoke fastcc void @_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtB26_5chain5ChainINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEEB2N_EQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2S_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.d)
          to label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i unwind label %.body.i.i96.i.i, !noalias !127135

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !127134
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.jg, i64 %.val4.i.i.i.i.i.i.i95.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !127148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127133
  %exitcond.not.i.i.i.i.i.i.i100.i.i = icmp eq i64 %i.jm, %i.gp
  br i1 %exitcond.not.i.i.i.i.i.i.i100.i.i, label %.loopexit204.i.i, label %bb.bl

.body.i.i96.i.i:                                  ; preds = %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i, %_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bl
  %i.kn = landingpad { ptr, i32 }
          cleanup
  store i64 %.val4.i.i.i.i.i.i.i95.i.i, ptr %i.jj, align 8, !alias.scope !127149, !noalias !127150
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #63
          to label %.thread.i.i unwind label %bb.bo, !noalias !127151

bb.bo:                                            ; preds = %.body.i.i96.i.i
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127151
  unreachable

.thread199.i.i:                                   ; preds = %.invoke308.i.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

.loopexit205.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  store i64 %.sroa.47.0.i.i.i.i, ptr %i.m, align 8, !alias.scope !127102, !noalias !127152
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.gw, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !127102, !noalias !127152
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.gp, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !127102, !noalias !127152
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit204.i.i, %.loopexit205.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !127086
  store ptr %i.s, ptr %i.l, align 8, !noalias !127086
  %i.kq = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.kq, align 8, !noalias !127086
  %i.kr = load i64, ptr %i.s, align 8, !noalias !127086, !noundef !67
  %i.ks = icmp ult i64 %i.kr, %i.bo
  %i.kt = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  br i1 %i.ks, label %bb.bv, label %bb.br

.loopexit204.i.i:                                 ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i85.i.i
  store i64 %i.gp, ptr %i.jj, align 8, !alias.scope !127149, !noalias !127150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !127153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127129
  br label %bb.bp

.loopexit.i.i:                                    ; preds = %bb.bw
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp.i.i:                           ; preds = %.noexc114.i.i, %bb.br
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63
          to label %.thread.i.i unwind label %bb.ce, !noalias !127088

bb.br:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !127154)
  %i.kv = load ptr, ptr %i.kt, align 8, !alias.scope !127155, !noalias !127156, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127086
  store ptr %i.l, ptr %i.c, align 8, !noalias !127157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127158
  store i64 0, ptr %i.b, align 8, !noalias !127159
  %.sroa.5160.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %5 = load <4 x i64>, ptr %i.ku, align 8, !alias.scope !127160, !noalias !127086
  %.sroa.4176.8.copyload.i.i = load i64, ptr %i.ku, align 8, !alias.scope !127160, !noalias !127086 ; 2 uses
  %6 = shufflevector <4 x i64> %5, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %6, ptr %.sroa.5160.0..sroa_idx.i.i, align 8, !noalias !127159
  %.sroa.6162.sroa.6.0..sroa.6162.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.kv, ptr %.sroa.6162.sroa.6.0..sroa.6162.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !127159
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !127161
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.kw, align 8, !noalias !127158
  %i.kx = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc114.i.i unwind label %.loopexit.split-lp.i.i, !noalias !127088

.noexc114.i.i:                                    ; preds = %bb.br
  %i.ky = icmp eq i64 %.sroa.4176.8.copyload.i.i, -1
  %i.kz = zext i1 %i.ky to i64
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kx, i64 %i.kz)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1V_9iterators11AxisIterMutdINtNtNtB1V_9dimension3dim3DimAjj1_EEEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB76_5types3any5PyAnyEB71_EEs7_0EECskcxRuJ53GpR_9rustworkx(i64 noundef %.sroa.4176.8.copyload.i.i, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.bs unwind label %.loopexit.split-lp.i.i, !noalias !127088

bb.bs:                                            ; preds = %.noexc114.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127086
  br label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc127.i.i, %bb.bv, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !127087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !127086
  call void @llvm.experimental.noalias.scope.decl(metadata !127162)
  %i.la = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i116.i.i = load ptr, ptr %i.la, align 8, !alias.scope !127162, !noalias !127086, !nonnull !67, !noundef !67 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i117.i.i = load i64, ptr %i.lb, align 8, !alias.scope !127162, !noalias !127086, !noundef !67 ; 4 uses
  %i.lc = icmp eq i64 %.val1.i117.i.i, 0
  br i1 %i.lc, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph230

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph230
  %i.ld = icmp eq i64 %i.lf, %.val1.i117.i.i
  br i1 %i.ld, label %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph230

.lr.ph230:                                        ; preds = %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i229 = phi i64 [ %i.lf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ 0, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i ] ; 2 uses
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %.val.i116.i.i, i64 %.sroa.0.0.i.i.i.i.i229
  %i.lf = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i229, 1 ; 4 uses
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.le)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i unwind label %bb.bt, !noalias !127163

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i: ; preds = %.lr.ph232
  %i.lg = add i64 %.sroa.0.1.i.i.i.i.i231, 1      ; 2 uses
  %i.lh = icmp eq i64 %i.lg, %.val1.i117.i.i
  br i1 %i.lh, label %.body.i118.i.i, label %.lr.ph232

bb.bt:                                            ; preds = %.lr.ph230
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = icmp eq i64 %i.lf, %.val1.i117.i.i
  br i1 %i.lj, label %.body.i118.i.i, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.bt, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i231 = phi i64 [ %i.lg, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i ], [ %i.lf, %bb.bt ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %.val.i116.i.i, i64 %.sroa.0.1.i.i.i.i.i231
  invoke void @_RNvXs6_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSetNtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lk)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i unwind label %bb.bu, !noalias !127163

bb.bu:                                            ; preds = %.lr.ph232
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127163
  unreachable

.body.i118.i.i:                                   ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit7.i.i.i.i.i, %bb.bt
  %.val4.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !127162, !noalias !127086 ; 2 uses
  %i.lm = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.lm, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %.body.i118.i.i
  %i.ln = mul nuw i64 %.val4.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i116.i.i, i64 noundef %i.ln, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127163
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtCsiCakYNGl26C_11fixedbitset11FixedBitSetECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !127162, !noalias !127086 ; 2 uses
  %i.lo = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.lo, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i: ; preds = %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.lp = mul nuw i64 %.val2.i.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i116.i.i, i64 noundef %i.lp, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127163
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.bv:                                            ; preds = %bb.bp
  %i.lq = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.6169.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !127164)
  %i.lr = load ptr, ptr %i.kt, align 8, !alias.scope !127165, !noalias !127166, !nonnull !67, !noundef !67
  %.sroa.4168.8.copyload.i.i = load i64, ptr %i.ku, align 8, !alias.scope !127167, !noalias !127086 ; 2 uses
  %.sroa.7.24.copyload.i.i = load i64, ptr %i.lq, align 8, !alias.scope !127167, !noalias !127086
  %i.ls = load <3 x i64>, ptr %.sroa.6169.8..sroa_idx.i.i, align 8, !alias.scope !127167, !noalias !127086
  %i.lt = shufflevector <3 x i64> %i.ls, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %.not.i12.i.not.i.i = icmp eq i64 %.sroa.4168.8.copyload.i.i, 0
  br i1 %.not.i12.i.not.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bv
  %.sroa.4.0..sroa_idx.i1.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.bw

bb.bw:                                            ; preds = %.noexc127.i.i, %.lr.ph.i.i.i
  %.sroa.2.013.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lw, %.noexc127.i.i ] ; 4 uses
  %i.lu = mul i64 %.sroa.2.013.i.i.i, %.sroa.7.24.copyload.i.i
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lr, i64 %i.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127168
  store i64 %.sroa.2.013.i.i.i, ptr %i.a, align 8, !noalias !127168
  store ptr %i.lv, ptr %.sroa.4.0..sroa_idx.i1.i.i.i, align 8, !noalias !127169
  store <2 x i64> %i.lt, ptr %.sroa.46.0..sroa.4.0..sroa_idx.i1.sroa_idx.i.i.i, align 8, !noalias !127169
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !127170, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.kq, align 8, !noalias !127170
  invoke fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i, i64 noundef %.sroa.2.013.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i1.i.i.i) #64
          to label %.noexc127.i.i unwind label %.loopexit.i.i, !noalias !127088

.noexc127.i.i:                                    ; preds = %bb.bw
  %i.lw = add nuw i64 %.sroa.2.013.i.i.i, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127168
  %exitcond.not.i.i.i = icmp eq i64 %i.lw, %.sroa.4168.8.copyload.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bw

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i, %_RNvXsp_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !127086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !127086
  %i.lx = load ptr, ptr %.312.i.i, align 8, !invariant.load !67, !noalias !127086 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i66, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  invoke void %i.lx(ptr noundef nonnull %i.gj)
          to label %bb.by unwind label %bb.bz, !noalias !127088

bb.by:                                            ; preds = %bb.bx, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127088
  %.val38.i.i = load ptr, ptr %i.o, align 8, !noalias !127086 ; 5 uses
  %.val39.i.i = load ptr, ptr %i.fm, align 8, !noalias !127086, !nonnull !67, !align !98, !noundef !67 ; 5 uses
  %i.ly = load ptr, ptr %.val39.i.i, align 8, !invariant.load !67, !noalias !127088 ; 2 uses
  %.not.i130.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i130.i.i, label %bb.cb, label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127088
  br label %.body128.i.i

bb.ca:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  invoke void %i.ly(ptr noundef nonnull %.val38.i.i)
          to label %bb.cb unwind label %bb.cc, !noalias !127088

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %i.ma = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !range !70, !invariant.load !67, !noalias !127088 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 0
  br i1 %i.mc, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i132.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i132.i.i: ; preds = %bb.cb
  %i.md = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.me = load i64, ptr %i.md, align 8, !range !127, !invariant.load !67, !noalias !127088
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.mb, i64 noundef range(i64 1, -9223372036854775807) %i.me) #59, !noalias !127088
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !range !70, !invariant.load !67, !noalias !127088 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %.body133.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i131.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i131.i.i: ; preds = %bb.cc
  %i.mj = getelementptr inbounds nuw i8, ptr %.val39.i.i, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !range !127, !invariant.load !67, !noalias !127088
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) %i.mk) #59, !noalias !127088
  br label %.body133.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i132.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !127086
  %.val.i.i = load i64, ptr %i.q, align 8, !noalias !127086 ; 2 uses
  %i.ml = icmp eq i64 %.val.i.i, 0
  br i1 %i.ml, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val22.i.i = load ptr, ptr %i.mm, align 8, !noalias !127086, !nonnull !67, !noundef !67
  %i.mn = shl nuw i64 %.val.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22.i.i, i64 noundef %i.mn, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !127088
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i135.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEp6OutputjEL_EECskcxRuJ53GpR_9rustworkx.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !127086
  %.val33.i.i = load ptr, ptr %i.r, align 8, !noalias !127086 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val34.i.i = load i64, ptr %i.mo, align 8, !noalias !127086, !noundef !67 ; 3 uses
  %i.mp = icmp eq i64 %.val34.i.i, 0
  br i1 %i.mp, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i
  %i.mq = shl i64 %.val34.i.i, 4                  ; 2 uses
  %i.mr = add i64 %i.mq, 16                       ; 2 uses
  %i.ms = add i64 %.val34.i.i, 17
  %i.mt = add i64 %i.ms, %i.mr                    ; 4 uses
  %i.mu = icmp uge i64 %i.mt, %i.mr
  %i.mv = icmp ult i64 %i.mt, 9223372036854775793
  call void @llvm.assume(i1 %i.mu)
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33.i.i) ]
  %i.mw = icmp eq i64 %i.mt, 0
  br i1 %i.mw, label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.mx = sub nuw nsw i64 -16, %i.mq
  %i.my = getelementptr inbounds i8, ptr %.val33.i.i, i64 %i.mx
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.my, i64 noundef %i.mt, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !127088
  br label %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.ce:                                            ; preds = %bb.bq
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ce, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i4.i3.i, %bb.ap
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !127088
  unreachable

.thread.i.i:                                      ; preds = %bb.bq, %.thread199.i.i, %.body.i.i96.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i
  %.pn192.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.bq ], [ %i.kp, %.thread199.i.i ], [ %i.kn, %.body.i.i96.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i6.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !127171)
  call void @llvm.experimental.noalias.scope.decl(metadata !127172)
  call void @llvm.experimental.noalias.scope.decl(metadata !127173)
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !127174, !noalias !127086, !noundef !67 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.thread.i.i
  %i.nc = load ptr, ptr %i.n, align 8, !alias.scope !127174, !noalias !127086, !nonnull !67, !noundef !67
  %i.nd = shl nuw i64 %i.nb, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nc, i64 noundef %i.nd, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !127175
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.cd, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEECskcxRuJ53GpR_9rustworkx.exit136.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !127086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !127086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !127084
  %i.ne = invoke fastcc noundef nonnull ptr @_RNvMs0_NtCs3Tt2PVjAfPX_5numpy5arrayINtB5_7PyArraydINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EE16from_owned_arrayCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.u)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit72 unwind label %.body.thread92

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit72: ; preds = %_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EECskcxRuJ53GpR_9rustworkx.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !127084
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ne, ptr %i.nf, align 8
  store i64 0, ptr %0, align 8
  %i.ng = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73: ; preds = %bb.b, %.noexc52, %bb.cf, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  ret void

bb.cf:                                            ; preds = %bb.p, %bb.l, %bb.h
  store i64 1, ptr %0, align 8
  %i.nh = atomicrmw sub ptr %i.au, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit73
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path37___pyfunction_graph_all_shortest_paths(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10 = alloca [56 x i8], align 8           ; 3 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = alloca [72 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
end_hunk_4
begin_hunk_5_@llvm.fabs.v2f64
!126342 = distinct !{!126342, !126339, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!126343 = distinct !{!126343, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!126344 = distinct !{!126344, !126343, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!126345 = distinct !{!126345, !126343, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!126346 = distinct !{!126346, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!126347 = distinct !{!126347, !126346, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!126348 = distinct !{!126348, !126346, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!126349 = distinct !{!126349, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126350 = distinct !{!126350, !126349, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126351 = distinct !{!126351, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126352 = distinct !{!126352, !126351, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126353 = distinct !{!126353, !126349, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126354 = distinct !{!126354, !126351, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126355 = distinct !{!126355, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126356 = distinct !{!126356, !126355, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126357 = distinct !{!126357, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126358 = distinct !{!126358, !126357, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126359 = distinct !{!126359, !126355, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126360 = distinct !{!126360, !126357, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126361 = distinct !{!126361, !"_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path21graph_distance_matrix"}
!126362 = distinct !{!126362, !126361, !"_RNvNtCskcxRuJ53GpR_9rustworkx13shortest_path21graph_distance_matrix: argument 0"}
!126363 = distinct !{!126363, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx"}
!126364 = distinct !{!126364, !126363, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126365 = distinct !{!126365, !126363, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126366 = distinct !{!126366, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126367 = distinct !{!126367, !126366, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126368 = distinct !{!126368, !"_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx"}
!126369 = distinct !{!126369, !126368, !"_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx: argument 0"}
!126370 = distinct !{!126370, !"_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx"}
!126371 = distinct !{!126371, !126370, !"_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126372 = distinct !{!126372, !126370, !"_RINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTBP_jEE9from_iterINtNtNtB1L_8adapters3map3MapINtNtB30_9enumerate9EnumerateINtNtBR_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4u_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB3T_11StableGraphB4p_B4p_NtBT_10UndirectedEE0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126373 = distinct !{!126373, !"_RNvMs2_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE27with_capacity_and_hasher_inCskcxRuJ53GpR_9rustworkx"}
!126374 = distinct !{!126374, !126373, !"_RNvMs2_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE27with_capacity_and_hasher_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126375 = distinct !{!126375, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1m_11StableGraphB2q_B2q_NtB1q_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6z_7HashMapNtB1o_9NodeIndexjEINtNtB5M_7collect12FromIteratorTB7i_jEE9from_iterB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126376 = distinct !{!126376, !126375, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2v_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1m_11StableGraphB2q_B2q_NtB1q_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB6z_7HashMapNtB1o_9NodeIndexjEINtNtB5M_7collect12FromIteratorTB7i_jEE9from_iterB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126377 = distinct !{!126377, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1s_11StableGraphB2w_B2w_NtB1w_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5O_8for_each4callTNtB1u_9NodeIndexjENCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7k_7HashMapB6S_jEINtNtB5S_7collect12FromIteratorB6R_E9from_iterBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126378 = distinct !{!126378, !126377, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2B_5types3any5PyAnyEEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1s_11StableGraphB2w_B2w_NtB1w_10UndirectedEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5O_8for_each4callTNtB1u_9NodeIndexjENCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7k_7HashMapB6S_jEINtNtB5S_7collect12FromIteratorB6R_E9from_iterBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126379 = distinct !{!126379, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2k_5types3any5PyAnyEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjNtB1d_9NodeIndexETB4l_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1b_11StableGraphB2f_B2f_NtB1f_10UndirectedEE0NCINvNvB3i_8for_each4callB4C_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7B_7HashMapB4l_jEINtNtB3m_7collect12FromIteratorB4C_E9from_iterINtB41_3MapBS_B4K_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126380 = distinct !{!126380, !126379, !"_RINvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2k_5types3any5PyAnyEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjNtB1d_9NodeIndexETB4l_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB1b_11StableGraphB2f_B2f_NtB1f_10UndirectedEE0NCINvNvB3i_8for_each4callB4C_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB7B_7HashMapB4l_jEINtNtB3m_7collect12FromIteratorB4C_E9from_iterINtB41_3MapBS_B4K_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126381 = distinct !{!126381, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2i_8adapters9enumerateINtB3n_9EnumeratepEB2c_4fold9enumerateNtB8_9NodeIndexuNCINvNtB3p_3map8map_foldTjB4q_ETB4q_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB6_11StableGraphB1a_B1a_NtBa_10UndirectedEE0NCINvNvB2c_8for_each4callB5b_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB88_7HashMapB4q_jEINtNtB2g_7collect12FromIteratorB5b_E9from_iterINtB4L_3MapIB3P_B3_EB5j_EE0E0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126382 = distinct !{!126382, !126381, !"_RINvYINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1f_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2i_8adapters9enumerateINtB3n_9EnumeratepEB2c_4fold9enumerateNtB8_9NodeIndexuNCINvNtB3p_3map8map_foldTjB4q_ETB4q_jEuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtB6_11StableGraphB1a_B1a_NtBa_10UndirectedEE0NCINvNvB2c_8for_each4callB5b_NCINvXs1k_NtCs3sCKvcUjPpt_9hashbrown3mapINtB88_7HashMapB4q_jEINtNtB2g_7collect12FromIteratorB5b_E9from_iterINtB4L_3MapIB3P_B3_EB5j_EE0E0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126383 = distinct !{!126383, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126384 = distinct !{!126384, !126383, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126385 = distinct !{!126385, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126386 = distinct !{!126386, !126385, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126387 = distinct !{!126387, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126388 = distinct !{!126388, !126387, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126389 = distinct !{!126389, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126390 = distinct !{!126390, !126389, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126391 = distinct !{!126391, !"_RNvXsz_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit19IntoNodeIdentifiers16node_identifiersCskcxRuJ53GpR_9rustworkx"}
!126392 = distinct !{!126392, !126391, !"_RNvXsz_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit19IntoNodeIdentifiers16node_identifiersCskcxRuJ53GpR_9rustworkx: argument 0"}
!126393 = distinct !{!126393, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126394 = distinct !{!126394, !126393, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126395 = distinct !{!126395, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_NtB4N_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126396 = distinct !{!126396, !126395, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_NtB4N_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126397 = distinct !{!126397, !126395, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_NtB4N_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126398 = distinct !{!126398, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_NtB53_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126399 = distinct !{!126399, !126398, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_NtB53_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126400 = distinct !{!126400, !126398, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_NtB53_10UndirectedEEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126401 = distinct !{!126401, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126402 = distinct !{!126402, !126401, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126403 = distinct !{!126403, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_NtB4K_10UndirectedEEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx"}
!126404 = distinct !{!126404, !126403, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_NtB4K_10UndirectedEEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 0"}
!126405 = distinct !{!126405, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_NtB4s_10UndirectedEEs3_0EECskcxRuJ53GpR_9rustworkx"}
!126406 = distinct !{!126406, !126405, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_NtB4s_10UndirectedEEs3_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126407 = distinct !{!126407, !126403, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_NtB4K_10UndirectedEEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 1"}
!126408 = distinct !{!126408, !126405, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_NtB4s_10UndirectedEEs3_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126409 = distinct !{!126409, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_NtB2R_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6b_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126410 = distinct !{!126410, !126409, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_NtB2R_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6b_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126411 = distinct !{!126411, !126409, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_NtB2R_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6b_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126412 = distinct !{!126412, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecB6u_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126413 = distinct !{!126413, !126412, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecB6u_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126414 = distinct !{!126414, !126412, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_NtB2X_10UndirectedEEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5r_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7j_3VecB6u_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126415 = distinct !{!126415, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_NtB4k_10UndirectedEEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7o_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126416 = distinct !{!126416, !126415, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_NtB4k_10UndirectedEEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB7o_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126417 = distinct !{!126417, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx"}
!126418 = distinct !{!126418, !126417, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_NtB3a_10UndirectedEEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6I_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126419 = distinct !{!126419, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx"}
!126420 = distinct !{!126420, !126419, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!126421 = distinct !{!126421, !126419, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs3_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126422 = distinct !{null}
!126423 = distinct !{!126423, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126424 = distinct !{!126424, !126423, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126425 = distinct !{!126425, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126426 = distinct !{!126426, !126425, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126427 = distinct !{!126427, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!126428 = distinct !{!126428, !126427, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126429 = distinct !{!126429, !126423, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126430 = distinct !{!126430, !126425, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126431 = distinct !{!126431, !126427, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126432 = distinct !{!126432, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126433 = distinct !{!126433, !126432, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126434 = distinct !{!126434, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!126435 = distinct !{!126435, !126434, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126436 = distinct !{!126436, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!126437 = distinct !{!126437, !126436, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126438 = distinct !{!126438, !126432, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_NtB9_10UndirectedENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126439 = distinct !{!126439, !126434, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126440 = distinct !{!126440, !126436, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedE20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126441 = distinct !{!126441, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_NtB5r_10UndirectedEEs3_0EE0E0CskcxRuJ53GpR_9rustworkx"}
!126442 = distinct !{!126442, !126441, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_NtB5r_10UndirectedEEs3_0EE0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126443 = distinct !{!126443, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_NtB4u_10UndirectedEEs3_0EE0CskcxRuJ53GpR_9rustworkx"}
!126444 = distinct !{!126444, !126443, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_NtB4u_10UndirectedEEs3_0EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126445 = distinct !{!126445, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!126446 = distinct !{!126446, !126445, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126447 = distinct !{!126447, !126445, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!126448 = distinct !{!126448, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_NtB4V_10UndirectedEEs7_0ECskcxRuJ53GpR_9rustworkx"}
!126449 = distinct !{!126449, !126448, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_NtB4V_10UndirectedEEs7_0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126450 = distinct !{!126450, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_NtB5G_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx"}
!126451 = distinct !{!126451, !126450, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_NtB5G_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126452 = distinct !{!126452, !126450, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_NtB5G_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126453 = distinct !{!126453, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_NtB5h_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx"}
!126454 = distinct !{!126454, !126453, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_NtB5h_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126455 = distinct !{!126455, !126453, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_NtB5h_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126456 = distinct !{!126456, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_NtB6l_10UndirectedEEs7_0EEECskcxRuJ53GpR_9rustworkx"}
!126457 = distinct !{!126457, !126456, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_NtB6l_10UndirectedEEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126458 = distinct !{!126458, !126456, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_NtB6l_10UndirectedEEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126459 = distinct !{!126459, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_NtB72_10UndirectedEEs7_0EEEECskcxRuJ53GpR_9rustworkx"}
!126460 = distinct !{!126460, !126459, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_NtB72_10UndirectedEEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126461 = distinct !{!126461, !126459, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_NtB72_10UndirectedEEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126462 = distinct !{!126462, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_NtB4H_10UndirectedEEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7F_8ViewReprQdEINtNtNtB7F_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7F_8parallel3par16ParallelProducerINtNtB7F_9iterators11AxisIterMutdB8u_EEECskcxRuJ53GpR_9rustworkx"}
!126463 = distinct !{!126463, !126462, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_NtB4H_10UndirectedEEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7F_8ViewReprQdEINtNtNtB7F_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7F_8parallel3par16ParallelProducerINtNtB7F_9iterators11AxisIterMutdB8u_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126464 = distinct !{!126464, !126462, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_NtB4H_10UndirectedEEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7F_8ViewReprQdEINtNtNtB7F_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7F_8parallel3par16ParallelProducerINtNtB7F_9iterators11AxisIterMutdB8u_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126465 = distinct !{!126465, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx"}
!126466 = distinct !{!126466, !126465, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126467 = distinct !{!126467, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!126468 = distinct !{!126468, !126467, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126469 = distinct !{!126469, !126467, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!126470 = distinct !{!126470, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx"}
!126471 = distinct !{!126471, !126470, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_NtB6n_10UndirectedEEs6_0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126472 = distinct !{!126472, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_NtB5z_10UndirectedEEs6_0E0E0CskcxRuJ53GpR_9rustworkx"}
!126473 = distinct !{!126473, !126472, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_NtB5z_10UndirectedEEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!126474 = distinct !{!126474, !126472, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_NtB5z_10UndirectedEEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126475 = distinct !{!126475, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_NtB4j_10UndirectedEEs6_0E0CskcxRuJ53GpR_9rustworkx"}
!126476 = distinct !{!126476, !126475, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_NtB4j_10UndirectedEEs6_0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126477 = distinct !{!126477, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs6_0CskcxRuJ53GpR_9rustworkx"}
!126478 = distinct !{!126478, !126477, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs6_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126479 = distinct !{!126479, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx"}
!126480 = distinct !{!126480, !126479, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126481 = distinct !{!126481, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx"}
!126482 = distinct !{!126482, !126481, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126483 = distinct !{!126483, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!126484 = distinct !{!126484, !126483, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!126485 = !{!126348, !126347, !126345, !126344, !126342, !126341, !126340}
!126486 = !{!126350}
!126487 = !{!126352}
!126488 = !{!126352, !126354, !126350, !126353}
!126489 = !{!126353}
!126490 = !{!126352, !126350}
!126491 = !{!126354, !126353}
!126492 = !{!126356}
!126493 = !{!126358}
!126494 = !{!126358, !126360, !126356, !126359}
!126495 = !{!126358, !126356}
!126496 = !{!126360, !126359}
!126497 = !{!126362}
!126498 = !{!126364}
!126499 = !{!126365, !126364, !126362}
!126500 = !{!126364, !126362}
!126501 = !{!126365}
!126502 = !{!126367, !126365}
!126503 = !{!126369}
!126504 = !{!126369, !126365, !126364, !126362}
!126505 = !{!126372, !126371, !126365, !126364, !126362}
!126506 = !{!126374}
!126507 = !{!126386, !126384, !126382, !126380, !126378, !126376, !126372, !126371, !126365}
!126508 = !{!126372, !126371, !126365}
!126509 = !{!126371, !126365, !126364, !126362}
!126510 = !{!126388, !126365}
!126511 = !{!126390, !126365}
!126512 = !{!126392}
!126513 = !{!126394, !126365}
!126514 = !{!126365, !126362}
!126515 = !{!126400, !126399, !126397, !126396, !126365, !126364, !126362}
!126516 = !{!126402, !126400, !126399, !126397, !126396, !126365}
!126517 = !{!126404}
!126518 = !{!126406}
!126519 = !{!126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365, !126364, !126362}
!126520 = !{!126421, !126420, !126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365, !126364, !126362}
!126521 = !{!126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365}
!126522 = !{!126424}
!126523 = !{!126426}
!126524 = !{!126428}
!126525 = !{!126428, !126426, !126424}
!126526 = !{!126431, !126430, !126429, !126421, !126420, !126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365}
!126527 = !{!126431, !126428, !126430, !126426, !126429, !126424, !126421, !126420, !126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365}
!126528 = !{!126433}
!126529 = !{!126435}
!126530 = !{!126437}
!126531 = !{!126437, !126435, !126433}
!126532 = !{!126440, !126439, !126438, !126421, !126420, !126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365}
!126533 = !{!126440, !126437, !126439, !126435, !126438, !126433, !126421, !126420, !126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365}
!126534 = !{!126444, !126442, !126418, !126416, !126414, !126413, !126411, !126410, !126406, !126408, !126404, !126407, !126400, !126399, !126397, !126396, !126365}
!126535 = !{!126406, !126404}
!126536 = !{!126416, !126414, !126413, !126411, !126410, !126408, !126407, !126400, !126399, !126397, !126396, !126365, !126364, !126362}
!126537 = !{!126400, !126399, !126397, !126396, !126365}
!126538 = !{!126399, !126396, !126365, !126364, !126362}
!126539 = !{!126446}
!126540 = !{!126447}
!126541 = !{!126446, !126365, !126364, !126362}
!126542 = !{!126449, !126365, !126364, !126362}
!126543 = !{!126464, !126463, !126461, !126460, !126458, !126457, !126455, !126454, !126452, !126451, !126449, !126365, !126364, !126362}
!126544 = !{!126464, !126460, !126457, !126454, !126451, !126365, !126364, !126362}
!126545 = !{!126446, !126447}
!126546 = !{!126464, !126461, !126460, !126458, !126457, !126455, !126454, !126452, !126451, !126449, !126365, !126364, !126362}
!126547 = !{!126466}
!126548 = !{!126466, !126365}
!126549 = !{!126468}
!126550 = !{!126469}
!126551 = !{!126468, !126365, !126364, !126362}
!126552 = !{!126468, !126469}
!126553 = !{!126474, !126473, !126471, !126365, !126364, !126362}
!126554 = !{!126474, !126471, !126365, !126364, !126362}
!126555 = !{!126478, !126476, !126474, !126473, !126471, !126365, !126364, !126362}
!126556 = !{!126480}
!126557 = !{!126482}
!126558 = !{!126484}
!126559 = !{!126484, !126482, !126480}
!126560 = !{!126484, !126482, !126480, !126365}
!126561 = distinct !{!126561, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_"}
!126562 = distinct !{!126562, !126561, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 2"}
!126563 = distinct !{!126563, !126561, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 1"}
!126564 = distinct !{!126564, !126561, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 0"}
!126565 = distinct !{!126565, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!126566 = distinct !{!126566, !126565, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!126567 = distinct !{!126567, !126565, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!126568 = distinct !{!126568, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_"}
!126569 = distinct !{!126569, !126568, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 1"}
!126570 = distinct !{!126570, !126568, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 0"}
!126571 = distinct !{!126571, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!126572 = distinct !{!126572, !126571, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126573 = distinct !{!126573, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!126574 = distinct !{!126574, !126573, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126575 = distinct !{!126575, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!126576 = distinct !{!126576, !126575, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126577 = distinct !{!126577, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!126578 = distinct !{!126578, !126577, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126579 = distinct !{!126579, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!126580 = distinct !{!126580, !126579, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126581 = distinct !{!126581, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!126582 = distinct !{!126582, !126581, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!126583 = distinct !{!126583, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx"}
!126584 = distinct !{!126584, !126583, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126585 = distinct !{!126585, !126583, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126586 = distinct !{!126586, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx"}
!126587 = distinct !{!126587, !126586, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126588 = distinct !{!126588, !126586, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126589 = distinct !{!126589, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126590 = distinct !{!126590, !126589, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126591 = distinct !{!126591, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!126592 = distinct !{!126592, !126591, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126593 = distinct !{!126593, !126589, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126594 = distinct !{!126594, !126591, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126595 = distinct !{!126595, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126596 = distinct !{!126596, !126595, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126597 = distinct !{!126597, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!126598 = distinct !{!126598, !126597, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126599 = distinct !{!126599, !126595, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126600 = distinct !{!126600, !126597, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126601 = !{!126570, !126569, !126567, !126566, !126564, !126563, !126562}
!126602 = !{!126582, !126580, !126578, !126576, !126574, !126572}
!126603 = !{!126588, !126587, !126585, !126584}
!126604 = !{!126590}
!126605 = !{!126592}
!126606 = !{!126592, !126594, !126590, !126593}
!126607 = !{!126593}
!126608 = !{!126592, !126590}
!126609 = !{!126594, !126593}
!126610 = !{!126596}
!126611 = !{!126598}
!126612 = !{!126598, !126600, !126596, !126599}
!126613 = !{!126599}
!126614 = !{!126598, !126596}
!126615 = !{!126600, !126599}
!126616 = distinct !{!126616, !"_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions12PyIndexErrorNtNtB4_6string6StringE0E3newCskcxRuJ53GpR_9rustworkx"}
!126617 = distinct !{!126617, !126616, !"_RNvMNtCs87CvPiUlf0m_5alloc5boxedINtB2_3BoxNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions12PyIndexErrorNtNtB4_6string6StringE0E3newCskcxRuJ53GpR_9rustworkx: argument 0"}
!126618 = distinct !{!126618, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyIndexErrorNtNtCs87CvPiUlf0m_5alloc6string6StringE0ECskcxRuJ53GpR_9rustworkx"}
!126619 = distinct !{!126619, !126618, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNCINvMs_NtCsi0YPOvDEjiZ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions12PyIndexErrorNtNtCs87CvPiUlf0m_5alloc6string6StringE0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126620 = distinct !{!126620, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx"}
!126621 = distinct !{!126621, !126620, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx: argument 0"}
!126622 = distinct !{!126622, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx"}
!126623 = distinct !{!126623, !126622, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126624 = distinct !{!126624, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_"}
!126625 = distinct !{!126625, !126624, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_: argument 2"}
!126626 = distinct !{!126626, !126624, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_: argument 1"}
!126627 = distinct !{!126627, !126624, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford12bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2u_5types3any5PyAnyEB2p_ENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2u_3err5PyErrINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEEB3B_: argument 0"}
!126628 = distinct !{!126628, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_"}
!126629 = distinct !{!126629, !126628, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_: argument 2"}
!126630 = distinct !{!126630, !126628, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_: argument 1"}
!126631 = distinct !{!126631, !126628, !"_RINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path12bellman_ford18inner_bellman_fordRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_EINtNtCs87CvPiUlf0m_5alloc3vec3VecNtB1t_9NodeIndexENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0dNtNtB2A_3err5PyErrIB3C_INtNtCslwFuT2d6ECx_4core6option6OptiondEEEB4v_: argument 0"}
!126632 = distinct !{!126632, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126633 = distinct !{!126633, !126632, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126634 = distinct !{!126634, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126635 = distinct !{!126635, !126634, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126636 = distinct !{!126636, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEINtB2_11DistanceMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE5buildCskcxRuJ53GpR_9rustworkx"}
!126637 = distinct !{!126637, !126636, !"_RNvXNtCsbNMRYq9Xj9a_14rustworkx_core11distancemapINtNtCs87CvPiUlf0m_5alloc3vec3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEEINtB2_11DistanceMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexdE5buildCskcxRuJ53GpR_9rustworkx: argument 0"}
!126638 = distinct !{!126638, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx"}
!126639 = distinct !{!126639, !126638, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptiondENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx: argument 0"}
!126640 = distinct !{!126640, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126641 = distinct !{!126641, !126640, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126642 = distinct !{!126642, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE11extend_withCskcxRuJ53GpR_9rustworkx"}
!126643 = distinct !{!126643, !126642, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptiondEE11extend_withCskcxRuJ53GpR_9rustworkx: argument 0"}
!126644 = distinct !{!126644, !119}
!126645 = distinct !{!126645, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126646 = distinct !{!126646, !126645, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126647 = distinct !{!126647, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx"}
!126648 = distinct !{!126648, !126647, !"_RINvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_elemINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskcxRuJ53GpR_9rustworkx: argument 0"}
!126649 = distinct !{!126649, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126650 = distinct !{!126650, !126649, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126651 = distinct !{!126651, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE11extend_withCskcxRuJ53GpR_9rustworkx"}
!126652 = distinct !{!126652, !126651, !"_RNvMs4_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEE11extend_withCskcxRuJ53GpR_9rustworkx: argument 0"}
!126653 = distinct !{!126653, !119}
!126654 = distinct !{!126654, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126655 = distinct !{!126655, !126654, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt12ex_rfind_mapNCNvXss_NtB1w_12stable_graphINtB4x_11NodeIndicesB2y_ENtNtNtBa_6traits12double_ended19DoubleEndedIterator9next_back0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126656 = distinct !{!126656, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx"}
!126657 = distinct !{!126657, !126656, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE16with_capacity_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126658 = distinct !{!126658, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126659 = distinct !{!126659, !126658, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126660 = distinct !{!126660, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx"}
!126661 = distinct !{!126661, !126660, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx: argument 0"}
!126662 = distinct !{!126662, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set"}
!126663 = distinct !{!126663, !126662, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set: argument 0"}
!126664 = distinct !{!126664, !"_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx"}
!126665 = distinct !{!126665, !126664, !"_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx: argument 1"}
!126666 = distinct !{!126666, !126664, !"_RNvXsF_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit9IntoEdges5edgesCskcxRuJ53GpR_9rustworkx: argument 0"}
!126667 = distinct !{!126667, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx"}
!126668 = distinct !{!126668, !126667, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126669 = distinct !{!126669, !126667, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E14edges_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126670 = distinct !{!126670, !"_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126671 = distinct !{!126671, !126670, !"_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 1"}
!126672 = distinct !{!126672, !126670, !"_RNvXsi_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_5EdgesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1d_5types3any5PyAnyENtB9_8DirectedENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126673 = distinct !{!126673, !126660, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx: argument 0:h.rot"}
!126674 = distinct !{!126674, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0B5_"}
!126675 = distinct !{!126675, !126674, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss0_0B5_: argument 0"}
!126676 = distinct !{!126676, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss_0B5_"}
!126677 = distinct !{!126677, !126676, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss_0B5_: argument 0"}
!126678 = distinct !{!126678, !"_RNvXsQ_NtNtCslwFuT2d6ECx_4core3cmp5implsdNtB7_10PartialOrd2lt"}
!126679 = distinct !{!126679, !126678, !"_RNvXsQ_NtNtCslwFuT2d6ECx_4core3cmp5implsdNtB7_10PartialOrd2lt: argument 1"}
!126680 = distinct !{!126680, !126678, !"_RNvXsQ_NtNtCslwFuT2d6ECx_4core3cmp5implsdNtB7_10PartialOrd2lt: argument 0"}
!126681 = distinct !{!126681, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx"}
!126682 = distinct !{!126682, !126681, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126683 = distinct !{!126683, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set"}
!126684 = distinct !{!126684, !126683, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set: argument 0"}
!126685 = distinct !{!126685, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx"}
!126686 = distinct !{!126686, !126685, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE13push_back_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126687 = distinct !{!126687, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set"}
!126688 = distinct !{!126688, !126687, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3set: argument 0"}
!126689 = distinct !{!126689, !126660, !"_RNvMs4_NtNtCs87CvPiUlf0m_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE9pop_frontCskcxRuJ53GpR_9rustworkx: argument 0:pre.rot"}
!126690 = distinct !{!126690, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126691 = distinct !{!126691, !126690, !"_RNvXsr_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126692 = distinct !{!126692, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126693 = distinct !{!126693, !126692, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtCs68Jln09rRqb_8petgraph10graph_impl4NodeINtNtBc_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2D_5types3any5PyAnyEEEEENtNtB1y_10iter_utils12IterUtilsExt11ex_find_mapNCNvXsr_NtB1w_12stable_graphINtB4w_11NodeIndicesB2y_ENtNtNtBa_6traits8iterator8Iterator4next0NtB1w_9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126694 = distinct !{!126694, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx"}
!126695 = distinct !{!126695, !126694, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126696 = distinct !{!126696, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx"}
!126697 = distinct !{!126697, !126696, !"_RNvMsG_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE8push_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!126698 = distinct !{!126698, !"_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx"}
!126699 = distinct !{!126699, !126698, !"_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 0"}
!126700 = distinct !{!126700, !126698, !"_RINvNvMNtCslwFuT2d6ECx_4core5sliceSp7reverse7revswapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx: argument 1"}
!126701 = distinct !{!126701, !74, !75}
!126702 = distinct !{!126702, !75, !74}
!126703 = distinct !{!126703, !"_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4n_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5q_"}
!126704 = distinct !{!126704, !126703, !"_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4n_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5q_: argument 1"}
!126705 = distinct !{!126705, !126703, !"_RINvXs9_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorTjBP_EE9from_iterINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4n_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5q_: argument 0"}
!126706 = distinct !{!126706, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx"}
!126707 = distinct !{!126707, !126706, !"_RNvMs1_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE24with_capacity_and_hasherCskcxRuJ53GpR_9rustworkx: argument 0"}
!126708 = distinct !{!126708, !"_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4d_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5g_"}
!126709 = distinct !{!126709, !126708, !"_RINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB6_8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendTjBP_EE6extendINtNtNtB2f_8adapters10filter_map9FilterMapINtNtB6_4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexIBQ_B4d_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0EEB5g_: argument 1"}
!126710 = distinct !{!126710, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1N_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsb_B1a_INtB1a_8IndexMapjIB2B_jENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4G_7collect6ExtendTjB5N_EE6extendB3_E0EB3j_"}
!126711 = distinct !{!126711, !126710, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1N_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXsb_B1a_INtB1a_8IndexMapjIB2B_jENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4G_7collect6ExtendTjB5N_EE6extendB3_E0EB3j_: argument 0"}
!126712 = distinct !{!126712, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1T_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callTjIB2H_jEENCINvXsb_B1g_INtB1g_8IndexMapjB5N_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4M_7collect6ExtendB5L_E6extendBV_E0E0EB3p_"}
!126713 = distinct !{!126713, !126712, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecB1T_EENCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callTjIB2H_jEENCINvXsb_B1g_INtB1g_8IndexMapjB5N_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4M_7collect6ExtendB5L_E6extendBV_E0E0EB3p_: argument 0"}
!126714 = distinct !{!126714, !"_RINvYINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBL_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2g_8adapters10filter_map15filter_map_foldTRBL_RB1y_ETjIB1z_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvB2a_8for_each4callB4b_NCINvXsb_B8_INtB8_8IndexMapjB4d_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB2e_7collect6ExtendB4b_E6extendINtB3g_9FilterMapB3_B4m_EE0E0E0EB4s_"}
!126715 = distinct !{!126715, !126714, !"_RINvYINtNtNtCsfztDQZkQYYe_8indexmap3map4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexINtNtCs87CvPiUlf0m_5alloc3vec3VecBL_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2g_8adapters10filter_map15filter_map_foldTRBL_RB1y_ETjIB1z_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvB2a_8for_each4callB4b_NCINvXsb_B8_INtB8_8IndexMapjB4d_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB2e_7collect6ExtendB4b_E6extendINtB3g_9FilterMapB3_B4m_EE0E0E0EB4s_: argument 0"}
!126716 = distinct !{!126716, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_EETjIB21_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2D_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5i_8IndexMapjB2F_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4n_7collect6ExtendB2D_E6extendINtB4_9FilterMapINtNtB5i_4iter4IterB1c_B20_EB2O_EE0E0E0B2U_"}
!126717 = distinct !{!126717, !126716, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters10filter_map15filter_map_foldTRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexRINtNtCs87CvPiUlf0m_5alloc3vec3VecB1c_EETjIB21_jEEuNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2D_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB5i_8IndexMapjB2F_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB4n_7collect6ExtendB2D_E6extendINtB4_9FilterMapINtNtB5i_4iter4IterB1c_B20_EB2O_EE0E0E0B2U_: argument 0"}
!126718 = distinct !{!126718, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0B5_"}
!126719 = distinct !{!126719, !126718, !"_RNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_0B5_: argument 0"}
!126720 = distinct !{!126720, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE9from_iterB3H_"}
!126721 = distinct !{!126721, !126720, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE9from_iterB3H_: argument 0"}
!126722 = distinct !{!126722, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126723 = distinct !{!126723, !126722, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126724 = distinct !{!126724, !"LVerDomain"}
!126725 = distinct !{!126725, !126724}
!126726 = distinct !{!126726, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecjEINtB4_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE11spec_extendB3p_"}
!126727 = distinct !{!126727, !126726, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecjEINtB4_10SpecExtendjINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE11spec_extendB3p_: argument 0"}
!126728 = distinct !{!126728, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EEB39_"}
!126729 = distinct !{!126729, !126728, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecjE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EEB39_: argument 0"}
!126730 = distinct !{!126730, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB4n_3VecjE14extend_trustedB3_E0EB2d_"}
!126731 = distinct !{!126731, !126730, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB4n_3VecjE14extend_trustedB3_E0EB2d_: argument 0"}
!126732 = distinct !{!126732, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB4Q_3VecjE14extend_trustedBN_E0E0EB2j_"}
!126733 = distinct !{!126733, !126732, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB4Q_3VecjE14extend_trustedBN_E0E0EB2j_: argument 0"}
!126734 = distinct !{!126734, !"_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_juNCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00NCINvNvB1E_8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB54_3VecjE14extend_trustedINtB2u_3MapBF_B34_EE0E0E0EB3c_"}
!126735 = distinct !{!126735, !126734, !"_RINvXs2J_NtNtCslwFuT2d6ECx_4core5slice4iterINtB7_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_juNCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00NCINvNvB1E_8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB54_3VecjE14extend_trustedINtB2u_3MapBF_B34_EE0E0E0EB3c_: argument 0"}
!126736 = distinct !{!126736, !126724}
!126737 = distinct !{!126737, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjuNCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB4e_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0E0B1S_"}
!126738 = distinct !{!126738, !126737, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjuNCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB4e_3VecjE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0E0B1S_: argument 0"}
!126739 = distinct !{!126739, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE0E0B45_"}
!126740 = distinct !{!126740, !126739, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE0E0B45_: argument 0"}
!126741 = distinct !{!126741, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE0B3b_"}
!126742 = distinct !{!126742, !126741, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCNvNtCskcxRuJ53GpR_9rustworkx13shortest_path35digraph_bellman_ford_shortest_pathss1_00EE0B3b_: argument 0"}
!126743 = distinct !{!126743, !74, !75}
!126744 = distinct !{!126744, !119}
!126745 = distinct !{!126745, !74}
end_hunk_5
begin_hunk_6_@llvm.fabs.v2f64
!126957 = distinct !{!126957, !126956, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!126958 = distinct !{!126958, !126952, !"_RNvXsD_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit13IntoNeighbors9neighborsCskcxRuJ53GpR_9rustworkx: argument 0"}
!126959 = distinct !{!126959, !126954, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126960 = distinct !{!126960, !126956, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!126961 = distinct !{!126961, !"_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2x_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx"}
!126962 = distinct !{!126962, !126961, !"_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2x_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126963 = distinct !{!126963, !126961, !"_RINvXsy_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3B_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2x_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126964 = distinct !{!126964, !"_RINvXsx_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendjE6extendINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2n_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx"}
!126965 = distinct !{!126965, !126964, !"_RINvXsx_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendjE6extendINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2n_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126966 = distinct !{!126966, !126964, !"_RINvXsx_CsiCakYNGl26C_11fixedbitsetNtB6_11FixedBitSetINtNtNtNtCslwFuT2d6ECx_4core4iter6traits7collect6ExtendjE6extendINtNtNtBW_8adapters3map3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3r_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBY_3ops8function5FnMutTNtB2n_9NodeIndexEEp6OutputjEL_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!126967 = distinct !{!126967, !"_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBb_3ops8function5FnMutTNtB11_9NodeIndexEEp6OutputjEL_EENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126968 = distinct !{!126968, !126967, !"_RNvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB5_3MapINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB25_5types3any5PyAnyEEQINtNtCs87CvPiUlf0m_5alloc5boxed3BoxDINtNtNtBb_3ops8function5FnMutTNtB11_9NodeIndexEEp6OutputjEL_EENtNtNtB9_6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126969 = distinct !{!126969, !"_RNvXso_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1h_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx"}
!126970 = distinct !{!126970, !126969, !"_RNvXso_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_9NeighborsINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1h_5types3any5PyAnyEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx: argument 0"}
!126971 = distinct !{null}
!126972 = distinct !{!126972, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put"}
!126973 = distinct !{!126973, !126972, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put: argument 0:thread"}
!126974 = distinct !{!126974, !126972, !"_RNvMs0_CsiCakYNGl26C_11fixedbitsetNtB5_11FixedBitSet3put: argument 0"}
!126975 = distinct !{!126975, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs4_0EE0E0CskcxRuJ53GpR_9rustworkx"}
!126976 = distinct !{!126976, !126975, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs4_0EE0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126977 = distinct !{!126977, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs4_0EE0CskcxRuJ53GpR_9rustworkx"}
!126978 = distinct !{!126978, !126977, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs4_0EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!126979 = distinct !{!126979, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx"}
!126980 = distinct !{!126980, !126979, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx: argument 0"}
!126981 = distinct !{!126981, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126982 = distinct !{!126982, !126981, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126983 = distinct !{!126983, !126981, !"_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB27_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5S_5types3any5PyAnyEB5N_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126984 = distinct !{!126984, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx"}
!126985 = distinct !{!126985, !126984, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 1"}
!126986 = distinct !{!126986, !126984, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_18SpecFromIterNestedB13_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB2n_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB68_5types3any5PyAnyEB63_EEs3_0EE9from_iterCskcxRuJ53GpR_9rustworkx: argument 0"}
!126987 = distinct !{!126987, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx"}
!126988 = distinct !{!126988, !126987, !"_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx: argument 0"}
!126989 = distinct !{!126989, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx"}
!126990 = distinct !{!126990, !126989, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 0"}
!126991 = distinct !{!126991, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs3_0EECskcxRuJ53GpR_9rustworkx"}
!126992 = distinct !{!126992, !126991, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs3_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!126993 = distinct !{!126993, !126989, !"_RNvXs_NtNtCs87CvPiUlf0m_5alloc3vec11spec_extendINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEINtB4_10SpecExtendBT_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB24_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5P_5types3any5PyAnyEB5K_EEs3_0EE11spec_extendCskcxRuJ53GpR_9rustworkx: argument 1"}
!126994 = distinct !{!126994, !126991, !"_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5x_5types3any5PyAnyEB5s_EEs3_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!126995 = distinct !{!126995, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx"}
!126996 = distinct !{!126996, !126995, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!126997 = distinct !{!126997, !126995, !"_RINvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB3W_5types3any5PyAnyEB3R_EEs3_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB5T_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedB3_E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!126998 = distinct !{!126998, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx"}
!126999 = distinct !{!126999, !126998, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127000 = distinct !{!127000, !126998, !"_RINvXs0_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB42_5types3any5PyAnyEB3X_EEs3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB59_8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB71_3VecB6c_E14extend_trustedBN_E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127001 = distinct !{!127001, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_EEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB76_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx"}
!127002 = distinct !{!127002, !127001, !"_RINvYINtNtNtCslwFuT2d6ECx_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5p_5types3any5PyAnyEB5k_EEs3_0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB76_3VecB25_E14extend_trustedINtB1B_3MapB3_B2M_EE0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127003 = distinct !{!127003, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx"}
!127004 = distinct !{!127004, !127003, !"_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldjNtCsiCakYNGl26C_11fixedbitset11FixedBitSetuNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4f_5types3any5PyAnyEB4a_EEs3_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6q_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1C_EE0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127005 = distinct !{!127005, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx"}
!127006 = distinct !{!127006, !127005, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx: argument 1"}
!127007 = distinct !{!127007, !127005, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs3_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127008 = distinct !{null}
!127009 = distinct !{!127009, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!127010 = distinct !{!127010, !127009, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127011 = distinct !{!127011, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!127012 = distinct !{!127012, !127011, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127013 = distinct !{!127013, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!127014 = distinct !{!127014, !127013, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127015 = distinct !{!127015, !127009, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127016 = distinct !{!127016, !127011, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127017 = distinct !{!127017, !127013, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127018 = distinct !{!127018, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!127019 = distinct !{!127019, !127018, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127020 = distinct !{!127020, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx"}
!127021 = distinct !{!127021, !127020, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127022 = distinct !{!127022, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx"}
!127023 = distinct !{!127023, !127022, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 1"}
!127024 = distinct !{!127024, !127018, !"_RNvXsE_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphRINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1l_5types3any5PyAnyEB1g_ENtNtB9_5visit21IntoNeighborsDirected18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127025 = distinct !{!127025, !127020, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E18neighbors_directedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127026 = distinct !{!127026, !127022, !"_RNvMs3_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_E20neighbors_undirectedCskcxRuJ53GpR_9rustworkx: argument 0"}
!127027 = distinct !{!127027, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs3_0EE0E0CskcxRuJ53GpR_9rustworkx"}
!127028 = distinct !{!127028, !127027, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callNtCsiCakYNGl26C_11fixedbitset11FixedBitSetNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6w_5types3any5PyAnyEB6r_EEs3_0EE0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127029 = distinct !{!127029, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs3_0EE0CskcxRuJ53GpR_9rustworkx"}
!127030 = distinct !{!127030, !127029, !"_RNCINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB8_3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetE14extend_trustedINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1O_3ops5range5RangejENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5z_5types3any5PyAnyEB5u_EEs3_0EE0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127031 = distinct !{!127031, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!127032 = distinct !{!127032, !127031, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!127033 = distinct !{!127033, !127031, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!127034 = distinct !{!127034, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_EEs7_0ECskcxRuJ53GpR_9rustworkx"}
!127035 = distinct !{!127035, !127034, !"_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB10_9iterators11AxisIterMutdINtNtNtB10_9dimension3dim3DimAjj1_EEEENtB8_16ParallelIterator8for_eachNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB60_5types3any5PyAnyEB5V_EEs7_0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127036 = distinct !{!127036, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_EEs7_0EECskcxRuJ53GpR_9rustworkx"}
!127037 = distinct !{!127037, !127036, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!127038 = distinct !{!127038, !127036, !"_RINvXs_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB15_9iterators11AxisIterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEEENtB7_16ParallelIterator15drive_unindexedINtNtB7_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6L_5types3any5PyAnyEB6G_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!127039 = distinct !{!127039, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_EEs7_0EECskcxRuJ53GpR_9rustworkx"}
!127040 = distinct !{!127040, !127039, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 1"}
!127041 = distinct !{!127041, !127039, !"_RINvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing6bridgeINtNtB4_9enumerate9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEEINtNtB4_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6m_5types3any5PyAnyEB6h_EEs7_0EECskcxRuJ53GpR_9rustworkx: argument 0"}
!127042 = distinct !{!127042, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_EEs7_0EEECskcxRuJ53GpR_9rustworkx"}
!127043 = distinct !{!127043, !127042, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_EEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!127044 = distinct !{!127044, !127042, !"_RINvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB6_9EnumerateINtNtNtCshByAT0BfsDP_7ndarray8parallel3par8ParallelINtNtB16_9iterators11AxisIterMutdINtNtNtB16_9dimension3dim3DimAjj1_EEEENtB8_23IndexedParallelIterator13with_producerINtNvNtB8_8plumbing6bridge8CallbackINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7q_5types3any5PyAnyEB7l_EEs7_0EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127045 = distinct !{!127045, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_EEs7_0EEEECskcxRuJ53GpR_9rustworkx"}
!127046 = distinct !{!127046, !127045, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_EEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 1"}
!127047 = distinct !{!127047, !127045, !"_RINvXse_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB6_8ParallelINtNtBa_9iterators11AxisIterMutdINtNtNtBa_9dimension3dim3DimAjj1_EEENtNtCs1JJT1bG4y5L_5rayon4iter23IndexedParallelIterator13with_producerINtNvXs0_NtB26_9enumerateINtB3k_9EnumeratepEB24_13with_producer8CallbackINtNvNtB26_8plumbing6bridge8CallbackINtNtB26_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB87_5types3any5PyAnyEB82_EEs7_0EEEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127048 = distinct !{!127048, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_EEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7n_8ViewReprQdEINtNtNtB7n_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7n_8parallel3par16ParallelProducerINtNtB7n_9iterators11AxisIterMutdB8c_EEECskcxRuJ53GpR_9rustworkx"}
!127049 = distinct !{!127049, !127048, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_EEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7n_8ViewReprQdEINtNtNtB7n_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7n_8parallel3par16ParallelProducerINtNtB7n_9iterators11AxisIterMutdB8c_EEECskcxRuJ53GpR_9rustworkx: argument 1"}
!127050 = distinct !{!127050, !127048, !"_RINvXNvXs0_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB9_9EnumeratepENtBb_23IndexedParallelIterator13with_producerINtB3_8CallbackINtNvNtBb_8plumbing6bridge8CallbackINtNtBb_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5M_5types3any5PyAnyEB5H_EEs7_0EEEINtB27_16ProducerCallbackINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB7n_8ViewReprQdEINtNtNtB7n_9dimension3dim3DimAjj1_EdEE8callbackINtNtNtB7n_8parallel3par16ParallelProducerINtNtB7n_9iterators11AxisIterMutdB8c_EEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127051 = distinct !{!127051, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx"}
!127052 = distinct !{!127052, !127051, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtCsiCakYNGl26C_11fixedbitset11FixedBitSetEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127053 = distinct !{!127053, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx"}
!127054 = distinct !{!127054, !127053, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 0"}
!127055 = distinct !{!127055, !127053, !"_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj2_EE8view_mutCskcxRuJ53GpR_9rustworkx: argument 1"}
!127056 = distinct !{!127056, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx"}
!127057 = distinct !{!127057, !127056, !"_RINvYINtNtCshByAT0BfsDP_7ndarray9iterators11AxisIterMutdINtNtNtB8_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1x_8adapters9enumerateINtB2C_9EnumeratepEB1r_4fold9enumerateINtB8_9ArrayBaseINtB8_8ViewReprQdEBS_dEuNCINvNvB1r_8for_each4callTjB3F_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7s_5types3any5PyAnyEB7n_EEs6_0E0E0ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127058 = distinct !{!127058, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_EEs6_0E0E0CskcxRuJ53GpR_9rustworkx"}
!127059 = distinct !{!127059, !127058, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_EEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 1"}
!127060 = distinct !{!127060, !127058, !"_RNCINvNvXs_NtNtNtCslwFuT2d6ECx_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB24_8ViewReprQdEINtNtNtB24_9dimension3dim3DimAjj1_EdEuNCINvNvB1e_8for_each4callTjB21_ENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6E_5types3any5PyAnyEB6z_EEs6_0E0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127061 = distinct !{!127061, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_EEs6_0E0CskcxRuJ53GpR_9rustworkx"}
!127062 = distinct !{!127062, !127061, !"_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTjINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1k_8ViewReprQdEINtNtNtB1k_9dimension3dim3DimAjj1_EdEENCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB5o_5types3any5PyAnyEB5j_EEs6_0E0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127063 = distinct !{!127063, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs6_0CskcxRuJ53GpR_9rustworkx"}
!127064 = distinct !{!127064, !127063, !"_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs6_0CskcxRuJ53GpR_9rustworkx: argument 0"}
!127065 = distinct !{!127065, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx"}
!127066 = distinct !{!127066, !127065, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj2_EdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127067 = distinct !{!127067, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx"}
!127068 = distinct !{!127068, !127067, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCshByAT0BfsDP_7ndarray9data_repr9OwnedReprdEECskcxRuJ53GpR_9rustworkx: argument 0"}
!127069 = distinct !{!127069, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!127070 = distinct !{!127070, !127069, !"_RNvXs0_NtCshByAT0BfsDP_7ndarray9data_reprINtB5_9OwnedReprdENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!127071 = !{!126871, !126870, !126868, !126867, !126865, !126864, !126863}
!127072 = !{!126873}
!127073 = !{!126875}
!127074 = !{!126875, !126877, !126873, !126876}
!127075 = !{!126876}
!127076 = !{!126875, !126873}
!127077 = !{!126877, !126876}
!127078 = !{!126883, !126882, !126880, !126879}
!127079 = !{!126885}
!127080 = !{!126887}
!127081 = !{!126887, !126889, !126885, !126888}
!127082 = !{!126887, !126885}
!127083 = !{!126889, !126888}
!127084 = !{!126891}
!127085 = !{!126893}
!127086 = !{!126894, !126893, !126891}
!127087 = !{!126893, !126891}
!127088 = !{!126894}
!127089 = !{!126896, !126894}
!127090 = !{!126898}
!127091 = !{!126898, !126894, !126893, !126891}
!127092 = !{!126901, !126900, !126894, !126893, !126891}
!127093 = !{!126903}
!127094 = !{!126915, !126913, !126911, !126909, !126907, !126905, !126901, !126900, !126894}
!127095 = !{!126901, !126900, !126894}
!127096 = !{!126900, !126894, !126893, !126891}
!127097 = !{!126917, !126894}
!127098 = !{!126919, !126894}
!127099 = !{!126921}
!127100 = !{!126923, !126894}
!127101 = !{!126894, !126891}
!127102 = !{!126925}
!127103 = !{!126931, !126929, !126928, !126925, !126926, !126894}
!127104 = !{!126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127105 = !{!126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127106 = !{!126953}
!127107 = !{!126955}
!127108 = !{!126957}
!127109 = !{!126957, !126955, !126953}
!127110 = !{!126960, !126959, !126958, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127111 = !{!126960, !126957, !126959, !126955, !126958, !126953, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127112 = !{!126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127113 = !{!126965}
!127114 = !{!126970, !126968, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127115 = !{!126968, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127116 = !{!126968, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127117 = !{!126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127118 = !{!126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127119 = !{!126965, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127120 = !{!126973, !126965, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127121 = !{!126974, !126965}
!127122 = !{!126974}
!127123 = !{!126974, !126965, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127124 = !{!126974, !126966, !126963, !126962, !126950, !126949, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127125 = !{!126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894, !126893, !126891}
!127126 = !{!126978, !126976, !126947, !126945, !126943, !126942, !126940, !126939, !126937, !126936, !126934, !126933, !126929, !126928, !126925, !126926, !126894}
!127127 = !{!126980, !126929, !126928, !126925, !126926, !126894}
!127128 = !{!126929, !126928, !126925, !126926, !126894}
!127129 = !{!126986, !126985, !126983, !126982, !126894, !126893, !126891}
!127130 = !{!126988, !126986, !126985, !126983, !126982, !126894}
!127131 = !{!126990}
!127132 = !{!126992}
!127133 = !{!127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894, !126893, !126891}
!127134 = !{!127007, !127006, !127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894, !126893, !126891}
!127135 = !{!127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894}
!127136 = !{!127010}
!127137 = !{!127012}
!127138 = !{!127014}
!127139 = !{!127014, !127012, !127010}
!127140 = !{!127017, !127016, !127015, !127007, !127006, !127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894}
!127141 = !{!127017, !127014, !127016, !127012, !127015, !127010, !127007, !127006, !127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894}
!127142 = !{!127019}
!127143 = !{!127021}
!127144 = !{!127023}
!127145 = !{!127023, !127021, !127019}
!127146 = !{!127026, !127025, !127024, !127007, !127006, !127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894}
!127147 = !{!127026, !127023, !127025, !127021, !127024, !127019, !127007, !127006, !127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894}
!127148 = !{!127030, !127028, !127004, !127002, !127000, !126999, !126997, !126996, !126992, !126994, !126990, !126993, !126986, !126985, !126983, !126982, !126894}
!127149 = !{!126992, !126990}
!127150 = !{!127002, !127000, !126999, !126997, !126996, !126994, !126993, !126986, !126985, !126983, !126982, !126894, !126893, !126891}
!127151 = !{!126986, !126985, !126983, !126982, !126894}
!127152 = !{!126928, !126926, !126894, !126893, !126891}
!127153 = !{!126985, !126982, !126894, !126893, !126891}
!127154 = !{!127032}
!127155 = !{!127033}
!127156 = !{!127032, !126894, !126893, !126891}
!127157 = !{!127035, !126894, !126893, !126891}
!127158 = !{!127050, !127049, !127047, !127046, !127044, !127043, !127041, !127040, !127038, !127037, !127035, !126894, !126893, !126891}
!127159 = !{!127050, !127046, !127043, !127040, !127037, !126894, !126893, !126891}
!127160 = !{!127032, !127033}
!127161 = !{!127050, !127047, !127046, !127044, !127043, !127041, !127040, !127038, !127037, !127035, !126894, !126893, !126891}
!127162 = !{!127052}
!127163 = !{!127052, !126894}
!127164 = !{!127054}
!127165 = !{!127055}
!127166 = !{!127054, !126894, !126893, !126891}
!127167 = !{!127054, !127055}
!127168 = !{!127060, !127059, !127057, !126894, !126893, !126891}
!127169 = !{!127060, !127057, !126894, !126893, !126891}
!127170 = !{!127064, !127062, !127060, !127059, !127057, !126894, !126893, !126891}
!127171 = !{!127066}
!127172 = !{!127068}
!127173 = !{!127070}
!127174 = !{!127070, !127068, !127066}
!127175 = !{!127070, !127068, !127066, !126894}
!127176 = distinct !{!127176, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!127177 = distinct !{!127177, !127176, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!127178 = distinct !{!127178, !127176, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!127179 = distinct !{!127179, !127176, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!127180 = distinct !{!127180, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127181 = distinct !{!127181, !127180, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127182 = distinct !{!127182, !127180, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127183 = distinct !{!127183, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!127184 = distinct !{!127184, !127183, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!127185 = distinct !{!127185, !127183, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!127186 = distinct !{!127186, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127187 = distinct !{!127187, !127186, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127188 = distinct !{!127188, !127186, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127189 = distinct !{!127189, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127190 = distinct !{!127190, !127189, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127191 = distinct !{!127191, !127189, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127192 = distinct !{!127192, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127193 = distinct !{!127193, !127192, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127194 = distinct !{!127194, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127195 = distinct !{!127195, !127194, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127196 = distinct !{!127196, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127197 = distinct !{!127197, !127196, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127198 = distinct !{!127198, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127199 = distinct !{!127199, !127198, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127200 = distinct !{!127200, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127201 = distinct !{!127201, !127200, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127202 = distinct !{!127202, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127203 = distinct !{!127203, !127202, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127204 = distinct !{!127204, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127205 = distinct !{!127205, !127204, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127206 = distinct !{!127206, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127207 = distinct !{!127207, !127206, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127208 = distinct !{!127208, !127204, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127209 = distinct !{!127209, !127206, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127210 = distinct !{!127210, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!127211 = distinct !{!127211, !127210, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!127212 = distinct !{!127212, !127210, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!127213 = !{!127185, !127184, !127182, !127181, !127179, !127178, !127177}
!127214 = !{!127188, !127187}
!127215 = !{!127191, !127190}
!127216 = !{!127203, !127201, !127199, !127197, !127195, !127193}
!127217 = !{!127205}
!127218 = !{!127207}
!127219 = !{!127207, !127209, !127205, !127208}
!127220 = !{!127208}
!127221 = !{!127207, !127205}
!127222 = !{!127209, !127208}
!127223 = !{!127212, !127211}
!127224 = !{!127211}
!127225 = distinct !{!127225, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!127226 = distinct !{!127226, !127225, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!127227 = distinct !{!127227, !127225, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!127228 = distinct !{!127228, !127225, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!127229 = distinct !{!127229, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127230 = distinct !{!127230, !127229, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127231 = distinct !{!127231, !127229, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127232 = distinct !{!127232, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!127233 = distinct !{!127233, !127232, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!127234 = distinct !{!127234, !127232, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!127235 = distinct !{!127235, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127236 = distinct !{!127236, !127235, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127237 = distinct !{!127237, !127235, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127238 = distinct !{!127238, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127239 = distinct !{!127239, !127238, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127240 = distinct !{!127240, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127241 = distinct !{!127241, !127240, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127242 = distinct !{!127242, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127243 = distinct !{!127243, !127242, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127244 = distinct !{!127244, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127245 = distinct !{!127245, !127244, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127246 = distinct !{!127246, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127247 = distinct !{!127247, !127246, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127248 = distinct !{!127248, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127249 = distinct !{!127249, !127248, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127250 = distinct !{!127250, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127251 = distinct !{!127251, !127250, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127252 = distinct !{!127252, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127253 = distinct !{!127253, !127252, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127254 = distinct !{!127254, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127255 = distinct !{!127255, !127254, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127256 = distinct !{!127256, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127257 = distinct !{!127257, !127256, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127258 = distinct !{!127258, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127259 = distinct !{!127259, !127258, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127260 = distinct !{!127260, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127261 = distinct !{!127261, !127260, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127262 = distinct !{!127262, !"_RNvYNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_"}
!127263 = distinct !{!127263, !127262, !"_RNvYNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 1"}
!127264 = distinct !{!127264, !127262, !"_RNvYNtNtCskcxRuJ53GpR_9rustworkx9iterators11NodeIndicesNtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyB6_: argument 0"}
!127265 = !{!127234, !127233, !127231, !127230, !127228, !127227, !127226}
!127266 = !{!127237, !127236}
!127267 = !{!127245, !127243, !127241, !127239}
!127268 = !{!127253, !127251, !127249, !127247}
!127269 = !{!127261, !127259, !127257, !127255}
!127270 = !{!127264, !127263}
!127271 = !{!127263}
!127272 = distinct !{!127272, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_"}
!127273 = distinct !{!127273, !127272, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 2"}
!127274 = distinct !{!127274, !127272, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 1"}
!127275 = distinct !{!127275, !127272, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphKb0_EB1a_: argument 0"}
!127276 = distinct !{!127276, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127277 = distinct !{!127277, !127276, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127278 = distinct !{!127278, !127276, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127279 = distinct !{!127279, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_"}
!127280 = distinct !{!127280, !127279, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 1"}
!127281 = distinct !{!127281, !127279, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB1c_: argument 0"}
!127282 = distinct !{!127282, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127283 = distinct !{!127283, !127282, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127284 = distinct !{!127284, !127282, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127285 = distinct !{!127285, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127286 = distinct !{!127286, !127285, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127287 = distinct !{!127287, !127285, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127288 = distinct !{!127288, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127289 = distinct !{!127289, !127288, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127290 = distinct !{!127290, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127291 = distinct !{!127291, !127290, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127292 = distinct !{!127292, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127293 = distinct !{!127293, !127292, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127294 = distinct !{!127294, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127295 = distinct !{!127295, !127294, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127296 = distinct !{!127296, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127297 = distinct !{!127297, !127296, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127298 = distinct !{!127298, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127299 = distinct !{!127299, !127298, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127300 = distinct !{!127300, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127301 = distinct !{!127301, !127300, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127302 = distinct !{!127302, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127303 = distinct !{!127303, !127302, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127304 = distinct !{!127304, !127300, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127305 = distinct !{!127305, !127302, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127306 = distinct !{!127306, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx"}
!127307 = distinct !{!127307, !127306, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127308 = distinct !{!127308, !127306, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127309 = distinct !{!127309, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx"}
!127310 = distinct !{!127310, !127309, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127311 = distinct !{!127311, !127309, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentbKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127312 = distinct !{!127312, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx"}
!127313 = distinct !{!127313, !127312, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 1"}
!127314 = distinct !{!127314, !127312, !"_RNvYINtNtCs87CvPiUlf0m_5alloc3vec3VecIB3_jEENtNtCsi0YPOvDEjiZ_4pyo310conversion15IntoPyObjectExt17into_bound_py_anyCskcxRuJ53GpR_9rustworkx: argument 0"}
!127315 = !{!127281, !127280, !127278, !127277, !127275, !127274, !127273}
!127316 = !{!127284, !127283}
!127317 = !{!127287, !127286}
!127318 = !{!127299, !127297, !127295, !127293, !127291, !127289}
!127319 = !{!127301}
!127320 = !{!127303}
!127321 = !{!127303, !127305, !127301, !127304}
!127322 = !{!127304}
!127323 = !{!127303, !127301}
!127324 = !{!127305, !127304}
!127325 = !{!127311, !127310, !127308, !127307}
!127326 = !{!127314, !127313}
!127327 = !{!127313}
!127328 = distinct !{!127328, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_"}
!127329 = distinct !{!127329, !127328, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 2"}
!127330 = distinct !{!127330, !127328, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 1"}
!127331 = distinct !{!127331, !127328, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphKb0_EB1a_: argument 0"}
!127332 = distinct !{!127332, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_"}
!127333 = distinct !{!127333, !127332, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 1"}
!127334 = distinct !{!127334, !127332, !"_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentRNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphINtB5_18PyFunctionArgumentKb0_E7extractBV_: argument 0"}
!127335 = distinct !{!127335, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_"}
!127336 = distinct !{!127336, !127335, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 1"}
!127337 = distinct !{!127337, !127335, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB1c_: argument 0"}
!127338 = distinct !{!127338, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127339 = distinct !{!127339, !127338, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127340 = distinct !{!127340, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx"}
!127341 = distinct !{!127341, !127340, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127342 = distinct !{!127342, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx"}
!127343 = distinct !{!127343, !127342, !"_RNvXNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentINtNtCslwFuT2d6ECx_4core6option6OptionINtNtB6_8instance2PyNtNtNtB6_5types3any5PyAnyEEINtB2_18PyFunctionArgumentKb1_E7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127344 = distinct !{!127344, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127345 = distinct !{!127345, !127344, !"_RNvXs0_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std6optionINtNtCslwFuT2d6ECx_4core6option6OptionINtNtBb_8instance2PyNtNtNtBb_5types3any5PyAnyEENtNtBb_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127346 = distinct !{!127346, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127347 = distinct !{!127347, !127346, !"_RNvXsC_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_2PyNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127348 = distinct !{!127348, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx"}
!127349 = distinct !{!127349, !127348, !"_RNvXsD_NtCsi0YPOvDEjiZ_4pyo38instanceINtB5_5BoundNtNtNtB7_5types3any5PyAnyENtNtB7_10conversion12FromPyObject7extractCskcxRuJ53GpR_9rustworkx: argument 0"}
!127350 = distinct !{!127350, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127351 = distinct !{!127351, !127350, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127352 = distinct !{!127352, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx"}
!127353 = distinct !{!127353, !127352, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127354 = distinct !{!127354, !127350, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127355 = distinct !{!127355, !127352, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentdKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
!127356 = distinct !{!127356, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127357 = distinct !{!127357, !127356, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127358 = distinct !{!127358, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx"}
!127359 = distinct !{!127359, !127358, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument16extract_argumentjKb1_ECskcxRuJ53GpR_9rustworkx: argument 0"}
!127360 = distinct !{!127360, !127356, !"_RINvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument29extract_argument_with_defaultjKb1_ECskcxRuJ53GpR_9rustworkx: argument 1"}
end_hunk_6
