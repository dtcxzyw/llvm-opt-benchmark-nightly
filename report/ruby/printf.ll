inline.NumInlined: 41
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Bug\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Printf\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"sncount\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<%li\0B>\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"{%+li\0B}\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"[% li\0B]\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"wrong length(%ld)\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"wrong conversion(%c)\00", align 1
@printf_test_call.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@printf_test_call.rbimpl_id.14 = internal unnamed_addr global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@printf_test_call.rbimpl_id.16 = internal unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@printf_test_call.rbimpl_id.18 = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@printf_test_call.rbimpl_id.20 = internal unnamed_addr global i64 0, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@printf_test_call.rbimpl_id.22 = internal unnamed_addr global i64 0, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@printf_test_call.rbimpl_id.24 = internal unnamed_addr global i64 0, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define void @Init_printf() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str) #5
  %i.b = tail call i64 @rb_define_module_under(i64 noundef %i.a, ptr noundef nonnull @.str.1) #5 ; 5 uses
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @printf_test_s, i32 noundef 1) #5
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull @printf_test_v, i32 noundef 1) #5
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @printf_test_q, i32 noundef 1) #5
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.5, ptr noundef nonnull @printf_test_call, i32 noundef -1) #5
  tail call void @rb_define_singleton_method(i64 noundef %i.b, ptr noundef nonnull @.str.6, ptr noundef nonnull @snprintf_count, i32 noundef 1) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @printf_test_s(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #5
  %i.b = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7, i64 noundef %1) #5
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @printf_test_v(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #5
  %i.b = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, i64 noundef %1) #5
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @printf_test_q(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call nonnull ptr @rb_usascii_encoding() #5
  %i.b = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.9, i64 noundef %1) #5
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal i64 @printf_test_call(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = icmp sgt i32 %0, 0
  %.028.idx.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.028.idx.sroa.gep121 = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call i32 @rb_keyword_given_p() #5
  %.not83 = icmp eq i32 %i.h, 0
  br i1 %.not83, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.g) #5
  %i.j = add nsw i32 %0, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.188.i = phi i64 [ 4, %bb.b ], [ %i.i, %bb.c ] ; 12 uses
  %.1.i = phi i32 [ %0, %bb.b ], [ %i.j, %bb.c ]  ; 4 uses
  %i.k = icmp samesign ult i32 %.1.i, 2
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %1, align 8, !tbaa !10     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10
  store i64 %i.n, ptr %i.a, align 8, !tbaa !10
  %i.o = icmp eq i32 %.1.i, 2
  br i1 %i.o, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %bb.d
  %.1.i82 = phi i32 [ %.1.i, %bb.d ], [ %.1.i, %bb.e ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i82, i32 noundef 2, i32 noundef 2) #6
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.p = icmp eq i64 %i.l, 0
  %i.q = and i64 %i.l, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.t = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.v = and i64 %i.u, 31
  %i.w = icmp eq i64 %i.v, 5
  br i1 %i.w, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !15

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.f, %rb_scan_args_set.exit
  tail call void @rb_unexpected_type(i64 noundef %i.l, i32 noundef 5) #7
  unreachable

Check_Type.exit:                                  ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i64 %i.y, 1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Check_Type.exit
  %i.z = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.11, i64 noundef %i.y) #6
  unreachable

bb.h:                                             ; preds = %Check_Type.exit
  %i.aa = and i64 %i.u, 8192
  %.not.i32 = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  br i1 %.not.i32, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.ad = phi ptr [ %i.ac, %bb.i ], [ %i.ab, %bb.h ]
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18  ; 4 uses
  switch i8 %i.ae, label %bb.n [
    i8 100, label %bb.j
    i8 120, label %bb.j
    i8 111, label %bb.j
    i8 88, label %bb.j
    i8 115, label %bb.m
  ]

bb.j:                                             ; preds = %RSTRING_PTR.exit, %RSTRING_PTR.exit, %RSTRING_PTR.exit, %RSTRING_PTR.exit
  %i.af = load i64, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i64 @rb_fix2int(i64 noundef %i.af) #5
  br label %rb_num2int_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call i64 @rb_num2int(i64 noundef %i.af) #5
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ah, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = trunc i64 %.0.i to i32
  br label %bb.o

bb.m:                                             ; preds = %RSTRING_PTR.exit
  %i.ak = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #5
  br label %bb.o

