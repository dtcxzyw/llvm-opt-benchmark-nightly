Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Assert?download=true
inline.NumInlined: 3239
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_mkProofForPath_go:bb.a
  br label %lean_dec_ref.exit109

lean_dec_ref.exit109:                             ; preds = %bb.at, %bb.au, %bb.av
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.j, align 8, !tbaa !15
  %i.bv = icmp eq i32 %.val, 1
  br i1 %i.bv, label %bb.bp, label %bb.aw

bb.aw:                                            ; preds = %lean_dec_ref.exit109
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = and i64 %i.bw, 1
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.ax, label %lean_inc.exit

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i136 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.by = icmp sgt i32 %.val.i.i136, 0
  br i1 %i.by, label %bb.ay, label %bb.az, !prof !10

bb.ay:                                            ; preds = %bb.ax
  %i.bz = add nuw i32 %.val.i.i136, 1
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !15
  br label %lean_inc.exit

bb.az:                                            ; preds = %bb.ax
  %.not.i.i137 = icmp eq i32 %.val.i.i136, 0
  br i1 %.not.i.i137, label %lean_inc.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ca = atomicrmw sub ptr %i.bu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  br i1 %.not.i112, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %lean_inc.exit
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !15  ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.bc, label %bb.bd, !prof !10

bb.bc:                                            ; preds = %bb.bb
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.j, align 8, !tbaa !15
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %.not.i104 = icmp eq i32 %i.cb, 0
  br i1 %.not.i104, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %bb.bf

bb.bf:                                            ; preds = %lean_inc.exit, %bb.bc, %bb.bd, %bb.be
  tail call void @lean_inc_heartbeat() #5
  %i.ce = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.bg, label %.sink.split

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.bh:                                            ; preds = %.split, %lean_nat_eq.exit
  %.val.i.i140 = load i32, ptr %i.e, align 4, !tbaa !15 ; 3 uses
  %i.cg = icmp sgt i32 %.val.i.i140, 0
  br i1 %i.cg, label %bb.bi, label %bb.bj, !prof !10

bb.bi:                                            ; preds = %bb.bh
  %i.ch = add nuw i32 %.val.i.i140, 1
  store i32 %i.ch, ptr %i.e, align 4, !tbaa !15
  br label %lean_inc_ref.exit142

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i141 = icmp eq i32 %.val.i.i140, 0
  br i1 %.not.i.i141, label %lean_inc_ref.exit142, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ci = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit142

lean_inc_ref.exit142:                             ; preds = %bb.bi, %bb.bj, %bb.bk
  %i.cj = load i32, ptr %.079, align 4, !tbaa !15 ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.bl, label %bb.bm, !prof !10

bb.bl:                                            ; preds = %lean_inc_ref.exit142
  %i.cl = add nsw i32 %i.cj, -1
  store i32 %i.cl, ptr %.079, align 4, !tbaa !15
  br label %lean_dec_ref.exit107

bb.bm:                                            ; preds = %lean_inc_ref.exit142
  %.not.i106 = icmp eq i32 %i.cj, 0
  br i1 %.not.i106, label %lean_dec_ref.exit107, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.079) #5
  br label %lean_dec_ref.exit107

lean_dec_ref.exit107:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  tail call void @lean_inc_heartbeat() #5
  %i.cm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.bo, label %.sink.split

bb.bo:                                            ; preds = %lean_dec_ref.exit107
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

.sink.split:                                      ; preds = %lean_dec_ref.exit107, %bb.bf, %bb.aq
  %.sink197 = phi ptr [ %i.ce, %bb.bf ], [ %i.bo, %bb.aq ], [ %i.cm, %lean_dec_ref.exit107 ] ; 4 uses
  %.sink = phi i32 [ 16842768, %bb.bf ], [ 16842768, %bb.aq ], [ 65552, %lean_dec_ref.exit107 ]
  %.lcssa.sink = phi ptr [ %i.bu, %bb.bf ], [ %i.aq, %bb.aq ], [ %i.e, %lean_dec_ref.exit107 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.sink197, i64 4
  store i32 1, ptr %.sink197, align 4, !tbaa !15
  store i32 %.sink, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sink197, i64 8
  store ptr %.lcssa.sink, ptr %i.cp, align 8, !tbaa !12
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split, %bb.ag, %lean_dec_ref.exit109
  %.5.ph = phi ptr [ %i.j, %lean_dec_ref.exit109 ], [ %i.ah, %bb.ag ], [ %.sink197, %.sink.split ]
  ret ptr %.5.ph
}

declare ptr @l_Lean_Meta_Grind_Order_getProof(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 1, 4) %1) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !15    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %lean_dec.exit
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %.preheader, %lean_dec.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lean_dec.exit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %lean_dec.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 4, !tbaa !15   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !15
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !25

bb.h:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %bb.i, label %bb.j, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.k = add nsw i32 %.val, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit9

bb.j:                                             ; preds = %bb.h
  %.not.i8 = icmp eq i32 %.val, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.b
  ret void
}

declare ptr @l_Lean_Meta_Grind_Order_mkTrans(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 10) %0, i32 noundef range(i32 1, 23) %1, i32 noundef range(i32 0, 18) %2) unnamed_addr #0 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 1016
  %i.d = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 3 uses
  tail call void @lean_inc_heartbeat() #5
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef %i.f) #5 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_add_checked.exit
  %i.i = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65536
  %i.m = or disjoint i32 %i.l, %i.i               ; 2 uses
  store i32 %i.m, ptr %i.j, align 4
  %i.n = icmp samesign ult i32 %narrow6, %i.i
  br i1 %i.n, label %bb.b, label %lean_alloc_ctor_memory.exit

bb.b:                                             ; preds = %lean_alloc_small_object.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 0, ptr %i.p, align 8, !tbaa !17
  %.pre = load i32, ptr %i.j, align 4
  br label %lean_alloc_ctor_memory.exit

lean_alloc_ctor_memory.exit:                      ; preds = %lean_alloc_small_object.exit.i, %bb.b
  %i.q = phi i32 [ %i.m, %lean_alloc_small_object.exit.i ], [ %.pre, %bb.b ]
  store i32 1, ptr %i.g, align 4, !tbaa !15
  %i.r = shl nuw nsw i32 %0, 24
  %i.s = and i32 %i.q, 65535
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %1, 16
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.j, align 4
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_mkProofForPath_go___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr nofree noundef readnone captures(none) %14) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_mkProofForPath_go(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %i.b = ptrtoint ptr %13 to i64
  %i.c = and i64 %i.b, 1
  %.not.i42 = icmp eq i64 %i.c, 0
  br i1 %.not.i42, label %bb.b, label %lean_dec.exit43

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %13, align 4, !tbaa !15    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %13, align 4, !tbaa !15
  br label %lean_dec.exit43

bb.d:                                             ; preds = %bb.b
  %.not.i44 = icmp eq i32 %i.d, 0
  br i1 %.not.i44, label %lean_dec.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #5
  br label %lean_dec.exit43

lean_dec.exit43:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %12, align 4, !tbaa !15    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %lean_dec.exit43
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %12, align 4, !tbaa !15
  br label %lean_dec_ref.exit68

bb.g:                                             ; preds = %lean_dec.exit43
  %.not.i67 = icmp eq i32 %i.g, 0
  br i1 %.not.i67, label %lean_dec_ref.exit68, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %12) #5
  br label %lean_dec_ref.exit68

lean_dec_ref.exit68:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %11 to i64
  %i.k = and i64 %i.j, 1
  %.not.i40 = icmp eq i64 %i.k, 0
  br i1 %.not.i40, label %bb.i, label %lean_dec.exit41

