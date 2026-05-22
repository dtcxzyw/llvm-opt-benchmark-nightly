inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_malloc_default:bb.a
bb.as:                                            ; preds = %bb.ap, %bb.ar
  br i1 %i.db, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.gi = load i64, ptr %i.dy, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fp, i8 0, i64 %i.gi, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !107
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ad, %arena_get.exit112, %bb.ac, %bb.an
  %.1196.ph282 = phi ptr [ null, %bb.an ], [ %i.eg, %tcache_get_from_ind.exit.i ], [ null, %bb.ad ], [ %i.ei, %arena_get.exit112 ], [ null, %bb.ac ]
  %i.gm = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1196.ph282, i64 noundef %0, i32 noundef %.0.i50.i21, i1 noundef zeroext %i.db) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread244, %bb.am, %bb.au, %sz_s2u.exit.i
  %.0.i32 = phi ptr [ %i.gh, %sz_s2u.exit.i ], [ %i.gm, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread244 ], [ %.131.i.i, %bb.am ], [ %i.fp, %bb.au ] ; 4 uses
  %i.gn = icmp eq ptr %.0.i32, null
  br i1 %i.gn, label %aligned_usize_get.exit.i14.thread, label %bb.av, !prof !119

bb.av:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 840 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.go, ptr %i.gp, align 8, !tbaa !112
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !113
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !114
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 848
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !115
  %i.gw = load i64, ptr %i.go, align 8, !tbaa !27 ; 2 uses
  %i.gx = add i64 %i.gw, %i.dz
  store i64 %i.gx, ptr %i.go, align 8, !tbaa !27
  %i.gy = load i64, ptr %i.gs, align 8, !tbaa !27
  %i.gz = sub i64 %i.gy, %i.gw
  %i.ha = icmp ult i64 %i.dz, %i.gz
  br i1 %i.ha, label %bb.ax, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %bb.av
  call void @je_te_event_trigger(ptr noundef nonnull %i.g, ptr noundef nonnull %3) #20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i18 = xor i1 %i.db, true
  %i.hb = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.hc = trunc nuw i8 %i.hb to i1
  %or.cond45.i19 = select i1 %.not.i18, i1 %i.hc, i1 false, !prof !118
  br i1 %or.cond45.i19, label %bb.ay, label %bb.az, !prof !118

bb.ay:                                            ; preds = %bb.ax
  %i.hd = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.hd(ptr noundef nonnull %.0.i32, i64 noundef %i.dz) #20, !inline_history !120
  br label %bb.az

