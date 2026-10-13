Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PullFunDecls?download=true
inline.NumInlined: 711
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@l_Lean_Compiler_LCNF_PullFunDecls_addToPull:bb.a
bb.ei:                                            ; preds = %bb.eh
  %i.gt = atomicrmw sub ptr %i.gn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit247

lean_inc.exit247:                                 ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee
  br i1 %.not.i278, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %lean_inc.exit247
  %i.gu = load i32, ptr %i.av, align 8, !tbaa !12 ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %bb.ej
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %i.av, align 8, !tbaa !12
  br label %bb.en

bb.el:                                            ; preds = %bb.ej
  %.not.i221 = icmp eq i32 %i.gu, 0
  br i1 %.not.i221, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #4
  br label %bb.en

bb.en:                                            ; preds = %lean_inc.exit247, %bb.ek, %bb.el, %bb.em
  tail call void @lean_inc_heartbeat() #4
  %i.gx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.eo, label %lean_alloc_ctor.exit334

bb.eo:                                            ; preds = %bb.en
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit334:                          ; preds = %bb.en
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 1, ptr %i.gx, align 4, !tbaa !12
  store i32 16842768, ptr %i.gz, align 4
  br label %lean_dec.exit197.sink.split

bb.ep:                                            ; preds = %lean_obj_tag.exit
  %i.ha = load i32, ptr %i.o, align 4, !tbaa !12  ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 1
  br i1 %i.hb, label %bb.eq, label %bb.er, !prof !13

bb.eq:                                            ; preds = %bb.ep
  %i.hc = add nsw i32 %i.ha, -1
  store i32 %i.hc, ptr %i.o, align 4, !tbaa !12
  br label %lean_dec_ref.exit232

bb.er:                                            ; preds = %bb.ep
  %.not.i231 = icmp eq i32 %i.ha, 0
  br i1 %.not.i231, label %lean_dec_ref.exit232, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec_ref.exit232

lean_dec_ref.exit232:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.hd = load i32, ptr %i.j, align 4, !tbaa !12  ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %lean_dec_ref.exit232
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %i.j, align 4, !tbaa !12
  br label %lean_dec_ref.exit230

bb.eu:                                            ; preds = %lean_dec_ref.exit232
  %.not.i229 = icmp eq i32 %i.hd, 0
  br i1 %.not.i229, label %lean_dec_ref.exit230, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #4
  br label %lean_dec_ref.exit230

lean_dec_ref.exit230:                             ; preds = %bb.et, %bb.eu, %bb.ev
  %i.hg = ptrtoint ptr %i.a to i64
  %i.hh = and i64 %i.hg, 1
  %.not.i190 = icmp eq i64 %i.hh, 0
  br i1 %.not.i190, label %bb.ew, label %lean_dec.exit191

bb.ew:                                            ; preds = %lean_dec_ref.exit230
  %i.hi = load i32, ptr %i.a, align 4, !tbaa !12  ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 1
  br i1 %i.hj, label %bb.ex, label %bb.ey, !prof !13

bb.ex:                                            ; preds = %bb.ew
  %i.hk = add nsw i32 %i.hi, -1
  store i32 %i.hk, ptr %i.a, align 4, !tbaa !12
  br label %lean_dec.exit191

bb.ey:                                            ; preds = %bb.ew
  %.not.i223 = icmp eq i32 %i.hi, 0
  br i1 %.not.i223, label %lean_dec.exit191, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit191

lean_dec.exit191:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %lean_dec_ref.exit230
  %i.hl = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %bb.fa, label %bb.fb, !prof !13

bb.fa:                                            ; preds = %lean_dec.exit191
  %i.hn = add nsw i32 %i.hl, -1
  store i32 %i.hn, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref.exit228

bb.fb:                                            ; preds = %lean_dec.exit191
  %.not.i227 = icmp eq i32 %i.hl, 0
  br i1 %.not.i227, label %lean_dec_ref.exit228, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit228

lean_dec_ref.exit228:                             ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.ho = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.x, align 8, !tbaa !12
  %i.hq = icmp eq i32 %.val, 1
  br i1 %i.hq, label %lean_dec.exit197, label %bb.fd

