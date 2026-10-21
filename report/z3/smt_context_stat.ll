Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_context_stat?download=true
inline.NumInlined: 175
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.svector.4 = type { %class.vector.5 }
%class.vector.5 = type { ptr }
%struct.mk_pp = type { %struct.mk_ismt2_pp }
%struct.mk_ismt2_pp = type { ptr, ptr, %class.params_ref, ptr, i32, i32, ptr }
%class.params_ref = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.293" = type { i8 }

$_ZN6vectorIjLb0EjED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"number of atoms having k occs:\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"number of min occs:\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK3smt7context22get_lemma_avg_activityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8992
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit

_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit:    ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit
  %i.g = zext i32 %i.e to i64                     ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 2305843009213693951
  %i.i = and i64 %i.h, 2305843009213693951        ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp samesign ult i64 %i.i, 3
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 4611686018427387900
  br label %.lr.ph

_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa, %.lr.ph.preheader
  %.01014.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.bp, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa ]
  %.01113.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bo, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01014.epil = phi ptr [ %i.v, %.lr.ph.epil ], [ %.01014.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.01113.epil = phi i64 [ %i.u, %.lr.ph.epil ], [ %.01113.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.l = load ptr, ptr %.01014.epil, align 8, !tbaa !15 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 16777215
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  %i.t = zext i32 %i.s to i64
  %i.u = add i64 %.01113.epil, %i.t               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01014.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit, label %.lr.ph.epil, !llvm.loop !537

_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit:     ; preds = %.lr.ph.epil, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.bo, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa ], [ %i.u, %.lr.ph.epil ]
  %i.w = udiv i64 %.lcssa, %i.g
  %i.x = trunc i64 %i.w to i32
  br label %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01014 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.bp, %.lr.ph ] ; 5 uses
  %.01113 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bo, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.y = load ptr, ptr %.01014, align 8, !tbaa !15 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 16777215
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = zext i32 %i.af to i64
  %i.ah = add i64 %.01113, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.01014, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 16777215
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = zext i32 %i.aq to i64
  %i.as = add i64 %i.ah, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.01014, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 16777215
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add i64 %i.as, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.01014, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 16777215
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %i.bd, %i.bn                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01014, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit.unr-lcssa, label %.lr.ph

_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit.thread: ; preds = %bb.a, %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit
  %.0 = phi i32 [ %i.x, %_ZNK6vectorIPN3smt6clauseELb0EjE4sizeEv.exit ], [ 0, %_ZNK6vectorIPN3smt6clauseELb0EjE5emptyEv.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3smt7context24display_literal_num_occsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.svector.4, align 8           ; 13 uses
  %3 = alloca %struct.mk_pp, align 8              ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !541  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !21
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !21
  %.not.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %.preheader

thread-pre-split.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.f = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %.preheader
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %.preheader
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %thread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -4
  store i32 %i.e, ptr %i.k, align 4, !tbaa !13
  %i.l = zext i32 %i.e to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.m, i1 false), !tbaa !13
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread
  %.0.i47 = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ %i.e, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8984
  %.val20 = load ptr, ptr %i.n, align 8, !tbaa !12 ; 4 uses
  %i.o = icmp eq ptr %.val20, null
  br i1 %i.o, label %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, label %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i

_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i:    ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.p = getelementptr inbounds i8, ptr %.val20, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.val20, i64 %i.s
  %.not1.i = icmp eq i32 %i.q, 0
  br i1 %.not1.i, label %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i, %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i
  %.02.i.a = phi ptr [ %i.bg, %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i ], [ %.val20, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i ] ; 2 uses
  %4 = load ptr, ptr %.02.i.a, align 8, !tbaa !15 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8             ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !23     ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 2             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.v, 0
  br i1 %.not1.i.i, label %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i21
  %i.y = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ab = load i32, ptr %.02.i.i.prol, align 4, !tbaa !13
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.02.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !538

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.y, 12
  br i1 %i.ah, label %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ai = load i32, ptr %.02.i.i, align 4, !tbaa !13
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !13
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 16 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bf, %i.x
  br i1 %.not.i.i.3, label %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i, label %.lr.ph.i.i

_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i21
  %i.bg = getelementptr inbounds nuw i8, ptr %.02.i.a, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, %i.t
  br i1 %.not.i, label %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, label %.lr.ph.i21

