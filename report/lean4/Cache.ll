Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Cache?download=true
inline.NumInlined: 5597
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumUnrolled: 60
begin_hunk_0_@l_Lake_CacheOutput_toJson:bb.a

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit46

lean_inc.exit46:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 5 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i43 = icmp eq i64 %i.k, 0
  br i1 %.not.i43, label %bb.f, label %lean_inc.exit44

bb.f:                                             ; preds = %lean_inc.exit46
  %.val.i.i51 = load i32, ptr %i.i, align 4, !tbaa !14 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i51, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i51, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !14
  br label %lean_inc.exit44

bb.h:                                             ; preds = %bb.f
  %.not.i.i52 = icmp eq i32 %.val.i.i51, 0
  br i1 %.not.i.i52, label %lean_inc.exit44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit44

lean_inc.exit44:                                  ; preds = %bb.i, %bb.h, %bb.g, %lean_inc.exit46
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 13 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not.i41 = icmp eq i64 %i.r, 0                 ; 2 uses
  br i1 %.not.i41, label %bb.j, label %lean_inc.exit42

bb.j:                                             ; preds = %lean_inc.exit44
  %.val.i.i54 = load i32, ptr %i.p, align 4, !tbaa !14 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i54, 0
  br i1 %i.s, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.t = add nuw i32 %.val.i.i54, 1
  store i32 %i.t, ptr %i.p, align 4, !tbaa !14
  br label %lean_inc.exit42

bb.l:                                             ; preds = %bb.j
  %.not.i.i55 = icmp eq i32 %.val.i.i54, 0
  br i1 %.not.i.i55, label %lean_inc.exit42, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit42

lean_inc.exit42:                                  ; preds = %bb.m, %bb.l, %bb.k, %lean_inc.exit44
  %i.v = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %lean_inc.exit42
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 8, !tbaa !14
  br label %lean_dec_ref.exit50

bb.o:                                             ; preds = %lean_inc.exit42
  %.not.i49 = icmp eq i32 %i.v, 0
  br i1 %.not.i49, label %lean_dec_ref.exit50, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit50

lean_dec_ref.exit50:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.y = load atomic i32, ptr @l_Lake_CacheOutput_toJson___closed__3_once seq_cst, align 4, !tbaa !25
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %lean_dec_ref.exit50
  %i.aa = load ptr, ptr @l_Lake_CacheOutput_toJson___closed__3, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.r:                                             ; preds = %lean_dec_ref.exit50
  %i.ab = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lake_CacheOutput_toJson___closed__3, ptr noundef nonnull @l_Lake_CacheOutput_toJson___closed__3_once, ptr noundef nonnull @_init_l_Lake_CacheOutput_toJson___closed__3) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.q, %bb.r
  %.0.i = phi ptr [ %i.aa, %bb.q ], [ %i.ab, %bb.r ]
  %i.ac = tail call ptr @l_Option_toJson___at___00Lake_CacheOutput_toJson_spec__0(ptr noundef %i.i)
  %i.ad = tail call ptr @l_Lake_JsonObject_insertJson(ptr noundef %.0.i, ptr noundef nonnull @l_Lake_CacheOutput_toJson___closed__4_value, ptr noundef %i.ac) #10 ; 5 uses
  br i1 %.not.i41, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %lean_obj_once.exit
  %i.ae = getelementptr i8, ptr %i.p, i64 4
  %.val.i = load i32, ptr %i.ae, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.af = icmp eq i32 %.mask, 16777216
  br i1 %i.af, label %bb.s, label %bb.ah

lean_obj_tag.exit.thread:                         ; preds = %lean_obj_once.exit
  %i.ag = and i64 %i.q, 8589934590
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.s, label %lean_dec.exit

bb.s:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 6 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not.i = icmp eq i64 %i.al, 0                  ; 2 uses
  br i1 %.not.i, label %bb.t, label %lean_inc.exit

bb.t:                                             ; preds = %bb.s
  %.val.i.i59 = load i32, ptr %i.aj, align 4, !tbaa !14 ; 3 uses
  %i.am = icmp sgt i32 %.val.i.i59, 0
  br i1 %i.am, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.an = add nuw i32 %.val.i.i59, 1
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !14
  br label %lean_inc.exit

