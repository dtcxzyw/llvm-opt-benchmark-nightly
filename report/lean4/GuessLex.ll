Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/GuessLex?download=true
inline.NumInlined: 6066
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_foldrMUnsafe_fold___at___00Lean_Elab_WF_GuessLex_mkProdElem_spec__0:bb.a
  br label %lean_dec_ref_known.exit

bb.r:                                             ; preds = %lean_inc.exit
  %i.ao = icmp sgt i32 %.val.i44, 1
  br i1 %i.ao, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.ap = add nsw i32 %.val.i44, -1
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.t:                                             ; preds = %bb.r
  %.not.i8.i = icmp eq i32 %.val.i44, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #9
  br label %lean_dec_ref_known.exit

._crit_edge:                                      ; preds = %lean_dec_ref_known.exit, %bb.a
  %.035.lcssa = phi ptr [ %3, %bb.a ], [ %i.ab, %lean_dec_ref_known.exit ]
  tail call void @lean_inc_heartbeat() #9
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.v, label %lean_alloc_ctor.exit

bb.v:                                             ; preds = %._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !14
  store i32 65552, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.035.lcssa, ptr %i.at, align 8, !tbaa !12
  br label %.loopexit

lean_dec_ref_known.exit:                          ; preds = %bb.u, %bb.t, %bb.s, %lean_dec.exit.i
  %.not = icmp eq i64 %i.b, %2
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %lean_obj_tag.exit, %lean_alloc_ctor.exit
  %.2.ph = phi ptr [ %i.aq, %lean_alloc_ctor.exit ], [ %i.s, %lean_obj_tag.exit ]
  ret ptr %.2.ph
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldrMUnsafe_fold___at___00Lean_Elab_WF_GuessLex_mkProdElem_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val36 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !14
  br label %lean_dec.exit22

bb.c:                                             ; preds = %bb.a
  %.not.i23 = icmp eq i32 %i.b, 0
  br i1 %.not.i23, label %lean_dec.exit22, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !10
  %i.f = load i32, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %lean_dec.exit22
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit20