bb.fd:                                            ; preds = %lean_dec_ref.exit228
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = and i64 %i.hr, 1
  %.not.i245 = icmp eq i64 %i.hs, 0
  br i1 %.not.i245, label %bb.fe, label %lean_inc.exit

bb.fe:                                            ; preds = %bb.fd
  %.val.i.i335 = load i32, ptr %i.hp, align 4, !tbaa !12 ; 3 uses
  %i.ht = icmp sgt i32 %.val.i.i335, 0
  br i1 %i.ht, label %bb.ff, label %bb.fg, !prof !13

bb.ff:                                            ; preds = %bb.fe
  %i.hu = add nuw i32 %.val.i.i335, 1
  store i32 %i.hu, ptr %i.hp, align 4, !tbaa !12
  br label %lean_inc.exit

bb.fg:                                            ; preds = %bb.fe
  %.not.i.i336 = icmp eq i32 %.val.i.i335, 0
  br i1 %.not.i.i336, label %lean_inc.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.hv = atomicrmw sub ptr %i.hp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fd
  br i1 %.not.i272, label %bb.fi, label %bb.fm

bb.fi:                                            ; preds = %lean_inc.exit
  %i.hw = load i32, ptr %i.x, align 8, !tbaa !12  ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %bb.fj, label %bb.fk, !prof !13

bb.fj:                                            ; preds = %bb.fi
  %i.hy = add nsw i32 %i.hw, -1
  store i32 %i.hy, ptr %i.x, align 8, !tbaa !12
  br label %bb.fm

bb.fk:                                            ; preds = %bb.fi
  %.not.i225 = icmp eq i32 %i.hw, 0
  br i1 %.not.i225, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #4
  br label %bb.fm

bb.fm:                                            ; preds = %lean_inc.exit, %bb.fj, %bb.fk, %bb.fl
  tail call void @lean_inc_heartbeat() #4
  %i.hz = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 4 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.fn, label %lean_alloc_ctor.exit338

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit338:                          ; preds = %bb.fm
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store i32 1, ptr %i.hz, align 4, !tbaa !12
  store i32 16842768, ptr %i.ib, align 4
  br label %lean_dec.exit197.sink.split

