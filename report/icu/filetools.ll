Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/filetools?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>

$_ZN6icu_7810CharStringD2Ev = comdat any

$_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev = comdat any

$__clang_call_terminate = comdat any

@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"filetools.cpp\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to open directory: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Unable to get stats from file: %s or %s\0A\00", align 1

; Function Attrs: mustprogress uwtable
define signext range(i8 0, 2) i8 @isFileModTimeLater(ptr noundef %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %5 = alloca %struct.stat, align 8               ; 5 uses
  %6 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 21 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %2, 1
  br i1 %i.d, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @opendir(ptr noundef nonnull %1) ; 4 uses
  %.not57 = icmp eq ptr %i.e, null
  br i1 %.not57, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = tail call ptr @readdir(ptr noundef nonnull %i.e) ; 2 uses
  %.not5886 = icmp eq ptr %i.f, null
  br i1 %.not5886, label %.thread, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 88
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.u
  %i.m = phi ptr [ %i.f, %sub_0.lr.ph ], [ %i.bb, %bb.u ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 19 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %.not89 = icmp eq i8 %i.o, 46
  br i1 %.not89, label %.tail, label %.tail81.thread

.tail:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.u, label %sub_183

sub_183:                                          ; preds = %.tail
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.t = load i8, ptr %i.s, align 1
  %.not91 = icmp eq i8 %i.t, 46
  br i1 %.not91, label %.tail81, label %.tail81.thread

.tail81:                                          ; preds = %sub_183
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 21
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.u, label %.tail81.thread

.tail81.thread:                                   ; preds = %sub_0, %sub_183, %.tail81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store ptr %i.g, ptr %7, align 8, !tbaa !10
  store i32 40, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.i, align 4, !tbaa !15
  store i32 0, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.g, align 1, !tbaa !18
  %i.x = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull %1, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.d ], [ %lpad.phi, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.tail81.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %7) #10
  br label %common.resume

_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit:  ; preds = %.tail81.thread
  %i.z = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull @.str.2, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %.loopexit  ; 0 uses

bb.e:                                             ; preds = %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull %i.n, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %.loopexit  ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ae = invoke ptr @u_errorName_78(i32 noundef %i.ab)
          to label %bb.p unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZN6icu_7810CharStringC2EPKciR10UErrorCode.exit, %bb.e, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %7, align 8, !tbaa !10
  %i.ag = call noalias ptr @opendir(ptr noundef %i.af) ; 2 uses
  %.not62 = icmp eq ptr %i.ag, null
  br i1 %.not62, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call i32 @closedir(ptr noundef nonnull %i.ag) ; 0 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !10
  %i.aj = invoke signext i8 @isFileModTimeLater(ptr noundef %0, ptr noundef %i.ai, i8 noundef signext 1)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %.not65.not = icmp eq i8 %i.aj, 0
  br i1 %.not65.not, label %.loopexit100, label %spec.select80.si.unfold.false.jt0

bb.l:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.al = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %5) #10
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit.a

bb.m:                                             ; preds = %bb.l
  %i.an = call i32 @stat(ptr noundef %i.ak, ptr noundef nonnull %6) #10
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit.a

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !21
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !21
  %i.ar = call double @difftime(i64 noundef %i.ap, i64 noundef %i.aq) #11
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.o, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread

_ZL23whichFileModTimeIsLaterPKcS0_.exit.a:        ; preds = %bb.m, %bb.l
  %8 = load ptr, ptr @stderr, align 8, !tbaa !19
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %0, ptr noundef %i.ak) #12 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZL23whichFileModTimeIsLaterPKcS0_.exit.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.loopexit100

_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread:   ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %spec.select80.si.unfold.false.jt0

spec.select80.si.unfold.false.jt0:                ; preds = %bb.k, %_ZL23whichFileModTimeIsLaterPKcS0_.exit.thread
  %i.at = load i8, ptr %i.i, align 4, !tbaa !15
  %.not.i.i.i.jt0 = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.jt0, label %_ZN6icu_7810CharStringD2Ev.exit.jt0, label %bb.q

.loopexit100:                                     ; preds = %bb.k, %bb.o
  %i.au = load i8, ptr %i.i, align 4, !tbaa !15
  %.not.i.i.i.jt3 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.jt3, label %_ZN6icu_7810CharStringD2Ev.exit.jt3, label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.av = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 66, ptr noundef %i.ae) #12 ; 0 uses
  %i.aw = load i8, ptr %i.i, align 4, !tbaa !15
  %.not.i.i.i.jt1 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.jt1, label %_ZN6icu_7810CharStringD2Ev.exit.jt1, label %bb.s

bb.q:                                             ; preds = %spec.select80.si.unfold.false.jt0
  %i.ax = load ptr, ptr %7, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.ax)
          to label %_ZN6icu_7810CharStringD2Ev.exit.jt0 unwind label %.loopexit101

bb.r:                                             ; preds = %.loopexit100
  %i.ay = load ptr, ptr %7, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.ay)
          to label %_ZN6icu_7810CharStringD2Ev.exit.jt3 unwind label %.loopexit.split-lp102

bb.s:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %7, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.az)
          to label %_ZN6icu_7810CharStringD2Ev.exit.jt1 unwind label %.loopexit.split-lp102

.loopexit101:                                     ; preds = %bb.q
  %lpad.loopexit103 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

