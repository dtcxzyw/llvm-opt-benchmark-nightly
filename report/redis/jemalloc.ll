inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_arena_choose_hard:bb.a
  %i.en = load i32, ptr %i.em, align 4, !tbaa !85
  %i.eo = urem i32 %i.ej, %i.en
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv.i104
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !14
  %exitcond.not.i106 = icmp eq i64 %indvars.iv.i104, 38
  br i1 %exitcond.not.i106, label %arena_bind.exit107, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i105 = or disjoint i64 %indvars.iv.i104, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv.next.i105
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !85
  %i.eu = urem i32 %i.ej, %i.et
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv.next.i105
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !14
  %indvars.iv.next.i105.1 = add nuw nsw i64 %indvars.iv.i104, 2
  br label %bb.ah

arena_bind.exit107:                               ; preds = %bb.ah
  %i.ex = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  tail call void @je_arena_nthreads_inc(ptr noundef %i.ex, i1 noundef zeroext true) #20
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.ag, %bb.af, %arena_new_create_background_thread.exit, %arena_bind.exit107, %arena_bind.exit
  %.4 = phi ptr [ %.0.i84, %arena_bind.exit ], [ %i.ef, %arena_bind.exit107 ], [ null, %.thread ], [ %.376.1, %bb.ag ], [ %.376.1, %bb.af ], [ %.376.1, %arena_new_create_background_thread.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define hidden void @je_iarena_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 78928
  %.val = load i32, ptr %i.c, align 8, !tbaa !38
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  tail call void @je_arena_nthreads_dec(ptr noundef %i.f, i1 noundef zeroext true) #20
  store ptr null, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_arena_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 78928
  %.val = load i32, ptr %i.c, align 8, !tbaa !38
  %i.d = zext i32 %.val to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.d
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  tail call void @je_arena_nthreads_dec(ptr noundef %i.f, i1 noundef zeroext false) #20
  store ptr null, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden ptr @je_malloc_default(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 5 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i76 = icmp eq i8 %i.f, 0
  br i1 %.not.i76, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.v, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i77276 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 16 uses
  %i.i = icmp ult i64 %0, 4097
  br i1 %i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.j = add nuw nsw i64 %0, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i32
  br label %sz_size2index.exit.i

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.o, label %aligned_usize_get.exit.i.thread, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw i64 %0, 1
  %i.q = add i64 %i.p, -1
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.q, i1 true) ; 3 uses
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i64 60, %i.r
  %i.u = ashr exact i64 -1152921504606846976, %i.r
  %i.v = add nsw i64 %0, -1
  %i.w = and i64 %i.u, %i.v
  %i.x = lshr i64 %i.w, %i.t
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 3
  %i.aa = shl nuw nsw i32 %i.s, 2
  %reass.sub263 = sub nsw i32 %i.z, %i.aa
  %i.ab = add nsw i32 %reass.sub263, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.d, %bb.b
  %.0.i50.i = phi i32 [ %i.n, %bb.b ], [ %i.ab, %bb.d ] ; 7 uses
  %i.ac = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ac, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i39, !prof !91

iallocztm.exit.i39:                               ; preds = %sz_size2index.exit.i
  %i.ad = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !27 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 872 ; 3 uses
  %i.ah = icmp samesign ult i64 %0, 14337
  br i1 %i.ah, label %bb.e, label %bb.l, !prof !13

bb.e:                                             ; preds = %iallocztm.exit.i39
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 880
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ad ; 8 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !98 ; 2 uses
  %i.aq = trunc i64 %i.am to i16
  %.not.i24.i56 = icmp eq i16 %i.ap, %i.aq
  br i1 %.not.i24.i56, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i57.thread

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !99
  %.not21.i.i66 = icmp eq i16 %i.as, %i.ap
  br i1 %.not21.i.i66, label %cache_bin_alloc_impl.exit.i57, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !92
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = trunc i64 %i.at to i16
  store i16 %i.au, ptr %i.ao, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i57.thread

cache_bin_alloc_impl.exit.i57:                    ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.av = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i77276, ptr noundef null) ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.i, !prof !11

bb.i:                                             ; preds = %cache_bin_alloc_impl.exit.i57
  %i.ax = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ad
  %.val = load i16, ptr %i.ay, align 2, !tbaa !102
  %i.az = icmp eq i16 %.val, 0
  br i1 %i.az, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.av, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i57, %bb.j
  %.0.i22.i62.ph = phi ptr [ %i.ba, %bb.j ], [ null, %cache_bin_alloc_impl.exit.i57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit70

bb.k:                                             ; preds = %bb.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bb = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.av, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %4 = trunc nuw i8 %i.bc to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %4, label %cache_bin_alloc_impl.exit.i57.thread, label %aligned_usize_get.exit.i.thread

cache_bin_alloc_impl.exit.i57.thread:             ; preds = %bb.h, %bb.f, %bb.k
  %.131.i.i65 = phi ptr [ %i.bb, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !107
  br label %imalloc_no_sample.exit70

bb.l:                                             ; preds = %iallocztm.exit.i39
  %i.bg = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i41 = icmp ugt i64 %0, %i.bg
  br i1 %.not24.i.i41, label %bb.r, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 880
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.ad ; 7 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !98 ; 2 uses
  %i.bp = trunc i64 %i.bl to i16
  %.not.i26.i42 = icmp eq i16 %i.bo, %i.bp
  br i1 %.not.i26.i42, label %bb.o, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !92
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !99
  %.not21.i28.i55 = icmp eq i16 %i.br, %i.bo
  br i1 %.not21.i28.i55, label %cache_bin_alloc_impl.exit29.i43, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !92
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = trunc i64 %i.bs to i16
  store i16 %i.bt, ptr %i.bn, align 8, !tbaa !98
  br label %bb.q

cache_bin_alloc_impl.exit29.i43:                  ; preds = %bb.o
  %i.bu = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i77276, ptr noundef null) ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i48, !prof !11

sz_s2u.exit.i48:                                  ; preds = %cache_bin_alloc_impl.exit29.i43
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.bi, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.bw = shl nuw i64 %0, 1
  %i.bx = add i64 %i.bw, -1
  %i.by = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bx, i1 true) ; 2 uses
  %notmask.i.i45 = ashr exact i64 -1152921504606846976, %i.by
  %i.bz = lshr i64 1152921504606846975, %i.by
  %i.ca = add nuw nsw i64 %0, %i.bz
  %i.cb = and i64 %i.ca, %notmask.i.i45
  %i.cc = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %i.bu, i64 noundef %i.cb, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit70

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !107
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !107
  br label %imalloc_no_sample.exit70

bb.r:                                             ; preds = %bb.l
  %i.cg = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i77276, ptr noundef null, i64 noundef %0, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit70

imalloc_no_sample.exit70:                         ; preds = %bb.r, %.thread, %cache_bin_alloc_impl.exit.i57.thread, %bb.q, %sz_s2u.exit.i48
  %.0.i21.i53 = phi ptr [ %i.cg, %bb.r ], [ %.0.i22.i62.ph, %.thread ], [ %.131.i.i65, %cache_bin_alloc_impl.exit.i57.thread ], [ %i.bk, %bb.q ], [ %i.cc, %sz_s2u.exit.i48 ] ; 2 uses
  %i.ch = icmp eq ptr %.0.i21.i53, null
  br i1 %i.ch, label %aligned_usize_get.exit.i.thread, label %bb.s, !prof !108

bb.s:                                             ; preds = %imalloc_no_sample.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 840 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !112
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !113
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i77276, i64 848
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !115
  %i.cq = load i64, ptr %i.ci, align 8, !tbaa !27 ; 2 uses
  %i.cr = add i64 %i.cq, %i.af
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !27
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.ct = sub i64 %i.cs, %i.cq
  %i.cu = icmp ult i64 %i.af, %i.ct
  br i1 %i.cu, label %bb.u, label %bb.t, !prof !13

bb.t:                                             ; preds = %bb.s
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i77276, ptr noundef nonnull %2) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit29.i43, %bb.k, %bb.c, %sz_size2index.exit.i, %imalloc_no_sample.exit70
  %.sroa.11.1 = phi i64 [ %i.af, %imalloc_no_sample.exit70 ], [ 0, %bb.c ], [ 0, %sz_size2index.exit.i ], [ %i.af, %bb.k ], [ %i.af, %cache_bin_alloc_impl.exit29.i43 ]
  %i.cv = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cv, align 4, !tbaa !7
  br label %imalloc.exit

bb.v:                                             ; preds = %tsd_fetch_impl.exit
  %i.cw = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.x, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.cy = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.cy, label %imalloc_init_check.exit, label %bb.x, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.w
  %i.cz = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.cz, align 4, !tbaa !7
  br label %imalloc.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.db = trunc nuw i8 %i.da to i1                ; 6 uses
  %i.dc = icmp ult i64 %0, 4097
  br i1 %i.dc, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.dd = add nuw nsw i64 %0, 7
  %i.de = lshr i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = zext i8 %i.dg to i32
  br label %sz_size2index.exit.i20

bb.z:                                             ; preds = %bb.x
  %i.di = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.di, label %aligned_usize_get.exit.i14.thread, label %bb.aa, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.dj = shl nuw i64 %0, 1
  %i.dk = add i64 %i.dj, -1
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dk, i1 true) ; 3 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = sub nuw nsw i64 60, %i.dl
  %i.do = ashr exact i64 -1152921504606846976, %i.dl
  %i.dp = add nsw i64 %0, -1
  %i.dq = and i64 %i.do, %i.dp
  %i.dr = lshr i64 %i.dq, %i.dn
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 3
  %i.du = shl nuw nsw i32 %i.dm, 2
  %reass.sub = sub nsw i32 %i.dt, %i.du
  %i.dv = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i20

sz_size2index.exit.i20:                           ; preds = %bb.aa, %bb.y
  %.0.i50.i21 = phi i32 [ %i.dh, %bb.y ], [ %i.dv, %bb.aa ] ; 7 uses
  %i.dw = icmp samesign ugt i32 %.0.i50.i21, 234
  br i1 %i.dw, label %aligned_usize_get.exit.i14.thread, label %bb.ab, !prof !117

bb.ab:                                            ; preds = %sz_size2index.exit.i20
  %i.dx = zext nneg i32 %.0.i50.i21 to i64        ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dx ; 3 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !27 ; 9 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !14
  %i.ec = icmp sgt i8 %i.eb, 0
  br i1 %i.ec, label %tcache_get_from_ind.exit.i, label %bb.ac, !prof !118

bb.ac:                                            ; preds = %bb.ab
  %i.ed = load i8, ptr %i.g, align 8, !tbaa !104, !range !105, !noundef !106
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 872 ; 3 uses
  br i1 %i.ee, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.ab
  %i.eg = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %arena_get.exit112, label %iallocztm.exit.i.thread, !prof !11

arena_get.exit112:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ei = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ad, label %iallocztm.exit.i.thread, !prof !12

bb.ad:                                            ; preds = %arena_get.exit112
  %i.ek = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i14.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ac
  %i.el = icmp samesign ult i64 %0, 14337
  br i1 %i.el, label %bb.ae, label %bb.an, !prof !13

bb.ae:                                            ; preds = %iallocztm.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.dx ; 8 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !92 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !97 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.et = load i16, ptr %i.es, align 8, !tbaa !98 ; 2 uses
  %i.eu = trunc i64 %i.eq to i16
  %.not.i24.i = icmp eq i16 %i.et, %i.eu
  br i1 %.not.i24.i, label %bb.ag, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  store ptr %i.er, ptr %i.en, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ag:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ew = load i16, ptr %i.ev, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.ew, %i.et
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.er, ptr %i.en, align 8, !tbaa !92
  %i.ex = ptrtoint ptr %i.er to i64
  %i.ey = trunc i64 %i.ex to i16
  store i16 %i.ey, ptr %i.es, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ez = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.thread244, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fb = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %i.dx
  %.val105 = load i16, ptr %i.fc, align 2, !tbaa !102
  %i.fd = icmp eq i16 %.val105, 0
  br i1 %i.fd, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.fe = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ez, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0.i50.i21, i1 noundef zeroext %i.db) #20
  br label %.thread244

.thread244:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.aj
  %.0.i22.i.ph = phi ptr [ %i.fe, %bb.aj ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ak:                                            ; preds = %bb.ai
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.en, i32 noundef %.0.i50.i21, i1 noundef zeroext true) #20
  %i.ff = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.en, i32 noundef %.0.i50.i21, ptr noundef nonnull %i.b) #20
  %i.fg = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %5 = trunc nuw i8 %i.fg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %5, label %cache_bin_alloc_impl.exit.i.thread, label %aligned_usize_get.exit.i14.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.ah, %bb.af, %bb.ak
  %.131.i.i = phi ptr [ %i.ff, %bb.ak ], [ %i.ep, %bb.af ], [ %i.ep, %bb.ah ] ; 2 uses
  br i1 %i.db, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fh = load i64, ptr %i.dy, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fh, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cache_bin_alloc_impl.exit.i.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !107
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.an:                                            ; preds = %iallocztm.exit.i
  %i.fl = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %0, %i.fl
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.dx ; 7 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !92 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !97 ; 2 uses
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !98 ; 2 uses
  %i.fu = trunc i64 %i.fq to i16
  %.not.i26.i = icmp eq i16 %i.ft, %i.fu
  br i1 %.not.i26.i, label %bb.aq, label %bb.ap, !prof !11

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !92
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %i.fw = load i16, ptr %i.fv, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.fw, %i.ft
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.ar, !prof !11

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fr, ptr %i.fn, align 8, !tbaa !92
  %i.fx = ptrtoint ptr %i.fr to i64
  %i.fy = trunc i64 %i.fx to i16
  store i16 %i.fy, ptr %i.fs, align 8, !tbaa !98
  br label %bb.as

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.aq
  %i.fz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %aligned_usize_get.exit.i14.thread, label %sz_s2u.exit.i, !prof !11

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.fn, i32 noundef %.0.i50.i21, i1 noundef zeroext false) #20
  %i.gb = shl nuw i64 %0, 1
  %i.gc = add i64 %i.gb, -1
  %i.gd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gc, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gd
  %i.ge = lshr i64 1152921504606846975, %i.gd
  %i.gf = add nuw nsw i64 %0, %i.ge
  %i.gg = and i64 %i.gf, %notmask.i.i
  %i.gh = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fz, i64 noundef %i.gg, i1 noundef zeroext %i.db) #20
  br label %imalloc_no_sample.exit

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
end_hunk_0
begin_hunk_1_@je_aligned_alloc:bb.a
  %i.eh = icmp ult i64 %.018.i, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i19 = xor i1 %i.bt, true
  %i.ei = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.ej = trunc nuw i8 %i.ei to i1
  %or.cond45.i20 = select i1 %.not.i19, i1 %i.ej, i1 false, !prof !118
  br i1 %or.cond45.i20, label %bb.ad, label %bb.af, !prof !118

