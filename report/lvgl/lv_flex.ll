Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_flex?download=true
inline.NumInlined: 53
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 1
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
%struct.flex_t = type { i32, i32, i32, i8 }
%struct.track_t = type { i32, i32, i32, i32, i32, ptr, i32, i8 }
%struct.lv_area_t = type { i32, i32, i32, i32 }

@lv_global = external local_unnamed_addr global %struct._lv_global_t, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_flex_init() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 184), align 8, !tbaa !66 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @flex_update, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @calc_min_size, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flex_update(ptr noundef %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct.flex_t, align 4             ; 13 uses
  %3 = alloca %struct.track_t, align 8            ; 5 uses
  %4 = alloca %struct.track_t, align 8            ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -96) #8
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -8
  %i.h = or disjoint i8 %i.d, %i.g
  %5 = lshr i64 %i.b, 1
  %tr.sh.diff.i = trunc i64 %5 to i8              ; 2 uses
  %i.i = and i8 %tr.sh.diff.i, 6
  %i.j = or disjoint i8 %i.h, %i.i
  %i.k = xor i8 %i.j, 1                           ; 6 uses
  store i8 %i.k, ptr %i.e, align 4
  %i.l = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -95) #8
  %i.m = ptrtoint ptr %i.l to i64
  %.sroa.0.0.extract.trunc.i12.i = trunc i64 %i.m to i32
  store i32 %.sroa.0.0.extract.trunc.i12.i, ptr %2, align 4, !tbaa !14
  %i.n = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -94) #8
  %i.o = ptrtoint ptr %i.n to i64
  %.sroa.0.0.extract.trunc.i13.i = trunc i64 %i.o to i32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.0.0.extract.trunc.i13.i, ptr %i.p, align 4, !tbaa !15
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -93) #8
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i14.i = trunc i64 %i.r to i32 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.0.0.extract.trunc.i14.i, ptr %i.s, align 4, !tbaa !16
  %i.t = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -127) #8
  %.fr228 = freeze ptr %i.t
  %i.u = ptrtoint ptr %.fr228 to i64
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 1                      ; 4 uses
  %.not = trunc i64 %i.b to i1                    ; 27 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 29) #8
  %i.y = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.z = tail call i32 @lv_obj_get_content_width(ptr noundef %0) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 30) #8
  %i.ab = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 29) #8
  %i.ac = tail call i32 @lv_obj_get_content_height(ptr noundef %0) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in.in = phi ptr [ %i.y, %bb.b ], [ %i.ab, %bb.c ]
  %.in209.in = phi ptr [ %i.x, %bb.b ], [ %i.aa, %bb.c ]
  %i.ad = phi i32 [ %i.z, %bb.b ], [ %i.ac, %bb.c ] ; 7 uses
  %.in209 = ptrtoint ptr %.in209.in to i64
  %i.ae = trunc i64 %.in209 to i32                ; 4 uses
  %.in = ptrtoint ptr %.in.in to i64
  %i.af = trunc i64 %.in to i32                   ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 24) #8
  %i.ak = ptrtoint ptr %i.aj to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ak to i32
  %i.al = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.am = ptrtoint ptr %i.al to i64
  %.sroa.0.0.extract.trunc.i9.i = trunc i64 %i.am to i32
  %i.an = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 60) #8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 2
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not.i, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i
  %i.ar = tail call i32 @lv_obj_get_scroll_y(ptr noundef %0) #8
  %i.as = add i32 %i.ai, %.sroa.0.0.extract.trunc.i.i
  %i.at = sub i32 %i.as, %i.ar
  %i.au = add i32 %i.at, %i.aq                    ; 14 uses
  %i.av = load i32, ptr %i.ag, align 8, !tbaa !24
  %i.aw = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 26) #8
  %i.ax = ptrtoint ptr %i.aw to i64
  %.sroa.0.0.extract.trunc.i.i99 = trunc i64 %i.ax to i32
  %i.ay = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.az = ptrtoint ptr %i.ay to i64
  %.sroa.0.0.extract.trunc.i9.i100 = trunc i64 %i.az to i32
  %i.ba = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 60) #8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 4
  %.not.i101 = icmp eq i64 %i.bc, 0
  %i.bd = select i1 %.not.i101, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i100
  %i.be = tail call i32 @lv_obj_get_scroll_x(ptr noundef %0) #8
  %i.bf = add i32 %i.av, %.sroa.0.0.extract.trunc.i.i99
  %i.bg = sub i32 %i.bf, %i.be
  %i.bh = add i32 %i.bg, %i.bd                    ; 14 uses
  %i.bi = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #8
  %i.bj = ptrtoint ptr %i.bi to i64
  %.sroa.0.0.extract.trunc.i102 = trunc i64 %i.bj to i32 ; 2 uses
  %i.bk = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 2) #8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = trunc i8 %i.k to i1
  %i.bn = and i64 %i.bl, 4294967295
  %i.bo = icmp eq i64 %i.bn, 1073741823           ; 2 uses
  %or.cond = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bq = load i32, ptr %i.bp, align 2
  %i.br = and i32 %i.bq, 1024
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bt = icmp eq i32 %.sroa.0.0.extract.trunc.i102, 1073741823
  %or.cond3 = select i1 %.not, i1 %i.bt, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.bv = load i32, ptr %i.bu, align 2
  %i.bw = and i32 %i.bv, 2048
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %brmerge.demorgan = and i1 %i.w, %.not
  br i1 %brmerge.demorgan, label %bb.i, label %bb.j

