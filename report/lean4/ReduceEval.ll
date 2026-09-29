Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ReduceEval?download=true
inline.NumInlined: 1326
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@l_Lean_Meta_reduceEval___redArg:bb.a
  br label %lean_inc.exit148

bb.s:                                             ; preds = %bb.q
  %.not.i.i154 = icmp eq i32 %.val.i.i153, 0
  br i1 %.not.i.i154, label %lean_inc.exit148, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit148

lean_inc.exit148:                                 ; preds = %bb.t, %bb.s, %bb.r, %lean_inc.exit150
  %i.bk = ptrtoint ptr %i.ac to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i145 = icmp eq i64 %i.bl, 0
  br i1 %.not.i145, label %bb.u, label %lean_inc.exit146

bb.u:                                             ; preds = %lean_inc.exit148
  %.val.i.i156 = load i32, ptr %i.ac, align 4, !tbaa !11 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i156, 0
  br i1 %i.bm, label %bb.v, label %bb.w, !prof !12

bb.v:                                             ; preds = %bb.u
  %i.bn = add nuw i32 %.val.i.i156, 1
  store i32 %i.bn, ptr %i.ac, align 4, !tbaa !11
  br label %lean_inc.exit146

bb.w:                                             ; preds = %bb.u
  %.not.i.i157 = icmp eq i32 %.val.i.i156, 0
  br i1 %.not.i.i157, label %lean_inc.exit146, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit146

lean_inc.exit146:                                 ; preds = %bb.x, %bb.w, %bb.v, %lean_inc.exit148
  %.val.i.i159 = load i32, ptr %i.aa, align 4, !tbaa !11 ; 3 uses
  %i.bp = icmp sgt i32 %.val.i.i159, 0
  br i1 %i.bp, label %bb.y, label %bb.z, !prof !12

bb.y:                                             ; preds = %lean_inc.exit146
  %i.bq = add nuw i32 %.val.i.i159, 1
  store i32 %i.bq, ptr %i.aa, align 4, !tbaa !11
  br label %lean_inc_ref.exit161

bb.z:                                             ; preds = %lean_inc.exit146
  %.not.i.i160 = icmp eq i32 %.val.i.i159, 0
  br i1 %.not.i.i160, label %lean_inc_ref.exit161, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = atomicrmw sub ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit161

lean_inc_ref.exit161:                             ; preds = %bb.y, %bb.z, %bb.aa
  %.val.i.i162 = load i32, ptr %i.y, align 4, !tbaa !11 ; 3 uses
  %i.bs = icmp sgt i32 %.val.i.i162, 0
  br i1 %i.bs, label %bb.ab, label %bb.ac, !prof !12

bb.ab:                                            ; preds = %lean_inc_ref.exit161
  %i.bt = add nuw i32 %.val.i.i162, 1
  store i32 %i.bt, ptr %i.y, align 4, !tbaa !11
  br label %lean_inc_ref.exit164

bb.ac:                                            ; preds = %lean_inc_ref.exit161
  %.not.i.i163 = icmp eq i32 %.val.i.i162, 0
  br i1 %.not.i.i163, label %lean_inc_ref.exit164, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit164

lean_inc_ref.exit164:                             ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.bv = ptrtoint ptr %i.w to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i143 = icmp eq i64 %i.bw, 0
  br i1 %.not.i143, label %bb.ae, label %lean_inc.exit144

bb.ae:                                            ; preds = %lean_inc_ref.exit164
  %.val.i.i165 = load i32, ptr %i.w, align 4, !tbaa !11 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i165, 0
  br i1 %i.bx, label %bb.af, label %bb.ag, !prof !12

bb.af:                                            ; preds = %bb.ae
  %i.by = add nuw i32 %.val.i.i165, 1
  store i32 %i.by, ptr %i.w, align 4, !tbaa !11
  br label %lean_inc.exit144

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i166 = icmp eq i32 %.val.i.i165, 0
  br i1 %.not.i.i166, label %lean_inc.exit144, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bz = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit144

lean_inc.exit144:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %lean_inc_ref.exit164
  tail call void @lean_inc_heartbeat() #4
  %i.ca = tail call noalias ptr @mi_malloc_small(i64 noundef 72) #4 ; 12 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ai, label %lean_alloc_ctor.exit169

