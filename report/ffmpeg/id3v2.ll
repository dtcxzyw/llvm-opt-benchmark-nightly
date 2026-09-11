Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/id3v2?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@id3v2_read_internal:bb.a
  %.not.i.not.i44.i = icmp eq i8 %i.sb, 0
  br i1 %.not.i.not.i44.i, label %get_date_tag.exit45.i, label %bb.dk

bb.dk:                                            ; preds = %is_number.exit.i43.i, %bb.dj, %get_date_tag.exit.i
  %i.se = load ptr, ptr %1, align 8, !tbaa !63
  %i.sf = call ptr @av_dict_get(ptr noundef %i.se, ptr noundef nonnull @.str.121, ptr noundef null, i32 noundef 1) #10 ; 2 uses
  %.not.i46.i = icmp eq ptr %i.sf, null
  br i1 %.not.i46.i, label %get_date_tag.exit53.thread.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !65 ; 3 uses
  %i.si = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sh) #11
  %i.sj = icmp eq i64 %i.si, 4
  br i1 %i.sj, label %.preheader.i48.i, label %get_date_tag.exit53.thread.i

.preheader.i48.i:                                 ; preds = %bb.dl, %.preheader.i48.i
  %.0.i.i49.i = phi ptr [ %i.sm, %.preheader.i48.i ], [ %i.sh, %bb.dl ] ; 2 uses
  %i.sk = load i8, ptr %.0.i.i49.i, align 1, !tbaa !9 ; 2 uses
  %i.sl = add i8 %i.sk, -48
  %or.cond.i.i50.i = icmp ult i8 %i.sl, 10
  %i.sm = getelementptr inbounds nuw i8, ptr %.0.i.i49.i, i64 1
  br i1 %or.cond.i.i50.i, label %.preheader.i48.i, label %is_number.exit.i51.i, !llvm.loop !56

is_number.exit.i51.i:                             ; preds = %.preheader.i48.i
  %.not.i.not.i52.i = icmp eq i8 %i.sk, 0
  br i1 %.not.i.not.i52.i, label %get_date_tag.exit45.i, label %get_date_tag.exit53.thread.i

get_date_tag.exit45.i:                            ; preds = %is_number.exit.i51.i, %is_number.exit.i43.i
  %i.sn = phi ptr [ %i.ry, %is_number.exit.i43.i ], [ %i.sh, %is_number.exit.i51.i ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 2
  %i.sq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.so, i64 noundef 13, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.sp, ptr noundef nonnull %i.sn) #10 ; 0 uses
  %i.sr = call i32 @av_dict_set(ptr noundef nonnull %1, ptr noundef nonnull @.str.120, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  %i.ss = call i32 @av_dict_set(ptr noundef nonnull %1, ptr noundef nonnull @.str.121, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  %i.st = load ptr, ptr %1, align 8, !tbaa !63
  %i.su = call ptr @av_dict_get(ptr noundef %i.st, ptr noundef nonnull @.str.123, ptr noundef null, i32 noundef 1) #10 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.su, null
  br i1 %.not.i54.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %get_date_tag.exit45.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !65 ; 3 uses
  %i.sx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sw) #11
  %i.sy = icmp eq i64 %i.sx, 4
  br i1 %i.sy, label %.preheader.i56.i, label %bb.dn

.preheader.i56.i:                                 ; preds = %bb.dm, %.preheader.i56.i
  %.0.i.i57.i = phi ptr [ %i.tb, %.preheader.i56.i ], [ %i.sw, %bb.dm ] ; 2 uses
  %i.sz = load i8, ptr %.0.i.i57.i, align 1, !tbaa !9 ; 2 uses
  %i.ta = add i8 %i.sz, -48
  %or.cond.i.i58.i = icmp ult i8 %i.ta, 10
  %i.tb = getelementptr inbounds nuw i8, ptr %.0.i.i57.i, i64 1
  br i1 %or.cond.i.i58.i, label %.preheader.i56.i, label %is_number.exit.i59.i, !llvm.loop !56

is_number.exit.i59.i:                             ; preds = %.preheader.i56.i
  %.not.i.not.i60.i = icmp eq i8 %i.sz, 0
  br i1 %.not.i.not.i60.i, label %get_date_tag.exit61.i, label %bb.dn

bb.dn:                                            ; preds = %is_number.exit.i59.i, %bb.dm, %get_date_tag.exit45.i
  %i.tc = load ptr, ptr %1, align 8, !tbaa !63
  %i.td = call ptr @av_dict_get(ptr noundef %i.tc, ptr noundef nonnull @.str.124, ptr noundef null, i32 noundef 1) #10 ; 2 uses
  %.not.i62.i = icmp eq ptr %i.td, null
  br i1 %.not.i62.i, label %get_date_tag.exit53.thread.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !65 ; 3 uses
  %i.tg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tf) #11
  %i.th = icmp eq i64 %i.tg, 4
  br i1 %i.th, label %.preheader.i64.i, label %get_date_tag.exit53.thread.i

