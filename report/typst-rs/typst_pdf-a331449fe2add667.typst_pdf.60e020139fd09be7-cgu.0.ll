Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build9push_weak:bb.a
  %eh.lpad-body3 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.o ], [ %i.u, %bb.h ], [ %lpad.thr_comm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i ], [ %lpad.thr_comm, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body3

bb.m:                                             ; preds = %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.an = load i8, ptr %1, align 8, !range !53, !alias.scope !21583, !noundef !10
  switch i8 %i.an, label %.body.thread [
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 7, label %bb.n
    i8 9, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 19, label %bb.n
    i8 20, label %bb.n
    i8 21, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
    i8 25, label %bb.o
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m, %bb.m, %bb.m
  %.sink1.i = phi i64 [ 8, %bb.m ], [ 8, %bb.m ], [ 8, %bb.m ], [ 16, %bb.o ], [ 8, %bb.m ], [ 16, %bb.n ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.sink1.i
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %.body.thread unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !54, !alias.scope !21584, !noundef !10
  %switch.i.i = icmp samesign ult i64 %i.aq, 2
  br i1 %switch.i.i, label %.body.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text8TextAttrEBJ_.exit.sink.split.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5table13table_cell_id(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 10 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 18 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [4 x i8], align 4                 ; 2 uses
  %i.k = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.k, align 4
  store i32 %3, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = add i32 %1, 1
  store i32 %i.m, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.o, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !21661
  store ptr %i.i, ptr %i.f, align 8, !noalias !21661
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !noalias !21661
  %i.q = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @54, ptr noundef nonnull @520, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtCsiSzwKAiqS6b_8smallvec8SmallVecAhj20_EEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #44
          to label %bb.y unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.p, align 8, !noalias !21661, !noundef !10 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i5.i, label %bb.i, label %bb.m, !prof !13

bb.e:                                             ; preds = %bb.c
  br i1 %.not.i5.i, label %_RNvYINtCsiSzwKAiqS6b_8smallvec8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8jFhWeO2DFb_9typst_pdf.exit.thread37, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !21661
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 3
  switch i64 %i.u, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
    i64 1, label %bb.h
  ], !prof !49

default.unreachable:                              ; preds = %bb.m, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.t, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.x)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !21662, !noalias !21661
  store i8 3, ptr %i.e, align 8, !alias.scope !21662, !noalias !21661
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !21661
  br label %_RNvYINtCsiSzwKAiqS6b_8smallvec8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8jFhWeO2DFb_9typst_pdf.exit.thread37

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #39
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.l:                                             ; preds = %bb.o, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_RNvYINtCsiSzwKAiqS6b_8smallvec8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8jFhWeO2DFb_9typst_pdf.exit.thread37: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21661
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !21661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ac = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 3
  switch i64 %i.ad, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i
    i64 1, label %bb.o
  ], !prof !49

bb.n:                                             ; preds = %bb.m
  %i.ae = icmp ult ptr %i.s, inttoptr (i64 188978561024 to ptr)
  %i.af = and i64 %i.ac, 1095216660480
  %i.ag = icmp ne i64 %i.af, 1095216660480
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.assume(i1 %i.ag)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %i.s, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !alias.scope !21663
  store i8 3, ptr %i.d, align 8, !alias.scope !21663
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvYINtCsiSzwKAiqS6b_8smallvec8SmallVecAhj20_ENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8jFhWeO2DFb_9typst_pdf.exit.thread37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.022.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %.sroa.625.0.copyload = load i64, ptr %i.l, align 8 ; 5 uses
  %i.aj = icmp ugt i64 %.sroa.625.0.copyload, 32  ; 6 uses
  %.sink10.i.i.i = select i1 %i.aj, i64 %.sroa.4.0.copyload, i64 %.sroa.625.0.copyload ; 4 uses
  %spec.select = select i1 %i.aj, i64 0, i64 %.sroa.4.0.copyload
  %spec.select39 = select i1 %i.aj, i64 %.sroa.625.0.copyload, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21665
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 9 uses
  store i64 0, ptr %i.ak, align 8, !noalias !21665
  store i64 1, ptr %i.b, align 8, !noalias !21666
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %.sroa.022.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8, !noalias !21666
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %spec.select, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !21666
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %spec.select39, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !21666
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !21666
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sink10.i.i.i, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !21666
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !21666
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 85, ptr %.sroa.11.0..sroa_idx, align 1, !noalias !21666
  call void @llvm.experimental.noalias.scope.decl(metadata !21667)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %.not.i14.i.i = icmp ugt i64 %.sink10.i.i.i, 15
  %i.am = inttoptr i64 %.sroa.022.0.copyload to ptr ; 3 uses
  br i1 %.not.i14.i.i, label %bb.p, label %.lr.ph.split.us.preheader.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit
  %4 = call i64 @llvm.umin.i64(i64 %.sink10.i.i.i, i64 -2)
  %i.an = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %4, i1 true) ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.thread70.i.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ap = lshr i64 -1, %i.an
  %i.aq = add nuw i64 %i.ap, 1
  %i.ar = invoke fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aq)
          to label %bb.r unwind label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, !noalias !21668 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.as = extractvalue { i64, i64 } %i.ar, 0      ; 2 uses
  switch i64 %i.as, label %bb.s [
    i64 -1, label %.thread.i
    i64 0, label %.thread70.i.i
  ], !prof !69

