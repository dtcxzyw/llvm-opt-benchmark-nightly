Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_math?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_global_t = type { ptr, i8, i8, %struct.lv_ll_t, ptr, ptr, %struct.lv_ll_t, i8, i32, i32, ptr, %struct.lv_ll_t, ptr, %struct.lv_ll_t, ptr, ptr, i32, ptr, i8, i32, i32, ptr, i32, %struct.lv_timer_state_t, %struct.lv_anim_state_t, %struct.lv_tick_state_t, %struct._lv_draw_buf_handlers_t, %struct._lv_draw_buf_handlers_t, %struct._lv_draw_buf_handlers_t, %struct.lv_ll_t, ptr, ptr, %struct.lv_draw_global_info_t, %struct.lv_ll_t, [4 x %struct.lv_draw_sw_mask_radius_circle_dsc_t], ptr, ptr, ptr, %struct.lv_tlsf_state_t, %struct.lv_ll_t, ptr, ptr, i32, %union.lv_linux_proc_stat_t }
%struct.lv_timer_state_t = type { %struct.lv_ll_t, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, ptr, ptr }
%struct.lv_anim_state_t = type { i8, i8, i8, ptr, %struct.lv_ll_t }
%struct.lv_tick_state_t = type { i32, i8, ptr, ptr }
%struct._lv_draw_buf_handlers_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lv_draw_global_info_t = type { ptr, i32, i32, i32, i32, i8 }
%struct.lv_draw_sw_mask_radius_circle_dsc_t = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_tlsf_state_t = type { ptr, i64, i64, %struct.lv_ll_t }
%struct.lv_ll_t = type { i32, ptr, ptr }
%union.lv_linux_proc_stat_t = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32 }

@sin0_90_table = internal unnamed_addr constant [91 x i16] [i16 0, i16 572, i16 1144, i16 1715, i16 2286, i16 2856, i16 3425, i16 3993, i16 4560, i16 5126, i16 5690, i16 6252, i16 6813, i16 7371, i16 7927, i16 8481, i16 9032, i16 9580, i16 10126, i16 10668, i16 11207, i16 11743, i16 12275, i16 12803, i16 13328, i16 13848, i16 14365, i16 14876, i16 15384, i16 15886, i16 16384, i16 16877, i16 17364, i16 17847, i16 18324, i16 18795, i16 19261, i16 19720, i16 20174, i16 20622, i16 21063, i16 21498, i16 21926, i16 22348, i16 22763, i16 23170, i16 23571, i16 23965, i16 24351, i16 24730, i16 25102, i16 25466, i16 25822, i16 26170, i16 26510, i16 26842, i16 27166, i16 27482, i16 27789, i16 28088, i16 28378, i16 28660, i16 28932, i16 29197, i16 29452, i16 29698, i16 29935, i16 30163, i16 30382, i16 30592, i16 30792, i16 30983, i16 31164, i16 31336, i16 31499, i16 31651, i16 31795, i16 31928, i16 32052, i16 32166, i16 32270, i16 32365, i16 32449, i16 32524, i16 32588, i16 32643, i16 32688, i16 32723, i16 32748, i16 32763, i16 -32768], align 16
@lv_sqrt32.sqq_table = internal unnamed_addr constant [256 x i8] c"\00\10\16\1B #'*-02579;=@ACEGIKLNPQSTVWYZ[]^`abcefghjklmnpqrstuvwxyz{|}~\80\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\90\91\92\93\94\95\96\96\97\98\99\9A\9B\9B\9C\9D\9E\9F\A0\A0\A1\A2\A3\A3\A4\A5\A6\A7\A7\A8\A9\AA\AA\AB\AC\AD\AD\AE\AF\B0\B0\B1\B2\B2\B3\B4\B5\B5\B6\B7\B7\B8\B9\B9\BA\BB\BB\BC\BD\BD\BE\BF\C0\C0\C1\C1\C2\C3\C3\C4\C5\C5\C6\C7\C7\C8\C9\C9\CA\CB\CB\CC\CC\CD\CE\CE\CF\D0\D0\D1\D1\D2\D3\D3\D4\D4\D5\D6\D6\D7\D7\D8\D9\D9\DA\DA\DB\DB\DC\DD\DD\DE\DE\DF\E0\E0\E1\E1\E2\E2\E3\E3\E4\E5\E5\E6\E6\E7\E7\E8\E8\E9\EA\EA\EB\EB\EC\EC\ED\ED\EE\EE\EF\F0\F0\F1\F1\F2\F2\F3\F3\F4\F4\F5\F5\F6\F6\F7\F7\F8\F8\F9\F9\FA\FA\FB\FB\FC\FC\FD\FD\FE\FE\FF", align 16
@lv_global = external local_unnamed_addr global %struct._lv_global_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -65535, 65536) i32 @lv_trigo_sin(i16 noundef signext %0) local_unnamed_addr #0 {
.preheader.preheader:
  %smax = tail call i16 @llvm.smax.i16(i16 %0, i16 0)
  %.lobit = lshr i16 %0, 15                       ; 2 uses
  %i.a = add i16 %0, %.lobit
  %i.b = sub i16 %smax, %i.a
  %1 = udiv i16 %i.b, 360
  %2 = add nuw nsw i16 %.lobit, %1
  %3 = mul i16 %2, 360
  %i.c = add i16 %0, %3                           ; 2 uses
  %i.d = tail call i16 @llvm.umax.i16(i16 %i.c, i16 359) ; 2 uses
  %i.e = urem i16 %i.d, 360
  %.neg = sub i16 %i.e, %i.d
  %i.f = add i16 %.neg, %i.c                      ; 7 uses
  %i.g = icmp samesign ult i16 %i.f, 90
  br i1 %i.g, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader.preheader
  %i.h = zext nneg i16 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !8
  %i.k = zext i16 %i.j to i32
  br label %bb.g

