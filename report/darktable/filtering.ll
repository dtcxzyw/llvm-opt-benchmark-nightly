Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/filtering?download=true
inline.NumInlined: 310
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_filters_update_params:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #19 ; 2 uses
  store i32 %i.g, ptr %.4512.val, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread13, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.4512.val, i64 4
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %.thread, %bb.c
  %i.i = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.79) #19
  %i.j = icmp sgt i32 %i.i, 10
  br i1 %i.j, label %.thread17, label %bb.g

.thread17:                                        ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %.4512.val, i64 2644 ; 2 uses
  store i32 10, ptr %i.k, align 4, !tbaa !122
  br label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32     ; 5 uses
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.72, i32 noundef %i.l) #19 ; 0 uses
  %i.n = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.o = getelementptr inbounds nuw [264 x i8], ptr %i.h, i64 %indvars.iv ; 9 uses
  %i.p = load i64, ptr %i.o, align 4
  %i.q = and i32 %i.n, 65535
  %i.r = zext nneg i32 %i.q to i64
  %i.s = and i64 %i.p, -65536
  %i.t = or disjoint i64 %i.s, %i.r
  store i64 %i.t, ptr %i.o, align 4
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.73, i32 noundef %i.l) #19 ; 0 uses
  %i.v = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.w = load i64, ptr %i.o, align 4
  %i.x = shl i32 %i.v, 16
  %i.y = zext i32 %i.x to i64
  %i.z = and i64 %i.w, -4294901761
  %i.aa = or disjoint i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.o, align 4
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.74, i32 noundef %i.l) #19 ; 0 uses
  %i.ac = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.ad = load i64, ptr %i.o, align 4
  %i.ae = and i32 %i.ac, 65535
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = and i64 %i.ad, -281470681743361
  %i.ai = or disjoint i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.o, align 4
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.75, i32 noundef %i.l) #19 ; 0 uses
  %i.ak = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.al = load i64, ptr %i.o, align 4
  %i.am = and i32 %i.ak, 65535
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 %i.an, 48
  %i.ap = and i64 %i.al, 281474976710655
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.o, align 4
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.76, i32 noundef %i.l) #19 ; 0 uses
  %i.as = call ptr @dt_conf_get_string_const(ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.au = call i64 @g_strlcpy(ptr noundef nonnull %i.at, ptr noundef nonnull %i.as, i64 noundef 256) #19 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %.4512.val, align 4, !tbaa !123
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp samesign ult i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.d, label %._crit_edge

bb.g:                                             ; preds = %._crit_edge
  %i.ay = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.79) #19
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.thread15, label %bb.h

.thread15:                                        ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.4512.val, i64 2644
  store i32 0, ptr %i.ba, align 4, !tbaa !122
  br label %._crit_edge5

bb.h:                                             ; preds = %bb.g
  %i.bb = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.79) #19 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.4512.val, i64 2644 ; 2 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !122
  %.not7 = icmp eq i32 %i.bb, 0
  br i1 %.not7, label %._crit_edge5, label %.lr.ph4

