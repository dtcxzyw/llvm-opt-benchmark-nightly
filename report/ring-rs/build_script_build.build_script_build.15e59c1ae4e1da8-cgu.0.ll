Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/build_script_build.build_script_build.15e59c1ae4e1da8-cgu.0?download=true
inline.NumInlined: 83
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsaL1QbXo9JQH_3std2rt10lang_startuECs7hEL9c06lo_18build_script_build:bb.a
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs7hEL9c06lo_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  tail call void %0(), !inline_history !5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !6
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0Cs7hEL9c06lo_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs7hEL9c06lo_18build_script_build(ptr %i.a) #12
  ret i32 0
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr nofree nonnull readonly align 8 captures(none) %0, i64 %1, i16 range(i16 1, 0) %2, i1 zeroext %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 %1       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.g = icmp ult i64 %i.e, 4
  %i.h = getelementptr i8, ptr %i.f, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  br i1 %i.g, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %exitcond.not.i.us26 = icmp eq i64 %i.e, 0
  %exitcond.not.i.us = icmp eq i64 %i.e, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %exitcond.not.i.us.1 = icmp eq i64 %i.e, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us
  %.sroa.0.010.us = phi i16 [ %i.z, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us ], [ %2, %.preheader.split.us.preheader ] ; 2 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.010.us, i1 true) ; 2 uses
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m
  %.fr.us = freeze ptr %i.n                       ; 3 uses
  %i.o = getelementptr i8, ptr %.fr.us, i64 1     ; 2 uses
  %.not16.i.us = icmp eq ptr %i.o, null
  %brmerge = or i1 %.not16.i.us, %exitcond.not.i.us26
  br i1 %brmerge, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %.lr.ph

.split.i.us:                                      ; preds = %.lr.ph
  br i1 %exitcond.not.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.split.i.us
  %i.p = getelementptr i8, ptr %.fr.us, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = load i8, ptr %i.j, align 1
  %.not17.i.us.1 = icmp eq i8 %i.q, %i.r
  br i1 %.not17.i.us.1, label %.split.i.us.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us

.split.i.us.1:                                    ; preds = %.lr.ph.1
  br i1 %exitcond.not.i.us.1, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.split.i.us.1
  %i.s = getelementptr i8, ptr %.fr.us, i64 3
  %i.t = load i8, ptr %i.s, align 1
  %i.u = load i8, ptr %i.k, align 1
  %.not17.i.us.2 = icmp eq i8 %i.t, %i.u
  br i1 %.not17.i.us.2, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us

.lr.ph:                                           ; preds = %.preheader.split.us
  %i.v = load i8, ptr %i.o, align 1
  %i.w = load i8, ptr %i.f, align 1
  %.not17.i.us = icmp eq i8 %i.v, %i.w
  br i1 %.not17.i.us, label %.split.i.us, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us: ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %i.x = shl nuw i16 1, %i.l
  %i.y = xor i16 %i.x, -1
  %i.z = and i16 %.sroa.0.010.us, %i.y            ; 2 uses
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6
  %.sroa.0.010 = phi i16 [ %i.ao, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6 ], [ %2, %.preheader ] ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.010, i1 true) ; 2 uses
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %.fr = freeze ptr %i.ad
  %i.ae = getelementptr i8, ptr %.fr, i64 1       ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.e
  %i.ag = getelementptr i8, ptr %i.af, i64 -4     ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.b
  %.sroa.08.029.i = phi ptr [ %i.aj, %bb.b ], [ %i.f, %.preheader.split ] ; 2 uses
  %.sroa.04.028.i = phi ptr [ %i.ai, %bb.b ], [ %i.ae, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.028.i, align 1
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.b, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6

bb.b:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.028.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4
  %i.ak = icmp ult ptr %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit: ; preds = %bb.b, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ag, align 1
  %.sroa.014.0.copyload.i = load i32, ptr %i.i, align 1
  %i.al = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  br i1 %i.al, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us, %.preheader.split.us, %.lr.ph.2, %.split.i.us, %.split.i.us.1, %bb.a
  %.sroa.03.0 = phi i1 [ false, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6.loopexit.us ], [ false, %bb.a ], [ true, %.lr.ph.2 ], [ true, %.split.i.us.1 ], [ true, %.split.i.us ], [ true, %.preheader.split.us ], [ true, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit ], [ false, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6 ]
  ret i1 %.sroa.03.0

_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread6: ; preds = %.lr.ph.i, %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit
  %i.am = shl nuw i16 1, %i.ab
  %i.an = xor i16 %i.am, -1
  %i.ao = and i16 %.sroa.0.010, %i.an             ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_RNvNtNtCs3oUPovFnLWP_4core3str7pattern14small_slice_eqCs7hEL9c06lo_18build_script_build.exit.thread, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsaL1QbXo9JQH_3std2rt10lang_startuE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableCs7hEL9c06lo_18build_script_build(ptr nofree readonly captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs7hEL9c06lo_18build_script_build(ptr readonly %i.a) #12
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs7hEL9c06lo_18build_script_build4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr nonnull @1, ptr nonnull inttoptr (i64 65 to ptr))
  call void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull @2, i64 18)
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.d = load i64, ptr %i.b, align 8, !noalias !11
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.h