bb.s:                                             ; preds = %bb.r
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.as, i64 noundef %i.at) #39
          to label %.noexc15.i.i unwind label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, !noalias !21664

.noexc15.i.i:                                     ; preds = %bb.s
  unreachable

.thread70.i.i:                                    ; preds = %bb.r, %bb.p
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
          to label %.noexc16.i.i unwind label %_RNvXsH_CsiSzwKAiqS6b_8smallvecINtB5_8IntoIterAhj20_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i53.i.i, !noalias !21664

.noexc16.i.i:                                     ; preds = %.thread70.i.i
  unreachable

.thread.i:                                        ; preds = %bb.r
  %.pre.i.i = load i64, ptr %i.ak, align 8, !alias.scope !21669, !noalias !21665
  %.pre.i.fr.i = freeze i64 %.pre.i.i             ; 2 uses
  %.pre119.i.i = call i64 @llvm.umax.i64(i64 %.pre.i.fr.i, i64 16) ; 2 uses
  %i.au = icmp ugt i64 %.pre.i.fr.i, 16           ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !alias.scope !21669, !noalias !21665
  %spec.select40 = select i1 %i.au, ptr %.pre.i, ptr %i.c
  %spec.select41 = select i1 %i.au, ptr %i.al, ptr %i.ak ; 3 uses
  %.pre = load i64, ptr %spec.select41, align 8, !alias.scope !21667, !noalias !21665 ; 3 uses
  %i.av = icmp ult i64 %.pre, %.pre119.i.i
  br i1 %i.av, label %.lr.ph.split.us.preheader.i.i, label %._crit_edge.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit, %.thread.i
  %i.aw = phi ptr [ %spec.select41, %.thread.i ], [ %i.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ] ; 2 uses
  %.sink.i17.pre-phi.i4145.i58 = phi i64 [ %.pre119.i.i, %.thread.i ], [ 16, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ] ; 2 uses
  %i.ax = phi ptr [ %spec.select40, %.thread.i ], [ %i.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ]
  %i.ay = phi i64 [ %.pre, %.thread.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8jFhWeO2DFb_9typst_pdf.exit ]
  %.sink11.i.i.i.i.i.i.i = select i1 %i.aj, ptr %i.am, ptr %.sroa.430.0..sroa_idx
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, %.lr.ph.split.us.preheader.i.i
  %i.az = phi i64 [ %i.bf, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %storemerge81.us.i.i = phi i64 [ %i.bi, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ], [ %i.ay, %.lr.ph.split.us.preheader.i.i ] ; 3 uses
  %i.ba = phi i8 [ %i.bg, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ], [ 1, %.lr.ph.split.us.preheader.i.i ] ; 2 uses
  %.not.i.i.us.i.i = icmp eq i8 %i.ba, 2
  br i1 %.not.i.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  %spec.store.select.i.i.us.i.i = select i1 %i.bb, i8 0, i8 2
  store i8 %spec.store.select.i.i.us.i.i, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !21670, !noalias !21664
  br i1 %i.bb, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i, %.lr.ph.split.us.i.i
  %.not.i.i.i.us.i.i = icmp eq i64 %i.az, %.sink10.i.i.i
  br i1 %.not.i.i.i.us.i.i, label %.critedge79.i.i, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i.us.i.i
  %i.bc = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bc, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !21671, !noalias !21664
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i.i.i, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !noalias !21664, !noundef !10
  br label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i: ; preds = %bb.t, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i
  %i.bf = phi i64 [ %i.az, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ %i.bc, %bb.t ]
  %i.bg = phi i8 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ 2, %bb.t ]
  %.pn2.i.i.us.i.i = phi i8 [ 85, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i ], [ %i.be, %bb.t ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %storemerge81.us.i.i
  store i8 %.pn2.i.i.us.i.i, ptr %i.bh, align 1, !noalias !21668
  %i.bi = add nuw i64 %storemerge81.us.i.i, 1     ; 2 uses
  %exitcond118.not.i.i = icmp eq i64 %i.bi, %.sink.i17.pre-phi.i4145.i58
  br i1 %exitcond118.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i

._crit_edge.i.i:                                  ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i, %.thread.i
  %i.bj = phi ptr [ %spec.select41, %.thread.i ], [ %i.aw, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ]
  %storemerge.lcssa.i.i = phi i64 [ %.pre, %.thread.i ], [ %.sink.i17.pre-phi.i4145.i58, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i.us.i.i ]
  store i64 %storemerge.lcssa.i.i, ptr %i.bj, align 8, !alias.scope !21667, !noalias !21665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !21664
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %.promoted96.i.i = load i8, ptr %i.bk, align 8, !alias.scope !21672, !noalias !21664 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !21664 ; 2 uses
  %i.bn = load i64, ptr %i.a, align 8, !range !19, !noalias !21664
  %.fr.i.i = freeze i64 %i.bn                     ; 3 uses
  %i.bo = trunc i64 %.fr.i.i to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !noalias !21664
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !21664 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 33                  ; 3 uses
  %i.bw = load ptr, ptr %i.bs, align 8, !noalias !21664, !nonnull !10 ; 3 uses
  %.sink11.i.i.i.i.i29.i.i = select i1 %i.bv, ptr %i.bs, ptr %i.bw
  br i1 %i.bo, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %.promoted100.i.i = load i64, ptr %i.bp, align 8, !noalias !21664
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i, %.split.us.preheader.i.i
  %i.bx = phi i64 [ %i.cc, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i ], [ %.promoted100.i.i, %.split.us.preheader.i.i ] ; 4 uses
  %spec.store.select.i.i2099.us.i.i = phi i8 [ %spec.store.select.i.i2097.us.i.i, %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i ], [ %.promoted96.i.i, %.split.us.preheader.i.i ] ; 2 uses
  %.not.i.i18.us.i.i = icmp eq i8 %spec.store.select.i.i2099.us.i.i, 2
  br i1 %.not.i.i18.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i: ; preds = %.split.us.i.i
  %i.by = trunc nuw i8 %spec.store.select.i.i2099.us.i.i to i1 ; 2 uses
  %spec.store.select.i.i20.us.i.i = select i1 %i.by, i8 0, i8 2
  store i8 %spec.store.select.i.i20.us.i.i, ptr %i.bk, align 8, !alias.scope !21672, !noalias !21664
  br i1 %i.by, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i, %.split.us.i.i
  %.not.i.i.i28.us.i.i = icmp eq i64 %i.bx, %i.br
  br i1 %.not.i.i.i28.us.i.i, label %.critedge.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.thread.i21.us.i.i
  %i.bz = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.bz, ptr %i.bp, align 8, !alias.scope !21673, !noalias !21664
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink11.i.i.i.i.i29.i.i, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 1, !noalias !21664, !noundef !10
  br label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i: ; preds = %bb.u, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i
  %i.cc = phi i64 [ %i.bx, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ %i.bz, %bb.u ]
  %spec.store.select.i.i2097.us.i.i = phi i8 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ 2, %bb.u ]
  %.pn2.i.i26.us.i.i = phi i8 [ %i.bm, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtNtB6_7sources4once4OncehEhNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8jFhWeO2DFb_9typst_pdf.exit.i19.us.i.i ], [ %i.cb, %bb.u ]
  %i.cd = load i64, ptr %i.ak, align 8, !alias.scope !21674, !noalias !21665, !noundef !10 ; 2 uses
  %i.ce = icmp ugt i64 %i.cd, 16                  ; 2 uses
  %i.cf = load ptr, ptr %i.c, align 8, !alias.scope !21674, !noalias !21665, !nonnull !10
  %.sink10.i.i.us.i.i = select i1 %i.ce, ptr %i.cf, ptr %i.c
  %.sink9.i.i.us.i.i = select i1 %i.ce, ptr %i.al, ptr %i.ak ; 2 uses
  %.sink.i.i31.us.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 16)
  %i.cg = load i64, ptr %.sink9.i.i.us.i.i, align 8, !alias.scope !21675, !noalias !21665, !noundef !10 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %.sink.i.i31.us.i.i
  br i1 %i.ch, label %bb.v, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i, !prof !13

