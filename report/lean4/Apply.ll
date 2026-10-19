Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Apply?download=true
inline.NumInlined: 2468
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@l_Lean_Meta_getExpectedNumArgs___boxed:bb.a
bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_addPPExplicitToExposeDiff(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #7 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i200 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i200, label %bb.c, label %bb.b

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
  br i1 %i.h, label %bb.d, label %bb.dc

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 11 uses
  %.val199 = load i32, ptr %i.a, align 8, !tbaa !11
  %i.k = icmp eq i32 %.val199, 1                  ; 2 uses
  br i1 %i.k, label %lean_dec.exit180, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = and i64 %i.l, 1
  %.not.i166 = icmp eq i64 %i.m, 0
  br i1 %.not.i166, label %bb.f, label %lean_inc.exit167

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !11 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !11
  br label %lean_inc.exit167

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit167, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit167

lean_inc.exit167:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i200, label %bb.j, label %lean_dec.exit180

bb.j:                                             ; preds = %lean_inc.exit167
  %i.q = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !11
  br label %lean_dec.exit180

bb.l:                                             ; preds = %bb.j
  %.not.i181 = icmp eq i32 %i.q, 0
  br i1 %.not.i181, label %lean_dec.exit180, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit180

lean_dec.exit180:                                 ; preds = %lean_inc.exit167, %bb.k, %bb.l, %bb.m, %bb.d
  %.0139 = phi ptr [ %i.a, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit167 ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 13 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 13 uses
  %.val198 = load i32, ptr %i.j, align 8, !tbaa !11
  %i.x = icmp eq i32 %.val198, 1                  ; 2 uses
  br i1 %i.x, label %lean_dec.exit178, label %bb.n

bb.n:                                             ; preds = %lean_dec.exit180
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = and i64 %i.y, 1
  %.not.i164 = icmp eq i64 %i.z, 0
  br i1 %.not.i164, label %bb.o, label %lean_inc.exit165

bb.o:                                             ; preds = %bb.n
  %.val.i.i201 = load i32, ptr %i.w, align 4, !tbaa !11 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i201, 0
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !14

bb.p:                                             ; preds = %bb.o
  %i.ab = add nuw i32 %.val.i.i201, 1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !11
  br label %lean_inc.exit165

bb.q:                                             ; preds = %bb.o
  %.not.i.i202 = icmp eq i32 %.val.i.i201, 0
  br i1 %.not.i.i202, label %lean_inc.exit165, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit165

lean_inc.exit165:                                 ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %i.ad = ptrtoint ptr %i.u to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i162 = icmp eq i64 %i.ae, 0
  br i1 %.not.i162, label %bb.s, label %lean_inc.exit163

bb.s:                                             ; preds = %lean_inc.exit165
  %.val.i.i204 = load i32, ptr %i.u, align 4, !tbaa !11 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i204, 0
  br i1 %i.af, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %bb.s
  %i.ag = add nuw i32 %.val.i.i204, 1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !11
  br label %lean_inc.exit163

bb.u:                                             ; preds = %bb.s
  %.not.i.i205 = icmp eq i32 %.val.i.i204, 0
  br i1 %.not.i.i205, label %lean_inc.exit163, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = atomicrmw sub ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit163

lean_inc.exit163:                                 ; preds = %lean_inc.exit165, %bb.t, %bb.u, %bb.v
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !11  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !14

bb.w:                                             ; preds = %lean_inc.exit163
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.j, align 8, !tbaa !11
  br label %lean_dec.exit178

bb.x:                                             ; preds = %lean_inc.exit163
  %.not.i182 = icmp eq i32 %i.ai, 0
  br i1 %.not.i182, label %lean_dec.exit178, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #7
  br label %lean_dec.exit178

lean_dec.exit178:                                 ; preds = %bb.w, %bb.x, %bb.y, %lean_dec.exit180
  %.0153 = phi ptr [ %i.j, %lean_dec.exit180 ], [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %bb.w ] ; 6 uses
  %i.al = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.am = and i64 %i.al, 1
  %.not.i207 = icmp eq i64 %i.am, 0
  br i1 %.not.i207, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %lean_dec.exit178
  %i.an = lshr i64 %i.al, 1
  %i.ao = trunc i64 %i.an to i32
  br label %lean_obj_tag.exit210

bb.aa:                                            ; preds = %lean_dec.exit178
  %i.ap = getelementptr i8, ptr %4, i64 4
  %.val.i209 = load i32, ptr %i.ap, align 4
  %i.aq = lshr i32 %.val.i209, 24
  br label %lean_obj_tag.exit210

lean_obj_tag.exit210:                             ; preds = %bb.z, %bb.aa
  %.0.i208 = phi i32 [ %i.ao, %bb.z ], [ %i.aq, %bb.aa ]
  %i.ar = icmp eq i32 %.0.i208, 0
  %l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__9_value.l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__10_value = select i1 %i.ar, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__9_value, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__10_value ; 3 uses
  %i.as = ptrtoint ptr %i.w to i64
  %i.at = and i64 %i.as, 1
  %.not.i160 = icmp eq i64 %i.at, 0               ; 2 uses
  br i1 %.not.i160, label %bb.ab, label %lean_inc.exit161

bb.ab:                                            ; preds = %lean_obj_tag.exit210
  %.val.i.i211 = load i32, ptr %i.w, align 4, !tbaa !11 ; 3 uses
  %i.au = icmp sgt i32 %.val.i.i211, 0
  br i1 %i.au, label %bb.ac, label %bb.ad, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.av = add nuw i32 %.val.i.i211, 1
  store i32 %i.av, ptr %i.w, align 4, !tbaa !11
  br label %lean_inc.exit161

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i212 = icmp eq i32 %.val.i.i211, 0
  br i1 %.not.i.i212, label %lean_inc.exit161, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.aw = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit161

lean_inc.exit161:                                 ; preds = %bb.ae, %bb.ad, %bb.ac, %lean_obj_tag.exit210
  %i.ax = ptrtoint ptr %i.u to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i158 = icmp eq i64 %i.ay, 0               ; 2 uses
  br i1 %.not.i158, label %bb.af, label %lean_inc.exit159

bb.af:                                            ; preds = %lean_inc.exit161
  %.val.i.i214 = load i32, ptr %i.u, align 4, !tbaa !11 ; 3 uses
  %i.az = icmp sgt i32 %.val.i.i214, 0
  br i1 %i.az, label %bb.ag, label %bb.ah, !prof !14

bb.ag:                                            ; preds = %bb.af
  %i.ba = add nuw i32 %.val.i.i214, 1
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !11
  br label %lean_inc.exit159

bb.ah:                                            ; preds = %bb.af
  %.not.i.i215 = icmp eq i32 %.val.i.i214, 0
  br i1 %.not.i.i215, label %lean_inc.exit159, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bb = atomicrmw sub ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit159

lean_inc.exit159:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %lean_inc.exit161
  %i.bc = tail call ptr @l_Lean_Meta_mkUnfoldAxiomsNote(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #7 ; 10 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = and i64 %i.bd, 1
  %.not.i217 = icmp eq i64 %i.be, 0
  br i1 %.not.i217, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %lean_inc.exit159
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = trunc i64 %i.bf to i32
  br label %lean_obj_tag.exit220

bb.ak:                                            ; preds = %lean_inc.exit159
  %i.bh = getelementptr i8, ptr %i.bc, i64 4
  %.val.i219 = load i32, ptr %i.bh, align 4
  %i.bi = lshr i32 %.val.i219, 24
  br label %lean_obj_tag.exit220

lean_obj_tag.exit220:                             ; preds = %bb.aj, %bb.ak
  %.0.i218 = phi i32 [ %i.bg, %bb.aj ], [ %i.bi, %bb.ak ]
  %i.bj = icmp eq i32 %.0.i218, 0
  br i1 %i.bj, label %bb.az, label %bb.ck

bb.al:                                            ; preds = %lean_obj_once.exit247
  %i.bk = getelementptr inbounds nuw i8, ptr %.0153, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 16777215
  %i.bn = or disjoint i32 %i.bm, 117440512
  store i32 %i.bn, ptr %i.bk, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.0153, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0153, i64 16
  store ptr %.1147, ptr %i.bp, align 8, !tbaa !16
  store ptr %i.ej, ptr %i.bo, align 8, !tbaa !16
  br label %bb.ao

bb.am:                                            ; preds = %lean_obj_once.exit247
  tail call void @lean_inc_heartbeat() #7
  %i.bq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.an, label %lean_alloc_ctor.exit

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.am
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 1, ptr %i.bq, align 4, !tbaa !11
  store i32 117571608, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.ej, ptr %i.bt, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %.1147, ptr %i.bu, align 8, !tbaa !16
  br label %bb.ao

bb.ao:                                            ; preds = %lean_alloc_ctor.exit, %bb.al
  %.0142 = phi ptr [ %.0153, %bb.al ], [ %i.bq, %lean_alloc_ctor.exit ]
  %i.bv = tail call ptr @l_Lean_indentExpr(ptr noundef %i.u) #7
  tail call void @lean_inc_heartbeat() #7
  %i.bw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ap, label %lean_alloc_ctor.exit221

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit221:                          ; preds = %bb.ao
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 1, ptr %i.bw, align 4, !tbaa !11
  store i32 117571608, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.0142, ptr %i.bz, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bv, ptr %i.ca, align 8, !tbaa !16
  %i.cb = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__1_once seq_cst, align 4, !tbaa !21
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.aq, label %bb.ar, !prof !14

bb.aq:                                            ; preds = %lean_alloc_ctor.exit221
  %i.cd = load ptr, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__1, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.ar:                                            ; preds = %lean_alloc_ctor.exit221
  %i.ce = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__1, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__1) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.aq, %bb.ar
  %.0.i222 = phi ptr [ %i.cd, %bb.aq ], [ %i.ce, %bb.ar ]
  tail call void @lean_inc_heartbeat() #7
  %i.cf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.as, label %lean_alloc_ctor.exit223

bb.as:                                            ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit223:                          ; preds = %lean_obj_once.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 1, ptr %i.cf, align 4, !tbaa !11
  store i32 117571608, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.bw, ptr %i.ci, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %.0.i222, ptr %i.cj, align 8, !tbaa !16
  %i.ck = tail call ptr @l_Lean_indentExpr(ptr noundef %i.w) #7
  tail call void @lean_inc_heartbeat() #7
  %i.cl = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.at, label %lean_alloc_ctor.exit224

bb.at:                                            ; preds = %lean_alloc_ctor.exit223
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit224:                          ; preds = %lean_alloc_ctor.exit223
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cl, align 4, !tbaa !11
  store i32 117571608, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cf, ptr %i.co, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.ck, ptr %i.cp, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #7
  %i.cq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.au, label %lean_alloc_ctor.exit225

bb.au:                                            ; preds = %lean_alloc_ctor.exit224
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit225:                          ; preds = %lean_alloc_ctor.exit224
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 1, ptr %i.cq, align 4, !tbaa !11
  store i32 117571608, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cl, ptr %i.ct, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %2, ptr %i.cu, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #7
  %i.cv = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 7 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.av, label %lean_alloc_ctor.exit226

bb.av:                                            ; preds = %lean_alloc_ctor.exit225
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit226:                          ; preds = %lean_alloc_ctor.exit225
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !11
  store i32 117571608, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cq, ptr %i.cy, align 8, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.dg, ptr %i.cz, align 8, !tbaa !16
  br i1 %i.k, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %lean_alloc_ctor.exit226
  %i.da = getelementptr inbounds nuw i8, ptr %.0139, i64 8
  store ptr %i.cv, ptr %i.da, align 8, !tbaa !16
  br label %lean_dec.exit

bb.ax:                                            ; preds = %lean_alloc_ctor.exit226
  tail call void @lean_inc_heartbeat() #7
  %i.db = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ay, label %lean_alloc_ctor.exit227

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit227:                          ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 1, ptr %i.db, align 4, !tbaa !11
  store i32 65552, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.cv, ptr %i.de, align 8, !tbaa !16
  br label %lean_dec.exit

bb.az:                                            ; preds = %lean_obj_tag.exit220
  %i.df = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !16 ; 5 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = and i64 %i.dh, 1
  %.not.i156 = icmp eq i64 %i.di, 0
  br i1 %.not.i156, label %bb.ba, label %lean_inc.exit157

bb.ba:                                            ; preds = %bb.az
  %.val.i.i228 = load i32, ptr %i.dg, align 4, !tbaa !11 ; 3 uses
  %i.dj = icmp sgt i32 %.val.i.i228, 0
  br i1 %i.dj, label %bb.bb, label %bb.bc, !prof !14

bb.bb:                                            ; preds = %bb.ba
  %i.dk = add nuw i32 %.val.i.i228, 1
  store i32 %i.dk, ptr %i.dg, align 4, !tbaa !11
  br label %lean_inc.exit157

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i229 = icmp eq i32 %.val.i.i228, 0
  br i1 %.not.i.i229, label %lean_inc.exit157, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dl = atomicrmw sub ptr %i.dg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit157

lean_inc.exit157:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %.val.i231 = load i32, ptr %i.bc, align 8, !tbaa !11 ; 4 uses
  %i.dm = icmp eq i32 %.val.i231, 1
  br i1 %i.dm, label %.preheader.i, label %bb.bi

.preheader.i:                                     ; preds = %lean_inc.exit157
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !16 ; 4 uses
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = and i64 %i.do, 1
  %.not.i.i232 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i232, label %bb.be, label %lean_dec.exit.i

bb.be:                                            ; preds = %.preheader.i
  %i.dq = load i32, ptr %i.dn, align 4, !tbaa !11 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %bb.bf, label %bb.bg, !prof !14

bb.bf:                                            ; preds = %bb.be
  %i.ds = add nsw i32 %i.dq, -1
  store i32 %i.ds, ptr %i.dn, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.bg:                                            ; preds = %bb.be
  %.not.i7.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dn) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bh, %bb.bg, %bb.bf, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bc) #7
  br label %lean_dec_ref_known.exit