aligned_usize_get.exit.i14.thread:                ; preds = %cache_bin_alloc_impl.exit29.i, %bb.ak, %bb.ad, %bb.z, %sz_size2index.exit.i20, %imalloc_no_sample.exit
  %.sroa.11.3 = phi i64 [ %i.dz, %imalloc_no_sample.exit ], [ 0, %bb.z ], [ 0, %sz_size2index.exit.i20 ], [ %i.dz, %bb.ad ], [ %i.dz, %bb.ak ], [ %i.dz, %cache_bin_alloc_impl.exit29.i ]
  %i.he = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.he, align 4, !tbaa !7
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %aligned_usize_get.exit.i14.thread
  %.0204.ph = phi ptr [ %.0.i32, %bb.ay ], [ %.0.i32, %bb.ax ], [ null, %aligned_usize_get.exit.i14.thread ] ; 3 uses
  %.sroa.11.0.ph = phi i64 [ %i.dz, %bb.ay ], [ %i.dz, %bb.ax ], [ %.sroa.11.3, %aligned_usize_get.exit.i14.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !27
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !27
  %i.hf = ptrtoint ptr %.0204.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 0, ptr noundef %.0204.ph, i64 noundef %i.hf, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.u, %aligned_usize_get.exit.i.thread, %imalloc_init_check.exit, %bb.az
  %.sroa.11.0257 = phi i64 [ %.sroa.11.0.ph, %bb.az ], [ 0, %imalloc_init_check.exit ], [ %i.af, %bb.u ], [ %.sroa.11.1, %aligned_usize_get.exit.i.thread ]
  %.0204256 = phi ptr [ %.0204.ph, %bb.az ], [ null, %imalloc_init_check.exit ], [ %.0.i21.i53, %bb.u ], [ null, %aligned_usize_get.exit.i.thread ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %imalloc.exit
  store i64 %.sroa.11.0257, ptr %1, align 8, !tbaa !27
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %imalloc.exit
  ret ptr %.0204256
}

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @je_malloc(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %0, 4096
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @je_malloc_default(i64 noundef %0, ptr noundef null)
  br label %je_malloc_internal.exit

bb.c:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 840 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = add i64 %i.l, %i.j                       ; 3 uses
  %.not.i.i = icmp ult i64 %i.o, %i.n
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @je_malloc_default(i64 noundef %0, ptr noundef null)
  br label %je_malloc_internal.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.h ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92   ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !98   ; 2 uses
  %i.x = trunc i64 %i.u to i16
  %.not.i.i1.i = icmp eq i16 %i.w, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  br i1 %.not.i.i1.i, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.r, align 8, !tbaa !92
  store i64 %i.o, ptr %i.k, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !107
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !107
  br label %je_malloc_internal.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !99
  %.not21.i.i.i = icmp eq i16 %i.ad, %i.w
  br i1 %.not21.i.i.i, label %cache_bin_alloc_impl.exit.i.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  store ptr %i.y, ptr %i.r, align 8, !tbaa !92
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = trunc i64 %i.ae to i16
  store i16 %i.af, ptr %i.v, align 8, !tbaa !98
  store i64 %i.o, ptr %i.k, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !107
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !107
  br label %je_malloc_internal.exit

cache_bin_alloc_impl.exit.i.i:                    ; preds = %bb.g
  %i.aj = tail call ptr @je_malloc_default(i64 noundef %0, ptr noundef null)
  br label %je_malloc_internal.exit

je_malloc_internal.exit:                          ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %cache_bin_alloc_impl.exit.i.i
  %.2.i.i = phi ptr [ %i.c, %bb.b ], [ %i.p, %bb.d ], [ %i.aj, %cache_bin_alloc_impl.exit.i.i ], [ %i.t, %bb.f ], [ %i.t, %bb.h ]
  ret ptr %.2.i.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 23) i32 @je_posix_memalign(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
  %.not.i79 = icmp eq i8 %i.d, 0
  br i1 %.not.i79, label %compute_size_with_overflow.exit32, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.e = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext false) #20 ; 12 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %compute_size_with_overflow.exit32, label %bb.m, !prof !90

compute_size_with_overflow.exit32:                ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i80249 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.h = icmp samesign ugt i64 %i.g, 1
  %.narrow237 = icmp ult i64 %1, 7
  %or.cond47.i = or i1 %.narrow237, %i.h
  br i1 %or.cond47.i, label %imalloc.exit, label %bb.b, !prof !121

bb.b:                                             ; preds = %compute_size_with_overflow.exit32
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.c, label %bb.d, !prof !118

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016.i.i = phi i64 [ 1, %bb.c ], [ %2, %bb.b ] ; 7 uses
  %i.j = icmp ult i64 %.016.i.i, 14337
  %i.k = icmp ult i64 %1, 4097
  %or.cond.i92 = and i1 %i.k, %i.j
  br i1 %or.cond.i92, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %1, -1
  %i.m = add nuw nsw i64 %i.l, %.016.i.i
  %i.n = sub nsw i64 0, %1
  %i.o = and i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp samesign ult i64 %i.o, 4097
  br i1 %i.p, label %bb.f, label %sz_s2u_compute.exit.i102, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw nsw i64 %i.o, 7
  %i.r = lshr i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  br label %sz_s2u.exit25.i104

sz_s2u_compute.exit.i102:                         ; preds = %bb.e
  %i.x = shl nuw nsw i64 %i.o, 1
  %i.y = add nsw i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 2 uses
  %notmask.i.i101 = ashr exact i64 -1152921504606846976, %i.z
  %i.aa = lshr i64 1152921504606846975, %i.z
  %i.ab = add nuw nsw i64 %i.o, %i.aa
  %i.ac = and i64 %i.ab, %notmask.i.i101
  br label %sz_s2u.exit25.i104

sz_s2u.exit25.i104:                               ; preds = %sz_s2u_compute.exit.i102, %bb.f
  %.0.i24.i105 = phi i64 [ %i.w, %bb.f ], [ %i.ac, %sz_s2u_compute.exit.i102 ] ; 2 uses
  %i.ad = icmp ult i64 %.0.i24.i105, 16384
  br i1 %i.ad, label %aligned_usize_get.exit.i, label %.thread205

bb.g:                                             ; preds = %bb.d
  %i.ae = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.ae, label %imalloc.exit, label %bb.h, !prof !122

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ult i64 %.016.i.i, 16385
  br i1 %i.af, label %.thread205, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ugt i64 %.016.i.i, 8070450532247928832
  br i1 %i.ag, label %imalloc.exit, label %sz_s2u_compute.exit29.i94, !prof !11

sz_s2u_compute.exit29.i94:                        ; preds = %bb.i
  %i.ah = shl nuw i64 %.016.i.i, 1
  %i.ai = add i64 %i.ah, -1
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true) ; 2 uses
  %notmask.i27.i93 = ashr exact i64 -1152921504606846976, %i.aj
  %i.ak = lshr i64 1152921504606846975, %i.aj
  %i.al = add nuw nsw i64 %.016.i.i, %i.ak
  %i.am = and i64 %i.al, %notmask.i27.i93         ; 2 uses
  %i.an = icmp samesign ult i64 %i.am, %.016.i.i
  br i1 %i.an, label %imalloc.exit, label %.thread205