bb.v:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc33.us.i.i unwind label %.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21668

.noexc33.us.i.i:                                  ; preds = %bb.v
  %i.ci = load ptr, ptr %i.c, align 8, !alias.scope !21675, !noalias !21665, !nonnull !10, !noundef !10
  %.pre.i.us.i.i = load i64, ptr %i.al, align 8, !alias.scope !21675, !noalias !21665
  br label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i

_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.us.i.i: ; preds = %.noexc33.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i
  %i.cj = phi i64 [ %.pre.i.us.i.i, %.noexc33.us.i.i ], [ %i.cg, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ]
  %.sroa.01.0.i.us.i.i = phi ptr [ %i.al, %.noexc33.us.i.i ], [ %.sink9.i.i.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ] ; 2 uses
  %.sroa.0.0.i32.us.i.i = phi ptr [ %i.ci, %.noexc33.us.i.i ], [ %.sink10.i.i.us.i.i, %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.us.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i32.us.i.i, i64 %i.cj
  store i8 %.pn2.i.i26.us.i.i, ptr %i.ck, align 1, !noalias !21668
  %i.cl = load i64, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !21675, !noalias !21665, !noundef !10
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %.sroa.01.0.i.us.i.i, align 8, !alias.scope !21675, !noalias !21665
  br label %.split.us.i.i

.split.i.i:                                       ; preds = %._crit_edge.i.i
  switch i8 %.promoted96.i.i, label %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i [
    i8 2, label %.critedge.i.i
    i8 0, label %.critedge.i.i
  ]

.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.w
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = icmp eq i64 %.fr.i.i, 0
  %brmerge.i = select i1 %i.cn, i1 true, i1 %i.bv
  br i1 %brmerge.i, label %.body.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i4.i.i.i.i.i: ; preds = %.split102.i.loopexit.split-lp.split.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21676
  br label %.body.i

_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i: ; preds = %.split.i.i
  %i.co = load i64, ptr %i.ak, align 8, !alias.scope !21674, !noalias !21665, !noundef !10 ; 2 uses
  %i.cp = icmp ugt i64 %i.co, 16                  ; 2 uses
  %i.cq = load ptr, ptr %i.c, align 8, !alias.scope !21674, !noalias !21665, !nonnull !10
  %.sink10.i.i.i.i = select i1 %i.cp, ptr %i.cq, ptr %i.c
  %.sink9.i.i.i.i = select i1 %i.cp, ptr %i.al, ptr %i.ak ; 2 uses
  %.sink.i.i31.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 16)
  %i.cr = load i64, ptr %.sink9.i.i.i.i, align 8, !alias.scope !21675, !noalias !21665, !noundef !10 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %.sink.i.i31.i.i
  br i1 %i.cs, label %bb.w, label %_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E4pushCs8jFhWeO2DFb_9typst_pdf.exit.i.i, !prof !13

