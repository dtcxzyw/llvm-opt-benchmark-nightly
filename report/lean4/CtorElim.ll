Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CtorElim?download=true
inline.NumInlined: 2312
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l_Array_mapFinIdxM_map___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_mkIndCtorElim_spec__1___redArg___lam__1:bb.a

declare ptr @l_Lean_Level_ofNat(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_mkRawNatLit(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_mkApp3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l_Array_mapFinIdxM_map___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_mkIndCtorElim_spec__1___redArg___lam__1___boxed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10 ; 5 uses
  %i.ah = ptrtoint ptr %i.e to i64
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = ptrtoint ptr %i.g to i64
  %i.al = lshr i64 %i.ak, 1
  %i.am = trunc i64 %i.al to i8
  %i.an = ptrtoint ptr %i.i to i64
  %i.ao = lshr i64 %i.an, 1
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = tail call ptr @l_Array_mapFinIdxM_map___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_mkIndCtorElim_spec__1___redArg___lam__1(ptr noundef %i.a, ptr noundef %i.c, i8 noundef zeroext %i.aj, i8 noundef zeroext %i.am, i8 noundef zeroext %i.ap, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr poison, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %i.ag)
  %i.ar = ptrtoint ptr %i.ag to i64
  %i.as = and i64 %i.ar, 1
  %.not.i46 = icmp eq i64 %i.as, 0
  br i1 %.not.i46, label %bb.b, label %lean_dec.exit47

bb.b:                                             ; preds = %bb.a
  %i.at = load i32, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.ag, align 4, !tbaa !12
  br label %lean_dec.exit47

bb.d:                                             ; preds = %bb.b
  %.not.i48 = icmp eq i32 %i.at, 0
  br i1 %.not.i48, label %lean_dec.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #5
  br label %lean_dec.exit47

lean_dec.exit47:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit47
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.ae, align 4, !tbaa !12
  br label %lean_dec_ref.exit58

bb.g:                                             ; preds = %lean_dec.exit47
  %.not.i57 = icmp eq i32 %i.aw, 0
  br i1 %.not.i57, label %lean_dec_ref.exit58, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #5
  br label %lean_dec_ref.exit58

lean_dec_ref.exit58:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.az = ptrtoint ptr %i.ac to i64
  %i.ba = and i64 %i.az, 1
  %.not.i44 = icmp eq i64 %i.ba, 0
  br i1 %.not.i44, label %bb.i, label %lean_dec.exit45

bb.i:                                             ; preds = %lean_dec_ref.exit58
  %i.bb = load i32, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ac, align 4, !tbaa !12
  br label %lean_dec.exit45

bb.k:                                             ; preds = %bb.i
  %.not.i49 = icmp eq i32 %i.bb, 0
  br i1 %.not.i49, label %lean_dec.exit45, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec.exit45

lean_dec.exit45:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit58
  %i.be = load i32, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit45
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.aa, align 4, !tbaa !12
  br label %lean_dec_ref.exit56

bb.n:                                             ; preds = %lean_dec.exit45
  %.not.i55 = icmp eq i32 %i.be, 0
  br i1 %.not.i55, label %lean_dec_ref.exit56, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #5
  br label %lean_dec_ref.exit56

lean_dec_ref.exit56:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.bh = load i32, ptr %i.y, align 4, !tbaa !12  ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %lean_dec_ref.exit56
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.y, align 4, !tbaa !12
  br label %lean_dec_ref.exit54

bb.q:                                             ; preds = %lean_dec_ref.exit56
  %.not.i53 = icmp eq i32 %i.bh, 0
  br i1 %.not.i53, label %lean_dec_ref.exit54, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #5
  br label %lean_dec_ref.exit54

lean_dec_ref.exit54:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.bk = ptrtoint ptr %i.k to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i, label %bb.s, label %lean_dec.exit

bb.s:                                             ; preds = %lean_dec_ref.exit54
  %i.bm = load i32, ptr %i.k, align 4, !tbaa !12  ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.k, align 4, !tbaa !12
  br label %lean_dec.exit

bb.u:                                             ; preds = %bb.s
  %.not.i51 = icmp eq i32 %i.bm, 0
  br i1 %.not.i51, label %lean_dec.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.v, %bb.u, %bb.t, %lean_dec_ref.exit54
  ret ptr %i.aq
}

; Function Attrs: nounwind uwtable
define ptr @l_Array_mapFinIdxM_map___at___00__private_Lean_Meta_Constructions_CtorElim_0__Lean_mkIndCtorElim_spec__1___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i142 = icmp eq i64 %i.c, 0                ; 3 uses
  %i.d = ptrtoint ptr %12 to i64
  %i.e = and i64 %i.d, 1
  %.not.i138 = icmp eq i64 %i.e, 0
  %i.f = ptrtoint ptr %10 to i64
  %i.g = and i64 %i.f, 1
  %.not.i136 = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %lean_dec.exit, %bb.a
  %.0120 = phi ptr [ %8, %bb.a ], [ %i.gm, %lean_dec.exit ] ; 5 uses
  %.0117 = phi ptr [ %7, %bb.a ], [ %.0.i257, %lean_dec.exit ] ; 16 uses
  %.0114 = phi ptr [ %6, %bb.a ], [ %.1.i255, %lean_dec.exit ] ; 11 uses
  %i.h = ptrtoint ptr %.0114 to i64               ; 2 uses
  %i.i = and i64 %i.h, 1
  %.not.i192 = icmp eq i64 %i.i, 0                ; 2 uses
  br i1 %.not.i192, label %lean_nat_eq.exit, label %lean_nat_eq.exit.thread, !prof !23

lean_nat_eq.exit:                                 ; preds = %bb.b
  %i.j = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0114, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  br i1 %i.j, label %bb.c, label %bb.aa

lean_nat_eq.exit.thread:                          ; preds = %bb.b
  %.not267 = icmp eq ptr %.0114, inttoptr (i64 1 to ptr)
  br i1 %.not267, label %bb.c, label %.thread

bb.c:                                             ; preds = %lean_nat_eq.exit.thread, %lean_nat_eq.exit
  %i.k = ptrtoint ptr %.0117 to i64
  %i.l = and i64 %i.k, 1
  %.not.i159 = icmp eq i64 %i.l, 0
  br i1 %.not.i159, label %bb.d, label %lean_dec.exit160

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %.0117, align 4, !tbaa !12 ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %.0117, align 4, !tbaa !12
  br label %lean_dec.exit160

bb.f:                                             ; preds = %bb.d
  %.not.i161 = icmp eq i32 %i.m, 0
  br i1 %.not.i161, label %lean_dec.exit160, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0117) #5
  br label %lean_dec.exit160

