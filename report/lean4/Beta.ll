Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Beta?download=true
inline.NumInlined: 887
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l_panic___at___00Lean_Meta_Grind_getEqcLambdas_spec__1:bb.a
  %.not.i.i321 = icmp eq i32 %.val.i.i320, 0
  br i1 %.not.i.i321, label %lean_inc_ref.exit322, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ka = atomicrmw sub ptr %9, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit322

lean_inc_ref.exit322:                             ; preds = %bb.dh, %bb.di, %bb.dj
  %i.kb = ptrtoint ptr %8 to i64
  %i.kc = and i64 %i.kb, 1
  %.not.i235 = icmp eq i64 %i.kc, 0
  br i1 %.not.i235, label %bb.dk, label %lean_inc.exit236

bb.dk:                                            ; preds = %lean_inc_ref.exit322
  %.val.i.i323 = load i32, ptr %8, align 4, !tbaa !15 ; 3 uses
  %i.kd = icmp sgt i32 %.val.i.i323, 0
  br i1 %i.kd, label %bb.dl, label %bb.dm, !prof !11

bb.dl:                                            ; preds = %bb.dk
  %i.ke = add nuw i32 %.val.i.i323, 1
  store i32 %i.ke, ptr %8, align 4, !tbaa !15
  br label %lean_inc.exit236

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i324 = icmp eq i32 %.val.i.i323, 0
  br i1 %.not.i.i324, label %lean_inc.exit236, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.kf = atomicrmw sub ptr %8, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit236

lean_inc.exit236:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_inc_ref.exit322
  %.val.i.i326 = load i32, ptr %7, align 4, !tbaa !15 ; 3 uses
  %i.kg = icmp sgt i32 %.val.i.i326, 0
  br i1 %i.kg, label %bb.do, label %bb.dp, !prof !11

bb.do:                                            ; preds = %lean_inc.exit236
  %i.kh = add nuw i32 %.val.i.i326, 1
  store i32 %i.kh, ptr %7, align 4, !tbaa !15
  br label %lean_inc_ref.exit328

bb.dp:                                            ; preds = %lean_inc.exit236
  %.not.i.i327 = icmp eq i32 %.val.i.i326, 0
  br i1 %.not.i.i327, label %lean_inc_ref.exit328, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ki = atomicrmw sub ptr %7, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit328

lean_inc_ref.exit328:                             ; preds = %bb.do, %bb.dp, %bb.dq
  %i.kj = ptrtoint ptr %6 to i64
  %i.kk = and i64 %i.kj, 1
  %.not.i233 = icmp eq i64 %i.kk, 0
  br i1 %.not.i233, label %bb.dr, label %lean_inc.exit234

bb.dr:                                            ; preds = %lean_inc_ref.exit328
  %.val.i.i329 = load i32, ptr %6, align 4, !tbaa !15 ; 3 uses
  %i.kl = icmp sgt i32 %.val.i.i329, 0
  br i1 %i.kl, label %bb.ds, label %bb.dt, !prof !11

bb.ds:                                            ; preds = %bb.dr
  %i.km = add nuw i32 %.val.i.i329, 1
  store i32 %i.km, ptr %6, align 4, !tbaa !15
  br label %lean_inc.exit234

bb.dt:                                            ; preds = %bb.dr
  %.not.i.i330 = icmp eq i32 %.val.i.i329, 0
  br i1 %.not.i.i330, label %lean_inc.exit234, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kn = atomicrmw sub ptr %6, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit234

lean_inc.exit234:                                 ; preds = %bb.du, %bb.dt, %bb.ds, %lean_inc_ref.exit328
  %.val.i.i332 = load i32, ptr %5, align 4, !tbaa !15 ; 3 uses
  %i.ko = icmp sgt i32 %.val.i.i332, 0
  br i1 %i.ko, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %lean_inc.exit234
  %i.kp = add nuw i32 %.val.i.i332, 1
  store i32 %i.kp, ptr %5, align 4, !tbaa !15
  br label %lean_inc_ref.exit334

bb.dw:                                            ; preds = %lean_inc.exit234
  %.not.i.i333 = icmp eq i32 %.val.i.i332, 0
  br i1 %.not.i.i333, label %lean_inc_ref.exit334, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.kq = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit334

lean_inc_ref.exit334:                             ; preds = %bb.dv, %bb.dw, %bb.dx
  %i.kr = ptrtoint ptr %4 to i64
  %i.ks = and i64 %i.kr, 1
  %.not.i231 = icmp eq i64 %i.ks, 0
  br i1 %.not.i231, label %bb.dy, label %lean_inc.exit232

bb.dy:                                            ; preds = %lean_inc_ref.exit334
  %.val.i.i335 = load i32, ptr %4, align 4, !tbaa !15 ; 3 uses
  %i.kt = icmp sgt i32 %.val.i.i335, 0
  br i1 %i.kt, label %bb.dz, label %bb.ea, !prof !11

bb.dz:                                            ; preds = %bb.dy
  %i.ku = add nuw i32 %.val.i.i335, 1
  store i32 %i.ku, ptr %4, align 4, !tbaa !15
  br label %lean_inc.exit232

bb.ea:                                            ; preds = %bb.dy
  %.not.i.i336 = icmp eq i32 %.val.i.i335, 0
  br i1 %.not.i.i336, label %lean_inc.exit232, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kv = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit232

lean_inc.exit232:                                 ; preds = %bb.eb, %bb.ea, %bb.dz, %lean_inc_ref.exit334
  %.val.i.i338 = load i32, ptr %3, align 4, !tbaa !15 ; 3 uses
  %i.kw = icmp sgt i32 %.val.i.i338, 0
  br i1 %i.kw, label %bb.ec, label %bb.ed, !prof !11

bb.ec:                                            ; preds = %lean_inc.exit232
  %i.kx = add nuw i32 %.val.i.i338, 1
  store i32 %i.kx, ptr %3, align 4, !tbaa !15
  br label %lean_inc_ref.exit340

bb.ed:                                            ; preds = %lean_inc.exit232
  %.not.i.i339 = icmp eq i32 %.val.i.i338, 0
  br i1 %.not.i.i339, label %lean_inc_ref.exit340, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ky = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit340