bb.b:                                             ; preds = %.preheader.preheader
  %i.l = icmp samesign ult i16 %i.f, 180
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i16 180, %i.f
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !8
  %i.q = zext i16 %i.p to i32
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i16 %i.f, 270
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i16 %i.f to i64
  %i.t = getelementptr [2 x i8], ptr @sin0_90_table, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -360
  %i.v = load i16, ptr %i.u, align 2, !tbaa !8
  %i.w = zext i16 %i.v to i32
  %i.x = sub nsw i32 0, %i.w
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i16 360, %i.f
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !8
  %i.ac = zext i16 %i.ab to i32
  %i.ad = sub nsw i32 0, %i.ac
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ %i.k, %bb.a ], [ %i.q, %bb.c ], [ %i.x, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  switch i32 %.0, label %bb.i [
    i32 32767, label %bb.j
    i32 -32767, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.026 = phi i32 [ %.0, %bb.i ], [ -32768, %bb.h ], [ 32768, %bb.g ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 -2097152, 2097152) i32 @lv_cubic_bezier(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, -1025
  %or.cond = icmp eq i32 %i.a, 0
  br i1 %or.cond, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %1, 3                        ; 17 uses
  %i.c = shl i32 %1, 1
  %i.d = sub i32 %3, %i.c                         ; 2 uses
  %i.e = mul i32 %i.d, 3                          ; 10 uses
  %i.f = add i32 %i.b, %i.e
  %i.g = sub i32 1024, %i.f                       ; 10 uses
  %i.h = mul nsw i32 %2, 3                        ; 2 uses
  %i.i = shl i32 %2, 1
  %i.j = sub i32 %4, %i.i
  %i.k = mul i32 %i.j, 3                          ; 2 uses
  %i.l = add i32 %i.h, %i.k
  %i.m = sub i32 1024, %i.l
  %i.n = mul nsw i32 %i.g, 3                      ; 7 uses
  %i.o = mul i32 %i.d, 6                          ; 7 uses
  %i.p = mul nsw i32 %0, %i.g
  %i.q = ashr i32 %i.p, 10
  %i.r = add nsw i32 %i.q, %i.e
  %i.s = mul nsw i32 %i.r, %0
  %i.t = ashr i32 %i.s, 10
  %i.u = add nsw i32 %i.t, %i.b
  %i.v = mul nsw i32 %i.u, %0
  %i.w = ashr i32 %i.v, 10
  %i.x = sub nsw i32 %i.w, %0                     ; 2 uses
  %i.y = add i32 %i.x, 1
  %i.z = icmp ult i32 %i.y, 3
  br i1 %i.z, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul nsw i32 %i.n, %0
  %i.ab = ashr i32 %i.aa, 10
  %i.ac = add nsw i32 %i.ab, %i.o
  %i.ad = mul nsw i32 %i.ac, %0
  %i.ae = ashr i32 %i.ad, 10
  %i.af = add nsw i32 %i.ae, %i.b                 ; 2 uses
  %i.ag = add i32 %i.af, 1
  %i.ah = icmp ult i32 %i.ag, 3
  br i1 %i.ah, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = sext i32 %i.x to i64
  %i.aj = shl nsw i64 %i.ai, 10
  %i.ak = sext i32 %i.af to i64
  %i.al = sdiv i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = sub nsw i32 %0, %i.am                   ; 7 uses
  %i.ap = mul nsw i32 %i.ao, %i.g
  %i.aq = ashr i32 %i.ap, 10
  %i.ar = add nsw i32 %i.aq, %i.e
  %i.as = mul nsw i32 %i.ar, %i.ao
  %i.at = ashr i32 %i.as, 10
  %i.au = add nsw i32 %i.at, %i.b
  %i.av = mul nsw i32 %i.au, %i.ao
  %i.aw = ashr i32 %i.av, 10
  %i.ax = sub nsw i32 %i.aw, %0                   ; 2 uses
  %i.ay = add i32 %i.ax, 1
  %i.az = icmp ult i32 %i.ay, 3
  br i1 %i.az, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = mul nsw i32 %i.n, %i.ao
  %i.bb = ashr i32 %i.ba, 10
  %i.bc = add nsw i32 %i.bb, %i.o
  %i.bd = mul nsw i32 %i.bc, %i.ao
  %i.be = ashr i32 %i.bd, 10
  %i.bf = add nsw i32 %i.be, %i.b                 ; 2 uses
  %i.bg = add i32 %i.bf, 1
  %i.bh = icmp ult i32 %i.bg, 3
  br i1 %i.bh, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = sext i32 %i.ax to i64
  %i.bj = shl nsw i64 %i.bi, 10
  %i.bk = sext i32 %i.bf to i64
  %i.bl = sdiv i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = sub nsw i32 %i.ao, %i.bm                ; 7 uses
  %i.bp = mul nsw i32 %i.bo, %i.g
  %i.bq = ashr i32 %i.bp, 10
  %i.br = add nsw i32 %i.bq, %i.e
  %i.bs = mul nsw i32 %i.br, %i.bo
  %i.bt = ashr i32 %i.bs, 10
  %i.bu = add nsw i32 %i.bt, %i.b
  %i.bv = mul nsw i32 %i.bu, %i.bo
  %i.bw = ashr i32 %i.bv, 10
  %i.bx = sub nsw i32 %i.bw, %0                   ; 2 uses
  %i.by = add i32 %i.bx, 1
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = mul nsw i32 %i.n, %i.bo
  %i.cb = ashr i32 %i.ca, 10
  %i.cc = add nsw i32 %i.cb, %i.o
  %i.cd = mul nsw i32 %i.cc, %i.bo
  %i.ce = ashr i32 %i.cd, 10
  %i.cf = add nsw i32 %i.ce, %i.b                 ; 2 uses
  %i.cg = add i32 %i.cf, 1
  %i.ch = icmp ult i32 %i.cg, 3
  br i1 %i.ch, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = sext i32 %i.bx to i64
  %i.cj = shl nsw i64 %i.ci, 10
  %i.ck = sext i32 %i.cf to i64
  %i.cl = sdiv i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = sub nsw i32 %i.bo, %i.cm                ; 7 uses
  %i.cp = mul nsw i32 %i.co, %i.g
  %i.cq = ashr i32 %i.cp, 10
  %i.cr = add nsw i32 %i.cq, %i.e
  %i.cs = mul nsw i32 %i.cr, %i.co
  %i.ct = ashr i32 %i.cs, 10
  %i.cu = add nsw i32 %i.ct, %i.b
  %i.cv = mul nsw i32 %i.cu, %i.co
end_hunk_0
begin_hunk_1_@lv_atan2:bb.a
  %spec.select = trunc nuw nsw i32 %.lobit to i8  ; 2 uses
  %spec.select61 = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 3 uses
  %i.a = icmp slt i32 %1, 0
  %i.b = or disjoint i8 %spec.select, 2
  %.150 = select i1 %i.a, i8 %i.b, i8 %spec.select ; 2 uses
  %.044 = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.c = icmp samesign ugt i32 %spec.select61, %.044
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = mul i32 %.044, 45
  %i.e = udiv i32 %i.d, %spec.select61
  %i.f = or disjoint i8 %.150, 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = mul i32 %spec.select61, 45
  %i.h = udiv i32 %i.g, %.044
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.251 = phi i8 [ %i.f, %bb.b ], [ %.150, %bb.c ]
  %.045 = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = and i32 %.045, 255                       ; 9 uses
  %i.j = icmp samesign ugt i32 %i.i, 22
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %i.i, 45
  %spec.select62 = zext i1 %i.k to i32
  %i.l = icmp samesign ult i32 %i.i, 42
  %.147 = select i1 %i.l, i32 2, i32 %spec.select62
  %i.m = icmp samesign ult i32 %i.i, 38
  %i.n = icmp samesign ult i32 %i.i, 33
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i32 %i.i, 1
  %spec.select63 = zext i1 %i.o to i32
  %i.p = icmp samesign ugt i32 %i.i, 5
  %.4 = select i1 %i.p, i32 2, i32 %spec.select63
  %i.q = icmp samesign ugt i32 %i.i, 9
  %i.r = icmp samesign ugt i32 %i.i, 14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink69 = phi i1 [ %i.r, %bb.f ], [ %i.n, %bb.e ]
  %.sink68.in = phi i1 [ %i.q, %bb.f ], [ %i.m, %bb.e ]
  %.4.sink = phi i32 [ %.4, %bb.f ], [ %.147, %bb.e ]
  %.sink68 = zext i1 %.sink68.in to i32
  %i.s = zext i1 %.sink69 to i32
  %.5 = add nuw nsw i32 %i.s, %.sink68
  %spec.select67 = add nuw nsw i32 %.5, %.4.sink
  %i.t = add i32 %spec.select67, %.045            ; 2 uses
  %i.u = zext nneg i8 %.251 to i32                ; 3 uses
  %i.v = and i32 %i.u, 16
  %.not = icmp eq i32 %i.v, 0
  %i.w = sub i32 90, %i.t
  %spec.select64 = select i1 %.not, i32 %i.t, i32 %i.w ; 4 uses
  %i.x = and i32 %i.u, 2
  %.not58 = icmp eq i32 %i.x, 0
  %i.y = and i32 %i.u, 1
  %.not59 = icmp eq i32 %i.y, 0                   ; 2 uses
  br i1 %.not58, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not59, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add i32 %spec.select64, 180
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aa = sub i32 180, %spec.select64
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ab = sub i32 360, %spec.select64
  %spec.select65 = select i1 %.not59, i32 %spec.select64, i32 %i.ab
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.2 = phi i32 [ %i.z, %bb.i ], [ %i.aa, %bb.j ], [ %spec.select65, %bb.k ]
  %i.ac = trunc i32 %.2 to i16
  ret i16 %i.ac
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i64 @lv_pow(i64 noundef %0, i8 noundef signext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i8 %1, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not21 = icmp eq i8 %1, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %.loopexit [
    i64 -1, label %bb.d
    i64 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.b = and i8 %1, 1
  %.not20 = icmp eq i8 %i.b, 0
  %i.c = select i1 %.not20, i64 1, i64 -1
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.024 = phi i64 [ %spec.select, %.lr.ph ], [ 1, %.preheader ]
  %.01423 = phi i8 [ %i.f, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %.01522 = phi i64 [ %i.g, %.lr.ph ], [ %0, %.preheader ] ; 3 uses
  %i.d = and i8 %.01423, 1
  %.not19 = icmp eq i8 %i.d, 0
  %i.e = select i1 %.not19, i64 1, i64 %.01522
  %spec.select = mul nsw i64 %i.e, %.024          ; 2 uses
  %i.f = lshr i8 %.01423, 1                       ; 2 uses
  %i.g = mul nsw i64 %.01522, %.01522
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b, %bb.d, %bb.c
  %.016 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.c, %bb.d ], [ 1, %.preheader ], [ %spec.select, %.lr.ph ]
  ret i64 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @lv_map(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i32 %2, %1                     ; 2 uses
  %.not35 = icmp slt i32 %0, %2
  %or.cond = or i1 %.not, %.not35
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not36 = icmp sgt i32 %0, %1
  %or.cond40 = or i1 %.not36, %.not
  br i1 %or.cond40, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not37 = icmp sgt i32 %2, %1                   ; 2 uses
  %.not38 = icmp sgt i32 %0, %2
  %or.cond41 = or i1 %.not37, %.not38
  br i1 %or.cond41, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not39 = icmp slt i32 %0, %1
  %or.cond42 = or i1 %.not39, %.not37
  br i1 %or.cond42, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.b = sub nsw i32 %2, %1
  %i.c = sub nsw i32 %4, %3
  %i.d = sub nsw i32 %0, %1
  %i.e = mul nsw i32 %i.c, %i.d
  %i.f = sdiv i32 %i.e, %i.b
  %i.g = add nsw i32 %i.f, %3
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ %i.g, %bb.f ], [ %3, %bb.a ], [ %4, %bb.b ], [ %3, %bb.c ], [ %4, %bb.d ], [ %3, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_rand_set_seed(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 200), align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define i32 @lv_rand(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 200), align 8, !tbaa !18 ; 2 uses
  %i.b = shl i32 %i.a, 13
  %i.c = xor i32 %i.b, %i.a                       ; 2 uses
  %i.d = lshr i32 %i.c, 17
  %i.e = xor i32 %i.d, %i.c                       ; 2 uses
  %i.f = shl i32 %i.e, 5
  %i.g = xor i32 %i.f, %i.e                       ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 200), align 8, !tbaa !18
  %reass.sub = sub i32 %1, %0
  %i.h = add i32 %reass.sub, 1
  %i.i = urem i32 %i.g, %i.h
  %i.j = add i32 %i.i, %0
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -65535, 65536) i32 @lv_trigo_cos(i16 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i16 %0, 90                           ; 4 uses
  %smax.i = tail call i16 @llvm.smax.i16(i16 %i.a, i16 0)
  %.lobit.i.neg2 = ashr i16 %i.a, 15
  %.lobit.i = lshr i16 %i.a, 15
  %reass.sub = sub i16 %.lobit.i.neg2, %0
  %.neg1 = add i16 %reass.sub, -90
  %i.b = add i16 %.neg1, %smax.i
  %1 = udiv i16 %i.b, 360
  %2 = add nuw nsw i16 %1, %.lobit.i
  %3 = mul i16 %2, 360
  %i.c = add i16 %3, %i.a                         ; 2 uses
  %i.d = tail call i16 @llvm.umax.i16(i16 %i.c, i16 359) ; 2 uses
  %i.e = urem i16 %i.d, 360
  %.neg.i = sub i16 %i.e, %i.d
  %i.f = add i16 %.neg.i, %i.c                    ; 7 uses
  %i.g = icmp samesign ult i16 %i.f, 90
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i16 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !8
  %i.k = zext i16 %i.j to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i16 %i.f, 180
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i16 180, %i.f
  %i.n = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !8
  %i.q = zext i16 %i.p to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i16 %i.f, 270
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i16 %i.f to i64
  %i.t = getelementptr [2 x i8], ptr @sin0_90_table, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -360
  %i.v = load i16, ptr %i.u, align 2, !tbaa !8
  %i.w = zext i16 %i.v to i32
  %i.x = sub nsw i32 0, %i.w
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = sub nuw nsw i16 360, %i.f
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @sin0_90_table, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !8
  %i.ac = zext i16 %i.ab to i32
  %i.ad = sub nsw i32 0, %i.ac
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.q, %bb.d ], [ %i.x, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  switch i32 %.0.i, label %bb.j [
    i32 32767, label %lv_trigo_sin.exit
    i32 -32767, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %lv_trigo_sin.exit

bb.j:                                             ; preds = %bb.h
  br label %lv_trigo_sin.exit

lv_trigo_sin.exit:                                ; preds = %bb.h, %bb.i, %bb.j
  %.026.i = phi i32 [ %.0.i, %bb.j ], [ -32768, %bb.i ], [ 32768, %bb.h ]
  ret i32 %.026.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 -2097152, 2097152) i32 @lv_bezier3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @lv_cubic_bezier(i32 noundef %0, i32 noundef 341, i32 noundef %2, i32 noundef 683, i32 noundef %3)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !9, i64 0}
!14 = !{!"", !9, i64 0, !9, i64 2}
!15 = !{!14, !9, i64 2}
!16 = !{!6, !6, i64 0}
!17 = distinct !{!17, !11}
!18 = !{!19, !5, i64 200}
!19 = !{!"_lv_global_t", !20, i64 0, !21, i64 8, !21, i64 9, !22, i64 16, !24, i64 40, !24, i64 48, !22, i64 56, !21, i64 80, !5, i64 84, !5, i64 88, !23, i64 96, !22, i64 104, !25, i64 128, !22, i64 136, !26, i64 160, !27, i64 168, !5, i64 176, !20, i64 184, !21, i64 192, !5, i64 196, !5, i64 200, !28, i64 208, !5, i64 216, !29, i64 224, !30, i64 296, !32, i64 336, !33, i64 360, !33, i64 416, !33, i64 472, !22, i64 528, !34, i64 552, !34, i64 560, !35, i64 568, !22, i64 600, !6, i64 624, !20, i64 816, !20, i64 824, !20, i64 832, !37, i64 840, !22, i64 888, !39, i64 912, !20, i64 920, !5, i64 928, !6, i64 932}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_Bool", !6, i64 0}
!22 = !{!"", !5, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 omnipotent char", !20, i64 0}
!24 = !{!"p1 _ZTS13_lv_display_t", !20, i64 0}
!25 = !{!"p1 _ZTS11_lv_group_t", !20, i64 0}
!26 = !{!"p1 _ZTS11_lv_indev_t", !20, i64 0}
!27 = !{!"p1 _ZTS9_lv_obj_t", !20, i64 0}
!28 = !{!"p1 _ZTS11_lv_event_t", !20, i64 0}
!29 = !{!"", !22, i64 0, !21, i64 24, !6, i64 25, !21, i64 26, !21, i64 27, !5, i64 28, !21, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !20, i64 56, !20, i64 64}
!30 = !{!"", !21, i64 0, !21, i64 1, !21, i64 2, !31, i64 8, !22, i64 16}
!31 = !{!"p1 _ZTS11_lv_timer_t", !20, i64 0}
!32 = !{!"", !5, i64 0, !6, i64 4, !20, i64 8, !20, i64 16}
!33 = !{!"_lv_draw_buf_handlers_t", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48}
!34 = !{!"p1 _ZTS11_lv_cache_t", !20, i64 0}
!35 = !{!"", !36, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !21, i64 24}
!36 = !{!"p1 _ZTS15_lv_draw_unit_t", !20, i64 0}
!37 = !{!"", !20, i64 0, !38, i64 8, !38, i64 16, !22, i64 24}
!38 = !{!"long", !6, i64 0}
!39 = !{!"p1 _ZTS14_snippet_stack", !20, i64 0}
end_hunk_1