.lr.ph4:                                          ; preds = %.thread17, %bb.h
  %i.bd = phi ptr [ %i.k, %.thread17 ], [ %i.bc, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %.4512.val, i64 2648
  br label %bb.i

._crit_edge5:                                     ; preds = %bb.i, %.thread15, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.i:                                             ; preds = %.lr.ph4, %bb.i
  %indvars.iv9 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next10, %bb.i ] ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv9 to i32   ; 2 uses
  %i.bg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.103, i32 noundef %i.bf) #19 ; 0 uses
  %i.bh = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv9 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bh, 65535
  %i.bl = and i32 %i.bj, -65536
  %i.bm = or disjoint i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.bi, align 4
  %i.bn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.104, i32 noundef %i.bf) #19 ; 0 uses
  %i.bo = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.bp = load i32, ptr %i.bi, align 4
  %i.bq = shl i32 %i.bo, 16
  %i.br = and i32 %i.bp, 65535
  %i.bs = or disjoint i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.bi, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1 ; 2 uses
  %i.bt = load i32, ptr %i.bd, align 4, !tbaa !122
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next10, %i.bu
  br i1 %i.bv, label %bb.i, label %._crit_edge5
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define noundef i32 @set_params(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2688 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !121
  tail call fastcc void @_filtering_reset(i32 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %i.d = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #19 ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !123
  %.not74 = icmp eq i32 %i.e, 0
  br i1 %.not74, label %._crit_edge69, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.b

._crit_edge69:                                    ; preds = %._crit_edge, %bb.a
  %.058.neg.lcssa = phi i32 [ 0, %bb.a ], [ %.058.neg, %._crit_edge ]
  %i.h = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.71, i64 noundef 200) #19 ; 0 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !123
  %i.j = add i32 %.058.neg.lcssa, %i.d
  %i.k = add i32 %i.j, %i.i
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.k) #19
  %i.l = load i32, ptr %i.b, align 4, !tbaa !121
  %i.m = and i32 %i.l, 2
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge69
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2644 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122
  %.not75 = icmp eq i32 %i.o, 0
  br i1 %.not75, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2648
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph68, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.058.neg66 = phi i32 [ 0, %.lr.ph68 ], [ %.058.neg, %._crit_edge ]
  %.05864 = phi i32 [ 0, %.lr.ph68 ], [ %.159.lcssa, %._crit_edge ] ; 2 uses
  %i.q = add i32 %.058.neg66, %i.d
  %i.r = trunc nuw i64 %indvars.iv to i32
  %i.s = add i32 %i.q, %i.r                       ; 2 uses
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [264 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %.159.lcssa = phi i32 [ %.05864, %bb.b ], [ %.2, %bb.e ] ; 2 uses
  %.056.lcssa = phi i32 [ %i.s, %bb.b ], [ %.1, %bb.e ] ; 5 uses
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.72, i32 noundef %.056.lcssa) #19 ; 0 uses
  %i.v = getelementptr inbounds nuw [264 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  %i.w = load i64, ptr %i.v, align 4
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 65535
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.y) #19
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.73, i32 noundef %.056.lcssa) #19 ; 0 uses
  %i.aa = load i64, ptr %i.v, align 4
  %i.ab = trunc i64 %i.aa to i32
  %3 = lshr i32 %i.ab, 16
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %3) #19
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.74, i32 noundef %.056.lcssa) #19 ; 0 uses
  %i.ad = load i64, ptr %i.v, align 4
  %i.ae = lshr i64 %i.ad, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 65535
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.ag) #19
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.75, i32 noundef %.056.lcssa) #19 ; 0 uses
  %i.ai = load i64, ptr %i.v, align 4
  %i.aj = lshr i64 %i.ai, 48
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.ak) #19
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.76, i32 noundef %.056.lcssa) #19 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull %i.am) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.058.neg = sub i32 0, %.159.lcssa              ; 2 uses
  %i.an = load i32, ptr %1, align 4, !tbaa !123
  %i.ao = zext i32 %i.an to i64
  %i.ap = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.b, label %._crit_edge69

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.05562 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.e ] ; 3 uses
  %.05661 = phi i32 [ %i.s, %.lr.ph ], [ %.1, %bb.e ]
  %.15960 = phi i32 [ %.05864, %.lr.ph ], [ %.2, %bb.e ] ; 2 uses
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.72, i32 noundef %.05562) #19 ; 0 uses
  %i.ar = load i64, ptr %i.t, align 4
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 65535
  %i.au = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = add nsw i32 %.15960, 1
  %i.ax = load i64, ptr %i.t, align 4
  %i.ay = and i64 %i.ax, 65535
  %i.az = or disjoint i64 %i.ay, 281474976710656
  store i64 %i.az, ptr %i.t, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.2 = phi i32 [ %i.aw, %bb.d ], [ %.15960, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.05562, %bb.d ], [ %.05661, %bb.c ] ; 2 uses
  %i.ba = add nuw nsw i32 %.05562, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge73:                                    ; preds = %bb.f, %.preheader
  %i.bb = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.79, i64 noundef 200) #19 ; 0 uses
  %i.bc = load i32, ptr %i.n, align 4, !tbaa !122
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.bc) #19
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph72, %bb.f
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next79, %bb.f ] ; 3 uses
  %i.bd = trunc nuw i64 %indvars.iv78 to i32      ; 2 uses
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.77, i32 noundef %i.bd) #19 ; 0 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv78 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.bh) #19
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.78, i32 noundef %i.bd) #19 ; 0 uses
  %i.bj = load i32, ptr %i.bf, align 4
  %i.bk = lshr i32 %i.bj, 16
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.bk) #19
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.bl = load i32, ptr %i.n, align 4, !tbaa !122
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next79, %i.bm
  br i1 %i.bn, label %bb.f, label %._crit_edge73