bb.n:                                             ; preds = %RSTRING_PTR.exit
  %i.al = sext i8 %i.ae to i32
  %i.am = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.12, i32 noundef %i.al) #6
  unreachable

bb.o:                                             ; preds = %bb.m, %rb_num2int_inline.exit
  %.030 = phi ptr [ null, %rb_num2int_inline.exit ], [ %i.ak, %bb.m ]
  %.029 = phi i32 [ %i.aj, %rb_num2int_inline.exit ], [ 0, %bb.m ]
  store i8 37, ptr %i.b, align 16, !tbaa !18
  %i.an = icmp eq i64 %.188.i, 4
  br i1 %i.an, label %uint_to_str.exit79.a, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp eq i64 %.188.i, 0
  %i.ap = and i64 %.188.i, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i33, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.as = inttoptr i64 %.188.i to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 8
  br i1 %i.av, label %Check_Type.exit34, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i33, !prof !15

rbimpl_RB_TYPE_P_fastpath.exit.thread.i33:        ; preds = %bb.q, %bb.p
  call void @rb_unexpected_type(i64 noundef %.188.i, i32 noundef 8) #7
  unreachable

Check_Type.exit34:                                ; preds = %bb.q
  %.pr.i = load i64, ptr @printf_test_call.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %Check_Type.exit34, %.lr.ph.i
  %i.aw = call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 5) #5 ; 3 uses
  store i64 %i.aw, ptr @printf_test_call.rbimpl_id, align 8, !tbaa !10
  %.not.i35 = icmp eq i64 %i.aw, 0
  br i1 %.not.i35, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !19

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %Check_Type.exit34
  %.lcssa.i = phi i64 [ %.pr.i, %Check_Type.exit34 ], [ %i.aw, %.lr.ph.i ]
  %i.ax = call i64 @rb_id2sym(i64 noundef %.lcssa.i) #5
  %i.ay = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.ax) #5
  %i.az = and i64 %i.ay, -5
  %.not84 = icmp eq i64 %i.az, 0
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %rbimpl_intern_const.exit
  store i8 32, ptr %.028.idx.sroa.gep121, align 1, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rbimpl_intern_const.exit
  %.028.idx.sroa.phi = phi ptr [ %.028.idx.sroa.gep, %bb.r ], [ %.028.idx.sroa.gep121, %rbimpl_intern_const.exit ]
  %.028.idx = phi i64 [ 2, %bb.r ], [ 1, %rbimpl_intern_const.exit ] ; 2 uses
  %.pr.i36 = load i64, ptr @printf_test_call.rbimpl_id.14, align 8, !tbaa !10 ; 2 uses
  %.not4.i37 = icmp eq i64 %.pr.i36, 0
  br i1 %.not4.i37, label %.lr.ph.i39, label %rbimpl_intern_const.exit41

.lr.ph.i39:                                       ; preds = %bb.s, %.lr.ph.i39
  %i.ba = call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 4) #5 ; 3 uses
  store i64 %i.ba, ptr @printf_test_call.rbimpl_id.14, align 8, !tbaa !10
  %.not.i40 = icmp eq i64 %i.ba, 0
  br i1 %.not.i40, label %.lr.ph.i39, label %rbimpl_intern_const.exit41, !llvm.loop !19

rbimpl_intern_const.exit41:                       ; preds = %.lr.ph.i39, %bb.s
  %.lcssa.i38 = phi i64 [ %.pr.i36, %bb.s ], [ %i.ba, %.lr.ph.i39 ]
  %i.bb = call i64 @rb_id2sym(i64 noundef %.lcssa.i38) #5
  %i.bc = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bb) #5
  %i.bd = and i64 %i.bc, -5
  %.not85 = icmp eq i64 %i.bd, 0
  br i1 %.not85, label %bb.u, label %bb.t

bb.t:                                             ; preds = %rbimpl_intern_const.exit41
  %.028.add = add nuw nsw i64 %.028.idx, 1
  store i8 35, ptr %.028.idx.sroa.phi, align 1, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %rbimpl_intern_const.exit41
  %.1.idx = phi i64 [ %.028.add, %bb.t ], [ %.028.idx, %rbimpl_intern_const.exit41 ] ; 3 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.idx
  %.pr.i42 = load i64, ptr @printf_test_call.rbimpl_id.16, align 8, !tbaa !10 ; 2 uses
  %.not4.i43 = icmp eq i64 %.pr.i42, 0
  br i1 %.not4.i43, label %.lr.ph.i45, label %rbimpl_intern_const.exit47

