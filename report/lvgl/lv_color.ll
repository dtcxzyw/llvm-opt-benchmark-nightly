Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_color?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_color_filter_dsc_t = type { ptr, ptr }

@lv_color_filter_shade = local_unnamed_addr constant %struct._lv_color_filter_dsc_t { ptr @lv_color_filter_shade_cb, ptr null }, align 8
@switch.table.lv_color_format_get_bpp = private unnamed_addr constant [48 x i8] c"\08\01\02\04\08\01\02\04\08\18  \10\18\10\10\10\10\08\00 \10\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\04\06\06\06\0C\0C", align 1
@switch.table.lv_color_format_get_size = private unnamed_addr constant [48 x i8] c"\01\01\01\01\01\01\01\01\01\03\04\04\02\03\02\02\02\02\01\00\04\02\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02", align 1

; Function Attrs: nounwind uwtable
define internal i24 @lv_color_filter_shade_cb(ptr nofree readnone captures(none) %0, i24 %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = icmp eq i8 %2, 127
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i8 %2, 127
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i8 %2, -1
  %i.d = shl i8 %i.c, 1
  %i.e = tail call i24 @lv_color_mix(i24 -1, i24 %1, i8 noundef zeroext %i.d) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = shl i8 %2, 1
  %i.g = add i8 %i.f, -2
  %i.h = tail call i24 @lv_color_mix(i24 0, i24 %1, i8 noundef zeroext %i.g) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.010.0 = phi i24 [ %i.h, %bb.d ], [ %i.e, %bb.c ], [ %1, %bb.a ]
  ret i24 %.sroa.010.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 33) i8 @lv_color_format_get_bpp(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -6               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 48
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lv_color_format_get_bpp, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @lv_color_format_has_alpha(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 27
  %switch.cast = trunc i32 %0 to i27
  %switch.downshift = lshr i27 -33980544, %switch.cast
  %switch.masked = trunc i27 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_color_to_32(i24 %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.3.0.extract.shift = and i24 %0, -65536
  %.sroa.4.0.insert.ext = zext i8 %1 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 24
  %.sroa.33.0.insert.shift = zext i24 %.sroa.3.0.extract.shift to i32
  %.sroa.33.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.33.0.insert.shift
  %i.a = and i24 %0, 65280
  %.sroa.22.0.insert.shift = zext nneg i24 %i.a to i32
  %.sroa.22.0.insert.insert = or disjoint i32 %.sroa.33.0.insert.insert, %.sroa.22.0.insert.shift
  %i.b = and i24 %0, 255
  %.sroa.01.0.insert.ext = zext nneg i24 %i.b to i32
  %.sroa.01.0.insert.insert = or disjoint i32 %.sroa.22.0.insert.insert, %.sroa.01.0.insert.ext
  ret i32 %.sroa.01.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i16 @lv_color_to_u16(i24 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i24 %0, 8
  %i.b = and i24 %i.a, 63488
  %i.c = lshr i24 %0, 5
  %i.d = and i24 %i.c, 2016
  %i.e = or disjoint i24 %i.b, %i.d
  %i.f = trunc nuw i24 %i.e to i16
  %1 = trunc i24 %0 to i16
  %2 = lshr i16 %1, 3
  %i.g = and i16 %2, 31
  %i.h = or disjoint i16 %i.g, %i.f
  ret i16 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -16777216, 0) i32 @lv_color_to_u32(i24 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i24 %0 to i32
  %i.b = or disjoint i32 %i.a, -16777216
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i24 @lv_color_lighten(i24 %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i24 @lv_color_mix(i24 -1, i24 %0, i8 noundef zeroext %1) #5
  ret i24 %i.a
}

declare i24 @lv_color_mix(i24, i24, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i24 @lv_color_white() local_unnamed_addr #1 {
bb.a:
  ret i24 -1
}

; Function Attrs: nounwind uwtable
define i24 @lv_color_darken(i24 %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i24 @lv_color_mix(i24 0, i24 %0, i8 noundef zeroext %1) #5
  ret i24 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i24 @lv_color_black() local_unnamed_addr #1 {
bb.a:
  ret i24 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i24 @lv_color_hsv_to_rgb(i16 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %1 to i16
  %i.b = mul nuw nsw i16 %i.a, 51
  %i.c = udiv i16 %i.b, 20
  %i.d = zext i8 %2 to i16
  %i.e = mul nuw nsw i16 %i.d, 51
  %i.f = udiv i16 %i.e, 20                        ; 3 uses
  %i.g = trunc i16 %i.f to i8                     ; 6 uses
  %i.h = and i16 %i.c, 255                        ; 3 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.mask51 = and i16 %i.f, 255
  %.sroa.3.0.insert.ext.i = zext nneg i16 %.mask51 to i24
  %.sroa.0.0.insert.insert.i = mul nuw i24 %.sroa.3.0.insert.ext.i, 65793
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = zext nneg i16 %i.h to i32                ; 2 uses
  %i.k = zext i16 %0 to i32
  %i.l = mul nuw nsw i32 %i.k, 17                 ; 2 uses
  %i.m = udiv i32 %i.l, 24
  %i.n = udiv i32 %i.l, 1032                      ; 2 uses
  %.neg = mul nuw nsw i32 %i.n, 213
  %i.o = add nuw nsw i32 %.neg, %i.m
  %i.p = mul nuw nsw i32 %i.o, 6
  %.mask = and i16 %i.f, 255                      ; 2 uses
  %i.q = zext nneg i16 %.mask to i32              ; 2 uses
  %i.r = xor i16 %i.h, 255
  %i.s = mul nuw i16 %i.r, %.mask
  %i.t = lshr i16 %i.s, 8
  %i.u = trunc nuw i16 %i.t to i8                 ; 6 uses
  %i.v = and i32 %i.p, 254                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.v, %i.j
  %i.x = lshr i32 %i.w, 8
  %i.y = xor i32 %i.x, 255
  %i.z = mul nuw nsw i32 %i.y, %i.q
  %i.aa = lshr i32 %i.z, 8
  %i.ab = trunc nuw i32 %i.aa to i8               ; 3 uses
  %i.ac = xor i32 %i.v, 255
  %i.ad = mul nuw nsw i32 %i.ac, %i.j
  %i.ae = lshr i32 %i.ad, 8
  %i.af = xor i32 %i.ae, 255
  %i.ag = mul nuw nsw i32 %i.af, %i.q
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc nuw i32 %i.ah to i8               ; 3 uses
  %trunc = trunc i32 %i.n to i8
  switch i8 %trunc, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.042 = phi i8 [ %i.g, %bb.h ], [ %i.ai, %bb.g ], [ %i.ab, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.f ], [ %i.g, %bb.c ]
  %.041 = phi i8 [ %i.u, %bb.h ], [ %i.u, %bb.g ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.ab, %bb.f ], [ %i.ai, %bb.c ]
  %.0 = phi i8 [ %i.ab, %bb.h ], [ %i.g, %bb.g ], [ %i.u, %bb.d ], [ %i.ai, %bb.e ], [ %i.g, %bb.f ], [ %i.u, %bb.c ]
  %.sroa.3.0.insert.ext.i44 = zext i8 %.042 to i24
  %.sroa.3.0.insert.shift.i45 = shl nuw i24 %.sroa.3.0.insert.ext.i44, 16
  %.sroa.2.0.insert.ext.i46 = zext i8 %.041 to i24
  %.sroa.2.0.insert.shift.i47 = shl nuw nsw i24 %.sroa.2.0.insert.ext.i46, 8
  %.sroa.2.0.insert.insert.i48 = or disjoint i24 %.sroa.2.0.insert.shift.i47, %.sroa.3.0.insert.shift.i45
  %.sroa.0.0.insert.ext.i49 = zext i8 %.0 to i24
  %.sroa.0.0.insert.insert.i50 = or disjoint i24 %.sroa.2.0.insert.insert.i48, %.sroa.0.0.insert.ext.i49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.sroa.0.0 = phi i24 [ %.sroa.0.0.insert.insert.i, %bb.b ], [ %.sroa.0.0.insert.insert.i50, %bb.i ]
  ret i24 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i24 @lv_color_make(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.3.0.insert.ext = zext i8 %0 to i24
  %.sroa.3.0.insert.shift = shl nuw i24 %.sroa.3.0.insert.ext, 16
  %.sroa.2.0.insert.ext = zext i8 %1 to i24
  %.sroa.2.0.insert.shift = shl nuw nsw i24 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %2 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 1694498816) i32 @lv_color_rgb_to_hsv(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = shl nuw nsw i32 %i.a, 10
  %i.c = udiv i32 %i.b, 255                       ; 5 uses
  %i.d = zext i8 %1 to i32
  %i.e = shl nuw nsw i32 %i.d, 10
  %i.f = udiv i32 %i.e, 255                       ; 6 uses
  %i.g = zext i8 %2 to i32
  %i.h = shl nuw nsw i32 %i.g, 10
  %i.i = udiv i32 %i.h, 255                       ; 6 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.c, i32 %i.f)
  %i.j = tail call i32 @llvm.umin.i32(i32 %., i32 %i.i)
  %.sink66 = tail call i32 @llvm.umax.i32(i32 %i.c, i32 %i.f) ; 2 uses
  %i.k = tail call i32 @llvm.umax.i32(i32 %.sink66, i32 %i.i) ; 5 uses
  %i.l = sub nsw i32 %i.k, %i.j                   ; 5 uses
  %i.m = icmp slt i32 %i.l, 3
  br i1 %i.m, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = mul nuw nsw i32 %i.l, 100
  %i.o = udiv i32 %i.n, %i.k                      ; 3 uses
  %i.p = and i32 %i.o, 255
  %i.q = icmp samesign ult i32 %i.p, 3
  br i1 %i.q, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %i.k, %i.c
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i32 %i.f, %i.i
  %i.t = shl nsw i32 %i.s, 10
  %i.u = sdiv i32 %i.t, %i.l
  %i.v = icmp samesign ult i32 %i.f, %i.i
  %i.w = select i1 %i.v, i32 6144, i32 0
  %i.x = add nsw i32 %i.u, %i.w
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i32 %i.k, %i.f
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sub nsw i32 %i.i, %i.c
  %i.aa = shl nsw i32 %i.z, 10
  %i.ab = sdiv i32 %i.aa, %i.l
  %i.ac = add nsw i32 %i.ab, 2048
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %.not = icmp samesign ult i32 %i.i, %.sink66
  br i1 %.not, label %bb.i, label %bb.h

end_hunk_0
begin_hunk_1_@lv_color_to_hsv:bb.a
  %i.ak = mul nsw i32 %.0.i, 60
  %i.al = ashr i32 %i.ak, 10                      ; 3 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = add nsw i32 %i.al, 360
  %spec.select.i = select i1 %i.am, i32 %i.an, i32 %i.al
  %i.ao = and i32 %spec.select.i, 65535
  br label %lv_color_rgb_to_hsv.exit

lv_color_rgb_to_hsv.exit:                         ; preds = %bb.a, %bb.b, %bb.i
  %.sroa.0.0.i = phi i32 [ %i.ao, %bb.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.4.0.i = phi i32 [ %i.r, %bb.i ], [ 0, %bb.a ], [ %i.r, %bb.b ]
  %i.ap = mul nuw nsw i32 %i.n, 1638400
  %.sroa.7.0.insert.ext.i = and i32 %i.ap, 2130706432
  %.sroa.4.0.insert.ext.i = shl i32 %.sroa.4.0.i, 16
  %.sroa.4.0.insert.shift.i = and i32 %.sroa.4.0.insert.ext.i, 16711680
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.0.0.i, %.sroa.7.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  ret i32 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext range(i8 0, 5) i8 @lv_color_format_get_size(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %switch.tableidx = add i32 %0, -6               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 48
  br i1 %i.a, label %switch.lookup, label %lv_color_format_get_bpp.exit

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.lv_color_format_get_size, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %lv_color_format_get_bpp.exit

lv_color_format_get_bpp.exit:                     ; preds = %bb.a, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 16777216) i32 @lv_color_to_int(i24 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i24 %0 to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @lv_color_eq(i24 %0, i24 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i24 %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i1 @lv_color32_eq(i32 %0, i32 %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %0, %1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i24 @lv_color_hex(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = trunc i32 %0 to i24
  ret i24 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_color32_make(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.4.0.insert.ext = zext i8 %3 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 24
  %.sroa.3.0.insert.ext = zext i8 %0 to i32
  %.sroa.3.0.insert.shift = shl nuw nsw i32 %.sroa.3.0.insert.ext, 16
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.3.0.insert.shift
  %.sroa.2.0.insert.ext = zext i8 %1 to i32
  %.sroa.2.0.insert.shift = shl nuw nsw i32 %.sroa.2.0.insert.ext, 8
  %.sroa.2.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, %.sroa.2.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %2 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i24 @lv_color_hex3(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %0, 4
  %i.b = and i32 %i.a, 240
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 15
  %i.e = or disjoint i32 %i.b, %i.d
  %i.f = and i32 %0, 240                          ; 2 uses
  %i.g = lshr exact i32 %i.f, 4
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = and i32 %0, 15
  %i.j = mul nuw nsw i32 %i.i, 17
  %i.k = trunc nuw nsw i32 %i.e to i24
  %.sroa.3.0.insert.shift.i = shl nuw i24 %i.k, 16
  %i.l = trunc nuw nsw i32 %i.h to i24
  %.sroa.2.0.insert.shift.i = shl nuw nsw i24 %i.l, 8
  %.sroa.2.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %i.m = trunc nuw nsw i32 %i.j to i24
  %.sroa.0.0.insert.insert.i = or disjoint i24 %.sroa.2.0.insert.insert.i, %i.m
  ret i24 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i16 @lv_color_16_16_mix(i16 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %2 to i32
  switch i8 %2, label %bb.c [
    i8 -1, label %bb.e
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i16 %0, %1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = zext i16 %1 to i32
  %i.d = zext i16 %0 to i32
  %i.e = add nuw nsw i32 %i.a, 4
  %i.f = lshr i32 %i.e, 3
  %i.g = mul nuw i32 %i.c, 65537
  %i.h = and i32 %i.g, 132184095                  ; 2 uses
  %i.i = mul nuw i32 %i.d, 65537
  %i.j = and i32 %i.i, 132184095
  %i.k = sub nsw i32 %i.j, %i.h
  %i.l = mul i32 %i.k, %i.f
  %i.m = lshr i32 %i.l, 5
  %i.n = add nuw nsw i32 %i.m, %i.h
  %i.o = and i32 %i.n, 132184095                  ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = or disjoint i32 %i.p, %i.o
  %i.r = trunc i32 %i.q to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d, %bb.b
  %.0 = phi i16 [ %i.r, %bb.d ], [ %1, %bb.b ], [ %0, %bb.a ], [ %0, %bb.c ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define void @lv_color_premultiply(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !9     ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 -1, label %bb.d
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @lv_memset(ptr noundef nonnull %0, i8 noundef zeroext 0, i64 noundef 4) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i16                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i16
  %i.g = mul nuw i16 %i.f, %i.c
  %i.h = lshr i16 %i.g, 8
  %i.i = trunc nuw i16 %i.h to i8
  store i8 %i.i, ptr %i.d, align 1, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i16
  %i.m = mul nuw i16 %i.l, %i.c
  %i.n = lshr i16 %i.m, 8
  %i.o = trunc nuw i16 %i.n to i8
  store i8 %i.o, ptr %i.j, align 1, !tbaa !11
  %i.p = load i8, ptr %0, align 1, !tbaa !12
  %i.q = zext i8 %i.p to i16
  %i.r = mul nuw i16 %i.q, %i.c
  %i.s = lshr i16 %i.r, 8
  %i.t = trunc nuw i16 %i.s to i8
  store i8 %i.t, ptr %0, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_color16_premultiply(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  switch i8 %1, label %bb.c [
    i8 -1, label %bb.d
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 2) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %2 = zext i8 %1 to i16                          ; 3 uses
  %i.a = load i16, ptr %0, align 2                ; 3 uses
  %i.b = lshr i16 %i.a, 11
  %.tr = shl nuw nsw i16 %2, 3
  %tr.sh.diff = mul nuw i16 %.tr, %i.b
  %i.c = and i16 %tr.sh.diff, -2048
  %i.d = and i16 %i.a, 31
  %i.e = lshr i16 %i.a, 5
  %i.f = and i16 %i.e, 63
  %3 = mul nuw nsw i16 %i.f, %2
  %4 = lshr i16 %3, 3
  %i.g = and i16 %4, 2016
  %5 = mul nuw nsw i16 %i.d, %2
  %6 = lshr i16 %5, 8
  %i.h = or disjoint i16 %6, %i.c
  %i.i = or disjoint i16 %i.h, %i.g
  store i16 %i.i, ptr %0, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @lv_color_luminance(i24 %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i24 %0, 8
  %.sroa.3.0.extract.shift = lshr i24 %0, 16
  %narrow = mul nuw nsw i24 %.sroa.3.0.extract.shift, 77
  %i.a = and i24 %.sroa.2.0.extract.shift, 255
  %narrow1 = mul nuw nsw i24 %i.a, 151
  %i.b = and i24 %0, 255
  %narrow3 = mul nuw nsw i24 %i.b, 28
  %narrow2 = add nuw nsw i24 %narrow3, %narrow
  %narrow4 = add nuw nsw i24 %narrow2, %narrow1
  %i.c = lshr i24 %narrow4, 8
  %i.d = trunc nuw i24 %i.c to i8
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @lv_color16_luminance(i16 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i16 %0, 11
  %narrow = mul nuw nsw i16 %i.a, 635
  %i.b = lshr i16 %0, 5
  %i.c = and i16 %i.b, 63
  %narrow3 = mul nuw i16 %i.c, 613
  %i.d = and i16 %0, 31
  %narrow4 = mul nuw nsw i16 %i.d, 231
  %i.e = add nuw nsw i16 %narrow4, %narrow
  %i.f = add nuw i16 %i.e, %narrow3
  %i.g = lshr i16 %i.f, 8
  %i.h = trunc nuw i16 %i.g to i8
  ret i8 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i8 @lv_color24_luminance(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = zext i8 %i.b to i16
  %i.d = mul nuw nsw i16 %i.c, 77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i16
  %i.h = mul nuw i16 %i.g, 151
  %i.i = add nuw i16 %i.h, %i.d
  %i.j = load i8, ptr %0, align 1, !tbaa !13
  %i.k = zext i8 %i.j to i16
  %i.l = mul nuw nsw i16 %i.k, 28
  %i.m = add nuw i16 %i.i, %i.l
  %i.n = lshr i16 %i.m, 8
  %i.o = trunc nuw i16 %i.n to i8
  ret i8 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @lv_color32_luminance(i32 %0) local_unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i32 %0, 8
  %.sroa.3.0.extract.shift = lshr i32 %0, 16
  %i.a = and i32 %.sroa.3.0.extract.shift, 255
  %i.b = mul nuw nsw i32 %i.a, 77
  %i.c = and i32 %.sroa.2.0.extract.shift, 255
  %i.d = mul nuw nsw i32 %i.c, 151
  %i.e = and i32 %0, 255
  %i.f = mul nuw nsw i32 %i.e, 28
  %i.g = add nuw nsw i32 %i.d, %i.f
  %i.h = add nuw nsw i32 %i.g, %i.b
  %i.i = lshr i32 %i.h, 8
  %i.j = trunc nuw i32 %i.i to i8
  ret i8 %i.j
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!9 = !{!8, !4, i64 3}
!10 = !{!8, !4, i64 2}
!11 = !{!8, !4, i64 1}
!12 = !{!8, !4, i64 0}
!13 = !{!4, !4, i64 0}
end_hunk_1