_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit: ; preds = %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8992
  %.val = load ptr, ptr %i.bh, align 8, !tbaa !12 ; 4 uses
  %i.bi = icmp eq ptr %.val, null
  br i1 %i.bi, label %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit34, label %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i22

_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i22:  ; preds = %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !13 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bm
  %.not1.i23 = icmp eq i32 %i.bk, 0
  br i1 %.not1.i23, label %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit34, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i22, %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32
  %.02.i25 = phi ptr [ %i.da, %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32 ], [ %.val, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i22 ] ; 2 uses
  %5 = load ptr, ptr %.02.i25, align 8, !tbaa !15 ; 2 uses
  %.val.i26 = load ptr, ptr %2, align 8           ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bp = load i32, ptr %5, align 4, !tbaa !23    ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx.i.i27 = shl nuw nsw i64 %i.bq, 2          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i27
  %.not1.i.i28 = icmp eq i32 %i.bp, 0
  br i1 %.not1.i.i28, label %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %.lr.ph.i24
  %i.bs = add nsw i64 %.idx.i.i27, -4             ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1
  %xtraiter68 = and i64 %i.bu, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %.02.i.i30.prol = phi ptr [ %i.ca, %.lr.ph.i.i29.prol ], [ %i.bo, %.lr.ph.i.i29.preheader ] ; 2 uses
  %prol.iter70 = phi i64 [ %prol.iter70.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.bv = load i32, ptr %.02.i.i30.prol, align 4, !tbaa !13
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val.i26, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.02.i.i30.prol, i64 4 ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !539

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.02.i.i30.unr = phi ptr [ %i.bo, %.lr.ph.i.i29.preheader ], [ %i.ca, %.lr.ph.i.i29.prol ]
  %i.cb = icmp ult i64 %i.bs, 12
  br i1 %i.cb, label %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.02.i.i30 = phi ptr [ %i.cz, %.lr.ph.i.i29 ], [ %.02.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 5 uses
  %i.cc = load i32, ptr %.02.i.i30, align 4, !tbaa !13
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val.i26, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.02.i.i30, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !13
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val.i26, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.02.i.i30, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !13
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val.i26, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !13
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.02.i.i30, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val.i26, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !13
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.02.i.i30, i64 16 ; 2 uses
  %.not.i.i31.3 = icmp eq ptr %i.cz, %i.br
  br i1 %.not.i.i31.3, label %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32, label %.lr.ph.i.i29

_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32: ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %.lr.ph.i24
  %i.da = getelementptr inbounds nuw i8, ptr %.02.i25, i64 8 ; 2 uses
  %.not.i33 = icmp eq ptr %i.da, %i.bn
  br i1 %.not.i33, label %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit34, label %.lr.ph.i24

_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit34: ; preds = %_ZN3smtL12acc_num_occsEPNS_6clauseER7svectorIjjE.exit.i32, %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i22
  %.not52 = icmp eq i32 %.0.i47, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit34
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.trip.count = zext i32 %.0.i47 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, %_ZN3smtL12acc_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit34
  %i.de = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.de, null
  br i1 %.not.i.i35, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.df)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #18
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 ] ; 4 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13 ; 2 uses
  %.not = icmp eq i32 %i.dk, 0
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dl = zext i32 %i.dk to i64
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.dl)
          to label %_ZNSolsEj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEj.exit:                                   ; preds = %bb.e
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSolsEj.exit
  %i.do = trunc i64 %indvars.iv to i1
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %i.do)
          to label %_ZNSolsEb.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %_ZNSolsEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.dr = lshr i64 %indvars.iv, 1
  %i.ds = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dt = and i64 %i.dr, 2147483647
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !542
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !543, !nonnull !526, !align !527
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.dv, ptr noundef nonnull align 8 dereferenceable(952) %i.dw, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit unwind label %bb.h

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit:        ; preds = %bb.f
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEj.exit, %bb.e, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.i ], [ %i.dz, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit43: ; preds = %bb.g, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !540

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn17.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn17.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIjLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIjLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3smt7context37display_num_assigned_literals_per_lvlERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9624
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !544  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit

_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit
  %.0.lcssa = phi i32 [ 0, %_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit ], [ 0, %bb.a ], [ %i.x, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9016
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !545  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %._crit_edge, %bb.b
  %.0.i = phi i32 [ %i.n, %bb.b ], [ 0, %._crit_edge ]
  %i.o = sub i32 %.0.i, %.0.lcssa
  %i.p = zext i32 %i.o to i64
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.p)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit, %.lr.ph
  %.016 = phi i32 [ %i.x, %.lr.ph ], [ 0, %_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit ]
  %.01315 = phi ptr [ %i.y, %.lr.ph ], [ %i.c, %_ZNK6vectorIN3smt7context5scopeELb0EjE3endEv.exit ] ; 3 uses
  %i.s = load i32, ptr %.01315, align 4, !tbaa !547
  %i.t = sub i32 %i.s, %.016
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.u)
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.x = load i32, ptr %.01315, align 4, !tbaa !547 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01315, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3smt7context26display_var_occs_histogramERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator.293", align 1 ; 4 uses
  %4 = alloca %class.svector.4, align 8           ; 13 uses
  %5 = alloca %class.svector.4, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !21
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !21
  %.not.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %.preheader

