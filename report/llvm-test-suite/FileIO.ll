Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FileIO?download=true
inline.NumInlined: 54
inline.NumDeleted: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase.0 = type { ptr, i32, i32 }
%class.CStringBase = type { ptr, i32, i32 }
%struct.utimbuf = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.LARGE_INTEGER = type { i64 }

$__clang_call_terminate = comdat any

@_ZTVN8NWindows5NFile3NIO9CFileBaseE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8NWindows5NFile3NIO9CFileBaseE, ptr @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev, ptr @_ZN8NWindows5NFile3NIO9CFileBaseD0Ev, ptr @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv] }, align 8
@global_use_lstat = external local_unnamed_addr global i32, align 4
@global_use_utf16_conversion = external local_unnamed_addr global i32, align 4
@_ZTIN8NWindows5NFile3NIO9CFileBaseE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN8NWindows5NFile3NIO9CFileBaseE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN8NWindows5NFile3NIO9CFileBaseE = dso_local constant [32 x i8] c"N8NWindows5NFile3NIO9CFileBaseE\00", align 1

@_ZN8NWindows5NFile3NIO9CFileBaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8NWindows5NFile3NIO9CFileBaseD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(1084) dereferenceable(1084) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr noundef nonnull align 8 dereferenceable(1084) %0)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #17
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8NWindows5NFile3NIO9CFileBaseD0Ev(ptr noundef nonnull align 8 dead_on_return(1084) dereferenceable(1084) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr noundef nonnull align 8 dereferenceable(1084) %0)
          to label %bb.b unwind label %bb.d, !inline_history !14 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN8NWindows5NFile3NIO9CFileBaseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #17, !inline_history !14
  br label %_ZN8NWindows5NFile3NIO9CFileBaseD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #18, !inline_history !14
  unreachable