.preheader.i64.i:                                 ; preds = %bb.do, %.preheader.i64.i
  %.0.i.i65.i = phi ptr [ %i.tk, %.preheader.i64.i ], [ %i.tf, %bb.do ] ; 2 uses
  %i.ti = load i8, ptr %.0.i.i65.i, align 1, !tbaa !9 ; 2 uses
  %i.tj = add i8 %i.ti, -48
  %or.cond.i.i66.i = icmp ult i8 %i.tj, 10
  %i.tk = getelementptr inbounds nuw i8, ptr %.0.i.i65.i, i64 1
  br i1 %or.cond.i.i66.i, label %.preheader.i64.i, label %is_number.exit.i67.i, !llvm.loop !56

is_number.exit.i67.i:                             ; preds = %.preheader.i64.i
  %.not.i.not.i68.i = icmp eq i8 %i.ti, 0
  br i1 %.not.i.not.i68.i, label %get_date_tag.exit61.i, label %get_date_tag.exit53.thread.i

get_date_tag.exit61.i:                            ; preds = %is_number.exit.i67.i, %is_number.exit.i59.i
  %i.tl = phi ptr [ %i.sw, %is_number.exit.i59.i ], [ %i.tf, %is_number.exit.i67.i ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 2
  %i.to = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.tm, i64 noundef 7, ptr noundef nonnull @.str.125, ptr noundef nonnull %i.tl, ptr noundef nonnull %i.tn) #10 ; 0 uses
  %i.tp = call i32 @av_dict_set(ptr noundef nonnull %1, ptr noundef nonnull @.str.123, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  %i.tq = call i32 @av_dict_set(ptr noundef nonnull %1, ptr noundef nonnull @.str.124, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  br label %get_date_tag.exit53.thread.i

get_date_tag.exit53.thread.i:                     ; preds = %get_date_tag.exit61.i, %is_number.exit.i67.i, %bb.do, %bb.dn, %is_number.exit.i51.i, %bb.dl, %bb.dk
  %i.tr = load i8, ptr %i.i, align 16, !tbaa !9
  %.not29.i = icmp eq i8 %i.tr, 0
  br i1 %.not29.i, label %merge_date.exit, label %bb.dp

bb.dp:                                            ; preds = %get_date_tag.exit53.thread.i
  %i.ts = call i32 @av_dict_set(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.i, i32 noundef 0) #10 ; 0 uses
  br label %merge_date.exit

merge_date.exit:                                  ; preds = %bb.dh, %bb.di, %is_number.exit.i35.i, %get_date_tag.exit53.thread.i, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  br i1 %.not, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %merge_date.exit
  %i.tt = load ptr, ptr %7, align 8, !tbaa !33
  store ptr %i.tt, ptr %4, align 8, !tbaa !12
  br label %bb.dr

bb.dr:                                            ; preds = %merge_date.exit, %bb.dq, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_id3v2_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = zext i32 %3 to i64
  tail call fastcc void @id3v2_read_internal(ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_id3v2_free_extra_meta(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !12
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %get_extra_meta_func.exit
  %storemerge10 = phi ptr [ %i.u, %get_extra_meta_func.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %storemerge10, align 8, !tbaa !35 ; 5 uses
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %get_extra_meta_func.exit, label %.split.i

.split.i:                                         ; preds = %.lr.ph
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1112491335
  %i.f = zext i1 %i.e to i32
  %.not14.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i, label %select.unfold, label %.split.split.1.i

.split.split.1.i:                                 ; preds = %.split.i
  %i.g = load i32, ptr %i.c, align 1
  %i.h = icmp ne i32 %i.g, 1128878145
  %i.i = zext i1 %i.h to i32
  %.not14.1.i = icmp eq i32 %i.i, 0
  br i1 %.not14.1.i, label %select.unfold, label %.split.split.2.i

.split.split.2.i:                                 ; preds = %.split.split.1.i
  %i.j = load i32, ptr %i.c, align 1
  %i.k = icmp ne i32 %i.j, 1346455619
  %i.l = zext i1 %i.k to i32
  %.not14.2.i = icmp eq i32 %i.l, 0
  br i1 %.not14.2.i, label %select.unfold, label %.split16.sink.split.i

.split16.sink.split.i:                            ; preds = %.split.split.2.i
  %i.m = load i32, ptr %i.c, align 1
  %i.n = icmp ne i32 %i.m, 1447645776
  %i.o = zext i1 %i.n to i32
  %.not14.3.i = icmp eq i32 %i.o, 0
  br i1 %.not14.3.i, label %select.unfold, label %get_extra_meta_func.exit

select.unfold:                                    ; preds = %.split16.sink.split.i, %.split.split.2.i, %.split.split.1.i, %.split.i
  %.09.split.i.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 64), %.split.split.2.i ], [ @id3v2_extra_meta_funcs, %.split.i ], [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 32), %.split.split.1.i ], [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 96), %.split16.sink.split.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.09.split.i.ph, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge10, i64 16
  call void %i.q(ptr noundef nonnull %i.r) #10
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %get_extra_meta_func.exit

get_extra_meta_func.exit:                         ; preds = %.lr.ph, %.split16.sink.split.i, %select.unfold
  %i.s = phi ptr [ %storemerge10, %.lr.ph ], [ %storemerge10, %.split16.sink.split.i ], [ %.pre, %select.unfold ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 3 uses
  call void @av_freep(ptr noundef nonnull %i.a) #10
  store ptr %i.u, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %get_extra_meta_func.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_extra_meta_func(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %.not12 = icmp eq ptr %0, null
  %2 = add nuw nsw i32 %1, 3
  %3 = zext nneg i32 %2 to i64                    ; 7 uses
  br i1 %.not12, label %.split16, label %.split

.split:                                           ; preds = %bb.a
  %.not13 = icmp eq i32 %1, 0
  br i1 %.not13, label %.split.split.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.127, i64 %3)
  %.not14 = icmp eq i32 %bcmp, 0
  br i1 %.not14, label %.split16, label %.split.split.1

.split.split.us:                                  ; preds = %.split
  %bcmp.us19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.126, i64 %3)
  %.not14.us20 = icmp eq i32 %bcmp.us19, 0
  br i1 %.not14.us20, label %.split16, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split.split.us
  %bcmp.us = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.128, i64 %3)
  %.not14.us = icmp eq i32 %bcmp.us, 0
  br i1 %.not14.us, label %.split16, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %bcmp.us.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.70, i64 %3)
  %.not14.us.1 = icmp eq i32 %bcmp.us.1, 0
  br i1 %.not14.us.1, label %.split16, label %.split16.sink.split, !llvm.loop !69

