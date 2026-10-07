Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/collection?download=true
inline.NumInlined: 37
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_collection_checksum:bb.a
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  %i.g = select i1 %.not, ptr @.str.115, ptr @.str.114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.g) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.i = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.i, ptr %i.b, align 4, !tbaa !21
  %i.j = call ptr @g_checksum_new(i32 noundef 0) #16 ; 11 uses
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.b, i64 noundef 4) #16
  %i.k = load i32, ptr %i.b, align 4, !tbaa !21
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.025.us = phi i32 [ %i.t, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 4 uses
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef %.025.us) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.n = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.n, ptr %i.c, align 4, !tbaa !21
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.c, i64 noundef 4) #16
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.115, i32 noundef %.025.us) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.p = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.p, ptr %i.d, align 4, !tbaa !21
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.d, i64 noundef 4) #16
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.115, i32 noundef %.025.us) #16 ; 0 uses
  %i.r = call ptr @dt_conf_get_string_const(ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #18
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.r, i64 noundef %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.t = add nuw nsw i32 %.025.us, 1              ; 2 uses
  %i.u = load i32, ptr %i.b, align 4, !tbaa !21
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.split.us, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %i.w = call ptr @g_checksum_get_string(ptr noundef %i.j) #16
  %i.x = call noalias ptr @g_strdup(ptr noundef %i.w) #16
  call void @g_checksum_free(ptr noundef %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.x

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.025 = phi i32 [ %i.aj, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.114, i32 noundef %.025) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.z = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.z, ptr %i.c, align 4, !tbaa !21
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.c, i64 noundef 4) #16
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.114, i32 noundef %.025) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.ab = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !21
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.d, i64 noundef 4) #16
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.114, i32 noundef %.025) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.ad = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.ad, ptr %i.e, align 4, !tbaa !21
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.e, i64 noundef 4) #16
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.114, i32 noundef %.025) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.af = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  store i32 %i.af, ptr %i.f, align 4, !tbaa !21
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.f, i64 noundef 4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.114, i32 noundef %.025) #16 ; 0 uses
  %i.ah = call ptr @dt_conf_get_string_const(ptr noundef nonnull %i.a) #16 ; 2 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #18
  call void @g_checksum_update(ptr noundef %i.j, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.aj = add nuw nsw i32 %.025, 1                ; 2 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !21
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph.split, label %._crit_edge
}

declare ptr @g_checksum_new(i32 noundef) local_unnamed_addr #3

declare void @g_checksum_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_conf_get_string_const(ptr noundef) local_unnamed_addr #3

declare ptr @g_checksum_get_string(ptr noundef) local_unnamed_addr #3