_ZN8NWindows5NFile3NIO9CFileBaseD2Ev.exit:        ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1088) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4, i32 %5, i1 noundef zeroext %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.CStringBase.0, align 8       ; 8 uses
  %8 = alloca %class.CStringBase, align 8         ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(1084) %0) ; 0 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !15
  %i.f = icmp eq i8 %i.e, 99
  br i1 %i.f, label %bb.b, label %_ZL16nameWindowToUnixPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = icmp eq i8 %i.h, 58
  %spec.select.idx.i = select i1 %i.i, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %1, %bb.a ], [ %spec.select.i, %bb.b ] ; 7 uses
  %i.j = tail call i32 @umask(i32 noundef 0) #19  ; 2 uses
  %i.k = tail call i32 @umask(i32 noundef %i.j) #19 ; 0 uses
  %i.l = and i32 %i.j, 54
  %i.m = xor i32 %i.l, 438                        ; 2 uses
  %i.n = and i32 %2, 1073741824                   ; 2 uses
  %.not.not = icmp eq i32 %i.n, 0
  %.lobit = lshr exact i32 %i.n, 30               ; 4 uses
  %.not42 = icmp sgt i32 %2, -1
  switch i32 %4, label %bb.f [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.c:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.o = or disjoint i32 %.lobit, 192
  br label %bb.f

bb.d:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.p = or disjoint i32 %.lobit, 64
  br label %bb.f

bb.e:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.q = or disjoint i32 %.lobit, 64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZL16nameWindowToUnixPKc.exit
  %.240 = phi i32 [ %.lobit, %_ZL16nameWindowToUnixPKc.exit ], [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 -1, ptr %i.r, align 8, !tbaa !16
  %i.s = load i32, ptr @global_use_lstat, align 4, !tbaa !4
  %.not43 = icmp eq i32 %i.s, 0
  %brmerge = or i1 %6, %.not43
  br i1 %brmerge, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.u = tail call i64 @readlink(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.t, i64 noundef 1024) #19 ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.v, ptr %i.w, align 8, !tbaa !19
  %i.x = icmp sgt i32 %i.v, 0
  br i1 %i.x, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %.not42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -2, ptr %i.r, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 0, ptr %i.y, align 8, !tbaa !20
  %i.z = and i64 %i.u, 2147483647
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i32 @unlink(ptr noundef nonnull %.0.i) #19
  %.not44 = icmp eq i32 %i.ab, 0
  br i1 %.not44, label %bb.ah, label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.j, %bb.k, %bb.i
  %.pr = load i32, ptr %i.r, align 8, !tbaa !16
  %i.ac = icmp eq i32 %.pr, -1
  br i1 %i.ac, label %bb.m, label %.thread94

bb.m:                                             ; preds = %bb.l, %bb.f
  %i.ad = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %.0.i, i32 noundef %.240, i32 noundef %i.m) ; 3 uses
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !16
  %i.ae = icmp eq i32 %i.ad, -1
  %i.af = load i32, ptr @global_use_utf16_conversion, align 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i)
  %i.ah = trunc i64 %strlen.i.i to i32            ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 3 uses
  %i.aj = icmp ne i32 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.al = sext i32 %i.ai to i64
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #20 ; 3 uses
  store ptr %i.am, ptr %8, align 8, !tbaa !10
  store i8 0, ptr %i.am, align 1, !tbaa !15
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !21
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.n, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ap, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.am, %bb.n ] ; 2 uses
  %.0.i.i = phi ptr [ %i.an, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %.0.i, %bb.n ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.ao = load i8, ptr %.0.i.i, align 1, !tbaa !15 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.ao, ptr %.04.i.i, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2EPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !22

_ZN11CStringBaseIcEC2EPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ah, ptr %9, align 8, !tbaa !24
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.aq = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #17
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.as = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %_ZN11CStringBaseIcEC2Ev.exit unwind label %bb.s ; 3 uses

_ZN11CStringBaseIcEC2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit
  store i8 0, ptr %i.as, align 1, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %.critedge

bb.q:                                             ; preds = %_ZN11CStringBaseIcEC2EPKc.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN11CStringBaseIcED2Ev.exit50, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #17
  br label %_ZN11CStringBaseIcED2Ev.exit50

_ZN11CStringBaseIcED2Ev.exit50:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZN11CStringBaseIwED2Ev.exit55

bb.s:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.t:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit54

.lr.ph:                                           ; preds = %_ZN11CStringBaseIcEC2Ev.exit, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %_ZN11CStringBaseIcEC2Ev.exit ] ; 16 uses
  %.sroa.16.076 = phi i32 [ %.sroa.16.1, %bb.y ], [ 4, %_ZN11CStringBaseIcEC2Ev.exit ] ; 9 uses
  %.sroa.0.074 = phi ptr [ %.sroa.0.1, %bb.y ], [ %i.as, %_ZN11CStringBaseIcEC2Ev.exit ] ; 13 uses
  %.sroa.0.07499 = ptrtoaddr ptr %.sroa.0.074 to i64
  %i.bb = load ptr, ptr %7, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 255
  br i1 %i.be, label %_ZN11CStringBaseIcED2Ev.exit53, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.bf = trunc i32 %i.bd to i8
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  %i.bh = xor i32 %i.bg, -1
  %i.bi = add i32 %.sroa.16.076, %i.bh            ; 3 uses
  %.not.i.i51 = icmp slt i32 %i.bi, 1
  br i1 %.not.i.i51, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bj = icmp sgt i32 %.sroa.16.076, 64
  %i.bk = lshr i32 %.sroa.16.076, 1
  %i.bl = icmp sgt i32 %.sroa.16.076, 8
  %..i.i = select i1 %i.bl, i32 16, i32 4
  %.0.i.i52 = select i1 %i.bj, i32 %i.bk, i32 %..i.i ; 2 uses
  %i.bm = add nsw i32 %.0.i.i52, %i.bi
  %i.bn = icmp slt i32 %i.bm, 1
  %i.bo = sub nsw i32 1, %i.bi
  %.1.i.i = select i1 %i.bn, i32 %i.bo, i32 %.0.i.i52
  %i.bp = add i32 %.sroa.16.076, 1
  %i.bq = add i32 %i.bp, %.1.i.i                  ; 3 uses
  %i.br = icmp eq i32 %i.bq, %.sroa.16.076
  br i1 %i.br, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = sext i32 %i.bq to i64
  %i.bt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #20
          to label %.noexc unwind label %bb.t     ; 10 uses

