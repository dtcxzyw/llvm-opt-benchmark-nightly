inline.NumInlined: 120
inline.NumDeleted: 90
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.v8::base::LeakyObject" = type { [480 x i8] }

$_ZN2v88internal21RegisterConfigurationD2Ev = comdat any

$_ZN2v88internal21RegisterConfigurationD0Ev = comdat any

$_ZTVN2v88internal21RegisterConfigurationE = comdat any

$_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = comdat any

@_ZTVN2v88internal21RegisterConfigurationE = linkonce_odr hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal21RegisterConfigurationD2Ev, ptr @_ZN2v88internal21RegisterConfigurationD0Ev] }, comdat, align 8
@_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object = internal global %"class.v8::base::LeakyObject" zeroinitializer, align 8
@_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object = internal global i64 0, align 8
@_ZN2v88internal12_GLOBAL__N_124kAllocatableGeneralCodesE = internal constant [12 x i32] [i32 0, i32 3, i32 2, i32 1, i32 6, i32 7, i32 8, i32 9, i32 11, i32 12, i32 15, i32 14], align 16
@_ZTVN2v88internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal21RegisterConfigurationD2Ev, ptr @_ZN2v88internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationD0Ev] }, align 8
@_ZN2v88internal12_GLOBAL__N_123kAllocatableDoubleCodesE = internal constant [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], align 16
@_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names = linkonce_odr hidden local_unnamed_addr constant [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], comdat, align 16
@.str = private unnamed_addr constant [4 x i8] c"rax\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rcx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rdx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rbx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rbp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rdi\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"r11\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"r12\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"r13\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"r14\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"r15\00", align 1
@_ZTVN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationE = internal unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD2Ev, ptr @_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD0Ev] }, align 8

@_ZN2v88internal21RegisterConfigurationC1ENS0_12AliasingKindEiiiiiiiiPKiS4_S4_ = hidden unnamed_addr alias void (ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr), ptr @_ZN2v88internal21RegisterConfigurationC2ENS0_12AliasingKindEiiiiiiiiPKiS4_S4_

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal21RegisterConfiguration7DefaultEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object) #12
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN2v84base11LeakyObjectINS_8internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationEEC2IJEEEDpOT_()
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object) #12
  br label %_ZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEv.exit

_ZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal21RegisterConfiguration24RestrictGeneralRegistersENS0_11RegListBaseINS0_8RegisterEEE(i16 %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %0) ; 3 uses
  %i.b = zext nneg i16 %i.a to i64                ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #13 ; 8 uses
  %i.e = shl nuw nsw i64 %i.b, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #13 ; 2 uses
  %i.g = zext i16 %0 to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.a ] ; 5 uses
  %.0 = phi i32 [ %.1, %bb.i ], [ 0, %bb.a ]      ; 3 uses
  %i.h = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN2v88internal21RegisterConfiguration7DefaultEv.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object) #12
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN2v88internal21RegisterConfiguration7DefaultEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN2v84base11LeakyObjectINS_8internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationEEC2IJEEEDpOT_()
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object) #12
  br label %_ZN2v88internal21RegisterConfiguration7DefaultEv.exit

_ZN2v88internal21RegisterConfiguration7DefaultEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 28), align 4
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv, %i.l
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal21RegisterConfiguration7DefaultEv.exit
  %i.n = zext nneg i16 %i.a to i32
  %i.o = tail call noalias noundef nonnull dereferenceable(496) ptr @_Znwm(i64 noundef 496) #13 ; 39 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal21RegisterConfigurationE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 16, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 16, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 %i.n, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i32 15, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 0, ptr %i.v, align 8
  store ptr %i.d, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  store ptr @_ZN2v88internal12_GLOBAL__N_123kAllocatableDoubleCodesE, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  store i32 0, ptr %i.x, align 8
  %.not = icmp eq i16 %0, 0
  br i1 %.not, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.y = icmp samesign ult i16 %i.a, 4
  br i1 %i.y, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.b, 28
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %i.z = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = or i32 %i.ac, %i.z
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = or i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = shl nuw i32 1, %i.al
  %i.an = or i32 %i.am, %i.ai
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = or i32 %i.ar, %i.an                     ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.3, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.as, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa ]
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ], [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.at = phi i32 [ %i.ax, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i.epil
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = or i32 %i.aw, %i.at                     ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !8

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.as, %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.i.i.epil ]
  store i32 %.lcssa, ptr %i.t, align 8
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit18.loopexit, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.bd = ptrtoint ptr %i.f to i64
  %i.be = ptrtoint ptr %i.d to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 16, ptr %i.bb, align 4
  store i32 16, ptr %i.bc, align 4
  store i32 15, ptr %i.ay, align 8
  store i32 15, ptr %i.az, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 344
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.bh, align 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.bi, align 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bk, align 8
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bl, align 8
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bn, align 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bo, align 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  store i32 12, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i32 12, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 392
  store i32 12, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 268
  store i32 13, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  store i32 13, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 396
  store i32 13, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  store i32 14, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store i32 14, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  store i32 14, ptr %i.by, align 8
  store i32 16, ptr %i.ba, align 8
  store i32 15, ptr %i.bf, align 4
  store <4 x i32> splat (i32 32767), ptr %i.bg, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationE, i64 16), ptr %i.o, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  store i64 %i.be, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 488
  store i64 %i.bd, ptr %i.ca, align 8
  ret ptr %i.o