bb.ad:                                            ; preds = %bb.ac
  %i.ek = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.ek(ptr noundef nonnull %i.dt, i64 noundef %.018.i) #20, !inline_history !120
  br label %bb.af

aligned_usize_get.exit.i15.thread:                ; preds = %bb.z, %bb.w, %sz_s2u_compute.exit29.i, %bb.u, %aligned_usize_get.exit.i15, %imalloc_no_sample.exit
  %i.el = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.el, align 4, !tbaa !7
  br label %bb.af

bb.ae:                                            ; preds = %compute_size_with_overflow.exit
  %i.em = tail call ptr @__errno_location() #22
  store i32 22, ptr %i.em, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %aligned_usize_get.exit.i15.thread, %bb.ae
  %.0204.ph = phi ptr [ %i.dt, %bb.ad ], [ null, %bb.ae ], [ %i.dt, %bb.ac ], [ null, %aligned_usize_get.exit.i15.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.en, align 8, !tbaa !27
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !27
  %i.eo = ptrtoint ptr %.0204.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 2, ptr noundef %.0204.ph, i64 noundef %i.eo, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.l, %aligned_usize_get.exit.i.thread, %bb.m, %imalloc_init_check.exit, %bb.af
  %.0204237 = phi ptr [ %.0204.ph, %bb.af ], [ null, %imalloc_init_check.exit ], [ null, %bb.m ], [ null, %aligned_usize_get.exit.i.thread ], [ %i.aw, %bb.l ]
  ret ptr %.0204237
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias ptr @je_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @je_calloc_internal(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14
  %.not.i78 = icmp eq i8 %i.f, 0
  br i1 %.not.i78, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.a
  %i.g = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.d, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.h = icmp eq i8 %.pre, 0
  br i1 %i.h, label %tsd_fetch_impl.exit.thread, label %bb.x, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.a, %tsd_fetch_impl.exit
  %.0.i79283 = phi ptr [ %i.g, %tsd_fetch_impl.exit ], [ %i.d, %bb.a ] ; 16 uses
  %mul264 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val265 = extractvalue { i64, i1 } %mul264, 0 ; 12 uses
  %mul.ov266 = extractvalue { i64, i1 } %mul264, 1
  %i.i = icmp eq i64 %mul.val265, 0
  br i1 %i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %tsd_fetch_impl.exit.thread
  %.not.i30 = icmp ne i64 %0, 0
  %i.j = icmp ne i64 %1, 0
  %or.cond = and i1 %.not.i30, %i.j
  br i1 %or.cond, label %aligned_usize_get.exit.i.thread, label %.thread, !prof !126

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.k = or i64 %1, %0
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %compute_size_with_overflow.exit31.thread, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  br i1 %mul.ov266, label %aligned_usize_get.exit.i.thread, label %compute_size_with_overflow.exit31.thread, !prof !127

compute_size_with_overflow.exit31.thread:         ; preds = %bb.c, %bb.d
  %i.m = icmp ult i64 %mul.val265, 4097
  br i1 %i.m, label %.thread, label %bb.e, !prof !128

.thread:                                          ; preds = %bb.b, %compute_size_with_overflow.exit31.thread
  %i.n = add nuw nsw i64 %mul.val265, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i32
  br label %sz_size2index.exit.i

bb.e:                                             ; preds = %compute_size_with_overflow.exit31.thread
  %i.s = icmp ugt i64 %mul.val265, 8070450532247928832
  br i1 %i.s, label %aligned_usize_get.exit.i.thread, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i64 %mul.val265, 1
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 3 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v
  %i.y = ashr exact i64 -1152921504606846976, %i.v
  %i.z = add nsw i64 %mul.val265, -1
  %i.aa = and i64 %i.y, %i.z
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %i.ae = shl nuw nsw i32 %i.w, 2
  %reass.sub270 = sub nsw i32 %i.ad, %i.ae
  %i.af = add nsw i32 %reass.sub270, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.f, %.thread
  %.0.i50.i = phi i32 [ %i.r, %.thread ], [ %i.af, %bb.f ] ; 7 uses
  %i.ag = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ag, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i41, !prof !91

iallocztm.exit.i41:                               ; preds = %sz_size2index.exit.i
  %i.ah = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 872 ; 3 uses
  %i.al = icmp samesign ult i64 %mul.val265, 14337
  br i1 %i.al, label %bb.g, label %bb.n, !prof !13

bb.g:                                             ; preds = %iallocztm.exit.i41
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 880
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ah ; 8 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !98 ; 2 uses
  %i.au = trunc i64 %i.aq to i16
  %.not.i24.i58 = icmp eq i16 %i.at, %i.au
  br i1 %.not.i24.i58, label %bb.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i59.thread

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !99
  %.not21.i.i68 = icmp eq i16 %i.aw, %i.at
  br i1 %.not21.i.i68, label %cache_bin_alloc_impl.exit.i59, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !92
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = trunc i64 %i.ax to i16
  store i16 %i.ay, ptr %i.as, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i59.thread

cache_bin_alloc_impl.exit.i59:                    ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.az = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i79283, ptr noundef null) ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.thread214, label %bb.k, !prof !11

bb.k:                                             ; preds = %cache_bin_alloc_impl.exit.i59
  %i.bb = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ah
  %.val = load i16, ptr %i.bc, align 2, !tbaa !102
  %i.bd = icmp eq i16 %.val, 0
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.be = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.az, i64 noundef range(i64 0, 14337) %mul.val265, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  br label %.thread214

.thread214:                                       ; preds = %cache_bin_alloc_impl.exit.i59, %bb.l
  %.0.i22.i64.ph = phi ptr [ %i.be, %bb.l ], [ null, %cache_bin_alloc_impl.exit.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit72

bb.m:                                             ; preds = %bb.k
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.an, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bf = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.an, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bg = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %5 = trunc nuw i8 %i.bg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %5, label %.cache_bin_alloc_impl.exit.i59.thread_crit_edge, label %aligned_usize_get.exit.i.thread

.cache_bin_alloc_impl.exit.i59.thread_crit_edge:  ; preds = %bb.m
  %.pre271 = load i64, ptr %i.ai, align 8, !tbaa !27
  br label %cache_bin_alloc_impl.exit.i59.thread

cache_bin_alloc_impl.exit.i59.thread:             ; preds = %.cache_bin_alloc_impl.exit.i59.thread_crit_edge, %bb.j, %bb.h
  %i.bh = phi i64 [ %.pre271, %.cache_bin_alloc_impl.exit.i59.thread_crit_edge ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ]
  %.131.i.i67 = phi ptr [ %i.bf, %.cache_bin_alloc_impl.exit.i59.thread_crit_edge ], [ %i.ap, %bb.h ], [ %i.ap, %bb.j ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i67, i8 0, i64 %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !107
  br label %imalloc_no_sample.exit72

bb.n:                                             ; preds = %iallocztm.exit.i41
  %i.bl = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i43 = icmp ugt i64 %mul.val265, %i.bl
  br i1 %.not24.i.i43, label %bb.t, label %bb.o, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 880
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ah ; 7 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !98 ; 2 uses
  %i.bu = trunc i64 %i.bq to i16
  %.not.i26.i44 = icmp eq i16 %i.bt, %i.bu
  br i1 %.not.i26.i44, label %bb.q, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !92
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !99
  %.not21.i28.i57 = icmp eq i16 %i.bw, %i.bt
  br i1 %.not21.i28.i57, label %cache_bin_alloc_impl.exit29.i45, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !92
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = trunc i64 %i.bx to i16
  store i16 %i.by, ptr %i.bs, align 8, !tbaa !98
  br label %bb.s

cache_bin_alloc_impl.exit29.i45:                  ; preds = %bb.q
  %i.bz = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i79283, ptr noundef null) ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i50, !prof !11

sz_s2u.exit.i50:                                  ; preds = %cache_bin_alloc_impl.exit29.i45
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.bn, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.cb = shl nuw i64 %mul.val265, 1
  %i.cc = add i64 %i.cb, -1
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cc, i1 true) ; 2 uses
  %notmask.i.i47 = ashr exact i64 -1152921504606846976, %i.cd
  %i.ce = lshr i64 1152921504606846975, %i.cd
  %i.cf = add nuw nsw i64 %mul.val265, %i.ce
  %i.cg = and i64 %i.cf, %notmask.i.i47
  %i.ch = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %i.bz, i64 noundef %i.cg, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit72

bb.s:                                             ; preds = %bb.p, %bb.r
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bp, i8 0, i64 %i.aj, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !107
  %i.ck = add i64 %i.cj, 1
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !107
  br label %imalloc_no_sample.exit72

bb.t:                                             ; preds = %bb.n
  %i.cl = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i79283, ptr noundef null, i64 noundef %mul.val265, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit72

imalloc_no_sample.exit72:                         ; preds = %bb.t, %.thread214, %cache_bin_alloc_impl.exit.i59.thread, %bb.s, %sz_s2u.exit.i50
  %.0.i21.i55 = phi ptr [ %i.cl, %bb.t ], [ %.0.i22.i64.ph, %.thread214 ], [ %.131.i.i67, %cache_bin_alloc_impl.exit.i59.thread ], [ %i.bp, %bb.s ], [ %i.ch, %sz_s2u.exit.i50 ] ; 2 uses
  %i.cm = icmp eq ptr %.0.i21.i55, null
  br i1 %i.cm, label %aligned_usize_get.exit.i.thread, label %bb.u, !prof !108

bb.u:                                             ; preds = %imalloc_no_sample.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 840 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !112
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !114
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i79283, i64 848
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !115
  %i.cv = load i64, ptr %i.cn, align 8, !tbaa !27 ; 2 uses
  %i.cw = add i64 %i.cv, %i.aj
  store i64 %i.cw, ptr %i.cn, align 8, !tbaa !27
  %i.cx = load i64, ptr %i.cr, align 8, !tbaa !27
  %i.cy = sub i64 %i.cx, %i.cv
  %i.cz = icmp ult i64 %i.aj, %i.cy
  br i1 %i.cz, label %bb.w, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i79283, ptr noundef nonnull %3) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %imalloc.exit.thread

aligned_usize_get.exit.i.thread:                  ; preds = %bb.b, %cache_bin_alloc_impl.exit29.i45, %bb.m, %bb.e, %sz_size2index.exit.i, %imalloc_no_sample.exit72, %bb.d
  %.sroa.11.1 = phi i64 [ 0, %bb.b ], [ 0, %bb.e ], [ %i.aj, %imalloc_no_sample.exit72 ], [ 0, %bb.d ], [ 0, %sz_size2index.exit.i ], [ %i.aj, %bb.m ], [ %i.aj, %cache_bin_alloc_impl.exit29.i45 ]
  %i.da = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.da, align 4, !tbaa !7
  br label %imalloc.exit.thread

bb.x:                                             ; preds = %tsd_fetch_impl.exit
  %i.db = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.z, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.dd = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.dd, label %imalloc_init_check.exit, label %bb.z, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.y
  %i.de = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.de, align 4, !tbaa !7
  br label %imalloc.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 12 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.df = icmp eq i64 %mul.val, 0
  br i1 %i.df, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %bb.z
  %.not.i27 = icmp ne i64 %0, 0
  %i.dg = icmp ne i64 %1, 0
  %or.cond262 = and i1 %.not.i27, %i.dg
  br i1 %or.cond262, label %aligned_usize_get.exit.i16.thread, label %.thread225, !prof !129

bb.ab:                                            ; preds = %bb.z
  %i.dh = or i64 %1, %0
  %i.di = icmp ult i64 %i.dh, 4294967296
  br i1 %i.di, label %compute_size_with_overflow.exit.thread, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  br i1 %mul.ov, label %aligned_usize_get.exit.i16.thread, label %compute_size_with_overflow.exit.thread, !prof !130

compute_size_with_overflow.exit.thread:           ; preds = %bb.ab, %bb.ac
  %i.dj = icmp ult i64 %mul.val, 4097
  br i1 %i.dj, label %.thread225, label %bb.ad, !prof !131

.thread225:                                       ; preds = %bb.aa, %compute_size_with_overflow.exit.thread
  %i.dk = add nuw nsw i64 %mul.val, 7
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i32
  br label %sz_size2index.exit.i22

bb.ad:                                            ; preds = %compute_size_with_overflow.exit.thread
  %i.dp = icmp ugt i64 %mul.val, 8070450532247928832
  br i1 %i.dp, label %aligned_usize_get.exit.i16.thread, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dq = shl nuw i64 %mul.val, 1
  %i.dr = add i64 %i.dq, -1
  %i.ds = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dr, i1 true) ; 3 uses
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = sub nuw nsw i64 60, %i.ds
  %i.dv = ashr exact i64 -1152921504606846976, %i.ds
  %i.dw = add nsw i64 %mul.val, -1
  %i.dx = and i64 %i.dv, %i.dw
  %i.dy = lshr i64 %i.dx, %i.du
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 3
  %i.eb = shl nuw nsw i32 %i.dt, 2
  %reass.sub = sub nsw i32 %i.ea, %i.eb
  %i.ec = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i22

sz_size2index.exit.i22:                           ; preds = %bb.ae, %.thread225
  %.0.i50.i23 = phi i32 [ %i.do, %.thread225 ], [ %i.ec, %bb.ae ] ; 7 uses
  %i.ed = icmp samesign ugt i32 %.0.i50.i23, 234
  br i1 %i.ed, label %aligned_usize_get.exit.i16.thread, label %bb.af, !prof !117

bb.af:                                            ; preds = %sz_size2index.exit.i22
  %i.ee = zext nneg i32 %.0.i50.i23 to i64        ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ee ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !27 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ej = icmp sgt i8 %i.ei, 0
  br i1 %i.ej, label %tcache_get_from_ind.exit.i, label %bb.ag, !prof !118