bb.v:                                             ; preds = %bb.t
  %.not.i.i60 = icmp eq i32 %.val.i.i59, 0
  br i1 %.not.i.i60, label %lean_inc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ao = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %.val.i62 = load i32, ptr %i.p, align 8, !tbaa !14 ; 4 uses
  %i.ap = icmp eq i32 %.val.i62, 1
  br i1 %i.ap, label %.preheader.i, label %bb.ab

.preheader.i:                                     ; preds = %lean_inc.exit
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 4 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 1
  %.not.i.i63 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i63, label %bb.x, label %lean_dec.exit.i

bb.x:                                             ; preds = %.preheader.i
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !14 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %i.aq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.z:                                             ; preds = %bb.x
  %.not.i7.i = icmp eq i32 %i.at, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aq) #10
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.aa, %bb.z, %bb.y, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.p) #10
  br label %lean_dec_ref_known.exit

bb.ab:                                            ; preds = %lean_inc.exit
  %i.aw = icmp sgt i32 %.val.i62, 1
  br i1 %i.aw, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.ax = add nsw i32 %.val.i62, -1
  store i32 %i.ax, ptr %i.p, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i8.i = icmp eq i32 %.val.i62, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #10
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ac, %bb.ad, %bb.ae
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %lean_dec_ref_known.exit
  %i.ay = lshr i64 %i.ak, 1
  %i.az = trunc i64 %i.ay to i32
  br label %l_Lake_CacheServiceScope_isRepo.exit

bb.ag:                                            ; preds = %lean_dec_ref_known.exit
  %i.ba = getelementptr i8, ptr %i.aj, i64 4
  %.val.i.i65 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.val.i.i65, 24
  br label %l_Lake_CacheServiceScope_isRepo.exit

l_Lake_CacheServiceScope_isRepo.exit:             ; preds = %bb.af, %bb.ag
  %.0.i.i = phi i32 [ %i.az, %bb.af ], [ %i.bb, %bb.ag ]
  %.not = icmp eq i32 %.0.i.i, 1
  %l_Lake_CacheOutput_toJson___closed__5_value.l_Lake_CacheOutput_toJson___closed__6_value = select i1 %.not, ptr @l_Lake_CacheOutput_toJson___closed__6_value, ptr @l_Lake_CacheOutput_toJson___closed__5_value
  %i.bc = tail call ptr @l___private_Lake_Config_Cache_0__Lake_CacheServiceScope_toJson(ptr noundef %i.aj)
  %1 = tail call ptr @l_Lake_JsonObject_insertJson(ptr noundef %i.ad, ptr noundef nonnull %l_Lake_CacheOutput_toJson___closed__5_value.l_Lake_CacheOutput_toJson___closed__6_value, ptr noundef %i.bc) #10
  br label %lean_dec.exit

bb.ah:                                            ; preds = %lean_obj_tag.exit
  %i.bd = load i32, ptr %i.p, align 4, !tbaa !14  ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.ai, label %bb.aj, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.p, align 4, !tbaa !14
  br label %lean_dec.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i48 = icmp eq i32 %i.bd, 0
  br i1 %.not.i48, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.ai, %bb.aj, %bb.ak, %l_Lake_CacheServiceScope_isRepo.exit
  %.1 = phi ptr [ %1, %l_Lake_CacheServiceScope_isRepo.exit ], [ %i.ad, %bb.ak ], [ %i.ad, %bb.aj ], [ %i.ad, %bb.ai ], [ %i.ad, %lean_obj_tag.exit.thread ]
  %i.bg = tail call ptr @l_Lake_JsonObject_insertJson(ptr noundef %.1, ptr noundef nonnull @l_Lake_CacheOutput_toJson___closed__0_value, ptr noundef %i.b) #10
  tail call void @lean_inc_heartbeat() #10
  %i.bh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.al, label %lean_alloc_ctor.exit

