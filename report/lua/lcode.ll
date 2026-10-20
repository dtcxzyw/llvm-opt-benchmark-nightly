Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lcode?download=true
inline.NumInlined: 205
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { ptr }
%struct.expdesc = type { i32, %union.anon, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"returns\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"multiple results\00", align 1
@luaK_prefix.ef = internal constant { i32, [4 x i8], %union.anon, i32, i32 } { i32 6, [4 x i8] zeroinitializer, %union.anon zeroinitializer, i32 -1, i32 -1 }, align 8
@previousinstruction.invalidinstruction = internal unnamed_addr constant i32 -1, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1
@luaP_opmodes = external hidden local_unnamed_addr constant [85 x i8], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"constants\00", align 1

; Function Attrs: noreturn nounwind uwtable
define hidden void @luaK_semerror(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = call ptr @luaO_pushvfstring(ptr noundef %i.b, ptr noundef %1, ptr noundef nonnull %2) #11 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @luaD_throw(ptr noundef %i.e, i8 noundef zeroext 4) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !81
  call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

declare hidden ptr @luaO_pushvfstring(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @luaK_exp2const(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %tonumeral.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.e, label %tonumeral.exit [
    i32 3, label %tonumeral.exit.sink.split
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 7, label %bb.e
    i32 13, label %bb.f
    i32 6, label %bb.g
    i32 5, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  br label %tonumeral.exit.sink.split

bb.d:                                             ; preds = %bb.b
  br label %tonumeral.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !29
  %i.j = or i8 %i.i, 64
  br label %tonumeral.exit.sink.split

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val21 = load i32, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !36
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !42
  %i.n = sext i32 %.val21 to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %.val.val.val, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.p, ptr %2, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !44
  br label %tonumeral.exit.sink.split

bb.g:                                             ; preds = %bb.b
  %.not15.i = icmp eq ptr %2, null
  br i1 %.not15.i, label %tonumeral.exit, label %.sink.split.i

bb.h:                                             ; preds = %bb.b
  %.not14.i = icmp eq ptr %2, null
  br i1 %.not14.i, label %tonumeral.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  %.sink.i = phi i8 [ 3, %bb.g ], [ 19, %bb.h ]
  %storemerge.i.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %storemerge.i = load double, ptr %storemerge.i.in, align 8, !tbaa !25
  store double %storemerge.i, ptr %2, align 8, !tbaa !25
  br label %tonumeral.exit.sink.split

tonumeral.exit.sink.split:                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.sink.split.i
  %.sink.i.sink = phi i8 [ %.sink.i, %.sink.split.i ], [ %i.r, %bb.f ], [ %i.j, %bb.e ], [ 0, %bb.d ], [ 17, %bb.c ], [ 1, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %.sink.i.sink, ptr %i.s, align 8, !tbaa !44
  br label %tonumeral.exit

tonumeral.exit:                                   ; preds = %tonumeral.exit.sink.split, %bb.b, %bb.h, %bb.g, %bb.a
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.g ], [ 1, %tonumeral.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @luaK_nil(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %2, %1                       ; 3 uses
  %i.b = add i32 %i.a, 255
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %i.g = icmp sgt i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %previousinstruction.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr [4 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -4
  br label %previousinstruction.exit

previousinstruction.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.m, %bb.b ], [ @previousinstruction.invalidinstruction, %bb.a ] ; 2 uses
  %i.n = load i32, ptr %.0.i, align 4, !tbaa !57  ; 4 uses
  %i.o = and i32 %i.n, 127
  %i.p = icmp eq i32 %i.o, 8
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %previousinstruction.exit
  %i.q = lshr i32 %i.n, 7
  %i.r = and i32 %i.q, 255                        ; 5 uses
  %i.s = lshr i32 %i.n, 16
  %i.t = and i32 %i.s, 255
  %i.u = add nuw nsw i32 %i.r, %i.t               ; 3 uses
  %.not = icmp sgt i32 %i.r, %1
  %i.v = add nuw nsw i32 %i.u, 1
  %.not39 = icmp sgt i32 %1, %i.v
  %or.cond = select i1 %.not, i1 true, i1 %.not39
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.not40 = icmp sgt i32 %1, %i.r
  %.not41 = icmp sgt i32 %i.r, %i.a
  %or.cond43 = select i1 %.not40, i1 true, i1 %.not41
  br i1 %or.cond43, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %1) ; 2 uses
  %.not42 = icmp slt i32 %i.u, %i.a
  %.031 = select i1 %.not42, i32 %i.b, i32 %i.u
  %i.w = and i32 %i.n, -16744440
  %i.x = shl i32 %spec.select, 7
  %i.y = and i32 %i.x, 32640
  %i.z = or disjoint i32 %i.y, %i.w
  %i.aa = sub i32 %.031, %spec.select
  %i.ab = shl i32 %i.aa, 16
  %i.ac = and i32 %i.ab, 16711680
  %i.ad = or disjoint i32 %i.z, %i.ac
  store i32 %i.ad, ptr %.0.i, align 4, !tbaa !57
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %previousinstruction.exit
  %i.ae = shl i32 %1, 7
  %i.af = shl i32 %2, 16
  %i.ag = add i32 %i.af, -65536
  %i.ah = or i32 %i.ae, %i.ag
  %i.ai = or disjoint i32 %i.ah, 8
  %i.aj = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.ai) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @luaK_codeABCk(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = shl i32 %2, 7
  %i.b = or i32 %i.a, %1
  %i.c = shl i32 %3, 16
  %i.d = or i32 %i.b, %i.c
  %i.e = shl i32 %4, 24
  %i.f = or i32 %i.d, %i.e
  %i.g = shl i32 %5, 15
  %i.h = or i32 %i.f, %i.g
  %i.i = tail call i32 @luaK_code(ptr noundef %0, i32 noundef %i.h)
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_concat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !57     ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !47
  %i.d = getelementptr i8, ptr %.val, i64 64
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %1, align 4, !tbaa !57
  br label %bb.g

bb.d:                                             ; preds = %.preheader, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.b, %.preheader ] ; 3 uses
  %i.e = sext i32 %.0 to i64                      ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57   ; 2 uses
  %i.h = lshr i32 %i.g, 7
  %i.i = add nsw i32 %i.h, -16777215              ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  %i.k = add nuw nsw i32 %.0, 1
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not13 = icmp eq i32 %i.l, -1
  %.not = select i1 %i.j, i1 true, i1 %.not13
  br i1 %.not, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %.neg.i = xor i32 %.0, -1
  %i.m = add i32 %2, %.neg.i                      ; 2 uses
  %i.n = add i32 %i.m, 16777215
  %or.cond.i = icmp ult i32 %i.n, 33554432
  br i1 %or.cond.i, label %fixjump.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.p, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit:                                     ; preds = %bb.e
  %i.q = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.e
  %i.r = and i32 %i.g, 127
  %i.s = shl i32 %i.m, 7
  %i.t = add i32 %i.s, 2147483520
  %i.u = or disjoint i32 %i.r, %i.t
  store i32 %i.u, ptr %i.q, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %fixjump.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @luaK_jump(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_ret(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, i32 72, i32 70
  %switch.selectcmp6 = icmp eq i32 %2, 0
  %switch.select7 = select i1 %switch.selectcmp6, i32 71, i32 %switch.select
  %i.a = add nsw i32 %2, 1                        ; 2 uses
  tail call void @luaY_checklimit(ptr noundef %0, i32 noundef %i.a, i32 noundef 255, ptr noundef nonnull @.str) #11
  %i.b = shl i32 %1, 7
  %i.c = or disjoint i32 %switch.select7, %i.b
  %i.d = shl i32 %i.a, 16
  %i.e = or i32 %i.c, %i.d
  %i.f = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.e) ; 0 uses
  ret void
}

declare hidden void @luaY_checklimit(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden i32 @luaK_getlabel(ptr nofree noundef captures(none) initializes((44, 48)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.b, ptr %i.c, align 4, !tbaa !46
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_patchlist(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 255, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @patchlistaux(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
bb.a:
  %.not20 = icmp eq i32 %1, -1
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !47
  %i.a = getelementptr i8, ptr %.val, i64 64
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !56
  %.not13.i = icmp eq i32 %3, 255
  %i.b = shl i32 %3, 7
  %i.c = and i32 %i.b, 32640
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %fixjump.exit17
  %.021 = phi i32 [ %1, %.lr.ph ], [ %i.k, %fixjump.exit17 ] ; 5 uses
  %i.d = sext i32 %.021 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.d ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57   ; 3 uses
  %i.g = lshr i32 %i.f, 7
  %i.h = add nsw i32 %i.g, -16777215              ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  %i.j = add nuw nsw i32 %.021, 1
  %i.k = add nsw i32 %i.j, %i.h                   ; 2 uses
  %i.l = icmp sgt i32 %.021, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57   ; 2 uses
  %i.o = and i32 %i.n, 127
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !25
  %i.s = and i8 %i.r, 16
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %getjumpcontrol.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %getjumpcontrol.exit.i

getjumpcontrol.exit.i:                            ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %i.f, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.m, %bb.c ]
  %i.u = and i32 %i.t, 127
  %.not.i = icmp eq i32 %i.u, 67
  br i1 %.not.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %getjumpcontrol.exit.i
  br i1 %.not13.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %i.t, 16
  %i.w = and i32 %i.v, 255
  %.not14.i = icmp eq i32 %3, %i.w
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = and i32 %i.t, -32701
  %i.y = or disjoint i32 %i.x, %i.c
  br label %bb.i
end_hunk_0
begin_hunk_1_@luaK_codeABx:bb.a
  %i.c = shl i32 %3, 15
  %i.d = or i32 %i.b, %i.c
  %i.e = tail call i32 @luaK_code(ptr noundef %0, i32 noundef %i.d)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_checkstack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %1, %i.c                     ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !67
  %i.h = zext i8 %i.g to i32
  %i.i = icmp sgt i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.j = trunc i32 %i.d to i8
  %i.k = load ptr, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.j, ptr %i.l, align 4, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_reserveregs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66    ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = add nsw i32 %1, %i.c                     ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !67
  %i.h = zext i8 %i.g to i32
  %i.i = icmp sgt i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %luaK_checkstack.exit

bb.b:                                             ; preds = %bb.a
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.j = trunc i32 %i.d to i8
  %i.k = load ptr, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i8 %i.j, ptr %i.l, align 4, !tbaa !67
  %.pre = load i8, ptr %i.a, align 1, !tbaa !66
  br label %luaK_checkstack.exit

luaK_checkstack.exit:                             ; preds = %bb.a, %bb.b
  %i.m = phi i8 [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.n = trunc i32 %1 to i8
  %i.o = add i8 %i.m, %i.n
  store i8 %i.o, ptr %i.a, align 1, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_int(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.TValue, align 8             ; 6 uses
  %i.a = add i64 %2, -65537
  %i.b = icmp ult i64 %i.a, -131072
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nsw i64 %2 to i32
  %i.d = shl i32 %1, 7
  %i.e = or disjoint i32 %i.d, 1
  %i.f = shl i32 %i.c, 15
  %i.g = add i32 %i.f, 2147450880
  %i.h = or i32 %i.g, %i.e
  %i.i = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.h) ; 0 uses
  br label %luaK_codek.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i64 %2, ptr %3, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 3, ptr %i.j, align 8, !tbaa !44
  %i.k = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.l = icmp slt i32 %i.k, 131072
  %i.m = shl i32 %1, 7                            ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = shl i32 %i.k, 15
  %i.o = or i32 %i.m, %i.n
  %i.p = or disjoint i32 %i.o, 3
  %i.q = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.p) ; 0 uses
  br label %luaK_codek.exit

bb.e:                                             ; preds = %bb.c
  %i.r = or disjoint i32 %i.m, 4
  %i.s = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.r) ; 0 uses
  %i.t = shl i32 %i.k, 7
  %i.u = or disjoint i32 %i.t, 84
  %i.v = call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.u) ; 0 uses
  br label %luaK_codek.exit

luaK_codek.exit:                                  ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_codecheckglobal(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %1) ; 0 uses
  tail call void @luaK_fixline(ptr noundef %0, i32 noundef %3)
  %i.b = icmp sgt i32 %2, 131070
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = shl i32 %i.d, 7
  %i.f = shl i32 %2, 15
  %i.g = add i32 %i.f, 32850
  %i.h = select i1 %i.b, i32 82, i32 %i.g
  %i.i = or i32 %i.h, %i.e
  %i.j = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.i) ; 0 uses
  tail call void @luaK_fixline(ptr noundef %0, i32 noundef %3)
  %i.k = load i32, ptr %1, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 8
  br i1 %i.l, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.c, align 8, !tbaa !25
  %i.n = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.o = zext i8 %i.n to i32
  %.not.i.i = icmp slt i32 %i.m, %i.o
  br i1 %.not.i.i, label %freeexp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66
  %i.r = add i8 %i.q, -1
  store i8 %i.r, ptr %i.p, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not = icmp eq i32 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.j = zext i8 %i.i to i32
  %.not15 = icmp slt i32 %i.h, %i.j
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.g, align 8, !tbaa !25
  tail call fastcc void @exp2reg(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.k)
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  %i.l = load i32, ptr %1, align 8, !tbaa !24
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %bb.f, label %freeexp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %i.p = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.q = zext i8 %i.p to i32
  %.not.i.i.i = icmp slt i32 %i.o, %i.q
  br i1 %.not.i.i.i, label %freeexp.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !66
  %i.t = add i8 %i.s, -1
  store i8 %i.t, ptr %i.r, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.g, %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !66    ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !67
  %.not.i = icmp ult i8 %i.v, %i.y
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.h

bb.h:                                             ; preds = %freeexp.exit.i
  %2 = zext i8 %i.v to i32
  %3 = add nuw nsw i32 %2, 1                      ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.z = trunc i32 %3 to i8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 %i.z, ptr %i.ab, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.u, align 1, !tbaa !66
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.h
  %i.ac = phi i8 [ %i.v, %freeexp.exit.i ], [ %.pre.i.i, %bb.h ]
  %i.ad = add i8 %i.ac, 1                         ; 2 uses
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !66
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %luaK_exp2nextreg.exit, %bb.d
  %.0.in = phi ptr [ %i.g, %bb.d ], [ %i.ag, %luaK_exp2nextreg.exit ], [ %i.g, %bb.b ]
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !25
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_fixline(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !25    ; 2 uses
  %.not.i = icmp eq i8 %i.i, -128
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !58
  %i.m = sub nsw i32 %i.l, %i.j                   ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !59
  %i.p = add i8 %i.o, -1                          ; 2 uses
  store i8 %i.p, ptr %i.n, align 2, !tbaa !59
  br label %removelastlineinfo.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !61
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 -127, ptr %i.t, align 2, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %removelastlineinfo.exit

removelastlineinfo.exit:                          ; preds = %bb.b, %bb.c
  %i.u = phi i8 [ %i.p, %bb.b ], [ -127, %bb.c ]  ; 2 uses
  %i.v = phi i32 [ %i.m, %bb.b ], [ %.pre, %bb.c ]
  %i.w = sub nsw i32 %1, %i.v                     ; 2 uses
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = add i32 %i.w, -128
  %i.z = icmp ult i32 %i.y, -255
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %removelastlineinfo.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ab = add i8 %i.u, 1
  store i8 %i.ab, ptr %i.aa, align 2, !tbaa !59
  %i.ac = icmp slt i8 %i.u, 0
  br i1 %i.ac, label %bb.e, label %savelineinfo.exit

bb.e:                                             ; preds = %bb.d, %removelastlineinfo.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.am = tail call ptr @luaM_growaux_(ptr noundef %i.ag, ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef nonnull %i.al, i32 noundef 8, i32 noundef 2147483647, ptr noundef nonnull @.str.5) #11 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !60
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !61 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !63
  %i.aq = add nsw i32 %i.an, 1
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %1, ptr %i.ar, align 4, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 1, ptr %i.as, align 2, !tbaa !59
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !65
  br label %savelineinfo.exit

savelineinfo.exit:                                ; preds = %bb.d, %bb.e
  %i.at = phi ptr [ %.pre3, %bb.e ], [ %i.e, %bb.d ]
  %.0.i = phi i32 [ -128, %bb.e ], [ %i.w, %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ba = tail call ptr @luaM_growaux_(ptr noundef %i.ay, ptr noundef %i.at, i32 noundef %i.x, ptr noundef nonnull %i.az, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.1) #11 ; 2 uses
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !65
  %i.bb = trunc nsw i32 %.0.i to i8
  %i.bc = sext i32 %i.x to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !25
  store i32 %1, ptr %i.au, align 8, !tbaa !58
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_setreturns(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = add nsw i32 %2, 1                        ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.h, i32 noundef 255, ptr noundef nonnull @.str.3) #11
  %i.i = load i32, ptr %1, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.i, 21
  %i.k = load i32, ptr %i.g, align 4, !tbaa !57
  %i.l = and i32 %i.k, 16777215
  %i.m = shl i32 %i.h, 24
  %i.n = or disjoint i32 %i.l, %i.m               ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %i.n, ptr %i.g, align 4, !tbaa !57
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = and i32 %i.n, -32641
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !66    ; 3 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = shl nuw nsw i32 %i.r, 7
  %i.t = or disjoint i32 %i.s, %i.o
  store i32 %i.t, ptr %i.g, align 4, !tbaa !57
  %i.u = load ptr, ptr %0, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i8, ptr %i.v, align 4, !tbaa !67
  %.not = icmp ult i8 %i.q, %i.w
  br i1 %.not, label %luaK_reserveregs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = add nuw nsw i32 %i.r, 1                    ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.x = trunc i32 %3 to i8
  %i.y = load ptr, ptr %0, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i8 %i.x, ptr %i.z, align 4, !tbaa !67
  %.pre.i = load i8, ptr %i.p, align 1, !tbaa !66
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %bb.c, %bb.d
  %i.aa = phi i8 [ %i.q, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ab = add i8 %i.aa, 1
  store i8 %i.ab, ptr %i.p, align 1, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %luaK_reserveregs.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @luaK_setoneret(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.d [
    i32 21, label %bb.b
    i32 22, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store i32 8, ptr %1, align 8, !tbaa !24
  %i.b = load ptr, ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57
  %i.j = lshr i32 %i.i, 7
  %i.k = and i32 %i.j, 255
  store i32 %i.k, ptr %i.e, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !57
  %i.t = and i32 %i.s, 16777215
  %i.u = or disjoint i32 %i.t, 33554432
  store i32 %i.u, ptr %i.r, align 4, !tbaa !57
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @luaK_vapar2local(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !68
  %i.d = or i8 %i.c, 2
  store i8 %i.d, ptr %i.b, align 1, !tbaa !68
  store i32 9, ptr %1, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_dischargevars(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %const2exp.exit [
    i32 13, label %bb.b
    i32 10, label %bb.i
    i32 9, label %bb.j
    i32 12, label %bb.k
    i32 16, label %bb.l
    i32 17, label %bb.m
    i32 18, label %bb.o
    i32 14, label %bb.q
    i32 15, label %bb.v
    i32 21, label %bb.aa
    i32 22, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %.val50 = load i32, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !36
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !42
  %i.e = sext i32 %.val50 to i64
  %i.f = getelementptr inbounds [24 x i8], ptr %.val.val.val, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !44
  %i.i = and i8 %i.h, 63
  switch i8 %i.i, label %const2exp.exit [
    i8 3, label %bb.c
    i8 19, label %bb.d
    i8 1, label %bb.e
    i8 17, label %bb.f
    i8 0, label %bb.g
    i8 4, label %bb.h
    i8 20, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  store i32 6, ptr %1, align 8, !tbaa !24
  %i.j = load i64, ptr %i.f, align 8, !tbaa !25
  store i64 %i.j, ptr %i.c, align 8, !tbaa !25
  br label %const2exp.exit

bb.d:                                             ; preds = %bb.b
  store i32 5, ptr %1, align 8, !tbaa !24
  %i.k = load double, ptr %i.f, align 8, !tbaa !25
  store double %i.k, ptr %i.c, align 8, !tbaa !25
  br label %const2exp.exit

bb.e:                                             ; preds = %bb.b
  store i32 3, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.f:                                             ; preds = %bb.b
  store i32 2, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.g:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.h:                                             ; preds = %bb.b, %bb.b
  store i32 7, ptr %1, align 8, !tbaa !24
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !25
  store ptr %i.l, ptr %i.c, align 8, !tbaa !25
  br label %const2exp.exit

bb.i:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 11 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !68
  %i.p = or i8 %i.o, 2
  store i8 %i.p, ptr %i.n, align 1, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !25
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.q, align 8, !tbaa !25
  store i32 8, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.k:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !25
  %i.v = shl i32 %i.u, 16
  %i.w = or disjoint i32 %i.v, 9
  %i.x = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.w)
  store i32 %i.x, ptr %i.t, align 8, !tbaa !25
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !25
  %i.ab = zext i8 %i.aa to i32
  %i.ac = load i16, ptr %i.y, align 8, !tbaa !25
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ab, 16
  %i.af = shl i32 %i.ad, 24
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = or disjoint i32 %i.ag, 11
  %i.ai = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.ah)
  store i32 %i.ai, ptr %i.y, align 8, !tbaa !25
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.m:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !25
  %i.am = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %.not.i = icmp ult i8 %i.al, %i.am
  br i1 %.not.i, label %freereg.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !66
  %i.ap = add i8 %i.ao, -1
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !66
  br label %freereg.exit
end_hunk_1
begin_hunk_2_@luaK_dischargevars:bb.a
  %i.bk = shl nuw nsw i32 %i.bh, 16
  %i.bl = shl i32 %i.bj, 24
  %i.bm = or disjoint i32 %i.bk, %i.bl
  %i.bn = or disjoint i32 %i.bm, 14
  %i.bo = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.bn)
  store i32 %i.bo, ptr %i.az, align 8, !tbaa !25
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.q:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !25  ; 3 uses
  %i.bs = zext i8 %i.br to i32
  %i.bt = load i16, ptr %i.bp, align 8, !tbaa !25
  %i.bu = sext i16 %i.bt to i32                   ; 3 uses
  %i.bv = icmp sgt i32 %i.bs, %i.bu
  %i.bw = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11 ; 2 uses
  br i1 %i.bv, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not.i.i = icmp ult i8 %i.br, %i.bw
  br i1 %.not.i.i, label %freereg.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !66
  %i.bz = add i8 %i.by, -1
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !66
  br label %freereg.exit.i

freereg.exit.i:                                   ; preds = %bb.s, %bb.r
  %i.ca = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.cb = zext i8 %i.ca to i32
  %.not.i11.i = icmp slt i32 %i.bu, %i.cb
  br i1 %.not.i11.i, label %freeregs.exit, label %freereg.exit12.sink.split.i

bb.t:                                             ; preds = %bb.q
  %i.cc = zext i8 %i.bw to i32
  %.not.i13.i = icmp samesign ult i32 %i.bu, %i.cc
  br i1 %.not.i13.i, label %freereg.exit14.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !66
  %i.cf = add i8 %i.ce, -1
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !66
  br label %freereg.exit14.i

freereg.exit14.i:                                 ; preds = %bb.u, %bb.t
  %i.cg = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %.not.i15.i = icmp ult i8 %i.br, %i.cg
  br i1 %.not.i15.i, label %freeregs.exit, label %freereg.exit12.sink.split.i

freereg.exit12.sink.split.i:                      ; preds = %freereg.exit14.i, %freereg.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !66
  %i.cj = add i8 %i.ci, -1
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !66
  br label %freeregs.exit

freeregs.exit:                                    ; preds = %freereg.exit.i, %freereg.exit14.i, %freereg.exit12.sink.split.i
  %i.ck = load i8, ptr %i.bq, align 2, !tbaa !25
  %i.cl = zext i8 %i.ck to i32
  %i.cm = load i16, ptr %i.bp, align 8, !tbaa !25
  %i.cn = zext i16 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cl, 16
  %i.cp = shl i32 %i.cn, 24
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = or disjoint i32 %i.cq, 12
  %i.cs = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.cr)
  store i32 %i.cs, ptr %i.bp, align 8, !tbaa !25
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.v:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !25  ; 3 uses
  %i.cw = zext i8 %i.cv to i32
  %i.cx = load i16, ptr %i.ct, align 8, !tbaa !25
  %i.cy = sext i16 %i.cx to i32                   ; 3 uses
  %i.cz = icmp sgt i32 %i.cw, %i.cy
  %i.da = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11 ; 2 uses
  br i1 %i.cz, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.not.i.i57 = icmp ult i8 %i.cv, %i.da
  br i1 %.not.i.i57, label %freereg.exit.i58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !66
  %i.dd = add i8 %i.dc, -1
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !66
  br label %freereg.exit.i58

freereg.exit.i58:                                 ; preds = %bb.x, %bb.w
  %i.de = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.df = zext i8 %i.de to i32
  %.not.i11.i59 = icmp slt i32 %i.cy, %i.df
  br i1 %.not.i11.i59, label %freeregs.exit60, label %freereg.exit12.sink.split.i56

bb.y:                                             ; preds = %bb.v
  %i.dg = zext i8 %i.da to i32
  %.not.i13.i53 = icmp samesign ult i32 %i.cy, %i.dg
  br i1 %.not.i13.i53, label %freereg.exit14.i54, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !66
  %i.dj = add i8 %i.di, -1
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !66
  br label %freereg.exit14.i54

freereg.exit14.i54:                               ; preds = %bb.z, %bb.y
  %i.dk = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %.not.i15.i55 = icmp ult i8 %i.cv, %i.dk
  br i1 %.not.i15.i55, label %freeregs.exit60, label %freereg.exit12.sink.split.i56

freereg.exit12.sink.split.i56:                    ; preds = %freereg.exit14.i54, %freereg.exit.i58
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !66
  %i.dn = add i8 %i.dm, -1
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !66
  br label %freeregs.exit60

freeregs.exit60:                                  ; preds = %freereg.exit.i58, %freereg.exit14.i54, %freereg.exit12.sink.split.i56
  %i.do = load i8, ptr %i.cu, align 2, !tbaa !25
  %i.dp = zext i8 %i.do to i32
  %i.dq = load i16, ptr %i.ct, align 8, !tbaa !25
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dp, 16
  %i.dt = shl i32 %i.dr, 24
  %i.du = or disjoint i32 %i.ds, %i.dt
  %i.dv = or disjoint i32 %i.du, 81
  %i.dw = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.dv)
  store i32 %i.dw, ptr %i.ct, align 8, !tbaa !25
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.aa:                                            ; preds = %bb.a
  store i32 8, ptr %1, align 8, !tbaa !24
  %i.dx = load ptr, ptr %0, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !25
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !57
  %i.ef = lshr i32 %i.ee, 7
  %i.eg = and i32 %i.ef, 255
  store i32 %i.eg, ptr %i.ea, align 8, !tbaa !25
  br label %const2exp.exit

bb.ab:                                            ; preds = %bb.a
  %i.eh = load ptr, ptr %0, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !25
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !57
  %i.ep = and i32 %i.eo, 16777215
  %i.eq = or disjoint i32 %i.ep, 33554432
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !57
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

const2exp.exit:                                   ; preds = %bb.a, %bb.ab, %bb.aa, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %freeregs.exit60, %freeregs.exit, %freereg.exit52, %freereg.exit, %bb.l, %bb.k, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.f = zext i8 %i.e to i32
  %.not.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i, label %freeexp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !66
  %i.i = add i8 %i.h, -1
  store i8 %i.i, ptr %i.g, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66    ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !67
  %.not = icmp ult i8 %i.k, %i.n
  br i1 %.not, label %luaK_reserveregs.exit, label %bb.d

bb.d:                                             ; preds = %freeexp.exit
  %2 = zext i8 %i.k to i32
  %3 = add nuw nsw i32 %2, 1                      ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %3, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.o = trunc i32 %3 to i8
  %i.p = load ptr, ptr %0, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.o, ptr %i.q, align 4, !tbaa !67
  %.pre.i = load i8, ptr %i.j, align 1, !tbaa !66
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.d
  %i.r = phi i8 [ %i.k, %freeexp.exit ], [ %.pre.i, %bb.d ]
  %i.s = add i8 %i.r, 1                           ; 2 uses
  store i8 %i.s, ptr %i.j, align 1, !tbaa !66
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.u)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  tail call fastcc void @discharge2reg(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 19
  br i1 %i.b, label %bb.b, label %luaK_concat.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %luaK_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !56 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.c, align 8, !tbaa !57
  br label %luaK_concat.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.g, %.preheader.i ] ; 3 uses
  %i.j = sext i32 %.0.i to i64                    ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57   ; 2 uses
  %i.m = lshr i32 %i.l, 7
  %i.n = add nsw i32 %i.m, -16777215              ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i = icmp eq i32 %i.q, -1
  %.not.i = select i1 %i.o, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %.neg.i.i = xor i32 %.0.i, -1
  %i.r = add i32 %i.e, %.neg.i.i                  ; 2 uses
  %i.s = add i32 %i.r, 16777215
  %or.cond.i.i = icmp ult i32 %i.s, 33554432
  br i1 %or.cond.i.i, label %fixjump.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.u, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i:                                   ; preds = %bb.f
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j
  %i.w = and i32 %i.l, 127
  %i.x = shl i32 %i.r, 7
  %i.y = add i32 %i.x, 2147483520
  %i.z = or disjoint i32 %i.y, %i.w
  store i32 %i.z, ptr %i.v, align 4, !tbaa !57
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %fixjump.exit.i, %bb.d, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23 ; 4 uses
  %.not = icmp eq i32 %i.ab, %i.ad
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %luaK_concat.exit
  %.not12.i = icmp eq i32 %i.ab, -1
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %.val10.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr i8, ptr %.val10.i, i64 64
  %.val10.val.i = load ptr, ptr %i.ae, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.0713.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.aw, %select.unfold.i ] ; 3 uses
  %i.af = sext i32 %.0713.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val10.val.i, i64 %i.af ; 3 uses
  %i.ah = icmp sgt i32 %.0713.i, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57 ; 2 uses
  %i.ak = and i32 %i.aj, 127
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = and i8 %i.an, 16
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %bb.k, label %getjumpcontrol.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i = load i32, ptr %i.ag, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i

getjumpcontrol.exit.i:                            ; preds = %bb.k, %bb.j
  %i.ap = phi i32 [ %.pre.i, %bb.k ], [ %i.aj, %bb.j ]
  %i.aq = and i32 %i.ap, 127
  %.not9.not.i = icmp eq i32 %i.aq, 67
  br i1 %.not9.not.i, label %select.unfold.i, label %need_value.exit

select.unfold.i:                                  ; preds = %getjumpcontrol.exit.i
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !57
  %i.as = lshr i32 %i.ar, 7
  %i.at = add nsw i32 %i.as, -16777215            ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  %i.av = add nuw nsw i32 %.0713.i, 1
  %i.aw = add nsw i32 %i.av, %i.at                ; 2 uses
  %.not15.i = icmp eq i32 %i.aw, -1
  %.not.i40 = select i1 %i.au, i1 true, i1 %.not15.i
  br i1 %.not.i40, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %select.unfold.i, %bb.h
  %.not12.i41 = icmp eq i32 %i.ad, -1
  br i1 %.not12.i41, label %need_value.exit54.thread, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.loopexit
  %.val10.i43 = load ptr, ptr %0, align 8, !tbaa !47
  %i.ax = getelementptr i8, ptr %.val10.i43, i64 64
  %.val10.val.i44 = load ptr, ptr %i.ax, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %select.unfold.i50, %.lr.ph.i42
  %.0713.i45 = phi i32 [ %i.ad, %.lr.ph.i42 ], [ %i.bp, %select.unfold.i50 ] ; 3 uses
  %i.ay = sext i32 %.0713.i45 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.val10.val.i44, i64 %i.ay ; 3 uses
  %i.ba = icmp sgt i32 %.0713.i45, 0
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.bd = and i32 %i.bc, 127
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = and i8 %i.bg, 16
  %.not.i.i53 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i53, label %bb.n, label %getjumpcontrol.exit.i47

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre.i46 = load i32, ptr %i.az, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i47

getjumpcontrol.exit.i47:                          ; preds = %bb.n, %bb.m
  %i.bi = phi i32 [ %.pre.i46, %bb.n ], [ %i.bc, %bb.m ]
  %i.bj = and i32 %i.bi, 127
  %.not9.not.i48 = icmp eq i32 %i.bj, 67
  br i1 %.not9.not.i48, label %select.unfold.i50, label %need_value.exit

select.unfold.i50:                                ; preds = %getjumpcontrol.exit.i47
  %i.bk = load i32, ptr %i.az, align 4, !tbaa !57
  %i.bl = lshr i32 %i.bk, 7
  %i.bm = add nsw i32 %i.bl, -16777215            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = add nuw nsw i32 %.0713.i45, 1
  %i.bp = add nsw i32 %i.bo, %i.bm                ; 2 uses
  %.not15.i51 = icmp eq i32 %i.bp, -1
  %.not.i52 = select i1 %i.bn, i1 true, i1 %.not15.i51
  br i1 %.not.i52, label %need_value.exit54.thread, label %bb.l

need_value.exit:                                  ; preds = %getjumpcontrol.exit.i, %getjumpcontrol.exit.i47
  %i.bq = load i32, ptr %1, align 8, !tbaa !24
  %i.br = icmp eq i32 %i.bq, 19
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %need_value.exit
  %i.bs = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  br label %bb.p

bb.p:                                             ; preds = %need_value.exit, %bb.o
end_hunk_2
begin_hunk_3_@luaK_storevar:bb.a

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !66
  %i.cx = add i8 %i.cw, -1
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !66
  br label %freeexp.exit40

freeexp.exit40:                                   ; preds = %bb.q, %bb.p, %bb.o, %freeexp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.e [
    i32 19, label %bb.b
    i32 4, label %luaK_concat.exit
    i32 5, label %luaK_concat.exit
    i32 6, label %luaK_concat.exit
    i32 7, label %luaK_concat.exit
    i32 2, label %luaK_concat.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val13 = load i32, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 64
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.d = sext i32 %.val13 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.d ; 3 uses
  %i.f = icmp sgt i32 %.val13, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !57   ; 2 uses
  %i.i = and i32 %i.h, 127
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !25
  %i.m = and i8 %i.l, 16
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %bb.d, label %negatecondition.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !57
  br label %negatecondition.exit

negatecondition.exit:                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %.pre.i, %bb.d ], [ %i.h, %bb.c ]
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.c ]
  %i.o = xor i32 %i.n, 32768
  store i32 %i.o, ptr %.0.i.i, align 4, !tbaa !57
  %i.p = load i32, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %negatecondition.exit
  %.0 = phi i32 [ %i.q, %bb.e ], [ %i.p, %negatecondition.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.s = icmp eq i32 %.0, -1
  br i1 %i.s, label %luaK_concat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !57   ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.v = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.v, align 8, !tbaa !56 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0, ptr %i.r, align 4, !tbaa !57
  br label %luaK_concat.exit

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i = phi i32 [ %i.ad, %bb.i ], [ %i.t, %.preheader.i ] ; 3 uses
  %i.w = sext i32 %.0.i to i64                    ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57   ; 2 uses
  %i.z = lshr i32 %i.y, 7
  %i.aa = add nsw i32 %i.z, -16777215             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %i.ac = add nuw nsw i32 %.0.i, 1
  %i.ad = add nsw i32 %i.ac, %i.aa                ; 2 uses
  %.not13.i = icmp eq i32 %i.ad, -1
  %.not.i = select i1 %i.ab, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %.neg.i.i = xor i32 %.0.i, -1
  %i.ae = add i32 %.0, %.neg.i.i                  ; 2 uses
  %i.af = add i32 %i.ae, 16777215
  %or.cond.i.i = icmp ult i32 %i.af, 33554432
  br i1 %or.cond.i.i, label %fixjump.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.ah, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i:                                   ; preds = %bb.j
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.w
  %i.aj = and i32 %i.y, 127
  %i.ak = shl i32 %i.ae, 7
  %i.al = add i32 %i.ak, 2147483520
  %i.am = or disjoint i32 %i.al, %i.aj
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !57
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %bb.h, %fixjump.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef readonly %0, i32 noundef %i.ao, i32 noundef %i.aq, i32 noundef 255, i32 noundef %i.aq)
  store i32 -1, ptr %i.an, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @jumponcond(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %.thread.thread [
    i32 20, label %bb.b
    i32 8, label %discharge2anyreg.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57   ; 2 uses
  %i.j = and i32 %i.i, 127
  %i.k = icmp eq i32 %i.j, 51
  br i1 %i.k, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !25    ; 2 uses
  %.not.i.i = icmp eq i8 %i.s, -128
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !58
  %i.w = sub nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !59
  %i.z = add i8 %i.y, -1
  store i8 %i.z, ptr %i.x, align 2, !tbaa !59
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !61
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 -127, ptr %i.ad, align 2, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = add nsw i32 %i.m, -1
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !45
  %i.af = lshr i32 %i.i, 9
  %i.ag = and i32 %i.af, 32640
  %i.ah = shl nuw nsw i32 %2, 15
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = xor i32 %i.ai, 32834
  br label %bb.i

.thread.thread:                                   ; preds = %bb.a, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66  ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !67
  %.not5.i = icmp ult i8 %i.al, %i.ao
  br i1 %.not5.i, label %discharge2anyreg.exit, label %bb.g

bb.g:                                             ; preds = %.thread.thread
  %3 = zext i8 %i.al to i32
  %4 = add nuw nsw i32 %3, 1                      ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %4, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.ap = trunc i32 %4 to i8
  %i.aq = load ptr, ptr %0, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i8 %i.ap, ptr %i.ar, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.ak, align 1, !tbaa !66
  br label %discharge2anyreg.exit

discharge2anyreg.exit:                            ; preds = %.thread.thread, %bb.g
  %i.as = phi i8 [ %i.al, %.thread.thread ], [ %.pre.i.i, %bb.g ]
  %i.at = add i8 %i.as, 1                         ; 2 uses
  store i8 %i.at, ptr %i.ak, align 1, !tbaa !66
  %i.au = zext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.av)
  %.pre = load i32, ptr %1, align 8, !tbaa !24
  %i.aw = icmp eq i32 %.pre, 8
  br i1 %i.aw, label %discharge2anyreg.exit.thread, label %freeexp.exit

discharge2anyreg.exit.thread:                     ; preds = %bb.a, %discharge2anyreg.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !25
  %i.az = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.ba = zext i8 %i.az to i32
  %.not.i.i17 = icmp slt i32 %i.ay, %i.ba
  br i1 %.not.i.i17, label %freeexp.exit, label %bb.h

bb.h:                                             ; preds = %discharge2anyreg.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  %i.bd = add i8 %i.bc, -1
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %discharge2anyreg.exit, %discharge2anyreg.exit.thread, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !25
  %i.bg = shl i32 %i.bf, 16
  %i.bh = shl nuw nsw i32 %2, 15
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = or disjoint i32 %i.bi, 32707
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %freeexp.exit
  %.sink = phi i32 [ %i.aj, %bb.f ], [ %i.bj, %freeexp.exit ]
  %i.bk = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %.sink) ; 0 uses
  %i.bl = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  ret i32 %i.bl
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_self(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !25   ; 3 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !24
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.g = zext i8 %i.f to i32
  %.not.i.i = icmp slt i32 %i.c, %i.g
  br i1 %.not.i.i, label %freeexp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 6 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  store i32 %i.m, ptr %i.b, align 8, !tbaa !25
  store i32 8, ptr %1, align 8, !tbaa !24
  %i.n = load i8, ptr %i.k, align 1, !tbaa !66    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, 2                  ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i8, ptr %i.r, align 4, !tbaa !67
  %i.t = zext i8 %i.s to i32
  %i.u = icmp samesign ugt i32 %i.p, %i.t
  br i1 %i.u, label %bb.d, label %luaK_reserveregs.exit

bb.d:                                             ; preds = %freeexp.exit
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.v = trunc i32 %i.p to i8
  %i.w = load ptr, ptr %0, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i8 %i.v, ptr %i.x, align 4, !tbaa !67
  %.pre.i = load i8, ptr %i.k, align 1, !tbaa !66
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.d
  %i.y = phi i8 [ %i.n, %freeexp.exit ], [ %.pre.i, %bb.d ]
  %i.z = add i8 %i.y, 2
  store i8 %i.z, ptr %i.k, align 1, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !82
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %luaK_reserveregs.exit
  %i.af = tail call fastcc i32 @luaK_exp2K(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !25
  %i.ah = shl nuw nsw i32 %i.m, 7
  %i.ai = shl i32 %i.c, 16
  %i.aj = shl i32 %i.ag, 24
  %i.ak = or disjoint i32 %i.ai, %i.ah
  %i.al = or disjoint i32 %i.ak, 20
  %i.am = or i32 %i.aj, %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %luaK_reserveregs.exit
  %i.an = tail call i32 @luaK_exp2anyreg(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  %i.ao = shl nuw nsw i32 %i.m, 7                 ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 128
  %i.aq = shl i32 %i.c, 16                        ; 2 uses
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.ar) ; 0 uses
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !25
  %i.au = shl i32 %i.at, 24
  %i.av = or disjoint i32 %i.ao, %i.au
  %i.aw = or i32 %i.av, %i.aq
  %i.ax = or disjoint i32 %i.aw, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.ax, %bb.g ], [ %i.am, %bb.f ]
  %i.ay = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %.sink) ; 0 uses
  %i.az = load i32, ptr %2, align 8, !tbaa !24
  %i.ba = icmp eq i32 %i.az, 8
  br i1 %i.ba, label %bb.i, label %freeexp.exit27

bb.i:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %i.aa, align 8, !tbaa !25
  %i.bc = tail call zeroext i8 @luaY_nvarstack(ptr noundef nonnull %0) #11
  %i.bd = zext i8 %i.bc to i32
  %.not.i.i26 = icmp slt i32 %i.bb, %i.bd
  br i1 %.not.i.i26, label %freeexp.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load i8, ptr %i.k, align 1, !tbaa !66
  %i.bf = add i8 %i.be, -1
  store i8 %i.bf, ptr %i.k, align 1, !tbaa !66
  br label %freeexp.exit27

freeexp.exit27:                                   ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @luaK_exp2K(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.TValue, align 8             ; 6 uses
  %3 = alloca %struct.TValue, align 8             ; 6 uses
  %4 = alloca %struct.TValue, align 8             ; 5 uses
  %5 = alloca %struct.TValue, align 8             ; 5 uses
  %6 = alloca %struct.TValue, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.e, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 1, label %bb.e
    i32 6, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 4, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 17, ptr %i.f, align 8, !tbaa !44
  %i.g = call fastcc i32 @k2proto(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_3
begin_hunk_4_@luaK_indexed:bb.a

bb.f:                                             ; preds = %thread-pre-split
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !25
  br label %bb.h

bb.g:                                             ; preds = %thread-pre-split
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !25
  %i.aw = trunc i32 %i.av to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi i8 [ %i.at, %bb.f ], [ %i.aw, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ax, ptr %i.ay, align 2, !tbaa !25
  %i.az = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.az, label %isCint.exit.thread [
    i32 4, label %bb.i
    i32 6, label %isKint.exit.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !23
  %.not.i42 = icmp eq i32 %i.bb, %i.bd
  br i1 %.not.i42, label %bb.j, label %isCint.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !25 ; 3 uses
  %i.bg = icmp slt i32 %i.bf, 256
  br i1 %i.bg, label %isKstr.exit43, label %isCint.exit.thread

isKstr.exit43:                                    ; preds = %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !44
  %.not48 = icmp eq i8 %i.bn, 68
  br i1 %.not48, label %bb.k, label %isCint.exit.thread

bb.k:                                             ; preds = %isKstr.exit43
  %i.bo = trunc i32 %i.bf to i16
  %i.bp = and i16 %i.bo, 255
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.bp, ptr %i.bq, align 8, !tbaa !25
  br label %bb.m

isKint.exit.i:                                    ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %.not.i.not.i = icmp eq i32 %i.bs, %i.bu
  br i1 %.not.i.not.i, label %isCint.exit, label %isCint.exit.thread

isCint.exit:                                      ; preds = %isKint.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !25 ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 255
  br i1 %i.bx, label %isCint.exit.thread, label %bb.l

bb.l:                                             ; preds = %isCint.exit
  %i.by = trunc nuw nsw i64 %i.bw to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.by, ptr %i.bz, align 8, !tbaa !25
  br label %bb.m

isCint.exit.thread:                               ; preds = %bb.h, %bb.i, %bb.j, %isKstr.exit43, %isKint.exit.i, %isCint.exit
  %i.ca = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2)
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = and i16 %i.cb, 255
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %isCint.exit.thread, %bb.l, %bb.e, %thread-pre-split.thread
  %.sink = phi i32 [ 18, %bb.k ], [ 14, %isCint.exit.thread ], [ 17, %bb.l ], [ 15, %bb.e ], [ 16, %thread-pre-split.thread ]
  %.05664 = phi i32 [ %.056, %bb.k ], [ %.056, %isCint.exit.thread ], [ %.056, %bb.l ], [ %.056, %bb.e ], [ %.05665, %thread-pre-split.thread ]
  store i32 %.sink, ptr %1, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.05664, ptr %i.ce, align 4, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 0, ptr %i.cf, align 1, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  switch i32 %1, label %codenot.exit [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 3, label %bb.c
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = add nuw nsw i32 %1, 12
  %i.b = tail call fastcc i32 @constfolding(ptr noundef %0, i32 noundef %i.a, ptr noundef %2, ptr noundef nonnull @luaK_prefix.ef)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %codenot.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = add nuw nsw i32 %1, 49
  %i.d = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  %i.e = load i32, ptr %2, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.e, 8
  br i1 %i.f, label %bb.d, label %codeunexpval.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.j = zext i8 %i.i to i32
  %.not.i.i.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %codeunexpval.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.k, align 1, !tbaa !66
  br label %codeunexpval.exit

codeunexpval.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.n = shl i32 %i.d, 16
  %i.o = or i32 %i.n, %i.c
  %i.p = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  store i32 20, ptr %2, align 8, !tbaa !24
  tail call void @luaK_fixline(ptr noundef %0, i32 noundef %3)
  br label %codenot.exit

bb.f:                                             ; preds = %bb.a
  %i.r = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.r, label %bb.o [
    i32 1, label %bb.g
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 6, label %bb.h
    i32 7, label %bb.h
    i32 2, label %bb.h
    i32 19, label %bb.i
    i32 8, label %discharge2anyreg.exit.thread.i
    i32 20, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  store i32 2, ptr %2, align 8, !tbaa !24
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i32 3, ptr %2, align 8, !tbaa !24
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val21.i = load i32, ptr %i.s, align 8, !tbaa !25 ; 2 uses
  %i.t = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.u = sext i32 %.val21.i to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.u ; 3 uses
  %i.w = icmp sgt i32 %.val21.i, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57   ; 2 uses
  %i.z = and i32 %i.y, 127
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = and i8 %i.ac, 16
  %.not.i.i.i11 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i11, label %bb.k, label %negatecondition.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i.i = load i32, ptr %i.v, align 4, !tbaa !57
  br label %negatecondition.exit.i

negatecondition.exit.i:                           ; preds = %bb.k, %bb.j
  %i.ae = phi i32 [ %.pre.i.i, %bb.k ], [ %i.y, %bb.j ]
  %.0.i.i.i = phi ptr [ %i.v, %bb.k ], [ %i.x, %bb.j ]
  %i.af = xor i32 %i.ae, 32768
  store i32 %i.af, ptr %.0.i.i.i, align 4, !tbaa !57
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !66  ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !67
  %.not5.i.i = icmp ult i8 %i.ah, %i.ak
  br i1 %.not5.i.i, label %discharge2anyreg.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %4 = zext i8 %i.ah to i32
  %5 = add nuw nsw i32 %4, 1                      ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %5, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.al = trunc i32 %5 to i8
  %i.am = load ptr, ptr %0, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i8 %i.al, ptr %i.an, align 4, !tbaa !67
  %.pre.i.i.i = load i8, ptr %i.ag, align 1, !tbaa !66
  br label %discharge2anyreg.exit.i

discharge2anyreg.exit.i:                          ; preds = %bb.m, %bb.l
  %i.ao = phi i8 [ %i.ah, %bb.l ], [ %.pre.i.i.i, %bb.m ]
  %i.ap = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !66
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.ar)
  %.pre.i = load i32, ptr %2, align 8, !tbaa !24
  %i.as = icmp eq i32 %.pre.i, 8
  br i1 %i.as, label %discharge2anyreg.exit.thread.i, label %freeexp.exit.i

discharge2anyreg.exit.thread.i:                   ; preds = %discharge2anyreg.exit.i, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25
  %i.av = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.aw = zext i8 %i.av to i32
  %.not.i.i22.i = icmp slt i32 %i.au, %i.aw
  br i1 %.not.i.i22.i, label %freeexp.exit.i, label %bb.n

bb.n:                                             ; preds = %discharge2anyreg.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !66
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.n, %discharge2anyreg.exit.thread.i, %discharge2anyreg.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25
  %i.bc = shl i32 %i.bb, 16
  %i.bd = or disjoint i32 %i.bc, 51
  %i.be = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.bd)
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !25
  store i32 20, ptr %2, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %freeexp.exit.i, %negatecondition.exit.i, %bb.h, %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !23 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !22 ; 3 uses
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !23
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !22
  %.not6.i.i = icmp eq i32 %i.bi, -1
  br i1 %.not6.i.i, label %removevalues.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %.val4.i.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.bj = getelementptr i8, ptr %.val4.i.i, i64 64
  %.val4.val.i.i = load ptr, ptr %i.bj, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %patchtestreg.exit.i.i, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.bi, %.lr.ph.i.i ], [ %i.cf, %patchtestreg.exit.i.i ] ; 3 uses
  %i.bk = sext i32 %.07.i.i to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val4.val.i.i, i64 %i.bk ; 4 uses
  %i.bm = icmp sgt i32 %.07.i.i, 0
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !57 ; 2 uses
  %i.bp = and i32 %i.bo, 127
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bt = and i8 %i.bs, 16
  %.not.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %getjumpcontrol.exit.i.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre.i.i23.i = load i32, ptr %i.bl, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i.i.i

getjumpcontrol.exit.i.i.i:                        ; preds = %bb.r, %bb.q
  %i.bu = phi i32 [ %.pre.i.i23.i, %bb.r ], [ %i.bo, %bb.q ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.bn, %bb.q ]
  %i.bv = and i32 %i.bu, 127
  %.not.i.i24.i = icmp eq i32 %i.bv, 67
  br i1 %.not.i.i24.i, label %bb.s, label %patchtestreg.exit.i.i

bb.s:                                             ; preds = %getjumpcontrol.exit.i.i.i
  %i.bw = lshr i32 %i.bu, 9
  %i.bx = and i32 %i.bw, 32640
  %i.by = and i32 %i.bu, 32834
  %i.bz = or disjoint i32 %i.bx, %i.by
  store i32 %i.bz, ptr %.0.i.i.i.i, align 4, !tbaa !57
  br label %patchtestreg.exit.i.i

patchtestreg.exit.i.i:                            ; preds = %bb.s, %getjumpcontrol.exit.i.i.i
  %i.ca = load i32, ptr %i.bl, align 4, !tbaa !57
  %i.cb = lshr i32 %i.ca, 7
  %i.cc = add nsw i32 %i.cb, -16777215            ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  %i.ce = add nuw nsw i32 %.07.i.i, 1
  %i.cf = add nsw i32 %i.ce, %i.cc                ; 2 uses
  %.not8.i.i = icmp eq i32 %i.cf, -1
  %.not.i25.i = select i1 %i.cd, i1 true, i1 %.not8.i.i
  br i1 %.not.i25.i, label %removevalues.exitthread-pre-split.i, label %bb.p

removevalues.exitthread-pre-split.i:              ; preds = %patchtestreg.exit.i.i
  %.pr.i = load i32, ptr %i.bh, align 8, !tbaa !22
  br label %removevalues.exit.i

removevalues.exit.i:                              ; preds = %removevalues.exitthread-pre-split.i, %bb.o
  %i.cg = phi i32 [ %.pr.i, %removevalues.exitthread-pre-split.i ], [ %i.bg, %bb.o ] ; 2 uses
  %.not6.i26.i = icmp eq i32 %i.cg, -1
  br i1 %.not6.i26.i, label %codenot.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %removevalues.exit.i
  %.val4.i28.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.ch = getelementptr i8, ptr %.val4.i28.i, i64 64
  %.val4.val.i29.i = load ptr, ptr %i.ch, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %patchtestreg.exit.i35.i, %.lr.ph.i27.i
  %.07.i30.i = phi i32 [ %i.cg, %.lr.ph.i27.i ], [ %i.dd, %patchtestreg.exit.i35.i ] ; 3 uses
  %i.ci = sext i32 %.07.i30.i to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.val4.val.i29.i, i64 %i.ci ; 4 uses
  %i.ck = icmp sgt i32 %.07.i30.i, 0
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !57 ; 2 uses
  %i.cn = and i32 %i.cm, 127
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !25
  %i.cr = and i8 %i.cq, 16
  %.not.i.i.i38.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i38.i, label %bb.v, label %getjumpcontrol.exit.i.i32.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre.i.i31.i = load i32, ptr %i.cj, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i.i32.i

getjumpcontrol.exit.i.i32.i:                      ; preds = %bb.v, %bb.u
  %i.cs = phi i32 [ %.pre.i.i31.i, %bb.v ], [ %i.cm, %bb.u ] ; 3 uses
  %.0.i.i.i33.i = phi ptr [ %i.cj, %bb.v ], [ %i.cl, %bb.u ]
  %i.ct = and i32 %i.cs, 127
  %.not.i.i34.i = icmp eq i32 %i.ct, 67
  br i1 %.not.i.i34.i, label %bb.w, label %patchtestreg.exit.i35.i

bb.w:                                             ; preds = %getjumpcontrol.exit.i.i32.i
  %i.cu = lshr i32 %i.cs, 9
  %i.cv = and i32 %i.cu, 32640
  %i.cw = and i32 %i.cs, 32834
  %i.cx = or disjoint i32 %i.cv, %i.cw
  store i32 %i.cx, ptr %.0.i.i.i33.i, align 4, !tbaa !57
  br label %patchtestreg.exit.i35.i

patchtestreg.exit.i35.i:                          ; preds = %bb.w, %getjumpcontrol.exit.i.i32.i
  %i.cy = load i32, ptr %i.cj, align 4, !tbaa !57
  %i.cz = lshr i32 %i.cy, 7
  %i.da = add nsw i32 %i.cz, -16777215            ; 2 uses
  %i.db = icmp eq i32 %i.da, -1
  %i.dc = add nuw nsw i32 %.07.i30.i, 1
  %i.dd = add nsw i32 %i.dc, %i.da                ; 2 uses
  %.not8.i36.i = icmp eq i32 %i.dd, -1
  %.not.i37.i = select i1 %i.db, i1 true, i1 %.not8.i36.i
  br i1 %.not.i37.i, label %codenot.exit, label %bb.t

codenot.exit:                                     ; preds = %patchtestreg.exit.i35.i, %removevalues.exit.i, %bb.a, %bb.b, %codeunexpval.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @constfolding(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.TValue, align 8             ; 6 uses
  %5 = alloca %struct.TValue, align 8             ; 6 uses
  %6 = alloca %struct.TValue, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.f, label %.critedge [
    i32 6, label %bb.d
    i32 5, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@constfolding:bb.a
bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.p = call i32 @luaV_tointegerns(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not.i26 = icmp eq i32 %i.p, 0
  br i1 %.not.i26, label %validop.exit.thread33, label %validop.exit

validop.exit.thread33:                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge

.split:                                           ; preds = %bb.g, %bb.g, %bb.g
  %i.q = bitcast double %storemerge.i22 to i64
  %i.r = sitofp i64 %i.q to double
  %i.s = select i1 %i.m, double %i.r, double %storemerge.i22
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %.critedge, label %validop.exit.thread

validop.exit:                                     ; preds = %bb.h
  %i.u = call i32 @luaV_tointegerns(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not = icmp eq i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not, label %.critedge, label %validop.exit.thread

validop.exit.thread:                              ; preds = %.split, %bb.g, %validop.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = call i32 @luaO_rawarith(ptr noundef %i.y, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !44
  %i.ac = icmp eq i8 %i.ab, 3
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %validop.exit.thread
  store i32 6, ptr %2, align 8, !tbaa !24
  %i.ad = load i64, ptr %6, align 8, !tbaa !25
  store i64 %i.ad, ptr %storemerge.i.in, align 8, !tbaa !25
  br label %.critedge

bb.j:                                             ; preds = %validop.exit.thread
  %i.ae = load double, ptr %6, align 8, !tbaa !25 ; 2 uses
  %or.cond = fcmp ueq double %i.ae, 0.000000e+00
  br i1 %or.cond, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 5, ptr %2, align 8, !tbaa !24
  store double %i.ae, ptr %storemerge.i.in, align 8, !tbaa !25
  br label %.critedge

.critedge:                                        ; preds = %validop.exit.thread33, %.split, %bb.d, %bb.e, %bb.a, %bb.b, %bb.i, %bb.k, %bb.j, %validop.exit
  %.1 = phi i32 [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %validop.exit ], [ 0, %bb.a ], [ 1, %bb.k ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %.split ], [ 0, %validop.exit.thread33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_infix(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  switch i32 %1, label %tonumeral.exit [
    i32 19, label %bb.b
    i32 20, label %bb.c
    i32 12, label %bb.l
    i32 0, label %bb.p
    i32 1, label %bb.p
    i32 2, label %bb.p
    i32 5, label %bb.p
    i32 6, label %bb.p
    i32 3, label %bb.p
    i32 4, label %bb.p
    i32 7, label %bb.p
    i32 8, label %bb.p
    i32 9, label %bb.p
    i32 10, label %bb.p
    i32 11, label %bb.p
    i32 13, label %bb.s
    i32 16, label %bb.s
    i32 14, label %bb.w
    i32 15, label %bb.w
    i32 17, label %bb.w
    i32 18, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @luaK_goiftrue(ptr noundef %0, ptr noundef %2)
  br label %tonumeral.exit

bb.c:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.b = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.b, label %bb.e [
    i32 19, label %bb.d
    i32 1, label %luaK_goiffalse.exit
    i32 3, label %luaK_goiffalse.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq i32 %.0.i, -1
  br i1 %i.g, label %luaK_goiffalse.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load i32, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.h, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.j = getelementptr i8, ptr %.val.i.i, i64 64
  %.val.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !56 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0.i, ptr %i.f, align 8, !tbaa !57
  br label %luaK_goiffalse.exit

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.r, %bb.i ], [ %i.h, %.preheader.i.i ] ; 3 uses
  %i.k = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !57   ; 2 uses
  %i.n = lshr i32 %i.m, 7
  %i.o = add nsw i32 %i.n, -16777215              ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  %i.q = add nuw nsw i32 %.0.i.i, 1
  %i.r = add nsw i32 %i.q, %i.o                   ; 2 uses
  %.not13.i.i = icmp eq i32 %i.r, -1
  %.not.i.i = select i1 %i.p, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %bb.i
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.s = add i32 %.0.i, %.neg.i.i.i               ; 2 uses
  %i.t = add i32 %i.s, 16777215
  %or.cond.i.i.i = icmp ult i32 %i.t, 33554432
  br i1 %or.cond.i.i.i, label %fixjump.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.v, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.j
  %i.w = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.k
  %i.x = and i32 %i.m, 127
  %i.y = shl i32 %i.s, 7
  %i.z = add i32 %i.y, 2147483520
  %i.aa = or disjoint i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !57
  br label %luaK_goiffalse.exit

luaK_goiffalse.exit:                              ; preds = %bb.c, %bb.c, %bb.f, %bb.h, %fixjump.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !45 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef readonly %0, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef 255, i32 noundef %i.ae)
  store i32 -1, ptr %i.ab, align 4, !tbaa !23
  br label %tonumeral.exit

bb.l:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.ag = load i32, ptr %2, align 8, !tbaa !24
  %i.ah = icmp eq i32 %i.ag, 8
  br i1 %i.ah, label %bb.m, label %freeexp.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !25
  %i.ak = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.al = zext i8 %i.ak to i32
  %.not.i.i.i = icmp slt i32 %i.aj, %i.al
  br i1 %.not.i.i.i, label %freeexp.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66
  %i.ao = add i8 %i.an, -1
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.n, %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !66  ; 3 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i8, ptr %i.as, align 4, !tbaa !67
  %.not.i = icmp ult i8 %i.aq, %i.at
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.o

bb.o:                                             ; preds = %freeexp.exit.i
  %3 = zext i8 %i.aq to i32
  %4 = add nuw nsw i32 %3, 1                      ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %4, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.au = trunc i32 %4 to i8
  %i.av = load ptr, ptr %0, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i8 %i.au, ptr %i.aw, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.ap, align 1, !tbaa !66
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.o
  %i.ax = phi i8 [ %i.aq, %freeexp.exit.i ], [ %.pre.i.i, %bb.o ]
  %i.ay = add i8 %i.ax, 1                         ; 2 uses
  store i8 %i.ay, ptr %i.ap, align 1, !tbaa !66
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.ba)
  br label %tonumeral.exit

bb.p:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %.not.i19 = icmp eq i32 %i.bc, %i.be
  br i1 %.not.i19, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %2, align 8, !tbaa !24
  %.off = add i32 %i.bf, -5
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %tonumeral.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2) ; 0 uses
  br label %tonumeral.exit

bb.s:                                             ; preds = %bb.a, %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !23
  %.not.i21 = icmp eq i32 %i.bi, %i.bk
  br i1 %.not.i21, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bl = load i32, ptr %2, align 8, !tbaa !24
  %.off34 = add i32 %i.bl, -5
  %switch35 = icmp ult i32 %.off34, 2
  br i1 %switch35, label %tonumeral.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bm = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef nonnull %2)
  %.not.i24 = icmp eq i32 %i.bm, 0
  br i1 %.not.i24, label %bb.v, label %tonumeral.exit

bb.v:                                             ; preds = %bb.u
  %i.bn = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2) ; 0 uses
  br label %tonumeral.exit

bb.w:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bo = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.bo, label %bb.ab [
    i32 6, label %bb.x
    i32 5, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !25
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !72
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !25
  %i.bt = call i32 @luaV_flttointeger(double noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not.i26 = icmp eq i32 %i.bt, 0
  br i1 %.not.i26, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !23
  %.not9.i = icmp eq i32 %i.bv, %i.bx
  br i1 %.not9.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = load i64, ptr %i.a, align 8, !tbaa !72
  %i.bz = add i64 %i.by, -129
  %i.ca = icmp ult i64 %i.bz, -256
  br i1 %i.ca, label %bb.ab, label %isSCnumber.exit

isSCnumber.exit:                                  ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %tonumeral.exit

bb.ab:                                            ; preds = %bb.y, %bb.w, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cb = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2) ; 0 uses
  br label %tonumeral.exit

tonumeral.exit:                                   ; preds = %bb.t, %bb.q, %bb.ab, %isSCnumber.exit, %bb.v, %bb.u, %bb.a, %bb.r, %luaK_exp2nextreg.exit, %luaK_goiffalse.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_posfix(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.expdesc, align 8            ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.expdesc, align 8            ; 4 uses
  %7 = alloca %struct.expdesc, align 8            ; 4 uses
  %8 = alloca %struct.expdesc, align 8            ; 4 uses
  %9 = alloca %struct.expdesc, align 8            ; 4 uses
  %10 = alloca %struct.expdesc, align 8           ; 4 uses
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %3)
  %i.d = icmp ult i32 %1, 12
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @constfolding(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %codeconcat.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i32 %1, label %codeconcat.exit [
    i32 19, label %bb.d
    i32 20, label %bb.j
    i32 12, label %bb.p
    i32 0, label %bb.aa
    i32 2, label %bb.aa
    i32 1, label %bb.ae
    i32 5, label %finishbinexpneg.exit.thread
    i32 6, label %finishbinexpneg.exit.thread
    i32 3, label %finishbinexpneg.exit.thread
    i32 4, label %finishbinexpneg.exit.thread
    i32 7, label %bb.ag
    i32 8, label %bb.ag
    i32 9, label %bb.ag
    i32 10, label %bb.an
    i32 11, label %bb.aq
    i32 13, label %bb.as
    i32 16, label %bb.as
    i32 17, label %bb.bl
    i32 18, label %bb.bl
    i32 14, label %bb.bm
    i32 15, label %bb.bm
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !23   ; 3 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %luaK_concat.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.f, align 4, !tbaa !57   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.l = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.l, align 8, !tbaa !56 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.h, ptr %i.f, align 4, !tbaa !57
  br label %luaK_concat.exit

bb.g:                                             ; preds = %bb.g, %.preheader.i
  %.0.i = phi i32 [ %i.t, %bb.g ], [ %i.j, %.preheader.i ] ; 3 uses
  %i.m = sext i32 %.0.i to i64                    ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57   ; 2 uses
  %i.p = lshr i32 %i.o, 7
  %i.q = add nsw i32 %i.p, -16777215              ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  %i.s = add nuw nsw i32 %.0.i, 1
  %i.t = add nsw i32 %i.s, %i.q                   ; 2 uses
  %.not13.i = icmp eq i32 %i.t, -1
  %.not.i = select i1 %i.r, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %.neg.i.i = xor i32 %.0.i, -1
  %i.u = add i32 %i.h, %.neg.i.i                  ; 2 uses
  %i.v = add i32 %i.u, 16777215
  %or.cond.i.i = icmp ult i32 %i.v, 33554432
  br i1 %or.cond.i.i, label %fixjump.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.x, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i:                                   ; preds = %bb.h
  %i.y = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.m
  %i.z = and i32 %i.o, 127
  %i.aa = shl i32 %i.u, 7
  %i.ab = add i32 %i.aa, 2147483520
  %i.ac = or disjoint i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !57
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.d, %bb.f, %fixjump.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  br label %codeconcat.exit

bb.j:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !22 ; 3 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %luaK_concat.exit93, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !57 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.l, label %.preheader.i84

.preheader.i84:                                   ; preds = %bb.k
  %.val.i85 = load ptr, ptr %0, align 8, !tbaa !47
  %i.aj = getelementptr i8, ptr %.val.i85, i64 64
  %.val.val.i86 = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !57
  br label %luaK_concat.exit93

bb.m:                                             ; preds = %bb.m, %.preheader.i84
  %.0.i87 = phi i32 [ %i.ar, %bb.m ], [ %i.ah, %.preheader.i84 ] ; 3 uses
  %i.ak = sext i32 %.0.i87 to i64                 ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val.val.i86, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !57 ; 2 uses
  %i.an = lshr i32 %i.am, 7
  %i.ao = add nsw i32 %i.an, -16777215            ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -1
  %i.aq = add nuw nsw i32 %.0.i87, 1
  %i.ar = add nsw i32 %i.aq, %i.ao                ; 2 uses
  %.not13.i88 = icmp eq i32 %i.ar, -1
  %.not.i89 = select i1 %i.ap, i1 true, i1 %.not13.i88
  br i1 %.not.i89, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  %.neg.i.i90 = xor i32 %.0.i87, -1
  %i.as = add i32 %i.af, %.neg.i.i90              ; 2 uses
  %i.at = add i32 %i.as, 16777215
  %or.cond.i.i91 = icmp ult i32 %i.at, 33554432
  br i1 %or.cond.i.i91, label %fixjump.exit.i92, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.av, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i92:                                 ; preds = %bb.n
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val.val.i86, i64 %i.ak
  %i.ax = and i32 %i.am, 127
  %i.ay = shl i32 %i.as, 7
  %i.az = add i32 %i.ay, 2147483520
  %i.ba = or disjoint i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !57
  br label %luaK_concat.exit93

luaK_concat.exit93:                               ; preds = %bb.j, %bb.l, %fixjump.exit.i92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  br label %codeconcat.exit

bb.p:                                             ; preds = %bb.c
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %3)
  %i.bb = load i32, ptr %3, align 8, !tbaa !24
  %i.bc = icmp eq i32 %i.bb, 8
  br i1 %i.bc, label %bb.q, label %freeexp.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !25
  %i.bf = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.bg = zext i8 %i.bf to i32
  %.not.i.i.i = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i.i.i, label %freeexp.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !66
  %i.bj = add i8 %i.bi, -1
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.r, %bb.q, %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 7 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !66  ; 3 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !67
  %.not.i94 = icmp ult i8 %i.bl, %i.bo
  br i1 %.not.i94, label %luaK_exp2nextreg.exit, label %bb.s

bb.s:                                             ; preds = %freeexp.exit.i
  %11 = zext i8 %i.bl to i32
  %12 = add nuw nsw i32 %11, 1                    ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %12, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.bp = trunc i32 %12 to i8
  %i.bq = load ptr, ptr %0, align 8, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i8 %i.bp, ptr %i.br, align 4, !tbaa !67
  %.pre.i.i = load i8, ptr %i.bk, align 1, !tbaa !66
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.s
  %i.bs = phi i8 [ %i.bl, %freeexp.exit.i ], [ %.pre.i.i, %bb.s ]
  %i.bt = add i8 %i.bs, 1                         ; 2 uses
  store i8 %i.bt, ptr %i.bk, align 1, !tbaa !66
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !45 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !46
  %i.ca = icmp sgt i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.t, label %previousinstruction.exit.i

bb.t:                                             ; preds = %luaK_exp2nextreg.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56
  %i.ce = sext i32 %i.bx to i64
  %i.cf = getelementptr [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  br label %previousinstruction.exit.i

previousinstruction.exit.i:                       ; preds = %bb.t, %luaK_exp2nextreg.exit
  %.0.i.i = phi ptr [ %i.cg, %bb.t ], [ @previousinstruction.invalidinstruction, %luaK_exp2nextreg.exit ] ; 3 uses
  %i.ch = load i32, ptr %.0.i.i, align 4, !tbaa !57 ; 2 uses
  %i.ci = and i32 %i.ch, 127
  %i.cj = icmp eq i32 %i.ci, 53
  br i1 %i.cj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %previousinstruction.exit.i
  %i.ck = load i32, ptr %3, align 8, !tbaa !24
  %i.cl = icmp eq i32 %i.ck, 8
  br i1 %i.cl, label %bb.v, label %freeexp.exit.i95

bb.v:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !25
  %i.co = tail call zeroext i8 @luaY_nvarstack(ptr noundef nonnull %0) #11
  %i.cp = zext i8 %i.co to i32
  %.not.i.i.i96 = icmp slt i32 %i.cn, %i.cp
  br i1 %.not.i.i.i96, label %freeexp.exit.i95, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.cr = add i8 %i.cq, -1
  store i8 %i.cr, ptr %i.bk, align 1, !tbaa !66
  br label %freeexp.exit.i95

freeexp.exit.i95:                                 ; preds = %bb.w, %bb.v, %bb.u
  %i.cs = load i32, ptr %.0.i.i, align 4, !tbaa !57
  %i.ct = and i32 %i.cs, -16744321
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !25
  %i.cw = shl i32 %i.cv, 7
  %i.cx = and i32 %i.cw, 32640
  %i.cy = add i32 %i.ch, 65536
  %i.cz = and i32 %i.cy, 16711680
  %i.da = or disjoint i32 %i.ct, %i.cz
  %i.db = or disjoint i32 %i.da, %i.cx
  store i32 %i.db, ptr %.0.i.i, align 4, !tbaa !57
  br label %codeconcat.exit

bb.x:                                             ; preds = %previousinstruction.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !25
  %i.de = shl i32 %i.dd, 7
  %i.df = or i32 %i.de, 131125
  %i.dg = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.df) ; 0 uses
  %i.dh = load i32, ptr %3, align 8, !tbaa !24
  %i.di = icmp eq i32 %i.dh, 8
  br i1 %i.di, label %bb.y, label %freeexp.exit17.i

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !25
  %i.dl = tail call zeroext i8 @luaY_nvarstack(ptr noundef nonnull %0) #11
  %i.dm = zext i8 %i.dl to i32
  %.not.i.i16.i = icmp slt i32 %i.dk, %i.dm
  br i1 %.not.i.i16.i, label %freeexp.exit17.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = load i8, ptr %i.bk, align 1, !tbaa !66
  %i.do = add i8 %i.dn, -1
  store i8 %i.do, ptr %i.bk, align 1, !tbaa !66
  br label %freeexp.exit17.i

freeexp.exit17.i:                                 ; preds = %bb.z, %bb.y, %bb.x
  tail call void @luaK_fixline(ptr noundef nonnull %0, i32 noundef %4)
  br label %codeconcat.exit

bb.aa:                                            ; preds = %bb.c, %bb.c
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %i.dq, %i.ds
  br i1 %.not.i.i, label %bb.ab, label %tonumeral.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load i32, ptr %2, align 8, !tbaa !24
  %.off.i = add i32 %i.dt, -5
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %tonumeral.exit.i, label %tonumeral.exit.thread.i

tonumeral.exit.i:                                 ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !73
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %tonumeral.exit.thread.i

tonumeral.exit.thread.i:                          ; preds = %tonumeral.exit.i, %bb.ab, %bb.aa
  %.0.i97.a = phi i32 [ 1, %tonumeral.exit.i ], [ 0, %bb.aa ], [ 0, %bb.ab ] ; 3 uses
  %i.du = icmp eq i32 %1, 0
  br i1 %i.du, label %bb.ac, label %.split.i

.split.i:                                         ; preds = %tonumeral.exit.thread.i
  tail call fastcc void @codearith(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.0.i97.a, i32 noundef %4)
  br label %codeconcat.exit

bb.ac:                                            ; preds = %tonumeral.exit.thread.i
  %i.dv = load i32, ptr %3, align 8, !tbaa !24
  %i.dw = icmp eq i32 %i.dv, 6
  br i1 %i.dw, label %isKint.exit.i.i, label %.split15.i

isKint.exit.i.i:                                  ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !23
  %.not.i.not.i.i = icmp eq i32 %i.dy, %i.ea
  br i1 %.not.i.not.i.i, label %isSCint.exit.i, label %.split15.i

isSCint.exit.i:                                   ; preds = %isKint.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !25 ; 2 uses
  %i.ed = add i64 %i.ec, -129
  %i.ee = icmp ult i64 %i.ed, -256
  br i1 %i.ee, label %.split15.i, label %bb.ad

.split15.i:                                       ; preds = %isSCint.exit.i, %isKint.exit.i.i, %bb.ac
  tail call fastcc void @codearith(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %.0.i97.a, i32 noundef %4)
  br label %codeconcat.exit

bb.ad:                                            ; preds = %isSCint.exit.i
  %i.ef = trunc nsw i64 %i.ec to i32
  %i.eg = add nsw i32 %i.ef, 127
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull readonly %3, i32 noundef 21, i32 noundef %i.eg, i32 noundef range(i32 0, 2) %.0.i97.a, i32 noundef %4, i32 noundef 47, i32 noundef 6)
  br label %codeconcat.exit

bb.ae:                                            ; preds = %bb.c
  %i.eh = load i32, ptr %3, align 8, !tbaa !24
  %i.ei = icmp eq i32 %i.eh, 6
  br i1 %i.ei, label %isKint.exit.i, label %finishbinexpneg.exit.thread

isKint.exit.i:                                    ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23
  %.not.i.not.i = icmp eq i32 %i.ek, %i.em
  br i1 %.not.i.not.i, label %bb.af, label %finishbinexpneg.exit.thread

bb.af:                                            ; preds = %isKint.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !25 ; 3 uses
  %i.ep = sub i64 128, %i.eo
  %i.eq = sub i64 127, %i.eo
  %i.er = or i64 %i.ep, %i.eq
  %or.cond.not.i = icmp ult i64 %i.er, 256
  br i1 %or.cond.not.i, label %finishbinexpneg.exit, label %finishbinexpneg.exit.thread

finishbinexpneg.exit:                             ; preds = %bb.af
  %i.es = trunc i64 %i.eo to i32                  ; 2 uses
  %i.et = sub i32 127, %i.es
  tail call fastcc void @finishbinexpval(ptr noundef %0, ptr noundef %2, ptr noundef nonnull readonly %3, i32 noundef 21, i32 noundef %i.et, i32 noundef 0, i32 noundef %4, i32 noundef 47, i32 noundef 7)
  %i.eu = load ptr, ptr %0, align 8, !tbaa !47
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !56
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !45
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr [4 x i8], ptr %i.ew, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -4     ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !57
  %i.fd = and i32 %i.fc, -16711681
  %i.fe = shl i32 %i.es, 16
  %i.ff = add i32 %i.fe, 8323072
  %i.fg = and i32 %i.ff, 16711680
  %i.fh = or disjoint i32 %i.fd, %i.fg
end_hunk_5