bb.ag:                                            ; preds = %bb.af
  %i.ek = load i8, ptr %i.g, align 8, !tbaa !104, !range !105, !noundef !106
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 872 ; 3 uses
  br i1 %i.el, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.af
  %i.en = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %arena_get.exit114, label %iallocztm.exit.i.thread, !prof !11

arena_get.exit114:                                ; preds = %tcache_get_from_ind.exit.i
  %i.ep = tail call ptr @je_arena_init(ptr noundef nonnull %i.g, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ah, label %iallocztm.exit.i.thread, !prof !12

bb.ah:                                            ; preds = %arena_get.exit114
  %i.er = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.er, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i16.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ag
  %i.es = icmp samesign ult i64 %mul.val, 14337
  br i1 %i.es, label %bb.ai, label %bb.ap, !prof !13

bb.ai:                                            ; preds = %iallocztm.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.ee ; 8 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !92 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !97 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 8, !tbaa !98 ; 2 uses
  %i.fb = trunc i64 %i.ex to i16
  %.not.i24.i = icmp eq i16 %i.fa, %i.fb
  br i1 %.not.i24.i, label %bb.ak, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.fd = load i16, ptr %i.fc, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.fd, %i.fa
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !92
  %i.fe = ptrtoint ptr %i.ey to i64
  %i.ff = trunc i64 %i.fe to i16
  store i16 %i.ff, ptr %i.ez, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.fg = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %.thread249, label %bb.am, !prof !11

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fi = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.ee
  %.val107 = load i16, ptr %i.fj, align 2, !tbaa !102
  %i.fk = icmp eq i16 %.val107, 0
  br i1 %i.fk, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.fl = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fg, i64 noundef range(i64 0, 14337) %mul.val, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  br label %.thread249

.thread249:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.an
  %.0.i22.i.ph = phi ptr [ %i.fl, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eu, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  %i.fm = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.g, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eu, i32 noundef %.0.i50.i23, ptr noundef nonnull %i.b) #20
  %i.fn = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %6 = trunc nuw i8 %i.fn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %6, label %cache_bin_alloc_impl.exit.i.thread, label %aligned_usize_get.exit.i16.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fm, %bb.ao ], [ %i.ew, %bb.aj ], [ %i.ew, %bb.al ] ; 2 uses
  %i.fo = load i64, ptr %i.ef, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fo, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !107
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.ap:                                            ; preds = %iallocztm.exit.i
  %i.fs = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %mul.val, %i.fs
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.aq, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 880
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.ee ; 7 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !92 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !97 ; 2 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 8, !tbaa !98 ; 2 uses
  %i.gb = trunc i64 %i.fx to i16
  %.not.i26.i = icmp eq i16 %i.ga, %i.gb
  br i1 %.not.i26.i, label %bb.as, label %bb.ar, !prof !11

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !92
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.gd = load i16, ptr %i.gc, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.gd, %i.ga
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.at, !prof !11

bb.at:                                            ; preds = %bb.as
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !92
  %i.ge = ptrtoint ptr %i.fy to i64
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.fz, align 8, !tbaa !98
  br label %bb.au

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.as
  %i.gg = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.g, ptr noundef null) ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %aligned_usize_get.exit.i16.thread, label %sz_s2u.exit.i, !prof !11

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.em, ptr noundef nonnull %i.fu, i32 noundef %.0.i50.i23, i1 noundef zeroext false) #20
  %i.gi = shl nuw i64 %mul.val, 1
  %i.gj = add i64 %i.gi, -1
  %i.gk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gj, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gk
  %i.gl = lshr i64 1152921504606846975, %i.gk
  %i.gm = add nuw nsw i64 %mul.val, %i.gl
  %i.gn = and i64 %i.gm, %notmask.i.i
  %i.go = tail call ptr @je_large_malloc(ptr noundef nonnull %i.g, ptr noundef nonnull %i.gg, i64 noundef %i.gn, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.gp = load i64, ptr %i.ef, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 0, i64 %i.gp, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !107
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr %i.gq, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ah, %arena_get.exit114, %bb.ag, %bb.ap
  %.1197.ph289 = phi ptr [ null, %bb.ap ], [ %i.en, %tcache_get_from_ind.exit.i ], [ null, %bb.ah ], [ %i.ep, %arena_get.exit114 ], [ null, %bb.ag ]
  %i.gt = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.g, ptr noundef %.1197.ph289, i64 noundef %mul.val, i32 noundef %.0.i50.i23, i1 noundef zeroext true) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread249, %cache_bin_alloc_impl.exit.i.thread, %bb.au, %sz_s2u.exit.i
  %.0.i34 = phi ptr [ %i.go, %sz_s2u.exit.i ], [ %i.gt, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread249 ], [ %.131.i.i, %cache_bin_alloc_impl.exit.i.thread ], [ %i.fw, %bb.au ] ; 2 uses
  %i.gu = icmp eq ptr %.0.i34, null
  br i1 %i.gu, label %aligned_usize_get.exit.i16.thread, label %bb.av, !prof !119

bb.av:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.gv = getelementptr inbounds nuw i8, ptr %i.g, i64 840 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !112
  %i.gx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !113
  %i.gz = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !114
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 848
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !115
  %i.hd = load i64, ptr %i.gv, align 8, !tbaa !27 ; 2 uses
  %i.he = add i64 %i.hd, %i.eg
  store i64 %i.he, ptr %i.gv, align 8, !tbaa !27
  %i.hf = load i64, ptr %i.gz, align 8, !tbaa !27
  %i.hg = sub i64 %i.hf, %i.hd
  %i.hh = icmp ult i64 %i.eg, %i.hg
  br i1 %i.hh, label %bb.ax, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %bb.av
  call void @je_te_event_trigger(ptr noundef nonnull %i.g, ptr noundef nonnull %4) #20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %imalloc.exit

aligned_usize_get.exit.i16.thread:                ; preds = %bb.aa, %cache_bin_alloc_impl.exit29.i, %bb.ao, %bb.ah, %bb.ad, %sz_size2index.exit.i22, %imalloc_no_sample.exit, %bb.ac
  %.sroa.11.3 = phi i64 [ 0, %bb.aa ], [ 0, %bb.ad ], [ %i.eg, %imalloc_no_sample.exit ], [ 0, %bb.ac ], [ 0, %sz_size2index.exit.i22 ], [ %i.eg, %bb.ah ], [ %i.eg, %bb.ao ], [ %i.eg, %cache_bin_alloc_impl.exit29.i ]
  %i.hi = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.hi, align 4, !tbaa !7
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.ax, %aligned_usize_get.exit.i16.thread
  %.0205 = phi ptr [ %.0.i34, %bb.ax ], [ null, %aligned_usize_get.exit.i16.thread ] ; 3 uses
  %.sroa.11.0 = phi i64 [ %i.eg, %bb.ax ], [ %.sroa.11.3, %aligned_usize_get.exit.i16.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.hj, align 8, !tbaa !27
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !27
  %i.hk = ptrtoint ptr %.0205 to i64
  call void @je_hook_invoke_alloc(i32 noundef 3, ptr noundef %.0205, i64 noundef %i.hk, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit.thread

imalloc.exit.thread:                              ; preds = %bb.w, %aligned_usize_get.exit.i.thread, %imalloc_init_check.exit, %imalloc.exit
  %.sroa.11.0261 = phi i64 [ %.sroa.11.0, %imalloc.exit ], [ %.sroa.11.1, %aligned_usize_get.exit.i.thread ], [ %i.aj, %bb.w ], [ 0, %imalloc_init_check.exit ]
  %.0205260 = phi ptr [ %.0205, %imalloc.exit ], [ null, %aligned_usize_get.exit.i.thread ], [ %.0.i21.i55, %bb.w ], [ null, %imalloc_init_check.exit ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %imalloc.exit.thread
  store i64 %.sroa.11.0261, ptr %2, align 8, !tbaa !27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %imalloc.exit.thread
  ret ptr %.0205260
}

; Function Attrs: noinline nounwind uwtable
define hidden void @je_free_default(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %ifree.exit20, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load i8, ptr %i.c, align 8, !tbaa !14
  %.not.i45 = icmp eq i8 %i.d, 0
  br i1 %.not.i45, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.b
  %i.e = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.b, i1 noundef zeroext true) #20 ; 18 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.f = icmp eq i8 %.pre, 0
  br i1 %i.f, label %tsd_fetch_impl.exit.thread, label %bb.l, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.b, %tsd_fetch_impl.exit
  %.0.i4688 = phi ptr [ %i.e, %tsd_fetch_impl.exit ], [ %i.b, %bb.b ] ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 872 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 448 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = tail call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef nonnull %.0.i4688, ptr noundef nonnull %i.h, i64 noundef %i.i) ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.j, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.j, 1
  %i.k = and i64 %.fca.0.extract.i, 4294967295    ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %.sroa.074.0.extract.trunc = trunc i64 %.fca.0.extract.i to i32 ; 3 uses
  %i.n = and i32 %.fca.1.extract.i, 256
  %.not85 = icmp eq i32 %i.n, 0
  br i1 %.not85, label %bb.g, label %bb.c, !prof !11

bb.c:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i4688, i64 880
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 18 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !132
  %i.u = trunc i64 %i.r to i16
  %i.v = icmp eq i16 %i.t, %i.u
  br i1 %i.v, label %cache_bin_dalloc_easy.exit38, label %cache_bin_dalloc_easy.exit38.thread, !prof !11

cache_bin_dalloc_easy.exit38.thread:              ; preds = %bb.c
end_hunk_1
begin_hunk_2_@je_valloc:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %imalloc.exit

bb.j:                                             ; preds = %tsd_fetch_impl.exit
  %i.ba = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.bc, label %imalloc_init_check.exit, label %bb.l, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.k
  %i.bd = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.bd, align 4, !tbaa !7
  br label %imalloc.exit

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.be = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %i.bg = icmp ult i64 %0, 14337
  br i1 %i.bg, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bh = add nuw nsw i64 %0, 4095
  %i.bi = and i64 %i.bh, 28672                    ; 4 uses
  %i.bj = icmp samesign ult i64 %i.bi, 4097
  br i1 %i.bj, label %bb.n, label %sz_s2u_compute.exit.i87, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.bk = lshr exact i64 %i.bi, 3
  %i.bl = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i87:                          ; preds = %bb.m
  %i.bq = shl nuw nsw i64 %i.bi, 1
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.br, i1 true) ; 2 uses
  %notmask.i.i86 = ashr exact i64 -1152921504606846976, %i.bs
  %i.bt = lshr i64 1152921504606846975, %i.bs
  %i.bu = add nuw nsw i64 %i.bi, %i.bt
  %i.bv = and i64 %i.bu, %notmask.i.i86
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i87, %bb.n
  %.0.i24.i = phi i64 [ %i.bp, %bb.n ], [ %i.bv, %sz_s2u_compute.exit.i87 ] ; 2 uses
  %i.bw = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.bw, label %aligned_usize_get.exit.i13, label %.thread208

bb.o:                                             ; preds = %bb.l
  %i.bx = icmp ult i64 %0, 16385
  br i1 %i.bx, label %.thread208, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.by, label %sz_s2u_compute.exit29.i, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bz = shl nuw i64 %0, 1
  %i.ca = add i64 %i.bz, -1
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ca, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.cb
  %i.cc = lshr i64 1152921504606846975, %i.cb
  %i.cd = add nuw nsw i64 %0, %i.cc
  %i.ce = and i64 %i.cd, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.q, %bb.p
  %.0.i28.i = phi i64 [ %i.ce, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.cf = icmp ult i64 %.0.i28.i, %0
  br i1 %i.cf, label %aligned_usize_get.exit.i13.thread, label %.thread208

.thread208:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.o
  %.0.i85 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.o ], [ 16384, %sz_s2u.exit25.i ] ; 2 uses
  %i.cg = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ch = xor i64 %.0.i85, -1
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  %..0.i = select i1 %i.ci, i64 0, i64 %.0.i85
  br label %aligned_usize_get.exit.i13

aligned_usize_get.exit.i13:                       ; preds = %.thread208, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread208 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 5 uses
  %i.cj = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i12 = icmp ult i64 %i.cj, -8070450532247928832
  br i1 %spec.select.i.i12, label %aligned_usize_get.exit.i13.thread, label %bb.r

bb.r:                                             ; preds = %aligned_usize_get.exit.i13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = icmp sgt i8 %i.cl, 0
  br i1 %i.cm, label %tcache_get_from_ind.exit.i, label %bb.s, !prof !118

bb.s:                                             ; preds = %bb.r
  %i.cn = load i8, ptr %i.e, align 8, !tbaa !104, !range !105, !noundef !106
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 872
  %spec.select = select i1 %i.co, ptr %i.cp, ptr null
  br label %imalloc_no_sample.exit

tcache_get_from_ind.exit.i:                       ; preds = %bb.r
  %i.cq = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %arena_get.exit111, label %imalloc_no_sample.exit, !prof !11

arena_get.exit111:                                ; preds = %tcache_get_from_ind.exit.i
  %i.cs = tail call ptr @je_arena_init(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.t, label %imalloc_no_sample.exit, !prof !12

bb.t:                                             ; preds = %arena_get.exit111
  %i.cu = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i13.thread, label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.s, %bb.t, %tcache_get_from_ind.exit.i, %arena_get.exit111
  %.0.i.i29218.ph = phi ptr [ null, %tcache_get_from_ind.exit.i ], [ null, %arena_get.exit111 ], [ %spec.select, %bb.s ], [ null, %bb.t ]
  %.1194.ph = phi ptr [ %i.cq, %tcache_get_from_ind.exit.i ], [ %i.cs, %arena_get.exit111 ], [ null, %bb.s ], [ null, %bb.t ]
  %i.cv = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.e, ptr noundef %.1194.ph, i64 noundef %.018.i, i64 noundef 4096, i1 noundef zeroext %i.bf, ptr noundef %.0.i.i29218.ph) #20 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %aligned_usize_get.exit.i13.thread, label %bb.u, !prof !124

