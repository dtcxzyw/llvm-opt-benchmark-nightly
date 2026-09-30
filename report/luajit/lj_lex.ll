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
  store ptr null, ptr %1, align 8, !tbaa !54
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
  store i32 1, ptr %i.j, align 4, !tbaa !55
  %i.k = tail call fastcc i32 @lex_more(ptr noundef nonnull %1) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = icmp ne i32 %i.k, 239                    ; 2 uses
  br i1 %i.m, label %thread-pre-split, label %bb.a

bb.a:                                             ; preds = %lex_next.exit41
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not = icmp ugt ptr %i.o, %i.p
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i8, ptr %i.n, align 1, !tbaa !29
  %i.r = icmp eq i8 %i.q, -69
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29
  %i.u = icmp eq i8 %i.t, -65
  br i1 %i.u, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.b, align 8, !tbaa !27
  %i.v = icmp ult ptr %i.o, %i.p
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store ptr %i.w, ptr %i.b, align 8, !tbaa !27
  %i.x = load i8, ptr %i.o, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i32
  br label %lex_next.exit40

bb.f:                                             ; preds = %bb.d
  %i.z = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit40

lex_next.exit40:                                  ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  store i32 %i.aa, ptr %i.l, align 8, !tbaa !26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %lex_next.exit40, %lex_next.exit41
  %i.ab = phi i32 [ %i.k, %lex_next.exit41 ], [ %i.aa, %lex_next.exit40 ] ; 3 uses
  %i.ac = icmp eq i32 %i.ab, 35
  br i1 %i.ac, label %.preheader, label %lex_newline.exit

.preheader:                                       ; preds = %thread-pre-split, %lex_next.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.af = icmp ult ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !27
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i32
  br label %lex_next.exit

bb.h:                                             ; preds = %.preheader
  %i.aj = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit

lex_next.exit:                                    ; preds = %bb.g, %bb.h
  %i.ak = phi i32 [ %i.ai, %bb.g ], [ %i.aj, %bb.h ] ; 4 uses
  store i32 %i.ak, ptr %i.l, align 8, !tbaa !26
  switch i32 %i.ak, label %.preheader [
    i32 -1, label %.loopexit
    i32 10, label %.critedge
    i32 13, label %.critedge
  ], !llvm.loop !53

.critedge:                                        ; preds = %lex_next.exit, %lex_next.exit
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.an = icmp ult ptr %i.al, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !27
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i32
  br label %lex_next.exit9.i

bb.j:                                             ; preds = %.critedge
  %i.ar = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit9.i

lex_next.exit9.i:                                 ; preds = %bb.j, %bb.i
  %i.as = phi i32 [ %i.aq, %bb.i ], [ %i.ar, %bb.j ] ; 4 uses
  store i32 %i.as, ptr %i.l, align 8, !tbaa !26
  switch i32 %i.as, label %bb.o [
    i32 10, label %bb.k
    i32 13, label %bb.k
  ]

bb.k:                                             ; preds = %lex_next.exit9.i, %lex_next.exit9.i
  %.not.i = icmp eq i32 %i.as, %i.ak
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.av = icmp ult ptr %i.at, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !27
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i32
  br label %lex_next.exit.i

bb.n:                                             ; preds = %bb.l
  %i.az = tail call fastcc i32 @lex_more(ptr noundef nonnull %1)
  br label %lex_next.exit.i

lex_next.exit.i:                                  ; preds = %bb.n, %bb.m
  %i.ba = phi i32 [ %i.ay, %bb.m ], [ %i.az, %bb.n ] ; 2 uses
  store i32 %i.ba, ptr %i.l, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %lex_next.exit.i, %bb.k, %lex_next.exit9.i
  %i.bb = phi i32 [ %i.ba, %lex_next.exit.i ], [ %i.ak, %bb.k ], [ %i.as, %lex_next.exit9.i ]
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !23  ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.g, align 8, !tbaa !23
  %i.be = icmp sgt i32 %i.bc, 2147483390
  br i1 %i.be, label %bb.p, label %lex_newline.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !21
  tail call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %1, i32 noundef %i.bf, i32 noundef 2191) #9
  unreachable

lex_newline.exit:                                 ; preds = %thread-pre-split
  %i.bg = icmp ne i32 %i.ab, 27
  %brmerge = or i1 %i.m, %i.bg
  %.not49 = icmp eq i32 %i.ab, 27
  %.mux = zext i1 %.not49 to i32
  br i1 %brmerge, label %.loopexit, label %.thread

