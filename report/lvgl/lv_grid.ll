Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_grid?download=true
inline.NumInlined: 81
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
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
%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_grid_calc_t = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.item_repos_hint_t = type { i32, i32, %struct.lv_point_t }
%struct.lv_point_t = type { i32, i32 }

@lv_global = external local_unnamed_addr global %struct._lv_global_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_grid_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 184), align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @grid_update, ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @grid_update(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 16         ; 4 uses
  %3 = alloca %struct.lv_grid_calc_t, align 8     ; 13 uses
  %4 = alloca %struct.item_repos_hint_t, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef 0) #8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @lv_memset(ptr noundef nonnull %3, i8 noundef zeroext 0, i64 noundef 48) #8
  br label %calc.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -90) #8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @lv_obj_get_parent(ptr noundef %0) #8
  %i.f = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.e, i32 noundef 0, i8 noundef zeroext -90) #8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i.i, label %calc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -83) #8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -82) #8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = shl i64 %i.j, 32                         ; 2 uses
  %sext.i.i = add i64 %i.k, 4294967296
  %i.l = ashr exact i64 %sext.i.i, 30
  %i.m = tail call ptr @lv_malloc(i64 noundef %i.l) #8 ; 3 uses
  %i.n = shl i64 %i.h, 32
  %i.o = ashr exact i64 %i.n, 30
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 %i.o
  %i.q = ashr exact i64 %i.k, 30                  ; 2 uses
  %i.r = tail call ptr @lv_memcpy(ptr noundef %i.m, ptr noundef nonnull %i.p, i64 noundef %i.q) #8 ; 0 uses
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  store i32 536870911, ptr %i.s, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1107.i.i = phi ptr [ %i.m, %bb.e ], [ %i.c, %bb.c ] ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.pre.i = phi i32 [ 0, %bb.f ], [ %i.w, %bb.g ] ; 7 uses
  %i.t = zext i32 %.pre.i to i64                  ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.1107.i.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !55
  %.not.i.i.i = icmp eq i32 %i.v, 536870911
  %i.w = add i32 %.pre.i, 1
  br i1 %.not.i.i.i, label %count_tracks.exit.i.i, label %bb.g, !llvm.loop !33

count_tracks.exit.i.i:                            ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i32 %.pre.i, ptr %i.x, align 4, !tbaa !59
  %i.y = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.z = tail call ptr @lv_malloc(i64 noundef %i.y) #8 ; 16 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !60
  %i.ab = tail call ptr @lv_malloc(i64 noundef %i.y) #8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !61
  %.not.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i, label %._crit_edge132.i.i, label %.lr.ph127.i.i.preheader

.lr.ph127.i.i.preheader:                          ; preds = %count_tracks.exit.i.i
  %.pre68 = zext i32 %.pre.i to i64
  br label %.lr.ph127.i.i

.lr.ph131.i.i.preheader:                          ; preds = %.lr.ph127.i.i._crit_edge
  %.pre.i.i = load i32, ptr %i.x, align 4         ; 2 uses
  br label %.lr.ph131.i.i

.lr.ph127.i.i:                                    ; preds = %.lr.ph127.i.i.preheader, %.lr.ph127.i.i._crit_edge
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph127.i.i._crit_edge ], [ 0, %.lr.ph127.i.i.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.1107.i.i, i64 %indvars.iv.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !55
  %i.af = icmp eq i32 %i.ae, 536870810
  br i1 %i.af, label %.preheader122.i.i, label %.lr.ph127.i.i._crit_edge

.preheader122.i.i:                                ; preds = %.lr.ph127.i.i
  %i.ag = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #8
  %.not141.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not141.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader122.i.i, %bb.l
  %.098124.i.i = phi i32 [ %i.as, %bb.l ], [ 0, %.preheader122.i.i ] ; 2 uses
  %.099123.i.i = phi i32 [ %.3102.i.i, %bb.l ], [ -536870911, %.preheader122.i.i ] ; 5 uses
  %i.ah = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef %.098124.i.i) #8 ; 5 uses
  %i.ai = tail call zeroext i1 @lv_obj_has_flag_any(ptr noundef %i.ah, i32 noundef 393217) #8
  br i1 %i.ai, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aj = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.ah, i32 noundef 0, i8 noundef zeroext -82) #8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 4294967295
  %.not116.i.i = icmp eq i64 %i.al, 1
  br i1 %.not116.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.am = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.ah, i32 noundef 0, i8 noundef zeroext -83) #8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 4294967295
  %.not117.i.i = icmp eq i64 %indvars.iv.i.i, %i.ao
  br i1 %.not117.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call i32 @lv_obj_get_height(ptr noundef %i.ah) #8
  %i.aq = icmp sgt i32 %.099123.i.i, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call i32 @lv_obj_get_height(ptr noundef %i.ah) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph.i.i
  %.3102.i.i = phi i32 [ %.099123.i.i, %.lr.ph.i.i ], [ %.099123.i.i, %bb.h ], [ %.099123.i.i, %bb.i ], [ %i.ar, %bb.k ], [ %.099123.i.i, %bb.j ] ; 3 uses
  %i.as = add nuw i32 %.098124.i.i, 1             ; 2 uses
  %i.at = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #8
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !34