bb.f:                                             ; preds = %lean_dec.exit22
  %.not.i24 = icmp eq i32 %i.f, 0
  br i1 %.not.i24, label %lean_dec.exit20, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldrMUnsafe_fold___at___00Lean_Elab_WF_GuessLex_mkProdElem_spec__0(ptr noundef %0, i64 noundef %.val36, i64 noundef %.val, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.j = ptrtoint ptr %7 to i64
  %i.k = and i64 %i.j, 1
  %.not.i17 = icmp eq i64 %i.k, 0
  br i1 %.not.i17, label %bb.h, label %lean_dec.exit18

bb.h:                                             ; preds = %lean_dec.exit20
  %i.l = load i32, ptr %7, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %7, align 4, !tbaa !14
  br label %lean_dec.exit18

bb.j:                                             ; preds = %bb.h
  %.not.i26 = icmp eq i32 %i.l, 0
  br i1 %.not.i26, label %lean_dec.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #9
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit20
  %i.o = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %lean_dec.exit18
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit35

bb.m:                                             ; preds = %lean_dec.exit18
  %.not.i34 = icmp eq i32 %i.o, 0
  br i1 %.not.i34, label %lean_dec_ref.exit35, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #9
  br label %lean_dec_ref.exit35

lean_dec_ref.exit35:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.r = ptrtoint ptr %5 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec_ref.exit35
  %i.t = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %5, align 4, !tbaa !14
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i28 = icmp eq i32 %i.t, 0
  br i1 %.not.i28, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.r, %bb.q, %bb.p, %lean_dec_ref.exit35
  %i.w = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit33

bb.t:                                             ; preds = %lean_dec.exit
  %.not.i32 = icmp eq i32 %i.w, 0
  br i1 %.not.i32, label %lean_dec_ref.exit33, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec_ref.exit33

lean_dec_ref.exit33:                              ; preds = %bb.s, %bb.t, %bb.u
  %i.z = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.v, label %bb.w, !prof !15

bb.v:                                             ; preds = %lean_dec_ref.exit33
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit31

bb.w:                                             ; preds = %lean_dec_ref.exit33
  %.not.i30 = icmp eq i32 %i.z, 0
  br i1 %.not.i30, label %lean_dec_ref.exit31, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit31

lean_dec_ref.exit31:                              ; preds = %bb.v, %bb.w, %bb.x
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_WF_GuessLex_mkProdElem(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
lean_nat_eq.exit:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val141 = load i64, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.b = shl i64 %.val141, 1                      ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.bu, label %lean_nat_eq.exit140

lean_nat_eq.exit140:                              ; preds = %lean_nat_eq.exit
  %i.c = load ptr, ptr @l_Lean_instInhabitedExpr, align 8, !tbaa !12 ; 10 uses
  %.not176 = icmp eq i64 %i.b, 2
  br i1 %.not176, label %5, label %lean_nat_sub.exit

lean_nat_sub.exit:                                ; preds = %lean_nat_eq.exit140
  %i.d = and i64 %.val141, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  %i.f = add i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr
  %.1.i = select i1 %i.e, ptr inttoptr (i64 1 to ptr), ptr %i.g ; 2 uses
  %i.h = ptrtoint ptr %.1.i to i64
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %.val141
  br i1 %i.j, label %bb.a, label %lean_array_uget.exit.i

bb.a:                                             ; preds = %lean_nat_sub.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 8 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.b, label %lean_array_get.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !14 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.p, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !14
  br label %lean_array_get.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_array_get.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit

lean_array_uget.exit.i:                           ; preds = %lean_nat_sub.exit
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %lean_inc.exit.i

bb.f:                                             ; preds = %lean_array_uget.exit.i
  %.val.i.i.i = load i32, ptr %i.c, align 4, !tbaa !14 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.u, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %.val.i.i.i, 1
  store i32 %i.v, ptr %i.c, align 4, !tbaa !14
  br label %lean_inc.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i11.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i11.i, label %lean_inc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.i, %bb.h, %bb.g, %lean_array_uget.exit.i
  %i.x = tail call ptr @lean_array_get_panic(ptr noundef %i.c) #9
  br label %lean_array_get.exit

lean_array_get.exit:                              ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %lean_inc.exit.i
  %.1.i143 = phi ptr [ %i.x, %lean_inc.exit.i ], [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ], [ %i.m, %bb.a ] ; 4 uses
  %i.y = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %.1.i) #9 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12  ; 18 uses
  %.val.i.i = load i32, ptr %i.aa, align 4, !tbaa !14 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %lean_array_get.exit
  %i.ac = add nuw i32 %.val.i.i, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.k:                                             ; preds = %lean_array_get.exit
  %.not.i.i144 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i144, label %lean_inc_ref.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = atomicrmw sub ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 23 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ah = and i64 %i.ag, 1
  %.not.i83 = icmp eq i64 %i.ah, 0                ; 5 uses
  br i1 %.not.i83, label %bb.m, label %lean_inc.exit84

bb.m:                                             ; preds = %lean_inc_ref.exit
  %.val.i.i145 = load i32, ptr %i.af, align 4, !tbaa !14 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i145, 0
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw i32 %.val.i.i145, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !14
  br label %lean_inc.exit84

bb.o:                                             ; preds = %bb.m
  %.not.i.i146 = icmp eq i32 %.val.i.i145, 0
  br i1 %.not.i.i146, label %lean_inc.exit84, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit84

lean_inc.exit84:                                  ; preds = %bb.p, %bb.o, %bb.n, %lean_inc_ref.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12 ; 19 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 1
  %.not.i82 = icmp eq i64 %i.ao, 0                ; 2 uses
  br i1 %.not.i82, label %bb.q, label %lean_inc.exit

bb.q:                                             ; preds = %lean_inc.exit84
  %.val.i.i148 = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.ap = icmp sgt i32 %.val.i.i148, 0
  br i1 %i.ap, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.aq = add nuw i32 %.val.i.i148, 1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !14
  br label %lean_inc.exit

bb.s:                                             ; preds = %bb.q
  %.not.i.i149 = icmp eq i32 %.val.i.i148, 0
  br i1 %.not.i.i149, label %lean_inc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.t, %bb.s, %bb.r, %lean_inc.exit84
  %i.as = load i32, ptr %i.y, align 8, !tbaa !14  ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %lean_inc.exit
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %i.y, align 8, !tbaa !14
  br label %lean_dec_ref.exit124

bb.v:                                             ; preds = %lean_inc.exit
  %.not.i123 = icmp eq i32 %i.as, 0
  br i1 %.not.i123, label %lean_dec_ref.exit124, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #9
  br label %lean_dec_ref.exit124

lean_dec_ref.exit124:                             ; preds = %bb.u, %bb.v, %bb.w
  %i.av = getelementptr i8, ptr %i.aa, i64 8
  %.val = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.aw = shl i64 %.val, 1
  %i.ax = or disjoint i64 %i.aw, 1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 4 uses
  br i1 %.not.i82, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !21

lean_nat_le.exit:                                 ; preds = %lean_dec_ref.exit124
  %i.az = tail call zeroext i1 @lean_nat_big_le(ptr noundef %i.am, ptr noundef nonnull %i.ay) #9
  br i1 %i.az, label %lean_nat_lt.exit130, label %bb.x

lean_nat_le.exit.thread:                          ; preds = %lean_dec_ref.exit124
  %.not178 = icmp ugt ptr %i.am, %i.ay
  br i1 %.not178, label %lean_dec.exit97, label %.thread174

bb.x:                                             ; preds = %lean_nat_le.exit
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.am, align 4, !tbaa !14
  br label %lean_dec.exit97

bb.z:                                             ; preds = %bb.x
  %.not.i98 = icmp eq i32 %i.ba, 0
  br i1 %.not.i98, label %lean_dec.exit97, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #9
  br label %lean_dec.exit97

lean_dec.exit97:                                  ; preds = %lean_nat_le.exit.thread, %bb.aa, %bb.z, %bb.y
  br i1 %.not.i83, label %lean_nat_lt.exit, label %lean_nat_lt.exit.thread, !prof !21

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit97
  %i.bd = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.af, ptr noundef nonnull %i.ay) #9
  br i1 %i.bd, label %bb.ai, label %bb.ab

