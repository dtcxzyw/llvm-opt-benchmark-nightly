Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.14?download=true
inline.NumInlined: 191
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsaL1QbXo9JQH_3std2fs4copyRNtNtB4_4path7PathBufBu_ECs3tZ2SXJA1qv_8jiff_cli:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i2 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i3 = load i64, ptr %i.d, align 8, !noundef !6
  %i.e = tail call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std3sys2fs4copy(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i2, i64 noundef %.val1.i3)
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3tZ2SXJA1qv_8jiff_cli(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #2 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !92, !noalias !95
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !92, !noalias !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !95, !noalias !87
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !95, !noalias !87
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !92, !noalias !95
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !92, !noalias !95
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !95, !noalias !87
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !95, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !87, !noalias !90
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !90, !noalias !87
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !87, !noalias !90
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !90, !noalias !87
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !87, !noalias !90
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !90, !noalias !87
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !87, !noalias !90
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !90, !noalias !87
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !100, !noalias !102
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !102, !noalias !100
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !100, !noalias !102
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !102, !noalias !100
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !104
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCs8WPnInWCYsb_6anyhow7context3extNtNtCs35zZu0fmp16_7walkdir5error5ErrorNtB3_8StdError11ext_contextNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCs8WPnInWCYsb_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs2_NtCsaL1QbXo9JQH_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.e = call noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

.critedge:                                        ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) #21
          to label %.critedge unwind label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0Cs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef ptr @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEB19_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.a) #22
  %i.c = tail call noundef i8 @_RNvXsX_NtCsaL1QbXo9JQH_3std7processINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorENtB5_11Termination6reportCs3tZ2SXJA1qv_8jiff_cli(ptr noundef %i.b)
  %i.d = zext i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i32 0, 256) i32 @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEE0INtNtNtBN_3ops8function6FnOnceuE9call_once6vtableCs3tZ2SXJA1qv_8jiff_cli(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = tail call noundef ptr @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorEB19_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.a) #22, !noalias !106
  %i.c = tail call noundef i8 @_RNvXsX_NtCsaL1QbXo9JQH_3std7processINtNtCs3oUPovFnLWP_4core6result6ResultuNtCs8WPnInWCYsb_6anyhow5ErrorENtB5_11Termination6reportCs3tZ2SXJA1qv_8jiff_cli(ptr noundef %i.b), !noalias !106
  %i.d = zext i8 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvCs3tZ2SXJA1qv_8jiff_cli4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [120 x i8], align 8               ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 8)
  %i.p = load i64, ptr %i.n, align 8, !range !5, !noundef !6
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  store i64 0, ptr %i.o, align 8, !alias.scope !109, !noalias !112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !109, !noalias !112
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !109, !noalias !112
  %i.s = load i64, ptr %i.c, align 8, !range !10, !alias.scope !114, !noalias !109, !noundef !6
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !109
  br label %_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit

_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit:      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCNvCs3tZ2SXJA1qv_8jiff_cli4main0B3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !6 ; 3 uses
  switch i64 %i.x, label %bb.l [
    i64 0, label %bb.p
    i64 3, label %bb.f
    i64 5, label %bb.g
    i64 4, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = load i16, ptr %i.v, align 1
  %i.z = xor i16 %i.y, 26223
  %i.aa = getelementptr i8, ptr %i.v, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = xor i16 %i.ac, 102
  %i.ae = or i16 %i.z, %i.ad
  %i.af = icmp ne i16 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.p, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.v, align 1
  %i.aj = xor i32 %i.ai, 1869771365
  %i.ak = getelementptr i8, ptr %i.v, i64 4
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = xor i32 %i.am, 114
  %i.ao = or i32 %i.aj, %i.an
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.v, align 1
  %i.at = icmp ne i32 %i.as, 1852989815
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.v, align 1
  %i.ax = icmp ne i32 %i.aw, 1868983913
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.v, align 1
  %i.bb = xor i32 %i.ba, 1969382756
  %i.bc = getelementptr i8, ptr %i.v, i64 4
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = xor i32 %i.be, 103
  %i.bg = or i32 %i.bb, %i.bf
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.v, align 1
  %i.bl = xor i32 %i.bk, 1667330676
  %i.bm = getelementptr i8, ptr %i.v, i64 4
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = xor i32 %i.bo, 101
  %i.bq = or i32 %i.bl, %i.bp
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.e, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.v, ptr %i.m, align 8, !captures !117
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.x, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %0 = ptrtoint ptr %i.m to i64
  store i64 %0, ptr %i.k, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3tZ2SXJA1qv_8jiff_cli to i64), ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @7, ptr noundef nonnull %i.k)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.n

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit, %bb.n
  %.pn23 = phi { ptr, i32 } [ %i.bv, %bb.n ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.ap

bb.n:                                             ; preds = %bb.l, %bb.x, %bb.s, %bb.r, %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bw = invoke noundef nonnull ptr @_RINvMNtCs8WPnInWCYsb_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l)
          to label %bb.o unwind label %bb.n

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3tZ2SXJA1qv_8jiff_cli.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ar

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.01.0 = phi i64 [ 4, %bb.j ], [ 0, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ %i.x, %bb.e ], [ 5, %bb.k ]
  %i.bx = invoke noundef zeroext i1 @_RNvMNtCs3tZ2SXJA1qv_8jiff_cli6loggerNtB2_6Logger4init()
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = invoke noundef nonnull ptr @_RNvXs_NtCs8WPnInWCYsb_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtCs609xDM2Krl3_3log14SetLoggerErrorE4fromCs3tZ2SXJA1qv_8jiff_cli()
          to label %bb.ar unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  store atomic i64 %.sroa.01.0, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMCsgWT32ugvpwR_6lexoptNtB2_6Parser8from_env(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.j)
          to label %bb.t unwind label %bb.n