.thread205:                                       ; preds = %sz_s2u.exit25.i104, %sz_s2u_compute.exit29.i94, %bb.h
  %.0.i98 = phi i64 [ %i.am, %sz_s2u_compute.exit29.i94 ], [ 16384, %bb.h ], [ 16384, %sz_s2u.exit25.i104 ] ; 3 uses
  %i.ao = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ap = add nuw nsw i64 %1, 4095
  %i.aq = and i64 %i.ap, 9223372036854771712
  %i.ar = add nsw i64 %i.aq, -4096
  %i.as = add nuw i64 %i.ar, %.0.i98
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp ult i64 %i.at, %.0.i98
  %..0.i99 = select i1 %i.au, i64 0, i64 %.0.i98
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread205, %sz_s2u.exit25.i104
  %.018.i100 = phi i64 [ %..0.i99, %.thread205 ], [ %.0.i24.i105, %sz_s2u.exit25.i104 ] ; 4 uses
  %i.av = add nsw i64 %.018.i100, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.av, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %imalloc_no_sample.exit73

imalloc_no_sample.exit73:                         ; preds = %aligned_usize_get.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 872
  %i.ax = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i80249, ptr noundef null, i64 noundef %.018.i100, i64 noundef %1, i1 noundef zeroext false, ptr noundef nonnull %i.aw) #20 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %imalloc.exit, label %bb.j, !prof !11

bb.j:                                             ; preds = %imalloc_no_sample.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 840 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !112
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !114
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i80249, i64 848
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !115
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  %i.bi = add i64 %i.bh, %.018.i100
  store i64 %i.bi, ptr %i.az, align 8, !tbaa !27
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.bk = sub i64 %i.bj, %i.bh
  %i.bl = icmp ult i64 %.018.i100, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i80249, ptr noundef nonnull %3) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.ax, ptr %0, align 8, !tbaa !97
  br label %imalloc.exit

bb.m:                                             ; preds = %tsd_fetch_impl.exit
  %i.bm = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %compute_size_with_overflow.exit, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bo, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.n
  %i.bp = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bp, align 4, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !97
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.n, %bb.m
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.br = icmp samesign ugt i64 %i.bq, 1
  %.narrow = icmp ult i64 %1, 7
  %or.cond47.i11 = or i1 %.narrow, %i.br
  br i1 %or.cond47.i11, label %aligned_usize_get.exit.i17.thread, label %bb.o, !prof !121

