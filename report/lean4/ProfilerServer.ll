Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ProfilerServer?download=true
inline.NumInlined: 7050
inline.NumDeleted: 93
begin_hunk_0_@l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 1, ptr %i.bz, align 4, !tbaa !11
  store i32 65552, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cc, align 8, !tbaa !18
  br label %lean_dec_ref_known.exit209

bb.av:                                            ; preds = %lean_obj_tag.exit202
  br i1 %i.bp, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !18 ; 4 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = and i64 %i.cf, 1
  %.not.i.i206 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i206, label %bb.ax, label %lean_dec.exit.i207

lean_dec.exit.i207:                               ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  tail call void @lean_free_object(ptr noundef nonnull %i.bf) #6
  br label %bb.k

bb.ax:                                            ; preds = %bb.aw
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !11 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.ay, label %bb.az, !prof !16

bb.ay:                                            ; preds = %bb.ax
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !11
  br label %lean_dec.exit.i207

bb.az:                                            ; preds = %bb.ax
  %.not.i7.i208 = icmp eq i32 %i.ch, 0
  br i1 %.not.i7.i208, label %lean_dec.exit.i207, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #6
  br label %lean_dec.exit.i207

bb.bb:                                            ; preds = %bb.av
  %i.ck = icmp sgt i32 %.val, 1
  br i1 %i.ck, label %bb.bc, label %bb.bd, !prof !16

bb.bc:                                            ; preds = %bb.bb
  %i.cl = add nsw i32 %.val, -1
  store i32 %i.cl, ptr %i.bf, align 4, !tbaa !11
  br label %bb.k

bb.bd:                                            ; preds = %bb.bb
  %.not.i8.i205 = icmp eq i32 %.val, 0
  br i1 %.not.i8.i205, label %bb.k, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bf) #6
  br label %bb.k

bb.bf:                                            ; preds = %lean_obj_tag.exit
  %.val.i210 = load i32, ptr %i.ah, align 4, !tbaa !11 ; 4 uses
  %i.cm = icmp eq i32 %.val.i210, 1
  br i1 %i.cm, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !18 ; 4 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i.i212 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i212, label %bb.bh, label %lean_dec.exit.i213

lean_dec.exit.i213:                               ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  tail call void @lean_free_object(ptr noundef nonnull %i.ah) #6
  br label %bb.k

bb.bh:                                            ; preds = %bb.bg
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !11 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bi, label %bb.bj, !prof !16

bb.bi:                                            ; preds = %bb.bh
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !11
  br label %lean_dec.exit.i213

bb.bj:                                            ; preds = %bb.bh
  %.not.i7.i214 = icmp eq i32 %i.cr, 0
  br i1 %.not.i7.i214, label %lean_dec.exit.i213, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit.i213

bb.bl:                                            ; preds = %bb.bf
  %i.cu = icmp sgt i32 %.val.i210, 1
  br i1 %i.cu, label %bb.bm, label %bb.bn, !prof !16

bb.bm:                                            ; preds = %bb.bl
  %i.cv = add nsw i32 %.val.i210, -1
  store i32 %i.cv, ptr %i.ah, align 4, !tbaa !11
  br label %bb.k

bb.bn:                                            ; preds = %bb.bl
  %.not.i8.i211 = icmp eq i32 %.val.i210, 0
  br i1 %.not.i8.i211, label %bb.k, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #6
  br label %bb.k

lean_dec_ref_known.exit209:                       ; preds = %bb.at, %lean_alloc_ctor.exit203, %lean_alloc_ctor.exit180
  %.6 = phi ptr [ %i.v, %lean_alloc_ctor.exit180 ], [ %i.bf, %bb.at ], [ %i.bz, %lean_alloc_ctor.exit203 ]
  ret ptr %.6
}

declare ptr @lean_array_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noalias nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 4) %0, i32 noundef range(i32 0, 25) %1, i32 noundef range(i32 0, 9) %2) unnamed_addr #2 {
lean_usize_mul_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 1016
  %i.d = and i64 %i.b, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 3 uses
  tail call void @lean_inc_heartbeat() #6
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef %i.f) #6 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_mul_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_mul_checked.exit
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
  store i64 0, ptr %i.p, align 8, !tbaa !13
  %.pre = load i32, ptr %i.j, align 4
  br label %lean_alloc_ctor_memory.exit

