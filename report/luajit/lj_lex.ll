Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_lex?download=true
inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@tokennames = internal unnamed_addr constant [45 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr null], align 16
@lj_char_bits = external hidden local_unnamed_addr constant [257 x i8], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"char(%d)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"~=\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"?.\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"~>>\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @lj_lex_setup(ptr noundef %0, ptr noundef initializes((0, 16), (32, 48), (52, 60), (112, 120), (144, 172), (176, 184)) %1) local_unnamed_addr #0 {
lex_next.exit41:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !20
  store ptr null, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  store i32 300, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  store i32 1, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 1, ptr %i.h, align 4, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i32 0, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 1, ptr %i.j, align 4, !tbaa !56
  %i.k = tail call fastcc i32 @lex_more(ptr noundef nonnull %1) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !26
  %2 = icmp eq i32 %i.k, 239
  br i1 %2, label %bb.a, label %thread-pre-split

bb.a:                                             ; preds = %lex_next.exit41
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 4 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not = icmp ugt ptr %i.n, %i.o
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.m, align 1, !tbaa !29
  %i.q = icmp eq i8 %i.p, -69
  br i1 %i.q, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = icmp eq i8 %i.s, -65
  br i1 %i.t, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.b, align 8, !tbaa !27
  %i.u = icmp ult ptr %i.n, %i.o
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  store ptr %i.v, ptr %i.b, align 8, !tbaa !27
  %i.w = load i8, ptr %i.n, align 1, !tbaa !29
  %i.x = zext i8 %i.w to i32
  br label %lex_next.exit40

bb.f:                                             ; preds = %bb.d
  %i.y = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit40

lex_next.exit40:                                  ; preds = %bb.e, %bb.f
  %i.z = phi i32 [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  store i32 %i.z, ptr %i.l, align 8, !tbaa !26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.c, %bb.b, %bb.a, %lex_next.exit40, %lex_next.exit41
  %3 = phi i32 [ %i.k, %lex_next.exit41 ], [ %i.z, %lex_next.exit40 ], [ 239, %bb.a ], [ 239, %bb.b ], [ 239, %bb.c ] ; 2 uses
  %.not39 = phi i1 [ true, %lex_next.exit41 ], [ false, %lex_next.exit40 ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.c ]
  %i.aa = icmp eq i32 %3, 35
  br i1 %i.aa, label %.preheader, label %lex_newline.exit

.preheader:                                       ; preds = %thread-pre-split, %lex_next.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.ad = icmp ult ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !27
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.ag = zext i8 %i.af to i32
  br label %lex_next.exit

bb.h:                                             ; preds = %.preheader
  %i.ah = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit

lex_next.exit:                                    ; preds = %bb.g, %bb.h
  %i.ai = phi i32 [ %i.ag, %bb.g ], [ %i.ah, %bb.h ] ; 4 uses
  store i32 %i.ai, ptr %i.l, align 8, !tbaa !26
  switch i32 %i.ai, label %.preheader [
    i32 -1, label %.loopexit
    i32 10, label %.critedge
    i32 13, label %.critedge
  ], !llvm.loop !54

.critedge:                                        ; preds = %lex_next.exit, %lex_next.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.al = icmp ult ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.am, ptr %i.b, align 8, !tbaa !27
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.ao = zext i8 %i.an to i32
  br label %lex_next.exit9.i

bb.j:                                             ; preds = %.critedge
  %i.ap = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit9.i

lex_next.exit9.i:                                 ; preds = %bb.j, %bb.i
  %i.aq = phi i32 [ %i.ao, %bb.i ], [ %i.ap, %bb.j ] ; 4 uses
  store i32 %i.aq, ptr %i.l, align 8, !tbaa !26
  switch i32 %i.aq, label %bb.o [
    i32 10, label %bb.k
    i32 13, label %bb.k
  ]

bb.k:                                             ; preds = %lex_next.exit9.i, %lex_next.exit9.i
  %.not.i = icmp eq i32 %i.aq, %i.ai
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.at = icmp ult ptr %i.ar, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.au, ptr %i.b, align 8, !tbaa !27
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !29
  %i.aw = zext i8 %i.av to i32
  br label %lex_next.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ax = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit.i

lex_next.exit.i:                                  ; preds = %bb.n, %bb.m
  %i.ay = phi i32 [ %i.aw, %bb.m ], [ %i.ax, %bb.n ] ; 2 uses
  store i32 %i.ay, ptr %i.l, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %lex_next.exit.i, %bb.k, %lex_next.exit9.i
  %i.az = phi i32 [ %i.ay, %lex_next.exit.i ], [ %i.ai, %bb.k ], [ %i.aq, %lex_next.exit9.i ]
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.g, align 8, !tbaa !23
  %i.bc = icmp sgt i32 %i.ba, 2147483390
  br i1 %i.bc, label %bb.p, label %lex_newline.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.e, align 4, !tbaa !21
  tail call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %1, i32 noundef %i.bd, i32 noundef 2191) #9
  unreachable

lex_newline.exit:                                 ; preds = %thread-pre-split
  %i.be = icmp ne i32 %3, 27                      ; 2 uses
  %brmerge = or i1 %.not39, %i.be
  %not. = xor i1 %i.be, true
  %.mux = zext i1 %not. to i32
  br i1 %brmerge, label %.loopexit, label %.thread