bb.o:                                             ; preds = %compute_size_with_overflow.exit
  %i.bs = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  %i.bu = icmp eq i64 %2, 0
  br i1 %i.bu, label %bb.p, label %bb.q, !prof !118

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.016.i.i15 = phi i64 [ 1, %bb.p ], [ %2, %bb.o ] ; 7 uses
  %i.bv = icmp ult i64 %.016.i.i15, 14337
  %i.bw = icmp ult i64 %1, 4097
  %or.cond.i86 = and i1 %i.bw, %i.bv
  br i1 %or.cond.i86, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bx = add nsw i64 %1, -1
  %i.by = add nuw nsw i64 %i.bx, %.016.i.i15
  %i.bz = sub nsw i64 0, %1
  %i.ca = and i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp samesign ult i64 %i.ca, 4097
  br i1 %i.cb, label %bb.s, label %sz_s2u_compute.exit.i91, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.cc = add nuw nsw i64 %i.ca, 7
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i91:                          ; preds = %bb.r
  %i.cj = shl nuw nsw i64 %i.ca, 1
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ck, i1 true) ; 2 uses
  %notmask.i.i90 = ashr exact i64 -1152921504606846976, %i.cl
  %i.cm = lshr i64 1152921504606846975, %i.cl
  %i.cn = add nuw nsw i64 %i.ca, %i.cm
  %i.co = and i64 %i.cn, %notmask.i.i90
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i91, %bb.s
  %.0.i24.i = phi i64 [ %i.ci, %bb.s ], [ %i.co, %sz_s2u_compute.exit.i91 ] ; 2 uses
  %i.cp = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.cp, label %aligned_usize_get.exit.i17, label %.thread212

bb.t:                                             ; preds = %bb.q
  %i.cq = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.cq, label %aligned_usize_get.exit.i17.thread, label %bb.u, !prof !123

bb.u:                                             ; preds = %bb.t
  %i.cr = icmp ult i64 %.016.i.i15, 16385
  br i1 %i.cr, label %.thread212, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = icmp ugt i64 %.016.i.i15, 8070450532247928832
  br i1 %i.cs, label %aligned_usize_get.exit.i17.thread, label %sz_s2u_compute.exit29.i, !prof !11

sz_s2u_compute.exit29.i:                          ; preds = %bb.v
  %i.ct = shl nuw i64 %.016.i.i15, 1
  %i.cu = add i64 %i.ct, -1
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cu, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cv
  %i.cw = lshr i64 1152921504606846975, %i.cv
  %i.cx = add nuw nsw i64 %.016.i.i15, %i.cw
  %i.cy = and i64 %i.cx, %notmask.i27.i           ; 2 uses
  %i.cz = icmp samesign ult i64 %i.cy, %.016.i.i15
  br i1 %i.cz, label %aligned_usize_get.exit.i17.thread, label %.thread212