bb.u:                                             ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !112
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !113
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !114
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !115
  %i.df = load i64, ptr %i.cx, align 8, !tbaa !27 ; 2 uses
  %i.dg = add i64 %i.df, %.018.i
  store i64 %i.dg, ptr %i.cx, align 8, !tbaa !27
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !27
  %i.di = sub i64 %i.dh, %i.df
  %i.dj = icmp ult i64 %.018.i, %i.di
  br i1 %i.dj, label %bb.w, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  call void @je_te_event_trigger(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.i17 = xor i1 %i.bf, true
  %i.dk = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.dl = trunc nuw i8 %i.dk to i1
  %or.cond45.i18 = select i1 %.not.i17, i1 %i.dl, i1 false, !prof !118
  br i1 %or.cond45.i18, label %bb.x, label %aligned_usize_get.exit.i13.thread, !prof !118

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.dm(ptr noundef nonnull %i.cv, i64 noundef %.018.i) #20, !inline_history !120
  br label %aligned_usize_get.exit.i13.thread

aligned_usize_get.exit.i13.thread:                ; preds = %bb.t, %sz_s2u_compute.exit29.i, %aligned_usize_get.exit.i13, %imalloc_no_sample.exit, %bb.w, %bb.x
  %.0202.ph = phi ptr [ %i.cv, %bb.x ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i13 ], [ null, %imalloc_no_sample.exit ], [ %i.cv, %bb.w ], [ null, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %0, ptr %i.a, align 16, !tbaa !27
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, i8 0, i64 16, i1 false), !tbaa !27
  %i.dn = ptrtoint ptr %.0202.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 5, ptr noundef %.0202.ph, i64 noundef %i.dn, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %sz_s2u_compute.exit29.i90, %aligned_usize_get.exit.i, %imalloc_no_sample.exit69, %bb.i, %imalloc_init_check.exit, %aligned_usize_get.exit.i13.thread
  %.0202231 = phi ptr [ %.0202.ph, %aligned_usize_get.exit.i13.thread ], [ null, %imalloc_init_check.exit ], [ null, %imalloc_no_sample.exit69 ], [ null, %aligned_usize_get.exit.i ], [ %i.al, %bb.i ], [ null, %sz_s2u_compute.exit29.i90 ]
  ret ptr %.0202231
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias ptr @je_mallocx(i64 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %3 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %mallocx_arena_get.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = and i64 %i.f, -2                         ; 2 uses
  %i.h = trunc i32 %1 to i8
  %i.i = lshr i8 %i.h, 6                          ; 2 uses
  %i.j = and i32 %1, 1048320                      ; 2 uses
  switch i32 %i.j, label %bb.d [
    i32 0, label %mallocx_tcache_get.exit
    i32 256, label %bb.c
  ], !prof !142

bb.c:                                             ; preds = %bb.b
  br label %mallocx_tcache_get.exit

bb.d:                                             ; preds = %bb.b
  %i.k = lshr exact i32 %i.j, 8
  %i.l = add nsw i32 %i.k, -2
  br label %mallocx_tcache_get.exit

mallocx_tcache_get.exit:                          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i10 = phi i32 [ %i.l, %bb.d ], [ -1, %bb.c ], [ -2, %bb.b ] ; 2 uses
  %.not.i = icmp ult i32 %1, 1048576
  br i1 %.not.i, label %mallocx_arena_get.exit, label %bb.e, !prof !13

bb.e:                                             ; preds = %mallocx_tcache_get.exit
  %i.m = lshr i32 %1, 20
  %i.n = add nsw i32 %i.m, -1
  br label %mallocx_arena_get.exit

mallocx_arena_get.exit:                           ; preds = %bb.e, %mallocx_tcache_get.exit, %bb.a
  %.sroa.60.0 = phi i32 [ -1, %bb.a ], [ %i.n, %bb.e ], [ -1, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.54153.0 = phi i32 [ -2, %bb.a ], [ %.0.i10, %bb.e ], [ %.0.i10, %mallocx_tcache_get.exit ] ; 6 uses
  %.sroa.42.0 = phi i8 [ 0, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %mallocx_tcache_get.exit ] ; 2 uses
  %.sroa.32.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.g, %mallocx_tcache_get.exit ] ; 14 uses
  %i.o = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load i8, ptr %i.p, align 8, !tbaa !14
  %.not.i84 = icmp eq i8 %i.q, 0
  br i1 %.not.i84, label %compute_size_with_overflow.exit37, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %mallocx_arena_get.exit
  %i.r = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.o, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.s = icmp eq i8 %.pre, 0
  br i1 %i.s, label %compute_size_with_overflow.exit37, label %bb.av, !prof !90

compute_size_with_overflow.exit37:                ; preds = %mallocx_arena_get.exit, %tsd_fetch_impl.exit
  %.0.i85314 = phi ptr [ %i.r, %tsd_fetch_impl.exit ], [ %i.o, %mallocx_arena_get.exit ] ; 17 uses
  %i.t = trunc i8 %.sroa.42.0 to i1               ; 6 uses
  %i.u = icmp eq i64 %.sroa.32.0, 0               ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %compute_size_with_overflow.exit37
  %i.v = icmp ult i64 %0, 4097
  br i1 %i.v, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i64 %0, 7
  %i.x = lshr i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = zext i8 %i.z to i32
  br label %sz_size2index.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.ab, label %imalloc.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.ac = shl nuw i64 %0, 1
  %i.ad = add i64 %i.ac, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ad, i1 true) ; 3 uses
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = sub nuw nsw i64 60, %i.ae
  %i.ah = ashr exact i64 -1152921504606846976, %i.ae
  %i.ai = add nsw i64 %0, -1
  %i.aj = and i64 %i.ah, %i.ai
  %i.ak = lshr i64 %i.aj, %i.ag
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 3
  %i.an = shl nuw nsw i32 %i.af, 2
  %reass.sub295 = sub nsw i32 %i.am, %i.an
  %i.ao = add nsw i32 %reass.sub295, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.i, %bb.g
  %.0.i50.i = phi i32 [ %i.aa, %bb.g ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ap = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ap, label %imalloc.exit, label %aligned_usize_get.exit.i.thread218, !prof !91

aligned_usize_get.exit.i.thread218:               ; preds = %sz_size2index.exit.i
  %i.aq = zext nneg i32 %.0.i50.i to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !27
  br label %bb.q

bb.j:                                             ; preds = %compute_size_with_overflow.exit37
  %i.at = icmp ult i64 %0, 14337
  %i.au = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i97 = and i1 %i.at, %i.au
  br i1 %or.cond.i97, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i64 %0, -1
  %i.aw = add nsw i64 %i.av, %.sroa.32.0
  %i.ax = sub nsw i64 0, %.sroa.32.0
  %i.ay = and i64 %i.aw, %i.ax                    ; 4 uses
  %i.az = icmp samesign ult i64 %i.ay, 4097
  br i1 %i.az, label %bb.l, label %sz_s2u_compute.exit.i107, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ba = add nuw nsw i64 %i.ay, 6
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27
  br label %sz_s2u.exit25.i109

sz_s2u_compute.exit.i107:                         ; preds = %bb.k
  %i.bh = shl nuw nsw i64 %i.ay, 1
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bi, i1 true) ; 2 uses
  %notmask.i.i106 = ashr exact i64 -1152921504606846976, %i.bj
  %i.bk = lshr i64 1152921504606846975, %i.bj
  %i.bl = add nuw nsw i64 %i.ay, %i.bk
  %i.bm = and i64 %i.bl, %notmask.i.i106
  br label %sz_s2u.exit25.i109

sz_s2u.exit25.i109:                               ; preds = %sz_s2u_compute.exit.i107, %bb.l
  %.0.i24.i110 = phi i64 [ %i.bg, %bb.l ], [ %i.bm, %sz_s2u_compute.exit.i107 ] ; 2 uses
  %i.bn = icmp ult i64 %.0.i24.i110, 16384
  br i1 %i.bn, label %aligned_usize_get.exit.i, label %.thread214

bb.m:                                             ; preds = %bb.j
  %i.bo = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.bo, label %imalloc.exit, label %bb.n, !prof !122

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp ult i64 %0, 16385
  br i1 %i.bp, label %.thread214, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.bq, label %sz_s2u_compute.exit29.i99, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.br = shl nuw i64 %0, 1
  %i.bs = add i64 %i.br, -1
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.bs, i1 true) ; 2 uses
  %notmask.i27.i98 = ashr exact i64 -1152921504606846976, %i.bt
  %i.bu = lshr i64 1152921504606846975, %i.bt
  %i.bv = add nuw nsw i64 %0, %i.bu
  %i.bw = and i64 %i.bv, %notmask.i27.i98
  br label %sz_s2u_compute.exit29.i99

sz_s2u_compute.exit29.i99:                        ; preds = %bb.p, %bb.o
  %.0.i28.i100 = phi i64 [ %i.bw, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bx = icmp ult i64 %.0.i28.i100, %0
  br i1 %i.bx, label %imalloc.exit, label %.thread214

.thread214:                                       ; preds = %sz_s2u.exit25.i109, %sz_s2u_compute.exit29.i99, %bb.n
  %.0.i103 = phi i64 [ %.0.i28.i100, %sz_s2u_compute.exit29.i99 ], [ 16384, %bb.n ], [ 16384, %sz_s2u.exit25.i109 ] ; 3 uses
  %i.by = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.bz = add nuw nsw i64 %.sroa.32.0, 4094
  %i.ca = and i64 %i.bz, 9223372036854771712
  %i.cb = add nsw i64 %i.ca, -4096
  %i.cc = add i64 %i.cb, %.0.i103
  %i.cd = add i64 %i.cc, %i.by
  %i.ce = icmp ult i64 %i.cd, %.0.i103
  %..0.i104 = select i1 %i.ce, i64 0, i64 %.0.i103
  br label %aligned_usize_get.exit.i

aligned_usize_get.exit.i:                         ; preds = %.thread214, %sz_s2u.exit25.i109
  %.018.i105 = phi i64 [ %..0.i104, %.thread214 ], [ %.0.i24.i110, %sz_s2u.exit25.i109 ] ; 2 uses
  %i.cf = add nsw i64 %.018.i105, -8070450532247928833
  %spec.select.i.i = icmp ult i64 %i.cf, -8070450532247928832
  br i1 %spec.select.i.i, label %imalloc.exit, label %bb.q

bb.q:                                             ; preds = %aligned_usize_get.exit.i, %aligned_usize_get.exit.i.thread218
  %.0208223 = phi i32 [ %.0.i50.i, %aligned_usize_get.exit.i.thread218 ], [ 0, %aligned_usize_get.exit.i ] ; 7 uses
  %.0209222 = phi i64 [ %i.as, %aligned_usize_get.exit.i.thread218 ], [ %.018.i105, %aligned_usize_get.exit.i ] ; 3 uses
  switch i32 %.sroa.54153.0, label %bb.s [
    i32 -2, label %bb.r
    i32 -1, label %tcache_get_from_ind.exit.i41
  ]

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 872
  br label %tcache_get_from_ind.exit.i41

bb.s:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr @je_tcaches, align 8, !tbaa !143
  %i.ci = zext nneg i32 %.sroa.54153.0 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.ck to i64
  switch i64 %magicptr.i, label %tcache_get_from_ind.exit.i41 [
    i64 0, label %bb.t
    i64 1, label %bb.u
  ], !prof !145

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %.sroa.54153.0) #20
  tail call void @abort() #21
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cl = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %.0.i85314) #20 ; 2 uses
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !14
  br label %tcache_get_from_ind.exit.i41

tcache_get_from_ind.exit.i41:                     ; preds = %bb.u, %bb.s, %bb.r, %bb.q
  %.0.i.i42 = phi ptr [ %i.cg, %bb.r ], [ null, %bb.q ], [ %i.ck, %bb.s ], [ %i.cl, %bb.u ] ; 7 uses
  %i.cm = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.cm, label %arena_get.exit.thread, label %bb.v

bb.v:                                             ; preds = %tcache_get_from_ind.exit.i41
  %i.cn = zext nneg i32 %.sroa.60.0 to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cn
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %arena_get.exit, label %arena_get.exit.thread, !prof !11

arena_get.exit:                                   ; preds = %bb.v
  %i.cr = tail call ptr @je_arena_init(ptr noundef nonnull %.0.i85314, i32 noundef %.sroa.60.0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.w, label %arena_get.exit.thread, !prof !12

bb.w:                                             ; preds = %arena_get.exit
  %i.ct = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i77 = icmp ult i32 %.sroa.60.0, %i.ct
  br i1 %.not.i.i77, label %arena_get.exit.thread, label %imalloc.exit

arena_get.exit.thread:                            ; preds = %bb.w, %bb.v, %tcache_get_from_ind.exit.i41, %arena_get.exit
  %.1.ph = phi ptr [ %i.cp, %bb.v ], [ %i.cr, %arena_get.exit ], [ null, %tcache_get_from_ind.exit.i41 ], [ null, %bb.w ] ; 4 uses
  br i1 %i.u, label %iallocztm.exit.i47, label %ipallocztm.exit83, !prof !13

ipallocztm.exit83:                                ; preds = %arena_get.exit.thread
  %i.cu = tail call ptr @je_arena_palloc(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph, i64 noundef %.0209222, i64 noundef %.sroa.32.0, i1 noundef zeroext %i.t, ptr noundef %.0.i.i42) #20
  br label %imalloc_no_sample.exit78

iallocztm.exit.i47:                               ; preds = %arena_get.exit.thread
  %.not.i20.i48 = icmp eq ptr %.0.i.i42, null
  br i1 %.not.i20.i48, label %bb.ar, label %bb.x, !prof !11

bb.x:                                             ; preds = %iallocztm.exit.i47
  %i.cv = icmp samesign ult i64 %0, 14337
  br i1 %i.cv, label %bb.y, label %bb.ah, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  %i.cx = zext nneg i32 %.0208223 to i64          ; 3 uses
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.cx ; 8 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !92 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !97 ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !98 ; 2 uses
  %i.df = trunc i64 %i.db to i16
  %.not.i24.i64 = icmp eq i16 %i.de, %i.df
  br i1 %.not.i24.i64, label %bb.aa, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i65.thread

bb.aa:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !99
  %.not21.i.i74 = icmp eq i16 %i.dh, %i.de
  br i1 %.not21.i.i74, label %cache_bin_alloc_impl.exit.i65, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !92
  %i.di = ptrtoint ptr %i.dc to i64
  %i.dj = trunc i64 %i.di to i16
  store i16 %i.dj, ptr %i.dd, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i65.thread

cache_bin_alloc_impl.exit.i65:                    ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dk = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph) ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.thread234, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %cache_bin_alloc_impl.exit.i65
  %i.dm = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.cx
  %.val = load i16, ptr %i.dn, align 2, !tbaa !102
  %i.do = icmp eq i16 %.val, 0
  br i1 %i.do, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.dp = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %i.dk, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0208223, i1 noundef zeroext %i.t) #20
  br label %.thread234

