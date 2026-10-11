Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Folds?download=true
inline.NumInlined: 69
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_BitVec_iunfoldr___redArg___closed__0 = internal global ptr null, align 8
@l_BitVec_iunfoldr___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1

; Function Attrs: nounwind uwtable
define ptr @l_BitVec_iunfoldr___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %3 = and i64 %i.c, 1
  %.not.i46 = icmp eq i64 %3, 0
  br i1 %.not.i46, label %bb.b, label %lean_inc.exit47

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !12
  br label %lean_inc.exit47

bb.d:                                             ; preds = %bb.b
  %.not.i.i62 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i62, label %lean_inc.exit47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit47

lean_inc.exit47:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 8 uses
  %i.i = ptrtoint ptr %i.h to i64
  %4 = and i64 %i.i, 1
  %.not.i44 = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i44, label %bb.f, label %lean_inc.exit45

bb.f:                                             ; preds = %lean_inc.exit47
  %.val.i.i63 = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i63, 0
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i32 %.val.i.i63, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !12
  br label %lean_inc.exit45

bb.h:                                             ; preds = %bb.f
  %.not.i.i64 = icmp eq i32 %.val.i.i63, 0
  br i1 %.not.i.i64, label %lean_inc.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit45

lean_inc.exit45:                                  ; preds = %bb.i, %bb.h, %bb.g, %lean_inc.exit47
  %i.m = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %lean_inc.exit45
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %2, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.k:                                             ; preds = %lean_inc.exit45
  %.not.i48 = icmp eq i32 %i.m, 0
  br i1 %.not.i48, label %lean_dec_ref.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.p = ptrtoint ptr %1 to i64
  %5 = and i64 %i.p, 1
  %.not.i42 = icmp eq i64 %5, 0                   ; 2 uses
  br i1 %.not.i42, label %bb.m, label %lean_inc.exit43

bb.m:                                             ; preds = %lean_dec_ref.exit
  %.val.i.i66 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i66, 0
  br i1 %i.q, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.r = add nuw i32 %.val.i.i66, 1
  store i32 %i.r, ptr %1, align 4, !tbaa !12
  br label %lean_inc.exit43

bb.o:                                             ; preds = %bb.m
  %.not.i.i67 = icmp eq i32 %.val.i.i66, 0
  br i1 %.not.i.i67, label %lean_inc.exit43, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.s = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit43

lean_inc.exit43:                                  ; preds = %bb.p, %bb.o, %bb.n, %lean_dec_ref.exit
  %i.t = tail call ptr @lean_apply_2(ptr noundef %0, ptr noundef %1, ptr noundef %i.b) #4 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10   ; 7 uses
  %.val = load i32, ptr %i.t, align 8, !tbaa !12
  %i.y = icmp eq i32 %.val, 1                     ; 2 uses
  %.pre = ptrtoint ptr %i.x to i64                ; 2 uses
  %.pre75 = and i64 %.pre, 1                      ; 2 uses
  br i1 %i.y, label %lean_dec.exit61, label %bb.q

bb.q:                                             ; preds = %lean_inc.exit43
  %.not.i40 = icmp eq i64 %.pre75, 0
  br i1 %.not.i40, label %bb.r, label %lean_inc.exit41

bb.r:                                             ; preds = %bb.q
  %.val.i.i69 = load i32, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i69, 0
  br i1 %i.z, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.aa = add nuw i32 %.val.i.i69, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !12
  br label %lean_inc.exit41

bb.t:                                             ; preds = %bb.r
  %.not.i.i70 = icmp eq i32 %.val.i.i69, 0
  br i1 %.not.i.i70, label %lean_inc.exit41, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = atomicrmw sub ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit41

lean_inc.exit41:                                  ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %i.ac = ptrtoint ptr %i.v to i64
  %6 = and i64 %i.ac, 1
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %bb.v, label %lean_inc.exit

bb.v:                                             ; preds = %lean_inc.exit41
  %.val.i.i72 = load i32, ptr %i.v, align 4, !tbaa !12 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i72, 0
  br i1 %i.ad, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.ae = add nuw i32 %.val.i.i72, 1
  store i32 %i.ae, ptr %i.v, align 4, !tbaa !12
  br label %lean_inc.exit