lex_newline.exit.thread:                          ; preds = %bb.o
  %i.bf = icmp eq i32 %i.az, 27
  br i1 %i.bf, label %.thread, label %.loopexit

.thread:                                          ; preds = %lex_newline.exit, %lex_newline.exit.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !34
  %i.bj = tail call ptr @lj_err_str(ptr noundef %0, i32 noundef 3134) #10
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = or i64 %i.bk, -703687441776640
  store i64 %i.bl, ptr %i.bh, align 8, !tbaa !29
  tail call void @lj_err_throw(ptr noundef %0, i32 noundef 3) #11
  unreachable

.loopexit:                                        ; preds = %lex_next.exit, %lex_newline.exit, %lex_newline.exit.thread
  %.036 = phi i32 [ 0, %lex_newline.exit.thread ], [ %.mux, %lex_newline.exit ], [ 0, %lex_next.exit ]
  ret i32 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden ptr @lj_err_str(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @lj_err_throw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @lj_lex_cleanup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61
  %i.l = sub i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !61
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.p = tail call ptr %i.m(ptr noundef %i.o, ptr noundef %i.e, i64 noundef range(i64 0, 103079215081) %i.i, i64 noundef 0) #10, !inline_history !57 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = load i32, ptr %i.s, align 8, !tbaa !65
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24                 ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !61
  %i.x = sub i64 %i.w, %i.v
  store i64 %i.x, ptr %i.j, align 8, !tbaa !61
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.aa = tail call ptr %i.y(ptr noundef %i.z, ptr noundef %i.r, i64 noundef range(i64 0, 103079215081) %i.v, i64 noundef 0) #10, !inline_history !57 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 4294967295               ; 2 uses
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !61
  %i.ak = sub i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.j, align 8, !tbaa !61
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.an = tail call ptr %i.al(ptr noundef %i.am, ptr noundef %i.ac, i64 noundef range(i64 0, 103079215081) %i.ai, i64 noundef 0) #10, !inline_history !58 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @lj_lex_next(ptr noundef initializes((116, 120)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.b, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = icmp eq i32 %i.e, 300
  br i1 %i.f, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = tail call fastcc i32 @lex_scan(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 300, ptr %i.d, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29
  store i64 %i.k, ptr %i.i, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.h, %bb.b ], [ %i.e, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sink, ptr %i.l, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 13, 11) i32 @lex_scan(ptr noundef initializes((64, 72)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 52 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  store ptr %i.c, ptr %i.a, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 62 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @lj_char_bits, i64 1), i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !29    ; 2 uses
  %.not219 = icmp sgt i8 %i.h, -1
  br i1 %.not219, label %.lr.ph, label %lex_newline.exit._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 113 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  br label %bb.i

lex_newline.exit._crit_edge:                      ; preds = %lex_newline.exit.backedge, %bb.a
  %i.m = phi i32 [ %i.e, %bb.a ], [ %i.cf, %lex_newline.exit.backedge ]
  %.lcssa168 = phi i8 [ %i.h, %bb.a ], [ %i.ci, %lex_newline.exit.backedge ]
  %i.n = and i8 %.lcssa168, 8
  %.not114 = icmp eq i8 %i.n, 0
  br i1 %.not114, label %.preheader, label %bb.b

.preheader:                                       ; preds = %lex_newline.exit._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %lex_newline.exit._crit_edge
  tail call fastcc void @lex_number(ptr noundef nonnull %0, ptr noundef %1)
  br label %.loopexit

bb.c:                                             ; preds = %.preheader, %lex_savenext.exit147
  %i.r = phi i32 [ %i.m, %.preheader ], [ %i.aj, %lex_savenext.exit147 ]
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %lj_buf_more.exit149, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.z = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.a, i32 noundef 1) #10
  br label %lj_buf_more.exit149

lj_buf_more.exit149:                              ; preds = %bb.c, %bb.d
  %.0.i148 = phi ptr [ %i.z, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.aa = trunc i32 %i.r to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i148, i64 1
  store i8 %i.aa, ptr %.0.i148, align 1, !tbaa !29
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !46
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !27  ; 3 uses
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.ae = icmp ult ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %lj_buf_more.exit149
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.af, ptr %i.p, align 8, !tbaa !27
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i32
  br label %lex_savenext.exit147

bb.f:                                             ; preds = %lj_buf_more.exit149
  %i.ai = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_savenext.exit147

lex_savenext.exit147:                             ; preds = %bb.e, %bb.f
  %i.aj = phi i32 [ %i.ah, %bb.e ], [ %i.ai, %bb.f ] ; 3 uses
  store i32 %i.aj, ptr %i.d, align 8, !tbaa !26
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @lj_char_bits, i64 1), i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %.not115 = icmp sgt i8 %i.am, -1
  br i1 %.not115, label %bb.g, label %bb.c, !llvm.loop !67

bb.g:                                             ; preds = %lex_savenext.exit147
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = and i64 %i.ar, 4294967295
  %i.at = tail call ptr @lj_parse_keepstr(ptr noundef nonnull %0, ptr noundef %i.an, i64 noundef %i.as) #10 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, -703687441776640
  store i64 %i.av, ptr %1, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !50  ; 2 uses
  %.not116 = icmp eq i8 %i.ax, 0
  br i1 %.not116, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.ay, 256
  br label %.loopexit
end_hunk_0
