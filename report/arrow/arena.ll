inline.NumInlined: 213
inline.NumDeleted: 76
begin_hunk_0_@mi_arena_contains:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = shl i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = icmp ugt ptr %i.d, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_mi_arenas_contain(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @_mi_subproc() #14         ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %.not1720.not = icmp eq i64 %i.b, 0
  br i1 %.not1720.not, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.01321 = phi i64 [ 0, %.lr.ph ], [ %i.k, %.critedge ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01321
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  %.not.i = icmp ugt ptr %i.e, %0
  %or.cond = or i1 %.not, %.not.i
  br i1 %or.cond, label %.critedge, label %mi_arena_contains.exit

mi_arena_contains.exit:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = shl i64 %i.g, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  %i.j = icmp ugt ptr %i.i, %0
  br i1 %i.j, label %.critedge19, label %.critedge

.critedge:                                        ; preds = %mi_arena_contains.exit, %bb.b
  %i.k = add nuw i64 %.01321, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.b
  br i1 %exitcond.not, label %.critedge19, label %bb.b, !llvm.loop !76

.critedge19:                                      ; preds = %mi_arena_contains.exit, %.critedge, %bb.a
  %.not17.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge ], [ true, %mi_arena_contains.exit ]
  ret i1 %.not17.lcssa
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_arenas_unsafe_destroy_all(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %.not23.i = icmp eq i64 %i.c, 0
  br i1 %.not23.i, label %mi_arenas_unsafe_destroy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.022.i ; 2 uses
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic ptr null, ptr %i.e release, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77
  %i.i = add i32 %i.h, -4
  %i.j = icmp ult i32 %i.i, 3
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.k, align 8, !tbaa !21
  %i.l = shl i64 %.val.i, 16
  tail call void @_mi_os_free_ex(ptr noundef nonnull %i.f, i64 noundef %i.l, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.f, ptr noundef nonnull %i.b) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not.i, label %mi_arenas_unsafe_destroy.exit, label %bb.b, !llvm.loop !78

mi_arenas_unsafe_destroy.exit:                    ; preds = %bb.e, %bb.a
  %i.n = cmpxchg ptr %i.b, i64 %i.c, i64 0 acq_rel acquire, align 8 ; 0 uses
  tail call void @_mi_arenas_collect(i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @mi_manage_os_memory_ex(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #5 {
bb.a:
  %8 = alloca %struct.mi_memid_s, align 8         ; 10 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.e, align 8, !tbaa !7, !alias.scope !79
  store ptr %0, ptr %8, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 21
  store i8 %i.a, ptr %i.g, align 1, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 %i.c, ptr %i.h, align 2, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i8 %i.b, ptr %i.i, align 4, !tbaa !22
  %i.j = tail call ptr @_mi_subproc() #14
  %i.k = tail call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.j, ptr noundef %0, i64 noundef %1, i32 noundef %5, i1 noundef zeroext %6, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %8, ptr noundef null, ptr noundef null, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%struct.mi_memid_s) align 8 captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8) unnamed_addr #5 {
bb.a:
  %i.a = zext i1 %4 to i8
  %.not = icmp eq ptr %8, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %8, align 8, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %mi_arenas_add.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = and i64 %i.c, 65535
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = add i64 %i.c, 65535
  %i.g = and i64 %i.f, -65536                     ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = sub i64 %i.g, %i.c                       ; 2 uses
  %.not109 = icmp uge i64 %i.i, %2
  %i.j = sub nuw i64 %2, %i.i                     ; 2 uses
  %i.k = icmp ult i64 %i.j, 65536
  %or.cond = select i1 %.not109, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.13, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %mi_arenas_add.exit

.thread:                                          ; preds = %bb.e, %bb.d
  %.197 = phi i64 [ %2, %bb.d ], [ %i.j, %bb.e ]  ; 4 uses
  %.195 = phi ptr [ %1, %bb.d ], [ %i.h, %bb.e ]  ; 24 uses
  %i.l = lshr i64 %.197, 16
  %i.m = and i64 %i.l, 281474976710144            ; 11 uses
  %i.n = icmp samesign ugt i64 %i.m, 262144
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.o = lshr i64 %.197, 20
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.14, i64 noundef %i.o, i64 noundef 16384) #14
  br label %mi_arenas_add.exit

bb.h:                                             ; preds = %.thread
  %i.p = icmp eq i64 %i.m, 0
  %spec.store.select.i = select i1 %i.p, i64 512, i64 %i.m ; 2 uses
  %i.q = tail call i64 @mi_bitmap_size(i64 noundef %spec.store.select.i, ptr noundef null) #14
  %i.r = mul i64 %i.q, 79
  %i.s = tail call i64 @mi_bbitmap_size(i64 noundef %spec.store.select.i, ptr noundef null) #14
  %i.t = tail call i64 @_mi_os_page_size() #14    ; 4 uses
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.v = icmp samesign ult i64 %i.u, 2
  %i.w = add i64 %i.s, 767
  %i.x = add i64 %i.w, %i.r
  %i.y = add i64 %i.x, %i.t                       ; 3 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = sub i64 0, %i.t
  %i.aa = and i64 %i.y, %i.z
  br label %mi_arena_info_slices_needed.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = urem i64 %i.y, %i.t
  %i.ac = sub nuw i64 %i.y, %i.ab
  br label %mi_arena_info_slices_needed.exit

mi_arena_info_slices_needed.exit:                 ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call i64 @_mi_os_secure_guard_page_size() #14
  %i.ae = add i64 %.0.i.i, 65535
  %i.af = add i64 %i.ae, %i.ad                    ; 6 uses
  %i.ag = lshr i64 %i.af, 16                      ; 7 uses
  %.not110 = icmp samesign ugt i64 %i.m, %i.ag
  br i1 %.not110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %mi_arena_info_slices_needed.exit
  %i.ah = lshr i64 %.197, 10
  %9 = and i64 %i.af, -65536
  %10 = add i64 %9, 65536
  %11 = lshr exact i64 %10, 10
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.15, i64 noundef %i.ah, i64 noundef %11) #14
  br label %mi_arenas_add.exit

