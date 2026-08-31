Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_style?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
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
%struct._lv_font_t = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr, ptr }

@lv_style_const_prop_id_inv = local_unnamed_addr constant i8 0, align 1
@lv_style_builtin_prop_flag_lookup_table = local_unnamed_addr constant [177 x i8] c"\00\04\04\02\22\22\00\00\04\04\04\04\0C\0C\00\00\04\04\04\00\00\00\00\00\06\06\06\06\00\06\06\00\06\06\06\06\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\02\00\02\02\00\00\00\00\00\00\02\02\02\05\00\00\00\02\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\02\02\02\00\05\05\05\00\00\00\00\00\00\01\00\00\10\01\01\00\00\00\00\00\10\10\00\00\00\00\00\00\05\00\00\04\00\00\00\00\00\00\00\00\00\00\00\02\02\02\00\02\00\00\0022\00\00222\00\04\04\04\04\04\04\04\00\04\04\04\04\04\04\04\04\00", align 16
@lv_global = external local_unnamed_addr global %struct._lv_global_t, align 8
@lv_font_montserrat_14 = external constant %struct._lv_font_t, align 8

; Function Attrs: nounwind uwtable
define void @lv_style_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 16) #9
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_style_reset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @lv_free(ptr noundef %i.c) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lv_memset(ptr noundef nonnull %0, i8 noundef zeroext 0, i64 noundef 16) #9
  ret void
}

