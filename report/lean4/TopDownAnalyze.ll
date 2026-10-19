Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/TopDownAnalyze?download=true
inline.NumInlined: 5864
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@l_Lean_PrettyPrinter_Delaborator_isSimpleHOFun:bb.a
.preheader.i:                                     ; preds = %lean_inc.exit78
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !12   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 1
  %.not.i.i111 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i111, label %bb.l, label %lean_dec.exit.i

bb.l:                                             ; preds = %.preheader.i
  %i.w = load i32, ptr %i.t, align 4, !tbaa !14   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.t, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.n:                                             ; preds = %bb.l
  %.not.i7.i = icmp eq i32 %i.w, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.o, %bb.n, %bb.m, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #9
  br label %lean_dec_ref_known.exit.preheader

bb.p:                                             ; preds = %lean_inc.exit78
  %i.z = icmp sgt i32 %.val.i110, 1
  br i1 %i.z, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.aa = add nsw i32 %.val.i110, -1
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit.preheader

bb.r:                                             ; preds = %bb.p
  %.not.i8.i = icmp eq i32 %.val.i110, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit.preheader, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #9
  br label %lean_dec_ref_known.exit.preheader

lean_dec_ref_known.exit.preheader:                ; preds = %lean_dec.exit.i, %bb.q, %bb.r, %bb.s
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec_ref_known.exit.preheader, %bb.v
  %.0.i112 = phi ptr [ %i.aj, %bb.v ], [ %0, %lean_dec_ref_known.exit.preheader ] ; 4 uses
  %i.ab = ptrtoint ptr %.0.i112 to i64            ; 2 uses
  %i.ac = and i64 %i.ab, 1
  %.not.i.i113 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %lean_dec_ref_known.exit
  %i.ad = lshr i64 %i.ab, 1
  %i.ae = trunc i64 %i.ad to i32
  br label %lean_obj_tag.exit.i

bb.u:                                             ; preds = %lean_dec_ref_known.exit
  %i.af = getelementptr i8, ptr %.0.i112, i64 4
  %.val.i.i114 = load i32, ptr %i.af, align 4
  %i.ag = lshr i32 %.val.i.i114, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.ae, %bb.t ], [ %i.ag, %bb.u ]
  %i.ah = icmp eq i32 %.0.i.i, 6
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %lean_obj_tag.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i112, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.w:                                             ; preds = %lean_obj_tag.exit.i
  %i.ak = tail call zeroext i8 @l_Lean_Expr_hasLooseBVars(ptr noundef %.0.i112) #9
  tail call void @lean_inc_heartbeat() #9
  %i.al = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 13 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.x, label %l_Lean_PrettyPrinter_Delaborator_isNonConstFun___redArg.exit

bb.x:                                             ; preds = %bb.w
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

l_Lean_PrettyPrinter_Delaborator_isNonConstFun___redArg.exit: ; preds = %bb.w
  %i.an = zext i8 %i.ak to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !14
  store i32 65552, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !12
  %i.at = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %l_Lean_PrettyPrinter_Delaborator_isNonConstFun___redArg.exit
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit104

bb.z:                                             ; preds = %l_Lean_PrettyPrinter_Delaborator_isNonConstFun___redArg.exit
  %.not.i103 = icmp eq i32 %i.at, 0
  br i1 %.not.i103, label %lean_dec_ref.exit104, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit104

lean_dec_ref.exit104:                             ; preds = %bb.y, %bb.z, %bb.aa
  %i.aw = and i64 %i.n, 510
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %lean_dec_ref.exit104
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !12 ; 7 uses
  %.val105 = load i32, ptr %i.al, align 8, !tbaa !14
  %i.az = icmp eq i32 %.val105, 1                 ; 3 uses
  %.pre = ptrtoint ptr %i.ay to i64               ; 2 uses
  %.pre122 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.az, label %lean_dec.exit89, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i = icmp eq i64 %.pre122, 0
  br i1 %.not.i, label %bb.ad, label %lean_inc.exit

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i115 = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i115, 0
  br i1 %i.ba, label %bb.ae, label %bb.af, !prof !15

bb.ae:                                            ; preds = %bb.ad
  %i.bb = add nuw i32 %.val.i.i115, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !14
  br label %lean_inc.exit

bb.af:                                            ; preds = %bb.ad
  %.not.i.i116 = icmp eq i32 %.val.i.i115, 0
  br i1 %.not.i.i116, label %lean_inc.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ac, %bb.ae, %bb.af, %bb.ag
  %i.bd = load i32, ptr %i.al, align 8, !tbaa !14 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %lean_inc.exit
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.al, align 8, !tbaa !14
  br label %lean_dec.exit89

bb.ai:                                            ; preds = %lean_inc.exit
  %.not.i90 = icmp eq i32 %i.bd, 0
  br i1 %.not.i90, label %lean_dec.exit89, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #9
  br label %lean_dec.exit89

lean_dec.exit89:                                  ; preds = %bb.ab, %bb.ah, %bb.ai, %bb.aj
  %.076 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aj ], [ %i.al, %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.ah ], [ inttoptr (i64 1 to ptr), %bb.ai ] ; 4 uses
  %.not.i86 = icmp eq i64 %.pre122, 0
  br i1 %.not.i86, label %bb.ak, label %lean_dec.exit87

bb.ak:                                            ; preds = %lean_dec.exit89
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec.exit87

bb.am:                                            ; preds = %bb.ak
  %.not.i91 = icmp eq i32 %i.bg, 0
  br i1 %.not.i91, label %lean_dec.exit87, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #9
  br label %lean_dec.exit87

lean_dec.exit87:                                  ; preds = %bb.an, %bb.am, %bb.al, %lean_dec.exit89
  %i.bj = and i64 %.pre, 510
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %lean_dec.exit87
  br i1 %.not.i77, label %bb.ap, label %lean_dec.exit85

bb.ap:                                            ; preds = %bb.ao
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !14  ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.aq, label %bb.ar, !prof !15

bb.aq:                                            ; preds = %bb.ap
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.m, align 4, !tbaa !14
  br label %lean_dec.exit85

bb.ar:                                            ; preds = %bb.ap
  %.not.i93 = icmp eq i32 %i.bl, 0
  br i1 %.not.i93, label %lean_dec.exit85, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #9
  br label %lean_dec.exit85

lean_dec.exit85:                                  ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  br i1 %i.az, label %bb.at, label %bb.au

bb.at:                                            ; preds = %lean_dec.exit85
  %i.bo = getelementptr inbounds nuw i8, ptr %.076, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.bo, align 8, !tbaa !12
  br label %lean_dec_ref.exit102

bb.au:                                            ; preds = %lean_dec.exit85
  tail call void @lean_inc_heartbeat() #9
  %i.bp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.av, label %lean_alloc_ctor.exit

bb.av:                                            ; preds = %bb.au
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.au
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 1, ptr %i.bp, align 4, !tbaa !14
  store i32 65552, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.bs, align 8, !tbaa !12
  br label %lean_dec_ref.exit102

bb.aw:                                            ; preds = %lean_dec.exit87
  br i1 %i.az, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.bt = getelementptr inbounds nuw i8, ptr %.076, i64 8
  store ptr %i.m, ptr %i.bt, align 8, !tbaa !12
  br label %lean_dec_ref.exit102

bb.ay:                                            ; preds = %bb.aw
  tail call void @lean_inc_heartbeat() #9
  %i.bu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.az, label %lean_alloc_ctor.exit118

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit118:                          ; preds = %bb.ay
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 1, ptr %i.bu, align 4, !tbaa !14
  store i32 65552, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.m, ptr %i.bx, align 8, !tbaa !12
  br label %lean_dec_ref.exit102

bb.ba:                                            ; preds = %lean_dec_ref.exit104
  br i1 %.not.i77, label %bb.bb, label %lean_dec.exit83

bb.bb:                                            ; preds = %bb.ba
  %i.by = load i32, ptr %i.m, align 4, !tbaa !14  ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.ca = add nsw i32 %i.by, -1
  store i32 %i.ca, ptr %i.m, align 4, !tbaa !14
  br label %lean_dec.exit83

bb.bd:                                            ; preds = %bb.bb
  %.not.i95 = icmp eq i32 %i.by, 0
  br i1 %.not.i95, label %lean_dec.exit83, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #9
  br label %lean_dec.exit83

lean_dec.exit83:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba
  %.val = load i32, ptr %i.al, align 8, !tbaa !14 ; 4 uses
  %i.cb = icmp eq i32 %.val, 1
  br i1 %i.cb, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %lean_dec.exit83
  %i.cc = load ptr, ptr %i.as, align 8, !tbaa !12 ; 4 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = and i64 %i.cd, 1
  %.not.i80 = icmp eq i64 %i.ce, 0
  br i1 %.not.i80, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !14 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.bh, label %bb.bi, !prof !15

bb.bh:                                            ; preds = %bb.bg
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %i.cc, align 4, !tbaa !14
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bg
  %.not.i97 = icmp eq i32 %i.cf, 0
  br i1 %.not.i97, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #9
  br label %bb.bo

bb.bk:                                            ; preds = %lean_dec.exit83
  %i.ci = icmp sgt i32 %.val, 1
  br i1 %i.ci, label %bb.bl, label %bb.bm, !prof !15

bb.bl:                                            ; preds = %bb.bk
  %i.cj = add nsw i32 %.val, -1
  store i32 %i.cj, ptr %i.al, align 8, !tbaa !14
  br label %lean_dec.exit81

bb.bm:                                            ; preds = %bb.bk
  %.not.i99 = icmp eq i32 %.val, 0
  br i1 %.not.i99, label %lean_dec.exit81, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #9
  br label %lean_dec.exit81

bb.bo:                                            ; preds = %bb.bf, %bb.bh, %bb.bi, %bb.bj
  store ptr inttoptr (i64 1 to ptr), ptr %i.as, align 8, !tbaa !12
  br label %lean_dec_ref.exit102

lean_dec.exit81:                                  ; preds = %bb.bn, %bb.bm, %bb.bl
  tail call void @lean_inc_heartbeat() #9
  %i.ck = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.bp, label %lean_alloc_ctor.exit119

bb.bp:                                            ; preds = %lean_dec.exit81
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit119:                          ; preds = %lean_dec.exit81
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !14
  store i32 65552, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cn, align 8, !tbaa !12
  br label %lean_dec_ref.exit102

bb.bq:                                            ; preds = %lean_obj_tag.exit
  %i.co = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %bb.bq
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit102

bb.bs:                                            ; preds = %bb.bq
  %.not.i101 = icmp eq i32 %i.co, 0
  br i1 %.not.i101, label %lean_dec_ref.exit102, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit102

lean_dec_ref.exit102:                             ; preds = %bb.bt, %bb.bs, %bb.br, %lean_alloc_ctor.exit118, %bb.ax, %lean_alloc_ctor.exit, %bb.at, %lean_alloc_ctor.exit119, %bb.bo
  %.6 = phi ptr [ %i.ck, %lean_alloc_ctor.exit119 ], [ %i.bu, %lean_alloc_ctor.exit118 ], [ %i.bp, %lean_alloc_ctor.exit ], [ %.076, %bb.at ], [ %.076, %bb.ax ], [ %i.al, %bb.bo ], [ %i.d, %bb.br ], [ %i.d, %bb.bs ], [ %i.d, %bb.bt ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PrettyPrinter_Delaborator_isSimpleHOFun___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_PrettyPrinter_Delaborator_isSimpleHOFun(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
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
end_hunk_0
begin_hunk_1_@l_Lean_Meta_checkpointDefEq___at___00Lean_PrettyPrinter_Delaborator_TopDownAnalyze_checkpointDefEq_spec__0:bb.a

lean_inc.exit440:                                 ; preds = %bb.em, %bb.el, %bb.ek, %bb.ei
  %.val.i668 = load i32, ptr %i.hn, align 8, !tbaa !14 ; 4 uses
  %i.ic = icmp eq i32 %.val.i668, 1
  br i1 %i.ic, label %.preheader.i670, label %bb.er

.preheader.i670:                                  ; preds = %lean_inc.exit440
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !12 ; 4 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = and i64 %i.ie, 1
  %.not.i.i672 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i672, label %bb.en, label %lean_dec.exit.i673

bb.en:                                            ; preds = %.preheader.i670
  %i.ig = load i32, ptr %i.id, align 4, !tbaa !14 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.eo, label %bb.ep, !prof !15

bb.eo:                                            ; preds = %bb.en
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !14
  br label %lean_dec.exit.i673

bb.ep:                                            ; preds = %bb.en
  %.not.i7.i677 = icmp eq i32 %i.ig, 0
  br i1 %.not.i7.i677, label %lean_dec.exit.i673, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.id) #9
  br label %lean_dec.exit.i673

lean_dec.exit.i673:                               ; preds = %bb.eq, %bb.ep, %bb.eo, %.preheader.i670
  tail call void @lean_free_object(ptr noundef nonnull %i.hn) #9
  br label %lean_dec_ref_known.exit678

bb.er:                                            ; preds = %lean_inc.exit440
  %i.ij = icmp sgt i32 %.val.i668, 1
  br i1 %i.ij, label %bb.es, label %bb.et, !prof !15

bb.es:                                            ; preds = %bb.er
  %i.ik = add nsw i32 %.val.i668, -1
  store i32 %i.ik, ptr %i.hn, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit678

bb.et:                                            ; preds = %bb.er
  %.not.i8.i669 = icmp eq i32 %.val.i668, 0
  br i1 %.not.i8.i669, label %lean_dec_ref_known.exit678, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hn) #9
  br label %lean_dec_ref_known.exit678

lean_dec_ref_known.exit678:                       ; preds = %lean_dec.exit.i673, %bb.es, %bb.et, %bb.eu
  %i.il = and i64 %i.hx, 510
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.ev, label %bb.gc

bb.ev:                                            ; preds = %lean_dec_ref_known.exit678
  br i1 %.not.i441, label %bb.ew, label %lean_dec.exit507

bb.ew:                                            ; preds = %bb.ev
  %i.in = load i32, ptr %i.gy, align 4, !tbaa !14 ; 3 uses
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %bb.ex, label %bb.ey, !prof !15

bb.ex:                                            ; preds = %bb.ew
  %i.ip = add nsw i32 %i.in, -1
  store i32 %i.ip, ptr %i.gy, align 4, !tbaa !14
  br label %lean_dec.exit507

bb.ey:                                            ; preds = %bb.ew
  %.not.i543 = icmp eq i32 %i.in, 0
  br i1 %.not.i543, label %lean_dec.exit507, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #9
  br label %lean_dec.exit507

lean_dec.exit507:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %i.iq = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %4, ptr noundef %6) #9 ; 9 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = and i64 %i.ir, 1
  %.not.i679 = icmp eq i64 %i.is, 0               ; 2 uses
  br i1 %.not.i679, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %lean_dec.exit507
  %i.it = lshr i64 %i.ir, 1
  %i.iu = trunc i64 %i.it to i32
  br label %lean_obj_tag.exit682

bb.fb:                                            ; preds = %lean_dec.exit507
  %i.iv = getelementptr i8, ptr %i.iq, i64 4
  %.val.i681 = load i32, ptr %i.iv, align 4
  %i.iw = lshr i32 %.val.i681, 24
  br label %lean_obj_tag.exit682

lean_obj_tag.exit682:                             ; preds = %bb.fa, %bb.fb
  %.0.i680 = phi i32 [ %i.iu, %bb.fa ], [ %i.iw, %bb.fb ]
  %i.ix = icmp eq i32 %.0.i680, 0
  br i1 %i.ix, label %bb.fc, label %bb.ft

bb.fc:                                            ; preds = %lean_obj_tag.exit682
  %i.iy = ptrtoint ptr %.0362 to i64
  %i.iz = and i64 %i.iy, 1
  %.not.i683 = icmp eq i64 %i.iz, 0
  br i1 %.not.i683, label %bb.fd, label %lean_del_object.exit684

bb.fd:                                            ; preds = %bb.fc
  tail call void @lean_free_object(ptr noundef nonnull %.0362) #9
  br label %lean_del_object.exit684

lean_del_object.exit684:                          ; preds = %bb.fc, %bb.fd
  %i.ja = ptrtoint ptr %i.j to i64
  %i.jb = and i64 %i.ja, 1
  %.not.i504 = icmp eq i64 %i.jb, 0
  br i1 %.not.i504, label %bb.fe, label %lean_dec.exit505

bb.fe:                                            ; preds = %lean_del_object.exit684
  %i.jc = load i32, ptr %i.j, align 4, !tbaa !14  ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.ff, label %bb.fg, !prof !15

bb.ff:                                            ; preds = %bb.fe
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %i.j, align 4, !tbaa !14
  br label %lean_dec.exit505

bb.fg:                                            ; preds = %bb.fe
  %.not.i545 = icmp eq i32 %i.jc, 0
  br i1 %.not.i545, label %lean_dec.exit505, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #9
  br label %lean_dec.exit505

