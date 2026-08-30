Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/psset?download=true
begin_hunk_0_@psset_alloc_container_insert:bb.a
  store ptr %1, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !40
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %hpdata_empty_list_prepend.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  store ptr %i.i, ptr %i.d, align 8, !tbaa !40
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %1, ptr %i.k, align 8, !tbaa !40
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40
  store ptr %i.n, ptr %i.e, align 8, !tbaa !40
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.o, ptr %i.r, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %1, ptr %i.t, align 8, !tbaa !40
  br label %hpdata_empty_list_prepend.exit

hpdata_empty_list_prepend.exit:                   ; preds = %bb.b, %bb.c
  store ptr %1, ptr %i.c, align 8, !tbaa !37
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 96
  %.val.i = load i64, ptr %i.u, align 8, !tbaa !35
  %i.v = shl i64 %.val.i, 12
  %i.w = tail call i64 @je_sz_psz_quantize_floor(i64 noundef %i.v) #9 ; 4 uses
  %i.x = icmp ugt i64 %i.w, 8070450532247928832
  br i1 %i.x, label %psset_hpdata_heap_index.exit.i, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nsw i64 %i.w, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false)
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.ab) ; 2 uses
  %i.ad = icmp samesign ult i64 %i.w, 16385
  %i.ae = add nuw nsw i32 %i.ac, 11
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = select i1 %i.ad, i64 12, i64 %i.af
  %i.ah = lshr i64 %i.z, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 3
  %i.ak = shl nuw nsw i32 %i.ac, 2
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = zext nneg i32 %i.al to i64
  br label %psset_hpdata_heap_index.exit.i

psset_hpdata_heap_index.exit.i:                   ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i64 [ %i.am, %bb.e ], [ 199, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.i.i.i ; 2 uses
  %i.ao = tail call zeroext i1 @je_hpdata_age_heap_empty(ptr noundef %i.an) #9
  br i1 %i.ao, label %bb.f, label %psset_hpdata_heap_insert.exit

bb.f:                                             ; preds = %psset_hpdata_heap_index.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.aq = lshr i64 %.0.i.i.i, 6
  %i.ar = and i64 %.0.i.i.i, 63
  %i.as = shl nuw i64 1, %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !12
  %i.av = or i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !12
  br label %psset_hpdata_heap_insert.exit

psset_hpdata_heap_insert.exit:                    ; preds = %psset_hpdata_heap_index.exit.i, %bb.f
  tail call void @je_hpdata_age_heap_insert(ptr noundef %i.an, ptr noundef nonnull %1) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %psset_hpdata_heap_insert.exit, %hpdata_empty_list_prepend.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_psset_pick_alloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hpdata_age_heap_enumerate_helper_t, align 8 ; 5 uses
  %i.a = tail call i64 @je_sz_psz_quantize_ceil(i64 noundef %1) #9 ; 4 uses
  %i.b = icmp ugt i64 %i.a, 8070450532247928832
  br i1 %i.b, label %sz_psz2ind.exit22, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.a, -1                     ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 false)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.f) ; 2 uses
  %i.h = icmp samesign ult i64 %i.a, 16385
  %i.i = add nuw nsw i32 %i.g, 11
  %i.j = zext nneg i32 %i.i to i64
  %i.k = select i1 %i.h, i64 12, i64 %i.j
  %i.l = lshr i64 %i.d, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 3
  %i.o = shl nuw nsw i32 %i.g, 2
  %i.p = or disjoint i32 %i.n, %i.o
  br label %sz_psz2ind.exit22

sz_psz2ind.exit22:                                ; preds = %bb.a, %bb.b
  %.0.i21 = phi i32 [ %i.p, %bb.b ], [ 199, %bb.a ] ; 2 uses
  %i.q = tail call i64 @je_sz_psz_quantize_floor(i64 noundef %1) #9 ; 4 uses
  %i.r = icmp ugt i64 %i.q, 8070450532247928832
  br i1 %i.r, label %sz_psz2ind.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %sz_psz2ind.exit22
  %i.s = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.q, -1                     ; 2 uses
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 false)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.v) ; 2 uses
  %i.x = icmp samesign ult i64 %i.q, 16385
  %i.y = add nuw nsw i32 %i.w, 11
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = select i1 %i.x, i64 12, i64 %i.z
  %i.ab = lshr i64 %i.t, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %i.ae = shl nuw nsw i32 %i.w, 2
  %i.af = or disjoint i32 %i.ad, %i.ae
  br label %sz_psz2ind.exit

