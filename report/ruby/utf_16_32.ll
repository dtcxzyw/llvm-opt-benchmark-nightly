Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/utf_16_32?download=true
inline.NumInlined: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@utf_16_32_byte_array = internal constant [1288 x i8] c"\DC\DF\01\01\01\01\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\10\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\80\BF\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\A0\BF\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\80\9F\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\90\BF\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\80\8F\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\F4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\04\04\04\04\04\04\04\04\04\04\04\04\05\04\04\06\07\07\07\08", align 16
@utf_16_32_word_array = internal constant [106 x i32] [i32 7, i32 15, i32 0, i32 0, i32 8, i32 6, i32 16, i32 15, i32 20, i32 7, i32 264, i32 28, i32 40, i32 6, i32 48, i32 15, i32 7, i32 522, i32 60, i32 68, i32 7, i32 525, i32 76, i32 7, i32 68, i32 544, i32 92, i32 84, i32 100, i32 562, i32 108, i32 116, i32 6, i32 124, i32 15, i32 6, i32 136, i32 7, i32 140, i32 0, i32 148, i32 156, i32 6, i32 164, i32 140, i32 168, i32 7, i32 264, i32 176, i32 140, i32 7, i32 562, i32 196, i32 140, i32 6, i32 212, i32 204, i32 216, i32 7, i32 820, i32 224, i32 236, i32 7, i32 522, i32 244, i32 13, i32 6, i32 260, i32 264, i32 6, i32 272, i32 276, i32 6, i32 284, i32 288, i32 6, i32 296, i32 839, i32 0, i32 7, i32 308, i32 905, i32 316, i32 839, i32 316, i32 939, i32 316, i32 7, i32 332, i32 973, i32 348, i32 839, i32 348, i32 1023, i32 348, i32 15, i32 7, i32 308, i32 324, i32 332, i32 340, i32 356, i32 364, i32 372, i32 1041, i32 380], align 16
@rb_from_UTF_16BE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 188, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 2, i32 4, i32 4, i32 1, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_from_utf_16be, ptr null, ptr null, ptr null, ptr null }, align 8
@rb_to_UTF_16BE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr @.str, i32 416, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 1, i32 4, i32 4, i32 2, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_to_utf_16be, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@rb_from_UTF_16LE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.4, ptr @.str.1, i32 52, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 2, i32 4, i32 4, i32 1, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_from_utf_16le, ptr null, ptr null, ptr null, ptr null }, align 8
@rb_to_UTF_16LE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr @.str.4, i32 416, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 1, i32 4, i32 4, i32 2, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_to_utf_16le, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1
@rb_from_UTF_32BE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.7, ptr @.str.1, i32 252, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 4, i32 4, i32 4, i32 1, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_from_utf_32be, ptr null, ptr null, ptr null, ptr null }, align 8
@rb_to_UTF_32BE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr @.str.7, i32 416, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 1, i32 4, i32 4, i32 2, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_to_utf_32be, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"UTF-32LE\00", align 1
@rb_from_UTF_32LE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.10, ptr @.str.1, i32 128, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 4, i32 4, i32 4, i32 1, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_from_utf_32le, ptr null, ptr null, ptr null, ptr null }, align 8
@rb_to_UTF_32LE = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr @.str.10, i32 416, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 1, i32 4, i32 4, i32 2, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_to_utf_32le, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"UTF-16\00", align 1
@rb_from_UTF_16 = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.13, ptr @.str.1, i32 276, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 2, i32 4, i32 4, i32 1, i64 1, ptr @state_init, ptr null, ptr null, ptr @fun_si_from_utf_16, ptr null, ptr @fun_so_from_utf_16, ptr null, ptr null, ptr null, ptr null }, align 8
@rb_to_UTF_16 = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr @.str.13, i32 416, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 1, i32 4, i32 4, i32 2, i64 1, ptr @state_init, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_to_utf_16, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"UTF-32\00", align 1
@rb_from_UTF_32 = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.16, ptr @.str.1, i32 300, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 4, i32 4, i32 4, i32 1, i64 1, ptr @state_init, ptr null, ptr null, ptr @fun_si_from_utf_32, ptr null, ptr @fun_so_from_utf_32, ptr null, ptr null, ptr null, ptr null }, align 8
@rb_to_UTF_32 = internal constant { ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr @.str.16, i32 416, [4 x i8] zeroinitializer, ptr @utf_16_32_byte_array, i32 1288, [4 x i8] zeroinitializer, ptr @utf_16_32_word_array, i32 106, i32 4, i32 1, i32 4, i32 4, i32 2, i64 1, ptr @state_init, ptr null, ptr null, ptr null, ptr null, ptr @fun_so_to_utf_32, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: nounwind sspstrong uwtable
define void @Init_utf_16_32() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_from_UTF_16BE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_to_UTF_16BE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_from_UTF_16LE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_to_UTF_16LE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_from_UTF_32BE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_to_UTF_32BE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_from_UTF_32LE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_to_UTF_32LE) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_from_UTF_16) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_to_UTF_16) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_from_UTF_32) #5
  tail call void @rb_register_transcoder(ptr noundef nonnull @rb_to_UTF_32) #5
  ret void
}