bb.i:                                             ; preds = %lean_dec_ref.exit68
  %i.l = load i32, ptr %11, align 4, !tbaa !15    ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %11, align 4, !tbaa !15
  br label %lean_dec.exit41

bb.k:                                             ; preds = %bb.i
  %.not.i45 = icmp eq i32 %i.l, 0
  br i1 %.not.i45, label %lean_dec.exit41, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #5
  br label %lean_dec.exit41

lean_dec.exit41:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit68
  %i.o = load i32, ptr %10, align 4, !tbaa !15    ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %lean_dec.exit41
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %10, align 4, !tbaa !15
  br label %lean_dec_ref.exit66

bb.n:                                             ; preds = %lean_dec.exit41
  %.not.i65 = icmp eq i32 %i.o, 0
  br i1 %.not.i65, label %lean_dec_ref.exit66, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #5
  br label %lean_dec_ref.exit66

lean_dec_ref.exit66:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %9 to i64
  %i.s = and i64 %i.r, 1
  %.not.i38 = icmp eq i64 %i.s, 0
  br i1 %.not.i38, label %bb.p, label %lean_dec.exit39

bb.p:                                             ; preds = %lean_dec_ref.exit66
  %i.t = load i32, ptr %9, align 4, !tbaa !15     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %9, align 4, !tbaa !15
  br label %lean_dec.exit39

bb.r:                                             ; preds = %bb.p
  %.not.i47 = icmp eq i32 %i.t, 0
  br i1 %.not.i47, label %lean_dec.exit39, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #5
  br label %lean_dec.exit39

lean_dec.exit39:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit66
  %i.w = load i32, ptr %8, align 4, !tbaa !15     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %lean_dec.exit39
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %8, align 4, !tbaa !15
  br label %lean_dec_ref.exit64

bb.u:                                             ; preds = %lean_dec.exit39
  %.not.i63 = icmp eq i32 %i.w, 0
  br i1 %.not.i63, label %lean_dec_ref.exit64, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #5
  br label %lean_dec_ref.exit64

lean_dec_ref.exit64:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %7 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i36 = icmp eq i64 %i.aa, 0
  br i1 %.not.i36, label %bb.w, label %lean_dec.exit37

bb.w:                                             ; preds = %lean_dec_ref.exit64
  %i.ab = load i32, ptr %7, align 4, !tbaa !15    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %7, align 4, !tbaa !15
  br label %lean_dec.exit37

bb.y:                                             ; preds = %bb.w
  %.not.i49 = icmp eq i32 %i.ab, 0
  br i1 %.not.i49, label %lean_dec.exit37, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #5
  br label %lean_dec.exit37
end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_pushToPropagate___lam__0:bb.a
  br i1 %i.ej, label %bb.bx, label %bb.by, !prof !10

bb.bx:                                            ; preds = %bb.bw
  %i.ek = add nuw i32 %.val.i.i206, 1
  store i32 %i.ek, ptr %i.h, align 4, !tbaa !15
  br label %lean_inc.exit116

bb.by:                                            ; preds = %bb.bw
  %.not.i.i207 = icmp eq i32 %.val.i.i206, 0
  br i1 %.not.i.i207, label %lean_inc.exit116, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.el = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit116

lean_inc.exit116:                                 ; preds = %bb.bz, %bb.by, %bb.bx, %lean_inc.exit118
  %i.em = ptrtoint ptr %i.f to i64
  %i.en = and i64 %i.em, 1
  %.not.i113 = icmp eq i64 %i.en, 0
  br i1 %.not.i113, label %bb.ca, label %lean_inc.exit114

bb.ca:                                            ; preds = %lean_inc.exit116
  %.val.i.i209 = load i32, ptr %i.f, align 4, !tbaa !15 ; 3 uses
  %i.eo = icmp sgt i32 %.val.i.i209, 0
  br i1 %i.eo, label %bb.cb, label %bb.cc, !prof !10

bb.cb:                                            ; preds = %bb.ca
  %i.ep = add nuw i32 %.val.i.i209, 1
  store i32 %i.ep, ptr %i.f, align 4, !tbaa !15
  br label %lean_inc.exit114

bb.cc:                                            ; preds = %bb.ca
  %.not.i.i210 = icmp eq i32 %.val.i.i209, 0
  br i1 %.not.i.i210, label %lean_inc.exit114, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eq = atomicrmw sub ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit114

lean_inc.exit114:                                 ; preds = %bb.cd, %bb.cc, %bb.cb, %lean_inc.exit116
  %i.er = ptrtoint ptr %i.d to i64
  %i.es = and i64 %i.er, 1
  %.not.i111 = icmp eq i64 %i.es, 0
  br i1 %.not.i111, label %bb.ce, label %lean_inc.exit112

bb.ce:                                            ; preds = %lean_inc.exit114
  %.val.i.i212 = load i32, ptr %i.d, align 4, !tbaa !15 ; 3 uses
  %i.et = icmp sgt i32 %.val.i.i212, 0
  br i1 %i.et, label %bb.cf, label %bb.cg, !prof !10

bb.cf:                                            ; preds = %bb.ce
  %i.eu = add nuw i32 %.val.i.i212, 1
  store i32 %i.eu, ptr %i.d, align 4, !tbaa !15
  br label %lean_inc.exit112

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i213 = icmp eq i32 %.val.i.i212, 0
  br i1 %.not.i.i213, label %lean_inc.exit112, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ev = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit112

lean_inc.exit112:                                 ; preds = %bb.ch, %bb.cg, %bb.cf, %lean_inc.exit114
  %i.ew = ptrtoint ptr %i.b to i64
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.ci, label %lean_inc.exit

bb.ci:                                            ; preds = %lean_inc.exit112
  %.val.i.i215 = load i32, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i215, 0
  br i1 %i.ey, label %bb.cj, label %bb.ck, !prof !10

bb.cj:                                            ; preds = %bb.ci
  %i.ez = add nuw i32 %.val.i.i215, 1
  store i32 %i.ez, ptr %i.b, align 4, !tbaa !15
  br label %lean_inc.exit

bb.ck:                                            ; preds = %bb.ci
  %.not.i.i216 = icmp eq i32 %.val.i.i215, 0
  br i1 %.not.i.i216, label %lean_inc.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fa = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit112, %bb.cj, %bb.ck, %bb.cl
  %i.fb = load i32, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.cm, label %bb.cn, !prof !10

bb.cm:                                            ; preds = %lean_inc.exit
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %1, align 8, !tbaa !15
  br label %lean_dec.exit

bb.cn:                                            ; preds = %lean_inc.exit
  %.not.i154 = icmp eq i32 %i.fb, 0
  br i1 %.not.i154, label %lean_dec.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.cm, %bb.cn, %bb.co, %bb.a
  %.0110 = phi ptr [ %1, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cn ], [ inttoptr (i64 1 to ptr), %bb.cm ] ; 2 uses
  tail call void @lean_inc_heartbeat() #5
  %i.fe = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 7 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.cp, label %lean_alloc_ctor.exit

bb.cp:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 1, ptr %i.fe, align 4, !tbaa !15
  store i32 16908312, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %0, ptr %i.fh, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %i.at, ptr %i.fi, align 8, !tbaa !12
  br i1 %i.au, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %lean_alloc_ctor.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %.0110, i64 176
  store ptr %i.fe, ptr %i.fj, align 8, !tbaa !12
  br label %bb.ct