._crit_edge.i.i:                                  ; preds = %bb.l
  %i.av = icmp sgt i32 %.3102.i.i, -1
  br i1 %i.av, label %.sink.split.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %.preheader122.i.i
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.3102.lcssa.sink.i.i = phi i32 [ 0, %._crit_edge.thread.i.i ], [ %.3102.i.i, %._crit_edge.i.i ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  store i32 %.3102.lcssa.sink.i.i, ptr %i.aw, align 4, !tbaa !55
  br label %.lr.ph127.i.i._crit_edge

.lr.ph127.i.i._crit_edge:                         ; preds = %.lr.ph127.i.i, %.sink.split.i.i
  %.pre-phi69 = phi i64 [ %i.t, %.sink.split.i.i ], [ %.pre68, %.lr.ph127.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i.i, %.pre-phi69
  br i1 %i.ax, label %.lr.ph127.i.i, label %.lr.ph131.i.i.preheader, !llvm.loop !35

.lr.ph131.i.i:                                    ; preds = %.lr.ph131.i.i.preheader, %bb.q
  %i.ay = phi i32 [ %i.bk, %bb.q ], [ %.pre.i, %.lr.ph131.i.i.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.bl, %bb.q ], [ %.pre.i, %.lr.ph131.i.i.preheader ] ; 2 uses
  %indvars.iv146.i.i = phi i64 [ %indvars.iv.next147.i.i, %bb.q ], [ 0, %.lr.ph131.i.i.preheader ] ; 3 uses
  %.094130.i.i = phi i32 [ %.195.i.i, %bb.q ], [ 0, %.lr.ph131.i.i.preheader ] ; 3 uses
  %.096129.i.i = phi i32 [ %.197.i.i, %bb.q ], [ 0, %.lr.ph131.i.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.1107.i.i, i64 %indvars.iv146.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !55 ; 5 uses
  %i.bc = icmp sgt i32 %i.bb, 536870810
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph131.i.i
  %i.bd = add i32 %.096129.i.i, -536870811
  %i.be = add i32 %i.bd, %i.bb
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph131.i.i
  %i.bf = icmp eq i32 %i.bb, 536870810
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv146.i.i ; 2 uses
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !55
  %i.bi = add nsw i32 %i.bh, %.094130.i.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !55
  %i.bj = add nsw i32 %i.bb, %.094130.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %i.bk = phi i32 [ %i.ay, %bb.m ], [ %i.ay, %bb.o ], [ %.pre.i.i, %bb.p ] ; 2 uses
  %i.bl = phi i32 [ %i.az, %bb.m ], [ %i.az, %bb.o ], [ %.pre.i.i, %bb.p ] ; 2 uses
  %.197.i.i = phi i32 [ %i.be, %bb.m ], [ %.096129.i.i, %bb.o ], [ %.096129.i.i, %bb.p ] ; 2 uses
  %.195.i.i = phi i32 [ %.094130.i.i, %bb.m ], [ %i.bi, %bb.o ], [ %i.bj, %bb.p ] ; 2 uses
  %indvars.iv.next147.i.i = add nuw nsw i64 %indvars.iv146.i.i, 1 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next147.i.i, %i.bm
  br i1 %i.bn, label %.lr.ph131.i.i, label %._crit_edge132.i.i, !llvm.loop !36

._crit_edge132.i.i:                               ; preds = %bb.q, %count_tracks.exit.i.i
  %.pre152.i.i = phi i32 [ 0, %count_tracks.exit.i.i ], [ %i.bk, %bb.q ] ; 3 uses
  %.096.lcssa.i.i = phi i32 [ 0, %count_tracks.exit.i.i ], [ %.197.i.i, %bb.q ] ; 2 uses
  %.094.lcssa.i.i = phi i32 [ 0, %count_tracks.exit.i.i ], [ %.195.i.i, %bb.q ]
  %i.bo = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 29) #8
  %i.bp = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8
  %i.bq = icmp ne i32 %.pre152.i.i, 0
  %i.br = icmp ne i32 %.096.lcssa.i.i, 0
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph139.preheader.i.i, label %._crit_edge140.i.i

.lr.ph139.preheader.i.i:                          ; preds = %._crit_edge132.i.i
  %.neg121.i.i = sub i32 %i.bp, %.094.lcssa.i.i
  %.neg143.i.i = sub i32 1, %.pre152.i.i
  %i.bt = ptrtoint ptr %i.bo to i64
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.bt to i32
  %.neg144.i.i = mul i32 %.neg143.i.i, %.sroa.0.0.extract.trunc.i.i.i
  %i.bu = add i32 %.neg121.i.i, %.neg144.i.i
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bv = load ptr, ptr %i.ac, align 8
  %i.bw = zext i32 %.pre152.i.i to i64
  br label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %bb.s, %.lr.ph139.preheader.i.i
  %indvars.iv149.i.i = phi i64 [ 0, %.lr.ph139.preheader.i.i ], [ %indvars.iv.next150.i.i, %bb.s ] ; 3 uses
  %.092137.i.i = phi i32 [ %spec.store.select.i.i, %.lr.ph139.preheader.i.i ], [ %.193.i.i, %bb.s ] ; 3 uses
  %.2136.i.i = phi i32 [ %.096.lcssa.i.i, %.lr.ph139.preheader.i.i ], [ %.3.i.i, %bb.s ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.1107.i.i, i64 %indvars.iv149.i.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !55 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 536870810
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph139.i.i
  %i.ca = add nsw i32 %i.by, -536870811           ; 2 uses
  %i.cb = mul nsw i32 %i.ca, %.092137.i.i
  %i.cc = sdiv i32 %.2136.i.i, 2
  %i.cd = add nsw i32 %i.cb, %i.cc
  %i.ce = sdiv i32 %i.cd, %.2136.i.i              ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv149.i.i
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !55
  %i.cg = sub i32 %.2136.i.i, %i.ca
  %i.ch = sub nsw i32 %.092137.i.i, %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph139.i.i
  %.3.i.i = phi i32 [ %i.cg, %bb.r ], [ %.2136.i.i, %.lr.ph139.i.i ] ; 2 uses
  %.193.i.i = phi i32 [ %i.ch, %bb.r ], [ %.092137.i.i, %.lr.ph139.i.i ]
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next150.i.i, %i.bw
  %i.cj = icmp ne i32 %.3.i.i, 0
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph139.i.i, label %._crit_edge140.i.i, !llvm.loop !37

._crit_edge140.i.i:                               ; preds = %bb.s, %._crit_edge132.i.i
  br i1 %i.d, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge140.i.i
  tail call void @lv_free(ptr noundef nonnull %.1107.i.i) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge140.i.i
  %i.cl = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -91) #8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null                 ; 2 uses
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = tail call ptr @lv_obj_get_parent(ptr noundef %0) #8
  %i.co = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.cn, i32 noundef 0, i8 noundef zeroext -91) #8 ; 2 uses
  %.not.not.i54.i = icmp eq ptr %i.co, null
  br i1 %.not.not.i54.i, label %calc.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -86) #8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -85) #8
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = shl i64 %i.cs, 32                       ; 2 uses
  %sext.i55.i = add i64 %i.ct, 4294967296
  %i.cu = ashr exact i64 %sext.i55.i, 30
  %i.cv = tail call ptr @lv_malloc(i64 noundef %i.cu) #8 ; 3 uses
  %i.cw = shl i64 %i.cq, 32
  %i.cx = ashr exact i64 %i.cw, 30
  %i.cy = getelementptr inbounds i8, ptr %i.co, i64 %i.cx
  %i.cz = ashr exact i64 %i.ct, 30                ; 2 uses
  %i.da = tail call ptr @lv_memcpy(ptr noundef %i.cv, ptr noundef nonnull %i.cy, i64 noundef %i.cz) #8 ; 0 uses
  %i.db = getelementptr inbounds i8, ptr %i.cv, i64 %i.cz
  store i32 536870911, ptr %i.db, align 4, !tbaa !55
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.1108.i.i = phi ptr [ %i.cv, %bb.w ], [ %i.cl, %bb.u ] ; 5 uses
  %i.dc = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.pre81.i = phi i32 [ 0, %bb.x ], [ %i.dg, %bb.y ] ; 7 uses
  %i.dd = zext i32 %.pre81.i to i64               ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !55
  %.not.i.i36.i = icmp eq i32 %i.df, 536870911
  %i.dg = add i32 %.pre81.i, 1
  br i1 %.not.i.i36.i, label %count_tracks.exit.i37.i, label %bb.y, !llvm.loop !33