bb.bi:                                            ; preds = %lean_inc.exit157
  %i.dt = icmp sgt i32 %.val.i231, 1
  br i1 %i.dt, label %bb.bj, label %bb.bk, !prof !14

bb.bj:                                            ; preds = %bb.bi
  %i.du = add nsw i32 %.val.i231, -1
  store i32 %i.du, ptr %i.bc, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.bk:                                            ; preds = %bb.bi
  %.not.i8.i = icmp eq i32 %.val.i231, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bj, %bb.bk, %bb.bl
  %i.dv = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__3_once seq_cst, align 4, !tbaa !21
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %bb.bm, label %bb.bn, !prof !14

bb.bm:                                            ; preds = %lean_dec_ref_known.exit
  %i.dx = load ptr, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__3, align 8, !tbaa !16
  br label %lean_obj_once.exit234

bb.bn:                                            ; preds = %lean_dec_ref_known.exit
  %i.dy = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__3, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__3) #7
  br label %lean_obj_once.exit234

lean_obj_once.exit234:                            ; preds = %bb.bm, %bb.bn
  %.0.i233 = phi ptr [ %i.dx, %bb.bm ], [ %i.dy, %bb.bn ]
  %.val.i.i235 = load i32, ptr %l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__9_value.l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__10_value, align 8, !tbaa !11 ; 2 uses
  %9 = icmp sgt i32 %.val.i.i235, 0
  br i1 %9, label %lean_inc_ref.exit237, label %10, !prof !14