bb.cr:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #5
  %i.fk = tail call noalias ptr @mi_malloc_small(i64 noundef 192) #5 ; 27 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.cs, label %lean_alloc_ctor.exit218

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit218:                          ; preds = %bb.cr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 184 ; 2 uses
  store i64 0, ptr %i.fn, align 8, !tbaa !17
  store i32 1, ptr %i.fk, align 8, !tbaa !15
  store i32 1441984, ptr %i.fm, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.b, ptr %i.fo, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr %i.d, ptr %i.fp, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store ptr %i.f, ptr %i.fq, align 8, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store ptr %i.h, ptr %i.fr, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  store ptr %i.j, ptr %i.fs, align 8, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store ptr %i.l, ptr %i.ft, align 8, !tbaa !12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  store ptr %i.n, ptr %i.fu, align 8, !tbaa !12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  store ptr %i.p, ptr %i.fv, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  store ptr %i.r, ptr %i.fw, align 8, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  store ptr %i.t, ptr %i.fx, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  store ptr %i.x, ptr %i.fy, align 8, !tbaa !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  store ptr %i.z, ptr %i.fz, align 8, !tbaa !12
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  store ptr %i.ab, ptr %i.ga, align 8, !tbaa !12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 112
  store ptr %i.ad, ptr %i.gb, align 8, !tbaa !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 120
  store ptr %i.af, ptr %i.gc, align 8, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  store ptr %i.ah, ptr %i.gd, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 136
  store ptr %i.aj, ptr %i.ge, align 8, !tbaa !12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 144
  store ptr %i.al, ptr %i.gf, align 8, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fk, i64 152
  store ptr %i.an, ptr %i.gg, align 8, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 160
  store ptr %i.ap, ptr %i.gh, align 8, !tbaa !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fk, i64 168
  store ptr %i.ar, ptr %i.gi, align 8, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 176
  store ptr %i.fe, ptr %i.gj, align 8, !tbaa !12
  store i8 %i.v, ptr %i.fn, align 8, !tbaa !19
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cq, %lean_alloc_ctor.exit218
  %.0108 = phi ptr [ %.0110, %bb.cq ], [ %i.fk, %lean_alloc_ctor.exit218 ]
  ret ptr %.0108
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_pushToPropagate_spec__0_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %4) #5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !15
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !15
  br label %lean_dec.exit28

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #5
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.j = tail call ptr @lean_st_ref_get(ptr noundef %2) #5 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 4 uses
  %.val.i.i32 = load i32, ptr %i.l, align 4, !tbaa !15 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %lean_dec.exit28
  %i.n = add nuw i32 %.val.i.i32, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !15
  br label %lean_inc_ref.exit34

bb.i:                                             ; preds = %lean_dec.exit28
  %.not.i.i33 = icmp eq i32 %.val.i.i32, 0
  br i1 %.not.i.i33, label %lean_inc_ref.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit34

lean_inc_ref.exit34:                              ; preds = %bb.j, %bb.i, %bb.h
  %i.p = load i32, ptr %i.j, align 8, !tbaa !15   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %lean_inc_ref.exit34
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !15
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_inc_ref.exit34
  %.not.i30 = icmp eq i32 %i.p, 0
  br i1 %.not.i30, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 4 uses
  %.val.i.i35 = load i32, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.w, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %lean_dec.exit
  %i.x = add nuw i32 %.val.i.i35, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !15
  br label %lean_inc_ref.exit37

bb.o:                                             ; preds = %lean_dec.exit
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_ref.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit37

lean_inc_ref.exit37:                              ; preds = %bb.n, %bb.o, %bb.p
  %.val.i.i38 = load i32, ptr %i.t, align 4, !tbaa !15 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.z, label %bb.q, label %bb.r, !prof !10

bb.q:                                             ; preds = %lean_inc_ref.exit37
  %i.aa = add nuw i32 %.val.i.i38, 1
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !15
  br label %lean_inc_ref.exit40

bb.r:                                             ; preds = %lean_inc_ref.exit37
  %.not.i.i39 = icmp eq i32 %.val.i.i38, 0
  br i1 %.not.i.i39, label %lean_inc_ref.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit40

lean_inc_ref.exit40:                              ; preds = %bb.q, %bb.r, %bb.s
  tail call void @lean_inc_heartbeat() #5
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #5 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %lean_alloc_ctor.exit

bb.t:                                             ; preds = %lean_inc_ref.exit40
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !15
  store i32 262184, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.c, ptr %i.af, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #5
  %i.aj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.u, label %lean_alloc_ctor.exit41

bb.u:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit41:                           ; preds = %lean_alloc_ctor.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !15
  store i32 50462744, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #5
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.v, label %lean_alloc_ctor.exit42

bb.v:                                             ; preds = %lean_alloc_ctor.exit41
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit42:                           ; preds = %lean_alloc_ctor.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !15
  store i32 65552, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !12
  ret ptr %i.ao
}