lean_dec.exit160:                                 ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  br i1 %.not.i192, label %bb.h, label %lean_dec.exit158

bb.h:                                             ; preds = %lean_dec.exit160
  %i.p = load i32, ptr %.0114, align 4, !tbaa !12 ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %.0114, align 4, !tbaa !12
  br label %lean_dec.exit158

bb.j:                                             ; preds = %bb.h
  %.not.i162 = icmp eq i32 %i.p, 0
  br i1 %.not.i162, label %lean_dec.exit158, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0114) #5
  br label %lean_dec.exit158

lean_dec.exit158:                                 ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit160
  br i1 %.not.i142, label %bb.l, label %lean_dec.exit156

bb.l:                                             ; preds = %lean_dec.exit158
  %i.s = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit156

bb.n:                                             ; preds = %bb.l
  %.not.i164 = icmp eq i32 %i.s, 0
  br i1 %.not.i164, label %lean_dec.exit156, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit156

lean_dec.exit156:                                 ; preds = %bb.o, %bb.n, %bb.m, %lean_dec.exit158
  %i.v = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %lean_dec.exit156
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit191

bb.q:                                             ; preds = %lean_dec.exit156
  %.not.i190 = icmp eq i32 %i.v, 0
  br i1 %.not.i190, label %lean_dec_ref.exit191, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit191

lean_dec_ref.exit191:                             ; preds = %bb.p, %bb.q, %bb.r
  %i.y = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %lean_dec_ref.exit191
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit189

bb.t:                                             ; preds = %lean_dec_ref.exit191
  %.not.i188 = icmp eq i32 %i.y, 0
  br i1 %.not.i188, label %lean_dec_ref.exit189, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit189

lean_dec_ref.exit189:                             ; preds = %bb.s, %bb.t, %bb.u
  %i.ab = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %lean_dec_ref.exit189
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit187

bb.w:                                             ; preds = %lean_dec_ref.exit189
  %.not.i186 = icmp eq i32 %i.ab, 0
  br i1 %.not.i186, label %lean_dec_ref.exit187, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit187

