Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/theap?download=true
inline.NumInlined: 66
inline.NumDeleted: 35
begin_hunk_0_@_mi_tld_detach_theaps:bb.a
.lr.ph:                                           ; preds = %.lr.ph.outer, %bb.j
  %.02736 = phi ptr [ %i.g, %bb.j ], [ %.02736.ph, %.lr.ph.outer ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02736, i64 1264
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02736, i64 1040 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h monotonic, align 8 ; 4 uses
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.k = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.j) #10
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 2096
  %i.n = getelementptr inbounds nuw i8, ptr %.02736, i64 3736
  tail call void @_mi_stats_merge_into(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %.02736, i64 1280 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 4 uses
  %.not33 = icmp eq ptr %i.p, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.02736, i64 1288
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55 ; 3 uses
  br i1 %.not33, label %._crit_edge39, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1288
  store ptr %.pre, ptr %i.q, align 8, !tbaa !55
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.e, %bb.f
  %.not34 = icmp eq ptr %.pre, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge39
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 1280
  store ptr %i.p, ptr %i.r, align 8, !tbaa !56
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge39
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.p, ptr %i.s, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store atomic ptr null, ptr %i.h release, align 8
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

.thread:                                          ; preds = %bb.d
  %.not46 = icmp eq ptr %i.g, null
  br i1 %.not46, label %._crit_edge.thread, label %.lr.ph.outer, !llvm.loop !85

._crit_edge.thread:                               ; preds = %.thread
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br i1 %.137.ph, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2072
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.x, i64 noundef 1) #10
  tail call void @_mi_prim_thread_yield() #10
  br label %bb.b, !llvm.loop !86

.critedge.critedge:                               ; preds = %mi_lock_acquire.exit
  %i.y = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge, %.critedge.critedge
  ret void
}