lex_newline.exit.thread:                          ; preds = %bb.o
  %i.bh = icmp eq i32 %i.bb, 27
  br i1 %i.bh, label %.thread, label %.loopexit

.thread:                                          ; preds = %lex_newline.exit, %lex_newline.exit.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !34
  %i.bl = tail call ptr @lj_err_str(ptr noundef %0, i32 noundef 3134) #10
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = or i64 %i.bm, -703687441776640
  store i64 %i.bn, ptr %i.bj, align 8, !tbaa !29
  tail call void @lj_err_throw(ptr noundef %0, i32 noundef 3) #11
  unreachable

.loopexit:                                        ; preds = %lex_next.exit, %bb.a, %bb.b, %bb.c, %lex_newline.exit, %lex_newline.exit.thread
  %.036 = phi i32 [ 0, %lex_newline.exit.thread ], [ %.mux, %lex_newline.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %lex_next.exit ]
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  %i.l = sub i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !60
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = tail call ptr %i.m(ptr noundef %i.o, ptr noundef %i.e, i64 noundef range(i64 0, 103079215081) %i.i, i64 noundef 0) #10, !inline_history !56 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.t = load i32, ptr %i.s, align 8, !tbaa !64
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24                 ; 2 uses
  %i.w = load i64, ptr %i.j, align 8, !tbaa !60
  %i.x = sub i64 %i.w, %i.v
  store i64 %i.x, ptr %i.j, align 8, !tbaa !60
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.aa = tail call ptr %i.y(ptr noundef %i.z, ptr noundef %i.r, i64 noundef range(i64 0, 103079215081) %i.v, i64 noundef 0) #10, !inline_history !56 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 4294967295               ; 2 uses
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !60
  %i.ak = sub i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.j, align 8, !tbaa !60
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.an = tail call ptr %i.al(ptr noundef %i.am, ptr noundef %i.ac, i64 noundef range(i64 0, 103079215081) %i.ai, i64 noundef 0) #10, !inline_history !57 ; 0 uses
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
  br i1 %i.f, label %bb.b, label %bb.c, !prof !65

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
  br i1 %.not115, label %bb.g, label %bb.c, !llvm.loop !66

end_hunk_0
begin_hunk_1_@lex_scan:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !21
  tail call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %0, i32 noundef %i.bw, i32 noundef 2191) #9
  unreachable

bb.s:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.bz = icmp ult ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.ca, ptr %i.i, align 8, !tbaa !27
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !29
  %i.cc = zext i8 %i.cb to i32
  br label %lex_next.exit146

bb.u:                                             ; preds = %bb.s
  %i.cd = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit146

lex_next.exit146:                                 ; preds = %bb.t, %bb.u
  %i.ce = phi i32 [ %i.cc, %bb.t ], [ %i.cd, %bb.u ] ; 2 uses
  store i32 %i.ce, ptr %i.d, align 8, !tbaa !26
  br label %lex_newline.exit.backedge

lex_newline.exit.backedge:                        ; preds = %.thread, %.thread, %.thread, %lex_next.exit146, %bb.ak, %bb.q
  %i.cf = phi i32 [ %i.br, %bb.q ], [ %i.ce, %lex_next.exit146 ], [ %.pre, %bb.ak ], [ %i.ex, %.thread ], [ %i.ex, %.thread ], [ %i.ex, %.thread ] ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @lj_char_bits, i64 1), i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29  ; 2 uses
  %.not = icmp sgt i8 %i.ci, -1
  br i1 %.not, label %bb.i, label %lex_newline.exit._crit_edge

bb.v:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.cl = icmp ult ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store ptr %i.cm, ptr %i.i, align 8, !tbaa !27
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.co = zext i8 %i.cn to i32
  br label %lex_next.exit145

bb.x:                                             ; preds = %bb.v
  %i.cp = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit145

lex_next.exit145:                                 ; preds = %bb.w, %bb.x
  %i.cq = phi i32 [ %i.co, %bb.w ], [ %i.cp, %bb.x ] ; 2 uses
  store i32 %i.cq, ptr %i.d, align 8, !tbaa !26
  switch i32 %i.cq, label %.loopexit [
    i32 45, label %bb.ab
    i32 62, label %bb.y
  ]

bb.y:                                             ; preds = %lex_next.exit145
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.ct = icmp ult ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cu, ptr %i.i, align 8, !tbaa !27
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.cw = zext i8 %i.cv to i32
  br label %lex_next.exit144