.split.split.1:                                   ; preds = %.split.split.preheader
  %bcmp.1 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.68, i64 %3)
  %.not14.1 = icmp eq i32 %bcmp.1, 0
  br i1 %.not14.1, label %.split16, label %.split.split.2

.split.split.2:                                   ; preds = %.split.split.1
  %bcmp.2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.70, i64 %3)
  %.not14.2 = icmp eq i32 %bcmp.2, 0
  br i1 %.not14.2, label %.split16, label %.split16.sink.split

.split16.sink.split:                              ; preds = %.split.split.2, %.lr.ph.1
  %bcmp.3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.71, i64 %3)
  %.not14.3 = icmp eq i32 %bcmp.3, 0
  %spec.select27 = select i1 %.not14.3, ptr getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 96), ptr null
  br label %.split16

.split16:                                         ; preds = %.split16.sink.split, %.split.split.preheader, %.split.split.1, %.split.split.2, %.lr.ph.preheader, %.lr.ph.1, %.split.split.us, %bb.a
  %.09.split = phi ptr [ null, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 64), %.split.split.2 ], [ @id3v2_extra_meta_funcs, %.split.split.us ], [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 32), %.split.split.1 ], [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 32), %.lr.ph.preheader ], [ getelementptr inbounds nuw (i8, ptr @id3v2_extra_meta_funcs, i64 64), %.lr.ph.1 ], [ @id3v2_extra_meta_funcs, %.split.split.preheader ], [ %spec.select27, %.split16.sink.split ]
  ret ptr %.09.split
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_id3v2_parse_apic(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02130 = phi ptr [ %1, %.lr.ph ], [ %i.ag, %bb.g ] ; 6 uses
  %i.c = load ptr, ptr %.02130, align 8, !tbaa !35
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(5) @.str.68) #11
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.02130, i64 16
  %i.f = tail call i32 @ff_add_attached_pic(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 0) #10 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02130, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store i32 %i.o, ptr %i.r, align 4, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84
  %i.u = load i64, ptr %i.t, align 1, !tbaa !9
  %i.v = icmp eq i64 %i.u, 727905341920923785
  %spec.store.select = select i1 %i.v, i32 61, i32 %i.o
  store i32 %spec.store.select, ptr %i.r, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.02130, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9
  %.not25 = icmp eq i8 %i.y, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.aa = tail call i32 @av_dict_set(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.x, i32 noundef 0) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %.02130, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !41
  %i.ae = tail call i32 @av_dict_set(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.69, ptr noundef %i.ad, i32 noundef 0) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.02130, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.g, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ff_add_attached_pic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_id3v2_parse_chapters(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01531 = phi i32 [ %.116.ph, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.01730 = phi ptr [ %i.t, %bb.d ], [ %1, %bb.a ] ; 6 uses
  %i.a = load ptr, ptr %.01730, align 8, !tbaa !35
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(5) @.str.70) #11
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.01730, i64 16
  %i.d = add i32 %.01531, 1                       ; 2 uses
  %i.e = zext i32 %.01531 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.01730, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.01730, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.m = tail call ptr @avpriv_new_chapter(ptr noundef %0, i64 noundef %i.e, i64 4294967296001, i64 noundef %i.h, i64 noundef %i.k, ptr noundef %i.l) #10 ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.01730, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87
  %i.q = tail call i32 @av_dict_copy(ptr noundef nonnull %i.n, ptr noundef %i.p, i32 noundef 0) #10 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.116.ph = phi i32 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.01531, %.lr.ph ]
  %i.s = getelementptr inbounds nuw i8, ptr %.01730, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ %i.q, %bb.c ], [ 0, %bb.d ]
  ret i32 %spec.select
}