declare void @rb_register_transcoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 1, 5) i64 @fun_so_from_utf_16be(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i64 %4) #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !10      ; 6 uses
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !10    ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i8 %i.c, ptr %3, align 1, !tbaa !10
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = icmp ult i8 %i.a, 8
  br i1 %i.e, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.c, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = tail call i8 @llvm.fshl.i8(i8 %i.a, i8 %i.f, i8 2)
  %i.i = or disjoint i8 %i.h, -64
  store i8 %i.i, ptr %3, align 1, !tbaa !10
  %i.j = load i8, ptr %i.g, align 1, !tbaa !10
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = and i8 %i.a, -8
  %.not32 = icmp eq i8 %i.n, -40
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i8 %i.a, 4
  %i.p = or disjoint i8 %i.o, -32
  store i8 %i.p, ptr %3, align 1, !tbaa !10
  %i.q = load i8, ptr %1, align 1, !tbaa !10
  %i.r = shl i8 %i.q, 2
  %i.s = and i8 %i.r, 60
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = lshr i8 %i.u, 6
  %i.w = or disjoint i8 %i.v, %i.s
  %i.x = or disjoint i8 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !10
  %i.z = load i8, ptr %i.t, align 1, !tbaa !10
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = shl i8 %i.a, 2
  %i.ae = and i8 %i.ad, 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ah = lshr i8 %i.ag, 6
  %i.ai = or disjoint i8 %i.ah, %i.ae
  %i.aj = add nuw nsw i8 %i.ai, 1                 ; 2 uses
  %i.ak = lshr i8 %i.aj, 2
  %i.al = or disjoint i8 %i.ak, -16
  store i8 %i.al, ptr %3, align 1, !tbaa !10
  %i.am = load i8, ptr %i.af, align 1, !tbaa !10
  %i.an = lshr i8 %i.am, 2
  %i.ao = and i8 %i.an, 15
  %i.ap = shl i8 %i.aj, 4
  %i.aq = and i8 %i.ap, 48
  %i.ar = or disjoint i8 %i.ao, %i.aq
  %i.as = or disjoint i8 %i.ar, -128
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !10
  %i.au = load i8, ptr %i.af, align 1, !tbaa !10
  %i.av = shl i8 %i.au, 4
  %i.aw = and i8 %i.av, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10
  %i.az = shl i8 %i.ay, 2
  %i.ba = and i8 %i.az, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bd = lshr i8 %i.bc, 6
  %i.be = or disjoint i8 %i.aw, %i.ba
  %i.bf = or disjoint i8 %i.be, %i.bd
  %i.bg = or disjoint i8 %i.bf, -128
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !10
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bj = and i8 %i.bi, 63
  %i.bk = or disjoint i8 %i.bj, -128
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread, %bb.c
  %.0 = phi i64 [ 2, %.thread ], [ 3, %bb.f ], [ 4, %bb.g ], [ 1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 2, 5) i64 @fun_so_to_utf_16be(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i64 %4) #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !10      ; 5 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !10
  %i.c = load i8, ptr %1, align 1, !tbaa !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 224
  %i.e = icmp eq i32 %i.d, 192
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = lshr i8 %i.a, 2
  %i.g = and i8 %i.f, 7
  store i8 %i.g, ptr %3, align 1, !tbaa !10
  %i.h = load i8, ptr %1, align 1, !tbaa !10
  %i.i = shl i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = and i32 %i.b, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = shl i8 %i.a, 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = lshr i8 %i.r, 2
  %i.t = xor i8 %i.s, 32
  %i.u = or i8 %i.t, %i.p
  store i8 %i.u, ptr %3, align 1, !tbaa !10
  %i.v = load i8, ptr %i.q, align 1, !tbaa !10
  %i.w = shl i8 %i.v, 6
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = xor i8 %i.y, -128
  %i.aa = or i8 %i.z, %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %5 = shl i8 %i.a, 2
  %6 = and i8 %5, 28
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = lshr i8 %i.ac, 4
  %i.ae = and i8 %i.ad, 3
  %7 = or disjoint i8 %i.ae, %6
  %8 = add nsw i8 %7, -1                          ; 2 uses
  %i.af = lshr i8 %8, 2
  %i.ag = or i8 %i.af, -40
  store i8 %i.ag, ptr %3, align 1, !tbaa !10
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ai = shl i8 %i.ah, 2
  %i.aj = and i8 %i.ai, 60
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.am = lshr i8 %i.al, 4
  %9 = add nsw i8 %i.am, -8
  %10 = shl i8 %8, 6
  %11 = or disjoint i8 %10, %i.aj
  %12 = or i8 %11, %9
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %12, ptr %i.an, align 1, !tbaa !10
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.ap = lshr i8 %i.ao, 2
  %i.aq = and i8 %i.ap, 3
  %i.ar = or disjoint i8 %i.aq, -36
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !10
  %i.at = load i8, ptr %i.ak, align 1, !tbaa !10
  %i.au = shl i8 %i.at, 6
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  %i.ax = and i8 %i.aw, 127
  %i.ay = or i8 %i.ax, %i.au
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink32 = phi i64 [ 3, %bb.g ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.b ]
  %.sink = phi i8 [ %i.ay, %bb.g ], [ %i.aa, %bb.f ], [ %i.m, %bb.d ], [ %i.c, %bb.b ]
  %.0 = phi i64 [ 4, %bb.g ], [ 2, %bb.f ], [ 2, %bb.d ], [ 2, %bb.b ]
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %.sink32
  store i8 %.sink, ptr %i.az, align 1, !tbaa !10
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 1, 5) i64 @fun_so_from_utf_16le(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i64 %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 6 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !10      ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store i8 %i.c, ptr %3, align 1, !tbaa !10
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = icmp ult i8 %i.b, 8
  br i1 %i.e, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.pre = load i8, ptr %1, align 1, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.c, %bb.b ]
  %i.g = tail call i8 @llvm.fshl.i8(i8 %i.b, i8 %i.f, i8 2)
  %i.h = or disjoint i8 %i.g, -64
  store i8 %i.h, ptr %3, align 1, !tbaa !10
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !10
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = and i8 %i.b, -8
  %.not32 = icmp eq i8 %i.m, -40
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = lshr i8 %i.b, 4
  %i.o = or disjoint i8 %i.n, -32
  store i8 %i.o, ptr %3, align 1, !tbaa !10
  %i.p = load i8, ptr %i.a, align 1, !tbaa !10
  %i.q = shl i8 %i.p, 2
  %i.r = and i8 %i.q, 60
  %i.s = load i8, ptr %1, align 1, !tbaa !10
  %i.t = lshr i8 %i.s, 6
  %i.u = or disjoint i8 %i.t, %i.r
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !10
  %i.x = load i8, ptr %1, align 1, !tbaa !10
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = shl i8 %i.b, 2
  %i.ac = and i8 %i.ab, 12
  %i.ad = load i8, ptr %1, align 1, !tbaa !10
  %i.ae = lshr i8 %i.ad, 6
  %i.af = or disjoint i8 %i.ae, %i.ac
  %i.ag = add nuw nsw i8 %i.af, 1                 ; 2 uses
  %i.ah = lshr i8 %i.ag, 2
  %i.ai = or disjoint i8 %i.ah, -16
  store i8 %i.ai, ptr %3, align 1, !tbaa !10
  %i.aj = load i8, ptr %1, align 1, !tbaa !10
  %i.ak = lshr i8 %i.aj, 2
  %i.al = and i8 %i.ak, 15
  %i.am = shl i8 %i.ag, 4
  %i.an = and i8 %i.am, 48
  %i.ao = or disjoint i8 %i.al, %i.an
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !10
  %i.ar = load i8, ptr %1, align 1, !tbaa !10
  %i.as = shl i8 %i.ar, 4
  %i.at = and i8 %i.as, 48
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %i.aw = shl i8 %i.av, 2
  %i.ax = and i8 %i.aw, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ba = lshr i8 %i.az, 6
  %i.bb = or disjoint i8 %i.at, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = or disjoint i8 %i.bc, -128
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !10
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.bg = and i8 %i.bf, 63
  %i.bh = or disjoint i8 %i.bg, -128
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread, %bb.c
  %.0 = phi i64 [ 2, %.thread ], [ 3, %bb.f ], [ 4, %bb.g ], [ 1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 2, 5) i64 @fun_so_to_utf_16le(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %3, i64 %4) #2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !10      ; 5 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !10
  %i.d = load i8, ptr %1, align 1, !tbaa !10
  store i8 %i.d, ptr %3, align 1, !tbaa !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 224
  %i.f = icmp eq i32 %i.e, 192
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i8 %i.a, 2
  %i.h = and i8 %i.g, 7
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !10
  %i.j = load i8, ptr %1, align 1, !tbaa !10
  %i.k = shl i8 %i.j, 6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, %i.k
  store i8 %i.o, ptr %3, align 1, !tbaa !10
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %i.b, 240
  %i.q = icmp eq i32 %i.p, 224
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl i8 %i.a, 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = lshr i8 %i.t, 2
  %i.v = xor i8 %i.u, 32
  %i.w = or i8 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10
  %i.y = load i8, ptr %i.s, align 1, !tbaa !10
  %i.z = shl i8 %i.y, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ac = xor i8 %i.ab, -128
  %i.ad = or i8 %i.ac, %i.z
  store i8 %i.ad, ptr %3, align 1, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %5 = shl i8 %i.a, 2
  %6 = and i8 %5, 28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = lshr i8 %i.af, 4
  %i.ah = and i8 %i.ag, 3
  %7 = or disjoint i8 %i.ah, %6
  %8 = add nsw i8 %7, -1                          ; 2 uses
  %i.ai = lshr i8 %8, 2
  %i.aj = or i8 %i.ai, -40
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !10
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.am = shl i8 %i.al, 2
  %i.an = and i8 %i.am, 60
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.aq = lshr i8 %i.ap, 4
  %9 = add nsw i8 %i.aq, -8
  %10 = shl i8 %8, 6
  %11 = or disjoint i8 %10, %i.an
  %12 = or i8 %11, %9
  store i8 %12, ptr %3, align 1, !tbaa !10
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.as = lshr i8 %i.ar, 2
  %i.at = and i8 %i.as, 3
  %i.au = or disjoint i8 %i.at, -36
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !10
  %i.ax = shl i8 %i.aw, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ba = and i8 %i.az, 127
  %i.bb = or i8 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 2, %bb.d ], [ 2, %bb.f ], [ 4, %bb.g ], [ 2, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 1, 5) i64 @fun_so_from_utf_32be(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, i64 %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 4 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10    ; 3 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i8 %i.g, ptr %3, align 1, !tbaa !10
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = icmp ult i8 %i.d, 8
  br i1 %i.i, label %..thread_crit_edge, label %bb.f

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.c
  %i.j = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = tail call i8 @llvm.fshl.i8(i8 %i.d, i8 %i.j, i8 2)
  %i.m = or disjoint i8 %i.l, -64
  store i8 %i.m, ptr %3, align 1, !tbaa !10
  %i.n = load i8, ptr %i.k, align 1, !tbaa !10
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !10
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i8 %i.d, 4
  %i.s = or disjoint i8 %i.r, -32
  store i8 %i.s, ptr %3, align 1, !tbaa !10
  %i.t = load i8, ptr %i.c, align 1, !tbaa !10
  %i.u = shl i8 %i.t, 2
  %i.v = and i8 %i.u, 60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = lshr i8 %i.x, 6
  %i.z = or disjoint i8 %i.y, %i.v
  %i.aa = or disjoint i8 %i.z, -128
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !10
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !10
  %i.ad = and i8 %i.ac, 63
  %i.ae = or disjoint i8 %i.ad, -128
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ag = lshr i8 %i.b, 2
  %i.ah = or i8 %i.ag, -16
  store i8 %i.ah, ptr %3, align 1, !tbaa !10
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !10
  %i.aj = shl i8 %i.ai, 4
  %i.ak = and i8 %i.aj, 48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = lshr i8 %i.am, 4
  %i.ao = or disjoint i8 %i.an, %i.ak
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !10
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !10
  %i.as = shl i8 %i.ar, 2
  %i.at = and i8 %i.as, 60
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10
  %i.aw = lshr i8 %i.av, 6
  %i.ax = or disjoint i8 %i.aw, %i.at
  %i.ay = or disjoint i8 %i.ax, -128
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !10
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !10
  %i.bb = and i8 %i.ba, 63
  %i.bc = or disjoint i8 %i.bb, -128
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread, %bb.d
  %.0 = phi i64 [ 4, %bb.g ], [ 1, %bb.d ], [ 2, %.thread ], [ 3, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i64 @fun_so_to_utf_32be(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i64 %4) #2 {
bb.a:
  store i8 0, ptr %3, align 1, !tbaa !10
  %i.a = load i8, ptr %1, align 1, !tbaa !10      ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 0, ptr %i.c, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !10
  %i.e = load i8, ptr %1, align 1, !tbaa !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.h, align 1, !tbaa !10
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  %i.j = lshr i8 %i.i, 2
  %i.k = and i8 %i.j, 7
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.k, ptr %i.l, align 1, !tbaa !10
  %i.m = load i8, ptr %1, align 1, !tbaa !10
  %i.n = shl i8 %i.m, 6
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, %i.n
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.s = and i32 %i.b, 240
  %i.t = icmp eq i32 %i.s, 224
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.u, align 1, !tbaa !10
  %i.v = load i8, ptr %1, align 1, !tbaa !10
  %i.w = shl i8 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = lshr i8 %i.y, 2
  %i.aa = xor i8 %i.z, 32
  %i.ab = or i8 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !10
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !10
  %i.ae = shl i8 %i.ad, 6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10
  %i.ah = xor i8 %i.ag, -128
  %i.ai = or i8 %i.ah, %i.ae
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = shl i8 %i.a, 2
  %i.ak = and i8 %i.aj, 28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = lshr i8 %i.am, 4
  %i.ao = and i8 %i.an, 3
  %i.ap = or disjoint i8 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !10
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !10
  %i.as = shl i8 %i.ar, 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
end_hunk_0
