Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/base64?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@BASE64_PAD = local_unnamed_addr constant i8 61, align 1
@BASE64DE_FIRST = local_unnamed_addr constant i8 43, align 1
@BASE64DE_LAST = local_unnamed_addr constant i8 122, align 1
@base64en = local_unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16
@base64de = local_unnamed_addr constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"b64encode\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"b64decode\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"expected %d arguments, got %d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"expect bytes or str, got %t\00", align 1

; Function Attrs: nounwind uwtable
define void @pk__add_module_base64() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @py_newmodule(ptr noundef nonnull @.str) #3 ; 2 uses
  tail call void @py_bindfunc(ptr noundef %i.a, ptr noundef nonnull @.str.1, ptr noundef nonnull @base64_b64encode) #3
  tail call void @py_bindfunc(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull @base64_b64decode) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @py_newmodule(ptr noundef) local_unnamed_addr #2

declare void @py_bindfunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @base64_b64encode(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef %0) #3
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 22) #3
  br i1 %i.c, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = call ptr @py_tobytes(ptr noundef %1, ptr noundef nonnull %i.a) #3 ; 3 uses
  %i.e = call ptr (...) @py_retval() #3
  %i.f = load i32, ptr %i.a, align 4, !tbaa !8
  %i.g = shl nsw i32 %i.f, 2
  %i.h = sdiv i32 %i.g, 3
  %i.i = add nsw i32 %i.h, 4
  %i.j = call ptr @py_newbytes(ptr noundef %i.e, i32 noundef %i.i) #3 ; 8 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %base64_encode.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %i.k to i64       ; 3 uses
  br label %.lr.ph.jt0.i

bb.e:                                             ; preds = %.lr.ph.jt0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.jt1.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 3 uses
  %i.n = shl i8 %i.w, 4
  %i.o = and i8 %i.n, 48
  %i.p = lshr i8 %i.m, 4
  %i.q = or disjoint i8 %i.p, %i.o
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @base64en, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %2 = or disjoint i32 %.0364558.i, 2             ; 2 uses
  %3 = zext i32 %4 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !9
  %indvars.iv.next.jt2.i = add nuw nsw i64 %indvars.iv.next.jt0.sink.i.a, 2 ; 2 uses
  %exitcond.not.jt2.i = icmp eq i64 %indvars.iv.next.jt2.i, %wide.trip.count.i
  br i1 %exitcond.not.jt2.i, label %._crit_edge.i, label %bb.f, !llvm.loop !11

.lr.ph.jt0.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.next.jt0.sink.i.a = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.jt0.i, %bb.f ] ; 4 uses
  %.0364558.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %8, %bb.f ] ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.jt0.sink.i.a
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9     ; 3 uses
  %i.x = lshr i8 %i.w, 2
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @base64en, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %4 = or disjoint i32 %.0364558.i, 1             ; 2 uses
  %5 = zext i32 %.0364558.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !9
  %indvars.iv.next.jt1.i = add nuw nsw i64 %indvars.iv.next.jt0.sink.i.a, 1 ; 2 uses
  %exitcond.not.jt1.i = icmp eq i64 %indvars.iv.next.jt1.i, %wide.trip.count.i
  br i1 %exitcond.not.jt1.i, label %bb.g, label %bb.e, !llvm.loop !11

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.jt2.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %i.ae = shl i8 %i.m, 2
  %i.af = and i8 %i.ae, 60
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = zext i8 %i.ad to i32                    ; 2 uses
  %i.ai = lshr i32 %i.ah, 6
  %i.aj = or disjoint i32 %i.ai, %i.ag
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @base64en, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %6 = or disjoint i32 %.0364558.i, 3
  %7 = zext i32 %2 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %7
  store i8 %i.am, ptr %i.an, align 1, !tbaa !9
  %i.ao = and i32 %i.ah, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @base64en, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %8 = add i32 %.0364558.i, 4                     ; 2 uses
  %9 = zext i32 %6 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %9
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !9
  %indvars.iv.next.jt0.i = add nuw nsw i64 %indvars.iv.next.jt0.sink.i.a, 3 ; 2 uses
  %exitcond.not.jt0.i = icmp eq i64 %indvars.iv.next.jt0.i, %wide.trip.count.i
  br i1 %exitcond.not.jt0.i, label %base64_encode.exit, label %.lr.ph.jt0.i, !llvm.loop !11

bb.g:                                             ; preds = %.lr.ph.jt0.i
  %i.at = shl i8 %i.w, 4
  %i.au = and i8 %i.at, 48
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @base64en, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 16, !tbaa !9
  %10 = or disjoint i32 %.0364558.i, 2
  %11 = zext i32 %4 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %11
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !9
  br label %._crit_edge.thread.sink.split.i