bb.ai:                                            ; preds = %lean_inc.exit144
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit169:                          ; preds = %lean_inc.exit144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !16
  store i32 1, ptr %i.ca, align 8, !tbaa !11
  store i32 458824, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.at, ptr %i.ce, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.w, ptr %i.cf, align 8, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.y, ptr %i.cg, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.aa, ptr %i.ch, align 8, !tbaa !14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %i.ac, ptr %i.ci, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store ptr %i.ae, ptr %i.cj, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  store ptr %i.ag, ptr %i.ck, align 8, !tbaa !14
  store <4 x i8> %i.ah, ptr %i.cd, align 8, !tbaa !9
  %i.cl = ptrtoint ptr %5 to i64
  %i.cm = and i64 %i.cl, 1
  %.not.i141 = icmp eq i64 %i.cm, 0
  br i1 %.not.i141, label %bb.aj, label %lean_inc.exit142

bb.aj:                                            ; preds = %lean_alloc_ctor.exit169
  %.val.i.i170 = load i32, ptr %5, align 4, !tbaa !11 ; 3 uses
  %i.cn = icmp sgt i32 %.val.i.i170, 0
  br i1 %i.cn, label %bb.ak, label %bb.al, !prof !12

bb.ak:                                            ; preds = %bb.aj
  %i.co = add nuw i32 %.val.i.i170, 1
  store i32 %i.co, ptr %5, align 4, !tbaa !11
  br label %lean_inc.exit142

bb.al:                                            ; preds = %bb.aj
  %.not.i.i171 = icmp eq i32 %.val.i.i170, 0
  br i1 %.not.i.i171, label %lean_inc.exit142, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit142

lean_inc.exit142:                                 ; preds = %bb.am, %bb.al, %bb.ak, %lean_alloc_ctor.exit169
  %.val.i.i173 = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.cq = icmp sgt i32 %.val.i.i173, 0
  br i1 %i.cq, label %bb.an, label %bb.ao, !prof !12

bb.an:                                            ; preds = %lean_inc.exit142
  %i.cr = add nuw i32 %.val.i.i173, 1
  store i32 %i.cr, ptr %4, align 4, !tbaa !11
  br label %lean_inc_ref.exit175

bb.ao:                                            ; preds = %lean_inc.exit142
  %.not.i.i174 = icmp eq i32 %.val.i.i173, 0
  br i1 %.not.i.i174, label %lean_inc_ref.exit175, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cs = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit175

lean_inc_ref.exit175:                             ; preds = %bb.an, %bb.ao, %bb.ap
  %i.ct = ptrtoint ptr %3 to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i140 = icmp eq i64 %i.cu, 0
  br i1 %.not.i140, label %bb.aq, label %lean_inc.exit

bb.aq:                                            ; preds = %lean_inc_ref.exit175
  %.val.i.i176 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.cv = icmp sgt i32 %.val.i.i176, 0
  br i1 %i.cv, label %bb.ar, label %bb.as, !prof !12

bb.ar:                                            ; preds = %bb.aq
  %i.cw = add nuw i32 %.val.i.i176, 1
  store i32 %i.cw, ptr %3, align 4, !tbaa !11
  br label %lean_inc.exit

bb.as:                                            ; preds = %bb.aq
  %.not.i.i177 = icmp eq i32 %.val.i.i176, 0
  br i1 %.not.i.i177, label %lean_inc.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cx = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.at, %bb.as, %bb.ar, %lean_inc_ref.exit175
  %i.cy = tail call ptr @lean_apply_6(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ca, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull inttoptr (i64 1 to ptr)) #4
  ret ptr %i.cy
}

declare ptr @l_Lean_Meta_Context_config(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Lean_Meta_TransparencyMode_lt(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noalias nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 8) %0, i32 noundef range(i32 0, 8) %1, i32 noundef range(i32 0, 20) %2) unnamed_addr #2 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8
  %narrow6 = add nuw nsw i32 %narrow, %2          ; 2 uses
  %i.b = zext nneg i32 %narrow6 to i64            ; 2 uses
  %i.c = and i64 %i.b, 248
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
  store i64 0, ptr %i.p, align 8, !tbaa !16
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

