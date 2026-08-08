inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ftype_t = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %union.anon.0, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct._e_prefs = type { ptr, i32, i32, ptr, ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, i32, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, ptr, i32, i8, i8, i8, ptr, i32, i8, i8, i32, i8, i8, i8, i32, i8, i32, i8, i8, i8, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i32, i8, i8, i32, i8, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.ws_timezone = type { i64, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }

@ftype_register_time.abstime_type = internal constant %struct._ftype_t { i32 24, i32 0, ptr @time_fvalue_new, ptr @time_fvalue_copy, ptr null, ptr @absolute_val_from_literal, ptr @absolute_val_from_string, ptr null, ptr @absolute_val_from_uinteger64, ptr @absolute_val_from_sinteger64, ptr @absolute_val_from_float, ptr @absolute_val_to_repr, ptr null, ptr null, ptr @time_val_to_double, %union.anon { ptr @time_fvalue_set }, %union.anon.0 { ptr @value_get }, ptr @cmp_order, ptr null, ptr null, ptr @time_hash, ptr @time_is_zero, ptr @time_is_negative, ptr null, ptr null, ptr null, ptr null, ptr @time_unary_minus, ptr @time_add, ptr @time_subtract, ptr @time_multiply, ptr @time_divide, ptr null }, align 8
@ftype_register_time.reltime_type = internal constant %struct._ftype_t { i32 25, i32 0, ptr @time_fvalue_new, ptr @time_fvalue_copy, ptr null, ptr null, ptr null, ptr null, ptr @relative_val_from_uinteger64, ptr @relative_val_from_sinteger64, ptr @relative_val_from_float, ptr @relative_val_to_repr, ptr null, ptr null, ptr @time_val_to_double, %union.anon { ptr @time_fvalue_set }, %union.anon.0 { ptr @value_get }, ptr @cmp_order, ptr null, ptr null, ptr @time_hash, ptr @time_is_zero, ptr @time_is_negative, ptr null, ptr null, ptr null, ptr null, ptr @time_unary_minus, ptr @time_add, ptr @time_subtract, ptr @time_multiply, ptr @time_divide, ptr null }, align 8
@ftype_register_pseudofields_time.hf_ft_rel_time = internal global i32 0, align 4
@ftype_register_pseudofields_time.hf_ft_abs_time = internal global i32 0, align 4
@ftype_register_pseudofields_time.hf_ftypes = internal global [2 x %struct.hf_register_info] [%struct.hf_register_info { ptr @ftype_register_pseudofields_time.hf_ft_abs_time, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 24, i32 19, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @ftype_register_pseudofields_time.hf_ft_rel_time, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 25, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@.str = private unnamed_addr constant [17 x i8] c"FT_ABSOLUTE_TIME\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"_ws.ftypes.abs_time\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"FT_RELATIVE_TIME\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"_ws.ftypes.rel_time\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\22%s\22 cannot be converted to a valid calendar time.\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%b %d, %Y\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" %H:%M:%S\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" %H:%M\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Subsecond precision requires a seconds field.\00", align 1
@g_ascii_table = external local_unnamed_addr constant ptr, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Subseconds value is not a number.\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Subseconds value is invalid.\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%n%z\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Unexpected data after time value.\00", align 1
@.str.14 = private unnamed_addr constant [97 x i8] c"\22%s\22 is not a valid absolute time. Example: \22Nov 12, 1999 08:55:44.123\22 or \222011-07-04 12:34:56\22\00", align 1
@prefs = external local_unnamed_addr global %struct._e_prefs, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"epan/ftypes/ftype-time.c\00", align 1
@__func__.absolute_val_to_repr = private unnamed_addr constant [21 x i8] c"absolute_val_to_repr\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"assertion \22not reached\22 failed\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"time_add: overflow\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"time_subtract: overflow\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"time_multiply: overflow\00", align 1
@__func__.time_multiply = private unnamed_addr constant [14 x i8] c"time_multiply\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Invalid RHS ftype: %s\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"time_divide: overflow\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"time_divide: division by zero\00", align 1
@__func__.time_divide = private unnamed_addr constant [12 x i8] c"time_divide\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ftype_register_time() local_unnamed_addr #0 {
bb.a:
  tail call void @ftype_register(i32 noundef 24, ptr noundef nonnull @ftype_register_time.abstime_type)
  tail call void @ftype_register(i32 noundef 25, ptr noundef nonnull @ftype_register_time.reltime_type)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @time_fvalue_new(ptr nofree noundef writeonly captures(none) initializes((8, 20)) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @time_fvalue_copy(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = getelementptr i8, ptr %1, i64 8
  tail call void @nstime_copy(ptr noundef %i.a, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @absolute_val_from_literal(ptr noundef initializes((8, 16)) %0, ptr noundef %1, i1 zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @absolute_val_from_string(ptr noundef %0, ptr noundef %1, i64 poison, ptr noundef %3)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @absolute_val_from_string(ptr noundef initializes((8, 16)) %0, ptr noundef %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %4 = alloca %struct.tm, align 8                 ; 11 uses
  %5 = alloca %struct.ws_timezone, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.a = tail call fastcc zeroext i1 @val_from_unix_time(ptr noundef %0, ptr noundef %1)
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.c = tail call ptr @iso8601_to_nstime(ptr noundef %i.b, ptr noundef %1, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @nstime_is_unset(ptr noundef %i.b)
  br i1 %i.f, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %1)
  br label %bb.w

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 noundef 0, i64 noundef 56, i1 noundef false) #15
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 -1, ptr %i.h, align 8
  %i.i = call ptr @ws_strptime(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.k = call ptr @ws_strptime(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread81, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.04764 = phi ptr [ %i.k, %bb.g ], [ %i.i, %bb.f ] ; 3 uses
  %i.m = call ptr @ws_strptime(ptr noundef nonnull %.04764, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 5 uses
  %.not55 = icmp eq ptr %i.m, null
  br i1 %.not55, label %bb.h, label %.thread65

bb.h:                                             ; preds = %.thread
  %i.n = call ptr @ws_strptime(ptr noundef nonnull %.04764, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %spec.select = select i1 %i.o, ptr %.04764, ptr %i.n ; 2 uses
  %i.p = load i8, ptr %spec.select, align 1
  %i.q = icmp eq i8 %i.p, 46
  br i1 %i.q, label %bb.i, label %bb.o

.thread65:                                        ; preds = %.thread
  %i.r = load i8, ptr %i.m, align 1
  %i.s = icmp eq i8 %i.r, 46
  br i1 %i.s, label %.thread70, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.t = call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.9)
  br label %bb.w

.thread70:                                        ; preds = %.thread65
  %i.u = getelementptr i8, ptr %i.m, i64 1        ; 4 uses
  %i.v = load ptr, ptr @g_ascii_table, align 8    ; 4 uses
  %i.w = load i8, ptr %i.u, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = and i16 %i.z, 8
  %.not56 = icmp eq i16 %i.aa, 0
  br i1 %.not56, label %bb.j, label %.lr.ph.i

bb.j:                                             ; preds = %.thread70
  %i.ab = call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.10)
  br label %bb.w

.lr.ph.i:                                         ; preds = %.thread70, %.lr.ph.i
  %.02744.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %.thread70 ] ; 2 uses
  %.03043.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 0, %.thread70 ] ; 2 uses
  %i.ac = add i32 %.03043.i, 1                    ; 2 uses
  %i.ad = getelementptr i8, ptr %.02744.i, i64 1  ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr [2 x i8], ptr %i.v, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 8
  %.not.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aj = getelementptr i8, ptr %0, i64 16
  %.not3552.i = icmp eq ptr %.02744.i, %i.m
  br i1 %.not3552.i, label %.loopexit, label %.lr.ph59.preheader.i

.lr.ph59.preheader.i:                             ; preds = %._crit_edge.i
  %i.ak = sub i32 8, %.03043.i
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.m, %.lr.ph59.preheader.i
  %.02656.i = phi i32 [ %.1.i, %bb.m ], [ 0, %.lr.ph59.preheader.i ] ; 2 uses
  %.12855.i = phi ptr [ %i.al, %bb.m ], [ %i.ad, %.lr.ph59.preheader.i ]
  %.02953.i = phi i32 [ %i.bc, %bb.m ], [ %i.ak, %.lr.ph59.preheader.i ] ; 7 uses
  %i.al = getelementptr i8, ptr %.12855.i, i64 -1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr [2 x i8], ptr %i.v, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = and i16 %i.ap, 8
  %.not37.i = icmp eq i16 %i.aq, 0
  br i1 %.not37.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.lr.ph59.i
  %i.ar = sext i8 %i.am to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 4 uses
  %.not38.i = icmp eq i32 %i.as, 0
  br i1 %.not38.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp slt i32 %.02953.i, 0
  br i1 %i.at, label %bb.n, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %.not63.i = icmp eq i32 %.02953.i, 0
  br i1 %.not63.i, label %._crit_edge50.i, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %.02953.i, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.i.preheader
  %n.vec = and i32 %.02953.i, 2147483640          ; 3 uses
  %i.au = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.as, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.au, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.aw, %vector.body ]
  %i.av = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.aw = mul <4 x i32> %vec.phi108, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ax = icmp eq i32 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.aw, %i.av
  %i.ay = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %.02953.i, %n.vec
  br i1 %cmp.n, label %._crit_edge50.i, label %.lr.ph49.i.preheader109

.lr.ph49.i.preheader109:                          ; preds = %.lr.ph49.i.preheader, %middle.block
  %.048.i.ph = phi i32 [ 0, %.lr.ph49.i.preheader ], [ %n.vec, %middle.block ]
  %.02547.i.ph = phi i32 [ %i.as, %.lr.ph49.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader109, %.lr.ph49.i
  %.048.i = phi i32 [ %i.ba, %.lr.ph49.i ], [ %.048.i.ph, %.lr.ph49.i.preheader109 ]
  %.02547.i = phi i32 [ %i.az, %.lr.ph49.i ], [ %.02547.i.ph, %.lr.ph49.i.preheader109 ]
  %i.az = mul i32 %.02547.i, 10                   ; 2 uses
  %i.ba = add nuw nsw i32 %.048.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, %.02953.i
  br i1 %exitcond.not.i, label %._crit_edge50.i, label %.lr.ph49.i, !llvm.loop !11

._crit_edge50.i:                                  ; preds = %.lr.ph49.i, %middle.block, %.preheader.i
  %.025.lcssa.i = phi i32 [ %i.as, %.preheader.i ], [ %i.ay, %middle.block ], [ %i.az, %.lr.ph49.i ]
  %i.bb = add i32 %.025.lcssa.i, %.02656.i
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge50.i, %bb.k
  %.1.i = phi i32 [ %i.bb, %._crit_edge50.i ], [ %.02656.i, %bb.k ] ; 2 uses
  %i.bc = add i32 %.02953.i, 1
  %.not35.i = icmp eq ptr %i.al, %i.u
  br i1 %.not35.i, label %.loopexit, label %.lr.ph59.i, !llvm.loop !12

bb.n:                                             ; preds = %bb.l, %.lr.ph59.i
  %i.bd = call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.11)
  br label %bb.w

.loopexit:                                        ; preds = %bb.m, %._crit_edge.i
  %.026.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %.1.i, %bb.m ]
  store i32 %.026.lcssa.i, ptr %i.aj, align 4
  %i.be = sext i32 %i.ac to i64
  %i.bf = getelementptr i8, ptr %i.u, i64 %i.be
  br label %bb.p

bb.o:                                             ; preds = %.thread65, %bb.h
  %spec.select68 = phi ptr [ %i.m, %.thread65 ], [ %spec.select, %bb.h ]
  %i.bg = getelementptr i8, ptr %0, i64 16
  store i32 0, ptr %i.bg, align 8
  %.pre = load ptr, ptr @g_ascii_table, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %i.bh = phi ptr [ %i.v, %.loopexit ], [ %.pre, %bb.o ]
  %.3 = phi ptr [ %i.bf, %.loopexit ], [ %spec.select68, %bb.o ] ; 2 uses
  %i.bi = call ptr @ws_strptime(ptr noundef %.3, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %.not59 = icmp eq ptr %i.bi, null               ; 2 uses
  %spec.select61 = select i1 %.not59, ptr %.3, ptr %i.bi
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.5 = phi ptr [ %spec.select61, %bb.p ], [ %i.bo, %bb.q ] ; 2 uses
  %i.bj = load i8, ptr %.5, align 1               ; 2 uses
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr [2 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = and i16 %i.bm, 256
  %.not57 = icmp eq i16 %i.bn, 0
  %i.bo = getelementptr i8, ptr %.5, i64 1
  br i1 %.not57, label %bb.r, label %bb.q, !llvm.loop !13

bb.r:                                             ; preds = %bb.q
  %.not58 = icmp eq i8 %i.bj, 0
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = call noalias ptr @wmem_strdup(ptr noundef null, ptr noundef nonnull @.str.13)
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  br i1 %.not59, label %bb.u, label %.thread75

bb.u:                                             ; preds = %bb.t
  %i.bq = call i64 @mktime(ptr noundef nonnull %4) #15 ; 2 uses
  store i64 %i.bq, ptr %i.b, align 8
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %bb.v, label %bb.aa

.thread75:                                        ; preds = %bb.t
  %i.bs = call i64 @mktime_utc(ptr noundef nonnull %4) ; 3 uses
  store i64 %i.bs, ptr %i.b, align 8
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %bb.v, label %.thread78

bb.v:                                             ; preds = %.thread75, %bb.u
  %i.bu = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %1)
  br label %bb.w

.thread78:                                        ; preds = %.thread75
  %i.bv = load i64, ptr %5, align 8
  %i.bw = sub i64 %i.bs, %i.bv
  store i64 %i.bw, ptr %i.b, align 8
  br label %bb.aa

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.n, %bb.j, %bb.i, %bb.e
  %.0 = phi ptr [ %i.g, %bb.e ], [ %i.t, %bb.i ], [ %i.bp, %bb.s ], [ %i.bu, %bb.v ], [ %i.bd, %bb.n ], [ %i.ab, %bb.j ] ; 3 uses
  %.not60 = icmp eq ptr %3, null
  br i1 %.not60, label %bb.z, label %bb.x

.thread81:                                        ; preds = %bb.g
  %.not6083 = icmp eq ptr %3, null
  br i1 %.not6083, label %bb.z, label %.thread86

bb.x:                                             ; preds = %bb.w
  %i.bx = icmp eq ptr %.0, null
  br i1 %i.bx, label %.thread86, label %bb.y

.thread86:                                        ; preds = %.thread81, %bb.x
  %i.by = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef %1)
  store ptr %i.by, ptr %3, align 8
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  store ptr %.0, ptr %3, align 8
  br label %bb.aa

bb.z:                                             ; preds = %.thread81, %bb.w
  %.085 = phi ptr [ null, %.thread81 ], [ %.0, %bb.w ]
  call void @g_free(ptr noundef %.085)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.u, %bb.z, %bb.y, %.thread86, %.thread78, %bb.d, %bb.a
  %.048 = phi i1 [ true, %bb.d ], [ false, %bb.z ], [ true, %bb.a ], [ true, %.thread78 ], [ false, %.thread86 ], [ false, %bb.y ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i1 %.048
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @absolute_val_from_uinteger64(ptr noundef initializes((8, 16)) %0, ptr noundef %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @absolute_val_from_string(ptr noundef %0, ptr noundef %1, i64 poison, ptr noundef %3)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @absolute_val_from_sinteger64(ptr noundef initializes((8, 16)) %0, ptr noundef %1, i64 %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @absolute_val_from_string(ptr noundef %0, ptr noundef %1, i64 poison, ptr noundef %3)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @absolute_val_from_float(ptr noundef initializes((8, 16)) %0, ptr noundef %1, double %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @absolute_val_from_string(ptr noundef %0, ptr noundef %1, i64 poison, ptr noundef %3)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @absolute_val_to_repr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 280), align 8
  %.not = icmp eq i32 %i.a, 3
  %spec.select = select i1 %.not, i32 1, i32 9    ; 2 uses
  %i.b = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.b, i32 18, i32 %3 ; 6 uses
  switch i32 %2, label %bb.d [
    i32 0, label %bb.e
    i32 3, label %bb.e
    i32 1, label %4
    i32 2, label %bb.c
    i32 4, label %bb.c
  ]

4:                                                ; preds = %bb.a
  switch i32 %3, label %bb.b [
    i32 0, label %bb.e
    i32 18, label %bb.e
    i32 22, label %bb.e
    i32 19, label %bb.e
  ]

bb.b:                                             ; preds = %4
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.15, i32 noundef 7, ptr noundef nonnull @.str.16, i64 noundef 505, ptr noundef nonnull @__func__.absolute_val_to_repr, ptr noundef nonnull @.str.17) #16
  unreachable

bb.e:                                             ; preds = %bb.b, %4, %4, %4, %4, %bb.a, %bb.a, %bb.c
  %.111 = phi i32 [ %spec.store.select, %bb.a ], [ %spec.store.select, %bb.a ], [ 19, %bb.c ], [ 19, %bb.b ], [ %spec.store.select, %4 ], [ %spec.store.select, %4 ], [ %spec.store.select, %4 ], [ %spec.store.select, %4 ]
  %.1 = phi i32 [ %spec.select, %bb.a ], [ %spec.select, %bb.a ], [ 9, %bb.c ], [ 11, %bb.b ], [ 11, %4 ], [ 11, %4 ], [ 11, %4 ], [ 11, %4 ]
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = tail call ptr @abs_time_to_str_ex(ptr noundef %0, ptr noundef %i.c, i32 noundef %.111, i32 noundef %.1)
  ret ptr %i.d
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @time_val_to_double(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = tail call zeroext i1 @nstime_is_unset(ptr noundef %i.a)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val3 = load i32, ptr %i.c, align 8
  %i.d = sitofp i64 %.val to double
  %i.e = sitofp i32 %.val3 to double
  %i.f = fdiv double %i.e, 1.000000e+09
  %i.g = fadd double %i.f, %i.d
  store double %i.g, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @time_fvalue_set(ptr nofree noundef writeonly captures(none) initializes((8, 24)) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.a, ptr noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef ptr @value_get(ptr nofree noundef readnone captures(ret: address, provenance) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @cmp_order(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = tail call i32 @nstime_cmp(ptr noundef %i.a, ptr noundef %i.b)
  store i32 %i.c, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @time_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = tail call i32 @nstime_hash(ptr noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @time_is_zero(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = tail call zeroext i1 @nstime_is_zero(ptr noundef %i.a)
  ret i1 %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @time_is_negative(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = tail call zeroext i1 @nstime_is_negative(ptr noundef %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @time_unary_minus(ptr nofree noundef writeonly captures(none) initializes((8, 20)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = sub i64 0, %i.b
  %i.d = getelementptr i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sub i32 0, %i.f
  %i.h = getelementptr i8, ptr %0, i64 16
  store i32 %i.g, ptr %i.h, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @time_add(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @_setjmp(ptr noundef nonnull %4) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.18)
  store ptr %i.b, ptr %3, align 8
  br label %_nstime_add.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load i64, ptr %i.e, align 8
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  store i64 %i.n, ptr %i.c, align 8
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.p = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.h, i32 %i.k) ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1
  %i.r = extractvalue { i32, i1 } %i.p, 0         ; 2 uses
  store i32 %i.r, ptr %i.o, align 8
  br i1 %i.q, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.preheader.i:                                     ; preds = %bb.e, %.critedge.i.i
  %.pre26.i.i = phi i64 [ %i.y, %.critedge.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %.lcssa.promoted.i.i = phi i32 [ %i.v, %.critedge.i.i ], [ %i.r, %bb.e ] ; 4 uses
  %i.s = icmp sgt i32 %.lcssa.promoted.i.i, 999999999
  br i1 %i.s, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.t = icmp sgt i32 %.lcssa.promoted.i.i, 0
  %i.u = icmp slt i64 %.pre26.i.i, 0
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.critedge.i.i, label %.critedge2.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.preheader.i
  %i.v = add nsw i32 %.lcssa.promoted.i.i, -1000000000 ; 2 uses
  store i32 %i.v, ptr %i.o, align 8
  %i.w = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre26.i.i, i64 1) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  store i64 %i.y, ptr %i.c, align 8
  br i1 %i.x, label %bb.h, label %.preheader.i, !llvm.loop !14

bb.h:                                             ; preds = %.critedge.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.critedge2.i.i:                                   ; preds = %bb.g, %.critedge4.i.i
  %.pre.i.i = phi i64 [ %i.ag, %.critedge4.i.i ], [ %.pre26.i.i, %bb.g ] ; 2 uses
  %i.z = phi i32 [ %i.ad, %.critedge4.i.i ], [ %.lcssa.promoted.i.i, %bb.g ] ; 3 uses
  %i.aa = icmp slt i32 %i.z, -999999999
  br i1 %i.aa, label %.critedge4.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = icmp sgt i64 %.pre.i.i, 0
  %or.cond12.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond12.i, label %.critedge4.i.i, label %_nstime_add.exit

.critedge4.i.i:                                   ; preds = %bb.i, %.critedge2.i.i
  %i.ad = add nsw i32 %i.z, 1000000000            ; 2 uses
  store i32 %i.ad, ptr %i.o, align 8
  %i.ae = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre.i.i, i64 -1) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  store i64 %i.ag, ptr %i.c, align 8
  br i1 %i.af, label %bb.j, label %.critedge2.i.i, !llvm.loop !15

bb.j:                                             ; preds = %.critedge4.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

_nstime_add.exit:                                 ; preds = %bb.i, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @time_subtract(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
end_hunk_0
