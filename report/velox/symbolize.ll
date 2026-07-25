inline.NumInlined: 60
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.Elf64_Phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }

$__clang_call_terminate = comdat any

@_ZN6googleL20g_symbolize_callbackE = internal unnamed_addr global ptr null, align 8
@_ZN6googleL37g_symbolize_open_object_file_callbackE = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [66 x i8] c"/opt-bench/work/velox/velox/build/_deps/glog-src/src/symbolize.cc\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Section name '%s' is too long (%zu); section will not be found (even if present).\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"+0x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/proc/self/maps\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"/proc/self/mem\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6google24InstallSymbolizeCallbackEPFiiPvPcmmE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @_ZN6googleL20g_symbolize_callbackE, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6google38InstallSymbolizeOpenObjectFileCallbackEPFimRmS0_PcmE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @_ZN6googleL37g_symbolize_open_object_file_callbackE, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google22GetSectionHeaderByNameEiPKcmP10Elf64_Shdr(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.Elf64_Ehdr, align 8         ; 7 uses
  %5 = alloca %struct.Elf64_Shdr, align 8         ; 4 uses
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = icmp sgt i32 %0, -1
  br i1 %i.b, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #20
  unreachable

.critedge.i.i:                                    ; preds = %bb.a, %.critedge27.i.i
  %.021.i.i = phi i64 [ %i.l, %.critedge27.i.i ], [ 0, %bb.a ] ; 6 uses
  %i.c = icmp ult i64 %.021.i.i, 64
  br i1 %i.c, label %.preheader.i.i, label %.critedge.thread33.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 %.021.i.i
  %i.e = sub nuw nsw i64 64, %.021.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.preheader.i.i
  %i.f = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef %.021.i.i) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %.critedge27.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #21
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.c, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit.thread, !llvm.loop !9

.critedge27.i.i:                                  ; preds = %bb.c
  %i.k = icmp eq i64 %i.f, 0
  %i.l = add nuw i64 %i.f, %.021.i.i              ; 2 uses
  br i1 %i.k, label %.critedge.thread33.i.i, label %.critedge.i.i

.critedge.thread33.i.i:                           ; preds = %.critedge27.i.i, %.critedge.i.i
  %.223.i.i = phi i64 [ %.021.i.i, %.critedge.i.i ], [ %i.l, %.critedge27.i.i ] ; 2 uses
  %.not26.i.i = icmp ugt i64 %.223.i.i, 64
  br i1 %.not26.i.i, label %bb.e, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit

bb.e:                                             ; preds = %.critedge.thread33.i.i
  tail call void @abort() #20
  unreachable

_ZN6googleL19ReadFromOffsetExactEiPvmm.exit:      ; preds = %.critedge.thread33.i.i
  %i.m = icmp eq i64 %.223.i.i, 64
  br i1 %i.m, label %bb.f, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit.thread

bb.f:                                             ; preds = %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.q = load i16, ptr %i.p, align 2, !tbaa !15
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 62
  %i.t = load i16, ptr %i.s, align 2, !tbaa !16
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.r
  %i.w = add i64 %i.v, %i.o
  br label %.critedge.i.i32

.critedge.i.i32:                                  ; preds = %bb.f, %.critedge27.i.i39
  %.021.i.i33 = phi i64 [ %i.ah, %.critedge27.i.i39 ], [ 0, %bb.f ] ; 6 uses
  %i.x = icmp ult i64 %.021.i.i33, 64
  br i1 %i.x, label %.preheader.i.i38, label %.critedge.thread33.i.i34

.preheader.i.i38:                                 ; preds = %.critedge.i.i32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %.021.i.i33
  %i.z = sub nuw nsw i64 64, %.021.i.i33
  %i.aa = add i64 %i.w, %.021.i.i33
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i.i38
  %i.ab = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef %i.aa) ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %.critedge27.i.i39

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call ptr @__errno_location() #21
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.g, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread, !llvm.loop !9

.critedge27.i.i39:                                ; preds = %bb.g
  %i.ag = icmp eq i64 %i.ab, 0
  %i.ah = add nuw i64 %i.ab, %.021.i.i33          ; 2 uses
  br i1 %i.ag, label %.critedge.thread33.i.i34, label %.critedge.i.i32