.noexc:                                           ; preds = %bb.w
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = icmp sgt i32 %.sroa.16.076, 0
  br i1 %i.bv, label %.preheader.i.i.i, label %bb.x

.preheader.i.i.i:                                 ; preds = %.noexc
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge.thread.i.i.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i.i.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 4
  %i.bw = sub i64 %.sroa.0.07499, %i.bu
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond136 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond136, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check100 = icmp samesign ult i64 %indvars.iv, 32
  br i1 %min.iters.check100, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %indvars.iv, 28
  %n.vec = and i64 %indvars.iv, 9223372036854775776 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <16 x i8>, ptr %i.by, align 1, !tbaa !15
  %wide.load101 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <16 x i8> %wide.load, ptr %i.ca, align 1, !tbaa !15
  store <16 x i8> %wide.load101, ptr %i.cb, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %indvars.iv, 9223372036854775804 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index103
  store <4 x i8> %wide.load104, ptr %i.ce, align 1, !tbaa !15
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next105, %n.vec102
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %indvars.iv, %n.vec102
  br i1 %cmp.n106, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %indvars.iv.i.i.i.prol
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i.i.i.prol
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !36

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.cj = sub nsw i64 %indvars.iv.i.i.i.ph, %indvars.iv
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %indvars.iv.i.i.i
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i.i.i
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !15
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %indvars.iv.next.i.i.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %indvars.iv.next.i.i.i.1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.074, i64 %indvars.iv.next.i.i.i.2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %indvars.iv
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !38

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.074) #17
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i, %.noexc
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  store i8 0, ptr %i.cx, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %.sroa.0.1 = phi ptr [ %.sroa.0.074, %bb.v ], [ %i.bt, %bb.x ], [ %.sroa.0.074, %bb.u ] ; 4 uses
  %.sroa.16.1 = phi i32 [ %.sroa.16.076, %bb.v ], [ %i.bq, %bb.x ], [ %.sroa.16.076, %bb.u ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %indvars.iv
  store i8 %i.bf, ptr %i.cy, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %indvars.iv.next
  store i8 0, ptr %i.cz, align 1, !tbaa !15
  %i.da = load i32, ptr %i.at, align 8, !tbaa !25
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %.lr.ph, label %.critedge, !llvm.loop !39

.critedge:                                        ; preds = %bb.y, %_ZN11CStringBaseIcEC2Ev.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.as, %_ZN11CStringBaseIcEC2Ev.exit ], [ %.sroa.0.1, %bb.y ] ; 3 uses
  %i.dd = invoke i32 (ptr, i32, ...) @open64(ptr noundef nonnull %.sroa.0.0.lcssa, i32 noundef %.240, i32 noundef %i.m)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.critedge
  store i32 %i.dd, ptr %i.r, align 8, !tbaa !16
  br label %_ZN11CStringBaseIcED2Ev.exit53

bb.aa:                                            ; preds = %.critedge
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit54

_ZN11CStringBaseIcED2Ev.exit53:                   ; preds = %.lr.ph, %bb.z
  %.sroa.0.073 = phi ptr [ %.sroa.0.0.lcssa, %bb.z ], [ %.sroa.0.074, %.lr.ph ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.073) #17
  %i.df = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit53
  call void @_ZdaPv(ptr noundef nonnull %i.df) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit53, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pr69 = load i32, ptr %i.r, align 8, !tbaa !16
  br label %bb.ae

_ZN11CStringBaseIcED2Ev.exit54:                   ; preds = %bb.aa, %bb.t
  %.sroa.0.072 = phi ptr [ %.sroa.0.0.lcssa, %bb.aa ], [ %.sroa.0.074, %bb.t ]
  %.pn = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.ba, %bb.t ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.072) #17
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit54, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIcED2Ev.exit54 ], [ %i.az, %bb.s ] ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN11CStringBaseIwED2Ev.exit55, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #17
  br label %_ZN11CStringBaseIwED2Ev.exit55