end_hunk_0
begin_hunk_1_@l_Lean_Elab_WF_GuessLex_mkProdElem:lean_nat_eq.exit
bb.ai:                                            ; preds = %lean_nat_lt.exit
  %i.bn = tail call i64 @lean_usize_of_big_nat(ptr noundef %i.af) #9 ; 3 uses
  %i.bo = load i32, ptr %i.af, align 4, !tbaa !14 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %i.af, align 4, !tbaa !14
  br label %lean_dec.exit93

bb.ak:                                            ; preds = %bb.ai
  %.not.i101 = icmp eq i32 %i.bo, 0
  br i1 %.not.i101, label %lean_dec.exit93, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #9
  br label %lean_dec.exit93

lean_dec.exit93:                                  ; preds = %lean_usize_of_nat.exit, %bb.al, %bb.ak, %bb.aj
  %i.br = phi i64 [ %i.bn, %bb.al ], [ %i.bn, %bb.ak ], [ %i.bn, %bb.aj ], [ %i.bm, %lean_usize_of_nat.exit ]
  %i.bs = and i64 %.val, 9223372036854775807
  %i.bt = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldrMUnsafe_fold___at___00Lean_Elab_WF_GuessLex_mkProdElem_spec__0(ptr noundef nonnull %i.aa, i64 noundef %i.bs, i64 noundef %i.br, ptr noundef %.1.i143, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 3 uses
  %i.bu = load i32, ptr %i.aa, align 8, !tbaa !14 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %lean_dec.exit93
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.aa, align 8, !tbaa !14
  br label %lean_dec_ref.exit120

bb.an:                                            ; preds = %lean_dec.exit93
  %.not.i119 = icmp eq i32 %i.bu, 0
  br i1 %.not.i119, label %lean_dec_ref.exit120, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #9
  br label %lean_dec_ref.exit120

.thread174:                                       ; preds = %lean_nat_le.exit.thread
  br i1 %.not.i83, label %lean_nat_lt.exit130.thread, label %.thread175, !prof !21

.thread175:                                       ; preds = %.thread174
  %i.bx = icmp ult ptr %i.af, %i.am
  br i1 %i.bx, label %lean_usize_of_nat.exit154.thread, label %lean_dec.exit89

lean_nat_lt.exit130:                              ; preds = %lean_nat_le.exit
  %i.by = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.af, ptr noundef %i.am) #9
  br i1 %i.by, label %bb.ba, label %bb.ap