lean_dec_ref.exit187:                             ; preds = %bb.v, %bb.w, %bb.x
  tail call void @lean_inc_heartbeat() #5
  %i.ae = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.y, label %.sink.split

bb.y:                                             ; preds = %lean_dec_ref.exit187
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

.thread:                                          ; preds = %lean_nat_eq.exit.thread
  %i.ag = icmp ult ptr %.0114, inttoptr (i64 2 to ptr)
  br i1 %i.ag, label %lean_dec.exit154, label %bb.z

bb.z:                                             ; preds = %.thread
  %i.ah = add i64 %i.h, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %lean_dec.exit154

bb.aa:                                            ; preds = %lean_nat_eq.exit
  %i.aj = tail call ptr @lean_nat_big_sub(ptr noundef %.0114, ptr noundef nonnull inttoptr (i64 3 to ptr)) #5 ; 3 uses
  %i.ak = load i32, ptr %.0114, align 4, !tbaa !12 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %.0114, align 4, !tbaa !12
  br label %lean_dec.exit154

bb.ac:                                            ; preds = %bb.aa
  %.not.i166 = icmp eq i32 %i.ak, 0
  br i1 %.not.i166, label %lean_dec.exit154, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0114) #5
  br label %lean_dec.exit154

lean_dec.exit154:                                 ; preds = %bb.z, %.thread, %bb.ad, %bb.ac, %bb.ab
  %.1.i255 = phi ptr [ %i.aj, %bb.ad ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ac ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.ai, %bb.z ] ; 5 uses
  %i.an = ptrtoint ptr %.0117 to i64              ; 4 uses
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !10 ; 5 uses
  br i1 %.not.i142, label %bb.ae, label %lean_inc.exit143

bb.ae:                                            ; preds = %lean_dec.exit154
  %.val.i.i = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ar, label %bb.af, label %bb.ag, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.as = add nuw i32 %.val.i.i, 1
  store i32 %i.as, ptr %3, align 4, !tbaa !12
  br label %lean_inc.exit143

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit143, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit143

lean_inc.exit143:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %lean_dec.exit154
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = and i64 %i.au, 1
  %.not.i140 = icmp eq i64 %i.av, 0
  br i1 %.not.i140, label %bb.ai, label %lean_inc.exit141

bb.ai:                                            ; preds = %lean_inc.exit143
  %.val.i.i195 = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.aw = icmp sgt i32 %.val.i.i195, 0
  br i1 %i.aw, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.ax = add nuw i32 %.val.i.i195, 1
  store i32 %i.ax, ptr %i.aq, align 4, !tbaa !12
  br label %lean_inc.exit141

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i196 = icmp eq i32 %.val.i.i195, 0
  br i1 %.not.i.i196, label %lean_inc.exit141, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ay = atomicrmw add ptr %i.aq, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit141

lean_inc.exit141:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %lean_inc.exit143
  %i.az = tail call ptr @l_Lean_mkConst(ptr noundef %i.aq, ptr noundef %3) #5
  %i.ba = tail call ptr @l_Lean_mkAppN(ptr noundef %i.az, ptr noundef %4) #5
  br i1 %.not.i138, label %bb.am, label %lean_inc.exit139

bb.am:                                            ; preds = %lean_inc.exit141
  %.val.i.i198 = load i32, ptr %12, align 4, !tbaa !12 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i198, 0
  br i1 %i.bb, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %bb.am
  %i.bc = add nuw i32 %.val.i.i198, 1
  store i32 %i.bc, ptr %12, align 4, !tbaa !12
  br label %lean_inc.exit139

bb.ao:                                            ; preds = %bb.am
  %.not.i.i199 = icmp eq i32 %.val.i.i198, 0
  br i1 %.not.i.i199, label %lean_inc.exit139, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bd = atomicrmw add ptr %12, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit139

lean_inc.exit139:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_inc.exit141
  %.val.i.i201 = load i32, ptr %11, align 4, !tbaa !12 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i201, 0
  br i1 %i.be, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %lean_inc.exit139
  %i.bf = add nuw i32 %.val.i.i201, 1
  store i32 %i.bf, ptr %11, align 4, !tbaa !12
  br label %lean_inc_ref.exit203

bb.ar:                                            ; preds = %lean_inc.exit139
  %.not.i.i202 = icmp eq i32 %.val.i.i201, 0
end_hunk_0