lean_dec.exit505:                                 ; preds = %bb.fh, %bb.fg, %bb.ff, %lean_del_object.exit684
  %.val601 = load i32, ptr %i.iq, align 4, !tbaa !14 ; 4 uses
  %i.jf = icmp eq i32 %.val601, 1
  br i1 %i.jf, label %bb.fi, label %bb.fn

bb.fi:                                            ; preds = %lean_dec.exit505
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !12 ; 4 uses
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = and i64 %i.ji, 1
  %.not.i502 = icmp eq i64 %i.jj, 0
  br i1 %.not.i502, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.jk = load i32, ptr %i.jh, align 4, !tbaa !14 ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %bb.fk, label %bb.fl, !prof !15

bb.fk:                                            ; preds = %bb.fj
  %i.jm = add nsw i32 %i.jk, -1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !14
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fj
  %.not.i547 = icmp eq i32 %i.jk, 0
  br i1 %.not.i547, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jh) #9
  br label %bb.fs

bb.fn:                                            ; preds = %lean_dec.exit505
  br i1 %.not.i679, label %bb.fo, label %lean_dec.exit503

bb.fo:                                            ; preds = %bb.fn
  %i.jn = icmp sgt i32 %.val601, 1
  br i1 %i.jn, label %bb.fp, label %bb.fq, !prof !15

bb.fp:                                            ; preds = %bb.fo
  %i.jo = add nsw i32 %.val601, -1
  store i32 %i.jo, ptr %i.iq, align 4, !tbaa !14
  br label %lean_dec.exit503

bb.fq:                                            ; preds = %bb.fo
  %.not.i549 = icmp eq i32 %.val601, 0
  br i1 %.not.i549, label %lean_dec.exit503, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iq) #9
  br label %lean_dec.exit503

bb.fs:                                            ; preds = %bb.fi, %bb.fk, %bb.fl, %bb.fm
  store ptr %i.hw, ptr %i.jg, align 8, !tbaa !12
  br label %lean_dec.exit515

lean_dec.exit503:                                 ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fn
  %i.jp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.hw, ptr %i.jq, align 8, !tbaa !12
  br label %lean_dec.exit515

bb.ft:                                            ; preds = %lean_obj_tag.exit682
  br i1 %.not.i439, label %bb.fu, label %lean_dec.exit499

bb.fu:                                            ; preds = %bb.ft
  %i.jr = load i32, ptr %i.hw, align 4, !tbaa !14 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.fv, label %bb.fw, !prof !15

bb.fv:                                            ; preds = %bb.fu
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %i.hw, align 4, !tbaa !14
  br label %lean_dec.exit499

bb.fw:                                            ; preds = %bb.fu
  %.not.i551 = icmp eq i32 %i.jr, 0
  br i1 %.not.i551, label %lean_dec.exit499, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #9
  br label %lean_dec.exit499

lean_dec.exit499:                                 ; preds = %bb.fx, %bb.fw, %bb.fv, %bb.ft
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !12 ; 5 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = and i64 %i.jw, 1
  %.not.i437 = icmp eq i64 %i.jx, 0
  br i1 %.not.i437, label %bb.fy, label %lean_inc.exit438

bb.fy:                                            ; preds = %lean_dec.exit499
  %.val.i.i685 = load i32, ptr %i.jv, align 4, !tbaa !14 ; 3 uses
  %i.jy = icmp sgt i32 %.val.i.i685, 0
  br i1 %i.jy, label %bb.fz, label %bb.ga, !prof !15

bb.fz:                                            ; preds = %bb.fy
  %i.jz = add nuw i32 %.val.i.i685, 1
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !14
  br label %lean_inc.exit438

bb.ga:                                            ; preds = %bb.fy
  %.not.i.i686 = icmp eq i32 %.val.i.i685, 0
  br i1 %.not.i.i686, label %lean_inc.exit438, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ka = atomicrmw sub ptr %i.jv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit438

lean_inc.exit438:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_dec.exit499
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.iq, i32 noundef 1)
  br label %lean_dec_ref_known.exit750.thread

bb.gc:                                            ; preds = %lean_dec_ref_known.exit678
  br i1 %.not.i439, label %bb.gd, label %lean_dec.exit497

bb.gd:                                            ; preds = %bb.gc
  %i.kb = load i32, ptr %i.hw, align 4, !tbaa !14 ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 1
  br i1 %i.kc, label %bb.ge, label %bb.gf, !prof !15

bb.ge:                                            ; preds = %bb.gd
  %i.kd = add nsw i32 %i.kb, -1
  store i32 %i.kd, ptr %i.hw, align 4, !tbaa !14
  br label %lean_dec.exit497

bb.gf:                                            ; preds = %bb.gd
  %.not.i553 = icmp eq i32 %i.kb, 0
  br i1 %.not.i553, label %lean_dec.exit497, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #9
  br label %lean_dec.exit497

lean_dec.exit497:                                 ; preds = %bb.gg, %bb.gf, %bb.ge, %bb.gc
  %i.ke = tail call ptr @l_Lean_Meta_processPostponed(i8 noundef zeroext %2, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #9 ; 13 uses
  %i.kf = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kg = and i64 %i.kf, 1
  %.not.i688 = icmp eq i64 %i.kg, 0               ; 2 uses
  br i1 %.not.i688, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %lean_dec.exit497
  %i.kh = lshr i64 %i.kf, 1
  %i.ki = trunc i64 %i.kh to i32
  br label %lean_obj_tag.exit691

bb.gi:                                            ; preds = %lean_dec.exit497
  %i.kj = getelementptr i8, ptr %i.ke, i64 4
  %.val.i690 = load i32, ptr %i.kj, align 4
  %i.kk = lshr i32 %.val.i690, 24
  br label %lean_obj_tag.exit691

lean_obj_tag.exit691:                             ; preds = %bb.gh, %bb.gi
  %.0.i689 = phi i32 [ %i.ki, %bb.gh ], [ %i.kk, %bb.gi ]
  %i.kl = icmp eq i32 %.0.i689, 0
  br i1 %i.kl, label %bb.gj, label %bb.jt

bb.gj:                                            ; preds = %lean_obj_tag.exit691
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !12 ; 8 uses
  %.val600 = load i32, ptr %i.ke, align 8, !tbaa !14
  %i.ko = icmp eq i32 %.val600, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.kn to i64               ; 3 uses
  br i1 %i.ko, label %lean_dec.exit495, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.kp = and i64 %.pre, 1
  %.not.i435 = icmp eq i64 %i.kp, 0
  br i1 %.not.i435, label %bb.gl, label %lean_inc.exit436

bb.gl:                                            ; preds = %bb.gk
  %.val.i.i692 = load i32, ptr %i.kn, align 4, !tbaa !14 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.kq, label %bb.gm, label %bb.gn, !prof !15

bb.gm:                                            ; preds = %bb.gl
  %i.kr = add nuw i32 %.val.i.i692, 1
  store i32 %i.kr, ptr %i.kn, align 4, !tbaa !14
  br label %lean_inc.exit436

bb.gn:                                            ; preds = %bb.gl
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc.exit436, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ks = atomicrmw sub ptr %i.kn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit436

lean_inc.exit436:                                 ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gk
  br i1 %.not.i688, label %bb.gp, label %lean_dec.exit495

bb.gp:                                            ; preds = %lean_inc.exit436
  %i.kt = load i32, ptr %i.ke, align 8, !tbaa !14 ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.gq, label %bb.gr, !prof !15

bb.gq:                                            ; preds = %bb.gp
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %i.ke, align 8, !tbaa !14
  br label %lean_dec.exit495

bb.gr:                                            ; preds = %bb.gp
  %.not.i555 = icmp eq i32 %i.kt, 0
  br i1 %.not.i555, label %lean_dec.exit495, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ke) #9
  br label %lean_dec.exit495

lean_dec.exit495:                                 ; preds = %bb.gj, %lean_inc.exit436, %bb.gq, %bb.gr, %bb.gs
  %.0384 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gs ], [ inttoptr (i64 1 to ptr), %lean_inc.exit436 ], [ inttoptr (i64 1 to ptr), %bb.gq ], [ inttoptr (i64 1 to ptr), %bb.gr ], [ %i.ke, %bb.gj ] ; 3 uses
  %i.kw = and i64 %.pre, 510
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %bb.gt, label %bb.ib

bb.gt:                                            ; preds = %lean_dec.exit495
  %i.ky = ptrtoint ptr %.0384 to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i695 = icmp eq i64 %i.kz, 0
  br i1 %.not.i695, label %bb.gu, label %lean_del_object.exit696

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_free_object(ptr noundef nonnull %.0384) #9
  br label %lean_del_object.exit696

lean_del_object.exit696:                          ; preds = %bb.gt, %bb.gu
  %i.la = and i64 %.pre, 1
  %.not.i492 = icmp eq i64 %i.la, 0
  br i1 %.not.i492, label %bb.gv, label %lean_dec.exit493

bb.gv:                                            ; preds = %lean_del_object.exit696
  %i.lb = load i32, ptr %i.kn, align 4, !tbaa !14 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.gw, label %bb.gx, !prof !15

bb.gw:                                            ; preds = %bb.gv
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %i.kn, align 4, !tbaa !14
  br label %lean_dec.exit493

bb.gx:                                            ; preds = %bb.gv
  %.not.i557 = icmp eq i32 %i.lb, 0
  br i1 %.not.i557, label %lean_dec.exit493, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kn) #9
  br label %lean_dec.exit493

lean_dec.exit493:                                 ; preds = %bb.gy, %bb.gx, %bb.gw, %lean_del_object.exit696
  br i1 %.not.i441, label %bb.gz, label %lean_dec.exit491

bb.gz:                                            ; preds = %lean_dec.exit493
  %i.le = load i32, ptr %i.gy, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.ha, label %bb.hb, !prof !15

bb.ha:                                            ; preds = %bb.gz
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.gy, align 4, !tbaa !14
  br label %lean_dec.exit491

bb.hb:                                            ; preds = %bb.gz
  %.not.i559 = icmp eq i32 %i.le, 0
  br i1 %.not.i559, label %lean_dec.exit491, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #9
  br label %lean_dec.exit491

lean_dec.exit491:                                 ; preds = %bb.hc, %bb.hb, %bb.ha, %lean_dec.exit493
  %i.lh = tail call ptr @l_Lean_Meta_SavedState_restore___redArg(ptr noundef %i.j, ptr noundef %4, ptr noundef %6) #9 ; 9 uses
  %i.li = ptrtoint ptr %i.lh to i64               ; 2 uses
  %i.lj = and i64 %i.li, 1
  %.not.i697 = icmp eq i64 %i.lj, 0               ; 2 uses
  br i1 %.not.i697, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %lean_dec.exit491
  %i.lk = lshr i64 %i.li, 1
  %i.ll = trunc i64 %i.lk to i32
  br label %lean_obj_tag.exit700

bb.he:                                            ; preds = %lean_dec.exit491
  %i.lm = getelementptr i8, ptr %i.lh, i64 4
  %.val.i699 = load i32, ptr %i.lm, align 4
  %i.ln = lshr i32 %.val.i699, 24
  br label %lean_obj_tag.exit700

lean_obj_tag.exit700:                             ; preds = %bb.hd, %bb.he
  %.0.i698 = phi i32 [ %i.ll, %bb.hd ], [ %i.ln, %bb.he ]
  %i.lo = icmp eq i32 %.0.i698, 0
  br i1 %i.lo, label %bb.hf, label %bb.hw

bb.hf:                                            ; preds = %lean_obj_tag.exit700
  %i.lp = ptrtoint ptr %.0362 to i64
  %i.lq = and i64 %i.lp, 1
  %.not.i701 = icmp eq i64 %i.lq, 0
  br i1 %.not.i701, label %bb.hg, label %lean_del_object.exit702

bb.hg:                                            ; preds = %bb.hf
  tail call void @lean_free_object(ptr noundef nonnull %.0362) #9
  br label %lean_del_object.exit702

lean_del_object.exit702:                          ; preds = %bb.hf, %bb.hg
  %i.lr = ptrtoint ptr %i.j to i64
  %i.ls = and i64 %i.lr, 1
  %.not.i488 = icmp eq i64 %i.ls, 0
  br i1 %.not.i488, label %bb.hh, label %lean_dec.exit489

bb.hh:                                            ; preds = %lean_del_object.exit702
  %i.lt = load i32, ptr %i.j, align 4, !tbaa !14  ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.hi, label %bb.hj, !prof !15

bb.hi:                                            ; preds = %bb.hh
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %i.j, align 4, !tbaa !14
  br label %lean_dec.exit489

bb.hj:                                            ; preds = %bb.hh
  %.not.i561 = icmp eq i32 %i.lt, 0
  br i1 %.not.i561, label %lean_dec.exit489, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #9
  br label %lean_dec.exit489

lean_dec.exit489:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %lean_del_object.exit702
  %.val599 = load i32, ptr %i.lh, align 4, !tbaa !14 ; 4 uses
  %i.lw = icmp eq i32 %.val599, 1
  br i1 %i.lw, label %bb.hl, label %bb.hq

bb.hl:                                            ; preds = %lean_dec.exit489
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !12 ; 4 uses
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = and i64 %i.lz, 1
  %.not.i486 = icmp eq i64 %i.ma, 0
  br i1 %.not.i486, label %bb.hm, label %bb.hv

bb.hm:                                            ; preds = %bb.hl
  %i.mb = load i32, ptr %i.ly, align 4, !tbaa !14 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.hn, label %bb.ho, !prof !15

bb.hn:                                            ; preds = %bb.hm
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.ly, align 4, !tbaa !14
  br label %bb.hv

bb.ho:                                            ; preds = %bb.hm
  %.not.i563 = icmp eq i32 %i.mb, 0
  br i1 %.not.i563, label %bb.hv, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ly) #9
  br label %bb.hv

bb.hq:                                            ; preds = %lean_dec.exit489
  br i1 %.not.i697, label %bb.hr, label %lean_dec.exit487

bb.hr:                                            ; preds = %bb.hq
  %i.me = icmp sgt i32 %.val599, 1
  br i1 %i.me, label %bb.hs, label %bb.ht, !prof !15

bb.hs:                                            ; preds = %bb.hr
  %i.mf = add nsw i32 %.val599, -1
  store i32 %i.mf, ptr %i.lh, align 4, !tbaa !14
  br label %lean_dec.exit487

bb.ht:                                            ; preds = %bb.hr
  %.not.i565 = icmp eq i32 %.val599, 0
  br i1 %.not.i565, label %lean_dec.exit487, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lh) #9
  br label %lean_dec.exit487

bb.hv:                                            ; preds = %bb.hl, %bb.hn, %bb.ho, %bb.hp
  store ptr inttoptr (i64 1 to ptr), ptr %i.lx, align 8, !tbaa !12
  br label %lean_dec.exit515

lean_dec.exit487:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  %i.mg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.mh, align 8, !tbaa !12
  br label %lean_dec.exit515

bb.hw:                                            ; preds = %lean_obj_tag.exit700
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !12 ; 5 uses
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = and i64 %i.mk, 1
  %.not.i433 = icmp eq i64 %i.ml, 0
  br i1 %.not.i433, label %bb.hx, label %lean_inc.exit434

bb.hx:                                            ; preds = %bb.hw
  %.val.i.i703 = load i32, ptr %i.mj, align 4, !tbaa !14 ; 3 uses
  %i.mm = icmp sgt i32 %.val.i.i703, 0
  br i1 %i.mm, label %bb.hy, label %bb.hz, !prof !15

bb.hy:                                            ; preds = %bb.hx
  %i.mn = add nuw i32 %.val.i.i703, 1
  store i32 %i.mn, ptr %i.mj, align 4, !tbaa !14
  br label %lean_inc.exit434

bb.hz:                                            ; preds = %bb.hx
  %.not.i.i704 = icmp eq i32 %.val.i.i703, 0
  br i1 %.not.i.i704, label %lean_inc.exit434, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.mo = atomicrmw sub ptr %i.mj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit434

lean_inc.exit434:                                 ; preds = %bb.ia, %bb.hz, %bb.hy, %bb.hw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.lh, i32 noundef 1)
  br label %lean_dec_ref_known.exit750.thread

bb.ib:                                            ; preds = %lean_dec.exit495
  %i.mp = ptrtoint ptr %.0362 to i64
  %i.mq = and i64 %i.mp, 1
  %.not.i706 = icmp eq i64 %i.mq, 0
  br i1 %.not.i706, label %bb.ic, label %lean_del_object.exit707

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_free_object(ptr noundef nonnull %.0362) #9
  br label %lean_del_object.exit707

lean_del_object.exit707:                          ; preds = %bb.ib, %bb.ic
  %i.mr = ptrtoint ptr %i.j to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i482 = icmp eq i64 %i.ms, 0
  br i1 %.not.i482, label %bb.id, label %lean_dec.exit483

bb.id:                                            ; preds = %lean_del_object.exit707
  %i.mt = load i32, ptr %i.j, align 4, !tbaa !14  ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ie, label %bb.if, !prof !15

end_hunk_1
begin_hunk_2_@l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_applyFunBinderHeuristic_core:bb.a