bb.aa:                                            ; preds = %bb.y
  %i.cx = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit144

lex_next.exit144:                                 ; preds = %bb.z, %bb.aa
  %i.cy = phi i32 [ %i.cw, %bb.z ], [ %i.cx, %bb.aa ]
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.ab:                                            ; preds = %lex_next.exit145
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.db = icmp ult ptr %i.cz, %i.da
  br i1 %i.db, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.dc, ptr %i.i, align 8, !tbaa !27
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !29
  %i.de = zext i8 %i.dd to i32
  br label %lex_next.exit143

bb.ad:                                            ; preds = %bb.ab
  %i.df = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit143

lex_next.exit143:                                 ; preds = %bb.ac, %bb.ad
  %i.dg = phi i32 [ %i.de, %bb.ac ], [ %i.df, %bb.ad ] ; 3 uses
  store i32 %i.dg, ptr %i.d, align 8, !tbaa !26
  %i.dh = icmp eq i32 %i.dg, 91
  br i1 %i.dh, label %.preheader222, label %.thread.preheader

.thread.preheader:                                ; preds = %lex_skipeq.exit, %lex_next.exit143
  %.ph = phi i32 [ %i.dg, %lex_next.exit143 ], [ %.lcssa223, %lex_skipeq.exit ]
  br label %.thread

.preheader222:                                    ; preds = %lex_next.exit143
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.ae, label %lj_buf_more.exit.i.peel, !prof !47

bb.ae:                                            ; preds = %.preheader222
  %i.dp = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.a, i32 noundef 1) #10
  br label %lj_buf_more.exit.i.peel

lj_buf_more.exit.i.peel:                          ; preds = %bb.ae, %.preheader222
  %.0.i.i.peel = phi ptr [ %i.dp, %bb.ae ], [ %i.dj, %.preheader222 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i.peel, i64 1
  store i8 91, ptr %.0.i.i.peel, align 1, !tbaa !29
  store ptr %i.dq, ptr %i.a, align 8, !tbaa !46
  %i.dr = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ds = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.dt = icmp ult ptr %i.dr, %i.ds
  br i1 %i.dt, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %lj_buf_more.exit.i.peel
  %i.du = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_savenext.exit.i.peel

bb.ag:                                            ; preds = %lj_buf_more.exit.i.peel
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store ptr %i.dv, ptr %i.i, align 8, !tbaa !27
  %i.dw = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dx = zext i8 %i.dw to i32
  br label %lex_savenext.exit.i.peel

lex_savenext.exit.i.peel:                         ; preds = %bb.ag, %bb.af
  %i.dy = phi i32 [ %i.dx, %bb.ag ], [ %i.du, %bb.af ] ; 3 uses
  store i32 %i.dy, ptr %i.d, align 8, !tbaa !26
  %i.dz = icmp eq i32 %i.dy, 61
  br i1 %i.dz, label %.peel.next, label %lex_skipeq.exit

.peel.next:                                       ; preds = %lex_savenext.exit.i.peel, %lex_savenext.exit.i
  %.0.i150 = phi i32 [ %i.eu, %lex_savenext.exit.i ], [ 1, %lex_savenext.exit.i.peel ] ; 3 uses
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = and i64 %i.ee, 4294967295
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.ah, label %lj_buf_more.exit.i, !prof !47

bb.ah:                                            ; preds = %.peel.next
  %i.eh = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.a, i32 noundef 1) #10
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.ah, %.peel.next
  %.0.i.i = phi ptr [ %i.eh, %bb.ah ], [ %i.eb, %.peel.next ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 61, ptr %.0.i.i, align 1, !tbaa !29
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !46
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ek = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.el = icmp ult ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %lj_buf_more.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store ptr %i.em, ptr %i.i, align 8, !tbaa !27
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !29
  %i.eo = zext i8 %i.en to i32
  br label %lex_savenext.exit.i

bb.aj:                                            ; preds = %lj_buf_more.exit.i
  %i.ep = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_savenext.exit.i

lex_savenext.exit.i:                              ; preds = %bb.aj, %bb.ai
  %i.eq = phi i32 [ %i.eo, %bb.ai ], [ %i.ep, %bb.aj ] ; 3 uses
  store i32 %i.eq, ptr %i.d, align 8, !tbaa !26
  %i.er = icmp eq i32 %i.eq, 61
  %i.es = icmp samesign ult i32 %.0.i150, 536870912
  %i.et = select i1 %i.er, i1 %i.es, i1 false
  %i.eu = add nuw nsw i32 %.0.i150, 1
  br i1 %i.et, label %.peel.next, label %lex_skipeq.exit, !llvm.loop !67

lex_skipeq.exit:                                  ; preds = %lex_savenext.exit.i, %lex_savenext.exit.i.peel
  %.lcssa223 = phi i32 [ %i.dy, %lex_savenext.exit.i.peel ], [ %i.eq, %lex_savenext.exit.i ] ; 2 uses
  %.0.i150.lcssa = phi i32 [ 0, %lex_savenext.exit.i.peel ], [ %.0.i150, %lex_savenext.exit.i ]
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !44
  store ptr %i.ev, ptr %i.a, align 8, !tbaa !46
  %2 = icmp eq i32 %.lcssa223, 91
  br i1 %2, label %bb.ak, label %.thread.preheader

bb.ak:                                            ; preds = %lex_skipeq.exit
  tail call fastcc void @lex_longstring(ptr noundef nonnull %0, ptr noundef null, i32 noundef %.0.i150.lcssa)
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !44
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !46
  %.pre = load i32, ptr %i.d, align 8, !tbaa !26
  br label %lex_newline.exit.backedge

.thread:                                          ; preds = %.thread.preheader, %lex_next.exit142
  %i.ex = phi i32 [ %i.ff, %lex_next.exit142 ], [ %.ph, %.thread.preheader ] ; 4 uses
  switch i32 %i.ex, label %bb.al [
    i32 10, label %lex_newline.exit.backedge
    i32 13, label %lex_newline.exit.backedge
    i32 -1, label %lex_newline.exit.backedge
  ]

bb.al:                                            ; preds = %.thread
  %i.ey = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ez = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.fa = icmp ult ptr %i.ey, %i.ez
  br i1 %i.fa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.fb, ptr %i.i, align 8, !tbaa !27
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !29
  %i.fd = zext i8 %i.fc to i32
  br label %lex_next.exit142

bb.an:                                            ; preds = %bb.al
  %i.fe = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit142

lex_next.exit142:                                 ; preds = %bb.am, %bb.an
  %i.ff = phi i32 [ %i.fd, %bb.am ], [ %i.fe, %bb.an ] ; 2 uses
  store i32 %i.ff, ptr %i.d, align 8, !tbaa !26
  br label %.thread, !llvm.loop !68

.peel.begin243:                                   ; preds = %bb.i
  %i.fg = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = and i64 %i.fk, 4294967295
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.ao, label %lj_buf_more.exit.i152.peel, !prof !47

bb.ao:                                            ; preds = %.peel.begin243
  %i.fn = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.a, i32 noundef 1) #10
  br label %lj_buf_more.exit.i152.peel