common.resume:                                    ; preds = %bb.g, %bb.t, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.dr, %bb.t ], [ %i.j, %bb.e ], [ %i.l, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 8, !alias.scope !12
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !12
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !11
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs7hEL9c06lo_18build_script_build.exit.sink.split.i unwind label %bb.e, !noalias !11

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.g)
          to label %common.resume unwind label %bb.f, !noalias !11

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !11
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs7hEL9c06lo_18build_script_build.exit.sink.split.i: ; preds = %bb.d
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.g), !noalias !11
  br label %bb.h

bb.g:                                             ; preds = %bb.v
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7hEL9c06lo_18build_script_build(ptr align 8 %i.c) #13
          to label %common.resume unwind label %bb.w

bb.h:                                             ; preds = %bb.b, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std3env8VarErrorECs7hEL9c06lo_18build_script_build.exit.sink.split.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.m, align 8             ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.n, align 8            ; 10 uses
  %i.o = icmp ugt i64 %.val1, 6
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i64 %.val1, 6
  br i1 %i.p, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = icmp ult i64 %.val1, 21
  br i1 %i.q, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.val, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @3, i64 1), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 5, ptr %i.t, align 8
  %i.u = icmp ult i64 %.val1, 70
  br i1 %i.u, label %.preheader.i3.i.i, label %.lr.ph.i.i.i

.preheader.i3.i.i:                                ; preds = %bb.o, %bb.k
  %.sroa.06.0.lcssa.i.i.i = phi i64 [ 0, %bb.k ], [ %i.bp, %bb.o ] ; 2 uses
  %.sroa.014.0.lcssa.i.i.i = phi i8 [ 0, %bb.k ], [ %.sroa.014.2.3.i.i.i, %bb.o ] ; 2 uses
  %i.v = add i64 %.sroa.06.0.lcssa.i.i.i, 21
  %i.w = icmp uge i64 %i.v, %.val1
  %i.x = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i to i1 ; 2 uses
  %or.cond344.i.i.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond344.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph46.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.o
  %.sroa.06.042.i.i.i = phi i64 [ %i.bp, %bb.o ], [ 0, %bb.k ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.042.i.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.z, align 1
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, splat (i8 109)
  %i.ab = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, splat (i8 121)
  %i.ac = and <16 x i1> %i.aa, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.0.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 21
  %.sroa.01.0.copyload.i.1.i.i.i = load <16 x i8>, ptr %i.af, align 1
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i, splat (i8 109)
  %i.ah = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i, splat (i8 121)
  %i.ai = and <16 x i1> %i.ag, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.0.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 37
  %.sroa.01.0.copyload.i.2.i.i.i = load <16 x i8>, ptr %i.al, align 1
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i, splat (i8 109)
  %i.an = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i, splat (i8 121)
  %i.ao = and <16 x i1> %i.am, %i.an
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.0.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 53
  %.sroa.01.0.copyload.i.3.i.i.i = load <16 x i8>, ptr %i.ar, align 1
  %i.as = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i, splat (i8 109)
  %i.at = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i, splat (i8 121)
  %i.au = and <16 x i1> %i.as, %i.at
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %i.aw = icmp eq i16 %i.ad, 0
  br i1 %i.aw, label %.preheader36.1.i.i.i, label %bb.p

.preheader36.1.i.i.i:                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.sroa.014.2.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %i.bu, %bb.p ] ; 3 uses
  %i.ax = icmp eq i16 %i.aj, 0
  br i1 %i.ax, label %.preheader36.2.i.i.i, label %bb.l

bb.l:                                             ; preds = %.preheader36.1.i.i.i
  %i.ay = or disjoint i64 %.sroa.06.042.i.i.i, 16
  %i.az = trunc nuw i8 %.sroa.014.2.i.i.i to i1
  %i.ba = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.ay, i16 %i.aj, i1 zeroext %i.az) #14
  %i.bb = zext i1 %i.ba to i8
  %i.bc = or i8 %.sroa.014.2.i.i.i, %i.bb
  br label %.preheader36.2.i.i.i