lean_dec.exit251:                                 ; preds = %bb.cr, %bb.cq, %bb.cp, %lean_inc.exit214
  %i.ev = tail call ptr @lean_alloc_object(i64 noundef 64) #9 ; 11 uses
  store i32 1, ptr %i.ev, align 4, !tbaa !14
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4
  %i.ey = and i32 %i.ex, 65535
  %i.ez = or disjoint i32 %i.ey, -184549376
  store i32 %i.ez, ptr %i.ew, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr @l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_applyFunBinderHeuristic_core___boxed, ptr %i.fa, align 8, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i16 14, ptr %i.fb, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 18
  store i16 5, ptr %i.fc, align 2, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store ptr %0, ptr %i.fd, align 8, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store ptr %1, ptr %i.fe, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store ptr %2, ptr %i.ff, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  store ptr %3, ptr %i.fg, align 8, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  store ptr %i.cf, ptr %i.fh, align 8, !tbaa !12
  %i.fi = tail call ptr @lean_alloc_object(i64 noundef 32) #9 ; 7 uses
  store i32 1, ptr %i.fi, align 4, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = and i32 %i.fk, 65535
  %i.fm = or disjoint i32 %i.fl, -184549376
  store i32 %i.fm, ptr %i.fj, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBindingBody___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_applyFunBinderHeuristic_core_spec__1___redArg___lam__0___boxed, ptr %i.fn, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i16 11, ptr %i.fo, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 18
  store i16 1, ptr %i.fp, align 2, !tbaa !18
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %i.ev, ptr %i.fq, align 8, !tbaa !12
  %i.fr = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBindingBody_x27___at___00Lean_PrettyPrinter_Delaborator_SubExpr_withBindingBody___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_applyFunBinderHeuristic_core_spec__1_spec__1___redArg(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @l_Lean_PrettyPrinter_Delaborator_SubExpr_withBindingBody___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_applyFunBinderHeuristic_core_spec__1___redArg___closed__0_value, ptr noundef nonnull %i.fi, ptr noundef %5, ptr noundef %i.em, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) ; 12 uses
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = and i64 %i.fs, 1
  %.not.i384 = icmp eq i64 %i.ft, 0               ; 2 uses
  br i1 %.not.i384, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %lean_dec.exit251
  %i.fu = lshr i64 %i.fs, 1
  %i.fv = trunc i64 %i.fu to i32
  br label %lean_obj_tag.exit387

bb.ct:                                            ; preds = %lean_dec.exit251
  %i.fw = getelementptr i8, ptr %i.fr, i64 4
  %.val.i386 = load i32, ptr %i.fw, align 4
  %i.fx = lshr i32 %.val.i386, 24
  br label %lean_obj_tag.exit387

lean_obj_tag.exit387:                             ; preds = %bb.cs, %bb.ct
  %.0.i385 = phi i32 [ %i.fv, %bb.cs ], [ %i.fx, %bb.ct ]
  %i.fy = icmp eq i32 %.0.i385, 0
  br i1 %i.fy, label %bb.cu, label %bb.en

bb.cu:                                            ; preds = %lean_obj_tag.exit387
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !12 ; 11 uses
  %.val320 = load i32, ptr %i.fr, align 8, !tbaa !14
  %i.gb = icmp eq i32 %.val320, 1                 ; 2 uses
  br i1 %i.gb, label %lean_dec.exit249, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = and i64 %i.gc, 1
  %.not.i211 = icmp eq i64 %i.gd, 0
  br i1 %.not.i211, label %bb.cw, label %lean_inc.exit212

bb.cw:                                            ; preds = %bb.cv
  %.val.i.i388 = load i32, ptr %i.ga, align 4, !tbaa !14 ; 3 uses
  %i.ge = icmp sgt i32 %.val.i.i388, 0
  br i1 %i.ge, label %bb.cx, label %bb.cy, !prof !15

bb.cx:                                            ; preds = %bb.cw
  %i.gf = add nuw i32 %.val.i.i388, 1
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !14
  br label %lean_inc.exit212

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i389 = icmp eq i32 %.val.i.i388, 0
  br i1 %.not.i.i389, label %lean_inc.exit212, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gg = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit212

lean_inc.exit212:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  br i1 %.not.i384, label %bb.da, label %lean_dec.exit249

bb.da:                                            ; preds = %lean_inc.exit212
  %i.gh = load i32, ptr %i.fr, align 8, !tbaa !14 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.db, label %bb.dc, !prof !15

bb.db:                                            ; preds = %bb.da
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %i.fr, align 8, !tbaa !14
  br label %lean_dec.exit249

bb.dc:                                            ; preds = %bb.da
  %.not.i261 = icmp eq i32 %i.gh, 0
  br i1 %.not.i261, label %lean_dec.exit249, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #9
  br label %lean_dec.exit249

lean_dec.exit249:                                 ; preds = %lean_inc.exit212, %bb.db, %bb.dc, %bb.dd, %bb.cu
  %.0204 = phi ptr [ %i.fr, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit212 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !12 ; 12 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !12 ; 5 uses
  %.val319 = load i32, ptr %i.ga, align 8, !tbaa !14
  %i.go = icmp eq i32 %.val319, 1                 ; 2 uses
  br i1 %i.go, label %lean_dec.exit247, label %bb.de

bb.de:                                            ; preds = %lean_dec.exit249
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i209 = icmp eq i64 %i.gq, 0
  br i1 %.not.i209, label %bb.df, label %lean_inc.exit210

bb.df:                                            ; preds = %bb.de
  %.val.i.i391 = load i32, ptr %i.gn, align 4, !tbaa !14 ; 3 uses
  %i.gr = icmp sgt i32 %.val.i.i391, 0
  br i1 %i.gr, label %bb.dg, label %bb.dh, !prof !15

bb.dg:                                            ; preds = %bb.df
  %i.gs = add nuw i32 %.val.i.i391, 1
  store i32 %i.gs, ptr %i.gn, align 4, !tbaa !14
  br label %lean_inc.exit210

bb.dh:                                            ; preds = %bb.df
  %.not.i.i392 = icmp eq i32 %.val.i.i391, 0
  br i1 %.not.i.i392, label %lean_inc.exit210, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.gt = atomicrmw sub ptr %i.gn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit210

lean_inc.exit210:                                 ; preds = %bb.di, %bb.dh, %bb.dg, %bb.de
  %i.gu = ptrtoint ptr %i.gl to i64
  %i.gv = and i64 %i.gu, 1
  %.not.i207 = icmp eq i64 %i.gv, 0
  br i1 %.not.i207, label %bb.dj, label %lean_inc.exit208

bb.dj:                                            ; preds = %lean_inc.exit210
  %.val.i.i394 = load i32, ptr %i.gl, align 4, !tbaa !14 ; 3 uses
  %i.gw = icmp sgt i32 %.val.i.i394, 0
  br i1 %i.gw, label %bb.dk, label %bb.dl, !prof !15

bb.dk:                                            ; preds = %bb.dj
  %i.gx = add nuw i32 %.val.i.i394, 1
  store i32 %i.gx, ptr %i.gl, align 4, !tbaa !14
  br label %lean_inc.exit208

bb.dl:                                            ; preds = %bb.dj
  %.not.i.i395 = icmp eq i32 %.val.i.i394, 0
  br i1 %.not.i.i395, label %lean_inc.exit208, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gy = atomicrmw sub ptr %i.gl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit208

lean_inc.exit208:                                 ; preds = %lean_inc.exit210, %bb.dk, %bb.dl, %bb.dm
  %i.gz = load i32, ptr %i.ga, align 8, !tbaa !14 ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 1
  br i1 %i.ha, label %bb.dn, label %bb.do, !prof !15

bb.dn:                                            ; preds = %lean_inc.exit208
  %i.hb = add nsw i32 %i.gz, -1
  store i32 %i.hb, ptr %i.ga, align 8, !tbaa !14
  br label %lean_dec.exit247

bb.do:                                            ; preds = %lean_inc.exit208
  %.not.i263 = icmp eq i32 %i.gz, 0
  br i1 %.not.i263, label %lean_dec.exit247, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #9
  br label %lean_dec.exit247

lean_dec.exit247:                                 ; preds = %bb.dn, %bb.do, %bb.dp, %lean_dec.exit249
  %.0202 = phi ptr [ %i.ga, %lean_dec.exit249 ], [ inttoptr (i64 1 to ptr), %bb.dp ], [ inttoptr (i64 1 to ptr), %bb.do ], [ inttoptr (i64 1 to ptr), %bb.dn ] ; 2 uses
  %i.hc = and i64 %i.eg, 510
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.dq, label %bb.dz

bb.dq:                                            ; preds = %lean_dec.exit247
  br i1 %.not.i215, label %bb.dr, label %lean_dec.exit245

bb.dr:                                            ; preds = %bb.dq
  %i.he = load i32, ptr %i.ef, align 4, !tbaa !14 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.ds, label %bb.dt, !prof !15

bb.ds:                                            ; preds = %bb.dr
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %i.ef, align 4, !tbaa !14
  br label %lean_dec.exit245

bb.dt:                                            ; preds = %bb.dr
  %.not.i265 = icmp eq i32 %i.he, 0
  br i1 %.not.i265, label %lean_dec.exit245, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ef) #9
  br label %lean_dec.exit245

lean_dec.exit245:                                 ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dq
  %i.hh = ptrtoint ptr %i.gl to i64               ; 5 uses
  %i.hi = and i64 %i.hh, 1
  %.not.i242 = icmp eq i64 %i.hi, 0
  br i1 %.not.i242, label %bb.dv, label %lean_dec.exit243

bb.dv:                                            ; preds = %lean_dec.exit245
  %i.hj = load i32, ptr %i.gl, align 4, !tbaa !14 ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, 1
  br i1 %i.hk, label %bb.dw, label %bb.dx, !prof !15

bb.dw:                                            ; preds = %bb.dv
  %i.hl = add nsw i32 %i.hj, -1
  store i32 %i.hl, ptr %i.gl, align 4, !tbaa !14
  br label %lean_dec.exit243

bb.dx:                                            ; preds = %bb.dv
  %.not.i267 = icmp eq i32 %i.hj, 0
  br i1 %.not.i267, label %lean_dec.exit243, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gl) #9
  br label %lean_dec.exit243

bb.dz:                                            ; preds = %lean_dec.exit247
  %i.hm = ptrtoint ptr %i.gl to i64
  %i.hn = and i64 %i.hm, 1
  %.not.i240 = icmp eq i64 %i.hn, 0
  br i1 %.not.i240, label %bb.ea, label %lean_dec.exit241

bb.ea:                                            ; preds = %bb.dz
  %i.ho = load i32, ptr %i.gl, align 4, !tbaa !14 ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.eb, label %bb.ec, !prof !15

bb.eb:                                            ; preds = %bb.ea
  %i.hq = add nsw i32 %i.ho, -1
  store i32 %i.hq, ptr %i.gl, align 4, !tbaa !14
  br label %lean_dec.exit241

bb.ec:                                            ; preds = %bb.ea
  %.not.i269 = icmp eq i32 %i.ho, 0
  br i1 %.not.i269, label %lean_dec.exit241, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gl) #9
  br label %lean_dec.exit241

lean_dec.exit241:                                 ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.dz
  br i1 %.not.i215, label %bb.ee, label %lean_dec.exit243

bb.ee:                                            ; preds = %lean_dec.exit241
  %i.hr = load i32, ptr %i.ef, align 4, !tbaa !14 ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 1
  br i1 %i.hs, label %bb.ef, label %bb.eg, !prof !15

bb.ef:                                            ; preds = %bb.ee
  %i.ht = add nsw i32 %i.hr, -1
  store i32 %i.ht, ptr %i.ef, align 4, !tbaa !14
  br label %lean_dec.exit243

bb.eg:                                            ; preds = %bb.ee
  %.not.i271 = icmp eq i32 %i.hr, 0
  br i1 %.not.i271, label %lean_dec.exit243, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ef) #9
  br label %lean_dec.exit243

lean_dec.exit243:                                 ; preds = %lean_dec.exit241, %bb.ef, %bb.eg, %bb.eh, %lean_dec.exit245, %bb.dw, %bb.dx, %bb.dy
  %.0200.in.in = phi i64 [ %i.hh, %lean_dec.exit245 ], [ %i.hh, %bb.dy ], [ %i.hh, %bb.dx ], [ %i.hh, %bb.dw ], [ %i.eg, %bb.eh ], [ %i.eg, %bb.eg ], [ %i.eg, %bb.ef ], [ %i.eg, %lean_dec.exit241 ]
  %i.hu = and i64 %.0200.in.in, 510
  %i.hv = or disjoint i64 %i.hu, 1
  %i.hw = inttoptr i64 %i.hv to ptr               ; 2 uses
  br i1 %i.go, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %lean_dec.exit243
  %i.hx = getelementptr inbounds nuw i8, ptr %.0202, i64 8
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !12
  br label %bb.ek

bb.ej:                                            ; preds = %lean_dec.exit243
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.hw, ptr %i.hz, align 8, !tbaa !12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store ptr %i.gn, ptr %i.ia, align 8, !tbaa !12
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.0199 = phi ptr [ %.0202, %bb.ei ], [ %i.hy, %bb.ej ] ; 2 uses
  br i1 %i.gb, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.ib = getelementptr inbounds nuw i8, ptr %.0204, i64 8
  store ptr %.0199, ptr %i.ib, align 8, !tbaa !12
  br label %lean_dec.exit237

bb.em:                                            ; preds = %bb.ek
  %i.ic = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %.0199, ptr %i.id, align 8, !tbaa !12
  br label %lean_dec.exit237

bb.en:                                            ; preds = %lean_obj_tag.exit387
  br i1 %.not.i215, label %bb.eo, label %lean_dec.exit237

bb.eo:                                            ; preds = %bb.en
  %i.ie = load i32, ptr %i.ef, align 4, !tbaa !14 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.ep, label %bb.eq, !prof !15

bb.ep:                                            ; preds = %bb.eo
  %i.ig = add nsw i32 %i.ie, -1
  store i32 %i.ig, ptr %i.ef, align 4, !tbaa !14
  br label %lean_dec.exit237

bb.eq:                                            ; preds = %bb.eo
  %.not.i273 = icmp eq i32 %i.ie, 0
  br i1 %.not.i273, label %lean_dec.exit237, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ef) #9
  br label %lean_dec.exit237

bb.es:                                            ; preds = %lean_obj_tag.exit363
  %i.ih = load i32, ptr %i.cf, align 4, !tbaa !14 ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.et, label %bb.eu, !prof !15

bb.et:                                            ; preds = %bb.es
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %i.cf, align 4, !tbaa !14
  br label %lean_dec_ref.exit318

bb.eu:                                            ; preds = %bb.es
  %.not.i317 = icmp eq i32 %i.ih, 0
  br i1 %.not.i317, label %lean_dec_ref.exit318, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #9
  br label %lean_dec_ref.exit318

lean_dec_ref.exit318:                             ; preds = %bb.et, %bb.eu, %bb.ev
  %i.ik = ptrtoint ptr %3 to i64
  %i.il = and i64 %i.ik, 1
  %.not.i234 = icmp eq i64 %i.il, 0
  br i1 %.not.i234, label %bb.ew, label %lean_dec.exit235

bb.ew:                                            ; preds = %lean_dec_ref.exit318
  %i.im = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.ex, label %bb.ey, !prof !15

bb.ex:                                            ; preds = %bb.ew
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit235

bb.ey:                                            ; preds = %bb.ew
  %.not.i275 = icmp eq i32 %i.im, 0
  br i1 %.not.i275, label %lean_dec.exit235, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit235

lean_dec.exit235:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %lean_dec_ref.exit318
  %i.ip = load i32, ptr %2, align 4, !tbaa !14    ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fa, label %bb.fb, !prof !15

bb.fa:                                            ; preds = %lean_dec.exit235
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %2, align 4, !tbaa !14
  br label %lean_dec_ref.exit316

bb.fb:                                            ; preds = %lean_dec.exit235
  %.not.i315 = icmp eq i32 %i.ip, 0
  br i1 %.not.i315, label %lean_dec_ref.exit316, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec_ref.exit316

lean_dec_ref.exit316:                             ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.is = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.it = icmp sgt i32 %i.is, 1
  br i1 %i.it, label %bb.fd, label %bb.fe, !prof !15

end_hunk_2
begin_hunk_3_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_collectBottomUps_spec__0___redArg:bb.a

bb.av:                                            ; preds = %lean_dec_ref_known.exit
  %i.cf = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.ch = add nsw i32 %i.cf, -1
  store i32 %i.ch, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec.exit278

bb.ax:                                            ; preds = %bb.av
  %.not.i290 = icmp eq i32 %i.cf, 0
  br i1 %.not.i290, label %lean_dec.exit278, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #9
  br label %lean_dec.exit278

lean_dec.exit278:                                 ; preds = %bb.ay, %bb.ax, %bb.aw, %lean_dec_ref_known.exit
  %i.ci = and i64 %i.br, 510
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.hg, label %bb.az