.thread234:                                       ; preds = %cache_bin_alloc_impl.exit.i65, %bb.ad
  %.0.i22.i70.ph = phi ptr [ %i.dp, %bb.ad ], [ null, %cache_bin_alloc_impl.exit.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit78

bb.ae:                                            ; preds = %bb.ac
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.cy, i32 noundef %.0208223, i1 noundef zeroext true) #20
  %i.dq = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %i.dk, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.cy, i32 noundef %.0208223, ptr noundef nonnull %i.a) #20
  %i.dr = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %4 = trunc nuw i8 %i.dr to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %4, label %cache_bin_alloc_impl.exit.i65.thread, label %imalloc.exit

cache_bin_alloc_impl.exit.i65.thread:             ; preds = %bb.ab, %bb.z, %bb.ae
  %.131.i.i73 = phi ptr [ %i.dq, %bb.ae ], [ %i.da, %bb.z ], [ %i.da, %bb.ab ] ; 2 uses
  br i1 %i.t, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %cache_bin_alloc_impl.exit.i65.thread
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.cx
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i73, i8 0, i64 %i.dt, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %cache_bin_alloc_impl.exit.i65.thread
  %i.du = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !107
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !107
  br label %imalloc_no_sample.exit78

bb.ah:                                            ; preds = %bb.x
  %i.dx = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i49 = icmp ugt i64 %0, %i.dx
  br i1 %.not24.i.i49, label %bb.ar, label %bb.ai, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i42, i64 8
  %i.dz = zext nneg i32 %.0208223 to i64          ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.dz ; 7 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !92 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !97 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 8, !tbaa !98 ; 2 uses
  %i.eh = trunc i64 %i.ed to i16
  %.not.i26.i50 = icmp eq i16 %i.eg, %i.eh
  br i1 %.not.i26.i50, label %bb.ak, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !92
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !99
  %.not21.i28.i63 = icmp eq i16 %i.ej, %i.eg
  br i1 %.not21.i28.i63, label %cache_bin_alloc_impl.exit29.i51, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !92
  %i.ek = ptrtoint ptr %i.ee to i64
  %i.el = trunc i64 %i.ek to i16
  store i16 %i.el, ptr %i.ef, align 8, !tbaa !98
  br label %bb.ao

cache_bin_alloc_impl.exit29.i51:                  ; preds = %bb.ak
  %i.em = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph) ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %imalloc.exit, label %bb.am, !prof !11

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit29.i51
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %.0.i.i42, ptr noundef nonnull %i.ea, i32 noundef %.0208223, i1 noundef zeroext false) #20
  %i.eo = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.eo, label %sz_s2u.exit.i56, label %bb.an, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.ep = shl nuw i64 %0, 1
  %i.eq = add i64 %i.ep, -1
  %i.er = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.eq, i1 true) ; 2 uses
  %notmask.i.i53 = ashr exact i64 -1152921504606846976, %i.er
  %i.es = lshr i64 1152921504606846975, %i.er
  %i.et = add nuw nsw i64 %0, %i.es
  %i.eu = and i64 %i.et, %notmask.i.i53
  br label %sz_s2u.exit.i56

sz_s2u.exit.i56:                                  ; preds = %bb.am, %bb.an
  %.0.i31.i55 = phi i64 [ %i.eu, %bb.an ], [ 0, %bb.am ]
  %i.ev = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %i.em, i64 noundef %.0.i31.i55, i1 noundef zeroext %i.t) #20
  br label %imalloc_no_sample.exit78

bb.ao:                                            ; preds = %bb.aj, %bb.al
  br i1 %i.t, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dz
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ec, i8 0, i64 %i.ex, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !107
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !107
  br label %imalloc_no_sample.exit78

bb.ar:                                            ; preds = %bb.ah, %iallocztm.exit.i47
  %i.fb = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i85314, ptr noundef %.1.ph, i64 noundef %0, i32 noundef %.0208223, i1 noundef zeroext %i.t) #20
  br label %imalloc_no_sample.exit78

imalloc_no_sample.exit78:                         ; preds = %bb.ar, %.thread234, %bb.ag, %bb.aq, %sz_s2u.exit.i56, %ipallocztm.exit83
  %.0.i46 = phi ptr [ %i.ev, %sz_s2u.exit.i56 ], [ %i.cu, %ipallocztm.exit83 ], [ %i.fb, %bb.ar ], [ %.0.i22.i70.ph, %.thread234 ], [ %.131.i.i73, %bb.ag ], [ %i.ec, %bb.aq ] ; 2 uses
  %i.fc = icmp eq ptr %.0.i46, null
  br i1 %i.fc, label %imalloc.exit, label %bb.as, !prof !146

bb.as:                                            ; preds = %imalloc_no_sample.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i8 1, ptr %2, align 8, !tbaa !109
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 840 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !112
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !113
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !114
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i85314, i64 848
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !115
  %i.fl = load i64, ptr %i.fd, align 8, !tbaa !27 ; 2 uses
  %i.fm = add i64 %i.fl, %.0209222
  store i64 %i.fm, ptr %i.fd, align 8, !tbaa !27
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !27
  %i.fo = sub i64 %i.fn, %i.fl
  %i.fp = icmp ult i64 %.0209222, %i.fo
  br i1 %i.fp, label %bb.au, label %bb.at, !prof !13

bb.at:                                            ; preds = %bb.as
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i85314, ptr noundef nonnull %2) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %imalloc.exit

bb.av:                                            ; preds = %tsd_fetch_impl.exit
  %i.fq = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %compute_size_with_overflow.exit, label %bb.aw, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.fs = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.fs, label %imalloc_init_check.exit, label %compute_size_with_overflow.exit, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.aw
  %i.ft = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.ft, align 4, !tbaa !7
  br label %imalloc.exit

compute_size_with_overflow.exit:                  ; preds = %bb.av, %bb.aw
  %i.fu = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.fv = or i8 %i.fu, %.sroa.42.0
  %.0.i.i18 = trunc i8 %i.fv to i1                ; 7 uses
  %i.fw = icmp eq i64 %.sroa.32.0, 0              ; 2 uses
  br i1 %i.fw, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %compute_size_with_overflow.exit
  %i.fx = icmp ult i64 %0, 4097
  br i1 %i.fx, label %bb.ay, label %bb.az, !prof !13

bb.ay:                                            ; preds = %bb.ax
  %i.fy = add nuw nsw i64 %0, 7
  %i.fz = lshr i64 %i.fy, 3
  %i.ga = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !14
  %i.gc = zext i8 %i.gb to i32
  br label %sz_size2index.exit.i28

bb.az:                                            ; preds = %bb.ax
  %i.gd = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.gd, label %aligned_usize_get.exit.i22.thread, label %bb.ba, !prof !11

bb.ba:                                            ; preds = %bb.az
  %i.ge = shl nuw i64 %0, 1
  %i.gf = add i64 %i.ge, -1
  %i.gg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gf, i1 true) ; 3 uses
  %i.gh = trunc nuw nsw i64 %i.gg to i32
  %i.gi = sub nuw nsw i64 60, %i.gg
  %i.gj = ashr exact i64 -1152921504606846976, %i.gg
  %i.gk = add nsw i64 %0, -1
  %i.gl = and i64 %i.gj, %i.gk
  %i.gm = lshr i64 %i.gl, %i.gi
  %i.gn = trunc i64 %i.gm to i32
  %i.go = and i32 %i.gn, 3
  %i.gp = shl nuw nsw i32 %i.gh, 2
  %reass.sub = sub nsw i32 %i.go, %i.gp
  %i.gq = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i28

sz_size2index.exit.i28:                           ; preds = %bb.ba, %bb.ay
  %.0.i50.i29 = phi i32 [ %i.gc, %bb.ay ], [ %i.gq, %bb.ba ] ; 3 uses
  %i.gr = icmp samesign ugt i32 %.0.i50.i29, 234
  br i1 %i.gr, label %aligned_usize_get.exit.i22.thread, label %aligned_usize_get.exit.i22.thread250, !prof !91

aligned_usize_get.exit.i22.thread250:             ; preds = %sz_size2index.exit.i28
  %i.gs = zext nneg i32 %.0.i50.i29 to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !27
  br label %bb.bi

bb.bb:                                            ; preds = %compute_size_with_overflow.exit
  %i.gv = icmp ult i64 %0, 14337
  %i.gw = icmp ult i64 %.sroa.32.0, 4097
  %or.cond.i91 = and i1 %i.gv, %i.gw
  br i1 %or.cond.i91, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.gx = add nsw i64 %0, -1
  %i.gy = add nsw i64 %i.gx, %.sroa.32.0
  %i.gz = sub nsw i64 0, %.sroa.32.0
  %i.ha = and i64 %i.gy, %i.gz                    ; 4 uses
  %i.hb = icmp samesign ult i64 %i.ha, 4097
  br i1 %i.hb, label %bb.bd, label %sz_s2u_compute.exit.i96, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.hc = add nuw nsw i64 %i.ha, 6
  %i.hd = lshr i64 %i.hc, 3
  %i.he = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !14
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !27
  br label %sz_s2u.exit25.i

sz_s2u_compute.exit.i96:                          ; preds = %bb.bc
  %i.hj = shl nuw nsw i64 %i.ha, 1
  %i.hk = add nsw i64 %i.hj, -1
  %i.hl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hk, i1 true) ; 2 uses
  %notmask.i.i95 = ashr exact i64 -1152921504606846976, %i.hl
  %i.hm = lshr i64 1152921504606846975, %i.hl
  %i.hn = add nuw nsw i64 %i.ha, %i.hm
  %i.ho = and i64 %i.hn, %notmask.i.i95
  br label %sz_s2u.exit25.i

sz_s2u.exit25.i:                                  ; preds = %sz_s2u_compute.exit.i96, %bb.bd
  %.0.i24.i = phi i64 [ %i.hi, %bb.bd ], [ %i.ho, %sz_s2u_compute.exit.i96 ] ; 2 uses
  %i.hp = icmp ult i64 %.0.i24.i, 16384
  br i1 %i.hp, label %aligned_usize_get.exit.i22, label %.thread246

bb.be:                                            ; preds = %bb.bb
  %i.hq = icmp ugt i64 %.sroa.32.0, 8070450532247928832
  br i1 %i.hq, label %aligned_usize_get.exit.i22.thread, label %bb.bf, !prof !122

bb.bf:                                            ; preds = %bb.be
  %i.hr = icmp ult i64 %0, 16385
  br i1 %i.hr, label %.thread246, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hs = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.hs, label %sz_s2u_compute.exit29.i, label %bb.bh, !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.ht = shl nuw i64 %0, 1
  %i.hu = add i64 %i.ht, -1
  %i.hv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.hu, i1 true) ; 2 uses
  %notmask.i27.i = ashr exact i64 -1152921504606846976, %i.hv
  %i.hw = lshr i64 1152921504606846975, %i.hv
  %i.hx = add nuw nsw i64 %0, %i.hw
  %i.hy = and i64 %i.hx, %notmask.i27.i
  br label %sz_s2u_compute.exit29.i