lean_dec.exit197.sink.split:                      ; preds = %lean_alloc_ctor.exit326, %lean_alloc_ctor.exit334, %lean_alloc_ctor.exit330, %bb.cz, %lean_alloc_ctor.exit338, %lean_alloc_ctor.exit
  %.sink400 = phi ptr [ %i.ds, %lean_alloc_ctor.exit ], [ %i.hz, %lean_alloc_ctor.exit338 ], [ %i.gx, %lean_alloc_ctor.exit334 ], [ %i.fe, %bb.cz ], [ %i.fv, %lean_alloc_ctor.exit330 ], [ %.0178, %lean_alloc_ctor.exit326 ] ; 2 uses
  %.sink = phi ptr [ %i.di, %lean_alloc_ctor.exit ], [ %i.hp, %lean_alloc_ctor.exit338 ], [ %i.gn, %lean_alloc_ctor.exit334 ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ %i.fl, %lean_alloc_ctor.exit330 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit326 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink400, i64 8
  store ptr %.sink, ptr %i.ic, align 8, !tbaa !10
  br label %lean_dec.exit197

lean_dec.exit197:                                 ; preds = %lean_dec.exit197.sink.split, %lean_dec_ref.exit240, %lean_dec_ref.exit228, %lean_dec_ref.exit234, %lean_dec.exit199
  %.10 = phi ptr [ %i.dv, %lean_dec.exit199 ], [ %i.x, %lean_dec_ref.exit228 ], [ %i.bv, %lean_dec_ref.exit240 ], [ %i.av, %lean_dec_ref.exit234 ], [ %.sink400, %lean_dec.exit197.sink.split ]
  ret ptr %.10
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Compiler_LCNF_PullFunDecls_pull(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr noundef captures(none) %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0277 = phi ptr [ %0, %bb.a ], [ %.0277.be, %.backedge.backedge ] ; 49 uses
  %i.a = ptrtoint ptr %.0277 to i64               ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i413 = icmp eq i64 %i.b, 0                ; 3 uses
  br i1 %.not.i413, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %.backedge
  %i.e = getelementptr i8, ptr %.0277, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %bb.kd [
    i32 0, label %bb.d
    i32 1, label %bb.cj
    i32 2, label %bb.ec
    i32 4, label %bb.fv
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0277, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0277, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 5 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.n = tail call ptr @l_Lean_Compiler_LCNF_PullFunDecls_pull(ptr noundef nonnull %i.j, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 11 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i414 = icmp eq i64 %i.p, 0
  br i1 %.not.i414, label %bb.i, label %bb.h

bb.h:                                             ; preds = %lean_inc_ref.exit
  %i.q = lshr i64 %i.o, 1
  %i.r = trunc i64 %i.q to i32
  br label %lean_obj_tag.exit417

bb.i:                                             ; preds = %lean_inc_ref.exit
  %i.s = getelementptr i8, ptr %i.n, i64 4
  %.val.i416 = load i32, ptr %i.s, align 4
  %i.t = lshr i32 %.val.i416, 24
  br label %lean_obj_tag.exit417

lean_obj_tag.exit417:                             ; preds = %bb.h, %bb.i
  %.0.i415 = phi i32 [ %i.r, %bb.h ], [ %i.t, %bb.i ]
  %i.u = icmp eq i32 %.0.i415, 0
  br i1 %i.u, label %bb.j, label %bb.bw

bb.j:                                             ; preds = %lean_obj_tag.exit417
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10   ; 5 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 1
  %.not.i405 = icmp eq i64 %i.y, 0
  br i1 %.not.i405, label %bb.k, label %lean_inc.exit406

bb.k:                                             ; preds = %bb.j
  %.val.i.i418 = load i32, ptr %i.w, align 4, !tbaa !12 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i418, 0
  br i1 %i.z, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.aa = add nuw i32 %.val.i.i418, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !12
  br label %lean_inc.exit406

bb.m:                                             ; preds = %bb.k
  %.not.i.i419 = icmp eq i32 %.val.i.i418, 0
  br i1 %.not.i.i419, label %lean_inc.exit406, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit406

lean_inc.exit406:                                 ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.val.i421 = load i32, ptr %i.n, align 8, !tbaa !12 ; 4 uses
  %i.ac = icmp eq i32 %.val.i421, 1
  br i1 %i.ac, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %lean_inc.exit406
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !10  ; 4 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %.not.i.i422 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i422, label %bb.o, label %lean_dec.exit.i

bb.o:                                             ; preds = %.preheader.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !12 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i7.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %lean_inc.exit406
  %i.aj = icmp sgt i32 %.val.i421, 1
  br i1 %i.aj, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ak = add nsw i32 %.val.i421, -1
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i8.i = icmp eq i32 %.val.i421, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.t, %bb.u, %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10
  %i.an = tail call ptr @l_Lean_Compiler_LCNF_PullFunDecls_attachFVarDeps___redArg(ptr noundef %i.am, ptr noundef %i.w, ptr noundef %1) ; 12 uses
  %i.ao = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.ap = and i64 %i.ao, 1
  %.not.i423 = icmp eq i64 %i.ap, 0               ; 2 uses
  br i1 %.not.i423, label %bb.x, label %bb.w

bb.w:                                             ; preds = %lean_dec_ref_known.exit
  %i.aq = lshr i64 %i.ao, 1
  %i.ar = trunc i64 %i.aq to i32
  br label %lean_obj_tag.exit426

bb.x:                                             ; preds = %lean_dec_ref_known.exit
  %i.as = getelementptr i8, ptr %i.an, i64 4
  %.val.i425 = load i32, ptr %i.as, align 4
  %i.at = lshr i32 %.val.i425, 24
  br label %lean_obj_tag.exit426

lean_obj_tag.exit426:                             ; preds = %bb.w, %bb.x
  %.0.i424 = phi i32 [ %i.ar, %bb.w ], [ %i.at, %bb.x ]
  %i.au = icmp eq i32 %.0.i424, 0
  br i1 %i.au, label %bb.y, label %bb.bj

bb.y:                                             ; preds = %lean_obj_tag.exit426
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !10 ; 10 uses
  %.val412 = load i32, ptr %i.an, align 8, !tbaa !12
  %i.ax = icmp eq i32 %.val412, 1                 ; 3 uses
  br i1 %i.ax, label %lean_dec.exit342, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = and i64 %i.ay, 1
  %.not.i403 = icmp eq i64 %i.az, 0
  br i1 %.not.i403, label %bb.aa, label %lean_inc.exit404

bb.aa:                                            ; preds = %bb.z
  %.val.i.i427 = load i32, ptr %i.aw, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i427, 0
  br i1 %i.ba, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.bb = add nuw i32 %.val.i.i427, 1
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !12
  br label %lean_inc.exit404

end_hunk_0
begin_hunk_1_@l_Lean_Compiler_LCNF_PullFunDecls_pull:bb.a

bb.jb:                                            ; preds = %bb.iz
  %.not.i370 = icmp eq i32 %i.nh, 0
  br i1 %.not.i370, label %lean_dec.exit314, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ki) #4
  br label %lean_dec.exit314

lean_dec.exit314:                                 ; preds = %bb.jc, %bb.jb, %bb.ja, %lean_dec_ref.exit379
  %i.nk = load i32, ptr %i.kj, align 4, !tbaa !12 ; 3 uses
  %i.nl = icmp sgt i32 %i.nk, 1
  br i1 %i.nl, label %bb.jd, label %bb.je, !prof !13

bb.jd:                                            ; preds = %lean_dec.exit314
  %i.nm = add nsw i32 %i.nk, -1
  store i32 %i.nm, ptr %i.kj, align 4, !tbaa !12
  br label %lean_dec_ref.exit377

bb.je:                                            ; preds = %lean_dec.exit314
  %.not.i376 = icmp eq i32 %i.nk, 0
  br i1 %.not.i376, label %lean_dec_ref.exit377, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kj) #4
  br label %lean_dec_ref.exit377

lean_dec_ref.exit377:                             ; preds = %bb.jd, %bb.je, %bb.jf
  %i.nn = ptrtoint ptr %i.kk to i64
  %i.no = and i64 %i.nn, 1
  %.not.i311 = icmp eq i64 %i.no, 0
  br i1 %.not.i311, label %bb.jg, label %lean_dec.exit312

bb.jg:                                            ; preds = %lean_dec_ref.exit377
  %i.np = load i32, ptr %i.kk, align 4, !tbaa !12 ; 3 uses
  %i.nq = icmp sgt i32 %i.np, 1
  br i1 %i.nq, label %bb.jh, label %bb.ji, !prof !13

bb.jh:                                            ; preds = %bb.jg
  %i.nr = add nsw i32 %i.np, -1
  store i32 %i.nr, ptr %i.kk, align 4, !tbaa !12
  br label %lean_dec.exit312

bb.ji:                                            ; preds = %bb.jg
  %.not.i372 = icmp eq i32 %i.np, 0
  br i1 %.not.i372, label %lean_dec.exit312, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kk) #4
  br label %lean_dec.exit312

lean_dec.exit312:                                 ; preds = %bb.jj, %bb.ji, %bb.jh, %lean_dec_ref.exit377
  %.val.i549 = load i32, ptr %.0277, align 8, !tbaa !12 ; 4 uses
  %i.ns = icmp eq i32 %.val.i549, 1
  br i1 %i.ns, label %.preheader.i551, label %bb.jo

.preheader.i551:                                  ; preds = %lean_dec.exit312
  %i.nt = load ptr, ptr %i.ik, align 8, !tbaa !10 ; 4 uses
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = and i64 %i.nu, 1
  %.not.i.i553 = icmp eq i64 %i.nv, 0
  br i1 %.not.i.i553, label %bb.jk, label %lean_dec.exit.i554

bb.jk:                                            ; preds = %.preheader.i551
  %i.nw = load i32, ptr %i.nt, align 4, !tbaa !12 ; 3 uses
  %i.nx = icmp sgt i32 %i.nw, 1
  br i1 %i.nx, label %bb.jl, label %bb.jm, !prof !13

bb.jl:                                            ; preds = %bb.jk
  %i.ny = add nsw i32 %i.nw, -1
  store i32 %i.ny, ptr %i.nt, align 4, !tbaa !12
  br label %lean_dec.exit.i554

bb.jm:                                            ; preds = %bb.jk
  %.not.i7.i557 = icmp eq i32 %i.nw, 0
  br i1 %.not.i7.i557, label %lean_dec.exit.i554, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nt) #4
  br label %lean_dec.exit.i554