bb.w:                                             ; preds = %_RNCNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB6_5ChainINtNtNtBa_7sources4once4OncehEINtCsiSzwKAiqS6b_8smallvec8IntoIterAhj20_EENtNtNtBa_6traits8iterator8Iterator4next0Cs8jFhWeO2DFb_9typst_pdf.exit.i.i22.i.i
  invoke fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
end_hunk_0
begin_hunk_1_@_RNvYNCNvXs1_NvNtNtCsdaEETE4DqmE_13typst_library4text4decos1_1__NtBc_13HighlightElemINtNtNtNtBg_11foundations7content5field13SettableFieldKh0_E5FIELDs0_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceCs8jFhWeO2DFb_9typst_pdf:bb.a
; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs8jFhWeO2DFb_9typst_pdf.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @586, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !23401
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB4_12SpecWriteFmt14spec_write_fmtCs8jFhWeO2DFb_9typst_pdf.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @20, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !23402
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #23

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #23

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCsidf7BFzONoc_6krilla8graphics14graphics_stateNtB5_14GraphicsStates10save_state(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCsidf7BFzONoc_6krilla8graphics14graphics_stateNtB5_14GraphicsStates13restore_state(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder19save_graphics_state(ptr noalias nofree noundef align 8 dereferenceable(656)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder18content_save_state(ptr noalias nofree noundef align 8 dereferenceable(656)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder33cur_transform_with_root_transform(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(656)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCsidf7BFzONoc_6krilla8graphics14graphics_stateNtB5_14GraphicsStates3cur(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #27

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder22restore_graphics_state(ptr noalias nofree noundef align 8 dereferenceable(656)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #30

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvMs2_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext24register_font_identifier(ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext25register_validation_error(ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare { i32, float } @_RNvMs_NtCs1g8rKHBQsN9_6skrifa7metricsNtB4_12GlyphMetrics13advance_width(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i24 @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface13context_color(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface26has_complex_fill_or_stroke(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform10pre_concat(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsidf7BFzONoc_6krilla4text5glyph10draw_glyph(ptr noundef nonnull, i24, i32 noundef, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsm_NtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content6fields(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations4dictNtB5_4DictNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point9transform(double noundef, double noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3min(double noundef, double noundef, double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3max(double noundef, double noundef, double noundef, double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvMs1_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext7new_ref(ptr noalias nofree noundef align 8 dereferenceable(600)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCsltn4C36Q1Af_10pdf_writer6object3RefmEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsidf7BFzONoc_6krilla(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsidf7BFzONoc_6krilla4text5type312ColoredGlyphTNtBU_14FontIdentifierNtNtBU_5glyph8PDFGlyphEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1G_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTmTNtNtCsidf7BFzONoc_6krilla4text14FontIdentifierNtNtBU_5glyph8PDFGlyphEEE14reserve_rehashNCINvNtB8_3map11make_hashermBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0EBW_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE14reserve_rehashNCINvNtB8_3map11make_hasheroBR_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableToNtNtCsltn4C36Q1Af_10pdf_writer6object3RefEE14reserve_rehashNCINvNtB8_3map11make_hasheroBR_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECsidf7BFzONoc_6krilla(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTttEE14reserve_rehashNCINvNtB8_3map11make_hasherttNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdTnyOZvPSTq_9subsetter(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCsidf7BFzONoc_6krilla8graphics5image20get_icc_profile_type(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #33

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCs2qDE43xvXom_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), i8 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #33

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCsltn4C36Q1Af_10pdf_writer6objectNtB5_3StrNtNtB5_6sealed6Sealed5write(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsg_NtCsltn4C36Q1Af_10pdf_writer6objectNtB5_4NameNtNtB5_6sealed6Sealed5write(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs9_NtCsltn4C36Q1Af_10pdf_writer6objectNtB5_7TextStrNtNtB5_6sealed6Sealed5write(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #27

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsf1gSX8u3EQ2_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsidf7BFzONoc_6krilla4pageNtB5_4PageNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(416)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsidf7BFzONoc_6krilla7surfaceNtB4_7SurfaceNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsidf7BFzONoc_6krilla11interactive10annotationNtB5_14LinkAnnotation20new_with_quad_points(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsidf7BFzONoc_6krilla4pageNtB5_4Page21add_tagged_annotation(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(416), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsidf7BFzONoc_6krilla4pageNtB5_4Page14add_annotation(ptr noalias nofree noundef align 8 dereferenceable(416), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface12start_tagged(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(976), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_ltrb(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), float noundef, float noundef, float noundef, float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry7current() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry14inject_or_push(ptr noundef nonnull align 128, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry25increment_terminate_count(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9transform(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maximumnum.f32(float, float) #27

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB2_7TagKind8location(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsz_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5Color5space(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB5_5ArrayNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef align 8 dereferenceable(72), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor7to_vec4(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsidf7BFzONoc_6krilla4geomNtB5_4Rect9from_xywh(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), float noundef, float noundef, float noundef, float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder11expand_bbox(ptr noalias nofree noundef align 8 dereferenceable(656), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder29content_set_stroke_properties(ptr noalias nofree noundef align 8 dereferenceable(656), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(2200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder16set_fill_opacity(ptr noalias nofree noundef align 8 dereferenceable(656), float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder18set_stroke_opacity(ptr noalias nofree noundef align 8 dereferenceable(656), float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7contentNtB2_14ContentBuilder27content_set_fill_properties(ptr noalias nofree noundef align 8 dereferenceable(656), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(2200)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs1_NtCsidf7BFzONoc_6krilla9serializeNtB5_16SerializeContext23register_font_container(ptr noalias nofree noundef align 8 dereferenceable(600), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCsidf7BFzONoc_6krilla9configure8validateNtB4_10Validators27requires_codepoint_mappings(i1 noundef zeroext, i8 noundef range(i8 -1, 11)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsidf7BFzONoc_6krilla8graphics14graphics_stateNtB4_9ExtGStateNtNtB8_9serialize9Cacheable9serialize(ptr noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(2200), i32 noundef range(i32 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #31

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsidf7BFzONoc_6krilla6stream14deflate_encode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCsf1gSX8u3EQ2_10rayon_core8registryNtB5_8Registry9terminate(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i128 @_RNvMs3_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6vtableINtB5_6HandleRNtNtB7_3raw10RawContentNtB5_13ContentVtableE4hash(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB5_5BytesINtNtCs3oUPovFnLWP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCsidf7BFzONoc_6krilla4geomNtB5_11PathBuilder6finish(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsidf7BFzONoc_6krilla4geomNtB5_4Path9transform(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs_NtCs7tN9tvpkfrg_12typst_layout10introspectNtB4_17PagedIntrospectorNtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector12Introspector4page(ptr noundef nonnull align 8, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs7_NtNtCsdaEETE4DqmE_13typst_library6layout4pageNtB5_10PageRanges13includes_page(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient6sample(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef range(i64 0, 2), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color6to_rgb(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #33

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library4text4itemNtB2_8TextItem4bbox(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMNtNtCsidf7BFzONoc_6krilla4text4fontNtB2_4Font12new_variable(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i32 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface3pop(ptr noalias nofree noundef align 8 dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs2_NtCsidf7BFzONoc_6krilla3pdfNtB5_11PdfDocument3new(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtNtCsidf7BFzONoc_6krilla8graphics5imageNtB5_5Image18from_jpeg_with_icc(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48)) unnamed_addr #0
end_hunk_1