declare i64 @l_Lean_Meta_Context_configKey(ptr noundef) local_unnamed_addr #1

declare i64 @l_Lean_Meta_TransparencyMode_toUInt64(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lean_apply_6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_reduceEval___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_reduceEval___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i14 = icmp eq i64 %i.c, 0
  br i1 %.not.i14, label %bb.b, label %lean_dec.exit17

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !11
  br label %lean_dec.exit17

bb.d:                                             ; preds = %bb.b
  %.not.i.i15 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i15, label %lean_dec.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit17
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit12

bb.g:                                             ; preds = %lean_dec.exit17
  %.not.i11 = icmp eq i32 %i.g, 0
  br i1 %.not.i11, label %lean_dec_ref.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit12

lean_dec_ref.exit12:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i13 = icmp eq i64 %i.k, 0
  br i1 %.not.i13, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit12
  %i.l = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit12
  %i.o = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_reduceEval(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_reduceEval___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_reduceEval___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_reduceEval___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i15 = icmp eq i64 %i.c, 0
  br i1 %.not.i15, label %bb.b, label %lean_dec.exit18

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit18

bb.d:                                             ; preds = %bb.b
  %.not.i.i16 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i16, label %lean_dec.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit18
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !11
  br label %lean_dec_ref.exit13

bb.g:                                             ; preds = %lean_dec.exit18
  %.not.i12 = icmp eq i32 %i.g, 0
  br i1 %.not.i12, label %lean_dec_ref.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit13

lean_dec_ref.exit13:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i14 = icmp eq i64 %i.k, 0
  br i1 %.not.i14, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit13
  %i.l = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit13
  %i.o = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %4) #4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i31 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i31, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !11
  br label %lean_dec.exit30

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i.i28 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i28, label %lean_dec.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit30

lean_dec.exit30:                                  ; preds = %bb.e, %bb.f, %bb.g
  %i.j = tail call ptr @lean_st_ref_get(ptr noundef %2) #4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 4 uses
  %.val.i.i32 = load i32, ptr %i.l, align 4, !tbaa !11 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %lean_dec.exit30
  %i.n = add nuw i32 %.val.i.i32, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !11
  br label %lean_inc_ref.exit34

bb.i:                                             ; preds = %lean_dec.exit30
  %.not.i.i33 = icmp eq i32 %.val.i.i32, 0
  br i1 %.not.i.i33, label %lean_inc_ref.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit34

lean_inc_ref.exit34:                              ; preds = %bb.j, %bb.i, %bb.h
  %i.p = load i32, ptr %i.j, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %lean_inc_ref.exit34
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !11
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_inc_ref.exit34
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.l, %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 4 uses
  %.val.i.i35 = load i32, ptr %i.v, align 4, !tbaa !11 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.w, label %bb.n, label %bb.o, !prof !12

bb.n:                                             ; preds = %lean_dec.exit
  %i.x = add nuw i32 %.val.i.i35, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !11
  br label %lean_inc_ref.exit37

bb.o:                                             ; preds = %lean_dec.exit
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_ref.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit37

lean_inc_ref.exit37:                              ; preds = %bb.n, %bb.o, %bb.p
  %.val.i.i38 = load i32, ptr %i.t, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.z, label %bb.q, label %bb.r, !prof !12

bb.q:                                             ; preds = %lean_inc_ref.exit37
  %i.aa = add nuw i32 %.val.i.i38, 1
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !11
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
  store i32 1, ptr %i.ac, align 4, !tbaa !11
  store i32 262184, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.c, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #4
  %i.aj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.u, label %lean_alloc_ctor.exit41

bb.u:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit41:                           ; preds = %lean_alloc_ctor.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !11
  store i32 50462744, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !14
  tail call void @lean_inc_heartbeat() #4
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.v, label %lean_alloc_ctor.exit42

bb.v:                                             ; preds = %lean_alloc_ctor.exit41
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit42:                           ; preds = %lean_alloc_ctor.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !11
  store i32 65552, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !14
  ret ptr %i.ao
}