thread-pre-split.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %4, align 8, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.f = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %.preheader
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = icmp ugt i32 %i.e, %i.i
  br i1 %i.j, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %.preheader
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %thread-pre-split.i unwind label %bb.b

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -4
  store i32 %i.e, ptr %i.k, align 4, !tbaa !13
  %i.l = zext i32 %i.e to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.m, i1 false), !tbaa !13
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread
  %.0.i.i.i67 = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.thread ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ], [ %i.e, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8984
  %.val27 = load ptr, ptr %i.n, align 8, !tbaa !12 ; 4 uses
  %i.o = icmp eq ptr %.val27, null
  br i1 %i.o, label %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, label %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i

_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i:    ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.p = getelementptr inbounds i8, ptr %.val27, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %.val27, i64 %i.s
  %.not1.i = icmp eq i32 %i.q, 0
  br i1 %.not1.i, label %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i, %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i
  %.02.i.a = phi ptr [ %i.bl, %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i ], [ %.val27, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i ] ; 2 uses
  %6 = load ptr, ptr %.02.i.a, align 8, !tbaa !15 ; 2 uses
  %.val.i = load ptr, ptr %4, align 8             ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.v = load i32, ptr %6, align 4, !tbaa !23     ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx.i.i = shl nuw nsw i64 %i.w, 2             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.v, 0
  br i1 %.not1.i.i, label %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i28
  %i.y = add nsw i64 %.idx.i.i, -4                ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ab = load i32, ptr %.02.i.i.prol, align 4, !tbaa !13
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.02.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !548

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.ai = icmp ult i64 %i.y, 12
  br i1 %i.ai, label %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.aj = load i32, ptr %.02.i.i, align 4, !tbaa !13
  %i.ak = lshr i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !13
  %i.ar = lshr i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = lshr i32 %i.ax, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = lshr i32 %i.be, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %.02.i.i, i64 16 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bk, %i.x
  br i1 %.not.i.i.3, label %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i, label %.lr.ph.i.i

_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %.02.i.a, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, %i.t
  br i1 %.not.i, label %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit, label %.lr.ph.i28

_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit: ; preds = %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i, %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8992
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !12 ; 4 uses
  %i.bn = icmp eq ptr %.val, null
  br i1 %i.bn, label %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41, label %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i29

_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i29:  ; preds = %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit
  %i.bo = getelementptr inbounds i8, ptr %.val, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.br
  %.not1.i30 = icmp eq i32 %i.bp, 0
  br i1 %.not1.i30, label %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i29, %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39
  %.02.i32 = phi ptr [ %i.dk, %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39 ], [ %.val, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i29 ] ; 2 uses
  %7 = load ptr, ptr %.02.i32, align 8, !tbaa !15 ; 2 uses
  %.val.i33 = load ptr, ptr %4, align 8           ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bu = load i32, ptr %7, align 4, !tbaa !23    ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %.idx.i.i34 = shl nuw nsw i64 %i.bv, 2          ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i34
  %.not1.i.i35 = icmp eq i32 %i.bu, 0
  br i1 %.not1.i.i35, label %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39, label %.lr.ph.i.i36.preheader

.lr.ph.i.i36.preheader:                           ; preds = %.lr.ph.i31
  %i.bx = add nsw i64 %.idx.i.i34, -4             ; 2 uses
  %i.by = lshr exact i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1
  %xtraiter126 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.i.i36.prol.loopexit, label %.lr.ph.i.i36.prol

.lr.ph.i.i36.prol:                                ; preds = %.lr.ph.i.i36.preheader, %.lr.ph.i.i36.prol
  %.02.i.i37.prol = phi ptr [ %i.cg, %.lr.ph.i.i36.prol ], [ %i.bt, %.lr.ph.i.i36.preheader ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.i.i36.prol ], [ 0, %.lr.ph.i.i36.preheader ]
  %i.ca = load i32, ptr %.02.i.i37.prol, align 4, !tbaa !13
  %i.cb = lshr i32 %i.ca, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val.i33, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %.02.i.i37.prol, i64 4 ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.i.i36.prol.loopexit, label %.lr.ph.i.i36.prol, !llvm.loop !549

.lr.ph.i.i36.prol.loopexit:                       ; preds = %.lr.ph.i.i36.prol, %.lr.ph.i.i36.preheader
  %.02.i.i37.unr = phi ptr [ %i.bt, %.lr.ph.i.i36.preheader ], [ %i.cg, %.lr.ph.i.i36.prol ]
  %i.ch = icmp ult i64 %i.bx, 12
  br i1 %i.ch, label %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39, label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %.lr.ph.i.i36.prol.loopexit, %.lr.ph.i.i36
  %.02.i.i37 = phi ptr [ %i.dj, %.lr.ph.i.i36 ], [ %.02.i.i37.unr, %.lr.ph.i.i36.prol.loopexit ] ; 5 uses
  %i.ci = load i32, ptr %.02.i.i37, align 4, !tbaa !13
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val.i33, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.02.i.i37, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13
  %i.cq = lshr i32 %i.cp, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val.i33, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %.02.i.i37, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !13
  %i.cx = lshr i32 %i.cw, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val.i33, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !13
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.02.i.i37, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !13
  %i.de = lshr i32 %i.dd, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val.i33, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !13
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %.02.i.i37, i64 16 ; 2 uses
  %.not.i.i38.3 = icmp eq ptr %i.dj, %i.bw
  br i1 %.not.i.i38.3, label %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39, label %.lr.ph.i.i36

_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39: ; preds = %.lr.ph.i.i36.prol.loopexit, %.lr.ph.i.i36, %.lr.ph.i31
  %i.dk = getelementptr inbounds nuw i8, ptr %.02.i32, i64 8 ; 2 uses
  %.not.i40 = icmp eq ptr %i.dk, %i.bs
  br i1 %.not.i40, label %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41, label %.lr.ph.i31

_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41: ; preds = %_ZN3smtL16acc_var_num_occsEPNS_6clauseER7svectorIjjE.exit.i39, %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i29, %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !21
  %.not78 = icmp eq i32 %.0.i.i.i67, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41
  %wide.trip.count = zext i32 %.0.i.i.i67 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE7reserveEjRKj.exit, %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41
  %i.dl = phi ptr [ null, %_ZN3smtL16acc_var_num_occsERK10ptr_vectorINS_6clauseEER7svectorIjjE.exit41 ], [ %i.fr, %_ZN6vectorIjLb0EjE7reserveEjRKj.exit ] ; 5 uses
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6vectorIjLb0EjE7reserveEjRKj.exit
  %i.do = phi ptr [ null, %.lr.ph.preheader ], [ %i.fr, %_ZN6vectorIjLb0EjE7reserveEjRKj.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6vectorIjLb0EjE7reserveEjRKj.exit ] ; 2 uses
  %i.dp = load ptr, ptr %4, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !13 ; 2 uses
  %i.ds = add i32 %i.dr, 1                        ; 6 uses
  %i.dt = icmp eq ptr %i.do, null
  br i1 %i.dt, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43

_ZNK6vectorIjLb0EjE4sizeEv.exit.i45:              ; preds = %.lr.ph
  %.not.i46 = icmp ne i32 %i.ds, 0
  call void @llvm.assume(i1 %.not.i46)
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43:       ; preds = %.lr.ph
  %i.du = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !13 ; 2 uses
  %i.dw = icmp ugt i32 %i.ds, %i.dv
  br i1 %i.dw, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43
  %.ph = phi ptr [ %i.do, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43 ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45 ]
  %.0.i17.i.i.ph = phi i32 [ %i.dv, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43 ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45 ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader
  %i.dx = phi ptr [ %.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader ], [ %.be, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge ] ; 7 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.c, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !13
  %i.eb = icmp ugt i32 %i.ds, %i.ea
  br i1 %i.eb, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.l

bb.c:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.ec = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc62:                                         ; preds = %bb.c
  store i32 2, ptr %i.ec, align 4, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 0, ptr %i.ed, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  store ptr %i.ee, ptr %5, align 8, !tbaa !21
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge:     ; preds = %.noexc62, %.noexc63
  %.be = phi ptr [ %i.fk, %.noexc63 ], [ %i.ee, %.noexc62 ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, !llvm.loop !550

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !13 ; 3 uses
  %i.eh = mul i32 %i.eg, 3
  %i.ei = add i32 %i.eh, 1
  %i.ej = lshr i32 %i.ei, 1                       ; 3 uses
  %i.ek = shl i32 %i.ej, 2
  %i.el = add i32 %i.ek, 8                        ; 2 uses
  %.not.i60 = icmp ugt i32 %i.ej, %i.eg
  br i1 %.not.i60, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.em = shl i32 %i.eg, 2
  %i.en = add i32 %i.em, 8
  %.not27.i = icmp ugt i32 %i.el, %i.en
  br i1 %.not27.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.eo = call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.eo, align 8, !tbaa !530
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 3 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !532
  %i.er = load ptr, ptr %2, align 8, !tbaa !534   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !535 ; 3 uses
  %i.ew = icmp ult i64 %i.ev, 16
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw nsw i64 %i.ev, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull align 8 dereferenceable(1) %i.es, i64 %i.ex, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.er, ptr %i.ep, align 8, !tbaa !534
  %i.ey = load i64, ptr %i.es, align 8, !tbaa !536
  store i64 %i.ey, ptr %i.eq, align 8, !tbaa !536
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i61 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !535
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ez = phi i64 [ %i.ev, %bb.g ], [ %.pre.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %i.ez, ptr %i.fb, align 8, !tbaa !535
  store ptr %i.es, ptr %2, align 8, !tbaa !534
  store i64 0, ptr %i.fa, align 8, !tbaa !535
  store i8 0, ptr %i.es, align 8, !tbaa !536
  invoke void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %2, align 8, !tbaa !534   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.es
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.h
  %i.ff = load i64, ptr %i.es, align 8, !tbaa !536
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @__cxa_free_exception(ptr %i.eo) #17
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.fi = zext i32 %i.el to i64
  %i.fj = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ef, i64 noundef %i.fi)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63:                                         ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  store ptr %i.fk, ptr %5, align 8, !tbaa !21
  store i32 %i.ej, ptr %i.fj, align 4, !tbaa !13
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge

bb.k:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.l:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.fl = getelementptr inbounds i8, ptr %i.dx, i64 -4
  store i32 %i.ds, ptr %i.fl, align 4, !tbaa !13
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %i.ds
  br i1 %.not1319.i.i, label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.fm = zext i32 %i.ds to i64
  %i.fn = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.fo = getelementptr [4 x i8], ptr %i.dx, i64 %i.fn
  %i.fp = sub nsw i64 %i.fm, %i.fn
  %i.fq = shl nsw i64 %i.fp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fo, i8 0, i64 %i.fq, i1 false), !tbaa !13
  br label %_ZN6vectorIjLb0EjE7reserveEjRKj.exit

_ZN6vectorIjLb0EjE7reserveEjRKj.exit:             ; preds = %.lr.ph.preheader.i.i, %bb.l, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43
  %i.fr = phi ptr [ %i.dx, %.lr.ph.preheader.i.i ], [ %i.dx, %bb.l ], [ %i.do, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i43 ] ; 3 uses
  %i.fs = zext i32 %i.dr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !13
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !13
end_hunk_0
