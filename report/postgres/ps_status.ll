Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ps_status?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@init_ps_display:bb.a

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.q = load ptr, ptr @cluster_name, align 8     ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  %i.t = load i64, ptr @ps_buffer_size, align 8   ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.j, ptr %i.u, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !13

bb.d:                                             ; preds = %._crit_edge
  %i.v = tail call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.t, ptr noundef nonnull @.str.1, ptr noundef %.06) #14 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.w = tail call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.t, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.q, ptr noundef %.06) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr @ps_buffer, align 8        ; 5 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #12 ; 6 uses
  store i64 %i.y, ptr @ps_buffer_fixed_size, align 8
  store i64 %i.y, ptr @ps_buffer_cur_len, align 8
  %i.z = load i8, ptr @update_process_title, align 1, !range !5, !noundef !6
  %i.aa = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %set_ps_display.exit

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr @ps_buffer_nosuffix_len, align 8
  %i.ac = load i64, ptr @ps_buffer_size, align 8  ; 4 uses
  %.not.i.i = icmp ult i64 %i.y, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = xor i64 %i.y, -1
  %i.af = add i64 %i.ac, %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.af, i1 false)
  %i.ag = getelementptr i8, ptr %i.x, i64 %i.ac
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  store i8 0, ptr %i.ah, align 1
  %i.ai = add i64 %i.ac, -1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.ad, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ai, %bb.h ] ; 7 uses
  store i64 %storemerge.i.i, ptr @ps_buffer_cur_len, align 8
  %i.aj = load i64, ptr @last_status_len, align 8 ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, %storemerge.i.i
  br i1 %i.ak, label %bb.k, label %flush_ps_display.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.al = ptrtoaddr ptr %i.x to i64               ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %storemerge.i.i ; 2 uses
  %i.an = sub nuw i64 %i.aj, %storemerge.i.i      ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %flush_ps_display.exit.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.ar = and i64 %i.an, 7
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = icmp ult i64 %i.an, 1025
  %or.cond3.i.i.i = and i1 %i.at, %i.as
  br i1 %or.cond3.i.i.i, label %.lr.ph.preheader.i.i.i, label %flush_ps_display.exit.sink.split.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %i.au = add i64 %i.al, 8
  %i.av = add i64 %i.au, %storemerge.i.i
  %i.aw = add i64 %i.aj, %i.al
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.aw)
  %i.ax = xor i64 %storemerge.i.i, -1
  %i.ay = sub i64 %i.ax, %i.al
  %i.az = add i64 %i.ay, %umax.i.i.i
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8
  br label %flush_ps_display.exit.sink.split.i.i

flush_ps_display.exit.sink.split.i.i:             ; preds = %.lr.ph.preheader.i.i.i, %bb.l, %bb.k
  %.sink.i.i = phi i64 [ %i.bb, %.lr.ph.preheader.i.i.i ], [ %i.an, %bb.l ], [ %i.an, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %.sink.i.i, i1 false)
  br label %flush_ps_display.exit.i.i

flush_ps_display.exit.i.i:                        ; preds = %flush_ps_display.exit.sink.split.i.i, %bb.j
  store i64 %storemerge.i.i, ptr @last_status_len, align 8
  br label %set_ps_display.exit

set_ps_display.exit:                              ; preds = %bb.f, %flush_ps_display.exit.i.i
  store i8 %i.z, ptr @update_process_title, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %set_ps_display.exit
  ret void
}

