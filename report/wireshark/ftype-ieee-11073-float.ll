Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ftype-ieee-11073-float?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ftype_t = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %union.anon.0, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }

@ftype_register_ieee_11073_float.sfloat_type = internal constant %struct._ftype_t { i32 20, i32 2, ptr @sfloat_ieee_11073_fvalue_new, ptr null, ptr null, ptr @sfloat_ieee_11073_val_from_literal, ptr null, ptr null, ptr @sfloat_ieee_11073_val_from_uinteger64, ptr @sfloat_ieee_11073_val_from_sinteger64, ptr @sfloat_ieee_11073_val_from_double, ptr @sfloat_ieee_11073_val_to_repr, ptr null, ptr null, ptr @sfloat_ieee_11073_val_to_double, %union.anon { ptr @sfloat_ieee_11073_value_set }, %union.anon.0 { ptr @sfloat_ieee_11073_value_get }, ptr @sfloat_ieee_11073_cmp_order, ptr null, ptr null, ptr @sfloat_ieee_11073_hash, ptr @sfloat_ieee_11073_is_zero, ptr @sfloat_ieee_11073_is_negative, ptr null, ptr null, ptr null, ptr null, ptr @sfloat_ieee_11073_unary_minus, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@ftype_register_ieee_11073_float.float_type = internal constant %struct._ftype_t { i32 21, i32 4, ptr @float_ieee_11073_fvalue_new, ptr null, ptr null, ptr @float_ieee_11073_val_from_literal, ptr null, ptr null, ptr @float_ieee_11073_val_from_uinteger64, ptr @float_ieee_11073_val_from_sinteger64, ptr @float_ieee_11073_val_from_double, ptr @float_ieee_11073_val_to_repr, ptr null, ptr null, ptr @float_ieee_11073_val_to_double, %union.anon { ptr @float_ieee_11073_value_set }, %union.anon.0 { ptr @float_ieee_11073_value_get }, ptr @float_ieee_11073_cmp_order, ptr null, ptr null, ptr @float_ieee_11073_hash, ptr @float_ieee_11073_is_zero, ptr @float_ieee_11073_is_negative, ptr null, ptr null, ptr null, ptr null, ptr @float_ieee_11073_unary_minus, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@ftype_register_pseudofields_ieee_11073_float.hf_ft_ieee_11073_sfloat = internal global i32 0, align 4
@ftype_register_pseudofields_ieee_11073_float.hf_ft_ieee_11073_float = internal global i32 0, align 4
@ftype_register_pseudofields_ieee_11073_float.hf_ftypes = internal global [2 x %struct.hf_register_info] [%struct.hf_register_info { ptr @ftype_register_pseudofields_ieee_11073_float.hf_ft_ieee_11073_sfloat, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 20, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @ftype_register_pseudofields_ieee_11073_float.hf_ft_ieee_11073_float, %struct._header_field_info { ptr @.str.2, ptr @.str.3, i32 21, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@.str = private unnamed_addr constant [21 x i8] c"FT_IEEE_11073_SFLOAT\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"_ws.ftypes.ieee_11073_sfloat\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"FT_IEEE_11073_FLOAT\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"_ws.ftypes.ieee_11073_float\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"-INFINITY\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RFU\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"NRes\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"+INFINITY\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@switch.table.sfloat_ieee_11073_unary_minus = private unnamed_addr constant [5 x i16] [i16 2050, i16 2047, i16 2048, i16 2049, i16 2046], align 2
@switch.table.float_ieee_11073_val_to_repr = private unnamed_addr constant [5 x ptr] [ptr @.str.8, ptr @.str.7, ptr @.str.6, ptr @.str.5, ptr @.str.4], align 8
@switch.table.float_ieee_11073_val_to_double = private unnamed_addr constant [5 x double] [double +inf, double +qnan, double +qnan, double +qnan, double -inf], align 8
@switch.table.float_ieee_11073_unary_minus = private unnamed_addr constant [5 x i32] [i32 8388610, i32 8388607, i32 8388608, i32 8388609, i32 8388606], align 4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ftype_register_ieee_11073_float() local_unnamed_addr #0 {
bb.a:
  tail call void @ftype_register(i32 noundef 20, ptr noundef nonnull @ftype_register_ieee_11073_float.sfloat_type)
  tail call void @ftype_register(i32 noundef 21, ptr noundef nonnull @ftype_register_ieee_11073_float.float_type)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @sfloat_ieee_11073_fvalue_new(ptr nofree noundef writeonly captures(none) initializes((8, 10)) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i16 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i1 zeroext %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 4 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %.loopexit145
    i8 46, label %.loopexit145
  ]

bb.b:                                             ; preds = %bb.a
  %.not128 = icmp eq i8 %i.a, 45                  ; 2 uses
  br i1 %.not128, label %bb.c, label %.critedge137

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.j [
    i8 46, label %.loopexit145
    i8 73, label %bb.d
    i8 105, label %bb.d
    i8 0, label %.loopexit145
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.4)
  %.not135 = icmp eq i32 %i.d, 0
  br i1 %.not135, label %.loopexit145.sink.split, label %.loopexit145

.critedge137:                                     ; preds = %bb.b
  %i.e = and i8 %i.a, -33
  switch i8 %i.e, label %bb.h [
    i8 82, label %bb.e
    i8 78, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge137
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5)
  %.not134 = icmp eq i32 %i.f, 0
  br i1 %.not134, label %.loopexit145.sink.split, label %.loopexit145

bb.f:                                             ; preds = %.critedge137
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6)
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %.loopexit145.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.7)
  %.not133 = icmp eq i32 %i.h, 0
  br i1 %.not133, label %.loopexit145.sink.split, label %.loopexit145

bb.h:                                             ; preds = %.critedge137
  %i.i = icmp eq i8 %i.a, 43
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.8)
  %.not131 = icmp eq i32 %i.j, 0
  br i1 %.not131, label %.loopexit145.sink.split, label %.loopexit145

bb.j:                                             ; preds = %bb.c, %bb.h
  %.0112 = phi ptr [ %i.b, %bb.c ], [ %1, %bb.h ]
  %.0111 = phi i32 [ 2048, %bb.c ], [ 2047, %bb.h ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1113 = phi ptr [ %.0112, %bb.j ], [ %i.m, %bb.k ] ; 3 uses
  %i.k = load i8, ptr %.1113, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, 48
  %i.m = getelementptr i8, ptr %.1113, i64 1
  br i1 %i.l, label %bb.k, label %.preheader144, !llvm.loop !9

.preheader144:                                    ; preds = %bb.k, %bb.x
  %i.n = phi i8 [ %.pr, %bb.x ], [ %i.k, %bb.k ]  ; 2 uses
  %.2114 = phi ptr [ %i.at, %bb.x ], [ %.1113, %bb.k ] ; 13 uses
  %.0105 = phi i32 [ %.3108, %bb.x ], [ 0, %bb.k ] ; 15 uses
  %.0103 = phi i8 [ %spec.select138143, %bb.x ], [ 0, %bb.k ] ; 14 uses
  %.0 = phi i8 [ %.1, %bb.x ], [ 0, %bb.k ]       ; 12 uses
  switch i8 %i.n, label %.loopexit145 [
    i8 0, label %bb.y
    i8 48, label %bb.l
    i8 49, label %bb.n
    i8 50, label %bb.o
    i8 51, label %bb.p
    i8 52, label %bb.q
    i8 53, label %bb.r
    i8 54, label %bb.s
    i8 55, label %bb.t
    i8 56, label %bb.u
    i8 57, label %bb.v
    i8 46, label %bb.w
  ]

bb.l:                                             ; preds = %.preheader144
  %i.o = mul i32 %.0105, 10                       ; 2 uses
  %i.p = icmp ugt i32 %i.o, %.0111
  br i1 %i.p, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.q = add i8 %.0103, 1                         ; 2 uses
  %i.r = icmp sgt i8 %i.q, 7
  br i1 %i.r, label %.loopexit145, label %.loopexit

bb.n:                                             ; preds = %.preheader144
  %i.s = mul i32 %.0105, 10
  %i.t = or disjoint i32 %i.s, 1
  br label %.loopexit

bb.o:                                             ; preds = %.preheader144
  %i.u = mul i32 %.0105, 10
  %i.v = add i32 %i.u, 2
  br label %.loopexit

bb.p:                                             ; preds = %.preheader144
  %i.w = mul i32 %.0105, 10
  %i.x = add i32 %i.w, 3
  br label %.loopexit

bb.q:                                             ; preds = %.preheader144
  %i.y = mul i32 %.0105, 10
  %i.z = add i32 %i.y, 4
  br label %.loopexit

bb.r:                                             ; preds = %.preheader144
  %i.aa = mul i32 %.0105, 10
  %i.ab = add i32 %i.aa, 5
  br label %.loopexit

bb.s:                                             ; preds = %.preheader144
  %i.ac = mul i32 %.0105, 10
  %i.ad = add i32 %i.ac, 6
  br label %.loopexit

bb.t:                                             ; preds = %.preheader144
  %i.ae = mul i32 %.0105, 10
  %i.af = add i32 %i.ae, 7
  br label %.loopexit

bb.u:                                             ; preds = %.preheader144
  %i.ag = mul i32 %.0105, 10
  %i.ah = add i32 %i.ag, 8
  br label %.loopexit

bb.v:                                             ; preds = %.preheader144
  %i.ai = mul i32 %.0105, 10
  %i.aj = add i32 %i.ai, 9
  br label %.loopexit

bb.w:                                             ; preds = %.preheader144
  %i.ak = trunc nuw i8 %.0 to i1
  br i1 %i.ak, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %bb.w
  %.3115148 = getelementptr i8, ptr %.2114, i64 1 ; 2 uses
  %i.al = load i8, ptr %.3115148, align 1
  %i.am = icmp eq i8 %i.al, 48
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.3115151 = phi ptr [ %.3115, %.lr.ph ], [ %.3115148, %.preheader ] ; 2 uses
  %.1104150 = phi i8 [ %.2, %.lr.ph ], [ %.0103, %.preheader ] ; 2 uses
  %.1106149 = phi i32 [ %.2107, %.lr.ph ], [ %.0105, %.preheader ] ; 2 uses
  %i.an = mul i32 %.1106149, 10                   ; 2 uses
  %.not130 = icmp ule i32 %i.an, %.0111           ; 2 uses
  %i.ao = icmp sgt i8 %.1104150, -12
  %.2107 = select i1 %.not130, i32 %i.an, i32 %.1106149 ; 2 uses
  %narrow = select i1 %.not130, i1 %i.ao, i1 false
  %spec.select = sext i1 %narrow to i8
  %.2 = add i8 %.1104150, %spec.select            ; 2 uses
  %.3115 = getelementptr i8, ptr %.3115151, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.3115, align 1
  %i.aq = icmp eq i8 %i.ap, 48
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %.4116 = phi ptr [ %.2114, %bb.m ], [ %.2114, %bb.l ], [ %.2114, %bb.n ], [ %.2114, %bb.o ], [ %.2114, %bb.p ], [ %.2114, %bb.q ], [ %.2114, %bb.r ], [ %.2114, %bb.s ], [ %.2114, %bb.t ], [ %.2114, %bb.u ], [ %.2114, %bb.v ], [ %.2114, %.preheader ], [ %.3115151, %.lr.ph ]
  %.3108 = phi i32 [ %.0105, %bb.m ], [ %i.o, %bb.l ], [ %i.t, %bb.n ], [ %i.v, %bb.o ], [ %i.x, %bb.p ], [ %i.z, %bb.q ], [ %i.ab, %bb.r ], [ %i.ad, %bb.s ], [ %i.af, %bb.t ], [ %i.ah, %bb.u ], [ %i.aj, %bb.v ], [ %.0105, %.preheader ], [ %.2107, %.lr.ph ] ; 2 uses
  %.3 = phi i8 [ %i.q, %bb.m ], [ %.0103, %bb.l ], [ %.0103, %bb.n ], [ %.0103, %bb.o ], [ %.0103, %bb.p ], [ %.0103, %bb.q ], [ %.0103, %bb.r ], [ %.0103, %bb.s ], [ %.0103, %bb.t ], [ %.0103, %bb.u ], [ %.0103, %bb.v ], [ %.0103, %.preheader ], [ %.2, %.lr.ph ]
  %.1 = phi i8 [ %.0, %bb.m ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ 1, %.preheader ], [ 1, %.lr.ph ] ; 2 uses
  %i.ar = icmp ugt i32 %.3108, %.0111
  br i1 %i.ar, label %.loopexit145, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not = icmp eq i8 %i.n, 46
  %i.as = select i1 %.not, i8 0, i8 %.1
  %spec.select138143 = sub i8 %.3, %i.as
  %i.at = getelementptr i8, ptr %.4116, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.at, align 1
  br label %.preheader144, !llvm.loop !11

bb.y:                                             ; preds = %.preheader144
  %i.au = sub i32 0, %.0105
  %i.av = and i32 %i.au, 4095
  %.4109 = select i1 %.not128, i32 %i.av, i32 %.0105 ; 2 uses
  %i.aw = icmp eq i32 %.4109, 0
  br i1 %i.aw, label %.critedge, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.y
  %i.ax = sext i8 %.0103 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %6
  %.6156 = phi i32 [ %7, %6 ], [ %i.ax, %.lr.ph157.preheader ] ; 3 uses
  %.5110155 = phi i32 [ %5, %6 ], [ %.4109, %.lr.ph157.preheader ] ; 4 uses
  %4 = urem i32 %.5110155, 10
  %5 = udiv i32 %.5110155, 10                     ; 2 uses
  %i.ay = icmp eq i32 %4, 0
  %i.az = icmp slt i32 %.6156, 7
  %or.cond10 = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond10, label %6, label %.critedge

6:                                                ; preds = %.lr.ph157
  %7 = add nsw i32 %.6156, 1                      ; 2 uses
  %.not129 = icmp ult i32 %.5110155, 10
  br i1 %.not129, label %.critedge, label %.lr.ph157, !llvm.loop !12

.critedge:                                        ; preds = %6, %.lr.ph157, %bb.y
  %.5110.lcssa = phi i32 [ 0, %bb.y ], [ %.5110155, %.lr.ph157 ], [ %5, %6 ]
  %.6.lcssa = phi i32 [ 0, %bb.y ], [ %.6156, %.lr.ph157 ], [ %7, %6 ] ; 2 uses
  %i.ba = icmp slt i32 %.6.lcssa, -8
  br i1 %i.ba, label %.loopexit145, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.bb = shl nsw i32 %.6.lcssa, 12
  %i.bc = or i32 %i.bb, %.5110.lcssa
  %i.bd = trunc i32 %i.bc to i16
  br label %.loopexit145.sink.split

.loopexit145.sink.split:                          ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.z
  %.sink = phi i16 [ %i.bd, %bb.z ], [ 2047, %bb.g ], [ 2048, %bb.f ], [ 2049, %bb.e ], [ 2050, %bb.d ], [ 2046, %bb.i ]
  %i.be = getelementptr i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.be, align 8
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit, %.preheader144, %bb.w, %bb.m, %.loopexit145.sink.split, %bb.c, %bb.c, %.critedge, %bb.i, %bb.g, %bb.e, %bb.d, %bb.a, %bb.a
  %.0117 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.e ], [ true, %.loopexit145.sink.split ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.w ], [ false, %.preheader144 ], [ false, %.loopexit ]
  ret i1 %.0117
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_uinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_sinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_val_from_double(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, double %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @sfloat_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias ptr @sfloat_ieee_11073_val_to_repr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 8 uses
  %i.b = alloca [13 x i8], align 1                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 7 uses
  %i.e = add i16 %i.d, -2046
  %or.cond = icmp ult i16 %i.e, 5
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i16 %i.d to i64
  %i.g = getelementptr [8 x i8], ptr @switch.table.float_ieee_11073_val_to_repr, i64 %i.f
  %switch.gep = getelementptr i8, ptr %i.g, i64 -16368
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %switch.load)
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = lshr i16 %i.d, 12
  %i.j = trunc nuw nsw i16 %i.i to i8             ; 2 uses
  %i.k = or disjoint i8 %i.j, -16
  %.not86 = icmp slt i16 %i.d, 0
  %.072 = select i1 %.not86, i8 %i.k, i8 %i.j     ; 5 uses
  %i.l = and i16 %i.d, 2047
  %i.m = and i16 %i.d, 2048
  %.not83 = icmp eq i16 %i.m, 0                   ; 2 uses
  %i.n = or i16 %i.d, -2048
  %i.o = sub nsw i16 0, %i.n
  %.071 = select i1 %.not83, i16 %i.l, i16 %i.o   ; 2 uses
  %i.p = zext nneg i16 %.071 to i32
  %i.q = icmp eq i16 %.071, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %.not83, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %i.b, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.070 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 7 uses
  %i.s = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 5, i32 noundef 2, i64 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %i.p) ; 3 uses
  %i.t = sext i8 %.072 to i32                     ; 4 uses
  %i.u = icmp eq i8 %.072, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %.070 to i64               ; 2 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %i.v
  %.mask85 = and i32 %i.s, 255                    ; 2 uses
  %i.x = zext nneg i32 %.mask85 to i64
  %i.y = sub nuw nsw i64 13, %i.v
  %i.z = call ptr @__memcpy_chk(ptr noundef %i.w, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.x, i64 noundef %i.y) #13, !alias.scope !28 ; 0 uses
  %i.aa = add nuw nsw i32 %.mask85, %.070
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp sgt i8 %.072, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %.070 to i64              ; 2 uses
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.ac
  %.mask84 = and i32 %i.s, 255                    ; 2 uses
  %i.ae = zext nneg i32 %.mask84 to i64
  %i.af = sub nuw nsw i64 13, %i.ac
  %i.ag = call ptr @__memcpy_chk(ptr noundef %i.ad, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ae, i64 noundef %i.af) #13, !alias.scope !29 ; 0 uses
  %i.ah = add nuw nsw i32 %.mask84, %.070         ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ai
  %i.ak = zext nneg i8 %.072 to i64
  %i.al = sub nsw i64 13, %i.ai
  %i.am = icmp samesign ugt i32 %i.ah, 13
  %i.an = select i1 %i.am, i64 0, i64 %i.al       ; 2 uses
  %i.ao = icmp ne i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = call ptr @__memset_chk(ptr noundef %i.aj, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.ak, i64 noundef %i.an) #13 ; 0 uses
  %i.aq = add nuw nsw i32 %i.ah, %i.t
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ar = sub nsw i32 0, %i.t                     ; 4 uses
  %i.as = and i32 %i.s, 255                       ; 7 uses
  %i.at = icmp samesign ugt i32 %i.as, %i.ar
  %i.au = zext nneg i32 %.070 to i64              ; 2 uses
  %i.av = getelementptr i8, ptr %i.b, i64 %i.au   ; 3 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = add nsw i32 %i.as, %i.t                 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nuw nsw i64 13, %i.au
  %i.az = call ptr @__memcpy_chk(ptr noundef %i.av, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ax, i64 noundef %i.ay) #13, !alias.scope !30 ; 0 uses
  %i.ba = add nsw i32 %i.aw, %.070                ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %i.b, i64 %i.bb
  store i8 46, ptr %i.bc, align 1
  %i.bd = add nsw i32 %i.ba, 1                    ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.be
  %i.bg = zext nneg i32 %i.as to i64
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bi = sext i8 %.072 to i64
  %i.bj = getelementptr i8, ptr %i.bh, i64 %i.bi
  %i.bk = zext nneg i32 %i.ar to i64
  %i.bl = sub nsw i64 13, %i.be
  %i.bm = icmp ugt i32 %i.bd, 13
  %i.bn = select i1 %i.bm, i64 0, i64 %i.bl       ; 2 uses
  %i.bo = icmp ne i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = call ptr @__memcpy_chk(ptr noundef %i.bf, ptr noundef %i.bj, i64 noundef range(i64 -127, 256) %i.bk, i64 noundef %i.bn) #13, !alias.scope !31 ; 0 uses
  %i.bq = sub nsw i32 %i.bd, %i.t
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store i8 48, ptr %i.av, align 1
  %i.br = getelementptr i8, ptr %i.av, i64 1
  store i8 46, ptr %i.br, align 1
  %i.bs = or disjoint i32 %.070, 2                ; 3 uses
  %.not = icmp eq i32 %i.as, %i.ar
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = sub nuw nsw i32 %i.ar, %i.as            ; 2 uses
  %i.bu = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bv = getelementptr i8, ptr %i.b, i64 %i.bu
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = sub nuw nsw i64 13, %i.bu
  %i.by = call ptr @__memset_chk(ptr noundef %i.bv, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.bw, i64 noundef %i.bx) #13 ; 0 uses
  %i.bz = add nuw nsw i32 %i.bt, %i.bs
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %i.bz, %bb.m ], [ %i.bs, %bb.l ] ; 3 uses
  %i.ca = zext nneg i32 %.1 to i64                ; 2 uses
  %i.cb = getelementptr i8, ptr %i.b, i64 %i.ca
  %i.cc = zext nneg i32 %i.as to i64
  %i.cd = sub nsw i64 13, %i.ca
  %i.ce = icmp samesign ugt i32 %.1, 13
  %i.cf = select i1 %i.ce, i64 0, i64 %i.cd       ; 2 uses
  %i.cg = icmp ne i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = call ptr @__memcpy_chk(ptr noundef %i.cb, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.cc, i64 noundef %i.cf) #13, !alias.scope !32 ; 0 uses
  %i.ci = add nuw nsw i32 %.1, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k, %bb.g
  %.2 = phi i32 [ %i.aa, %bb.g ], [ %i.aq, %bb.i ], [ %i.bq, %bb.k ], [ %i.ci, %bb.n ]
  %i.cj = zext i32 %.2 to i64
  %i.ck = getelementptr i8, ptr %i.b, i64 %i.cj
  store i8 0, ptr %i.ck, align 1
  %i.cl = call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.073 = phi ptr [ %i.r, %bb.c ], [ %i.cl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup
  %.174 = phi ptr [ %i.h, %switch.lookup ], [ %.073, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal noundef i32 @sfloat_ieee_11073_val_to_double(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 6 uses
  %switch.tableidx = add i16 %i.b, -2046          ; 2 uses
  %i.c = icmp ult i16 %switch.tableidx, 5
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2047                       ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i16 %i.b, 2048
  %.not = icmp eq i16 %i.f, 0
  %i.g = or i16 %i.b, -2048
  %i.h = sub nsw i16 0, %i.g
  %.0 = select i1 %.not, i16 %i.d, i16 %i.h
  %i.i = lshr i16 %i.b, 12
  %i.j = trunc nuw nsw i16 %i.i to i8             ; 2 uses
  %i.k = or disjoint i8 %i.j, -16
  %.not1819 = icmp slt i16 %i.b, 0
  %.016 = select i1 %.not1819, i8 %i.k, i8 %i.j
  %i.l = uitofp nneg i16 %.0 to double
  %i.m = sitofp i8 %.016 to double
  %i.n = tail call double @pow(double noundef 1.000000e+01, double noundef %i.m) #13
  %i.o = fmul double %i.n, %i.l
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.float_ieee_11073_val_to_double, i64 %i.p
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c
  %.sink = phi double [ %i.o, %bb.c ], [ %switch.load, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  store double %.sink, ptr %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @sfloat_ieee_11073_value_set(ptr nofree noundef writeonly captures(none) initializes((8, 10)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = trunc i32 %1 to i16
  %i.b = getelementptr i8, ptr %0, i64 8
  store i16 %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @sfloat_ieee_11073_value_get(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal noundef i32 @sfloat_ieee_11073_cmp_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i16, ptr %i.a, align 8             ; 13 uses
  %i.b = add i16 %.val, -2046
  %or.cond.i.i = icmp ult i16 %i.b, 5             ; 2 uses
  br i1 %or.cond.i.i, label %sfloat_to_normal_form.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %.val, 2048                      ; 2 uses
  %.not.i.i = icmp eq i16 %i.c, 0
  %i.d = or i16 %.val, -2048
  %i.e = sub nsw i16 0, %i.d
  %i.f = and i16 %.val, 2047
  %.021.i.i = select i1 %.not.i.i, i16 %i.f, i16 %i.e ; 5 uses
  %i.g = lshr i16 %.val, 12
  %i.h = trunc nuw nsw i16 %i.g to i8             ; 2 uses
  %i.i = or disjoint i8 %i.h, -16
  %.not2629.i.i = icmp slt i16 %.val, 0
  %.022.i.i = select i1 %.not2629.i.i, i8 %i.i, i8 %i.h ; 3 uses
  %i.j = urem i16 %.021.i.i, 10
  %i.k = udiv i16 %.021.i.i, 10                   ; 2 uses
  %.not2730.i.i = icmp eq i16 %i.j, 0
  %i.l = icmp ne i16 %.021.i.i, 0
  %i.m = and i1 %i.l, %.not2730.i.i
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.n = icmp eq i8 %.022.i.i, 7
  br i1 %i.n, label %._crit_edge.thread.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %.lr.ph
  %i.o = icmp eq i8 %i.q, 7
  br i1 %i.o, label %._crit_edge.thread.i.i, label %.lr.ph, !llvm.loop !33

.lr.ph:                                           ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.p = phi i16 [ %i.s, %.lr.ph.i.i ], [ %i.k, %.lr.ph.i.i.preheader ] ; 4 uses
  %.12331.i.i88 = phi i8 [ %i.q, %.lr.ph.i.i ], [ %.022.i.i, %.lr.ph.i.i.preheader ]
  %.132.i.i87 = phi i16 [ %i.p, %.lr.ph.i.i ], [ %.021.i.i, %.lr.ph.i.i.preheader ]
  %i.q = add i8 %.12331.i.i88, 1                  ; 3 uses
  %i.r = urem i16 %i.p, 10
  %i.s = udiv i16 %i.p, 10                        ; 2 uses
  %.not27.i.i = icmp eq i16 %i.r, 0
  %3 = icmp samesign ugt i16 %.132.i.i87, 9
  %i.t = and i1 %3, %.not27.i.i
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !33

._crit_edge.i.i:                                  ; preds = %.lr.ph, %bb.b
  %.123.lcssa.i.i = phi i8 [ %.022.i.i, %bb.b ], [ %i.q, %.lr.ph ]
  %.2.i.i = phi i16 [ %.021.i.i, %bb.b ], [ %i.p, %.lr.ph ]
  %.123.lcssa.fr.i.i = freeze i8 %.123.lcssa.i.i  ; 2 uses
  %.not28.i.i = icmp sgt i8 %.123.lcssa.fr.i.i, -1
  %spec.select.i.i = select i1 %.not28.i.i, i16 0, i16 8
  %i.u = and i8 %.123.lcssa.fr.i.i, 7
  %i.v = zext nneg i8 %i.u to i16
  %i.w = or disjoint i16 %spec.select.i.i, %i.v
  %i.x = shl nuw i16 %i.w, 12
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader, %._crit_edge.i.i
  %.243.i.i = phi i16 [ %.2.i.i, %._crit_edge.i.i ], [ %i.k, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i ]
  %i.y = phi i16 [ %i.x, %._crit_edge.i.i ], [ 28672, %.lr.ph.i.i.preheader ], [ 28672, %.lr.ph.i.i ]
  %i.z = or i16 %.243.i.i, %i.y
  %i.aa = or i16 %i.z, %i.c
  br label %sfloat_to_normal_form.exit.i

sfloat_to_normal_form.exit.i:                     ; preds = %._crit_edge.thread.i.i, %bb.a
  %.024.i.i = phi i16 [ %i.aa, %._crit_edge.thread.i.i ], [ %.val, %bb.a ] ; 6 uses
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = load i16, ptr %i.ab, align 8            ; 13 uses
  %i.ad = add i16 %i.ac, -2046
  %or.cond.i71.i = icmp ult i16 %i.ad, 5          ; 2 uses
  br i1 %or.cond.i71.i, label %sfloat_to_normal_form.exit90.i, label %bb.c

bb.c:                                             ; preds = %sfloat_to_normal_form.exit.i
  %i.ae = and i16 %i.ac, 2048                     ; 2 uses
  %.not.i72.i = icmp eq i16 %i.ae, 0
  %i.af = or i16 %i.ac, -2048
  %i.ag = sub nsw i16 0, %i.af
  %i.ah = and i16 %i.ac, 2047
  %.021.i73.i = select i1 %.not.i72.i, i16 %i.ah, i16 %i.ag ; 5 uses
  %i.ai = lshr i16 %i.ac, 12
  %i.aj = trunc nuw nsw i16 %i.ai to i8           ; 2 uses
  %i.ak = or disjoint i8 %i.aj, -16
  %.not2629.i74.i = icmp slt i16 %i.ac, 0
  %.022.i75.i = select i1 %.not2629.i74.i, i8 %i.ak, i8 %i.aj ; 3 uses
  %i.al = urem i16 %.021.i73.i, 10
  %i.am = udiv i16 %.021.i73.i, 10                ; 2 uses
  %.not2730.i76.i = icmp eq i16 %i.al, 0
  %i.an = icmp ne i16 %.021.i73.i, 0
  %i.ao = and i1 %i.an, %.not2730.i76.i
  br i1 %i.ao, label %.lr.ph.i86.i.preheader, label %._crit_edge.i77.i

.lr.ph.i86.i.preheader:                           ; preds = %bb.c
  %i.ap = icmp eq i8 %.022.i75.i, 7
  br i1 %i.ap, label %._crit_edge.thread.i83.i, label %.lr.ph91

.lr.ph.i86.i:                                     ; preds = %.lr.ph91
  %i.aq = icmp eq i8 %i.as, 7
  br i1 %i.aq, label %._crit_edge.thread.i83.i, label %.lr.ph91, !llvm.loop !33

.lr.ph91:                                         ; preds = %.lr.ph.i86.i.preheader, %.lr.ph.i86.i
  %i.ar = phi i16 [ %i.au, %.lr.ph.i86.i ], [ %i.am, %.lr.ph.i86.i.preheader ] ; 4 uses
  %.12331.i88.i90 = phi i8 [ %i.as, %.lr.ph.i86.i ], [ %.022.i75.i, %.lr.ph.i86.i.preheader ]
  %.132.i87.i89 = phi i16 [ %i.ar, %.lr.ph.i86.i ], [ %.021.i73.i, %.lr.ph.i86.i.preheader ]
  %i.as = add i8 %.12331.i88.i90, 1               ; 3 uses
  %i.at = urem i16 %i.ar, 10
  %i.au = udiv i16 %i.ar, 10                      ; 2 uses
  %.not27.i89.i = icmp eq i16 %i.at, 0
  %4 = icmp samesign ugt i16 %.132.i87.i89, 9
  %i.av = and i1 %4, %.not27.i89.i
  br i1 %i.av, label %.lr.ph.i86.i, label %._crit_edge.i77.i, !llvm.loop !33

._crit_edge.i77.i:                                ; preds = %.lr.ph91, %bb.c
  %.123.lcssa.i78.i = phi i8 [ %.022.i75.i, %bb.c ], [ %i.as, %.lr.ph91 ]
  %.2.i79.i = phi i16 [ %.021.i73.i, %bb.c ], [ %i.ar, %.lr.ph91 ]
  %.123.lcssa.fr.i80.i = freeze i8 %.123.lcssa.i78.i ; 2 uses
  %.not28.i81.i = icmp sgt i8 %.123.lcssa.fr.i80.i, -1
  %spec.select.i82.i = select i1 %.not28.i81.i, i16 0, i16 8
  %i.aw = and i8 %.123.lcssa.fr.i80.i, 7
  %i.ax = zext nneg i8 %i.aw to i16
  %i.ay = or disjoint i16 %spec.select.i82.i, %i.ax
  %i.az = shl nuw i16 %i.ay, 12
  br label %._crit_edge.thread.i83.i

._crit_edge.thread.i83.i:                         ; preds = %.lr.ph.i86.i, %.lr.ph.i86.i.preheader, %._crit_edge.i77.i
  %.243.i84.i = phi i16 [ %.2.i79.i, %._crit_edge.i77.i ], [ %i.am, %.lr.ph.i86.i.preheader ], [ %i.au, %.lr.ph.i86.i ]
  %i.ba = phi i16 [ %i.az, %._crit_edge.i77.i ], [ 28672, %.lr.ph.i86.i.preheader ], [ 28672, %.lr.ph.i86.i ]
  %i.bb = or i16 %.243.i84.i, %i.ba
  %i.bc = or i16 %i.bb, %i.ae
  br label %sfloat_to_normal_form.exit90.i

sfloat_to_normal_form.exit90.i:                   ; preds = %._crit_edge.thread.i83.i, %sfloat_to_normal_form.exit.i
  %.024.i85.i = phi i16 [ %i.bc, %._crit_edge.thread.i83.i ], [ %i.ac, %sfloat_to_normal_form.exit.i ] ; 6 uses
  %i.bd = icmp eq i16 %.024.i.i, %.024.i85.i
  br i1 %i.bd, label %sfloat_ieee_11073_cmp_lt.exit.thread29, label %bb.d

bb.d:                                             ; preds = %sfloat_to_normal_form.exit90.i
  switch i16 %.024.i.i, label %bb.e [
    i16 2047, label %sfloat_ieee_11073_cmp_lt.exit.thread29
    i16 2048, label %sfloat_ieee_11073_cmp_lt.exit.thread29
    i16 2049, label %sfloat_ieee_11073_cmp_lt.exit.thread29
    i16 2046, label %sfloat_ieee_11073_cmp_lt.exit.thread29
    i16 2050, label %.split
  ]

.split:                                           ; preds = %bb.d
  %i.be = add i16 %.024.i85.i, -2051
  %switch.i = icmp ult i16 %i.be, -4
  br i1 %switch.i, label %sfloat_ieee_11073_cmp_lt.exit.thread, label %sfloat_ieee_11073_cmp_lt.exit.thread29

bb.e:                                             ; preds = %bb.d
  %i.bf = and i16 %.024.i.i, 4095
  %i.bg = and i16 %.024.i85.i, 4095
  %i.bh = and i16 %.024.i.i, 2048
  %.not.i = icmp eq i16 %i.bh, 0
  %masksel.i = select i1 %.not.i, i16 0, i16 -4096
  %spec.select.i = or disjoint i16 %masksel.i, %i.bf ; 6 uses
  %i.bi = and i16 %.024.i85.i, 2048
  %.not62.i = icmp eq i16 %i.bi, 0
  %masksel1.i = select i1 %.not62.i, i16 0, i16 -4096
  %.047.i = or disjoint i16 %masksel1.i, %i.bg    ; 6 uses
  %i.bj = lshr i16 %.024.i.i, 12
  %i.bk = trunc nuw nsw i16 %i.bj to i8           ; 2 uses
  %i.bl = lshr i16 %.024.i85.i, 12
  %i.bm = trunc nuw nsw i16 %i.bl to i8           ; 2 uses
  %i.bn = or disjoint i8 %i.bk, -16
  %.not632.i = icmp slt i16 %.024.i.i, 0
  %.046.i = select i1 %.not632.i, i8 %i.bn, i8 %i.bk ; 8 uses
  %i.bo = or disjoint i8 %i.bm, -16
  %.not643.i = icmp slt i16 %.024.i85.i, 0
  %.045.i = select i1 %.not643.i, i8 %i.bo, i8 %i.bm ; 8 uses
  %i.bp = icmp eq i16 %spec.select.i, %.047.i
  %i.bq = icmp slt i8 %.046.i, %.045.i            ; 2 uses
  %or.cond.i = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i, label %sfloat_ieee_11073_cmp_lt.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = icmp eq i8 %.046.i, %.045.i
  %i.bs = icmp slt i16 %spec.select.i, %.047.i
  %or.cond67.i = and i1 %i.br, %i.bs
  br i1 %or.cond67.i, label %sfloat_ieee_11073_cmp_lt.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %narrow.i = sub nsw i8 %.045.i, %.046.i
  %i.bt = icmp ult i8 %narrow.i, 4
  br i1 %i.bt, label %.preheader.i, label %sfloat_ieee_11073_cmp_lt.exit.thread

.preheader.i:                                     ; preds = %bb.h
  %.not6614.i = icmp eq i8 %.045.i, %.046.i
  br i1 %.not6614.i, label %sfloat_ieee_11073_cmp_lt.exit, label %vector.ph101

vector.ph101:                                     ; preds = %.preheader.i
  %i.bu = xor i8 %.046.i, -1
  %i.bv = add nsw i8 %.045.i, %i.bu
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %n.rnd.up102 = add nuw nsw i32 %i.bw, 4
  %n.vec103 = and i32 %n.rnd.up102, 508
  %i.bx = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %.047.i, i64 0
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph101
  %index108 = phi i32 [ 0, %vector.ph101 ], [ %index.next111, %vector.body107 ]
  %vec.phi109 = phi <4 x i16> [ %i.bx, %vector.ph101 ], [ %i.by, %vector.body107 ] ; 2 uses
  %vec.ind110 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph101 ], [ %vec.ind.next112, %vector.body107 ] ; 2 uses
  %i.by = mul <4 x i16> %vec.phi109, splat (i16 10) ; 2 uses
  %index.next111 = add nuw i32 %index108, 4       ; 2 uses
  %vec.ind.next112 = add nuw <4 x i32> %vec.ind110, splat (i32 4)
  %i.bz = icmp eq i32 %index.next111, %n.vec103
  br i1 %i.bz, label %sfloat_ieee_11073_cmp_lt.exit.loopexit, label %vector.body107, !llvm.loop !34

bb.i:                                             ; preds = %bb.g
  %i.ca = sub nsw i8 %.046.i, %.045.i
  %i.cb = icmp ult i8 %i.ca, 4
  br i1 %i.cb, label %.preheader4.i, label %sfloat_ieee_11073_cmp_lt.exit.thread29

.preheader4.i:                                    ; preds = %bb.i
  %.not6511.i = icmp eq i8 %.046.i, %.045.i
  br i1 %.not6511.i, label %sfloat_ieee_11073_cmp_lt.exit, label %vector.ph

vector.ph:                                        ; preds = %.preheader4.i
  %i.cc = xor i8 %.045.i, -1
  %i.cd = add nsw i8 %.046.i, %i.cc
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %n.rnd.up = add nuw nsw i32 %i.ce, 4
  %n.vec = and i32 %n.rnd.up, 508
  %i.cf = insertelement <4 x i16> <i16 poison, i16 1, i16 1, i16 1>, i16 %spec.select.i, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i16> [ %i.cf, %vector.ph ], [ %i.cg, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cg = mul <4 x i16> %vec.phi, splat (i16 10)  ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ch = icmp eq i32 %index.next, %n.vec
  br i1 %i.ch, label %sfloat_ieee_11073_cmp_lt.exit.loopexit73, label %vector.body, !llvm.loop !35

sfloat_ieee_11073_cmp_lt.exit.loopexit:           ; preds = %vector.body107
  %.not114 = icmp ugt <4 x i32> %vec.ind110, %broadcast.splat106
  %i.ci = select <4 x i1> %.not114, <4 x i16> %vec.phi109, <4 x i16> %i.by
  %i.cj = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.ci)
  br label %sfloat_ieee_11073_cmp_lt.exit

sfloat_ieee_11073_cmp_lt.exit.loopexit73:         ; preds = %vector.body
  %.not = icmp ugt <4 x i32> %vec.ind, %broadcast.splat
  %i.ck = select <4 x i1> %.not, <4 x i16> %vec.phi, <4 x i16> %i.cg
  %i.cl = tail call i16 @llvm.vector.reduce.mul.v4i16(<4 x i16> %i.ck)
  br label %sfloat_ieee_11073_cmp_lt.exit

sfloat_ieee_11073_cmp_lt.exit:                    ; preds = %sfloat_ieee_11073_cmp_lt.exit.loopexit73, %sfloat_ieee_11073_cmp_lt.exit.loopexit, %.preheader.i, %.preheader4.i
  %.352.i = phi i16 [ %spec.select.i, %.preheader.i ], [ %spec.select.i, %sfloat_ieee_11073_cmp_lt.exit.loopexit ], [ %spec.select.i, %.preheader4.i ], [ %i.cl, %sfloat_ieee_11073_cmp_lt.exit.loopexit73 ]
  %.3.i = phi i16 [ %.047.i, %.preheader.i ], [ %i.cj, %sfloat_ieee_11073_cmp_lt.exit.loopexit ], [ %.047.i, %.preheader4.i ], [ %.047.i, %sfloat_ieee_11073_cmp_lt.exit.loopexit73 ]
  %i.cm = icmp slt i16 %.352.i, %.3.i
  br i1 %i.cm, label %sfloat_ieee_11073_cmp_lt.exit.thread, label %sfloat_ieee_11073_cmp_lt.exit.thread29

sfloat_ieee_11073_cmp_lt.exit.thread29:           ; preds = %sfloat_to_normal_form.exit90.i, %bb.i, %bb.d, %bb.d, %bb.d, %bb.d, %.split, %sfloat_ieee_11073_cmp_lt.exit
  br i1 %or.cond.i.i, label %sfloat_to_normal_form.exit.i21, label %bb.j

bb.j:                                             ; preds = %sfloat_ieee_11073_cmp_lt.exit.thread29
  %i.cn = and i16 %.val, 2048                     ; 2 uses
  %.not.i.i8 = icmp eq i16 %i.cn, 0
  %i.co = or i16 %.val, -2048
  %i.cp = sub nsw i16 0, %i.co
  %i.cq = and i16 %.val, 2047
  %.021.i.i9 = select i1 %.not.i.i8, i16 %i.cq, i16 %i.cp ; 5 uses
  %i.cr = lshr i16 %.val, 12
  %i.cs = trunc nuw nsw i16 %i.cr to i8           ; 2 uses
  %i.ct = or disjoint i8 %i.cs, -16
  %.not2629.i.i10 = icmp slt i16 %.val, 0
  %.022.i.i11 = select i1 %.not2629.i.i10, i8 %i.ct, i8 %i.cs ; 3 uses
  %i.cu = urem i16 %.021.i.i9, 10
  %i.cv = udiv i16 %.021.i.i9, 10                 ; 2 uses
  %.not2730.i.i12 = icmp eq i16 %i.cu, 0
  %i.cw = icmp ne i16 %.021.i.i9, 0
  %i.cx = and i1 %i.cw, %.not2730.i.i12
  br i1 %i.cx, label %.lr.ph.i.i23.preheader, label %._crit_edge.i.i13

.lr.ph.i.i23.preheader:                           ; preds = %bb.j
  %i.cy = icmp eq i8 %.022.i.i11, 7
  br i1 %i.cy, label %._crit_edge.thread.i.i19, label %.lr.ph95

.lr.ph.i.i23:                                     ; preds = %.lr.ph95
  %i.cz = icmp eq i8 %i.db, 7
  br i1 %i.cz, label %._crit_edge.thread.i.i19, label %.lr.ph95, !llvm.loop !33

.lr.ph95:                                         ; preds = %.lr.ph.i.i23.preheader, %.lr.ph.i.i23
  %i.da = phi i16 [ %i.dd, %.lr.ph.i.i23 ], [ %i.cv, %.lr.ph.i.i23.preheader ] ; 4 uses
  %.12331.i.i2594 = phi i8 [ %i.db, %.lr.ph.i.i23 ], [ %.022.i.i11, %.lr.ph.i.i23.preheader ]
  %.132.i.i2493 = phi i16 [ %i.da, %.lr.ph.i.i23 ], [ %.021.i.i9, %.lr.ph.i.i23.preheader ]
  %i.db = add i8 %.12331.i.i2594, 1               ; 3 uses
  %i.dc = urem i16 %i.da, 10
  %i.dd = udiv i16 %i.da, 10                      ; 2 uses
  %.not27.i.i26 = icmp eq i16 %i.dc, 0
  %5 = icmp samesign ugt i16 %.132.i.i2493, 9
  %i.de = and i1 %5, %.not27.i.i26
  br i1 %i.de, label %.lr.ph.i.i23, label %._crit_edge.i.i13, !llvm.loop !33

._crit_edge.i.i13:                                ; preds = %.lr.ph95, %bb.j
  %.123.lcssa.i.i14 = phi i8 [ %.022.i.i11, %bb.j ], [ %i.db, %.lr.ph95 ]
  %.2.i.i15 = phi i16 [ %.021.i.i9, %bb.j ], [ %i.da, %.lr.ph95 ]
  %.123.lcssa.fr.i.i16 = freeze i8 %.123.lcssa.i.i14 ; 2 uses
  %.not28.i.i17 = icmp sgt i8 %.123.lcssa.fr.i.i16, -1
  %spec.select.i.i18 = select i1 %.not28.i.i17, i16 0, i16 8
  %i.df = and i8 %.123.lcssa.fr.i.i16, 7
  %i.dg = zext nneg i8 %i.df to i16
  %i.dh = or disjoint i16 %spec.select.i.i18, %i.dg
  %i.di = shl nuw i16 %i.dh, 12
  br label %._crit_edge.thread.i.i19

._crit_edge.thread.i.i19:                         ; preds = %.lr.ph.i.i23, %.lr.ph.i.i23.preheader, %._crit_edge.i.i13
  %.243.i.i20 = phi i16 [ %.2.i.i15, %._crit_edge.i.i13 ], [ %i.cv, %.lr.ph.i.i23.preheader ], [ %i.dd, %.lr.ph.i.i23 ]
  %i.dj = phi i16 [ %i.di, %._crit_edge.i.i13 ], [ 28672, %.lr.ph.i.i23.preheader ], [ 28672, %.lr.ph.i.i23 ]
  %i.dk = or i16 %.243.i.i20, %i.dj
  %i.dl = or i16 %i.dk, %i.cn
  br label %sfloat_to_normal_form.exit.i21

sfloat_to_normal_form.exit.i21:                   ; preds = %._crit_edge.thread.i.i19, %sfloat_ieee_11073_cmp_lt.exit.thread29
  %.024.i.i22 = phi i16 [ %i.dl, %._crit_edge.thread.i.i19 ], [ %.val, %sfloat_ieee_11073_cmp_lt.exit.thread29 ]
  br i1 %or.cond.i71.i, label %sfloat_ieee_11073_cmp_eq.exit, label %bb.k

bb.k:                                             ; preds = %sfloat_to_normal_form.exit.i21
  %i.dm = and i16 %i.ac, 2048                     ; 2 uses
  %.not.i3.i = icmp eq i16 %i.dm, 0
  %i.dn = or i16 %i.ac, -2048
  %i.do = sub nsw i16 0, %i.dn
  %i.dp = and i16 %i.ac, 2047
  %.021.i4.i = select i1 %.not.i3.i, i16 %i.dp, i16 %i.do ; 5 uses
  %i.dq = lshr i16 %i.ac, 12
  %i.dr = trunc nuw nsw i16 %i.dq to i8           ; 2 uses
  %i.ds = or disjoint i8 %i.dr, -16
  %.not2629.i5.i = icmp slt i16 %i.ac, 0
  %.022.i6.i = select i1 %.not2629.i5.i, i8 %i.ds, i8 %i.dr ; 3 uses
  %i.dt = urem i16 %.021.i4.i, 10
  %i.du = udiv i16 %.021.i4.i, 10                 ; 2 uses
  %.not2730.i7.i = icmp eq i16 %i.dt, 0
  %i.dv = icmp ne i16 %.021.i4.i, 0
  %i.dw = and i1 %i.dv, %.not2730.i7.i
  br i1 %i.dw, label %.lr.ph.i17.i.preheader, label %._crit_edge.i8.i

.lr.ph.i17.i.preheader:                           ; preds = %bb.k
  %i.dx = icmp eq i8 %.022.i6.i, 7
  br i1 %i.dx, label %._crit_edge.thread.i14.i, label %.lr.ph99

.lr.ph.i17.i:                                     ; preds = %.lr.ph99
  %i.dy = icmp eq i8 %i.ea, 7
  br i1 %i.dy, label %._crit_edge.thread.i14.i, label %.lr.ph99, !llvm.loop !33

.lr.ph99:                                         ; preds = %.lr.ph.i17.i.preheader, %.lr.ph.i17.i
  %i.dz = phi i16 [ %i.ec, %.lr.ph.i17.i ], [ %i.du, %.lr.ph.i17.i.preheader ] ; 4 uses
  %.12331.i19.i98 = phi i8 [ %i.ea, %.lr.ph.i17.i ], [ %.022.i6.i, %.lr.ph.i17.i.preheader ]
  %.132.i18.i97 = phi i16 [ %i.dz, %.lr.ph.i17.i ], [ %.021.i4.i, %.lr.ph.i17.i.preheader ]
  %i.ea = add i8 %.12331.i19.i98, 1               ; 3 uses
  %i.eb = urem i16 %i.dz, 10
  %i.ec = udiv i16 %i.dz, 10                      ; 2 uses
  %.not27.i20.i = icmp eq i16 %i.eb, 0
  %6 = icmp samesign ugt i16 %.132.i18.i97, 9
  %i.ed = and i1 %6, %.not27.i20.i
  br i1 %i.ed, label %.lr.ph.i17.i, label %._crit_edge.i8.i, !llvm.loop !33

._crit_edge.i8.i:                                 ; preds = %.lr.ph99, %bb.k
  %.123.lcssa.i9.i = phi i8 [ %.022.i6.i, %bb.k ], [ %i.ea, %.lr.ph99 ]
  %.2.i10.i = phi i16 [ %.021.i4.i, %bb.k ], [ %i.dz, %.lr.ph99 ]
  %.123.lcssa.fr.i11.i = freeze i8 %.123.lcssa.i9.i ; 2 uses
  %.not28.i12.i = icmp sgt i8 %.123.lcssa.fr.i11.i, -1
  %spec.select.i13.i = select i1 %.not28.i12.i, i16 0, i16 8
  %i.ee = and i8 %.123.lcssa.fr.i11.i, 7
  %i.ef = zext nneg i8 %i.ee to i16
  %i.eg = or disjoint i16 %spec.select.i13.i, %i.ef
  %i.eh = shl nuw i16 %i.eg, 12
  br label %._crit_edge.thread.i14.i

._crit_edge.thread.i14.i:                         ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader, %._crit_edge.i8.i
  %.243.i15.i = phi i16 [ %.2.i10.i, %._crit_edge.i8.i ], [ %i.du, %.lr.ph.i17.i.preheader ], [ %i.ec, %.lr.ph.i17.i ]
  %i.ei = phi i16 [ %i.eh, %._crit_edge.i8.i ], [ 28672, %.lr.ph.i17.i.preheader ], [ 28672, %.lr.ph.i17.i ]
  %i.ej = or i16 %.243.i15.i, %i.ei
  %i.ek = or i16 %i.ej, %i.dm
  br label %sfloat_ieee_11073_cmp_eq.exit

sfloat_ieee_11073_cmp_eq.exit:                    ; preds = %sfloat_to_normal_form.exit.i21, %._crit_edge.thread.i14.i
  %.024.i16.i = phi i16 [ %i.ek, %._crit_edge.thread.i14.i ], [ %i.ac, %sfloat_to_normal_form.exit.i21 ]
  %i.el = icmp ne i16 %.024.i.i22, %.024.i16.i
  %i.em = zext i1 %i.el to i32
  br label %sfloat_ieee_11073_cmp_lt.exit.thread

sfloat_ieee_11073_cmp_lt.exit.thread:             ; preds = %bb.f, %bb.h, %bb.e, %.split, %sfloat_ieee_11073_cmp_lt.exit, %sfloat_ieee_11073_cmp_eq.exit
  %storemerge = phi i32 [ %i.em, %sfloat_ieee_11073_cmp_eq.exit ], [ -1, %sfloat_ieee_11073_cmp_lt.exit ], [ -1, %.split ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.f ]
  store i32 %storemerge, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @sfloat_ieee_11073_hash(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i64
  store i64 %i.d, ptr %i.a, align 8
  %i.e = call i32 @g_int64_hash(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @sfloat_ieee_11073_is_zero(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 4095
  %i.d = icmp eq i16 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @sfloat_ieee_11073_is_negative(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %switch.tableidx = add i16 %i.b, -2046          ; 2 uses
  %i.c = icmp ult i16 %switch.tableidx, 5
  %i.d = and i16 %i.b, 2048
  %i.e = icmp ne i16 %i.d, 0
  %i.f = and i16 %switch.tableidx, 31
  %switch.masked = icmp eq i16 %i.f, 4
  %.0 = select i1 %i.c, i1 %switch.masked, i1 %i.e
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @sfloat_ieee_11073_unary_minus(ptr nofree noundef writeonly captures(none) initializes((8, 10)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %switch.tableidx = add i16 %i.b, -2046          ; 2 uses
  %i.c = icmp ult i16 %switch.tableidx, 5
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 4095
  %i.e = icmp eq i16 %i.d, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub i16 0, %i.b
  %i.g = and i16 %i.f, 4095
  %i.h = and i16 %i.b, -4096
  %i.i = or disjoint i16 %i.h, %i.g
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.j = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.sfloat_ieee_11073_unary_minus, i64 %i.j
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c
  %.sink = phi i16 [ %switch.load, %switch.lookup ], [ %i.i, %bb.c ], [ 2048, %bb.b ]
  %i.k = getelementptr i8, ptr %0, i64 8
  store i16 %.sink, ptr %i.k, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @float_ieee_11073_fvalue_new(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_literal(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i1 zeroext %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 4 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %.loopexit145
    i8 46, label %.loopexit145
  ]

bb.b:                                             ; preds = %bb.a
  %.not128 = icmp eq i8 %i.a, 45                  ; 2 uses
  br i1 %.not128, label %bb.c, label %.critedge137

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %1, i64 1          ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  switch i8 %i.c, label %bb.j [
    i8 46, label %.loopexit145
    i8 73, label %bb.d
    i8 105, label %bb.d
    i8 0, label %.loopexit145
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.4)
  %.not135 = icmp eq i32 %i.d, 0
  br i1 %.not135, label %.loopexit145.sink.split, label %.loopexit145

.critedge137:                                     ; preds = %bb.b
  %i.e = and i8 %i.a, -33
  switch i8 %i.e, label %bb.h [
    i8 82, label %bb.e
    i8 78, label %bb.f
  ]

bb.e:                                             ; preds = %.critedge137
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5)
  %.not134 = icmp eq i32 %i.f, 0
  br i1 %.not134, label %.loopexit145.sink.split, label %.loopexit145

bb.f:                                             ; preds = %.critedge137
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6)
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %.loopexit145.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.7)
  %.not133 = icmp eq i32 %i.h, 0
  br i1 %.not133, label %.loopexit145.sink.split, label %.loopexit145

bb.h:                                             ; preds = %.critedge137
  %i.i = icmp eq i8 %i.a, 43
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.8)
  %.not131 = icmp eq i32 %i.j, 0
  br i1 %.not131, label %.loopexit145.sink.split, label %.loopexit145

bb.j:                                             ; preds = %bb.c, %bb.h
  %.0112 = phi ptr [ %i.b, %bb.c ], [ %1, %bb.h ]
  %.0111 = phi i32 [ 8388608, %bb.c ], [ 8388607, %bb.h ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.1113 = phi ptr [ %.0112, %bb.j ], [ %i.m, %bb.k ] ; 3 uses
  %i.k = load i8, ptr %.1113, align 1             ; 2 uses
  %i.l = icmp eq i8 %i.k, 48
  %i.m = getelementptr i8, ptr %.1113, i64 1
  br i1 %i.l, label %bb.k, label %.preheader144, !llvm.loop !36

.preheader144:                                    ; preds = %bb.k, %bb.x
  %i.n = phi i8 [ %.pr, %bb.x ], [ %i.k, %bb.k ]  ; 2 uses
  %.2114 = phi ptr [ %i.au, %bb.x ], [ %.1113, %bb.k ] ; 13 uses
  %.0105 = phi i32 [ %.3108, %bb.x ], [ 0, %bb.k ] ; 15 uses
  %.0103 = phi i16 [ %spec.select138, %bb.x ], [ 0, %bb.k ] ; 14 uses
  %.0 = phi i8 [ %.1, %bb.x ], [ 0, %bb.k ]       ; 12 uses
  switch i8 %i.n, label %.loopexit145 [
    i8 0, label %bb.y
    i8 48, label %bb.l
    i8 49, label %bb.n
    i8 50, label %bb.o
    i8 51, label %bb.p
    i8 52, label %bb.q
    i8 53, label %bb.r
    i8 54, label %bb.s
    i8 55, label %bb.t
    i8 56, label %bb.u
    i8 57, label %bb.v
    i8 46, label %bb.w
  ]

bb.l:                                             ; preds = %.preheader144
  %i.o = mul i32 %.0105, 10                       ; 2 uses
  %i.p = icmp ugt i32 %i.o, %.0111
  br i1 %i.p, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.q = add i16 %.0103, 1                        ; 2 uses
  %i.r = icmp slt i16 %i.q, 128
  br i1 %i.r, label %.loopexit145, label %.loopexit

bb.n:                                             ; preds = %.preheader144
  %i.s = mul i32 %.0105, 10
  %i.t = or disjoint i32 %i.s, 1
  br label %.loopexit

bb.o:                                             ; preds = %.preheader144
  %i.u = mul i32 %.0105, 10
  %i.v = add i32 %i.u, 2
  br label %.loopexit

bb.p:                                             ; preds = %.preheader144
  %i.w = mul i32 %.0105, 10
  %i.x = add i32 %i.w, 3
  br label %.loopexit

bb.q:                                             ; preds = %.preheader144
  %i.y = mul i32 %.0105, 10
  %i.z = add i32 %i.y, 4
  br label %.loopexit

bb.r:                                             ; preds = %.preheader144
  %i.aa = mul i32 %.0105, 10
  %i.ab = add i32 %i.aa, 5
  br label %.loopexit

bb.s:                                             ; preds = %.preheader144
  %i.ac = mul i32 %.0105, 10
  %i.ad = add i32 %i.ac, 6
  br label %.loopexit

bb.t:                                             ; preds = %.preheader144
  %i.ae = mul i32 %.0105, 10
  %i.af = add i32 %i.ae, 7
  br label %.loopexit

bb.u:                                             ; preds = %.preheader144
  %i.ag = mul i32 %.0105, 10
  %i.ah = add i32 %i.ag, 8
  br label %.loopexit

bb.v:                                             ; preds = %.preheader144
  %i.ai = mul i32 %.0105, 10
  %i.aj = add i32 %i.ai, 9
  br label %.loopexit

bb.w:                                             ; preds = %.preheader144
  %i.ak = trunc nuw i8 %.0 to i1
  br i1 %i.ak, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %bb.w
  %.3115148 = getelementptr i8, ptr %.2114, i64 1 ; 2 uses
  %i.al = load i8, ptr %.3115148, align 1
  %i.am = icmp eq i8 %i.al, 48
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.3115151 = phi ptr [ %.3115, %.lr.ph ], [ %.3115148, %.preheader ] ; 2 uses
  %.1104150 = phi i16 [ %.2, %.lr.ph ], [ %.0103, %.preheader ] ; 2 uses
  %.1106149 = phi i32 [ %.2107, %.lr.ph ], [ %.0105, %.preheader ] ; 2 uses
  %i.an = mul i32 %.1106149, 10                   ; 2 uses
  %.not130 = icmp ule i32 %i.an, %.0111           ; 2 uses
  %i.ao = icmp sgt i16 %.1104150, -135
  %.2107 = select i1 %.not130, i32 %i.an, i32 %.1106149 ; 2 uses
  %narrow = select i1 %.not130, i1 %i.ao, i1 false
  %spec.select = sext i1 %narrow to i16
  %.2 = add i16 %.1104150, %spec.select           ; 2 uses
  %.3115 = getelementptr i8, ptr %.3115151, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.3115, align 1
  %i.aq = icmp eq i8 %i.ap, 48
  br i1 %i.aq, label %.lr.ph, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  %.4116 = phi ptr [ %.2114, %bb.m ], [ %.2114, %bb.l ], [ %.2114, %bb.n ], [ %.2114, %bb.o ], [ %.2114, %bb.p ], [ %.2114, %bb.q ], [ %.2114, %bb.r ], [ %.2114, %bb.s ], [ %.2114, %bb.t ], [ %.2114, %bb.u ], [ %.2114, %bb.v ], [ %.2114, %.preheader ], [ %.3115151, %.lr.ph ]
  %.3108 = phi i32 [ %.0105, %bb.m ], [ %i.o, %bb.l ], [ %i.t, %bb.n ], [ %i.v, %bb.o ], [ %i.x, %bb.p ], [ %i.z, %bb.q ], [ %i.ab, %bb.r ], [ %i.ad, %bb.s ], [ %i.af, %bb.t ], [ %i.ah, %bb.u ], [ %i.aj, %bb.v ], [ %.0105, %.preheader ], [ %.2107, %.lr.ph ] ; 2 uses
  %.3 = phi i16 [ %i.q, %bb.m ], [ %.0103, %bb.l ], [ %.0103, %bb.n ], [ %.0103, %bb.o ], [ %.0103, %bb.p ], [ %.0103, %bb.q ], [ %.0103, %bb.r ], [ %.0103, %bb.s ], [ %.0103, %bb.t ], [ %.0103, %bb.u ], [ %.0103, %bb.v ], [ %.0103, %.preheader ], [ %.2, %.lr.ph ]
  %.1 = phi i8 [ %.0, %bb.m ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ 1, %.preheader ], [ 1, %.lr.ph ] ; 2 uses
  %i.ar = icmp ugt i32 %.3108, %.0111
  br i1 %i.ar, label %.loopexit145, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not = icmp eq i8 %i.n, 46
  %i.as = select i1 %.not, i8 0, i8 %.1
  %i.at = zext nneg i8 %i.as to i16
  %spec.select138 = sub i16 %.3, %i.at
  %i.au = getelementptr i8, ptr %.4116, i64 1     ; 2 uses
  %.pr = load i8, ptr %i.au, align 1
  br label %.preheader144, !llvm.loop !38

bb.y:                                             ; preds = %.preheader144
  %i.av = sub i32 0, %.0105
  %i.aw = and i32 %i.av, 16777215
  %.4109 = select i1 %.not128, i32 %i.aw, i32 %.0105 ; 2 uses
  %i.ax = icmp eq i32 %.4109, 0
  br i1 %i.ax, label %.critedge, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.y
  %i.ay = sext i16 %.0103 to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %6
  %.6156 = phi i32 [ %7, %6 ], [ %i.ay, %.lr.ph157.preheader ] ; 3 uses
  %.5110155 = phi i32 [ %5, %6 ], [ %.4109, %.lr.ph157.preheader ] ; 4 uses
  %4 = urem i32 %.5110155, 10
  %5 = udiv i32 %.5110155, 10                     ; 2 uses
  %i.az = icmp eq i32 %4, 0
  %i.ba = icmp slt i32 %.6156, 127
  %or.cond10 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond10, label %6, label %.critedge

6:                                                ; preds = %.lr.ph157
  %7 = add nsw i32 %.6156, 1                      ; 2 uses
  %.not129 = icmp ult i32 %.5110155, 10
  br i1 %.not129, label %.critedge, label %.lr.ph157, !llvm.loop !39

.critedge:                                        ; preds = %6, %.lr.ph157, %bb.y
  %.5110.lcssa = phi i32 [ 0, %bb.y ], [ %.5110155, %.lr.ph157 ], [ %5, %6 ]
  %.6.lcssa = phi i32 [ 0, %bb.y ], [ %.6156, %.lr.ph157 ], [ %7, %6 ] ; 2 uses
  %i.bb = icmp slt i32 %.6.lcssa, -128
  br i1 %i.bb, label %.loopexit145, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.bc = shl i32 %.6.lcssa, 24
  %i.bd = or i32 %i.bc, %.5110.lcssa
  br label %.loopexit145.sink.split

.loopexit145.sink.split:                          ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.z
  %.sink = phi i32 [ %i.bd, %bb.z ], [ 8388607, %bb.g ], [ 8388608, %bb.f ], [ 8388609, %bb.e ], [ 8388610, %bb.d ], [ 8388606, %bb.i ]
  %i.be = getelementptr i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.be, align 8
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit, %.preheader144, %bb.w, %bb.m, %.loopexit145.sink.split, %bb.c, %bb.c, %.critedge, %bb.i, %bb.g, %bb.e, %bb.d, %bb.a, %bb.a
  %.0117 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.d ], [ false, %bb.g ], [ false, %bb.e ], [ true, %.loopexit145.sink.split ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.w ], [ false, %.preheader144 ], [ false, %.loopexit ]
  ret i1 %.0117
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_uinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_sinteger64(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @float_ieee_11073_val_from_double(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, double %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @float_ieee_11073_val_from_literal(ptr noundef %0, ptr noundef %1, i1 zeroext poison, ptr poison)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noalias ptr @float_ieee_11073_val_to_repr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  %i.b = alloca [136 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 7 uses
  %i.e = add i32 %i.d, -8388606
  %or.cond = icmp ult i32 %i.e, 5
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [8 x i8], ptr @switch.table.float_ieee_11073_val_to_repr, i64 %i.f
  %switch.gep = getelementptr i8, ptr %i.g, i64 -67108848
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %switch.load)
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.i = lshr i32 %i.d, 24
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i32 %i.d, 8388607
  %i.l = and i32 %i.d, 8388608
  %.not = icmp eq i32 %i.l, 0                     ; 2 uses
  %i.m = or i32 %i.d, -8388608
  %i.n = sub nsw i32 0, %i.m
  %.069 = select i1 %.not, i32 %i.k, i32 %i.n     ; 2 uses
  %i.o = icmp eq i32 %.069, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull @.str.9)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %i.b, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.068 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]      ; 7 uses
  %i.q = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 2, i64 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %.069) ; 3 uses
  %i.r = ashr i32 %i.d, 24                        ; 7 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = zext nneg i32 %.068 to i64               ; 2 uses
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %.mask80 = and i32 %i.q, 255                    ; 2 uses
  %i.v = zext nneg i32 %.mask80 to i64
  %i.w = sub nuw nsw i64 136, %i.t
  %i.x = call ptr @__memcpy_chk(ptr noundef %i.u, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.v, i64 noundef %i.w) #13, !alias.scope !55 ; 0 uses
  %i.y = add nuw nsw i32 %.mask80, %.068
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.z = icmp sgt i32 %i.r, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %.068 to i64              ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %.mask79 = and i32 %i.q, 255                    ; 2 uses
  %i.ac = zext nneg i32 %.mask79 to i64
  %i.ad = sub nuw nsw i64 136, %i.aa
  %i.ae = call ptr @__memcpy_chk(ptr noundef %i.ab, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ac, i64 noundef %i.ad) #13, !alias.scope !56 ; 0 uses
  %i.af = add nuw nsw i32 %.mask79, %.068         ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr i8, ptr %i.b, i64 %i.ag
  %sext = shl nuw i64 %i.j, 56
  %i.ai = ashr exact i64 %sext, 56
  %i.aj = sub nsw i64 136, %i.ag
  %i.ak = icmp samesign ugt i32 %i.af, 136
  %i.al = select i1 %i.ak, i64 0, i64 %i.aj       ; 2 uses
  %i.am = icmp ne i64 %i.al, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = call ptr @__memset_chk(ptr noundef %i.ah, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.ai, i64 noundef %i.al) #13 ; 0 uses
  %i.ao = add nuw nsw i32 %i.af, %i.r
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ap = sub nsw i32 0, %i.r                     ; 4 uses
  %i.aq = and i32 %i.q, 255                       ; 7 uses
  %i.ar = icmp samesign ugt i32 %i.aq, %i.ap
  %i.as = zext nneg i32 %.068 to i64              ; 2 uses
  %i.at = getelementptr i8, ptr %i.b, i64 %i.as   ; 3 uses
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = add nsw i32 %i.aq, %i.r                 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = sub nuw nsw i64 136, %i.as
  %i.ax = call ptr @__memcpy_chk(ptr noundef %i.at, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.av, i64 noundef %i.aw) #13, !alias.scope !57 ; 0 uses
  %i.ay = add nsw i32 %i.au, %.068                ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.az
  store i8 46, ptr %i.ba, align 1
  %i.bb = add nsw i32 %i.ay, 1                    ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.bc
  %i.be = zext nneg i32 %i.aq to i64
  %i.bf = getelementptr i8, ptr %i.a, i64 %i.be
  %i.bg = sext i32 %i.r to i64
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bi = zext nneg i32 %i.ap to i64
  %i.bj = sub nsw i64 136, %i.bc
  %i.bk = icmp ugt i32 %i.bb, 136
  %i.bl = select i1 %i.bk, i64 0, i64 %i.bj       ; 2 uses
  %i.bm = icmp ne i64 %i.bl, -1
  call void @llvm.assume(i1 %i.bm)
  %i.bn = call ptr @__memcpy_chk(ptr noundef %i.bd, ptr noundef %i.bh, i64 noundef range(i64 -127, 256) %i.bi, i64 noundef %i.bl) #13, !alias.scope !58 ; 0 uses
  %i.bo = sub nsw i32 %i.bb, %i.r
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  store i8 48, ptr %i.at, align 1
  %i.bp = getelementptr i8, ptr %i.at, i64 1
  store i8 46, ptr %i.bp, align 1
  %i.bq = or disjoint i32 %.068, 2                ; 3 uses
  %.not87 = icmp eq i32 %i.aq, %i.ap
  br i1 %.not87, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = sub nuw nsw i32 %i.ap, %i.aq            ; 2 uses
  %i.bs = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bt = getelementptr i8, ptr %i.b, i64 %i.bs
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = sub nuw nsw i64 136, %i.bs
  %i.bw = call ptr @__memset_chk(ptr noundef %i.bt, i32 noundef 48, i64 noundef range(i64 -128, 129) %i.bu, i64 noundef %i.bv) #13 ; 0 uses
  %i.bx = add nuw nsw i32 %i.br, %i.bq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi i32 [ %i.bx, %bb.m ], [ %i.bq, %bb.l ] ; 2 uses
  %i.by = zext nneg i32 %.1 to i64                ; 2 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %i.by
  %i.ca = zext nneg i32 %i.aq to i64
  %i.cb = sub nuw nsw i64 136, %i.by
  %i.cc = call ptr @__memcpy_chk(ptr noundef %i.bz, ptr noundef nonnull %i.a, i64 noundef range(i64 -127, 256) %i.ca, i64 noundef %i.cb) #13, !alias.scope !59 ; 0 uses
  %i.cd = add nuw nsw i32 %.1, %i.aq
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k, %bb.g
  %.2 = phi i32 [ %i.y, %bb.g ], [ %i.ao, %bb.i ], [ %i.bo, %bb.k ], [ %i.cd, %bb.n ]
  %i.ce = zext i32 %.2 to i64
  %i.cf = getelementptr i8, ptr %i.b, i64 %i.ce
  store i8 0, ptr %i.cf, align 1
  %i.cg = call noalias ptr @wmem_strdup(ptr noundef %0, ptr noundef nonnull %i.b)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %.070 = phi ptr [ %i.p, %bb.c ], [ %i.cg, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup
  %.171 = phi ptr [ %i.h, %switch.lookup ], [ %.070, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.171
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal noundef i32 @float_ieee_11073_val_to_double(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %switch.tableidx = add i32 %i.b, -8388606       ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 65535                      ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.b, 24
  %i.g = trunc nuw i32 %i.f to i8
  %i.h = uitofp nneg i32 %i.d to double
  %i.i = sitofp i8 %i.g to double
  %i.j = tail call double @pow(double noundef 1.000000e+01, double noundef %i.i) #13
  %i.k = fmul double %i.j, %i.h
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.l = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.float_ieee_11073_val_to_double, i64 %i.l
  %switch.load = load double, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c
  %.sink = phi double [ %i.k, %bb.c ], [ %switch.load, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  store double %.sink, ptr %1, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @float_ieee_11073_value_set(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @float_ieee_11073_value_get(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal noundef i32 @float_ieee_11073_cmp_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8             ; 9 uses
  %i.b = add i32 %.val, -8388606
  %or.cond.i.i = icmp ult i32 %i.b, 5             ; 2 uses
  br i1 %or.cond.i.i, label %float_to_normal_form.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.val, 8388608                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.d = trunc i32 %.val to i16                   ; 3 uses
  %i.e = sub i16 0, %i.d
  %.017.i.i = select i1 %.not.i.i, i16 %i.d, i16 %i.e ; 3 uses
  %i.f = lshr i32 %.val, 24                       ; 2 uses
  %i.g = urem i16 %.017.i.i, 10
  %.not2224.i.i = icmp eq i16 %i.g, 0
  %i.h = icmp ne i16 %i.d, 0
  %i.i = and i1 %i.h, %.not2224.i.i
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.126.i.i = phi i16 [ %i.j, %bb.c ], [ %.017.i.i, %bb.b ] ; 2 uses
  %.018.in25.i.i = phi i32 [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = udiv i16 %.126.i.i, 10                   ; 4 uses
  %sext.i.i = shl i32 %.018.in25.i.i, 24          ; 2 uses
  %i.k = icmp eq i32 %sext.i.i, 2130706432
  br i1 %i.k, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = ashr exact i32 %sext.i.i, 24
  %i.m = add nsw i32 %i.l, 1                      ; 2 uses
  %i.n = urem i16 %i.j, 10
  %.not22.i.i = icmp eq i16 %i.n, 0
  %3 = icmp ugt i16 %.126.i.i, 9
  %i.o = and i1 %3, %.not22.i.i
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !60

._crit_edge.i.i:                                  ; preds = %bb.c, %.lr.ph.i.i, %bb.b
  %.018.in.lcssa.i.i = phi i32 [ %i.f, %bb.b ], [ %.018.in25.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ]
  %.2.i.i = phi i16 [ %.017.i.i, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  %sext23.i.i = shl i32 %.018.in.lcssa.i.i, 24
  %i.p = zext i16 %.2.i.i to i32
  %i.q = or disjoint i32 %sext23.i.i, %i.p
  %i.r = or disjoint i32 %i.q, %i.c
  br label %float_to_normal_form.exit.i

float_to_normal_form.exit.i:                      ; preds = %._crit_edge.i.i, %bb.a
  %.019.i.i = phi i32 [ %i.r, %._crit_edge.i.i ], [ %.val, %bb.a ] ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 9 uses
  %i.u = add i32 %i.t, -8388606
  %or.cond.i62.i = icmp ult i32 %i.u, 5           ; 2 uses
  br i1 %or.cond.i62.i, label %float_to_normal_form.exit76.i, label %bb.d

bb.d:                                             ; preds = %float_to_normal_form.exit.i
  %i.v = and i32 %i.t, 8388608                    ; 2 uses
  %.not.i63.i = icmp eq i32 %i.v, 0
  %i.w = trunc i32 %i.t to i16                    ; 3 uses
  %i.x = sub i16 0, %i.w
  %.017.i64.i = select i1 %.not.i63.i, i16 %i.w, i16 %i.x ; 3 uses
  %i.y = lshr i32 %i.t, 24                        ; 2 uses
  %i.z = urem i16 %.017.i64.i, 10
  %.not2224.i65.i = icmp eq i16 %i.z, 0
  %i.aa = icmp ne i16 %i.w, 0
  %i.ab = and i1 %i.aa, %.not2224.i65.i
  br i1 %i.ab, label %.lr.ph.i71.i, label %._crit_edge.i66.i

.lr.ph.i71.i:                                     ; preds = %bb.d, %bb.e
  %.126.i72.i = phi i16 [ %i.ac, %bb.e ], [ %.017.i64.i, %bb.d ] ; 2 uses
  %.018.in25.i73.i = phi i32 [ %i.af, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.ac = udiv i16 %.126.i72.i, 10                ; 4 uses
  %sext.i74.i = shl i32 %.018.in25.i73.i, 24      ; 2 uses
  %i.ad = icmp eq i32 %sext.i74.i, 2130706432
  br i1 %i.ad, label %._crit_edge.i66.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i71.i
  %i.ae = ashr exact i32 %sext.i74.i, 24
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  %i.ag = urem i16 %i.ac, 10
  %.not22.i75.i = icmp eq i16 %i.ag, 0
  %4 = icmp ugt i16 %.126.i72.i, 9
  %i.ah = and i1 %4, %.not22.i75.i
  br i1 %i.ah, label %.lr.ph.i71.i, label %._crit_edge.i66.i, !llvm.loop !60

._crit_edge.i66.i:                                ; preds = %bb.e, %.lr.ph.i71.i, %bb.d
  %.018.in.lcssa.i67.i = phi i32 [ %i.y, %bb.d ], [ %.018.in25.i73.i, %.lr.ph.i71.i ], [ %i.af, %bb.e ]
  %.2.i68.i = phi i16 [ %.017.i64.i, %bb.d ], [ %i.ac, %.lr.ph.i71.i ], [ %i.ac, %bb.e ]
  %sext23.i69.i = shl i32 %.018.in.lcssa.i67.i, 24
  %i.ai = zext i16 %.2.i68.i to i32
  %i.aj = or disjoint i32 %sext23.i69.i, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.v
  br label %float_to_normal_form.exit76.i

float_to_normal_form.exit76.i:                    ; preds = %._crit_edge.i66.i, %float_to_normal_form.exit.i
  %.019.i70.i = phi i32 [ %i.ak, %._crit_edge.i66.i ], [ %i.t, %float_to_normal_form.exit.i ] ; 5 uses
  %i.al = icmp eq i32 %.019.i.i, %.019.i70.i
  br i1 %i.al, label %float_ieee_11073_cmp_lt.exit.thread24, label %bb.f

bb.f:                                             ; preds = %float_to_normal_form.exit76.i
  switch i32 %.019.i.i, label %bb.g [
    i32 8388607, label %float_ieee_11073_cmp_lt.exit.thread24
    i32 8388608, label %float_ieee_11073_cmp_lt.exit.thread24
    i32 8388609, label %float_ieee_11073_cmp_lt.exit.thread24
    i32 8388606, label %float_ieee_11073_cmp_lt.exit.thread24
    i32 8388610, label %.split
  ]

.split:                                           ; preds = %bb.f
  %i.am = add i32 %.019.i70.i, -8388611
  %switch.i = icmp ult i32 %i.am, -4
  br i1 %switch.i, label %float_ieee_11073_cmp_lt.exit.thread, label %float_ieee_11073_cmp_lt.exit.thread24

bb.g:                                             ; preds = %bb.f
  %i.an = and i32 %.019.i.i, 16777215
  %i.ao = and i32 %.019.i70.i, 16777215
  %i.ap = and i32 %.019.i.i, 8388608
  %.not.i = icmp eq i32 %i.ap, 0
  %masksel.i = select i1 %.not.i, i32 0, i32 -16777216
  %spec.select.i = or disjoint i32 %masksel.i, %i.an ; 8 uses
  %i.aq = and i32 %.019.i70.i, 8388608
  %.not56.i = icmp eq i32 %i.aq, 0
  %masksel1.i = select i1 %.not56.i, i32 0, i32 -16777216
  %.041.i = or disjoint i32 %masksel1.i, %i.ao    ; 8 uses
  %i.ar = icmp eq i32 %spec.select.i, %.041.i
  %i.as = ashr i32 %.019.i.i, 24                  ; 6 uses
  %i.at = ashr i32 %.019.i70.i, 24                ; 6 uses
  %i.au = icmp slt i32 %i.as, %i.at               ; 2 uses
  %or.cond26.i = select i1 %i.ar, i1 %i.au, i1 false
  br i1 %or.cond26.i, label %float_ieee_11073_cmp_lt.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %i.av = icmp eq i32 %i.as, %i.at
  %i.aw = icmp slt i32 %spec.select.i, %.041.i
  %or.cond.i = and i1 %i.av, %i.aw
  br i1 %or.cond.i, label %float_ieee_11073_cmp_lt.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 %i.at, %i.as                ; 2 uses
  %i.ay = and i32 %i.ax, 255
  %i.az = icmp samesign ult i32 %i.ay, 7
  br i1 %i.az, label %.preheader.i, label %float_ieee_11073_cmp_lt.exit.thread

.preheader.i:                                     ; preds = %bb.i
  %i.ba = trunc i32 %i.ax to i8                   ; 3 uses
  %.not588.i = icmp eq i8 %i.ba, 0
  br i1 %.not588.i, label %float_ieee_11073_cmp_lt.exit, label %.lr.ph11.i.preheader

.lr.ph11.i.preheader:                             ; preds = %.preheader.i
  %i.bb = xor i32 %i.as, -1
  %i.bc = add nsw i32 %i.at, %i.bb
  %i.bd = and i32 %i.bc, 255                      ; 2 uses
  %i.be = add nuw nsw i32 %i.bd, 1                ; 2 uses
  %min.iters.check56 = icmp samesign ult i32 %i.bd, 7
  br i1 %min.iters.check56, label %.lr.ph11.i.preheader70, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph11.i.preheader
  %n.vec58 = and i32 %i.be, 504                   ; 3 uses
  %i.bf = trunc i32 %n.vec58 to i8
  %i.bg = sub i8 %i.ba, %i.bf
  %i.bh = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %.041.i, i64 0
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i32 [ 0, %vector.ph57 ], [ %index.next63, %vector.body59 ]
  %vec.phi61 = phi <4 x i32> [ %i.bh, %vector.ph57 ], [ %i.bi, %vector.body59 ]
  %vec.phi62 = phi <4 x i32> [ splat (i32 1), %vector.ph57 ], [ %i.bj, %vector.body59 ]
  %i.bi = mul <4 x i32> %vec.phi61, splat (i32 10) ; 2 uses
  %i.bj = mul <4 x i32> %vec.phi62, splat (i32 10) ; 2 uses
  %index.next63 = add nuw i32 %index60, 8         ; 2 uses
  %i.bk = icmp eq i32 %index.next63, %n.vec58
  br i1 %i.bk, label %middle.block64, label %vector.body59, !llvm.loop !61

middle.block64:                                   ; preds = %vector.body59
  %bin.rdx65 = mul <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx65) ; 2 uses
  %cmp.n66 = icmp eq i32 %i.be, %n.vec58
  br i1 %cmp.n66, label %float_ieee_11073_cmp_lt.exit, label %.lr.ph11.i.preheader70

.lr.ph11.i.preheader70:                           ; preds = %.lr.ph11.i.preheader, %middle.block64
  %.03910.i.ph = phi i8 [ %i.ba, %.lr.ph11.i.preheader ], [ %i.bg, %middle.block64 ]
  %.1429.i.ph = phi i32 [ %.041.i, %.lr.ph11.i.preheader ], [ %i.bl, %middle.block64 ]
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i.preheader70, %.lr.ph11.i
  %.03910.i = phi i8 [ %i.bm, %.lr.ph11.i ], [ %.03910.i.ph, %.lr.ph11.i.preheader70 ]
  %.1429.i = phi i32 [ %i.bn, %.lr.ph11.i ], [ %.1429.i.ph, %.lr.ph11.i.preheader70 ]
  %i.bm = add i8 %.03910.i, -1                    ; 2 uses
  %i.bn = mul i32 %.1429.i, 10                    ; 2 uses
  %.not58.i = icmp eq i8 %i.bm, 0
  br i1 %.not58.i, label %float_ieee_11073_cmp_lt.exit, label %.lr.ph11.i, !llvm.loop !62

bb.j:                                             ; preds = %bb.h
  %i.bo = sub nsw i32 %i.as, %i.at                ; 2 uses
  %i.bp = and i32 %i.bo, 255
  %i.bq = icmp samesign ult i32 %i.bp, 7
  br i1 %i.bq, label %.preheader2.i, label %float_ieee_11073_cmp_lt.exit.thread24

.preheader2.i:                                    ; preds = %bb.j
  %i.br = trunc i32 %i.bo to i8                   ; 3 uses
  %.not575.i = icmp eq i8 %i.br, 0
  br i1 %.not575.i, label %float_ieee_11073_cmp_lt.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader2.i
  %i.bs = xor i32 %i.at, -1
  %i.bt = add nsw i32 %i.as, %i.bs
  %i.bu = and i32 %i.bt, 255                      ; 2 uses
  %i.bv = add nuw nsw i32 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bu, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i32 %i.bv, 504                     ; 3 uses
  %i.bw = trunc i32 %n.vec to i8
  %i.bx = sub i8 %i.br, %i.bw
  %i.by = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %spec.select.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.by, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi54 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ca, %vector.body ]
  %i.bz = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ca = mul <4 x i32> %vec.phi54, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.cb = icmp eq i32 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ca, %i.bz
  %i.cc = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.bv, %n.vec
  br i1 %cmp.n, label %float_ieee_11073_cmp_lt.exit, label %.lr.ph.i.preheader74

.lr.ph.i.preheader74:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i8 [ %i.br, %.lr.ph.i.preheader ], [ %i.bx, %middle.block ]
  %.1446.i.ph = phi i32 [ %spec.select.i, %.lr.ph.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader74, %.lr.ph.i
  %.07.i = phi i8 [ %i.cd, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader74 ]
  %.1446.i = phi i32 [ %i.ce, %.lr.ph.i ], [ %.1446.i.ph, %.lr.ph.i.preheader74 ]
  %i.cd = add i8 %.07.i, -1                       ; 2 uses
  %i.ce = mul i32 %.1446.i, 10                    ; 2 uses
  %.not57.i = icmp eq i8 %i.cd, 0
  br i1 %.not57.i, label %float_ieee_11073_cmp_lt.exit, label %.lr.ph.i, !llvm.loop !64

float_ieee_11073_cmp_lt.exit:                     ; preds = %.lr.ph.i, %.lr.ph11.i, %middle.block, %middle.block64, %.preheader.i, %.preheader2.i
  %.346.i = phi i32 [ %spec.select.i, %.preheader.i ], [ %spec.select.i, %middle.block64 ], [ %spec.select.i, %.preheader2.i ], [ %spec.select.i, %.lr.ph11.i ], [ %i.cc, %middle.block ], [ %i.ce, %.lr.ph.i ]
  %.3.i = phi i32 [ %.041.i, %.preheader.i ], [ %i.bl, %middle.block64 ], [ %.041.i, %.preheader2.i ], [ %i.bn, %.lr.ph11.i ], [ %.041.i, %middle.block ], [ %.041.i, %.lr.ph.i ]
  %i.cf = icmp slt i32 %.346.i, %.3.i
  br i1 %i.cf, label %float_ieee_11073_cmp_lt.exit.thread, label %float_ieee_11073_cmp_lt.exit.thread24

float_ieee_11073_cmp_lt.exit.thread24:            ; preds = %float_to_normal_form.exit76.i, %bb.j, %bb.f, %bb.f, %bb.f, %bb.f, %.split, %float_ieee_11073_cmp_lt.exit
  br i1 %or.cond.i.i, label %float_to_normal_form.exit.i15, label %bb.k

bb.k:                                             ; preds = %float_ieee_11073_cmp_lt.exit.thread24
  %i.cg = and i32 %.val, 8388608                  ; 2 uses
  %.not.i.i8 = icmp eq i32 %i.cg, 0
  %i.ch = trunc i32 %.val to i16                  ; 3 uses
  %i.ci = sub i16 0, %i.ch
  %.017.i.i9 = select i1 %.not.i.i8, i16 %i.ch, i16 %i.ci ; 3 uses
  %i.cj = lshr i32 %.val, 24                      ; 2 uses
  %i.ck = urem i16 %.017.i.i9, 10
  %.not2224.i.i10 = icmp eq i16 %i.ck, 0
  %i.cl = icmp ne i16 %i.ch, 0
  %i.cm = and i1 %i.cl, %.not2224.i.i10
  br i1 %i.cm, label %.lr.ph.i.i17, label %._crit_edge.i.i11

.lr.ph.i.i17:                                     ; preds = %bb.k, %bb.l
  %.126.i.i18 = phi i16 [ %i.cn, %bb.l ], [ %.017.i.i9, %bb.k ] ; 2 uses
  %.018.in25.i.i19 = phi i32 [ %i.cq, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %i.cn = udiv i16 %.126.i.i18, 10                ; 4 uses
  %sext.i.i20 = shl i32 %.018.in25.i.i19, 24      ; 2 uses
  %i.co = icmp eq i32 %sext.i.i20, 2130706432
  br i1 %i.co, label %._crit_edge.i.i11, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i17
  %i.cp = ashr exact i32 %sext.i.i20, 24
  %i.cq = add nsw i32 %i.cp, 1                    ; 2 uses
  %i.cr = urem i16 %i.cn, 10
  %.not22.i.i21 = icmp eq i16 %i.cr, 0
  %5 = icmp ugt i16 %.126.i.i18, 9
  %i.cs = and i1 %5, %.not22.i.i21
  br i1 %i.cs, label %.lr.ph.i.i17, label %._crit_edge.i.i11, !llvm.loop !60

._crit_edge.i.i11:                                ; preds = %bb.l, %.lr.ph.i.i17, %bb.k
  %.018.in.lcssa.i.i12 = phi i32 [ %i.cj, %bb.k ], [ %.018.in25.i.i19, %.lr.ph.i.i17 ], [ %i.cq, %bb.l ]
  %.2.i.i13 = phi i16 [ %.017.i.i9, %bb.k ], [ %i.cn, %.lr.ph.i.i17 ], [ %i.cn, %bb.l ]
  %sext23.i.i14 = shl i32 %.018.in.lcssa.i.i12, 24
  %i.ct = zext i16 %.2.i.i13 to i32
  %i.cu = or disjoint i32 %sext23.i.i14, %i.ct
  %i.cv = or disjoint i32 %i.cu, %i.cg
  br label %float_to_normal_form.exit.i15

float_to_normal_form.exit.i15:                    ; preds = %._crit_edge.i.i11, %float_ieee_11073_cmp_lt.exit.thread24
  %.019.i.i16 = phi i32 [ %i.cv, %._crit_edge.i.i11 ], [ %.val, %float_ieee_11073_cmp_lt.exit.thread24 ]
  br i1 %or.cond.i62.i, label %float_ieee_11073_cmp_eq.exit, label %bb.m

bb.m:                                             ; preds = %float_to_normal_form.exit.i15
  %i.cw = and i32 %i.t, 8388608                   ; 2 uses
  %.not.i3.i = icmp eq i32 %i.cw, 0
  %i.cx = trunc i32 %i.t to i16                   ; 3 uses
  %i.cy = sub i16 0, %i.cx
  %.017.i4.i = select i1 %.not.i3.i, i16 %i.cx, i16 %i.cy ; 3 uses
  %i.cz = lshr i32 %i.t, 24                       ; 2 uses
  %i.da = urem i16 %.017.i4.i, 10
  %.not2224.i5.i = icmp eq i16 %i.da, 0
  %i.db = icmp ne i16 %i.cx, 0
  %i.dc = and i1 %i.db, %.not2224.i5.i
  br i1 %i.dc, label %.lr.ph.i11.i, label %._crit_edge.i6.i

.lr.ph.i11.i:                                     ; preds = %bb.m, %bb.n
  %.126.i12.i = phi i16 [ %i.dd, %bb.n ], [ %.017.i4.i, %bb.m ] ; 2 uses
  %.018.in25.i13.i = phi i32 [ %i.dg, %bb.n ], [ %i.cz, %bb.m ] ; 2 uses
  %i.dd = udiv i16 %.126.i12.i, 10                ; 4 uses
  %sext.i14.i = shl i32 %.018.in25.i13.i, 24      ; 2 uses
  %i.de = icmp eq i32 %sext.i14.i, 2130706432
  br i1 %i.de, label %._crit_edge.i6.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i11.i
  %i.df = ashr exact i32 %sext.i14.i, 24
  %i.dg = add nsw i32 %i.df, 1                    ; 2 uses
  %i.dh = urem i16 %i.dd, 10
  %.not22.i15.i = icmp eq i16 %i.dh, 0
  %6 = icmp ugt i16 %.126.i12.i, 9
  %i.di = and i1 %6, %.not22.i15.i
  br i1 %i.di, label %.lr.ph.i11.i, label %._crit_edge.i6.i, !llvm.loop !60

._crit_edge.i6.i:                                 ; preds = %bb.n, %.lr.ph.i11.i, %bb.m
  %.018.in.lcssa.i7.i = phi i32 [ %i.cz, %bb.m ], [ %.018.in25.i13.i, %.lr.ph.i11.i ], [ %i.dg, %bb.n ]
  %.2.i8.i = phi i16 [ %.017.i4.i, %bb.m ], [ %i.dd, %.lr.ph.i11.i ], [ %i.dd, %bb.n ]
  %sext23.i9.i = shl i32 %.018.in.lcssa.i7.i, 24
  %i.dj = zext i16 %.2.i8.i to i32
  %i.dk = or disjoint i32 %sext23.i9.i, %i.dj
  %i.dl = or disjoint i32 %i.dk, %i.cw
  br label %float_ieee_11073_cmp_eq.exit

float_ieee_11073_cmp_eq.exit:                     ; preds = %float_to_normal_form.exit.i15, %._crit_edge.i6.i
  %.019.i10.i = phi i32 [ %i.dl, %._crit_edge.i6.i ], [ %i.t, %float_to_normal_form.exit.i15 ]
  %i.dm = icmp ne i32 %.019.i.i16, %.019.i10.i
  %i.dn = zext i1 %i.dm to i32
  br label %float_ieee_11073_cmp_lt.exit.thread

float_ieee_11073_cmp_lt.exit.thread:              ; preds = %._crit_edge.i, %bb.i, %bb.g, %.split, %float_ieee_11073_cmp_lt.exit, %float_ieee_11073_cmp_eq.exit
  %storemerge = phi i32 [ %i.dn, %float_ieee_11073_cmp_eq.exit ], [ -1, %float_ieee_11073_cmp_lt.exit ], [ -1, %.split ], [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %._crit_edge.i ]
  store i32 %storemerge, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @float_ieee_11073_hash(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  store i64 %i.d, ptr %i.a, align 8
  %i.e = call i32 @g_int64_hash(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @float_ieee_11073_is_zero(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16777215
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @float_ieee_11073_is_negative(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %switch.tableidx = add i32 %i.b, -8388606       ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  %i.d = and i32 %i.b, 8388608
  %i.e = icmp ne i32 %i.d, 0
  %i.f = and i32 %switch.tableidx, 31
  %switch.masked = icmp eq i32 %i.f, 4
  %.0 = select i1 %i.c, i1 %switch.masked, i1 %i.e
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @float_ieee_11073_unary_minus(ptr nofree noundef writeonly captures(none) initializes((8, 12)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %switch.tableidx = add i32 %i.b, -8388606       ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 16777215
  %i.e = icmp eq i32 %i.d, 8388608
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub i32 0, %i.b
  %i.g = and i32 %i.f, 16777215
  %i.h = and i32 %i.b, -16777216
  %i.i = or disjoint i32 %i.h, %i.g
  br label %bb.d

switch.lookup:                                    ; preds = %bb.a
  %i.j = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.float_ieee_11073_unary_minus, i64 %i.j
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %bb.c
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ %i.i, %bb.c ], [ 8388608, %bb.b ]
  %i.k = getelementptr i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.k, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare void @ftype_register(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @ftype_register_pseudofields_ieee_11073_float(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @proto_register_field_array(i32 noundef %0, ptr noundef nonnull @ftype_register_pseudofields_ieee_11073_float.hf_ftypes, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memset_chk(ptr noundef writeonly, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare i32 @g_int64_hash(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v4i16(<4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #12

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !"memcpy.inline"}
!14 = distinct !{!14, !13, !"memcpy.inline: argument 1"}
!15 = distinct !{!15, !13, !"memcpy.inline: argument 0"}
!16 = distinct !{!16, !"memcpy.inline"}
!17 = distinct !{!17, !16, !"memcpy.inline: argument 1"}
!18 = distinct !{!18, !16, !"memcpy.inline: argument 0"}
!19 = distinct !{!19, !"memcpy.inline"}
!20 = distinct !{!20, !19, !"memcpy.inline: argument 1"}
!21 = distinct !{!21, !19, !"memcpy.inline: argument 0"}
!22 = distinct !{!22, !"memcpy.inline"}
!23 = distinct !{!23, !22, !"memcpy.inline: argument 1"}
!24 = distinct !{!24, !22, !"memcpy.inline: argument 0"}
!25 = distinct !{!25, !"memcpy.inline"}
!26 = distinct !{!26, !25, !"memcpy.inline: argument 1"}
!27 = distinct !{!27, !25, !"memcpy.inline: argument 0"}
!28 = !{!15, !14}
!29 = !{!18, !17}
!30 = !{!21, !20}
!31 = !{!24, !23}
!32 = !{!27, !26}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6, !7, !8}
!35 = distinct !{!35, !6, !7, !8}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !"memcpy.inline"}
!41 = distinct !{!41, !40, !"memcpy.inline: argument 1"}
!42 = distinct !{!42, !40, !"memcpy.inline: argument 0"}
!43 = distinct !{!43, !"memcpy.inline"}
!44 = distinct !{!44, !43, !"memcpy.inline: argument 1"}
!45 = distinct !{!45, !43, !"memcpy.inline: argument 0"}
!46 = distinct !{!46, !"memcpy.inline"}
!47 = distinct !{!47, !46, !"memcpy.inline: argument 1"}
!48 = distinct !{!48, !46, !"memcpy.inline: argument 0"}
!49 = distinct !{!49, !"memcpy.inline"}
!50 = distinct !{!50, !49, !"memcpy.inline: argument 1"}
!51 = distinct !{!51, !49, !"memcpy.inline: argument 0"}
!52 = distinct !{!52, !"memcpy.inline"}
!53 = distinct !{!53, !52, !"memcpy.inline: argument 1"}
!54 = distinct !{!54, !52, !"memcpy.inline: argument 0"}
!55 = !{!42, !41}
!56 = !{!45, !44}
!57 = !{!48, !47}
!58 = !{!51, !50}
!59 = !{!54, !53}
!60 = distinct !{!60, !6}
!61 = distinct !{!61, !6, !7, !8}
!62 = distinct !{!62, !6, !8, !7}
!63 = distinct !{!63, !6, !7, !8}
!64 = distinct !{!64, !6, !8, !7}
end_hunk_0