declare void @lv_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_style_copy(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i8, ptr %i.a, align 4, !tbaa !8
  %i.b = icmp eq i8 %.val, -1
  br i1 %i.b, label %bb.b, label %lv_style_reset.exit

lv_style_reset.exit:                              ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @lv_free(ptr noundef %i.c) #9
  tail call void @lv_memset(ptr noundef nonnull %0, i8 noundef zeroext 0, i64 noundef 16) #9
  tail call void @lv_style_merge(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %lv_style_reset.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_style_merge(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 11 uses
  %.val23 = load i8, ptr %i.a, align 4, !tbaa !8
  %i.b = icmp eq i8 %.val23, -1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !8     ; 2 uses
  switch i8 %i.f, label %.lr.ph44.split.preheader [
    i8 0, label %.loopexit
    i8 -1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.c
  %i.g = load i8, ptr %i.c, align 8, !tbaa !12    ; 2 uses
  %.not41 = icmp eq i8 %i.g, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %lv_style_set_prop.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %lv_style_set_prop.exit ] ; 2 uses
  %i.i = phi i8 [ %i.g, %.lr.ph.split.preheader ], [ %i.at, %lv_style_set_prop.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.val.i = load i8, ptr %i.a, align 4, !tbaa !8  ; 3 uses
  %i.m = icmp eq i8 %.val.i, -1
  br i1 %i.m, label %lv_style_set_prop.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.n = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %.not44.i = icmp eq ptr %i.n, null
  %.pre51.i = zext i8 %.val.i to i64              ; 3 uses
  br i1 %.not44.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %.pre51.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %.not69 = icmp eq i8 %.val.i, 0
  br i1 %.not69, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i64 %indvars.iv.i66, 1
  br i1 %i.q, label %.lr.ph, label %.loopexit.i, !llvm.loop !14

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ %.pre51.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i66, -1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = icmp eq i8 %i.s, %i.i
  br i1 %i.t, label %bb.g, label %bb.f, !llvm.loop !14

bb.g:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i
  store ptr %i.l, ptr %i.u, align 8, !tbaa !16
  br label %lv_style_set_prop.exit

.loopexit.i:                                      ; preds = %bb.f, %bb.e, %bb.d
  %i.v = mul nuw nsw i64 %.pre51.i, 9
  %i.w = add nuw nsw i64 %i.v, 9
  %i.x = tail call ptr @lv_realloc(ptr noundef %i.n, i64 noundef %i.w) #9 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %lv_style_set_prop.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  store ptr %i.x, ptr %0, align 8, !tbaa !11
  %i.z = load i8, ptr %i.a, align 4, !tbaa !8     ; 2 uses
  %.not46.i = icmp eq i8 %i.z, 0
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %i.x, i64 %i.ab   ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.ac, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %i.ac, i64 %i.aa, i1 false), !tbaa !16
  %.pre.i = load i8, ptr %i.a, align 4, !tbaa !8
  %i.ad = add i8 %.pre.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.h
  %i.ae = phi i8 [ %i.ad, %.lr.ph.preheader.i ], [ 1, %bb.h ] ; 2 uses
  store i8 %i.ae, ptr %i.a, align 4, !tbaa !8
  %i.af = zext i8 %i.ae to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  store i8 %i.i, ptr %i.aj, align 1, !tbaa !16
  %i.ak = load i8, ptr %i.a, align 4, !tbaa !8
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  store ptr %i.l, ptr %i.an, align 8, !tbaa !16
  %i.ao = tail call i8 @llvm.umin.i8(i8 %i.i, i8 124)
  %narrow.i.i = lshr i8 %i.ao, 2
  %spec.store.select.i.i = zext nneg i8 %narrow.i.i to i32
  %i.ap = shl nuw i32 1, %spec.store.select.i.i
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !17
  %i.ar = or i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.h, align 8, !tbaa !17
  br label %lv_style_set_prop.exit

lv_style_set_prop.exit:                           ; preds = %.lr.ph.split, %bb.g, %.loopexit.i, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.at = load i8, ptr %i.as, align 8, !tbaa !12  ; 2 uses
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !18

.lr.ph44.split.preheader:                         ; preds = %bb.c
  %i.au = zext i8 %i.f to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.lr.ph44.split

.lr.ph44.split:                                   ; preds = %.lr.ph44.split.preheader, %lv_style_set_prop.exit39
  %indvars.iv52 = phi i64 [ 0, %.lr.ph44.split.preheader ], [ %indvars.iv.next53, %lv_style_set_prop.exit39 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv52
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16  ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv52
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.val.i24 = load i8, ptr %i.a, align 4, !tbaa !8 ; 3 uses
  %i.bc = icmp eq i8 %.val.i24, -1
  br i1 %i.bc, label %lv_style_set_prop.exit39, label %bb.i

bb.i:                                             ; preds = %.lr.ph44.split
  %.not.i25 = icmp eq i8 %i.az, 0
  br i1 %.not.i25, label %.preheader.i38, label %bb.j

.preheader.i38:                                   ; preds = %bb.i, %.preheader.i38
  br label %.preheader.i38

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %0, align 8, !tbaa !11    ; 4 uses
  %.not44.i26 = icmp eq ptr %i.bd, null
  %.pre51.i27 = zext i8 %.val.i24 to i64          ; 3 uses
  br i1 %.not44.i26, label %.loopexit.i29, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = shl nuw nsw i64 %.pre51.i27, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %.not70 = icmp eq i8 %.val.i24, 0
  br i1 %.not70, label %.loopexit.i29, label %.lr.ph68

bb.l:                                             ; preds = %.lr.ph68
  %i.bg = icmp sgt i64 %indvars.iv.i2867, 1
  br i1 %i.bg, label %.lr.ph68, label %.loopexit.i29, !llvm.loop !14

.lr.ph68:                                         ; preds = %bb.k, %bb.l
  %indvars.iv.i2867 = phi i64 [ %indvars.iv.next.i37, %bb.l ], [ %.pre51.i27, %bb.k ] ; 2 uses
  %indvars.iv.next.i37 = add nsw i64 %indvars.iv.i2867, -1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv.next.i37
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = icmp eq i8 %i.bi, %i.az
  br i1 %i.bj, label %bb.m, label %bb.l, !llvm.loop !14

bb.m:                                             ; preds = %.lr.ph68
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i37
  store ptr %i.bb, ptr %i.bk, align 8, !tbaa !16
  br label %lv_style_set_prop.exit39

.loopexit.i29:                                    ; preds = %bb.l, %bb.k, %bb.j
  %i.bl = mul nuw nsw i64 %.pre51.i27, 9
  %i.bm = add nuw nsw i64 %i.bl, 9
  %i.bn = tail call ptr @lv_realloc(ptr noundef %i.bd, i64 noundef %i.bm) #9 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %lv_style_set_prop.exit39, label %bb.n

bb.n:                                             ; preds = %.loopexit.i29
  store ptr %i.bn, ptr %0, align 8, !tbaa !11
  %i.bp = load i8, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %.not46.i30 = icmp eq i8 %i.bp, 0
  br i1 %.not46.i30, label %._crit_edge.i34, label %.lr.ph.preheader.i31

.lr.ph.preheader.i31:                             ; preds = %bb.n
  %i.bq = zext i8 %i.bp to i64                    ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = getelementptr i8, ptr %i.bn, i64 %i.br  ; 2 uses
  %scevgep.i32 = getelementptr i8, ptr %i.bs, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep.i32, ptr align 1 %i.bs, i64 %i.bq, i1 false), !tbaa !16
  %.pre.i33 = load i8, ptr %i.a, align 4, !tbaa !8
  %i.bt = add i8 %.pre.i33, 1
  br label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %.lr.ph.preheader.i31, %bb.n
  %i.bu = phi i8 [ %i.bt, %.lr.ph.preheader.i31 ], [ 1, %bb.n ] ; 2 uses
  store i8 %i.bu, ptr %i.a, align 4, !tbaa !8
  %i.bv = zext i8 %i.bu to i64                    ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %i.bz = getelementptr i8, ptr %i.by, i64 -1
  store i8 %i.az, ptr %i.bz, align 1, !tbaa !16
  %i.ca = load i8, ptr %i.a, align 4, !tbaa !8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr [8 x i8], ptr %i.bn, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  store ptr %i.bb, ptr %i.cd, align 8, !tbaa !16
  %i.ce = tail call i8 @llvm.umin.i8(i8 %i.az, i8 124)
  %narrow.i.i35 = lshr i8 %i.ce, 2
  %spec.store.select.i.i36 = zext nneg i8 %narrow.i.i35 to i32
  %i.cf = shl nuw i32 1, %spec.store.select.i.i36
  %i.cg = load i32, ptr %i.ax, align 8, !tbaa !17
  %i.ch = or i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %i.ax, align 8, !tbaa !17
  br label %lv_style_set_prop.exit39

lv_style_set_prop.exit39:                         ; preds = %.lr.ph44.split, %bb.m, %.loopexit.i29, %._crit_edge.i34
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ci = load i8, ptr %i.e, align 4, !tbaa !8
  %i.cj = zext i8 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next53, %i.cj
  br i1 %i.ck, label %.lr.ph44.split, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %lv_style_set_prop.exit, %lv_style_set_prop.exit39, %.preheader, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_style_set_prop(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 5 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.b = icmp eq i8 %.val, -1
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b, %.preheader
  br label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %.not44 = icmp eq ptr %i.c, null
  %.pre51 = zext i8 %.val to i64                  ; 3 uses
  br i1 %.not44, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = shl nuw nsw i64 %.pre51, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %.not56 = icmp eq i8 %.val, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.f = icmp sgt i64 %indvars.iv54, 1
  br i1 %i.f, label %.lr.ph, label %.loopexit, !llvm.loop !14

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars.iv54 = phi i64 [ %indvars.iv.next, %bb.e ], [ %.pre51, %bb.d ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv54, -1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %bb.f, label %bb.e, !llvm.loop !14

bb.f:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store ptr %2, ptr %i.j, align 8, !tbaa !16
  br label %bb.h

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.k = mul nuw nsw i64 %.pre51, 9
  %i.l = add nuw nsw i64 %i.k, 9
  %i.m = tail call ptr @lv_realloc(ptr noundef %i.c, i64 noundef %i.l) #9 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %0, align 8, !tbaa !11
  %i.o = load i8, ptr %i.a, align 4, !tbaa !8     ; 2 uses
  %.not46 = icmp eq i8 %i.o, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.p = zext i8 %i.o to i64                      ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = getelementptr i8, ptr %i.m, i64 %i.q
  %i.s = getelementptr i8, ptr %i.m, i64 %i.q
  %scevgep = getelementptr i8, ptr %i.s, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep, ptr align 1 %i.r, i64 %i.p, i1 false), !tbaa !16
  %.pre = load i8, ptr %i.a, align 4, !tbaa !8
  %i.t = add i8 %.pre, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.g
  %i.u = phi i8 [ %i.t, %.lr.ph.preheader ], [ 1, %bb.g ] ; 2 uses
  store i8 %i.u, ptr %i.a, align 4, !tbaa !8
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  store i8 %1, ptr %i.z, align 1, !tbaa !16
  %i.aa = load i8, ptr %i.a, align 4, !tbaa !8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [8 x i8], ptr %i.m, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  store ptr %2, ptr %i.ad, align 8, !tbaa !16
  %i.ae = tail call i8 @llvm.umin.i8(i8 %1, i8 124)
  %narrow.i = lshr i8 %i.ae, 2
  %spec.store.select.i = zext nneg i8 %narrow.i to i32
  %i.af = shl nuw i32 1, %spec.store.select.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !17
  %i.ai = or i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.loopexit, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @lv_style_register_prop(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 96), align 8, !tbaa !21 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.thread20

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 84), align 4, !tbaa !42
  store i32 176, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !43
  br label %bb.c

.thread20:                                        ; preds = %bb.a
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !43 ; 2 uses
  %.pre17 = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 84), align 4, !tbaa !42
  %i.c = add i32 %.pre, -175                      ; 2 uses
  %i.d = icmp ult i32 %.pre17, %i.c
  br i1 %i.d, label %bb.c, label %.thread21

bb.c:                                             ; preds = %bb.b, %.thread20
  %i.e = phi i32 [ %i.c, %.thread20 ], [ 1, %bb.b ]
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 31
  %i.h = and i64 %i.g, 8589934560                 ; 2 uses
  %i.i = tail call ptr @lv_realloc(ptr noundef %i.a, i64 noundef %i.h) #9 ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.c
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 96), align 8, !tbaa !21
  %i.j = trunc i64 %i.h to i32
  store i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 84), align 4, !tbaa !42
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !43
  br label %.thread21

