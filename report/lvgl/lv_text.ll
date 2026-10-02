Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_text?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_text_attributes_t = type { i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@lv_text_encoded_size = local_unnamed_addr constant ptr @lv_text_utf8_size, align 8
@lv_text_unicode_to_encoded = local_unnamed_addr constant ptr @lv_text_unicode_to_utf8, align 8
@lv_text_encoded_conv_wc = local_unnamed_addr constant ptr @lv_text_utf8_conv_wc, align 8
@lv_text_encoded_next = local_unnamed_addr constant ptr @lv_text_utf8_next, align 8
@lv_text_encoded_prev = local_unnamed_addr constant ptr @lv_text_utf8_prev, align 8
@lv_text_encoded_get_byte_id = local_unnamed_addr constant ptr @lv_text_utf8_get_byte_id, align 8
@lv_text_encoded_get_char_id = local_unnamed_addr constant ptr @lv_text_utf8_get_char_id, align 8
@lv_text_get_encoded_length = local_unnamed_addr constant ptr @lv_text_utf8_get_length, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i8 0, 5) i8 @lv_text_utf8_size(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 224
  %i.e = icmp eq i32 %i.d, 192
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.b, 240
  %i.g = icmp eq i32 %i.f, 224
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.b, 248
  %i.i = icmp eq i32 %i.h, 240
  %. = select i1 %i.i, i8 4, i8 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 3, %bb.c ], [ 1, %bb.a ], [ 2, %bb.b ], [ %., %bb.d ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 32768, 128) i32 @lv_text_unicode_to_utf8(i32 noundef %0) #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i32 %0, 6
  %i.d = or disjoint i32 %i.c, 192
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.e = icmp ult i32 %0, 65536
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = lshr i32 %0, 12
  %i.g = or disjoint i32 %i.f, 224
  %i.h = lshr i32 %0, 6
  %i.i = and i32 %0, 63
  %i.j = or disjoint i32 %i.i, 128
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.k = icmp ult i32 %0, 1114112
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = lshr i32 %0, 18
  %i.m = or disjoint i32 %i.l, 240
  %i.n = lshr i32 %0, 12
  %i.o = lshr i32 %0, 6
  %i.p = and i32 %i.o, 63
  %i.q = or disjoint i32 %i.p, 128
  %i.r = shl i32 %0, 24
  %i.s = and i32 %i.r, 1056964608
  %i.t = or disjoint i32 %i.s, -2147450880
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c
  %.sroa.12.0 = phi i32 [ 32768, %bb.c ], [ 32768, %bb.e ], [ %i.t, %bb.g ]
  %.sroa.9.0 = phi i32 [ 0, %bb.c ], [ %i.j, %bb.e ], [ %i.q, %bb.g ]
  %.sroa.6.0.in.in.in = phi i32 [ %0, %bb.c ], [ %i.h, %bb.e ], [ %i.n, %bb.g ]
  %.sroa.0.0 = phi i32 [ %i.d, %bb.c ], [ %i.g, %bb.e ], [ %i.m, %bb.g ]
  %.sroa.9.0.insert.shift = shl nuw nsw i32 %.sroa.9.0, 16
  %.sroa.6.0.in = shl nuw nsw i32 %.sroa.6.0.in.in.in, 8
  %.sroa.6.0 = and i32 %.sroa.6.0.in, 16128
  %.sroa.9.0.insert.insert = or i32 %.sroa.12.0, %.sroa.9.0.insert.shift
  %.sroa.6.0.insert.insert = or i32 %.sroa.9.0.insert.insert, %.sroa.0.0
  %.sroa.0.0.insert.insert = or i32 %.sroa.6.0.insert.insert, %.sroa.6.0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ %.sroa.0.0.insert.insert, %bb.h ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @lv_text_utf8_conv_wc(i32 noundef %0) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %0, 128
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = call ptr @lv_memcpy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 4) #11 ; 0 uses
  %1 = load i8, ptr %i.b, align 1, !tbaa !9
  %2 = zext i8 %1 to i32
  %3 = shl nuw i32 %2, 24
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = or disjoint i32 %8, %12                   ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !9       ; 2 uses
  %16 = zext i8 %15 to i32
  %17 = or disjoint i32 %13, %16
  %i.e = icmp eq i8 %15, 0
  %i.f = lshr exact i32 %13, 8
  %spec.select = select i1 %i.e, i32 %i.f, i32 %17 ; 3 uses
  %i.g = and i32 %spec.select, 255
  %i.h = icmp eq i32 %i.g, 0
  %i.i = lshr exact i32 %spec.select, 8
  %spec.select.1 = select i1 %i.h, i32 %i.i, i32 %spec.select ; 3 uses
  %i.j = and i32 %spec.select.1, 255
  %i.k = icmp eq i32 %i.j, 0
  %i.l = lshr exact i32 %spec.select.1, 8
  %spec.select.2 = select i1 %i.k, i32 %i.l, i32 %spec.select.1 ; 3 uses
  %i.m = and i32 %spec.select.2, 255
  %i.n = icmp eq i32 %i.m, 0
  %i.o = lshr exact i32 %spec.select.2, 8
  %spec.select.3 = select i1 %i.n, i32 %i.o, i32 %spec.select.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i32 [ %spec.select.3, %bb.b ], [ %0, %bb.a ]
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2097152) i32 @lv_text_utf8_next(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #3 {
bb.a:
  %i.a = icmp eq ptr %1, null                     ; 9 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.cont98, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %.cont101, label %.else102

.else102:                                         ; preds = %bb.b
  %.else.val = load i32, ptr %1, align 4, !tbaa !10
  br label %.cont101

.cont101:                                         ; preds = %bb.b, %.else102
  %i.c = phi i32 [ 0, %bb.b ], [ %.else.val, %.else102 ] ; 11 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9     ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 8 uses
  %i.h = icmp eq i8 %i.f, 0
  br i1 %i.h, label %.cont98, label %bb.c

bb.c:                                             ; preds = %.cont101
  %i.i = icmp sgt i8 %i.f, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = and i32 %i.g, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = add i32 %i.c, 1                          ; 2 uses
  br i1 %i.a, label %.cont95, label %.else97

.else97:                                          ; preds = %bb.f
  store i32 %i.l, ptr %1, align 4, !tbaa !10
  br label %.cont95

.cont95:                                          ; preds = %bb.f, %.else97
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 192
  %.not70 = icmp eq i32 %i.q, 128
  br i1 %.not70, label %bb.g, label %.cont98

bb.g:                                             ; preds = %.cont95
  %i.r = shl nsw i32 %i.g, 6
  %i.s = and i32 %i.r, 1984
  %i.t = and i32 %i.p, 63
  %i.u = or disjoint i32 %i.t, %i.s               ; 2 uses
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.h:                                             ; preds = %bb.e
  %i.v = and i32 %i.g, 240
  %i.w = icmp eq i32 %i.v, 224
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = add i32 %i.c, 1                          ; 3 uses
  br i1 %i.a, label %.cont89, label %.cont89.thread

.cont89:                                          ; preds = %bb.i
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = sext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %.not68 = icmp eq i32 %i.ac, 128
  br i1 %.not68, label %.then87, label %.cont98

.cont89.thread:                                   ; preds = %bb.i
  store i32 %i.x, ptr %1, align 4, !tbaa !10
  %i.ad = zext i32 %i.x to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = sext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not68103 = icmp eq i32 %i.ah, 128
  br i1 %.not68103, label %.else88, label %.cont98

.then87:                                          ; preds = %.cont89
  %i.ai = add i32 %i.c, 2
  br label %.cont86

.else88:                                          ; preds = %.cont89.thread
  %i.aj = add i32 %i.c, 2                         ; 2 uses
  store i32 %i.aj, ptr %1, align 4, !tbaa !10
  br label %.cont86

.cont86:                                          ; preds = %.else88, %.then87
  %i.ak = phi i32 [ %i.aj, %.else88 ], [ %i.ai, %.then87 ]
  %i.al = phi i32 [ %i.ag, %.else88 ], [ %i.ab, %.then87 ]
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not69 = icmp eq i32 %i.aq, 128
  br i1 %.not69, label %bb.j, label %.cont98

bb.j:                                             ; preds = %.cont86
  %i.ar = shl nsw i32 %i.g, 12
  %i.as = and i32 %i.ar, 61440
  %i.at = shl nsw i32 %i.al, 6
  %i.au = and i32 %i.at, 4032
  %i.av = or disjoint i32 %i.au, %i.as
  %i.aw = and i32 %i.ap, 63
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  br i1 %i.a, label %.cont98, label %.cont98.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ay = and i32 %i.g, 248
  %i.az = icmp eq i32 %i.ay, 240
  br i1 %i.az, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ba = add i32 %i.c, 1                         ; 3 uses
  br i1 %i.a, label %.cont80, label %.cont80.thread

.cont80:                                          ; preds = %bb.l
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = sext i8 %i.bd to i32                    ; 2 uses
  %i.bf = and i32 %i.be, 192
  %.not = icmp eq i32 %i.bf, 128
  br i1 %.not, label %.cont77, label %.cont98

.cont80.thread:                                   ; preds = %bb.l
  store i32 %i.ba, ptr %1, align 4, !tbaa !10
  %i.bg = zext i32 %i.ba to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !9
  %i.bj = sext i8 %i.bi to i32                    ; 2 uses
  %i.bk = and i32 %i.bj, 192
  %.not104 = icmp eq i32 %i.bk, 128
  br i1 %.not104, label %.cont77.thread, label %.cont98

.cont77:                                          ; preds = %.cont80
  %i.bl = add i32 %i.c, 2
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9
  %i.bp = sext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 192
  %.not66 = icmp eq i32 %i.bq, 128
  br i1 %.not66, label %bb.m, label %.cont98

.cont77.thread:                                   ; preds = %.cont80.thread
  %i.br = add i32 %i.c, 2                         ; 2 uses
  store i32 %i.br, ptr %1, align 4, !tbaa !10
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = sext i8 %i.bu to i32                    ; 2 uses
  %i.bw = and i32 %i.bv, 192
  %.not66106 = icmp eq i32 %i.bw, 128
  br i1 %.not66106, label %.else76, label %.cont98

bb.m:                                             ; preds = %.cont77
  %i.bx = add i32 %i.c, 3
  br label %.cont74

.else76:                                          ; preds = %.cont77.thread
  %i.by = add i32 %i.c, 3                         ; 2 uses
  store i32 %i.by, ptr %1, align 4, !tbaa !10
  br label %.cont74

.cont74:                                          ; preds = %bb.m, %.else76
  %i.bz = phi i32 [ %i.by, %.else76 ], [ %i.bx, %bb.m ]
  %i.ca = phi i32 [ %i.bj, %.else76 ], [ %i.be, %bb.m ]
  %i.cb = phi i32 [ %i.bv, %.else76 ], [ %i.bp, %bb.m ]
  %i.cc = zext i32 %i.bz to i64
end_hunk_0
begin_hunk_1_@lv_text_cut:bb.a
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = icmp sgt i8 %i.u, -1
  br i1 %i.w, label %lv_text_utf8_size.exit.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = and i32 %i.v, 224
  %i.y = icmp eq i32 %i.x, 192
  br i1 %i.y, label %lv_text_utf8_size.exit.i23, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i32 %i.v, 240
  %i.aa = icmp eq i32 %i.z, 224
  br i1 %i.aa, label %lv_text_utf8_size.exit.i23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = and i32 %i.v, 248
  %i.ac = icmp eq i32 %i.ab, 240
  %i.ad = select i1 %i.ac, i32 4, i32 1
  br label %lv_text_utf8_size.exit.i23

lv_text_utf8_size.exit.i23:                       ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i24 = phi i32 [ 3, %bb.i ], [ 1, %bb.g ], [ 2, %bb.h ], [ %i.ad, %bb.j ]
  %i.ae = add i32 %.0.i.i24, %.01012.i21          ; 2 uses
  %i.af = add nuw i32 %.013.i20, 1                ; 2 uses
  %exitcond.not.i25 = icmp eq i32 %i.af, %2
  br i1 %exitcond.not.i25, label %lv_text_utf8_get_byte_id.exit27, label %.lr.ph.i19, !llvm.loop !0

lv_text_utf8_get_byte_id.exit27:                  ; preds = %.lr.ph.i19, %lv_text_utf8_size.exit.i23, %lv_text_utf8_get_byte_id.exit
  %.010.lcssa.i26 = phi i32 [ 0, %lv_text_utf8_get_byte_id.exit ], [ %.01012.i21, %.lr.ph.i19 ], [ %i.ae, %lv_text_utf8_size.exit.i23 ] ; 6 uses
  %i.ag = zext i32 %.010.lcssa.i26 to i64         ; 3 uses
  %i.ah = sub i64 %i.b, %i.ag                     ; 2 uses
  %.not28 = icmp ult i64 %i.ah, %i.q
  br i1 %.not28, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %lv_text_utf8_get_byte_id.exit27
  %i.ai = add i64 %i.b, 1
  %i.aj = sub i64 %i.ai, %i.ag
  %i.ak = add i32 %.010.lcssa.i, 1
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %umax38 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.al)
  %i.am = add i64 %umax38, 1
  %i.an = sub i64 %i.am, %i.al                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ao = add i64 %i.b, 1
  %i.ap = sub i64 %i.ao, %i.ag
  %i.aq = add i32 %.010.lcssa.i, 1
  %i.ar = zext i32 %i.aq to i64
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.ar) ; 2 uses
  %i.at = trunc i64 %i.as to i32                  ; 3 uses
  %i.au = sub i32 -2, %.010.lcssa.i
  %i.av = icmp ult i32 %i.au, %i.at
  %i.aw = xor i32 %.010.lcssa.i, -1
  %i.ax = icmp ult i32 %i.aw, %i.at
  %i.ay = icmp ugt i64 %i.as, 4294967295
  %i.az = or i1 %i.ax, %i.ay
  %i.ba = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %i.bb = xor i32 %i.ba, -1
  %i.bc = icmp ult i32 %i.bb, %i.at
  %i.bd = or i1 %i.av, %i.az
  %i.be = or i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bf = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %i.bg = zext i32 %i.bf to i64
  %i.bh = sub nsw i64 %i.bg, %i.q
  %diff.check = icmp ugt i64 %i.bh, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check39 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i64 %i.an, 24
  %n.vec = and i64 %i.an, -32                     ; 5 uses
  %i.bj = add i64 %n.vec, %i.q
  %i.bk = trunc i64 %n.vec to i32
  %i.bl = add i32 %.010.lcssa.i, %i.bk
  %invariant.op = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = trunc i64 %index to i32
  %.reass = add i32 %i.bm, %invariant.op
  %i.bn = zext i32 %.reass to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !9
  %wide.load40 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !9
  store <16 x i8> %wide.load40, ptr %i.bq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %i.an, -8                    ; 4 uses
  %i.bs = add i64 %n.vec42, %i.q
  %i.bt = trunc i64 %n.vec42 to i32
  %i.bu = add i32 %.010.lcssa.i, %i.bt
  %invariant.op49 = add i32 %.010.lcssa.i, %.010.lcssa.i26
  %invariant.gep51 = getelementptr i8, ptr %0, i64 %i.q
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.bv = trunc i64 %index43 to i32
  %.reass50 = add i32 %i.bv, %invariant.op49
  %i.bw = zext i32 %.reass50 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %wide.load44 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !9
  %gep52 = getelementptr i8, ptr %invariant.gep51, i64 %index43
  store <8 x i8> %wide.load44, ptr %gep52, align 1, !tbaa !9
  %index.next45 = add nuw i64 %index43, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.an, %n.vec42
  br i1 %cmp.n46, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.q, %iter.check ], [ %i.q, %vector.scevcheck ], [ %i.q, %vector.memcheck ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.029.ph = phi i32 [ %.010.lcssa.i, %iter.check ], [ %.010.lcssa.i, %vector.scevcheck ], [ %.010.lcssa.i, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bz = phi i64 [ %i.cg, %.lr.ph ], [ %.ph, %.lr.ph.preheader ]
  %.029 = phi i32 [ %i.cf, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ca = add i32 %.029, %.010.lcssa.i26
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !9
  %i.cf = add i32 %.029, 1                        ; 2 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %.not = icmp ult i64 %i.ah, %i.cg
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %lv_text_utf8_get_byte_id.exit27, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define nonnull ptr @lv_text_set_text_vfmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr %1)
  %i.a = call i32 @lv_vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.b = add i32 %i.a, 1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = call ptr @lv_malloc(i64 noundef %i.c) #11 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @lv_vsnprintf(ptr noundef nonnull %i.d, i64 noundef %i.c, ptr noundef %0, ptr noundef %1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #9

declare i32 @lv_vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #7

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !11}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!13 = !{!12, !6, i64 4}
!14 = !{!12, !6, i64 8}
!15 = !{!12, !6, i64 12}
!16 = !{!12, !6, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 8, i32 24}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!"", !6, i64 0, !6, i64 4}
!24 = !{!23, !6, i64 0}
!25 = !{!23, !6, i64 4}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11, !17, !18}
!31 = distinct !{!31, !11, !17, !18}
!32 = distinct !{!32, !11, !17}
!33 = distinct !{!33, !11, !17, !18}
!34 = distinct !{!34, !11, !17, !18}
!35 = distinct !{!35, !11, !17}
end_hunk_1