.loopexit.split-lp102:                            ; preds = %bb.s, %bb.r
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp102, %.loopexit101
  %lpad.phi105 = phi { ptr, i32 } [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ]
  %i.ba = extractvalue { ptr, i32 } %lpad.phi105, 0
  call void @__clang_call_terminate(ptr %i.ba) #13
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.jt0:              ; preds = %bb.q, %spec.select80.si.unfold.false.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.u

_ZN6icu_7810CharStringD2Ev.exit.jt3:              ; preds = %bb.r, %.loopexit100
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread

_ZN6icu_7810CharStringD2Ev.exit.jt1:              ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ab

bb.u:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit.jt0, %.tail81, %.tail
  %i.bb = call ptr @readdir(ptr noundef nonnull %i.e) ; 2 uses
  %.not58 = icmp eq ptr %i.bb, null
  br i1 %.not58, label %.thread, label %sub_0, !llvm.loop !25

.thread:                                          ; preds = %bb.u, %_ZN6icu_7810CharStringD2Ev.exit.jt3, %.preheader
  %.5 = phi i8 [ 1, %.preheader ], [ 0, %_ZN6icu_7810CharStringD2Ev.exit.jt3 ], [ 1, %bb.u ]
  %i.bc = call i32 @closedir(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.ab

.critedge:                                        ; preds = %bb.c
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.ab

bb.v:                                             ; preds = %bb.b
  %i.bf = tail call signext i8 @T_FileStream_file_exists(ptr noundef nonnull %1)
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bg = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bi = call i32 @stat(ptr noundef nonnull %1, ptr noundef nonnull %4) #10
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !21
  %i.bo = tail call double @difftime(i64 noundef %i.bl, i64 noundef %i.bn) #11 ; 2 uses
  %i.bp = fcmp olt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZL23whichFileModTimeIsLaterPKcS0_.exit69, label %bb.z

bb.z:                                             ; preds = %bb.y
  %10 = fcmp ogt double %i.bo, 0.000000e+00
  %spec.select.i69 = zext i1 %10 to i32
  br label %_ZL23whichFileModTimeIsLaterPKcS0_.exit69

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.6, ptr noundef nonnull %0, ptr noundef nonnull %1) #12 ; 0 uses
  br label %_ZL23whichFileModTimeIsLaterPKcS0_.exit69

_ZL23whichFileModTimeIsLaterPKcS0_.exit69:        ; preds = %bb.y, %bb.z, %bb.aa
  %.1.i68 = phi i32 [ -1, %bb.aa ], [ %spec.select.i69, %bb.z ], [ 2, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %11 = icmp sgt i32 %.1.i68, -1
  %12 = icmp ne i32 %.1.i68, 2
  %or.cond7.not = and i1 %11, %12
  %spec.select = zext i1 %or.cond7.not to i8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.jt1, %.thread, %_ZL23whichFileModTimeIsLaterPKcS0_.exit69, %bb.v, %.critedge, %bb.a
  %.649 = phi i8 [ 0, %bb.v ], [ 0, %.critedge ], [ 0, %bb.a ], [ %spec.select, %_ZL23whichFileModTimeIsLaterPKcS0_.exit69 ], [ %.5, %.thread ], [ 0, %_ZN6icu_7810CharStringD2Ev.exit.jt1 ]
  ret i8 %.649
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

declare signext i8 @T_FileStream_file_exists(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @swapFileSepChar(ptr nofree noundef captures(none) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 5 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647     ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %i.a, 24
  %n.vec = and i64 %i.a, 2147483616               ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %1, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert14 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat15 = shufflevector <16 x i8> %broadcast.splatinsert14, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !18 ; 2 uses
  %wide.load16 = load <16 x i8>, ptr %i.f, align 1, !tbaa !18 ; 2 uses
  %i.g = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.h = icmp eq <16 x i8> %wide.load16, %broadcast.splat
  %i.i = select <16 x i1> %i.g, <16 x i8> %broadcast.splat15, <16 x i8> %wide.load
  %i.j = select <16 x i1> %i.h, <16 x i8> %broadcast.splat15, <16 x i8> %wide.load16
  store <16 x i8> %i.i, ptr %i.e, align 1, !tbaa !18
  store <16 x i8> %i.j, ptr %i.f, align 1, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.a, 2147483640             ; 3 uses
  %broadcast.splatinsert18 = insertelement <8 x i8> poison, i8 %1, i64 0
  %broadcast.splat19 = shufflevector <8 x i8> %broadcast.splatinsert18, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i8> poison, i8 %2, i64 0
  %broadcast.splat21 = shufflevector <8 x i8> %broadcast.splatinsert20, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index22 ; 2 uses
  %wide.load23 = load <8 x i8>, ptr %i.l, align 1, !tbaa !18 ; 2 uses
  %i.m = icmp eq <8 x i8> %wide.load23, %broadcast.splat19
  %i.n = select <8 x i1> %i.m, <8 x i8> %broadcast.splat21, <8 x i8> %wide.load23
  store <8 x i8> %i.n, ptr %i.l, align 1, !tbaa !18
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.o = icmp eq i64 %index.next24, %n.vec17
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %wide.trip.count, %n.vec17
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec17, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18    ; 2 uses
  %i.r = icmp eq i8 %i.q, %1
  %. = select i1 %i.r, i8 %2, i8 %i.q
  store i8 %., ptr %i.p, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit unwind label %bb.c

_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