sz_s2u_compute.exit29.i:                          ; preds = %bb.bh, %bb.bg
  %.0.i28.i = phi i64 [ %i.hy, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.hz = icmp ult i64 %.0.i28.i, %0
  br i1 %i.hz, label %aligned_usize_get.exit.i22.thread, label %.thread246

.thread246:                                       ; preds = %sz_s2u.exit25.i, %sz_s2u_compute.exit29.i, %bb.bf
  %.0.i94 = phi i64 [ %.0.i28.i, %sz_s2u_compute.exit29.i ], [ 16384, %bb.bf ], [ 16384, %sz_s2u.exit25.i ] ; 3 uses
  %i.ia = load i64, ptr @je_sz_large_pad, align 8, !tbaa !27
  %i.ib = add nuw nsw i64 %.sroa.32.0, 4094
  %i.ic = and i64 %i.ib, 9223372036854771712
  %i.id = add nsw i64 %i.ic, -4096
  %i.ie = add i64 %i.id, %.0.i94
  %i.if = add i64 %i.ie, %i.ia
  %i.ig = icmp ult i64 %i.if, %.0.i94
  %..0.i = select i1 %i.ig, i64 0, i64 %.0.i94
  br label %aligned_usize_get.exit.i22

aligned_usize_get.exit.i22:                       ; preds = %.thread246, %sz_s2u.exit25.i
  %.018.i = phi i64 [ %..0.i, %.thread246 ], [ %.0.i24.i, %sz_s2u.exit25.i ] ; 2 uses
  %i.ih = add nsw i64 %.018.i, -8070450532247928833
  %spec.select.i.i21 = icmp ult i64 %i.ih, -8070450532247928832
  br i1 %spec.select.i.i21, label %aligned_usize_get.exit.i22.thread, label %bb.bi

bb.bi:                                            ; preds = %aligned_usize_get.exit.i22.thread250, %aligned_usize_get.exit.i22
  %.0205255 = phi i32 [ %.0.i50.i29, %aligned_usize_get.exit.i22.thread250 ], [ 0, %aligned_usize_get.exit.i22 ] ; 7 uses
  %.0206254 = phi i64 [ %i.gu, %aligned_usize_get.exit.i22.thread250 ], [ %.018.i, %aligned_usize_get.exit.i22 ] ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !14
  %i.ik = icmp sgt i8 %i.ij, 0
  br i1 %i.ik, label %tcache_get_from_ind.exit.i.thread, label %bb.bj, !prof !118

bb.bj:                                            ; preds = %bb.bi
  switch i32 %.sroa.54153.0, label %bb.bl [
    i32 -2, label %bb.bk
    i32 -1, label %tcache_get_from_ind.exit.i
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.il = load i8, ptr %i.r, align 8, !tbaa !104, !range !105, !noundef !106
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = getelementptr inbounds nuw i8, ptr %i.r, i64 872
  %spec.select = select i1 %i.im, ptr %i.in, ptr null
  br label %tcache_get_from_ind.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.io = load ptr, ptr @je_tcaches, align 8, !tbaa !143
  %i.ip = zext nneg i32 %.sroa.54153.0 to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !14 ; 2 uses
  %magicptr.i89 = ptrtoint ptr %i.ir to i64
  switch i64 %magicptr.i89, label %tcache_get_from_ind.exit.i [
    i64 0, label %bb.bm
    i64 1, label %bb.bn
  ], !prof !145

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ...) @je_malloc_printf(ptr noundef nonnull @.str.153, i32 noundef range(i32 0, -2) %.sroa.54153.0) #20
  tail call void @abort() #21
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.is = tail call ptr @je_tcache_create_explicit(ptr noundef nonnull %i.r) #20 ; 2 uses
  store ptr %i.is, ptr %i.iq, align 8, !tbaa !14
  br label %tcache_get_from_ind.exit.i

tcache_get_from_ind.exit.i:                       ; preds = %bb.bn, %bb.bl, %bb.bk, %bb.bj
  %.0.i.i38 = phi ptr [ %spec.select, %bb.bk ], [ null, %bb.bj ], [ %i.ir, %bb.bl ], [ %i.is, %bb.bn ] ; 2 uses
  %i.it = icmp eq i32 %.sroa.60.0, -1
  br i1 %i.it, label %arena_get.exit120.thread, label %tcache_get_from_ind.exit.i.thread

tcache_get_from_ind.exit.i.thread:                ; preds = %bb.bi, %tcache_get_from_ind.exit.i
  %.0.i.i38269 = phi ptr [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ null, %bb.bi ] ; 3 uses
  %.sroa.60.2263266 = phi i32 [ %.sroa.60.0, %tcache_get_from_ind.exit.i ], [ 0, %bb.bi ] ; 3 uses
  %i.iu = zext nneg i32 %.sroa.60.2263266 to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.iu
  %i.iw = load atomic ptr, ptr %i.iv acquire, align 8 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %arena_get.exit120, label %arena_get.exit120.thread, !prof !11

arena_get.exit120:                                ; preds = %tcache_get_from_ind.exit.i.thread
  %i.iy = tail call ptr @je_arena_init(ptr noundef nonnull %i.r, i32 noundef %.sroa.60.2263266, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.bo, label %arena_get.exit120.thread, !prof !12

bb.bo:                                            ; preds = %arena_get.exit120
  %i.ja = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i = icmp ult i32 %.sroa.60.2263266, %i.ja
  br i1 %.not.i.i, label %arena_get.exit120.thread, label %aligned_usize_get.exit.i22.thread

arena_get.exit120.thread:                         ; preds = %bb.bo, %tcache_get_from_ind.exit.i.thread, %tcache_get_from_ind.exit.i, %arena_get.exit120
  %.0.i.i38267.ph = phi ptr [ %.0.i.i38269, %tcache_get_from_ind.exit.i.thread ], [ %.0.i.i38269, %arena_get.exit120 ], [ %.0.i.i38, %tcache_get_from_ind.exit.i ], [ %.0.i.i38269, %bb.bo ] ; 7 uses
  %.1203.ph = phi ptr [ %i.iw, %tcache_get_from_ind.exit.i.thread ], [ %i.iy, %arena_get.exit120 ], [ null, %tcache_get_from_ind.exit.i ], [ null, %bb.bo ] ; 4 uses
  br i1 %i.fw, label %iallocztm.exit.i, label %ipallocztm.exit, !prof !13

ipallocztm.exit:                                  ; preds = %arena_get.exit120.thread
  %i.jb = tail call ptr @je_arena_palloc(ptr noundef nonnull %i.r, ptr noundef %.1203.ph, i64 noundef %.0206254, i64 noundef %.sroa.32.0, i1 noundef zeroext %.0.i.i18, ptr noundef %.0.i.i38267.ph) #20
  br label %imalloc_no_sample.exit

iallocztm.exit.i:                                 ; preds = %arena_get.exit120.thread
  %.not.i20.i = icmp eq ptr %.0.i.i38267.ph, null
  br i1 %.not.i20.i, label %bb.cj, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %iallocztm.exit.i
  %i.jc = icmp samesign ult i64 %0, 14337
  br i1 %i.jc, label %bb.bq, label %bb.bz, !prof !13

bb.bq:                                            ; preds = %bb.bp
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i.i38267.ph, i64 8
  %i.je = zext nneg i32 %.0205255 to i64          ; 3 uses
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %i.jd, i64 %i.je ; 8 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !92 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !97 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.jl = load i16, ptr %i.jk, align 8, !tbaa !98 ; 2 uses
  %i.jm = trunc i64 %i.ji to i16
  %.not.i24.i = icmp eq i16 %i.jl, %i.jm
  br i1 %.not.i24.i, label %bb.bs, label %bb.br, !prof !11

bb.br:                                            ; preds = %bb.bq
  store ptr %i.jj, ptr %i.jf, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.bs:                                            ; preds = %bb.bq
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 20
  %i.jo = load i16, ptr %i.jn, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.jo, %i.jl
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.bt, !prof !11

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.jj, ptr %i.jf, align 8, !tbaa !92
  %i.jp = ptrtoint ptr %i.jj to i64
  %i.jq = trunc i64 %i.jp to i16
  store i16 %i.jq, ptr %i.jk, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.jr = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.r, ptr noundef %.1203.ph) ; 3 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %.thread279, label %bb.bu, !prof !11

bb.bu:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.jt = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %i.je
  %.val113 = load i16, ptr %i.ju, align 2, !tbaa !102
  %i.jv = icmp eq i16 %.val113, 0
  br i1 %i.jv, label %bb.bv, label %bb.bw, !prof !11

bb.bv:                                            ; preds = %bb.bu
  %i.jw = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.r, ptr noundef nonnull %i.jr, i64 noundef range(i64 0, 14337) %0, i32 noundef %.0205255, i1 noundef zeroext %.0.i.i18) #20
  br label %.thread279

.thread279:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.bv
  %.0.i22.i.ph = phi ptr [ %i.jw, %bb.bv ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.bw:                                            ; preds = %bb.bu
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.r, ptr noundef nonnull %.0.i.i38267.ph, ptr noundef nonnull %i.jf, i32 noundef %.0205255, i1 noundef zeroext true) #20
  %i.jx = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.r, ptr noundef nonnull %i.jr, ptr noundef nonnull %.0.i.i38267.ph, ptr noundef nonnull %i.jf, i32 noundef %.0205255, ptr noundef nonnull %i.b) #20
  %i.jy = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %5 = trunc nuw i8 %i.jy to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %5, label %cache_bin_alloc_impl.exit.i.thread, label %aligned_usize_get.exit.i22.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.bt, %bb.br, %bb.bw
  %.131.i.i = phi ptr [ %i.jx, %bb.bw ], [ %i.jh, %bb.br ], [ %i.jh, %bb.bt ] ; 2 uses
  br i1 %.0.i.i18, label %bb.bx, label %bb.by, !prof !11

bb.bx:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.je
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.ka, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %cache_bin_alloc_impl.exit.i.thread
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !107
  %i.kd = add i64 %i.kc, 1
  store i64 %i.kd, ptr %i.kb, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.bz:                                            ; preds = %bb.bp
  %i.ke = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %0, %i.ke
  br i1 %.not24.i.i, label %bb.cj, label %bb.ca, !prof !11

bb.ca:                                            ; preds = %bb.bz
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i.i38267.ph, i64 8
  %i.kg = zext nneg i32 %.0205255 to i64          ; 2 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %i.kg ; 7 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !92 ; 3 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !97 ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 8, !tbaa !98 ; 2 uses
  %i.ko = trunc i64 %i.kk to i16
  %.not.i26.i = icmp eq i16 %i.kn, %i.ko
  br i1 %.not.i26.i, label %bb.cc, label %bb.cb, !prof !11

bb.cb:                                            ; preds = %bb.ca
  store ptr %i.kl, ptr %i.kh, align 8, !tbaa !92
  br label %bb.cg

bb.cc:                                            ; preds = %bb.ca
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 20
  %i.kq = load i16, ptr %i.kp, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.kq, %i.kn
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.cd, !prof !11

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.kl, ptr %i.kh, align 8, !tbaa !92
  %i.kr = ptrtoint ptr %i.kl to i64
  %i.ks = trunc i64 %i.kr to i16
  store i16 %i.ks, ptr %i.km, align 8, !tbaa !98
  br label %bb.cg

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.cc
  %i.kt = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.r, ptr noundef %.1203.ph) ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %aligned_usize_get.exit.i22.thread, label %bb.ce, !prof !11

bb.ce:                                            ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.r, ptr noundef nonnull %.0.i.i38267.ph, ptr noundef nonnull %i.kh, i32 noundef %.0205255, i1 noundef zeroext false) #20
  %i.kv = icmp samesign ugt i64 %0, 8070450532247928832
  br i1 %i.kv, label %sz_s2u.exit.i, label %bb.cf, !prof !11

bb.cf:                                            ; preds = %bb.ce
  %i.kw = shl nuw i64 %0, 1
  %i.kx = add i64 %i.kw, -1
  %i.ky = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.kx, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.ky
  %i.kz = lshr i64 1152921504606846975, %i.ky
  %i.la = add nuw nsw i64 %0, %i.kz
  %i.lb = and i64 %i.la, %notmask.i.i
  br label %sz_s2u.exit.i

sz_s2u.exit.i:                                    ; preds = %bb.ce, %bb.cf
  %.0.i31.i = phi i64 [ %i.lb, %bb.cf ], [ 0, %bb.ce ]
  %i.lc = tail call ptr @je_large_malloc(ptr noundef nonnull %i.r, ptr noundef nonnull %i.kt, i64 noundef %.0.i31.i, i1 noundef zeroext %.0.i.i18) #20
  br label %imalloc_no_sample.exit

bb.cg:                                            ; preds = %bb.cb, %bb.cd
  br i1 %.0.i.i18, label %bb.ch, label %bb.ci, !prof !11

bb.ch:                                            ; preds = %bb.cg
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.kg
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kj, i8 0, i64 %i.le, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !107
  %i.lh = add i64 %i.lg, 1
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.cj:                                            ; preds = %bb.bz, %iallocztm.exit.i
  %i.li = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.r, ptr noundef %.1203.ph, i64 noundef %0, i32 noundef %.0205255, i1 noundef zeroext %.0.i.i18) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %bb.cj, %.thread279, %bb.by, %bb.ci, %sz_s2u.exit.i, %ipallocztm.exit
  %.0.i40 = phi ptr [ %i.lc, %sz_s2u.exit.i ], [ %i.jb, %ipallocztm.exit ], [ %i.li, %bb.cj ], [ %.0.i22.i.ph, %.thread279 ], [ %.131.i.i, %bb.by ], [ %i.kj, %bb.ci ] ; 4 uses
  %i.lj = icmp eq ptr %.0.i40, null
  br i1 %i.lj, label %aligned_usize_get.exit.i22.thread, label %bb.ck, !prof !119

bb.ck:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i8 1, ptr %3, align 8, !tbaa !109
  %i.lk = getelementptr inbounds nuw i8, ptr %i.r, i64 840 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !112
  %i.lm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.lm, ptr %i.ln, align 8, !tbaa !113
  %i.lo = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.lo, ptr %i.lp, align 8, !tbaa !114
  %i.lq = getelementptr inbounds nuw i8, ptr %i.r, i64 848
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.lq, ptr %i.lr, align 8, !tbaa !115
  %i.ls = load i64, ptr %i.lk, align 8, !tbaa !27 ; 2 uses
  %i.lt = add i64 %i.ls, %.0206254
  store i64 %i.lt, ptr %i.lk, align 8, !tbaa !27
  %i.lu = load i64, ptr %i.lo, align 8, !tbaa !27
  %i.lv = sub i64 %i.lu, %i.ls
  %i.lw = icmp ult i64 %.0206254, %i.lv
  br i1 %i.lw, label %bb.cm, label %bb.cl, !prof !13

bb.cl:                                            ; preds = %bb.ck
  call void @je_te_event_trigger(ptr noundef nonnull %i.r, ptr noundef nonnull %3) #20
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.i26 = xor i1 %.0.i.i18, true
  %i.lx = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.ly = trunc nuw i8 %i.lx to i1
  %or.cond45.i27 = select i1 %.not.i26, i1 %i.ly, i1 false, !prof !118
  br i1 %or.cond45.i27, label %bb.cn, label %aligned_usize_get.exit.i22.thread, !prof !118

bb.cn:                                            ; preds = %bb.cm
  %i.lz = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.lz(ptr noundef nonnull %.0.i40, i64 noundef %.0206254) #20, !inline_history !120
  br label %aligned_usize_get.exit.i22.thread

aligned_usize_get.exit.i22.thread:                ; preds = %cache_bin_alloc_impl.exit29.i, %bb.bw, %bb.bo, %sz_s2u_compute.exit29.i, %bb.be, %bb.az, %sz_size2index.exit.i28, %aligned_usize_get.exit.i22, %imalloc_no_sample.exit, %bb.cm, %bb.cn
  %.0211.ph = phi ptr [ null, %cache_bin_alloc_impl.exit29.i ], [ %.0.i40, %bb.cn ], [ null, %bb.az ], [ null, %sz_s2u_compute.exit29.i ], [ null, %aligned_usize_get.exit.i22 ], [ null, %imalloc_no_sample.exit ], [ %.0.i40, %bb.cm ], [ null, %sz_size2index.exit.i28 ], [ null, %bb.be ], [ null, %bb.bo ], [ null, %bb.bw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %0, ptr %i.c, align 16, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.mb = sext i32 %1 to i64
  store i64 %i.mb, ptr %i.ma, align 8, !tbaa !27
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !27
  %i.mc = ptrtoint ptr %.0211.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 6, ptr noundef %.0211.ph, i64 noundef %i.mc, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %cache_bin_alloc_impl.exit29.i51, %bb.ae, %bb.w, %sz_s2u_compute.exit29.i99, %bb.m, %bb.h, %sz_size2index.exit.i, %aligned_usize_get.exit.i, %imalloc_no_sample.exit78, %bb.au, %imalloc_init_check.exit, %aligned_usize_get.exit.i22.thread
  %.0211290 = phi ptr [ %.0211.ph, %aligned_usize_get.exit.i22.thread ], [ null, %imalloc_init_check.exit ], [ null, %cache_bin_alloc_impl.exit29.i51 ], [ null, %aligned_usize_get.exit.i ], [ %.0.i46, %bb.au ], [ null, %imalloc_no_sample.exit78 ], [ null, %sz_s2u_compute.exit29.i99 ], [ null, %bb.h ], [ null, %sz_size2index.exit.i ], [ null, %bb.m ], [ null, %bb.w ], [ null, %bb.ae ]
  ret ptr %.0211290
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @je_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc ptr @do_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %7 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %8 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %9 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %10 = alloca %struct.rtree_ctx_s, align 8       ; 5 uses
  %11 = alloca %struct.hook_ralloc_args_s, align 8 ; 9 uses
  %i.a = zext i1 %3 to i8
  %i.b = and i32 %2, 63
  %i.c = zext nneg i32 %i.b to i64
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %i.e = and i64 %i.d, -2                         ; 10 uses
  %i.f = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.h = load i8, ptr %i.g, align 8, !tbaa !14
  %.not.i58 = icmp eq i8 %i.h, 0
  br i1 %.not.i58, label %tsd_fetch_impl.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.f, i1 noundef zeroext false) #20
  br label %tsd_fetch_impl.exit