.thread212:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.u
  %.0.i89 = phi i64 [ %i.cy, %sz_s2u_compute.exit29.i ], [ 16384, %bb.u ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.da = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.db = add nuw nsw i64 %1, 4095
  %i.dc = and i64 %i.db, 9223372036854771712
  %i.dd = add nsw i64 %i.dc, -4096
  %i.de = add nuw i64 %i.dd, %.0.i89
  %i.df = add i64 %i.de, %i.da
  %i.dg = icmp ult i64 %i.df, %.0.i89
  %..0.i = select i1 %i.dg, i64 0, i64 %.0.i89
  br label %aligned_usize_get.exit.i17

aligned_usize_get.exit.i17:                       ; preds = %.thread212, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread212 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.dh = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i16 = icmp ult i64 %i.dh, -8070450532247928832
  br i1 %spec.select.i.i16, label %aligned_usize_get.exit.i17.thread, label %bb.w

bb.w:                                             ; preds = %aligned_usize_get.exit.i17
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = icmp sgt i8 %i.dj, 0
  br i1 %i.dk, label %tcache_get_from_ind.exit.i, label %bb.x, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.dl = load i8, ptr %i.e, align 1, !tbaa !104, !range !105, !noundef !106
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.dm, ptr %i.dn, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.w
  %i.do = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %arena_get.exit115, label %imalloc_no_sample.exit, !prof !11

arena_get.exit115:                                ; preds = %tcache_get_from_ind.exit.i
  %i.dq = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.y, label %imalloc_no_sample.exit, !prof !12

bb.y:                                             ; preds = %arena_get.exit115
  %i.ds = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i17.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.x, %bb.y, %tcache_get_from_ind.exit.i, %arena_get.exit115
  %.0.i.i33223.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit115 ], [ %spec.select, %bb.x ], [ null, %bb.y ]
  %.1198.ph = phi ptr [ %i.do, %tcache_get_from_ind.exit.i ], [ %i.dq, %arena_get.exit115 ], [ null, %bb.x ], [ null, %bb.y ]
  %i.dt = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1198.ph, i64 noundef %.018.i, i64 noundef %1, i1 noundef zeroext %i.bt, ptr noundef %.0.i.i33223.ph) #20 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %aligned_usize_get.exit.i17.thread, label %bb.z, !prof !124

bb.z:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !113
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !114
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !115
  %i.ed = load i64, ptr %i.dv, align 8, !tbaa !27 ; 2 uses
  %i.ee = add i64 %i.ed, %.018.i
  store i64 %i.ee, ptr %i.dv, align 8, !tbaa !27
  %i.ef = load i64, ptr %i.dz, align 8, !tbaa !27
  %i.eg = sub i64 %i.ef, %i.ed
  %i.eh = icmp ult i64 %.018.i, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %4) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i21 = xor i1 %i.bt, true
  %i.ei = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.ej = trunc nuw i8 %i.ei to i1
  %or.cond45.i22 = select i1 %.not.i21, i1 %i.ej, i1 false, !prof !118
  br i1 %or.cond45.i22, label %bb.ac, label %bb.ad, !prof !118

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.ek(ptr noundef nonnull %i.dt, i64 noundef %.018.i) #20, !inline_history !120
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr %i.dt, ptr %0, align 8, !tbaa !97
  br label %aligned_usize_get.exit.i17.thread

aligned_usize_get.exit.i17.thread:                ; preds = %bb.y, %bb.v, %sz_s2u_compute.exit29.i, %bb.t, %compute_size_with_overflow.exit, %imalloc_no_sample.exit, %aligned_usize_get.exit.i17, %bb.ad
  %.0.i.ph = phi i32 [ 12, %imalloc_no_sample.exit ], [ 12, %aligned_usize_get.exit.i17 ], [ 22, %compute_size_with_overflow.exit ], [ 12, %bb.v ], [ 0, %bb.ad ], [ 12, %bb.t ], [ 12, %sz_s2u_compute.exit29.i ], [ 12, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.el = ptrtoint ptr %0 to i64
  store i64 %i.el, ptr %i.a, align 16, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.em, align 8, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.en, align 16, !tbaa !27
  %i.eo = load ptr, ptr %0, align 8, !tbaa !97
  %i.ep = zext nneg i32 %.0.i.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 1, ptr noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.i, %sz_s2u_compute.exit29.i94, %bb.g, %compute_size_with_overflow.exit32, %imalloc_no_sample.exit73, %aligned_usize_get.exit.i, %bb.l, %imalloc_init_check.exit, %aligned_usize_get.exit.i17.thread
  %.0.i236 = phi i32 [ %.0.i.ph, %aligned_usize_get.exit.i17.thread ], [ 12, %imalloc_init_check.exit ], [ 12, %aligned_usize_get.exit.i ], [ 0, %bb.l ], [ 12, %imalloc_no_sample.exit73 ], [ 22, %compute_size_with_overflow.exit32 ], [ 12, %bb.g ], [ 12, %sz_s2u_compute.exit29.i94 ], [ 12, %bb.i ]
  ret i32 %.0.i236
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @je_aligned_alloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
end_hunk_0