lean_inc_ref.exit340:                             ; preds = %bb.ec, %bb.ed, %bb.ee
  %i.kz = ptrtoint ptr %2 to i64
  %i.la = and i64 %i.kz, 1
  %.not.i229 = icmp eq i64 %i.la, 0
  br i1 %.not.i229, label %bb.ef, label %lean_inc.exit230

bb.ef:                                            ; preds = %lean_inc_ref.exit340
  %.val.i.i341 = load i32, ptr %2, align 4, !tbaa !15 ; 3 uses
  %i.lb = icmp sgt i32 %.val.i.i341, 0
  br i1 %i.lb, label %bb.eg, label %bb.eh, !prof !11

bb.eg:                                            ; preds = %bb.ef
  %i.lc = add nuw i32 %.val.i.i341, 1
  store i32 %i.lc, ptr %2, align 4, !tbaa !15
  br label %lean_inc.exit230

bb.eh:                                            ; preds = %bb.ef
  %.not.i.i342 = icmp eq i32 %.val.i.i341, 0
  br i1 %.not.i.i342, label %lean_inc.exit230, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ld = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit230

lean_inc.exit230:                                 ; preds = %bb.ei, %bb.eh, %bb.eg, %lean_inc_ref.exit340
  %i.le = ptrtoint ptr %1 to i64
  %i.lf = and i64 %i.le, 1
  %.not.i228 = icmp eq i64 %i.lf, 0
  br i1 %.not.i228, label %bb.ej, label %lean_inc.exit

bb.ej:                                            ; preds = %lean_inc.exit230
  %.val.i.i344 = load i32, ptr %1, align 4, !tbaa !15 ; 3 uses
  %i.lg = icmp sgt i32 %.val.i.i344, 0
  br i1 %i.lg, label %bb.ek, label %bb.el, !prof !11

bb.ek:                                            ; preds = %bb.ej
  %i.lh = add nuw i32 %.val.i.i344, 1
  store i32 %i.lh, ptr %1, align 4, !tbaa !15
  br label %lean_inc.exit

bb.el:                                            ; preds = %bb.ej
  %.not.i.i345 = icmp eq i32 %.val.i.i344, 0
  br i1 %.not.i.i345, label %lean_inc.exit, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.li = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.em, %bb.el, %bb.ek, %lean_inc.exit230
  %i.lj = tail call ptr @lean_apply_11(ptr noundef %i.jn, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  ret ptr %i.lj
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_panic___at___00Lean_Meta_Grind_getEqcLambdas_spec__1___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_instMonadEIO(ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  ret ptr %i.a
}

declare ptr @l_StateRefT_x27_instMonad___redArg(ptr noundef) local_unnamed_addr #1

declare ptr @l_ReaderT_instFunctorOfMonad___redArg___lam__0(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_ReaderT_instFunctorOfMonad___redArg___lam__1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 10) %0, i32 noundef range(i32 1, 10) %1, i32 noundef range(i32 0, 18) %2) unnamed_addr #2 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 504
  %i.d = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 3 uses
  tail call void @lean_inc_heartbeat() #4
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef %i.f) #4 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #5
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

declare ptr @l_ReaderT_instApplicativeOfMonad___redArg___lam__1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_ReaderT_instApplicativeOfMonad___redArg___lam__3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_ReaderT_instApplicativeOfMonad___redArg___lam__4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_ReaderT_instMonad___redArg(ptr noundef) local_unnamed_addr #1

