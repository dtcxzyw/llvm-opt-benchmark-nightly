Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/strutil?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_ascii_table = external local_unnamed_addr constant ptr, align 8
@hex_str_to_bytes_encoding.str_to_nibble = internal unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&#x27;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@ws_utf8_seqlen = external local_unnamed_addr constant [256 x i32], align 16
@_hex = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@IA5_default_alphabet = internal unnamed_addr constant [128 x i32] [i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 63], align 16
@module_valid_chars_lower_case = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [133 x i8] zeroinitializer }>, align 16
@module_valid_chars = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [133 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @find_line_end(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %i.c) #13 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %2, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt ptr %i.d, %0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 13
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %2, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store ptr %i.d, ptr %2, align 8
  %i.j = getelementptr i8, ptr %1, i64 -1
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.d, i64 1        ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 13
  %spec.select = select i1 %i.n, ptr %i.l, ptr %i.d
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  store ptr %i.d, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.f, %bb.h
  %.0 = phi ptr [ %i.d, %bb.e ], [ %i.d, %bb.h ], [ %spec.select, %bb.g ], [ %i.d, %bb.f ]
  %i.o = getelementptr i8, ptr %.0, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.1 = phi ptr [ %1, %bb.b ], [ %i.o, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define i32 @get_token_len(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = icmp ult ptr %0, %1
  br i1 %i.b, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %i.a, %3
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.020 = phi ptr [ %i.e, %bb.b ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.d = load i8, ptr %.020, align 1
  switch i8 %i.d, label %bb.b [
    i8 32, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.020, i64 1       ; 2 uses
  %exitcond.not = icmp eq ptr %i.e, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !7

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.020, %.lr.ph ], [ %.020, %.lr.ph ], [ %.020, %.lr.ph ], [ %scevgep, %bb.b ] ; 6 uses
  %i.f = icmp ult ptr %.0.lcssa, %1
  br i1 %i.f, label %.lr.ph28.preheader, label %.critedge2

.lr.ph28.preheader:                               ; preds = %.critedge
  %.0.lcssa32.pre-phi = ptrtoaddr ptr %.0.lcssa to i64
  %i.g = sub i64 %i.a, %.0.lcssa32.pre-phi
  %scevgep33 = getelementptr i8, ptr %.0.lcssa, i64 %i.g
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.c
  %.127 = phi ptr [ %i.j, %bb.c ], [ %.0.lcssa, %.lr.ph28.preheader ] ; 3 uses
  %i.h = load i8, ptr %.127, align 1
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %.lr.ph28
  %i.j = getelementptr i8, ptr %.127, i64 1       ; 2 uses
  %exitcond34.not = icmp eq ptr %i.j, %1
  br i1 %exitcond34.not, label %.critedge2, label %.lr.ph28, !llvm.loop !8

.critedge2:                                       ; preds = %.lr.ph28, %bb.c, %.critedge
  %.1.lcssa = phi ptr [ %.0.lcssa, %.critedge ], [ %scevgep33, %bb.c ], [ %.127, %.lr.ph28 ]
  %i.k = ptrtoint ptr %.0.lcssa to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  store ptr %.1.lcssa, ptr %2, align 8
  ret i32 %i.n
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @hex_str_to_bytes(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 6 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %i.e = alloca [2 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.f = icmp ne ptr %0, null
  %i.g = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %is_byte_sep.exit72.thread76

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @g_byte_array_set_size(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.i = load i8, ptr %0, align 1                 ; 2 uses
  %.not77 = icmp eq i8 %i.i, 0
  br i1 %.not77, label %is_byte_sep.exit72.thread76, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = load ptr, ptr @g_ascii_table, align 8    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.r = phi i8 [ %i.i, %.lr.ph ], [ %i.au, %.backedge ] ; 6 uses
  %.078 = phi ptr [ %0, %.lr.ph ], [ %.0.be, %.backedge ] ; 5 uses
  %i.s = getelementptr i8, ptr %.078, i64 1       ; 2 uses
  %i.t = getelementptr i8, ptr %.078, i64 2       ; 4 uses
  %i.u = getelementptr i8, ptr %.078, i64 3       ; 4 uses
  %i.v = load i8, ptr %i.s, align 1               ; 6 uses
  %.not56 = icmp eq i8 %i.v, 0
  br i1 %.not56, label %is_byte_sep.exit72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.t, align 1               ; 3 uses
  %.not57 = icmp eq i8 %i.w, 0
  %.phi.trans.insert = zext i8 %i.r to i64
  %.phi.trans.insert88 = getelementptr [2 x i8], ptr %i.j, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert88, align 2
  %.pre90 = and i16 %.pre, 1024
  %i.x = icmp eq i16 %.pre90, 0                   ; 2 uses
  br i1 %.not57, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.x, label %is_byte_sep.exit72.thread76, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext i8 %i.v to i64
  %i.z = getelementptr [2 x i8], ptr %i.j, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, 1024
  %.not59 = icmp eq i16 %i.ab, 0
  br i1 %.not59, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = zext i8 %i.w to i64
  %i.ad = getelementptr [2 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, 1024
  %.not60 = icmp eq i16 %i.af, 0
  br i1 %.not60, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.u, align 1              ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr [2 x i8], ptr %i.j, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = and i16 %i.aj, 1024
  %.not69 = icmp eq i16 %i.ak, 0
  br i1 %.not69, label %is_byte_sep.exit72.thread76, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.r, ptr %i.b, align 1
  store i8 %i.v, ptr %i.k, align 1
  store i8 0, ptr %i.l, align 1
  store i8 %i.w, ptr %i.c, align 1
  store i8 %i.ag, ptr %i.m, align 1
  store i8 0, ptr %i.n, align 1
  %i.al = call i64 @strtoul(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 16) #14
  %i.am = trunc i64 %i.al to i8
  store i8 %i.am, ptr %i.a, align 1
  %i.an = call ptr @g_byte_array_append(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.ao = call i64 @strtoul(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 16) #14
  %i.ap = trunc i64 %i.ao to i8
  store i8 %i.ap, ptr %i.a, align 1
  %i.aq = call ptr @g_byte_array_append(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.ar = getelementptr i8, ptr %.078, i64 4      ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  switch i8 %i.as, label %is_byte_sep.exit [
    i8 0, label %is_byte_sep.exit72.thread76
    i8 58, label %bb.j
    i8 45, label %bb.j
    i8 46, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.at = getelementptr i8, ptr %.078, i64 5
  br label %.backedgethread-pre-split

.backedgethread-pre-split:                        ; preds = %bb.p, %bb.o, %bb.m, %bb.j, %bb.l, %bb.l, %bb.l
  %.0.be.ph = phi ptr [ %i.u, %bb.l ], [ %i.u, %bb.l ], [ %i.u, %bb.l ], [ %i.t, %bb.o ], [ %i.t, %bb.m ], [ %i.s, %bb.p ], [ %i.at, %bb.j ] ; 2 uses
  %.pr = load i8, ptr %.0.be.ph, align 1
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %is_byte_sep.exit
  %i.au = phi i8 [ %.pr, %.backedgethread-pre-split ], [ %i.as, %is_byte_sep.exit ] ; 2 uses
  %.0.be = phi ptr [ %.0.be.ph, %.backedgethread-pre-split ], [ %i.ar, %is_byte_sep.exit ]
  %.not = icmp eq i8 %i.au, 0
  br i1 %.not, label %is_byte_sep.exit72.thread76, label %bb.c, !llvm.loop !9

is_byte_sep.exit:                                 ; preds = %bb.i
  br i1 %2, label %is_byte_sep.exit72.thread76, label %.backedge

bb.k:                                             ; preds = %bb.d
  br i1 %i.x, label %is_byte_sep.exit72.thread76, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.k
  %i.av = zext i8 %i.v to i64
  %i.aw = getelementptr [2 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = and i16 %i.ax, 1024
  %.not63 = icmp eq i16 %i.ay, 0
  br i1 %.not63, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread
  store i8 %i.r, ptr %i.d, align 1
  store i8 %i.v, ptr %i.o, align 1
  store i8 0, ptr %i.p, align 1
  %i.az = call i64 @strtoul(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 16) #14
  %i.ba = trunc i64 %i.az to i8
  store i8 %i.ba, ptr %i.a, align 1
  %i.bb = call ptr @g_byte_array_append(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.bc = load i8, ptr %i.t, align 1
  switch i8 %i.bc, label %is_byte_sep.exit71 [
    i8 0, label %bb.m
    i8 58, label %.backedgethread-pre-split
    i8 45, label %.backedgethread-pre-split
    i8 46, label %.backedgethread-pre-split
  ]

is_byte_sep.exit71:                               ; preds = %bb.l
  br i1 %2, label %is_byte_sep.exit72.thread76, label %bb.m

bb.m:                                             ; preds = %bb.l, %is_byte_sep.exit71
  br label %.backedgethread-pre-split

bb.n:                                             ; preds = %.thread
  switch i8 %i.v, label %is_byte_sep.exit72.thread76 [
    i8 58, label %bb.o
    i8 45, label %bb.o
    i8 46, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  store i8 %i.r, ptr %i.e, align 1
  store i8 0, ptr %i.q, align 1
  %i.bd = call i64 @strtoul(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 16) #14
  %i.be = trunc i64 %i.bd to i8
  store i8 %i.be, ptr %i.a, align 1
  %i.bf = call ptr @g_byte_array_append(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  br label %.backedgethread-pre-split

is_byte_sep.exit72:                               ; preds = %bb.c
  %i.bg = zext i8 %i.r to i64
  %i.bh = getelementptr [2 x i8], ptr %i.j, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = and i16 %i.bi, 1024
  %.not67 = icmp eq i16 %i.bj, 0
  br i1 %.not67, label %is_byte_sep.exit72.thread76, label %bb.p

bb.p:                                             ; preds = %is_byte_sep.exit72
  store i8 %i.r, ptr %i.e, align 1
  store i8 0, ptr %i.q, align 1
  %i.bk = call i64 @strtoul(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 16) #14
  %i.bl = trunc i64 %i.bk to i8
  store i8 %i.bl, ptr %i.a, align 1
end_hunk_0