_ZN11CStringBaseIwED2Ev.exit55:                   ; preds = %bb.ad, %bb.ac, %_ZN11CStringBaseIcED2Ev.exit50
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %_ZN11CStringBaseIcED2Ev.exit50 ], [ %.pn.pn, %bb.ac ], [ %.pn.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn.pn.pn

bb.ae:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.m
  %i.dj = phi i32 [ %.pr69, %_ZN11CStringBaseIwED2Ev.exit ], [ %i.ad, %bb.m ]
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %bb.ah, label %.thread94

.thread94:                                        ; preds = %bb.l, %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !24
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !10
  store i8 0, ptr %i.dn, align 1, !tbaa !15
  %strlen.i.i56 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i)
  %i.do = trunc i64 %strlen.i.i56 to i32          ; 2 uses
  %i.dp = add nsw i32 %i.do, 1                    ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21 ; 2 uses
  %i.ds = icmp eq i32 %i.dp, %i.dr
  br i1 %i.ds, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.af

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %.thread94
  %.pre5.i = load ptr, ptr %i.dl, align 8, !tbaa !10
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57.preheader

bb.af:                                            ; preds = %.thread94
  %i.dt = sext i32 %i.dp to i64
  %i.du = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #20 ; 11 uses
  %i.dv = ptrtoaddr ptr %i.du to i64
  %i.dw = icmp sgt i32 %i.dr, 0
  %.pre4.i = load i32, ptr %i.dm, align 8, !tbaa !24 ; 6 uses
  br i1 %i.dw, label %.preheader.i.i, label %bb.ag

.preheader.i.i:                                   ; preds = %bb.af
  %i.dx = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i61 = load ptr, ptr %i.dl, align 8, !tbaa !10 ; 10 uses
  br i1 %i.dx, label %iter.check123, label %._crit_edge.i.i

iter.check123:                                    ; preds = %.preheader.i.i
  %.pre.i.i61108 = ptrtoaddr ptr %.pre.i.i61 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 8 uses
  %min.iters.check110 = icmp ult i32 %.pre4.i, 4
  %i.dy = sub i64 %.pre.i.i61108, %i.dv
  %diff.check109 = icmp ugt i64 %i.dy, -32
  %or.cond137 = select i1 %min.iters.check110, i1 true, i1 %diff.check109
  br i1 %or.cond137, label %vec.epilog.scalar.ph124.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %iter.check123
  %min.iters.check112 = icmp ult i32 %.pre4.i, 32
  br i1 %min.iters.check112, label %vec.epilog.ph127, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %i.dz = and i64 %wide.trip.count.i.i, 28
  %n.vec114 = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next119, %vector.body115 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %index116 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load117 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !15
  %wide.load118 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 %index116 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %wide.load117, ptr %i.ec, align 1, !tbaa !15
  store <16 x i8> %wide.load118, ptr %i.ed, align 1, !tbaa !15
  %index.next119 = add nuw i64 %index116, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.ee, label %middle.block120, label %vector.body115, !llvm.loop !40

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %n.vec114, %wide.trip.count.i.i
  br i1 %cmp.n121, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check125

vec.epilog.iter.check125:                         ; preds = %middle.block120
  %min.epilog.iters.check126 = icmp eq i64 %i.dz, 0
  br i1 %min.epilog.iters.check126, label %vec.epilog.scalar.ph124.preheader, label %vec.epilog.ph127, !prof !34