.lr.ph.i45:                                       ; preds = %bb.u, %.lr.ph.i45
  %i.be = call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 4) #5 ; 3 uses
  store i64 %i.be, ptr @printf_test_call.rbimpl_id.16, align 8, !tbaa !10
  %.not.i46 = icmp eq i64 %i.be, 0
  br i1 %.not.i46, label %.lr.ph.i45, label %rbimpl_intern_const.exit47, !llvm.loop !19

rbimpl_intern_const.exit47:                       ; preds = %.lr.ph.i45, %bb.u
  %.lcssa.i44 = phi i64 [ %.pr.i42, %bb.u ], [ %i.be, %.lr.ph.i45 ]
  %i.bf = call i64 @rb_id2sym(i64 noundef %.lcssa.i44) #5
  %i.bg = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bf) #5
  %i.bh = and i64 %i.bg, -5
  %.not86 = icmp eq i64 %i.bh, 0
  br i1 %.not86, label %bb.w, label %bb.v

bb.v:                                             ; preds = %rbimpl_intern_const.exit47
  %.1.add = add nuw nsw i64 %.1.idx, 1
  store i8 43, ptr %.1.ptr, align 1, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %rbimpl_intern_const.exit47
  %.2.idx = phi i64 [ %.1.add, %bb.v ], [ %.1.idx, %rbimpl_intern_const.exit47 ] ; 3 uses
  %.2.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2.idx
  %.pr.i48 = load i64, ptr @printf_test_call.rbimpl_id.18, align 8, !tbaa !10 ; 2 uses
  %.not4.i49 = icmp eq i64 %.pr.i48, 0
  br i1 %.not4.i49, label %.lr.ph.i51, label %rbimpl_intern_const.exit53

.lr.ph.i51:                                       ; preds = %bb.w, %.lr.ph.i51
  %i.bi = call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 5) #5 ; 3 uses
  store i64 %i.bi, ptr @printf_test_call.rbimpl_id.18, align 8, !tbaa !10
  %.not.i52 = icmp eq i64 %i.bi, 0
  br i1 %.not.i52, label %.lr.ph.i51, label %rbimpl_intern_const.exit53, !llvm.loop !19

rbimpl_intern_const.exit53:                       ; preds = %.lr.ph.i51, %bb.w
  %.lcssa.i50 = phi i64 [ %.pr.i48, %bb.w ], [ %i.bi, %.lr.ph.i51 ]
  %i.bj = call i64 @rb_id2sym(i64 noundef %.lcssa.i50) #5
  %i.bk = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bj) #5
  %i.bl = and i64 %i.bk, -5
  %.not87 = icmp eq i64 %i.bl, 0
  br i1 %.not87, label %bb.y, label %bb.x

bb.x:                                             ; preds = %rbimpl_intern_const.exit53
  %.2.add = add nuw nsw i64 %.2.idx, 1
  store i8 45, ptr %.2.ptr, align 1, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %rbimpl_intern_const.exit53
  %.3.idx = phi i64 [ %.2.add, %bb.x ], [ %.2.idx, %rbimpl_intern_const.exit53 ] ; 3 uses
  %.3.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.3.idx
  %.pr.i54 = load i64, ptr @printf_test_call.rbimpl_id.20, align 8, !tbaa !10 ; 2 uses
  %.not4.i55 = icmp eq i64 %.pr.i54, 0
  br i1 %.not4.i55, label %.lr.ph.i57, label %rbimpl_intern_const.exit59

.lr.ph.i57:                                       ; preds = %bb.y, %.lr.ph.i57
  %i.bm = call i64 @rb_intern2(ptr noundef nonnull @.str.21, i64 noundef 4) #5 ; 3 uses
  store i64 %i.bm, ptr @printf_test_call.rbimpl_id.20, align 8, !tbaa !10
  %.not.i58 = icmp eq i64 %i.bm, 0
  br i1 %.not.i58, label %.lr.ph.i57, label %rbimpl_intern_const.exit59, !llvm.loop !19

