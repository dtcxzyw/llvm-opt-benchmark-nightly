Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/dynamic_link?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"TBB_ENABLE_SANITIZERS\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden void @_ZN3tbb6detail2r122init_dynamic_link_dataEv() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define hidden void @_ZN3tbb6detail2r114dynamic_unlinkEPv(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ne ptr @dlclose, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @dlclose(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare extern_weak i32 @dlclose(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden void @_ZN3tbb6detail2r118dynamic_unlink_allEv() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define hidden noundef range(i32 2, 259) i32 @_ZN3tbb6detail2r113loading_flagsEi(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %0, 8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str) #10 ; 3 uses
  %.not.not.not.i = icmp eq ptr %i.b, null
  br i1 %.not.not.not.i, label %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strspn(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1) #11
  %i.d = getelementptr i8, ptr %i.b, i64 %i.c     ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11
  %.not14.i = icmp eq i8 %i.e, 49
  br i1 %.not14.i, label %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit, label %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit.thread

_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit: ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.d, i64 1        ; 2 uses
  %i.g = tail call i64 @strspn(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1) #11
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %.fr = freeze i8 %i.i
  %.not15.i = icmp eq i8 %.fr, 0
  %spec.select = select i1 %.not15.i, i32 2, i32 10
  br label %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit.thread