sz_psz2ind.exit:                                  ; preds = %sz_psz2ind.exit22, %bb.c
  %.0.i = phi i32 [ %i.af, %bb.c ], [ 199, %sz_psz2ind.exit22 ] ; 2 uses
  %i.ag = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !49, !range !26, !noundef !27
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = icmp samesign ult i32 %.0.i, %.0.i21
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %psset_enumerate_search.exit.thread

bb.d:                                             ; preds = %sz_psz2ind.exit
  %i.aj = zext nneg i32 %.0.i to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 3 uses
  %i.al = tail call zeroext i1 @je_hpdata_age_heap_empty(ptr noundef %i.ak) #9
  br i1 %i.al, label %psset_enumerate_search.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @je_hpdata_age_heap_enumerate_prepare(ptr noundef %i.ak, ptr noundef nonnull %2, i16 noundef zeroext 32, i16 noundef zeroext 32) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.am = call ptr @je_hpdata_age_heap_enumerate_next(ptr noundef %i.ak, ptr noundef nonnull %2) #9 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %psset_enumerate_search.exit.thread25, label %bb.g

psset_enumerate_search.exit.thread25:             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %psset_enumerate_search.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %i.am, i64 96
  %.val.i = load i64, ptr %i.an, align 8, !tbaa !35
  %.not10.i = icmp ult i64 %.val.i, %1
  br i1 %.not10.i, label %bb.f, label %psset_enumerate_search.exit, !llvm.loop !50

psset_enumerate_search.exit:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.i

psset_enumerate_search.exit.thread:               ; preds = %bb.d, %psset_enumerate_search.exit.thread25, %sz_psz2ind.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ap = zext nneg i32 %.0.i21 to i64            ; 2 uses
  %i.aq = lshr i64 %i.ap, 6                       ; 4 uses
  %i.ar = and i64 %i.ap, 63
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !12
  %notmask.i.i = shl nsw i64 -1, %i.ar
  %.040.i.i = and i64 %i.at, %notmask.i.i         ; 2 uses
  %i.au = icmp eq i64 %.040.i.i, 0
  br i1 %i.au, label %.lr.ph.i.preheader, label %fb_ffs.exit

.lr.ph.i.preheader:                               ; preds = %psset_enumerate_search.exit.thread
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %fb_ffs.exit.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  br label %.lr.ph, !llvm.loop !51

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i4.i44 = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.aq, %.lr.ph.i.preheader ]
  %i.aw = add nuw nsw i64 %.039.i4.i44, 1         ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !12 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i, label %fb_ffs.exit, !llvm.loop !51

fb_ffs.exit:                                      ; preds = %.lr.ph, %psset_enumerate_search.exit.thread
  %.141.i.lcssa.i = phi i64 [ %.040.i.i, %psset_enumerate_search.exit.thread ], [ %i.ay, %.lr.ph ]
  %.039.i.lcssa.i = phi i64 [ %i.aq, %psset_enumerate_search.exit.thread ], [ %i.aw, %.lr.ph ]
  %i.ba = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i, i1 true)
  %i.bb = shl i64 %.039.i.lcssa.i, 6
  %.masked = and i64 %i.bb, 4294967232
  %i.bc = or disjoint i64 %.masked, %i.ba         ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 64
  br i1 %i.bd, label %fb_ffs.exit.thread, label %bb.h

fb_ffs.exit.thread:                               ; preds = %.lr.ph.i.preheader, %fb_ffs.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4272
  %.val = load ptr, ptr %i.be, align 8, !tbaa !37
  br label %bb.i

bb.h:                                             ; preds = %fb_ffs.exit
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc
  %i.bg = call ptr @je_hpdata_age_heap_first(ptr noundef %i.bf) #9
  br label %bb.i

bb.i:                                             ; preds = %psset_enumerate_search.exit, %fb_ffs.exit.thread, %bb.h
  %.1 = phi ptr [ %i.am, %psset_enumerate_search.exit ], [ %.val, %fb_ffs.exit.thread ], [ %i.bg, %bb.h ]
  ret ptr %.1
}

declare i64 @je_sz_psz_quantize_ceil(i64 noundef) local_unnamed_addr #2

declare i64 @je_sz_psz_quantize_floor(i64 noundef) local_unnamed_addr #2