rbimpl_intern_const.exit59:                       ; preds = %.lr.ph.i57, %bb.y
  %.lcssa.i56 = phi i64 [ %.pr.i54, %bb.y ], [ %i.bm, %.lr.ph.i57 ]
  %i.bn = call i64 @rb_id2sym(i64 noundef %.lcssa.i56) #5
  %i.bo = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.bn) #5
  %i.bp = and i64 %i.bo, -5
  %.not88 = icmp eq i64 %i.bp, 0
  br i1 %.not88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %rbimpl_intern_const.exit59
  %.3.add = add nuw nsw i64 %.3.idx, 1
  store i8 48, ptr %.3.ptr, align 1, !tbaa !18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rbimpl_intern_const.exit59
  %.4.idx = phi i64 [ %.3.add, %bb.z ], [ %.3.idx, %rbimpl_intern_const.exit59 ] ; 3 uses
  %.4.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.4.idx ; 2 uses
  %.pr.i60 = load i64, ptr @printf_test_call.rbimpl_id.22, align 8, !tbaa !10 ; 2 uses
  %.not4.i61 = icmp eq i64 %.pr.i60, 0
  br i1 %.not4.i61, label %.lr.ph.i63, label %rbimpl_intern_const.exit65

.lr.ph.i63:                                       ; preds = %bb.aa, %.lr.ph.i63
  %i.bq = call i64 @rb_intern2(ptr noundef nonnull @.str.23, i64 noundef 5) #5 ; 3 uses
  store i64 %i.bq, ptr @printf_test_call.rbimpl_id.22, align 8, !tbaa !10
  %.not.i64 = icmp eq i64 %i.bq, 0
  br i1 %.not.i64, label %.lr.ph.i63, label %rbimpl_intern_const.exit65, !llvm.loop !19

rbimpl_intern_const.exit65:                       ; preds = %.lr.ph.i63, %bb.aa
  %.lcssa.i62 = phi i64 [ %.pr.i60, %bb.aa ], [ %i.bq, %.lr.ph.i63 ]
  %i.br = call i64 @rb_id2sym(i64 noundef %.lcssa.i62) #5
  %i.bs = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.br) #5 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4
  br i1 %i.bt, label %uint_to_str.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %rbimpl_intern_const.exit65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bv = call i64 @rb_num2uint(i64 noundef %i.bs) #5
  %i.bw = trunc i64 %i.bv to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.017.i = phi ptr [ %i.ca, %.preheader.i ], [ %i.bu, %.preheader.i.preheader ]
  %.016.i = phi i32 [ %i.cb, %.preheader.i ], [ %i.bw, %.preheader.i.preheader ] ; 3 uses
  %i.bx = urem i32 %.016.i, 10
  %i.by = trunc nuw nsw i32 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, 48
  %i.ca = getelementptr inbounds i8, ptr %.017.i, i64 -1 ; 5 uses
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !18
  %i.cb = udiv i32 %.016.i, 10
  %i.cc = icmp ugt i32 %.016.i, 9
  %i.cd = icmp ugt ptr %i.ca, %.4.ptr.ptr
  %i.ce = and i1 %i.cc, %i.cd
  br i1 %i.ce, label %.preheader.i, label %bb.ab, !llvm.loop !21

bb.ab:                                            ; preds = %.preheader.i
  %i.cf = ptrtoint ptr %i.bu to i64
  %i.cg = ptrtoint ptr %i.ca to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4.ptr.ptr, ptr noundef nonnull align 1 dereferenceable(1) %i.ca, i64 %i.ch, i1 false)
  %.4.ptr.add = add nsw i64 %i.ch, %.4.idx
  br label %uint_to_str.exit

uint_to_str.exit:                                 ; preds = %bb.ab, %rbimpl_intern_const.exit65
  %.5.idx = phi i64 [ %.4.idx, %rbimpl_intern_const.exit65 ], [ %.4.ptr.add, %bb.ab ] ; 2 uses
  %.5.ptr = getelementptr i8, ptr %i.b, i64 %.5.idx ; 3 uses
  %.pr.i68 = load i64, ptr @printf_test_call.rbimpl_id.24, align 8, !tbaa !10 ; 2 uses
  %.not4.i69 = icmp eq i64 %.pr.i68, 0
  br i1 %.not4.i69, label %.lr.ph.i71, label %rbimpl_intern_const.exit73

.lr.ph.i71:                                       ; preds = %uint_to_str.exit, %.lr.ph.i71
  %i.ci = call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 4) #5 ; 3 uses
  store i64 %i.ci, ptr @printf_test_call.rbimpl_id.24, align 8, !tbaa !10
  %.not.i72 = icmp eq i64 %i.ci, 0
  br i1 %.not.i72, label %.lr.ph.i71, label %rbimpl_intern_const.exit73, !llvm.loop !19