_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit.thread: ; preds = %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 258, %bb.a ], [ 10, %bb.b ], [ %spec.select, %_ZN3tbb6detail2r1L26GetBoolEnvironmentVariableEPKc.exit ], [ 10, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r111file_existsEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #10
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 32768
  %i.g = select i1 %i.b, i1 %i.f, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noalias noundef ptr @_ZN3tbb6detail2r112dynamic_loadEPKcPKNS1_23dynamic_link_descriptorEmi(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define hidden noundef zeroext i1 @_ZN3tbb6detail2r112dynamic_linkEPKcPKNS1_23dynamic_link_descriptorEmPPvi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [20 x ptr], align 16              ; 9 uses
  %5 = and i32 %4, 1
  %.not = icmp eq i32 %5, 0
  %.not.i = icmp eq ptr @dlopen, null
  %or.cond34 = or i1 %.not.i, %.not
  br i1 %or.cond34, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlopen(ptr noundef %0, i32 noundef 261) #10 ; 4 uses
  %.not9.i = icmp eq ptr %i.b, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr @dlsym, null
  %i.c = icmp ugt i64 %2, 20
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not2934.i.i = icmp eq i64 %2, 0
  br i1 %.not2934.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.02135.i.i = phi i64 [ %i.h, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.02135.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = tail call ptr @dlsym(ptr noundef nonnull %i.b, ptr noundef %i.e) #10 ; 2 uses
  %.not28.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not28.not.i.i, label %_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.02135.i.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !23
  %i.h = add nuw nsw i64 %.02135.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.h, %2
  br i1 %exitcond.not.i.i, label %.critedge30.i.i.preheader, label %.lr.ph.i.i, !llvm.loop !12

.critedge30.i.i.preheader:                        ; preds = %bb.e
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.i = icmp ult i64 %2, 4
  br i1 %i.i, label %.critedge30.i.i.epil.preheader, label %.critedge30.i.i.preheader.new

.critedge30.i.i.preheader.new:                    ; preds = %.critedge30.i.i.preheader
  %unroll_iter = and i64 %2, 28
  br label %.critedge30.i.i

.critedge30.i.i:                                  ; preds = %.critedge30.i.i, %.critedge30.i.i.preheader.new
  %.037.i.i = phi i64 [ 0, %.critedge30.i.i.preheader.new ], [ %i.ag, %.critedge30.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.critedge30.i.i.preheader.new ], [ %niter.next.3, %.critedge30.i.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.037.i.i
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !23
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.037.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  store ptr %i.k, ptr %i.n, align 8, !tbaa !23
  %i.o = or disjoint i64 %.037.i.i, 1             ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  store ptr %i.q, ptr %i.t, align 8, !tbaa !23
  %i.u = or disjoint i64 %.037.i.i, 2             ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !23
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  store ptr %i.w, ptr %i.z, align 8, !tbaa !23
  %i.aa = or disjoint i64 %.037.i.i, 3            ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !23
  %i.ag = add nuw nsw i64 %.037.i.i, 4            ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.loopexit.unr-lcssa, label %.critedge30.i.i, !llvm.loop !13

_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.i: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.thread.i

_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.thread.i: ; preds = %_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.i, %bb.c
  %.not14.i = icmp eq ptr @dlclose, null
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.thread.i
  %i.ah = tail call i32 @dlclose(ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %bb.g

.thread.loopexit.unr-lcssa:                       ; preds = %.critedge30.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.critedge30.i.i.epil.preheader

.critedge30.i.i.epil.preheader:                   ; preds = %.thread.loopexit.unr-lcssa, %.critedge30.i.i.preheader
  %.037.i.i.epil.init = phi i64 [ 0, %.critedge30.i.i.preheader ], [ %i.ag, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.critedge30.i.i.epil

.critedge30.i.i.epil:                             ; preds = %.critedge30.i.i.epil, %.critedge30.i.i.epil.preheader
  %.037.i.i.epil = phi i64 [ %i.an, %.critedge30.i.i.epil ], [ %.037.i.i.epil.init, %.critedge30.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.critedge30.i.i.epil ], [ 0, %.critedge30.i.i.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.037.i.i.epil
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.037.i.i.epil
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !25
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !23
  %i.an = add nuw nsw i64 %.037.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread, label %.critedge30.i.i.epil, !llvm.loop !14

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %.critedge30.i.i.epil, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not.i24 = icmp eq ptr %3, null
  br i1 %.not.i24, label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit, label %bb.j

bb.g:                                             ; preds = %bb.f, %_ZN3tbb6detail2r1L15resolve_symbolsEPvPKNS1_23dynamic_link_descriptorEm.exit.thread.i, %bb.b, %bb.a
  %i.ao = and i32 %4, 4
  %.not22 = icmp eq i32 %i.ao, 0
  br i1 %.not22, label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp eq i64 %2, 0
  br i1 %i.ap, label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = add nuw i64 %.01419.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, %2
  br i1 %exitcond.not.i, label %.lr.ph21.i.preheader, label %.lr.ph.i, !llvm.loop !15

.lr.ph21.i.preheader:                             ; preds = %bb.i
  %xtraiter46 = and i64 %2, 3                     ; 3 uses
  %i.ar = icmp ult i64 %2, 4
  br i1 %i.ar, label %.lr.ph21.i.epil.preheader, label %.lr.ph21.i.preheader.new

.lr.ph21.i.preheader.new:                         ; preds = %.lr.ph21.i.preheader
  %unroll_iter50 = and i64 %2, -4
  br label %.lr.ph21.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.01419.i = phi i64 [ %i.aq, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.01419.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  %.not.i23 = icmp eq ptr %i.au, null
  br i1 %.not.i23, label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit, label %bb.i

.lr.ph21.i:                                       ; preds = %.lr.ph21.i, %.lr.ph21.i.preheader.new
  %.020.i = phi i64 [ 0, %.lr.ph21.i.preheader.new ], [ %i.bp, %.lr.ph21.i ] ; 5 uses
  %niter51 = phi i64 [ 0, %.lr.ph21.i.preheader.new ], [ %niter51.next.3, %.lr.ph21.i ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.020.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.020.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.020.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.020.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !23
  %i.bp = add nuw i64 %.020.i, 4                  ; 2 uses
  %niter51.next.3 = add nuw i64 %niter51, 4       ; 2 uses
  %niter51.ncmp.3 = icmp eq i64 %niter51.next.3, %unroll_iter50
  br i1 %niter51.ncmp.3, label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit.loopexit.unr-lcssa, label %.lr.ph21.i, !llvm.loop !16

bb.j:                                             ; preds = %.thread
  store ptr %i.b, ptr %3, align 8, !tbaa !23
  br label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit

_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph21.i
  %lcmp.mod48.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod48.not, label %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit, label %.lr.ph21.i.epil.preheader

.lr.ph21.i.epil.preheader:                        ; preds = %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit.loopexit.unr-lcssa, %.lr.ph21.i.preheader
  %.020.i.epil.init = phi i64 [ 0, %.lr.ph21.i.preheader ], [ %i.bp, %_ZN3tbb6detail2r1L16weak_symbol_linkEPKNS1_23dynamic_link_descriptorEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter46, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %.lr.ph21.i.epil

.lr.ph21.i.epil:                                  ; preds = %.lr.ph21.i.epil, %.lr.ph21.i.epil.preheader
  %.020.i.epil = phi i64 [ %i.bv, %.lr.ph21.i.epil ], [ %.020.i.epil.init, %.lr.ph21.i.epil.preheader ] ; 2 uses
  %epil.iter47 = phi i64 [ %epil.iter47.next, %.lr.ph21.i.epil ], [ 0, %.lr.ph21.i.epil.preheader ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.020.i.epil ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
end_hunk_0