lean_dec.exit.i554:                               ; preds = %bb.jn, %bb.jm, %bb.jl, %.preheader.i551
  tail call void @lean_free_object(ptr noundef nonnull %.0277) #4
  br label %lean_dec_ref_known.exit558

bb.jo:                                            ; preds = %lean_dec.exit312
  %i.nz = icmp sgt i32 %.val.i549, 1
  br i1 %i.nz, label %bb.jp, label %bb.jq, !prof !13

bb.jp:                                            ; preds = %bb.jo
  %i.oa = add nsw i32 %.val.i549, -1
  store i32 %i.oa, ptr %.0277, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit558

bb.jq:                                            ; preds = %bb.jo
  %.not.i8.i550 = icmp eq i32 %.val.i549, 0
  br i1 %.not.i8.i550, label %lean_dec_ref_known.exit558, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0277) #4
  br label %lean_dec_ref_known.exit558

lean_dec_ref_known.exit558:                       ; preds = %lean_dec.exit.i554, %bb.jp, %bb.jq, %bb.jr
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.ko, align 8, !tbaa !12
  %i.od = icmp eq i32 %.val, 1
  br i1 %i.od, label %lean_dec_ref_known.exit442, label %bb.js

bb.js:                                            ; preds = %lean_dec_ref_known.exit558
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = and i64 %i.oe, 1
  %.not.i388 = icmp eq i64 %i.of, 0
  br i1 %.not.i388, label %bb.jt, label %lean_inc.exit