rbimpl_intern_const.exit73:                       ; preds = %.lr.ph.i71, %uint_to_str.exit
  %.lcssa.i70 = phi i64 [ %.pr.i68, %uint_to_str.exit ], [ %i.ci, %.lr.ph.i71 ]
  %i.cj = call i64 @rb_id2sym(i64 noundef %.lcssa.i70) #5
  %i.ck = call i64 @rb_hash_aref(i64 noundef %.188.i, i64 noundef %i.cj) #5 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 4
  br i1 %i.cl, label %uint_to_str.exit79.a, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_intern_const.exit73
  %.ptr = getelementptr i8, ptr %.5.ptr, i64 1    ; 5 uses
  store i8 46, ptr %.5.ptr, align 1, !tbaa !18
  %i.cm = trunc i64 %i.ck to i1
  br i1 %i.cm, label %bb.ad, label %uint_to_str.exit79.a

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.co = call i64 @rb_num2uint(i64 noundef %i.ck) #5
  %.not.i74 = icmp slt i64 %.5.idx, 31
  br i1 %.not.i74, label %.preheader.i76.preheader, label %uint_to_str.exit79.a

.preheader.i76.preheader:                         ; preds = %bb.ad
  %i.cp = trunc i64 %i.co to i32
  br label %.preheader.i76

.preheader.i76:                                   ; preds = %.preheader.i76.preheader, %.preheader.i76
  %.017.i77 = phi ptr [ %i.ct, %.preheader.i76 ], [ %i.cn, %.preheader.i76.preheader ]
  %.016.i78 = phi i32 [ %i.cu, %.preheader.i76 ], [ %i.cp, %.preheader.i76.preheader ] ; 3 uses
  %i.cq = urem i32 %.016.i78, 10
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = getelementptr inbounds i8, ptr %.017.i77, i64 -1 ; 5 uses
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !18
  %i.cu = udiv i32 %.016.i78, 10
  %i.cv = icmp ugt i32 %.016.i78, 9
  %i.cw = icmp ugt ptr %i.ct, %.ptr
  %i.cx = and i1 %i.cv, %i.cw
  br i1 %i.cx, label %.preheader.i76, label %bb.ae, !llvm.loop !21

bb.ae:                                            ; preds = %.preheader.i76
  %i.cy = ptrtoint ptr %i.cn to i64
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.ptr, ptr noundef nonnull align 1 dereferenceable(1) %i.ct, i64 %i.da, i1 false)
  %i.db = getelementptr inbounds i8, ptr %.ptr, i64 %i.da
  br label %uint_to_str.exit79.a

uint_to_str.exit79.a:                             ; preds = %bb.ae, %bb.ad, %rbimpl_intern_const.exit73, %bb.ac, %bb.o
  %.7 = phi ptr [ %.028.idx.sroa.gep121, %bb.o ], [ %.5.ptr, %rbimpl_intern_const.exit73 ], [ %.ptr, %bb.ac ], [ %i.db, %bb.ae ], [ %.ptr, %bb.ad ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.ae, ptr %.7, align 1, !tbaa !18
  store i8 0, ptr %i.dc, align 1, !tbaa !18
  %i.dd = icmp eq i8 %i.ae, 115
  %i.de = call nonnull ptr @rb_usascii_encoding() #5 ; 2 uses
  br i1 %i.dd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %uint_to_str.exit79.a
  %i.df = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.de, ptr noundef nonnull %i.b, ptr noundef %.030) #5
  br label %bb.ah

bb.ag:                                            ; preds = %uint_to_str.exit79.a
  %i.dg = call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.de, ptr noundef nonnull %i.b, i32 noundef %.029) #5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.df, %bb.af ], [ %i.dg, %bb.ag ]
  %i.dh = call i64 @rb_usascii_str_new_cstr(ptr noundef nonnull %i.b) #5
  %i.di = call i64 @rb_assoc_new(i64 noundef %.0, i64 noundef %i.dh) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i64 %i.di
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @snprintf_count(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #5
  %i.c = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.26, ptr noundef %i.b) #5
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #2

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_usascii_str_new_cstr(ptr noundef) local_unnamed_addr #2

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"branch_weights", i32 1073205, i32 2146410443}
!13 = !{!14, !11, i64 0}
!14 = !{!"RBasic", !11, i64 0, !11, i64 8}
!15 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!16 = !{!17, !11, i64 16}
!17 = !{!"RString", !14, i64 0, !11, i64 16, !8, i64 24}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
end_hunk_0