lj_buf_more.exit.i152.peel:                       ; preds = %bb.ao, %.peel.begin243
  %.0.i.i153.peel = phi ptr [ %i.fn, %bb.ao ], [ %i.fh, %.peel.begin243 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i153.peel, i64 1
  store i8 91, ptr %.0.i.i153.peel, align 1, !tbaa !29
  store ptr %i.fo, ptr %i.a, align 8, !tbaa !46
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.fr = icmp ult ptr %i.fp, %i.fq
  br i1 %i.fr, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %lj_buf_more.exit.i152.peel
  %i.fs = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_savenext.exit.i154.peel

bb.aq:                                            ; preds = %lj_buf_more.exit.i152.peel
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store ptr %i.ft, ptr %i.i, align 8, !tbaa !27
  %i.fu = load i8, ptr %i.fp, align 1, !tbaa !29
  %i.fv = zext i8 %i.fu to i32
  br label %lex_savenext.exit.i154.peel

lex_savenext.exit.i154.peel:                      ; preds = %bb.aq, %bb.ap
  %i.fw = phi i32 [ %i.fv, %bb.aq ], [ %i.fs, %bb.ap ] ; 3 uses
  store i32 %i.fw, ptr %i.d, align 8, !tbaa !26
  %i.fx = icmp eq i32 %i.fw, 61
  br i1 %i.fx, label %.peel.next244, label %lex_skipeq.exit155

.peel.next244:                                    ; preds = %lex_savenext.exit.i154.peel, %lex_savenext.exit.i154
  %.0.i151 = phi i32 [ %i.gs, %lex_savenext.exit.i154 ], [ 1, %lex_savenext.exit.i154.peel ] ; 3 uses
  %i.fy = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = and i64 %i.gc, 4294967295
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.ar, label %lj_buf_more.exit.i152, !prof !47

bb.ar:                                            ; preds = %.peel.next244
  %i.gf = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.a, i32 noundef 1) #10
  br label %lj_buf_more.exit.i152