vec.epilog.ph127:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check125
  %vec.epilog.resume.val122 = phi i64 [ %n.vec114, %vec.epilog.iter.check125 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec128 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph127
  %index130 = phi i64 [ %vec.epilog.resume.val122, %vec.epilog.ph127 ], [ %index.next132, %vec.epilog.vector.body129 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %index130
  %wide.load131 = load <4 x i8>, ptr %i.ef, align 1, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %index130
  store <4 x i8> %wide.load131, ptr %i.eg, align 1, !tbaa !15
  %index.next132 = add nuw i64 %index130, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.eh, label %vec.epilog.middle.block133, label %vec.epilog.vector.body129, !llvm.loop !41

vec.epilog.middle.block133:                       ; preds = %vec.epilog.vector.body129
  %cmp.n134 = icmp eq i64 %n.vec128, %wide.trip.count.i.i
  br i1 %cmp.n134, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph124.preheader

vec.epilog.scalar.ph124.preheader:                ; preds = %iter.check123, %vec.epilog.iter.check125, %vec.epilog.middle.block133
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check123 ], [ %n.vec114, %vec.epilog.iter.check125 ], [ %n.vec128, %vec.epilog.middle.block133 ] ; 3 uses
  %xtraiter140 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %vec.epilog.scalar.ph124.prol.loopexit, label %vec.epilog.scalar.ph124.prol

vec.epilog.scalar.ph124.prol:                     ; preds = %vec.epilog.scalar.ph124.preheader, %vec.epilog.scalar.ph124.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph124.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph124.preheader ] ; 3 uses
  %prol.iter142 = phi i64 [ %prol.iter142.next, %vec.epilog.scalar.ph124.prol ], [ 0, %vec.epilog.scalar.ph124.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %indvars.iv.i.i.prol
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.i.i.prol
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !15
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter142.next = add i64 %prol.iter142, 1   ; 2 uses
  %prol.iter142.cmp.not = icmp eq i64 %prol.iter142.next, %xtraiter140
  br i1 %prol.iter142.cmp.not, label %vec.epilog.scalar.ph124.prol.loopexit, label %vec.epilog.scalar.ph124.prol, !llvm.loop !42

vec.epilog.scalar.ph124.prol.loopexit:            ; preds = %vec.epilog.scalar.ph124.prol, %vec.epilog.scalar.ph124.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph124.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph124.prol ]
  %i.el = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph124

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.en = icmp eq ptr %.pre.i.i61, null
  br i1 %i.en, label %bb.ag, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph124:                          ; preds = %vec.epilog.scalar.ph124.prol.loopexit, %vec.epilog.scalar.ph124
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph124 ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph124.prol.loopexit ] ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %indvars.iv.i.i
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.i.i
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %indvars.iv.next.i.i
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.next.i.i
  store i8 %i.es, ptr %i.et, align 1, !tbaa !15
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %indvars.iv.next.i.i.1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.next.i.i.1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !15
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i.i61, i64 %indvars.iv.next.i.i.2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.next.i.i.2
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !15
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph124, !llvm.loop !43

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph124.prol.loopexit, %vec.epilog.scalar.ph124, %middle.block120, %vec.epilog.middle.block133, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i61) #17
  %.pre.i = load i32, ptr %i.dm, align 8, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.af
  %i.fa = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.af ]
  store ptr %i.du, ptr %i.dl, align 8, !tbaa !10
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.du, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !15
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !21
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57.preheader

_ZN11CStringBaseIcE11SetCapacityEi.exit.i57.preheader: ; preds = %bb.ag, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %.04.i.i58.ph = phi ptr [ %i.du, %bb.ag ], [ %.pre5.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ]
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57