.critedge.thread33.i.i34:                         ; preds = %.critedge27.i.i39, %.critedge.i.i32
  %.223.i.i35 = phi i64 [ %.021.i.i33, %.critedge.i.i32 ], [ %i.ah, %.critedge27.i.i39 ] ; 2 uses
  %.not26.i.i36 = icmp ugt i64 %.223.i.i35, 64
  br i1 %.not26.i.i36, label %bb.i, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40

bb.i:                                             ; preds = %.critedge.thread33.i.i34
  tail call void @abort() #20
  unreachable

_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40:    ; preds = %.critedge.thread33.i.i34
  %i.ai = icmp eq i64 %.223.i.i35, 64
  br i1 %i.ai, label %.preheader, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread

.preheader:                                       ; preds = %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !17 ; 2 uses
  %i.al = zext i16 %i.ak to i64
  %.not3170.not = icmp eq i16 %i.ak, 0
  br i1 %.not3170.not, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.am = icmp ugt i64 %2, 64
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = load i64, ptr %i.an, align 8
  br i1 %i.am, label %.critedge.i.i41.us, label %.lr.ph.split

.critedge.i.i41.us:                               ; preds = %.lr.ph, %.critedge27.i.i48.us
  %.021.i.i42.us = phi i64 [ %i.aw, %.critedge27.i.i48.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.ap = icmp ult i64 %.021.i.i42.us, 64
  br i1 %i.ap, label %.preheader.i.i47.us, label %.critedge.thread33.i.i43.us

.preheader.i.i47.us:                              ; preds = %.critedge.i.i41.us
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.021.i.i42.us
  %i.ar = sub nuw nsw i64 64, %.021.i.i42.us
  %i.as = add i64 %i.o, %.021.i.i42.us
  br label %bb.j

bb.j:                                             ; preds = %6, %.preheader.i.i47.us
  %i.at = tail call i64 @pread(i32 noundef %0, ptr noundef %i.aq, i64 noundef %i.ar, i64 noundef %i.as) ; 3 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %6, label %.critedge27.i.i48.us

.critedge27.i.i48.us:                             ; preds = %bb.j
  %i.av = icmp eq i64 %i.at, 0
  %i.aw = add nuw i64 %i.at, %.021.i.i42.us       ; 2 uses
  br i1 %i.av, label %.critedge.thread33.i.i43.us, label %.critedge.i.i41.us

.critedge.thread33.i.i43.us:                      ; preds = %.critedge27.i.i48.us, %.critedge.i.i41.us
  %.223.i.i44.us = phi i64 [ %.021.i.i42.us, %.critedge.i.i41.us ], [ %i.aw, %.critedge27.i.i48.us ] ; 2 uses
  %.not26.i.i45.us = icmp ugt i64 %.223.i.i44.us, 64
  br i1 %.not26.i.i45.us, label %.split.us, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49.us

_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49.us: ; preds = %.critedge.thread33.i.i43.us
  %i.ax = icmp eq i64 %.223.i.i44.us, 64
  br i1 %i.ax, label %.split73.us, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread

.split73.us:                                      ; preds = %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  tail call void (i32, ptr, i32, ptr, ...) @_ZN6google8RawLog__EiPKciS1_z(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1, ptr noundef %1, i64 noundef %2)
  br label %.thread57

6:                                                ; preds = %bb.j
  %7 = tail call ptr @__errno_location() #21
  %8 = load i32, ptr %7, align 4, !tbaa !3
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %bb.j, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread, !llvm.loop !9

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.02771 = phi i64 [ %i.cb, %bb.r ], [ 0, %.lr.ph ] ; 2 uses
  %i.ay = mul nuw nsw i64 %.02771, %i.r
  %i.az = add i64 %i.ay, %i.o
  br label %.critedge.i.i41

.critedge.i.i41:                                  ; preds = %.lr.ph.split, %.critedge27.i.i48
  %.021.i.i42 = phi i64 [ %i.bk, %.critedge27.i.i48 ], [ 0, %.lr.ph.split ] ; 6 uses
  %i.ba = icmp ult i64 %.021.i.i42, 64
  br i1 %i.ba, label %.preheader.i.i47, label %.critedge.thread33.i.i43

.preheader.i.i47:                                 ; preds = %.critedge.i.i41
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %.021.i.i42
  %i.bc = sub nuw nsw i64 64, %.021.i.i42
  %i.bd = add i64 %i.az, %.021.i.i42
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i.i47
  %i.be = tail call i64 @pread(i32 noundef %0, ptr noundef %i.bb, i64 noundef %i.bc, i64 noundef %i.bd) ; 3 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.l, label %.critedge27.i.i48

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call ptr @__errno_location() #21
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %bb.k, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread, !llvm.loop !9

.critedge27.i.i48:                                ; preds = %bb.k
  %i.bj = icmp eq i64 %i.be, 0
  %i.bk = add nuw i64 %i.be, %.021.i.i42          ; 2 uses
  br i1 %i.bj, label %.critedge.thread33.i.i43, label %.critedge.i.i41

.critedge.thread33.i.i43:                         ; preds = %.critedge27.i.i48, %.critedge.i.i41
  %.223.i.i44 = phi i64 [ %.021.i.i42, %.critedge.i.i41 ], [ %i.bk, %.critedge27.i.i48 ] ; 2 uses
  %.not26.i.i45 = icmp ugt i64 %.223.i.i44, 64
  br i1 %.not26.i.i45, label %.split.us, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49

.split.us:                                        ; preds = %.critedge.thread33.i.i43, %.critedge.thread33.i.i43.us
  tail call void @abort() #20
  unreachable

_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49:    ; preds = %.critedge.thread33.i.i43
  %i.bl = icmp eq i64 %.223.i.i44, 64
  br i1 %i.bl, label %bb.m, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread

bb.m:                                             ; preds = %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bm = load i32, ptr %3, align 8, !tbaa !18
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add i64 %i.ao, %i.bn
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %.critedge27.i
  %.021.i = phi i64 [ %i.bz, %.critedge27.i ], [ 0, %bb.m ] ; 6 uses
  %i.bp = icmp ult i64 %.021.i, %2
  br i1 %i.bp, label %.preheader.i, label %.critedge.thread33.i

.preheader.i:                                     ; preds = %.critedge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.021.i
  %i.br = sub nuw nsw i64 %2, %.021.i
  %i.bs = add i64 %i.bo, %.021.i
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.i
  %i.bt = call i64 @pread(i32 noundef %0, ptr noundef nonnull %i.bq, i64 noundef %i.br, i64 noundef %i.bs) ; 3 uses
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %.critedge27.i

bb.o:                                             ; preds = %bb.n
  %i.bv = tail call ptr @__errno_location() #21
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = icmp eq i32 %i.bw, 4
  br i1 %i.bx, label %bb.n, label %.thread57, !llvm.loop !9

.critedge27.i:                                    ; preds = %bb.n
  %i.by = icmp eq i64 %i.bt, 0
  %i.bz = add nuw i64 %i.bt, %.021.i              ; 2 uses
  br i1 %i.by, label %.critedge.thread33.i, label %.critedge.i

.critedge.thread33.i:                             ; preds = %.critedge27.i, %.critedge.i
  %.223.i = phi i64 [ %.021.i, %.critedge.i ], [ %i.bz, %.critedge27.i ] ; 2 uses
  %.not26.i = icmp ugt i64 %.223.i, %2
  br i1 %.not26.i, label %bb.p, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit

bb.p:                                             ; preds = %.critedge.thread33.i
  tail call void @abort() #20
  unreachable

_ZN6googleL14ReadFromOffsetEiPvmm.exit:           ; preds = %.critedge.thread33.i
  %.not = icmp eq i64 %.223.i, %2
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  %bcmp = call i32 @bcmp(ptr nonnull %i.a, ptr %1, i64 %2)
  %i.ca = icmp eq i32 %bcmp, 0
  br i1 %i.ca, label %.thread57, label %bb.r

.thread57:                                        ; preds = %bb.q, %bb.o, %.split73.us
  %.2.ph = phi i1 [ false, %bb.o ], [ false, %.split73.us ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread

bb.r:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cb = add nuw nsw i64 %.02771, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.al
  br i1 %exitcond.not, label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread, label %.lr.ph.split, !llvm.loop !20

_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread: ; preds = %bb.h, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49, %bb.r, %bb.l, %6, %.preheader, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49.us, %.thread57, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40
  %.5 = phi i1 [ false, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40 ], [ false, %bb.l ], [ %.2.ph, %.thread57 ], [ false, %.preheader ], [ false, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49 ], [ false, %6 ], [ false, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit49.us ], [ false, %bb.r ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit.thread

_ZN6googleL19ReadFromOffsetExactEiPvmm.exit.thread: ; preds = %bb.d, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread
  %.6 = phi i1 [ %.5, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit40.thread ], [ false, %_ZN6googleL19ReadFromOffsetExactEiPvmm.exit ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN6google8RawLog__EiPKciS1_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google9SymbolizeEPvPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN6googleL20SymbolizeAndDemangleEPvPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL20SymbolizeAndDemangleEPvPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.Elf64_Ehdr, align 8         ; 6 uses
  %4 = alloca %struct.Elf64_Shdr, align 8         ; 9 uses
  %5 = alloca %struct.Elf64_Shdr, align 8         ; 7 uses
  %6 = alloca %struct.Elf64_Ehdr, align 8         ; 6 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 0, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_ZN6google12_GLOBAL__N_114FileDescriptorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !22
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 3 uses
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %_ZN6googleL16SafeAppendStringEPKcPcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #20
  unreachable

_ZN6googleL16SafeAppendStringEPKcPcm.exit:        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = sub nuw i64 %2, %i.e
  %i.i = tail call ptr @strncpy(ptr noundef nonnull %i.g, ptr noundef nonnull dereferenceable(2) @.str.2, i64 noundef %i.h) #19 ; 0 uses
  %i.j = getelementptr i8, ptr %1, i64 %2
  %i.k = getelementptr i8, ptr %i.j, i64 -1       ; 4 uses
  store i8 0, ptr %i.k, align 1, !tbaa !22
  %i.l = load ptr, ptr @_ZN6googleL37g_symbolize_open_object_file_callbackE, align 8, !tbaa !7 ; 2 uses
  %.not = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.n = add i64 %2, -1                           ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6googleL16SafeAppendStringEPKcPcm.exit
  %i.o = call noundef i32 %i.l(i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.m, i64 noundef %i.n)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6googleL16SafeAppendStringEPKcPcm.exit
  %i.p = call fastcc noundef i32 @_ZN6googleL44OpenObjectFileContainingPcAndGetStartAddressEmRmS0_Pcm(i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.m, i64 noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.060 = phi i32 [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 12 uses
  %i.q = icmp slt i32 %.060, 0
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !22
  %.not68 = icmp eq i8 %i.s, 0
  br i1 %.not68, label %_ZN6google12_GLOBAL__N_114FileDescriptorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.k, align 1, !tbaa !22
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 3 uses
  %i.u = icmp ult i64 %i.t, %2
  br i1 %i.u, label %_ZN6googleL16SafeAppendStringEPKcPcm.exit75, label %bb.i

end_hunk_0
begin_hunk_1_@_ZN6googleL22GetSectionHeaderByTypeEitmjP10Elf64_Shdr:bb.a
  %i.ah = add nuw i64 %i.ab, %.021.i              ; 2 uses
  br i1 %i.ag, label %.critedge.thread33.i, label %.critedge.i

.critedge.thread33.i:                             ; preds = %.critedge27.i, %.critedge.i
  %.223.i = phi i64 [ %.021.i, %.critedge.i ], [ %i.ah, %.critedge27.i ] ; 5 uses
  %.not26.i = icmp ugt i64 %.223.i, %i.u
  br i1 %.not26.i, label %bb.e, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit

bb.e:                                             ; preds = %.critedge.thread33.i
  tail call void @abort() #20
  unreachable

_ZN6googleL14ReadFromOffsetEiPvmm.exit:           ; preds = %.critedge.thread33.i
  %i.ai = and i64 %.223.i, 63
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.preheader, label %bb.f

bb.f:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  tail call void @abort() #20
  unreachable

.preheader:                                       ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit
  %i.ak = lshr exact i64 %.223.i, 6               ; 4 uses
  %.not.not54.not = icmp eq i64 %.223.i, 0
  br i1 %.not.not54.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %.223.i, 1024
  br i1 %min.iters.check, label %.lr.ph.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ak, 288230376151711736      ; 3 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !38
  %i.am = load i32, ptr %i.d, align 4, !tbaa !38
  %i.an = load i32, ptr %i.e, align 4, !tbaa !38
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !38
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !38
  %i.aq = load i32, ptr %i.h, align 4, !tbaa !38
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !38
  %i.as = load i32, ptr %i.j, align 4, !tbaa !38
  %i.at = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %i.au = insertelement <8 x i32> %i.at, i32 %i.am, i64 1
  %i.av = insertelement <8 x i32> %i.au, i32 %i.an, i64 2
  %i.aw = insertelement <8 x i32> %i.av, i32 %i.ao, i64 3
  %i.ax = insertelement <8 x i32> %i.aw, i32 %i.ap, i64 4
  %i.ay = insertelement <8 x i32> %i.ax, i32 %i.aq, i64 5
  %i.az = insertelement <8 x i32> %i.ay, i32 %i.ar, i64 6
  %i.ba = insertelement <8 x i32> %i.az, i32 %i.as, i64 7
  %.fr = freeze <8 x i32> %i.ba
  %i.bb = icmp eq <8 x i32> %.fr, %broadcast.splat ; 2 uses
  %i.bc = bitcast <8 x i1> %i.bb to i8
  %.not = icmp eq i8 %i.bc, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.bd = icmp eq i64 %n.vec, 8
  br i1 %i.bd, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.interim
  %i.be = load i32, ptr %i.k, align 4, !tbaa !38
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !38
  %i.bg = load i32, ptr %i.m, align 4, !tbaa !38
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !38
  %i.bi = load i32, ptr %i.o, align 4, !tbaa !38
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !38
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !38
  %i.bl = load i32, ptr %i.r, align 4, !tbaa !38
  %i.bm = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %i.bn = insertelement <8 x i32> %i.bm, i32 %i.bf, i64 1
  %i.bo = insertelement <8 x i32> %i.bn, i32 %i.bg, i64 2
  %i.bp = insertelement <8 x i32> %i.bo, i32 %i.bh, i64 3
  %i.bq = insertelement <8 x i32> %i.bp, i32 %i.bi, i64 4
  %i.br = insertelement <8 x i32> %i.bq, i32 %i.bj, i64 5
  %i.bs = insertelement <8 x i32> %i.br, i32 %i.bk, i64 6
  %i.bt = insertelement <8 x i32> %i.bs, i32 %i.bl, i64 7
  %.fr.1 = freeze <8 x i32> %i.bt
  %i.bu = icmp eq <8 x i32> %.fr.1, %broadcast.splat ; 2 uses
  %i.bv = bitcast <8 x i1> %i.bu to i8
  %.not.1 = icmp eq i8 %i.bv, 0
  br i1 %.not.1, label %middle.block, label %vector.early.exit.split.loop.exit

middle.block:                                     ; preds = %vector.body.1, %vector.body.interim
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader76

.lr.ph.preheader76:                               ; preds = %.lr.ph.preheader, %middle.block
  %.055.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

vector.early.exit.split.loop.exit:                ; preds = %vector.body.1
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 512
  br label %vector.early.exit

vector.early.exit:                                ; preds = %vector.ph, %vector.early.exit.split.loop.exit
  %.lcssa95 = phi ptr [ %i.bw, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa93 = phi ptr [ %i.bx, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa91 = phi ptr [ %i.by, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa89 = phi ptr [ %i.bz, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa87 = phi ptr [ %i.ca, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa85 = phi ptr [ %i.cb, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa83 = phi ptr [ %i.cc, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa81 = phi ptr [ %i.cd, %vector.early.exit.split.loop.exit ], [ %5, %vector.ph ]
  %.lcssa79 = phi <8 x i1> [ %i.bu, %vector.early.exit.split.loop.exit ], [ %i.bb, %vector.ph ]
  %i.ce = insertelement <4 x ptr> poison, ptr %.lcssa87, i64 0
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %.lcssa85, i64 1
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %.lcssa83, i64 2
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %.lcssa81, i64 3
  %i.ci = getelementptr inbounds nuw i8, <4 x ptr> %i.ch, <4 x i64> <i64 256, i64 320, i64 384, i64 448>
  %i.cj = insertelement <2 x ptr> poison, ptr %.lcssa91, i64 0
  %i.ck = insertelement <2 x ptr> %i.cj, ptr %.lcssa89, i64 1
  %i.cl = getelementptr inbounds nuw i8, <2 x ptr> %i.ck, <2 x i64> <i64 128, i64 192>
  %i.cm = getelementptr inbounds nuw i8, ptr %.lcssa93, i64 64
  %i.cn = insertelement <8 x ptr> poison, ptr %.lcssa95, i64 0
  %i.co = insertelement <8 x ptr> %i.cn, ptr %i.cm, i64 1
  %i.cp = shufflevector <2 x ptr> %i.cl, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <8 x ptr> %i.co, <8 x ptr> %i.cp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <8 x ptr> %i.cq, <8 x ptr> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %first.active.lane = call i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1> %.lcssa79, i1 false)
  %i.ct = extractelement <8 x ptr> %i.cs, i64 %first.active.lane
  br label %.thread48

bb.g:                                             ; preds = %.lr.ph
  %i.cu = add nuw nsw i64 %.055, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader76, %bb.g
  %.055 = phi i64 [ %i.cu, %bb.g ], [ %.055.ph, %.lr.ph.preheader76 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %.055 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !38
  %i.cy = icmp eq i32 %i.cx, %3
  br i1 %i.cy, label %.thread48, label %bb.g

.thread48:                                        ; preds = %.lr.ph, %vector.early.exit
  %.lcssa74 = phi ptr [ %i.ct, %vector.early.exit ], [ %i.cv, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %.lcssa74, i64 64, i1 false), !tbaa.struct !42
  br label %.thread44

._crit_edge:                                      ; preds = %bb.g, %middle.block, %.preheader
  %i.cz = add nuw nsw i64 %i.ak, %.02957          ; 2 uses
  %.not38 = icmp samesign ult i64 %i.cz, %i.a
  br i1 %.not38, label %.critedge.i.preheader, label %.thread44

.thread44:                                        ; preds = %._crit_edge, %bb.d, %bb.a, %.thread48
  %.3 = phi i1 [ true, %.thread48 ], [ false, %bb.a ], [ false, %bb.d ], [ false, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.3
}

; Function Attrs: mustprogress nofree noinline uwtable
define internal fastcc noundef zeroext i1 @_ZN6googleL10FindSymbolEmiPcmmPK10Elf64_ShdrS3_(i64 noundef %0, i32 noundef %1, ptr nofree noundef %2, i64 noundef %3, i64 noundef %4, i64 %.24.val, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #13 {
bb.a:
  %6 = alloca [32 x %struct.Elf64_Sym], align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = udiv i64 %i.b, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = icmp sgt i32 %1, -1
  %.not.i71 = icmp slt i64 %3, 0
  %.not68.us62.not = icmp ugt i64 %i.d, %i.b      ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  br i1 %.not68.us62.not, label %.split22.us, label %.critedge.i.preheader.us

.critedge.i.preheader.us:                         ; preds = %.split.us.preheader, %.loopexit.us
  %i.h = phi i64 [ %i.az, %.loopexit.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %.051.us63 = phi i32 [ %i.ay, %.loopexit.us ], [ 0, %.split.us.preheader ]
  %i.i = load i64, ptr %i.f, align 8, !tbaa !45
  %i.j = load i64, ptr %i.c, align 8, !tbaa !44
  %i.k = mul i64 %i.j, %i.h
  %i.l = add i64 %i.k, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.m = sub nuw i64 %i.e, %i.h
  %.sroa.speculated.us = tail call i64 @llvm.umin.i64(i64 %i.m, i64 32) ; 2 uses
  %i.n = mul nuw nsw i64 %.sroa.speculated.us, 24 ; 3 uses
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.preheader.us, %.critedge27.i.us
  %.021.i.us = phi i64 [ %i.v, %.critedge27.i.us ], [ 0, %.critedge.i.preheader.us ] ; 6 uses
  %i.o = icmp ult i64 %.021.i.us, %i.n
  br i1 %i.o, label %.preheader.i.us, label %.critedge.thread33.i.us

.preheader.i.us:                                  ; preds = %.critedge.i.us
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %.021.i.us
  %i.q = sub nuw nsw i64 %i.n, %.021.i.us
  %i.r = add i64 %i.l, %.021.i.us
  br label %bb.b

bb.b:                                             ; preds = %14, %.preheader.i.us
  %i.s = call i64 @pread(i32 noundef %1, ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef %i.r) ; 3 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %14, label %.critedge27.i.us

.critedge27.i.us:                                 ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 0
  %i.v = add nuw i64 %i.s, %.021.i.us             ; 2 uses
  br i1 %i.u, label %.critedge.thread33.i.us, label %.critedge.i.us

.critedge.thread33.i.us:                          ; preds = %.critedge27.i.us, %.critedge.i.us
  %.223.i.us = phi i64 [ %.021.i.us, %.critedge.i.us ], [ %i.v, %.critedge27.i.us ] ; 4 uses
  %.not26.i.us = icmp ugt i64 %.223.i.us, %i.n
  br i1 %.not26.i.us, label %.split24.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit.us:        ; preds = %.critedge.thread33.i.us
  %i.w = urem i64 %.223.i.us, 24
  %i.x = udiv i64 %.223.i.us, 24                  ; 2 uses
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %bb.c, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread

bb.c:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us
  %.not.us = icmp samesign ugt i64 %i.x, %.sroa.speculated.us
  br i1 %.not.us, label %.split26.us, label %.preheader.us

.lr.ph.us:                                        ; preds = %.preheader.us, %11
  %i.z = phi i64 [ %13, %11 ], [ 0, %.preheader.us ]
  %.05819.us = phi i32 [ %12, %11 ], [ 0, %.preheader.us ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %.not64.us = icmp eq i64 %i.ac, 0
  br i1 %.not64.us, label %11, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us
  %i.ad = add i64 %i.ac, %4                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !49
  %.not65.us = icmp ne i16 %i.ai, 0
  %.not66.us = icmp ule i64 %i.ad, %0
  %or.cond.not10.us = and i1 %.not66.us, %.not65.us
  %i.aj = icmp ult i64 %0, %i.ag
  %or.cond69.us = select i1 %or.cond.not10.us, i1 %i.aj, i1 false
  br i1 %or.cond69.us, label %bb.e, label %11

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !50
  %i.al = zext i32 %i.ak to i64
  %i.am = add i64 %.24.val, %i.al
  br i1 %.not.i71, label %.split28.us, label %.critedge.i72.us

.critedge.i72.us:                                 ; preds = %bb.e, %.critedge27.i79.us
  %.021.i73.us = phi i64 [ %i.au, %.critedge27.i79.us ], [ 0, %bb.e ] ; 6 uses
  %i.an = icmp ult i64 %.021.i73.us, %3
  br i1 %i.an, label %.preheader.i78.us, label %.critedge.thread33.i74.us

.preheader.i78.us:                                ; preds = %.critedge.i72.us
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.021.i73.us
  %i.ap = sub nuw nsw i64 %3, %.021.i73.us
  %i.aq = add i64 %i.am, %.021.i73.us
  br label %bb.f

bb.f:                                             ; preds = %7, %.preheader.i78.us
  %i.ar = tail call i64 @pread(i32 noundef %1, ptr noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq) ; 3 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %7, label %.critedge27.i79.us

.critedge27.i79.us:                               ; preds = %bb.f
  %i.at = icmp eq i64 %i.ar, 0
  %i.au = add nuw i64 %i.ar, %.021.i73.us         ; 2 uses
  br i1 %i.at, label %.critedge.thread33.i74.us, label %.critedge.i72.us

.critedge.thread33.i74.us:                        ; preds = %.critedge27.i79.us, %.critedge.i72.us
  %.223.i75.us = phi i64 [ %.021.i73.us, %.critedge.i72.us ], [ %i.au, %.critedge27.i79.us ] ; 2 uses
  %.not26.i76.us = icmp ugt i64 %.223.i75.us, %3
  br i1 %.not26.i76.us, label %.split30.us, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us:      ; preds = %.critedge.thread33.i74.us
  %i.av = icmp slt i64 %.223.i75.us, 1
  br i1 %i.av, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %bb.g

bb.g:                                             ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  %i.aw = tail call noundef ptr @memchr(ptr noundef %2, i32 noundef 0, i64 noundef %3) #22
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, label %.loopexit.us.thread

7:                                                ; preds = %bb.f
  %8 = tail call ptr @__errno_location() #21
  %9 = load i32, ptr %8, align 4, !tbaa !3
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %bb.f, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us, !llvm.loop !9

_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us: ; preds = %7, %bb.g, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.us
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %3, i1 false)
  br label %.loopexit.us.thread

.loopexit.us.thread:                              ; preds = %bb.g, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us
  %.4.us.ph = phi i1 [ false, %_ZN6googleL14ReadFromOffsetEiPvmm.exit80.thread.us ], [ true, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.split22.us

.loopexit.us:                                     ; preds = %11, %.preheader.us
  %i.ay = add i32 %.051.us63, %i.ba               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %.not68.us = icmp ugt i64 %i.e, %i.az
  br i1 %.not68.us, label %.critedge.i.preheader.us, label %.split22.us, !llvm.loop !51

11:                                               ; preds = %bb.d, %.lr.ph.us
  %12 = add nuw i32 %.05819.us, 1                 ; 3 uses
  %13 = zext i32 %12 to i64
  %.not67.not.us = icmp ult i32 %12, %i.ba
  br i1 %.not67.not.us, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !52

14:                                               ; preds = %bb.b
  %15 = tail call ptr @__errno_location() #21
  %16 = load i32, ptr %15, align 4, !tbaa !3
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %bb.b, label %_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread, !llvm.loop !9

.preheader.us:                                    ; preds = %bb.c
  %.not67.not18.us = icmp ugt i64 %.223.i.us, 23
  %i.ba = trunc nuw nsw i64 %i.x to i32           ; 2 uses
  br i1 %.not67.not18.us, label %.lr.ph.us, label %.loopexit.us

.split:                                           ; preds = %bb.a
  br i1 %.not68.us62.not, label %.split22.us, label %bb.h

bb.h:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  tail call void @abort() #20
  unreachable

.split24.us:                                      ; preds = %.critedge.thread33.i.us
  tail call void @abort() #20
  unreachable

_ZN6googleL14ReadFromOffsetEiPvmm.exit.thread:    ; preds = %_ZN6googleL14ReadFromOffsetEiPvmm.exit.us, %14
  tail call void @abort() #20
  unreachable

.split26.us:                                      ; preds = %bb.c
  tail call void @abort() #20
  unreachable

.split28.us:                                      ; preds = %bb.e
  tail call void @abort() #20
  unreachable

.split30.us:                                      ; preds = %.critedge.thread33.i74.us
  tail call void @abort() #20
  unreachable

.split22.us:                                      ; preds = %.loopexit.us, %.split.us.preheader, %.loopexit.us.thread, %.split
  %.us-phi = phi i1 [ false, %.split ], [ %.4.us.ph, %.loopexit.us.thread ], [ false, %.split.us.preheader ], [ false, %.loopexit.us ]
  ret i1 %.us-phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN6google8DemangleEPKcPcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v8i1(<8 x i1>, i1 immarg) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !14, i64 40}
!12 = !{!"_ZTS10Elf64_Ehdr", !5, i64 0, !13, i64 16, !13, i64 18, !4, i64 20, !14, i64 24, !14, i64 32, !14, i64 40, !4, i64 48, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !13, i64 60, !13, i64 62}
!13 = !{!"short", !5, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!12, !13, i64 58}
!16 = !{!12, !13, i64 62}
!17 = !{!12, !13, i64 60}
!18 = !{!19, !4, i64 0}
!19 = !{!"_ZTS10Elf64_Shdr", !4, i64 0, !4, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !4, i64 40, !4, i64 44, !14, i64 48, !14, i64 56}
!20 = distinct !{!20, !10}
!21 = !{!14, !14, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!19, !4, i64 40}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = !{!12, !13, i64 16}
!29 = !{!12, !13, i64 56}
!30 = !{!12, !14, i64 32}
!31 = !{!32, !14, i64 16}
!32 = !{!"_ZTS10Elf64_Phdr", !4, i64 0, !4, i64 4, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = !{!19, !4, i64 4}
!39 = distinct !{!39, !10, !40, !41}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 8, !21, i64 16, i64 8, !21, i64 24, i64 8, !21, i64 32, i64 8, !21, i64 40, i64 4, !3, i64 44, i64 4, !3, i64 48, i64 8, !21, i64 56, i64 8, !21}
!43 = !{!19, !14, i64 32}
!44 = !{!19, !14, i64 56}
!45 = !{!19, !14, i64 24}
!46 = !{!47, !14, i64 8}
!47 = !{!"_ZTS9Elf64_Sym", !4, i64 0, !5, i64 4, !5, i64 5, !13, i64 6, !14, i64 8, !14, i64 16}
!48 = !{!47, !14, i64 16}
!49 = !{!47, !13, i64 6}
!50 = !{!47, !4, i64 0}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
end_hunk_1