declare ptr @lean_st_ref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_pushToPropagate_spec__0_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_pushToPropagate_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !15     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !15
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !15     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !15
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !15     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !15     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !15
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_pushToPropagate_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.c = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_pushToPropagate_spec__0_spec__0(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %.val162 = load i32, ptr %i.c, align 8, !tbaa !15
  %i.f = icmp eq i32 %.val162, 1                  ; 2 uses
  br i1 %i.f, label %lean_dec.exit155, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i149 = icmp eq i64 %i.h, 0
  br i1 %.not.i149, label %bb.c, label %lean_inc.exit150

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !15 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !15
  br label %lean_inc.exit150

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit150, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit150

lean_inc.exit150:                                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %6 = load i32, ptr %i.c, align 8, !tbaa !15     ; 3 uses
  %i.l = icmp sgt i32 %6, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %lean_inc.exit150
  %i.m = add nsw i32 %6, -1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !15
  br label %lean_dec.exit155

bb.h:                                             ; preds = %lean_inc.exit150
  %.not.i156 = icmp eq i32 %6, 0
  br i1 %.not.i156, label %lean_dec.exit155, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #5
  br label %lean_dec.exit155

lean_dec.exit155:                                 ; preds = %bb.g, %bb.h, %bb.i, %bb.a
  %.0128 = phi ptr [ %i.c, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.n = tail call ptr @lean_st_ref_take(ptr noundef %5) #5 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 11 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !12   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 5 uses
  %.val161 = load i32, ptr %i.n, align 8, !tbaa !15
  %i.ag = icmp eq i32 %.val161, 1                 ; 2 uses
  br i1 %i.ag, label %lean_dec.exit153, label %bb.j

bb.j:                                             ; preds = %lean_dec.exit155
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i147 = icmp eq i64 %i.ai, 0
  br i1 %.not.i147, label %bb.k, label %lean_inc.exit148

bb.k:                                             ; preds = %bb.j
  %.val.i.i164 = load i32, ptr %i.af, align 4, !tbaa !15 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i164, 0
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw i32 %.val.i.i164, 1
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !15
  br label %lean_inc.exit148

bb.m:                                             ; preds = %bb.k
  %.not.i.i165 = icmp eq i32 %.val.i.i164, 0
  br i1 %.not.i.i165, label %lean_inc.exit148, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit148

lean_inc.exit148:                                 ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = and i64 %i.am, 1
  %.not.i145 = icmp eq i64 %i.an, 0
  br i1 %.not.i145, label %bb.o, label %lean_inc.exit146

bb.o:                                             ; preds = %lean_inc.exit148
  %.val.i.i167 = load i32, ptr %i.ad, align 4, !tbaa !15 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i167, 0
  br i1 %i.ao, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.ap = add nuw i32 %.val.i.i167, 1
  store i32 %i.ap, ptr %i.ad, align 4, !tbaa !15
  br label %lean_inc.exit146

bb.q:                                             ; preds = %bb.o
  %.not.i.i168 = icmp eq i32 %.val.i.i167, 0
  br i1 %.not.i.i168, label %lean_inc.exit146, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = atomicrmw sub ptr %i.ad, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit146

lean_inc.exit146:                                 ; preds = %bb.r, %bb.q, %bb.p, %lean_inc.exit148
  %i.ar = ptrtoint ptr %i.ab to i64
  %i.as = and i64 %i.ar, 1
  %.not.i143 = icmp eq i64 %i.as, 0
  br i1 %.not.i143, label %bb.s, label %lean_inc.exit144

bb.s:                                             ; preds = %lean_inc.exit146
  %.val.i.i170 = load i32, ptr %i.ab, align 4, !tbaa !15 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i170, 0
  br i1 %i.at, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.au = add nuw i32 %.val.i.i170, 1
  store i32 %i.au, ptr %i.ab, align 4, !tbaa !15
  br label %lean_inc.exit144

bb.u:                                             ; preds = %bb.s
  %.not.i.i171 = icmp eq i32 %.val.i.i170, 0
  br i1 %.not.i.i171, label %lean_inc.exit144, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit144

lean_inc.exit144:                                 ; preds = %bb.v, %bb.u, %bb.t, %lean_inc.exit146
  %i.aw = ptrtoint ptr %i.z to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i141 = icmp eq i64 %i.ax, 0
  br i1 %.not.i141, label %bb.w, label %lean_inc.exit142

bb.w:                                             ; preds = %lean_inc.exit144
  %.val.i.i173 = load i32, ptr %i.z, align 4, !tbaa !15 ; 3 uses
  %i.ay = icmp sgt i32 %.val.i.i173, 0
  br i1 %i.ay, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.az = add nuw i32 %.val.i.i173, 1
  store i32 %i.az, ptr %i.z, align 4, !tbaa !15
  br label %lean_inc.exit142

bb.y:                                             ; preds = %bb.w
  %.not.i.i174 = icmp eq i32 %.val.i.i173, 0
  br i1 %.not.i.i174, label %lean_inc.exit142, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit142

lean_inc.exit142:                                 ; preds = %bb.z, %bb.y, %bb.x, %lean_inc.exit144
  %i.bb = ptrtoint ptr %i.q to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i139 = icmp eq i64 %i.bc, 0
  br i1 %.not.i139, label %bb.aa, label %lean_inc.exit140

bb.aa:                                            ; preds = %lean_inc.exit142
  %.val.i.i176 = load i32, ptr %i.q, align 4, !tbaa !15 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i176, 0
  br i1 %i.bd, label %bb.ab, label %bb.ac, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.be = add nuw i32 %.val.i.i176, 1
  store i32 %i.be, ptr %i.q, align 4, !tbaa !15
  br label %lean_inc.exit140

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i177 = icmp eq i32 %.val.i.i176, 0
  br i1 %.not.i.i177, label %lean_inc.exit140, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit140

lean_inc.exit140:                                 ; preds = %bb.ad, %bb.ac, %bb.ab, %lean_inc.exit142
  %i.bg = ptrtoint ptr %i.x to i64
  %i.bh = and i64 %i.bg, 1
  %.not.i137 = icmp eq i64 %i.bh, 0
  br i1 %.not.i137, label %bb.ae, label %lean_inc.exit138

bb.ae:                                            ; preds = %lean_inc.exit140
  %.val.i.i179 = load i32, ptr %i.x, align 4, !tbaa !15 ; 3 uses
  %i.bi = icmp sgt i32 %.val.i.i179, 0
  br i1 %i.bi, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.bj = add nuw i32 %.val.i.i179, 1
  store i32 %i.bj, ptr %i.x, align 4, !tbaa !15
  br label %lean_inc.exit138

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i180 = icmp eq i32 %.val.i.i179, 0
  br i1 %.not.i.i180, label %lean_inc.exit138, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = atomicrmw sub ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit138

lean_inc.exit138:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %lean_inc.exit140
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i135 = icmp eq i64 %i.bm, 0
  br i1 %.not.i135, label %bb.ai, label %lean_inc.exit136

bb.ai:                                            ; preds = %lean_inc.exit138
  %.val.i.i182 = load i32, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.bn = icmp sgt i32 %.val.i.i182, 0
  br i1 %i.bn, label %bb.aj, label %bb.ak, !prof !10

bb.aj:                                            ; preds = %bb.ai
  %i.bo = add nuw i32 %.val.i.i182, 1
  store i32 %i.bo, ptr %i.v, align 4, !tbaa !15
  br label %lean_inc.exit136

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i183 = icmp eq i32 %.val.i.i182, 0
  br i1 %.not.i.i183, label %lean_inc.exit136, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bp = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit136

lean_inc.exit136:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %lean_inc.exit138
end_hunk_1
begin_hunk_2_@l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_processNewEq_go:bb.a
bb.uy:                                            ; preds = %lean_inc.exit699
  %i.zc = load i32, ptr %i.jf, align 8, !tbaa !15 ; 3 uses
  %i.zd = icmp sgt i32 %i.zc, 1
  br i1 %i.zd, label %bb.uz, label %bb.va, !prof !10

bb.uz:                                            ; preds = %bb.uy
  %i.ze = add nsw i32 %i.zc, -1
  store i32 %i.ze, ptr %i.jf, align 8, !tbaa !15
  br label %bb.vc

bb.va:                                            ; preds = %bb.uy
  %.not.i944 = icmp eq i32 %i.zc, 0
  br i1 %.not.i944, label %bb.vc, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jf) #5
  br label %bb.vc

bb.vc:                                            ; preds = %lean_inc.exit699, %bb.uz, %bb.va, %bb.vb
  tail call void @lean_inc_heartbeat() #5
  %i.zf = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.zg = icmp eq ptr %i.zf, null
  br i1 %i.zg, label %bb.vd, label %lean_alloc_ctor.exit1248

bb.vd:                                            ; preds = %bb.vc
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit1248:                         ; preds = %bb.vc
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  store i32 1, ptr %i.zf, align 4, !tbaa !15
  store i32 16842768, ptr %i.zh, align 4
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  store ptr %i.yv, ptr %i.zi, align 8, !tbaa !12
  br label %lean_dec.exit826

bb.ve:                                            ; preds = %lean_obj_tag.exit1116
  br i1 %.not.i740, label %bb.vf, label %lean_dec.exit746

bb.vf:                                            ; preds = %bb.ve
  %i.zj = load i32, ptr %i.y, align 4, !tbaa !15  ; 3 uses
  %i.zk = icmp sgt i32 %i.zj, 1
  br i1 %i.zk, label %bb.vg, label %bb.vh, !prof !10

bb.vg:                                            ; preds = %bb.vf
  %i.zl = add nsw i32 %i.zj, -1
  store i32 %i.zl, ptr %i.y, align 4, !tbaa !15
  br label %lean_dec.exit746

bb.vh:                                            ; preds = %bb.vf
  %.not.i946 = icmp eq i32 %i.zj, 0
  br i1 %.not.i946, label %lean_dec.exit746, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #5
  br label %lean_dec.exit746

lean_dec.exit746:                                 ; preds = %bb.vi, %bb.vh, %bb.vg, %bb.ve
  %i.zm = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.zn = icmp sgt i32 %i.zm, 1
  br i1 %i.zn, label %bb.vj, label %bb.vk, !prof !10

bb.vj:                                            ; preds = %lean_dec.exit746
  %i.zo = add nsw i32 %i.zm, -1
  store i32 %i.zo, ptr %2, align 4, !tbaa !15
  br label %lean_dec_ref.exit955

bb.vk:                                            ; preds = %lean_dec.exit746
  %.not.i954 = icmp eq i32 %i.zm, 0
  br i1 %.not.i954, label %lean_dec_ref.exit955, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit955

lean_dec_ref.exit955:                             ; preds = %bb.vj, %bb.vk, %bb.vl
  %i.zp = load i32, ptr %1, align 4, !tbaa !15    ; 3 uses
  %i.zq = icmp sgt i32 %i.zp, 1
  br i1 %i.zq, label %bb.vm, label %bb.vn, !prof !10

bb.vm:                                            ; preds = %lean_dec_ref.exit955
  %i.zr = add nsw i32 %i.zp, -1
  store i32 %i.zr, ptr %1, align 4, !tbaa !15
  br label %lean_dec_ref.exit953

bb.vn:                                            ; preds = %lean_dec_ref.exit955
  %.not.i952 = icmp eq i32 %i.zp, 0
  br i1 %.not.i952, label %lean_dec_ref.exit953, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit953

lean_dec_ref.exit953:                             ; preds = %bb.vm, %bb.vn, %bb.vo
  %i.zs = load i32, ptr %0, align 4, !tbaa !15    ; 3 uses
  %i.zt = icmp sgt i32 %i.zs, 1
  br i1 %i.zt, label %bb.vp, label %bb.vq, !prof !10

bb.vp:                                            ; preds = %lean_dec_ref.exit953
  %i.zu = add nsw i32 %i.zs, -1
  store i32 %i.zu, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit951

bb.vq:                                            ; preds = %lean_dec_ref.exit953
  %.not.i950 = icmp eq i32 %i.zs, 0
  br i1 %.not.i950, label %lean_dec_ref.exit951, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit951

lean_dec_ref.exit951:                             ; preds = %bb.vp, %bb.vq, %bb.vr
  %i.zv = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.ie, align 8, !tbaa !15
  %i.zx = icmp eq i32 %.val, 1
  br i1 %i.zx, label %lean_dec.exit826, label %bb.vs

bb.vs:                                            ; preds = %lean_dec_ref.exit951
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = and i64 %i.zy, 1
  %.not.i = icmp eq i64 %i.zz, 0
  br i1 %.not.i, label %bb.vt, label %lean_inc.exit

bb.vt:                                            ; preds = %bb.vs
  %.val.i.i1249 = load i32, ptr %i.zw, align 4, !tbaa !15 ; 3 uses
  %i.aaa = icmp sgt i32 %.val.i.i1249, 0
  br i1 %i.aaa, label %bb.vu, label %bb.vv, !prof !10

bb.vu:                                            ; preds = %bb.vt
  %i.aab = add nuw i32 %.val.i.i1249, 1
  store i32 %i.aab, ptr %i.zw, align 4, !tbaa !15
  br label %lean_inc.exit

bb.vv:                                            ; preds = %bb.vt
  %.not.i.i1250 = icmp eq i32 %.val.i.i1249, 0
  br i1 %.not.i.i1250, label %lean_inc.exit, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.aac = atomicrmw sub ptr %i.zw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.vw, %bb.vv, %bb.vu, %bb.vs
  br i1 %.not.i1113, label %bb.vx, label %bb.wb

bb.vx:                                            ; preds = %lean_inc.exit
  %i.aad = load i32, ptr %i.ie, align 8, !tbaa !15 ; 3 uses
  %i.aae = icmp sgt i32 %i.aad, 1
  br i1 %i.aae, label %bb.vy, label %bb.vz, !prof !10

bb.vy:                                            ; preds = %bb.vx
  %i.aaf = add nsw i32 %i.aad, -1
  store i32 %i.aaf, ptr %i.ie, align 8, !tbaa !15
  br label %bb.wb

bb.vz:                                            ; preds = %bb.vx
  %.not.i948 = icmp eq i32 %i.aad, 0
  br i1 %.not.i948, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ie) #5
  br label %bb.wb