.preheader36.2.i.i.i:                             ; preds = %bb.l, %.preheader36.1.i.i.i
  %.sroa.014.2.1.i.i.i = phi i8 [ %.sroa.014.2.i.i.i, %.preheader36.1.i.i.i ], [ %i.bc, %bb.l ] ; 3 uses
  %i.bd = icmp eq i16 %i.ap, 0
  br i1 %i.bd, label %.preheader36.3.i.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader36.2.i.i.i
  %i.be = or disjoint i64 %.sroa.06.042.i.i.i, 32
  %i.bf = trunc nuw i8 %.sroa.014.2.1.i.i.i to i1
  %i.bg = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.be, i16 %i.ap, i1 zeroext %i.bf) #14
  %i.bh = zext i1 %i.bg to i8
  %i.bi = or i8 %.sroa.014.2.1.i.i.i, %i.bh
  br label %.preheader36.3.i.i.i

.preheader36.3.i.i.i:                             ; preds = %bb.m, %.preheader36.2.i.i.i
  %.sroa.014.2.2.i.i.i = phi i8 [ %.sroa.014.2.1.i.i.i, %.preheader36.2.i.i.i ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bj = icmp eq i16 %i.av, 0
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader36.3.i.i.i
  %i.bk = or disjoint i64 %.sroa.06.042.i.i.i, 48
  %i.bl = trunc nuw i8 %.sroa.014.2.2.i.i.i to i1
  %i.bm = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %i.bk, i16 %i.av, i1 zeroext %i.bl) #14
  %i.bn = zext i1 %i.bm to i8
  %i.bo = or i8 %.sroa.014.2.2.i.i.i, %i.bn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader36.3.i.i.i
  %.sroa.014.2.3.i.i.i = phi i8 [ %.sroa.014.2.2.i.i.i, %.preheader36.3.i.i.i ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bp = add i64 %.sroa.06.042.i.i.i, 64         ; 2 uses
  %i.bq = add i64 %.sroa.06.042.i.i.i, 133
  %i.br = icmp uge i64 %i.bq, %.val1
  %i.bs = trunc nuw i8 %.sroa.014.2.3.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i, label %.preheader.i3.i.i, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %.sroa.06.042.i.i.i, i16 %i.ad, i1 zeroext false) #14
  %i.bu = zext i1 %i.bt to i8
  br label %.preheader36.1.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q, %.preheader.i3.i.i
  %.sroa.014.3.lcssa.i.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i, %.preheader.i3.i.i ], [ %.sroa.014.4.i.i.i, %bb.q ] ; 2 uses
  %.lcssa.i.i.i = phi i1 [ %i.x, %.preheader.i3.i.i ], [ %i.cm, %bb.q ]
  %0 = add i64 %.val1, -21                        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 %0 ; 2 uses
  %.sroa.0.0.copyload.i52.i.i.i = load <16 x i8>, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %.sroa.01.0.copyload.i53.i.i.i = load <16 x i8>, ptr %i.bw, align 1
  %i.bx = icmp eq <16 x i8> %.sroa.0.0.copyload.i52.i.i.i, splat (i8 109)
  %i.by = icmp eq <16 x i8> %.sroa.01.0.copyload.i53.i.i.i, splat (i8 121)
  %i.bz = and <16 x i1> %i.bx, %i.by
  %i.ca = bitcast <16 x i1> %i.bz to i16          ; 2 uses
  %i.cb = icmp eq i16 %i.ca, 0
  br i1 %i.cb, label %.loopexit.i.i, label %bb.s

.lr.ph46.i.i.i:                                   ; preds = %.preheader.i3.i.i, %bb.q
  %.sroa.06.145.i.i.i = phi i64 [ %i.cj, %bb.q ], [ %.sroa.06.0.lcssa.i.i.i, %.preheader.i3.i.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.145.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i54.i.i.i = load <16 x i8>, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  %.sroa.01.0.copyload.i55.i.i.i = load <16 x i8>, ptr %i.cd, align 1
  %i.ce = icmp eq <16 x i8> %.sroa.0.0.copyload.i54.i.i.i, splat (i8 109)
  %i.cf = icmp eq <16 x i8> %.sroa.01.0.copyload.i55.i.i.i, splat (i8 121)
  %i.cg = and <16 x i1> %i.ce, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %.lr.ph46.i.i.i
  %.sroa.014.4.i.i.i = phi i8 [ 0, %.lr.ph46.i.i.i ], [ %i.co, %bb.r ] ; 2 uses
  %i.cj = add i64 %.sroa.06.145.i.i.i, 16
  %i.ck = add i64 %.sroa.06.145.i.i.i, 37
  %i.cl = icmp uge i64 %i.ck, %.val1
  %i.cm = trunc nuw i8 %.sroa.014.4.i.i.i to i1   ; 2 uses
  %or.cond3.i.i.i = or i1 %i.cl, %i.cm
  br i1 %or.cond3.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph46.i.i.i

bb.r:                                             ; preds = %.lr.ph46.i.i.i
  %i.cn = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %.sroa.06.145.i.i.i, i16 %i.ch, i1 zeroext false) #14
  %i.co = zext i1 %i.cn to i8
  br label %bb.q

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.cp = call fastcc zeroext i1 @_RNCNvNtNtCs3oUPovFnLWP_4core3str7pattern13simd_containss0_0Cs7hEL9c06lo_18build_script_build(ptr align 8 %i.a, i64 %0, i16 %i.ca, i1 zeroext %.lcssa.i.i.i) #14
  %i.cq = zext i1 %i.cp to i8
  %i.cr = or i8 %.sroa.014.3.lcssa.i.i.i, %i.cq
  br label %.loopexit.i.i