bb.x:                                             ; preds = %bb.v
  %.not.i.i73 = icmp eq i32 %.val.i.i72, 0
  br i1 %.not.i.i73, label %lean_inc.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.af = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit41, %bb.w, %bb.x, %bb.y
  %i.ag = load i32, ptr %i.t, align 8, !tbaa !12  ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_inc.exit
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.t, align 8, !tbaa !12
  br label %lean_dec.exit61

bb.aa:                                            ; preds = %lean_inc.exit
  %.not.i.i59 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i59, label %lean_dec.exit61, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #4
  br label %lean_dec.exit61

lean_dec.exit61:                                  ; preds = %lean_inc.exit43, %bb.ab, %bb.aa, %bb.z
  %.039 = phi ptr [ inttoptr (i64 1 to ptr), %bb.z ], [ %i.t, %lean_inc.exit43 ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ]
  %i.aj = lshr i64 %.pre, 1
  %i.ak = trunc i64 %i.aj to i8
  %.not.i54 = icmp eq i64 %.pre75, 0
  br i1 %.not.i54, label %bb.ac, label %lean_dec.exit57

bb.ac:                                            ; preds = %lean_dec.exit61
  %i.al = load i32, ptr %i.x, align 4, !tbaa !12  ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.x, align 4, !tbaa !12
  br label %lean_dec.exit57

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i55 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i55, label %lean_dec.exit57, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #4
  br label %lean_dec.exit57

lean_dec.exit57:                                  ; preds = %bb.ad, %bb.ae, %bb.af, %lean_dec.exit61
  %i.ao = tail call ptr @l_BitVec_cons(ptr noundef %1, i8 noundef zeroext %i.ak, ptr noundef %i.h) #4
  br i1 %.not.i44, label %bb.ag, label %lean_dec.exit53

bb.ag:                                            ; preds = %lean_dec.exit57
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !12  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.h, align 4, !tbaa !12
  br label %lean_dec.exit53

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i51 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i51, label %lean_dec.exit53, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #4
  br label %lean_dec.exit53

lean_dec.exit53:                                  ; preds = %bb.ah, %bb.ai, %bb.aj, %lean_dec.exit57
  br i1 %.not.i42, label %bb.ak, label %lean_dec.exit

bb.ak:                                            ; preds = %lean_dec.exit53
  %i.as = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %bb.al, label %bb.am, !prof !13

bb.al:                                            ; preds = %bb.ak
  %i.au = add nsw i32 %i.as, -1
  store i32 %i.au, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit

bb.am:                                            ; preds = %bb.ak
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.al, %bb.am, %bb.an, %lean_dec.exit53
  br i1 %i.y, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %lean_dec.exit
  tail call void @lean_inc_heartbeat() #4
  %i.av = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.ap, label %lean_alloc_ctor.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 1, ptr %i.av, align 4, !tbaa !12
  store i32 131096, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.v, ptr %i.ay, align 8, !tbaa !10
  br label %bb.aq

bb.aq:                                            ; preds = %lean_dec.exit, %lean_alloc_ctor.exit
  %.039.sink = phi ptr [ %i.av, %lean_alloc_ctor.exit ], [ %.039, %lean_dec.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.039.sink, i64 16
  store ptr %i.ao, ptr %i.az, align 8, !tbaa !10
  ret ptr %.039.sink
}

declare ptr @lean_apply_2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_BitVec_cons(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_BitVec_iunfoldr___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 32) #4 ; 7 uses
  store i32 1, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -184549376
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @l_BitVec_iunfoldr___redArg___lam__0, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i16 3, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i16 1, ptr %i.h, align 2, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.i, align 8, !tbaa !10
  %i.j = load atomic i32, ptr @l_BitVec_iunfoldr___redArg___closed__0_once seq_cst, align 4, !tbaa !17
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @l_BitVec_iunfoldr___redArg___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_BitVec_iunfoldr___redArg___closed__0, ptr noundef nonnull @l_BitVec_iunfoldr___redArg___closed__0_once, ptr noundef nonnull @_init_l_BitVec_iunfoldr___redArg___closed__0) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  tail call void @lean_inc_heartbeat() #4
  %i.n = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1, ptr %i.n, align 4, !tbaa !12
  store i32 131096, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !10
  %i.s = tail call ptr @l_Fin_hIterate___redArg(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a) #4
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_BitVec_iunfoldr___redArg___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_BitVec_ofNat(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  ret ptr %i.a
}