bb.jt:                                            ; preds = %bb.js
  %.val.i.i559 = load i32, ptr %i.oc, align 4, !tbaa !12 ; 3 uses
  %i.og = icmp sgt i32 %.val.i.i559, 0
  br i1 %i.og, label %bb.ju, label %bb.jv, !prof !13

bb.ju:                                            ; preds = %bb.jt
  %i.oh = add nuw i32 %.val.i.i559, 1
  store i32 %i.oh, ptr %i.oc, align 4, !tbaa !12
  br label %lean_inc.exit

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i560 = icmp eq i32 %.val.i.i559, 0
  br i1 %.not.i.i560, label %lean_inc.exit, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.oi = atomicrmw sub ptr %i.oc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.js
  br i1 %.not.i538, label %bb.jx, label %bb.kb

bb.jx:                                            ; preds = %lean_inc.exit
  %i.oj = load i32, ptr %i.ko, align 8, !tbaa !12 ; 3 uses
  %i.ok = icmp sgt i32 %i.oj, 1
  br i1 %i.ok, label %bb.jy, label %bb.jz, !prof !13

bb.jy:                                            ; preds = %bb.jx
  %i.ol = add nsw i32 %i.oj, -1
  store i32 %i.ol, ptr %i.ko, align 8, !tbaa !12
  br label %bb.kb

bb.jz:                                            ; preds = %bb.jx
  %.not.i374 = icmp eq i32 %i.oj, 0
  br i1 %.not.i374, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ko) #4
  br label %bb.kb

bb.kb:                                            ; preds = %lean_inc.exit, %bb.jy, %bb.jz, %bb.ka
  tail call void @lean_inc_heartbeat() #4
  %i.om = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %bb.kc, label %lean_alloc_ctor.exit562

bb.kc:                                            ; preds = %bb.kb
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit562:                          ; preds = %bb.kb
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  store i32 1, ptr %i.om, align 4, !tbaa !12
  store i32 16842768, ptr %i.oo, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store ptr %i.oc, ptr %i.op, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit442