bb.g:                                             ; preds = %._crit_edge73, %._crit_edge69
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !128
  %i.bq = getelementptr i8, ptr %i.bp, i64 4512
  %.val = load ptr, ptr %i.bq, align 8, !tbaa !129
  call fastcc void @_filters_update_params(ptr %.val)
  call fastcc void @_history_save(i32 noundef 1)
  call fastcc void @_history_save(i32 noundef 0)
  call fastcc void @_filters_gui_update(ptr noundef %0)
  call fastcc void @_sort_gui_update(ptr noundef %0)
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !131
  call void @dt_collection_update_query(ptr noundef %i.br, i32 noundef 3, i32 noundef 45, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_filtering_reset(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 29 uses
  %i.b = alloca [200 x i8], align 16              ; 9 uses
  %i.c = and i32 %0, 5
  %or.cond.not = icmp eq i32 %i.c, 5
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @dt_conf_set_int(ptr noundef nonnull @.str.71, i32 noundef 0) #19
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %0, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #19
  %i.f = icmp sgt i32 %i.e, 10
  br i1 %i.f, label %.lr.ph70.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #19
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %._crit_edge71, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.71) #19 ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %bb.d, %bb.f
  %i.k = phi i32 [ %i.i, %bb.f ], [ 10, %bb.d ]   ; 4 uses
  br label %.lr.ph70

._crit_edge71:                                    ; preds = %bb.j, %bb.e, %bb.f
  %i.l = phi i32 [ %i.i, %bb.f ], [ 0, %bb.e ], [ %i.k, %bb.j ]
  %.055.lcssa = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ %.1, %bb.j ]
  %i.m = sub nsw i32 %i.l, %.055.lcssa
  call void @dt_conf_set_int(ptr noundef nonnull @.str.71, i32 noundef %i.m) #19
  br label %.loopexit

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %bb.j
  %.05468 = phi i32 [ %.pre-phi, %bb.j ], [ 0, %.lr.ph70.preheader ] ; 3 uses
  %.05567 = phi i32 [ %.1, %bb.j ], [ 0, %.lr.ph70.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %i.n = sub nsw i32 %.05468, %.05567             ; 3 uses
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.75, i32 noundef %i.n) #19 ; 0 uses
  %i.p = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %.not62 = icmp eq i32 %i.p, 0
  br i1 %.not62, label %.preheader, label %bb.g

.preheader:                                       ; preds = %.lr.ph70
  %.05365 = add nuw nsw i32 %.05468, 1            ; 3 uses
  %i.q = icmp slt i32 %.05365, %i.k
  br i1 %i.q, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph70
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.73, i32 noundef %i.n) #19 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef 0) #19
  %i.s = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.76, i32 noundef %i.n) #19 ; 0 uses
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13) #19
  %.pre = add nuw nsw i32 %.05468, 1
  br label %bb.j

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.t = add nsw i32 %.05567, 1
  br label %bb.j

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.05366 = phi i32 [ %.053, %bb.i ], [ %.05365, %.preheader ] ; 2 uses
  %i.u = sub nsw i32 %.05366, %.05567             ; 6 uses
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.73, i32 noundef %i.u) #19 ; 0 uses
  %i.w = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.72, i32 noundef %i.u) #19 ; 0 uses
  %i.y = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.z = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.74, i32 noundef %i.u) #19 ; 0 uses
  %i.aa = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.75, i32 noundef %i.u) #19 ; 0 uses
  %i.ac = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #19
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.76, i32 noundef %i.u) #19 ; 0 uses
  %i.ae = call ptr @dt_conf_get_string(ptr noundef nonnull %i.a) #19 ; 3 uses
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.af = add nsw i32 %i.u, -1                    ; 5 uses
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.73, i32 noundef %i.af) #19 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.w) #19
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.72, i32 noundef %i.af) #19 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.y) #19
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.74, i32 noundef %i.af) #19 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.aa) #19
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.75, i32 noundef %i.af) #19 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.ac) #19
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.76, i32 noundef %i.af) #19 ; 0 uses
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ae) #19
  call void @g_free(ptr noundef nonnull %i.ae) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.053 = add nuw i32 %.05366, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %.053, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge, %bb.g
  %.pre-phi = phi i32 [ %.05365, %._crit_edge ], [ %.pre, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.t, %._crit_edge ], [ %.05567, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
end_hunk_0