bb.l:                                             ; preds = %mi_arena_info_slices_needed.exit
  %i.ai = icmp ugt i64 %i.af, 33554431
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = lshr i64 %.197, 20
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.16, i64 noundef %i.aj, i64 noundef %i.ag, i32 noundef 512) #14
  br label %mi_arenas_add.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !82, !range !18, !noundef !19
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  br i1 %i.am, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = and i64 %i.af, 33488896                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !22, !range !18, !noundef !19
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call i64 @_mi_os_secure_guard_page_size() #14
  %i.as = sub i64 %i.an, %i.ar
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.092 = phi i64 [ %i.an, %bb.o ], [ %i.as, %bb.p ] ; 2 uses
  %.not111 = icmp eq ptr %6, null
  br i1 %.not111, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = tail call zeroext i1 %6(i1 noundef zeroext true, ptr noundef %.195, i64 noundef %.092, ptr noundef null, ptr noundef %7) #14
  br i1 %i.at, label %.critedge, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.au = tail call zeroext i1 @_mi_os_commit(ptr noundef %.195, i64 noundef %.092, ptr noundef null) #14
  br i1 %i.au, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.17) #14
  br label %mi_arenas_add.exit

bb.u:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !22, !range !18, !noundef !19
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = and i64 %i.af, 33488896
  %i.az = getelementptr inbounds nuw i8, ptr %.195, i64 %i.ay
  %i.ba = tail call zeroext i1 @_mi_os_secure_guard_page_set_before(ptr noundef %i.az, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5) #14 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !83, !range !18, !noundef !19
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  br i1 %i.bd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge
  %i.be = and i64 %i.af, 33488896
  %i.bf = tail call i64 @_mi_os_secure_guard_page_size() #14
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 1 %.195, i8 0, i64 %i.bg, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge
  %i.bh = getelementptr inbounds nuw i8, ptr %.195, i64 24 ; 3 uses
  store ptr %0, ptr %i.bh, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.195, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !85
  %i.bi = getelementptr inbounds nuw i8, ptr %.195, i64 52
  store i8 %i.a, ptr %i.bi, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.195, i64 32 ; 4 uses
  store i64 %i.m, ptr %i.bj, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.195, i64 40
  store i64 %i.ag, ptr %i.bk, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %.195, i64 48
  store i32 %3, ptr %i.bl, align 8, !tbaa !87
  %i.bm = getelementptr inbounds nuw i8, ptr %.195, i64 56
  store atomic i64 0, ptr %i.bm seq_cst, align 8, !tbaa !88
  %i.bn = getelementptr inbounds nuw i8, ptr %.195, i64 64
  store ptr %6, ptr %i.bn, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.195, i64 72
  store ptr %7, ptr %i.bo, align 8, !tbaa !68
  %i.bp = getelementptr inbounds nuw i8, ptr %.195, i64 768 ; 3 uses
  %i.bq = tail call i64 @mi_bbitmap_init(ptr noundef nonnull %i.bp, i64 noundef range(i64 1, 262145) %i.m, i1 noundef zeroext true) #14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.195, i64 80 ; 2 uses
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !54
  %i.bt = tail call i64 @mi_bitmap_init(ptr noundef nonnull %i.br, i64 noundef range(i64 1, 262145) %i.m, i1 noundef zeroext true) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.195, i64 88 ; 2 uses
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !51
  %i.bw = tail call i64 @mi_bitmap_init(ptr noundef nonnull %i.bu, i64 noundef range(i64 1, 262145) %i.m, i1 noundef zeroext true) #14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.195, i64 96 ; 2 uses
  store ptr %i.bu, ptr %i.by, align 8, !tbaa !89
  %i.bz = tail call i64 @mi_bitmap_init(ptr noundef nonnull %i.bx, i64 noundef range(i64 1, 262145) %i.m, i1 noundef zeroext true) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.195, i64 104
  store ptr %i.bx, ptr %i.cb, align 8, !tbaa !69
  %i.cc = tail call i64 @mi_bitmap_init(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 262145) %i.m, i1 noundef zeroext true) #14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.195, i64 112
  store ptr %i.ca, ptr %i.ce, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %.195, i64 120
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.cg = load ptr, ptr %i.bs, align 8, !tbaa !54
  %i.ch = load i64, ptr %i.bj, align 8, !tbaa !21
  %i.ci = sub i64 %i.ch, %i.ag
  tail call void @mi_bbitmap_unsafe_setN(ptr noundef %i.cg, i64 noundef %i.ag, i64 noundef %i.ci) #14
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !51 ; 2 uses
  br i1 %i.am, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x, %bb.z
  %.0123 = phi i64 [ 0, %bb.x ], [ %i.cn, %bb.z ] ; 2 uses
  %.0118122 = phi ptr [ %i.cd, %bb.x ], [ %i.cl, %bb.z ] ; 3 uses
  %i.ck = tail call i64 @mi_bitmap_init(ptr noundef %.0118122, i64 noundef range(i64 1, 262145) %i.m, i1 noundef zeroext true) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %.0118122, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0123
  store ptr %.0118122, ptr %i.cm, align 8, !tbaa !46
  %i.cn = add nuw nsw i64 %.0123, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.cn, 75
  br i1 %exitcond.not, label %bb.y, label %bb.z, !llvm.loop !90