lean_nat_lt.exit130.thread:                       ; preds = %.thread174
  %i.bz = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.af, ptr noundef %i.am) #9
  br i1 %i.bz, label %lean_usize_of_nat.exit154.thread, label %lean_dec.exit91.thread

bb.ap:                                            ; preds = %lean_nat_lt.exit130
  %i.ca = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %bb.aq, label %bb.ar, !prof !15

bb.aq:                                            ; preds = %bb.ap
  %i.cc = add nsw i32 %i.ca, -1
  store i32 %i.cc, ptr %i.am, align 4, !tbaa !14
  br label %lean_dec.exit91

bb.ar:                                            ; preds = %bb.ap
  %.not.i103 = icmp eq i32 %i.ca, 0
  br i1 %.not.i103, label %lean_dec.exit91, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #9
  br label %lean_dec.exit91

lean_dec.exit91:                                  ; preds = %bb.as, %bb.ar, %bb.aq
  br i1 %.not.i83, label %lean_dec.exit91.thread, label %lean_dec.exit89

lean_dec.exit91.thread:                           ; preds = %lean_nat_lt.exit130.thread, %lean_dec.exit91
  %i.cd = load i32, ptr %i.af, align 4, !tbaa !14 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.at, label %bb.au, !prof !15

bb.at:                                            ; preds = %lean_dec.exit91.thread
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.af, align 4, !tbaa !14
  br label %lean_dec.exit89

bb.au:                                            ; preds = %lean_dec.exit91.thread
  %.not.i105 = icmp eq i32 %i.cd, 0
  br i1 %.not.i105, label %lean_dec.exit89, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #9
  br label %lean_dec.exit89

lean_dec.exit89:                                  ; preds = %.thread175, %bb.av, %bb.au, %bb.at, %lean_dec.exit91
  %i.cg = load i32, ptr %i.aa, align 8, !tbaa !14 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %lean_dec.exit89
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.aa, align 8, !tbaa !14
  br label %lean_dec_ref.exit118

bb.ax:                                            ; preds = %lean_dec.exit89
  %.not.i117 = icmp eq i32 %i.cg, 0
  br i1 %.not.i117, label %lean_dec_ref.exit118, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #9
  br label %lean_dec_ref.exit118

lean_dec_ref.exit118:                             ; preds = %bb.aw, %bb.ax, %bb.ay
  tail call void @lean_inc_heartbeat() #9
  %i.cj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.az, label %lean_alloc_ctor.exit

bb.az:                                            ; preds = %lean_dec_ref.exit118
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit118
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 1, ptr %i.cj, align 4, !tbaa !14
  store i32 65552, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.1.i143, ptr %i.cm, align 8, !tbaa !12
  br label %lean_dec_ref.exit120

lean_usize_of_nat.exit154.thread:                 ; preds = %.thread175, %lean_nat_lt.exit130.thread
  %i.cn = lshr i64 %i.an, 1
  br label %lean_dec.exit87

bb.ba:                                            ; preds = %lean_nat_lt.exit130
  %i.co = tail call i64 @lean_usize_of_big_nat(ptr noundef %i.am) #9 ; 3 uses
  %i.cp = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.bb, label %bb.bc, !prof !15

bb.bb:                                            ; preds = %bb.ba
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.am, align 4, !tbaa !14
  br label %lean_dec.exit87

bb.bc:                                            ; preds = %bb.ba
  %.not.i107 = icmp eq i32 %i.cp, 0
  br i1 %.not.i107, label %lean_dec.exit87, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #9
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %lean_usize_of_nat.exit154.thread, %bb.bd, %bb.bc, %bb.bb
  %i.cs = phi i64 [ %i.cn, %lean_usize_of_nat.exit154.thread ], [ %i.co, %bb.bd ], [ %i.co, %bb.bc ], [ %i.co, %bb.bb ]
  br i1 %.not.i83, label %bb.be, label %lean_usize_of_nat.exit156

lean_usize_of_nat.exit156:                        ; preds = %lean_dec.exit87
  %i.ct = lshr i64 %i.ag, 1
  br label %lean_dec.exit