bb.f:                                             ; preds = %_ZN2v88internal21RegisterConfiguration7DefaultEv.exit
  %i.cb = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object acquire, align 8
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.g, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.cd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object) #12
  %.not.i.i19 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i19, label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN2v84base11LeakyObjectINS_8internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationEEC2IJEEEDpOT_()
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object) #12
  br label %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit

_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 72), align 8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = and i32 %i.cg, 240
  %i.ci = icmp eq i32 %i.ch, 0
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = and i32 %i.cg, 15                       ; 2 uses
  %i.ck = shl nuw nsw i32 1, %i.cj
  %i.cl = and i32 %i.ck, %i.g
  %.not32 = icmp eq i32 %i.cl, 0
  br i1 %.not32, label %bb.i, label %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit

_ZN2v88internal12RegisterNameENS0_8RegisterE.exit: ; preds = %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit
  %i.cm = sext i32 %.0 to i64                     ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.cm
  store i32 %i.cj, ptr %i.cn, align 4
  %i.co = and i64 %indvars.iv, 240
  %i.cp = icmp eq i64 %i.co, 0
  tail call void @llvm.assume(i1 %i.cp)
  %.mask = and i64 %indvars.iv, 15
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %.mask
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cm
  store ptr %i.cr, ptr %i.cs, align 8
  %i.ct = add nsw i32 %.0, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit
  %.1 = phi i32 [ %i.ct, %_ZN2v88internal12RegisterNameENS0_8RegisterE.exit ], [ %.0, %_ZNK2v88internal11RegListBaseINS0_8RegisterEE3hasES2_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !10
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal21RegisterConfigurationC2ENS0_12AliasingKindEiiiiiiiiPKiS4_S4_(ptr noundef nonnull align 8 captures(none) dereferenceable(476) initializes((0, 68), (72, 80), (208, 216), (472, 476)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef readonly captures(none) %12) unnamed_addr #2 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %12 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal21RegisterConfigurationE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store i32 %4, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %5, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %6, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i32 %7, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i32 %8, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %9, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  store ptr %10, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 11 uses
  store ptr %11, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %1, ptr %i.t, align 8
  %i.u = icmp sgt i32 %6, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader65

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %6, 8
  br i1 %min.iters.check, label %.lr.ph.preheader180, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep135 = getelementptr i8, ptr %10, i64 %i.v
  %bound0 = icmp ult ptr %i.m, %scevgep135
  %bound1 = icmp ult ptr %10, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader180, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !alias.scope !11
  %wide.load137 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !11
  %i.y = shl nuw <4 x i32> splat (i32 1), %wide.load
  %i.z = shl nuw <4 x i32> splat (i32 1), %wide.load137
  %i.aa = or <4 x i32> %vec.phi, %i.y             ; 2 uses
  %i.ab = or <4 x i32> %vec.phi136, %i.z          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ad, ptr %i.m, align 8, !alias.scope !17, !noalias !11
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader65, label %.lr.ph.preheader180

.lr.ph.preheader180:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph181 = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ad, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader180, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader180 ] ; 2 uses
  %i.ae = phi i32 [ %i.ai, %.lr.ph.prol ], [ %.ph181, %.lr.ph.preheader180 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader180 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.prol
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = or i32 %i.ae, %i.ah                     ; 3 uses
  store i32 %i.ai, ptr %i.m, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader180
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader180 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi i32 [ %.ph181, %.lr.ph.preheader180 ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %.preheader65, label %.lr.ph

.preheader65:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.al = icmp sgt i32 %7, 0                      ; 4 uses
  br i1 %i.al, label %.lr.ph69.preheader, label %._crit_edge

.lr.ph69.preheader:                               ; preds = %.preheader65
  %wide.trip.count96 = zext nneg i32 %7 to i64    ; 6 uses
  %min.iters.check145 = icmp ult i32 %7, 8
  br i1 %min.iters.check145, label %.lr.ph69.preheader176, label %vector.memcheck138

vector.memcheck138:                               ; preds = %.lr.ph69.preheader
  %scevgep139 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.am = shl nuw nsw i64 %wide.trip.count96, 2
  %scevgep140 = getelementptr i8, ptr %11, i64 %i.am
  %bound0141 = icmp ult ptr %i.o, %scevgep140
  %bound1142 = icmp ult ptr %11, %scevgep139
  %found.conflict143 = and i1 %bound0141, %bound1142
  br i1 %found.conflict143, label %.lr.ph69.preheader176, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck138
  %n.vec148 = and i64 %wide.trip.count96, 2147483640 ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %vec.phi151 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.ar, %vector.body149 ]
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.as, %vector.body149 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index150 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load153 = load <4 x i32>, ptr %i.an, align 4, !alias.scope !20
  %wide.load154 = load <4 x i32>, ptr %i.ao, align 4, !alias.scope !20
  %i.ap = shl nuw <4 x i32> splat (i32 1), %wide.load153
  %i.aq = shl nuw <4 x i32> splat (i32 1), %wide.load154
  %i.ar = or <4 x i32> %vec.phi151, %i.ap         ; 2 uses
  %i.as = or <4 x i32> %vec.phi152, %i.aq         ; 2 uses
  %index.next155 = add nuw i64 %index150, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.at, label %middle.block156, label %vector.body149, !llvm.loop !23

middle.block156:                                  ; preds = %vector.body149
  %bin.rdx157 = or <4 x i32> %i.as, %i.ar
  %i.au = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx157) ; 3 uses
  store i32 %i.au, ptr %i.o, align 8, !alias.scope !24, !noalias !20
  %cmp.n158 = icmp eq i64 %n.vec148, %wide.trip.count96
  br i1 %cmp.n158, label %._crit_edge, label %.lr.ph69.preheader176

.lr.ph69.preheader176:                            ; preds = %vector.memcheck138, %.lr.ph69.preheader, %middle.block156
  %indvars.iv93.ph = phi i64 [ 0, %vector.memcheck138 ], [ 0, %.lr.ph69.preheader ], [ %n.vec148, %middle.block156 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck138 ], [ 0, %.lr.ph69.preheader ], [ %i.au, %middle.block156 ] ; 2 uses
  %xtraiter184 = and i64 %wide.trip.count96, 3    ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader176, %.lr.ph69.prol
  %indvars.iv93.prol = phi i64 [ %indvars.iv.next94.prol, %.lr.ph69.prol ], [ %indvars.iv93.ph, %.lr.ph69.preheader176 ] ; 2 uses
  %i.av = phi i32 [ %i.az, %.lr.ph69.prol ], [ %.ph, %.lr.ph69.preheader176 ]
  %prol.iter186 = phi i64 [ %prol.iter186.next, %.lr.ph69.prol ], [ 0, %.lr.ph69.preheader176 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv93.prol
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = or i32 %i.av, %i.ay                     ; 4 uses
  store i32 %i.az, ptr %i.o, align 8
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.prol, 1 ; 2 uses
  %prol.iter186.next = add i64 %prol.iter186, 1   ; 2 uses
  %prol.iter186.cmp.not = icmp eq i64 %prol.iter186.next, %xtraiter184
  br i1 %prol.iter186.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !26

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader176
  %.lcssa177.unr = phi i32 [ poison, %.lr.ph69.preheader176 ], [ %i.az, %.lr.ph69.prol ]
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %.lr.ph69.preheader176 ], [ %indvars.iv.next94.prol, %.lr.ph69.prol ]
  %.unr187 = phi i32 [ %.ph, %.lr.ph69.preheader176 ], [ %i.az, %.lr.ph69.prol ]
  %i.ba = sub nsw i64 %indvars.iv93.ph, %wide.trip.count96
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph69

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bc = phi i32 [ %i.bv, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = or i32 %i.bc, %i.bf                     ; 2 uses
  store i32 %i.bg, ptr %i.m, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = or i32 %i.bg, %i.bk                     ; 2 uses
  store i32 %i.bl, ptr %i.m, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = shl nuw i32 1, %i.bo
end_hunk_0
begin_hunk_1_@_ZN2v88internal21RegisterConfigurationC2ENS0_12AliasingKindEiiiiiiiiPKiS4_S4_:bb.a
  %i.fq = load ptr, ptr %i.s, align 8
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv109.epil
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv109.epil
  store i32 %i.fs, ptr %i.ft, align 4
  %indvars.iv.next110.epil = add nuw nsw i64 %indvars.iv109.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter193
  br i1 %epil.iter.cmp.not, label %._crit_edge85, label %bb.l, !llvm.loop !32

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit.unr-lcssa, %bb.l, %bb.k
  store i32 %i.bw, ptr %i.n, align 4
  %i.fu = icmp sgt i32 %8, 0
  br i1 %i.fu, label %.lr.ph88, label %.loopexit

.lr.ph88:                                         ; preds = %._crit_edge85
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %wide.trip.count117 = zext nneg i32 %8 to i64   ; 7 uses
  %min.iters.check163 = icmp ult i32 %8, 8
  br i1 %min.iters.check163, label %scalar.ph162.preheader, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph88
  %i.fw = add i64 %i.b, 216
  %i.fx = sub i64 %i.fw, %i.a
  %diff.check = icmp ult i64 %i.fx, 32
  br i1 %diff.check, label %scalar.ph162.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck161
  %n.vec166 = and i64 %wide.trip.count117, 2147483640 ; 3 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next171, %vector.body167 ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %index168 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load169 = load <4 x i32>, ptr %i.fy, align 4
  %wide.load170 = load <4 x i32>, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index168 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <4 x i32> %wide.load169, ptr %i.ga, align 8
  store <4 x i32> %wide.load170, ptr %i.gb, align 8
  %index.next171 = add nuw i64 %index168, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next171, %n.vec166
  br i1 %i.gc, label %middle.block172, label %vector.body167, !llvm.loop !33

middle.block172:                                  ; preds = %vector.body167
  %cmp.n173 = icmp eq i64 %n.vec166, %wide.trip.count117
  br i1 %cmp.n173, label %.lr.ph91, label %scalar.ph162.preheader

scalar.ph162.preheader:                           ; preds = %vector.memcheck161, %.lr.ph88, %middle.block172
  %indvars.iv114.ph = phi i64 [ 0, %vector.memcheck161 ], [ 0, %.lr.ph88 ], [ %n.vec166, %middle.block172 ] ; 3 uses
  %xtraiter198 = and i64 %wide.trip.count117, 3   ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %scalar.ph162.prol.loopexit, label %scalar.ph162.prol

scalar.ph162.prol:                                ; preds = %scalar.ph162.preheader, %scalar.ph162.prol
  %indvars.iv114.prol = phi i64 [ %indvars.iv.next115.prol, %scalar.ph162.prol ], [ %indvars.iv114.ph, %scalar.ph162.preheader ] ; 3 uses
  %prol.iter200 = phi i64 [ %prol.iter200.next, %scalar.ph162.prol ], [ 0, %scalar.ph162.preheader ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv114.prol
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv114.prol
  store i32 %i.ge, ptr %i.gf, align 4
  %indvars.iv.next115.prol = add nuw nsw i64 %indvars.iv114.prol, 1 ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %scalar.ph162.prol.loopexit, label %scalar.ph162.prol, !llvm.loop !34

scalar.ph162.prol.loopexit:                       ; preds = %scalar.ph162.prol, %scalar.ph162.preheader
  %indvars.iv114.unr = phi i64 [ %indvars.iv114.ph, %scalar.ph162.preheader ], [ %indvars.iv.next115.prol, %scalar.ph162.prol ]
  %i.gg = sub nsw i64 %indvars.iv114.ph, %wide.trip.count117
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %.lr.ph91, label %scalar.ph162

bb.m:                                             ; preds = %bb.m, %.lr.ph84.new
  %indvars.iv109 = phi i64 [ 0, %.lr.ph84.new ], [ %indvars.iv.next110.3, %bb.m ] ; 6 uses
  %niter197 = phi i64 [ 0, %.lr.ph84.new ], [ %niter197.next.3, %bb.m ]
  %i.gi = load ptr, ptr %i.s, align 8
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv109
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv109
  store i32 %i.gk, ptr %i.gl, align 8
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.gm = load ptr, ptr %i.s, align 8
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv.next110
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next110
  store i32 %i.go, ptr %i.gp, align 4
  %indvars.iv.next110.1 = or disjoint i64 %indvars.iv109, 2 ; 2 uses
  %i.gq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next110.1
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next110.1
  store i32 %i.gs, ptr %i.gt, align 8
  %indvars.iv.next110.2 = or disjoint i64 %indvars.iv109, 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next110.2
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next110.2
  store i32 %i.gv, ptr %i.gw, align 4
  %indvars.iv.next110.3 = add nuw nsw i64 %indvars.iv109, 4 ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %._crit_edge85.loopexit.unr-lcssa, label %bb.m, !llvm.loop !35

.lr.ph91:                                         ; preds = %scalar.ph162.prol.loopexit, %scalar.ph162, %middle.block172
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %xtraiter202 = and i64 %wide.trip.count117, 3   ; 3 uses
  %i.gy = icmp ult i32 %8, 4
  br i1 %i.gy, label %.epil.preheader201, label %.lr.ph91.new

.lr.ph91.new:                                     ; preds = %.lr.ph91
  %unroll_iter209 = and i64 %wide.trip.count117, 2147483644
  br label %bb.n

scalar.ph162:                                     ; preds = %scalar.ph162.prol.loopexit, %scalar.ph162
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.3, %scalar.ph162 ], [ %indvars.iv114.unr, %scalar.ph162.prol.loopexit ] ; 6 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv114
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv114
  store i32 %i.ha, ptr %i.hb, align 4
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next115
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next115
  store i32 %i.hd, ptr %i.he, align 4
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next115.1
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next115.1
  store i32 %i.hg, ptr %i.hh, align 4
  %indvars.iv.next115.2 = add nuw nsw i64 %indvars.iv114, 3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next115.2
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next115.2
  store i32 %i.hj, ptr %i.hk, align 4
  %indvars.iv.next115.3 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %indvars.iv.next115.3, %wide.trip.count117
  br i1 %exitcond118.not.3, label %.lr.ph91, label %scalar.ph162, !llvm.loop !36

bb.n:                                             ; preds = %bb.n, %.lr.ph91.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph91.new ], [ %indvars.iv.next120.3, %bb.n ] ; 5 uses
  %i.hl = phi i32 [ 0, %.lr.ph91.new ], [ %i.ie, %bb.n ]
  %niter210 = phi i64 [ 0, %.lr.ph91.new ], [ %niter210.next.3, %bb.n ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv119
  %i.hn = load i32, ptr %i.hm, align 8
  %i.ho = shl nuw i32 1, %i.hn
  %i.hp = or i32 %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv119
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = shl nuw i32 1, %i.hs
  %i.hu = or i32 %i.hp, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv119
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 8
  %i.hy = shl nuw i32 1, %i.hx
  %i.hz = or i32 %i.hu, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv119
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = shl nuw i32 1, %i.ic
  %i.ie = or i32 %i.hz, %i.id                     ; 3 uses
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %niter210.next.3 = add i64 %niter210, 4         ; 2 uses
  %niter210.ncmp.3 = icmp eq i64 %niter210.next.3, %unroll_iter209
  br i1 %niter210.ncmp.3, label %..loopexit_crit_edge.unr-lcssa, label %bb.n, !llvm.loop !37

..loopexit_crit_edge.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod206.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod206.not, label %..loopexit_crit_edge, label %.epil.preheader201

.epil.preheader201:                               ; preds = %..loopexit_crit_edge.unr-lcssa, %.lr.ph91
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next120.3, %..loopexit_crit_edge.unr-lcssa ]
  %.epil.init205 = phi i32 [ 0, %.lr.ph91 ], [ %i.ie, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod208)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader201
  %indvars.iv119.epil = phi i64 [ %indvars.iv119.epil.init, %.epil.preheader201 ], [ %indvars.iv.next120.epil, %bb.o ] ; 2 uses
  %i.if = phi i32 [ %.epil.init205, %.epil.preheader201 ], [ %i.ij, %bb.o ]
  %epil.iter203 = phi i64 [ 0, %.epil.preheader201 ], [ %epil.iter203.next, %bb.o ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv119.epil
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = shl nuw i32 1, %i.ih
  %i.ij = or i32 %i.if, %i.ii                     ; 2 uses
  %indvars.iv.next120.epil = add nuw nsw i64 %indvars.iv119.epil, 1
  %epil.iter203.next = add i64 %epil.iter203, 1   ; 2 uses
  %epil.iter203.cmp.not = icmp eq i64 %epil.iter203.next, %xtraiter202
  br i1 %epil.iter203.cmp.not, label %..loopexit_crit_edge, label %bb.o, !llvm.loop !38

..loopexit_crit_edge:                             ; preds = %bb.o, %..loopexit_crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.ie, %..loopexit_crit_edge.unr-lcssa ], [ %i.ij, %bb.o ]
  store i32 %.lcssa, ptr %i.p, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %._crit_edge85, %._crit_edge77.thread, %._crit_edge77, %..loopexit_crit_edge, %._crit_edge73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef range(i32 0, -2147483647) i32 @_ZNK2v88internal21RegisterConfiguration10GetAliasesENS0_21MachineRepresentationEiS2_Pi(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(476) %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %4, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i32                        ; 2 uses
  %i.c = zext i8 %3 to i32                        ; 2 uses
  %i.d = icmp ugt i8 %1, %3
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.f = shl i32 %2, %i.e                         ; 2 uses
  %i.g = icmp sgt i32 %i.f, 31
  br i1 %i.g, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.f, ptr %4, align 4
  %i.h = shl nuw i32 1, %i.e
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.i = sub nsw i32 %i.c, %i.b
  %i.j = ashr i32 %2, %i.i
  store i32 %i.j, ptr %4, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b
  %.2 = phi i32 [ 1, %bb.b ], [ 1, %bb.f ], [ %i.h, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal21RegisterConfiguration10AreAliasesENS0_21MachineRepresentationEiS2_i(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(476) %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i8 %1, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = zext i8 %3 to i32                        ; 2 uses
  %i.e = icmp ugt i8 %1, %3
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i32 %i.c, %i.d
  %i.g = ashr i32 %4, %i.f
  %i.h = icmp eq i32 %2, %i.g
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = sub nsw i32 %i.d, %i.c
  %i.j = ashr i32 %2, %i.i
  %i.k = icmp eq i32 %i.j, %4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %i.h, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal21RegisterConfigurationD2Ev(ptr noundef nonnull align 8 dead_on_return(476) dereferenceable(476) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal21RegisterConfigurationD0Ev(ptr noundef nonnull align 8 dead_on_return(476) dereferenceable(476) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #14
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2v84base11LeakyObjectINS_8internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationEEC2IJEEEDpOT_() unnamed_addr #6 align 2 {
bb.a:
  store ptr @_ZN2v88internal12_GLOBAL__N_124kAllocatableGeneralCodesE, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 72), align 8
  store ptr @_ZN2v88internal12_GLOBAL__N_123kAllocatableDoubleCodesE, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 208), align 8
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 472), align 8
  store i32 32767, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 56), align 8
  store <4 x i32> splat (i32 16), ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 8), align 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 216), align 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 80), align 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 344), align 8
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 232), align 8
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 96), align 8
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 360), align 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 248), align 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 112), align 8
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 376), align 8
  store i32 12, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 264), align 8
  store i32 12, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 128), align 8
  store i32 12, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 392), align 8
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 268), align 4
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 132), align 4
  store i32 13, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 396), align 4
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 272), align 8
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 136), align 8
  store i32 14, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 400), align 8
  store i32 32767, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 60), align 4
  store <4 x i32> <i32 16, i32 12, i32 15, i32 15>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 24), align 8
  store <4 x i32> <i32 15, i32 15, i32 56271, i32 32767>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 40), align 8
  store i32 32767, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, i64 64), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationE, i64 16), ptr @_ZZN2v88internal12_GLOBAL__N_131GetDefaultRegisterConfigurationEvE6object, align 8
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_132ArchDefaultRegisterConfigurationD0Ev(ptr noundef nonnull align 8 dereferenceable(476) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 480) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(496) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PKcEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_PKcEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14
  br label %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_PKcEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #14
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD0Ev(ptr noundef nonnull align 8 dereferenceable(496) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_PKcEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_PKcEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #14, !inline_history !39
  br label %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_PKcEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i, label %_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #14, !inline_history !39
  br label %_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD2Ev.exit

_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_PKcSt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 496) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", i32 1, i32 1048575}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !7}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !7, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!18}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !9}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !7, !15, !16}
!24 = !{!25}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !7, !15}
!28 = distinct !{!28, !7, !15}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !7, !15, !16}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7, !15}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !9}
!39 = !{ptr @_ZN2v88internal12_GLOBAL__N_131RestrictedRegisterConfigurationD2Ev}
end_hunk_1