.thread:                                          ; preds = %bb.e, %bb.g
  %brmerge.demorgan245 = and i1 %i.w, %.not
  br i1 %brmerge.demorgan245, label %.thread186, label %.thread190

bb.i:                                             ; preds = %bb.h
  switch i32 %.sroa.0.0.extract.trunc.i14.i, label %.thread186.fold.split [
    i32 0, label %.thread186
    i32 1, label %.thread190
  ]

bb.j:                                             ; preds = %bb.h
  %.not87 = icmp eq i32 %.sroa.0.0.extract.trunc.i14.i, 0
  br i1 %.not87, label %.thread190, label %.thread186

.thread186.fold.split:                            ; preds = %bb.i
  br label %.thread186

.thread186:                                       ; preds = %.thread, %bb.i, %.thread186.fold.split, %bb.j
  %.182189 = phi i32 [ %.sroa.0.0.extract.trunc.i14.i, %bb.j ], [ 1, %bb.i ], [ %.sroa.0.0.extract.trunc.i14.i, %.thread186.fold.split ], [ 1, %.thread ] ; 2 uses
  %i.by = and i8 %tr.sh.diff.i, 4
  %.not88 = icmp eq i8 %i.by, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.phi.trans.insert232 = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre233 = load i16, ptr %.phi.trans.insert232, align 8, !tbaa !32
  %.pre239 = zext i16 %.pre233 to i32             ; 2 uses
  %i.bz = add nsw i32 %.pre239, -1
  %i.ca = select i1 %.not88, i32 0, i32 %i.bz     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = icmp ult i32 %i.ca, %.pre239
  br i1 %i.cc, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread186
  %i.cd = sub nsw i32 0, %i.ae
  br label %bb.l