bb.aa:                                            ; preds = %bb.y
  %i.co = load i64, ptr %i.bj, align 8, !tbaa !21
  tail call void @mi_bitmap_unsafe_setN(ptr noundef %i.cj, i64 noundef 0, i64 noundef %i.co) #14
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cp = tail call zeroext i1 @mi_bitmap_setN(ptr noundef %i.cj, i64 noundef 0, i64 noundef %i.ag, ptr noundef null) #14 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !89 ; 2 uses
  br i1 %i.bd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load i64, ptr %i.bj, align 8, !tbaa !21
  tail call void @mi_bitmap_unsafe_setN(ptr noundef %i.cq, i64 noundef 0, i64 noundef %i.cr) #14
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cs = tail call zeroext i1 @mi_bitmap_setN(ptr noundef %i.cq, i64 noundef 0, i64 noundef %i.ag, ptr noundef null) #14 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %8, align 8, !tbaa !84
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ct = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %.not40.i = icmp eq i64 %i.ct, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge.i, %.lr.ph.i
  %.03339.i = phi i64 [ 0, %.lr.ph.i ], [ %i.da, %.critedge.i ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.03339.i ; 2 uses
  %i.cw = load atomic ptr, ptr %i.cv monotonic, align 8
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.cy = cmpxchg ptr %i.cv, ptr null, ptr %.195 release monotonic, align 8
  %i.cz = extractvalue { ptr, i1 } %i.cy, 1
  br i1 %i.cz, label %bb.ak, label %.critedge.i

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not, label %mi_arenas_add.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %.195, ptr %8, align 8, !tbaa !84
  br label %mi_arenas_add.exit

.critedge.i:                                      ; preds = %bb.aj, %bb.ai
  %i.da = add nuw i64 %.03339.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.da, %i.ct
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ai, !llvm.loop !91

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.ah
  %i.db = atomicrmw add ptr %0, i64 1 acq_rel, align 8 ; 2 uses
  %i.dc = icmp ugt i64 %i.db, 159
  br i1 %i.dc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i
end_hunk_0