bb.az:                                            ; preds = %lean_dec.exit278
  %i.ck = lshr i64 %i.i, 1                        ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ck ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12 ; 5 uses
  %.val.i.i346 = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.cn = icmp sgt i32 %.val.i.i346, 0
  br i1 %i.cn, label %bb.ba, label %bb.bb, !prof !15

bb.ba:                                            ; preds = %bb.az
  %i.co = add nuw i32 %.val.i.i346, 1
  store i32 %i.co, ptr %4, align 4, !tbaa !14
  br label %lean_inc_ref.exit348

bb.bb:                                            ; preds = %bb.az
  %.not.i.i347 = icmp eq i32 %.val.i.i346, 0
  br i1 %.not.i.i347, label %lean_inc_ref.exit348, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cp = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit348

lean_inc_ref.exit348:                             ; preds = %bb.ba, %bb.bb, %bb.bc
  br i1 %.not.i326, label %bb.bd, label %lean_inc.exit253

bb.bd:                                            ; preds = %lean_inc_ref.exit348
  %.val.i.i349 = load i32, ptr %.0186, align 4, !tbaa !14 ; 3 uses
  %i.cq = icmp sgt i32 %.val.i.i349, 0
  br i1 %i.cq, label %bb.be, label %bb.bf, !prof !15

bb.be:                                            ; preds = %bb.bd
  %i.cr = add nuw i32 %.val.i.i349, 1
  store i32 %i.cr, ptr %.0186, align 4, !tbaa !14
  br label %lean_inc.exit253

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i350 = icmp eq i32 %.val.i.i349, 0
  br i1 %.not.i.i350, label %lean_inc.exit253, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cs = atomicrmw sub ptr %.0186, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit253

lean_inc.exit253:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %lean_inc_ref.exit348
  %i.ct = tail call ptr @lean_apply_1(ptr noundef nonnull %4, ptr noundef %.0186) #9
  %i.cu = ptrtoint ptr %i.cm to i64
  %i.cv = and i64 %i.cu, 1
  %.not.i250 = icmp eq i64 %i.cv, 0
  br i1 %.not.i250, label %bb.bh, label %lean_inc.exit251

bb.bh:                                            ; preds = %lean_inc.exit253
  %.val.i.i352 = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %.val.i.i352, 0
  br i1 %i.cw, label %bb.bi, label %bb.bj, !prof !15

bb.bi:                                            ; preds = %bb.bh
  %i.cx = add nuw i32 %.val.i.i352, 1
  store i32 %i.cx, ptr %i.cm, align 4, !tbaa !14
  br label %lean_inc.exit251

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i353 = icmp eq i32 %.val.i.i352, 0
  br i1 %.not.i.i353, label %lean_inc.exit251, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cy = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit251

lean_inc.exit251:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_inc.exit253
  %i.cz = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_canBottomUp(ptr noundef %i.cm, ptr noundef %i.ct, ptr noundef nonnull inttoptr (i64 21 to ptr), ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) ; 13 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = and i64 %i.da, 1
  %.not.i355 = icmp eq i64 %i.db, 0               ; 2 uses
  br i1 %.not.i355, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %lean_inc.exit251
  %i.dc = lshr i64 %i.da, 1
  %i.dd = trunc i64 %i.dc to i32
  br label %lean_obj_tag.exit358

bb.bm:                                            ; preds = %lean_inc.exit251
  %i.de = getelementptr i8, ptr %i.cz, i64 4
  %.val.i357 = load i32, ptr %i.de, align 4
  %i.df = lshr i32 %.val.i357, 24
  br label %lean_obj_tag.exit358

lean_obj_tag.exit358:                             ; preds = %bb.bl, %bb.bm
  %.0.i356 = phi i32 [ %i.dd, %bb.bl ], [ %i.df, %bb.bm ]
  %i.dg = icmp eq i32 %.0.i356, 0
  br i1 %i.dg, label %bb.bn, label %bb.fo

bb.bn:                                            ; preds = %lean_obj_tag.exit358
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !12 ; 12 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %.not.i248 = icmp eq i64 %i.dk, 0               ; 3 uses
  br i1 %.not.i248, label %bb.bo, label %lean_inc.exit249

bb.bo:                                            ; preds = %bb.bn
  %.val.i.i359 = load i32, ptr %i.di, align 4, !tbaa !14 ; 3 uses
  %i.dl = icmp sgt i32 %.val.i.i359, 0
  br i1 %i.dl, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.dm = add nuw i32 %.val.i.i359, 1
  store i32 %i.dm, ptr %i.di, align 4, !tbaa !14
  br label %lean_inc.exit249

bb.bq:                                            ; preds = %bb.bo
  %.not.i.i360 = icmp eq i32 %.val.i.i359, 0
  br i1 %.not.i.i360, label %lean_inc.exit249, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dn = atomicrmw sub ptr %i.di, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit249

lean_inc.exit249:                                 ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bn
  %.val.i362 = load i32, ptr %i.cz, align 8, !tbaa !14 ; 4 uses
  %i.do = icmp eq i32 %.val.i362, 1
  br i1 %i.do, label %.preheader.i364, label %bb.bw

.preheader.i364:                                  ; preds = %lean_inc.exit249
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !12 ; 4 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = and i64 %i.dq, 1
  %.not.i.i366 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i366, label %bb.bs, label %lean_dec.exit.i367

bb.bs:                                            ; preds = %.preheader.i364
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !14 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.bt, label %bb.bu, !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.dp, align 4, !tbaa !14
  br label %lean_dec.exit.i367

bb.bu:                                            ; preds = %bb.bs
  %.not.i7.i371 = icmp eq i32 %i.ds, 0
  br i1 %.not.i7.i371, label %lean_dec.exit.i367, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dp) #9
  br label %lean_dec.exit.i367

lean_dec.exit.i367:                               ; preds = %bb.bv, %bb.bu, %bb.bt, %.preheader.i364
  tail call void @lean_free_object(ptr noundef nonnull %i.cz) #9
  br label %lean_dec_ref_known.exit372

bb.bw:                                            ; preds = %lean_inc.exit249
  %i.dv = icmp sgt i32 %.val.i362, 1
  br i1 %i.dv, label %bb.bx, label %bb.by, !prof !15

bb.bx:                                            ; preds = %bb.bw
  %i.dw = add nsw i32 %.val.i362, -1
  store i32 %i.dw, ptr %i.cz, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit372

bb.by:                                            ; preds = %bb.bw
  %.not.i8.i363 = icmp eq i32 %.val.i362, 0
  br i1 %.not.i8.i363, label %lean_dec_ref_known.exit372, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #9
  br label %lean_dec_ref_known.exit372

lean_dec_ref_known.exit372:                       ; preds = %lean_dec.exit.i367, %bb.bx, %bb.by, %bb.bz
  %i.dx = and i64 %i.dj, 510
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %lean_dec_ref_known.exit372
  br i1 %.not.i248, label %bb.cb, label %bb.hg

bb.cb:                                            ; preds = %bb.ca
  %i.dz = load i32, ptr %i.di, align 4, !tbaa !14 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %bb.cc, label %bb.cd, !prof !15

bb.cc:                                            ; preds = %bb.cb
  %i.eb = add nsw i32 %i.dz, -1
  store i32 %i.eb, ptr %i.di, align 4, !tbaa !14
  br label %bb.hg

bb.cd:                                            ; preds = %bb.cb
  %.not.i292 = icmp eq i32 %i.dz, 0
  br i1 %.not.i292, label %bb.hg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.di) #9
  br label %bb.hg

bb.cf:                                            ; preds = %lean_dec_ref_known.exit372
  br i1 %.not.i326, label %.thread.i375, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val.i374 = load i64, ptr %i.h, align 8, !tbaa !10
  %i.ec = icmp ult i64 %i.ck, %.val.i374
  br i1 %i.ec, label %bb.ch, label %.thread.i375

bb.ch:                                            ; preds = %bb.cg
  %i.ed = load ptr, ptr %i.cl, align 8, !tbaa !12
  br label %lean_array_get_borrowed.exit381

.thread.i375:                                     ; preds = %bb.cg, %bb.cf
  %i.ee = ptrtoint ptr %i.ar to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i.i376 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i376, label %bb.ci, label %lean_inc.exit.i377

bb.ci:                                            ; preds = %.thread.i375
  %.val.i.i.i379 = load i32, ptr %i.ar, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i.i379, 0
  br i1 %i.eg, label %bb.cj, label %bb.ck, !prof !15

bb.cj:                                            ; preds = %bb.ci
  %i.eh = add nuw i32 %.val.i.i.i379, 1
  store i32 %i.eh, ptr %i.ar, align 4, !tbaa !14
  br label %lean_inc.exit.i377

bb.ck:                                            ; preds = %bb.ci
  %.not.i.i.i380 = icmp eq i32 %.val.i.i.i379, 0
  br i1 %.not.i.i.i380, label %lean_inc.exit.i377, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ei = atomicrmw sub ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i377

lean_inc.exit.i377:                               ; preds = %bb.cl, %bb.ck, %bb.cj, %.thread.i375
  %i.ej = tail call ptr @lean_array_get_panic(ptr noundef %i.ar) #9
  br label %lean_array_get_borrowed.exit381

lean_array_get_borrowed.exit381:                  ; preds = %bb.ch, %lean_inc.exit.i377
  %.1.i378 = phi ptr [ %i.ej, %lean_inc.exit.i377 ], [ %i.ed, %bb.ch ] ; 5 uses
  br i1 %.not.i256, label %bb.cm, label %lean_inc.exit247

bb.cm:                                            ; preds = %lean_array_get_borrowed.exit381
  %.val.i.i382 = load i32, ptr %.1.i335, align 4, !tbaa !14 ; 3 uses
  %i.ek = icmp sgt i32 %.val.i.i382, 0
  br i1 %i.ek, label %bb.cn, label %bb.co, !prof !15

bb.cn:                                            ; preds = %bb.cm
  %i.el = add nuw i32 %.val.i.i382, 1
  store i32 %i.el, ptr %.1.i335, align 4, !tbaa !14
  br label %lean_inc.exit247

bb.co:                                            ; preds = %bb.cm
  %.not.i.i383 = icmp eq i32 %.val.i.i382, 0
  br i1 %.not.i.i383, label %lean_inc.exit247, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.em = atomicrmw sub ptr %.1.i335, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit247

lean_inc.exit247:                                 ; preds = %bb.cp, %bb.co, %bb.cn, %lean_array_get_borrowed.exit381
  %i.en = ptrtoint ptr %.1.i378 to i64
  %i.eo = and i64 %i.en, 1
  %.not.i244 = icmp eq i64 %i.eo, 0
  br i1 %.not.i244, label %bb.cq, label %lean_inc.exit245

bb.cq:                                            ; preds = %lean_inc.exit247
  %.val.i.i385 = load i32, ptr %.1.i378, align 4, !tbaa !14 ; 3 uses
  %i.ep = icmp sgt i32 %.val.i.i385, 0
  br i1 %i.ep, label %bb.cr, label %bb.cs, !prof !15

bb.cr:                                            ; preds = %bb.cq
  %i.eq = add nuw i32 %.val.i.i385, 1
  store i32 %i.eq, ptr %.1.i378, align 4, !tbaa !14
  br label %lean_inc.exit245

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i386 = icmp eq i32 %.val.i.i385, 0
  br i1 %.not.i.i386, label %lean_inc.exit245, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.er = atomicrmw sub ptr %.1.i378, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit245

lean_inc.exit245:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %lean_inc.exit247
  %i.es = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_tryUnify(ptr noundef %.1.i378, ptr noundef %.1.i335, ptr poison, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) ; 13 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i388 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i388, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %lean_inc.exit245
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit391

bb.cv:                                            ; preds = %lean_inc.exit245
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i390 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i390, 24
  br label %lean_obj_tag.exit391

lean_obj_tag.exit391:                             ; preds = %bb.cu, %bb.cv
  %.0.i389 = phi i32 [ %i.ew, %bb.cu ], [ %i.ey, %bb.cv ]
  %i.ez = icmp eq i32 %.0.i389, 0
  br i1 %i.ez, label %bb.cw, label %bb.eo

bb.cw:                                            ; preds = %lean_obj_tag.exit391
  %.val.i392 = load i32, ptr %i.es, align 4, !tbaa !14 ; 4 uses
  %i.fa = icmp eq i32 %.val.i392, 1
  br i1 %i.fa, label %.preheader.i394, label %bb.db

.preheader.i394:                                  ; preds = %bb.cw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !12 ; 4 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = and i64 %i.fd, 1
  %.not.i.i396 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i396, label %bb.cx, label %lean_dec.exit.i397

bb.cx:                                            ; preds = %.preheader.i394
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !14 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %bb.cy, label %bb.cz, !prof !15

bb.cy:                                            ; preds = %bb.cx
  %i.fh = add nsw i32 %i.ff, -1
  store i32 %i.fh, ptr %i.fc, align 4, !tbaa !14
  br label %lean_dec.exit.i397

bb.cz:                                            ; preds = %bb.cx
  %.not.i7.i401 = icmp eq i32 %i.ff, 0
  br i1 %.not.i7.i401, label %lean_dec.exit.i397, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fc) #9
  br label %lean_dec.exit.i397

lean_dec.exit.i397:                               ; preds = %bb.da, %bb.cz, %bb.cy, %.preheader.i394
  tail call void @lean_free_object(ptr noundef nonnull %i.es) #9
  br label %lean_dec_ref_known.exit402

bb.db:                                            ; preds = %bb.cw
  %i.fi = icmp sgt i32 %.val.i392, 1
  br i1 %i.fi, label %bb.dc, label %bb.dd, !prof !15

bb.dc:                                            ; preds = %bb.db
  %i.fj = add nsw i32 %.val.i392, -1
  store i32 %i.fj, ptr %i.es, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit402

bb.dd:                                            ; preds = %bb.db
  %.not.i8.i393 = icmp eq i32 %.val.i392, 0
  br i1 %.not.i8.i393, label %lean_dec_ref_known.exit402, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #9
  br label %lean_dec_ref_known.exit402

lean_dec_ref_known.exit402:                       ; preds = %lean_dec.exit.i397, %bb.dc, %bb.dd, %bb.de
  %i.fk = getelementptr inbounds nuw i8, ptr %.0193, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !12 ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0193, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !12 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0193, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !12 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0193, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !12 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0193, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !12 ; 5 uses
  %.0193.val = load i32, ptr %.0193, align 8, !tbaa !14
  %i.fu = icmp eq i32 %.0193.val, 1               ; 2 uses
  br i1 %i.fu, label %lean_dec.exit274, label %bb.df

bb.df:                                            ; preds = %lean_dec_ref_known.exit402
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = and i64 %i.fv, 1
  %.not.i242 = icmp eq i64 %i.fw, 0
  br i1 %.not.i242, label %bb.dg, label %lean_inc.exit243

bb.dg:                                            ; preds = %bb.df
  %.val.i.i403 = load i32, ptr %i.ft, align 4, !tbaa !14 ; 3 uses
  %i.fx = icmp sgt i32 %.val.i.i403, 0
  br i1 %i.fx, label %bb.dh, label %bb.di, !prof !15

bb.dh:                                            ; preds = %bb.dg
  %i.fy = add nuw i32 %.val.i.i403, 1
  store i32 %i.fy, ptr %i.ft, align 4, !tbaa !14
end_hunk_3
begin_hunk_4_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_collectTrivialBottomUps_spec__0___redArg:bb.a
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !14
  br label %lean_inc.exit235

bb.ap:                                            ; preds = %bb.an
  %.not.i.i318 = icmp eq i32 %.val.i.i317, 0
  br i1 %.not.i.i318, label %lean_inc.exit235, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = atomicrmw sub ptr %i.by, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit235

lean_inc.exit235:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i320 = load i32, ptr %i.bp, align 8, !tbaa !14 ; 4 uses
  %i.ce = icmp eq i32 %.val.i320, 1
  br i1 %i.ce, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit235
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !12 ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, 1
  %.not.i.i322 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i322, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !14 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.ck = add nsw i32 %i.ci, -1
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bp) #9
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit235
  %i.cl = icmp sgt i32 %.val.i320, 1
  br i1 %i.cl, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.cm = add nsw i32 %.val.i320, -1
  store i32 %i.cm, ptr %i.bp, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i321 = icmp eq i32 %.val.i320, 0
  br i1 %.not.i8.i321, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bp) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i234, label %bb.az, label %lean_dec.exit258

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.cn = load i32, ptr %i.by, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.ba, label %bb.bb, !prof !15

bb.ba:                                            ; preds = %bb.az
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.by, align 4, !tbaa !14
  br label %lean_dec.exit258

bb.bb:                                            ; preds = %bb.az
  %.not.i270 = icmp eq i32 %i.cn, 0
  br i1 %.not.i270, label %lean_dec.exit258, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #9
  br label %lean_dec.exit258

lean_dec.exit258:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %lean_dec_ref_known.exit
  %i.cq = and i64 %i.bz, 510
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.gq, label %bb.bd