lj_buf_more.exit.i152:                            ; preds = %bb.ar, %.peel.next244
  %.0.i.i153 = phi ptr [ %i.gf, %bb.ar ], [ %i.fz, %.peel.next244 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i.i153, i64 1
  store i8 61, ptr %.0.i.i153, align 1, !tbaa !29
  store ptr %i.gg, ptr %i.a, align 8, !tbaa !46
  %i.gh = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.gj = icmp ult ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %lj_buf_more.exit.i152
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gk, ptr %i.i, align 8, !tbaa !27
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !29
  %i.gm = zext i8 %i.gl to i32
  br label %lex_savenext.exit.i154

bb.at:                                            ; preds = %lj_buf_more.exit.i152
  %i.gn = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_savenext.exit.i154

lex_savenext.exit.i154:                           ; preds = %bb.at, %bb.as
  %i.go = phi i32 [ %i.gm, %bb.as ], [ %i.gn, %bb.at ] ; 3 uses
  store i32 %i.go, ptr %i.d, align 8, !tbaa !26
  %i.gp = icmp eq i32 %i.go, 61
  %i.gq = icmp samesign ult i32 %.0.i151, 536870912
  %i.gr = select i1 %i.gp, i1 %i.gq, i1 false
  %i.gs = add nuw nsw i32 %.0.i151, 1
  br i1 %i.gr, label %.peel.next244, label %lex_skipeq.exit155, !llvm.loop !69

lex_skipeq.exit155:                               ; preds = %lex_savenext.exit.i154, %lex_savenext.exit.i154.peel
  %.lcssa = phi i32 [ %i.fw, %lex_savenext.exit.i154.peel ], [ %i.go, %lex_savenext.exit.i154 ] ; 2 uses
  %.0.i151.lcssa = phi i32 [ 0, %lex_savenext.exit.i154.peel ], [ %.0.i151, %lex_savenext.exit.i154 ]
  %i.gt = icmp ne i32 %.lcssa, 91
  %i.gu = sext i1 %i.gt to i32
  %i.gv = xor i32 %.0.i151.lcssa, %i.gu           ; 2 uses
  %.not245 = icmp eq i32 %.lcssa, 91
  br i1 %.not245, label %bb.au, label %bb.av

bb.au:                                            ; preds = %lex_skipeq.exit155
  tail call fastcc void @lex_longstring(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gv)
  br label %.loopexit

bb.av:                                            ; preds = %lex_skipeq.exit155
  %i.gw = icmp eq i32 %i.gv, -1
  br i1 %i.gw, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, i32, i32, ...) @lj_lex_error(ptr noundef nonnull %0, i32 noundef 299, i32 noundef 2355) #9
  unreachable

bb.ax:                                            ; preds = %bb.i
  %i.gx = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.gy = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.gz = icmp ult ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 1
  store ptr %i.ha, ptr %i.i, align 8, !tbaa !27
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !29
  %i.hc = zext i8 %i.hb to i32
  br label %lex_next.exit141

bb.az:                                            ; preds = %bb.ax
  %i.hd = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit141

lex_next.exit141:                                 ; preds = %bb.ay, %bb.az
  %i.he = phi i32 [ %i.hc, %bb.ay ], [ %i.hd, %bb.az ] ; 2 uses
  store i32 %i.he, ptr %i.d, align 8, !tbaa !26
  %.not110 = icmp eq i32 %i.he, 61
  br i1 %.not110, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %lex_next.exit141
  %i.hf = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.hg = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.hh = icmp ult ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  store ptr %i.hi, ptr %i.i, align 8, !tbaa !27
  %i.hj = load i8, ptr %i.hf, align 1, !tbaa !29
  %i.hk = zext i8 %i.hj to i32
  br label %lex_next.exit140

bb.bc:                                            ; preds = %bb.ba
  %i.hl = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit140

lex_next.exit140:                                 ; preds = %bb.bb, %bb.bc
  %i.hm = phi i32 [ %i.hk, %bb.bb ], [ %i.hl, %bb.bc ]
  store i32 %i.hm, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.bd:                                            ; preds = %bb.i
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.hp = icmp ult ptr %i.hn, %i.ho
  br i1 %i.hp, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 1
  store ptr %i.hq, ptr %i.i, align 8, !tbaa !27
  %i.hr = load i8, ptr %i.hn, align 1, !tbaa !29
  %i.hs = zext i8 %i.hr to i32
  br label %lex_next.exit139