declare ptr @l_instInhabitedOfMonad___redArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_panic_fn_borrowed(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_apply_11(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_panic___at___00Lean_Meta_Grind_getEqcLambdas_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readnone captures(none) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_panic___at___00Lean_Meta_Grind_getEqcLambdas_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  %i.b = ptrtoint ptr %10 to i64
  %i.c = and i64 %i.b, 1
  %.not.i30 = icmp eq i64 %i.c, 0
  br i1 %.not.i30, label %bb.b, label %lean_dec.exit31

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %10, align 4, !tbaa !15    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %10, align 4, !tbaa !15
  br label %lean_dec.exit31

bb.d:                                             ; preds = %bb.b
  %.not.i32 = icmp eq i32 %i.d, 0
  br i1 %.not.i32, label %lean_dec.exit31, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #4
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %9, align 4, !tbaa !15     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit31
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %9, align 4, !tbaa !15
  br label %lean_dec_ref.exit50

bb.g:                                             ; preds = %lean_dec.exit31
  %.not.i49 = icmp eq i32 %i.g, 0
  br i1 %.not.i49, label %lean_dec_ref.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec_ref.exit50

lean_dec_ref.exit50:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %8 to i64
  %i.k = and i64 %i.j, 1
  %.not.i28 = icmp eq i64 %i.k, 0
  br i1 %.not.i28, label %bb.i, label %lean_dec.exit29

bb.i:                                             ; preds = %lean_dec_ref.exit50
  %i.l = load i32, ptr %8, align 4, !tbaa !15     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %8, align 4, !tbaa !15
  br label %lean_dec.exit29

bb.k:                                             ; preds = %bb.i
  %.not.i33 = icmp eq i32 %i.l, 0
  br i1 %.not.i33, label %lean_dec.exit29, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit50
  %i.o = load i32, ptr %7, align 4, !tbaa !15     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit29
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %7, align 4, !tbaa !15
  br label %lean_dec_ref.exit48

bb.n:                                             ; preds = %lean_dec.exit29
  %.not.i47 = icmp eq i32 %i.o, 0
  br i1 %.not.i47, label %lean_dec_ref.exit48, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec_ref.exit48

lean_dec_ref.exit48:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %6 to i64
  %i.s = and i64 %i.r, 1
  %.not.i26 = icmp eq i64 %i.s, 0
  br i1 %.not.i26, label %bb.p, label %lean_dec.exit27

bb.p:                                             ; preds = %lean_dec_ref.exit48
  %i.t = load i32, ptr %6, align 4, !tbaa !15     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %6, align 4, !tbaa !15
  br label %lean_dec.exit27

bb.r:                                             ; preds = %bb.p
  %.not.i35 = icmp eq i32 %i.t, 0
  br i1 %.not.i35, label %lean_dec.exit27, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit48
  %i.w = load i32, ptr %5, align 4, !tbaa !15     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit27
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %5, align 4, !tbaa !15
  br label %lean_dec_ref.exit46

bb.u:                                             ; preds = %lean_dec.exit27
  %.not.i45 = icmp eq i32 %i.w, 0
  br i1 %.not.i45, label %lean_dec_ref.exit46, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit46

lean_dec_ref.exit46:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %4 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i24 = icmp eq i64 %i.aa, 0
  br i1 %.not.i24, label %bb.w, label %lean_dec.exit25

bb.w:                                             ; preds = %lean_dec_ref.exit46
  %i.ab = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
end_hunk_0
begin_hunk_1_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_Meta_Grind_propagateBetaEqs_spec__2___redArg:bb.a

.thread121:                                       ; preds = %lean_nat_le.exit.thread, %bb.t, %bb.w, %bb.v, %bb.u, %bb.ab, %bb.aa, %bb.z, %bb.x
  br i1 %.not.i59, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.thread121
  %i.aw = lshr i64 %i.e, 1
  %i.ax = trunc i64 %i.aw to i32
  br label %lean_obj_tag.exit66

bb.ae:                                            ; preds = %.thread121
  %i.ay = getelementptr i8, ptr %i.d, i64 4
  %.val.i65 = load i32, ptr %i.ay, align 4
  %i.az = lshr i32 %.val.i65, 24
  br label %lean_obj_tag.exit66

lean_obj_tag.exit66:                              ; preds = %bb.ad, %bb.ae
  %.0.i64 = phi i32 [ %i.ax, %bb.ad ], [ %i.az, %bb.ae ]
  %i.ba = icmp eq i32 %.0.i64, 0
  br i1 %i.ba, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %lean_obj_tag.exit66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 8 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 1
  %.not.i50 = icmp eq i64 %i.be, 0
  br i1 %.not.i50, label %bb.ag, label %lean_inc.exit

bb.ag:                                            ; preds = %bb.af
  %.val.i.i67 = load i32, ptr %i.bc, align 4, !tbaa !15 ; 3 uses
  %i.bf = icmp sgt i32 %.val.i.i67, 0
  br i1 %i.bf, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %bb.ag
  %i.bg = add nuw i32 %.val.i.i67, 1
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !15
  br label %lean_inc.exit

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i68 = icmp eq i32 %.val.i.i67, 0
  br i1 %.not.i.i68, label %lean_inc.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bh = atomicrmw sub ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.val.i70 = load i32, ptr %i.d, align 8, !tbaa !15 ; 4 uses
  %i.bi = icmp eq i32 %.val.i70, 1
  br i1 %i.bi, label %.preheader.i72.preheader, label %bb.ao

.preheader.i72.preheader:                         ; preds = %lean_inc.exit
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i.i74 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i74, label %bb.ak, label %lean_dec.exit.i75

bb.ak:                                            ; preds = %.preheader.i72.preheader
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !15 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !15
  br label %lean_dec.exit.i75

bb.am:                                            ; preds = %bb.ak
  %.not.i7.i78 = icmp eq i32 %i.bm, 0
  br i1 %.not.i7.i78, label %lean_dec.exit.i75, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit.i75

lean_dec.exit.i75:                                ; preds = %bb.an, %bb.am, %bb.al, %.preheader.i72.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #4
  br label %bb.as

bb.ao:                                            ; preds = %lean_inc.exit
  %i.bp = icmp sgt i32 %.val.i70, 1
  br i1 %i.bp, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.bq = add nsw i32 %.val.i70, -1
  store i32 %i.bq, ptr %i.d, align 8, !tbaa !15
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %.not.i8.i71 = icmp eq i32 %.val.i70, 0
  br i1 %.not.i8.i71, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #4
  br label %bb.as

bb.as:                                            ; preds = %bb.s, %bb.r, %bb.q, %lean_dec.exit.i, %lean_dec.exit.i75, %bb.ap, %bb.aq, %bb.ar
  %.2 = phi ptr [ %.037103, %bb.q ], [ %.037103, %bb.r ], [ %.037103, %bb.s ], [ %.037103, %lean_dec.exit.i ], [ %i.bc, %lean_dec.exit.i75 ], [ %i.bc, %bb.ap ], [ %i.bc, %bb.aq ], [ %i.bc, %bb.ar ] ; 2 uses
  %i.br = add i64 %.035104, 1                     ; 2 uses
  %.not = icmp eq i64 %i.br, %2
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %lean_obj_tag.exit66, %lean_alloc_ctor.exit
  %.1.ph = phi ptr [ %i.as, %lean_alloc_ctor.exit ], [ %i.d, %lean_obj_tag.exit66 ]
  ret ptr %.1.ph
}

declare ptr @l_Lean_Meta_Grind_getGeneration___redArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_Meta_Grind_propagateBetaEqs_spec__2___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val22 = load i64, ptr %i.a, align 8, !tbaa !17
  %i.b = load i32, ptr %1, align 8, !tbaa !15     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !15
  br label %lean_dec.exit14

bb.c:                                             ; preds = %bb.a
  %.not.i15 = icmp eq i32 %i.b, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !17
  %i.f = load i32, ptr %2, align 8, !tbaa !15     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_dec.exit14
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !15
  br label %lean_dec.exit12

bb.f:                                             ; preds = %lean_dec.exit14
  %.not.i16 = icmp eq i32 %i.f, 0
  br i1 %.not.i16, label %lean_dec.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Lean_Meta_Grind_propagateBetaEqs_spec__2___redArg(ptr noundef %0, i64 noundef %.val22, i64 noundef %.val, ptr noundef %3, ptr noundef %4)
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.h, label %lean_dec.exit

bb.h:                                             ; preds = %lean_dec.exit12
  %i.l = load i32, ptr %4, align 4, !tbaa !15     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %4, align 4, !tbaa !15
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %lean_dec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit12
  %i.o = load i32, ptr %0, align 4, !tbaa !15     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit21

bb.m:                                             ; preds = %lean_dec.exit
  %.not.i20 = icmp eq i32 %i.o, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.l, %bb.m, %bb.n
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00Lean_Meta_Grind_propagateBetaEqs_spec__1_spec__1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %4) #4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !11

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
  br i1 %i.h, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !15
  br label %lean_dec.exit28

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.j = tail call ptr @lean_st_ref_get(ptr noundef %2) #4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 4 uses
  %.val.i.i32 = load i32, ptr %i.l, align 4, !tbaa !15 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !11

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
  br i1 %i.q, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_inc_ref.exit34
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !15
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_inc_ref.exit34
  %.not.i30 = icmp eq i32 %i.p, 0
  br i1 %.not.i30, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 4 uses
  %.val.i.i35 = load i32, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.w, label %bb.n, label %bb.o, !prof !11

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
  br i1 %i.z, label %bb.q, label %bb.r, !prof !11

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
  tail call void @lean_inc_heartbeat() #4
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #4 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %lean_alloc_ctor.exit