bb.kd:                                            ; preds = %lean_obj_tag.exit
  tail call void @lean_inc_heartbeat() #4
  %i.oq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.ke, label %lean_alloc_ctor.exit563

bb.ke:                                            ; preds = %bb.kd
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit563:                          ; preds = %bb.kd
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  store i32 1, ptr %i.oq, align 4, !tbaa !12
  store i32 65552, ptr %i.os, align 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store ptr %.0277, ptr %i.ot, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit442

lean_dec_ref_known.exit442:                       ; preds = %lean_dec_ref.exit385, %lean_alloc_ctor.exit519, %lean_dec_ref.exit387, %lean_alloc_ctor.exit, %lean_dec_ref_known.exit558, %bb.ci, %bb.ch, %bb.cg, %lean_dec.exit.i448.1, %bb.bv, %bb.bu, %bb.bt, %lean_dec.exit.i438.1, %lean_alloc_ctor.exit546, %bb.ir, %bb.hz, %bb.ia, %lean_alloc_ctor.exit562, %bb.bb, %bb.bc, %bb.bh, %bb.bi, %lean_alloc_ctor.exit563
  %.20 = phi ptr [ %i.oq, %lean_alloc_ctor.exit563 ], [ %i.ci, %bb.bi ], [ %i.ko, %lean_dec_ref_known.exit558 ], [ %i.fw, %lean_alloc_ctor.exit ], [ %i.an, %bb.bv ], [ %i.n, %bb.ci ], [ %i.cc, %bb.bc ], [ %.0299, %bb.bb ], [ %.0299, %bb.bh ], [ %i.mw, %lean_alloc_ctor.exit546 ], [ %i.mb, %bb.ia ], [ %.0290, %bb.hz ], [ %.0290, %bb.ir ], [ %i.om, %lean_alloc_ctor.exit562 ], [ %i.an, %lean_dec.exit.i438.1 ], [ %i.an, %bb.bt ], [ %i.an, %bb.bu ], [ %i.n, %lean_dec.exit.i448.1 ], [ %i.n, %bb.cg ], [ %i.n, %bb.ch ], [ %i.eq, %lean_dec_ref.exit387 ], [ %i.ha, %lean_dec_ref.exit385 ], [ %i.ig, %lean_alloc_ctor.exit519 ]
  ret ptr %.20
}

declare ptr @l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_updateFunDeclImp___redArg(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Compiler_LCNF_FunDecl_collectUsed(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_BasicAux_0__mapMonoMImp_go___at___00Lean_Compiler_LCNF_PullFunDecls_pull_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, ptr noundef captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  br label %lean_dec.exit167

lean_dec.exit167:                                 ; preds = %lean_dec.exit167.backedge, %bb.a
  %.0135 = phi ptr [ %1, %bb.a ], [ %.0135.be, %lean_dec.exit167.backedge ] ; 20 uses
  %.0131 = phi ptr [ %0, %bb.a ], [ %.0131.be, %lean_dec.exit167.backedge ] ; 23 uses
  %i.a = getelementptr i8, ptr %.0135, i64 8
  %.0135.val = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = shl i64 %.0135.val, 1
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = ptrtoint ptr %.0131 to i64               ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i218 = icmp eq i64 %i.f, 0                ; 7 uses
  br i1 %.not.i218, label %lean_nat_lt.exit, label %lean_nat_lt.exit.thread, !prof !17

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit167
  %i.g = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0131, ptr noundef nonnull %i.d) #4
  br i1 %i.g, label %bb.g, label %bb.b

lean_nat_lt.exit.thread:                          ; preds = %lean_dec.exit167
  %.not = icmp ult ptr %.0131, %i.d
  br i1 %.not, label %bb.g, label %lean_dec.exit181

bb.b:                                             ; preds = %lean_nat_lt.exit
  %i.h = load i32, ptr %.0131, align 4, !tbaa !12 ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %.0131, align 4, !tbaa !12
  br label %lean_dec.exit181

bb.d:                                             ; preds = %bb.b
  %.not.i182 = icmp eq i32 %i.h, 0
  br i1 %.not.i182, label %lean_dec.exit181, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0131) #4
  br label %lean_dec.exit181