.thread21:                                        ; preds = %.thread20, %.thread
  %.pre.sink = phi i32 [ %i.k, %.thread ], [ %.pre, %.thread20 ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.thread ], [ %i.a, %.thread20 ]
  %i.m = add i32 %.pre.sink, 1
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !43
  %i.n = add i32 %.pre.sink, -176
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  store i8 %0, ptr %i.p, align 1, !tbaa !16
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !43
  %i.r = trunc i32 %i.q to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.thread21
  %.1 = phi i8 [ %i.r, %.thread21 ], [ 0, %bb.c ]
  ret i8 %.1
}

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i8 @lv_style_get_num_custom_props() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 88), align 8, !tbaa !43
  %i.b = trunc i32 %i.a to i8
  %i.c = add i8 %i.b, 80
  ret i8 %i.c
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @lv_style_remove_prop(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12         ; 4 uses
  %.val = load i8, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %.val.off = add i8 %.val, -1
  %switch = icmp ult i8 %.val.off, -2
  br i1 %switch, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.c = zext i8 %.val to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = zext i8 %.val to i64
  %wide.trip.count = zext i8 %.val to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.j = mul nuw nsw i64 %i.f, 9
  %narrow = add nuw nsw i64 %i.j, 4294967287
  %i.k = and i64 %narrow, 4294967295
  %i.l = tail call ptr @lv_malloc(i64 noundef %i.k) #9 ; 4 uses
  %.not45 = icmp eq ptr %i.l, null
  br i1 %.not45, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %0, align 8, !tbaa !11
  %i.m = load i8, ptr %i.a, align 4, !tbaa !8
  %i.n = add i8 %i.m, -1                          ; 3 uses
  store i8 %i.n, ptr %i.a, align 4, !tbaa !8
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %i.r = phi i8 [ %i.n, %bb.d ], [ %i.ab, %bb.g ]
  %indvars.iv52 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next53, %bb.g ] ; 4 uses
  %.148 = phi i32 [ 0, %bb.d ], [ %.2, %bb.g ]    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv52 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %.not44 = icmp eq i8 %i.t, %1
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %.148 to i64                    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv52
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  store i64 %i.x, ptr %i.v, align 8, !tbaa !16
  %i.y = load i8, ptr %i.s, align 1, !tbaa !16
  %i.z = add i32 %.148, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !16
  %.pre = load i8, ptr %i.a, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ab = phi i8 [ %.pre, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %i.z, %bb.f ], [ %.148, %bb.e ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %i.ac = zext i8 %i.ab to i64
  %.not.not = icmp samesign ult i64 %indvars.iv52, %i.ac
  br i1 %.not.not, label %bb.e, label %bb.h, !llvm.loop !45

bb.h:                                             ; preds = %bb.g
  tail call void @lv_free(ptr noundef nonnull %i.b) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c, %bb.h
  %.240 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ]
  ret i1 %.240
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @lv_style_get_prop(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val.i = load i8, ptr %i.a, align 4, !tbaa !8  ; 3 uses
  %i.b = icmp eq i8 %.val.i, -1
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !12    ; 2 uses
  %.not.not33.i = icmp eq i8 %i.d, 0
  br i1 %.not.not33.i, label %lv_style_get_prop_inlined.exit, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %bb.b
  %i.e = icmp eq i8 %i.d, %1
  br i1 %i.e, label %.lr.ph35.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i
  %.02834.i5 = phi i32 [ %i.f, %.lr.ph35.i ], [ 0, %.lr.ph35.i.preheader ]
  %i.f = add i32 %.02834.i5, 1                    ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !12    ; 2 uses
  %.not.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.not.i, label %lv_style_get_prop_inlined.exit, label %.lr.ph35.i, !llvm.loop !46

.lr.ph35.i:                                       ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.i, %1
  br i1 %i.j, label %.lr.ph35.i._crit_edge, label %.lr.ph, !llvm.loop !46

.lr.ph35.i._crit_edge:                            ; preds = %.lr.ph35.i, %.lr.ph35.i.preheader
  %.lcssa = phi ptr [ %i.c, %.lr.ph35.i.preheader ], [ %i.h, %.lr.ph35.i ]
end_hunk_0