_ZN11CStringBaseIcE11SetCapacityEi.exit.i57:      ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57.preheader, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57
  %.04.i.i58 = phi ptr [ %i.ff, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57 ], [ %.04.i.i58.ph, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57.preheader ] ; 2 uses
  %.0.i.i59 = phi ptr [ %i.fd, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57 ], [ %.0.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i59, i64 1
  %i.fe = load i8, ptr %.0.i.i59, align 1, !tbaa !15 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.04.i.i58, i64 1
  store i8 %i.fe, ptr %.04.i.i58, align 1, !tbaa !15
  %.not.i.i60 = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i60, label %_ZN11CStringBaseIcEaSEPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57, !llvm.loop !22

_ZN11CStringBaseIcEaSEPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i57
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.k, %_ZN11CStringBaseIcEaSEPKc.exit
  %.041 = phi i1 [ false, %bb.k ], [ true, %_ZN11CStringBaseIcEaSEPKc.exit ], [ false, %bb.ae ]
  ret i1 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

declare void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind writable sret(%class.CStringBase.0) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKwjjjjb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4, i32 %5, i1 noundef zeroext %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.CStringBase, align 8         ; 7 uses
  %8 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(1084) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.e = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.i = zext nneg i32 %i.f to i64
  %i.j = icmp slt i32 %i.e, -1
  %i.k = shl nuw nsw i64 %i.i, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 3 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !28
  store i32 0, ptr %i.m, align 4, !tbaa !29
  store i32 %i.f, ptr %i.h, align 4, !tbaa !44
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.m, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.o = load i32, ptr %.0.i.i, align 4, !tbaa !29 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.o, ptr %.04.i.i, align 4, !tbaa !29
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !45

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.e, ptr %9, align 8, !tbaa !25
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.q = load ptr, ptr %7, align 8, !tbaa !10
  %i.r = invoke noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase6CreateEPKcjjjjb(ptr noundef nonnull align 8 dereferenceable(1084) %0, ptr noundef %i.q, i32 noundef %2, i32 poison, i32 noundef %4, i32 poison, i1 noundef zeroext %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %7, align 8, !tbaa !10     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.s) #17
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.c, %bb.d
  %i.u = load ptr, ptr %8, align 8, !tbaa !28     ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.u) #17
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret i1 %i.r

bb.f:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit10

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !10     ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN11CStringBaseIcED2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.y) #17
  br label %_ZN11CStringBaseIcED2Ev.exit10

_ZN11CStringBaseIcED2Ev.exit10:                   ; preds = %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.g ], [ %i.x, %bb.h ]
  %i.aa = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN11CStringBaseIwED2Ev.exit11, label %bb.i

bb.i:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit10
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #17
  br label %_ZN11CStringBaseIwED2Ev.exit11

_ZN11CStringBaseIwED2Ev.exit11:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit10, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn
}

declare void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind writable sret(%class.CStringBase) align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile3NIO9CFileBase5CloseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1084) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.utimbuf, align 8            ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.g, label %bb.c [
    i32 -1, label %bb.n
    i32 -2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.f, align 8, !tbaa !16
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 @close(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.f, align 8, !tbaa !16
  %i.j = icmp ne i64 %i.b, -1
  %i.k = icmp ne i64 %i.d, -1
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = call i32 @stat64(ptr noundef %i.m, ptr noundef nonnull %2) #19
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i64 %i.b, -1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  store i64 %i.r, ptr %1, align 8, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = icmp eq i64 %i.d, -1
  br i1 %i.s, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  br label %.sink.split

bb.j:                                             ; preds = %bb.e
  %i.v = tail call i64 @time(ptr noundef null) #19 ; 2 uses
  %i.w = icmp eq i64 %i.b, -1
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.v, ptr %1, align 8, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = icmp eq i64 %i.d, -1
  br i1 %i.x, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.i
  %.sink = phi i64 [ %i.u, %bb.i ], [ %i.v, %bb.l ]
  store i64 %.sink, ptr %i.e, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l, %bb.h
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.z = call i32 @utime(ptr noundef %i.y, ptr noundef nonnull %1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m, %bb.c, %bb.a, %bb.b
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.m ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret i1 %.1
}

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK8NWindows5NFile3NIO9CFileBase9GetLengthERy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1084) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  switch i32 %i.b, label %bb.d [
    i32 -1, label %bb.b
    i32 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #21
  store i32 9, ptr %i.c, align 4, !tbaa !4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %1, align 8, !tbaa !55
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i64 @lseek64(i32 noundef %i.b, i64 noundef 0, i32 noundef 1) #19 ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 8, !tbaa !16
end_hunk_0