count_tracks.exit.i37.i:                          ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 %.pre81.i, ptr %i.dh, align 8, !tbaa !62
  %i.di = shl nuw nsw i64 %i.dd, 2                ; 2 uses
  %i.dj = tail call ptr @lv_malloc(i64 noundef %i.di) #8 ; 22 uses
  store ptr %i.dj, ptr %3, align 8, !tbaa !63
  %i.dk = tail call ptr @lv_malloc(i64 noundef %i.di) #8 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !64
  %.not.i38.i = icmp eq i32 %.pre81.i, 0
  br i1 %.not.i38.i, label %._crit_edge133.i.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %count_tracks.exit.i37.i
  %.pre67 = zext i32 %.pre81.i to i64
  br label %.lr.ph128.i.i

.lr.ph132.i.i.preheader:                          ; preds = %.lr.ph128.i.i._crit_edge
  %.pre.i42.i = load i32, ptr %i.dh, align 8      ; 2 uses
  br label %.lr.ph132.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i._crit_edge
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %.lr.ph128.i.i._crit_edge ], [ 0, %.lr.ph128.i.i.preheader ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %indvars.iv.i39.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !55
  %i.do = icmp eq i32 %i.dn, 536870810
  br i1 %i.do, label %.preheader123.i.i, label %.lr.ph128.i.i._crit_edge

.preheader123.i.i:                                ; preds = %.lr.ph128.i.i
  %i.dp = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #8
  %.not142.i48.i = icmp eq i32 %i.dp, 0
  br i1 %.not142.i48.i, label %._crit_edge.thread.i52.i, label %.lr.ph.i49.i

.lr.ph.i49.i:                                     ; preds = %.preheader123.i.i, %bb.ad
  %.099125.i.i = phi i32 [ %i.eb, %bb.ad ], [ 0, %.preheader123.i.i ] ; 2 uses
  %.0100124.i.i = phi i32 [ %.3103.i.i, %bb.ad ], [ -536870911, %.preheader123.i.i ] ; 5 uses
  %i.dq = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef %.099125.i.i) #8 ; 5 uses
  %i.dr = tail call zeroext i1 @lv_obj_has_flag_any(ptr noundef %i.dq, i32 noundef 393217) #8
  br i1 %i.dr, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i49.i
  %i.ds = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.dq, i32 noundef 0, i8 noundef zeroext -85) #8
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = and i64 %i.dt, 4294967295
  %.not117.i50.i = icmp eq i64 %i.du, 1
  br i1 %.not117.i50.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dv = tail call ptr @lv_obj_get_style_prop(ptr noundef %i.dq, i32 noundef 0, i8 noundef zeroext -86) #8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = and i64 %i.dw, 4294967295
  %.not118.i.i = icmp eq i64 %indvars.iv.i39.i, %i.dx
  br i1 %.not118.i.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dy = tail call i32 @lv_obj_get_width(ptr noundef %i.dq) #8
  %i.dz = icmp sgt i32 %.0100124.i.i, %i.dy
  br i1 %i.dz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = tail call i32 @lv_obj_get_width(ptr noundef %i.dq) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %.lr.ph.i49.i
  %.3103.i.i = phi i32 [ %.0100124.i.i, %.lr.ph.i49.i ], [ %.0100124.i.i, %bb.z ], [ %.0100124.i.i, %bb.aa ], [ %i.ea, %bb.ac ], [ %.0100124.i.i, %bb.ab ] ; 3 uses
  %i.eb = add nuw i32 %.099125.i.i, 1             ; 2 uses
  %i.ec = tail call i32 @lv_obj_get_child_count(ptr noundef %0) #8
  %i.ed = icmp ult i32 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph.i49.i, label %._crit_edge.i51.i, !llvm.loop !38