declare ptr @lean_st_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i13 = icmp eq i64 %i.c, 0
  br i1 %.not.i13, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i.i14 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i14, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit16
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit11

bb.g:                                             ; preds = %lean_dec.exit16
  %.not.i10 = icmp eq i32 %i.g, 0
  br i1 %.not.i10, label %lean_dec_ref.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit11

lean_dec_ref.exit11:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i12 = icmp eq i64 %i.k, 0
  br i1 %.not.i12, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit11
  %i.l = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit11
  %i.o = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 5 uses
  %i.c = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 5 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !11  ; 4 uses
  %i.f = icmp eq i32 %.val, 1                     ; 2 uses
  br i1 %i.f, label %lean_dec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i33 = icmp eq i64 %i.h, 0
  br i1 %.not.i33, label %bb.c, label %lean_inc.exit34

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !11 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !11
  br label %lean_inc.exit34

bb.e:                                             ; preds = %bb.c
  %.not.i.i35 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i35, label %lean_inc.exit34, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit34

lean_inc.exit34:                                  ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.l = icmp sgt i32 %.val, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %lean_inc.exit34
  %i.m = add nsw i32 %.val, -1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !11
  br label %lean_dec.exit

bb.h:                                             ; preds = %lean_inc.exit34
  %.not.i.i = icmp eq i32 %.val, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  %.031 = phi ptr [ %i.c, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.g ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.i ] ; 2 uses
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = and i64 %i.n, 1
  %.not.i32 = icmp eq i64 %i.o, 0
  br i1 %.not.i32, label %bb.j, label %lean_inc.exit

bb.j:                                             ; preds = %lean_dec.exit
  %.val.i.i36 = load i32, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i36, 0
  br i1 %i.p, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.q = add nuw i32 %.val.i.i36, 1
  store i32 %i.q, ptr %i.b, align 4, !tbaa !11
  br label %lean_inc.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i37 = icmp eq i32 %.val.i.i36, 0
  br i1 %.not.i.i37, label %lean_inc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit
  tail call void @lean_inc_heartbeat() #4
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_alloc_ctor.exit

bb.n:                                             ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 1, ptr %i.s, align 4, !tbaa !11
  store i32 131096, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.e, ptr %i.w, align 8, !tbaa !14
  br i1 %i.f, label %bb.o, label %bb.p

bb.o:                                             ; preds = %lean_alloc_ctor.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16777215
  %i.aa = or disjoint i32 %i.z, 16777216
  store i32 %i.aa, ptr %i.x, align 4
  br label %bb.r

bb.p:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #4
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.q, label %lean_alloc_ctor.exit39

bb.q:                                             ; preds = %bb.p
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit39:                           ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !11
  store i32 16842768, ptr %i.ad, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %lean_alloc_ctor.exit39
  %.031.sink = phi ptr [ %.031, %bb.o ], [ %i.ab, %lean_alloc_ctor.exit39 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.031.sink, i64 8
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !14
  ret ptr %.031.sink
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwError___at___00__private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i13 = icmp eq i64 %i.c, 0
  br i1 %.not.i13, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i.i14 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i14, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit16
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit11

bb.g:                                             ; preds = %lean_dec.exit16
  %.not.i10 = icmp eq i32 %i.g, 0
  br i1 %.not.i10, label %lean_dec_ref.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit11

lean_dec_ref.exit11:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i12 = icmp eq i64 %i.k, 0
  br i1 %.not.i12, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit11
  %i.l = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit11
  %i.o = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg___closed__1_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg___closed__1, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg___closed__1, ptr noundef nonnull @l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg___closed__1) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Lean_indentExpr(ptr noundef %0) #4
  tail call void @lean_inc_heartbeat() #4
  %i.f = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

end_hunk_0
begin_hunk_1_@l_Lean_Meta_instReduceEvalFVarId___lam__0:bb.a
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.ca, label %bb.cb, !prof !12

bb.ca:                                            ; preds = %bb.bz
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.q, align 8, !tbaa !11
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #4
  br label %bb.cd