._crit_edge.i:                                    ; preds = %bb.e
  %i.az = shl i8 %i.m, 2
  %i.ba = and i8 %i.az, 60
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @base64en, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !9
  br label %._crit_edge.thread.sink.split.i

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i, %bb.g
  %.lcssa44.sink = phi i32 [ %2, %._crit_edge.i ], [ %10, %bb.g ]
  %.sink = phi i8 [ %i.bd, %._crit_edge.i ], [ 61, %bb.g ]
  %12 = zext i32 %.lcssa44.sink to i64
  %13 = getelementptr inbounds nuw i8, ptr %i.j, i64 %12
  store i8 %.sink, ptr %13, align 1, !tbaa !9
  %.2.ph.i = add i32 %.0364558.i, 4
  %.sink.i = or disjoint i32 %.0364558.i, 3
  %14 = zext i32 %.sink.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %14
  store i8 61, ptr %i.be, align 1, !tbaa !9
  br label %base64_encode.exit

base64_encode.exit:                               ; preds = %bb.f, %bb.d, %._crit_edge.thread.sink.split.i
  %.2.i = phi i32 [ 0, %bb.d ], [ %.2.ph.i, %._crit_edge.thread.sink.split.i ], [ %8, %bb.f ] ; 2 uses
  %i.bf = zext i32 %.2.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bf
  store i8 0, ptr %i.bg, align 1, !tbaa !9
  %i.bh = call ptr (...) @py_retval() #3
  call void @py_bytes_resize(ptr noundef %i.bh, i32 noundef %.2.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %base64_encode.exit, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %base64_encode.exit ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @base64_b64decode(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef %0) #3
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.c = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 6) #3
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call { ptr, i32 } @py_tosv(ptr noundef %1) #3 ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = extractvalue { ptr, i32 } %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 22) #3
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = call ptr @py_tobytes(ptr noundef %1, ptr noundef nonnull %i.a) #3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = load i16, ptr %1, align 8, !tbaa !16
  %i.j = sext i16 %i.i to i32
  %i.k = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.4, i32 noundef %i.j) #3
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %bb.d
  %.010 = phi ptr [ %i.e, %bb.d ], [ %i.h, %bb.f ]
  %i.l = call ptr (...) @py_retval() #3
  %i.m = load i32, ptr %i.a, align 4, !tbaa !8
  %i.n = call ptr @py_newbytes(ptr noundef %i.l, i32 noundef %i.m) #3 ; 6 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.p = and i32 %i.o, 3
  %.not.i = icmp eq i32 %i.p, 0
  %i.q = icmp ne i32 %i.o, 0
  %or.cond45.i = and i1 %i.q, %.not.i
  br i1 %or.cond45.i, label %.lr.ph.preheader.i, label %base64_decode.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext i32 %i.o to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %.038.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.p ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.010, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9     ; 3 uses
  %i.t = icmp eq i8 %i.s, 61
  br i1 %i.t, label %base64_decode.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.u = add i8 %i.s, -123
  %or.cond.i = icmp ult i8 %i.u, -80
  br i1 %or.cond.i, label %base64_decode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = zext nneg i8 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr @base64de, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9     ; 7 uses
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %base64_decode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = trunc nuw i64 %indvars.iv.i to i32
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.ab = shl i8 %i.x, 2
  %i.ac = zext i32 %.038.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !9
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ae = lshr i8 %i.x, 4
  %i.af = and i8 %i.ae, 3
  %i.ag = add i32 %.038.i, 1                      ; 2 uses
  %i.ah = zext i32 %.038.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = or i8 %i.aj, %i.af
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !9
  %i.al = shl i8 %i.x, 4
  %i.am = zext i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.am
  store i8 %i.al, ptr %i.an, align 1, !tbaa !9
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ao = lshr i8 %i.x, 2
  %i.ap = and i8 %i.ao, 15
  %i.aq = add i32 %.038.i, 1                      ; 2 uses
  %i.ar = zext i32 %.038.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = or i8 %i.at, %i.ap
  store i8 %i.au, ptr %i.as, align 1, !tbaa !9
  %i.av = shl i8 %i.x, 6
  %i.aw = zext i32 %i.aq to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !9
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ay = add i32 %.038.i, 1
  %i.az = zext i32 %.038.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = or i8 %i.bb, %i.x
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !9
  br label %bb.p

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.1.i = phi i32 [ %.038.i, %bb.l ], [ %i.ag, %bb.m ], [ %i.aq, %bb.n ], [ %i.ay, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %base64_decode.exit, label %.lr.ph.i, !llvm.loop !12

base64_decode.exit:                               ; preds = %.lr.ph.i, %bb.i, %bb.j, %bb.p, %bb.h
  %.034.i = phi i32 [ 0, %bb.h ], [ %.1.i, %bb.p ], [ 0, %bb.i ], [ 0, %bb.j ], [ %.038.i, %.lr.ph.i ]
  %i.bd = call ptr (...) @py_retval() #3
  call void @py_bytes_resize(ptr noundef %i.bd, i32 noundef %.034.i) #3
  br label %bb.q

bb.q:                                             ; preds = %base64_decode.exit, %bb.g
  %.0 = phi i1 [ true, %base64_decode.exit ], [ %i.k, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %.0, %bb.q ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @py_tobytes(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @py_newbytes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @py_retval(...) local_unnamed_addr #2

declare void @py_bytes_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
end_hunk_0