._crit_edge.i51.i:                                ; preds = %bb.ad
  %i.ee = icmp sgt i32 %.3103.i.i, -1
  br i1 %i.ee, label %.sink.split.i53.i, label %._crit_edge.thread.i52.i

._crit_edge.thread.i52.i:                         ; preds = %._crit_edge.i51.i, %.preheader123.i.i
  br label %.sink.split.i53.i

.sink.split.i53.i:                                ; preds = %._crit_edge.thread.i52.i, %._crit_edge.i51.i
  %.3103.lcssa.sink.i.i = phi i32 [ 0, %._crit_edge.thread.i52.i ], [ %.3103.i.i, %._crit_edge.i51.i ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i39.i
  store i32 %.3103.lcssa.sink.i.i, ptr %i.ef, align 4, !tbaa !55
  br label %.lr.ph128.i.i._crit_edge

.lr.ph128.i.i._crit_edge:                         ; preds = %.lr.ph128.i.i, %.sink.split.i53.i
  %.pre-phi = phi i64 [ %i.dd, %.sink.split.i53.i ], [ %.pre67, %.lr.ph128.i.i ]
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next.i40.i, %.pre-phi
  br i1 %i.eg, label %.lr.ph128.i.i, label %.lr.ph132.i.i.preheader, !llvm.loop !39

.lr.ph132.i.i:                                    ; preds = %.lr.ph132.i.i.preheader, %bb.ai
  %i.eh = phi i32 [ %i.et, %bb.ai ], [ %.pre81.i, %.lr.ph132.i.i.preheader ] ; 2 uses
  %i.ei = phi i32 [ %i.eu, %bb.ai ], [ %.pre81.i, %.lr.ph132.i.i.preheader ] ; 2 uses
  %indvars.iv147.i.i = phi i64 [ %indvars.iv.next148.i.i, %bb.ai ], [ 0, %.lr.ph132.i.i.preheader ] ; 3 uses
  %.095131.i.i = phi i32 [ %.196.i.i, %bb.ai ], [ 0, %.lr.ph132.i.i.preheader ] ; 3 uses
  %.097130.i.i = phi i32 [ %.198.i.i, %bb.ai ], [ 0, %.lr.ph132.i.i.preheader ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %indvars.iv147.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !55 ; 5 uses
  %i.el = icmp sgt i32 %i.ek, 536870810
  br i1 %i.el, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph132.i.i
  %i.em = add i32 %.097130.i.i, -536870811
  %i.en = add i32 %i.em, %i.ek
  br label %bb.ai

bb.af:                                            ; preds = %.lr.ph132.i.i
  %i.eo = icmp eq i32 %i.ek, 536870810
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv147.i.i ; 2 uses
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !55
  %i.er = add nsw i32 %i.eq, %.095131.i.i
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i32 %i.ek, ptr %i.ep, align 4, !tbaa !55
  %i.es = add nsw i32 %i.ek, %.095131.i.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.et = phi i32 [ %i.eh, %bb.ae ], [ %i.eh, %bb.ag ], [ %.pre.i42.i, %bb.ah ] ; 2 uses
  %i.eu = phi i32 [ %i.ei, %bb.ae ], [ %i.ei, %bb.ag ], [ %.pre.i42.i, %bb.ah ] ; 2 uses
  %.198.i.i = phi i32 [ %i.en, %bb.ae ], [ %.097130.i.i, %bb.ag ], [ %.097130.i.i, %bb.ah ] ; 2 uses
  %.196.i.i = phi i32 [ %.095131.i.i, %bb.ae ], [ %i.er, %bb.ag ], [ %i.es, %bb.ah ] ; 2 uses
  %indvars.iv.next148.i.i = add nuw nsw i64 %indvars.iv147.i.i, 1 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = icmp samesign ult i64 %indvars.iv.next148.i.i, %i.ev
  br i1 %i.ew, label %.lr.ph132.i.i, label %._crit_edge133.i.i, !llvm.loop !40

._crit_edge133.i.i:                               ; preds = %bb.ai, %count_tracks.exit.i37.i
  %i.ex = phi i32 [ 0, %count_tracks.exit.i37.i ], [ %i.et, %bb.ai ] ; 12 uses
  %.097.lcssa.i.i = phi i32 [ 0, %count_tracks.exit.i37.i ], [ %.198.i.i, %bb.ai ] ; 2 uses
  %.095.lcssa.i.i = phi i32 [ 0, %count_tracks.exit.i37.i ], [ %.196.i.i, %bb.ai ]
  %i.ey = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.ez = icmp ne i32 %i.ex, 0                    ; 3 uses
  %i.fa = icmp ne i32 %.097.lcssa.i.i, 0
  %i.fb = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %i.fb, label %.lr.ph140.preheader.i.i, label %._crit_edge141.i.i

.lr.ph140.preheader.i.i:                          ; preds = %._crit_edge133.i.i
  %.neg122.i.i = sub i32 %i.dc, %.095.lcssa.i.i
  %.neg144.i44.i = sub i32 1, %i.ex
  %i.fc = ptrtoint ptr %i.ey to i64
  %.sroa.0.0.extract.trunc.i.i45.i = trunc i64 %i.fc to i32
  %.neg145.i.i = mul i32 %.neg144.i44.i, %.sroa.0.0.extract.trunc.i.i45.i
  %i.fd = add i32 %.neg122.i.i, %.neg145.i.i
  %spec.store.select.i46.i = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.fe = load ptr, ptr %i.dl, align 8
  %i.ff = zext i32 %i.ex to i64
  br label %.lr.ph140.i.i

.lr.ph140.i.i:                                    ; preds = %bb.ak, %.lr.ph140.preheader.i.i
  %indvars.iv150.i.i = phi i64 [ 0, %.lr.ph140.preheader.i.i ], [ %indvars.iv.next151.i.i, %bb.ak ] ; 3 uses
  %.093138.i.i = phi i32 [ %spec.store.select.i46.i, %.lr.ph140.preheader.i.i ], [ %.194.i.i, %bb.ak ] ; 3 uses
  %.2137.i.i = phi i32 [ %.097.lcssa.i.i, %.lr.ph140.preheader.i.i ], [ %.3.i47.i, %bb.ak ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.1108.i.i, i64 %indvars.iv150.i.i
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !55 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 536870810
  br i1 %i.fi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph140.i.i
  %i.fj = add nsw i32 %i.fh, -536870811           ; 2 uses
  %i.fk = mul nsw i32 %i.fj, %.093138.i.i
  %i.fl = sdiv i32 %.2137.i.i, 2
  %i.fm = add nsw i32 %i.fk, %i.fl
  %i.fn = sdiv i32 %i.fm, %.2137.i.i              ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv150.i.i
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !55
  %i.fp = sub i32 %.2137.i.i, %i.fj
  %i.fq = sub nsw i32 %.093138.i.i, %i.fn
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph140.i.i
  %.3.i47.i = phi i32 [ %i.fp, %bb.aj ], [ %.2137.i.i, %.lr.ph140.i.i ] ; 2 uses
  %.194.i.i = phi i32 [ %i.fq, %bb.aj ], [ %.093138.i.i, %.lr.ph140.i.i ]
  %indvars.iv.next151.i.i = add nuw nsw i64 %indvars.iv150.i.i, 1 ; 2 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next151.i.i, %i.ff
  %i.fs = icmp ne i32 %.3.i47.i, 0
  %i.ft = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %i.ft, label %.lr.ph140.i.i, label %._crit_edge141.i.i, !llvm.loop !41

._crit_edge141.i.i:                               ; preds = %bb.ak, %._crit_edge133.i.i
  br i1 %i.cm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge141.i.i
  tail call void @lv_free(ptr noundef nonnull %.1108.i.i) #8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge141.i.i
  %i.fu = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.fv = ptrtoint ptr %i.fu to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.fv to i32 ; 2 uses
  %i.fw = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 29) #8
  %i.fx = ptrtoint ptr %i.fw to i64
  %.sroa.0.0.extract.trunc.i56.i = trunc i64 %i.fx to i32 ; 2 uses
  %i.fy = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -127) #8
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = and i64 %i.fz, 4294967295
  %i.gb = icmp eq i64 %i.ga, 1
  %i.gc = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #8
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 2) #8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = and i64 %i.gd, 4294967295
  %i.gh = icmp eq i64 %i.gg, 1073741823
  br i1 %i.gh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.gj = load i32, ptr %i.gi, align 2
  %i.gk = and i32 %i.gj, 2048
  %.not.i = icmp eq i32 %i.gk, 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gl = phi i1 [ false, %bb.am ], [ %.not.i, %bb.an ]
  %i.gm = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8 ; 9 uses
  %i.gn = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -88) #8
  %i.go = load ptr, ptr %i.dl, align 8, !tbaa !64 ; 15 uses
  br i1 %i.gl, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dj, align 4, !tbaa !55
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ao
  %i.gp = ptrtoint ptr %i.gn to i64
  %.sroa.0.0.extract.trunc.i.i60.i = trunc i64 %i.gp to i32 ; 2 uses
  %i.gq = add i32 %.sroa.0.0.extract.trunc.i.i60.i, -4
  %or.cond3.i31 = icmp ult i32 %i.gq, 3           ; 2 uses
  %i.gr = icmp eq i32 %i.ex, 1
  %.068.i = select i1 %or.cond3.i31, i32 0, i32 %.sroa.0.0.extract.trunc.i.i ; 7 uses
  %i.gs = and i1 %i.gr, %or.cond3.i31
  %.067.i = select i1 %i.gs, i32 1, i32 %.sroa.0.0.extract.trunc.i.i60.i
  br i1 %i.ez, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %wide.trip.count.i = zext i32 %i.ex to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.068.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gx, %vector.body ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.gy, %vector.body ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load = load <4 x i32>, ptr %i.gt, align 4, !tbaa !55
  %wide.load100 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !55
  %i.gv = add <4 x i32> %vec.phi, %broadcast.splat
  %i.gw = add <4 x i32> %vec.phi99, %broadcast.splat
  %i.gx = add <4 x i32> %i.gv, %wide.load         ; 2 uses
  %i.gy = add <4 x i32> %i.gw, %wide.load100      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.gy, %i.gx
  %i.ha = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.06676.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ha, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.06676.i = phi i32 [ %i.he, %.lr.ph.i ], [ %.06676.i.ph, %.lr.ph.i.preheader ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !55
  %i.hd = add i32 %.06676.i, %.068.i
  %i.he = add i32 %i.hd, %i.hc                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.aq
  %.066.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.ha, %middle.block ], [ %i.he, %.lr.ph.i ]
  %i.hf = sub nsw i32 %.066.lcssa.i, %.068.i      ; 5 uses
  switch i32 %.067.i, label %._crit_edge._crit_edge.i [
    i32 0, label %bb.ar
    i32 1, label %bb.as
    i32 2, label %bb.at
    i32 6, label %bb.au
    i32 5, label %bb.av
    i32 4, label %bb.aw
  ]

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre97.pre.i = load i32, ptr %i.dj, align 4, !tbaa !55
  br label %bb.ax

bb.ar:                                            ; preds = %._crit_edge.i
  store i32 0, ptr %i.dj, align 4, !tbaa !55
  br label %bb.ax

bb.as:                                            ; preds = %._crit_edge.i
  %i.hg = sub nsw i32 %i.gm, %i.hf
  %i.hh = sdiv i32 %i.hg, 2                       ; 2 uses
  store i32 %i.hh, ptr %i.dj, align 4, !tbaa !55
  br label %bb.ax

bb.at:                                            ; preds = %._crit_edge.i
  %i.hi = sub nsw i32 %i.gm, %i.hf                ; 2 uses
  store i32 %i.hi, ptr %i.dj, align 4, !tbaa !55
  br label %bb.ax

bb.au:                                            ; preds = %._crit_edge.i
end_hunk_0