bb.be:                                            ; preds = %lean_dec.exit87
  %i.cu = tail call i64 @lean_usize_of_big_nat(ptr noundef %i.af) #9 ; 3 uses
  %i.cv = load i32, ptr %i.af, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.bf, label %bb.bg, !prof !15

bb.bf:                                            ; preds = %bb.be
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.af, align 4, !tbaa !14
  br label %lean_dec.exit

bb.bg:                                            ; preds = %bb.be
  %.not.i109 = icmp eq i32 %i.cv, 0
  br i1 %.not.i109, label %lean_dec.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_usize_of_nat.exit156, %bb.bh, %bb.bg, %bb.bf
  %i.cy = phi i64 [ %i.cu, %bb.bh ], [ %i.cu, %bb.bg ], [ %i.cu, %bb.bf ], [ %i.ct, %lean_usize_of_nat.exit156 ]
  %i.cz = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldrMUnsafe_fold___at___00Lean_Elab_WF_GuessLex_mkProdElem_spec__0(ptr noundef nonnull %i.aa, i64 noundef %i.cs, i64 noundef %i.cy, ptr noundef %.1.i143, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 3 uses
  %i.da = load i32, ptr %i.aa, align 8, !tbaa !14 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bi, label %bb.bj, !prof !15

bb.bi:                                            ; preds = %lean_dec.exit
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.aa, align 8, !tbaa !14
  br label %lean_dec_ref.exit120

bb.bj:                                            ; preds = %lean_dec.exit
  %.not.i115 = icmp eq i32 %i.da, 0
  br i1 %.not.i115, label %lean_dec_ref.exit120, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #9
  br label %lean_dec_ref.exit120

5:                                                ; preds = %lean_nat_eq.exit140
  %.not177 = icmp eq i64 %.val141, 0
  br i1 %.not177, label %lean_array_uget.exit.i158, label %bb.bl

bb.bl:                                            ; preds = %5
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 8 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, 1
  %.not.i.i.i164 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i164, label %6, label %lean_array_get.exit167

6:                                                ; preds = %bb.bl
  %.val.i.i.i.i165 = load i32, ptr %i.de, align 4, !tbaa !14 ; 3 uses
  %7 = icmp sgt i32 %.val.i.i.i.i165, 0
  br i1 %7, label %8, label %10, !prof !15

8:                                                ; preds = %6
  %9 = add nuw i32 %.val.i.i.i.i165, 1
  store i32 %9, ptr %i.de, align 4, !tbaa !14
  br label %lean_array_get.exit167

10:                                               ; preds = %6
  %.not.i.i.i.i166 = icmp eq i32 %.val.i.i.i.i165, 0
  br i1 %.not.i.i.i.i166, label %lean_array_get.exit167, label %11

11:                                               ; preds = %10
  %12 = atomicrmw sub ptr %i.de, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit167

lean_array_uget.exit.i158:                        ; preds = %5
  %13 = ptrtoint ptr %i.c to i64
  %14 = and i64 %13, 1
  %.not.i.i159 = icmp eq i64 %14, 0
  br i1 %.not.i.i159, label %bb.bm, label %lean_inc.exit.i160

bb.bm:                                            ; preds = %lean_array_uget.exit.i158
  %.val.i.i.i162 = load i32, ptr %i.c, align 4, !tbaa !14 ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i.i162, 0
  br i1 %i.dh, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.di = add nuw i32 %.val.i.i.i162, 1
  store i32 %i.di, ptr %i.c, align 4, !tbaa !14
  br label %lean_inc.exit.i160

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i11.i163 = icmp eq i32 %.val.i.i.i162, 0
  br i1 %.not.i.i11.i163, label %lean_inc.exit.i160, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dj = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i160

lean_inc.exit.i160:                               ; preds = %bb.bp, %bb.bo, %bb.bn, %lean_array_uget.exit.i158
  %15 = tail call ptr @lean_array_get_panic(ptr noundef %i.c) #9
  br label %lean_array_get.exit167

lean_array_get.exit167:                           ; preds = %bb.bl, %8, %10, %11, %lean_inc.exit.i160
  %.1.i161 = phi ptr [ %15, %lean_inc.exit.i160 ], [ %i.de, %11 ], [ %i.de, %10 ], [ %i.de, %8 ], [ %i.de, %bb.bl ]
  %i.dk = load i32, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %bb.bq, label %bb.br, !prof !15

bb.bq:                                            ; preds = %lean_array_get.exit167
  %i.dm = add nsw i32 %i.dk, -1
  store i32 %i.dm, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref.exit114

bb.br:                                            ; preds = %lean_array_get.exit167
  %.not.i113 = icmp eq i32 %i.dk, 0
  br i1 %.not.i113, label %lean_dec_ref.exit114, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit114

lean_dec_ref.exit114:                             ; preds = %bb.bq, %bb.br, %bb.bs
  tail call void @lean_inc_heartbeat() #9
  %i.dn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.bt, label %lean_alloc_ctor.exit168

bb.bt:                                            ; preds = %lean_dec_ref.exit114
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit168:                          ; preds = %lean_dec_ref.exit114
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 1, ptr %i.dn, align 4, !tbaa !14
  store i32 65552, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.1.i161, ptr %i.dq, align 8, !tbaa !12
  br label %lean_dec_ref.exit120

bb.bu:                                            ; preds = %lean_nat_eq.exit
  %i.dr = load i32, ptr %0, align 8, !tbaa !14    ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref.exit112

bb.bw:                                            ; preds = %bb.bu
  %.not.i111 = icmp eq i32 %i.dr, 0
  br i1 %.not.i111, label %lean_dec_ref.exit112, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit112

lean_dec_ref.exit112:                             ; preds = %bb.bv, %bb.bw, %bb.bx
  %i.du = load atomic i32, ptr @l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__2_once seq_cst, align 4, !tbaa !20
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %bb.by, label %bb.bz, !prof !15

bb.by:                                            ; preds = %lean_dec_ref.exit112
  %i.dw = load ptr, ptr @l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__2, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.bz:                                            ; preds = %lean_dec_ref.exit112
  %i.dx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__2, ptr noundef nonnull @l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__2_once, ptr noundef nonnull @_init_l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__2) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.by, %bb.bz
  %.0.i169 = phi ptr [ %i.dw, %bb.by ], [ %i.dx, %bb.bz ]
  tail call void @lean_inc_heartbeat() #9
  %i.dy = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ca, label %lean_alloc_ctor.exit170

