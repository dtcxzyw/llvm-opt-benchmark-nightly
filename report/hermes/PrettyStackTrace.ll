inline.NumInlined: 42
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN4llvh22PrettyStackTraceStringD0Ev = comdat any

$_ZN4llvh23PrettyStackTraceProgramD0Ev = comdat any

$_ZN4llvh22PrettyStackTraceFormatD2Ev = comdat any

$_ZN4llvh22PrettyStackTraceFormatD0Ev = comdat any

@_ZTVN4llvh21PrettyStackTraceEntryE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4llvh21PrettyStackTraceEntryD2Ev, ptr @_ZN4llvh21PrettyStackTraceEntryD0Ev, ptr @__cxa_pure_virtual] }, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVN4llvh22PrettyStackTraceFormatE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4llvh22PrettyStackTraceFormatD2Ev, ptr @_ZN4llvh22PrettyStackTraceFormatD0Ev, ptr @_ZNK4llvh22PrettyStackTraceFormat5printERNS_11raw_ostreamE] }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Program arguments: \00", align 1
@_ZTVN4llvh22PrettyStackTraceStringE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4llvh21PrettyStackTraceEntryD2Ev, ptr @_ZN4llvh22PrettyStackTraceStringD0Ev, ptr @_ZNK4llvh22PrettyStackTraceString5printERNS_11raw_ostreamE] }, align 8
@_ZTVN4llvh23PrettyStackTraceProgramE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN4llvh21PrettyStackTraceEntryD2Ev, ptr @_ZN4llvh23PrettyStackTraceProgramD0Ev, ptr @_ZNK4llvh23PrettyStackTraceProgram5printERNS_11raw_ostreamE] }, align 8

@_ZN4llvh21PrettyStackTraceEntryD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4llvh21PrettyStackTraceEntryD2Ev
@_ZN4llvh22PrettyStackTraceFormatC1EPKcz = hidden unnamed_addr alias void (ptr, ptr, ...), ptr @_ZN4llvh22PrettyStackTraceFormatC2EPKcz

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4llvh21PrettyStackTraceEntryC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh21PrettyStackTraceEntryE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define hidden void @_ZN4llvh21PrettyStackTraceEntryD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh22PrettyStackTraceString5printERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.l = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.b, i64 noundef %i.c) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.c, 0
  br i1 %.not.i2.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.b ], [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.t = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit5

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i8 10, ptr %i.r, align 1
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.v, ptr %i.q, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit5

_ZN4llvh11raw_ostreamlsEPKc.exit5:                ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh22PrettyStackTraceFormatC2EPKcz(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvh22PrettyStackTraceFormatE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 32, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.e = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %2) #16 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1                  ; 6 uses
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %3 = icmp samesign ugt i32 %i.g, %i.i
  br i1 %3, label %bb.d, label %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.d, align 4, !tbaa !22
  %4 = icmp ugt i32 %i.g, %i.k
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.b, i64 noundef %i.h, i64 noundef 1) #16
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi.i.in = phi i32 [ %.pre.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %.not13.i = icmp eq i32 %i.g, %.pre-phi.i.in
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %.pre-phi.i = zext i32 %.pre-phi.i.in to i64    ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.m = getelementptr i8, ptr %i.l, i64 %.pre-phi.i
  %i.n = sub nsw i64 %i.h, %.pre-phi.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.n, i1 false), !tbaa !23
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.f, %bb.b
  store i32 %i.g, ptr %i.c, align 8, !tbaa !21
  br label %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit

_ZN4llvh15SmallVectorImplIcE6resizeEm.exit:       ; preds = %bb.c, %.sink.split.i
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.p = call i32 @vsnprintf(ptr noundef %i.o, i64 noundef %i.h, ptr noundef %1, ptr noundef nonnull %2) #16 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4llvh15SmallVectorImplIcE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh22PrettyStackTraceFormat5printERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.b, i64 noundef %i.e) #16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull @.str, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.j, align 1
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.i, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh23PrettyStackTraceProgram5printERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 19
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.1, i64 noundef 19) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.d, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 19
  store ptr %i.k, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = zext i32 %i.m to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit12, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !15
  %.not.i = icmp ult ptr %i.p, %i.q
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.r = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %i.c, align 8, !tbaa !18
  store i8 10, ptr %i.p, align 1, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEc.exit12
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvh11raw_ostreamlsEc.exit12 ] ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 4 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit9, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.f
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #15 ; 5 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.v, i64 noundef %i.w) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

bb.h:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i7 = icmp eq i64 %i.w, 0
  br i1 %.not.i2.i7, label %_ZN4llvh11raw_ostreamlsEPKc.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %i.v, i64 %i.w, i1 false)
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store ptr %i.af, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit9

_ZN4llvh11raw_ostreamlsEPKc.exit9:                ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i.i8 = phi ptr [ %i.ad, %bb.g ], [ %1, %bb.i ], [ %1, %bb.h ], [ %1, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !15
  %.not.i10 = icmp ult ptr %i.ah, %i.aj
  br i1 %.not.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9
  %i.ak = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i8, i8 noundef zeroext 32) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit12

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !18
  store i8 32, ptr %i.ah, align 1, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEc.exit12

_ZN4llvh11raw_ostreamlsEc.exit12:                 ; preds = %bb.j, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh22EnablePrettyStackTraceEv() local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_0