10:                                               ; preds = %lean_obj_once.exit234
  %.not.i.i236 = icmp eq i32 %.val.i.i235, 0
  br i1 %.not.i.i236, label %lean_inc_ref.exit237, label %11

11:                                               ; preds = %10
  %12 = atomicrmw sub ptr %l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__9_value.l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__10_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit237

lean_inc_ref.exit237:                             ; preds = %lean_obj_once.exit234, %10, %11
  %i.dz = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull %l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__9_value.l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__10_value) #7
  tail call void @lean_inc_heartbeat() #7
  %i.ea = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.bo, label %lean_alloc_ctor.exit238

bb.bo:                                            ; preds = %lean_inc_ref.exit237
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit238:                          ; preds = %lean_inc_ref.exit237
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 1, ptr %i.ea, align 4, !tbaa !11
  store i32 117571608, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %.0.i233, ptr %i.ed, align 8, !tbaa !16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.dz, ptr %i.ee, align 8, !tbaa !16
  %i.ef = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__5_once seq_cst, align 4, !tbaa !21
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.bp, label %bb.bq, !prof !14

bb.bp:                                            ; preds = %lean_alloc_ctor.exit238
  %i.eh = load ptr, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__5, align 8, !tbaa !16
  br label %lean_obj_once.exit240