declare ptr @GetBackendTypeDesc(i32 noundef) local_unnamed_addr #3

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_ps_display_suffix(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @update_process_title, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond.i = select i1 %i.b, i1 %i.d, i1 false
  %i.e = load ptr, ptr @ps_buffer, align 8        ; 8 uses
  %.not.i = icmp ne ptr %i.e, null
  %.0.i = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %.0.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @ps_buffer_nosuffix_len, align 8 ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.f, ptr @ps_buffer_cur_len, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr @ps_buffer_cur_len, align 8 ; 2 uses
  store i64 %i.g, ptr @ps_buffer_nosuffix_len, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.c ] ; 6 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 2 uses
  %i.j = add i64 %i.h, 1                          ; 3 uses
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = load i64, ptr @ps_buffer_size, align 8   ; 4 uses
  %.not7 = icmp ult i64 %i.k, %i.l
  br i1 %.not7, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %i.l, -1                         ; 2 uses
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  store i8 32, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %reass.sub9 = sub i64 %i.l, %i.h
  %i.q = add i64 %reass.sub9, -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %0, i64 %i.q, i1 false)
  %i.r = getelementptr i8, ptr %i.e, i64 %i.l
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  store i8 0, ptr %i.s, align 1
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  store i8 32, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.j
  %i.v = add i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %0, i64 %i.v, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ %i.m, %bb.g ], [ %i.k, %bb.h ] ; 2 uses
  store i64 %.sink, ptr @ps_buffer_cur_len, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.f
  %i.w = phi i64 [ %i.h, %bb.f ], [ %.sink, %.sink.split ] ; 6 uses
  %i.x = load i64, ptr @last_status_len, align 8  ; 3 uses
  %i.y = icmp ugt i64 %i.x, %i.w
  br i1 %i.y, label %bb.j, label %flush_ps_display.exit

bb.j:                                             ; preds = %bb.i
  %i.z = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.w ; 2 uses
  %i.ab = sub nuw i64 %i.x, %i.w                  ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = and i64 %i.ac, 7
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %flush_ps_display.exit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.af = and i64 %i.ab, 7
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = icmp ult i64 %i.ab, 1025
  %or.cond3.i = and i1 %i.ah, %i.ag
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %flush_ps_display.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ai = add i64 %i.w, 8
  %i.aj = add i64 %i.ai, %i.z
  %i.ak = add i64 %i.x, %i.z
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = xor i64 %i.w, -1
  %i.am = sub i64 %i.al, %i.z
  %i.an = add i64 %i.am, %umax.i
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8
  br label %flush_ps_display.exit.sink.split

flush_ps_display.exit.sink.split:                 ; preds = %bb.j, %bb.k, %.lr.ph.preheader.i
  %.sink17 = phi i64 [ %i.ap, %.lr.ph.preheader.i ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %.sink17, i1 false)
  br label %flush_ps_display.exit

flush_ps_display.exit:                            ; preds = %flush_ps_display.exit.sink.split, %bb.i
  store i64 %i.w, ptr @last_status_len, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %flush_ps_display.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_ps_display_remove_suffix() local_unnamed_addr #8 {
  %1 = load i8, ptr @update_process_title, align 1, !range !5, !noundef !6
  %2 = trunc nuw i8 %1 to i1
  %3 = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %4 = trunc nuw i8 %3 to i1
  %or.cond.i = select i1 %2, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.a, label %bb.e

bb.a:                                             ; preds = %0
  %i.a = load ptr, ptr @ps_buffer, align 8        ; 3 uses
  %.not.i = icmp ne ptr %i.a, null
  %i.b = load i64, ptr @ps_buffer_nosuffix_len, align 8 ; 8 uses
  %i.c = icmp ne i64 %i.b, 0
  %or.cond.not = select i1 %.not.i, i1 %i.c, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 3 uses
  store i8 0, ptr %i.d, align 1
  store i64 %i.b, ptr @ps_buffer_cur_len, align 8
  store i64 0, ptr @ps_buffer_nosuffix_len, align 8
  %i.e = load i64, ptr @last_status_len, align 8  ; 3 uses
  %i.f = icmp ugt i64 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %flush_ps_display.exit

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.h = sub nuw i64 %i.e, %i.b                   ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %flush_ps_display.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %i.h, 7
  %i.m = icmp eq i64 %i.l, 0
  %i.n = icmp ult i64 %i.h, 1025
  %or.cond3.i = and i1 %i.n, %i.m
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %flush_ps_display.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.o = add i64 %i.b, 8
  %i.p = add i64 %i.o, %i.g
  %i.q = add i64 %i.e, %i.g
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.b, -1
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, %umax.i
  %i.u = and i64 %i.t, -8
  %i.v = add i64 %i.u, 8
  br label %flush_ps_display.exit.sink.split