tsd_fetch_impl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i59 = phi ptr [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 26 uses
  %i.j = and i32 %2, 64
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.m = trunc nuw i8 %i.l to i1
end_hunk_2
begin_hunk_3_@do_rallocx:bb.a
  %i.im = load i64, ptr %i.ig, align 8, !tbaa !27
  %i.in = sub i64 %i.im, %i.ik
  %i.io = icmp ult i64 %i.ao, %i.in
  br i1 %i.io, label %te_event_advance.exit, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %te_event_advance.exit89
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i59, ptr noundef nonnull %7) #20
  br label %te_event_advance.exit

te_event_advance.exit:                            ; preds = %te_event_advance.exit89, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ip = load i8, ptr @je_opt_junk_alloc, align 1, !tbaa !104, !range !105, !noundef !106
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.ap, label %bb.ar, !prof !11

bb.ap:                                            ; preds = %te_event_advance.exit
  %i.ir = icmp ule i64 %storemerge.i, %i.ao
  %or.cond = select i1 %i.ir, i1 true, i1 %.0.i52
  br i1 %or.cond, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.is = sub nuw nsw i64 %storemerge.i, %i.ao
  %i.it = ptrtoint ptr %.0.i62118 to i64
  %i.iu = add i64 %i.ao, %i.it
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.iw(ptr noundef %i.iv, i64 noundef %i.is) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %te_event_advance.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %i.ao, ptr %4, align 8, !tbaa !27
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not49 = icmp eq ptr %5, null
  br i1 %.not49, label %arena_get_from_ind.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i64 %storemerge.i, ptr %5, align 8, !tbaa !27
  br label %arena_get_from_ind.exit

arena_get_from_ind.exit:                          ; preds = %sz_s2u_compute.exit29.i, %ipallocztm.exit.i, %sz_sa2u.exit, %sz_s2u_compute.exit29.i70, %bb.p, %bb.k, %aligned_usize_get.exit, %iralloct.exit, %bb.c, %bb.at, %bb.au
  %.0 = phi ptr [ %.0.i62118, %bb.at ], [ %.0.i62118, %bb.au ], [ null, %sz_s2u_compute.exit29.i70 ], [ null, %aligned_usize_get.exit ], [ null, %bb.c ], [ null, %iralloct.exit ], [ null, %bb.k ], [ null, %bb.p ], [ null, %sz_sa2u.exit ], [ null, %ipallocztm.exit.i ], [ null, %sz_s2u_compute.exit29.i ]
  ret ptr %.0
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local ptr @je_realloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc ptr @je_realloc_internal(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @je_realloc_internal(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %5 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = icmp ne ptr %0, null                     ; 2 uses
  %i.e = icmp ne i64 %1, 0
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @do_rallocx(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3)
  br label %bb.bh

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %1, 0
  %or.cond = and i1 %i.d, %i.h
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc ptr @do_realloc_nonnull_zero(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  br label %bb.bh

bb.e:                                             ; preds = %bb.c
  %i.j = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 832
  %i.l = load i8, ptr %i.k, align 8, !tbaa !14
  %.not.i99 = icmp eq i8 %i.l, 0
  br i1 %.not.i99, label %tsd_fetch_impl.exit.thread, label %tsd_fetch_impl.exit, !prof !13

tsd_fetch_impl.exit:                              ; preds = %bb.e
  %i.m = tail call ptr @je_tsd_fetch_slow(ptr noundef nonnull %i.j, i1 noundef zeroext false) #20 ; 21 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.n = icmp eq i8 %.pre, 0
  br i1 %i.n, label %tsd_fetch_impl.exit.thread, label %bb.z, !prof !90

tsd_fetch_impl.exit.thread:                       ; preds = %bb.e, %tsd_fetch_impl.exit
  %.0.i100304 = phi ptr [ %i.m, %tsd_fetch_impl.exit ], [ %i.j, %bb.e ] ; 16 uses
  %i.o = icmp ult i64 %1, 4097
  br i1 %i.o, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.p = add nuw nsw i64 %1, 7
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i32
  br label %sz_size2index.exit.i

bb.g:                                             ; preds = %tsd_fetch_impl.exit.thread
  %i.u = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.u, label %aligned_usize_get.exit.i.thread, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.v = shl nuw i64 %1, 1
  %i.w = add i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.w, i1 true) ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i64 60, %i.x
  %i.aa = ashr exact i64 -1152921504606846976, %i.x
  %i.ab = add nsw i64 %1, -1
  %i.ac = and i64 %i.aa, %i.ab
  %i.ad = lshr i64 %i.ac, %i.z
  %i.ae = trunc i64 %i.ad to i32
  %i.af = and i32 %i.ae, 3
  %i.ag = shl nuw nsw i32 %i.y, 2
  %reass.sub287 = sub nsw i32 %i.af, %i.ag
  %i.ah = add nsw i32 %reass.sub287, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.h, %bb.f
  %.0.i50.i = phi i32 [ %i.t, %bb.f ], [ %i.ah, %bb.h ] ; 7 uses
  %i.ai = icmp samesign ugt i32 %.0.i50.i, 234
  br i1 %i.ai, label %aligned_usize_get.exit.i.thread, label %iallocztm.exit.i62, !prof !117

iallocztm.exit.i62:                               ; preds = %sz_size2index.exit.i
  %i.aj = zext nneg i32 %.0.i50.i to i64          ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !27 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 872 ; 3 uses
  %i.an = icmp samesign ult i64 %1, 14337
  br i1 %i.an, label %bb.i, label %bb.p, !prof !13

bb.i:                                             ; preds = %iallocztm.exit.i62
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 880
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.aj ; 8 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !92 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.av = load i16, ptr %i.au, align 8, !tbaa !98 ; 2 uses
  %i.aw = trunc i64 %i.as to i16
  %.not.i24.i79 = icmp eq i16 %i.av, %i.aw
  br i1 %.not.i24.i79, label %bb.k, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i80.thread

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !99
  %.not21.i.i89 = icmp eq i16 %i.ay, %i.av
  br i1 %.not21.i.i89, label %cache_bin_alloc_impl.exit.i80, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !92
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = trunc i64 %i.az to i16
  store i16 %i.ba, ptr %i.au, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i80.thread

cache_bin_alloc_impl.exit.i80:                    ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bb = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i100304, ptr noundef null) ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread, label %bb.m, !prof !11

bb.m:                                             ; preds = %cache_bin_alloc_impl.exit.i80
  %i.bd = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.aj
  %.val = load i16, ptr %i.be, align 2, !tbaa !102
  %i.bf = icmp eq i16 %.val, 0
  br i1 %i.bf, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.bb, i64 noundef range(i64 0, 14337) %1, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %.thread

.thread:                                          ; preds = %cache_bin_alloc_impl.exit.i80, %bb.n
  %.0.i22.i85.ph = phi ptr [ %i.bg, %bb.n ], [ null, %cache_bin_alloc_impl.exit.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %imalloc_no_sample.exit93

bb.o:                                             ; preds = %bb.m
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, i32 noundef %.0.i50.i, i1 noundef zeroext true) #20
  %i.bh = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, i32 noundef %.0.i50.i, ptr noundef nonnull %i.a) #20
  %i.bi = load i8, ptr %i.a, align 1, !tbaa !104, !range !105, !noundef !106
  %6 = trunc nuw i8 %i.bi to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %6, label %cache_bin_alloc_impl.exit.i80.thread, label %aligned_usize_get.exit.i.thread

cache_bin_alloc_impl.exit.i80.thread:             ; preds = %bb.l, %bb.j, %bb.o
  %.131.i.i88 = phi ptr [ %i.bh, %bb.o ], [ %i.ar, %bb.j ], [ %i.ar, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !107
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !107
  br label %imalloc_no_sample.exit93

bb.p:                                             ; preds = %iallocztm.exit.i62
  %i.bm = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i64 = icmp ugt i64 %1, %i.bm
  br i1 %.not24.i.i64, label %bb.v, label %bb.q, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 880
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.aj ; 7 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !97
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !98 ; 2 uses
  %i.bv = trunc i64 %i.br to i16
  %.not.i26.i65 = icmp eq i16 %i.bu, %i.bv
  br i1 %.not.i26.i65, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !92
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !99
  %.not21.i28.i78 = icmp eq i16 %i.bx, %i.bu
  br i1 %.not21.i28.i78, label %cache_bin_alloc_impl.exit29.i66, label %bb.t, !prof !11

bb.t:                                             ; preds = %bb.s
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !92
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = trunc i64 %i.by to i16
  store i16 %i.bz, ptr %i.bt, align 8, !tbaa !98
  br label %bb.u

cache_bin_alloc_impl.exit29.i66:                  ; preds = %bb.s
  %i.ca = tail call fastcc ptr @arena_choose(ptr noundef nonnull %.0.i100304, ptr noundef null) ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %aligned_usize_get.exit.i.thread, label %sz_s2u.exit.i71, !prof !11

sz_s2u.exit.i71:                                  ; preds = %cache_bin_alloc_impl.exit29.i66
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.am, ptr noundef nonnull %i.bo, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  %i.cc = shl nuw i64 %1, 1
  %i.cd = add i64 %i.cc, -1
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cd, i1 true) ; 2 uses
  %notmask.i.i68 = ashr exact i64 -1152921504606846976, %i.ce
  %i.cf = lshr i64 1152921504606846975, %i.ce
  %i.cg = add nuw nsw i64 %1, %i.cf
  %i.ch = and i64 %i.cg, %notmask.i.i68
  %i.ci = tail call ptr @je_large_malloc(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %i.ca, i64 noundef %i.ch, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit93

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !107
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !107
  br label %imalloc_no_sample.exit93

bb.v:                                             ; preds = %bb.p
  %i.cm = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %.0.i100304, ptr noundef null, i64 noundef %1, i32 noundef %.0.i50.i, i1 noundef zeroext false) #20
  br label %imalloc_no_sample.exit93

imalloc_no_sample.exit93:                         ; preds = %bb.v, %.thread, %cache_bin_alloc_impl.exit.i80.thread, %bb.u, %sz_s2u.exit.i71
  %.0.i21.i76 = phi ptr [ %i.cm, %bb.v ], [ %.0.i22.i85.ph, %.thread ], [ %.131.i.i88, %cache_bin_alloc_impl.exit.i80.thread ], [ %i.bq, %bb.u ], [ %i.ci, %sz_s2u.exit.i71 ] ; 2 uses
  %i.cn = icmp eq ptr %.0.i21.i76, null
  br i1 %i.cn, label %aligned_usize_get.exit.i.thread, label %bb.w, !prof !108

bb.w:                                             ; preds = %imalloc_no_sample.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 1, ptr %4, align 8, !tbaa !109
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 840 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !112
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !114
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i100304, i64 848
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !115
  %i.cw = load i64, ptr %i.co, align 8, !tbaa !27 ; 2 uses
  %i.cx = add i64 %i.cw, %i.al
  store i64 %i.cx, ptr %i.co, align 8, !tbaa !27
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.cz = sub i64 %i.cy, %i.cw
  %i.da = icmp ult i64 %i.al, %i.cz
  br i1 %i.da, label %bb.y, label %bb.x, !prof !13

bb.x:                                             ; preds = %bb.w
  call void @je_te_event_trigger(ptr noundef nonnull %.0.i100304, ptr noundef nonnull %4) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %imalloc.exit

aligned_usize_get.exit.i.thread:                  ; preds = %cache_bin_alloc_impl.exit29.i66, %bb.o, %bb.g, %sz_size2index.exit.i, %imalloc_no_sample.exit93
  %.sroa.11.1 = phi i64 [ %i.al, %imalloc_no_sample.exit93 ], [ 0, %bb.g ], [ 0, %sz_size2index.exit.i ], [ %i.al, %bb.o ], [ %i.al, %cache_bin_alloc_impl.exit29.i66 ]
  %i.db = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.db, align 4, !tbaa !7
  br label %imalloc.exit

bb.z:                                             ; preds = %tsd_fetch_impl.exit
  %i.dc = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ab, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %bb.z
  %i.de = tail call fastcc zeroext i1 @malloc_init_hard()
  br i1 %i.de, label %imalloc_init_check.exit, label %bb.ab, !prof !116

imalloc_init_check.exit:                          ; preds = %bb.aa
  %i.df = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.df, align 4, !tbaa !7
  br label %imalloc.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dg = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.dh = trunc nuw i8 %i.dg to i1                ; 6 uses
  %i.di = icmp ult i64 %1, 4097
  br i1 %i.di, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.dj = add nuw nsw i64 %1, 7
  %i.dk = lshr i64 %i.dj, 3
  %i.dl = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !14
  %i.dn = zext i8 %i.dm to i32
  br label %sz_size2index.exit.i43

