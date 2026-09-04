Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_utils-4552b8f23364b7cd.typst_utils.4c29e00eb546305a-cgu.0?download=true
inline.NumInlined: 302
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve:bb.a
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.q, %bb.j, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.bx, %bb.i ], [ %i.cr, %bb.q ], [ %i.cr, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit: ; preds = %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 32), align 8, !noundef !5 ; 2 uses
  %i.cd = icmp ult i64 %i.bo, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.b
  %i.ce = getelementptr [16 x i8], ptr @90, i64 %1 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -16
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !5, !noundef !5
  %i.ch = getelementptr i8, ptr %i.ce, i64 -8
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

bb.n:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i64 24), align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.bo ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !5 ; 2 uses
  %i.co = atomicrmw sub ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 1 release, align 4
  %i.cp = add i32 %i.co, -1                       ; 2 uses
  %i.cq = and i32 %i.cp, -1073741825
  %or.cond.i.i = icmp eq i32 %i.cq, -2147483648
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.cp)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEINtBM_11PoisonErrorBH_EE6unwrapB1M_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bo, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = atomicrmw sub ptr @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 1 release, align 4
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  %i.cu = and i32 %i.ct, -1073741825
  %or.cond.i.i11 = icmp eq i32 %i.cu, -2147483648
  br i1 %or.cond.i.i11, label %bb.r, label %common.resume, !prof !11

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico8INTERNER, i32 noundef %i.ct)
          to label %common.resume unwind label %bb.t

bb.s:                                             ; preds = %bb.p
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit: ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.3.0 = phi i64 [ %i.ci, %bb.m ], [ %i.cn, %bb.n ], [ %i.cn, %bb.o ]
  %.sroa.01.0 = phi ptr [ %i.cg, %bb.m ], [ %i.cl, %bb.n ], [ %i.cl, %bb.o ]
  store i8 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs6xpQEr8gLsQ_11typst_utils4pico8InternerEEB1G_.exit, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6decode.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr8constant(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.a = icmp ult i64 %1, 13                      ; 2 uses
  br i1 %i.a, label %.preheader.split.i.i, label %.loopexit.i

.preheader.split.i.i:                             ; preds = %bb.a
  %.not11.i.i = icmp eq i64 %1, 0
  br i1 %.not11.i.i, label %bb.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.split.i.i, %bb.b
  %.sroa.0.013.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %.preheader.split.i.i ]
  %.sroa.03.012.i.i = phi i64 [ %i.b, %bb.b ], [ %1, %.preheader.split.i.i ]
  %i.b = add nsw i64 %.sroa.03.012.i.i, -1        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !366, !noalias !367, !noundef !5
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @110, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !368, !noundef !5 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %.loopexit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = shl i64 %.sroa.0.013.i.i, 5
  %i.j = zext i8 %i.g to i64
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  br label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i, %.loopexit.i
  %.sroa.01.014.i.i = phi i64 [ 0, %.loopexit.i ], [ %.sroa.01.1.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i ] ; 3 uses
  %.sroa.03.013.i.i = phi i64 [ 65, %.loopexit.i ], [ %.sroa.03.1.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i ] ; 2 uses
  %i.l = add i64 %.sroa.03.013.i.i, %.sroa.01.014.i.i ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 6 uses
  %i.n = icmp ult i64 %i.l, 130
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [16 x i8], ptr @90, i64 %i.m ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !370, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !370, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.r) ; 2 uses
  %.not.i.i.i = icmp eq i64 %..i.i.i, 0
  br i1 %.not.i.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.sroa.02.021.i.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.021.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !373, !noalias !374, !noundef !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.02.021.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !372, !noalias !375, !noundef !5 ; 2 uses
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add nuw i64 %.sroa.02.021.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.x, %..i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = icmp ult i8 %i.t, %i.v
  br i1 %i.y, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = tail call i8 @llvm.ucmp.i8.i64(i64 %1, i64 %i.r)
  switch i8 %.sroa.0.0.i.i.i, label %default.unreachable.i.i [
    i8 -1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i
    i8 0, label %bb.h
    i8 1, label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i
  ]

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #36, !noalias !370
  unreachable