declare ptr @je_hpdata_age_heap_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @je_psset_pick_purge(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4280 ; 2 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5312
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.us.preheader, label %fb_fls.exit.us

.lr.ph.i.us.preheader:                            ; preds = %.split.us
  %i.g = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %fb_fls.exit.thread, label %fb_fls.exit.us

fb_fls.exit.us:                                   ; preds = %.lr.ph.i.us.preheader, %.split.us
  %.141.i.lcssa.i.us = phi i64 [ %i.e, %.split.us ], [ %i.g, %.lr.ph.i.us.preheader ]
  %.039.i.lcssa.i.us = phi i64 [ 64, %.split.us ], [ 0, %.lr.ph.i.us.preheader ]
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i.us, i1 true)
  %i.j = or disjoint i64 %.039.i.lcssa.i.us, %i.i
  %i.k = xor i64 %i.j, 63
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.k
  %.val.us = load ptr, ptr %i.l, align 8, !tbaa !37
  br label %fb_fls.exit.thread

.split:                                           ; preds = %bb.a, %bb.c
  %.015 = phi i64 [ %i.aj, %bb.c ], [ 127, %bb.a ] ; 2 uses
  %i.m = lshr i64 %.015, 6                        ; 4 uses
  %i.n = and i64 %.015, 63
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !12
  %i.q = shl i64 2, %i.n
  %i.r = add i64 %i.q, -1
  %.040.i.i = and i64 %i.r, %i.p                  ; 2 uses
  %i.s = icmp eq i64 %.040.i.i, 0
  br i1 %i.s, label %.lr.ph.i.preheader, label %fb_fls.exit

.lr.ph.i.preheader:                               ; preds = %.split
  %i.t = icmp eq i64 %i.m, 0
  br i1 %i.t, label %fb_fls.exit.thread, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.u = icmp eq i64 %i.v, 0
  br i1 %i.u, label %fb_fls.exit.thread, label %.lr.ph, !llvm.loop !51

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.039.i4.i47 = phi i64 [ %i.v, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ]
  %i.v = add nsw i64 %.039.i4.i47, -1             ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !12   ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %fb_fls.exit, !llvm.loop !51

fb_fls.exit:                                      ; preds = %.lr.ph, %.split
  %.141.i.lcssa.i = phi i64 [ %.040.i.i, %.split ], [ %i.x, %.lr.ph ]
  %.039.i.lcssa.i = phi i64 [ %i.m, %.split ], [ %i.v, %.lr.ph ]
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.141.i.lcssa.i, i1 true)
  %i.aa = shl nuw nsw i64 %.039.i.lcssa.i, 6
  %i.ab = or disjoint i64 %i.aa, %i.z             ; 2 uses
  %i.ac = xor i64 %i.ab, 63                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !37 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.af = tail call i32 @je_nstime_compare(ptr noundef nonnull %i.ae, ptr noundef nonnull %1) #9
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %fb_fls.exit.thread, label %bb.b

bb.b:                                             ; preds = %fb_fls.exit
  %i.ah = icmp eq i64 %i.ab, 63
  br i1 %i.ah, label %fb_fls.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = add nuw nsw i64 %i.ac, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  br label %.split

fb_fls.exit.thread:                               ; preds = %bb.b, %fb_fls.exit, %.lr.ph.i.preheader, %.lr.ph.i, %.lr.ph.i.us.preheader, %fb_fls.exit.us
  %.4 = phi ptr [ null, %.lr.ph.i.us.preheader ], [ null, %.lr.ph.i ], [ %.val.us, %fb_fls.exit.us ], [ null, %bb.b ], [ %.val, %fb_fls.exit ], [ null, %.lr.ph.i.preheader ]
  ret ptr %.4
}

declare i32 @je_nstime_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @je_psset_pick_hugify(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5320
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  ret ptr %.val
}