_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i: ; preds = %bb.j, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i
  %.sroa.06.021.i.i.i = phi ptr [ %i.cu, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i ], [ %.val, %bb.j ] ; 4 uses
  %i.cs = phi i64 [ %i.ct, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i ], [ %.val1, %bb.j ] ; 2 uses
  %i.ct = add i64 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.021.i.i.i, i64 1
  %.not.not.i.i.i.i = icmp eq ptr %.sroa.06.021.i.i.i, null
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i.thread, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i
  %i.cv = load i32, ptr %.sroa.06.021.i.i.i, align 1
  %i.cw = xor i32 %i.cv, 1869440365
  %i.cx = getelementptr i8, ptr %.sroa.06.021.i.i.i, i64 4
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = zext i16 %i.cy to i32
  %i.da = xor i32 %i.cz, 31090
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.loopexit.i.i.thread4, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i

.loopexit.i.i.thread4:                            ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i
  %i.df = icmp ult i64 %i.cs, 7
  br i1 %i.df, label %.loopexit.i.i.thread, label %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i

.loopexit.i.i.thread:                             ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs7hEL9c06lo_18build_script_build.exit.backedge.i.i.i.i, %_RNvXsY_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs7hEL9c06lo_18build_script_build.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

.loopexit.i.i:                                    ; preds = %bb.s, %._crit_edge.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.cr, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = trunc nuw i8 %.sroa.0.0.i.i.i to i1
  br i1 %i.dg, label %bb.v, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit: ; preds = %bb.i
  %i.dh = load i32, ptr %.val, align 1
  %i.di = xor i32 1869440365, %i.dh
  %i.dj = getelementptr i8, ptr %.val, i64 4
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i32
  %i.dm = xor i32 31090, %i.dl
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.v, label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread

_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread: ; preds = %.loopexit.i.i.thread, %bb.i, %.loopexit.i.i, %bb.v, %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7hEL9c06lo_18build_script_build.exit unwind label %bb.t

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs7hEL9c06lo_18build_script_build.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr nonnull align 8 %i.c)
  ret void

bb.v:                                             ; preds = %.loopexit.i.i.thread4, %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit, %.loopexit.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr nonnull @4, ptr nonnull inttoptr (i64 63 to ptr))
          to label %_RINvMNtCs3oUPovFnLWP_4core3stre8containsReECs7hEL9c06lo_18build_script_build.exit.thread unwind label %bb.g

bb.w:                                             ; preds = %bb.g
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslmXY8IYACQt_5gimli(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr sret([32 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio6__print(ptr, ptr) unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCs7hEL9c06lo_18build_script_build4main, ptr %i.a, align 8
  %i.c = call i64 @_RNvNtCsaL1QbXo9JQH_3std2rt19lang_start_internal(ptr nonnull %i.a, ptr nonnull align 8 @0, i64 %i.b, ptr %1, i8 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noinline }
attributes #13 = { cold }
attributes #14 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = distinct !{null}
!6 = !{i64 16277144371581911}
!7 = distinct !{!7, i1 false, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorE17unwrap_or_defaultCs7hEL9c06lo_18build_script_build"}
!8 = distinct !{!8, !7, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCsaL1QbXo9JQH_3std3env8VarErrorE17unwrap_or_defaultCs7hEL9c06lo_18build_script_build: argument 0"}
!9 = distinct !{!9, i1 false, !"_RNvXsp_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7hEL9c06lo_18build_script_build"}
!10 = distinct !{!10, !9, !"_RNvXsp_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core7default7Default7defaultCs7hEL9c06lo_18build_script_build: argument 0"}
!11 = !{!8}
!12 = !{!10, !8}
end_hunk_0