bb.bd:                                            ; preds = %lean_dec.exit258
  %i.cs = lshr i64 %i.i, 1                        ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cs ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !12
  %i.cv = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_isTrivialBottomUp___redArg(ptr noundef %i.cu, ptr noundef %11) ; 13 uses
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %.not.i323 = icmp eq i64 %i.cx, 0               ; 2 uses
  br i1 %.not.i323, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = trunc i64 %i.cy to i32
  br label %lean_obj_tag.exit326

bb.bf:                                            ; preds = %bb.bd
  %i.da = getelementptr i8, ptr %i.cv, i64 4
  %.val.i325 = load i32, ptr %i.da, align 4
  %i.db = lshr i32 %.val.i325, 24
  br label %lean_obj_tag.exit326

lean_obj_tag.exit326:                             ; preds = %bb.be, %bb.bf
  %.0.i324 = phi i32 [ %i.cz, %bb.be ], [ %i.db, %bb.bf ]
  %i.dc = icmp eq i32 %.0.i324, 0
  br i1 %i.dc, label %bb.bg, label %bb.fe

bb.bg:                                            ; preds = %lean_obj_tag.exit326
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 12 uses
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = and i64 %i.df, 1
  %.not.i232 = icmp eq i64 %i.dg, 0               ; 3 uses
  br i1 %.not.i232, label %bb.bh, label %lean_inc.exit233

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i327 = load i32, ptr %i.de, align 4, !tbaa !14 ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i327, 0
  br i1 %i.dh, label %bb.bi, label %bb.bj, !prof !15

bb.bi:                                            ; preds = %bb.bh
  %i.di = add nuw i32 %.val.i.i327, 1
  store i32 %i.di, ptr %i.de, align 4, !tbaa !14
  br label %lean_inc.exit233

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i328 = icmp eq i32 %.val.i.i327, 0
  br i1 %.not.i.i328, label %lean_inc.exit233, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dj = atomicrmw sub ptr %i.de, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit233

lean_inc.exit233:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %.val.i330 = load i32, ptr %i.cv, align 8, !tbaa !14 ; 4 uses
  %i.dk = icmp eq i32 %.val.i330, 1
  br i1 %i.dk, label %.preheader.i332, label %bb.bp

.preheader.i332:                                  ; preds = %lean_inc.exit233
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !12 ; 4 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i.i334 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i334, label %bb.bl, label %lean_dec.exit.i335

bb.bl:                                            ; preds = %.preheader.i332
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.bm, label %bb.bn, !prof !15

bb.bm:                                            ; preds = %bb.bl
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !14
  br label %lean_dec.exit.i335

bb.bn:                                            ; preds = %bb.bl
  %.not.i7.i339 = icmp eq i32 %i.do, 0
  br i1 %.not.i7.i339, label %lean_dec.exit.i335, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #9
  br label %lean_dec.exit.i335

lean_dec.exit.i335:                               ; preds = %bb.bo, %bb.bn, %bb.bm, %.preheader.i332
  tail call void @lean_free_object(ptr noundef nonnull %i.cv) #9
  br label %lean_dec_ref_known.exit340

bb.bp:                                            ; preds = %lean_inc.exit233
  %i.dr = icmp sgt i32 %.val.i330, 1
  br i1 %i.dr, label %bb.bq, label %bb.br, !prof !15

bb.bq:                                            ; preds = %bb.bp
  %i.ds = add nsw i32 %.val.i330, -1
  store i32 %i.ds, ptr %i.cv, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit340

bb.br:                                            ; preds = %bb.bp
  %.not.i8.i331 = icmp eq i32 %.val.i330, 0
  br i1 %.not.i8.i331, label %lean_dec_ref_known.exit340, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #9
  br label %lean_dec_ref_known.exit340

lean_dec_ref_known.exit340:                       ; preds = %lean_dec.exit.i335, %bb.bq, %bb.br, %bb.bs
  %i.dt = and i64 %i.df, 510
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %lean_dec_ref_known.exit340
  br i1 %.not.i232, label %bb.bu, label %bb.gq

bb.bu:                                            ; preds = %bb.bt
  %i.dv = load i32, ptr %i.de, align 4, !tbaa !14 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %i.de, align 4, !tbaa !14
  br label %bb.gq

bb.bw:                                            ; preds = %bb.bu
  %.not.i272 = icmp eq i32 %i.dv, 0
  br i1 %.not.i272, label %bb.gq, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.de) #9
  br label %bb.gq

bb.by:                                            ; preds = %lean_dec_ref_known.exit340
  br i1 %.not.i298, label %.thread.i343, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.val.i342 = load i64, ptr %i.h, align 8, !tbaa !10
  %i.dy = icmp ult i64 %i.cs, %.val.i342
  br i1 %i.dy, label %bb.ca, label %.thread.i343

bb.ca:                                            ; preds = %bb.bz
  %i.dz = load ptr, ptr %i.ct, align 8, !tbaa !12
  br label %lean_array_get_borrowed.exit349

.thread.i343:                                     ; preds = %bb.bz, %bb.by
  %i.ea = ptrtoint ptr %i.ao to i64
  %i.eb = and i64 %i.ea, 1
  %.not.i.i344 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i344, label %bb.cb, label %lean_inc.exit.i345

bb.cb:                                            ; preds = %.thread.i343
  %.val.i.i.i347 = load i32, ptr %i.ao, align 4, !tbaa !14 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i.i347, 0
  br i1 %i.ec, label %bb.cc, label %bb.cd, !prof !15

bb.cc:                                            ; preds = %bb.cb
  %i.ed = add nuw i32 %.val.i.i.i347, 1
  store i32 %i.ed, ptr %i.ao, align 4, !tbaa !14
  br label %lean_inc.exit.i345

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i.i348 = icmp eq i32 %.val.i.i.i347, 0
  br i1 %.not.i.i.i348, label %lean_inc.exit.i345, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ee = atomicrmw sub ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i345

lean_inc.exit.i345:                               ; preds = %bb.ce, %bb.cd, %bb.cc, %.thread.i343
  %i.ef = tail call ptr @lean_array_get_panic(ptr noundef %i.ao) #9
  br label %lean_array_get_borrowed.exit349

lean_array_get_borrowed.exit349:                  ; preds = %bb.ca, %lean_inc.exit.i345
  %.1.i346 = phi ptr [ %i.ef, %lean_inc.exit.i345 ], [ %i.dz, %bb.ca ] ; 5 uses
  br i1 %.not.i236, label %bb.cf, label %lean_inc.exit231

bb.cf:                                            ; preds = %lean_array_get_borrowed.exit349
  %.val.i.i350 = load i32, ptr %.1.i307, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i350, 0
  br i1 %i.eg, label %bb.cg, label %bb.ch, !prof !15

bb.cg:                                            ; preds = %bb.cf
  %i.eh = add nuw i32 %.val.i.i350, 1
  store i32 %i.eh, ptr %.1.i307, align 4, !tbaa !14
  br label %lean_inc.exit231

bb.ch:                                            ; preds = %bb.cf
  %.not.i.i351 = icmp eq i32 %.val.i.i350, 0
  br i1 %.not.i.i351, label %lean_inc.exit231, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ei = atomicrmw sub ptr %.1.i307, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit231

lean_inc.exit231:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %lean_array_get_borrowed.exit349
  %i.ej = ptrtoint ptr %.1.i346 to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i228 = icmp eq i64 %i.ek, 0
  br i1 %.not.i228, label %bb.cj, label %lean_inc.exit229

bb.cj:                                            ; preds = %lean_inc.exit231
  %.val.i.i353 = load i32, ptr %.1.i346, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %.val.i.i353, 0
  br i1 %i.el, label %bb.ck, label %bb.cl, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.em = add nuw i32 %.val.i.i353, 1
  store i32 %i.em, ptr %.1.i346, align 4, !tbaa !14
  br label %lean_inc.exit229

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i354 = icmp eq i32 %.val.i.i353, 0
  br i1 %.not.i.i354, label %lean_inc.exit229, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.en = atomicrmw sub ptr %.1.i346, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit229

lean_inc.exit229:                                 ; preds = %bb.cm, %bb.cl, %bb.ck, %lean_inc.exit231
  %i.eo = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_tryUnify(ptr noundef %.1.i346, ptr noundef %.1.i307, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) ; 13 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.eq = and i64 %i.ep, 1
  %.not.i356 = icmp eq i64 %i.eq, 0               ; 2 uses
  br i1 %.not.i356, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %lean_inc.exit229
  %i.er = lshr i64 %i.ep, 1
  %i.es = trunc i64 %i.er to i32
  br label %lean_obj_tag.exit359

bb.co:                                            ; preds = %lean_inc.exit229
  %i.et = getelementptr i8, ptr %i.eo, i64 4
  %.val.i358 = load i32, ptr %i.et, align 4
  %i.eu = lshr i32 %.val.i358, 24
  br label %lean_obj_tag.exit359

lean_obj_tag.exit359:                             ; preds = %bb.cn, %bb.co
  %.0.i357 = phi i32 [ %i.es, %bb.cn ], [ %i.eu, %bb.co ]
  %i.ev = icmp eq i32 %.0.i357, 0
  br i1 %i.ev, label %bb.cp, label %bb.eh

bb.cp:                                            ; preds = %lean_obj_tag.exit359
  %.val.i360 = load i32, ptr %i.eo, align 4, !tbaa !14 ; 4 uses
  %i.ew = icmp eq i32 %.val.i360, 1
  br i1 %i.ew, label %.preheader.i362, label %bb.cu

.preheader.i362:                                  ; preds = %bb.cp
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !12 ; 4 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = and i64 %i.ez, 1
  %.not.i.i364 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i364, label %bb.cq, label %lean_dec.exit.i365

bb.cq:                                            ; preds = %.preheader.i362
  %i.fb = load i32, ptr %i.ey, align 4, !tbaa !14 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.cr, label %bb.cs, !prof !15

bb.cr:                                            ; preds = %bb.cq
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %i.ey, align 4, !tbaa !14
  br label %lean_dec.exit.i365

bb.cs:                                            ; preds = %bb.cq
  %.not.i7.i369 = icmp eq i32 %i.fb, 0
  br i1 %.not.i7.i369, label %lean_dec.exit.i365, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ey) #9
  br label %lean_dec.exit.i365

lean_dec.exit.i365:                               ; preds = %bb.ct, %bb.cs, %bb.cr, %.preheader.i362
  tail call void @lean_free_object(ptr noundef nonnull %i.eo) #9
  br label %lean_dec_ref_known.exit370

bb.cu:                                            ; preds = %bb.cp
  %i.fe = icmp sgt i32 %.val.i360, 1
  br i1 %i.fe, label %bb.cv, label %bb.cw, !prof !15

bb.cv:                                            ; preds = %bb.cu
  %i.ff = add nsw i32 %.val.i360, -1
  store i32 %i.ff, ptr %i.eo, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit370

bb.cw:                                            ; preds = %bb.cu
  %.not.i8.i361 = icmp eq i32 %.val.i360, 0
  br i1 %.not.i8.i361, label %lean_dec_ref_known.exit370, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eo) #9
  br label %lean_dec_ref_known.exit370

lean_dec_ref_known.exit370:                       ; preds = %lean_dec.exit.i365, %bb.cv, %bb.cw, %bb.cx
  %i.fg = getelementptr inbounds nuw i8, ptr %.0177, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !12 ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0177, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !12 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0177, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !12 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0177, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !12 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0177, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !12 ; 5 uses
  %.0177.val = load i32, ptr %.0177, align 8, !tbaa !14
  %i.fq = icmp eq i32 %.0177.val, 1               ; 2 uses
  br i1 %i.fq, label %lean_dec.exit254, label %bb.cy

bb.cy:                                            ; preds = %lean_dec_ref_known.exit370
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i226 = icmp eq i64 %i.fs, 0
  br i1 %.not.i226, label %bb.cz, label %lean_inc.exit227

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i371 = load i32, ptr %i.fp, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i371, 0
  br i1 %i.ft, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.fu = add nuw i32 %.val.i.i371, 1
  store i32 %i.fu, ptr %i.fp, align 4, !tbaa !14
end_hunk_4
begin_hunk_5_@l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyzeAppStagedCore_analyzeArg___lam__1:bb.a
  br label %lean_dec_ref.exit1519

bb.akj:                                           ; preds = %bb.akh
  %.not.i1518 = icmp eq i32 %i.axa, 0
  br i1 %.not.i1518, label %lean_dec_ref.exit1519, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #9
  br label %lean_dec_ref.exit1519

lean_dec_ref.exit1519:                            ; preds = %bb.aki, %bb.akj, %bb.akk
  %i.axd = load i32, ptr %5, align 4, !tbaa !14   ; 3 uses
  %i.axe = icmp sgt i32 %i.axd, 1
  br i1 %i.axe, label %bb.akl, label %bb.akm, !prof !15

bb.akl:                                           ; preds = %lean_dec_ref.exit1519
  %i.axf = add nsw i32 %i.axd, -1
  store i32 %i.axf, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit1517

bb.akm:                                           ; preds = %lean_dec_ref.exit1519
  %.not.i1516 = icmp eq i32 %i.axd, 0
  br i1 %.not.i1516, label %lean_dec_ref.exit1517, label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec_ref.exit1517

lean_dec_ref.exit1517:                            ; preds = %bb.akl, %bb.akm, %bb.akn
  %.val.i.i2197 = load i32, ptr %3, align 4, !tbaa !14 ; 3 uses
  %i.axg = icmp sgt i32 %.val.i.i2197, 0
  br i1 %i.axg, label %bb.ako, label %bb.akp, !prof !15

bb.ako:                                           ; preds = %lean_dec_ref.exit1517
  %i.axh = add nuw i32 %.val.i.i2197, 1
  store i32 %i.axh, ptr %3, align 4, !tbaa !14
  br label %lean_inc_ref.exit2199

bb.akp:                                           ; preds = %lean_dec_ref.exit1517
  %.not.i.i2198 = icmp eq i32 %.val.i.i2197, 0
  br i1 %.not.i.i2198, label %lean_inc_ref.exit2199, label %bb.akq

bb.akq:                                           ; preds = %bb.akp
  %i.axi = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2199

lean_inc_ref.exit2199:                            ; preds = %bb.ako, %bb.akp, %bb.akq
  %i.axj = tail call ptr @l_Lean_instantiateMVars___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown_spec__0___redArg(ptr noundef nonnull %3, ptr noundef %16) ; 4 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 8
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !12 ; 5 uses
  %i.axm = ptrtoint ptr %i.axl to i64
  %i.axn = and i64 %i.axm, 1
  %.not.i.i2200 = icmp eq i64 %i.axn, 0
  br i1 %.not.i.i2200, label %bb.akr, label %lean_inc.exit.i2201

bb.akr:                                           ; preds = %lean_inc_ref.exit2199
  %.val.i.i.i2203 = load i32, ptr %i.axl, align 4, !tbaa !14 ; 3 uses
  %i.axo = icmp sgt i32 %.val.i.i.i2203, 0
  br i1 %i.axo, label %bb.aks, label %bb.akt, !prof !15

bb.aks:                                           ; preds = %bb.akr
  %i.axp = add nuw i32 %.val.i.i.i2203, 1
  store i32 %i.axp, ptr %i.axl, align 4, !tbaa !14
  br label %lean_inc.exit.i2201

bb.akt:                                           ; preds = %bb.akr
  %.not.i.i.i2204 = icmp eq i32 %.val.i.i.i2203, 0
  br i1 %.not.i.i.i2204, label %lean_inc.exit.i2201, label %bb.aku

bb.aku:                                           ; preds = %bb.akt
  %i.axq = atomicrmw sub ptr %i.axl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i2201

lean_inc.exit.i2201:                              ; preds = %bb.aku, %bb.akt, %bb.aks, %lean_inc_ref.exit2199
  %i.axr = load i32, ptr %i.axj, align 8, !tbaa !14 ; 3 uses
  %i.axs = icmp sgt i32 %i.axr, 1
  br i1 %i.axs, label %bb.akv, label %bb.akw, !prof !15

bb.akv:                                           ; preds = %lean_inc.exit.i2201
  %i.axt = add nsw i32 %i.axr, -1
  store i32 %i.axt, ptr %i.axj, align 8, !tbaa !14
  br label %l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown.exit2205

bb.akw:                                           ; preds = %lean_inc.exit.i2201
  %.not.i8.i2202 = icmp eq i32 %i.axr, 0
  br i1 %.not.i8.i2202, label %l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown.exit2205, label %bb.akx

bb.akx:                                           ; preds = %bb.akw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.axj) #9
  br label %l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown.exit2205

l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown.exit2205: ; preds = %bb.akv, %bb.akw, %bb.akx
  %i.axu = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_hasMVarAtCurrDepth___redArg(ptr noundef %i.axl, ptr noundef %16) ; 13 uses
  %i.axv = ptrtoint ptr %i.axu to i64             ; 2 uses
  %i.axw = and i64 %i.axv, 1
  %.not.i2206 = icmp eq i64 %i.axw, 0             ; 2 uses
  br i1 %.not.i2206, label %bb.akz, label %bb.aky

bb.aky:                                           ; preds = %l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown.exit2205
  %i.axx = lshr i64 %i.axv, 1
  %i.axy = trunc i64 %i.axx to i32
  br label %lean_obj_tag.exit2209