bb.ad:                                            ; preds = %bb.ab
  %i.do = icmp ugt i64 %1, 8070450532247928832
  br i1 %i.do, label %aligned_usize_get.exit.i37.thread, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dp = shl nuw i64 %1, 1
  %i.dq = add i64 %i.dp, -1
  %i.dr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dq, i1 true) ; 3 uses
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = sub nuw nsw i64 60, %i.dr
  %i.du = ashr exact i64 -1152921504606846976, %i.dr
  %i.dv = add nsw i64 %1, -1
  %i.dw = and i64 %i.du, %i.dv
  %i.dx = lshr i64 %i.dw, %i.dt
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 3
  %i.ea = shl nuw nsw i32 %i.ds, 2
  %reass.sub = sub nsw i32 %i.dz, %i.ea
  %i.eb = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i43

sz_size2index.exit.i43:                           ; preds = %bb.ae, %bb.ac
  %.0.i50.i44 = phi i32 [ %i.dn, %bb.ac ], [ %i.eb, %bb.ae ] ; 7 uses
  %i.ec = icmp samesign ugt i32 %.0.i50.i44, 234
  br i1 %i.ec, label %aligned_usize_get.exit.i37.thread, label %bb.af, !prof !151

bb.af:                                            ; preds = %sz_size2index.exit.i43
  %i.ed = zext nneg i32 %.0.i50.i44 to i64        ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.ed ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !27 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.ei = icmp sgt i8 %i.eh, 0
  br i1 %i.ei, label %tcache_get_from_ind.exit.i, label %bb.ag, !prof !118

bb.ag:                                            ; preds = %bb.af
  %i.ej = load i8, ptr %i.m, align 8, !tbaa !104, !range !105, !noundef !106
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 872 ; 3 uses
  br i1 %i.ek, label %iallocztm.exit.i, label %iallocztm.exit.i.thread

tcache_get_from_ind.exit.i:                       ; preds = %bb.af
  %i.em = load atomic ptr, ptr @je_arenas acquire, align 64 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %arena_get.exit135, label %iallocztm.exit.i.thread, !prof !11

arena_get.exit135:                                ; preds = %tcache_get_from_ind.exit.i
  %i.eo = tail call ptr @je_arena_init(ptr noundef nonnull %i.m, i32 noundef 0, ptr noundef nonnull @je_arena_config_default), !inline_history !15 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ah, label %iallocztm.exit.i.thread, !prof !12

bb.ah:                                            ; preds = %arena_get.exit135
  %i.eq = load i32, ptr @je_narenas_auto, align 4, !tbaa !7
  %.not.i.i.not = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.not, label %aligned_usize_get.exit.i37.thread, label %iallocztm.exit.i.thread

iallocztm.exit.i:                                 ; preds = %bb.ag
  %i.er = icmp samesign ult i64 %1, 14337
  br i1 %i.er, label %bb.ai, label %bb.ar, !prof !13

bb.ai:                                            ; preds = %iallocztm.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.ed ; 8 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !92 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !97 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 8, !tbaa !98 ; 2 uses
  %i.fa = trunc i64 %i.ew to i16
  %.not.i24.i = icmp eq i16 %i.ez, %i.fa
  br i1 %.not.i24.i, label %bb.ak, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !92
  br label %cache_bin_alloc_impl.exit.i.thread

bb.ak:                                            ; preds = %bb.ai
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.fc = load i16, ptr %i.fb, align 4, !tbaa !99
  %.not21.i.i = icmp eq i16 %i.fc, %i.ez
  br i1 %.not21.i.i, label %cache_bin_alloc_impl.exit.i, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !92
  %i.fd = ptrtoint ptr %i.ex to i64
  %i.fe = trunc i64 %i.fd to i16
  store i16 %i.fe, ptr %i.ey, align 8, !tbaa !98
  br label %cache_bin_alloc_impl.exit.i.thread

cache_bin_alloc_impl.exit.i:                      ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ff = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.m, ptr noundef null) ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.thread268, label %bb.am, !prof !11

bb.am:                                            ; preds = %cache_bin_alloc_impl.exit.i
  %i.fh = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !100
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %i.ed
  %.val128 = load i16, ptr %i.fi, align 2, !tbaa !102
  %i.fj = icmp eq i16 %.val128, 0
  br i1 %i.fj, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.fk = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ff, i64 noundef range(i64 0, 14337) %1, i32 noundef %.0.i50.i44, i1 noundef zeroext %i.dh) #20
  br label %.thread268

.thread268:                                       ; preds = %cache_bin_alloc_impl.exit.i, %bb.an
  %.0.i22.i.ph = phi ptr [ %i.fk, %bb.an ], [ null, %cache_bin_alloc_impl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %imalloc_no_sample.exit

bb.ao:                                            ; preds = %bb.am
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.el, ptr noundef nonnull %i.et, i32 noundef %.0.i50.i44, i1 noundef zeroext true) #20
  %i.fl = call ptr @je_tcache_alloc_small_hard(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.el, ptr noundef nonnull %i.et, i32 noundef %.0.i50.i44, ptr noundef nonnull %i.b) #20
  %i.fm = load i8, ptr %i.b, align 1, !tbaa !104, !range !105, !noundef !106
  %7 = trunc nuw i8 %i.fm to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %7, label %cache_bin_alloc_impl.exit.i.thread, label %aligned_usize_get.exit.i37.thread

cache_bin_alloc_impl.exit.i.thread:               ; preds = %bb.al, %bb.aj, %bb.ao
  %.131.i.i = phi ptr [ %i.fl, %bb.ao ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.al ] ; 2 uses
  br i1 %i.dh, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %cache_bin_alloc_impl.exit.i.thread
  %i.fn = load i64, ptr %i.ee, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 1 %.131.i.i, i8 0, i64 %i.fn, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %cache_bin_alloc_impl.exit.i.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !107
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

bb.ar:                                            ; preds = %iallocztm.exit.i
  %i.fr = load i64, ptr @je_tcache_maxclass, align 8, !tbaa !27
  %.not24.i.i = icmp ugt i64 %1, %i.fr
  br i1 %.not24.i.i, label %iallocztm.exit.i.thread, label %bb.as, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.ed ; 7 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !92 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !97 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !98 ; 2 uses
  %i.ga = trunc i64 %i.fw to i16
  %.not.i26.i = icmp eq i16 %i.fz, %i.ga
  br i1 %.not.i26.i, label %bb.au, label %bb.at, !prof !11

bb.at:                                            ; preds = %bb.as
  store ptr %i.fx, ptr %i.ft, align 8, !tbaa !92
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.gc = load i16, ptr %i.gb, align 4, !tbaa !99
  %.not21.i28.i = icmp eq i16 %i.gc, %i.fz
  br i1 %.not21.i28.i, label %cache_bin_alloc_impl.exit29.i, label %bb.av, !prof !11

bb.av:                                            ; preds = %bb.au
  store ptr %i.fx, ptr %i.ft, align 8, !tbaa !92
  %i.gd = ptrtoint ptr %i.fx to i64
  %i.ge = trunc i64 %i.gd to i16
  store i16 %i.ge, ptr %i.fy, align 8, !tbaa !98
  br label %bb.aw

cache_bin_alloc_impl.exit29.i:                    ; preds = %bb.au
  %i.gf = tail call fastcc ptr @arena_choose(ptr noundef nonnull %i.m, ptr noundef null) ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %aligned_usize_get.exit.i37.thread, label %sz_s2u.exit.i, !prof !11

sz_s2u.exit.i:                                    ; preds = %cache_bin_alloc_impl.exit29.i
  tail call void @je_tcache_bin_flush_stashed(ptr noundef nonnull %i.m, ptr noundef nonnull %i.el, ptr noundef nonnull %i.ft, i32 noundef %.0.i50.i44, i1 noundef zeroext false) #20
  %i.gh = shl nuw i64 %1, 1
  %i.gi = add i64 %i.gh, -1
  %i.gj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.gi, i1 true) ; 2 uses
  %notmask.i.i = ashr exact i64 -1152921504606846976, %i.gj
  %i.gk = lshr i64 1152921504606846975, %i.gj
  %i.gl = add nuw nsw i64 %1, %i.gk
  %i.gm = and i64 %i.gl, %notmask.i.i
  %i.gn = tail call ptr @je_large_malloc(ptr noundef nonnull %i.m, ptr noundef nonnull %i.gf, i64 noundef %i.gm, i1 noundef zeroext %i.dh) #20
  br label %imalloc_no_sample.exit

bb.aw:                                            ; preds = %bb.at, %bb.av
  br i1 %i.dh, label %bb.ax, label %bb.ay, !prof !11

bb.ax:                                            ; preds = %bb.aw
  %i.go = load i64, ptr %i.ee, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %i.go, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !107
  %i.gr = add i64 %i.gq, 1
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !107
  br label %imalloc_no_sample.exit

iallocztm.exit.i.thread:                          ; preds = %tcache_get_from_ind.exit.i, %bb.ah, %arena_get.exit135, %bb.ag, %bb.ar
  %.1220.ph310 = phi ptr [ null, %bb.ar ], [ %i.em, %tcache_get_from_ind.exit.i ], [ null, %bb.ah ], [ %i.eo, %arena_get.exit135 ], [ null, %bb.ag ]
  %i.gs = tail call ptr @je_arena_malloc_hard(ptr noundef nonnull %i.m, ptr noundef %.1220.ph310, i64 noundef %1, i32 noundef %.0.i50.i44, i1 noundef zeroext %i.dh) #20
  br label %imalloc_no_sample.exit

imalloc_no_sample.exit:                           ; preds = %iallocztm.exit.i.thread, %.thread268, %bb.aq, %bb.ay, %sz_s2u.exit.i
  %.0.i55 = phi ptr [ %i.gn, %sz_s2u.exit.i ], [ %i.gs, %iallocztm.exit.i.thread ], [ %.0.i22.i.ph, %.thread268 ], [ %.131.i.i, %bb.aq ], [ %i.fv, %bb.ay ] ; 4 uses
  %i.gt = icmp eq ptr %.0.i55, null
  br i1 %i.gt, label %aligned_usize_get.exit.i37.thread, label %bb.az, !prof !152

bb.az:                                            ; preds = %imalloc_no_sample.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i8 1, ptr %5, align 8, !tbaa !109
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 840 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !113
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !114
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 848
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !115
  %i.hc = load i64, ptr %i.gu, align 8, !tbaa !27 ; 2 uses
  %i.hd = add i64 %i.hc, %i.ef
  store i64 %i.hd, ptr %i.gu, align 8, !tbaa !27
  %i.he = load i64, ptr %i.gy, align 8, !tbaa !27
  %i.hf = sub i64 %i.he, %i.hc
  %i.hg = icmp ult i64 %i.ef, %i.hf
  br i1 %i.hg, label %bb.bb, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %bb.az
  call void @je_te_event_trigger(ptr noundef nonnull %i.m, ptr noundef nonnull %5) #20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i41 = xor i1 %i.dh, true
  %i.hh = load i8, ptr @je_opt_junk_alloc, align 1, !range !105
  %i.hi = trunc nuw i8 %i.hh to i1
  %or.cond45.i42 = select i1 %.not.i41, i1 %i.hi, i1 false, !prof !118
  br i1 %or.cond45.i42, label %bb.bc, label %bb.bd, !prof !118

bb.bc:                                            ; preds = %bb.bb
  %i.hj = load ptr, ptr @je_junk_alloc_callback, align 8, !tbaa !97
  call void %i.hj(ptr noundef nonnull %.0.i55, i64 noundef %i.ef) #20, !inline_history !120
  br label %bb.bd

aligned_usize_get.exit.i37.thread:                ; preds = %cache_bin_alloc_impl.exit29.i, %bb.ao, %bb.ah, %bb.ad, %sz_size2index.exit.i43, %imalloc_no_sample.exit
  %.sroa.11.3 = phi i64 [ %i.ef, %imalloc_no_sample.exit ], [ 0, %bb.ad ], [ 0, %sz_size2index.exit.i43 ], [ %i.ef, %bb.ah ], [ %i.ef, %bb.ao ], [ %i.ef, %cache_bin_alloc_impl.exit29.i ]
  %i.hk = tail call ptr @__errno_location() #22
  store i32 12, ptr %i.hk, align 4, !tbaa !7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %aligned_usize_get.exit.i37.thread
  %.0228.ph = phi ptr [ %.0.i55, %bb.bc ], [ %.0.i55, %bb.bb ], [ null, %aligned_usize_get.exit.i37.thread ] ; 3 uses
  %.sroa.11.0.ph = phi i64 [ %i.ef, %bb.bc ], [ %i.ef, %bb.bb ], [ %.sroa.11.3, %aligned_usize_get.exit.i37.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.hl = ptrtoint ptr %0 to i64
  store i64 %i.hl, ptr %i.c, align 16, !tbaa !27
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.hm, align 8, !tbaa !27
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.ptr, align 16, !tbaa !27
  %i.hn = ptrtoint ptr %.0228.ph to i64
  call void @je_hook_invoke_alloc(i32 noundef 7, ptr noundef %.0228.ph, i64 noundef %i.hn, ptr noundef nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %imalloc.exit

imalloc.exit:                                     ; preds = %bb.y, %aligned_usize_get.exit.i.thread, %imalloc_init_check.exit, %bb.bd
  %.sroa.11.0281 = phi i64 [ %.sroa.11.0.ph, %bb.bd ], [ 0, %imalloc_init_check.exit ], [ %i.al, %bb.y ], [ %.sroa.11.1, %aligned_usize_get.exit.i.thread ]
  %.0228280 = phi ptr [ %.0228.ph, %bb.bd ], [ null, %imalloc_init_check.exit ], [ %.0.i21.i76, %bb.y ], [ null, %aligned_usize_get.exit.i.thread ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %imalloc.exit
  store i64 0, ptr %2, align 8, !tbaa !27
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %imalloc.exit
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i64 %.sroa.11.0281, ptr %3, align 8, !tbaa !27
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.d ], [ %.0228280, %bb.bg ], [ %.0228280, %bb.bf ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @je_xallocx(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %5 = alloca %struct.te_ctx_s, align 8           ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 6 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = and i32 %3, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d
  %i.f = and i64 %i.e, -2                         ; 2 uses
  %i.g = and i32 %3, 64
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i8, ptr @je_opt_zero, align 1, !range !105
  %i.j = trunc nuw i8 %i.i to i1
  %.0.i = or i1 %i.h, %i.j                        ; 2 uses
  %i.k = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 832
  %i.m = load i8, ptr %i.l, align 8, !tbaa !14
end_hunk_3