declare void @g_checksum_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i32 @dt_collection_serialize(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 14 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.b = select i1 %.not, ptr @.str.115, ptr @.str.114 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.b) #16 ; 0 uses
  %i.d = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16 ; 3 uses
  %i.e = sext i32 %1 to i64
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.e, ptr noundef nonnull @.str.112, i32 noundef %i.d) #16 ; 2 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = sub nsw i32 %1, %i.f
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.070 = phi ptr [ %i.au, %bb.g ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %.06169 = phi i32 [ %i.av, %bb.g ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.06368 = phi i32 [ %i.aw, %bb.g ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.117, ptr noundef nonnull %i.b, i32 noundef %.06368) #16 ; 0 uses
  %i.l = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  %i.m = sext i32 %.06169 to i64
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.070, i64 noundef %i.m, ptr noundef nonnull @.str.112, i32 noundef %i.l) #16 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %.070, i64 %i.o ; 2 uses
  %i.q = sub nsw i32 %.06169, %i.n                ; 2 uses
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.b, i32 noundef %.06368) #16 ; 0 uses
  %i.s = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  %i.t = sext i32 %i.q to i64
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.p, i64 noundef %i.t, ptr noundef nonnull @.str.112, i32 noundef %i.s) #16 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.p, i64 %i.v ; 3 uses
  %i.x = sub nsw i32 %i.q, %i.u                   ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.114, i32 noundef %.06368) #16 ; 0 uses
  %i.z = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  %i.aa = sext i32 %i.x to i64
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.w, i64 noundef %i.aa, ptr noundef nonnull @.str.112, i32 noundef %i.z) #16 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.w, i64 %i.ac ; 2 uses
  %i.ae = sub nsw i32 %i.x, %i.ab                 ; 2 uses
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.114, i32 noundef %.06368) #16 ; 0 uses
  %i.ag = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #16
  %i.ah = sext i32 %i.ae to i64
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ad, i64 noundef %i.ah, ptr noundef nonnull @.str.112, i32 noundef %i.ag) #16 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  %i.al = sub nsw i32 %i.ae, %i.ai
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.162 = phi i32 [ %i.al, %bb.b ], [ %i.x, %.lr.ph ] ; 3 uses
  %.1 = phi ptr [ %i.ak, %bb.b ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.121, ptr noundef nonnull %i.b, i32 noundef %.06368) #16 ; 0 uses
  %i.an = call ptr @dt_conf_get_string_const(ptr noundef nonnull %i.a) #16 ; 3 uses
  %.not66 = icmp eq ptr %i.an, null
  br i1 %.not66, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !95
  %.not67 = icmp eq i8 %i.ao, 0
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = sext i32 %.162 to i64
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.1, i64 noundef %i.ap, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.an) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ar = sext i32 %.162 to i64
  %i.as = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.1, i64 noundef %i.ar, ptr noundef nonnull @.str.123) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.064 = phi i32 [ %i.aq, %bb.e ], [ %i.as, %bb.f ] ; 2 uses
  %i.at = sext i32 %.064 to i64
  %i.au = getelementptr inbounds i8, ptr %.1, i64 %i.at
  %i.av = sub nsw i32 %.162, %.064
  %i.aw = add nuw nsw i32 %.06368, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define void @dt_collection_deserialize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 36 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [400 x i8], align 16              ; 6 uses
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %i.h = select i1 %.not, ptr @.str.115, ptr @.str.114 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %0, ptr noundef nonnull @.str.110, ptr noundef nonnull %i.b) #16 ; 0 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !21
  %i.k = or i32 %i.j, %1
  %or.cond.not = icmp eq i32 %i.k, 0
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115) #16 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef 1) #16
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.115) #16 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.115) #16 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.115) #16 ; 0 uses
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.127) #16
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i32 0, ptr %i.e, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i32 0, ptr %i.f, align 4, !tbaa !21
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.h) #16 ; 0 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.q) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.057 = phi ptr [ %0, %bb.c ], [ %i.s, %bb.e ]  ; 3 uses
  %i.r = load i8, ptr %.057, align 1, !tbaa !95   ; 2 uses
  switch i8 %i.r, label %bb.e [
    i8 0, label %.critedge
    i8 58, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.057, i64 1
  br label %bb.d

.critedge:                                        ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %i.t = load i32, ptr %i.b, align 4, !tbaa !21
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %.critedge65

.lr.ph:                                           ; preds = %.critedge
  %i.v = icmp eq i8 %i.r, 58
  %spec.select.idx = zext i1 %i.v to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.057, i64 %spec.select.idx ; 2 uses
  br i1 %.not, label %.lr.ph.split.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge9.us
  %.05670.us = phi i32 [ %i.ak, %.critedge9.us ], [ 0, %.lr.ph ] ; 7 uses
  %.269.us = phi ptr [ %spec.select63.us, %.critedge9.us ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.w = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.269.us, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #16
  %i.x = icmp eq i32 %i.w, 5
  br i1 %i.x, label %bb.f, label %.split.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.117, ptr noundef nonnull %i.h, i32 noundef %.05670.us) #16 ; 0 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.z) #16
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.h, i32 noundef %.05670.us) #16 ; 0 uses
  %i.ab = load i32, ptr %i.d, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.ab) #16
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.114, i32 noundef %.05670.us) #16 ; 0 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.ad) #16
  %i.ae = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.114, i32 noundef %.05670.us) #16 ; 0 uses
  %i.af = load i32, ptr %i.f, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.af) #16
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.121, ptr noundef nonnull %i.h, i32 noundef %.05670.us) #16 ; 0 uses
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.3.us = phi ptr [ %.269.us, %bb.f ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ah = load i8, ptr %.3.us, align 1, !tbaa !95 ; 2 uses
  switch i8 %i.ah, label %bb.h [
    i8 36, label %.critedge9.us
    i8 0, label %.critedge9.us
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.3.us, i64 1
  br label %bb.g

.critedge9.us:                                    ; preds = %bb.g, %bb.g
  %i.aj = icmp eq i8 %i.ah, 36
  %spec.select63.idx.us = zext i1 %i.aj to i64
  %spec.select63.us = getelementptr inbounds nuw i8, ptr %.3.us, i64 %spec.select63.idx.us
  %i.ak = add nuw nsw i32 %.05670.us, 1           ; 2 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !21
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.split.us, label %.critedge65

.lr.ph.split.split:                               ; preds = %.lr.ph, %.critedge9
  %.05670 = phi i32 [ %i.bd, %.critedge9 ], [ 0, %.lr.ph ] ; 5 uses
  %.269 = phi ptr [ %spec.select63, %.critedge9 ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.an = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.269, ptr noundef nonnull @.str.129, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g) #16
  %i.ao = icmp eq i32 %i.an, 3
  br i1 %i.ao, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.lr.ph.split.split
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.117, ptr noundef nonnull %i.h, i32 noundef %.05670) #16 ; 0 uses
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.aq) #16
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.h, i32 noundef %.05670) #16 ; 0 uses
  %i.as = load i32, ptr %i.d, align 4, !tbaa !21
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %i.as) #16
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.121, ptr noundef nonnull %i.h, i32 noundef %.05670) #16 ; 0 uses
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #16
  br label %bb.l

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split.split
  %.us-phi71 = phi i32 [ %.05670, %.lr.ph.split.split ], [ %.05670.us, %.lr.ph.split.us ] ; 4 uses
  %i.au = load i32, ptr %i.b, align 4
  %i.av = icmp eq i32 %i.au, 1
  %or.cond7 = select i1 %.not, i1 %i.av, i1 false
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.us
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115, i32 noundef %.us-phi71) #16 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.115, i32 noundef %.us-phi71) #16 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.ay = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.115, i32 noundef %.us-phi71) #16 ; 0 uses
  call void @dt_conf_set_string(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.127) #16
  br label %.critedge65