bb.akz:                                           ; preds = %l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_valUnknown.exit2205
  %i.axz = getelementptr i8, ptr %i.axu, i64 4
  %.val.i2208 = load i32, ptr %i.axz, align 4
  %i.aya = lshr i32 %.val.i2208, 24
  br label %lean_obj_tag.exit2209

lean_obj_tag.exit2209:                            ; preds = %bb.aky, %bb.akz
  %.0.i2207 = phi i32 [ %i.axy, %bb.aky ], [ %i.aya, %bb.akz ]
  %i.ayb = icmp eq i32 %.0.i2207, 0
  br i1 %i.ayb, label %bb.ala, label %bb.amq

bb.ala:                                           ; preds = %lean_obj_tag.exit2209
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axu, i64 8 ; 2 uses
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !12 ; 10 uses
  %i.aye = ptrtoint ptr %i.ayd to i64             ; 6 uses
  %i.ayf = and i64 %i.aye, 1
  %.not.i1216 = icmp eq i64 %i.ayf, 0             ; 3 uses
  br i1 %.not.i1216, label %bb.alb, label %lean_inc.exit1217

bb.alb:                                           ; preds = %bb.ala
  %.val.i.i2210 = load i32, ptr %i.ayd, align 4, !tbaa !14 ; 3 uses
  %i.ayg = icmp sgt i32 %.val.i.i2210, 0
  br i1 %i.ayg, label %bb.alc, label %bb.ald, !prof !15

bb.alc:                                           ; preds = %bb.alb
  %i.ayh = add nuw i32 %.val.i.i2210, 1
  store i32 %i.ayh, ptr %i.ayd, align 4, !tbaa !14
  br label %lean_inc.exit1217

bb.ald:                                           ; preds = %bb.alb
  %.not.i.i2211 = icmp eq i32 %.val.i.i2210, 0
  br i1 %.not.i.i2211, label %lean_inc.exit1217, label %bb.ale

bb.ale:                                           ; preds = %bb.ald
  %i.ayi = atomicrmw sub ptr %i.ayd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1217

lean_inc.exit1217:                                ; preds = %bb.ale, %bb.ald, %bb.alc, %bb.ala
  %.val.i2213 = load i32, ptr %i.axu, align 8, !tbaa !14 ; 4 uses
  %i.ayj = icmp eq i32 %.val.i2213, 1
  br i1 %i.ayj, label %.preheader.i2215, label %bb.alj

.preheader.i2215:                                 ; preds = %lean_inc.exit1217
  %i.ayk = load ptr, ptr %i.ayc, align 8, !tbaa !12 ; 4 uses
  %i.ayl = ptrtoint ptr %i.ayk to i64
  %i.aym = and i64 %i.ayl, 1
  %.not.i.i2217 = icmp eq i64 %i.aym, 0
  br i1 %.not.i.i2217, label %bb.alf, label %lean_dec.exit.i2218

bb.alf:                                           ; preds = %.preheader.i2215
  %i.ayn = load i32, ptr %i.ayk, align 4, !tbaa !14 ; 3 uses
  %i.ayo = icmp sgt i32 %i.ayn, 1
  br i1 %i.ayo, label %bb.alg, label %bb.alh, !prof !15

bb.alg:                                           ; preds = %bb.alf
  %i.ayp = add nsw i32 %i.ayn, -1
  store i32 %i.ayp, ptr %i.ayk, align 4, !tbaa !14
  br label %lean_dec.exit.i2218

bb.alh:                                           ; preds = %bb.alf
  %.not.i7.i2222 = icmp eq i32 %i.ayn, 0
  br i1 %.not.i7.i2222, label %lean_dec.exit.i2218, label %bb.ali

bb.ali:                                           ; preds = %bb.alh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ayk) #9
  br label %lean_dec.exit.i2218

lean_dec.exit.i2218:                              ; preds = %bb.ali, %bb.alh, %bb.alg, %.preheader.i2215
  tail call void @lean_free_object(ptr noundef nonnull %i.axu) #9
  br label %lean_dec_ref_known.exit2223

bb.alj:                                           ; preds = %lean_inc.exit1217
  %i.ayq = icmp sgt i32 %.val.i2213, 1
  br i1 %i.ayq, label %bb.alk, label %bb.all, !prof !15

bb.alk:                                           ; preds = %bb.alj
  %i.ayr = add nsw i32 %.val.i2213, -1
  store i32 %i.ayr, ptr %i.axu, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2223

bb.all:                                           ; preds = %bb.alj
  %.not.i8.i2214 = icmp eq i32 %.val.i2213, 0
  br i1 %.not.i8.i2214, label %lean_dec_ref_known.exit2223, label %bb.alm

bb.alm:                                           ; preds = %bb.all
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.axu) #9
  br label %lean_dec_ref_known.exit2223

lean_dec_ref_known.exit2223:                      ; preds = %lean_dec.exit.i2218, %bb.alk, %bb.all, %bb.alm
  %i.ays = and i64 %i.aye, 510
  %i.ayt = icmp eq i64 %i.ays, 0
  br i1 %i.ayt, label %bb.aln, label %bb.aml

bb.aln:                                           ; preds = %lean_dec_ref_known.exit2223
  br i1 %.not.i1216, label %bb.alo, label %lean_dec.exit1362

bb.alo:                                           ; preds = %bb.aln
  %i.ayu = load i32, ptr %i.ayd, align 4, !tbaa !14 ; 3 uses
  %i.ayv = icmp sgt i32 %i.ayu, 1
  br i1 %i.ayv, label %bb.alp, label %bb.alq, !prof !15

bb.alp:                                           ; preds = %bb.alo
  %i.ayw = add nsw i32 %i.ayu, -1
  store i32 %i.ayw, ptr %i.ayd, align 4, !tbaa !14
  br label %lean_dec.exit1362

bb.alq:                                           ; preds = %bb.alo
  %.not.i1494 = icmp eq i32 %i.ayu, 0
  br i1 %.not.i1494, label %lean_dec.exit1362, label %bb.alr

bb.alr:                                           ; preds = %bb.alq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ayd) #9
  br label %lean_dec.exit1362

lean_dec.exit1362:                                ; preds = %bb.alr, %bb.alq, %bb.alp, %bb.aln
  %i.ayx = zext i8 %6 to i64
  %i.ayy = shl nuw nsw i64 %i.ayx, 1
  %i.ayz = or disjoint i64 %i.ayy, 1
  %i.aza = inttoptr i64 %i.ayz to ptr
  %i.azb = ptrtoint ptr %0 to i64                 ; 2 uses
  %i.azc = and i64 %i.azb, 1
  %.not.i2224 = icmp eq i64 %i.azc, 0
  br i1 %.not.i2224, label %lean_array_uget.exit.i2226, label %bb.als

bb.als:                                           ; preds = %lean_dec.exit1362
  %i.azd = lshr i64 %i.azb, 1                     ; 2 uses
  %i.aze = getelementptr i8, ptr %9, i64 8
  %.val.i2225 = load i64, ptr %i.aze, align 8, !tbaa !10
  %i.azf = icmp ult i64 %i.azd, %.val.i2225
  br i1 %i.azf, label %bb.alt, label %lean_array_uget.exit.i2226

bb.alt:                                           ; preds = %bb.als
  %i.azg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %i.azg, i64 %i.azd
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !12 ; 8 uses
  %i.azj = ptrtoint ptr %i.azi to i64             ; 5 uses
  %i.azk = and i64 %i.azj, 1
  %.not.i.i.i2231 = icmp eq i64 %i.azk, 0
  br i1 %.not.i.i.i2231, label %bb.alu, label %lean_dec.exit1360

bb.alu:                                           ; preds = %bb.alt
  %.val.i.i.i.i2232 = load i32, ptr %i.azi, align 4, !tbaa !14 ; 3 uses
  %i.azl = icmp sgt i32 %.val.i.i.i.i2232, 0
  br i1 %i.azl, label %bb.alv, label %bb.alw, !prof !15

bb.alv:                                           ; preds = %bb.alu
  %i.azm = add nuw i32 %.val.i.i.i.i2232, 1
  store i32 %i.azm, ptr %i.azi, align 4, !tbaa !14
  br label %lean_dec.exit1360

bb.alw:                                           ; preds = %bb.alu
  %.not.i.i.i.i2233 = icmp eq i32 %.val.i.i.i.i2232, 0
  br i1 %.not.i.i.i.i2233, label %lean_dec.exit1360, label %bb.alx

bb.alx:                                           ; preds = %bb.alw
  %i.azn = atomicrmw sub ptr %i.azi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit1360

lean_array_uget.exit.i2226:                       ; preds = %bb.als, %lean_dec.exit1362
  %i.azo = tail call ptr @lean_array_get_panic(ptr noundef nonnull %i.aza) #9 ; 2 uses
  %.pre2347 = ptrtoint ptr %i.azo to i64
  br label %lean_dec.exit1360

lean_dec.exit1360:                                ; preds = %lean_array_uget.exit.i2226, %bb.alx, %bb.alw, %bb.alv, %bb.alt
  %.pre-phi2348 = phi i64 [ %.pre2347, %lean_array_uget.exit.i2226 ], [ %i.azj, %bb.alx ], [ %i.azj, %bb.alw ], [ %i.azj, %bb.alv ], [ %i.azj, %bb.alt ] ; 6 uses
  %.1.i2229 = phi ptr [ %i.azo, %lean_array_uget.exit.i2226 ], [ %i.azi, %bb.alx ], [ %i.azi, %bb.alw ], [ %i.azi, %bb.alv ], [ %i.azi, %bb.alt ] ; 6 uses
  %i.azp = and i64 %.pre-phi2348, 510
  %i.azq = icmp eq i64 %i.azp, 0
  %i.azr = and i64 %.pre-phi2348, 1
  %.not.i1357 = icmp eq i64 %i.azr, 0             ; 2 uses
  br i1 %i.azq, label %bb.aly, label %bb.amg

bb.aly:                                           ; preds = %lean_dec.exit1360
  br i1 %.not.i1357, label %bb.alz, label %lean_dec.exit1358

bb.alz:                                           ; preds = %bb.aly
  %i.azs = load i32, ptr %.1.i2229, align 4, !tbaa !14 ; 3 uses
  %i.azt = icmp sgt i32 %i.azs, 1
  br i1 %i.azt, label %bb.ama, label %bb.amb, !prof !15

bb.ama:                                           ; preds = %bb.alz
  %i.azu = add nsw i32 %i.azs, -1
  store i32 %i.azu, ptr %.1.i2229, align 4, !tbaa !14
  br label %lean_dec.exit1358

bb.amb:                                           ; preds = %bb.alz
  %.not.i1498 = icmp eq i32 %i.azs, 0
  br i1 %.not.i1498, label %lean_dec.exit1358, label %bb.amc

bb.amc:                                           ; preds = %bb.amb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i2229) #9
  br label %lean_dec.exit1358

lean_dec.exit1358:                                ; preds = %bb.amc, %bb.amb, %bb.ama, %bb.aly
  %i.azv = load i32, ptr %3, align 4, !tbaa !14   ; 3 uses
  %i.azw = icmp sgt i32 %i.azv, 1
  br i1 %i.azw, label %bb.amd, label %bb.ame, !prof !15

bb.amd:                                           ; preds = %lean_dec.exit1358
  %i.azx = add nsw i32 %i.azv, -1
  store i32 %i.azx, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit1653

bb.ame:                                           ; preds = %lean_dec.exit1358
  %.not.i1514 = icmp eq i32 %i.azv, 0
  br i1 %.not.i1514, label %lean_dec_ref.exit1653, label %bb.amf

bb.amf:                                           ; preds = %bb.ame
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec_ref.exit1653

bb.amg:                                           ; preds = %lean_dec.exit1360
  br i1 %.not.i1357, label %bb.amh, label %bb.fz

bb.amh:                                           ; preds = %bb.amg
  %i.azy = load i32, ptr %.1.i2229, align 4, !tbaa !14 ; 3 uses
  %i.azz = icmp sgt i32 %i.azy, 1
  br i1 %i.azz, label %bb.ami, label %bb.amj, !prof !15

bb.ami:                                           ; preds = %bb.amh
  %i.baa = add nsw i32 %i.azy, -1
  store i32 %i.baa, ptr %.1.i2229, align 4, !tbaa !14
  br label %bb.fz

bb.amj:                                           ; preds = %bb.amh
  %.not.i1500 = icmp eq i32 %i.azy, 0
  br i1 %.not.i1500, label %bb.fz, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i2229) #9
  br label %bb.fz

bb.aml:                                           ; preds = %lean_dec_ref_known.exit2223
  br i1 %.not.i1216, label %bb.amm, label %bb.fz

bb.amm:                                           ; preds = %bb.aml
  %i.bab = load i32, ptr %i.ayd, align 4, !tbaa !14 ; 3 uses
  %i.bac = icmp sgt i32 %i.bab, 1
  br i1 %i.bac, label %bb.amn, label %bb.amo, !prof !15

bb.amn:                                           ; preds = %bb.amm
  %i.bad = add nsw i32 %i.bab, -1
  store i32 %i.bad, ptr %i.ayd, align 4, !tbaa !14
  br label %bb.fz

bb.amo:                                           ; preds = %bb.amm
  %.not.i1502 = icmp eq i32 %i.bab, 0
  br i1 %.not.i1502, label %bb.fz, label %bb.amp

bb.amp:                                           ; preds = %bb.amo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ayd) #9
  br label %bb.fz

bb.amq:                                           ; preds = %lean_obj_tag.exit2209
  %.val.i2235 = load i32, ptr %i.zj, align 8, !tbaa !14 ; 4 uses
  %i.bae = icmp eq i32 %.val.i2235, 1
  br i1 %i.bae, label %.preheader.i2237, label %bb.amv

.preheader.i2237:                                 ; preds = %bb.amq
  %i.baf = load ptr, ptr %i.zn, align 8, !tbaa !12 ; 4 uses
  %i.bag = ptrtoint ptr %i.baf to i64
  %i.bah = and i64 %i.bag, 1
  %.not.i.i2239 = icmp eq i64 %i.bah, 0
  br i1 %.not.i.i2239, label %bb.amr, label %lean_dec.exit.i2240

bb.amr:                                           ; preds = %.preheader.i2237
  %i.bai = load i32, ptr %i.baf, align 4, !tbaa !14 ; 3 uses
  %i.baj = icmp sgt i32 %i.bai, 1
  br i1 %i.baj, label %bb.ams, label %bb.amt, !prof !15

bb.ams:                                           ; preds = %bb.amr
  %i.bak = add nsw i32 %i.bai, -1
  store i32 %i.bak, ptr %i.baf, align 4, !tbaa !14
  br label %lean_dec.exit.i2240

bb.amt:                                           ; preds = %bb.amr
  %.not.i7.i2244 = icmp eq i32 %i.bai, 0
  br i1 %.not.i7.i2244, label %lean_dec.exit.i2240, label %bb.amu

bb.amu:                                           ; preds = %bb.amt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.baf) #9
  br label %lean_dec.exit.i2240

lean_dec.exit.i2240:                              ; preds = %bb.amu, %bb.amt, %bb.ams, %.preheader.i2237
  tail call void @lean_free_object(ptr noundef nonnull %i.zj) #9
  br label %lean_dec_ref_known.exit2245

bb.amv:                                           ; preds = %bb.amq
  %i.bal = icmp sgt i32 %.val.i2235, 1
  br i1 %i.bal, label %bb.amw, label %bb.amx, !prof !15

bb.amw:                                           ; preds = %bb.amv
  %i.bam = add nsw i32 %.val.i2235, -1
  store i32 %i.bam, ptr %i.zj, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2245

bb.amx:                                           ; preds = %bb.amv
  %.not.i8.i2236 = icmp eq i32 %.val.i2235, 0
  br i1 %.not.i8.i2236, label %lean_dec_ref_known.exit2245, label %bb.amy

bb.amy:                                           ; preds = %bb.amx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.zj) #9
  br label %lean_dec_ref_known.exit2245

end_hunk_5
begin_hunk_6_@l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_analyzeApp:bb.a
  br label %lean_inc_ref.exit.i

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc_ref.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i

lean_inc_ref.exit.i:                              ; preds = %bb.d, %bb.c, %bb.b
  tail call void @lean_inc_heartbeat() #9
  %i.l = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit

bb.e:                                             ; preds = %lean_inc_ref.exit.i
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit: ; preds = %lean_inc_ref.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !14
  store i32 65552, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.h, ptr %i.o, align 8, !tbaa !12
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit
  %i.q = add nuw i32 %.val.i.i, 1                 ; 2 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !14
  br label %bb.i

bb.g:                                             ; preds = %l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_dec_ref_known.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %i.h, align 4, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.s = phi i32 [ %i.q, %bb.f ], [ %.pr, %bb.h ] ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.k, !prof !23

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.h, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.k:                                             ; preds = %bb.i
  %.not.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i7.i, label %lean_dec_ref_known.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  tail call void @lean_free_object(ptr noundef nonnull %i.l) #9
  %i.v = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_canBottomUp(ptr noundef nonnull %i.h, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 21 to ptr), ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 12 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i493 = icmp eq i64 %i.x, 0                ; 2 uses
  br i1 %.not.i493, label %bb.n, label %bb.m

