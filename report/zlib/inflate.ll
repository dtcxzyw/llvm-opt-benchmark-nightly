Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown header flags set\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"header crc mismatch\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"invalid code -- missing end-of-block\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"incorrect length check\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateResetKeep(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 18 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.r, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.t = load i32, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not25 = icmp eq i32 %i.t, 0
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.v, ptr %i.w, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 16180, ptr %i.l, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 -1, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 32768, ptr %i.aa, align 4, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 0, ptr %i.ac, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 0, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1368 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 7144
  store i32 1, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 7148
  store i32 -1, ptr %i.aj, align 4, !tbaa !38
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateReset(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateResetKeep.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateResetKeep.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateResetKeep.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 21 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateResetKeep.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateResetKeep.exit

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateResetKeep.exit, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i32 0, ptr %i.o, align 4, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i32 0, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store i32 0, ptr %i.q, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.w = load i32, ptr %i.v, align 8, !tbaa !25   ; 2 uses
  %.not25.i = icmp eq i32 %i.w, 0
  br i1 %.not25.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = and i32 %i.w, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.y, ptr %i.z, align 8, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 16180, ptr %i.l, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 -1, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 32768, ptr %i.ad, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr null, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 0, ptr %i.af, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 0, ptr %i.ag, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1368 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 7144
  store i32 1, ptr %i.al, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 7148
  store i32 -1, ptr %i.am, align 4, !tbaa !38
  br label %inflateResetKeep.exit

inflateResetKeep.exit:                            ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.h, %inflateStateCheck.exit
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %inflateStateCheck.exit ], [ 0, %bb.h ], [ -2, %bb.a ], [ -2, %bb.e ], [ -2, %bb.c ], [ -2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @inflateReset2(ptr nofree noundef captures(address) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateReset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateReset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateReset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateReset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateReset.exit

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateReset.exit, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = icmp slt i32 %1, 0
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = icmp samesign ult i32 %1, -15
  br i1 %i.p, label %inflateReset.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sub nsw i32 0, %1
  br label %select.unfold

bb.i:                                             ; preds = %bb.f
  %i.r = lshr i32 %1, 4
  %i.s = add nuw nsw i32 %i.r, 5
  %i.t = icmp samesign ult i32 %1, 48
  %i.u = and i32 %1, 15
  %spec.select = select i1 %i.t, i32 %i.u, i32 %1
  br label %select.unfold

select.unfold:                                    ; preds = %bb.i, %bb.h
  %.024 = phi i32 [ %i.q, %bb.h ], [ %spec.select, %bb.i ] ; 4 uses
  %.0 = phi i32 [ 0, %bb.h ], [ %i.s, %bb.i ]     ; 2 uses
  switch i32 %.024, label %inflateReset.exit [
    i32 15, label %bb.j
    i32 14, label %bb.j
    i32 13, label %bb.j
    i32 12, label %bb.j
    i32 11, label %bb.j
    i32 10, label %bb.j
    i32 9, label %bb.j
    i32 8, label %bb.j
    i32 0, label %bb.j
  ]

bb.j:                                             ; preds = %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold, %select.unfold
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 2 uses
  %.not29 = icmp eq ptr %i.w, null
  br i1 %.not29, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43
  %.not30 = icmp eq i32 %i.y, %.024
  br i1 %.not30, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.0, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %.024, ptr %i.aa, align 8, !tbaa !43
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  tail call void %i.f(ptr noundef %i.ac, ptr noundef nonnull %i.w) #9
  store ptr null, ptr %i.v, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ad = icmp eq ptr %.pre, null
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.0, ptr %i.ae, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %.024, ptr %i.af, align 8, !tbaa !43
  br i1 %i.ad, label %inflateReset.exit, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %inflateReset.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !16  ; 21 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %inflateReset.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.ak, %0
  br i1 %.not.i.i, label %inflateStateCheck.exit.i, label %inflateReset.exit

inflateStateCheck.exit.i:                         ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !21
  %i.an = add i32 %i.am, -16212
  %or.cond.i.i = icmp ult i32 %i.an, -32
  br i1 %or.cond.i.i, label %inflateReset.exit, label %bb.p

bb.p:                                             ; preds = %inflateStateCheck.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  store i32 0, ptr %i.ao, align 4, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  store i32 0, ptr %i.ap, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  store i32 0, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.at, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.au, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !25 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not25.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = and i32 %i.aw, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 16180, ptr %i.al, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 0, ptr %i.bb, align 4, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 -1, ptr %i.bc, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 32768, ptr %i.bd, align 4, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  store i64 0, ptr %i.bf, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store i32 0, ptr %i.bg, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 1368 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 7144
  store i32 1, ptr %i.bl, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 7148
  store i32 -1, ptr %i.bm, align 4, !tbaa !38
  br label %inflateReset.exit

inflateReset.exit:                                ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.r, %inflateStateCheck.exit.i, %bb.o, %bb.n, %bb.m, %bb.l, %select.unfold, %bb.g, %inflateStateCheck.exit
  %.025 = phi i32 [ -2, %bb.m ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.g ], [ -2, %select.unfold ], [ -2, %bb.l ], [ -2, %inflateStateCheck.exit.i ], [ 0, %bb.r ], [ -2, %bb.n ], [ -2, %bb.o ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define range(i32 -6, 1) i32 @inflateInit2_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !45
  %i.c = icmp ne i8 %i.b, 49
  %i.d = icmp ne i32 %3, 112
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @zcalloc, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ @zcalloc, %bb.e ], [ %i.h, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @zcfree, ptr %i.l, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = tail call ptr %i.k(ptr noundef %i.p, i32 noundef 1, i32 noundef 7160) #9 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %i.s, i8 0, i64 7152, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !16
  store ptr %0, ptr %i.q, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 16180, ptr %i.u, align 8, !tbaa !21
  %i.v = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !44
  tail call void %i.w(ptr noundef %i.x, ptr noundef nonnull %i.q) #9
  store ptr null, ptr %i.t, align 8, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -4, %bb.h ], [ -6, %bb.a ], [ -2, %bb.c ], [ -6, %bb.b ], [ %i.v, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare hidden void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %inflateInit2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !45
  %i.c = icmp ne i8 %i.b, 49
  %i.d = icmp ne i32 %2, 112
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %inflateInit2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %inflateInit2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @zcalloc, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ @zcalloc, %bb.e ], [ %i.h, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @zcfree, ptr %i.l, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = tail call ptr %i.k(ptr noundef %i.p, i32 noundef 1, i32 noundef 7160) #9, !inline_history !58 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %inflateInit2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %i.s, i8 0, i64 7152, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !16
  store ptr %0, ptr %i.q, align 8, !tbaa !20
  store i32 16180, ptr %i.s, align 8, !tbaa !21
  %i.u = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef 15) ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %inflateInit2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !44
  tail call void %i.v(ptr noundef %i.w, ptr noundef nonnull %i.q) #9, !inline_history !58
  store ptr null, ptr %i.t, align 8, !tbaa !16
  br label %inflateInit2_.exit

inflateInit2_.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ -4, %bb.h ], [ -6, %bb.a ], [ -2, %bb.c ], [ -6, %bb.b ], [ %i.u, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflatePrime(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i32 %1, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 0, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 0, ptr %i.r, align 8, !tbaa !33
  br label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i32 %1, 16
  br i1 %i.s, label %inflateStateCheck.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = add i32 %i.u, %1                         ; 2 uses
  %i.w = icmp ugt i32 %i.v, 32
  br i1 %i.w, label %inflateStateCheck.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %notmask = shl nsw i64 -1, %i.x
  %i.y = trunc nsw i64 %notmask to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %2, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = zext nneg i32 %i.u to i64
  %i.ad = shl i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !32
  store i32 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.i, %bb.j, %bb.f, %inflateStateCheck.exit, %bb.k, %bb.h
  %.0 = phi i32 [ 0, %bb.k ], [ -2, %inflateStateCheck.exit ], [ 0, %bb.h ], [ 0, %bb.f ], [ -2, %bb.j ], [ -2, %bb.i ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 38 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.l, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 59 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = add i32 %i.n, -16212
  %or.cond.i = icmp ult i32 %i.o, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %.not1173 = icmp eq i32 %i.v, 0
  br i1 %.not1173, label %bb.i, label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = icmp eq i32 %i.n, 16191
  br i1 %i.w, label %bb.j, label %.split2339

bb.j:                                             ; preds = %bb.i
  store i32 16192, ptr %i.m, align 8, !tbaa !21
  br label %.split2339

.split2339:                                       ; preds = %bb.i, %bb.j
  %i.x = phi i32 [ %i.n, %bb.i ], [ 16192, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !48 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 5 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 17 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 26 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 20 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 92 ; 23 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 132 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 140 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 1368 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 792 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 664
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 124 ; 3 uses
  %i.bb = icmp eq i32 %1, 6                       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 7148 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 100 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 7152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 7144
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.bm = add i32 %1, -5
  %or.cond3 = icmp ult i32 %i.bm, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 14 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.split2339
  %i.bs = phi i32 [ %i.x, %.split2339 ], [ %.pre, %.thread ]
  %.01056 = phi ptr [ %i.s, %.split2339 ], [ %.631119, %.thread ] ; 68 uses
  %.01053 = phi ptr [ %i.q, %.split2339 ], [ %.21055, %.thread ] ; 46 uses
  %.0992 = phi i32 [ %i.ab, %.split2339 ], [ %.63, %.thread ] ; 62 uses
  %.0990 = phi i32 [ %i.z, %.split2339 ], [ %.1991, %.thread ] ; 80 uses
  %.0929 = phi i64 [ %i.ad, %.split2339 ], [ %.59988, %.thread ] ; 48 uses
  %.0918 = phi i32 [ %i.af, %.split2339 ], [ %.59, %.thread ] ; 59 uses
  %.0912 = phi i32 [ %i.z, %.split2339 ], [ %.4916, %.thread ] ; 74 uses
  %.0 = phi i32 [ 0, %.split2339 ], [ %.8, %.thread ] ; 49 uses
  %.010533956 = ptrtoaddr ptr %.01053 to i64
  switch i32 %i.bs, label %inflateStateCheck.exit.thread [
    i32 16180, label %bb.l
    i32 16181, label %.preheader1296
    i32 16182, label %bb.ao
    i32 16183, label %bb.ax
    i32 16184, label %bb.be
    i32 16185, label %bb.bo
    i32 16186, label %bb.ca
    i32 16187, label %bb.cn
    i32 16188, label %bb.da
    i32 16189, label %.preheader1300
    i32 16190, label %bb.dm
    i32 16191, label %bb.dp
    i32 16192, label %bb.dq
    i32 16193, label %bb.dy
    i32 16194, label %bb.ef
    i32 16195, label %bb.eg
    i32 16196, label %.preheader1314
    i32 16197, label %.split
    i32 16198, label %._crit_edge2858
    i32 16199, label %bb.fj
    i32 16200, label %bb.fk
    i32 16201, label %._crit_edge2861
    i32 16202, label %bb.fz
    i32 16203, label %._crit_edge2866
    i32 16204, label %bb.gh
    i32 16205, label %bb.gs
    i32 16206, label %bb.gu
    i32 16207, label %._crit_edge2854
    i32 16208, label %.loopexit1277.loopexit4006
    i32 16209, label %.loopexit1277
    i32 16210, label %inflateStateCheck.exit.thread.loopexit
  ]

._crit_edge2866:                                  ; preds = %bb.k
  %.pre2867 = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %bb.gf

._crit_edge2861:                                  ; preds = %bb.k
  %.pre2862 = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %bb.fx

._crit_edge2858:                                  ; preds = %bb.k
  %.promoted1997.pre = load i32, ptr %i.ar, align 4, !tbaa !80
  br label %bb.er

._crit_edge2854:                                  ; preds = %bb.k
  %.pre2855 = load i32, ptr %i.ag, align 8, !tbaa !25
  br label %bb.hh

.preheader1314:                                   ; preds = %bb.k
  %i.bt = icmp ult i32 %.0918, 14
  br i1 %i.bt, label %.lr.ph1772.preheader, label %._crit_edge1773

.lr.ph1772.preheader:                             ; preds = %.preheader1314
  %i.bu = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.bv = icmp eq i32 %.0992, 0
  br i1 %i.bv, label %.loopexit1277.loopexit2359, label %bb.ek

.preheader1300:                                   ; preds = %bb.k
  %i.bw = icmp ult i32 %.0918, 32
  br i1 %i.bw, label %.lr.ph2116.preheader, label %._crit_edge2117

.lr.ph2116.preheader:                             ; preds = %.preheader1300
  %i.bx = zext nneg i32 %.0918 to i64             ; 5 uses
  %i.by = icmp eq i32 %.0992, 0
  br i1 %i.by, label %.loopexit1277.loopexit2350, label %bb.di

.preheader1296:                                   ; preds = %bb.k
  %i.bz = icmp ult i32 %.0918, 16
  br i1 %i.bz, label %.lr.ph2284.preheader, label %._crit_edge2285

.lr.ph2284.preheader:                             ; preds = %.preheader1296
  %i.ca = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.cb = icmp eq i32 %.0992, 0
  br i1 %i.cb, label %.loopexit1277.loopexit2349, label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %.preheader1286

.preheader1286:                                   ; preds = %bb.l
  %i.ce = icmp ult i32 %.0918, 16
  br i1 %i.ce, label %.lr.ph2333.preheader, label %._crit_edge2334

.lr.ph2333.preheader:                             ; preds = %.preheader1286
  %i.cf = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.cg = icmp eq i32 %.0992, 0
  br i1 %i.cg, label %.loopexit1277.loopexit2344, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 16192, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.n:                                             ; preds = %.lr.ph2333.preheader
  %i.ch = add i32 %.0992, -1                      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.cj = load i8, ptr %.01056, align 1, !tbaa !45
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, %i.cf
  %i.cm = add i64 %i.cl, %.0929                   ; 3 uses
  %indvars.iv.next2851 = add nuw nsw i64 %i.cf, 8 ; 3 uses
  %i.cn = icmp ult i32 %.0918, 8
  br i1 %i.cn, label %.lr.ph2333.1, label %._crit_edge2334.loopexit

.lr.ph2333.1:                                     ; preds = %bb.n
  %i.co = icmp eq i32 %i.ch, 0
  br i1 %i.co, label %.loopexit1277.loopexit2344, label %bb.o

bb.o:                                             ; preds = %.lr.ph2333.1
  %i.cp = add i32 %.0992, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.cr = load i8, ptr %i.ci, align 1, !tbaa !45
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, %indvars.iv.next2851
  %i.cu = add i64 %i.ct, %i.cm
  %indvars.iv.next2851.1 = or disjoint i64 %i.cf, 16
  br label %._crit_edge2334.loopexit

._crit_edge2334.loopexit:                         ; preds = %bb.o, %bb.n
  %.lcssa4209 = phi i32 [ %i.ch, %bb.n ], [ %i.cp, %bb.o ]
  %.lcssa4208 = phi ptr [ %i.ci, %bb.n ], [ %i.cq, %bb.o ]
  %.lcssa4207 = phi i64 [ %i.cm, %bb.n ], [ %i.cu, %bb.o ]
  %indvars.iv.next2851.lcssa = phi i64 [ %indvars.iv.next2851, %bb.n ], [ %indvars.iv.next2851.1, %bb.o ]
  %i.cv = trunc nuw nsw i64 %indvars.iv.next2851.lcssa to i32
  br label %._crit_edge2334

._crit_edge2334:                                  ; preds = %._crit_edge2334.loopexit, %.preheader1286
  %.11057.lcssa = phi ptr [ %.01056, %.preheader1286 ], [ %.lcssa4208, %._crit_edge2334.loopexit ] ; 5 uses
  %.1993.lcssa = phi i32 [ %.0992, %.preheader1286 ], [ %.lcssa4209, %._crit_edge2334.loopexit ] ; 5 uses
  %.1930.lcssa = phi i64 [ %.0929, %.preheader1286 ], [ %.lcssa4207, %._crit_edge2334.loopexit ] ; 8 uses
  %.1919.lcssa = phi i32 [ %.0918, %.preheader1286 ], [ %i.cv, %._crit_edge2334.loopexit ] ; 3 uses
  %i.cw = and i32 %i.cc, 2
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = icmp eq i64 %.1930.lcssa, 35615
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge2334
  %i.cz = load i32, ptr %i.bp, align 8, !tbaa !43
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 15, ptr %i.bp, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.db = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !49
  store i8 31, ptr %i.a, align 4, !tbaa !45
  store i8 -117, ptr %i.br, align 1, !tbaa !45
  %i.dc = call i64 @crc32(i64 noundef %i.db, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !49
  store i32 16181, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.s:                                             ; preds = %._crit_edge2334
  %i.dd = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1250 = icmp eq ptr %i.dd, null
  br i1 %.not1250, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store i32 -1, ptr %i.de, align 8, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not1251 = trunc i32 %i.cc to i1
  br i1 %.not1251, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.df = shl i64 %.1930.lcssa, 8
  %i.dg = and i64 %i.df, 65280
  %i.dh = lshr i64 %.1930.lcssa, 8
  %i.di = add nuw nsw i64 %i.dg, %i.dh
  %i.dj = urem i64 %i.di, 31
  %.not1252 = icmp eq i64 %i.dj, 0
  br i1 %.not1252, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr @.str.1, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.dk = and i64 %.1930.lcssa, 15
  %.not1253 = icmp eq i64 %i.dk, 8
  br i1 %.not1253, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.dl = lshr i64 %.1930.lcssa, 4                ; 2 uses
  %i.dm = add i32 %.1919.lcssa, -4
  %i.dn = trunc i64 %i.dl to i32
  %i.do = and i32 %i.dn, 15                       ; 3 uses
  %i.dp = add nuw nsw i32 %i.do, 8                ; 3 uses
  %i.dq = load i32, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.dp, ptr %i.bp, align 8, !tbaa !43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ds = phi i32 [ %i.dp, %bb.aa ], [ %i.dq, %bb.z ]
  %i.dt = icmp samesign ugt i32 %i.do, 7
  %i.du = icmp ugt i32 %i.dp, %i.ds
  %or.cond3401 = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond3401, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.3, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.dv = shl nuw nsw i32 256, %i.do
  store i32 %i.dv, ptr %i.bq, align 4, !tbaa !30
  store i32 0, ptr %i.aj, align 8, !tbaa !29
  %i.dw = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.dw, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.dw, ptr %i.al, align 8, !tbaa !26
  %i.dx = and i64 %.1930.lcssa, 8192
  %.not1254 = icmp eq i64 %i.dx, 0
  %i.dy = select i1 %.not1254, i32 16191, i32 16189
  store i32 %i.dy, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ae:                                            ; preds = %.lr.ph2284.preheader
  %i.dz = add i32 %.0992, -1                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.eb = load i8, ptr %.01056, align 1, !tbaa !45
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, %i.ca
  %i.ee = add i64 %i.ed, %.0929                   ; 3 uses
  %indvars.iv.next2830 = add nuw nsw i64 %i.ca, 8 ; 3 uses
  %i.ef = icmp ult i32 %.0918, 8
  br i1 %i.ef, label %.lr.ph2284.1, label %._crit_edge2285.loopexit

.lr.ph2284.1:                                     ; preds = %bb.ae
  %i.eg = icmp eq i32 %i.dz, 0
  br i1 %i.eg, label %.loopexit1277.loopexit2349, label %bb.af

bb.af:                                            ; preds = %.lr.ph2284.1
  %i.eh = add i32 %.0992, -2
  %i.ei = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.ej = load i8, ptr %i.ea, align 1, !tbaa !45
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, %indvars.iv.next2830
  %i.em = add i64 %i.el, %i.ee
  %indvars.iv.next2830.1 = or disjoint i64 %i.ca, 16
  br label %._crit_edge2285.loopexit

._crit_edge2285.loopexit:                         ; preds = %bb.af, %bb.ae
  %.lcssa4177 = phi i32 [ %i.dz, %bb.ae ], [ %i.eh, %bb.af ]
  %.lcssa4176 = phi ptr [ %i.ea, %bb.ae ], [ %i.ei, %bb.af ]
  %.lcssa4175 = phi i64 [ %i.ee, %bb.ae ], [ %i.em, %bb.af ]
  %indvars.iv.next2830.lcssa = phi i64 [ %indvars.iv.next2830, %bb.ae ], [ %indvars.iv.next2830.1, %bb.af ]
  %i.en = trunc nuw nsw i64 %indvars.iv.next2830.lcssa to i32
  br label %._crit_edge2285

._crit_edge2285:                                  ; preds = %._crit_edge2285.loopexit, %.preheader1296
  %.21058.lcssa = phi ptr [ %.01056, %.preheader1296 ], [ %.lcssa4176, %._crit_edge2285.loopexit ] ; 3 uses
  %.2994.lcssa = phi i32 [ %.0992, %.preheader1296 ], [ %.lcssa4177, %._crit_edge2285.loopexit ] ; 3 uses
  %.2931.lcssa = phi i64 [ %.0929, %.preheader1296 ], [ %.lcssa4175, %._crit_edge2285.loopexit ] ; 4 uses
  %.2920.lcssa = phi i32 [ %.0918, %.preheader1296 ], [ %i.en, %._crit_edge2285.loopexit ] ; 2 uses
  %i.eo = trunc i64 %.2931.lcssa to i32           ; 5 uses
  store i32 %i.eo, ptr %i.aj, align 8, !tbaa !29
  %i.ep = and i32 %i.eo, 255
  %.not1211 = icmp eq i32 %i.ep, 8
  br i1 %.not1211, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge2285
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ah:                                            ; preds = %._crit_edge2285
  %i.eq = and i32 %i.eo, 57344
  %.not1212 = icmp eq i32 %i.eq, 0
  br i1 %.not1212, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr @.str.4, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.er = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1213 = icmp eq ptr %i.er, null
  br i1 %.not1213, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = lshr i32 %i.eo, 8
  %i.et = and i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 8, !tbaa !81
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.eu = and i32 %i.eo, 512
  %.not1214 = icmp eq i32 %i.eu, 0
  br i1 %.not1214, label %.thread2936, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ew = and i32 %i.ev, 4
  %.not1215 = icmp eq i32 %i.ew, 0
  br i1 %.not1215, label %.thread2936, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ex = trunc i64 %.2931.lcssa to i16
  store i16 %i.ex, ptr %i.a, align 4
  %i.ey = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.ez = call i64 @crc32(i64 noundef %i.ey, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.ez, ptr %i.ak, align 8, !tbaa !49
  br label %.thread2936

.thread2936:                                      ; preds = %bb.an, %bb.am, %bb.al
  store i32 16182, ptr %i.m, align 8, !tbaa !21
  br label %.lr.ph2295.preheader

bb.ao:                                            ; preds = %bb.k
  %i.fa = icmp ult i32 %.0918, 32
  br i1 %i.fa, label %.lr.ph2295.preheader, label %._crit_edge2296

.lr.ph2295.preheader:                             ; preds = %.thread2936, %bb.ao
  %.39212944 = phi i32 [ 0, %.thread2936 ], [ %.0918, %bb.ao ] ; 4 uses
  %.39322943 = phi i64 [ 0, %.thread2936 ], [ %.0929, %bb.ao ] ; 2 uses
  %.39952942 = phi i32 [ %.2994.lcssa, %.thread2936 ], [ %.0992, %bb.ao ] ; 5 uses
  %.310592941 = phi ptr [ %.21058.lcssa, %.thread2936 ], [ %.01056, %bb.ao ] ; 6 uses
  %i.fb = zext nneg i32 %.39212944 to i64         ; 5 uses
  %i.fc = icmp eq i32 %.39952942, 0
  br i1 %i.fc, label %.loopexit1277.loopexit2348, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph2295.preheader
  %i.fd = add i32 %.39952942, -1                  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.310592941, i64 1 ; 3 uses
  %i.ff = load i8, ptr %.310592941, align 1, !tbaa !45
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, %i.fb
  %i.fi = add i64 %i.fh, %.39322943               ; 3 uses
  %indvars.iv.next2833 = add nuw nsw i64 %i.fb, 8 ; 2 uses
  %i.fj = icmp samesign ult i32 %.39212944, 24
  br i1 %i.fj, label %.lr.ph2295.1, label %._crit_edge2296

.lr.ph2295.1:                                     ; preds = %bb.ap
  %i.fk = icmp eq i32 %i.fd, 0
  br i1 %i.fk, label %.loopexit1277.loopexit2348, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph2295.1
  %i.fl = add i32 %.39952942, -2                  ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.310592941, i64 2 ; 3 uses
  %i.fn = load i8, ptr %i.fe, align 1, !tbaa !45
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, %indvars.iv.next2833
  %i.fq = add i64 %i.fp, %i.fi                    ; 3 uses
  %indvars.iv.next2833.1 = add nuw nsw i64 %i.fb, 16 ; 2 uses
  %i.fr = icmp samesign ult i32 %.39212944, 16
  br i1 %i.fr, label %.lr.ph2295.2, label %._crit_edge2296

.lr.ph2295.2:                                     ; preds = %bb.aq
  %i.fs = icmp eq i32 %i.fl, 0
  br i1 %i.fs, label %.loopexit1277.loopexit2348, label %bb.ar

end_hunk_0
begin_hunk_1_@inflate:bb.a
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqc, i64 68
  store i32 0, ptr %i.aqv, align 4, !tbaa !41
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqc, i64 64
  store i32 0, ptr %i.aqw, align 8, !tbaa !40
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.aqx = phi i32 [ %i.aqu, %bb.hw ], [ %i.aqq, %bb.hv ] ; 3 uses
  %.not.i1264 = icmp ult i32 %i.aqb, %i.aqx
  br i1 %.not.i1264, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aqy = zext i32 %i.aqx to i64                 ; 2 uses
  %i.aqz = sub nsw i64 0, %i.aqy
  %i.ara = getelementptr inbounds i8, ptr %.01053, i64 %i.aqz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aqo, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ara, i64 %i.aqy, i1 false)
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqc, i64 68
  store i32 0, ptr %i.arb, align 4, !tbaa !41
  %i.arc = load i32, ptr %i.aqp, align 4, !tbaa !39
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqc, i64 64
  store i32 %i.arc, ptr %i.ard, align 8, !tbaa !40
  br label %updatewindow.exit.thread

bb.hz:                                            ; preds = %bb.hx
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqc, i64 68 ; 4 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !41 ; 2 uses
  %i.arg = sub i32 %i.aqx, %i.arf                 ; 2 uses
  %spec.select.i1265 = call i32 @llvm.umin.i32(i32 %i.arg, i32 %i.aqb) ; 4 uses
  %i.arh = zext i32 %i.arf to i64
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %i.arh
  %i.arj = zext i32 %i.aqb to i64
  %i.ark = sub nsw i64 0, %i.arj
  %i.arl = getelementptr inbounds i8, ptr %.01053, i64 %i.ark
  %i.arm = zext i32 %spec.select.i1265 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ari, ptr readonly align 1 %i.arl, i64 %i.arm, i1 false)
  %.not57.not.i = icmp ugt i32 %i.aqb, %i.arg
  br i1 %.not57.not.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.arn = sub nuw i32 %i.aqb, %spec.select.i1265 ; 2 uses
  %i.aro = load ptr, ptr %i.aqd, align 8, !tbaa !42
  %i.arp = zext i32 %i.arn to i64                 ; 2 uses
  %i.arq = sub nsw i64 0, %i.arp
  %i.arr = getelementptr inbounds i8, ptr %.01053, i64 %i.arq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aro, ptr nonnull readonly align 1 %i.arr, i64 %i.arp, i1 false)
  store i32 %i.arn, ptr %i.are, align 4, !tbaa !41
  %i.ars = load i32, ptr %i.aqp, align 4, !tbaa !39
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqc, i64 64
  store i32 %i.ars, ptr %i.art, align 8, !tbaa !40
  br label %updatewindow.exit.thread

bb.ib:                                            ; preds = %bb.hz
  %i.aru = load i32, ptr %i.are, align 4, !tbaa !41
  %i.arv = add i32 %i.aru, %spec.select.i1265     ; 2 uses
  %i.arw = load i32, ptr %i.aqp, align 4, !tbaa !39 ; 2 uses
  %i.arx = icmp eq i32 %i.arv, %i.arw
  %spec.store.select.i = select i1 %i.arx, i32 0, i32 %i.arv
  store i32 %spec.store.select.i, ptr %i.are, align 4, !tbaa !41
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqc, i64 64 ; 2 uses
  %i.arz = load i32, ptr %i.ary, align 8, !tbaa !40 ; 2 uses
  %i.asa = icmp ult i32 %i.arz, %i.arw
  br i1 %i.asa, label %bb.ic, label %updatewindow.exit.thread

bb.ic:                                            ; preds = %bb.ib
  %i.asb = add i32 %i.arz, %spec.select.i1265
  store i32 %i.asb, ptr %i.ary, align 8, !tbaa !40
  br label %updatewindow.exit.thread

updatewindow.exit:                                ; preds = %bb.hu
  store i32 16210, ptr %i.m, align 8, !tbaa !21
  br label %inflateStateCheck.exit.thread

updatewindow.exit.thread:                         ; preds = %bb.hy, %bb.ib, %bb.ic, %bb.ia, %bb.hs, %bb.hr, %bb.hq
  %i.asc = load i32, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.asd = sub i32 %i.ab, %i.asc
  %i.ase = load i32, ptr %i.y, align 8, !tbaa !78 ; 2 uses
  %i.asf = sub i32 %.5917, %i.ase                 ; 3 uses
  %i.asg = zext i32 %i.asd to i64
  %i.ash = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.asi = load i64, ptr %i.ash, align 8, !tbaa !23
  %i.asj = add i64 %i.asi, %i.asg
  store i64 %i.asj, ptr %i.ash, align 8, !tbaa !23
  %i.ask = zext i32 %i.asf to i64                 ; 3 uses
  %i.asl = load i64, ptr %i.ah, align 8, !tbaa !56
  %i.asm = add i64 %i.asl, %i.ask
  store i64 %i.asm, ptr %i.ah, align 8, !tbaa !56
  %i.asn = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.aso = add i64 %i.asn, %i.ask
  store i64 %i.aso, ptr %i.ai, align 8, !tbaa !22
  %i.asp = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.asq = and i32 %i.asp, 4
  %i.asr = icmp ne i32 %i.asq, 0
  %i.ass = icmp ne i32 %.5917, %i.ase             ; 2 uses
  %or.cond11 = select i1 %i.asr, i1 %i.ass, i1 false
  br i1 %or.cond11, label %bb.id, label %bb.ih

bb.id:                                            ; preds = %updatewindow.exit.thread
  %i.ast = load i32, ptr %i.aj, align 8, !tbaa !29
  %.not1258 = icmp eq i32 %i.ast, 0
  %i.asu = load i64, ptr %i.ak, align 8, !tbaa !49 ; 2 uses
  %i.asv = load ptr, ptr %i.p, align 8, !tbaa !77
  %i.asw = sub nsw i64 0, %i.ask
  %i.asx = getelementptr inbounds i8, ptr %i.asv, i64 %i.asw ; 2 uses
  br i1 %.not1258, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.asy = call i64 @crc32(i64 noundef %i.asu, ptr noundef %i.asx, i32 noundef %i.asf) #9
  br label %bb.ig

bb.if:                                            ; preds = %bb.id
  %i.asz = call i64 @adler32(i64 noundef %i.asu, ptr noundef %i.asx, i32 noundef %i.asf) #9
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %i.ata = phi i64 [ %i.asy, %bb.ie ], [ %i.asz, %bb.if ] ; 2 uses
  store i64 %i.ata, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.ata, ptr %i.al, align 8, !tbaa !26
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %updatewindow.exit.thread
  %i.atb = load i32, ptr %i.ae, align 8, !tbaa !33
  %i.atc = load i32, ptr %i.bn, align 4, !tbaa !27
  %.not1259 = icmp eq i32 %i.atc, 0
  %i.atd = select i1 %.not1259, i32 0, i32 64
  %i.ate = add nsw i32 %i.atd, %i.atb
  %i.atf = load i32, ptr %i.m, align 8, !tbaa !21 ; 3 uses
  %i.atg = icmp eq i32 %i.atf, 16191
  %i.ath = select i1 %i.atg, i32 128, i32 0
  %i.ati = add nsw i32 %i.ate, %i.ath
  %i.atj = icmp eq i32 %i.atf, 16199
  %i.atk = icmp eq i32 %i.atf, 16194
  %i.atl = or i1 %i.atj, %i.atk
  %i.atm = select i1 %i.atl, i32 256, i32 0
  %i.atn = add nsw i32 %i.ati, %i.atm
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.atn, ptr %i.ato, align 8, !tbaa !24
  %i.atp = icmp eq i32 %i.ab, %i.asc
  %.not = xor i1 %i.ass, true
  %or.cond13 = select i1 %i.atp, i1 %.not, i1 false
  %i.atq = icmp eq i32 %1, 4
  %or.cond15 = or i1 %i.atq, %or.cond13
  %i.atr = icmp eq i32 %.9, 0
  %or.cond17 = select i1 %or.cond15, i1 %i.atr, i1 false
  %spec.store.select = select i1 %or.cond17, i32 -5, i32 %.9
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread.loopexit:           ; preds = %bb.k
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.k, %inflateStateCheck.exit.thread.loopexit, %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.f, %bb.h, %bb.ih, %updatewindow.exit, %bb.dn
  %.01121 = phi i32 [ -2, %inflateStateCheck.exit ], [ -4, %inflateStateCheck.exit.thread.loopexit ], [ -4, %updatewindow.exit ], [ %spec.store.select, %bb.ih ], [ 2, %bb.dn ], [ -2, %bb.h ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.01121
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden void @inflate_fixed(ptr noundef) local_unnamed_addr #3

declare hidden i32 @inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @inflateEnd(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %.not11 = icmp eq ptr %i.p, null
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  tail call void %i.f(ptr noundef %i.r, ptr noundef nonnull %i.p) #9
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !15
  %.pre14 = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi ptr [ %.pre14, %bb.g ], [ %i.i, %bb.f ]
  %i.t = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  tail call void %i.t(ptr noundef %i.v, ptr noundef %i.s) #9
  store ptr null, ptr %i.h, align 8, !tbaa !16
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateGetDictionary(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne ptr %1, null
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 68 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = sub i32 %i.p, %i.v
  %i.z = zext i32 %i.y to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.x, i64 %i.z, i1 false)
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !40
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !41
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.ah, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not21 = icmp eq ptr %2, null
  br i1 %.not21, label %inflateStateCheck.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !40
  store i32 %i.ai, ptr %2, align 4, !tbaa !57
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.h, %bb.i, %inflateStateCheck.exit
  %.0 = phi i32 [ -2, %inflateStateCheck.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @inflateSetDictionary(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %.not17 = icmp eq i32 %i.p, 0
  %i.q = icmp eq i32 %i.m, 16190                  ; 2 uses
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.q, label %.thread, label %inflateStateCheck.exit.thread

bb.h:                                             ; preds = %bb.f
  br i1 %i.q, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.h
  %i.r = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9
  %i.s = tail call i64 @adler32(i64 noundef %i.r, ptr noundef %1, i32 noundef %2) #9
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %.not19 = icmp eq i64 %i.s, %i.u
  br i1 %.not19, label %._crit_edge, label %inflateStateCheck.exit.thread

._crit_edge:                                      ; preds = %.thread
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %i.i, %bb.h ] ; 11 uses
  %i.w = zext i32 %2 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = tail call ptr %i.ab(ptr noundef %i.ad, i32 noundef %i.ag, i32 noundef 1) #9, !inline_history !0 ; 3 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !42
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %updatewindow.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = phi ptr [ %i.ah, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 60 ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !43
  %i.ap = shl nuw i32 1, %i.ao                    ; 2 uses
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  store i32 0, ptr %i.aq, align 4, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 0, ptr %i.ar, align 8, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = phi i32 [ %i.ap, %bb.l ], [ %i.al, %bb.k ] ; 3 uses
  %.not.i21 = icmp ult i32 %2, %i.as
  br i1 %.not.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.x, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.av, i64 %i.at, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  store i32 0, ptr %i.aw, align 4, !tbaa !41
  %i.ax = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !40
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 68 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !41 ; 2 uses
  %i.bb = sub i32 %i.as, %i.ba                    ; 2 uses
  %spec.select.i22 = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %2) ; 4 uses
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bc
  %i.be = zext i32 %spec.select.i22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr readonly align 1 %1, i64 %i.be, i1 false)
  %.not57.not.i = icmp ugt i32 %2, %i.bb
  br i1 %.not57.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = sub nuw i32 %2, %spec.select.i22        ; 2 uses
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.bh = zext i32 %i.bf to i64                   ; 2 uses
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.x, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull readonly align 1 %i.bj, i64 %i.bh, i1 false)
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !41
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !40
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.az, align 4, !tbaa !41
  %i.bn = add i32 %i.bm, %spec.select.i22         ; 2 uses
  %i.bo = load i32, ptr %i.ak, align 4, !tbaa !39 ; 2 uses
  %i.bp = icmp eq i32 %i.bn, %i.bo
  %spec.store.select.i = select i1 %i.bp, i32 0, i32 %i.bn
  store i32 %spec.store.select.i, ptr %i.az, align 4, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.bs = icmp ult i32 %i.br, %i.bo
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = add i32 %i.br, %spec.select.i22
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !40
  br label %bb.s

updatewindow.exit:                                ; preds = %bb.j
  store i32 16210, ptr %i.l, align 8, !tbaa !21
  br label %inflateStateCheck.exit.thread

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 1, ptr %i.bu, align 4, !tbaa !28
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %.thread, %bb.g, %inflateStateCheck.exit, %bb.s, %updatewindow.exit
  %.0 = phi i32 [ 0, %bb.s ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.g ], [ -4, %updatewindow.exit ], [ -3, %.thread ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateGetHeader(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = and i32 %i.p, 2
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %1, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.t, align 8, !tbaa !51
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.f, %inflateStateCheck.exit, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.f ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 1) i32 @inflateSync(ptr nofree noundef captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 28 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.l, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = add i32 %i.n, -16212
  %or.cond.i = icmp ult i32 %i.o, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !33
  %i.u = icmp ult i32 %i.t, 8
  br i1 %i.u, label %inflateStateCheck.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not43 = icmp eq i32 %i.n, 16211
  br i1 %.not43, label %._crit_edge70, label %bb.i

._crit_edge70:                                    ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  %.pre71 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !57
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 16211, ptr %i.m, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33   ; 3 uses
  %i.x = and i32 %i.w, 7
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = lshr i64 %i.z, %i.aa                    ; 3 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !32
  %.not63 = icmp ult i32 %i.w, 8
  br i1 %.not63, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ac = add i32 %i.w, -8                        ; 2 uses
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = add nuw nsw i32 %i.ad, 1                ; 2 uses
  %xtraiter = and i32 %i.ae, 3                    ; 3 uses
  %i.af = icmp ult i32 %i.ac, 24
  br i1 %i.af, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ae, 1073741820
  br label %.lr.ph

.thread:                                          ; preds = %bb.i
  store i32 0, ptr %i.v, align 8, !tbaa !33
  br label %syncsearch.exit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %i.ag = phi i64 [ %i.ab, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !45
  %i.aj = lshr i64 %i.ag, 8
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !45
  %i.an = lshr i64 %i.ag, 16
  %i.ao = trunc i64 %i.an to i8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !45
  %i.ar = lshr i64 %i.ag, 24
  %i.as = trunc i64 %i.ar to i8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !45
  %i.au = lshr i64 %i.ag, 32                      ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.lr.ph, !llvm.loop !105

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph.preheader.i.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.i.unr-lcssa ]
  %.epil.init = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %i.au, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod83 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %i.av = phi i64 [ %i.ay, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aw = trunc i64 %i.av to i8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !45
  %i.ay = lshr i64 %i.av, 8                       ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.lr.ph.epil, !llvm.loop !106

.lr.ph.preheader.i:                               ; preds = %.lr.ph.epil, %.lr.ph.preheader.i.unr-lcssa
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next.2, %.lr.ph.preheader.i.unr-lcssa ], [ %indvars.iv.epil, %.lr.ph.epil ]
  %.lcssa = phi i64 [ %i.au, %.lr.ph.preheader.i.unr-lcssa ], [ %i.ay, %.lr.ph.epil ]
  store i64 %.lcssa, ptr %i.y, align 8, !tbaa !32
  store i32 0, ptr %i.v, align 8, !tbaa !33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.01415.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %.lr.ph.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !45  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = icmp samesign ult i32 %.01415.i, 2
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = icmp eq i32 %i.bd, %i.bb
  %i.bf = add nuw nsw i32 %.01415.i, 1
  %.not.i45 = icmp eq i8 %i.ba, 0
  %i.bg = sub nuw nsw i32 4, %.01415.i
  %spec.select.i46 = select i1 %.not.i45, i32 %i.bg, i32 0
  %.1.i = select i1 %i.be, i32 %i.bf, i32 %spec.select.i46 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bh = icmp samesign ult i64 %indvars.iv.i, %indvars.iv.lcssa
  %i.bi = icmp samesign ult i32 %.1.i, 4
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.lr.ph.i, label %syncsearch.exit, !llvm.loop !107

syncsearch.exit:                                  ; preds = %.lr.ph.i, %.thread
  %.014.lcssa.i = phi i32 [ 0, %.thread ], [ %.1.i, %.lr.ph.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  store i32 %.014.lcssa.i, ptr %i.bk, align 4, !tbaa !57
  %.pre = load i32, ptr %i.p, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge70, %syncsearch.exit
  %i.bl = phi i32 [ %.014.lcssa.i, %syncsearch.exit ], [ %.pre71, %._crit_edge70 ] ; 3 uses
  %i.bm = phi i32 [ %.pre, %syncsearch.exit ], [ %i.q, %._crit_edge70 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  %i.bo = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.bp = icmp ne i32 %i.bm, 0
  %i.bq = icmp ult i32 %i.bl, 4
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph.preheader.i49, label %syncsearch.exit58

.lr.ph.preheader.i49:                             ; preds = %bb.j
  %i.bs = zext i32 %i.bm to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i49
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.preheader.i49 ], [ %indvars.iv.next.i56, %.lr.ph.i50 ] ; 2 uses
  %.01415.i52 = phi i32 [ %i.bl, %.lr.ph.preheader.i49 ], [ %.1.i55, %.lr.ph.i50 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.i51
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !45  ; 2 uses
  %i.bv = zext i8 %i.bu to i32
  %i.bw = icmp samesign ult i32 %.01415.i52, 2
  %i.bx = select i1 %i.bw, i32 0, i32 255
  %i.by = icmp eq i32 %i.bx, %i.bv
  %i.bz = add nuw nsw i32 %.01415.i52, 1
  %.not.i53 = icmp eq i8 %i.bu, 0
  %i.ca = sub nuw nsw i32 4, %.01415.i52
  %spec.select.i54 = select i1 %.not.i53, i32 %i.ca, i32 0
  %.1.i55 = select i1 %i.by, i32 %i.bz, i32 %spec.select.i54 ; 3 uses
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i51, 1 ; 3 uses
  %i.cb = icmp samesign ult i64 %indvars.iv.next.i56, %i.bs
  %i.cc = icmp samesign ult i32 %.1.i55, 4
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph.i50, label %._crit_edge.loopexit.i57, !llvm.loop !107

._crit_edge.loopexit.i57:                         ; preds = %.lr.ph.i50
  %i.ce = trunc nuw i64 %indvars.iv.next.i56 to i32
  br label %syncsearch.exit58

syncsearch.exit58:                                ; preds = %bb.j, %._crit_edge.loopexit.i57
  %.014.lcssa.i47 = phi i32 [ %i.bl, %bb.j ], [ %.1.i55, %._crit_edge.loopexit.i57 ] ; 2 uses
  %.0.lcssa.i48 = phi i32 [ 0, %bb.j ], [ %i.ce, %._crit_edge.loopexit.i57 ] ; 2 uses
  store i32 %.014.lcssa.i47, ptr %i.bn, align 4, !tbaa !57
  %i.cf = load i32, ptr %i.p, align 8, !tbaa !48
  %i.cg = sub i32 %i.cf, %.0.lcssa.i48
  store i32 %i.cg, ptr %i.p, align 8, !tbaa !48
  %i.ch = zext i32 %.0.lcssa.i48 to i64           ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.ch
  store ptr %i.ci, ptr %0, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !23
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !23
  %.not44 = icmp eq i32 %.014.lcssa.i47, 4
  br i1 %.not44, label %bb.k, label %inflateStateCheck.exit.thread

bb.k:                                             ; preds = %syncsearch.exit58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !29 ; 2 uses
  %i.co = icmp eq i32 %i.cn, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !25
  %i.cr = and i32 %i.cq, -5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi i32 [ %i.cr, %bb.l ], [ 0, %bb.k ]
  store i32 %.sink, ptr %i.cp, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i32 0, ptr %i.cu, align 4, !tbaa !39
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 0, ptr %i.cv, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  store i32 0, ptr %i.cw, align 4, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 0, ptr %i.cx, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.cy, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !25 ; 2 uses
  %.not25.i.i = icmp eq i32 %i.da, 0
  br i1 %.not25.i.i, label %inflateReset.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = and i32 %i.da, 1
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !26
  br label %inflateReset.exit

inflateReset.exit:                                ; preds = %bb.m, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 0, ptr %i.df, align 4, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 32768, ptr %i.dg, align 4, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr null, ptr %i.dh, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 0, ptr %i.di, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i32 0, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.j, i64 1368 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !36
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 7144
  store i32 1, ptr %i.do, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 7148
  store i32 -1, ptr %i.dp, align 4, !tbaa !38
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !23
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !56
  store i32 %i.cn, ptr %i.cm, align 8, !tbaa !29
  store i32 16191, ptr %i.m, align 8, !tbaa !21
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %syncsearch.exit58, %bb.g, %inflateStateCheck.exit, %inflateReset.exit
  %.042 = phi i32 [ 0, %inflateReset.exit ], [ -2, %inflateStateCheck.exit ], [ -5, %bb.g ], [ -3, %syncsearch.exit58 ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 2) i32 @inflateSyncPoint(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = icmp eq i32 %i.m, 16193
  br i1 %i.o, label %bb.g, label %inflateStateCheck.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = icmp eq i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.f, %bb.g, %inflateStateCheck.exit
  %.0 = phi i32 [ -2, %inflateStateCheck.exit ], [ 0, %bb.f ], [ %i.s, %bb.g ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @inflateCopy(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 12 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %1
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  %i.o = icmp eq ptr %0, null
  %or.cond = or i1 %i.o, %or.cond.i
  br i1 %or.cond, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = tail call ptr %i.c(ptr noundef %i.q, i32 noundef 1, i32 noundef 7160) #9 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %i.r, i8 0, i64 7160, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43
  %i.z = shl nuw i32 1, %i.y
  %i.aa = tail call ptr %i.v(ptr noundef %i.w, i32 noundef %i.z, i32 noundef 1) #9 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !44
  tail call void %i.ac(ptr noundef %i.ad, ptr noundef nonnull %i.r) #9
  br label %inflateStateCheck.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.aa, %bb.h ], [ null, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7160) %i.r, ptr noundef nonnull align 8 dereferenceable(7160) %i.i, i64 7160, i1 false)
  store ptr %0, ptr %i.r, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1368 ; 3 uses
  %.not52 = icmp ult ptr %i.af, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 7140
  %.not53 = icmp ugt ptr %i.af, %i.ah
  %or.cond55 = select i1 %.not52, i1 true, i1 %.not53
  br i1 %or.cond55, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.pre = ptrtoint ptr %i.ag to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 1368 ; 2 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  store ptr %i.am, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ak
  %i.as = getelementptr inbounds i8, ptr %i.ai, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  store ptr %i.as, ptr %i.at, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.ak, %bb.k ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %.pre-phi
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !34
  %.not54 = icmp eq ptr %.0, null
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !40
  %i.be = zext i32 %i.bd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0, ptr align 1 %i.bb, i64 %i.be, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %.0, ptr %i.bf, align 8, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.bg, align 8, !tbaa !16
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.f, %inflateStateCheck.exit, %bb.n, %bb.i
  %.046 = phi i32 [ 0, %bb.n ], [ -2, %inflateStateCheck.exit ], [ -4, %bb.i ], [ -4, %bb.f ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -3, -1) i32 @inflateUndermine(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 7144
  store i32 1, ptr %i.o, align 8, !tbaa !37
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.f
  %.0 = phi i32 [ -3, %bb.f ], [ -2, %inflateStateCheck.exit ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflateValidate(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %.not7 = icmp eq i32 %1, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 3 uses
  br i1 %.not7, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %i.o = and i32 %.pre, -5
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not8 = icmp eq i32 %.pre, 0
  br i1 %.not8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = or i32 %.pre, 4
  store i32 %i.p, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.q = phi i32 [ %i.o, %._crit_edge ], [ 0, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !25
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.h, %bb.i, %inflateStateCheck.exit
  %.0 = phi i32 [ -2, %inflateStateCheck.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -140737488355328, 140741783257088) i64 @inflateMark(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 7148
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 16
  switch i32 %i.m, label %bb.i [
    i32 16195, label %bb.g
    i32 16204, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 7152
  %i.v = load i32, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = sub i32 %i.v, %i.x
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %i.z = phi i32 [ %i.t, %bb.g ], [ %i.y, %bb.h ], [ 0, %bb.f ]
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nsw i64 %i.r, %i.aa
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.i
  %.0 = phi i64 [ %i.ab, %bb.i ], [ -65536, %inflateStateCheck.exit ], [ -65536, %bb.d ], [ -65536, %bb.a ], [ -65536, %bb.c ], [ -65536, %bb.b ], [ -65536, %bb.e ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -2305843009213693952, 2305843009213693952) i64 @inflateCodesUsed(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16212
  %or.cond.i = icmp ult i32 %i.n, -32
  br i1 %or.cond.i, label %inflateStateCheck.exit.thread, label %bb.f

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1368
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %inflateStateCheck.exit, %bb.f
  %.0 = phi i64 [ %i.u, %bb.f ], [ -1, %inflateStateCheck.exit ], [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!13 = !{!"z_stream_s", !10, i64 0, !6, i64 8, !11, i64 16, !10, i64 24, !6, i64 32, !11, i64 40, !10, i64 48, !12, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !11, i64 96, !11, i64 104}
!14 = !{!13, !9, i64 64}
!15 = !{!13, !9, i64 72}
!16 = !{!13, !12, i64 56}
!17 = !{!"p1 _ZTS10z_stream_s", !9, i64 0}
!18 = !{!"p1 _ZTS11gz_header_s", !9, i64 0}
!19 = !{!"inflate_state", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !11, i64 32, !11, i64 40, !18, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !10, i64 72, !11, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !9, i64 104, !9, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !9, i64 144, !5, i64 152, !5, i64 792, !5, i64 1368, !6, i64 7144, !6, i64 7148, !6, i64 7152}
!20 = !{!19, !17, i64 0}
!21 = !{!19, !6, i64 8}
!22 = !{!19, !11, i64 40}
!23 = !{!13, !11, i64 16}
!24 = !{!13, !6, i64 88}
!25 = !{!19, !6, i64 16}
!26 = !{!13, !11, i64 96}
!27 = !{!19, !6, i64 12}
!28 = !{!19, !6, i64 20}
!29 = !{!19, !6, i64 24}
!30 = !{!19, !6, i64 28}
!31 = !{!19, !18, i64 48}
!32 = !{!19, !11, i64 80}
!33 = !{!19, !6, i64 88}
!34 = !{!19, !9, i64 144}
!35 = !{!19, !9, i64 112}
!36 = !{!19, !9, i64 104}
!37 = !{!19, !6, i64 7144}
!38 = !{!19, !6, i64 7148}
!39 = !{!19, !6, i64 60}
!40 = !{!19, !6, i64 64}
!41 = !{!19, !6, i64 68}
!42 = !{!19, !10, i64 72}
!43 = !{!19, !6, i64 56}
!44 = !{!13, !9, i64 80}
!45 = !{!5, !5, i64 0}
!46 = !{!13, !10, i64 48}
!47 = !{!13, !10, i64 0}
!48 = !{!13, !6, i64 8}
!49 = !{!19, !11, i64 32}
!50 = !{!"gz_header_s", !6, i64 0, !11, i64 8, !6, i64 16, !6, i64 20, !10, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 68, !6, i64 72}
!51 = !{!50, !6, i64 72}
!52 = !{!19, !6, i64 92}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{!19, !6, i64 7152}
!56 = !{!13, !11, i64 40}
!57 = !{!6, !6, i64 0}
!58 = !{ptr @inflateInit2_}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !53}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53}
!63 = distinct !{!63, !53}
!64 = distinct !{!64, !53}
!65 = distinct !{!65, !53}
!66 = distinct !{!66, !53, !99, !100}
!67 = distinct !{!67, !53, !99, !100}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !53, !99}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !53}
!73 = distinct !{!73, !53, !99, !100}
!74 = distinct !{!74, !53, !99, !100}
!75 = distinct !{!75, !54}
!76 = distinct !{!76, !53, !99}
!77 = !{!13, !10, i64 24}
!78 = !{!13, !6, i64 32}
!79 = !{!19, !6, i64 100}
!80 = !{!19, !6, i64 140}
!81 = !{!50, !6, i64 0}
!82 = !{!50, !11, i64 8}
!83 = !{!50, !6, i64 16}
!84 = !{!50, !6, i64 20}
!85 = !{!50, !6, i64 32}
!86 = !{!50, !10, i64 24}
!87 = !{!50, !6, i64 36}
!88 = !{!50, !10, i64 40}
!89 = !{!50, !6, i64 48}
!90 = !{!50, !10, i64 56}
!91 = !{!50, !6, i64 64}
!92 = !{!50, !6, i64 68}
!93 = !{!19, !6, i64 132}
!94 = !{!19, !6, i64 136}
!95 = !{!19, !6, i64 128}
!96 = !{!"short", !5, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!19, !6, i64 120}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = !{!"branch_weights", i32 4, i32 12}
!102 = !{!19, !6, i64 124}
!103 = !{!19, !6, i64 96}
!104 = !{!"branch_weights", i32 4, i32 28}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !54}
!107 = distinct !{!107, !53}
end_hunk_1