bb.bq:                                            ; preds = %lean_alloc_ctor.exit238
  %i.ei = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__5, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__5) #7
  br label %lean_obj_once.exit240

lean_obj_once.exit240:                            ; preds = %bb.bp, %bb.bq
  %.0.i239 = phi ptr [ %i.eh, %bb.bp ], [ %i.ei, %bb.bq ]
  tail call void @lean_inc_heartbeat() #7
  %i.ej = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 7 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.br, label %lean_alloc_ctor.exit241

bb.br:                                            ; preds = %lean_obj_once.exit240
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit241:                          ; preds = %lean_obj_once.exit240
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 1, ptr %i.ej, align 4, !tbaa !11
  store i32 117571608, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.ea, ptr %i.em, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %.0.i239, ptr %i.en, align 8, !tbaa !16
  %i.eo = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ep = and i64 %i.eo, 1
  %.not.i242 = icmp eq i64 %i.ep, 0
  br i1 %.not.i242, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %lean_alloc_ctor.exit241
  %i.eq = lshr i64 %i.eo, 1
  %i.er = trunc i64 %i.eq to i32
  br label %lean_obj_tag.exit245

bb.bt:                                            ; preds = %lean_alloc_ctor.exit241
  %i.es = getelementptr i8, ptr %3, i64 4
  %.val.i244 = load i32, ptr %i.es, align 4
  %i.et = lshr i32 %.val.i244, 24
  br label %lean_obj_tag.exit245