bb.m:                                             ; preds = %lean_dec_ref_known.exit
  %i.y = lshr i64 %i.w, 1
  %i.z = trunc i64 %i.y to i32
  br label %lean_obj_tag.exit496

bb.n:                                             ; preds = %lean_dec_ref_known.exit
  %i.aa = getelementptr i8, ptr %i.v, i64 4
  %.val.i495 = load i32, ptr %i.aa, align 4
  %i.ab = lshr i32 %.val.i495, 24
  br label %lean_obj_tag.exit496

lean_obj_tag.exit496:                             ; preds = %bb.m, %bb.n
  %.0.i494 = phi i32 [ %i.z, %bb.m ], [ %i.ab, %bb.n ]
  %i.ac = icmp eq i32 %.0.i494, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 23 uses
  br i1 %i.ac, label %bb.o, label %bb.bu

bb.o:                                             ; preds = %lean_obj_tag.exit496
  %i.af = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not.i427 = icmp eq i64 %i.ag, 0               ; 5 uses
  br i1 %.not.i427, label %bb.p, label %lean_inc.exit428

bb.p:                                             ; preds = %bb.o
  %.val.i.i497 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ah = icmp sgt i32 %.val.i.i497, 0
  br i1 %i.ah, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ai = add nuw i32 %.val.i.i497, 1
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc.exit428

bb.r:                                             ; preds = %bb.p
  %.not.i.i498 = icmp eq i32 %.val.i.i497, 0
  br i1 %.not.i.i498, label %lean_inc.exit428, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit428

lean_inc.exit428:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.val.i500 = load i32, ptr %i.v, align 8, !tbaa !14 ; 4 uses
  %i.ak = icmp eq i32 %.val.i500, 1
  br i1 %i.ak, label %.preheader.i502, label %bb.x

.preheader.i502:                                  ; preds = %lean_inc.exit428
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 1
  %.not.i.i504 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i504, label %bb.t, label %lean_dec.exit.i505

bb.t:                                             ; preds = %.preheader.i502
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !14 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !14
  br label %lean_dec.exit.i505

bb.v:                                             ; preds = %bb.t
  %.not.i7.i509 = icmp eq i32 %i.ao, 0
  br i1 %.not.i7.i509, label %lean_dec.exit.i505, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #9
  br label %lean_dec.exit.i505

lean_dec.exit.i505:                               ; preds = %bb.w, %bb.v, %bb.u, %.preheader.i502
  tail call void @lean_free_object(ptr noundef nonnull %i.v) #9
  br label %lean_dec_ref_known.exit510

bb.x:                                             ; preds = %lean_inc.exit428
  %i.ar = icmp sgt i32 %.val.i500, 1
  br i1 %i.ar, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.as = add nsw i32 %.val.i500, -1
  store i32 %i.as, ptr %i.v, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit510

bb.z:                                             ; preds = %bb.x
  %.not.i8.i501 = icmp eq i32 %.val.i500, 0
  br i1 %.not.i8.i501, label %lean_dec_ref_known.exit510, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #9
  br label %lean_dec_ref_known.exit510

lean_dec_ref_known.exit510:                       ; preds = %lean_dec.exit.i505, %bb.y, %bb.z, %bb.aa
  %i.at = icmp ne i8 %i.c, 0                      ; 2 uses
  br i1 %i.at, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %lean_dec_ref_known.exit510
  %i.au = and i64 %i.af, 510
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.aw = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_annotateBool(ptr noundef nonnull @l_Lean_getPPAnalysisNeedsType___closed__1_value, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 7 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %.not.i511 = icmp eq i64 %i.ay, 0
  br i1 %.not.i511, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = lshr i64 %i.ax, 1
  %i.ba = trunc i64 %i.az to i32
  br label %lean_obj_tag.exit514

bb.ae:                                            ; preds = %bb.ac
  %i.bb = getelementptr i8, ptr %i.aw, i64 4
  %.val.i513 = load i32, ptr %i.bb, align 4
  %i.bc = lshr i32 %.val.i513, 24
  br label %lean_obj_tag.exit514

lean_obj_tag.exit514:                             ; preds = %bb.ad, %bb.ae
  %.0.i512 = phi i32 [ %i.ba, %bb.ad ], [ %i.bc, %bb.ae ]
  %i.bd = icmp eq i32 %.0.i512, 0
  br i1 %i.bd, label %bb.af, label %bb.am

bb.af:                                            ; preds = %lean_obj_tag.exit514
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.aw, i32 noundef 1)
  br i1 %.not.i427, label %bb.ag, label %lean_inc.exit426

bb.ag:                                            ; preds = %bb.af
  %.val.i.i515 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i515, 0
  br i1 %i.be, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.bf = add nuw i32 %.val.i.i515, 1
  store i32 %i.bf, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc.exit426

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i516 = icmp eq i32 %.val.i.i515, 0
  br i1 %.not.i.i516, label %lean_inc.exit426, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bg = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit426

lean_inc.exit426:                                 ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.bh = tail call ptr @lean_alloc_object(i64 noundef 32) #9 ; 7 uses
  store i32 1, ptr %i.bh, align 4, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, 65535
  %i.bl = or disjoint i32 %i.bk, -184549376
  store i32 %i.bl, ptr %i.bi, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze___boxed, ptr %i.bm, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i16 8, ptr %i.bn, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 18
  store i16 1, ptr %i.bo, align 2, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store ptr %i.ae, ptr %i.bp, align 8, !tbaa !12
  %i.bq = tail call ptr @lean_alloc_object(i64 noundef 56) #9 ; 10 uses
  store i32 1, ptr %i.bq, align 4, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = and i32 %i.bs, 65535
  %i.bu = or disjoint i32 %i.bt, -184549376
  store i32 %i.bu, ptr %i.br, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_withKnowing___boxed, ptr %i.bv, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i16 11, ptr %i.bw, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 18
  store i16 4, ptr %i.bx, align 2, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.by, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store ptr inttoptr (i64 3 to ptr), ptr %i.bz, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.ae, ptr %i.ca, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr %i.bh, ptr %i.cb, align 8, !tbaa !12
  %i.cc = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withType___at___00Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_spec__3___redArg(ptr noundef nonnull %i.bq, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not.i518 = icmp eq i64 %i.ce, 0
  br i1 %.not.i518, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_inc.exit426
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %lean_obj_tag.exit521

bb.al:                                            ; preds = %lean_inc.exit426
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i520 = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val.i520, 24
  br label %lean_obj_tag.exit521

lean_obj_tag.exit521:                             ; preds = %bb.ak, %bb.al
  %.0.i519 = phi i32 [ %i.cg, %bb.ak ], [ %i.ci, %bb.al ]
  %i.cj = icmp eq i32 %.0.i519, 0
  br i1 %i.cj, label %lean_dec.exit447.thread666, label %lean_dec.exit437

lean_dec.exit447.thread666:                       ; preds = %lean_obj_tag.exit521
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.cc, i32 noundef 1)
  br label %lean_dec.exit

bb.am:                                            ; preds = %lean_obj_tag.exit514
  br i1 %.not.i427, label %bb.an, label %lean_dec.exit437

bb.an:                                            ; preds = %bb.am
  %i.ck = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %bb.ao, label %bb.ap, !prof !15

bb.ao:                                            ; preds = %bb.an
  %i.cm = add nsw i32 %i.ck, -1
  store i32 %i.cm, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec.exit437

bb.ap:                                            ; preds = %bb.an
  %.not.i458 = icmp eq i32 %i.ck, 0
  br i1 %.not.i458, label %lean_dec.exit437, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #9
  br label %lean_dec.exit437

bb.ar:                                            ; preds = %bb.ab
  br i1 %.not.i427, label %bb.as, label %lean_dec.exit457

bb.as:                                            ; preds = %bb.ar
  %i.cn = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.at, label %bb.au, !prof !15

bb.at:                                            ; preds = %bb.as
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec.exit457

bb.au:                                            ; preds = %bb.as
  %.not.i459 = icmp eq i32 %i.cn, 0
  br i1 %.not.i459, label %lean_dec.exit457, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #9
  br label %lean_dec.exit457

bb.aw:                                            ; preds = %lean_dec_ref_known.exit510
  br i1 %.not.i427, label %bb.ax, label %lean_dec.exit457

bb.ax:                                            ; preds = %bb.aw
  %i.cq = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec.exit457

bb.az:                                            ; preds = %bb.ax
  %.not.i461 = icmp eq i32 %i.cq, 0
  br i1 %.not.i461, label %lean_dec.exit457, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #9
  br label %lean_dec.exit457

lean_dec.exit457:                                 ; preds = %bb.aw, %bb.ay, %bb.az, %bb.ba, %bb.av, %bb.au, %bb.at, %bb.ar
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !12 ; 11 uses
  %.val.i.i.i522 = load i32, ptr %i.cv, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %.val.i.i.i522, 0
  br i1 %i.cw, label %bb.bb, label %bb.bc, !prof !15

bb.bb:                                            ; preds = %lean_dec.exit457
  %i.cx = add nuw i32 %.val.i.i.i522, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !14
  br label %lean_inc_ref.exit.i524

bb.bc:                                            ; preds = %lean_dec.exit457
  %.not.i.i.i523 = icmp eq i32 %.val.i.i.i522, 0
  br i1 %.not.i.i.i523, label %lean_inc_ref.exit.i524, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cy = atomicrmw sub ptr %i.cv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit.i524

lean_inc_ref.exit.i524:                           ; preds = %bb.bd, %bb.bc, %bb.bb
  tail call void @lean_inc_heartbeat() #9
  %i.cz = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 8 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.be, label %l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit525

bb.be:                                            ; preds = %lean_inc_ref.exit.i524
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit525: ; preds = %lean_inc_ref.exit.i524
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 1, ptr %i.cz, align 4, !tbaa !14
  store i32 65552, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.dc, align 8, !tbaa !12
  %.val.i.i530 = load i32, ptr %i.cv, align 4, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i530, 0
  br i1 %i.dd, label %bb.bf, label %bb.bg, !prof !15

bb.bf:                                            ; preds = %l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit525
  %i.de = add nuw i32 %.val.i.i530, 1
  store i32 %i.de, ptr %i.cv, align 4, !tbaa !14
  br label %lean_inc.exit424

bb.bg:                                            ; preds = %l_Lean_PrettyPrinter_Delaborator_SubExpr_getExpr___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_maybeAddBlockImplicit_spec__0___redArg.exit525
  %.not.i.i531 = icmp eq i32 %.val.i.i530, 0
  br i1 %.not.i.i531, label %lean_inc.exit424, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.df = atomicrmw sub ptr %i.cv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit424

lean_inc.exit424:                                 ; preds = %bb.bh, %bb.bg, %bb.bf
  %.val.i533 = load i32, ptr %i.cz, align 8, !tbaa !14 ; 4 uses
  %i.dg = icmp eq i32 %.val.i533, 1
  br i1 %i.dg, label %.preheader.i535, label %bb.bm

.preheader.i535:                                  ; preds = %lean_inc.exit424
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !12 ; 4 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = and i64 %i.di, 1
  %.not.i.i537 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i537, label %bb.bi, label %lean_dec.exit.i538

bb.bi:                                            ; preds = %.preheader.i535
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !14 ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %bb.bj, label %bb.bk, !prof !15

bb.bj:                                            ; preds = %bb.bi
  %i.dm = add nsw i32 %i.dk, -1
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !14
  br label %lean_dec.exit.i538

bb.bk:                                            ; preds = %bb.bi
  %.not.i7.i542 = icmp eq i32 %i.dk, 0
  br i1 %.not.i7.i542, label %lean_dec.exit.i538, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dh) #9
  br label %lean_dec.exit.i538

lean_dec.exit.i538:                               ; preds = %bb.bl, %bb.bk, %bb.bj, %.preheader.i535
  tail call void @lean_free_object(ptr noundef nonnull %i.cz) #9
  br label %lean_dec_ref_known.exit543

bb.bm:                                            ; preds = %lean_inc.exit424
  %i.dn = icmp sgt i32 %.val.i533, 1
  br i1 %i.dn, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.do = add nsw i32 %.val.i533, -1
  store i32 %i.do, ptr %i.cz, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit543

bb.bo:                                            ; preds = %bb.bm
  %.not.i8.i534 = icmp eq i32 %.val.i533, 0
  br i1 %.not.i8.i534, label %lean_dec_ref_known.exit543, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #9
  br label %lean_dec_ref_known.exit543

lean_dec_ref_known.exit543:                       ; preds = %lean_dec.exit.i538, %bb.bn, %bb.bo, %bb.bp
  %i.dp = icmp eq i8 %i.e, 0
  %or.cond403 = select i1 %i.at, i1 %i.dp, i1 false
  br i1 %or.cond403, label %bb.bq, label %bb.dz

bb.bq:                                            ; preds = %lean_dec_ref_known.exit543
  %i.dq = load i32, ptr %i.cv, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %bb.bq
  %i.ds = add nsw i32 %i.dq, -1
  store i32 %i.ds, ptr %i.cv, align 4, !tbaa !14
  br label %lean_dec.exit

bb.bs:                                            ; preds = %bb.bq
  %.not.i463 = icmp eq i32 %i.dq, 0
  br i1 %.not.i463, label %lean_dec.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #9
  br label %lean_dec.exit

bb.bu:                                            ; preds = %lean_obj_tag.exit496
  %.val488 = load i32, ptr %i.v, align 8, !tbaa !14
  %i.dt = icmp eq i32 %.val488, 1
  br i1 %i.dt, label %lean_dec.exit437, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.du = ptrtoint ptr %i.ae to i64
  %i.dv = and i64 %i.du, 1
  %.not.i419 = icmp eq i64 %i.dv, 0
  br i1 %.not.i419, label %bb.bw, label %lean_inc.exit420

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i547 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.dw = icmp sgt i32 %.val.i.i547, 0
  br i1 %i.dw, label %bb.bx, label %bb.by, !prof !15

bb.bx:                                            ; preds = %bb.bw
  %i.dx = add nuw i32 %.val.i.i547, 1
  store i32 %i.dx, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc.exit420
end_hunk_6
begin_hunk_7_@l___private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_analyzeLet:bb.a

bb.y:                                             ; preds = %lean_dec.exit.i281.1
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !14 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ab, label %bb.z, !prof !15

bb.z:                                             ; preds = %bb.y
  %.not.i7.i285.2 = icmp eq i32 %i.ar, 0
  br i1 %.not.i7.i285.2, label %lean_dec.exit.i281.2, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #9
  br label %lean_dec.exit.i281.2

bb.ab:                                            ; preds = %bb.y
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.ao, align 4, !tbaa !14
  br label %lean_dec.exit.i281.2

lean_dec.exit.i281.2:                             ; preds = %bb.ab, %bb.aa, %bb.z, %lean_dec.exit.i281.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12 ; 4 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i.i280.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i280.3, label %bb.ac, label %lean_dec.exit.i281.3

bb.ac:                                            ; preds = %lean_dec.exit.i281.2
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !14 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.af, label %bb.ad, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %.not.i7.i285.3 = icmp eq i32 %i.ay, 0
  br i1 %.not.i7.i285.3, label %lean_dec.exit.i281.3, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #9
  br label %lean_dec.exit.i281.3

bb.af:                                            ; preds = %bb.ac
  %i.ba = add nsw i32 %i.ay, -1
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !14
  br label %lean_dec.exit.i281.3

lean_dec.exit.i281.3:                             ; preds = %bb.af, %bb.ae, %bb.ad, %lean_dec.exit.i281.2
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #9
  br label %lean_dec_ref_known.exit286

bb.ag:                                            ; preds = %lean_inc_ref.exit275
  %i.bb = icmp sgt i32 %.val.i276, 1
  br i1 %i.bb, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.bc = add nsw i32 %.val.i276, -1
  store i32 %i.bc, ptr %i.d, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit286

bb.ai:                                            ; preds = %bb.ag
  %.not.i8.i277 = icmp eq i32 %.val.i276, 0
  br i1 %.not.i8.i277, label %lean_dec_ref_known.exit286, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #9
  br label %lean_dec_ref_known.exit286

lean_dec_ref_known.exit286:                       ; preds = %lean_dec.exit.i281.3, %bb.ah, %bb.ai, %bb.aj
  %i.bd = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_canBottomUp(ptr noundef nonnull %i.v, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 21 to ptr), ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 12 uses
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = and i64 %i.be, 1
  %.not.i287 = icmp eq i64 %i.bf, 0               ; 2 uses
  br i1 %.not.i287, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_dec_ref_known.exit286
  %i.bg = lshr i64 %i.be, 1
  %i.bh = trunc i64 %i.bg to i32
  br label %lean_obj_tag.exit290