; Function Attrs: mustprogress nofree nooutline norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_mi_heap_area_init(ptr nofree noundef writeonly captures(none) initializes((0, 56)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load i64, ptr %i.a, align 8, !tbaa !61  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.c = load i16, ptr %i.b, align 2, !tbaa !62
  %i.d = zext i16 %i.c to i64
  %i.e = mul i64 %.val, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i16, ptr %i.g, align 8, !tbaa !65
  %i.i = zext i16 %i.h to i64
  %i.j = mul i64 %.val, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  store ptr %i.n, ptr %0, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val, ptr %i.s, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.t, align 8, !tbaa !72
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden zeroext i1 @_mi_theap_area_visit_blocks(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 6 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_mi_page_free_collect(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 40
  %.val.i = load i64, ptr %i.g, align 8, !tbaa !61 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 80
  %.val117 = load ptr, ptr %i.k, align 8, !tbaa !93 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !65   ; 4 uses
  %i.n = icmp eq i16 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 %2(ptr noundef %.val117, ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %.val.i, ptr noundef %3) #10
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.p = zext i16 %i.m to i64                     ; 2 uses
  %i.q = icmp eq i64 %i.e, %i.p
  br i1 %i.q, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e
  %.not111.not137.not = icmp eq i16 %i.m, 0
  br i1 %.not111.not137.not, label %.critedge, label %.lr.ph140

.lr.ph140:                                        ; preds = %.preheader, %bb.f
  %.0102139 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader ]
  %.0103138 = phi ptr [ %i.s, %bb.f ], [ %i.j, %.preheader ] ; 2 uses
  %i.r = tail call zeroext i1 %2(ptr noundef %.val117, ptr noundef nonnull %0, ptr noundef %.0103138, i64 noundef %.val.i, ptr noundef %3) #10 ; 3 uses
  br i1 %i.r, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph140
  %i.s = getelementptr inbounds nuw i8, ptr %.0103138, i64 %.val.i
  %i.t = add nuw nsw i64 %.0102139, 1             ; 2 uses
  %i.u = load i16, ptr %i.l, align 8, !tbaa !65
  %i.v = zext i16 %i.u to i64
  %.not111.not = icmp samesign ult i64 %i.t, %i.v
  br i1 %.not111.not, label %.lr.ph140, label %.critedge, !llvm.loop !88

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.w = add nuw nsw i64 %i.p, 63
  %i.x = lshr i64 %i.w, 6                         ; 4 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.y, i1 false)
  %i.z = and i16 %i.m, 63                         ; 2 uses
  %.not = icmp eq i16 %i.z, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = shl nsw i64 -1, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.a, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = add i64 %.val.i, -1
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 false)
  %i.ag = sub nuw nsw i64 64, %i.af               ; 2 uses
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = sub i64 %i.ah, %.val.i
  %i.aj = shl i64 %i.ai, 32
  %i.ak = udiv i64 %i.aj, %.val.i
  %i.al = add nuw i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !94 ; 2 uses
  %.not108128 = icmp eq ptr %i.an, null
  br i1 %.not108128, label %.preheader122, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.j to i64
  br label %bb.j

.preheader122:                                    ; preds = %bb.j, %bb.i
  %.not110132 = icmp eq i64 %i.x, 0
  br i1 %.not110132, label %.critedge115, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader122
  %i.ap = shl i64 %.val.i, 6
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.096129.a = phi ptr [ %i.an, %.lr.ph ], [ %i.bb, %bb.j ] ; 2 uses
  %4 = ptrtoint ptr %.096129.a to i64
  %i.aq = sub i64 %4, %i.ao                       ; 2 uses
  %i.ar = mul i64 %i.aq, %i.al
  %i.as = lshr i64 %i.ar, 32
  %i.at = add i64 %i.as, %i.aq
  %i.au = lshr i64 %i.at, %i.ag                   ; 2 uses
  %i.av = lshr i64 %i.au, 6
  %i.aw = and i64 %i.au, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = or i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !41
  %.096.val = load i64, ptr %.096129.a, align 8, !tbaa !96 ; 2 uses
  %i.bb = inttoptr i64 %.096.val to ptr
  %.not108 = icmp eq i64 %.096.val, 0
  br i1 %.not108, label %.preheader122, label %bb.j, !llvm.loop !89

bb.k:                                             ; preds = %.lr.ph136, %.critedge113
  %.089134 = phi i64 [ 0, %.lr.ph136 ], [ %i.bq, %.critedge113 ] ; 2 uses
  %.090133 = phi ptr [ %i.j, %.lr.ph136 ], [ %.3, %.critedge113 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.089134
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.preheader120, label %bb.m

.preheader120:                                    ; preds = %bb.k, %bb.l
  %.088131 = phi i64 [ %i.bh, %bb.l ], [ 0, %bb.k ]
  %.191130 = phi ptr [ %i.bg, %bb.l ], [ %.090133, %bb.k ] ; 2 uses
  %i.bf = tail call zeroext i1 %2(ptr noundef %.val117, ptr noundef nonnull %0, ptr noundef %.191130, i64 noundef %.val.i, ptr noundef %3) #10
  br i1 %i.bf, label %bb.l, label %.critedge115

bb.l:                                             ; preds = %.preheader120
  %i.bg = getelementptr inbounds nuw i8, ptr %.191130, i64 %.val.i ; 2 uses
  %i.bh = add nuw nsw i64 %.088131, 1             ; 2 uses
  %exitcond = icmp eq i64 %i.bh, 64
  br i1 %exitcond, label %.critedge113, label %.preheader120, !llvm.loop !90

bb.m:                                             ; preds = %bb.k
  %i.bi = xor i64 %i.bd, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.0 = phi i64 [ %i.bi, %bb.m ], [ %i.bo, %bb.o ] ; 4 uses
  %.not109 = icmp eq i64 %.0, 0
  br i1 %.not109, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call range(i64 0, 64) i64 @llvm.cttz.i64(i64 range(i64 1, -1) %.0, i1 true)
  %i.bk = mul i64 %i.bj, %.val.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.090133, i64 %i.bk
  %i.bm = tail call zeroext i1 %2(ptr noundef %.val117, ptr noundef nonnull %0, ptr noundef %i.bl, i64 noundef %.val.i, ptr noundef %3) #10
  %i.bn = add i64 %.0, -1
  %i.bo = and i64 %i.bn, %.0
  br i1 %i.bm, label %bb.n, label %.critedge115, !llvm.loop !91

.thread:                                          ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.090133, i64 %i.ap
  br label %.critedge113

.critedge113:                                     ; preds = %bb.l, %.thread
  %.3 = phi ptr [ %i.bp, %.thread ], [ %i.bg, %bb.l ]
  %i.bq = add nuw nsw i64 %.089134, 1             ; 2 uses
  %exitcond146.not = icmp eq i64 %i.bq, %i.x
  br i1 %exitcond146.not, label %.critedge115, label %bb.k, !llvm.loop !92

.critedge115:                                     ; preds = %.critedge113, %bb.o, %.preheader120, %.preheader122
  %.not110127 = phi i1 [ false, %bb.o ], [ false, %.preheader120 ], [ true, %.preheader122 ], [ true, %.critedge113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.lr.ph140, %.preheader, %bb.d, %.critedge115, %bb.b, %bb.a
  %.11 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %i.o, %bb.d ], [ %.not110127, %.critedge115 ], [ true, %.preheader ], [ %i.r, %.lr.ph140 ], [ %i.r, %bb.f ]
  ret i1 %.11
}

declare void @_mi_page_free_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_theap_visit_blocks(ptr nofree noundef captures(address_is_null) %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mi_theap_area_ex_s, align 8 ; 17 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mi_theap_visit_areas.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %mi_theap_visit_areas.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  br i1 %1, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.c, %.critedge.i.i.us
  %.02534.i.i.us = phi i64 [ %i.aj, %.critedge.i.i.us ], [ 0, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.02534.i.i.us
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not30.i3.i.us = icmp eq ptr %i.o, null
  br i1 %.not30.i3.i.us, label %.critedge.i.i.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.split.us, %.backedge.i.us.us
  %.0.i4.i.us.us = phi ptr [ %i.q, %.backedge.i.us.us ], [ %i.o, %.split.us ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i4.i.us.us, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %.0.i4.i.us.us, ptr %i.f, align 8, !tbaa !99
  %i.r = getelementptr i8, ptr %.0.i4.i.us.us, i64 40
  %.val.i.i.i.us.us = load i64, ptr %i.r, align 8, !tbaa !61 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i4.i.us.us, i64 58
  %i.t = load i16, ptr %i.s, align 2, !tbaa !62
  %i.u = zext i16 %i.t to i64
  %i.v = mul i64 %.val.i.i.i.us.us, %i.u
  store i64 %i.v, ptr %i.g, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i4.i.us.us, i64 56
  %i.x = load i16, ptr %i.w, align 8, !tbaa !65
  %i.y = zext i16 %i.x to i64
  %i.z = mul i64 %.val.i.i.i.us.us, %i.y
  store i64 %i.z, ptr %i.h, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i4.i.us.us, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i4.i.us.us, i64 %i.ab
  store ptr %i.ac, ptr %4, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i4.i.us.us, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31
  store i64 %i.ae, ptr %i.i, align 8, !tbaa !69
  store i64 %.val.i.i.i.us.us, ptr %i.j, align 8, !tbaa !70
  store i64 %.val.i.i.i.us.us, ptr %i.k, align 8, !tbaa !71
  store ptr %.0.i4.i.us.us, ptr %i.l, align 8, !tbaa !72
  %i.af = load atomic ptr, ptr %i.m monotonic, align 8
  %i.ag = call zeroext i1 %2(ptr noundef %i.af, ptr noundef nonnull %4, ptr noundef null, i64 noundef %.val.i.i.i.us.us, ptr noundef %3) #10, !inline_history !97
  br i1 %i.ag, label %.split.i.us.us, label %mi_theap_area_visitor.exit.thread.i

.split.i.us.us:                                   ; preds = %.lr.ph.i.us.us
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.ai = call zeroext i1 @_mi_theap_area_visit_blocks(ptr noundef nonnull %4, ptr noundef %i.ah, ptr noundef %2, ptr noundef %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.ai, label %.backedge.i.us.us, label %mi_theap_visit_areas.exit

.backedge.i.us.us:                                ; preds = %.split.i.us.us
  %.not30.i.i.us.us = icmp eq ptr %i.q, null
  br i1 %.not30.i.i.us.us, label %.critedge.i.i.us, label %.lr.ph.i.us.us, !llvm.loop !0

.critedge.i.i.us:                                 ; preds = %.backedge.i.us.us, %.split.us
  %i.aj = add nuw nsw i64 %.02534.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.aj, 75
  br i1 %exitcond.not.i.i.us, label %mi_theap_visit_areas.exit, label %.split.us, !llvm.loop !1

.split:                                           ; preds = %bb.c, %.critedge.i.i
  %.02534.i.i = phi i64 [ %i.be, %.critedge.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.02534.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %.not30.i3.i = icmp eq ptr %i.al, null
  br i1 %.not30.i3.i, label %.critedge.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %mi_theap_area_visitor.exit.i
  %.0.i4.i = phi ptr [ %i.an, %mi_theap_area_visitor.exit.i ], [ %i.al, %.split ] ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %.0.i4.i, ptr %i.f, align 8, !tbaa !99
  %i.ao = getelementptr i8, ptr %.0.i4.i, i64 40
  %.val.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !61 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 58
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !62
  %i.ar = zext i16 %i.aq to i64
  %i.as = mul i64 %.val.i.i.i, %i.ar
  store i64 %i.as, ptr %i.g, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 56
  %i.au = load i16, ptr %i.at, align 8, !tbaa !65
  %i.av = zext i16 %i.au to i64
  %i.aw = mul i64 %.val.i.i.i, %i.av
  store i64 %i.aw, ptr %i.h, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 %i.ay
  store ptr %i.az, ptr %4, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  store i64 %i.bb, ptr %i.i, align 8, !tbaa !69
  store i64 %.val.i.i.i, ptr %i.j, align 8, !tbaa !70
  store i64 %.val.i.i.i, ptr %i.k, align 8, !tbaa !71
  store ptr %.0.i4.i, ptr %i.l, align 8, !tbaa !72
  %i.bc = load atomic ptr, ptr %i.m monotonic, align 8
  %i.bd = call zeroext i1 %2(ptr noundef %i.bc, ptr noundef nonnull %4, ptr noundef null, i64 noundef %.val.i.i.i, ptr noundef %3) #10, !inline_history !97
  br i1 %i.bd, label %mi_theap_area_visitor.exit.i, label %mi_theap_area_visitor.exit.thread.i

mi_theap_area_visitor.exit.thread.i:              ; preds = %.lr.ph.i, %.lr.ph.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %mi_theap_visit_areas.exit

mi_theap_area_visitor.exit.i:                     ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.not30.i.i = icmp eq ptr %i.an, null
  br i1 %.not30.i.i, label %.critedge.i.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %mi_theap_area_visitor.exit.i, %.split
  %i.be = add nuw nsw i64 %.02534.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.be, 75
  br i1 %exitcond.not.i.i, label %mi_theap_visit_areas.exit, label %.split, !llvm.loop !1

mi_theap_visit_areas.exit:                        ; preds = %.critedge.i.i, %.critedge.i.i.us, %.split.i.us.us, %bb.a, %bb.b, %mi_theap_area_visitor.exit.thread.i
end_hunk_0