lean_obj_tag.exit245:                             ; preds = %bb.bs, %bb.bt
  %.0.i243 = phi i32 [ %i.er, %bb.bs ], [ %i.et, %bb.bt ]
  %i.eu = icmp eq i32 %.0.i243, 0
  br i1 %i.eu, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %lean_obj_tag.exit245
  %i.ev = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__8_once seq_cst, align 4, !tbaa !21
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.bv, label %bb.bw, !prof !14

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load ptr, ptr @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__8, align 8, !tbaa !16
  br label %lean_obj_once.exit247

bb.bw:                                            ; preds = %bb.bu
  %i.ey = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__8, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__8_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Apply_0__Lean_Meta_throwApplyError___redArg___lam__0___closed__8) #7
  br label %lean_obj_once.exit247

bb.bx:                                            ; preds = %lean_obj_tag.exit245
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !16 ; 8 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 1
  %.not.i154 = icmp eq i64 %i.fc, 0
  br i1 %.not.i154, label %bb.by, label %lean_inc.exit155

bb.by:                                            ; preds = %bb.bx
  %.val.i.i248 = load i32, ptr %i.fa, align 4, !tbaa !11 ; 3 uses
  %i.fd = icmp sgt i32 %.val.i.i248, 0
  br i1 %i.fd, label %bb.bz, label %bb.ca, !prof !14