bb.al:                                            ; preds = %lean_dec_ref_known.exit286
  %i.bi = getelementptr i8, ptr %i.bd, i64 4
  %.val.i289 = load i32, ptr %i.bi, align 4
  %i.bj = lshr i32 %.val.i289, 24
  br label %lean_obj_tag.exit290

lean_obj_tag.exit290:                             ; preds = %bb.ak, %bb.al
  %.0.i288 = phi i32 [ %i.bh, %bb.ak ], [ %i.bj, %bb.al ]
  %i.bk = icmp eq i32 %.0.i288, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !12 ; 25 uses
  br i1 %i.bk, label %bb.am, label %bb.cs

bb.am:                                            ; preds = %lean_obj_tag.exit290
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = and i64 %i.bn, 1
  %.not.i241 = icmp eq i64 %i.bo, 0               ; 5 uses
  br i1 %.not.i241, label %bb.an, label %lean_inc.exit242

bb.an:                                            ; preds = %bb.am
  %.val.i.i291 = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.bp = icmp sgt i32 %.val.i.i291, 0
  br i1 %i.bp, label %bb.ao, label %bb.ap, !prof !15

bb.ao:                                            ; preds = %bb.an
  %i.bq = add nuw i32 %.val.i.i291, 1
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !14
  br label %lean_inc.exit242

bb.ap:                                            ; preds = %bb.an
  %.not.i.i292 = icmp eq i32 %.val.i.i291, 0
  br i1 %.not.i.i292, label %lean_inc.exit242, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.br = atomicrmw sub ptr %i.bm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit242

lean_inc.exit242:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i294 = load i32, ptr %i.bd, align 8, !tbaa !14 ; 4 uses
  %i.bs = icmp eq i32 %.val.i294, 1
  br i1 %i.bs, label %.preheader.i296, label %bb.av

.preheader.i296:                                  ; preds = %lean_inc.exit242
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !12 ; 4 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, 1
  %.not.i.i298 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i298, label %bb.ar, label %lean_dec.exit.i299

bb.ar:                                            ; preds = %.preheader.i296
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !14 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.by = add nsw i32 %i.bw, -1
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !14
  br label %lean_dec.exit.i299

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i303 = icmp eq i32 %i.bw, 0
  br i1 %.not.i7.i303, label %lean_dec.exit.i299, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bt) #9
  br label %lean_dec.exit.i299

lean_dec.exit.i299:                               ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i296
  tail call void @lean_free_object(ptr noundef nonnull %i.bd) #9
  br label %lean_dec_ref_known.exit304

bb.av:                                            ; preds = %lean_inc.exit242
  %i.bz = icmp sgt i32 %.val.i294, 1
  br i1 %i.bz, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.ca = add nsw i32 %.val.i294, -1
  store i32 %i.ca, ptr %i.bd, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit304

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i295 = icmp eq i32 %.val.i294, 0
  br i1 %.not.i8.i295, label %lean_dec_ref_known.exit304, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #9
  br label %lean_dec_ref_known.exit304

lean_dec_ref_known.exit304:                       ; preds = %lean_dec.exit.i299, %bb.aw, %bb.ax, %bb.ay
  %i.cb = lshr i64 %i.bn, 1
  %i.cc = and i64 %i.bn, 510
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.az, label %bb.bv

bb.az:                                            ; preds = %lean_dec_ref_known.exit304
  %i.ce = tail call ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_annotateBool(ptr noundef nonnull @l_Lean_getPPAnalysisLetVarType___closed__1_value, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 7 uses
  %i.cf = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cg = and i64 %i.cf, 1
  %.not.i305 = icmp eq i64 %i.cg, 0
  br i1 %.not.i305, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = trunc i64 %i.ch to i32
  br label %lean_obj_tag.exit308

bb.bb:                                            ; preds = %bb.az
  %i.cj = getelementptr i8, ptr %i.ce, i64 4
  %.val.i307 = load i32, ptr %i.cj, align 4
  %i.ck = lshr i32 %.val.i307, 24
  br label %lean_obj_tag.exit308

lean_obj_tag.exit308:                             ; preds = %bb.ba, %bb.bb
  %.0.i306 = phi i32 [ %i.ci, %bb.ba ], [ %i.ck, %bb.bb ]
  %i.cl = icmp eq i32 %.0.i306, 0
  br i1 %i.cl, label %bb.bc, label %bb.bq

bb.bc:                                            ; preds = %lean_obj_tag.exit308
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.ce, i32 noundef 1)
  br i1 %.not.i241, label %bb.bd, label %lean_inc_ref.exit314

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i309 = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.cm = icmp sgt i32 %.val.i.i309, 0
  br i1 %i.cm, label %bb.be, label %bb.bf, !prof !15

bb.be:                                            ; preds = %bb.bd
  %i.cn = add nuw i32 %.val.i.i309, 1
  store i32 %i.cn, ptr %i.bm, align 4, !tbaa !14
  br label %lean_inc_ref.exit314

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i310 = icmp eq i32 %.val.i.i309, 0
  br i1 %.not.i.i310, label %lean_inc_ref.exit314, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.co = atomicrmw sub ptr %i.bm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit314

lean_inc_ref.exit314:                             ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %i.cp = tail call ptr @lean_alloc_object(i64 noundef 32) #9 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 65535
  %i.ct = or disjoint i32 %i.cs, -184549376
  store i32 %i.ct, ptr %i.cq, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze___boxed, ptr %i.cu, align 8, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i16 8, ptr %i.cv, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 18
  store i16 1, ptr %i.cw, align 2, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store ptr %i.bm, ptr %i.cx, align 8, !tbaa !12
  store i32 2, ptr %i.cp, align 8, !tbaa !14
  %i.cy = tail call ptr @lean_alloc_object(i64 noundef 56) #9 ; 10 uses
  store i32 1, ptr %i.cy, align 4, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = and i32 %i.da, 65535
  %i.dc = or disjoint i32 %i.db, -184549376
  store i32 %i.dc, ptr %i.cz, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_withKnowing___boxed, ptr %i.dd, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i16 11, ptr %i.de, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 18
  store i16 4, ptr %i.df, align 2, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.dg, align 8, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr inttoptr (i64 3 to ptr), ptr %i.dh, align 8, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store ptr %i.bm, ptr %i.di, align 8, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr %i.cp, ptr %i.dj, align 8, !tbaa !12
  %i.dk = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withLetVarType___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_analyzeLet_spec__6(ptr noundef nonnull %i.cy, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 6 uses
  %i.dl = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dm = and i64 %i.dl, 1
  %.not.i315 = icmp eq i64 %i.dm, 0
  br i1 %.not.i315, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %lean_inc_ref.exit314
  %i.dn = lshr i64 %i.dl, 1
  %i.do = trunc i64 %i.dn to i32
  br label %lean_obj_tag.exit318

bb.bi:                                            ; preds = %lean_inc_ref.exit314
  %i.dp = getelementptr i8, ptr %i.dk, i64 4
  %.val.i317 = load i32, ptr %i.dp, align 4
  %i.dq = lshr i32 %.val.i317, 24
  br label %lean_obj_tag.exit318

lean_obj_tag.exit318:                             ; preds = %bb.bh, %bb.bi
  %.0.i316 = phi i32 [ %i.do, %bb.bh ], [ %i.dq, %bb.bi ]
  %i.dr = icmp eq i32 %.0.i316, 0
  br i1 %i.dr, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %lean_obj_tag.exit318
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.dk, i32 noundef 1)
  %i.ds = tail call ptr @lean_alloc_object(i64 noundef 56) #9 ; 10 uses
  store i32 1, ptr %i.ds, align 4, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 65535
  %i.dw = or disjoint i32 %i.dv, -184549376
  store i32 %i.dw, ptr %i.dt, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_withKnowing___boxed, ptr %i.dx, align 8, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i16 11, ptr %i.dy, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  store i16 4, ptr %i.dz, align 2, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ea, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  store ptr inttoptr (i64 3 to ptr), ptr %i.eb, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.ec, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %i.cp, ptr %i.ed, align 8, !tbaa !12
  %i.ee = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withLetValue___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_analyzeLet_spec__7(ptr noundef nonnull %i.ds, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not.i319 = icmp eq i64 %i.eg, 0
  br i1 %.not.i319, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eh = lshr i64 %i.ef, 1
  %i.ei = trunc i64 %i.eh to i32
  br label %lean_obj_tag.exit322

bb.bl:                                            ; preds = %bb.bj
  %i.ej = getelementptr i8, ptr %i.ee, i64 4
  %.val.i321 = load i32, ptr %i.ej, align 4
  %i.ek = lshr i32 %.val.i321, 24
  br label %lean_obj_tag.exit322

lean_obj_tag.exit322:                             ; preds = %bb.bk, %bb.bl
  %.0.i320 = phi i32 [ %i.ei, %bb.bk ], [ %i.ek, %bb.bl ]
  %i.el = icmp eq i32 %.0.i320, 0
  br i1 %i.el, label %lean_dec.exit249, label %lean_dec.exit249.thread356

bb.bm:                                            ; preds = %lean_obj_tag.exit318
  %i.em = load i32, ptr %i.cp, align 8, !tbaa !14 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %i.cp, align 8, !tbaa !14
  br label %lean_dec.exit249.thread356

bb.bo:                                            ; preds = %bb.bm
  %.not.i263 = icmp eq i32 %i.em, 0
  br i1 %.not.i263, label %lean_dec.exit249.thread356, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cp) #9
  br label %lean_dec.exit249.thread356

bb.bq:                                            ; preds = %lean_obj_tag.exit308
  br i1 %.not.i241, label %bb.br, label %lean_dec.exit249.thread356

bb.br:                                            ; preds = %bb.bq
  %i.ep = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.bs, label %bb.bt, !prof !15

bb.bs:                                            ; preds = %bb.br
  %i.er = add nsw i32 %i.ep, -1
  store i32 %i.er, ptr %i.bm, align 4, !tbaa !14
  br label %lean_dec.exit249.thread356

bb.bt:                                            ; preds = %bb.br
  %.not.i254 = icmp eq i32 %i.ep, 0
  br i1 %.not.i254, label %lean_dec.exit249.thread356, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #9
  br label %lean_dec.exit249.thread356

bb.bv:                                            ; preds = %lean_dec_ref_known.exit304
  %i.es = tail call ptr @lean_alloc_object(i64 noundef 32) #9 ; 7 uses
  store i32 1, ptr %i.es, align 4, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = and i32 %i.eu, 65535
  %i.ew = or disjoint i32 %i.ev, -184549376
  store i32 %i.ew, ptr %i.et, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze___boxed, ptr %i.ex, align 8, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i16 8, ptr %i.ey, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 18
  store i16 1, ptr %i.ez, align 2, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.fa, align 8, !tbaa !12
  br i1 %.not.i241, label %bb.bw, label %lean_inc_n.exit

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i324 = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.fb = icmp sgt i32 %.val.i.i324, 0
  br i1 %i.fb, label %bb.bx, label %bb.by, !prof !15

bb.bx:                                            ; preds = %bb.bw
  %i.fc = add nuw i32 %.val.i.i324, 2
  store i32 %i.fc, ptr %i.bm, align 4, !tbaa !14
  br label %lean_inc_n.exit

bb.by:                                            ; preds = %bb.bw
  %.not.i.i325 = icmp eq i32 %.val.i.i324, 0
  br i1 %.not.i.i325, label %lean_inc_n.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fd = atomicrmw sub ptr %i.bm, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.bv, %bb.bx, %bb.by, %bb.bz
  %i.fe = tail call ptr @lean_alloc_object(i64 noundef 56) #9 ; 10 uses
  store i32 1, ptr %i.fe, align 4, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = and i32 %i.fg, 65535
  %i.fi = or disjoint i32 %i.fh, -184549376
  store i32 %i.fi, ptr %i.ff, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr @l_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_withKnowing___boxed, ptr %i.fj, align 8, !tbaa !12
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i16 11, ptr %i.fk, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 18
  store i16 4, ptr %i.fl, align 2, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.fm, align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %i.bm, ptr %i.fn, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  store ptr %i.bm, ptr %i.fo, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store ptr %i.es, ptr %i.fp, align 8, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !12  ; 4 uses
  %.val.i.i326 = load i32, ptr %i.fw, align 4, !tbaa !14 ; 3 uses
  %i.fx = icmp sgt i32 %.val.i.i326, 0
  br i1 %i.fx, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %lean_inc_n.exit
  %i.fy = add nuw i32 %.val.i.i326, 1
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !14
  br label %lean_inc_ref.exit328

bb.cb:                                            ; preds = %lean_inc_n.exit
  %.not.i.i327 = icmp eq i32 %.val.i.i326, 0
  br i1 %.not.i.i327, label %lean_inc_ref.exit328, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fz = atomicrmw sub ptr %i.fw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit328

lean_inc_ref.exit328:                             ; preds = %bb.ca, %bb.cb, %bb.cc
  tail call void @lean_inc_heartbeat() #9
  %i.ga = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 13 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.cd, label %lean_alloc_ctor.exit

bb.cd:                                            ; preds = %lean_inc_ref.exit328
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit328
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  store i64 0, ptr %i.gd, align 8, !tbaa !10
  store i32 1, ptr %i.ga, align 8, !tbaa !14
  store i32 65560, ptr %i.gc, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  store ptr %i.fw, ptr %i.ge, align 8, !tbaa !12
  store i8 %i.fr, ptr %i.gd, align 8, !tbaa !16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 17
  store i8 %i.ft, ptr %i.gf, align 1, !tbaa !16
  %i.gg = trunc i64 %i.cb to i8
  br i1 %.not.i241, label %bb.ce, label %lean_dec.exit251

bb.ce:                                            ; preds = %lean_alloc_ctor.exit
  %i.gh = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.cf, label %bb.cg, !prof !15

bb.cf:                                            ; preds = %bb.ce
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %i.bm, align 4, !tbaa !14
  br label %lean_dec.exit251

bb.cg:                                            ; preds = %bb.ce
  %.not.i255 = icmp eq i32 %i.gh, 0
  br i1 %.not.i255, label %lean_dec.exit251, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #9
  br label %lean_dec.exit251

lean_dec.exit251:                                 ; preds = %bb.ch, %bb.cg, %bb.cf, %lean_alloc_ctor.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 18
  store i8 %i.gg, ptr %i.gk, align 2, !tbaa !16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 19
  store i8 %i.fv, ptr %i.gl, align 1, !tbaa !16
  %i.gm = tail call ptr @l_Lean_PrettyPrinter_Delaborator_SubExpr_withLetValue___at___00__private_Lean_PrettyPrinter_Delaborator_TopDownAnalyze_0__Lean_PrettyPrinter_Delaborator_TopDownAnalyze_analyze_analyzeLet_spec__7(ptr noundef nonnull %i.fe, ptr noundef nonnull %i.ga, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 4 uses
  %.val.i329 = load i32, ptr %i.ga, align 8, !tbaa !14 ; 4 uses
  %i.gn = icmp eq i32 %.val.i329, 1
  br i1 %i.gn, label %.preheader.i331, label %bb.cm

.preheader.i331:                                  ; preds = %lean_dec.exit251
  %i.go = load ptr, ptr %i.ge, align 8, !tbaa !12 ; 4 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i.i333 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i333, label %bb.ci, label %lean_dec.exit.i334

bb.ci:                                            ; preds = %.preheader.i331
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !14 ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.cj, label %bb.ck, !prof !15

bb.cj:                                            ; preds = %bb.ci
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %i.go, align 4, !tbaa !14
  br label %lean_dec.exit.i334

bb.ck:                                            ; preds = %bb.ci
  %.not.i7.i338 = icmp eq i32 %i.gr, 0
  br i1 %.not.i7.i338, label %lean_dec.exit.i334, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.go) #9
  br label %lean_dec.exit.i334

lean_dec.exit.i334:                               ; preds = %bb.cl, %bb.ck, %bb.cj, %.preheader.i331
  tail call void @lean_free_object(ptr noundef nonnull %i.ga) #9
  br label %lean_dec_ref_known.exit339

bb.cm:                                            ; preds = %lean_dec.exit251
  %i.gu = icmp sgt i32 %.val.i329, 1
  br i1 %i.gu, label %bb.cn, label %bb.co, !prof !15

bb.cn:                                            ; preds = %bb.cm
  %i.gv = add nsw i32 %.val.i329, -1
  store i32 %i.gv, ptr %i.ga, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit339

bb.co:                                            ; preds = %bb.cm
  %.not.i8.i330 = icmp eq i32 %.val.i329, 0
  br i1 %.not.i8.i330, label %lean_dec_ref_known.exit339, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #9
  br label %lean_dec_ref_known.exit339

lean_dec_ref_known.exit339:                       ; preds = %lean_dec.exit.i334, %bb.cn, %bb.co, %bb.cp
  %i.gw = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gx = and i64 %i.gw, 1
  %.not.i340 = icmp eq i64 %i.gx, 0
  br i1 %.not.i340, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %lean_dec_ref_known.exit339
  %i.gy = lshr i64 %i.gw, 1
  %i.gz = trunc i64 %i.gy to i32
  br label %lean_obj_tag.exit343
end_hunk_7