bb.wb:                                            ; preds = %lean_inc.exit, %bb.vy, %bb.vz, %bb.wa
  tail call void @lean_inc_heartbeat() #5
  %i.aag = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.aah = icmp eq ptr %i.aag, null
  br i1 %i.aah, label %bb.wc, label %lean_alloc_ctor.exit1252

bb.wc:                                            ; preds = %bb.wb
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit1252:                         ; preds = %bb.wb
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  store i32 1, ptr %i.aag, align 4, !tbaa !15
  store i32 16842768, ptr %i.aai, align 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  store ptr %i.zw, ptr %i.aaj, align 8, !tbaa !12
  br label %lean_dec.exit826

lean_dec.exit826:                                 ; preds = %lean_dec_ref.exit1017, %bb.cx, %bb.cw, %bb.fe, %lean_alloc_ctor.exit, %bb.dq, %lean_alloc_ctor.exit1105, %bb.bs, %bb.bt, %bb.dr, %bb.cy, %lean_dec_ref.exit951, %lean_dec_ref.exit957, %lean_dec_ref.exit963, %lean_dec_ref.exit969, %lean_dec_ref.exit975, %bb.qe, %bb.qd, %bb.qc, %bb.pa, %bb.pc, %bb.pd, %bb.pe, %lean_dec_ref.exit987, %lean_dec_ref.exit993, %bb.ko, %bb.kn, %bb.km, %bb.jk, %bb.jm, %bb.jn, %bb.jo, %lean_dec_ref.exit1005, %lean_alloc_ctor.exit1248, %bb.ro, %bb.su, %bb.mc, %bb.nm, %bb.ua, %lean_alloc_ctor.exit1252, %lean_alloc_ctor.exit1109
  %.29 = phi ptr [ %i.jf, %lean_dec_ref.exit957 ], [ %i.ie, %lean_dec_ref.exit951 ], [ %i.hx, %lean_alloc_ctor.exit1109 ], [ %i.kd, %lean_dec_ref.exit963 ], [ %i.rh, %lean_dec_ref.exit969 ], [ %i.rw, %lean_dec_ref.exit975 ], [ %i.ll, %lean_dec_ref.exit993 ], [ %i.nd, %bb.ko ], [ %i.nm, %bb.jk ], [ %i.a, %lean_dec_ref.exit1005 ], [ %i.pu, %bb.mc ], [ %i.rc, %bb.nm ], [ %i.tf, %bb.qe ], [ %i.to, %bb.pa ], [ %i.kw, %lean_dec_ref.exit987 ], [ %i.vt, %bb.ro ], [ %i.wy, %bb.su ], [ %i.yd, %bb.ua ], [ %i.zf, %lean_alloc_ctor.exit1248 ], [ %i.aag, %lean_alloc_ctor.exit1252 ], [ %i.nm, %bb.jo ], [ %i.nm, %bb.jn ], [ %i.nm, %bb.jm ], [ %i.nd, %bb.km ], [ %i.nd, %bb.kn ], [ %i.to, %bb.pe ], [ %i.to, %bb.pd ], [ %i.to, %bb.pc ], [ %i.tf, %bb.qc ], [ %i.tf, %bb.qd ], [ %i.an, %lean_dec_ref.exit1017 ], [ %i.dz, %bb.cx ], [ %i.dz, %bb.cw ], [ %.0681, %bb.fe ], [ %i.gi, %lean_alloc_ctor.exit ], [ %.0697, %bb.dq ], [ %i.gz, %lean_alloc_ctor.exit1105 ], [ %.0697, %bb.bs ], [ %i.cq, %bb.bt ], [ %i.fj, %bb.dr ], [ %i.dz, %bb.cy ]
  ret ptr %.29
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_processNewEq_go___closed__10() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_processNewEq_go___closed__9_value) #5
  ret ptr %i.a
}