default.unreachable.i.i:                          ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i
  unreachable

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i: ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, %bb.f
  %i.z = add nuw nsw i64 %i.m, 1
  br label %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i: ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i, %bb.f
  %.sroa.03.1.i.i = phi i64 [ %.sroa.03.013.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i ], [ %i.m, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i ], [ %i.m, %bb.f ] ; 2 uses
  %.sroa.01.1.i.i = phi i64 [ %i.z, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread6.i.i ], [ %.sroa.01.014.i.i, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i ], [ %.sroa.01.014.i.i, %bb.f ] ; 2 uses
  %i.aa = icmp ult i64 %.sroa.01.1.i.i, %.sroa.03.1.i.i
  br i1 %i.aa, label %bb.c, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr12try_constant.exit

_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i: ; preds = %bb.b
  %i.ab = or i64 %i.k, -9223372036854775808
  br label %bb.i

bb.h:                                             ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.i.i
  %i.ac = add nuw nsw i64 %i.m, 1
  br label %bb.i

_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr12try_constant.exit: ; preds = %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico10exceptions6strcmp.exit.thread.i.i
  tail call void @_RNvNtCs6xpQEr8gLsQ_11typst_utils4pico29failed_to_compile_time_intern(i1 noundef zeroext %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #32
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i, %.preheader.split.i.i
  %.sroa.61.0.ph = phi i64 [ %i.ab, %_RNvNtNtCs6xpQEr8gLsQ_11typst_utils4pico7bitcode6encode.exit.loopexit.i ], [ -9223372036854775808, %.preheader.split.i.i ], [ %i.ac, %bb.h ]
  ret i64 %.sroa.61.0.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet3new() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  ret i64 ptrtoint (ptr @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER to i64)
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet6insert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.d = add nuw nsw i64 %i.a, 1
  %i.e = sub nuw nsw i64 %i.d, %i.c               ; 3 uses
  tail call fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.e)
  %i.f = icmp samesign ugt i64 %i.e, 1
  br i1 %i.f, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !383 ; 2 uses
  %.pre11.i = load i64, ptr %.pre.i, align 8, !noalias !383
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i, %.lr.ph.preheader.i
  %i.g = phi i64 [ %i.q, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %.pre11.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.h = phi ptr [ %i.m, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.01.010.i = phi i64 [ %i.i, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i ], [ 1, %.lr.ph.preheader.i ]
  %i.i = add nuw i64 %.sroa.01.010.i, 1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !383, !noundef !5
  %i.l = icmp eq i64 %i.g, %i.k
  br i1 %i.l, label %bb.c, label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  tail call fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1)
  %.val.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !383 ; 2 uses
  %.pre.i.i = load i64, ptr %.val.pre.i.i, align 8, !noalias !383
  br label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i

_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.m = phi ptr [ %i.h, %.lr.ph.i ], [ %.val.pre.i.i, %bb.c ] ; 3 uses
  %i.n = phi i64 [ %i.g, %.lr.ph.i ], [ %.pre.i.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  store i64 0, ptr %i.p, align 8, !noalias !383
  %i.q = add i64 %i.n, 1                          ; 2 uses
  store i64 %i.q, ptr %i.m, align 8, !noalias !383
  %exitcond.not.i = icmp eq i64 %i.i, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.r = load ptr, ptr %0, align 8, !alias.scope !386, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !noalias !386, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !386, !noundef !5
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i

bb.d:                                             ; preds = %._crit_edge.i
  tail call fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1)
  %.val.pre.i7.i = load ptr, ptr %0, align 8, !alias.scope !386 ; 2 uses
  %.pre.i8.i = load i64, ptr %.val.pre.i7.i, align 8, !noalias !386
  br label %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i

_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i: ; preds = %._crit_edge.i, %bb.d
  %i.w = phi i64 [ %i.s, %._crit_edge.i ], [ %.pre.i8.i, %bb.d ] ; 2 uses
  %.val.i6.i = phi ptr [ %i.r, %._crit_edge.i ], [ %.val.pre.i7.i, %bb.d ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store i64 0, ptr %i.y, align 8, !noalias !386
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %.val.i6.i, align 8, !noalias !386
  %2 = icmp ult i64 %i.a, %i.z
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.a, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i
  %.val11 = phi ptr [ %.val.i6.i, %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i ], [ %i.b, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ab = and i64 %1, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.a ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  ret void

bb.f:                                             ; preds = %_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE4pushCs6xpQEr8gLsQ_11typst_utils.exit9.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #36
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !5
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = and i64 %1, 63
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = lshr i64 %i.g, %i.e
  %i.i = trunc i64 %i.h to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !13, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !noundef !5  ; 2 uses
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = icmp ult i8 %i.h, 13
  br i1 %i.j, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #36
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.k, %bb.e ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  store i64 ptrtoint (ptr @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER to i64), ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet6insert(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 64
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -64
  tail call void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = shl nuw i64 1, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = or i64 %i.e, %i.c
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet8contains(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 64
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !389, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = load i64, ptr %.val.i, align 8, !noalias !389, !noundef !5
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.g = and i64 %1, 63
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.i = load i64, ptr %i.h, align 8, !noalias !389, !noundef !5
  %i.j = lshr i64 %i.i, %i.g
  %i.k = trunc i64 %i.j to i1
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  %i.n = lshr i64 %i.m, %1
  %i.o = trunc i64 %i.n to i1
  br label %_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains.exit

_RNvMNtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB2_6BitSet8contains.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.0.0 = phi i1 [ %i.o, %bb.d ], [ %i.k, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_CsieRLDaoupkO_8thin_vecINtB5_7ThinVecjE7reserveCs6xpQEr8gLsQ_11typst_utils(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 -288230376151711742, 288230376151711745) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  %i.e = add i64 %i.b, %1                         ; 4 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.e, %i.d
  br i1 %.not, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp slt i64 %i.d, 0
  br i1 %i.h, label %bb.f, label %.thread17, !prof !4

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %.not.i = icmp eq ptr %i.a, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %.not.i, label %.thread25, label %bb.l

.thread17:                                        ; preds = %bb.e
  %i.i = shl nuw i64 %i.d, 1
  %..i19 = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.e) ; 2 uses
  %.not.i20 = icmp eq ptr %i.a, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %.not.i20, label %bb.g, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i

.thread:                                          ; preds = %bb.d
  %..i4 = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.a, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %.not.i5, label %bb.g, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.thread

bb.g:                                             ; preds = %.thread17, %.thread
  %..i8 = phi i64 [ %..i4, %.thread ], [ %..i19, %.thread17 ] ; 4 uses
  %i.j = icmp slt i64 %..i8, 0
  br i1 %i.j, label %.thread25, label %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i

.thread25:                                        ; preds = %bb.f, %bb.g
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i: ; preds = %bb.g
  %i.k = icmp samesign ugt i64 %..i8, 1152921504606846975
  br i1 %i.k, label %bb.i, label %bb.h, !prof !4

bb.h:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i
  %i.l = shl nuw nsw i64 %..i8, 3
  %i.m = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.l, i64 16) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvCsieRLDaoupkO_8thin_vec10alloc_sizejECs6xpQEr8gLsQ_11typst_utils.exit.i.i, !prof !4

bb.i:                                             ; preds = %_RNvXs_CsieRLDaoupkO_8thin_vecINtNtCs3oUPovFnLWP_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCs6xpQEr8gLsQ_11typst_utils.exit.i.i.i
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvCsieRLDaoupkO_8thin_vec17capacity_overflow() #32, !noalias !392
  unreachable
end_hunk_0