bb.t:                                             ; preds = %lean_inc_ref.exit40
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !15
  store i32 262184, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.c, ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.aj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.u, label %lean_alloc_ctor.exit41

bb.u:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit41:                           ; preds = %lean_alloc_ctor.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !15
  store i32 50462744, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.v, label %lean_alloc_ctor.exit42

bb.v:                                             ; preds = %lean_alloc_ctor.exit41
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit42:                           ; preds = %lean_alloc_ctor.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !15
  store i32 65552, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !13
  ret ptr %i.ao
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00Lean_Meta_Grind_propagateBetaEqs_spec__1_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00Lean_Meta_Grind_propagateBetaEqs_spec__1_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !15     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !15
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !15     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !15
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !15     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !15     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !15
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_addTrace___at___00Lean_Meta_Grind_propagateBetaEqs_spec__1___redArg(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_addTrace___at___00Lean_Meta_Grind_propagateBetaEqs_spec__1_spec__1(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 5 uses
  %.val162 = load i32, ptr %i.c, align 8, !tbaa !15
  %i.f = icmp eq i32 %.val162, 1                  ; 2 uses
  br i1 %i.f, label %lean_dec.exit132, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i154 = icmp eq i64 %i.h, 0
  br i1 %.not.i154, label %bb.c, label %lean_inc.exit155

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !15 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !15
  br label %lean_inc.exit155

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit155, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit155

lean_inc.exit155:                                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %6 = load i32, ptr %i.c, align 8, !tbaa !15     ; 3 uses
  %i.l = icmp sgt i32 %6, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_inc.exit155
  %i.m = add nsw i32 %6, -1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !15
  br label %lean_dec.exit132

bb.h:                                             ; preds = %lean_inc.exit155
  %.not.i156 = icmp eq i32 %6, 0
  br i1 %.not.i156, label %lean_dec.exit132, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #4
  br label %lean_dec.exit132

lean_dec.exit132:                                 ; preds = %bb.g, %bb.h, %bb.i, %bb.a
  %.0128 = phi ptr [ %i.c, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.n = tail call ptr @lean_st_ref_take(ptr noundef %5) #4 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13   ; 11 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !13   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 5 uses
  %.val161 = load i32, ptr %i.n, align 8, !tbaa !15
  %i.ag = icmp eq i32 %.val161, 1                 ; 2 uses
  br i1 %i.ag, label %lean_dec.exit130, label %bb.j

bb.j:                                             ; preds = %lean_dec.exit132
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i152 = icmp eq i64 %i.ai, 0
  br i1 %.not.i152, label %bb.k, label %lean_inc.exit153

bb.k:                                             ; preds = %bb.j
  %.val.i.i164 = load i32, ptr %i.af, align 4, !tbaa !15 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i164, 0
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ak = add nuw i32 %.val.i.i164, 1
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !15
  br label %lean_inc.exit153

bb.m:                                             ; preds = %bb.k
  %.not.i.i165 = icmp eq i32 %.val.i.i164, 0
  br i1 %.not.i.i165, label %lean_inc.exit153, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit153

lean_inc.exit153:                                 ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = and i64 %i.am, 1
  %.not.i150 = icmp eq i64 %i.an, 0
  br i1 %.not.i150, label %bb.o, label %lean_inc.exit151

bb.o:                                             ; preds = %lean_inc.exit153
  %.val.i.i167 = load i32, ptr %i.ad, align 4, !tbaa !15 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i167, 0
  br i1 %i.ao, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ap = add nuw i32 %.val.i.i167, 1
  store i32 %i.ap, ptr %i.ad, align 4, !tbaa !15
  br label %lean_inc.exit151

bb.q:                                             ; preds = %bb.o
  %.not.i.i168 = icmp eq i32 %.val.i.i167, 0
  br i1 %.not.i.i168, label %lean_inc.exit151, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = atomicrmw sub ptr %i.ad, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit151

lean_inc.exit151:                                 ; preds = %bb.r, %bb.q, %bb.p, %lean_inc.exit153
  %i.ar = ptrtoint ptr %i.ab to i64
  %i.as = and i64 %i.ar, 1
  %.not.i148 = icmp eq i64 %i.as, 0
  br i1 %.not.i148, label %bb.s, label %lean_inc.exit149

bb.s:                                             ; preds = %lean_inc.exit151
  %.val.i.i170 = load i32, ptr %i.ab, align 4, !tbaa !15 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i170, 0
  br i1 %i.at, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.au = add nuw i32 %.val.i.i170, 1
  store i32 %i.au, ptr %i.ab, align 4, !tbaa !15
  br label %lean_inc.exit149

bb.u:                                             ; preds = %bb.s
  %.not.i.i171 = icmp eq i32 %.val.i.i170, 0
  br i1 %.not.i.i171, label %lean_inc.exit149, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit149

lean_inc.exit149:                                 ; preds = %bb.v, %bb.u, %bb.t, %lean_inc.exit151
  %i.aw = ptrtoint ptr %i.z to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i146 = icmp eq i64 %i.ax, 0
  br i1 %.not.i146, label %bb.w, label %lean_inc.exit147

bb.w:                                             ; preds = %lean_inc.exit149
  %.val.i.i173 = load i32, ptr %i.z, align 4, !tbaa !15 ; 3 uses
  %i.ay = icmp sgt i32 %.val.i.i173, 0
  br i1 %i.ay, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.az = add nuw i32 %.val.i.i173, 1
  store i32 %i.az, ptr %i.z, align 4, !tbaa !15
  br label %lean_inc.exit147

bb.y:                                             ; preds = %bb.w
  %.not.i.i174 = icmp eq i32 %.val.i.i173, 0
  br i1 %.not.i.i174, label %lean_inc.exit147, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit147

lean_inc.exit147:                                 ; preds = %bb.z, %bb.y, %bb.x, %lean_inc.exit149
  %i.bb = ptrtoint ptr %i.q to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i144 = icmp eq i64 %i.bc, 0
  br i1 %.not.i144, label %bb.aa, label %lean_inc.exit145

bb.aa:                                            ; preds = %lean_inc.exit147
  %.val.i.i176 = load i32, ptr %i.q, align 4, !tbaa !15 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i176, 0
  br i1 %i.bd, label %bb.ab, label %bb.ac, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %i.be = add nuw i32 %.val.i.i176, 1
  store i32 %i.be, ptr %i.q, align 4, !tbaa !15
  br label %lean_inc.exit145

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i177 = icmp eq i32 %.val.i.i176, 0
  br i1 %.not.i.i177, label %lean_inc.exit145, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit145

lean_inc.exit145:                                 ; preds = %bb.ad, %bb.ac, %bb.ab, %lean_inc.exit147
  %i.bg = ptrtoint ptr %i.x to i64
  %i.bh = and i64 %i.bg, 1
  %.not.i142 = icmp eq i64 %i.bh, 0
  br i1 %.not.i142, label %bb.ae, label %lean_inc.exit143

bb.ae:                                            ; preds = %lean_inc.exit145
  %.val.i.i179 = load i32, ptr %i.x, align 4, !tbaa !15 ; 3 uses
  %i.bi = icmp sgt i32 %.val.i.i179, 0
  br i1 %i.bi, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.bj = add nuw i32 %.val.i.i179, 1
  store i32 %i.bj, ptr %i.x, align 4, !tbaa !15
  br label %lean_inc.exit143

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i180 = icmp eq i32 %.val.i.i179, 0
  br i1 %.not.i.i180, label %lean_inc.exit143, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bk = atomicrmw sub ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit143

lean_inc.exit143:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %lean_inc.exit145
  %i.bl = ptrtoint ptr %i.v to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i140 = icmp eq i64 %i.bm, 0
  br i1 %.not.i140, label %bb.ai, label %lean_inc.exit141

bb.ai:                                            ; preds = %lean_inc.exit143
  %.val.i.i182 = load i32, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.bn = icmp sgt i32 %.val.i.i182, 0
  br i1 %i.bn, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.bo = add nuw i32 %.val.i.i182, 1
  store i32 %i.bo, ptr %i.v, align 4, !tbaa !15
  br label %lean_inc.exit141

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i183 = icmp eq i32 %.val.i.i182, 0
  br i1 %.not.i.i183, label %lean_inc.exit141, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bp = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit141

lean_inc.exit141:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %lean_inc.exit143
end_hunk_1
begin_hunk_2_@l___private_Lean_Meta_Tactic_Grind_Beta_0__Lean_Meta_Grind_isPropagateBetaTarget___boxed:bb.a
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec_ref.exit53

lean_dec_ref.exit53:                              ; preds = %bb.k, %bb.l, %bb.m
  %i.w = ptrtoint ptr %8 to i64
  %i.x = and i64 %i.w, 1
  %.not.i29 = icmp eq i64 %i.x, 0
  br i1 %.not.i29, label %bb.n, label %lean_dec.exit30

bb.n:                                             ; preds = %lean_dec_ref.exit53
  %i.y = load i32, ptr %8, align 4, !tbaa !15     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %8, align 4, !tbaa !15
  br label %lean_dec.exit30

bb.p:                                             ; preds = %bb.n
  %.not.i34 = icmp eq i32 %i.y, 0
  br i1 %.not.i34, label %lean_dec.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec.exit30

lean_dec.exit30:                                  ; preds = %bb.q, %bb.p, %bb.o, %lean_dec_ref.exit53
  %i.ab = load i32, ptr %7, align 4, !tbaa !15    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %lean_dec.exit30
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %7, align 4, !tbaa !15
  br label %lean_dec_ref.exit51

bb.s:                                             ; preds = %lean_dec.exit30
  %.not.i50 = icmp eq i32 %i.ab, 0
  br i1 %.not.i50, label %lean_dec_ref.exit51, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec_ref.exit51

lean_dec_ref.exit51:                              ; preds = %bb.r, %bb.s, %bb.t
  %i.ae = ptrtoint ptr %6 to i64
  %i.af = and i64 %i.ae, 1
  %.not.i27 = icmp eq i64 %i.af, 0
  br i1 %.not.i27, label %bb.u, label %lean_dec.exit28

bb.u:                                             ; preds = %lean_dec_ref.exit51
  %i.ag = load i32, ptr %6, align 4, !tbaa !15    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %6, align 4, !tbaa !15
  br label %lean_dec.exit28

bb.w:                                             ; preds = %bb.u
  %.not.i36 = icmp eq i32 %i.ag, 0
  br i1 %.not.i36, label %lean_dec.exit28, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.x, %bb.w, %bb.v, %lean_dec_ref.exit51
  %i.aj = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %lean_dec.exit28
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %5, align 4, !tbaa !15
  br label %lean_dec_ref.exit49

bb.z:                                             ; preds = %lean_dec.exit28
  %.not.i48 = icmp eq i32 %i.aj, 0
  br i1 %.not.i48, label %lean_dec_ref.exit49, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit49

lean_dec_ref.exit49:                              ; preds = %bb.y, %bb.z, %bb.aa
  %i.am = ptrtoint ptr %4 to i64
  %i.an = and i64 %i.am, 1
  %.not.i25 = icmp eq i64 %i.an, 0
  br i1 %.not.i25, label %bb.ab, label %lean_dec.exit26

bb.ab:                                            ; preds = %lean_dec_ref.exit49
  %i.ao = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %4, align 4, !tbaa !15
  br label %lean_dec.exit26

bb.ad:                                            ; preds = %bb.ab
  %.not.i38 = icmp eq i32 %i.ao, 0
  br i1 %.not.i38, label %lean_dec.exit26, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_dec_ref.exit49
  %i.ar = load i32, ptr %3, align 4, !tbaa !15    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %lean_dec.exit26
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %3, align 4, !tbaa !15
  br label %lean_dec_ref.exit47

bb.ag:                                            ; preds = %lean_dec.exit26
  %.not.i46 = icmp eq i32 %i.ar, 0
  br i1 %.not.i46, label %lean_dec_ref.exit47, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit47

lean_dec_ref.exit47:                              ; preds = %bb.af, %bb.ag, %bb.ah
  %i.au = ptrtoint ptr %2 to i64
  %i.av = and i64 %i.au, 1
  %.not.i23 = icmp eq i64 %i.av, 0
  br i1 %.not.i23, label %bb.ai, label %lean_dec.exit24

bb.ai:                                            ; preds = %lean_dec_ref.exit47
  %i.aw = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit24

bb.ak:                                            ; preds = %bb.ai
  %.not.i40 = icmp eq i32 %i.aw, 0
  br i1 %.not.i40, label %lean_dec.exit24, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.al, %bb.ak, %bb.aj, %lean_dec_ref.exit47
  %i.az = ptrtoint ptr %1 to i64
  %i.ba = and i64 %i.az, 1
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %bb.am, label %lean_dec.exit

bb.am:                                            ; preds = %lean_dec.exit24
  %i.bb = load i32, ptr %1, align 4, !tbaa !15    ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %1, align 4, !tbaa !15
  br label %lean_dec.exit

bb.ao:                                            ; preds = %bb.am
  %.not.i42 = icmp eq i32 %i.bb, 0
  br i1 %.not.i42, label %lean_dec.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ap, %bb.ao, %bb.an, %lean_dec.exit24
  %i.be = load i32, ptr %0, align 4, !tbaa !15    ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %lean_dec.exit
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit45

bb.ar:                                            ; preds = %lean_dec.exit
  %.not.i44 = icmp eq i32 %i.be, 0
  br i1 %.not.i44, label %lean_dec_ref.exit45, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit45

lean_dec_ref.exit45:                              ; preds = %bb.aq, %bb.ar, %bb.as
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateBetaForNewApp_spec__0___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8, ptr nofree readnone captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11, ptr nofree readnone captures(none) %12, ptr nofree readnone captures(none) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i37 = icmp eq i64 %i.b, 0
  br i1 %.not.i37, label %bb.c, label %bb.b

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
  %i.g = icmp eq i32 %.0.i, 5
  br i1 %i.g, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %.val.i.i = load i32, ptr %i.i, align 4, !tbaa !15 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i32 %.val.i.i, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !15
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 4 uses
  %.val.i.i38 = load i32, ptr %i.n, align 4, !tbaa !15 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.o, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %lean_inc_ref.exit
  %i.p = add nuw i32 %.val.i.i38, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !15
  br label %lean_inc_ref.exit40

bb.i:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i39 = icmp eq i32 %.val.i.i38, 0
  br i1 %.not.i.i39, label %lean_inc_ref.exit40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit40

lean_inc_ref.exit40:                              ; preds = %bb.h, %bb.i, %bb.j
  %.val.i41 = load i32, ptr %0, align 8, !tbaa !15 ; 4 uses
  %i.r = icmp eq i32 %.val.i41, 1
  br i1 %i.r, label %.preheader.i.preheader, label %bb.s

.preheader.i.preheader:                           ; preds = %lean_inc_ref.exit40
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 1
  %.not.i.i42 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i42, label %bb.k, label %lean_dec.exit.i

bb.k:                                             ; preds = %.preheader.i.preheader
  %i.v = load i32, ptr %i.s, align 4, !tbaa !15   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.s, align 4, !tbaa !15
  br label %lean_dec.exit.i

bb.m:                                             ; preds = %bb.k
  %.not.i7.i = icmp eq i32 %i.v, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %.preheader.i.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i.i42.1 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i42.1, label %bb.o, label %lean_dec.exit.i.1

bb.o:                                             ; preds = %lean_dec.exit.i
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !15  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.r, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %.not.i7.i.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #4
  br label %lean_dec.exit.i.1

bb.r:                                             ; preds = %bb.o
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !15
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.r, %bb.q, %bb.p, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #4
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %lean_inc_ref.exit40
  %i.af = icmp sgt i32 %.val.i41, 1
  br i1 %i.af, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.ag = add nsw i32 %.val.i41, -1
  store i32 %i.ag, ptr %0, align 8, !tbaa !15
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i8.i = icmp eq i32 %.val.i41, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.t, %bb.u, %bb.v
  %i.ah = tail call ptr @lean_array_push(ptr noundef %1, ptr noundef nonnull %i.n) #4
  tail call void @lean_inc_heartbeat() #4
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.w, label %lean_alloc_ctor.exit

bb.w:                                             ; preds = %lean_dec_ref_known.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref_known.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !15
  store i32 131096, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.i, ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.an = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.x, label %lean_alloc_ctor.exit43

bb.x:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit43:                           ; preds = %lean_alloc_ctor.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %i.an, align 4, !tbaa !15
  store i32 131096, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %2, ptr %i.aq, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ai, ptr %i.ar, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.as = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.y, label %lean_alloc_ctor.exit44

bb.y:                                             ; preds = %lean_alloc_ctor.exit43
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit44:                           ; preds = %lean_alloc_ctor.exit43
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 1, ptr %i.as, align 4, !tbaa !15
  store i32 16842768, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.an, ptr %i.av, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.aw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.z, label %lean_alloc_ctor.exit45

bb.z:                                             ; preds = %lean_alloc_ctor.exit44
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.aa:                                            ; preds = %lean_obj_tag.exit
  %i.ay = ptrtoint ptr %2 to i64
  %i.az = and i64 %i.ay, 1
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %bb.ab, label %lean_dec.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ba = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i36 = icmp eq i32 %i.ba, 0
  br i1 %.not.i36, label %lean_dec.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  tail call void @lean_inc_heartbeat() #4
  %i.bd = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.af, label %lean_alloc_ctor.exit46

bb.af:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit46:                           ; preds = %lean_dec.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 1, ptr %i.bd, align 4, !tbaa !15
  store i32 131096, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %0, ptr %i.bg, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %1, ptr %i.bh, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.bi = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.ag, label %lean_alloc_ctor.exit47

bb.ag:                                            ; preds = %lean_alloc_ctor.exit46
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit47:                           ; preds = %lean_alloc_ctor.exit46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 1, ptr %i.bi, align 4, !tbaa !15
  store i32 131096, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_Grind_propagateBetaEqs_spec__3___closed__9_value, ptr %i.bl, align 8, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bd, ptr %i.bm, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.bn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ah, label %lean_alloc_ctor.exit48

bb.ah:                                            ; preds = %lean_alloc_ctor.exit47
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit48:                           ; preds = %lean_alloc_ctor.exit47
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 1, ptr %i.bn, align 4, !tbaa !15
  store i32 65552, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bi, ptr %i.bq, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #4
  %i.br = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ai, label %lean_alloc_ctor.exit45

bb.ai:                                            ; preds = %lean_alloc_ctor.exit48
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit45:                           ; preds = %lean_alloc_ctor.exit48, %lean_alloc_ctor.exit44
  %.sink67 = phi ptr [ %i.aw, %lean_alloc_ctor.exit44 ], [ %i.br, %lean_alloc_ctor.exit48 ] ; 4 uses
  %.sink = phi ptr [ %i.as, %lean_alloc_ctor.exit44 ], [ %i.bn, %lean_alloc_ctor.exit48 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink67, i64 4
  store i32 1, ptr %.sink67, align 4, !tbaa !15
  store i32 65552, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink67, i64 8
  store ptr %.sink, ptr %i.bu, align 8, !tbaa !13
  ret ptr %.sink67
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateBetaForNewApp_spec__0___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr nofree noundef readnone captures(none) %14) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateBetaForNewApp_spec__0___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison)
  %i.b = ptrtoint ptr %13 to i64
  %i.c = and i64 %i.b, 1
  %.not.i33 = icmp eq i64 %i.c, 0
  br i1 %.not.i33, label %bb.b, label %lean_dec.exit34

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %13, align 4, !tbaa !15    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %13, align 4, !tbaa !15
  br label %lean_dec.exit34

bb.d:                                             ; preds = %bb.b
  %.not.i35 = icmp eq i32 %i.d, 0
  br i1 %.not.i35, label %lean_dec.exit34, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #4
  br label %lean_dec.exit34

lean_dec.exit34:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %12, align 4, !tbaa !15    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit34
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %12, align 4, !tbaa !15
  br label %lean_dec_ref.exit53

bb.g:                                             ; preds = %lean_dec.exit34
  %.not.i52 = icmp eq i32 %i.g, 0
  br i1 %.not.i52, label %lean_dec_ref.exit53, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %12) #4
  br label %lean_dec_ref.exit53

lean_dec_ref.exit53:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %11 to i64
  %i.k = and i64 %i.j, 1
  %.not.i31 = icmp eq i64 %i.k, 0
  br i1 %.not.i31, label %bb.i, label %lean_dec.exit32

bb.i:                                             ; preds = %lean_dec_ref.exit53
  %i.l = load i32, ptr %11, align 4, !tbaa !15    ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %11, align 4, !tbaa !15
  br label %lean_dec.exit32

bb.k:                                             ; preds = %bb.i
  %.not.i36 = icmp eq i32 %i.l, 0
  br i1 %.not.i36, label %lean_dec.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #4
  br label %lean_dec.exit32

lean_dec.exit32:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit53
  %i.o = load i32, ptr %10, align 4, !tbaa !15    ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit32
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %10, align 4, !tbaa !15
  br label %lean_dec_ref.exit51

bb.n:                                             ; preds = %lean_dec.exit32
  %.not.i50 = icmp eq i32 %i.o, 0
  br i1 %.not.i50, label %lean_dec_ref.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #4
  br label %lean_dec_ref.exit51

lean_dec_ref.exit51:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %9 to i64
  %i.s = and i64 %i.r, 1
  %.not.i29 = icmp eq i64 %i.s, 0
  br i1 %.not.i29, label %bb.p, label %lean_dec.exit30

bb.p:                                             ; preds = %lean_dec_ref.exit51
  %i.t = load i32, ptr %9, align 4, !tbaa !15     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %9, align 4, !tbaa !15
  br label %lean_dec.exit30

bb.r:                                             ; preds = %bb.p
  %.not.i38 = icmp eq i32 %i.t, 0
  br i1 %.not.i38, label %lean_dec.exit30, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec.exit30

lean_dec.exit30:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit51
  %i.w = load i32, ptr %8, align 4, !tbaa !15     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit30
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %8, align 4, !tbaa !15
  br label %lean_dec_ref.exit49

bb.u:                                             ; preds = %lean_dec.exit30
  %.not.i48 = icmp eq i32 %i.w, 0
  br i1 %.not.i48, label %lean_dec_ref.exit49, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec_ref.exit49

lean_dec_ref.exit49:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %7 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i27 = icmp eq i64 %i.aa, 0
  br i1 %.not.i27, label %bb.w, label %lean_dec.exit28

bb.w:                                             ; preds = %lean_dec_ref.exit49
  %i.ab = load i32, ptr %7, align 4, !tbaa !15    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %7, align 4, !tbaa !15
  br label %lean_dec.exit28

bb.y:                                             ; preds = %bb.w
  %.not.i40 = icmp eq i32 %i.ab, 0
  br i1 %.not.i40, label %lean_dec.exit28, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit49
  %i.ae = load i32, ptr %6, align 4, !tbaa !15    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %lean_dec.exit28
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %6, align 4, !tbaa !15
  br label %lean_dec_ref.exit47

bb.ab:                                            ; preds = %lean_dec.exit28
  %.not.i46 = icmp eq i32 %i.ae, 0
  br i1 %.not.i46, label %lean_dec_ref.exit47, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec_ref.exit47

lean_dec_ref.exit47:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ah = ptrtoint ptr %5 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i25 = icmp eq i64 %i.ai, 0
  br i1 %.not.i25, label %bb.ad, label %lean_dec.exit26

bb.ad:                                            ; preds = %lean_dec_ref.exit47
  %i.aj = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit26

bb.af:                                            ; preds = %bb.ad
  %.not.i42 = icmp eq i32 %i.aj, 0
  br i1 %.not.i42, label %lean_dec.exit26, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec_ref.exit47
  %i.am = ptrtoint ptr %4 to i64
  %i.an = and i64 %i.am, 1
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.ah, label %lean_dec.exit

bb.ah:                                            ; preds = %lean_dec.exit26
end_hunk_2
begin_hunk_3_@l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateBetaForNewApp_spec__0___boxed:bb.a
bb.p:                                             ; preds = %lean_dec_ref.exit49
  %i.t = load i32, ptr %7, align 4, !tbaa !15     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %7, align 4, !tbaa !15
  br label %lean_dec.exit28

bb.r:                                             ; preds = %bb.p
  %.not.i36 = icmp eq i32 %i.t, 0
  br i1 %.not.i36, label %lean_dec.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit49
  %i.w = load i32, ptr %6, align 4, !tbaa !15     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit28
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %6, align 4, !tbaa !15
  br label %lean_dec_ref.exit47

bb.u:                                             ; preds = %lean_dec.exit28
  %.not.i46 = icmp eq i32 %i.w, 0
  br i1 %.not.i46, label %lean_dec_ref.exit47, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec_ref.exit47

lean_dec_ref.exit47:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.z = ptrtoint ptr %5 to i64
  %i.aa = and i64 %i.z, 1
  %.not.i25 = icmp eq i64 %i.aa, 0
  br i1 %.not.i25, label %bb.w, label %lean_dec.exit26

bb.w:                                             ; preds = %lean_dec_ref.exit47
  %i.ab = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit26

bb.y:                                             ; preds = %bb.w
  %.not.i38 = icmp eq i32 %i.ab, 0
  br i1 %.not.i38, label %lean_dec.exit26, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit47
  %i.ae = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %lean_dec.exit26
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %4, align 4, !tbaa !15
  br label %lean_dec_ref.exit45

bb.ab:                                            ; preds = %lean_dec.exit26
  %.not.i44 = icmp eq i32 %i.ae, 0
  br i1 %.not.i44, label %lean_dec_ref.exit45, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit45

lean_dec_ref.exit45:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i23 = icmp eq i64 %i.ai, 0
  br i1 %.not.i23, label %bb.ad, label %lean_dec.exit24

bb.ad:                                            ; preds = %lean_dec_ref.exit45
  %i.aj = load i32, ptr %3, align 4, !tbaa !15    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %3, align 4, !tbaa !15
  br label %lean_dec.exit24

bb.af:                                            ; preds = %bb.ad
  %.not.i40 = icmp eq i32 %i.aj, 0
  br i1 %.not.i40, label %lean_dec.exit24, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec_ref.exit45
  %i.am = ptrtoint ptr %2 to i64
  %i.an = and i64 %i.am, 1
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.ah, label %lean_dec.exit

bb.ah:                                            ; preds = %lean_dec.exit24
  %i.ao = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i42 = icmp eq i32 %i.ao, 0
  br i1 %.not.i42, label %lean_dec.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_dec.exit24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Beta(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.c = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Types(i8 noundef zeroext %0) #4 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val = load i32, ptr %i.d, align 4
  %.mask.i = and i32 %.val, -16777216
  %i.e = icmp eq i32 %.mask.i, 16777216
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.c, align 4, !tbaa !15   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !15
  br label %lean_dec_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  tail call void @lean_inc_heartbeat() #4
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

.sink.split:                                      ; preds = %lean_dec_ref.exit, %bb.b
  %.sink10 = phi ptr [ %i.a, %bb.b ], [ %i.i, %lean_dec_ref.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sink10, i64 4
  store i32 1, ptr %.sink10, align 4, !tbaa !15
  store i32 65552, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ %.sink10, %.sink.split ]
  ret ptr %.0
}

declare ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Types(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @meta_initialize_Lean_Meta_Tactic_Grind_Beta(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #4
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %lean_io_result_mk_ok.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.d, %bb.b
  %.sink6 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sink6, i64 4
  store i32 1, ptr %.sink6, align 4, !tbaa !15
  store i32 65552, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !13
  ret ptr %.sink6
}

; Function Attrs: nounwind uwtable
define ptr @initialize_Lean_Meta_Tactic_Grind_Beta(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b21 = load i1, ptr @_G_initialized, align 1
  br i1 %.b21, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %lean_dec_ref.exit, %bb.a
  tail call void @lean_inc_heartbeat() #4
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_io_result_mk_ok.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %tailrecurse._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !15
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !13
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Lean_Meta_Tactic_Grind_Types(i8 noundef zeroext %0) #4 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val18 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val18, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !15   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !15
  br label %lean_dec_ref.exit16

bb.e:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i32 %i.h, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #4
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @runtime_initialize_Lean_Meta_Tactic_Grind_Beta(i8 noundef zeroext %0) ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val17 = load i32, ptr %i.l, align 4
  %.mask.i19 = and i32 %.val17, -16777216
  %i.m = icmp eq i32 %.mask.i19, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit16
  %i.n = load i32, ptr %i.k, align 4, !tbaa !15   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !15
  br label %lean_dec_ref.exit14

bb.i:                                             ; preds = %bb.g
  %.not.i13 = icmp eq i32 %i.n, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #4
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.h, %bb.i, %bb.j
  %.b.i = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %lean_dec_ref.exit14
  tail call void @lean_inc_heartbeat() #4
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %lean_dec_ref.exit

bb.l:                                             ; preds = %bb.k
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.m:                                             ; preds = %lean_dec_ref.exit14
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #4
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_dec_ref.exit

bb.n:                                             ; preds = %bb.m
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec_ref.exit:                                ; preds = %bb.k, %bb.m
  %.sink6.i = phi ptr [ %i.q, %bb.k ], [ %i.s, %bb.m ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4
  store i32 1, ptr %.sink6.i, align 4, !tbaa !15
  store i32 65552, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !13
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink6.i) #4
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit16, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.e, %.lr.ph ], [ %i.k, %lean_dec_ref.exit16 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Meta_Tactic_Grind_Types(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #3

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #1

declare ptr @lean_nat_big_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_big_usize_to_nat(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @lean_nat_big_le(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_instMonadEIO(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Core_instMonadCoreM___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_Lean_Core_instMonadCoreM___lam__1___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

declare ptr @l_Lean_Meta_instMonadMetaM___lam__0___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @l_Lean_Meta_instMonadMetaM___lam__1___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_free_object(ptr noundef) local_unnamed_addr #1

declare ptr @l_mkPanicMessageWithDecl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @lean_float_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare double @lean_float_of_nat(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Name_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_stringToMessageData(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
end_hunk_3