bb.cd:                                            ; preds = %lean_inc.exit, %bb.cc, %bb.cb, %bb.ca
  tail call void @lean_inc_heartbeat() #4
  %i.dh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ce, label %lean_alloc_ctor.exit154

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit154:                          ; preds = %bb.cd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !11
  store i32 16842768, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.z, ptr %i.dk, align 8, !tbaa !14
  br label %lean_dec.exit101

lean_dec.exit101:                                 ; preds = %bb.bt, %bb.bh, %bb.av, %lean_alloc_ctor.exit154, %l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg.exit, %lean_alloc_ctor.exit150, %lean_alloc_ctor.exit
  %.5 = phi ptr [ %i.bp, %bb.av ], [ %i.ba, %l___private_Lean_Meta_ReduceEval_0__Lean_Meta_throwFailedToEval___redArg.exit ], [ %i.bp, %bb.bh ], [ %i.ci, %lean_alloc_ctor.exit ], [ %i.cu, %lean_alloc_ctor.exit150 ], [ %i.dh, %lean_alloc_ctor.exit154 ], [ %i.q, %bb.bt ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_instReduceEvalFVarId___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_instReduceEvalFVarId___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i13 = icmp eq i64 %i.c, 0
  br i1 %.not.i13, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !11
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i.i14 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i14, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %lean_dec.exit16
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit11

bb.g:                                             ; preds = %lean_dec.exit16
  %.not.i10 = icmp eq i32 %i.g, 0
  br i1 %.not.i10, label %lean_dec_ref.exit11, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit11

lean_dec_ref.exit11:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i12 = icmp eq i64 %i.k, 0
  br i1 %.not.i12, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit11
  %i.l = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit11
  %i.o = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Meta_ReduceEval(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
  %i.c = tail call ptr @runtime_initialize_Lean_Meta_Offset(i8 noundef zeroext %0) #4 ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val = load i32, ptr %i.d, align 4
  %.mask.i = and i32 %.val, -16777216
  %i.e = icmp eq i32 %.mask.i, 16777216
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %i.c, align 4, !tbaa !11   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !11
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
  store i32 1, ptr %.sink10, align 4, !tbaa !11
  store i32 65552, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.sink10, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.l, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ %.sink10, %.sink.split ]
  ret ptr %.0
}

declare ptr @runtime_initialize_Lean_Meta_Offset(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @meta_initialize_Lean_Meta_ReduceEval(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
  store i32 1, ptr %.sink6, align 4, !tbaa !11
  store i32 65552, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !14
  ret ptr %.sink6
}

; Function Attrs: nounwind uwtable
define ptr @initialize_Lean_Meta_ReduceEval(i8 noundef zeroext %0) local_unnamed_addr #0 {
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
  store i32 1, ptr %i.a, align 4, !tbaa !11
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !14
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Lean_Meta_Offset(i8 noundef zeroext %0) #4 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val18 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val18, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !11   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !11
  br label %lean_dec_ref.exit16

bb.e:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i32 %i.h, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #4
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @runtime_initialize_Lean_Meta_ReduceEval(i8 noundef zeroext %0) ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val17 = load i32, ptr %i.l, align 4
  %.mask.i19 = and i32 %.val17, -16777216
  %i.m = icmp eq i32 %.mask.i19, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit16
  %i.n = load i32, ptr %i.k, align 4, !tbaa !11   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !11
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
  store i32 1, ptr %.sink6.i, align 4, !tbaa !11
  store i32 65552, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !14
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink6.i) #4
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit16, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.e, %.lr.ph ], [ %i.k, %lean_dec_ref.exit16 ]
  ret ptr %.0
}

declare ptr @initialize_Lean_Meta_Offset(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @lean_nat_big_sub(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lean_nat_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_nat_big_mod(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lean_string_eq_cold(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_nat_big_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lean_big_usize_to_nat(i64 noundef) local_unnamed_addr #1

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #1

declare void @lean_inc_heartbeat() local_unnamed_addr #1

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #3

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_stringToMessageData(ptr noundef) local_unnamed_addr #1

declare void @lean_free_object(ptr noundef) local_unnamed_addr #1

declare ptr @lean_alloc_object(i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
end_hunk_1