bb.k:                                             ; preds = %.split.us
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.116, ptr noundef nonnull %i.h) #16 ; 0 uses
  call void @dt_conf_set_int(ptr noundef nonnull %i.a, i32 noundef %.us-phi71) #16
  br label %.critedge65

bb.l:                                             ; preds = %bb.m, %bb.i
  %.3 = phi ptr [ %.269, %bb.i ], [ %i.bb, %bb.m ] ; 3 uses
  %i.ba = load i8, ptr %.3, align 1, !tbaa !95    ; 2 uses
  switch i8 %i.ba, label %bb.m [
    i8 36, label %.critedge9
    i8 0, label %.critedge9
  ]

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.l

.critedge9:                                       ; preds = %bb.l, %bb.l
  %i.bc = icmp eq i8 %i.ba, 36
  %spec.select63.idx = zext i1 %i.bc to i64
  %spec.select63 = getelementptr inbounds nuw i8, ptr %.3, i64 %spec.select63.idx
  %i.bd = add nuw nsw i32 %.05670, 1              ; 2 uses
  %i.be = load i32, ptr %i.b, align 4, !tbaa !21
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.split.split, label %.critedge65

.critedge65:                                      ; preds = %.critedge9.us, %.critedge9, %.critedge, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.n

bb.n:                                             ; preds = %.critedge65, %bb.b
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !75
  call void @dt_collection_update_query(ptr noundef %i.bg, i32 noundef 1, i32 noundef 45, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @dt_conf_set_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_get_query_part(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %g_strdup_inline.exit30

g_strdup_inline.exit30:                           ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(1) ptr @g_malloc(i64 noundef 1) #15 ; 2 uses
  store i8 0, ptr %i.a, align 1
  store ptr %i.a, ptr %5, align 8, !tbaa !82
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %1, align 1, !tbaa !95
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = icmp eq i32 %2, 1
  br i1 %i.d, label %bb.e, label %g_strdup_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %4, align 4, !tbaa !21
  %i.f = icmp eq i32 %i.e, 0
end_hunk_0