bb.ca:                                            ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit170:                          ; preds = %lean_obj_once.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 1, ptr %i.dy, align 4, !tbaa !14
  store i32 65552, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.0.i169, ptr %i.eb, align 8, !tbaa !12
  br label %lean_dec_ref.exit120

lean_dec_ref.exit120:                             ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.ao, %bb.an, %bb.am, %lean_alloc_ctor.exit168, %lean_alloc_ctor.exit, %lean_dec_ref.exit122, %lean_alloc_ctor.exit170
  %.4 = phi ptr [ %i.dy, %lean_alloc_ctor.exit170 ], [ %i.dn, %lean_alloc_ctor.exit168 ], [ %i.bt, %bb.ao ], [ %i.bk, %lean_dec_ref.exit122 ], [ %i.cj, %lean_alloc_ctor.exit ], [ %i.bt, %bb.am ], [ %i.bt, %bb.an ], [ %i.cz, %bb.bi ], [ %i.cz, %bb.bj ], [ %i.cz, %bb.bk ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__2() #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Expr_const___override(ptr noundef nonnull @l_Lean_Elab_WF_GuessLex_instInhabitedBasicMeasure_default___closed__1_value, ptr noundef nonnull inttoptr (i64 1 to ptr)) #9
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_WF_GuessLex_mkProdElem___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_WF_GuessLex_mkProdElem(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Array_mapFinIdxM_map___at___00Lean_Elab_WF_GuessLex_toTerminationMeasures_spec__1___redArg___lam__0(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_WF_GuessLex_mkProdElem(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 12 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i103 = icmp eq i64 %i.c, 0                ; 2 uses
  br i1 %.not.i103, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 10 uses
  br i1 %i.h, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i89 = icmp eq i64 %i.l, 0
  br i1 %.not.i89, label %bb.e, label %lean_inc.exit90

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !14 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !14
  br label %lean_inc.exit90

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
end_hunk_1