declare ptr @l_Lean_Meta_Grind_Order_getNodeId(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Meta_Grind_Order_mkLePreorderPrefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Meta_Grind_Order_mkOrdRingPrefix(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_processNewEq_go___closed__8() #1 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #5
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !17
  store i32 1, ptr %i.e, align 8, !tbaa !15
  store i32 65560, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_processNewEq_go___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readnone captures(none) %13) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_processNewEq_go(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %i.b = ptrtoint ptr %12 to i64
  %i.c = and i64 %i.b, 1
  %.not.i32 = icmp eq i64 %i.c, 0
  br i1 %.not.i32, label %bb.b, label %lean_dec.exit33

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %12, align 4, !tbaa !15    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %12, align 4, !tbaa !15
  br label %lean_dec.exit33

bb.d:                                             ; preds = %bb.b
  %.not.i34 = icmp eq i32 %i.d, 0
  br i1 %.not.i34, label %lean_dec.exit33, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %12) #5
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %11, align 4, !tbaa !15    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %lean_dec.exit33
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %11, align 4, !tbaa !15
  br label %lean_dec_ref.exit52

bb.g:                                             ; preds = %lean_dec.exit33
  %.not.i51 = icmp eq i32 %i.g, 0
  br i1 %.not.i51, label %lean_dec_ref.exit52, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #5
  br label %lean_dec_ref.exit52

lean_dec_ref.exit52:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %10 to i64
  %i.k = and i64 %i.j, 1
  %.not.i30 = icmp eq i64 %i.k, 0
  br i1 %.not.i30, label %bb.i, label %lean_dec.exit31

bb.i:                                             ; preds = %lean_dec_ref.exit52
  %i.l = load i32, ptr %10, align 4, !tbaa !15    ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %10, align 4, !tbaa !15
  br label %lean_dec.exit31

bb.k:                                             ; preds = %bb.i
  %.not.i35 = icmp eq i32 %i.l, 0
  br i1 %.not.i35, label %lean_dec.exit31, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #5
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit52
  %i.o = load i32, ptr %9, align 4, !tbaa !15     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %lean_dec.exit31
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %9, align 4, !tbaa !15
  br label %lean_dec_ref.exit50

bb.n:                                             ; preds = %lean_dec.exit31
  %.not.i49 = icmp eq i32 %i.o, 0
  br i1 %.not.i49, label %lean_dec_ref.exit50, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #5
  br label %lean_dec_ref.exit50

lean_dec_ref.exit50:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %8 to i64
  %i.s = and i64 %i.r, 1
  %.not.i28 = icmp eq i64 %i.s, 0
  br i1 %.not.i28, label %bb.p, label %lean_dec.exit29

bb.p:                                             ; preds = %lean_dec_ref.exit50
  %i.t = load i32, ptr %8, align 4, !tbaa !15     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %8, align 4, !tbaa !15
  br label %lean_dec.exit29

bb.r:                                             ; preds = %bb.p
  %.not.i37 = icmp eq i32 %i.t, 0
  br i1 %.not.i37, label %lean_dec.exit29, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #5
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit50
  %i.w = load i32, ptr %7, align 4, !tbaa !15     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %lean_dec.exit29
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %7, align 4, !tbaa !15
  br label %lean_dec_ref.exit48

bb.u:                                             ; preds = %lean_dec.exit29
  %.not.i47 = icmp eq i32 %i.w, 0
  br i1 %.not.i47, label %lean_dec_ref.exit48, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #5
  br label %lean_dec_ref.exit48

lean_dec_ref.exit48:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %6 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i26 = icmp eq i64 %i.aa, 0
  br i1 %.not.i26, label %bb.w, label %lean_dec.exit27

bb.w:                                             ; preds = %lean_dec_ref.exit48
  %i.ab = load i32, ptr %6, align 4, !tbaa !15    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %6, align 4, !tbaa !15
  br label %lean_dec.exit27

bb.y:                                             ; preds = %bb.w
  %.not.i39 = icmp eq i32 %i.ab, 0
  br i1 %.not.i39, label %lean_dec.exit27, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #5
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit48
  %i.ae = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.aa, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %lean_dec.exit27
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %5, align 4, !tbaa !15
  br label %lean_dec_ref.exit46

bb.ab:                                            ; preds = %lean_dec.exit27
  %.not.i45 = icmp eq i32 %i.ae, 0
end_hunk_2
begin_hunk_3_@runtime_initialize_Lean_Meta_Tactic_Grind_Order_Assert:bb.a
bb.g:                                             ; preds = %bb.e
  %.not.i42 = icmp eq i32 %i.h, 0
  br i1 %.not.i42, label %lean_dec_ref.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #5
  br label %lean_dec_ref.exit43

lean_dec_ref.exit43:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.k = tail call ptr @runtime_initialize_Init_Grind_Propagator(i8 noundef zeroext %0) #5 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val49 = load i32, ptr %i.l, align 4
  %.mask.i51 = and i32 %.val49, -16777216
  %i.m = icmp eq i32 %.mask.i51, 16777216
  br i1 %i.m, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %lean_dec_ref.exit43
  %i.n = load i32, ptr %i.k, align 4, !tbaa !15   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !15
  br label %lean_dec_ref.exit41

bb.k:                                             ; preds = %bb.i
  %.not.i40 = icmp eq i32 %i.n, 0
  br i1 %.not.i40, label %lean_dec_ref.exit41, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #5
  br label %lean_dec_ref.exit41

lean_dec_ref.exit41:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.q = tail call ptr @runtime_initialize_Init_Grind_Order(i8 noundef zeroext %0) #5 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val48 = load i32, ptr %i.r, align 4
  %.mask.i52 = and i32 %.val48, -16777216
  %i.s = icmp eq i32 %.mask.i52, 16777216
  br i1 %i.s, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %lean_dec_ref.exit41
  %i.t = load i32, ptr %i.q, align 4, !tbaa !15   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.n, label %bb.o, !prof !10

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !15
  br label %lean_dec_ref.exit39

bb.o:                                             ; preds = %bb.m
  %.not.i38 = icmp eq i32 %i.t, 0
  br i1 %.not.i38, label %lean_dec_ref.exit39, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #5
  br label %lean_dec_ref.exit39

lean_dec_ref.exit39:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.w = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_PropagatorAttr(i8 noundef zeroext %0) #5 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val47 = load i32, ptr %i.x, align 4
  %.mask.i53 = and i32 %.val47, -16777216
  %i.y = icmp eq i32 %.mask.i53, 16777216
  br i1 %i.y, label %bb.ak, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref.exit39
  %i.z = load i32, ptr %i.w, align 4, !tbaa !15   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.r, label %bb.s, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !15
  br label %lean_dec_ref.exit37

bb.s:                                             ; preds = %bb.q
  %.not.i36 = icmp eq i32 %i.z, 0
  br i1 %.not.i36, label %lean_dec_ref.exit37, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #5
  br label %lean_dec_ref.exit37

lean_dec_ref.exit37:                              ; preds = %bb.r, %bb.s, %bb.t
  %i.ac = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Order_Util(i8 noundef zeroext %0) #5 ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val46 = load i32, ptr %i.ad, align 4
  %.mask.i54 = and i32 %.val46, -16777216
  %i.ae = icmp eq i32 %.mask.i54, 16777216
  br i1 %i.ae, label %bb.ak, label %bb.u

bb.u:                                             ; preds = %lean_dec_ref.exit37
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !15 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !15
  br label %lean_dec_ref.exit35

bb.w:                                             ; preds = %bb.u
  %.not.i34 = icmp eq i32 %i.af, 0
  br i1 %.not.i34, label %lean_dec_ref.exit35, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref.exit35

lean_dec_ref.exit35:                              ; preds = %bb.v, %bb.w, %bb.x
  %i.ai = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Order_Proof(i8 noundef zeroext %0) #5 ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val45 = load i32, ptr %i.aj, align 4
  %.mask.i55 = and i32 %.val45, -16777216
  %i.ak = icmp eq i32 %.mask.i55, 16777216
  br i1 %i.ak, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %lean_dec_ref.exit35
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !15 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !15
  br label %lean_dec_ref.exit33

bb.aa:                                            ; preds = %bb.y
  %.not.i32 = icmp eq i32 %i.al, 0
  br i1 %.not.i32, label %lean_dec_ref.exit33, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #5
  br label %lean_dec_ref.exit33

lean_dec_ref.exit33:                              ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ao = tail call ptr @l_Lean_Meta_Grind_registerBuiltinDownwardPropagator(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLE___regBuiltin___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLE_declare__1___closed__3_00___x40_Lean_Meta_Tactic_Grind_Order_Assert_4281489886____hygCtx___hyg_8__value, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLE___regBuiltin___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLE_declare__1___closed__0_00___x40_Lean_Meta_Tactic_Grind_Order_Assert_4281489886____hygCtx___hyg_8__value) #5 ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val44 = load i32, ptr %i.ap, align 4
  %.mask.i56 = and i32 %.val44, -16777216
  %i.aq = icmp eq i32 %.mask.i56, 16777216
  br i1 %i.aq, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %lean_dec_ref.exit33
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !15 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ad, label %bb.ae, !prof !10

bb.ad:                                            ; preds = %bb.ac
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !15
  br label %lean_dec_ref.exit31

bb.ae:                                            ; preds = %bb.ac
  %.not.i30 = icmp eq i32 %i.ar, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.ad, %bb.ae, %bb.af
  %i.au = tail call ptr @l_Lean_Meta_Grind_registerBuiltinDownwardPropagator(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLT___regBuiltin___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLT_declare__1___closed__2_00___x40_Lean_Meta_Tactic_Grind_Order_Assert_1204040634____hygCtx___hyg_8__value, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLE___regBuiltin___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagateLE_declare__1___closed__0_00___x40_Lean_Meta_Tactic_Grind_Order_Assert_4281489886____hygCtx___hyg_8__value) #5 ; 5 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val = load i32, ptr %i.av, align 4
  %.mask.i57 = and i32 %.val, -16777216
  %i.aw = icmp eq i32 %.mask.i57, 16777216
  br i1 %i.aw, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %lean_dec_ref.exit31
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !15 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.ah, label %bb.ai, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.au, align 4, !tbaa !15
  br label %lean_dec_ref.exit

bb.ai:                                            ; preds = %bb.ag
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.ba = tail call fastcc ptr @lean_io_result_mk_ok(ptr noundef nonnull inttoptr (i64 1 to ptr))
  br label %bb.ak

bb.ak:                                            ; preds = %lean_dec_ref.exit31, %lean_dec_ref.exit33, %lean_dec_ref.exit35, %lean_dec_ref.exit37, %lean_dec_ref.exit39, %lean_dec_ref.exit41, %lean_dec_ref.exit43, %bb.d, %lean_dec_ref.exit, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ba, %lean_dec_ref.exit ], [ %i.e, %bb.d ], [ %i.k, %lean_dec_ref.exit43 ], [ %i.q, %lean_dec_ref.exit41 ], [ %i.w, %lean_dec_ref.exit39 ], [ %i.ac, %lean_dec_ref.exit37 ], [ %i.ai, %lean_dec_ref.exit35 ], [ %i.ao, %lean_dec_ref.exit33 ], [ %i.au, %lean_dec_ref.exit31 ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_io_result_mk_ok(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @lean_inc_heartbeat() #5
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !15
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !12
  ret ptr %i.a
}

declare ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Order_OrderM(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Init_Grind_Propagator(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Init_Grind_Order(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Lean_Meta_Tactic_Grind_PropagatorAttr(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Order_Util(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Order_Proof(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @meta_initialize_Lean_Meta_Tactic_Grind_Order_Assert(i8 zeroext %0) local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #5
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #5
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %lean_io_result_mk_ok.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.d, %bb.b
  %.sink6 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sink6, i64 4
  store i32 1, ptr %.sink6, align 4, !tbaa !15
  store i32 65552, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !12
  ret ptr %.sink6
}

; Function Attrs: nounwind uwtable
define ptr @initialize_Lean_Meta_Tactic_Grind_Order_Assert(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %.b61 = load i1, ptr @_G_initialized, align 1
  br i1 %.b61, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %bb.ah, %bb.ag, %bb.af, %bb.a
  tail call void @lean_inc_heartbeat() #5
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_io_result_mk_ok.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %tailrecurse._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !15
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !12
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Lean_Meta_Tactic_Grind_Order_OrderM(i8 noundef zeroext %0) #5 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val53 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val53, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !15   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !15
  br label %lean_dec_ref.exit46

bb.e:                                             ; preds = %bb.c
  %.not.i45 = icmp eq i32 %i.h, 0
  br i1 %.not.i45, label %lean_dec_ref.exit46, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #5
  br label %lean_dec_ref.exit46

lean_dec_ref.exit46:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @initialize_Init_Grind_Propagator(i8 noundef zeroext %0) #5 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val52 = load i32, ptr %i.l, align 4
  %.mask.i54 = and i32 %.val52, -16777216
  %i.m = icmp eq i32 %.mask.i54, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit46
  %i.n = load i32, ptr %i.k, align 4, !tbaa !15   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !15
  br label %lean_dec_ref.exit44

bb.i:                                             ; preds = %bb.g
  %.not.i43 = icmp eq i32 %i.n, 0
  br i1 %.not.i43, label %lean_dec_ref.exit44, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #5
  br label %lean_dec_ref.exit44

lean_dec_ref.exit44:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.q = tail call ptr @initialize_Init_Grind_Order(i8 noundef zeroext %0) #5 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val51 = load i32, ptr %i.r, align 4
  %.mask.i55 = and i32 %.val51, -16777216
  %i.s = icmp eq i32 %.mask.i55, 16777216
  br i1 %i.s, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %lean_dec_ref.exit44
  %i.t = load i32, ptr %i.q, align 4, !tbaa !15   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !15
  br label %lean_dec_ref.exit42

bb.m:                                             ; preds = %bb.k
  %.not.i41 = icmp eq i32 %i.t, 0
  br i1 %.not.i41, label %lean_dec_ref.exit42, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #5
  br label %lean_dec_ref.exit42

lean_dec_ref.exit42:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @initialize_Lean_Meta_Tactic_Grind_PropagatorAttr(i8 noundef zeroext %0) #5 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val50 = load i32, ptr %i.x, align 4
  %.mask.i56 = and i32 %.val50, -16777216
  %i.y = icmp eq i32 %.mask.i56, 16777216
  br i1 %i.y, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref.exit42
  %i.z = load i32, ptr %i.w, align 4, !tbaa !15   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !15
  br label %lean_dec_ref.exit40

bb.q:                                             ; preds = %bb.o
  %.not.i39 = icmp eq i32 %i.z, 0
  br i1 %.not.i39, label %lean_dec_ref.exit40, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #5
  br label %lean_dec_ref.exit40

lean_dec_ref.exit40:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.ac = tail call ptr @initialize_Lean_Meta_Tactic_Grind_Order_Util(i8 noundef zeroext %0) #5 ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val49 = load i32, ptr %i.ad, align 4
  %.mask.i57 = and i32 %.val49, -16777216
  %i.ae = icmp eq i32 %.mask.i57, 16777216
  br i1 %i.ae, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %lean_dec_ref.exit40
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !15 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.u, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !15
  br label %lean_dec_ref.exit38

bb.u:                                             ; preds = %bb.s
  %.not.i37 = icmp eq i32 %i.af, 0
  br i1 %.not.i37, label %lean_dec_ref.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref.exit38

lean_dec_ref.exit38:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ai = tail call ptr @initialize_Lean_Meta_Tactic_Grind_Order_Proof(i8 noundef zeroext %0) #5 ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val48 = load i32, ptr %i.aj, align 4
  %.mask.i58 = and i32 %.val48, -16777216
  %i.ak = icmp eq i32 %.mask.i58, 16777216
  br i1 %i.ak, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %lean_dec_ref.exit38
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !15 ; 3 uses
end_hunk_3
begin_hunk_4_@initialize_Lean_Meta_Tactic_Grind_Order_Assert:bb.a
  br i1 %.not.i35, label %lean_dec_ref.exit36, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #5
  br label %lean_dec_ref.exit36

lean_dec_ref.exit36:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.ao = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Order_Assert(i8 noundef zeroext %0) ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val47 = load i32, ptr %i.ap, align 4
  %.mask.i59 = and i32 %.val47, -16777216
  %i.aq = icmp eq i32 %.mask.i59, 16777216
  br i1 %i.aq, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %lean_dec_ref.exit36
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !15 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ab, label %bb.ac, !prof !10

bb.ab:                                            ; preds = %bb.aa
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !15
  br label %lean_dec_ref.exit34

bb.ac:                                            ; preds = %bb.aa
  %.not.i33 = icmp eq i32 %i.ar, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.au = tail call ptr @meta_initialize_Lean_Meta_Tactic_Grind_Order_Assert(i8 zeroext poison) ; 5 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val = load i32, ptr %i.av, align 4
  %.mask.i60 = and i32 %.val, -16777216
  %i.aw = icmp eq i32 %.mask.i60, 16777216
  br i1 %i.aw, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %lean_dec_ref.exit34
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !15 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.af, label %bb.ag, !prof !10

bb.af:                                            ; preds = %bb.ae
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.au, align 4, !tbaa !15
  br label %tailrecurse._crit_edge

bb.ag:                                            ; preds = %bb.ae
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %tailrecurse._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #5
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit34, %lean_dec_ref.exit36, %lean_dec_ref.exit38, %lean_dec_ref.exit40, %lean_dec_ref.exit42, %lean_dec_ref.exit44, %lean_dec_ref.exit46, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ao, %lean_dec_ref.exit36 ], [ %i.ai, %lean_dec_ref.exit38 ], [ %i.ac, %lean_dec_ref.exit40 ], [ %i.w, %lean_dec_ref.exit42 ], [ %i.q, %lean_dec_ref.exit44 ], [ %i.k, %lean_dec_ref.exit46 ], [ %i.e, %.lr.ph ], [ %i.au, %lean_dec_ref.exit34 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Meta_Tactic_Grind_Order_OrderM(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Init_Grind_Propagator(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Init_Grind_Order(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Lean_Meta_Tactic_Grind_PropagatorAttr(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Lean_Meta_Tactic_Grind_Order_Util(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Lean_Meta_Tactic_Grind_Order_Proof(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @lean_big_usize_to_nat(i64 noundef) local_unnamed_addr #2

declare ptr @lean_array_get_panic(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lean_nat_big_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_nat_big_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lean_nat_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #4

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @lean_nat_big_le(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lean_usize_of_big_nat(ptr noundef) local_unnamed_addr #2

declare ptr @lean_copy_expand_array_nonlinear(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @lean_nat_big_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lean_uint64_of_big_nat(ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_big_int64_to_int(i64 noundef) local_unnamed_addr #2

declare zeroext i1 @lean_int_big_le(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_neg(ptr noundef) local_unnamed_addr #2

declare void @lean_free_object(ptr noundef) local_unnamed_addr #2

declare void @lean_inc_heartbeat() local_unnamed_addr #2

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #2

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_forEachSourceOf___closed__0() #1 {
bb.a:
  %i.a = tail call ptr @l_instMonadEIO(ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  ret ptr %i.a
}

declare ptr @l_instMonadEIO(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Core_instMonadCoreM___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_Lean_Core_instMonadCoreM___lam__1___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_Lean_Meta_instMonadMetaM___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_Lean_Meta_instMonadMetaM___lam__1___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare double @lean_float_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @lean_float_of_nat(ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Name_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lean_usize_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i64 1, -9223372036854775807) i64 @_init_l_Lean_PersistentHashMap_findAux___at___00Lean_PersistentHashMap_find_x3f___at___00Lean_Meta_Grind_Order_propagateEqTrue_spec__0_spec__0___redArg___closed__0() #3 {
bb.a:
  ret i64 32
}

declare ptr @l_Lean_Meta_Grind_instInhabitedGoalM(ptr noundef) local_unnamed_addr #2

declare ptr @l_mkPanicMessageWithDecl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_stringToMessageData(ptr noundef) local_unnamed_addr #2

declare ptr @l_instHashableProd___redArg___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_UInt64_ofNat___boxed(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef ptr @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_forEachCnstrsOf___closed__2() #1 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 24) #5 ; 6 uses
  store i32 1, ptr %i.a, align 4, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l_instDecidableEqNat___boxed, ptr %i.f, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 2, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 0, ptr %i.h, align 2, !tbaa !21
  %i.i = tail call ptr @lean_alloc_object(i64 noundef 32) #5 ; 7 uses
  store i32 1, ptr %i.i, align 4, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  %i.m = or disjoint i32 %i.l, -184549376
  store i32 %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @l_instBEqOfDecidableEq___redArg___lam__0___boxed, ptr %i.n, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i16 3, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  store i16 1, ptr %i.p, align 2, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.a, ptr %i.q, align 8, !tbaa !12
  ret ptr %i.i
}

declare ptr @l_instBEqProd___redArg___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_instDecidableEqNat___boxed(ptr noundef, ptr noundef) #2

declare ptr @l_instBEqOfDecidableEq___redArg___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__9() #1 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__8_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__8, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__8, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__8_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__8) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #5
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !15
  store i32 16908312, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !tbaa !12
  ret ptr %i.e
}

declare ptr @l_Lean_Expr_const___override(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__8() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Level_ofNat(ptr noundef nonnull inttoptr (i64 1 to ptr)) #5
  ret ptr %i.a
}

declare ptr @l_Lean_Level_ofNat(ptr noundef) local_unnamed_addr #2

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"branch_weights", i32 4000000, i32 4001}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!15 = !{!14, !6, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", i32 4001, i32 4000000}
!19 = !{!5, !5, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"", !5, i64 0, !5, i64 4}
!23 = !{!22, !5, i64 0}
!24 = !{!"branch_weights", !"expected", i32 2146812770, i32 670878}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"double", !5, i64 0}
!28 = !{!27, !27, i64 0}
end_hunk_4