; Function Attrs: nounwind uwtable
define hidden void @je_psset_insert(ptr noundef %0, ptr noundef initializes((36, 37)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.a, align 4, !tbaa !52
  tail call fastcc void @psset_stats_insert(ptr noundef %0, ptr noundef %1)
  %i.b = getelementptr i8, ptr %1, i64 17
  %.val = load i8, ptr %i.b, align 1, !tbaa !44, !range !26, !noundef !27
  %i.c = trunc nuw i8 %.val to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @psset_alloc_container_insert(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %1, i64 19
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !41, !range !26, !noundef !27
  %i.e = trunc nuw i8 %.val.i to i1
  br i1 %i.e, label %bb.d, label %psset_maybe_insert_purge_list.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 104
  %.val6.i.i = load i64, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %i.g = icmp eq i64 %.val6.i.i, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %1, i64 16
  %.val9.i.i = load i8, ptr %i.h, align 8, !tbaa !33, !range !26, !noundef !27
  %i.i = trunc nuw i8 %.val9.i.i to i1
  %..i.i = select i1 %i.i, i64 127, i64 126
  br label %psset_purge_list_ind.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 176
  %.val7.i.i = load i64, ptr %i.j, align 8, !tbaa !29
  %i.k = sub i64 %.val7.i.i, %.val6.i.i
  %i.l = shl i64 %i.k, 12
  %i.m = tail call i64 @je_sz_psz_quantize_floor(i64 noundef %i.l) #9 ; 4 uses
  %i.n = icmp ugt i64 %i.m, 8070450532247928832
  br i1 %i.n, label %sz_psz2ind.exit.i.i, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nsw i64 %i.m, -1                     ; 2 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 false)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = tail call i32 @llvm.usub.sat.i32(i32 50, i32 %i.r) ; 2 uses
  %i.t = icmp samesign ult i64 %i.m, 16385
  %i.u = add nuw nsw i32 %i.s, 11
  %i.v = zext nneg i32 %i.u to i64
  %i.w = select i1 %i.t, i64 12, i64 %i.v
  %i.x = lshr i64 %i.p, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = shl nuw nsw i32 %i.s, 3
  %i.aa = shl i32 %i.y, 1
  %i.ab = and i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.z
  %i.ad = zext nneg i32 %i.ac to i64
  br label %sz_psz2ind.exit.i.i

sz_psz2ind.exit.i.i:                              ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i64 [ %i.ad, %bb.g ], [ 398, %bb.f ]
  %i.ae = getelementptr i8, ptr %1, i64 16
  %.val8.i.i = load i8, ptr %i.ae, align 8, !tbaa !33, !range !26, !noundef !27
  %i.af = xor i8 %.val8.i.i, 1
  %not..i.i = zext nneg i8 %i.af to i64
  %i.ag = or disjoint i64 %.0.i.i.i, %not..i.i
  br label %psset_purge_list_ind.exit.i

psset_purge_list_ind.exit.i:                      ; preds = %sz_psz2ind.exit.i.i, %bb.e
  %.0.i.i = phi i64 [ %..i.i, %bb.e ], [ %i.ag, %sz_psz2ind.exit.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4280
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.i.i ; 2 uses
  %.val8.i = load ptr, ptr %i.ai, align 8, !tbaa !37 ; 3 uses
  %i.aj = icmp eq ptr %.val8.i, null
  br i1 %i.aj, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %psset_purge_list_ind.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5304
  %i.al = lshr i64 %.0.i.i, 6
  %i.am = and i64 %.0.i.i, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !12
  %i.aq = or i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %1, ptr %i.ar, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %1, ptr %i.as, align 8, !tbaa !43
  br label %hpdata_purge_list_append.exit.i

bb.h:                                             ; preds = %psset_purge_list_ind.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store ptr %1, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %.val8.i, i64 72 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !42
  store ptr %1, ptr %i.av, align 8, !tbaa !43
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42 ; 2 uses
  store ptr %i.az, ptr %i.au, align 8, !tbaa !43
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr %.val8.i, ptr %i.bb, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store ptr %1, ptr %i.bc, align 8, !tbaa !42
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !42
  br label %hpdata_purge_list_append.exit.i

hpdata_purge_list_append.exit.i:                  ; preds = %bb.h, %.thread.i
  %i.bd = phi ptr [ %.pre.i.i, %bb.h ], [ %1, %.thread.i ]
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !37
  br label %psset_maybe_insert_purge_list.exit

psset_maybe_insert_purge_list.exit:               ; preds = %bb.c, %hpdata_purge_list_append.exit.i
  %i.be = getelementptr i8, ptr %1, i64 20
  %.val12 = load i8, ptr %i.be, align 4, !tbaa !45, !range !26, !noundef !27
  %i.bf = trunc nuw i8 %.val12 to i1
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %psset_maybe_insert_purge_list.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.bg, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5320 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store ptr %1, ptr %i.bi, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store ptr %1, ptr %i.bj, align 8, !tbaa !48
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %hpdata_hugify_list_append.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 88 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !47
  store ptr %1, ptr %i.bm, align 8, !tbaa !48
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !47 ; 2 uses
  store ptr %i.bq, ptr %i.bj, align 8, !tbaa !48
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  store ptr %i.bk, ptr %i.bs, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  store ptr %1, ptr %i.bt, align 8, !tbaa !47
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !47
  br label %hpdata_hugify_list_append.exit

hpdata_hugify_list_append.exit:                   ; preds = %bb.i, %bb.j
  %i.bu = phi ptr [ %.pre.i, %bb.j ], [ %1, %bb.i ]
  store ptr %i.bu, ptr %i.bh, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %hpdata_hugify_list_append.exit, %psset_maybe_insert_purge_list.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_psset_remove(ptr noundef %0, ptr noundef initializes((36, 37)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
end_hunk_0