bb.t:                                             ; preds = %bb.s
  %i.bz = invoke noundef ptr @_RNvNtCs3tZ2SXJA1qv_8jiff_cli3cmd3run(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.j)
          to label %bb.v unwind label %bb.u       ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %.body, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt6ParserECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(120) %i.j) #21
          to label %bb.m unwind label %bb.ap

bb.u:                                             ; preds = %bb.t
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit

bb.v:                                             ; preds = %bb.t
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.bz, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 14)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsgWT32ugvpwR_6lexopt6ParserECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(120) %i.j)
          to label %bb.aq unwind label %bb.n

bb.y:                                             ; preds = %bb.z, %bb.ai, %bb.ac, %bb.ab, %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.al, %bb.af, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %bb.af ], [ %i.cb, %bb.y ], [ %i.ch, %bb.al ]
  invoke void @_RNvXs4_NtCs8WPnInWCYsb_6anyhow5errorNtB7_5ErrorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit unwind label %bb.ap

bb.z:                                             ; preds = %bb.w
  %i.cc = invoke fastcc noundef zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorE6map_orbNCNvCs3tZ2SXJA1qv_8jiff_cli4mains_0EB26_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.aa unwind label %bb.y

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %1 = ptrtoint ptr %i.i to i64                   ; 2 uses
  br i1 %i.cc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stderr8INSTANCE, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %1, ptr %i.d, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 ptrtoint (ptr @_RNvXs2_NtCs8WPnInWCYsb_6anyhow5errorNtB7_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt to i64), ptr %.sroa.415.0..sroa_idx, align 8
  %i.cd = invoke noundef ptr @_RNvXso_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @9, ptr noundef nonnull %i.d)
          to label %bb.ad unwind label %bb.y      ; 2 uses

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @_RNvNvNtNtCsaL1QbXo9JQH_3std2io5stdio6stderr8INSTANCE, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 ptrtoint (ptr @_RNvXs3_NtCs8WPnInWCYsb_6anyhow5errorNtB7_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt to i64), ptr %.sroa.411.0..sroa_idx, align 8
  %i.ce = invoke noundef ptr @_RNvXso_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @12, ptr noundef nonnull %i.f)
          to label %bb.aj unwind label %bb.y      ; 2 uses

bb.ad:                                            ; preds = %bb.ab
  %.not.i25 = icmp eq ptr %i.cd, null
  br i1 %.not.i25, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit28, label %bb.ae, !prof !105

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store ptr %i.cd, ptr %i.a, align 8, !noalias !118
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
          to label %.body unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit28: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit28
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process4exit(i32 noundef 1) #23
          to label %bb.ao unwind label %bb.y

bb.aj:                                            ; preds = %bb.ac
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit, label %bb.ak, !prof !105

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !121
  store ptr %i.ce, ptr %i.b, align 8, !noalias !121
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %.body unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ai

bb.ao:                                            ; preds = %bb.ai
  unreachable

bb.ap:                                            ; preds = %.body, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs8WPnInWCYsb_6anyhow5ErrorECs3tZ2SXJA1qv_8jiff_cli.exit
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.aq:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.o, %bb.r, %bb.aq
  %.sroa.0.1 = phi ptr [ null, %bb.aq ], [ %i.bw, %bb.o ], [ %i.by, %bb.r ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret ptr %.sroa.0.1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.m
  resume { ptr, i32 } %.pn23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEE11extend_withCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !124, !noundef !6 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !15, !alias.scope !124, !noundef !6
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEE7reserveCs3tZ2SXJA1qv_8jiff_cli.exit, !prof !127

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 8)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEE7reserveCs3tZ2SXJA1qv_8jiff_cli.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEE7reserveCs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6
  %i.i = icmp ult i64 %i.f, 1152921504606846976
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEE7reserveCs3tZ2SXJA1qv_8jiff_cli.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -4                       ; 4 uses
  %i.m = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.q, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.022.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.021.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslhCKBzvegwQ_10regex_lite3int11NonMaxUsizeEE7reserveCs3tZ2SXJA1qv_8jiff_cli.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa29 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa28 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i64 %2, ptr %.sroa.0.0.lcssa29, align 8
  %i.u = add i64 %storemerge.lcssa28, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge19 = phi i64 [ %i.u, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge19, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %.sroa.0.022 = phi ptr [ %i.w, %.lr.ph ], [ %.sroa.0.022.ph, %.lr.ph.preheader31 ] ; 2 uses
  %.sroa.03.021 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.03.021.ph, %.lr.ph.preheader31 ]
  %i.v = add nuw i64 %.sroa.03.021, 1             ; 2 uses
  store i64 %2, ptr %.sroa.0.022, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 8 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !129
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageE7reserveBI_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
end_hunk_0