declare ptr @l_Fin_hIterate___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_BitVec_iunfoldr___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_BitVec_iunfoldr___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %0 to i64
  %3 = and i64 %i.b, 1
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_BitVec_iunfoldr(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_BitVec_iunfoldr___redArg(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_BitVec_iunfoldr___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_BitVec_iunfoldr___redArg(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %0 to i64
  %4 = and i64 %i.b, 1
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Init_Data_BitVec_Folds(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !12
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !10
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.e = tail call ptr @runtime_initialize_Init_Data_BitVec_Basic(i8 noundef zeroext %0) #4 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val31 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val31, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %bb.y, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.e, align 4, !tbaa !12   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !12
  br label %lean_dec_ref.exit27

bb.g:                                             ; preds = %bb.e
  %.not.i26 = icmp eq i32 %i.h, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #4
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.k = tail call ptr @runtime_initialize_Init_Data_BitVec_Basic(i8 noundef zeroext %0) #4 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val30 = load i32, ptr %i.l, align 4
  %.mask.i32 = and i32 %.val30, -16777216
  %i.m = icmp eq i32 %.mask.i32, 16777216
  br i1 %i.m, label %bb.y, label %bb.i

bb.i:                                             ; preds = %lean_dec_ref.exit27
  %i.n = load i32, ptr %i.k, align 4, !tbaa !12   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !12
  br label %lean_dec_ref.exit25

bb.k:                                             ; preds = %bb.i
  %.not.i24 = icmp eq i32 %i.n, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #4
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.q = tail call ptr @runtime_initialize_Init_Ext(i8 noundef zeroext %0) #4 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val29 = load i32, ptr %i.r, align 4
  %.mask.i33 = and i32 %.val29, -16777216
  %i.s = icmp eq i32 %.mask.i33, 16777216
  br i1 %i.s, label %bb.y, label %bb.m

bb.m:                                             ; preds = %lean_dec_ref.exit25
  %i.t = load i32, ptr %i.q, align 4, !tbaa !12   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec_ref.exit23

bb.o:                                             ; preds = %bb.m
  %.not.i22 = icmp eq i32 %i.t, 0
  br i1 %.not.i22, label %lean_dec_ref.exit23, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #4
  br label %lean_dec_ref.exit23

lean_dec_ref.exit23:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.w = tail call ptr @runtime_initialize_Init_Data_BitVec_Lemmas(i8 noundef zeroext %0) #4 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val28 = load i32, ptr %i.x, align 4
  %.mask.i34 = and i32 %.val28, -16777216
  %i.y = icmp eq i32 %.mask.i34, 16777216
  br i1 %i.y, label %bb.y, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref.exit23
  %i.z = load i32, ptr %i.w, align 4, !tbaa !12   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.s:                                             ; preds = %bb.q
  %.not.i20 = icmp eq i32 %i.z, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #4
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.r, %bb.s, %bb.t
  %i.ac = tail call ptr @runtime_initialize_Init_Data_Fin_Iterate(i8 noundef zeroext %0) #4 ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val = load i32, ptr %i.ad, align 4
  %.mask.i35 = and i32 %.val, -16777216
  %i.ae = icmp eq i32 %.mask.i35, 16777216
  br i1 %i.ae, label %bb.y, label %bb.u

bb.u:                                             ; preds = %lean_dec_ref.exit21
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !12 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.w:                                             ; preds = %bb.u
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.v, %bb.w, %bb.x
  %i.ai = tail call fastcc ptr @lean_io_result_mk_ok()
  br label %bb.y

bb.y:                                             ; preds = %lean_dec_ref.exit21, %lean_dec_ref.exit23, %lean_dec_ref.exit25, %lean_dec_ref.exit27, %bb.d, %lean_dec_ref.exit, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ai, %lean_dec_ref.exit ], [ %i.e, %bb.d ], [ %i.k, %lean_dec_ref.exit27 ], [ %i.q, %lean_dec_ref.exit25 ], [ %i.w, %lean_dec_ref.exit23 ], [ %i.ac, %lean_dec_ref.exit21 ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noalias nonnull ptr @lean_io_result_mk_ok() unnamed_addr #2 {
bb.a:
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
end_hunk_0