bb.bz:                                            ; preds = %bb.by
  %i.fe = add nuw i32 %.val.i.i248, 1
  store i32 %i.fe, ptr %i.fa, align 4, !tbaa !11
  br label %lean_inc.exit155

bb.ca:                                            ; preds = %bb.by
  %.not.i.i249 = icmp eq i32 %.val.i.i248, 0
  br i1 %.not.i.i249, label %lean_inc.exit155, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ff = atomicrmw sub ptr %i.fa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit155

lean_inc.exit155:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %.val.i251 = load i32, ptr %3, align 8, !tbaa !11 ; 4 uses
  %i.fg = icmp eq i32 %.val.i251, 1
  br i1 %i.fg, label %.preheader.i253, label %bb.cg

.preheader.i253:                                  ; preds = %lean_inc.exit155
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !16 ; 4 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i.i255 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i255, label %bb.cc, label %lean_dec.exit.i256

bb.cc:                                            ; preds = %.preheader.i253
  %i.fk = load i32, ptr %i.fh, align 4, !tbaa !11 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.cd, label %bb.ce, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %i.fh, align 4, !tbaa !11
  br label %lean_dec.exit.i256

bb.ce:                                            ; preds = %bb.cc
  %.not.i7.i259 = icmp eq i32 %i.fk, 0
  br i1 %.not.i7.i259, label %lean_dec.exit.i256, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #7
  br label %lean_dec.exit.i256

lean_dec.exit.i256:                               ; preds = %bb.cf, %bb.ce, %bb.cd, %.preheader.i253
  tail call void @lean_free_object(ptr noundef nonnull %3) #7
  br label %lean_obj_once.exit247

bb.cg:                                            ; preds = %lean_inc.exit155
  %i.fn = icmp sgt i32 %.val.i251, 1
  br i1 %i.fn, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %bb.cg
  %i.fo = add nsw i32 %.val.i251, -1
  store i32 %i.fo, ptr %3, align 8, !tbaa !11
  br label %lean_obj_once.exit247

bb.ci:                                            ; preds = %bb.cg
  %.not.i8.i252 = icmp eq i32 %.val.i251, 0
  br i1 %.not.i8.i252, label %lean_obj_once.exit247, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_obj_once.exit247

bb.ck:                                            ; preds = %lean_obj_tag.exit220
  %i.fp = ptrtoint ptr %.0153 to i64
  %i.fq = and i64 %i.fp, 1
  %.not.i261 = icmp eq i64 %i.fq, 0
  br i1 %.not.i261, label %bb.cl, label %lean_del_object.exit

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_free_object(ptr noundef nonnull %.0153) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ck, %bb.cl
  br i1 %.not.i160, label %bb.cm, label %lean_dec.exit176

bb.cm:                                            ; preds = %lean_del_object.exit
  %i.fr = load i32, ptr %i.w, align 4, !tbaa !11  ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 1
  br i1 %i.fs, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %bb.cm
  %i.ft = add nsw i32 %i.fr, -1
  store i32 %i.ft, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec.exit176

bb.co:                                            ; preds = %bb.cm
  %.not.i184 = icmp eq i32 %i.fr, 0
  br i1 %.not.i184, label %lean_dec.exit176, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #7
  br label %lean_dec.exit176

lean_dec.exit176:                                 ; preds = %bb.cp, %bb.co, %bb.cn, %lean_del_object.exit
  br i1 %.not.i158, label %bb.cq, label %lean_dec.exit174

bb.cq:                                            ; preds = %lean_dec.exit176
  %i.fu = load i32, ptr %i.u, align 4, !tbaa !11  ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.cr, label %bb.cs, !prof !14

bb.cr:                                            ; preds = %bb.cq
end_hunk_0
