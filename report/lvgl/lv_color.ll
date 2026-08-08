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
  %i.g = trunc i24 %0 to i16
  %i.h = lshr i16 %i.g, 3
  %i.i = and i16 %i.h, 31
  %i.j = or disjoint i16 %i.i, %i.f
  ret i16 %i.j
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
  %.042 = phi i8 [ %i.ab, %bb.h ], [ %i.g, %bb.g ], [ %i.u, %bb.d ], [ %i.ai, %bb.e ], [ %i.g, %bb.f ], [ %i.u, %bb.c ]
  %.041 = phi i8 [ %i.u, %bb.h ], [ %i.u, %bb.g ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.ab, %bb.f ], [ %i.ai, %bb.c ]
  %.0 = phi i8 [ %i.g, %bb.h ], [ %i.ai, %bb.g ], [ %i.ab, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.f ], [ %i.g, %bb.c ]
  %.sroa.3.0.insert.ext.i44 = zext i8 %.0 to i24
  %.sroa.3.0.insert.shift.i45 = shl nuw i24 %.sroa.3.0.insert.ext.i44, 16
  %.sroa.2.0.insert.ext.i46 = zext i8 %.041 to i24
  %.sroa.2.0.insert.shift.i47 = shl nuw nsw i24 %.sroa.2.0.insert.ext.i46, 8
  %.sroa.2.0.insert.insert.i48 = or disjoint i24 %.sroa.3.0.insert.shift.i45, %.sroa.2.0.insert.shift.i47
  %.sroa.0.0.insert.ext.i49 = zext i8 %.042 to i24
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

bb.h:                                             ; preds = %bb.g
  %i.ad = sub nsw i32 %i.c, %i.f
  %i.ae = shl nsw i32 %i.ad, 10
  %i.af = sdiv i32 %i.ae, %i.l
  %i.ag = add nsw i32 %i.af, 4096
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d
  %.0 = phi i32 [ %i.x, %bb.d ], [ %i.ac, %bb.f ], [ %i.ag, %bb.h ], [ 0, %bb.g ]
  %i.ah = mul nsw i32 %.0, 60
  %i.ai = ashr i32 %i.ah, 10                      ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = add nsw i32 %i.ai, 360
  %spec.select = select i1 %i.aj, i32 %i.ak, i32 %i.ai
  %i.al = and i32 %spec.select, 65535
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i
  %.sroa.0.0 = phi i32 [ %i.al, %bb.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.4.0 = phi i32 [ %i.o, %bb.i ], [ 0, %bb.a ], [ %i.o, %bb.b ]
  %i.am = mul nuw nsw i32 %i.k, 1638400
  %.sroa.7.0.insert.ext = and i32 %i.am, 2130706432
  %.sroa.4.0.insert.ext = shl i32 %.sroa.4.0, 16
  %.sroa.4.0.insert.shift = and i32 %.sroa.4.0.insert.ext, 16711680
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.0.0, %.sroa.7.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.4.0.insert.shift
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 1694498816) i32 @lv_color_to_hsv(i24 %0) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i24 %0, 6
  %i.b = and i24 %i.a, 261120
  %i.c = udiv i24 %i.b, 255
  %i.d = zext nneg i24 %i.c to i32                ; 5 uses
  %i.e = shl i24 %0, 2
  %i.f = and i24 %i.e, 261120
  %i.g = udiv i24 %i.f, 255                       ; 2 uses
  %i.h = zext nneg i24 %i.g to i32                ; 5 uses
  %i.i = shl i24 %0, 10
  %i.j = and i24 %i.i, 261120
  %i.k = udiv i24 %i.j, 255                       ; 2 uses
  %i.l = zext nneg i24 %i.k to i32                ; 5 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.h)
  %i.m = tail call i32 @llvm.umin.i32(i32 %..i, i32 %i.l)
  %.sink66.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.h) ; 2 uses
  %i.n = tail call i32 @llvm.umax.i32(i32 %.sink66.i, i32 %i.l) ; 5 uses
  %i.o = sub nsw i32 %i.n, %i.m                   ; 5 uses
  %i.p = icmp slt i32 %i.o, 3
  br i1 %i.p, label %lv_color_rgb_to_hsv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i32 %i.o, 100
  %i.r = udiv i32 %i.q, %i.n                      ; 3 uses
  %i.s = and i32 %i.r, 255
  %i.t = icmp samesign ult i32 %i.s, 3
  br i1 %i.t, label %lv_color_rgb_to_hsv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.n, %i.d
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sub nsw i32 %i.h, %i.l
  %i.w = shl nsw i32 %i.v, 10
  %i.x = sdiv i32 %i.w, %i.o
end_hunk_0
