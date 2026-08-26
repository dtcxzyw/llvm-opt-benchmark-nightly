Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL38mi_heap_malloc_zero_aligned_at_genericP9mi_heap_smmmb:bb.a
  br label %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22

_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22: ; preds = %.thread, %_ZL30mi_malloc_is_naturally_alignedmm.exit, %bb.b
  %i.bg = tail call fastcc noundef ptr @_ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_smmmb(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #55
  br label %bb.r

bb.r:                                             ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, %bb.a, %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22
  %.1 = phi ptr [ null, %bb.a ], [ %i.bg, %_ZL30mi_malloc_is_naturally_alignedmm.exit.thread22 ], [ %.0.i.i.i20, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZL40mi_heap_malloc_zero_aligned_at_overallocP9mi_heap_smmmb(ptr noundef %0, i64 noundef range(i64 0, 281474976579585) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, 16777216                ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d, !prof !19

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.p, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i64 @llvm.umax.i64(i64 %1, i64 1025)
  %i.c = tail call noundef ptr @_Z23_mi_heap_malloc_zero_exP9mi_heap_smbm(ptr noundef %0, i64 noundef %i.b, i1 noundef zeroext false, i64 noundef %2) #55 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.umax.i64(i64 %1, i64 16)
  %i.f = add nuw nsw i64 %i.e, %2                 ; 3 uses
  %i.g = add nsw i64 %i.f, -1
  %i.h = icmp samesign ult i64 %i.f, 1026
  br i1 %i.h, label %bb.e, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw nsw i64 %i.f, 6
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = inttoptr i64 %.val.i.i.i.i.i to ptr
  store ptr %i.q, ptr %i.n, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !24
  %i.t = add i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 8, !tbaa !24
  br i1 %4, label %bb.g, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.o, align 8, !tbaa !22
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.y, i1 false)
  br label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit: ; preds = %bb.d, %bb.e
  %i.z = tail call noalias noundef ptr @_Z18_mi_malloc_genericP9mi_heap_smbm(ptr noundef %0, i64 noundef range(i64 -1, 281474993356800) %i.g, i1 noundef zeroext %4, i64 noundef 0) #55 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.p, label %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread

_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread: ; preds = %bb.f, %bb.i, %bb.h, %bb.c, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit
  %.040 = phi ptr [ %i.c, %bb.c ], [ %i.z, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.ab = ptrtoint ptr %.040 to i64               ; 4 uses
  %i.ac = add i64 %2, -1
  %i.ad = add i64 %3, %i.ab
  %i.ae = and i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = sub i64 %2, %i.ae
  %i.ah = select i1 %i.af, i64 0, i64 %i.ag
  %i.ai = add i64 %i.ah, %i.ab                    ; 3 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 6 uses
  %.not44 = icmp eq ptr %.040, %i.aj
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread
  %i.ak = add i64 %i.ab, -1                       ; 2 uses
  %i.al = icmp slt i64 %i.ak, 33554432
  %i.am = and i64 %i.ak, -33554432
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = select i1 %i.al, ptr null, ptr %i.an    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ab, %i.aq
  %i.as = lshr i64 %i.ar, 16
  %i.at = getelementptr inbounds nuw [96 x i8], ptr %i.ap, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !25
  %i.aw = zext i32 %i.av to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 14 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = or i8 %i.ba, 2
  store i8 %i.bb, ptr %i.az, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit.thread
  %or.cond = and i1 %i.a, %4
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bc = add i64 %i.ai, -1                       ; 2 uses
  %i.bd = and i64 %i.bc, -33554432                ; 3 uses
  %i.be = icmp slt i64 %i.bc, 33554432
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = or i1 %i.be, %i.bf
  br i1 %i.bg, label %mi_usable_size.exit, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %i.bh = inttoptr i64 %i.bd to ptr
  %i.bi = sub i64 %i.ai, %i.bd
  %i.bj = lshr i64 %i.bi, 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  %i.bl = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bo = zext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 14
  %.val.i.i = load i8, ptr %i.br, align 2
  %i.bs = and i8 %.val.i.i, 2
  %.not.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr i8, ptr %i.bq, i64 40
  %.val12.i.i = load i64, ptr %i.bt, align 8, !tbaa !20
  br label %mi_usable_size.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = tail call fastcc noundef i64 @_ZL30mi_page_usable_aligned_size_ofPK9mi_page_sPKv(ptr noundef nonnull %i.bq, ptr noundef %i.aj) #55
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.l, %bb.n, %bb.o
  %.1.i.i = phi i64 [ 0, %bb.l ], [ %i.bu, %bb.o ], [ %.val12.i.i, %bb.n ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %.1.i.i, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %mi_usable_size.exit, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %_ZL30mi_heap_malloc_zero_no_guardedP9mi_heap_smb.exit ], [ %i.aj, %mi_usable_size.exit ], [ %i.aj, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #41

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZL21mi_arena_try_alloc_atP10mi_arena_smmbP10mi_memid_s(ptr nofree noundef nonnull captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i1 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110
  %i.i = call noundef zeroext i1 @_Z37_mi_bitmap_try_find_from_claim_acrossPSt6atomicImEmmmPm(ptr noundef nonnull %i.f, i64 noundef %i.h, i64 noundef 0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noundef nonnull %i.a)
  br i1 %i.i, label %bb.b, label %_ZL18mi_arena_try_claimP10mi_arena_smPm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.l = lshr i64 %i.k, 6
  store atomic i64 %i.l, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %i.o = shl i64 %i.k, 25
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 4 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !144
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = load i8, ptr %i.r, align 4, !tbaa !145, !range !91, !noundef !92
  %i.t = load i64, ptr %i.a, align 8, !tbaa !74   ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx, i8 0, i64 7, i1 false)
  store i64 %i.t, ptr %3, align 8
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.q, ptr %.sroa.6.0..sroa_idx.a, align 8
  %.sroa.7.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.s, ptr %.sroa.7.0..sroa_idx.a, align 4
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 6, ptr %.sroa.775.0..sroa_idx, align 4, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !149, !range !91, !noundef !92
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.v, ptr %i.w, align 8, !tbaa !181
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162  ; 3 uses
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = lshr i64 %i.t, 6                         ; 2 uses
  %i.aa = and i64 %i.t, 63                        ; 5 uses
  %i.ab = add nuw nsw i64 %i.aa, %1
  %i.ac = icmp samesign ult i64 %i.ab, 65
  br i1 %i.ac, label %bb.d, label %_ZL15mi_bitmap_mask_mm.exit24.i.i, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp samesign ugt i64 %1, 63
  br i1 %i.ad, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %1, 0
  br i1 %i.ae, label %._crit_edge.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %notmask.i.i.i = shl nsw i64 -1, %1
  %i.af = xor i64 %notmask.i.i.i, -1
  %i.ag = shl i64 %i.af, %i.aa
  %i.ah = xor i64 %i.ag, -1
  br label %._crit_edge.thread.i

_ZL15mi_bitmap_mask_mm.exit24.i.i:                ; preds = %bb.c
  %i.ai = sub nuw nsw i64 64, %i.aa               ; 2 uses
  %i.aj = icmp eq i64 %i.aa, 0
  %notmask.i22.i.i = shl nsw i64 -1, %i.ai
  %i.ak = xor i64 %notmask.i22.i.i, -1
  %i.al = shl i64 %i.ak, %i.aa
  %i.am = sub nsw i64 %1, %i.ai                   ; 3 uses
  %i.an = lshr i64 %i.am, 6                       ; 4 uses
  %i.ao = and i64 %i.am, 63                       ; 2 uses
  %notmask.i25.i.i = shl nsw i64 -1, %i.ao
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.aq = xor i64 %i.al, -1
  %i.ar = select i1 %i.aj, i64 0, i64 %i.aq
  %i.as = atomicrmw and ptr %i.ap, i64 %i.ar acq_rel, align 8 ; 0 uses
  %.032.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %.not1633.i = icmp eq i64 %i.an, 0
  br i1 %.not1633.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.036.i.prol = phi ptr [ %.0.i.prol, %.lr.ph.i.prol ], [ %.032.i, %.lr.ph.i.preheader ] ; 2 uses
  %.01434.i.prol = phi i64 [ %i.at, %.lr.ph.i.prol ], [ %i.an, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.at = add nsw i64 %.01434.i.prol, -1          ; 2 uses
  %i.au = atomicrmw xchg ptr %.036.i.prol, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.prol = getelementptr inbounds nuw i8, ptr %.036.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !380

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.036.i.unr = phi ptr [ %.032.i, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.01434.i.unr = phi i64 [ %i.an, %.lr.ph.i.preheader ], [ %i.at, %.lr.ph.i.prol ]
  %i.av = icmp ult i64 %i.am, 512
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.f, %bb.e, %bb.d
  %.030.ph.i = phi i64 [ 0, %bb.d ], [ -1, %bb.e ], [ %i.ah, %bb.f ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ax = atomicrmw and ptr %i.aw, i64 %.030.ph.i acq_rel, align 8 ; 0 uses
  br label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.036.i = phi ptr [ %.0.i.7, %.lr.ph.i ], [ %.036.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01434.i = phi i64 [ %i.bf, %.lr.ph.i ], [ %.01434.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ay = atomicrmw xchg ptr %.036.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  %i.az = atomicrmw xchg ptr %.0.i, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.1 = getelementptr inbounds nuw i8, ptr %.036.i, i64 16
  %i.ba = atomicrmw xchg ptr %.0.i.1, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.2 = getelementptr inbounds nuw i8, ptr %.036.i, i64 24
  %i.bb = atomicrmw xchg ptr %.0.i.2, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.3 = getelementptr inbounds nuw i8, ptr %.036.i, i64 32
  %i.bc = atomicrmw xchg ptr %.0.i.3, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.4 = getelementptr inbounds nuw i8, ptr %.036.i, i64 40
  %i.bd = atomicrmw xchg ptr %.0.i.4, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.5 = getelementptr inbounds nuw i8, ptr %.036.i, i64 48
  %i.be = atomicrmw xchg ptr %.0.i.5, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.6 = getelementptr inbounds nuw i8, ptr %.036.i, i64 56
  %i.bf = add nsw i64 %.01434.i, -8               ; 2 uses
  %i.bg = atomicrmw xchg ptr %.0.i.6, i64 0 acq_rel, align 8 ; 0 uses
  %.0.i.7 = getelementptr inbounds nuw i8, ptr %.036.i, i64 64 ; 2 uses
  %.not16.i.7 = icmp eq i64 %i.bf, 0
  br i1 %.not16.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !153

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i
  %.0.lcssa.i = phi ptr [ %.032.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i ], [ %.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0.i.7, %.lr.ph.i ]
  %.not17.i = icmp eq i64 %i.ao, 0
  br i1 %.not17.i, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.bh = atomicrmw and ptr %.0.lcssa.i, i64 %notmask.i25.i.i acq_rel, align 8 ; 0 uses
  br label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit

_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit: ; preds = %bb.g, %._crit_edge.i, %._crit_edge.thread.i, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !381, !range !91, !noundef !92
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !184 ; 2 uses
  %.not46 = icmp eq ptr %i.bm, null
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = tail call noundef zeroext i1 @_Z23_mi_bitmap_claim_acrossPSt6atomicImEmmmPbPm(ptr noundef nonnull %i.bm, i64 poison, i64 noundef %1, i64 noundef %i.t, ptr noundef null, ptr noundef null)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.bp = zext i1 %i.bn to i8
  store i8 %i.bp, ptr %i.bo, align 2, !tbaa !138
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !150 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bt, align 1, !tbaa !382
  br label %_ZL18mi_arena_try_claimP10mi_arena_smPm.exit

bb.l:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  store i8 1, ptr %i.bu, align 1, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store i64 0, ptr %i.c, align 8, !tbaa !74
  %i.bv = call noundef zeroext i1 @_Z23_mi_bitmap_claim_acrossPSt6atomicImEmmmPbPm(ptr noundef nonnull %i.br, i64 poison, i64 noundef %1, i64 noundef %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.bw = load i8, ptr %i.b, align 1, !tbaa !93, !range !91, !noundef !92
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.by = shl i64 %1, 25
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !74
  %i.ca = sub i64 %1, %i.bz
  %i.cb = shl i64 %i.ca, 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  store i8 0, ptr %i.d, align 1, !tbaa !93
  %i.cc = call noundef zeroext i1 @_Z16_mi_os_commit_exPvmPbm(ptr noundef %i.p, i64 noundef %i.by, ptr noundef nonnull %i.d, i64 noundef %i.cb)
  br i1 %i.cc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %i.bu, align 1, !tbaa !382
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cd = load i8, ptr %i.d, align 1, !tbaa !93, !range !91, !noundef !92
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 1, ptr %i.cf, align 2, !tbaa !138
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %_ZL18mi_arena_try_claimP10mi_arena_smPm.exit

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  store i64 0, ptr %i.e, align 8, !tbaa !74
  %i.cg = call fastcc noundef zeroext i1 @_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm(ptr noundef nonnull %i.br, i64 noundef %1, i64 noundef %i.t, ptr noundef null, ptr noundef nonnull %i.e) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.ci = zext i1 %i.cg to i8
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !382
  %i.cj = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %or.cond.not = select i1 %i.cg, i1 true, i1 %i.ck
  br i1 %or.cond.not, label %_Z25_mi_bitmap_unclaim_acrossPSt6atomicImEmmm.exit74, label %bb.u
end_hunk_0