flush_ps_display.exit.sink.split:                 ; preds = %bb.c, %bb.d, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.v, %.lr.ph.preheader.i ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %.sink, i1 false)
  br label %flush_ps_display.exit

flush_ps_display.exit:                            ; preds = %flush_ps_display.exit.sink.split, %bb.b
  store i64 %i.b, ptr @last_status_len, align 8
  br label %bb.e

bb.e:                                             ; preds = %0, %bb.a, %flush_ps_display.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @set_ps_display_with_len(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @update_process_title, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @IsUnderPostmaster, align 1, !range !5
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond.i = select i1 %i.b, i1 %i.d, i1 false
  %i.e = load ptr, ptr @ps_buffer, align 8        ; 5 uses
  %.not.i = icmp ne ptr %i.e, null
  %.0.i = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %.0.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr @ps_buffer_nosuffix_len, align 8
  %i.f = load i64, ptr @ps_buffer_fixed_size, align 8 ; 3 uses
  %i.g = add i64 %i.f, %1                         ; 2 uses
  %i.h = load i64, ptr @ps_buffer_size, align 8   ; 4 uses
  %.not = icmp ult i64 %i.g, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.h, %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %0, i64 %i.k, i1 false)
  %i.l = getelementptr i8, ptr %i.e, i64 %i.h
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  store i8 0, ptr %i.m, align 1
  %i.n = add i64 %i.h, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %0, i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i64 [ %i.g, %bb.d ], [ %i.n, %bb.c ] ; 7 uses
  store i64 %storemerge, ptr @ps_buffer_cur_len, align 8
  %i.p = load i64, ptr @last_status_len, align 8  ; 3 uses
  %i.q = icmp ugt i64 %i.p, %storemerge
  br i1 %i.q, label %bb.f, label %flush_ps_display.exit

bb.f:                                             ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 %storemerge ; 2 uses
  %i.t = sub nuw i64 %i.p, %storemerge            ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %flush_ps_display.exit.sink.split

bb.g:                                             ; preds = %bb.f
  %i.x = and i64 %i.t, 7
  %i.y = icmp eq i64 %i.x, 0
  %i.z = icmp ult i64 %i.t, 1025
  %or.cond3.i = and i1 %i.z, %i.y
  br i1 %or.cond3.i, label %.lr.ph.preheader.i, label %flush_ps_display.exit.sink.split

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aa = add i64 %storemerge, 8
  %i.ab = add i64 %i.aa, %i.r
  %i.ac = add i64 %i.p, %i.r
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac)
  %i.ad = xor i64 %storemerge, -1
  %i.ae = sub i64 %i.ad, %i.r
  %i.af = add i64 %i.ae, %umax.i
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8
  br label %flush_ps_display.exit.sink.split

flush_ps_display.exit.sink.split:                 ; preds = %bb.f, %bb.g, %.lr.ph.preheader.i
  %.sink = phi i64 [ %i.ah, %.lr.ph.preheader.i ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %.sink, i1 false)
  br label %flush_ps_display.exit

flush_ps_display.exit:                            ; preds = %flush_ps_display.exit.sink.split, %bb.e
  store i64 %storemerge, ptr @last_status_len, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %flush_ps_display.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @get_ps_display(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @ps_buffer, align 8        ; 2 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  %i.b = load i64, ptr @ps_buffer_cur_len, align 8
  %i.c = load i64, ptr @ps_buffer_fixed_size, align 8 ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %.sink = select i1 %.not, i32 0, i32 %i.e
  %.0 = select i1 %.not, ptr @.str.3, ptr %i.f
  store i32 %.sink, ptr %0, align 4
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = distinct !{!7, !4, !11}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !4, !14, !15}
!13 = distinct !{!13, !4, !15, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