lean_dec.exit181:                                 ; preds = %lean_nat_lt.exit.thread, %bb.e, %bb.d, %bb.c
  tail call void @lean_inc_heartbeat() #4
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %lean_dec.exit177.thread296.sink.split

bb.f:                                             ; preds = %lean_dec.exit181
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.g:                                             ; preds = %lean_nat_lt.exit.thread, %lean_nat_lt.exit
  %i.m = lshr i64 %i.e, 1                         ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0135, i64 24
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10   ; 13 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not.i223 = icmp eq i64 %i.r, 0
  br i1 %.not.i223, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i64 %i.q, 1
  %i.t = trunc i64 %i.s to i32
  br label %lean_obj_tag.exit

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.p, i64 4
  %.val.i = load i32, ptr %i.u, align 4
  %i.v = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.h, %bb.i
  %.0.i224 = phi i32 [ %i.t, %bb.h ], [ %i.v, %bb.i ]
  %i.w = icmp eq i32 %.0.i224, 0
  br i1 %i.w, label %bb.j, label %bb.cg

bb.j:                                             ; preds = %lean_obj_tag.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 4 uses
  %.val.i.i = load i32, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.ac = add nuw i32 %.val.i.i, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = atomicrmw sub ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.k, %bb.l, %bb.m
  %i.ae = tail call ptr @l_Lean_Compiler_LCNF_PullFunDecls_pull(ptr noundef nonnull %i.aa, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 13 uses
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not.i225 = icmp eq i64 %i.ag, 0               ; 2 uses
  br i1 %.not.i225, label %bb.o, label %bb.n

bb.n:                                             ; preds = %lean_inc_ref.exit
  %i.ah = lshr i64 %i.af, 1
  %i.ai = trunc i64 %i.ah to i32
  br label %lean_obj_tag.exit228

bb.o:                                             ; preds = %lean_inc_ref.exit
  %i.aj = getelementptr i8, ptr %i.ae, i64 4
  %.val.i227 = load i32, ptr %i.aj, align 4
  %i.ak = lshr i32 %.val.i227, 24
  br label %lean_obj_tag.exit228

lean_obj_tag.exit228:                             ; preds = %bb.n, %bb.o
  %.0.i226 = phi i32 [ %i.ai, %bb.n ], [ %i.ak, %bb.o ]
  %i.al = icmp eq i32 %.0.i226, 0
  br i1 %i.al, label %bb.p, label %bb.bn

bb.p:                                             ; preds = %lean_obj_tag.exit228
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10 ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i216 = icmp eq i64 %i.ap, 0
  br i1 %.not.i216, label %bb.q, label %lean_inc.exit217

bb.q:                                             ; preds = %bb.p
  %.val.i.i229 = load i32, ptr %i.an, align 4, !tbaa !12 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i229, 0
  br i1 %i.aq, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ar = add nuw i32 %.val.i.i229, 1
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !12
  br label %lean_inc.exit217

bb.s:                                             ; preds = %bb.q
  %.not.i.i230 = icmp eq i32 %.val.i.i229, 0
  br i1 %.not.i.i230, label %lean_inc.exit217, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = atomicrmw sub ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit217

lean_inc.exit217:                                 ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %.val.i232 = load i32, ptr %i.ae, align 8, !tbaa !12 ; 4 uses
  %i.at = icmp eq i32 %.val.i232, 1
  br i1 %i.at, label %.preheader.i, label %bb.y

.preheader.i:                                     ; preds = %lean_inc.exit217
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !10 ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 1
  %.not.i.i233 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i233, label %bb.u, label %lean_dec.exit.i

bb.u:                                             ; preds = %.preheader.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.w:                                             ; preds = %bb.u
  %.not.i7.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.x, %bb.w, %bb.v, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref_known.exit

bb.y:                                             ; preds = %lean_inc.exit217
  %i.ba = icmp sgt i32 %.val.i232, 1
  br i1 %i.ba, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bb = add nsw i32 %.val.i232, -1
  store i32 %i.bb, ptr %i.ae, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i8.i = icmp eq i32 %.val.i232, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref_known.exit

end_hunk_1