declare ptr @avpriv_new_chapter(ptr noundef, i64 noundef, i64, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @av_dict_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_id3v2_parse_priv_dict(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.AVBPrint, align 8           ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.not41 = icmp eq ptr %1, null
  br i1 %.not41, label %.loopexit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a, %bb.j
  %.02843 = phi ptr [ %i.ab, %bb.j ], [ %1, %bb.a ] ; 5 uses
  %i.b = load ptr, ptr %.02843, align 8, !tbaa !35
  %i.c = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(5) @.str.71) #11
  %.not34 = icmp eq i32 %i.c, 0
  br i1 %.not34, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.lr.ph45
  %i.d = getelementptr inbounds nuw i8, ptr %.02843, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = call ptr (ptr, ...) @av_asprintf(ptr noundef nonnull @.str.72, ptr noundef %i.e) #10 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.02843, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = add i32 %i.i, 1
  call void @av_bprint_init(ptr noundef nonnull %2, i32 noundef %i.j, i32 noundef -1) #10
  %i.k = load i32, ptr %i.h, align 8, !tbaa !46
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02843, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9     ; 4 uses
  %i.p = add i8 %i.o, -127
  %or.cond = icmp ult i8 %i.p, -95
  %i.q = icmp eq i8 %i.o, 92
  %or.cond35 = or i1 %i.q, %or.cond
  br i1 %or.cond35, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = zext i8 %i.o to i32
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.73, i32 noundef %i.r) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @av_bprint_chars(ptr noundef nonnull %2, i8 noundef signext %i.o, i32 noundef 1) #10
  br label %bb.g

end_hunk_0