lean_alloc_ctor_memory.exit:                      ; preds = %lean_alloc_small_object.exit.i, %bb.b
  %i.q = phi i32 [ %i.m, %lean_alloc_small_object.exit.i ], [ %.pre, %bb.b ]
  store i32 1, ptr %i.g, align 4, !tbaa !11
  %i.r = shl nuw nsw i32 %0, 24
  %i.s = and i32 %i.q, 65535
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %1, 16
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.j, align 4
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__11() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__10_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__10, align 8, !tbaa !18
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__10, ptr noundef nonnull @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__10_once, ptr noundef nonnull @_init_l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__10) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @lean_array_push(ptr noundef %.0.i, ptr noundef nonnull @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___closed__8_value) #6
  ret ptr %i.e
}

declare ptr @lean_io_process_spawn(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !11    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %lean_dec.exit, label %.lr.ph

lean_dec.exit:                                    ; preds = %.lr.ph, %bb.d, %bb.e, %bb.f, %bb.b
  tail call void @lean_free_object(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit9

.lr.ph:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = and i64 %i.d, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %lean_dec.exit

bb.c:                                             ; preds = %.lr.ph
  %i.f = load i32, ptr %i.c, align 4, !tbaa !11   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !11
  br label %lean_dec.exit

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq i32 %i.f, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #6
  br label %lean_dec.exit

bb.g:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %.val, 1
  br i1 %i.i, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.j = add nsw i32 %.val, -1
  store i32 %i.j, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit9

bb.i:                                             ; preds = %bb.g
  %.not.i8 = icmp eq i32 %.val, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.j, %bb.i, %bb.h, %lean_dec.exit
  ret void
}

declare ptr @lean_io_process_child_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Util_ProfilerServer_0__Lean_Firefox_openInBrowser(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Nat_cast___at___00Lean_Firefox_Profile_serve_spec__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Http_Body_Any_ofBody___at___00Lean_Firefox_Profile_serve_spec__5___lam__0(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 {
bb.a:
  ret ptr @l_Std_Http_Body_Any_ofBody___at___00Lean_Firefox_Profile_serve_spec__5___lam__0___closed__1_value
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_Std_Http_Body_Any_ofBody___at___00Lean_Firefox_Profile_serve_spec__5___lam__0___boxed(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !11     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i3 = icmp eq i32 %i.c, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr @l_Std_Http_Body_Any_ofBody___at___00Lean_Firefox_Profile_serve_spec__5___lam__0___closed__1_value
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Std_Http_Body_Any_ofBody___at___00Lean_Firefox_Profile_serve_spec__5(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.val.i = load i32, ptr %0, align 4, !tbaa !11  ; 3 uses
  %i.a = icmp sgt i32 %.val.i, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.val.i, 5
  store i32 %i.b, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref_n.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %lean_inc_ref_n.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = atomicrmw sub ptr %0, i32 5 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.d = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.d, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 65535
  %i.h = or disjoint i32 %i.g, -184549376
  store i32 %i.h, ptr %i.e, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @l_Std_Http_Body_Full_recv___boxed, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i16 2, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i16 1, ptr %i.k, align 2, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %0, ptr %i.l, align 8, !tbaa !18
  %i.m = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.m, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 65535
  %i.q = or disjoint i32 %i.p, -184549376
  store i32 %i.q, ptr %i.n, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @l_Std_Http_Body_Full_close___boxed, ptr %i.r, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i16 2, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store i16 1, ptr %i.t, align 2, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %0, ptr %i.u, align 8, !tbaa !18
  %i.v = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.v, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 65535
  %i.z = or disjoint i32 %i.y, -184549376
  store i32 %i.z, ptr %i.w, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @l_Std_Http_Body_Full_isClosed___boxed, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i16 2, ptr %i.ab, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  store i16 1, ptr %i.ac, align 2, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %0, ptr %i.ad, align 8, !tbaa !18
  %i.ae = tail call ptr @l_Std_Http_Body_Full_recvSelector(ptr noundef nonnull %0) #6
  %i.af = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.af, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 65535
  %i.aj = or disjoint i32 %i.ai, -184549376
  store i32 %i.aj, ptr %i.ag, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @l_Std_Http_Body_Full_tryRecv___boxed, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i16 2, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  store i16 1, ptr %i.am, align 2, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %0, ptr %i.an, align 8, !tbaa !18
  %i.ao = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.ao, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 65535
  %i.as = or disjoint i32 %i.ar, -184549376
  store i32 %i.as, ptr %i.ap, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @l_Std_Http_Body_Full_getKnownSize___boxed, ptr %i.at, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i16 2, ptr %i.au, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 18
  store i16 1, ptr %i.av, align 2, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
end_hunk_0