bb.al:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 1, ptr %i.bh, align 4, !tbaa !14
  store i32 83951632, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !12
  ret ptr %i.bh
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lake_CacheOutput_toJson___closed__3() #0 {
bb.a:
  %i.a = tail call ptr @l_Lake_JsonObject_insertJson(ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef nonnull @l_Lake_CacheOutput_toJson___closed__1_value, ptr noundef nonnull @l_Lake_CacheOutput_toJson___closed__2_value) #10
  ret ptr %i.a
}

declare ptr @l_Lake_JsonObject_insertJson(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Option_fromJson_x3f___at___00Lake_CacheOutput_fromJson_x3f_spec__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i54 = icmp eq i64 %i.b, 0
  br i1 %.not.i54, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %lean_dec.exit49, label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = tail call ptr @l_Lean_Json_getStr_x3f(ptr noundef %0) #10 ; 12 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i55 = icmp eq i64 %i.j, 0                 ; 3 uses
  br i1 %.not.i55, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit58

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.h, i64 4
  %.val.i57 = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i57, 24
  br label %lean_obj_tag.exit58

lean_obj_tag.exit58:                              ; preds = %bb.e, %bb.f
  %.0.i56 = phi i32 [ %i.l, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i56, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 10 uses
  %.val53 = load i32, ptr %i.h, align 8, !tbaa !14
  %i.r = icmp eq i32 %.val53, 1                   ; 3 uses
  br i1 %i.o, label %bb.g, label %bb.s

bb.g:                                             ; preds = %lean_obj_tag.exit58
  br i1 %i.r, label %lean_dec.exit49, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = and i64 %i.s, 1
  %.not.i45 = icmp eq i64 %i.t, 0
  br i1 %.not.i45, label %bb.i, label %lean_inc.exit46

bb.i:                                             ; preds = %bb.h
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !14 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i, 0
  br i1 %i.u, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.v = add nuw i32 %.val.i.i, 1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  br label %lean_inc.exit46

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit46, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit46

lean_inc.exit46:                                  ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  br i1 %.not.i55, label %bb.m, label %bb.q

bb.m:                                             ; preds = %lean_inc.exit46
  %i.x = load i32, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.h, align 8, !tbaa !14
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not.i50 = icmp eq i32 %i.x, 0
  br i1 %.not.i50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #10
  br label %bb.q

bb.q:                                             ; preds = %lean_inc.exit46, %bb.n, %bb.o, %bb.p
  tail call void @lean_inc_heartbeat() #10
  %i.aa = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.r, label %lean_dec.exit49.sink.split.sink.split

bb.r:                                             ; preds = %bb.q
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

bb.s:                                             ; preds = %lean_obj_tag.exit58
  br i1 %i.r, label %lean_dec.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = ptrtoint ptr %i.q to i64
  %i.ad = and i64 %i.ac, 1
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.u, label %lean_inc.exit

bb.u:                                             ; preds = %bb.t
  %.val.i.i59 = load i32, ptr %i.q, align 4, !tbaa !14 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i59, 0
  br i1 %i.ae, label %bb.v, label %bb.w, !prof !15

bb.v:                                             ; preds = %bb.u
  %i.af = add nuw i32 %.val.i.i59, 1
  store i32 %i.af, ptr %i.q, align 4, !tbaa !14
  br label %lean_inc.exit

bb.w:                                             ; preds = %bb.u
  %.not.i.i60 = icmp eq i32 %.val.i.i59, 0
  br i1 %.not.i.i60, label %lean_inc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ag = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i55, label %bb.y, label %lean_dec.exit

bb.y:                                             ; preds = %lean_inc.exit
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !14  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !15

bb.z:                                             ; preds = %bb.y
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.h, align 8, !tbaa !14
  br label %lean_dec.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i51 = icmp eq i32 %i.ah, 0
  br i1 %.not.i51, label %lean_dec.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit, %bb.z, %bb.aa, %bb.ab, %bb.s
  %.041 = phi ptr [ %i.h, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ]
  tail call void @lean_inc_heartbeat() #10
  %i.ak = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.ac, label %lean_alloc_ctor.exit62

bb.ac:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit62:                           ; preds = %lean_dec.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 1, ptr %i.ak, align 4, !tbaa !14
  store i32 16842768, ptr %i.am, align 4
end_hunk_0