bb.bf:                                            ; preds = %bb.bd
  %i.ht = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit139

lex_next.exit139:                                 ; preds = %bb.be, %bb.bf
  %i.hu = phi i32 [ %i.hs, %bb.be ], [ %i.ht, %bb.bf ] ; 2 uses
  store i32 %i.hu, ptr %i.d, align 8, !tbaa !26
  switch i32 %i.hu, label %.loopexit [
    i32 61, label %bb.bg
    i32 60, label %bb.bj
  ]

bb.bg:                                            ; preds = %lex_next.exit139
  %i.hv = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.hw = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.hx = icmp ult ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store ptr %i.hy, ptr %i.i, align 8, !tbaa !27
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !29
  %i.ia = zext i8 %i.hz to i32
  br label %lex_next.exit138

bb.bi:                                            ; preds = %bb.bg
  %i.ib = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit138

lex_next.exit138:                                 ; preds = %bb.bh, %bb.bi
  %i.ic = phi i32 [ %i.ia, %bb.bh ], [ %i.ib, %bb.bi ]
  store i32 %i.ic, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.bj:                                            ; preds = %lex_next.exit139
  %i.id = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.ie = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.if = icmp ult ptr %i.id, %i.ie
  br i1 %i.if, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store ptr %i.ig, ptr %i.i, align 8, !tbaa !27
  %i.ih = load i8, ptr %i.id, align 1, !tbaa !29
  %i.ii = zext i8 %i.ih to i32
  br label %lex_next.exit137

bb.bl:                                            ; preds = %bb.bj
  %i.ij = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit137

lex_next.exit137:                                 ; preds = %bb.bk, %bb.bl
  %i.ik = phi i32 [ %i.ii, %bb.bk ], [ %i.ij, %bb.bl ]
  store i32 %i.ik, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.bm:                                            ; preds = %bb.i
  %i.il = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.im = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.in = icmp ult ptr %i.il, %i.im
  br i1 %i.in, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  store ptr %i.io, ptr %i.i, align 8, !tbaa !27
  %i.ip = load i8, ptr %i.il, align 1, !tbaa !29
  %i.iq = zext i8 %i.ip to i32
  br label %lex_next.exit136

bb.bo:                                            ; preds = %bb.bm
  %i.ir = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit136

lex_next.exit136:                                 ; preds = %bb.bn, %bb.bo
  %i.is = phi i32 [ %i.iq, %bb.bn ], [ %i.ir, %bb.bo ] ; 2 uses
  store i32 %i.is, ptr %i.d, align 8, !tbaa !26
  switch i32 %i.is, label %.loopexit [
    i32 61, label %bb.bp
    i32 62, label %bb.bs
  ]

bb.bp:                                            ; preds = %lex_next.exit136
  %i.it = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.iv = icmp ult ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store ptr %i.iw, ptr %i.i, align 8, !tbaa !27
  %i.ix = load i8, ptr %i.it, align 1, !tbaa !29
  %i.iy = zext i8 %i.ix to i32
  br label %lex_next.exit135

bb.br:                                            ; preds = %bb.bp
  %i.iz = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit135

lex_next.exit135:                                 ; preds = %bb.bq, %bb.br
  %i.ja = phi i32 [ %i.iy, %bb.bq ], [ %i.iz, %bb.br ]
  store i32 %i.ja, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.bs:                                            ; preds = %lex_next.exit136
  %i.jb = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.jc = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.jd = icmp ult ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store ptr %i.je, ptr %i.i, align 8, !tbaa !27
  %i.jf = load i8, ptr %i.jb, align 1, !tbaa !29
  %i.jg = zext i8 %i.jf to i32
  br label %lex_next.exit134

bb.bu:                                            ; preds = %bb.bs
  %i.jh = tail call fastcc i32 @lex_more(ptr noundef nonnull %0)
  br label %lex_next.exit134

lex_next.exit134:                                 ; preds = %bb.bt, %bb.bu
  %i.ji = phi i32 [ %i.jg, %bb.bt ], [ %i.jh, %bb.bu ]
  store i32 %i.ji, ptr %i.d, align 8, !tbaa !26
  br label %.loopexit

bb.bv:                                            ; preds = %bb.i
  %i.jj = load ptr, ptr %i.i, align 8, !tbaa !27  ; 3 uses
  %i.jk = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.jl = icmp ult ptr %i.jj, %i.jk
end_hunk_1