.lr.ph:                                           ; preds = %.thread186
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %.0215 = phi i32 [ %i.ca, %.lr.ph ], [ %i.ch, %bb.k ]
  %.078214 = phi i32 [ 0, %.lr.ph ], [ %i.cl, %bb.k ]
  %.079213 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.k ]
  %i.cf = load i8, ptr %i.ce, align 4
  %i.cg = and i8 %i.cf, -2
  store i8 %i.cg, ptr %i.ce, align 4
  %i.ch = call fastcc i32 @find_track_end(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.0215, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %3) ; 2 uses
  %i.ci = load i32, ptr %3, align 8, !tbaa !34
  %i.cj = add i32 %.079213, %i.ae
  %i.ck = add i32 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i32 %.078214, 1                     ; 3 uses
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !32
  %i.cp = zext i16 %i.co to i32
  %i.cq = icmp ult i32 %i.ch, %i.cp
  br i1 %i.cq, label %bb.k, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.k
  %.pre234 = load i8, ptr %i.e, align 4
  %.not89 = icmp eq i32 %i.cl, 0
  %i.cr = sub nsw i32 %i.ck, %i.ae                ; 2 uses
  %spec.select = select i1 %.not89, i32 %i.ck, i32 %i.cr
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.cs = phi i32 [ %i.cr, %._crit_edge ], [ %i.cd, %._crit_edge.thread ]
  %.078.lcssa256 = phi i32 [ %i.cl, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 5 uses
  %i.ct = phi i8 [ %.pre234, %._crit_edge ], [ %i.k, %._crit_edge.thread ] ; 2 uses
  %i.cu = phi i32 [ %spec.select, %._crit_edge ], [ 0, %._crit_edge.thread ] ; 5 uses
  %i.cv = and i8 %i.ct, 1
  %.not90 = icmp eq i8 %i.cv, 0
  br i1 %.not90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = tail call i32 @lv_obj_get_content_height(ptr noundef nonnull %0) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cx = tail call i32 @lv_obj_get_content_width(ptr noundef nonnull %0) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cy = phi i32 [ %i.cw, %bb.m ], [ %i.cx, %bb.n ] ; 5 uses
  %i.cz = icmp slt i32 %.078.lcssa256, 2
  %.off.i = add i32 %.182189, -3
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i = and i1 %switch.i, %i.cz
  %.0.i = select i1 %or.cond.i, i32 2, i32 %.182189
  switch i32 %.0.i, label %place_content.exit [
    i32 2, label %bb.p
    i32 1, label %bb.q
    i32 5, label %bb.r
    i32 4, label %bb.t
    i32 3, label %bb.u
  ]

bb.p:                                             ; preds = %bb.o
  %i.da = sub nsw i32 %i.cy, %i.cu
  %i.db = sdiv i32 %i.da, 2
  %.sroa.speculated = select i1 %.not, i32 %i.bh, i32 %i.au
  %i.dc = add nsw i32 %i.db, %.sroa.speculated    ; 2 uses
  %spec.select194 = select i1 %.not, i32 %i.au, i32 %i.dc
  %spec.select195 = select i1 %.not, i32 %i.dc, i32 %i.bh
  br label %place_content.exit

bb.q:                                             ; preds = %bb.o
  %i.dd = sub i32 %i.cy, %i.cu
  %.sroa.speculated112 = select i1 %.not, i32 %i.bh, i32 %i.au
  %i.de = add nsw i32 %i.dd, %.sroa.speculated112 ; 2 uses
  %spec.select196 = select i1 %.not, i32 %i.au, i32 %i.de
  %spec.select197 = select i1 %.not, i32 %i.de, i32 %i.bh
  br label %place_content.exit

bb.r:                                             ; preds = %bb.o
  %i.df = icmp sgt i32 %.078.lcssa256, 1
  br i1 %i.df, label %bb.s, label %place_content.exit

bb.s:                                             ; preds = %bb.r
  %i.dg = sub nsw i32 %i.cy, %i.cs
  %i.dh = add nsw i32 %.078.lcssa256, -1
  %i.di = sdiv i32 %i.dg, %i.dh
  br label %place_content.exit

bb.t:                                             ; preds = %bb.o
  %i.dj = sub nsw i32 %i.cy, %i.cu
  %i.dk = sdiv i32 %i.dj, %.078.lcssa256          ; 2 uses
  %i.dl = sdiv i32 %i.dk, 2
  %.sroa.speculated118 = select i1 %.not, i32 %i.bh, i32 %i.au
  %i.dm = add nsw i32 %i.dl, %.sroa.speculated118 ; 2 uses
  %spec.select198 = select i1 %.not, i32 %i.au, i32 %i.dm
  %spec.select199 = select i1 %.not, i32 %i.dm, i32 %i.bh
  br label %place_content.exit

bb.u:                                             ; preds = %bb.o
  %i.dn = sub nsw i32 %i.cy, %i.cu
  %i.do = add nsw i32 %.078.lcssa256, 1
  %i.dp = sdiv i32 %i.dn, %i.do                   ; 2 uses
  %.sroa.speculated124 = select i1 %.not, i32 %i.bh, i32 %i.au
  %i.dq = add nsw i32 %i.dp, %.sroa.speculated124 ; 2 uses
  %spec.select200 = select i1 %.not, i32 %i.au, i32 %i.dq
  %spec.select201 = select i1 %.not, i32 %i.dq, i32 %i.bh
  br label %place_content.exit

place_content.exit:                               ; preds = %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.r, %bb.s
  %.6177 = phi i32 [ %spec.select194, %bb.p ], [ %spec.select196, %bb.q ], [ %spec.select200, %bb.u ], [ %i.au, %bb.s ], [ %i.au, %bb.r ], [ %spec.select198, %bb.t ], [ %i.au, %bb.o ]
  %.6 = phi i32 [ %spec.select195, %bb.p ], [ %spec.select197, %bb.q ], [ %spec.select201, %bb.u ], [ %i.bh, %bb.s ], [ %i.bh, %bb.r ], [ %spec.select199, %bb.t ], [ %i.bh, %bb.o ]
  %.1167 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ %i.dp, %bb.u ], [ %i.di, %bb.s ], [ 0, %bb.r ], [ %i.dk, %bb.t ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.thread190

.thread190:                                       ; preds = %.thread, %bb.i, %place_content.exit, %bb.j
  %i.dr = phi i8 [ %i.k, %bb.j ], [ %i.ct, %place_content.exit ], [ %i.k, %bb.i ], [ %i.k, %.thread ] ; 2 uses
  %.0171 = phi i32 [ %i.au, %bb.j ], [ %.6177, %place_content.exit ], [ %i.au, %bb.i ], [ %i.au, %.thread ] ; 2 uses
  %.0168 = phi i32 [ %i.bh, %bb.j ], [ %.6, %place_content.exit ], [ %i.bh, %bb.i ], [ %i.bh, %.thread ] ; 3 uses
  %.0166 = phi i32 [ 0, %bb.j ], [ %.1167, %place_content.exit ], [ 0, %bb.i ], [ 0, %.thread ]
  %.2 = phi i32 [ 0, %bb.j ], [ %i.cu, %place_content.exit ], [ 0, %bb.i ], [ 0, %.thread ]
  %i.ds = and i8 %i.dr, 4
  %.not91 = icmp eq i8 %i.ds, 0
  %.phi.trans.insert235 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre236 = load ptr, ptr %.phi.trans.insert235, align 8, !tbaa !25
  %.phi.trans.insert237 = getelementptr inbounds nuw i8, ptr %.pre236, i64 64
  %.pre238 = load i16, ptr %.phi.trans.insert237, align 8, !tbaa !32
  %.pre240 = zext i16 %.pre238 to i32             ; 2 uses
  %i.dt = add nsw i32 %.pre240, -1
  %i.du = select i1 %.not91, i32 0, i32 %i.dt     ; 4 uses
  %i.dv = and i8 %i.dr, 1
  %.not92 = icmp eq i8 %i.dv, 0
  %or.cond202 = and i1 %i.w, %.not92              ; 2 uses
  %.sroa.speculated133 = select i1 %.not, i32 %.0168, i32 %.0171
  %i.dw = add nsw i32 %.2, %.sroa.speculated133   ; 2 uses
  %i.dx = xor i1 %.not, true
  %i.dy = and i1 %or.cond202, %i.dx
  %.1172 = select i1 %i.dy, i32 %i.dw, i32 %.0171 ; 3 uses
  %i.dz = and i1 %or.cond202, %.not
  %.1169 = select i1 %i.dz, i32 %i.dw, i32 %.0168 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eb = icmp ult i32 %i.du, %.pre240
  br i1 %i.eb, label %.lr.ph220, label %._crit_edge221

.lr.ph220:                                        ; preds = %.thread190
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ee = add i32 %.0166, %i.ae                   ; 4 uses
  br i1 %i.w, label %.lr.ph220.split.us, label %.lr.ph220.split

.lr.ph220.split.us:                               ; preds = %.lr.ph220, %.cont125.us
  %.1219.us = phi i32 [ %i.eh, %.cont125.us ], [ %i.du, %.lr.ph220 ] ; 2 uses
  %.2170218.us = phi i32 [ %spec.select208.us, %.cont125.us ], [ %.1169, %.lr.ph220 ] ; 3 uses
  %.2173217.us = phi i32 [ %spec.select207.us, %.cont125.us ], [ %.1172, %.lr.ph220 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ef = load i8, ptr %i.ec, align 4
  %i.eg = or i8 %i.ef, 1
  store i8 %i.eg, ptr %i.ec, align 4
  %i.eh = call fastcc i32 @find_track_end(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.1219.us, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %4) ; 3 uses
  %i.ei = load i8, ptr %i.e, align 4
  %i.ej = and i8 %i.ei, 1
  %.not93.us = icmp eq i8 %i.ej, 0                ; 2 uses
  br i1 %.not93.us, label %bb.v, label %.else136.us

bb.v:                                             ; preds = %.lr.ph220.split.us
  %i.ek = load i32, ptr %4, align 8, !tbaa !34
  %.sroa.speculated139.us = select i1 %.not, i32 %.2170218.us, i32 %.2173217.us
  %i.el = sub nsw i32 %.sroa.speculated139.us, %i.ek ; 2 uses
  %spec.select205.us = select i1 %.not, i32 %.2173217.us, i32 %i.el
  %spec.select206.us = select i1 %.not, i32 %i.el, i32 %.2170218.us
  br label %.else136.us

.else136.us:                                      ; preds = %bb.v, %.lr.ph220.split.us
  %.3174.us = phi i32 [ %.2173217.us, %.lr.ph220.split.us ], [ %spec.select205.us, %bb.v ] ; 4 uses
  %.3.us = phi i32 [ %.2170218.us, %.lr.ph220.split.us ], [ %spec.select206.us, %bb.v ] ; 4 uses
  call fastcc void @children_repos(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.1219.us, i32 noundef %i.eh, i32 noundef %.3.us, i32 noundef %.3174.us, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %4)
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !36
  tail call void @lv_free(ptr noundef %i.em) #8
  br i1 %.not93.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.else136.us
  %i.en = load i32, ptr %4, align 8, !tbaa !34
  %.sroa.speculated145.us = select i1 %.not, i32 %.3.us, i32 %.3174.us
  %i.eo = add i32 %i.ee, %i.en
  %i.ep = add nsw i32 %i.eo, %.sroa.speculated145.us
  br label %.cont125.us

bb.x:                                             ; preds = %.else136.us
  %.sroa.speculated142.us = select i1 %.not, i32 %.3.us, i32 %.3174.us
  %i.eq = sub i32 %.sroa.speculated142.us, %i.ee
  br label %.cont125.us

.cont125.us:                                      ; preds = %bb.x, %bb.w
  %storemerge.us = phi i32 [ %i.eq, %bb.x ], [ %i.ep, %bb.w ] ; 2 uses
  %spec.select207.us = select i1 %.not, i32 %.3174.us, i32 %storemerge.us
  %spec.select208.us = select i1 %.not, i32 %storemerge.us, i32 %.3.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.er = load ptr, ptr %i.ea, align 8, !tbaa !25
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.et = load i16, ptr %i.es, align 8, !tbaa !32
  %i.eu = zext i16 %i.et to i32
  %i.ev = icmp ult i32 %i.eh, %i.eu
  br i1 %i.ev, label %.lr.ph220.split.us, label %._crit_edge221, !llvm.loop !73

.lr.ph220.split:                                  ; preds = %.lr.ph220
  br i1 %.not, label %.critedge.us, label %.critedge

.critedge.us:                                     ; preds = %.lr.ph220.split, %.critedge.us
  %.1219.us222 = phi i32 [ %i.ey, %.critedge.us ], [ %i.du, %.lr.ph220.split ] ; 2 uses
  %.2170218.us223 = phi i32 [ %i.fc, %.critedge.us ], [ %.1169, %.lr.ph220.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ew = load i8, ptr %i.ec, align 4
  %i.ex = or i8 %i.ew, 1
  store i8 %i.ex, ptr %i.ec, align 4
  %i.ey = call fastcc i32 @find_track_end(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.1219.us222, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %4) ; 3 uses
  call fastcc void @children_repos(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.1219.us222, i32 noundef %i.ey, i32 noundef %.2170218.us223, i32 noundef %.1172, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %4)
  %i.ez = load ptr, ptr %i.ed, align 8, !tbaa !36
  tail call void @lv_free(ptr noundef %i.ez) #8
  %i.fa = load i32, ptr %4, align 8, !tbaa !34
  %i.fb = add i32 %i.ee, %i.fa
  %i.fc = add nsw i32 %i.fb, %.2170218.us223
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.fd = load ptr, ptr %i.ea, align 8, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.ff = load i16, ptr %i.fe, align 8, !tbaa !32
  %i.fg = zext i16 %i.ff to i32
  %i.fh = icmp ult i32 %i.ey, %i.fg
  br i1 %i.fh, label %.critedge.us, label %._crit_edge221, !llvm.loop !73

.critedge:                                        ; preds = %.lr.ph220.split, %.critedge
  %.1219 = phi i32 [ %i.fk, %.critedge ], [ %i.du, %.lr.ph220.split ] ; 2 uses
  %.2173217 = phi i32 [ %i.fo, %.critedge ], [ %.1172, %.lr.ph220.split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.fi = load i8, ptr %i.ec, align 4
  %i.fj = or i8 %i.fi, 1
  store i8 %i.fj, ptr %i.ec, align 4
  %i.fk = call fastcc i32 @find_track_end(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.1219, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %4) ; 3 uses
  call fastcc void @children_repos(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %.1219, i32 noundef %i.fk, i32 noundef %.0168, i32 noundef %.2173217, i32 noundef %i.ad, i32 noundef %i.af, ptr noundef %4)
  %i.fl = load ptr, ptr %i.ed, align 8, !tbaa !36
  tail call void @lv_free(ptr noundef %i.fl) #8
  %i.fm = load i32, ptr %4, align 8, !tbaa !34
  %i.fn = add i32 %i.ee, %i.fm
  %i.fo = add nsw i32 %i.fn, %.2173217
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.fp = load ptr, ptr %i.ea, align 8, !tbaa !25
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = load i16, ptr %i.fq, align 8, !tbaa !32
  %i.fs = zext i16 %i.fr to i32
  %i.ft = icmp ult i32 %i.fk, %i.fs
  br i1 %i.ft, label %.critedge, label %._crit_edge221, !llvm.loop !73

._crit_edge221:                                   ; preds = %.critedge, %.critedge.us, %.cont125.us, %.thread190
  %i.fu = icmp eq i32 %.sroa.0.0.extract.trunc.i102, 1073741823
  %or.cond5 = select i1 %i.fu, i1 true, i1 %i.bo
  br i1 %or.cond5, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge221
  %i.fv = tail call zeroext i1 @lv_obj_refr_size(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge221, %bb.y
  %i.fw = tail call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 52, ptr noundef null) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @calc_min_size(ptr noundef %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.flex_t, align 4             ; 7 uses
  %5 = alloca %struct.track_t, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.d = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -96) #8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = trunc i64 %i.e to i8
  %i.g = and i8 %i.f, 1                           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -8
  %6 = lshr i64 %i.e, 1
  %tr.sh.diff.i = trunc i64 %6 to i8              ; 2 uses
  %i.k = and i8 %tr.sh.diff.i, 6
  %i.l = or disjoint i8 %i.j, %i.k
  %i.m = or disjoint i8 %i.l, %i.g
  %i.n = xor i8 %i.m, 1                           ; 2 uses
  %i.o = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -95) #8
  %i.p = ptrtoint ptr %i.o to i64
  %.sroa.0.0.extract.trunc.i12.i = trunc i64 %i.p to i32
  store i32 %.sroa.0.0.extract.trunc.i12.i, ptr %4, align 4, !tbaa !14
  %i.q = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -94) #8
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.0.0.extract.trunc.i13.i = trunc i64 %i.r to i32
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.0.extract.trunc.i13.i, ptr %i.s, align 4, !tbaa !15
  %i.t = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext -93) #8
  %i.u = ptrtoint ptr %i.t to i64
  %.sroa.0.0.extract.trunc.i14.i = trunc i64 %i.u to i32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.0.0.extract.trunc.i14.i, ptr %i.v, align 4, !tbaa !16
  %i.w = trunc i8 %i.n to i1
  %i.x = xor i1 %2, %i.w                          ; 2 uses
  br i1 %i.x, label %bb.d, label %._crit_edge43

._crit_edge43:                                    ; preds = %bb.b
  %i.y = and i8 %i.n, -3
  store i8 %i.y, ptr %i.h, align 4
  store i32 0, ptr %1, align 4, !tbaa !37
  %.not.not = icmp eq i8 %i.g, 0                  ; 4 uses
  %.65 = sub nuw nsw i8 30, %i.g
  %.66 = select i1 %.not.not, i8 26, i8 24
  %.67 = select i1 %.not.not, i64 4, i64 2
  %.68 = select i1 %.not.not, i8 27, i8 25
  %.69 = select i1 %.not.not, i64 8, i64 1
  %i.z = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext %.65) #8
  %.in = ptrtoint ptr %i.z to i64
  %i.aa = trunc i64 %.in to i32
  %i.ab = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext %.66) #8
  %i.ac = ptrtoint ptr %i.ab to i64
  %.sroa.0.0.extract.trunc.i.i33 = trunc i64 %i.ac to i32
  %i.ad = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.ae = ptrtoint ptr %i.ad to i64
  %.sroa.0.0.extract.trunc.i9.i34 = trunc i64 %i.ae to i32
  %i.af = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %.67, %i.ag
  %.not.i35 = icmp eq i64 %i.ah, 0
  %i.ai = select i1 %.not.i35, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i34
  %i.aj = add nsw i32 %i.ai, %.sroa.0.0.extract.trunc.i.i33
  %i.ak = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext %.68) #8
  %i.al = ptrtoint ptr %i.ak to i64
  %.sroa.0.0.extract.trunc.i.i39 = trunc i64 %i.al to i32
  %i.am = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 56) #8
  %i.an = ptrtoint ptr %i.am to i64
  %.sroa.0.0.extract.trunc.i9.i40 = trunc i64 %i.an to i32
  %i.ao = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 60) #8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %.69, %i.ap
  %.not.i41 = icmp eq i64 %i.aq, 0
  %i.ar = select i1 %.not.i41, i32 0, i32 %.sroa.0.0.extract.trunc.i9.i40
  %i.as = add nsw i32 %i.ar, %.sroa.0.0.extract.trunc.i.i39
  %i.at = and i8 %tr.sh.diff.i, 4
  %.not31 = icmp eq i8 %i.at, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre44 = load i16, ptr %.phi.trans.insert, align 8, !tbaa !32
  %.pre46 = zext i16 %.pre44 to i32               ; 2 uses
  %i.au = add nsw i32 %.pre46, -1
  %i.av = select i1 %.not31, i32 0, i32 %i.au     ; 2 uses
  %i.aw = icmp ult i32 %i.av, %.pre46
  br i1 %i.aw, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %._crit_edge43
  %.pre45 = load i32, ptr %1, align 4, !tbaa !37
  br label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge43
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.042 = phi i32 [ %i.av, %.lr.ph ], [ %i.bc, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ba = load i8, ptr %i.ax, align 4
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.ax, align 4
  %i.bc = call fastcc i32 @find_track_end(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %.042, i32 noundef 0, i32 noundef %i.aa, ptr noundef %5) ; 2 uses
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !38
  %i.be = load i32, ptr %i.az, align 4, !tbaa !39
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = load i32, ptr %1, align 4, !tbaa !37
  %. = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bf) ; 2 uses
  store i32 %., ptr %1, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !32
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp ult i32 %i.bc, %i.bk
  br i1 %i.bl, label %bb.c, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.c, %.._crit_edge_crit_edge
  %i.bm = phi i32 [ %.pre45, %.._crit_edge_crit_edge ], [ %., %bb.c ]
  %i.bn = add nsw i32 %i.as, %i.aj
  %i.bo = add nsw i32 %i.bn, %i.bm
  store i32 %i.bo, ptr %1, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %.026 = xor i1 %i.x, true
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.026, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define void @lv_obj_set_flex_flow(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  tail call void @lv_obj_set_style_flex_flow(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  tail call void @lv_obj_set_style_layout(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0) #8
  ret void
}

declare void @lv_obj_set_style_flex_flow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_layout(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_obj_set_flex_align(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @lv_obj_set_style_flex_main_place(ptr noundef %0, i32 noundef %1, i32 noundef 0) #8
  tail call void @lv_obj_set_style_flex_cross_place(ptr noundef %0, i32 noundef %2, i32 noundef 0) #8
  tail call void @lv_obj_set_style_flex_track_place(ptr noundef %0, i32 noundef %3, i32 noundef 0) #8
  tail call void @lv_obj_set_style_layout(ptr noundef %0, i16 noundef zeroext 1, i32 noundef 0) #8
  ret void
}

declare void @lv_obj_set_style_flex_main_place(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_flex_cross_place(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_obj_set_style_flex_track_place(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_obj_set_flex_grow(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  tail call void @lv_obj_set_style_flex_grow(ptr noundef %0, i8 noundef zeroext %1, i32 noundef 0) #8
  %i.a = tail call ptr @lv_obj_get_parent(ptr noundef %0) #8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @lv_obj_mark_layout_as_dirty(ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @lv_obj_set_style_flex_grow(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @lv_obj_get_parent(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_mark_layout_as_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_track_end(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 65535) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) initializes((0, 20), (24, 36)) %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #8
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 2) #8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = tail call ptr @lv_obj_get_parent(ptr noundef %0) #8 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.e, i32 noundef 0, i8 noundef zeroext -124) #8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 65535
  %i.i = icmp eq i64 %i.h, 1
  %i.j = tail call ptr @lv_obj_get_style_prop(ptr noundef %0, i32 noundef 0, i8 noundef zeroext -92) #8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 255
  %i.m = icmp ne i64 %i.l, 0
  %i.n = select i1 %i.i, i1 %i.m, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0136 = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.p = load i8, ptr %i.o, align 4               ; 6 uses
  %i.q = and i8 %i.p, 2
  %.not144 = icmp eq i8 %i.q, 0
  br i1 %.not144, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = trunc i8 %i.p to i1                      ; 2 uses
  %i.s = and i64 %i.b, 4294967295
  %i.t = icmp eq i64 %i.s, 1073741823
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %i.d, 4294967295
  %i.v = icmp ne i64 %i.u, 1073741823
  %or.cond5.not147 = select i1 %i.r, i1 true, i1 %i.v
  %or.cond7 = select i1 %or.cond5.not147, i1 true, i1 %.0136
  br i1 %or.cond7, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %.0136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = and i8 %i.p, -3                          ; 2 uses
  store i8 %i.w, ptr %i.o, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.x = phi i8 [ %i.w, %bb.g ], [ %i.p, %bb.f ], [ %i.p, %bb.e ], [ %i.p, %bb.c ]
  %i.y = and i8 %i.x, 1
  %.not148 = icmp eq i8 %i.y, 0                   ; 2 uses
  %i.z = select i1 %.not148, ptr @lv_obj_get_height_with_margin, ptr @lv_obj_get_width_with_margin ; 2 uses
  %i.aa = select i1 %.not148, ptr @lv_obj_get_width_with_margin, ptr @lv_obj_get_height_with_margin ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %i.ah = tail call ptr @lv_obj_get_child(ptr noundef %0, i32 noundef %2) #8 ; 2 uses
  %.not150187.not = icmp eq ptr %i.ah, null
  br i1 %.not150187.not, label %.thread181, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 36
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.ae
  %.0128192 = phi i1 [ true, %.lr.ph ], [ %.2130, %bb.ae ] ; 2 uses
  %.0131191 = phi ptr [ %i.ah, %.lr.ph ], [ %i.cw, %bb.ae ] ; 11 uses
  %.0188 = phi i32 [ %2, %.lr.ph ], [ %i.cu, %bb.ae ] ; 5 uses
  %.not151 = icmp eq i32 %.0188, %2               ; 3 uses
  br i1 %.not151, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call zeroext i1 @lv_obj_has_flag(ptr noundef nonnull %.0131191, i32 noundef 8388608) #8
  br i1 %i.aj, label %.thread181, label %bb.k
end_hunk_0
