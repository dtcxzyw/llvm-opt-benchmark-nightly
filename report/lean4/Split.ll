Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Split?download=true
inline.NumInlined: 3815
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkIteCondStatus___redArg:bb.a
  %i.v = and i64 %i.n, 510
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.p, label %bb.y

bb.p:                                             ; preds = %lean_dec.exit102
  %.val.i126 = load i32, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  %i.x = icmp eq i32 %.val.i126, 1
  br i1 %i.x, label %.preheader.i, label %bb.u

.preheader.i:                                     ; preds = %bb.p
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !13   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i.i127 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i127, label %bb.q, label %lean_dec.exit.i

bb.q:                                             ; preds = %.preheader.i
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !10  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i7.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #7
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.p
  %i.ae = icmp sgt i32 %.val.i126, 1
  br i1 %i.ae, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.af = add nsw i32 %.val.i126, -1
  store i32 %i.af, ptr %i.d, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.w:                                             ; preds = %bb.u
  %.not.i8.i = icmp eq i32 %.val.i126, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.v, %bb.w, %bb.x
  %i.ag = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 ; 2 uses
  %.pre = ptrtoint ptr %i.ag to i64
  br label %lean_dec_ref.exit120

bb.y:                                             ; preds = %lean_dec.exit102
  %i.ah = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit120

bb.aa:                                            ; preds = %bb.y
  %.not.i119 = icmp eq i32 %i.ah, 0
  br i1 %.not.i119, label %lean_dec_ref.exit120, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit120

bb.ac:                                            ; preds = %lean_obj_tag.exit
  %i.ak = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit120

bb.ae:                                            ; preds = %bb.ac
  %.not.i117 = icmp eq i32 %i.ak, 0
  br i1 %.not.i117, label %lean_dec_ref.exit120, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit120

lean_dec_ref.exit120:                             ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %lean_dec_ref_known.exit
  %.pre-phi = phi i64 [ %i.e, %bb.af ], [ %i.e, %bb.ae ], [ %i.e, %bb.ad ], [ %i.e, %bb.ab ], [ %i.e, %bb.aa ], [ %i.e, %bb.z ], [ %.pre, %lean_dec_ref_known.exit ] ; 2 uses
  %.189 = phi ptr [ %i.d, %bb.af ], [ %i.d, %bb.ae ], [ %i.d, %bb.ad ], [ %i.d, %bb.ab ], [ %i.d, %bb.aa ], [ %i.d, %bb.z ], [ %i.ag, %lean_dec_ref_known.exit ] ; 11 uses
  %i.an = and i64 %.pre-phi, 1
  %.not.i128 = icmp eq i64 %i.an, 0               ; 3 uses
  br i1 %.not.i128, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %lean_dec_ref.exit120
  %i.ao = lshr i64 %.pre-phi, 1
  %i.ap = trunc i64 %i.ao to i32
  br label %lean_obj_tag.exit131

bb.ah:                                            ; preds = %lean_dec_ref.exit120
  %i.aq = getelementptr i8, ptr %.189, i64 4
  %.val.i130 = load i32, ptr %i.aq, align 4
  %i.ar = lshr i32 %.val.i130, 24
  br label %lean_obj_tag.exit131

lean_obj_tag.exit131:                             ; preds = %bb.ag, %bb.ah
  %.0.i129 = phi i32 [ %i.ap, %bb.ag ], [ %i.ar, %bb.ah ]
  %i.as = icmp eq i32 %.0.i129, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.189, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13 ; 15 uses
  %.189.val121 = load i32, ptr %.189, align 8, !tbaa !10
  %i.av = icmp eq i32 %.189.val121, 1             ; 4 uses
  br i1 %i.as, label %bb.ai, label %bb.bh

bb.ai:                                            ; preds = %lean_obj_tag.exit131
  %.pre144 = ptrtoint ptr %i.au to i64            ; 4 uses
  br i1 %i.av, label %lean_dec.exit100, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aw = and i64 %.pre144, 1
  %.not.i104 = icmp eq i64 %i.aw, 0
  br i1 %.not.i104, label %bb.ak, label %lean_inc.exit105

bb.ak:                                            ; preds = %bb.aj
  %.val.i.i132 = load i32, ptr %i.au, align 4, !tbaa !10 ; 3 uses
  %i.ax = icmp sgt i32 %.val.i.i132, 0
  br i1 %i.ax, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.ay = add nuw i32 %.val.i.i132, 1
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !10
  br label %lean_inc.exit105

bb.am:                                            ; preds = %bb.ak
  %.not.i.i133 = icmp eq i32 %.val.i.i132, 0
  br i1 %.not.i.i133, label %lean_inc.exit105, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.az = atomicrmw sub ptr %i.au, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit105

lean_inc.exit105:                                 ; preds = %bb.an, %bb.am, %bb.al, %bb.aj
  br i1 %.not.i128, label %bb.ao, label %lean_dec.exit100

bb.ao:                                            ; preds = %lean_inc.exit105
  %i.ba = load i32, ptr %.189, align 8, !tbaa !10 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.189, align 8, !tbaa !10
  br label %lean_dec.exit100

bb.aq:                                            ; preds = %bb.ao
  %.not.i109 = icmp eq i32 %i.ba, 0
  br i1 %.not.i109, label %lean_dec.exit100, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.189) #7
  br label %lean_dec.exit100

lean_dec.exit100:                                 ; preds = %bb.ai, %lean_inc.exit105, %bb.ap, %bb.aq, %bb.ar
  %.093 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ar ], [ inttoptr (i64 1 to ptr), %lean_inc.exit105 ], [ inttoptr (i64 1 to ptr), %bb.ap ], [ inttoptr (i64 1 to ptr), %bb.aq ], [ %.189, %bb.ai ] ; 2 uses
  %i.bd = and i64 %.pre144, 510
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.as, label %bb.ba

bb.as:                                            ; preds = %lean_dec.exit100
  tail call void @lean_inc_heartbeat() #7
  %i.bf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 7 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.at, label %lean_alloc_ctor.exit

bb.at:                                            ; preds = %bb.as
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.as
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 0, ptr %i.bi, align 8, !tbaa !20
  store i32 1, ptr %i.bf, align 8, !tbaa !10
  store i32 33619992, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.bj, align 8, !tbaa !13
  %i.bk = and i64 %.pre144, 1
  %.not.i97 = icmp eq i64 %i.bk, 0
  br i1 %.not.i97, label %bb.au, label %lean_dec.exit98

bb.au:                                            ; preds = %lean_alloc_ctor.exit
  %i.bl = load i32, ptr %i.au, align 512, !tbaa !10 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.av, label %bb.aw, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.au, align 512, !tbaa !10
  br label %lean_dec.exit98

bb.aw:                                            ; preds = %bb.au
  %.not.i111 = icmp eq i32 %i.bl, 0
  br i1 %.not.i111, label %lean_dec.exit98, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #7
  br label %lean_dec.exit98

lean_dec.exit98:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %lean_alloc_ctor.exit
  br i1 %i.av, label %lean_dec.exit.sink.split, label %bb.ay

bb.ay:                                            ; preds = %lean_dec.exit98
  tail call void @lean_inc_heartbeat() #7
  %i.bo = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.az, label %lean_dec.exit.sink.split.sink.split

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.ba:                                            ; preds = %lean_dec.exit100
  %i.bq = and i64 %.pre144, 1
  %.not.i95 = icmp eq i64 %i.bq, 0
  br i1 %.not.i95, label %bb.bb, label %lean_dec.exit96

bb.bb:                                            ; preds = %bb.ba
  %i.br = load i32, ptr %i.au, align 4, !tbaa !10 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.bc, label %bb.bd, !prof !11

bb.bc:                                            ; preds = %bb.bb
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.au, align 4, !tbaa !10
  br label %lean_dec.exit96

bb.bd:                                            ; preds = %bb.bb
  %.not.i113 = icmp eq i32 %i.br, 0
  br i1 %.not.i113, label %lean_dec.exit96, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #7
  br label %lean_dec.exit96

lean_dec.exit96:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba
  br i1 %i.av, label %lean_dec.exit.sink.split, label %bb.bf

bb.bf:                                            ; preds = %lean_dec.exit96
  tail call void @lean_inc_heartbeat() #7
  %i.bu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.bg, label %lean_dec.exit.sink.split.sink.split

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.bh:                                            ; preds = %lean_obj_tag.exit131
  br i1 %i.av, label %lean_dec.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.bw = ptrtoint ptr %i.au to i64
  %i.bx = and i64 %i.bw, 1
  %.not.i103 = icmp eq i64 %i.bx, 0
  br i1 %.not.i103, label %bb.bj, label %lean_inc.exit

bb.bj:                                            ; preds = %bb.bi
  %.val.i.i137 = load i32, ptr %i.au, align 4, !tbaa !10 ; 3 uses
  %i.by = icmp sgt i32 %.val.i.i137, 0
  br i1 %i.by, label %bb.bk, label %bb.bl, !prof !11

bb.bk:                                            ; preds = %bb.bj
  %i.bz = add nuw i32 %.val.i.i137, 1
  store i32 %i.bz, ptr %i.au, align 4, !tbaa !10
  br label %lean_inc.exit

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i138 = icmp eq i32 %.val.i.i137, 0
  br i1 %.not.i.i138, label %lean_inc.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ca = atomicrmw sub ptr %i.au, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  br i1 %.not.i128, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %lean_inc.exit
  %i.cb = load i32, ptr %.189, align 8, !tbaa !10 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.bo, label %bb.bp, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %.189, align 8, !tbaa !10
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %.not.i115 = icmp eq i32 %i.cb, 0
  br i1 %.not.i115, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.189) #7
  br label %bb.br

bb.br:                                            ; preds = %lean_inc.exit, %bb.bo, %bb.bp, %bb.bq
  tail call void @lean_inc_heartbeat() #7
  %i.ce = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.bs, label %lean_dec.exit.sink.split.sink.split

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_dec.exit.sink.split.sink.split:              ; preds = %bb.br, %bb.bf, %bb.ay
  %.sink169 = phi ptr [ %i.bo, %bb.ay ], [ %i.bu, %bb.bf ], [ %i.ce, %bb.br ] ; 3 uses
  %.sink166 = phi i32 [ 65552, %bb.ay ], [ 65552, %bb.bf ], [ 16842768, %bb.br ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ %i.au, %bb.br ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink169, i64 4
  store i32 1, ptr %.sink169, align 4, !tbaa !10
  store i32 %.sink166, ptr %i.cg, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_dec.exit.sink.split.sink.split, %lean_dec.exit96, %lean_dec.exit98
  %.sink165 = phi ptr [ %.093, %lean_dec.exit96 ], [ %.093, %lean_dec.exit98 ], [ %.sink169, %lean_dec.exit.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ inttoptr (i64 1 to ptr), %lean_dec.exit96 ], [ %i.bf, %lean_dec.exit98 ], [ %.sink.ph, %lean_dec.exit.sink.split.sink.split ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink165, i64 8
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !13
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %bb.bh
  %.4 = phi ptr [ %.189, %bb.bh ], [ %.sink165, %lean_dec.exit.sink.split ]
  ret ptr %.4
}

declare ptr @l_Lean_Meta_Grind_isEqTrue___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkIteCondStatus___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkIteCondStatus___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.b = ptrtoint ptr %6 to i64
  %i.c = and i64 %i.b, 1
  %.not.i16 = icmp eq i64 %i.c, 0
  br i1 %.not.i16, label %bb.b, label %lean_dec.exit17

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %6, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %6, align 4, !tbaa !10
  br label %lean_dec.exit17

bb.d:                                             ; preds = %bb.b
  %.not.i18 = icmp eq i32 %i.d, 0
  br i1 %.not.i18, label %lean_dec.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #7
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit17
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %5, align 4, !tbaa !10
  br label %lean_dec_ref.exit28

bb.g:                                             ; preds = %lean_dec.exit17
  %.not.i27 = icmp eq i32 %i.g, 0
  br i1 %.not.i27, label %lean_dec_ref.exit28, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec_ref.exit28

lean_dec_ref.exit28:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i14 = icmp eq i64 %i.k, 0
  br i1 %.not.i14, label %bb.i, label %lean_dec.exit15

bb.i:                                             ; preds = %lean_dec_ref.exit28
  %i.l = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDisjunctStatus___redArg:bb.a
  br label %lean_dec_ref.exit257

bb.cv:                                            ; preds = %lean_dec_ref.exit259
  %.not.i256 = icmp eq i32 %i.dl, 0
  br i1 %.not.i256, label %lean_dec_ref.exit257, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit257

lean_dec_ref.exit257:                             ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.do = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.cx, label %bb.cy, !prof !11

bb.cx:                                            ; preds = %lean_dec_ref.exit257
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit255

bb.cy:                                            ; preds = %lean_dec_ref.exit257
  %.not.i254 = icmp eq i32 %i.do, 0
  br i1 %.not.i254, label %lean_dec_ref.exit255, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit255

lean_dec_ref.exit255:                             ; preds = %bb.cx, %bb.cy, %bb.cz
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !13 ; 5 uses
  %.val = load i32, ptr %i.d, align 8, !tbaa !10
  %i.dt = icmp eq i32 %.val, 1
  br i1 %i.dt, label %lean_dec.exit211, label %bb.da

bb.da:                                            ; preds = %lean_dec_ref.exit255
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = and i64 %i.du, 1
  %.not.i225 = icmp eq i64 %i.dv, 0
  br i1 %.not.i225, label %bb.db, label %lean_inc.exit226

bb.db:                                            ; preds = %bb.da
  %.val.i.i306 = load i32, ptr %i.ds, align 4, !tbaa !10 ; 3 uses
  %i.dw = icmp sgt i32 %.val.i.i306, 0
  br i1 %i.dw, label %bb.dc, label %bb.dd, !prof !11

bb.dc:                                            ; preds = %bb.db
  %i.dx = add nuw i32 %.val.i.i306, 1
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !10
  br label %lean_inc.exit226

bb.dd:                                            ; preds = %bb.db
  %.not.i.i307 = icmp eq i32 %.val.i.i306, 0
  br i1 %.not.i.i307, label %lean_inc.exit226, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.dy = atomicrmw sub ptr %i.ds, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit226

lean_inc.exit226:                                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.da
  br i1 %.not.i273, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %lean_inc.exit226
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !10  ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %bb.dg, label %bb.dh, !prof !11

bb.dg:                                            ; preds = %bb.df
  %i.eb = add nsw i32 %i.dz, -1
  store i32 %i.eb, ptr %i.d, align 8, !tbaa !10
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  %.not.i244 = icmp eq i32 %i.dz, 0
  br i1 %.not.i244, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %bb.dj

bb.dj:                                            ; preds = %lean_inc.exit226, %bb.dg, %bb.dh, %bb.di
  tail call void @lean_inc_heartbeat() #7
  %i.ec = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.dk, label %lean_alloc_ctor.exit309

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit309:                          ; preds = %bb.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 1, ptr %i.ec, align 4, !tbaa !10
  store i32 16842768, ptr %i.ee, align 4
  br label %lean_dec.exit211.sink.split

lean_dec.exit215.thread329:                       ; preds = %lean_dec.exit.i301, %bb.cj, %bb.ck, %bb.cl, %bb.cn, %bb.co, %bb.cp, %lean_dec.exit215.thread334
  %.2181332 = phi ptr [ %i.dh, %lean_dec.exit215.thread334 ], [ %i.cy, %lean_dec.exit.i301 ], [ %i.bx, %bb.cp ], [ %i.bx, %bb.co ], [ %i.bx, %bb.cn ], [ %i.bx, %bb.cl ], [ %i.bx, %bb.ck ], [ %i.bx, %bb.cj ] ; 12 uses
  %i.ef = ptrtoint ptr %.2181332 to i64           ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not.i310 = icmp eq i64 %i.eg, 0               ; 3 uses
  br i1 %.not.i310, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %lean_dec.exit215.thread329
  %i.eh = lshr i64 %i.ef, 1
  %i.ei = trunc i64 %i.eh to i32
  br label %lean_obj_tag.exit313

bb.dm:                                            ; preds = %lean_dec.exit215.thread329
  %i.ej = getelementptr i8, ptr %.2181332, i64 4
  %.val.i312 = load i32, ptr %i.ej, align 4
  %i.ek = lshr i32 %.val.i312, 24
  br label %lean_obj_tag.exit313

lean_obj_tag.exit313:                             ; preds = %bb.dl, %bb.dm
  %.0.i311 = phi i32 [ %i.ei, %bb.dl ], [ %i.ek, %bb.dm ]
  %i.el = icmp eq i32 %.0.i311, 0
  %i.em = getelementptr inbounds nuw i8, ptr %.2181332, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !13 ; 15 uses
  %.2181.val270 = load i32, ptr %.2181332, align 8, !tbaa !10
  %i.eo = icmp eq i32 %.2181.val270, 1            ; 4 uses
  br i1 %i.el, label %bb.dn, label %bb.el

bb.dn:                                            ; preds = %lean_obj_tag.exit313
  %.pre339 = ptrtoint ptr %i.en to i64            ; 4 uses
  br i1 %i.eo, label %lean_dec.exit209, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ep = and i64 %.pre339, 1
  %.not.i223 = icmp eq i64 %i.ep, 0
  br i1 %.not.i223, label %bb.dp, label %lean_inc.exit224

bb.dp:                                            ; preds = %bb.do
  %.val.i.i314 = load i32, ptr %i.en, align 4, !tbaa !10 ; 3 uses
  %i.eq = icmp sgt i32 %.val.i.i314, 0
  br i1 %i.eq, label %bb.dq, label %bb.dr, !prof !11

bb.dq:                                            ; preds = %bb.dp
  %i.er = add nuw i32 %.val.i.i314, 1
  store i32 %i.er, ptr %i.en, align 4, !tbaa !10
  br label %lean_inc.exit224

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i315 = icmp eq i32 %.val.i.i314, 0
  br i1 %.not.i.i315, label %lean_inc.exit224, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.es = atomicrmw sub ptr %i.en, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit224

lean_inc.exit224:                                 ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.do
  br i1 %.not.i310, label %bb.dt, label %lean_dec.exit209

bb.dt:                                            ; preds = %lean_inc.exit224
  %i.et = load i32, ptr %.2181332, align 8, !tbaa !10 ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.du, label %bb.dv, !prof !11

bb.du:                                            ; preds = %bb.dt
  %i.ev = add nsw i32 %i.et, -1
  store i32 %i.ev, ptr %.2181332, align 8, !tbaa !10
  br label %lean_dec.exit209

bb.dv:                                            ; preds = %bb.dt
  %.not.i246 = icmp eq i32 %i.et, 0
  br i1 %.not.i246, label %lean_dec.exit209, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2181332) #7
  br label %lean_dec.exit209

lean_dec.exit209:                                 ; preds = %bb.dn, %lean_inc.exit224, %bb.du, %bb.dv, %bb.dw
  %.0185 = phi ptr [ inttoptr (i64 1 to ptr), %bb.dw ], [ inttoptr (i64 1 to ptr), %lean_inc.exit224 ], [ inttoptr (i64 1 to ptr), %bb.du ], [ inttoptr (i64 1 to ptr), %bb.dv ], [ %.2181332, %bb.dn ] ; 2 uses
  %i.ew = and i64 %.pre339, 510
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.dx, label %bb.ee

bb.dx:                                            ; preds = %lean_dec.exit209
  tail call void @lean_inc_heartbeat() #7
  %i.ey = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 7 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.dy, label %lean_alloc_ctor.exit317

bb.dy:                                            ; preds = %bb.dx
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit317:                          ; preds = %bb.dx
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 0, ptr %i.fb, align 8, !tbaa !20
  store i32 1, ptr %i.ey, align 8, !tbaa !10
  store i32 33619992, ptr %i.fa, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.fc, align 8, !tbaa !13
  %i.fd = and i64 %.pre339, 1
  %.not.i206 = icmp eq i64 %i.fd, 0
  br i1 %.not.i206, label %bb.dz, label %lean_dec.exit207

bb.dz:                                            ; preds = %lean_alloc_ctor.exit317
  %i.fe = load i32, ptr %i.en, align 512, !tbaa !10 ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 1
  br i1 %i.ff, label %bb.ea, label %bb.eb, !prof !11

bb.ea:                                            ; preds = %bb.dz
  %i.fg = add nsw i32 %i.fe, -1
  store i32 %i.fg, ptr %i.en, align 512, !tbaa !10
  br label %lean_dec.exit207

bb.eb:                                            ; preds = %bb.dz
  %.not.i248 = icmp eq i32 %i.fe, 0
  br i1 %.not.i248, label %lean_dec.exit207, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #7
  br label %lean_dec.exit207

lean_dec.exit207:                                 ; preds = %bb.ec, %bb.eb, %bb.ea, %lean_alloc_ctor.exit317
  br i1 %i.eo, label %lean_dec.exit211.sink.split, label %bb.ed

bb.ed:                                            ; preds = %lean_dec.exit207
  %i.fh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit211.sink.split

bb.ee:                                            ; preds = %lean_dec.exit209
  %i.fi = and i64 %.pre339, 1
  %.not.i204 = icmp eq i64 %i.fi, 0
  br i1 %.not.i204, label %bb.ef, label %lean_dec.exit205

bb.ef:                                            ; preds = %bb.ee
  %i.fj = load i32, ptr %i.en, align 4, !tbaa !10 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.eg, label %bb.eh, !prof !11

bb.eg:                                            ; preds = %bb.ef
  %i.fl = add nsw i32 %i.fj, -1
  store i32 %i.fl, ptr %i.en, align 4, !tbaa !10
  br label %lean_dec.exit205

bb.eh:                                            ; preds = %bb.ef
  %.not.i250 = icmp eq i32 %i.fj, 0
  br i1 %.not.i250, label %lean_dec.exit205, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #7
  br label %lean_dec.exit205

lean_dec.exit205:                                 ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ee
  br i1 %i.eo, label %lean_dec.exit211.sink.split, label %bb.ej

bb.ej:                                            ; preds = %lean_dec.exit205
  tail call void @lean_inc_heartbeat() #7
  %i.fm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ek, label %lean_alloc_ctor.exit318

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit318:                          ; preds = %bb.ej
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 1, ptr %i.fm, align 4, !tbaa !10
  store i32 65552, ptr %i.fo, align 4
  br label %lean_dec.exit211.sink.split

bb.el:                                            ; preds = %lean_obj_tag.exit313
  br i1 %i.eo, label %lean_dec.exit211, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.fp = ptrtoint ptr %i.en to i64
  %i.fq = and i64 %i.fp, 1
  %.not.i222 = icmp eq i64 %i.fq, 0
  br i1 %.not.i222, label %bb.en, label %lean_inc.exit

bb.en:                                            ; preds = %bb.em
  %.val.i.i319 = load i32, ptr %i.en, align 4, !tbaa !10 ; 3 uses
  %i.fr = icmp sgt i32 %.val.i.i319, 0
  br i1 %i.fr, label %bb.eo, label %bb.ep, !prof !11

bb.eo:                                            ; preds = %bb.en
  %i.fs = add nuw i32 %.val.i.i319, 1
  store i32 %i.fs, ptr %i.en, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ep:                                            ; preds = %bb.en
  %.not.i.i320 = icmp eq i32 %.val.i.i319, 0
  br i1 %.not.i.i320, label %lean_inc.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ft = atomicrmw sub ptr %i.en, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.em
  br i1 %.not.i310, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %lean_inc.exit
  %i.fu = load i32, ptr %.2181332, align 8, !tbaa !10 ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %bb.er
  %i.fw = add nsw i32 %i.fu, -1
  store i32 %i.fw, ptr %.2181332, align 8, !tbaa !10
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %.not.i252 = icmp eq i32 %i.fu, 0
  br i1 %.not.i252, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2181332) #7
  br label %bb.ev

bb.ev:                                            ; preds = %lean_inc.exit, %bb.es, %bb.et, %bb.eu
  tail call void @lean_inc_heartbeat() #7
  %i.fx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.ew, label %lean_alloc_ctor.exit322

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit322:                          ; preds = %bb.ev
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 1, ptr %i.fx, align 4, !tbaa !10
  store i32 16842768, ptr %i.fz, align 4
  br label %lean_dec.exit211.sink.split

lean_dec.exit211.sink.split:                      ; preds = %lean_dec.exit205, %lean_dec.exit207, %bb.aw, %bb.au, %lean_alloc_ctor.exit309, %lean_alloc_ctor.exit318, %bb.ed, %lean_alloc_ctor.exit322, %bb.ax, %bb.av, %lean_alloc_ctor.exit
  %.sink385 = phi ptr [ %i.br, %lean_alloc_ctor.exit ], [ %i.ec, %lean_alloc_ctor.exit309 ], [ %i.bh, %bb.av ], [ %.0201, %bb.au ], [ %i.bi, %bb.ax ], [ %i.fx, %lean_alloc_ctor.exit322 ], [ %.0201, %bb.aw ], [ %i.fh, %bb.ed ], [ %.0185, %lean_dec.exit207 ], [ %i.fm, %lean_alloc_ctor.exit318 ], [ %.0185, %lean_dec.exit205 ] ; 2 uses
  %.sink = phi ptr [ %i.au, %lean_alloc_ctor.exit ], [ %i.ds, %lean_alloc_ctor.exit309 ], [ inttoptr (i64 3 to ptr), %bb.av ], [ inttoptr (i64 3 to ptr), %bb.au ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ %i.en, %lean_alloc_ctor.exit322 ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ %i.ey, %bb.ed ], [ %i.ey, %lean_dec.exit207 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit318 ], [ inttoptr (i64 1 to ptr), %lean_dec.exit205 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sink385, i64 8
  store ptr %.sink, ptr %i.ga, align 8, !tbaa !13
  br label %lean_dec.exit211

lean_dec.exit211:                                 ; preds = %lean_dec.exit211.sink.split, %bb.ay, %bb.el, %lean_dec_ref.exit255
  %.11 = phi ptr [ %.2181332, %bb.el ], [ %i.al, %bb.ay ], [ %i.d, %lean_dec_ref.exit255 ], [ %.sink385, %lean_dec.exit211.sink.split ]
  ret ptr %.11
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDisjunctStatus___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDisjunctStatus___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.b = ptrtoint ptr %8 to i64
  %i.c = and i64 %i.b, 1
  %.not.i18 = icmp eq i64 %i.c, 0
  br i1 %.not.i18, label %bb.b, label %lean_dec.exit19

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %8, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %8, align 4, !tbaa !10
  br label %lean_dec.exit19

bb.d:                                             ; preds = %bb.b
  %.not.i20 = icmp eq i32 %i.d, 0
  br i1 %.not.i20, label %lean_dec.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec.exit19

lean_dec.exit19:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %7, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit19
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %7, align 4, !tbaa !10
  br label %lean_dec_ref.exit30

bb.g:                                             ; preds = %lean_dec.exit19
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #7
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i16 = icmp eq i64 %i.k, 0
  br i1 %.not.i16, label %bb.i, label %lean_dec.exit17

bb.i:                                             ; preds = %lean_dec_ref.exit30
  %i.l = load i32, ptr %6, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !10
  br label %lean_dec.exit17

bb.k:                                             ; preds = %bb.i
  %.not.i21 = icmp eq i32 %i.l, 0
  br i1 %.not.i21, label %lean_dec.exit17, label %bb.l

end_hunk_1
begin_hunk_2_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkConjunctStatus___redArg:bb.a
  br label %lean_dec_ref.exit276

bb.cz:                                            ; preds = %lean_dec_ref.exit278
  %.not.i275 = icmp eq i32 %i.dp, 0
  br i1 %.not.i275, label %lean_dec_ref.exit276, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit276

lean_dec_ref.exit276:                             ; preds = %bb.cy, %bb.cz, %bb.da
  %i.ds = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.db, label %bb.dc, !prof !11

bb.db:                                            ; preds = %lean_dec_ref.exit276
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit274

bb.dc:                                            ; preds = %lean_dec_ref.exit276
  %.not.i273 = icmp eq i32 %i.ds, 0
  br i1 %.not.i273, label %lean_dec_ref.exit274, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit274

lean_dec_ref.exit274:                             ; preds = %bb.db, %bb.dc, %bb.dd
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !13 ; 5 uses
  %.val = load i32, ptr %i.d, align 8, !tbaa !10
  %i.dx = icmp eq i32 %.val, 1
  br i1 %i.dx, label %lean_dec_ref.exit292, label %bb.de

bb.de:                                            ; preds = %lean_dec_ref.exit274
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i242 = icmp eq i64 %i.dz, 0
  br i1 %.not.i242, label %bb.df, label %lean_inc.exit243

bb.df:                                            ; preds = %bb.de
  %.val.i.i326 = load i32, ptr %i.dw, align 4, !tbaa !10 ; 3 uses
  %i.ea = icmp sgt i32 %.val.i.i326, 0
  br i1 %i.ea, label %bb.dg, label %bb.dh, !prof !11

bb.dg:                                            ; preds = %bb.df
  %i.eb = add nuw i32 %.val.i.i326, 1
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !10
  br label %lean_inc.exit243

bb.dh:                                            ; preds = %bb.df
  %.not.i.i327 = icmp eq i32 %.val.i.i326, 0
  br i1 %.not.i.i327, label %lean_inc.exit243, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ec = atomicrmw sub ptr %i.dw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit243

lean_inc.exit243:                                 ; preds = %bb.di, %bb.dh, %bb.dg, %bb.de
  br i1 %.not.i301, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %lean_inc.exit243
  %i.ed = load i32, ptr %i.d, align 8, !tbaa !10  ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.dk, label %bb.dl, !prof !11

bb.dk:                                            ; preds = %bb.dj
  %i.ef = add nsw i32 %i.ed, -1
  store i32 %i.ef, ptr %i.d, align 8, !tbaa !10
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  %.not.i263 = icmp eq i32 %i.ed, 0
  br i1 %.not.i263, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %bb.dn

bb.dn:                                            ; preds = %lean_inc.exit243, %bb.dk, %bb.dl, %bb.dm
  tail call void @lean_inc_heartbeat() #7
  %i.eg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.do, label %lean_alloc_ctor.exit329

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit329:                          ; preds = %bb.dn
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 1, ptr %i.eg, align 4, !tbaa !10
  store i32 16842768, ptr %i.ei, align 4
  br label %lean_dec_ref.exit292.sink.split

bb.dp:                                            ; preds = %bb.bp, %bb.bl, %bb.bh, %bb.bj, %bb.bk, %bb.bn, %bb.bo
  %.pre-phi = phi i64 [ %i.bg, %bb.bp ], [ %i.bg, %bb.bl ], [ %.pre, %bb.bh ], [ %i.bg, %bb.bj ], [ %i.bg, %bb.bk ], [ %i.bg, %bb.bn ], [ %i.bg, %bb.bo ] ; 2 uses
  %.4194.ph = phi ptr [ %i.bf, %bb.bp ], [ %i.bf, %bb.bl ], [ %i.bz, %bb.bh ], [ %i.bf, %bb.bj ], [ %i.bf, %bb.bk ], [ %i.bf, %bb.bn ], [ %i.bf, %bb.bo ] ; 11 uses
  %i.ej = and i64 %.pre-phi, 1
  %.not.i330 = icmp eq i64 %i.ej, 0               ; 3 uses
  br i1 %.not.i330, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ek = lshr i64 %.pre-phi, 1
  %i.el = trunc i64 %i.ek to i32
  br label %lean_obj_tag.exit333

bb.dr:                                            ; preds = %bb.dp
  %i.em = getelementptr i8, ptr %.4194.ph, i64 4
  %.val.i332 = load i32, ptr %i.em, align 4
  %i.en = lshr i32 %.val.i332, 24
  br label %lean_obj_tag.exit333

lean_obj_tag.exit333:                             ; preds = %bb.dq, %bb.dr
  %.0.i331 = phi i32 [ %i.el, %bb.dq ], [ %i.en, %bb.dr ]
  %i.eo = icmp eq i32 %.0.i331, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.4194.ph, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !13 ; 15 uses
  %.4194.val297 = load i32, ptr %.4194.ph, align 8, !tbaa !10
  %i.er = icmp eq i32 %.4194.val297, 1            ; 4 uses
  br i1 %i.eo, label %bb.ds, label %bb.eq

bb.ds:                                            ; preds = %lean_obj_tag.exit333
  %.pre360 = ptrtoint ptr %i.eq to i64            ; 4 uses
  br i1 %i.er, label %lean_dec.exit224, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.es = and i64 %.pre360, 1
  %.not.i240 = icmp eq i64 %i.es, 0
  br i1 %.not.i240, label %bb.du, label %lean_inc.exit241

bb.du:                                            ; preds = %bb.dt
  %.val.i.i334 = load i32, ptr %i.eq, align 4, !tbaa !10 ; 3 uses
  %i.et = icmp sgt i32 %.val.i.i334, 0
  br i1 %i.et, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %bb.du
  %i.eu = add nuw i32 %.val.i.i334, 1
  store i32 %i.eu, ptr %i.eq, align 4, !tbaa !10
  br label %lean_inc.exit241

bb.dw:                                            ; preds = %bb.du
  %.not.i.i335 = icmp eq i32 %.val.i.i334, 0
  br i1 %.not.i.i335, label %lean_inc.exit241, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ev = atomicrmw sub ptr %i.eq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit241

lean_inc.exit241:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  br i1 %.not.i330, label %bb.dy, label %lean_dec.exit224

bb.dy:                                            ; preds = %lean_inc.exit241
  %i.ew = load i32, ptr %.4194.ph, align 8, !tbaa !10 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %bb.dz, label %bb.ea, !prof !11

bb.dz:                                            ; preds = %bb.dy
  %i.ey = add nsw i32 %i.ew, -1
  store i32 %i.ey, ptr %.4194.ph, align 8, !tbaa !10
  br label %lean_dec.exit224

bb.ea:                                            ; preds = %bb.dy
  %.not.i265 = icmp eq i32 %i.ew, 0
  br i1 %.not.i265, label %lean_dec.exit224, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.4194.ph) #7
  br label %lean_dec.exit224

lean_dec.exit224:                                 ; preds = %bb.ds, %lean_inc.exit241, %bb.dz, %bb.ea, %bb.eb
  %.0198 = phi ptr [ inttoptr (i64 1 to ptr), %bb.eb ], [ inttoptr (i64 1 to ptr), %lean_inc.exit241 ], [ inttoptr (i64 1 to ptr), %bb.dz ], [ inttoptr (i64 1 to ptr), %bb.ea ], [ %.4194.ph, %bb.ds ] ; 2 uses
  %i.ez = and i64 %.pre360, 510
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ec, label %bb.ej

bb.ec:                                            ; preds = %lean_dec.exit224
  tail call void @lean_inc_heartbeat() #7
  %i.fb = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 7 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ed, label %lean_alloc_ctor.exit337

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit337:                          ; preds = %bb.ec
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 0, ptr %i.fe, align 8, !tbaa !20
  store i32 1, ptr %i.fb, align 8, !tbaa !10
  store i32 33619992, ptr %i.fd, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.ff, align 8, !tbaa !13
  %i.fg = and i64 %.pre360, 1
  %.not.i221 = icmp eq i64 %i.fg, 0
  br i1 %.not.i221, label %bb.ee, label %lean_dec.exit222

bb.ee:                                            ; preds = %lean_alloc_ctor.exit337
  %i.fh = load i32, ptr %i.eq, align 512, !tbaa !10 ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.ef, label %bb.eg, !prof !11

bb.ef:                                            ; preds = %bb.ee
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %i.eq, align 512, !tbaa !10
  br label %lean_dec.exit222

bb.eg:                                            ; preds = %bb.ee
  %.not.i267 = icmp eq i32 %i.fh, 0
  br i1 %.not.i267, label %lean_dec.exit222, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eq) #7
  br label %lean_dec.exit222

lean_dec.exit222:                                 ; preds = %bb.eh, %bb.eg, %bb.ef, %lean_alloc_ctor.exit337
  br i1 %i.er, label %lean_dec_ref.exit292.sink.split, label %bb.ei

bb.ei:                                            ; preds = %lean_dec.exit222
  %i.fk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec_ref.exit292.sink.split

bb.ej:                                            ; preds = %lean_dec.exit224
  %i.fl = and i64 %.pre360, 1
  %.not.i219 = icmp eq i64 %i.fl, 0
  br i1 %.not.i219, label %bb.ek, label %lean_dec.exit220

bb.ek:                                            ; preds = %bb.ej
  %i.fm = load i32, ptr %i.eq, align 4, !tbaa !10 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %bb.ek
  %i.fo = add nsw i32 %i.fm, -1
  store i32 %i.fo, ptr %i.eq, align 4, !tbaa !10
  br label %lean_dec.exit220

bb.em:                                            ; preds = %bb.ek
  %.not.i269 = icmp eq i32 %i.fm, 0
  br i1 %.not.i269, label %lean_dec.exit220, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eq) #7
  br label %lean_dec.exit220

lean_dec.exit220:                                 ; preds = %bb.en, %bb.em, %bb.el, %bb.ej
  br i1 %i.er, label %lean_dec_ref.exit292.sink.split, label %bb.eo

bb.eo:                                            ; preds = %lean_dec.exit220
  tail call void @lean_inc_heartbeat() #7
  %i.fp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.ep, label %lean_alloc_ctor.exit338

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit338:                          ; preds = %bb.eo
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 1, ptr %i.fp, align 4, !tbaa !10
  store i32 65552, ptr %i.fr, align 4
  br label %lean_dec_ref.exit292.sink.split

bb.eq:                                            ; preds = %lean_obj_tag.exit333
  br i1 %i.er, label %lean_dec_ref.exit292, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.fs = ptrtoint ptr %i.eq to i64
  %i.ft = and i64 %i.fs, 1
  %.not.i239 = icmp eq i64 %i.ft, 0
  br i1 %.not.i239, label %bb.es, label %lean_inc.exit

bb.es:                                            ; preds = %bb.er
  %.val.i.i339 = load i32, ptr %i.eq, align 4, !tbaa !10 ; 3 uses
  %i.fu = icmp sgt i32 %.val.i.i339, 0
  br i1 %i.fu, label %bb.et, label %bb.eu, !prof !11

bb.et:                                            ; preds = %bb.es
  %i.fv = add nuw i32 %.val.i.i339, 1
  store i32 %i.fv, ptr %i.eq, align 4, !tbaa !10
  br label %lean_inc.exit

bb.eu:                                            ; preds = %bb.es
  %.not.i.i340 = icmp eq i32 %.val.i.i339, 0
  br i1 %.not.i.i340, label %lean_inc.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.fw = atomicrmw sub ptr %i.eq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ev, %bb.eu, %bb.et, %bb.er
  br i1 %.not.i330, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %lean_inc.exit
  %i.fx = load i32, ptr %.4194.ph, align 8, !tbaa !10 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %bb.ex, label %bb.ey, !prof !11

bb.ex:                                            ; preds = %bb.ew
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %.4194.ph, align 8, !tbaa !10
  br label %bb.fa

bb.ey:                                            ; preds = %bb.ew
  %.not.i271 = icmp eq i32 %i.fx, 0
  br i1 %.not.i271, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.4194.ph) #7
  br label %bb.fa

bb.fa:                                            ; preds = %lean_inc.exit, %bb.ex, %bb.ey, %bb.ez
  tail call void @lean_inc_heartbeat() #7
  %i.ga = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.gb = icmp eq ptr %i.ga, null
  br i1 %i.gb, label %bb.fb, label %lean_alloc_ctor.exit342

bb.fb:                                            ; preds = %bb.fa
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit342:                          ; preds = %bb.fa
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 1, ptr %i.ga, align 4, !tbaa !10
  store i32 16842768, ptr %i.gc, align 4
  br label %lean_dec_ref.exit292.sink.split

lean_dec_ref.exit292.sink.split:                  ; preds = %lean_dec.exit220, %lean_dec.exit222, %lean_dec_ref.exit280, %lean_dec_ref.exit294, %lean_alloc_ctor.exit329, %lean_alloc_ctor.exit338, %bb.ei, %lean_alloc_ctor.exit342, %lean_alloc_ctor.exit325, %bb.at, %lean_alloc_ctor.exit
  %.sink413 = phi ptr [ %i.cx, %lean_alloc_ctor.exit ], [ %i.eg, %lean_alloc_ctor.exit329 ], [ %i.bc, %bb.at ], [ %.0218, %lean_dec_ref.exit294 ], [ %i.dj, %lean_alloc_ctor.exit325 ], [ %i.ga, %lean_alloc_ctor.exit342 ], [ %.0202, %lean_dec_ref.exit280 ], [ %i.fk, %bb.ei ], [ %.0198, %lean_dec.exit222 ], [ %i.fp, %lean_alloc_ctor.exit338 ], [ %.0198, %lean_dec.exit220 ] ; 2 uses
  %.sink = phi ptr [ %i.cn, %lean_alloc_ctor.exit ], [ %i.dw, %lean_alloc_ctor.exit329 ], [ inttoptr (i64 3 to ptr), %bb.at ], [ inttoptr (i64 3 to ptr), %lean_dec_ref.exit294 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit325 ], [ %i.eq, %lean_alloc_ctor.exit342 ], [ inttoptr (i64 1 to ptr), %lean_dec_ref.exit280 ], [ %i.fb, %bb.ei ], [ %i.fb, %lean_dec.exit222 ], [ inttoptr (i64 1 to ptr), %lean_alloc_ctor.exit338 ], [ inttoptr (i64 1 to ptr), %lean_dec.exit220 ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sink413, i64 8
  store ptr %.sink, ptr %i.gd, align 8, !tbaa !13
  br label %lean_dec_ref.exit292

lean_dec_ref.exit292:                             ; preds = %lean_dec_ref.exit292.sink.split, %bb.eq, %lean_dec_ref.exit274, %lean_dec_ref.exit286
  %.11 = phi ptr [ %.4194.ph, %bb.eq ], [ %i.ab, %lean_dec_ref.exit286 ], [ %i.d, %lean_dec_ref.exit274 ], [ %.sink413, %lean_dec_ref.exit292.sink.split ]
  ret ptr %.11
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkConjunctStatus___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkConjunctStatus___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.b = ptrtoint ptr %8 to i64
  %i.c = and i64 %i.b, 1
  %.not.i18 = icmp eq i64 %i.c, 0
  br i1 %.not.i18, label %bb.b, label %lean_dec.exit19

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %8, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %8, align 4, !tbaa !10
  br label %lean_dec.exit19

bb.d:                                             ; preds = %bb.b
  %.not.i20 = icmp eq i32 %i.d, 0
  br i1 %.not.i20, label %lean_dec.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec.exit19

lean_dec.exit19:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %7, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit19
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %7, align 4, !tbaa !10
  br label %lean_dec_ref.exit30

bb.g:                                             ; preds = %lean_dec.exit19
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #7
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i16 = icmp eq i64 %i.k, 0
  br i1 %.not.i16, label %bb.i, label %lean_dec.exit17

bb.i:                                             ; preds = %lean_dec_ref.exit30
  %i.l = load i32, ptr %6, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !10
  br label %lean_dec.exit17

bb.k:                                             ; preds = %bb.i
  %.not.i21 = icmp eq i32 %i.l, 0
  br i1 %.not.i21, label %lean_dec.exit17, label %bb.l

end_hunk_2
begin_hunk_3_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkIffStatus___redArg:bb.a
  br i1 %.not.i546, label %lean_dec_ref.exit547, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit547

lean_dec_ref.exit547:                             ; preds = %bb.dq, %bb.dr, %bb.ds
  %i.ez = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 1
  br i1 %i.fa, label %bb.dt, label %bb.du, !prof !11

bb.dt:                                            ; preds = %lean_dec_ref.exit547
  %i.fb = add nsw i32 %i.ez, -1
  store i32 %i.fb, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit545

bb.du:                                            ; preds = %lean_dec_ref.exit547
  %.not.i544 = icmp eq i32 %i.ez, 0
  br i1 %.not.i544, label %lean_dec_ref.exit545, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit545

lean_dec_ref.exit545:                             ; preds = %bb.dt, %bb.du, %bb.dv
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !13 ; 5 uses
  %.val = load i32, ptr %i.d, align 8, !tbaa !10
  %i.fe = icmp eq i32 %.val, 1
  br i1 %i.fe, label %lean_dec.exit435, label %bb.dw

bb.dw:                                            ; preds = %lean_dec_ref.exit545
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = and i64 %i.ff, 1
  %.not.i467 = icmp eq i64 %i.fg, 0
  br i1 %.not.i467, label %bb.dx, label %lean_inc.exit468

bb.dx:                                            ; preds = %bb.dw
  %.val.i.i617 = load i32, ptr %i.fd, align 4, !tbaa !10 ; 3 uses
  %i.fh = icmp sgt i32 %.val.i.i617, 0
  br i1 %i.fh, label %bb.dy, label %bb.dz, !prof !11

bb.dy:                                            ; preds = %bb.dx
  %i.fi = add nuw i32 %.val.i.i617, 1
  store i32 %i.fi, ptr %i.fd, align 4, !tbaa !10
  br label %lean_inc.exit468

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i618 = icmp eq i32 %.val.i.i617, 0
  br i1 %.not.i.i618, label %lean_inc.exit468, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.fj = atomicrmw sub ptr %i.fd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit468

lean_inc.exit468:                                 ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dw
  br i1 %.not.i564, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %lean_inc.exit468
  %i.fk = load i32, ptr %i.d, align 8, !tbaa !10  ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.ec, label %bb.ed, !prof !11

bb.ec:                                            ; preds = %bb.eb
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %i.d, align 8, !tbaa !10
  br label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %.not.i490 = icmp eq i32 %i.fk, 0
  br i1 %.not.i490, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %bb.ef

bb.ef:                                            ; preds = %lean_inc.exit468, %bb.ec, %bb.ed, %bb.ee
  tail call void @lean_inc_heartbeat() #7
  %i.fn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.eg, label %lean_alloc_ctor.exit620

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit620:                          ; preds = %bb.ef
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 1, ptr %i.fn, align 4, !tbaa !10
  store i32 16842768, ptr %i.fp, align 4
  br label %lean_dec.exit435.sink.split

lean_dec_ref.exit543:                             ; preds = %bb.fg, %bb.ff, %bb.fe, %lean_del_object.exit630, %bb.hl, %bb.hm, %bb.hn
  tail call void @lean_inc_heartbeat() #7
  %i.fq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.eh, label %lean_alloc_ctor.exit621

bb.eh:                                            ; preds = %lean_dec_ref.exit543
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit621:                          ; preds = %lean_dec_ref.exit543
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 1, ptr %i.fq, align 4, !tbaa !10
  store i32 65552, ptr %i.fs, align 4
  br label %lean_dec.exit435.sink.split

bb.ei:                                            ; preds = %bb.hg, %bb.hb, %bb.hc, %bb.gz, %bb.ha, %bb.he, %bb.hf
  %.pre-phi746 = phi i64 [ %i.ik, %bb.hg ], [ %i.ik, %bb.hb ], [ %.pre745, %bb.hc ], [ %i.ik, %bb.gz ], [ %i.ik, %bb.ha ], [ %i.ik, %bb.he ], [ %i.ik, %bb.hf ] ; 2 uses
  %.2356.ph = phi ptr [ %i.ij, %bb.hg ], [ %i.ij, %bb.hb ], [ %i.jg, %bb.hc ], [ %i.ij, %bb.gz ], [ %i.ij, %bb.ha ], [ %i.ij, %bb.he ], [ %i.ij, %bb.hf ] ; 11 uses
  %i.ft = and i64 %.pre-phi746, 1
  %.not.i622 = icmp eq i64 %i.ft, 0               ; 3 uses
  br i1 %.not.i622, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.fu = lshr i64 %.pre-phi746, 1
  %i.fv = trunc i64 %i.fu to i32
  br label %lean_obj_tag.exit625

bb.ek:                                            ; preds = %bb.ei
  %i.fw = getelementptr i8, ptr %.2356.ph, i64 4
  %.val.i624 = load i32, ptr %i.fw, align 4
  %i.fx = lshr i32 %.val.i624, 24
  br label %lean_obj_tag.exit625

lean_obj_tag.exit625:                             ; preds = %bb.ej, %bb.ek
  %.0.i623 = phi i32 [ %i.fv, %bb.ej ], [ %i.fx, %bb.ek ]
  %i.fy = icmp eq i32 %.0.i623, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %.2356.ph, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !13 ; 15 uses
  %.2356.val561 = load i32, ptr %.2356.ph, align 8, !tbaa !10
  %i.gb = icmp eq i32 %.2356.val561, 1            ; 3 uses
  br i1 %i.fy, label %bb.el, label %bb.fh

bb.el:                                            ; preds = %lean_obj_tag.exit625
  %.pre755 = ptrtoint ptr %i.ga to i64            ; 4 uses
  br i1 %i.gb, label %lean_dec.exit433, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.gc = and i64 %.pre755, 1
  %.not.i465 = icmp eq i64 %i.gc, 0
  br i1 %.not.i465, label %bb.en, label %lean_inc.exit466

bb.en:                                            ; preds = %bb.em
  %.val.i.i626 = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.gd = icmp sgt i32 %.val.i.i626, 0
  br i1 %i.gd, label %bb.eo, label %bb.ep, !prof !11

bb.eo:                                            ; preds = %bb.en
  %i.ge = add nuw i32 %.val.i.i626, 1
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !10
  br label %lean_inc.exit466

bb.ep:                                            ; preds = %bb.en
  %.not.i.i627 = icmp eq i32 %.val.i.i626, 0
  br i1 %.not.i.i627, label %lean_inc.exit466, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.gf = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit466

lean_inc.exit466:                                 ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.em
  br i1 %.not.i622, label %bb.er, label %lean_dec.exit433

bb.er:                                            ; preds = %lean_inc.exit466
  %i.gg = load i32, ptr %.2356.ph, align 8, !tbaa !10 ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1
  br i1 %i.gh, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %bb.er
  %i.gi = add nsw i32 %i.gg, -1
  store i32 %i.gi, ptr %.2356.ph, align 8, !tbaa !10
  br label %lean_dec.exit433

bb.et:                                            ; preds = %bb.er
  %.not.i492 = icmp eq i32 %i.gg, 0
  br i1 %.not.i492, label %lean_dec.exit433, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2356.ph) #7
  br label %lean_dec.exit433

lean_dec.exit433:                                 ; preds = %bb.el, %lean_inc.exit466, %bb.es, %bb.et, %bb.eu
  %.0382 = phi ptr [ inttoptr (i64 1 to ptr), %bb.eu ], [ inttoptr (i64 1 to ptr), %lean_inc.exit466 ], [ inttoptr (i64 1 to ptr), %bb.es ], [ inttoptr (i64 1 to ptr), %bb.et ], [ %.2356.ph, %bb.el ] ; 3 uses
  %i.gj = and i64 %.pre755, 510
  %.not407 = icmp eq i64 %i.gj, 0
  br i1 %.not407, label %bb.ev, label %bb.fb

bb.ev:                                            ; preds = %lean_dec.exit433
  %i.gk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 1, i32 noundef 2) ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.gl, align 8, !tbaa !13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i8 0, ptr %i.gm, align 8, !tbaa !14
  %i.gn = and i64 %.pre755, 1
  %.not.i430 = icmp eq i64 %i.gn, 0
  br i1 %.not.i430, label %bb.ew, label %lean_dec.exit431

bb.ew:                                            ; preds = %bb.ev
  %i.go = load i32, ptr %i.ga, align 512, !tbaa !10 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.ex, label %bb.ey, !prof !11

bb.ex:                                            ; preds = %bb.ew
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.ga, align 512, !tbaa !10
  br label %lean_dec.exit431

bb.ey:                                            ; preds = %bb.ew
  %.not.i494 = icmp eq i32 %i.go, 0
  br i1 %.not.i494, label %lean_dec.exit431, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #7
  br label %lean_dec.exit431

lean_dec.exit431:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 17
  store i8 0, ptr %i.gr, align 1, !tbaa !14
  br i1 %i.gb, label %lean_dec.exit435.sink.split, label %bb.fa

bb.fa:                                            ; preds = %lean_dec.exit431
  %i.gs = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit435.sink.split

bb.fb:                                            ; preds = %lean_dec.exit433
  %i.gt = ptrtoint ptr %.0382 to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i629 = icmp eq i64 %i.gu, 0
  br i1 %.not.i629, label %bb.fc, label %lean_del_object.exit630

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_free_object(ptr noundef nonnull %.0382) #7
  br label %lean_del_object.exit630

lean_del_object.exit630:                          ; preds = %bb.fb, %bb.fc
  %i.gv = and i64 %.pre755, 1
  %.not.i428 = icmp eq i64 %i.gv, 0
  br i1 %.not.i428, label %bb.fd, label %lean_dec_ref.exit543

bb.fd:                                            ; preds = %lean_del_object.exit630
  %i.gw = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 1
  br i1 %i.gx, label %bb.fe, label %bb.ff, !prof !11

bb.fe:                                            ; preds = %bb.fd
  %i.gy = add nsw i32 %i.gw, -1
  store i32 %i.gy, ptr %i.ga, align 4, !tbaa !10
  br label %lean_dec_ref.exit543

bb.ff:                                            ; preds = %bb.fd
  %.not.i496 = icmp eq i32 %i.gw, 0
  br i1 %.not.i496, label %lean_dec_ref.exit543, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #7
  br label %lean_dec_ref.exit543

bb.fh:                                            ; preds = %lean_obj_tag.exit625
  br i1 %i.gb, label %lean_dec.exit435, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.gz = ptrtoint ptr %i.ga to i64
  %i.ha = and i64 %i.gz, 1
  %.not.i463 = icmp eq i64 %i.ha, 0
  br i1 %.not.i463, label %bb.fj, label %lean_inc.exit464

bb.fj:                                            ; preds = %bb.fi
  %.val.i.i631 = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.hb = icmp sgt i32 %.val.i.i631, 0
  br i1 %i.hb, label %bb.fk, label %bb.fl, !prof !11

bb.fk:                                            ; preds = %bb.fj
  %i.hc = add nuw i32 %.val.i.i631, 1
  store i32 %i.hc, ptr %i.ga, align 4, !tbaa !10
  br label %lean_inc.exit464

bb.fl:                                            ; preds = %bb.fj
  %.not.i.i632 = icmp eq i32 %.val.i.i631, 0
  br i1 %.not.i.i632, label %lean_inc.exit464, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.hd = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit464

lean_inc.exit464:                                 ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fi
  br i1 %.not.i622, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %lean_inc.exit464
  %i.he = load i32, ptr %.2356.ph, align 8, !tbaa !10 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.fo, label %bb.fp, !prof !11

bb.fo:                                            ; preds = %bb.fn
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %.2356.ph, align 8, !tbaa !10
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %.not.i498 = icmp eq i32 %i.he, 0
  br i1 %.not.i498, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2356.ph) #7
  br label %bb.fr

bb.fr:                                            ; preds = %lean_inc.exit464, %bb.fo, %bb.fp, %bb.fq
  %i.hh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit435.sink.split

bb.fs:                                            ; preds = %lean_dec.exit441, %lean_obj_tag.exit584, %lean_inc_ref.exit590
  %.pre-phi = phi i64 [ %i.bp, %lean_dec.exit441 ], [ %i.bp, %lean_obj_tag.exit584 ], [ %.pre, %lean_inc_ref.exit590 ] ; 2 uses
  %.4361.ph = phi ptr [ %i.bo, %lean_dec.exit441 ], [ %i.bo, %lean_obj_tag.exit584 ], [ %i.cl, %lean_inc_ref.exit590 ] ; 12 uses
  %i.hi = and i64 %.pre-phi, 1
  %.not.i634 = icmp eq i64 %i.hi, 0               ; 2 uses
  br i1 %.not.i634, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.hj = lshr i64 %.pre-phi, 1
  %i.hk = trunc i64 %i.hj to i32
  br label %lean_obj_tag.exit637

bb.fu:                                            ; preds = %bb.fs
  %i.hl = getelementptr i8, ptr %.4361.ph, i64 4
  %.val.i636 = load i32, ptr %i.hl, align 4
  %i.hm = lshr i32 %.val.i636, 24
  br label %lean_obj_tag.exit637

lean_obj_tag.exit637:                             ; preds = %bb.ft, %bb.fu
  %.0.i635 = phi i32 [ %i.hk, %bb.ft ], [ %i.hm, %bb.fu ]
  %i.hn = icmp eq i32 %.0.i635, 0
  br i1 %i.hn, label %bb.fv, label %bb.ho

bb.fv:                                            ; preds = %lean_obj_tag.exit637
  %i.ho = getelementptr inbounds nuw i8, ptr %.4361.ph, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !13 ; 7 uses
  %i.hq = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hr = and i64 %i.hq, 1
  %.not.i461 = icmp eq i64 %i.hr, 0               ; 2 uses
  br i1 %.not.i461, label %bb.fw, label %lean_inc.exit462

bb.fw:                                            ; preds = %bb.fv
  %.val.i.i638 = load i32, ptr %i.hp, align 4, !tbaa !10 ; 3 uses
  %i.hs = icmp sgt i32 %.val.i.i638, 0
  br i1 %i.hs, label %bb.fx, label %bb.fy, !prof !11

bb.fx:                                            ; preds = %bb.fw
  %i.ht = add nuw i32 %.val.i.i638, 1
  store i32 %i.ht, ptr %i.hp, align 4, !tbaa !10
  br label %lean_inc.exit462

bb.fy:                                            ; preds = %bb.fw
  %.not.i.i639 = icmp eq i32 %.val.i.i638, 0
  br i1 %.not.i.i639, label %lean_inc.exit462, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.hu = atomicrmw sub ptr %i.hp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit462

lean_inc.exit462:                                 ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv
  %.val.i641 = load i32, ptr %.4361.ph, align 8, !tbaa !10 ; 4 uses
  %i.hv = icmp eq i32 %.val.i641, 1
  br i1 %i.hv, label %.preheader.i643, label %bb.ge

.preheader.i643:                                  ; preds = %lean_inc.exit462
  %i.hw = load ptr, ptr %i.ho, align 8, !tbaa !13 ; 4 uses
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = and i64 %i.hx, 1
  %.not.i.i645 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i645, label %bb.ga, label %lean_dec.exit.i646

bb.ga:                                            ; preds = %.preheader.i643
  %i.hz = load i32, ptr %i.hw, align 4, !tbaa !10 ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.gb, label %bb.gc, !prof !11

bb.gb:                                            ; preds = %bb.ga
  %i.ib = add nsw i32 %i.hz, -1
  store i32 %i.ib, ptr %i.hw, align 4, !tbaa !10
  br label %lean_dec.exit.i646

bb.gc:                                            ; preds = %bb.ga
  %.not.i7.i649 = icmp eq i32 %i.hz, 0
  br i1 %.not.i7.i649, label %lean_dec.exit.i646, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #7
  br label %lean_dec.exit.i646

lean_dec.exit.i646:                               ; preds = %bb.gd, %bb.gc, %bb.gb, %.preheader.i643
  tail call void @lean_free_object(ptr noundef nonnull %.4361.ph) #7
  br label %lean_dec_ref_known.exit650

bb.ge:                                            ; preds = %lean_inc.exit462
  %i.ic = icmp sgt i32 %.val.i641, 1
  br i1 %i.ic, label %bb.gf, label %bb.gg, !prof !11

bb.gf:                                            ; preds = %bb.ge
  %i.id = add nsw i32 %.val.i641, -1
  store i32 %i.id, ptr %.4361.ph, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit650

bb.gg:                                            ; preds = %bb.ge
  %.not.i8.i642 = icmp eq i32 %.val.i641, 0
  br i1 %.not.i8.i642, label %lean_dec_ref_known.exit650, label %bb.gh

end_hunk_3
begin_hunk_4_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkIffStatus___redArg:bb.a
  br i1 %.not.i534, label %lean_dec_ref.exit535, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit535

lean_dec_ref.exit535:                             ; preds = %bb.hp, %bb.hq, %bb.hr
  %i.jt = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 1
  br i1 %i.ju, label %bb.hs, label %bb.ht, !prof !11

bb.hs:                                            ; preds = %lean_dec_ref.exit535
  %i.jv = add nsw i32 %i.jt, -1
  store i32 %i.jv, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit533

bb.ht:                                            ; preds = %lean_dec_ref.exit535
  %.not.i532 = icmp eq i32 %i.jt, 0
  br i1 %.not.i532, label %lean_dec_ref.exit533, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit533

lean_dec_ref.exit533:                             ; preds = %bb.hs, %bb.ht, %bb.hu
  %i.jw = getelementptr inbounds nuw i8, ptr %.4361.ph, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !13 ; 5 uses
  %.4361.val = load i32, ptr %.4361.ph, align 8, !tbaa !10
  %i.jy = icmp eq i32 %.4361.val, 1
  br i1 %i.jy, label %lean_dec.exit435, label %bb.hv

bb.hv:                                            ; preds = %lean_dec_ref.exit533
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = and i64 %i.jz, 1
  %.not.i457 = icmp eq i64 %i.ka, 0
  br i1 %.not.i457, label %bb.hw, label %lean_inc.exit458

bb.hw:                                            ; preds = %bb.hv
  %.val.i.i658 = load i32, ptr %i.jx, align 4, !tbaa !10 ; 3 uses
  %i.kb = icmp sgt i32 %.val.i.i658, 0
  br i1 %i.kb, label %bb.hx, label %bb.hy, !prof !11

bb.hx:                                            ; preds = %bb.hw
  %i.kc = add nuw i32 %.val.i.i658, 1
  store i32 %i.kc, ptr %i.jx, align 4, !tbaa !10
  br label %lean_inc.exit458

bb.hy:                                            ; preds = %bb.hw
  %.not.i.i659 = icmp eq i32 %.val.i.i658, 0
  br i1 %.not.i.i659, label %lean_inc.exit458, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.kd = atomicrmw sub ptr %i.jx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit458

lean_inc.exit458:                                 ; preds = %bb.hz, %bb.hy, %bb.hx, %bb.hv
  br i1 %.not.i634, label %bb.ia, label %bb.ie

bb.ia:                                            ; preds = %lean_inc.exit458
  %i.ke = load i32, ptr %.4361.ph, align 8, !tbaa !10 ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, 1
  br i1 %i.kf, label %bb.ib, label %bb.ic, !prof !11

bb.ib:                                            ; preds = %bb.ia
  %i.kg = add nsw i32 %i.ke, -1
  store i32 %i.kg, ptr %.4361.ph, align 8, !tbaa !10
  br label %bb.ie

bb.ic:                                            ; preds = %bb.ia
  %.not.i504 = icmp eq i32 %i.ke, 0
  br i1 %.not.i504, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.4361.ph) #7
  br label %bb.ie

bb.ie:                                            ; preds = %lean_inc.exit458, %bb.ib, %bb.ic, %bb.id
  tail call void @lean_inc_heartbeat() #7
  %i.kh = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.if, label %lean_alloc_ctor.exit661

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit661:                          ; preds = %bb.ie
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store i32 1, ptr %i.kh, align 4, !tbaa !10
  store i32 16842768, ptr %i.kj, align 4
  br label %lean_dec.exit435.sink.split

lean_dec_ref.exit531:                             ; preds = %bb.jf, %bb.je, %bb.jd, %lean_del_object.exit671, %bb.lj, %bb.lk, %bb.ll
  tail call void @lean_inc_heartbeat() #7
  %i.kk = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.ig, label %lean_alloc_ctor.exit662

bb.ig:                                            ; preds = %lean_dec_ref.exit531
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit662:                          ; preds = %lean_dec_ref.exit531
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store i32 1, ptr %i.kk, align 4, !tbaa !10
  store i32 65552, ptr %i.km, align 4
  br label %lean_dec.exit435.sink.split

bb.ih:                                            ; preds = %bb.le, %bb.kz, %bb.la, %bb.kx, %bb.ky, %bb.lc, %bb.ld
  %.pre-phi750 = phi i64 [ %i.ne, %bb.le ], [ %i.ne, %bb.kz ], [ %.pre749, %bb.la ], [ %i.ne, %bb.kx ], [ %i.ne, %bb.ky ], [ %i.ne, %bb.lc ], [ %i.ne, %bb.ld ] ; 2 uses
  %.2367.ph = phi ptr [ %i.nd, %bb.le ], [ %i.nd, %bb.kz ], [ %i.oa, %bb.la ], [ %i.nd, %bb.kx ], [ %i.nd, %bb.ky ], [ %i.nd, %bb.lc ], [ %i.nd, %bb.ld ] ; 11 uses
  %i.kn = and i64 %.pre-phi750, 1
  %.not.i663 = icmp eq i64 %i.kn, 0               ; 3 uses
  br i1 %.not.i663, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ko = lshr i64 %.pre-phi750, 1
  %i.kp = trunc i64 %i.ko to i32
  br label %lean_obj_tag.exit666

bb.ij:                                            ; preds = %bb.ih
  %i.kq = getelementptr i8, ptr %.2367.ph, i64 4
  %.val.i665 = load i32, ptr %i.kq, align 4
  %i.kr = lshr i32 %.val.i665, 24
  br label %lean_obj_tag.exit666

lean_obj_tag.exit666:                             ; preds = %bb.ii, %bb.ij
  %.0.i664 = phi i32 [ %i.kp, %bb.ii ], [ %i.kr, %bb.ij ]
  %i.ks = icmp eq i32 %.0.i664, 0
  %i.kt = getelementptr inbounds nuw i8, ptr %.2367.ph, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !13 ; 15 uses
  %.2367.val560 = load i32, ptr %.2367.ph, align 8, !tbaa !10
  %i.kv = icmp eq i32 %.2367.val560, 1            ; 3 uses
  br i1 %i.ks, label %bb.ik, label %bb.jg

bb.ik:                                            ; preds = %lean_obj_tag.exit666
  %.pre757 = ptrtoint ptr %i.ku to i64            ; 4 uses
  br i1 %i.kv, label %lean_dec.exit419, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.kw = and i64 %.pre757, 1
  %.not.i455 = icmp eq i64 %i.kw, 0
  br i1 %.not.i455, label %bb.im, label %lean_inc.exit456

bb.im:                                            ; preds = %bb.il
  %.val.i.i667 = load i32, ptr %i.ku, align 4, !tbaa !10 ; 3 uses
  %i.kx = icmp sgt i32 %.val.i.i667, 0
  br i1 %i.kx, label %bb.in, label %bb.io, !prof !11

bb.in:                                            ; preds = %bb.im
  %i.ky = add nuw i32 %.val.i.i667, 1
  store i32 %i.ky, ptr %i.ku, align 4, !tbaa !10
  br label %lean_inc.exit456

bb.io:                                            ; preds = %bb.im
  %.not.i.i668 = icmp eq i32 %.val.i.i667, 0
  br i1 %.not.i.i668, label %lean_inc.exit456, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.kz = atomicrmw sub ptr %i.ku, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit456

lean_inc.exit456:                                 ; preds = %bb.ip, %bb.io, %bb.in, %bb.il
  br i1 %.not.i663, label %bb.iq, label %lean_dec.exit419

bb.iq:                                            ; preds = %lean_inc.exit456
  %i.la = load i32, ptr %.2367.ph, align 8, !tbaa !10 ; 3 uses
  %i.lb = icmp sgt i32 %i.la, 1
  br i1 %i.lb, label %bb.ir, label %bb.is, !prof !11

bb.ir:                                            ; preds = %bb.iq
  %i.lc = add nsw i32 %i.la, -1
  store i32 %i.lc, ptr %.2367.ph, align 8, !tbaa !10
  br label %lean_dec.exit419

bb.is:                                            ; preds = %bb.iq
  %.not.i506 = icmp eq i32 %i.la, 0
  br i1 %.not.i506, label %lean_dec.exit419, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2367.ph) #7
  br label %lean_dec.exit419

lean_dec.exit419:                                 ; preds = %bb.ik, %lean_inc.exit456, %bb.ir, %bb.is, %bb.it
  %.0370 = phi ptr [ inttoptr (i64 1 to ptr), %bb.it ], [ inttoptr (i64 1 to ptr), %lean_inc.exit456 ], [ inttoptr (i64 1 to ptr), %bb.ir ], [ inttoptr (i64 1 to ptr), %bb.is ], [ %.2367.ph, %bb.ik ] ; 3 uses
  %i.ld = and i64 %.pre757, 510
  %.not = icmp eq i64 %i.ld, 0
  br i1 %.not, label %bb.iu, label %bb.ja

bb.iu:                                            ; preds = %lean_dec.exit419
  %i.le = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 1, i32 noundef 2) ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.lf, align 8, !tbaa !13
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store i8 0, ptr %i.lg, align 8, !tbaa !14
  %i.lh = and i64 %.pre757, 1
  %.not.i416 = icmp eq i64 %i.lh, 0
  br i1 %.not.i416, label %bb.iv, label %lean_dec.exit417

bb.iv:                                            ; preds = %bb.iu
  %i.li = load i32, ptr %i.ku, align 512, !tbaa !10 ; 3 uses
  %i.lj = icmp sgt i32 %i.li, 1
  br i1 %i.lj, label %bb.iw, label %bb.ix, !prof !11

bb.iw:                                            ; preds = %bb.iv
  %i.lk = add nsw i32 %i.li, -1
  store i32 %i.lk, ptr %i.ku, align 512, !tbaa !10
  br label %lean_dec.exit417

bb.ix:                                            ; preds = %bb.iv
  %.not.i508 = icmp eq i32 %i.li, 0
  br i1 %.not.i508, label %lean_dec.exit417, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ku) #7
  br label %lean_dec.exit417

lean_dec.exit417:                                 ; preds = %bb.iy, %bb.ix, %bb.iw, %bb.iu
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 17
  store i8 0, ptr %i.ll, align 1, !tbaa !14
  br i1 %i.kv, label %lean_dec.exit435.sink.split, label %bb.iz

bb.iz:                                            ; preds = %lean_dec.exit417
  %i.lm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit435.sink.split

bb.ja:                                            ; preds = %lean_dec.exit419
  %i.ln = ptrtoint ptr %.0370 to i64
  %i.lo = and i64 %i.ln, 1
  %.not.i670 = icmp eq i64 %i.lo, 0
  br i1 %.not.i670, label %bb.jb, label %lean_del_object.exit671

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_free_object(ptr noundef nonnull %.0370) #7
  br label %lean_del_object.exit671

lean_del_object.exit671:                          ; preds = %bb.ja, %bb.jb
  %i.lp = and i64 %.pre757, 1
  %.not.i414 = icmp eq i64 %i.lp, 0
  br i1 %.not.i414, label %bb.jc, label %lean_dec_ref.exit531

bb.jc:                                            ; preds = %lean_del_object.exit671
  %i.lq = load i32, ptr %i.ku, align 4, !tbaa !10 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.jd, label %bb.je, !prof !11

bb.jd:                                            ; preds = %bb.jc
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %i.ku, align 4, !tbaa !10
  br label %lean_dec_ref.exit531

bb.je:                                            ; preds = %bb.jc
  %.not.i510 = icmp eq i32 %i.lq, 0
  br i1 %.not.i510, label %lean_dec_ref.exit531, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ku) #7
  br label %lean_dec_ref.exit531

bb.jg:                                            ; preds = %lean_obj_tag.exit666
  br i1 %i.kv, label %lean_dec.exit435, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.lt = ptrtoint ptr %i.ku to i64
  %i.lu = and i64 %i.lt, 1
  %.not.i453 = icmp eq i64 %i.lu, 0
  br i1 %.not.i453, label %bb.ji, label %lean_inc.exit454

bb.ji:                                            ; preds = %bb.jh
  %.val.i.i672 = load i32, ptr %i.ku, align 4, !tbaa !10 ; 3 uses
  %i.lv = icmp sgt i32 %.val.i.i672, 0
  br i1 %i.lv, label %bb.jj, label %bb.jk, !prof !11

bb.jj:                                            ; preds = %bb.ji
  %i.lw = add nuw i32 %.val.i.i672, 1
  store i32 %i.lw, ptr %i.ku, align 4, !tbaa !10
  br label %lean_inc.exit454

bb.jk:                                            ; preds = %bb.ji
  %.not.i.i673 = icmp eq i32 %.val.i.i672, 0
  br i1 %.not.i.i673, label %lean_inc.exit454, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.lx = atomicrmw sub ptr %i.ku, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit454

lean_inc.exit454:                                 ; preds = %bb.jl, %bb.jk, %bb.jj, %bb.jh
  br i1 %.not.i663, label %bb.jm, label %bb.jq

bb.jm:                                            ; preds = %lean_inc.exit454
  %i.ly = load i32, ptr %.2367.ph, align 8, !tbaa !10 ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.jn, label %bb.jo, !prof !11

bb.jn:                                            ; preds = %bb.jm
  %i.ma = add nsw i32 %i.ly, -1
  store i32 %i.ma, ptr %.2367.ph, align 8, !tbaa !10
  br label %bb.jq

bb.jo:                                            ; preds = %bb.jm
  %.not.i512 = icmp eq i32 %i.ly, 0
  br i1 %.not.i512, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2367.ph) #7
  br label %bb.jq

bb.jq:                                            ; preds = %lean_inc.exit454, %bb.jn, %bb.jo, %bb.jp
  %i.mb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit435.sink.split

lean_dec.exit439:                                 ; preds = %lean_obj_tag.exit600, %lean_inc_ref.exit616, %lean_dec.exit437
  %.pre-phi748 = phi i64 [ %i.dn, %lean_obj_tag.exit600 ], [ %.pre747, %lean_inc_ref.exit616 ], [ %i.dn, %lean_dec.exit437 ] ; 2 uses
  %.2373 = phi ptr [ %i.dm, %lean_obj_tag.exit600 ], [ %i.es, %lean_inc_ref.exit616 ], [ %i.dm, %lean_dec.exit437 ] ; 12 uses
  %i.mc = and i64 %.pre-phi748, 1
  %.not.i675 = icmp eq i64 %i.mc, 0               ; 2 uses
  br i1 %.not.i675, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %lean_dec.exit439
  %i.md = lshr i64 %.pre-phi748, 1
  %i.me = trunc i64 %i.md to i32
  br label %lean_obj_tag.exit678

bb.js:                                            ; preds = %lean_dec.exit439
  %i.mf = getelementptr i8, ptr %.2373, i64 4
  %.val.i677 = load i32, ptr %i.mf, align 4
  %i.mg = lshr i32 %.val.i677, 24
  br label %lean_obj_tag.exit678

lean_obj_tag.exit678:                             ; preds = %bb.jr, %bb.js
  %.0.i676 = phi i32 [ %i.me, %bb.jr ], [ %i.mg, %bb.js ]
  %i.mh = icmp eq i32 %.0.i676, 0
  br i1 %i.mh, label %bb.jt, label %bb.lm

bb.jt:                                            ; preds = %lean_obj_tag.exit678
  %i.mi = getelementptr inbounds nuw i8, ptr %.2373, i64 8 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !13 ; 7 uses
  %i.mk = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.ml = and i64 %i.mk, 1
  %.not.i451 = icmp eq i64 %i.ml, 0               ; 2 uses
  br i1 %.not.i451, label %bb.ju, label %lean_inc.exit452

bb.ju:                                            ; preds = %bb.jt
  %.val.i.i679 = load i32, ptr %i.mj, align 4, !tbaa !10 ; 3 uses
  %i.mm = icmp sgt i32 %.val.i.i679, 0
  br i1 %i.mm, label %bb.jv, label %bb.jw, !prof !11

bb.jv:                                            ; preds = %bb.ju
  %i.mn = add nuw i32 %.val.i.i679, 1
  store i32 %i.mn, ptr %i.mj, align 4, !tbaa !10
  br label %lean_inc.exit452

bb.jw:                                            ; preds = %bb.ju
  %.not.i.i680 = icmp eq i32 %.val.i.i679, 0
  br i1 %.not.i.i680, label %lean_inc.exit452, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.mo = atomicrmw sub ptr %i.mj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit452

lean_inc.exit452:                                 ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.jt
  %.val.i682 = load i32, ptr %.2373, align 8, !tbaa !10 ; 4 uses
  %i.mp = icmp eq i32 %.val.i682, 1
  br i1 %i.mp, label %.preheader.i684, label %bb.kc

.preheader.i684:                                  ; preds = %lean_inc.exit452
  %i.mq = load ptr, ptr %i.mi, align 8, !tbaa !13 ; 4 uses
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i.i686 = icmp eq i64 %i.ms, 0
  br i1 %.not.i.i686, label %bb.jy, label %lean_dec.exit.i687

bb.jy:                                            ; preds = %.preheader.i684
  %i.mt = load i32, ptr %i.mq, align 4, !tbaa !10 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.jz, label %bb.ka, !prof !11

bb.jz:                                            ; preds = %bb.jy
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.mq, align 4, !tbaa !10
  br label %lean_dec.exit.i687

bb.ka:                                            ; preds = %bb.jy
  %.not.i7.i690 = icmp eq i32 %i.mt, 0
  br i1 %.not.i7.i690, label %lean_dec.exit.i687, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mq) #7
  br label %lean_dec.exit.i687

lean_dec.exit.i687:                               ; preds = %bb.kb, %bb.ka, %bb.jz, %.preheader.i684
  tail call void @lean_free_object(ptr noundef nonnull %.2373) #7
  br label %lean_dec_ref_known.exit691

bb.kc:                                            ; preds = %lean_inc.exit452
  %i.mw = icmp sgt i32 %.val.i682, 1
  br i1 %i.mw, label %bb.kd, label %bb.ke, !prof !11

bb.kd:                                            ; preds = %bb.kc
  %i.mx = add nsw i32 %.val.i682, -1
  store i32 %i.mx, ptr %.2373, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit691

bb.ke:                                            ; preds = %bb.kc
  %.not.i8.i683 = icmp eq i32 %.val.i682, 0
  br i1 %.not.i8.i683, label %lean_dec_ref_known.exit691, label %bb.kf

end_hunk_4
begin_hunk_5_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus:bb.a

lean_obj_tag.exit1556:                            ; preds = %bb.lx, %bb.ly
  %.0.i1554 = phi i32 [ %i.rv, %bb.lx ], [ %i.rx, %bb.ly ]
  %i.ry = icmp eq i32 %.0.i1554, 0
  br i1 %i.ry, label %bb.lz, label %bb.st

bb.lz:                                            ; preds = %lean_obj_tag.exit1556
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !13 ; 28 uses
  %.val1399 = load i32, ptr %i.rr, align 8, !tbaa !10
  %i.sb = icmp eq i32 %.val1399, 1                ; 3 uses
  %.pre = ptrtoint ptr %i.sa to i64               ; 10 uses
  br i1 %i.sb, label %lean_dec.exit1150, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.sc = and i64 %.pre, 1
  %.not.i1206 = icmp eq i64 %i.sc, 0
  br i1 %.not.i1206, label %bb.mb, label %lean_inc.exit1207

bb.mb:                                            ; preds = %bb.ma
  %.val.i.i1557 = load i32, ptr %i.sa, align 4, !tbaa !10 ; 3 uses
  %i.sd = icmp sgt i32 %.val.i.i1557, 0
  br i1 %i.sd, label %bb.mc, label %bb.md, !prof !11

bb.mc:                                            ; preds = %bb.mb
  %i.se = add nuw i32 %.val.i.i1557, 1
  store i32 %i.se, ptr %i.sa, align 4, !tbaa !10
  br label %lean_inc.exit1207

bb.md:                                            ; preds = %bb.mb
  %.not.i.i1558 = icmp eq i32 %.val.i.i1557, 0
  br i1 %.not.i.i1558, label %lean_inc.exit1207, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.sf = atomicrmw sub ptr %i.sa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1207

lean_inc.exit1207:                                ; preds = %bb.me, %bb.md, %bb.mc, %bb.ma
  br i1 %.not.i1553, label %bb.mf, label %lean_dec.exit1150

bb.mf:                                            ; preds = %lean_inc.exit1207
  %i.sg = load i32, ptr %i.rr, align 8, !tbaa !10 ; 3 uses
  %i.sh = icmp sgt i32 %i.sg, 1
  br i1 %i.sh, label %bb.mg, label %bb.mh, !prof !11

bb.mg:                                            ; preds = %bb.mf
  %i.si = add nsw i32 %i.sg, -1
  store i32 %i.si, ptr %i.rr, align 8, !tbaa !10
  br label %lean_dec.exit1150

bb.mh:                                            ; preds = %bb.mf
  %.not.i1275 = icmp eq i32 %i.sg, 0
  br i1 %.not.i1275, label %lean_dec.exit1150, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rr) #7
  br label %lean_dec.exit1150

lean_dec.exit1150:                                ; preds = %bb.lz, %lean_inc.exit1207, %bb.mg, %bb.mh, %bb.mi
  %.0941 = phi ptr [ inttoptr (i64 1 to ptr), %bb.mi ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1207 ], [ inttoptr (i64 1 to ptr), %bb.mg ], [ inttoptr (i64 1 to ptr), %bb.mh ], [ %i.rr, %bb.lz ] ; 6 uses
  %i.sj = and i64 %.pre, 510
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %bb.mj, label %bb.sj

bb.mj:                                            ; preds = %lean_dec.exit1150
  %i.sl = tail call ptr @lean_st_ref_get(ptr noundef %10) #7 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !13 ; 4 uses
  %.val.i.i1560 = load i32, ptr %i.sn, align 4, !tbaa !10 ; 3 uses
  %i.so = icmp sgt i32 %.val.i.i1560, 0
  br i1 %i.so, label %bb.mk, label %bb.ml, !prof !11

bb.mk:                                            ; preds = %bb.mj
  %i.sp = add nuw i32 %.val.i.i1560, 1
  store i32 %i.sp, ptr %i.sn, align 4, !tbaa !10
  br label %lean_inc_ref.exit1562

bb.ml:                                            ; preds = %bb.mj
  %.not.i.i1561 = icmp eq i32 %.val.i.i1560, 0
  br i1 %.not.i.i1561, label %lean_inc_ref.exit1562, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.sq = atomicrmw sub ptr %i.sn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1562

lean_inc_ref.exit1562:                            ; preds = %bb.mm, %bb.ml, %bb.mk
  %i.sr = load i32, ptr %i.sl, align 8, !tbaa !10 ; 3 uses
  %i.ss = icmp sgt i32 %i.sr, 1
  br i1 %i.ss, label %bb.mn, label %bb.mo, !prof !11

bb.mn:                                            ; preds = %lean_inc_ref.exit1562
  %i.st = add nsw i32 %i.sr, -1
  store i32 %i.st, ptr %i.sl, align 8, !tbaa !10
  br label %lean_dec.exit1148

bb.mo:                                            ; preds = %lean_inc_ref.exit1562
  %.not.i1277 = icmp eq i32 %i.sr, 0
  br i1 %.not.i1277, label %lean_dec.exit1148, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sl) #7
  br label %lean_dec.exit1148

lean_dec.exit1148:                                ; preds = %bb.mp, %bb.mo, %bb.mn
  %i.su = tail call ptr @l_Lean_Meta_isMatcherAppCore_x3f(ptr noundef nonnull %i.sn, ptr noundef nonnull %0) #7 ; 7 uses
  %i.sv = ptrtoint ptr %i.su to i64               ; 2 uses
  %i.sw = and i64 %i.sv, 1
  %.not.i1563 = icmp eq i64 %i.sw, 0
  br i1 %.not.i1563, label %lean_obj_tag.exit1566, label %lean_obj_tag.exit1566.thread

lean_obj_tag.exit1566:                            ; preds = %lean_dec.exit1148
  %i.sx = getelementptr i8, ptr %i.su, i64 4
  %.val.i1565 = load i32, ptr %i.sx, align 4
  %.mask = and i32 %.val.i1565, -16777216
  %i.sy = icmp eq i32 %.mask, 16777216
  br i1 %i.sy, label %bb.mq, label %bb.ni

lean_obj_tag.exit1566.thread:                     ; preds = %lean_dec.exit1148
  %i.sz = and i64 %i.sv, 8589934590
  %i.ta = icmp eq i64 %i.sz, 2
  br i1 %i.ta, label %bb.mq, label %lean_dec.exit1142

bb.mq:                                            ; preds = %lean_obj_tag.exit1566.thread, %lean_obj_tag.exit1566
  %i.tb = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.tc = icmp sgt i32 %i.tb, 1
  br i1 %i.tc, label %bb.mr, label %bb.ms, !prof !11

bb.mr:                                            ; preds = %bb.mq
  %i.td = add nsw i32 %i.tb, -1
  store i32 %i.td, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit1352

bb.ms:                                            ; preds = %bb.mq
  %.not.i1351 = icmp eq i32 %i.tb, 0
  br i1 %.not.i1351, label %lean_dec_ref.exit1352, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit1352

lean_dec_ref.exit1352:                            ; preds = %bb.mr, %bb.ms, %bb.mt
  %i.te = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !13 ; 8 uses
  %i.tg = ptrtoint ptr %i.tf to i64
  %i.th = and i64 %i.tg, 1
  %.not.i1204 = icmp eq i64 %i.th, 0              ; 2 uses
  br i1 %.not.i1204, label %bb.mu, label %lean_inc.exit1205

bb.mu:                                            ; preds = %lean_dec_ref.exit1352
  %.val.i.i1567 = load i32, ptr %i.tf, align 4, !tbaa !10 ; 3 uses
  %i.ti = icmp sgt i32 %.val.i.i1567, 0
  br i1 %i.ti, label %bb.mv, label %bb.mw, !prof !11

bb.mv:                                            ; preds = %bb.mu
  %i.tj = add nuw i32 %.val.i.i1567, 1
  store i32 %i.tj, ptr %i.tf, align 4, !tbaa !10
  br label %lean_inc.exit1205

bb.mw:                                            ; preds = %bb.mu
  %.not.i.i1568 = icmp eq i32 %.val.i.i1567, 0
  br i1 %.not.i.i1568, label %lean_inc.exit1205, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.tk = atomicrmw sub ptr %i.tf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1205

lean_inc.exit1205:                                ; preds = %bb.mx, %bb.mw, %bb.mv, %lean_dec_ref.exit1352
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.su, i32 noundef 1)
  %i.tl = tail call ptr @l_Lean_Meta_Match_MatcherInfo_numAlts(ptr noundef %i.tf) #7
  br i1 %.not.i1204, label %bb.my, label %lean_dec.exit1146

bb.my:                                            ; preds = %lean_inc.exit1205
  %i.tm = load i32, ptr %i.tf, align 4, !tbaa !10 ; 3 uses
  %i.tn = icmp sgt i32 %i.tm, 1
  br i1 %i.tn, label %bb.mz, label %bb.na, !prof !11

bb.mz:                                            ; preds = %bb.my
  %i.to = add nsw i32 %i.tm, -1
  store i32 %i.to, ptr %i.tf, align 4, !tbaa !10
  br label %lean_dec.exit1146

bb.na:                                            ; preds = %bb.my
  %.not.i1279 = icmp eq i32 %i.tm, 0
  br i1 %.not.i1279, label %lean_dec.exit1146, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tf) #7
  br label %lean_dec.exit1146

lean_dec.exit1146:                                ; preds = %bb.nb, %bb.na, %bb.mz, %lean_inc.exit1205
  %i.tp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 1, i32 noundef 2) ; 5 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store ptr %i.tl, ptr %i.tq, align 8, !tbaa !13
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store i8 0, ptr %i.tr, align 8, !tbaa !14
  %i.ts = and i64 %.pre, 1
  %.not.i1143 = icmp eq i64 %i.ts, 0
  br i1 %.not.i1143, label %bb.nc, label %lean_dec.exit1144

bb.nc:                                            ; preds = %lean_dec.exit1146
  %i.tt = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.tu = icmp sgt i32 %i.tt, 1
  br i1 %i.tu, label %bb.nd, label %bb.ne, !prof !11

bb.nd:                                            ; preds = %bb.nc
  %i.tv = add nsw i32 %i.tt, -1
  store i32 %i.tv, ptr %i.sa, align 512, !tbaa !10
  br label %lean_dec.exit1144

bb.ne:                                            ; preds = %bb.nc
  %.not.i1281 = icmp eq i32 %i.tt, 0
  br i1 %.not.i1281, label %lean_dec.exit1144, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %lean_dec.exit1144

lean_dec.exit1144:                                ; preds = %bb.nf, %bb.ne, %bb.nd, %lean_dec.exit1146
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 17
  store i8 0, ptr %i.tw, align 1, !tbaa !14
  br i1 %i.sb, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %lean_dec.exit1144
  %i.tx = getelementptr inbounds nuw i8, ptr %.0941, i64 8
  store ptr %i.tp, ptr %i.tx, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.nh:                                            ; preds = %lean_dec.exit1144
  %i.ty = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %i.tp, ptr %i.tz, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.ni:                                            ; preds = %lean_obj_tag.exit1566
  %i.ua = load i32, ptr %i.su, align 4, !tbaa !10 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 1
  br i1 %i.ub, label %bb.nj, label %bb.nk, !prof !11

bb.nj:                                            ; preds = %bb.ni
  %i.uc = add nsw i32 %i.ua, -1
  store i32 %i.uc, ptr %i.su, align 4, !tbaa !10
  br label %lean_dec.exit1142

bb.nk:                                            ; preds = %bb.ni
  %.not.i1283 = icmp eq i32 %i.ua, 0
  br i1 %.not.i1283, label %lean_dec.exit1142, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.su) #7
  br label %lean_dec.exit1142

lean_dec.exit1142:                                ; preds = %lean_obj_tag.exit1566.thread, %bb.nl, %bb.nk, %bb.nj
  %i.ud = ptrtoint ptr %.0941 to i64
  %i.ue = and i64 %i.ud, 1
  %.not.i1570 = icmp eq i64 %i.ue, 0
  br i1 %.not.i1570, label %bb.nm, label %lean_del_object.exit1571

bb.nm:                                            ; preds = %lean_dec.exit1142
  tail call void @lean_free_object(ptr noundef nonnull %.0941) #7
  br label %lean_del_object.exit1571

lean_del_object.exit1571:                         ; preds = %lean_dec.exit1142, %bb.nm
  %i.uf = tail call ptr @l_Lean_Expr_getAppFn(ptr noundef nonnull %0) #7 ; 7 uses
  %i.ug = ptrtoint ptr %i.uf to i64               ; 2 uses
  %i.uh = and i64 %i.ug, 1
  %.not.i1572 = icmp eq i64 %i.uh, 0
  br i1 %.not.i1572, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %lean_del_object.exit1571
  %i.ui = lshr i64 %i.ug, 1
  %i.uj = trunc i64 %i.ui to i32
  br label %lean_obj_tag.exit1575

bb.no:                                            ; preds = %lean_del_object.exit1571
  %i.uk = getelementptr i8, ptr %i.uf, i64 4
  %.val.i1574 = load i32, ptr %i.uk, align 4
  %i.ul = lshr i32 %.val.i1574, 24
  br label %lean_obj_tag.exit1575

lean_obj_tag.exit1575:                            ; preds = %bb.nn, %bb.no
  %.0.i1573 = phi i32 [ %i.uj, %bb.nn ], [ %i.ul, %bb.no ]
  %i.um = icmp eq i32 %.0.i1573, 4
  br i1 %i.um, label %bb.np, label %bb.sb

bb.np:                                            ; preds = %lean_obj_tag.exit1575
  %i.un = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !13 ; 5 uses
  %i.up = ptrtoint ptr %i.uo to i64
  %i.uq = and i64 %i.up, 1
  %.not.i1202 = icmp eq i64 %i.uq, 0
  br i1 %.not.i1202, label %bb.nq, label %lean_inc.exit1203

bb.nq:                                            ; preds = %bb.np
  %.val.i.i1576 = load i32, ptr %i.uo, align 4, !tbaa !10 ; 3 uses
  %i.ur = icmp sgt i32 %.val.i.i1576, 0
  br i1 %i.ur, label %bb.nr, label %bb.ns, !prof !11

bb.nr:                                            ; preds = %bb.nq
  %i.us = add nuw i32 %.val.i.i1576, 1
  store i32 %i.us, ptr %i.uo, align 4, !tbaa !10
  br label %lean_inc.exit1203

bb.ns:                                            ; preds = %bb.nq
  %.not.i.i1577 = icmp eq i32 %.val.i.i1576, 0
  br i1 %.not.i.i1577, label %lean_inc.exit1203, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.ut = atomicrmw sub ptr %i.uo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1203

lean_inc.exit1203:                                ; preds = %bb.nt, %bb.ns, %bb.nr, %bb.np
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.uf, i32 noundef 2)
  %i.uu = tail call ptr @l_Lean_Meta_isInductivePredicate_x3f(ptr noundef %i.uo, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #7 ; 11 uses
  %i.uv = ptrtoint ptr %i.uu to i64               ; 2 uses
  %i.uw = and i64 %i.uv, 1
  %.not.i1579 = icmp eq i64 %i.uw, 0              ; 2 uses
  br i1 %.not.i1579, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %lean_inc.exit1203
  %i.ux = lshr i64 %i.uv, 1
  %i.uy = trunc i64 %i.ux to i32
  br label %lean_obj_tag.exit1582

bb.nv:                                            ; preds = %lean_inc.exit1203
  %i.uz = getelementptr i8, ptr %i.uu, i64 4
  %.val.i1581 = load i32, ptr %i.uz, align 4
  %i.va = lshr i32 %.val.i1581, 24
  br label %lean_obj_tag.exit1582

lean_obj_tag.exit1582:                            ; preds = %bb.nu, %bb.nv
  %.0.i1580 = phi i32 [ %i.uy, %bb.nu ], [ %i.va, %bb.nv ]
  %i.vb = icmp eq i32 %.0.i1580, 0
  br i1 %i.vb, label %bb.nw, label %bb.rj

bb.nw:                                            ; preds = %lean_obj_tag.exit1582
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !13 ; 10 uses
  %i.ve = ptrtoint ptr %i.vd to i64               ; 2 uses
  %i.vf = and i64 %i.ve, 1
  %.not.i1200 = icmp eq i64 %i.vf, 0
  br i1 %.not.i1200, label %bb.nx, label %lean_obj_tag.exit1589.thread

bb.nx:                                            ; preds = %bb.nw
  %.val.i.i1583 = load i32, ptr %i.vd, align 4, !tbaa !10 ; 3 uses
  %i.vg = icmp sgt i32 %.val.i.i1583, 0
  br i1 %i.vg, label %bb.ny, label %bb.nz, !prof !11

bb.ny:                                            ; preds = %bb.nx
  %i.vh = add nuw i32 %.val.i.i1583, 1
  store i32 %i.vh, ptr %i.vd, align 4, !tbaa !10
  br label %lean_obj_tag.exit1589

bb.nz:                                            ; preds = %bb.nx
  %.not.i.i1584 = icmp eq i32 %.val.i.i1583, 0
  br i1 %.not.i.i1584, label %lean_obj_tag.exit1589, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.vi = atomicrmw sub ptr %i.vd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit1589

lean_obj_tag.exit1589:                            ; preds = %bb.ny, %bb.nz, %bb.oa
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.uu, i32 noundef 1)
  %i.vj = getelementptr i8, ptr %i.vd, i64 4
  %.val.i1588 = load i32, ptr %i.vj, align 4
  %.mask1858 = and i32 %.val.i1588, -16777216
  %i.vk = icmp eq i32 %.mask1858, 16777216
  br i1 %i.vk, label %bb.ob, label %bb.rb

lean_obj_tag.exit1589.thread:                     ; preds = %bb.nw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.uu, i32 noundef 1)
  %i.vl = and i64 %i.ve, 8589934590
  %i.vm = icmp eq i64 %i.vl, 2
  br i1 %i.vm, label %bb.ob, label %lean_dec.exit1120

bb.ob:                                            ; preds = %lean_obj_tag.exit1589.thread, %lean_obj_tag.exit1589
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !13 ; 15 uses
  %i.vp = ptrtoint ptr %i.vo to i64
  %i.vq = and i64 %i.vp, 1
  %.not.i1198 = icmp eq i64 %i.vq, 0              ; 4 uses
  br i1 %.not.i1198, label %bb.oc, label %lean_inc.exit1199

bb.oc:                                            ; preds = %bb.ob
  %.val.i.i1590 = load i32, ptr %i.vo, align 4, !tbaa !10 ; 3 uses
  %i.vr = icmp sgt i32 %.val.i.i1590, 0
  br i1 %i.vr, label %bb.od, label %bb.oe, !prof !11

bb.od:                                            ; preds = %bb.oc
  %i.vs = add nuw i32 %.val.i.i1590, 1
  store i32 %i.vs, ptr %i.vo, align 4, !tbaa !10
  br label %lean_inc.exit1199

bb.oe:                                            ; preds = %bb.oc
  %.not.i.i1591 = icmp eq i32 %.val.i.i1590, 0
  br i1 %.not.i.i1591, label %lean_inc.exit1199, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.vt = atomicrmw sub ptr %i.vo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1199

lean_inc.exit1199:                                ; preds = %bb.of, %bb.oe, %bb.od, %bb.ob
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.vd, i32 noundef 1)
  %.val.i.i1593 = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.vu = icmp sgt i32 %.val.i.i1593, 0
  br i1 %i.vu, label %bb.og, label %bb.oh, !prof !11

bb.og:                                            ; preds = %lean_inc.exit1199
  %i.vv = add nuw i32 %.val.i.i1593, 1
  store i32 %i.vv, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref.exit1595

bb.oh:                                            ; preds = %lean_inc.exit1199
  %.not.i.i1594 = icmp eq i32 %.val.i.i1593, 0
  br i1 %.not.i.i1594, label %lean_inc_ref.exit1595, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.vw = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1595

lean_inc_ref.exit1595:                            ; preds = %bb.og, %bb.oh, %bb.oi
  %i.vx = tail call ptr @l_Lean_Meta_Grind_isEqTrue___redArg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #7 ; 14 uses
  %i.vy = ptrtoint ptr %i.vx to i64               ; 2 uses
  %i.vz = and i64 %i.vy, 1
  %.not.i1596 = icmp eq i64 %i.vz, 0              ; 3 uses
  br i1 %.not.i1596, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %lean_inc_ref.exit1595
  %i.wa = lshr i64 %i.vy, 1
  %i.wb = trunc i64 %i.wa to i32
  br label %lean_obj_tag.exit1599

bb.ok:                                            ; preds = %lean_inc_ref.exit1595
  %i.wc = getelementptr i8, ptr %i.vx, i64 4
  %.val.i1598 = load i32, ptr %i.wc, align 4
  %i.wd = lshr i32 %.val.i1598, 24
  br label %lean_obj_tag.exit1599

lean_obj_tag.exit1599:                            ; preds = %bb.oj, %bb.ok
  %.0.i1597 = phi i32 [ %i.wb, %bb.oj ], [ %i.wd, %bb.ok ]
  %i.we = icmp eq i32 %.0.i1597, 0
  br i1 %i.we, label %bb.ol, label %bb.qf

bb.ol:                                            ; preds = %lean_obj_tag.exit1599
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !13 ; 7 uses
  %.val1398 = load i32, ptr %i.vx, align 8, !tbaa !10
  %i.wh = icmp eq i32 %.val1398, 1                ; 2 uses
  %.pre1688 = ptrtoint ptr %i.wg to i64           ; 2 uses
  %.pre1690 = and i64 %.pre1688, 1                ; 2 uses
  br i1 %i.wh, label %lean_dec.exit1140, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %.not.i1196 = icmp eq i64 %.pre1690, 0
  br i1 %.not.i1196, label %bb.on, label %lean_inc.exit1197

bb.on:                                            ; preds = %bb.om
  %.val.i.i1600 = load i32, ptr %i.wg, align 4, !tbaa !10 ; 3 uses
  %i.wi = icmp sgt i32 %.val.i.i1600, 0
  br i1 %i.wi, label %bb.oo, label %bb.op, !prof !11

bb.oo:                                            ; preds = %bb.on
  %i.wj = add nuw i32 %.val.i.i1600, 1
  store i32 %i.wj, ptr %i.wg, align 4, !tbaa !10
  br label %lean_inc.exit1197

bb.op:                                            ; preds = %bb.on
  %.not.i.i1601 = icmp eq i32 %.val.i.i1600, 0
  br i1 %.not.i.i1601, label %lean_inc.exit1197, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.wk = atomicrmw sub ptr %i.wg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1197

lean_inc.exit1197:                                ; preds = %bb.oq, %bb.op, %bb.oo, %bb.om
  br i1 %.not.i1596, label %bb.or, label %lean_dec.exit1140

bb.or:                                            ; preds = %lean_inc.exit1197
  %i.wl = load i32, ptr %i.vx, align 8, !tbaa !10 ; 3 uses
  %i.wm = icmp sgt i32 %i.wl, 1
  br i1 %i.wm, label %bb.os, label %bb.ot, !prof !11

bb.os:                                            ; preds = %bb.or
  %i.wn = add nsw i32 %i.wl, -1
  store i32 %i.wn, ptr %i.vx, align 8, !tbaa !10
  br label %lean_dec.exit1140

bb.ot:                                            ; preds = %bb.or
  %.not.i1285 = icmp eq i32 %i.wl, 0
  br i1 %.not.i1285, label %lean_dec.exit1140, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vx) #7
  br label %lean_dec.exit1140

lean_dec.exit1140:                                ; preds = %bb.ol, %lean_inc.exit1197, %bb.os, %bb.ot, %bb.ou
  %.0936 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ou ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1197 ], [ inttoptr (i64 1 to ptr), %bb.os ], [ inttoptr (i64 1 to ptr), %bb.ot ], [ %i.vx, %bb.ol ] ; 4 uses
  %.not.i1137 = icmp eq i64 %.pre1690, 0
  br i1 %.not.i1137, label %bb.ov, label %lean_dec.exit1138

bb.ov:                                            ; preds = %lean_dec.exit1140
  %i.wo = load i32, ptr %i.wg, align 4, !tbaa !10 ; 3 uses
  %i.wp = icmp sgt i32 %i.wo, 1
  br i1 %i.wp, label %bb.ow, label %bb.ox, !prof !11

bb.ow:                                            ; preds = %bb.ov
  %i.wq = add nsw i32 %i.wo, -1
  store i32 %i.wq, ptr %i.wg, align 4, !tbaa !10
  br label %lean_dec.exit1138

bb.ox:                                            ; preds = %bb.ov
  %.not.i1287 = icmp eq i32 %i.wo, 0
  br i1 %.not.i1287, label %lean_dec.exit1138, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wg) #7
  br label %lean_dec.exit1138

lean_dec.exit1138:                                ; preds = %bb.oy, %bb.ox, %bb.ow, %lean_dec.exit1140
  %i.wr = and i64 %.pre1688, 510
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %bb.oz, label %bb.pj

bb.oz:                                            ; preds = %lean_dec.exit1138
  %i.wt = ptrtoint ptr %.0936 to i64
  %i.wu = and i64 %i.wt, 1
  %.not.i1603 = icmp eq i64 %i.wu, 0
  br i1 %.not.i1603, label %bb.pa, label %lean_del_object.exit1604

bb.pa:                                            ; preds = %bb.oz
  tail call void @lean_free_object(ptr noundef nonnull %.0936) #7
  br label %lean_del_object.exit1604

lean_del_object.exit1604:                         ; preds = %bb.oz, %bb.pa
  br i1 %.not.i1198, label %bb.pb, label %lean_dec.exit1136

bb.pb:                                            ; preds = %lean_del_object.exit1604
  %i.wv = load i32, ptr %i.vo, align 4, !tbaa !10 ; 3 uses
  %i.ww = icmp sgt i32 %i.wv, 1
  br i1 %i.ww, label %bb.pc, label %bb.pd, !prof !11

bb.pc:                                            ; preds = %bb.pb
  %i.wx = add nsw i32 %i.wv, -1
  store i32 %i.wx, ptr %i.vo, align 4, !tbaa !10
  br label %lean_dec.exit1136

bb.pd:                                            ; preds = %bb.pb
  %.not.i1289 = icmp eq i32 %i.wv, 0
  br i1 %.not.i1289, label %lean_dec.exit1136, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vo) #7
  br label %lean_dec.exit1136

lean_dec.exit1136:                                ; preds = %bb.pe, %bb.pd, %bb.pc, %lean_del_object.exit1604
  %i.wy = and i64 %.pre, 1
  %.not.i1133 = icmp eq i64 %i.wy, 0
  br i1 %.not.i1133, label %bb.pf, label %bb.cy

bb.pf:                                            ; preds = %lean_dec.exit1136
  %i.wz = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.xa = icmp sgt i32 %i.wz, 1
  br i1 %i.xa, label %bb.pg, label %bb.ph, !prof !11

bb.pg:                                            ; preds = %bb.pf
  %i.xb = add nsw i32 %i.wz, -1
  store i32 %i.xb, ptr %i.sa, align 512, !tbaa !10
  br label %bb.cy

bb.ph:                                            ; preds = %bb.pf
  %.not.i1291 = icmp eq i32 %i.wz, 0
  br i1 %.not.i1291, label %bb.cy, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %bb.cy

bb.pj:                                            ; preds = %lean_dec.exit1138
  %i.xc = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.xd = icmp sgt i32 %i.xc, 1
  br i1 %i.xd, label %bb.pk, label %bb.pl, !prof !11

bb.pk:                                            ; preds = %bb.pj
  %i.xe = add nsw i32 %i.xc, -1
  store i32 %i.xe, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit1350

bb.pl:                                            ; preds = %bb.pj
  %.not.i1349 = icmp eq i32 %i.xc, 0
  br i1 %.not.i1349, label %lean_dec_ref.exit1350, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit1350

lean_dec_ref.exit1350:                            ; preds = %bb.pk, %bb.pl, %bb.pm
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vo, i64 40
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !13 ; 8 uses
  %i.xh = ptrtoint ptr %i.xg to i64
  %i.xi = and i64 %i.xh, 1
  %.not.i1194 = icmp eq i64 %i.xi, 0              ; 2 uses
  br i1 %.not.i1194, label %bb.pn, label %lean_inc.exit1195

bb.pn:                                            ; preds = %lean_dec_ref.exit1350
  %.val.i.i1605 = load i32, ptr %i.xg, align 4, !tbaa !10 ; 3 uses
  %i.xj = icmp sgt i32 %.val.i.i1605, 0
  br i1 %i.xj, label %bb.po, label %bb.pp, !prof !11

bb.po:                                            ; preds = %bb.pn
  %i.xk = add nuw i32 %.val.i.i1605, 1
  store i32 %i.xk, ptr %i.xg, align 4, !tbaa !10
  br label %lean_inc.exit1195

bb.pp:                                            ; preds = %bb.pn
  %.not.i.i1606 = icmp eq i32 %.val.i.i1605, 0
  br i1 %.not.i.i1606, label %lean_inc.exit1195, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.xl = atomicrmw sub ptr %i.xg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1195

lean_inc.exit1195:                                ; preds = %bb.pq, %bb.pp, %bb.po, %lean_dec_ref.exit1350
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vo, i64 56
  %i.xn = load i8, ptr %i.xm, align 8, !tbaa !14
  br i1 %.not.i1198, label %bb.pr, label %lean_dec.exit1132

bb.pr:                                            ; preds = %lean_inc.exit1195
  %i.xo = load i32, ptr %i.vo, align 8, !tbaa !10 ; 3 uses
  %i.xp = icmp sgt i32 %i.xo, 1
  br i1 %i.xp, label %bb.ps, label %bb.pt, !prof !11

bb.ps:                                            ; preds = %bb.pr
  %i.xq = add nsw i32 %i.xo, -1
  store i32 %i.xq, ptr %i.vo, align 8, !tbaa !10
  br label %lean_dec.exit1132

bb.pt:                                            ; preds = %bb.pr
  %.not.i1293 = icmp eq i32 %i.xo, 0
  br i1 %.not.i1293, label %lean_dec.exit1132, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vo) #7
  br label %lean_dec.exit1132

lean_dec.exit1132:                                ; preds = %bb.pu, %bb.pt, %bb.ps, %lean_inc.exit1195
  %i.xr = tail call ptr @l_List_lengthTR___redArg(ptr noundef %i.xg) #7
  br i1 %.not.i1194, label %bb.pv, label %lean_dec.exit1130

bb.pv:                                            ; preds = %lean_dec.exit1132
  %i.xs = load i32, ptr %i.xg, align 4, !tbaa !10 ; 3 uses
  %i.xt = icmp sgt i32 %i.xs, 1
  br i1 %i.xt, label %bb.pw, label %bb.px, !prof !11

bb.pw:                                            ; preds = %bb.pv
  %i.xu = add nsw i32 %i.xs, -1
  store i32 %i.xu, ptr %i.xg, align 4, !tbaa !10
  br label %lean_dec.exit1130

bb.px:                                            ; preds = %bb.pv
  %.not.i1295 = icmp eq i32 %i.xs, 0
  br i1 %.not.i1295, label %lean_dec.exit1130, label %bb.py

bb.py:                                            ; preds = %bb.px
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xg) #7
  br label %lean_dec.exit1130

lean_dec.exit1130:                                ; preds = %bb.py, %bb.px, %bb.pw, %lean_dec.exit1132
  %i.xv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 1, i32 noundef 2) ; 5 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  store ptr %i.xr, ptr %i.xw, align 8, !tbaa !13
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  store i8 %i.xn, ptr %i.xx, align 8, !tbaa !14
  %i.xy = and i64 %.pre, 1
  %.not.i1127 = icmp eq i64 %i.xy, 0
  br i1 %.not.i1127, label %bb.pz, label %lean_dec.exit1128

bb.pz:                                            ; preds = %lean_dec.exit1130
  %i.xz = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.ya = icmp sgt i32 %i.xz, 1
  br i1 %i.ya, label %bb.qa, label %bb.qb, !prof !11

bb.qa:                                            ; preds = %bb.pz
  %i.yb = add nsw i32 %i.xz, -1
  store i32 %i.yb, ptr %i.sa, align 512, !tbaa !10
  br label %lean_dec.exit1128

bb.qb:                                            ; preds = %bb.pz
  %.not.i1297 = icmp eq i32 %i.xz, 0
  br i1 %.not.i1297, label %lean_dec.exit1128, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %lean_dec.exit1128

lean_dec.exit1128:                                ; preds = %bb.qc, %bb.qb, %bb.qa, %lean_dec.exit1130
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xv, i64 17
  store i8 0, ptr %i.yc, align 1, !tbaa !14
  br i1 %i.wh, label %bb.qd, label %bb.qe

bb.qd:                                            ; preds = %lean_dec.exit1128
  %i.yd = getelementptr inbounds nuw i8, ptr %.0936, i64 8
  store ptr %i.xv, ptr %i.yd, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.qe:                                            ; preds = %lean_dec.exit1128
  %i.ye = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  store ptr %i.xv, ptr %i.yf, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.qf:                                            ; preds = %lean_obj_tag.exit1599
  br i1 %.not.i1198, label %bb.qg, label %lean_dec.exit1126

bb.qg:                                            ; preds = %bb.qf
  %i.yg = load i32, ptr %i.vo, align 4, !tbaa !10 ; 3 uses
  %i.yh = icmp sgt i32 %i.yg, 1
  br i1 %i.yh, label %bb.qh, label %bb.qi, !prof !11

bb.qh:                                            ; preds = %bb.qg
  %i.yi = add nsw i32 %i.yg, -1
  store i32 %i.yi, ptr %i.vo, align 4, !tbaa !10
  br label %lean_dec.exit1126

bb.qi:                                            ; preds = %bb.qg
  %.not.i1299 = icmp eq i32 %i.yg, 0
  br i1 %.not.i1299, label %lean_dec.exit1126, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vo) #7
  br label %lean_dec.exit1126

lean_dec.exit1126:                                ; preds = %bb.qj, %bb.qi, %bb.qh, %bb.qf
  %i.yj = and i64 %.pre, 1
  %.not.i1123 = icmp eq i64 %i.yj, 0
  br i1 %.not.i1123, label %bb.qk, label %lean_dec.exit1124

bb.qk:                                            ; preds = %lean_dec.exit1126
  %i.yk = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.yl = icmp sgt i32 %i.yk, 1
  br i1 %i.yl, label %bb.ql, label %bb.qm, !prof !11

bb.ql:                                            ; preds = %bb.qk
  %i.ym = add nsw i32 %i.yk, -1
  store i32 %i.ym, ptr %i.sa, align 512, !tbaa !10
  br label %lean_dec.exit1124

bb.qm:                                            ; preds = %bb.qk
  %.not.i1301 = icmp eq i32 %i.yk, 0
  br i1 %.not.i1301, label %lean_dec.exit1124, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %lean_dec.exit1124

lean_dec.exit1124:                                ; preds = %bb.qn, %bb.qm, %bb.ql, %lean_dec.exit1126
  %i.yn = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.yo = icmp sgt i32 %i.yn, 1
  br i1 %i.yo, label %bb.qo, label %bb.qp, !prof !11

bb.qo:                                            ; preds = %lean_dec.exit1124
  %i.yp = add nsw i32 %i.yn, -1
  store i32 %i.yp, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit1348

bb.qp:                                            ; preds = %lean_dec.exit1124
  %.not.i1347 = icmp eq i32 %i.yn, 0
  br i1 %.not.i1347, label %lean_dec_ref.exit1348, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit1348

lean_dec_ref.exit1348:                            ; preds = %bb.qo, %bb.qp, %bb.qq
  %i.yq = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !13 ; 5 uses
  %.val1397 = load i32, ptr %i.vx, align 8, !tbaa !10
  %i.ys = icmp eq i32 %.val1397, 1
  br i1 %i.ys, label %lean_dec.exit1180, label %bb.qr

bb.qr:                                            ; preds = %lean_dec_ref.exit1348
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = and i64 %i.yt, 1
  %.not.i1192 = icmp eq i64 %i.yu, 0
  br i1 %.not.i1192, label %bb.qs, label %lean_inc.exit1193

bb.qs:                                            ; preds = %bb.qr
  %.val.i.i1608 = load i32, ptr %i.yr, align 4, !tbaa !10 ; 3 uses
  %i.yv = icmp sgt i32 %.val.i.i1608, 0
  br i1 %i.yv, label %bb.qt, label %bb.qu, !prof !11

bb.qt:                                            ; preds = %bb.qs
  %i.yw = add nuw i32 %.val.i.i1608, 1
  store i32 %i.yw, ptr %i.yr, align 4, !tbaa !10
  br label %lean_inc.exit1193

bb.qu:                                            ; preds = %bb.qs
  %.not.i.i1609 = icmp eq i32 %.val.i.i1608, 0
  br i1 %.not.i.i1609, label %lean_inc.exit1193, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.yx = atomicrmw sub ptr %i.yr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1193

lean_inc.exit1193:                                ; preds = %bb.qv, %bb.qu, %bb.qt, %bb.qr
  br i1 %.not.i1596, label %bb.qw, label %bb.ra

bb.qw:                                            ; preds = %lean_inc.exit1193
  %i.yy = load i32, ptr %i.vx, align 8, !tbaa !10 ; 3 uses
  %i.yz = icmp sgt i32 %i.yy, 1
  br i1 %i.yz, label %bb.qx, label %bb.qy, !prof !11

bb.qx:                                            ; preds = %bb.qw
  %i.za = add nsw i32 %i.yy, -1
  store i32 %i.za, ptr %i.vx, align 8, !tbaa !10
  br label %bb.ra

bb.qy:                                            ; preds = %bb.qw
  %.not.i1303 = icmp eq i32 %i.yy, 0
  br i1 %.not.i1303, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vx) #7
  br label %bb.ra

bb.ra:                                            ; preds = %lean_inc.exit1193, %bb.qx, %bb.qy, %bb.qz
  %i.zb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store ptr %i.yr, ptr %i.zc, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.rb:                                            ; preds = %lean_obj_tag.exit1589
  %i.zd = load i32, ptr %i.vd, align 4, !tbaa !10 ; 3 uses
  %i.ze = icmp sgt i32 %i.zd, 1
  br i1 %i.ze, label %bb.rc, label %bb.rd, !prof !11

bb.rc:                                            ; preds = %bb.rb
  %i.zf = add nsw i32 %i.zd, -1
  store i32 %i.zf, ptr %i.vd, align 4, !tbaa !10
  br label %lean_dec.exit1120

bb.rd:                                            ; preds = %bb.rb
  %.not.i1305 = icmp eq i32 %i.zd, 0
  br i1 %.not.i1305, label %lean_dec.exit1120, label %bb.re

bb.re:                                            ; preds = %bb.rd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vd) #7
  br label %lean_dec.exit1120

lean_dec.exit1120:                                ; preds = %lean_obj_tag.exit1589.thread, %bb.re, %bb.rd, %bb.rc
  %i.zg = and i64 %.pre, 1
  %.not.i1117 = icmp eq i64 %i.zg, 0
  br i1 %.not.i1117, label %bb.rf, label %bb.cy

bb.rf:                                            ; preds = %lean_dec.exit1120
  %i.zh = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.zi = icmp sgt i32 %i.zh, 1
  br i1 %i.zi, label %bb.rg, label %bb.rh, !prof !11

bb.rg:                                            ; preds = %bb.rf
  %i.zj = add nsw i32 %i.zh, -1
  store i32 %i.zj, ptr %i.sa, align 512, !tbaa !10
  br label %bb.cy

bb.rh:                                            ; preds = %bb.rf
  %.not.i1307 = icmp eq i32 %i.zh, 0
  br i1 %.not.i1307, label %bb.cy, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %bb.cy

bb.rj:                                            ; preds = %lean_obj_tag.exit1582
  %i.zk = and i64 %.pre, 1
  %.not.i1115 = icmp eq i64 %i.zk, 0
  br i1 %.not.i1115, label %bb.rk, label %lean_dec.exit1116

bb.rk:                                            ; preds = %bb.rj
  %i.zl = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.zm = icmp sgt i32 %i.zl, 1
  br i1 %i.zm, label %bb.rl, label %bb.rm, !prof !11

bb.rl:                                            ; preds = %bb.rk
  %i.zn = add nsw i32 %i.zl, -1
  store i32 %i.zn, ptr %i.sa, align 512, !tbaa !10
  br label %lean_dec.exit1116

bb.rm:                                            ; preds = %bb.rk
  %.not.i1309 = icmp eq i32 %i.zl, 0
  br i1 %.not.i1309, label %lean_dec.exit1116, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %lean_dec.exit1116

lean_dec.exit1116:                                ; preds = %bb.rn, %bb.rm, %bb.rl, %bb.rj
  %i.zo = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.zp = icmp sgt i32 %i.zo, 1
  br i1 %i.zp, label %bb.ro, label %bb.rp, !prof !11

bb.ro:                                            ; preds = %lean_dec.exit1116
  %i.zq = add nsw i32 %i.zo, -1
  store i32 %i.zq, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit1346

bb.rp:                                            ; preds = %lean_dec.exit1116
  %.not.i1345 = icmp eq i32 %i.zo, 0
  br i1 %.not.i1345, label %lean_dec_ref.exit1346, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit1346

lean_dec_ref.exit1346:                            ; preds = %bb.ro, %bb.rp, %bb.rq
  %i.zr = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !13 ; 5 uses
  %.val1396 = load i32, ptr %i.uu, align 8, !tbaa !10
  %i.zt = icmp eq i32 %.val1396, 1
  br i1 %i.zt, label %lean_dec.exit1180, label %bb.rr

bb.rr:                                            ; preds = %lean_dec_ref.exit1346
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = and i64 %i.zu, 1
  %.not.i1190 = icmp eq i64 %i.zv, 0
  br i1 %.not.i1190, label %bb.rs, label %lean_inc.exit1191

bb.rs:                                            ; preds = %bb.rr
  %.val.i.i1611 = load i32, ptr %i.zs, align 4, !tbaa !10 ; 3 uses
  %i.zw = icmp sgt i32 %.val.i.i1611, 0
  br i1 %i.zw, label %bb.rt, label %bb.ru, !prof !11

bb.rt:                                            ; preds = %bb.rs
  %i.zx = add nuw i32 %.val.i.i1611, 1
  store i32 %i.zx, ptr %i.zs, align 4, !tbaa !10
  br label %lean_inc.exit1191

bb.ru:                                            ; preds = %bb.rs
  %.not.i.i1612 = icmp eq i32 %.val.i.i1611, 0
  br i1 %.not.i.i1612, label %lean_inc.exit1191, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.zy = atomicrmw sub ptr %i.zs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1191

lean_inc.exit1191:                                ; preds = %bb.rv, %bb.ru, %bb.rt, %bb.rr
  br i1 %.not.i1579, label %bb.rw, label %bb.sa

bb.rw:                                            ; preds = %lean_inc.exit1191
  %i.zz = load i32, ptr %i.uu, align 8, !tbaa !10 ; 3 uses
  %i.aaa = icmp sgt i32 %i.zz, 1
  br i1 %i.aaa, label %bb.rx, label %bb.ry, !prof !11

bb.rx:                                            ; preds = %bb.rw
  %i.aab = add nsw i32 %i.zz, -1
  store i32 %i.aab, ptr %i.uu, align 8, !tbaa !10
  br label %bb.sa

bb.ry:                                            ; preds = %bb.rw
  %.not.i1311 = icmp eq i32 %i.zz, 0
  br i1 %.not.i1311, label %bb.sa, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uu) #7
  br label %bb.sa

bb.sa:                                            ; preds = %lean_inc.exit1191, %bb.rx, %bb.ry, %bb.rz
  %i.aac = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store ptr %i.zs, ptr %i.aad, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.sb:                                            ; preds = %lean_obj_tag.exit1575
  %i.aae = load i32, ptr %i.uf, align 4, !tbaa !10 ; 3 uses
  %i.aaf = icmp sgt i32 %i.aae, 1
  br i1 %i.aaf, label %bb.sc, label %bb.sd, !prof !11

bb.sc:                                            ; preds = %bb.sb
  %i.aag = add nsw i32 %i.aae, -1
  store i32 %i.aag, ptr %i.uf, align 4, !tbaa !10
  br label %lean_dec_ref.exit1344

bb.sd:                                            ; preds = %bb.sb
  %.not.i1343 = icmp eq i32 %i.aae, 0
  br i1 %.not.i1343, label %lean_dec_ref.exit1344, label %bb.se

bb.se:                                            ; preds = %bb.sd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uf) #7
  br label %lean_dec_ref.exit1344

lean_dec_ref.exit1344:                            ; preds = %bb.sc, %bb.sd, %bb.se
  %i.aah = and i64 %.pre, 1
  %.not.i1111 = icmp eq i64 %i.aah, 0
  br i1 %.not.i1111, label %bb.sf, label %bb.cy

bb.sf:                                            ; preds = %lean_dec_ref.exit1344
  %i.aai = load i32, ptr %i.sa, align 512, !tbaa !10 ; 3 uses
  %i.aaj = icmp sgt i32 %i.aai, 1
  br i1 %i.aaj, label %bb.sg, label %bb.sh, !prof !11

bb.sg:                                            ; preds = %bb.sf
  %i.aak = add nsw i32 %i.aai, -1
  store i32 %i.aak, ptr %i.sa, align 512, !tbaa !10
  br label %bb.cy

bb.sh:                                            ; preds = %bb.sf
  %.not.i1313 = icmp eq i32 %i.aai, 0
  br i1 %.not.i1313, label %bb.cy, label %bb.si

bb.si:                                            ; preds = %bb.sh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %bb.cy

bb.sj:                                            ; preds = %lean_dec.exit1150
  %i.aal = and i64 %.pre, 1
  %.not.i1109 = icmp eq i64 %i.aal, 0
  br i1 %.not.i1109, label %bb.sk, label %lean_dec.exit1110

bb.sk:                                            ; preds = %bb.sj
  %i.aam = load i32, ptr %i.sa, align 4, !tbaa !10 ; 3 uses
  %i.aan = icmp sgt i32 %i.aam, 1
  br i1 %i.aan, label %bb.sl, label %bb.sm, !prof !11

bb.sl:                                            ; preds = %bb.sk
  %i.aao = add nsw i32 %i.aam, -1
  store i32 %i.aao, ptr %i.sa, align 4, !tbaa !10
  br label %lean_dec.exit1110

bb.sm:                                            ; preds = %bb.sk
  %.not.i1315 = icmp eq i32 %i.aam, 0
  br i1 %.not.i1315, label %lean_dec.exit1110, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sa) #7
  br label %lean_dec.exit1110

lean_dec.exit1110:                                ; preds = %bb.sn, %bb.sm, %bb.sl, %bb.sj
  %i.aap = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.aaq = icmp sgt i32 %i.aap, 1
  br i1 %i.aaq, label %bb.so, label %bb.sp, !prof !11

bb.so:                                            ; preds = %lean_dec.exit1110
  %i.aar = add nsw i32 %i.aap, -1
  store i32 %i.aar, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit1342

bb.sp:                                            ; preds = %lean_dec.exit1110
  %.not.i1341 = icmp eq i32 %i.aap, 0
  br i1 %.not.i1341, label %lean_dec_ref.exit1342, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit1342

lean_dec_ref.exit1342:                            ; preds = %bb.so, %bb.sp, %bb.sq
  br i1 %i.sb, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %lean_dec_ref.exit1342
  %i.aas = getelementptr inbounds nuw i8, ptr %.0941, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aas, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.ss:                                            ; preds = %lean_dec_ref.exit1342
  %i.aat = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.aau, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.st:                                            ; preds = %lean_obj_tag.exit1556
  %i.aav = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.aaw = icmp sgt i32 %i.aav, 1
  br i1 %i.aaw, label %bb.su, label %bb.sv, !prof !11

bb.su:                                            ; preds = %bb.st
  %i.aax = add nsw i32 %i.aav, -1
  store i32 %i.aax, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit1340

bb.sv:                                            ; preds = %bb.st
  %.not.i1339 = icmp eq i32 %i.aav, 0
  br i1 %.not.i1339, label %lean_dec_ref.exit1340, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit1340

lean_dec_ref.exit1340:                            ; preds = %bb.su, %bb.sv, %bb.sw
  %i.aay = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !13 ; 5 uses
  %.val1395 = load i32, ptr %i.rr, align 8, !tbaa !10
  %i.aba = icmp eq i32 %.val1395, 1
  br i1 %i.aba, label %lean_dec.exit1180, label %bb.sx

bb.sx:                                            ; preds = %lean_dec_ref.exit1340
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = and i64 %i.abb, 1
  %.not.i1188 = icmp eq i64 %i.abc, 0
  br i1 %.not.i1188, label %bb.sy, label %lean_inc.exit1189

bb.sy:                                            ; preds = %bb.sx
  %.val.i.i1614 = load i32, ptr %i.aaz, align 4, !tbaa !10 ; 3 uses
  %i.abd = icmp sgt i32 %.val.i.i1614, 0
  br i1 %i.abd, label %bb.sz, label %bb.ta, !prof !11

bb.sz:                                            ; preds = %bb.sy
  %i.abe = add nuw i32 %.val.i.i1614, 1
  store i32 %i.abe, ptr %i.aaz, align 4, !tbaa !10
  br label %lean_inc.exit1189

bb.ta:                                            ; preds = %bb.sy
  %.not.i.i1615 = icmp eq i32 %.val.i.i1614, 0
  br i1 %.not.i.i1615, label %lean_inc.exit1189, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.abf = atomicrmw sub ptr %i.aaz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1189

lean_inc.exit1189:                                ; preds = %bb.tb, %bb.ta, %bb.sz, %bb.sx
  br i1 %.not.i1553, label %bb.tc, label %bb.tg

bb.tc:                                            ; preds = %lean_inc.exit1189
  %i.abg = load i32, ptr %i.rr, align 8, !tbaa !10 ; 3 uses
  %i.abh = icmp sgt i32 %i.abg, 1
  br i1 %i.abh, label %bb.td, label %bb.te, !prof !11

bb.td:                                            ; preds = %bb.tc
  %i.abi = add nsw i32 %i.abg, -1
  store i32 %i.abi, ptr %i.rr, align 8, !tbaa !10
  br label %bb.tg

bb.te:                                            ; preds = %bb.tc
  %.not.i1317 = icmp eq i32 %i.abg, 0
  br i1 %.not.i1317, label %bb.tg, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rr) #7
  br label %bb.tg

bb.tg:                                            ; preds = %lean_inc.exit1189, %bb.td, %bb.te, %bb.tf
  %i.abj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  store ptr %i.aaz, ptr %i.abk, align 8, !tbaa !13
  br label %lean_dec.exit1180

bb.th:                                            ; preds = %lean_dec.exit1152
  %i.abl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !13 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !14
  %i.abp = icmp eq i8 %i.abo, 0
  br i1 %i.abp, label %bb.ti, label %bb.tm

bb.ti:                                            ; preds = %bb.th
  %i.abq = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.abr = icmp sgt i32 %i.abq, 1
  br i1 %i.abr, label %bb.tj, label %bb.tk, !prof !11

bb.tj:                                            ; preds = %bb.ti
  %i.abs = add nsw i32 %i.abq, -1
  store i32 %i.abs, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit1134

bb.tk:                                            ; preds = %bb.ti
  %.not.i1337 = icmp eq i32 %i.abq, 0
  br i1 %.not.i1337, label %lean_dec.exit1134, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit1134

bb.tm:                                            ; preds = %bb.th
  %i.abt = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !13
  %i.abv = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus___closed__10_once seq_cst, align 4, !tbaa !18
  %i.abw = icmp eq i32 %i.abv, 1
  br i1 %i.abw, label %bb.tn, label %bb.to, !prof !11

bb.tn:                                            ; preds = %bb.tm
  %i.abx = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus___closed__10, align 8, !tbaa !13
  br label %lean_obj_once.exit1618

bb.to:                                            ; preds = %bb.tm
  %i.aby = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus___closed__10, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus___closed__10_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus___closed__10) #7
  br label %lean_obj_once.exit1618

lean_obj_once.exit1618:                           ; preds = %bb.tn, %bb.to
  %.0.i1617 = phi ptr [ %i.abx, %bb.tn ], [ %i.aby, %bb.to ]
  %i.abz = tail call zeroext i8 @l___private_Lean_Util_Trace_0__Lean_checkTraceOption_go(ptr noundef %i.abu, ptr noundef nonnull %i.abm, ptr noundef %.0.i1617) #7
  %i.aca = icmp eq i8 %i.abz, 0
  br i1 %i.aca, label %bb.tp, label %bb.tt

bb.tp:                                            ; preds = %lean_obj_once.exit1618
  %i.acb = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.acc = icmp sgt i32 %i.acb, 1
  br i1 %i.acc, label %bb.tq, label %bb.tr, !prof !11

bb.tq:                                            ; preds = %bb.tp
  %i.acd = add nsw i32 %i.acb, -1
  store i32 %i.acd, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit1134

bb.tr:                                            ; preds = %bb.tp
  %.not.i1335 = icmp eq i32 %i.acb, 0
end_hunk_5
begin_hunk_6_@l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg:bb.a
  store i32 %i.jh, ptr %.1.i1073, align 4, !tbaa !10
  br label %lean_inc.exit650

bb.gs:                                            ; preds = %bb.gq
  %.not.i.i940 = icmp eq i32 %.val.i.i939, 0
  br i1 %.not.i.i940, label %lean_inc.exit650, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ji = atomicrmw sub ptr %.1.i1073, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit650

lean_inc.exit650:                                 ; preds = %bb.gt, %bb.gs, %bb.gr, %lean_inc.exit652
  %i.jj = tail call zeroext i8 @l_List_elem___redArg(ptr noundef %.0.i935, ptr noundef %.1.i1073, ptr noundef %0) #7
  %i.jk = icmp eq i8 %i.jj, 0
  br i1 %i.jk, label %bb.gu, label %bb.uq

bb.gu:                                            ; preds = %lean_inc.exit650
  %i.jl = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.fy) #7 ; 20 uses
  %i.jm = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.ga) #7 ; 20 uses
  %i.jn = tail call ptr @l_Lean_Meta_Grind_isEqv___redArg(ptr noundef %i.jl, ptr noundef %i.jm, ptr noundef %5) #7 ; 13 uses
  %i.jo = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jp = and i64 %i.jo, 1
  %.not.i942 = icmp eq i64 %i.jp, 0               ; 2 uses
  br i1 %.not.i942, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.jq = lshr i64 %i.jo, 1
  %i.jr = trunc i64 %i.jq to i32
  br label %lean_obj_tag.exit945

bb.gw:                                            ; preds = %bb.gu
  %i.js = getelementptr i8, ptr %i.jn, i64 4
  %.val.i944 = load i32, ptr %i.js, align 4
  %i.jt = lshr i32 %.val.i944, 24
  br label %lean_obj_tag.exit945

lean_obj_tag.exit945:                             ; preds = %bb.gv, %bb.gw
  %.0.i943 = phi i32 [ %i.jr, %bb.gv ], [ %i.jt, %bb.gw ]
  %i.ju = icmp eq i32 %.0.i943, 0
  br i1 %i.ju, label %bb.gx, label %bb.sz

bb.gx:                                            ; preds = %lean_obj_tag.exit945
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !13 ; 29 uses
  %i.jx = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.jy = and i64 %i.jx, 1
  %.not.i647 = icmp eq i64 %i.jy, 0               ; 9 uses
  br i1 %.not.i647, label %bb.gy, label %lean_inc.exit648

bb.gy:                                            ; preds = %bb.gx
  %.val.i.i946 = load i32, ptr %i.jw, align 4, !tbaa !10 ; 3 uses
  %i.jz = icmp sgt i32 %.val.i.i946, 0
  br i1 %i.jz, label %bb.gz, label %bb.ha, !prof !11

bb.gz:                                            ; preds = %bb.gy
  %i.ka = add nuw i32 %.val.i.i946, 1
  store i32 %i.ka, ptr %i.jw, align 4, !tbaa !10
  br label %lean_inc.exit648

bb.ha:                                            ; preds = %bb.gy
  %.not.i.i947 = icmp eq i32 %.val.i.i946, 0
  br i1 %.not.i.i947, label %lean_inc.exit648, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.kb = atomicrmw sub ptr %i.jw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit648

lean_inc.exit648:                                 ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gx
  %.val.i949 = load i32, ptr %i.jn, align 8, !tbaa !10 ; 4 uses
  %i.kc = icmp eq i32 %.val.i949, 1
  br i1 %i.kc, label %.preheader.i951, label %bb.hg

.preheader.i951:                                  ; preds = %lean_inc.exit648
  %i.kd = load ptr, ptr %i.jv, align 8, !tbaa !13 ; 4 uses
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = and i64 %i.ke, 1
  %.not.i.i953 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i953, label %bb.hc, label %lean_dec.exit.i954

bb.hc:                                            ; preds = %.preheader.i951
  %i.kg = load i32, ptr %i.kd, align 4, !tbaa !10 ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 1
  br i1 %i.kh, label %bb.hd, label %bb.he, !prof !11

bb.hd:                                            ; preds = %bb.hc
  %i.ki = add nsw i32 %i.kg, -1
  store i32 %i.ki, ptr %i.kd, align 4, !tbaa !10
  br label %lean_dec.exit.i954

bb.he:                                            ; preds = %bb.hc
  %.not.i7.i957 = icmp eq i32 %i.kg, 0
  br i1 %.not.i7.i957, label %lean_dec.exit.i954, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kd) #7
  br label %lean_dec.exit.i954

lean_dec.exit.i954:                               ; preds = %bb.hf, %bb.he, %bb.hd, %.preheader.i951
  tail call void @lean_free_object(ptr noundef nonnull %i.jn) #7
  br label %lean_dec_ref_known.exit958

bb.hg:                                            ; preds = %lean_inc.exit648
  %i.kj = icmp sgt i32 %.val.i949, 1
  br i1 %i.kj, label %bb.hh, label %bb.hi, !prof !11

bb.hh:                                            ; preds = %bb.hg
  %i.kk = add nsw i32 %.val.i949, -1
  store i32 %i.kk, ptr %i.jn, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit958

bb.hi:                                            ; preds = %bb.hg
  %.not.i8.i950 = icmp eq i32 %.val.i949, 0
  br i1 %.not.i8.i950, label %lean_dec_ref_known.exit958, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jn) #7
  br label %lean_dec_ref_known.exit958

lean_dec_ref_known.exit958:                       ; preds = %lean_dec.exit.i954, %bb.hh, %bb.hi, %bb.hj
  %i.kl = and i64 %i.jx, 510
  %i.km = icmp eq i64 %i.kl, 0
  br i1 %i.km, label %bb.hk, label %bb.sg

bb.hk:                                            ; preds = %lean_dec_ref_known.exit958
  %i.kn = load ptr, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ko = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !14
  br i1 %.not.i649, label %bb.hl, label %lean_inc.exit646

bb.hl:                                            ; preds = %bb.hk
  %.val.i.i959 = load i32, ptr %.1.i1073, align 4, !tbaa !10 ; 3 uses
  %i.kr = icmp sgt i32 %.val.i.i959, 0
  br i1 %i.kr, label %bb.hm, label %bb.hn, !prof !11

bb.hm:                                            ; preds = %bb.hl
  %i.ks = add nuw i32 %.val.i.i959, 1
  store i32 %i.ks, ptr %.1.i1073, align 4, !tbaa !10
  br label %lean_inc.exit646

bb.hn:                                            ; preds = %bb.hl
  %.not.i.i960 = icmp eq i32 %.val.i.i959, 0
  br i1 %.not.i.i960, label %lean_inc.exit646, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.kt = atomicrmw sub ptr %.1.i1073, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit646

lean_inc.exit646:                                 ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk
  %i.ku = ptrtoint ptr %i.ga to i64
  %i.kv = and i64 %i.ku, 1
  %.not.i643 = icmp eq i64 %i.kv, 0               ; 6 uses
  br i1 %.not.i643, label %bb.hp, label %lean_inc.exit644

bb.hp:                                            ; preds = %lean_inc.exit646
  %.val.i.i962 = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.kw = icmp sgt i32 %.val.i.i962, 0
  br i1 %i.kw, label %bb.hq, label %bb.hr, !prof !11

bb.hq:                                            ; preds = %bb.hp
  %i.kx = add nuw i32 %.val.i.i962, 1
  store i32 %i.kx, ptr %i.ga, align 4, !tbaa !10
  br label %lean_inc.exit644

bb.hr:                                            ; preds = %bb.hp
  %.not.i.i963 = icmp eq i32 %.val.i.i962, 0
  br i1 %.not.i.i963, label %lean_inc.exit644, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ky = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit644

lean_inc.exit644:                                 ; preds = %bb.hs, %bb.hr, %bb.hq, %lean_inc.exit646
  %i.kz = ptrtoint ptr %i.fy to i64
  %i.la = and i64 %i.kz, 1
  %.not.i641 = icmp eq i64 %i.la, 0               ; 6 uses
  br i1 %.not.i641, label %bb.ht, label %lean_inc.exit642

bb.ht:                                            ; preds = %lean_inc.exit644
  %.val.i.i965 = load i32, ptr %i.fy, align 4, !tbaa !10 ; 3 uses
  %i.lb = icmp sgt i32 %.val.i.i965, 0
  br i1 %i.lb, label %bb.hu, label %bb.hv, !prof !11

bb.hu:                                            ; preds = %bb.ht
  %i.lc = add nuw i32 %.val.i.i965, 1
  store i32 %i.lc, ptr %i.fy, align 4, !tbaa !10
  br label %lean_inc.exit642

bb.hv:                                            ; preds = %bb.ht
  %.not.i.i966 = icmp eq i32 %.val.i.i965, 0
  br i1 %.not.i.i966, label %lean_inc.exit642, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.ld = atomicrmw sub ptr %i.fy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit642

lean_inc.exit642:                                 ; preds = %bb.hw, %bb.hv, %bb.hu, %lean_inc.exit644
  br i1 %.not.i647, label %bb.hx, label %lean_inc.exit640

bb.hx:                                            ; preds = %lean_inc.exit642
  %.val.i.i968 = load i32, ptr %i.jw, align 512, !tbaa !10 ; 3 uses
  %i.le = icmp sgt i32 %.val.i.i968, 0
  br i1 %i.le, label %bb.hy, label %bb.hz, !prof !11

bb.hy:                                            ; preds = %bb.hx
  %i.lf = add nuw i32 %.val.i.i968, 1
  store i32 %i.lf, ptr %i.jw, align 512, !tbaa !10
  br label %lean_inc.exit640

bb.hz:                                            ; preds = %bb.hx
  %.not.i.i969 = icmp eq i32 %.val.i.i968, 0
  br i1 %.not.i.i969, label %lean_inc.exit640, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.lg = atomicrmw sub ptr %i.jw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit640

lean_inc.exit640:                                 ; preds = %bb.ia, %bb.hz, %bb.hy, %lean_inc.exit642
  %i.lh = tail call ptr @lean_alloc_object(i64 noundef 64) #7 ; 14 uses
  store i32 1, ptr %i.lh, align 4, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = and i32 %i.lj, 65535
  %i.ll = or disjoint i32 %i.lk, -184549376
  store i32 %i.ll, ptr %i.li, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___lam__1___boxed, ptr %i.lm, align 8, !tbaa !13
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i16 17, ptr %i.ln, align 8, !tbaa !23
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 18
  store i16 5, ptr %i.lo, align 2, !tbaa !23
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  store ptr %i.jw, ptr %i.lp, align 8, !tbaa !13
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  store ptr inttoptr (i64 3 to ptr), ptr %i.lq, align 8, !tbaa !13
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  store ptr %i.fy, ptr %i.lr, align 8, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  store ptr %i.ga, ptr %i.ls, align 8, !tbaa !13
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  store ptr %.1.i1073, ptr %i.lt, align 8, !tbaa !13
  %i.lu = icmp eq i8 %i.kq, 0
  br i1 %i.lu, label %bb.ib, label %bb.iy

bb.ib:                                            ; preds = %lean_inc.exit640
  br i1 %.not.i647, label %bb.ic, label %lean_dec.exit607

bb.ic:                                            ; preds = %bb.ib
  %i.lv = load i32, ptr %i.jw, align 512, !tbaa !10 ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, 1
  br i1 %i.lw, label %bb.id, label %bb.ie, !prof !11

bb.id:                                            ; preds = %bb.ic
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %i.jw, align 512, !tbaa !10
  br label %lean_dec.exit607

bb.ie:                                            ; preds = %bb.ic
  %.not.i702 = icmp eq i32 %i.lv, 0
  br i1 %.not.i702, label %lean_dec.exit607, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jw) #7
  br label %lean_dec.exit607

lean_dec.exit607:                                 ; preds = %bb.if, %bb.ie, %bb.id, %bb.ib
  %i.ly = load i32, ptr %i.jm, align 4, !tbaa !10 ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.ig, label %bb.ih, !prof !11

bb.ig:                                            ; preds = %lean_dec.exit607
  %i.ma = add nsw i32 %i.ly, -1
  store i32 %i.ma, ptr %i.jm, align 4, !tbaa !10
  br label %lean_dec_ref.exit825

bb.ih:                                            ; preds = %lean_dec.exit607
  %.not.i824 = icmp eq i32 %i.ly, 0
  br i1 %.not.i824, label %lean_dec_ref.exit825, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jm) #7
  br label %lean_dec_ref.exit825

lean_dec_ref.exit825:                             ; preds = %bb.ig, %bb.ih, %bb.ii
  %i.mb = load i32, ptr %i.jl, align 4, !tbaa !10 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.ij, label %bb.ik, !prof !11

bb.ij:                                            ; preds = %lean_dec_ref.exit825
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.jl, align 4, !tbaa !10
  br label %lean_dec_ref.exit823

bb.ik:                                            ; preds = %lean_dec_ref.exit825
  %.not.i822 = icmp eq i32 %i.mb, 0
  br i1 %.not.i822, label %lean_dec_ref.exit823, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jl) #7
  br label %lean_dec_ref.exit823

lean_dec_ref.exit823:                             ; preds = %bb.ij, %bb.ik, %bb.il
  br i1 %.not.i649, label %bb.im, label %lean_dec.exit605

bb.im:                                            ; preds = %lean_dec_ref.exit823
  %i.me = load i32, ptr %.1.i1073, align 4, !tbaa !10 ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 1
  br i1 %i.mf, label %bb.in, label %bb.io, !prof !11

bb.in:                                            ; preds = %bb.im
  %i.mg = add nsw i32 %i.me, -1
  store i32 %i.mg, ptr %.1.i1073, align 4, !tbaa !10
  br label %lean_dec.exit605

bb.io:                                            ; preds = %bb.im
  %.not.i704 = icmp eq i32 %i.me, 0
  br i1 %.not.i704, label %lean_dec.exit605, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i1073) #7
  br label %lean_dec.exit605

lean_dec.exit605:                                 ; preds = %bb.ip, %bb.io, %bb.in, %lean_dec_ref.exit823
  br i1 %.not.i643, label %bb.iq, label %lean_dec.exit603

bb.iq:                                            ; preds = %lean_dec.exit605
  %i.mh = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 1
  br i1 %i.mi, label %bb.ir, label %bb.is, !prof !11

bb.ir:                                            ; preds = %bb.iq
  %i.mj = add nsw i32 %i.mh, -1
  store i32 %i.mj, ptr %i.ga, align 4, !tbaa !10
  br label %lean_dec.exit603

bb.is:                                            ; preds = %bb.iq
  %.not.i706 = icmp eq i32 %i.mh, 0
  br i1 %.not.i706, label %lean_dec.exit603, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #7
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.it, %bb.is, %bb.ir, %lean_dec.exit605
  br i1 %.not.i641, label %bb.iu, label %lean_dec.exit601

bb.iu:                                            ; preds = %lean_dec.exit603
  %i.mk = load i32, ptr %i.fy, align 4, !tbaa !10 ; 3 uses
  %i.ml = icmp sgt i32 %i.mk, 1
  br i1 %i.ml, label %bb.iv, label %bb.iw, !prof !11

bb.iv:                                            ; preds = %bb.iu
  %i.mm = add nsw i32 %i.mk, -1
  store i32 %i.mm, ptr %i.fy, align 4, !tbaa !10
  br label %lean_dec.exit601

bb.iw:                                            ; preds = %bb.iu
  %.not.i708 = icmp eq i32 %i.mk, 0
  br i1 %.not.i708, label %lean_dec.exit601, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fy) #7
  br label %lean_dec.exit601

bb.iy:                                            ; preds = %lean_inc.exit640
  %i.mn = load atomic i32, ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__2_once seq_cst, align 4, !tbaa !18
  %i.mo = icmp eq i32 %i.mn, 1
  br i1 %i.mo, label %bb.iz, label %bb.ja, !prof !11

bb.iz:                                            ; preds = %bb.iy
  %i.mp = load ptr, ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit972

bb.ja:                                            ; preds = %bb.iy
  %i.mq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__2, ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__2_once, ptr noundef nonnull @_init_l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__2) #7
  br label %lean_obj_once.exit972

lean_obj_once.exit972:                            ; preds = %bb.iz, %bb.ja
  %.0.i971 = phi ptr [ %i.mp, %bb.iz ], [ %i.mq, %bb.ja ]
  %i.mr = tail call zeroext i8 @l___private_Lean_Util_Trace_0__Lean_checkTraceOption_go(ptr noundef %i.ko, ptr noundef nonnull %i.kn, ptr noundef %.0.i971) #7
  %i.ms = icmp eq i8 %i.mr, 0
  br i1 %i.ms, label %bb.jb, label %bb.jy

bb.jb:                                            ; preds = %lean_obj_once.exit972
  br i1 %.not.i647, label %bb.jc, label %lean_dec.exit599

bb.jc:                                            ; preds = %bb.jb
  %i.mt = load i32, ptr %i.jw, align 512, !tbaa !10 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.jd, label %bb.je, !prof !11

bb.jd:                                            ; preds = %bb.jc
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.jw, align 512, !tbaa !10
  br label %lean_dec.exit599

bb.je:                                            ; preds = %bb.jc
  %.not.i710 = icmp eq i32 %i.mt, 0
  br i1 %.not.i710, label %lean_dec.exit599, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jw) #7
  br label %lean_dec.exit599

lean_dec.exit599:                                 ; preds = %bb.jf, %bb.je, %bb.jd, %bb.jb
  %i.mw = load i32, ptr %i.jm, align 4, !tbaa !10 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.jg, label %bb.jh, !prof !11

bb.jg:                                            ; preds = %lean_dec.exit599
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %i.jm, align 4, !tbaa !10
  br label %lean_dec_ref.exit821

bb.jh:                                            ; preds = %lean_dec.exit599
  %.not.i820 = icmp eq i32 %i.mw, 0
  br i1 %.not.i820, label %lean_dec_ref.exit821, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jm) #7
  br label %lean_dec_ref.exit821

lean_dec_ref.exit821:                             ; preds = %bb.jg, %bb.jh, %bb.ji
  %i.mz = load i32, ptr %i.jl, align 4, !tbaa !10 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.jj, label %bb.jk, !prof !11

bb.jj:                                            ; preds = %lean_dec_ref.exit821
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.jl, align 4, !tbaa !10
  br label %lean_dec_ref.exit819

bb.jk:                                            ; preds = %lean_dec_ref.exit821
  %.not.i818 = icmp eq i32 %i.mz, 0
  br i1 %.not.i818, label %lean_dec_ref.exit819, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jl) #7
  br label %lean_dec_ref.exit819

lean_dec_ref.exit819:                             ; preds = %bb.jj, %bb.jk, %bb.jl
  br i1 %.not.i649, label %bb.jm, label %lean_dec.exit597

bb.jm:                                            ; preds = %lean_dec_ref.exit819
  %i.nc = load i32, ptr %.1.i1073, align 4, !tbaa !10 ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.jn, label %bb.jo, !prof !11

bb.jn:                                            ; preds = %bb.jm
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %.1.i1073, align 4, !tbaa !10
  br label %lean_dec.exit597

bb.jo:                                            ; preds = %bb.jm
  %.not.i712 = icmp eq i32 %i.nc, 0
  br i1 %.not.i712, label %lean_dec.exit597, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i1073) #7
  br label %lean_dec.exit597

lean_dec.exit597:                                 ; preds = %bb.jp, %bb.jo, %bb.jn, %lean_dec_ref.exit819
  br i1 %.not.i643, label %bb.jq, label %lean_dec.exit595

bb.jq:                                            ; preds = %lean_dec.exit597
  %i.nf = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.ng = icmp sgt i32 %i.nf, 1
  br i1 %i.ng, label %bb.jr, label %bb.js, !prof !11

bb.jr:                                            ; preds = %bb.jq
  %i.nh = add nsw i32 %i.nf, -1
  store i32 %i.nh, ptr %i.ga, align 4, !tbaa !10
  br label %lean_dec.exit595

bb.js:                                            ; preds = %bb.jq
  %.not.i714 = icmp eq i32 %i.nf, 0
  br i1 %.not.i714, label %lean_dec.exit595, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #7
  br label %lean_dec.exit595

lean_dec.exit595:                                 ; preds = %bb.jt, %bb.js, %bb.jr, %lean_dec.exit597
  br i1 %.not.i641, label %bb.ju, label %lean_dec.exit601

bb.ju:                                            ; preds = %lean_dec.exit595
  %i.ni = load i32, ptr %i.fy, align 4, !tbaa !10 ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 1
  br i1 %i.nj, label %bb.jv, label %bb.jw, !prof !11

bb.jv:                                            ; preds = %bb.ju
  %i.nk = add nsw i32 %i.ni, -1
  store i32 %i.nk, ptr %i.fy, align 4, !tbaa !10
  br label %lean_dec.exit601

bb.jw:                                            ; preds = %bb.ju
  %.not.i716 = icmp eq i32 %i.ni, 0
  br i1 %.not.i716, label %lean_dec.exit601, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fy) #7
  br label %lean_dec.exit601

bb.jy:                                            ; preds = %lean_obj_once.exit972
  %i.nl = load i32, ptr %i.lh, align 8, !tbaa !10 ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, 1
  br i1 %i.nm, label %bb.jz, label %bb.ka, !prof !11

bb.jz:                                            ; preds = %bb.jy
  %i.nn = add nsw i32 %i.nl, -1
  store i32 %i.nn, ptr %i.lh, align 8, !tbaa !10
  br label %lean_dec_ref.exit817

bb.ka:                                            ; preds = %bb.jy
  %.not.i816 = icmp eq i32 %i.nl, 0
  br i1 %.not.i816, label %lean_dec_ref.exit817, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lh) #7
  br label %lean_dec_ref.exit817

lean_dec_ref.exit817:                             ; preds = %bb.jz, %bb.ka, %bb.kb
  %i.no = tail call ptr @l_Lean_Meta_Grind_updateLastTag(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) #7 ; 13 uses
  %i.np = ptrtoint ptr %i.no to i64               ; 2 uses
  %i.nq = and i64 %i.np, 1
  %.not.i973 = icmp eq i64 %i.nq, 0               ; 2 uses
  br i1 %.not.i973, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %lean_dec_ref.exit817
  %i.nr = lshr i64 %i.np, 1
  %i.ns = trunc i64 %i.nr to i32
  br label %lean_obj_tag.exit976

bb.kd:                                            ; preds = %lean_dec_ref.exit817
  %i.nt = getelementptr i8, ptr %i.no, i64 4
  %.val.i975 = load i32, ptr %i.nt, align 4
  %i.nu = lshr i32 %.val.i975, 24
  br label %lean_obj_tag.exit976

lean_obj_tag.exit976:                             ; preds = %bb.kc, %bb.kd
  %.0.i974 = phi i32 [ %i.ns, %bb.kc ], [ %i.nu, %bb.kd ]
  %i.nv = icmp eq i32 %.0.i974, 0
  br i1 %i.nv, label %bb.ke, label %bb.ql

bb.ke:                                            ; preds = %lean_obj_tag.exit976
  %.val.i977 = load i32, ptr %i.no, align 4, !tbaa !10 ; 4 uses
  %i.nw = icmp eq i32 %.val.i977, 1
  br i1 %i.nw, label %.preheader.i979, label %bb.kj

.preheader.i979:                                  ; preds = %bb.ke
  %i.nx = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !13 ; 4 uses
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = and i64 %i.nz, 1
  %.not.i.i981 = icmp eq i64 %i.oa, 0
  br i1 %.not.i.i981, label %bb.kf, label %lean_dec.exit.i982

bb.kf:                                            ; preds = %.preheader.i979
  %i.ob = load i32, ptr %i.ny, align 4, !tbaa !10 ; 3 uses
  %i.oc = icmp sgt i32 %i.ob, 1
  br i1 %i.oc, label %bb.kg, label %bb.kh, !prof !11

bb.kg:                                            ; preds = %bb.kf
  %i.od = add nsw i32 %i.ob, -1
  store i32 %i.od, ptr %i.ny, align 4, !tbaa !10
  br label %lean_dec.exit.i982

bb.kh:                                            ; preds = %bb.kf
  %.not.i7.i985 = icmp eq i32 %i.ob, 0
  br i1 %.not.i7.i985, label %lean_dec.exit.i982, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ny) #7
  br label %lean_dec.exit.i982

lean_dec.exit.i982:                               ; preds = %bb.ki, %bb.kh, %bb.kg, %.preheader.i979
  tail call void @lean_free_object(ptr noundef nonnull %i.no) #7
  br label %lean_dec_ref_known.exit986

bb.kj:                                            ; preds = %bb.ke
  %i.oe = icmp sgt i32 %.val.i977, 1
  br i1 %i.oe, label %bb.kk, label %bb.kl, !prof !11

bb.kk:                                            ; preds = %bb.kj
  %i.of = add nsw i32 %.val.i977, -1
  store i32 %i.of, ptr %i.no, align 4, !tbaa !10
  br label %lean_dec_ref_known.exit986

bb.kl:                                            ; preds = %bb.kj
  %.not.i8.i978 = icmp eq i32 %.val.i977, 0
  br i1 %.not.i8.i978, label %lean_dec_ref_known.exit986, label %bb.km

bb.km:                                            ; preds = %bb.kl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.no) #7
end_hunk_6
begin_hunk_7_@l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg:bb.a
  br i1 %i.rv, label %bb.mc, label %lean_alloc_ctor.exit1030

bb.mc:                                            ; preds = %lean_obj_once.exit1029
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit1030:                         ; preds = %lean_obj_once.exit1029
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i32 1, ptr %i.ru, align 4, !tbaa !10
  store i32 117571608, ptr %i.rw, align 4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store ptr %i.rl, ptr %i.rx, align 8, !tbaa !13
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  store ptr %.0.i1028, ptr %i.ry, align 8, !tbaa !13
  %i.rz = tail call ptr @l_Lean_MessageData_ofExpr(ptr noundef %i.jm) #7
  tail call void @lean_inc_heartbeat() #7
  %i.sa = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %bb.md, label %lean_alloc_ctor.exit1031

bb.md:                                            ; preds = %lean_alloc_ctor.exit1030
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit1031:                         ; preds = %lean_alloc_ctor.exit1030
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store i32 1, ptr %i.sa, align 4, !tbaa !10
  store i32 117571608, ptr %i.sc, align 4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  store ptr %i.ru, ptr %i.sd, align 8, !tbaa !13
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  store ptr %i.rz, ptr %i.se, align 8, !tbaa !13
  %i.sf = load atomic i32, ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__14_once seq_cst, align 4, !tbaa !18
  %i.sg = icmp eq i32 %i.sf, 1
  br i1 %i.sg, label %bb.me, label %bb.mf, !prof !11

bb.me:                                            ; preds = %lean_alloc_ctor.exit1031
  %i.sh = load ptr, ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__14, align 8, !tbaa !13
  br label %lean_obj_once.exit1033

bb.mf:                                            ; preds = %lean_alloc_ctor.exit1031
  %i.si = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__14, ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__14_once, ptr noundef nonnull @_init_l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__14) #7
  br label %lean_obj_once.exit1033

lean_obj_once.exit1033:                           ; preds = %bb.me, %bb.mf
  %.0.i1032 = phi ptr [ %i.sh, %bb.me ], [ %i.si, %bb.mf ]
  tail call void @lean_inc_heartbeat() #7
  %i.sj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.sk = icmp eq ptr %i.sj, null
  br i1 %i.sk, label %bb.mg, label %lean_alloc_ctor.exit1034

bb.mg:                                            ; preds = %lean_obj_once.exit1033
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit1034:                         ; preds = %lean_obj_once.exit1033
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  store i32 1, ptr %i.sj, align 4, !tbaa !10
  store i32 117571608, ptr %i.sl, align 4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  store ptr %i.sa, ptr %i.sm, align 8, !tbaa !13
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store ptr %.0.i1032, ptr %i.sn, align 8, !tbaa !13
  %i.so = tail call ptr @l_Nat_reprFast(ptr noundef %i.op) #7
  tail call void @lean_inc_heartbeat() #7
  %i.sp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.sq = icmp eq ptr %i.sp, null
  br i1 %i.sq, label %bb.mh, label %lean_alloc_ctor.exit1035

bb.mh:                                            ; preds = %lean_alloc_ctor.exit1034
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit1035:                         ; preds = %lean_alloc_ctor.exit1034
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  store i32 1, ptr %i.sp, align 4, !tbaa !10
  store i32 50397200, ptr %i.sr, align 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store ptr %i.so, ptr %i.ss, align 8, !tbaa !13
  %i.st = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.sp) #7
  tail call void @lean_inc_heartbeat() #7
  %i.su = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %bb.mi, label %lean_alloc_ctor.exit1036

bb.mi:                                            ; preds = %lean_alloc_ctor.exit1035
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit1036:                         ; preds = %lean_alloc_ctor.exit1035
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store i32 1, ptr %i.su, align 4, !tbaa !10
  store i32 117571608, ptr %i.sw, align 4
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store ptr %i.sj, ptr %i.sx, align 8, !tbaa !13
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store ptr %i.st, ptr %i.sy, align 8, !tbaa !13
  %i.sz = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkDefaultSplitStatus_spec__1___redArg(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___closed__1_value, ptr noundef nonnull %i.su, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 13 uses
  %i.ta = ptrtoint ptr %i.sz to i64               ; 2 uses
  %i.tb = and i64 %i.ta, 1
  %.not.i1037 = icmp eq i64 %i.tb, 0              ; 2 uses
  br i1 %.not.i1037, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %lean_alloc_ctor.exit1036
  %i.tc = lshr i64 %i.ta, 1
  %i.td = trunc i64 %i.tc to i32
  br label %lean_obj_tag.exit1040

bb.mk:                                            ; preds = %lean_alloc_ctor.exit1036
  %i.te = getelementptr i8, ptr %i.sz, i64 4
  %.val.i1039 = load i32, ptr %i.te, align 4
  %i.tf = lshr i32 %.val.i1039, 24
  br label %lean_obj_tag.exit1040

lean_obj_tag.exit1040:                            ; preds = %bb.mj, %bb.mk
  %.0.i1038 = phi i32 [ %i.td, %bb.mj ], [ %i.tf, %bb.mk ]
  %i.tg = icmp eq i32 %.0.i1038, 0
  br i1 %i.tg, label %bb.ml, label %bb.nc

bb.ml:                                            ; preds = %lean_obj_tag.exit1040
  %i.th = getelementptr inbounds nuw i8, ptr %i.sz, i64 8 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !13 ; 4 uses
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = and i64 %i.tj, 1
  %.not.i635 = icmp eq i64 %i.tk, 0
  br i1 %.not.i635, label %bb.mm, label %lean_inc.exit636

bb.mm:                                            ; preds = %bb.ml
  %.val.i.i1041 = load i32, ptr %i.ti, align 4, !tbaa !10 ; 3 uses
  %i.tl = icmp sgt i32 %.val.i.i1041, 0
  br i1 %i.tl, label %bb.mn, label %bb.mo, !prof !11

bb.mn:                                            ; preds = %bb.mm
  %i.tm = add nuw i32 %.val.i.i1041, 1
  store i32 %i.tm, ptr %i.ti, align 4, !tbaa !10
  br label %lean_inc.exit636

bb.mo:                                            ; preds = %bb.mm
  %.not.i.i1042 = icmp eq i32 %.val.i.i1041, 0
  br i1 %.not.i.i1042, label %lean_inc.exit636, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.tn = atomicrmw sub ptr %i.ti, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit636

lean_inc.exit636:                                 ; preds = %bb.mp, %bb.mo, %bb.mn, %bb.ml
  %.val.i1044 = load i32, ptr %i.sz, align 8, !tbaa !10 ; 4 uses
  %i.to = icmp eq i32 %.val.i1044, 1
  br i1 %i.to, label %.preheader.i1046, label %bb.mu

.preheader.i1046:                                 ; preds = %lean_inc.exit636
  %i.tp = load ptr, ptr %i.th, align 8, !tbaa !13 ; 4 uses
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = and i64 %i.tq, 1
  %.not.i.i1048 = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i1048, label %bb.mq, label %lean_dec.exit.i1049

bb.mq:                                            ; preds = %.preheader.i1046
  %i.ts = load i32, ptr %i.tp, align 4, !tbaa !10 ; 3 uses
  %i.tt = icmp sgt i32 %i.ts, 1
  br i1 %i.tt, label %bb.mr, label %bb.ms, !prof !11

bb.mr:                                            ; preds = %bb.mq
  %i.tu = add nsw i32 %i.ts, -1
  store i32 %i.tu, ptr %i.tp, align 4, !tbaa !10
  br label %lean_dec.exit.i1049

bb.ms:                                            ; preds = %bb.mq
  %.not.i7.i1052 = icmp eq i32 %i.ts, 0
  br i1 %.not.i7.i1052, label %lean_dec.exit.i1049, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tp) #7
  br label %lean_dec.exit.i1049

lean_dec.exit.i1049:                              ; preds = %bb.mt, %bb.ms, %bb.mr, %.preheader.i1046
  tail call void @lean_free_object(ptr noundef nonnull %i.sz) #7
  br label %lean_dec_ref_known.exit1053

bb.mu:                                            ; preds = %lean_inc.exit636
  %i.tv = icmp sgt i32 %.val.i1044, 1
  br i1 %i.tv, label %bb.mv, label %bb.mw, !prof !11

bb.mv:                                            ; preds = %bb.mu
  %i.tw = add nsw i32 %.val.i1044, -1
  store i32 %i.tw, ptr %i.sz, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1053

bb.mw:                                            ; preds = %bb.mu
  %.not.i8.i1045 = icmp eq i32 %.val.i1044, 0
  br i1 %.not.i8.i1045, label %lean_dec_ref_known.exit1053, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sz) #7
  br label %lean_dec_ref_known.exit1053

lean_dec_ref_known.exit1053:                      ; preds = %lean_dec.exit.i1049, %bb.mv, %bb.mw, %bb.mx
  br i1 %.not.i647, label %bb.my, label %lean_dec.exit591

bb.my:                                            ; preds = %lean_dec_ref_known.exit1053
  %i.tx = load i32, ptr %i.jw, align 512, !tbaa !10 ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, 1
  br i1 %i.ty, label %bb.mz, label %bb.na, !prof !11

bb.mz:                                            ; preds = %bb.my
  %i.tz = add nsw i32 %i.tx, -1
  store i32 %i.tz, ptr %i.jw, align 512, !tbaa !10
  br label %lean_dec.exit591

bb.na:                                            ; preds = %bb.my
  %.not.i718 = icmp eq i32 %i.tx, 0
  br i1 %.not.i718, label %lean_dec.exit591, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jw) #7
  br label %lean_dec.exit591

lean_dec.exit591:                                 ; preds = %bb.nb, %bb.na, %bb.mz, %lean_dec_ref_known.exit1053
  %i.ua = tail call ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__0___redArg___lam__1(i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %i.fy, ptr noundef %i.ga, ptr noundef %.1.i1073, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison)
  br label %lean_dec.exit601.thread1083

bb.nc:                                            ; preds = %lean_obj_tag.exit1040
  br i1 %.not.i647, label %bb.nd, label %lean_dec.exit589

bb.nd:                                            ; preds = %bb.nc
  %i.ub = load i32, ptr %i.jw, align 4, !tbaa !10 ; 3 uses
  %i.uc = icmp sgt i32 %i.ub, 1
  br i1 %i.uc, label %bb.ne, label %bb.nf, !prof !11

bb.ne:                                            ; preds = %bb.nd
  %i.ud = add nsw i32 %i.ub, -1
  store i32 %i.ud, ptr %i.jw, align 4, !tbaa !10
  br label %lean_dec.exit589

bb.nf:                                            ; preds = %bb.nd
  %.not.i720 = icmp eq i32 %i.ub, 0
  br i1 %.not.i720, label %lean_dec.exit589, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jw) #7
  br label %lean_dec.exit589

lean_dec.exit589:                                 ; preds = %bb.ng, %bb.nf, %bb.ne, %bb.nc
  br i1 %.not.i649, label %bb.nh, label %lean_dec.exit587

bb.nh:                                            ; preds = %lean_dec.exit589
  %i.ue = load i32, ptr %.1.i1073, align 4, !tbaa !10 ; 3 uses
  %i.uf = icmp sgt i32 %i.ue, 1
  br i1 %i.uf, label %bb.ni, label %bb.nj, !prof !11

bb.ni:                                            ; preds = %bb.nh
  %i.ug = add nsw i32 %i.ue, -1
  store i32 %i.ug, ptr %.1.i1073, align 4, !tbaa !10
  br label %lean_dec.exit587

bb.nj:                                            ; preds = %bb.nh
  %.not.i722 = icmp eq i32 %i.ue, 0
  br i1 %.not.i722, label %lean_dec.exit587, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i1073) #7
  br label %lean_dec.exit587

lean_dec.exit587:                                 ; preds = %bb.nk, %bb.nj, %bb.ni, %lean_dec.exit589
  br i1 %.not.i643, label %bb.nl, label %lean_dec.exit585

bb.nl:                                            ; preds = %lean_dec.exit587
  %i.uh = load i32, ptr %i.ga, align 4, !tbaa !10 ; 3 uses
  %i.ui = icmp sgt i32 %i.uh, 1
  br i1 %i.ui, label %bb.nm, label %bb.nn, !prof !11

bb.nm:                                            ; preds = %bb.nl
  %i.uj = add nsw i32 %i.uh, -1
  store i32 %i.uj, ptr %i.ga, align 4, !tbaa !10
  br label %lean_dec.exit585

bb.nn:                                            ; preds = %bb.nl
  %.not.i724 = icmp eq i32 %i.uh, 0
  br i1 %.not.i724, label %lean_dec.exit585, label %bb.no

bb.no:                                            ; preds = %bb.nn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ga) #7
  br label %lean_dec.exit585

lean_dec.exit585:                                 ; preds = %bb.no, %bb.nn, %bb.nm, %lean_dec.exit587
  br i1 %.not.i641, label %bb.np, label %lean_dec.exit583

bb.np:                                            ; preds = %lean_dec.exit585
  %i.uk = load i32, ptr %i.fy, align 4, !tbaa !10 ; 3 uses
  %i.ul = icmp sgt i32 %i.uk, 1
  br i1 %i.ul, label %bb.nq, label %bb.nr, !prof !11

bb.nq:                                            ; preds = %bb.np
  %i.um = add nsw i32 %i.uk, -1
  store i32 %i.um, ptr %i.fy, align 4, !tbaa !10
  br label %lean_dec.exit583

bb.nr:                                            ; preds = %bb.np
  %.not.i726 = icmp eq i32 %i.uk, 0
  br i1 %.not.i726, label %lean_dec.exit583, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fy) #7
  br label %lean_dec.exit583

lean_dec.exit583:                                 ; preds = %bb.ns, %bb.nr, %bb.nq, %lean_dec.exit585
  %i.un = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.uo = icmp sgt i32 %i.un, 1
  br i1 %i.uo, label %bb.nt, label %bb.nu, !prof !11

bb.nt:                                            ; preds = %lean_dec.exit583
  %i.up = add nsw i32 %i.un, -1
  store i32 %i.up, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit815

bb.nu:                                            ; preds = %lean_dec.exit583
  %.not.i814 = icmp eq i32 %i.un, 0
  br i1 %.not.i814, label %lean_dec_ref.exit815, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec_ref.exit815

lean_dec_ref.exit815:                             ; preds = %bb.nt, %bb.nu, %bb.nv
  %i.uq = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.ur = icmp sgt i32 %i.uq, 1
  br i1 %i.ur, label %bb.nw, label %bb.nx, !prof !11

bb.nw:                                            ; preds = %lean_dec_ref.exit815
  %i.us = add nsw i32 %i.uq, -1
  store i32 %i.us, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit813

bb.nx:                                            ; preds = %lean_dec_ref.exit815
  %.not.i812 = icmp eq i32 %i.uq, 0
  br i1 %.not.i812, label %lean_dec_ref.exit813, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit813

lean_dec_ref.exit813:                             ; preds = %bb.nw, %bb.nx, %bb.ny
  %i.ut = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.uu = icmp sgt i32 %i.ut, 1
  br i1 %i.uu, label %bb.nz, label %bb.oa, !prof !11

bb.nz:                                            ; preds = %lean_dec_ref.exit813
  %i.uv = add nsw i32 %i.ut, -1
  store i32 %i.uv, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit811

bb.oa:                                            ; preds = %lean_dec_ref.exit813
  %.not.i810 = icmp eq i32 %i.ut, 0
  br i1 %.not.i810, label %lean_dec_ref.exit811, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit811

lean_dec_ref.exit811:                             ; preds = %bb.nz, %bb.oa, %bb.ob
  br i1 %.not.i651, label %bb.oc, label %lean_dec.exit581

bb.oc:                                            ; preds = %lean_dec_ref.exit811
  %i.uw = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ux = icmp sgt i32 %i.uw, 1
  br i1 %i.ux, label %bb.od, label %bb.oe, !prof !11

bb.od:                                            ; preds = %bb.oc
  %i.uy = add nsw i32 %i.uw, -1
  store i32 %i.uy, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit581

bb.oe:                                            ; preds = %bb.oc
  %.not.i728 = icmp eq i32 %i.uw, 0
  br i1 %.not.i728, label %lean_dec.exit581, label %bb.of

bb.of:                                            ; preds = %bb.oe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit581

lean_dec.exit581:                                 ; preds = %bb.of, %bb.oe, %bb.od, %lean_dec_ref.exit811
  %i.uz = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !13 ; 5 uses
  %.val846 = load i32, ptr %i.sz, align 8, !tbaa !10
  %i.vb = icmp eq i32 %.val846, 1
  br i1 %i.vb, label %lean_dec.exit601.thread, label %bb.og

bb.og:                                            ; preds = %lean_dec.exit581
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = and i64 %i.vc, 1
  %.not.i633 = icmp eq i64 %i.vd, 0
  br i1 %.not.i633, label %bb.oh, label %lean_inc.exit634

bb.oh:                                            ; preds = %bb.og
  %.val.i.i1054 = load i32, ptr %i.va, align 4, !tbaa !10 ; 3 uses
  %i.ve = icmp sgt i32 %.val.i.i1054, 0
  br i1 %i.ve, label %bb.oi, label %bb.oj, !prof !11

bb.oi:                                            ; preds = %bb.oh
  %i.vf = add nuw i32 %.val.i.i1054, 1
  store i32 %i.vf, ptr %i.va, align 4, !tbaa !10
  br label %lean_inc.exit634

bb.oj:                                            ; preds = %bb.oh
  %.not.i.i1055 = icmp eq i32 %.val.i.i1054, 0
  br i1 %.not.i.i1055, label %lean_inc.exit634, label %bb.ok

end_hunk_7
begin_hunk_8_@l_Lean_Meta_Grind_checkSplitInfoArgStatus:bb.a
bb.dn:                                            ; preds = %lean_inc_ref.exit386
  %.not.i320 = icmp eq i32 %i.fn, 0
  br i1 %.not.i320, label %lean_dec_ref.exit321, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.er) #7
  br label %lean_dec_ref.exit321

lean_dec_ref.exit321:                             ; preds = %bb.dm, %bb.dn, %bb.do
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !13 ; 7 uses
  %.val.i.i387 = load i32, ptr %i.fr, align 4, !tbaa !10 ; 3 uses
  %i.fs = icmp sgt i32 %.val.i.i387, 0
  br i1 %i.fs, label %bb.dp, label %bb.dq, !prof !11

bb.dp:                                            ; preds = %lean_dec_ref.exit321
  %i.ft = add nuw i32 %.val.i.i387, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !10
  br label %lean_inc_ref.exit389

bb.dq:                                            ; preds = %lean_dec_ref.exit321
  %.not.i.i388 = icmp eq i32 %.val.i.i387, 0
  br i1 %.not.i.i388, label %lean_inc_ref.exit389, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.fu = atomicrmw sub ptr %i.fr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit389

lean_inc_ref.exit389:                             ; preds = %bb.dp, %bb.dq, %bb.dr
  %i.fv = load i32, ptr %i.fj, align 8, !tbaa !10 ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.ds, label %bb.dt, !prof !11

bb.ds:                                            ; preds = %lean_inc_ref.exit389
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %i.fj, align 8, !tbaa !10
  br label %lean_dec_ref.exit319

bb.dt:                                            ; preds = %lean_inc_ref.exit389
  %.not.i318 = icmp eq i32 %i.fv, 0
  br i1 %.not.i318, label %lean_dec_ref.exit319, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fj) #7
  br label %lean_dec_ref.exit319

lean_dec_ref.exit319:                             ; preds = %bb.ds, %bb.dt, %bb.du
  %.val.i.i390 = load i32, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.fy = icmp sgt i32 %.val.i.i390, 0
  br i1 %i.fy, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %lean_dec_ref.exit319
  %i.fz = add nuw i32 %.val.i.i390, 1
  store i32 %i.fz, ptr %1, align 4, !tbaa !10
  br label %lean_inc_ref.exit392

bb.dw:                                            ; preds = %lean_dec_ref.exit319
  %.not.i.i391 = icmp eq i32 %.val.i.i390, 0
  br i1 %.not.i.i391, label %lean_inc_ref.exit392, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ga = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit392

lean_inc_ref.exit392:                             ; preds = %bb.dv, %bb.dw, %bb.dx
  %.val.i.i393 = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i.i393, 0
  br i1 %i.gb, label %bb.dy, label %bb.dz, !prof !11

bb.dy:                                            ; preds = %lean_inc_ref.exit392
  %i.gc = add nuw i32 %.val.i.i393, 1
  store i32 %i.gc, ptr %0, align 4, !tbaa !10
  br label %lean_inc_ref.exit395

bb.dz:                                            ; preds = %lean_inc_ref.exit392
  %.not.i.i394 = icmp eq i32 %.val.i.i393, 0
  br i1 %.not.i.i394, label %lean_inc_ref.exit395, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.gd = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit395

lean_inc_ref.exit395:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  br i1 %i.es, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %lean_inc_ref.exit395
  %i.ge = getelementptr inbounds nuw i8, ptr %.0234, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.0234, i64 16
  store ptr %1, ptr %i.gf, align 8, !tbaa !13
  store ptr %0, ptr %i.ge, align 8, !tbaa !13
  br label %bb.ee

bb.ec:                                            ; preds = %lean_inc_ref.exit395
  tail call void @lean_inc_heartbeat() #7
  %i.gg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ed, label %lean_alloc_ctor.exit396

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit396:                          ; preds = %bb.ec
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 1, ptr %i.gg, align 4, !tbaa !10
  store i32 131096, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %0, ptr %i.gj, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store ptr %1, ptr %i.gk, align 8, !tbaa !13
  br label %bb.ee

bb.ee:                                            ; preds = %lean_alloc_ctor.exit396, %bb.eb
  %.0226 = phi ptr [ %.0234, %bb.eb ], [ %i.gg, %lean_alloc_ctor.exit396 ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !13 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 8
  %.val.i397 = load i64, ptr %i.gn, align 8, !tbaa !20
  %i.go = and i64 %.val.i397, 9223372036854775807
  %i.gp = tail call i64 @l_Lean_Expr_hash(ptr noundef nonnull %0) #7
  %i.gq = tail call i64 @l_Lean_Expr_hash(ptr noundef nonnull %1) #7
  %i.gr = mul i64 %i.gq, -4132994306676758123     ; 2 uses
  %i.gs = lshr i64 %i.gr, 47
  %i.gt = xor i64 %i.gp, %i.gs
  %i.gu = xor i64 %i.gt, %i.gr
  %i.gv = xor i64 %i.gu, -4132994306676758123
  %i.gw = mul i64 %i.gv, -4132994306676758123     ; 2 uses
  %i.gx = lshr i64 %i.gw, 32
  %i.gy = xor i64 %i.gx, %i.gw                    ; 2 uses
  %i.gz = lshr i64 %i.gy, 16
  %i.ha = xor i64 %i.gz, %i.gy
  %i.hb = add nsw i64 %i.go, -1
  %i.hc = and i64 %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !13
  %i.hg = tail call ptr @l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00Lean_Meta_Grind_checkSplitInfoArgStatus_spec__1_spec__1___redArg(ptr noundef nonnull readonly %.0226, ptr noundef %i.hf) ; 7 uses
  %i.hh = load i32, ptr %.0226, align 4, !tbaa !10 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.ef, label %bb.eg, !prof !11

bb.ef:                                            ; preds = %bb.ee
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %.0226, align 4, !tbaa !10
  br label %lean_dec_ref.exit317

bb.eg:                                            ; preds = %bb.ee
  %.not.i316 = icmp eq i32 %i.hh, 0
  br i1 %.not.i316, label %lean_dec_ref.exit317, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0226) #7
  br label %lean_dec_ref.exit317

lean_dec_ref.exit317:                             ; preds = %bb.ef, %bb.eg, %bb.eh
  %i.hk = load i32, ptr %i.fr, align 8, !tbaa !10 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.ei, label %bb.ej, !prof !11

bb.ei:                                            ; preds = %lean_dec_ref.exit317
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %i.fr, align 8, !tbaa !10
  br label %lean_dec_ref.exit315

bb.ej:                                            ; preds = %lean_dec_ref.exit317
  %.not.i314 = icmp eq i32 %i.hk, 0
  br i1 %.not.i314, label %lean_dec_ref.exit315, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #7
  br label %lean_dec_ref.exit315

lean_dec_ref.exit315:                             ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.hn = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.ho = and i64 %i.hn, 1
  %.not.i398 = icmp eq i64 %i.ho, 0
  br i1 %.not.i398, label %bb.em, label %bb.el

bb.el:                                            ; preds = %lean_dec_ref.exit315
  %i.hp = lshr i64 %i.hn, 1
  %i.hq = trunc i64 %i.hp to i32
  br label %lean_obj_tag.exit401

bb.em:                                            ; preds = %lean_dec_ref.exit315
  %i.hr = getelementptr i8, ptr %i.hg, i64 4
  %.val.i400 = load i32, ptr %i.hr, align 4
  %i.hs = lshr i32 %.val.i400, 24
  br label %lean_obj_tag.exit401

lean_obj_tag.exit401:                             ; preds = %bb.el, %bb.em
  %.0.i399 = phi i32 [ %i.hq, %bb.el ], [ %i.hs, %bb.em ]
  %i.ht = icmp eq i32 %.0.i399, 0
  br i1 %i.ht, label %bb.en, label %bb.es

bb.en:                                            ; preds = %lean_obj_tag.exit401
  %i.hu = and i64 %.pre435, 1
  %.not.i248 = icmp eq i64 %i.hu, 0
  br i1 %.not.i248, label %bb.eo, label %.thread428

bb.eo:                                            ; preds = %bb.en
  %i.hv = load i32, ptr %i.ec, align 512, !tbaa !10 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.ep, label %bb.eq, !prof !11

bb.ep:                                            ; preds = %bb.eo
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %i.ec, align 512, !tbaa !10
  br label %.thread428

bb.eq:                                            ; preds = %bb.eo
  %.not.i294 = icmp eq i32 %i.hv, 0
  br i1 %.not.i294, label %.thread428, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %.thread428

bb.es:                                            ; preds = %lean_obj_tag.exit401
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !13 ; 8 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = and i64 %i.ia, 1
  %.not.i265 = icmp eq i64 %i.ib, 0
  br i1 %.not.i265, label %bb.et, label %lean_inc.exit266

bb.et:                                            ; preds = %bb.es
  %.val.i.i402 = load i32, ptr %i.hz, align 4, !tbaa !10 ; 3 uses
  %i.ic = icmp sgt i32 %.val.i.i402, 0
  br i1 %i.ic, label %bb.eu, label %bb.ev, !prof !11

bb.eu:                                            ; preds = %bb.et
  %i.id = add nuw i32 %.val.i.i402, 1
  store i32 %i.id, ptr %i.hz, align 4, !tbaa !10
  br label %lean_inc.exit266

bb.ev:                                            ; preds = %bb.et
  %.not.i.i403 = icmp eq i32 %.val.i.i402, 0
  br i1 %.not.i.i403, label %lean_inc.exit266, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ie = atomicrmw sub ptr %i.hz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit266

lean_inc.exit266:                                 ; preds = %bb.ew, %bb.ev, %bb.eu, %bb.es
  %.val.i405 = load i32, ptr %i.hg, align 8, !tbaa !10 ; 4 uses
  %i.if = icmp eq i32 %.val.i405, 1
  br i1 %i.if, label %.preheader.i407, label %bb.fb

.preheader.i407:                                  ; preds = %lean_inc.exit266
  %i.ig = load ptr, ptr %i.hy, align 8, !tbaa !13 ; 4 uses
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = and i64 %i.ih, 1
  %.not.i.i409 = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i409, label %bb.ex, label %lean_dec.exit.i410

bb.ex:                                            ; preds = %.preheader.i407
  %i.ij = load i32, ptr %i.ig, align 4, !tbaa !10 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.ey, label %bb.ez, !prof !11

bb.ey:                                            ; preds = %bb.ex
  %i.il = add nsw i32 %i.ij, -1
  store i32 %i.il, ptr %i.ig, align 4, !tbaa !10
  br label %lean_dec.exit.i410

bb.ez:                                            ; preds = %bb.ex
  %.not.i7.i413 = icmp eq i32 %i.ij, 0
  br i1 %.not.i7.i413, label %lean_dec.exit.i410, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ig) #7
  br label %lean_dec.exit.i410

lean_dec.exit.i410:                               ; preds = %bb.fa, %bb.ez, %bb.ey, %.preheader.i407
  tail call void @lean_free_object(ptr noundef nonnull %i.hg) #7
  br label %lean_dec_ref_known.exit414

bb.fb:                                            ; preds = %lean_inc.exit266
  %i.im = icmp sgt i32 %.val.i405, 1
  br i1 %i.im, label %bb.fc, label %bb.fd, !prof !11

bb.fc:                                            ; preds = %bb.fb
  %i.in = add nsw i32 %.val.i405, -1
  store i32 %i.in, ptr %i.hg, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit414

bb.fd:                                            ; preds = %bb.fb
  %.not.i8.i406 = icmp eq i32 %.val.i405, 0
  br i1 %.not.i8.i406, label %lean_dec_ref_known.exit414, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hg) #7
  br label %lean_dec_ref_known.exit414

lean_dec_ref_known.exit414:                       ; preds = %lean_dec.exit.i410, %bb.fc, %bb.fd, %bb.fe
  %i.io = and i64 %.pre435, 1
  %.not.i246 = icmp eq i64 %i.io, 0
  br i1 %.not.i246, label %bb.ff, label %.thread428

bb.ff:                                            ; preds = %lean_dec_ref_known.exit414
  %i.ip = load i32, ptr %i.ec, align 512, !tbaa !10 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fg, label %bb.fh, !prof !11

bb.fg:                                            ; preds = %bb.ff
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.ec, align 512, !tbaa !10
  br label %.thread428

bb.fh:                                            ; preds = %bb.ff
  %.not.i296 = icmp eq i32 %i.ip, 0
  br i1 %.not.i296, label %.thread428, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %.thread428

bb.fj:                                            ; preds = %lean_dec.exit255
  %i.is = and i64 %.pre435, 1
  %.not.i244 = icmp eq i64 %i.is, 0
  br i1 %.not.i244, label %bb.fk, label %lean_dec.exit245

bb.fk:                                            ; preds = %bb.fj
  %i.it = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 1
  br i1 %i.iu, label %bb.fl, label %bb.fm, !prof !11

bb.fl:                                            ; preds = %bb.fk
  %i.iv = add nsw i32 %i.it, -1
  store i32 %i.iv, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit245

bb.fm:                                            ; preds = %bb.fk
  %.not.i298 = icmp eq i32 %i.it, 0
  br i1 %.not.i298, label %lean_dec.exit245, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit245

lean_dec.exit245:                                 ; preds = %bb.fn, %bb.fm, %bb.fl, %bb.fj
  %i.iw = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.fo, label %bb.fp, !prof !11

bb.fo:                                            ; preds = %lean_dec.exit245
  %i.iy = add nsw i32 %i.iw, -1
  store i32 %i.iy, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit313

bb.fp:                                            ; preds = %lean_dec.exit245
  %.not.i312 = icmp eq i32 %i.iw, 0
  br i1 %.not.i312, label %lean_dec_ref.exit313, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit313

lean_dec_ref.exit313:                             ; preds = %bb.fo, %bb.fp, %bb.fq
  %i.iz = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.ja = icmp sgt i32 %i.iz, 1
  br i1 %i.ja, label %bb.fr, label %bb.fs, !prof !11

bb.fr:                                            ; preds = %lean_dec_ref.exit313
  %i.jb = add nsw i32 %i.iz, -1
  store i32 %i.jb, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit311

bb.fs:                                            ; preds = %lean_dec_ref.exit313
  %.not.i310 = icmp eq i32 %i.iz, 0
  br i1 %.not.i310, label %lean_dec_ref.exit311, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit311

lean_dec_ref.exit311:                             ; preds = %bb.fr, %bb.fs, %bb.ft
  %i.jc = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.fu, label %bb.fv, !prof !11

bb.fu:                                            ; preds = %lean_dec_ref.exit311
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit309

bb.fv:                                            ; preds = %lean_dec_ref.exit311
  %.not.i308 = icmp eq i32 %i.jc, 0
  br i1 %.not.i308, label %lean_dec_ref.exit309, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit309

lean_dec_ref.exit309:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  br i1 %i.ed, label %lean_dec.exit257.sink.split, label %bb.fx

bb.fx:                                            ; preds = %lean_dec_ref.exit309
  tail call void @lean_inc_heartbeat() #7
  %i.jf = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.fy, label %lean_alloc_ctor.exit415

bb.fy:                                            ; preds = %bb.fx
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit415:                          ; preds = %bb.fx
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 1, ptr %i.jf, align 4, !tbaa !10
  store i32 65552, ptr %i.jh, align 4
  br label %lean_dec.exit257.sink.split

bb.fz:                                            ; preds = %lean_obj_tag.exit376
  %i.ji = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, 1
  br i1 %i.jj, label %bb.ga, label %bb.gb, !prof !11

bb.ga:                                            ; preds = %bb.fz
  %i.jk = add nsw i32 %i.ji, -1
  store i32 %i.jk, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit307

bb.gb:                                            ; preds = %bb.fz
  %.not.i306 = icmp eq i32 %i.ji, 0
  br i1 %.not.i306, label %lean_dec_ref.exit307, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit307

lean_dec_ref.exit307:                             ; preds = %bb.ga, %bb.gb, %bb.gc
  %i.jl = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %bb.gd, label %bb.ge, !prof !11

bb.gd:                                            ; preds = %lean_dec_ref.exit307
  %i.jn = add nsw i32 %i.jl, -1
  store i32 %i.jn, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit305

bb.ge:                                            ; preds = %lean_dec_ref.exit307
  %.not.i304 = icmp eq i32 %i.jl, 0
  br i1 %.not.i304, label %lean_dec_ref.exit305, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit305

lean_dec_ref.exit305:                             ; preds = %bb.gd, %bb.ge, %bb.gf
  %i.jo = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.gg, label %bb.gh, !prof !11

bb.gg:                                            ; preds = %lean_dec_ref.exit305
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit303

bb.gh:                                            ; preds = %lean_dec_ref.exit305
  %.not.i302 = icmp eq i32 %i.jo, 0
  br i1 %.not.i302, label %lean_dec_ref.exit303, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit303

lean_dec_ref.exit303:                             ; preds = %bb.gg, %bb.gh, %bb.gi
  %i.jr = getelementptr inbounds nuw i8, ptr %.1225, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !13 ; 5 uses
  %.1225.val = load i32, ptr %.1225, align 8, !tbaa !10
  %i.jt = icmp eq i32 %.1225.val, 1
  br i1 %i.jt, label %lean_dec.exit257, label %bb.gj

bb.gj:                                            ; preds = %lean_dec_ref.exit303
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = and i64 %i.ju, 1
  %.not.i264 = icmp eq i64 %i.jv, 0
  br i1 %.not.i264, label %bb.gk, label %lean_inc.exit

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i416 = load i32, ptr %i.js, align 4, !tbaa !10 ; 3 uses
  %i.jw = icmp sgt i32 %.val.i.i416, 0
  br i1 %i.jw, label %bb.gl, label %bb.gm, !prof !11

bb.gl:                                            ; preds = %bb.gk
  %i.jx = add nuw i32 %.val.i.i416, 1
  store i32 %i.jx, ptr %i.js, align 4, !tbaa !10
  br label %lean_inc.exit

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i417 = icmp eq i32 %.val.i.i416, 0
  br i1 %.not.i.i417, label %lean_inc.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.jy = atomicrmw sub ptr %i.js, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  br i1 %.not.i373, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %lean_inc.exit
  %i.jz = load i32, ptr %.1225, align 8, !tbaa !10 ; 3 uses
  %i.ka = icmp sgt i32 %i.jz, 1
  br i1 %i.ka, label %bb.gp, label %bb.gq, !prof !11

bb.gp:                                            ; preds = %bb.go
end_hunk_8
begin_hunk_9_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_checkForallStatus___redArg:bb.a

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #7
  br label %lean_dec_ref.exit410

lean_dec_ref.exit410:                             ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %bb.cj, %lean_dec_ref_known.exit454
  %.pre-phi = phi i64 [ %i.cd, %bb.cp ], [ %i.cd, %bb.co ], [ %i.cd, %bb.cn ], [ %i.cd, %bb.cl ], [ %i.cd, %bb.ck ], [ %i.cd, %bb.cj ], [ %.pre, %lean_dec_ref_known.exit454 ] ; 2 uses
  %.1290 = phi ptr [ %i.cc, %bb.cp ], [ %i.cc, %bb.co ], [ %i.cc, %bb.cn ], [ %i.cc, %bb.cl ], [ %i.cc, %bb.ck ], [ %i.cc, %bb.cj ], [ %i.df, %lean_dec_ref_known.exit454 ] ; 13 uses
  %i.dm = and i64 %.pre-phi, 1
  %.not.i455 = icmp eq i64 %i.dm, 0               ; 3 uses
  br i1 %.not.i455, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %lean_dec_ref.exit410
  %i.dn = lshr i64 %.pre-phi, 1
  %i.do = trunc i64 %i.dn to i32
  br label %lean_obj_tag.exit458

bb.cr:                                            ; preds = %lean_dec_ref.exit410
  %i.dp = getelementptr i8, ptr %.1290, i64 4
  %.val.i457 = load i32, ptr %i.dp, align 4
  %i.dq = lshr i32 %.val.i457, 24
  br label %lean_obj_tag.exit458

lean_obj_tag.exit458:                             ; preds = %bb.cq, %bb.cr
  %.0.i456 = phi i32 [ %i.do, %bb.cq ], [ %i.dq, %bb.cr ]
  %i.dr = icmp eq i32 %.0.i456, 0
  br i1 %i.dr, label %bb.cs, label %bb.fg

bb.cs:                                            ; preds = %lean_obj_tag.exit458
  %i.ds = getelementptr inbounds nuw i8, ptr %.1290, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !13 ; 19 uses
  %.1290.val414 = load i32, ptr %.1290, align 8, !tbaa !10
  %i.du = icmp eq i32 %.1290.val414, 1            ; 2 uses
  %.pre525 = ptrtoint ptr %i.dt to i64            ; 7 uses
  br i1 %i.du, label %lean_dec.exit332, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.dv = and i64 %.pre525, 1
  %.not.i352 = icmp eq i64 %i.dv, 0
  br i1 %.not.i352, label %bb.cu, label %lean_inc.exit353

bb.cu:                                            ; preds = %bb.ct
  %.val.i.i459 = load i32, ptr %i.dt, align 4, !tbaa !10 ; 3 uses
  %i.dw = icmp sgt i32 %.val.i.i459, 0
  br i1 %i.dw, label %bb.cv, label %bb.cw, !prof !11

bb.cv:                                            ; preds = %bb.cu
  %i.dx = add nuw i32 %.val.i.i459, 1
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !10
  br label %lean_inc.exit353

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i460 = icmp eq i32 %.val.i.i459, 0
  br i1 %.not.i.i460, label %lean_inc.exit353, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.dy = atomicrmw sub ptr %i.dt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit353

lean_inc.exit353:                                 ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  br i1 %.not.i455, label %bb.cy, label %lean_dec.exit332

bb.cy:                                            ; preds = %lean_inc.exit353
  %i.dz = load i32, ptr %.1290, align 8, !tbaa !10 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %bb.cz, label %bb.da, !prof !11

bb.cz:                                            ; preds = %bb.cy
  %i.eb = add nsw i32 %i.dz, -1
  store i32 %i.eb, ptr %.1290, align 8, !tbaa !10
  br label %lean_dec.exit332

bb.da:                                            ; preds = %bb.cy
  %.not.i371 = icmp eq i32 %i.dz, 0
  br i1 %.not.i371, label %lean_dec.exit332, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1290) #7
  br label %lean_dec.exit332

lean_dec.exit332:                                 ; preds = %bb.cs, %lean_inc.exit353, %bb.cz, %bb.da, %bb.db
  %.0288 = phi ptr [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit353 ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.da ], [ %.1290, %bb.cs ] ; 3 uses
  %i.ec = and i64 %.pre525, 510
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.dc, label %bb.ew

bb.dc:                                            ; preds = %lean_dec.exit332
  %i.ee = ptrtoint ptr %.0288 to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i462 = icmp eq i64 %i.ef, 0
  br i1 %.not.i462, label %bb.dd, label %lean_del_object.exit

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_free_object(ptr noundef nonnull %.0288) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.dc, %bb.dd
  %i.eg = tail call zeroext i8 @l_Lean_Expr_hasLooseBVars(ptr noundef nonnull %i.bv) #7
  %i.eh = icmp eq i8 %i.eg, 0
  %.val.i.i463 = load i32, ptr %i.bv, align 4, !tbaa !10 ; 6 uses
  br i1 %i.eh, label %bb.de, label %bb.eo

bb.de:                                            ; preds = %lean_del_object.exit
  %i.ei = icmp sgt i32 %.val.i.i463, 0
  br i1 %i.ei, label %bb.df, label %bb.dg, !prof !11

bb.df:                                            ; preds = %bb.de
  %i.ej = add nuw i32 %.val.i.i463, 1
  store i32 %i.ej, ptr %i.bv, align 4, !tbaa !10
  br label %lean_inc_ref.exit465

bb.dg:                                            ; preds = %bb.de
  %.not.i.i464 = icmp eq i32 %.val.i.i463, 0
  br i1 %.not.i.i464, label %lean_inc_ref.exit465, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ek = atomicrmw sub ptr %i.bv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit465

lean_inc_ref.exit465:                             ; preds = %bb.df, %bb.dg, %bb.dh
  %i.el = tail call ptr @l_Lean_Meta_Grind_isEqTrue___redArg(ptr noundef nonnull %i.bv, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 ; 12 uses
  %i.em = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.en = and i64 %i.em, 1
  %.not.i466 = icmp eq i64 %i.en, 0
  br i1 %.not.i466, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %lean_inc_ref.exit465
  %i.eo = lshr i64 %i.em, 1
  %i.ep = trunc i64 %i.eo to i32
  br label %lean_obj_tag.exit469

bb.dj:                                            ; preds = %lean_inc_ref.exit465
  %i.eq = getelementptr i8, ptr %i.el, i64 4
  %.val.i468 = load i32, ptr %i.eq, align 4
  %i.er = lshr i32 %.val.i468, 24
  br label %lean_obj_tag.exit469

lean_obj_tag.exit469:                             ; preds = %bb.di, %bb.dj
  %.0.i467 = phi i32 [ %i.ep, %bb.di ], [ %i.er, %bb.dj ]
  %i.es = icmp eq i32 %.0.i467, 0
  br i1 %i.es, label %bb.dk, label %bb.eg

bb.dk:                                            ; preds = %lean_obj_tag.exit469
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !13 ; 7 uses
  %i.ev = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %.not.i350 = icmp eq i64 %i.ew, 0
  br i1 %.not.i350, label %bb.dl, label %lean_dec.exit330

bb.dl:                                            ; preds = %bb.dk
  %.val.i.i470 = load i32, ptr %i.eu, align 4, !tbaa !10 ; 3 uses
  %i.ex = icmp sgt i32 %.val.i.i470, 0
  br i1 %i.ex, label %bb.dm, label %bb.dn, !prof !11

bb.dm:                                            ; preds = %bb.dl
  %i.ey = add nuw i32 %.val.i.i470, 1             ; 2 uses
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !10
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dl
  %.not.i.i471 = icmp eq i32 %.val.i.i470, 0
  br i1 %.not.i.i471, label %lean_dec.exit330, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ez = atomicrmw sub ptr %i.eu, i32 1 monotonic, align 4 ; 0 uses
  %.pr500 = load i32, ptr %i.eu, align 4, !tbaa !10
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm
  %i.fa = phi i32 [ %.pr500, %bb.do ], [ %i.ey, %bb.dm ] ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.dq, label %bb.dr, !prof !21

bb.dq:                                            ; preds = %bb.dp
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %i.eu, align 4, !tbaa !10
  br label %lean_dec.exit330

bb.dr:                                            ; preds = %bb.dp
  %.not.i373 = icmp eq i32 %i.fa, 0
  br i1 %.not.i373, label %lean_dec.exit330, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eu) #7
  br label %lean_dec.exit330

lean_dec.exit330:                                 ; preds = %bb.dk, %bb.dn, %bb.ds, %bb.dr, %bb.dq
  %i.fd = and i64 %i.ev, 510
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %lean_dec.exit330
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.el, i32 noundef 1)
  %i.ff = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %i.bv, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 ; 4 uses
  %i.fg = and i64 %.pre525, 1
  %.not.i327 = icmp eq i64 %i.fg, 0
  br i1 %.not.i327, label %bb.du, label %bb.gm

bb.du:                                            ; preds = %bb.dt
  %i.fh = load i32, ptr %i.dt, align 512, !tbaa !10 ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %bb.du
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %i.dt, align 512, !tbaa !10
  br label %bb.gm

bb.dw:                                            ; preds = %bb.du
  %.not.i375 = icmp eq i32 %i.fh, 0
  br i1 %.not.i375, label %bb.gm, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dt) #7
  br label %bb.gm

bb.dy:                                            ; preds = %lean_dec.exit330
  %i.fk = load i32, ptr %i.bv, align 4, !tbaa !10 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.dz, label %bb.ea, !prof !11

bb.dz:                                            ; preds = %bb.dy
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %i.bv, align 4, !tbaa !10
  br label %lean_dec_ref.exit406

bb.ea:                                            ; preds = %bb.dy
  %.not.i405 = icmp eq i32 %i.fk, 0
  br i1 %.not.i405, label %lean_dec_ref.exit406, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref.exit406

lean_dec_ref.exit406:                             ; preds = %bb.dz, %bb.ea, %bb.eb
  %i.fn = and i64 %.pre525, 1
  %.not.i325 = icmp eq i64 %i.fn, 0
  br i1 %.not.i325, label %bb.ec, label %bb.gm

bb.ec:                                            ; preds = %lean_dec_ref.exit406
  %i.fo = load i32, ptr %i.dt, align 512, !tbaa !10 ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.ed, label %bb.ee, !prof !11

bb.ed:                                            ; preds = %bb.ec
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %i.dt, align 512, !tbaa !10
  br label %bb.gm

bb.ee:                                            ; preds = %bb.ec
  %.not.i377 = icmp eq i32 %i.fo, 0
  br i1 %.not.i377, label %bb.gm, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dt) #7
  br label %bb.gm

bb.eg:                                            ; preds = %lean_obj_tag.exit469
  %i.fr = load i32, ptr %i.bv, align 4, !tbaa !10 ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 1
  br i1 %i.fs, label %bb.eh, label %bb.ei, !prof !11

bb.eh:                                            ; preds = %bb.eg
  %i.ft = add nsw i32 %i.fr, -1
  store i32 %i.ft, ptr %i.bv, align 4, !tbaa !10
  br label %lean_dec_ref.exit404

bb.ei:                                            ; preds = %bb.eg
  %.not.i403 = icmp eq i32 %i.fr, 0
  br i1 %.not.i403, label %lean_dec_ref.exit404, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref.exit404

lean_dec_ref.exit404:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.fu = and i64 %.pre525, 1
  %.not.i323 = icmp eq i64 %i.fu, 0
  br i1 %.not.i323, label %bb.ek, label %bb.gm

bb.ek:                                            ; preds = %lean_dec_ref.exit404
  %i.fv = load i32, ptr %i.dt, align 512, !tbaa !10 ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %bb.ek
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %i.dt, align 512, !tbaa !10
  br label %bb.gm

bb.em:                                            ; preds = %bb.ek
  %.not.i379 = icmp eq i32 %i.fv, 0
  br i1 %.not.i379, label %bb.gm, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dt) #7
  br label %bb.gm

bb.eo:                                            ; preds = %lean_del_object.exit
  %i.fy = icmp sgt i32 %.val.i.i463, 1
  br i1 %i.fy, label %bb.ep, label %bb.eq, !prof !11

bb.ep:                                            ; preds = %bb.eo
  %i.fz = add nsw i32 %.val.i.i463, -1
  store i32 %i.fz, ptr %i.bv, align 4, !tbaa !10
  br label %lean_dec_ref.exit402

bb.eq:                                            ; preds = %bb.eo
  %.not.i401 = icmp eq i32 %.val.i.i463, 0
  br i1 %.not.i401, label %lean_dec_ref.exit402, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref.exit402

lean_dec_ref.exit402:                             ; preds = %bb.ep, %bb.eq, %bb.er
  %i.ga = and i64 %.pre525, 1
  %.not.i321 = icmp eq i64 %i.ga, 0
  br i1 %.not.i321, label %bb.es, label %lean_dec.exit336.thread511

bb.es:                                            ; preds = %lean_dec_ref.exit402
  %i.gb = load i32, ptr %i.dt, align 512, !tbaa !10 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.et, label %bb.eu, !prof !11

bb.et:                                            ; preds = %bb.es
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.dt, align 512, !tbaa !10
  br label %lean_dec.exit336.thread511

bb.eu:                                            ; preds = %bb.es
  %.not.i381 = icmp eq i32 %i.gb, 0
  br i1 %.not.i381, label %lean_dec.exit336.thread511, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dt) #7
  br label %lean_dec.exit336.thread511

bb.ew:                                            ; preds = %lean_dec.exit332
  %i.ge = and i64 %.pre525, 1
  %.not.i319 = icmp eq i64 %i.ge, 0
  br i1 %.not.i319, label %bb.ex, label %lean_dec.exit320

bb.ex:                                            ; preds = %bb.ew
  %i.gf = load i32, ptr %i.dt, align 4, !tbaa !10 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.ey, label %bb.ez, !prof !11

bb.ey:                                            ; preds = %bb.ex
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %i.dt, align 4, !tbaa !10
  br label %lean_dec.exit320

bb.ez:                                            ; preds = %bb.ex
  %.not.i383 = icmp eq i32 %i.gf, 0
  br i1 %.not.i383, label %lean_dec.exit320, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dt) #7
  br label %lean_dec.exit320

lean_dec.exit320:                                 ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ew
  %i.gi = load i32, ptr %i.bv, align 4, !tbaa !10 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.fb, label %bb.fc, !prof !11

bb.fb:                                            ; preds = %lean_dec.exit320
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %i.bv, align 4, !tbaa !10
  br label %lean_dec_ref.exit400

bb.fc:                                            ; preds = %lean_dec.exit320
  %.not.i399 = icmp eq i32 %i.gi, 0
  br i1 %.not.i399, label %lean_dec_ref.exit400, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref.exit400

lean_dec_ref.exit400:                             ; preds = %bb.fb, %bb.fc, %bb.fd
  br i1 %i.du, label %lean_dec.exit316.sink.split, label %bb.fe

bb.fe:                                            ; preds = %lean_dec_ref.exit400
  tail call void @lean_inc_heartbeat() #7
  %i.gl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.ff, label %lean_alloc_ctor.exit473

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit473:                          ; preds = %bb.fe
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 1, ptr %i.gl, align 4, !tbaa !10
  store i32 65552, ptr %i.gn, align 4
  br label %lean_dec.exit316.sink.split

bb.fg:                                            ; preds = %lean_obj_tag.exit458
  %i.go = load i32, ptr %i.bv, align 4, !tbaa !10 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.fh, label %bb.fi, !prof !11

bb.fh:                                            ; preds = %bb.fg
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.bv, align 4, !tbaa !10
  br label %lean_dec_ref.exit398

bb.fi:                                            ; preds = %bb.fg
  %.not.i397 = icmp eq i32 %i.go, 0
  br i1 %.not.i397, label %lean_dec_ref.exit398, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref.exit398

lean_dec_ref.exit398:                             ; preds = %bb.fh, %bb.fi, %bb.fj
  %i.gr = getelementptr inbounds nuw i8, ptr %.1290, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !13 ; 5 uses
  %.1290.val = load i32, ptr %.1290, align 8, !tbaa !10
  %i.gt = icmp eq i32 %.1290.val, 1
  br i1 %i.gt, label %lean_dec.exit316, label %bb.fk

bb.fk:                                            ; preds = %lean_dec_ref.exit398
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = and i64 %i.gu, 1
  %.not.i348 = icmp eq i64 %i.gv, 0
  br i1 %.not.i348, label %bb.fl, label %lean_inc.exit349

bb.fl:                                            ; preds = %bb.fk
  %.val.i.i474 = load i32, ptr %i.gs, align 4, !tbaa !10 ; 3 uses
  %i.gw = icmp sgt i32 %.val.i.i474, 0
  br i1 %i.gw, label %bb.fm, label %bb.fn, !prof !11

bb.fm:                                            ; preds = %bb.fl
  %i.gx = add nuw i32 %.val.i.i474, 1
  store i32 %i.gx, ptr %i.gs, align 4, !tbaa !10
  br label %lean_inc.exit349

bb.fn:                                            ; preds = %bb.fl
  %.not.i.i475 = icmp eq i32 %.val.i.i474, 0
  br i1 %.not.i.i475, label %lean_inc.exit349, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.gy = atomicrmw sub ptr %i.gs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit349

lean_inc.exit349:                                 ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fk
  br i1 %.not.i455, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %lean_inc.exit349
  %i.gz = load i32, ptr %.1290, align 8, !tbaa !10 ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 1
  br i1 %i.ha, label %bb.fq, label %bb.fr, !prof !11

bb.fq:                                            ; preds = %bb.fp
  %i.hb = add nsw i32 %i.gz, -1
  store i32 %i.hb, ptr %.1290, align 8, !tbaa !10
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fp
  %.not.i385 = icmp eq i32 %i.gz, 0
  br i1 %.not.i385, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1290) #7
  br label %bb.ft

bb.ft:                                            ; preds = %lean_inc.exit349, %bb.fq, %bb.fr, %bb.fs
  tail call void @lean_inc_heartbeat() #7
  %i.hc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.fu, label %lean_alloc_ctor.exit477

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit477:                          ; preds = %bb.ft
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 1, ptr %i.hc, align 4, !tbaa !10
  store i32 16842768, ptr %i.he, align 4
  br label %lean_dec.exit316.sink.split

bb.fv:                                            ; preds = %lean_obj_tag.exit
  %i.hf = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %bb.fw, label %bb.fx, !prof !11

bb.fw:                                            ; preds = %bb.fv
  %i.hh = add nsw i32 %i.hf, -1
  store i32 %i.hh, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit396

bb.fx:                                            ; preds = %bb.fv
  %.not.i395 = icmp eq i32 %i.hf, 0
  br i1 %.not.i395, label %lean_dec_ref.exit396, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec_ref.exit396

lean_dec_ref.exit396:                             ; preds = %bb.fw, %bb.fx, %bb.fy
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !13 ; 5 uses
  %.val = load i32, ptr %i.d, align 8, !tbaa !10
  %i.hk = icmp eq i32 %.val, 1
  br i1 %i.hk, label %lean_dec.exit316, label %bb.fz

bb.fz:                                            ; preds = %lean_dec_ref.exit396
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = and i64 %i.hl, 1
  %.not.i346 = icmp eq i64 %i.hm, 0
  br i1 %.not.i346, label %bb.ga, label %lean_inc.exit347

bb.ga:                                            ; preds = %bb.fz
  %.val.i.i478 = load i32, ptr %i.hj, align 4, !tbaa !10 ; 3 uses
  %i.hn = icmp sgt i32 %.val.i.i478, 0
  br i1 %i.hn, label %bb.gb, label %bb.gc, !prof !11

bb.gb:                                            ; preds = %bb.ga
  %i.ho = add nuw i32 %.val.i.i478, 1
  store i32 %i.ho, ptr %i.hj, align 4, !tbaa !10
  br label %lean_inc.exit347

bb.gc:                                            ; preds = %bb.ga
  %.not.i.i479 = icmp eq i32 %.val.i.i478, 0
  br i1 %.not.i.i479, label %lean_inc.exit347, label %bb.gd
end_hunk_9
begin_hunk_10_@l___private_Lean_Meta_Tactic_Grind_Split_0__Lean_Meta_Grind_selectNextSplit_x3f_go:bb.a
lean_alloc_ctor.exit2389:                         ; preds = %lean_del_object.exit2388
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 4
  store i32 1, ptr %i.aow, align 4, !tbaa !10
  store i32 16908312, ptr %i.aoy, align 4
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store ptr %i.uf, ptr %i.aoz, align 8, !tbaa !13
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  store ptr %.01062, ptr %i.apa, align 8, !tbaa !13
  br label %lean_dec.exit1644.backedge

bb.aad:                                           ; preds = %lean_obj_tag.exit2384
  %i.apb = getelementptr inbounds nuw i8, ptr %i.anw, i64 8 ; 2 uses
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !13 ; 30 uses
  %i.apd = ptrtoint ptr %i.apc to i64             ; 3 uses
  %i.ape = and i64 %i.apd, 1
  %.not.i1708 = icmp eq i64 %i.ape, 0             ; 3 uses
  br i1 %.not.i1708, label %bb.aae, label %lean_inc.exit1709

bb.aae:                                           ; preds = %bb.aad
  %.val.i.i2390 = load i32, ptr %i.apc, align 4, !tbaa !10 ; 3 uses
  %i.apf = icmp sgt i32 %.val.i.i2390, 0
  br i1 %i.apf, label %bb.aaf, label %bb.aag, !prof !11

bb.aaf:                                           ; preds = %bb.aae
  %i.apg = add nuw i32 %.val.i.i2390, 1
  store i32 %i.apg, ptr %i.apc, align 4, !tbaa !10
  br label %lean_inc.exit1709

bb.aag:                                           ; preds = %bb.aae
  %.not.i.i2391 = icmp eq i32 %.val.i.i2390, 0
  br i1 %.not.i.i2391, label %lean_inc.exit1709, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.aph = atomicrmw sub ptr %i.apc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1709

lean_inc.exit1709:                                ; preds = %bb.aah, %bb.aag, %bb.aaf, %bb.aad
  %i.api = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  %i.apj = load i8, ptr %i.api, align 8, !tbaa !14 ; 3 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.anw, i64 17
  %i.apl = load i8, ptr %i.apk, align 1, !tbaa !14 ; 14 uses
  %.val.i2393 = load i32, ptr %i.anw, align 8, !tbaa !10 ; 4 uses
  %i.apm = icmp eq i32 %.val.i2393, 1
  br i1 %i.apm, label %.preheader.i2395, label %bb.aam

.preheader.i2395:                                 ; preds = %lean_inc.exit1709
  %i.apn = load ptr, ptr %i.apb, align 8, !tbaa !13 ; 4 uses
  %i.apo = ptrtoint ptr %i.apn to i64
  %i.app = and i64 %i.apo, 1
  %.not.i.i2397 = icmp eq i64 %i.app, 0
  br i1 %.not.i.i2397, label %bb.aai, label %lean_dec.exit.i2398

bb.aai:                                           ; preds = %.preheader.i2395
  %i.apq = load i32, ptr %i.apn, align 4, !tbaa !10 ; 3 uses
  %i.apr = icmp sgt i32 %i.apq, 1
  br i1 %i.apr, label %bb.aaj, label %bb.aak, !prof !11

bb.aaj:                                           ; preds = %bb.aai
  %i.aps = add nsw i32 %i.apq, -1
  store i32 %i.aps, ptr %i.apn, align 4, !tbaa !10
  br label %lean_dec.exit.i2398

bb.aak:                                           ; preds = %bb.aai
  %.not.i7.i2401 = icmp eq i32 %i.apq, 0
  br i1 %.not.i7.i2401, label %lean_dec.exit.i2398, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apn) #7
  br label %lean_dec.exit.i2398

lean_dec.exit.i2398:                              ; preds = %bb.aal, %bb.aak, %bb.aaj, %.preheader.i2395
  tail call void @lean_free_object(ptr noundef nonnull %i.anw) #7
  br label %lean_dec_ref_known.exit2402

bb.aam:                                           ; preds = %lean_inc.exit1709
  %i.apt = icmp sgt i32 %.val.i2393, 1
  br i1 %i.apt, label %bb.aan, label %bb.aao, !prof !11

bb.aan:                                           ; preds = %bb.aam
  %i.apu = add nsw i32 %.val.i2393, -1
  store i32 %i.apu, ptr %i.anw, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit2402

bb.aao:                                           ; preds = %bb.aam
  %.not.i8.i2394 = icmp eq i32 %.val.i2393, 0
  br i1 %.not.i8.i2394, label %lean_dec_ref_known.exit2402, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anw) #7
  br label %lean_dec_ref_known.exit2402

lean_dec_ref_known.exit2402:                      ; preds = %lean_dec.exit.i2398, %bb.aan, %bb.aao, %bb.aap
  %i.apv = tail call ptr @l_Lean_Meta_Grind_cheapCasesOnly___redArg(ptr noundef %5) #7 ; 13 uses
  %i.apw = ptrtoint ptr %i.apv to i64             ; 2 uses
  %i.apx = and i64 %i.apw, 1
  %.not.i2403 = icmp eq i64 %i.apx, 0             ; 2 uses
  br i1 %.not.i2403, label %bb.aar, label %bb.aaq

bb.aaq:                                           ; preds = %lean_dec_ref_known.exit2402
  %i.apy = lshr i64 %i.apw, 1
  %i.apz = trunc i64 %i.apy to i32
  br label %lean_obj_tag.exit2406

bb.aar:                                           ; preds = %lean_dec_ref_known.exit2402
  %i.aqa = getelementptr i8, ptr %i.apv, i64 4
  %.val.i2405 = load i32, ptr %i.aqa, align 4
  %i.aqb = lshr i32 %.val.i2405, 24
  br label %lean_obj_tag.exit2406

lean_obj_tag.exit2406:                            ; preds = %bb.aaq, %bb.aar
  %.0.i2404 = phi i32 [ %i.apz, %bb.aaq ], [ %i.aqb, %bb.aar ]
  %i.aqc = icmp eq i32 %.0.i2404, 0
  br i1 %i.aqc, label %bb.aas, label %bb.abv

bb.aas:                                           ; preds = %lean_obj_tag.exit2406
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apv, i64 8 ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !13 ; 10 uses
  %i.aqf = ptrtoint ptr %i.aqe to i64             ; 2 uses
  %i.aqg = and i64 %i.aqf, 1
  %.not.i1706 = icmp eq i64 %i.aqg, 0             ; 3 uses
  br i1 %.not.i1706, label %bb.aat, label %lean_inc.exit1707

bb.aat:                                           ; preds = %bb.aas
  %.val.i.i2407 = load i32, ptr %i.aqe, align 4, !tbaa !10 ; 3 uses
  %i.aqh = icmp sgt i32 %.val.i.i2407, 0
  br i1 %i.aqh, label %bb.aau, label %bb.aav, !prof !11

bb.aau:                                           ; preds = %bb.aat
  %i.aqi = add nuw i32 %.val.i.i2407, 1
  store i32 %i.aqi, ptr %i.aqe, align 4, !tbaa !10
  br label %lean_inc.exit1707

bb.aav:                                           ; preds = %bb.aat
  %.not.i.i2408 = icmp eq i32 %.val.i.i2407, 0
  br i1 %.not.i.i2408, label %lean_inc.exit1707, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.aqj = atomicrmw sub ptr %i.aqe, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1707

lean_inc.exit1707:                                ; preds = %bb.aaw, %bb.aav, %bb.aau, %bb.aas
  %.val.i2410 = load i32, ptr %i.apv, align 8, !tbaa !10 ; 4 uses
  %i.aqk = icmp eq i32 %.val.i2410, 1
  br i1 %i.aqk, label %.preheader.i2412, label %bb.abb

.preheader.i2412:                                 ; preds = %lean_inc.exit1707
  %i.aql = load ptr, ptr %i.aqd, align 8, !tbaa !13 ; 4 uses
  %i.aqm = ptrtoint ptr %i.aql to i64
  %i.aqn = and i64 %i.aqm, 1
  %.not.i.i2414 = icmp eq i64 %i.aqn, 0
  br i1 %.not.i.i2414, label %bb.aax, label %lean_dec.exit.i2415

bb.aax:                                           ; preds = %.preheader.i2412
  %i.aqo = load i32, ptr %i.aql, align 4, !tbaa !10 ; 3 uses
  %i.aqp = icmp sgt i32 %i.aqo, 1
  br i1 %i.aqp, label %bb.aay, label %bb.aaz, !prof !11

bb.aay:                                           ; preds = %bb.aax
  %i.aqq = add nsw i32 %i.aqo, -1
  store i32 %i.aqq, ptr %i.aql, align 4, !tbaa !10
  br label %lean_dec.exit.i2415

bb.aaz:                                           ; preds = %bb.aax
  %.not.i7.i2418 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i7.i2418, label %lean_dec.exit.i2415, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aql) #7
  br label %lean_dec.exit.i2415

lean_dec.exit.i2415:                              ; preds = %bb.aba, %bb.aaz, %bb.aay, %.preheader.i2412
  tail call void @lean_free_object(ptr noundef nonnull %i.apv) #7
  br label %lean_dec_ref_known.exit2419

bb.abb:                                           ; preds = %lean_inc.exit1707
  %i.aqr = icmp sgt i32 %.val.i2410, 1
  br i1 %i.aqr, label %bb.abc, label %bb.abd, !prof !11

bb.abc:                                           ; preds = %bb.abb
  %i.aqs = add nsw i32 %.val.i2410, -1
  store i32 %i.aqs, ptr %i.apv, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit2419

bb.abd:                                           ; preds = %bb.abb
  %.not.i8.i2411 = icmp eq i32 %.val.i2410, 0
  br i1 %.not.i8.i2411, label %lean_dec_ref_known.exit2419, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apv) #7
  br label %lean_dec_ref_known.exit2419

lean_dec_ref_known.exit2419:                      ; preds = %lean_dec.exit.i2415, %bb.abc, %bb.abd, %bb.abe
  %i.aqt = and i64 %i.aqf, 510
  %i.aqu = icmp eq i64 %i.aqt, 0
  br i1 %i.aqu, label %bb.abf, label %bb.abk

bb.abf:                                           ; preds = %lean_dec_ref_known.exit2419
  br i1 %.not.i1706, label %bb.abg, label %bb.xe

bb.abg:                                           ; preds = %bb.abf
  %i.aqv = load i32, ptr %i.aqe, align 512, !tbaa !10 ; 3 uses
  %i.aqw = icmp sgt i32 %i.aqv, 1
  br i1 %i.aqw, label %bb.abh, label %bb.abi, !prof !11

bb.abh:                                           ; preds = %bb.abg
  %i.aqx = add nsw i32 %i.aqv, -1
  store i32 %i.aqx, ptr %i.aqe, align 512, !tbaa !10
  br label %bb.xe

bb.abi:                                           ; preds = %bb.abg
  %.not.i1951 = icmp eq i32 %i.aqv, 0
  br i1 %.not.i1951, label %bb.xe, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqe) #7
  br label %bb.xe

bb.abk:                                           ; preds = %lean_dec_ref_known.exit2419
  br i1 %.not.i1706, label %bb.abl, label %lean_dec.exit1588

bb.abl:                                           ; preds = %bb.abk
  %i.aqy = load i32, ptr %i.aqe, align 4, !tbaa !10 ; 3 uses
  %i.aqz = icmp sgt i32 %i.aqy, 1
  br i1 %i.aqz, label %bb.abm, label %bb.abn, !prof !11

bb.abm:                                           ; preds = %bb.abl
  %i.ara = add nsw i32 %i.aqy, -1
  store i32 %i.ara, ptr %i.aqe, align 4, !tbaa !10
  br label %lean_dec.exit1588

bb.abn:                                           ; preds = %bb.abl
  %.not.i1953 = icmp eq i32 %i.aqy, 0
  br i1 %.not.i1953, label %lean_dec.exit1588, label %bb.abo

bb.abo:                                           ; preds = %bb.abn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqe) #7
  br label %lean_dec.exit1588

lean_dec.exit1588:                                ; preds = %bb.abk, %bb.abm, %bb.abn, %bb.abo
  br i1 %.not.i1708, label %lean_nat_lt.exit1997, label %.split3318, !prof !16

.split3318:                                       ; preds = %lean_dec.exit1588
  %i.arb = icmp ugt ptr %i.apc, inttoptr (i64 3 to ptr)
  br i1 %i.arb, label %lean_dec.exit1586, label %bb.xe

lean_nat_lt.exit1997:                             ; preds = %lean_dec.exit1588
  %i.arc = tail call zeroext i1 @lean_nat_big_lt(ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef %i.apc) #7
  br i1 %i.arc, label %bb.abp, label %bb.xe

bb.abp:                                           ; preds = %lean_nat_lt.exit1997
  %i.ard = load i32, ptr %i.apc, align 4, !tbaa !10 ; 3 uses
  %i.are = icmp sgt i32 %i.ard, 1
  br i1 %i.are, label %bb.abq, label %bb.abr, !prof !11

bb.abq:                                           ; preds = %bb.abp
  %i.arf = add nsw i32 %i.ard, -1
  store i32 %i.arf, ptr %i.apc, align 4, !tbaa !10
  br label %lean_dec.exit1586

bb.abr:                                           ; preds = %bb.abp
  %.not.i1955 = icmp eq i32 %i.ard, 0
  br i1 %.not.i1955, label %lean_dec.exit1586, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apc) #7
  br label %lean_dec.exit1586

lean_dec.exit1586:                                ; preds = %.split3318, %bb.abs, %bb.abr, %bb.abq
  %i.arg = ptrtoint ptr %.01523 to i64
  %i.arh = and i64 %i.arg, 1
  %.not.i2420 = icmp eq i64 %i.arh, 0
  br i1 %.not.i2420, label %bb.abt, label %lean_del_object.exit2421

bb.abt:                                           ; preds = %lean_dec.exit1586
  tail call void @lean_free_object(ptr noundef nonnull %.01523) #7
  br label %lean_del_object.exit2421

lean_del_object.exit2421:                         ; preds = %lean_dec.exit1586, %bb.abt
  tail call void @lean_inc_heartbeat() #7
  %i.ari = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.arj = icmp eq ptr %i.ari, null
  br i1 %i.arj, label %bb.abu, label %lean_dec.exit1592

bb.abu:                                           ; preds = %lean_del_object.exit2421
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.abv:                                           ; preds = %lean_obj_tag.exit2406
  br i1 %.not.i1708, label %bb.abw, label %lean_dec.exit1584

bb.abw:                                           ; preds = %bb.abv
  %i.ark = load i32, ptr %i.apc, align 4, !tbaa !10 ; 3 uses
  %i.arl = icmp sgt i32 %i.ark, 1
  br i1 %i.arl, label %bb.abx, label %bb.aby, !prof !11

bb.abx:                                           ; preds = %bb.abw
  %i.arm = add nsw i32 %i.ark, -1
  store i32 %i.arm, ptr %i.apc, align 4, !tbaa !10
  br label %lean_dec.exit1584

bb.aby:                                           ; preds = %bb.abw
  %.not.i1957 = icmp eq i32 %i.ark, 0
  br i1 %.not.i1957, label %lean_dec.exit1584, label %bb.abz

bb.abz:                                           ; preds = %bb.aby
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apc) #7
  br label %lean_dec.exit1584

lean_dec.exit1584:                                ; preds = %bb.abz, %bb.aby, %bb.abx, %bb.abv
  %i.arn = ptrtoint ptr %.01523 to i64
  %i.aro = and i64 %i.arn, 1
  %.not.i2423 = icmp eq i64 %i.aro, 0
  br i1 %.not.i2423, label %bb.aca, label %lean_del_object.exit2424

bb.aca:                                           ; preds = %lean_dec.exit1584
  tail call void @lean_free_object(ptr noundef nonnull %.01523) #7
  br label %lean_del_object.exit2424

lean_del_object.exit2424:                         ; preds = %lean_dec.exit1584, %bb.aca
  %i.arp = ptrtoint ptr %i.uh to i64
  %i.arq = and i64 %i.arp, 1
  %.not.i1581 = icmp eq i64 %i.arq, 0
  br i1 %.not.i1581, label %bb.acb, label %lean_dec.exit1582

bb.acb:                                           ; preds = %lean_del_object.exit2424
  %i.arr = load i32, ptr %i.uh, align 4, !tbaa !10 ; 3 uses
  %i.ars = icmp sgt i32 %i.arr, 1
  br i1 %i.ars, label %bb.acc, label %bb.acd, !prof !11

bb.acc:                                           ; preds = %bb.acb
  %i.art = add nsw i32 %i.arr, -1
  store i32 %i.art, ptr %i.uh, align 4, !tbaa !10
  br label %lean_dec.exit1582

bb.acd:                                           ; preds = %bb.acb
  %.not.i1959 = icmp eq i32 %i.arr, 0
  br i1 %.not.i1959, label %lean_dec.exit1582, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uh) #7
  br label %lean_dec.exit1582

lean_dec.exit1582:                                ; preds = %bb.ace, %bb.acd, %bb.acc, %lean_del_object.exit2424
  br i1 %.not.i1712, label %bb.acf, label %lean_dec.exit1580

bb.acf:                                           ; preds = %lean_dec.exit1582
  %i.aru = load i32, ptr %i.uf, align 4, !tbaa !10 ; 3 uses
  %i.arv = icmp sgt i32 %i.aru, 1
  br i1 %i.arv, label %bb.acg, label %bb.ach, !prof !11

bb.acg:                                           ; preds = %bb.acf
  %i.arw = add nsw i32 %i.aru, -1
  store i32 %i.arw, ptr %i.uf, align 4, !tbaa !10
  br label %lean_dec.exit1580

bb.ach:                                           ; preds = %bb.acf
  %.not.i1961 = icmp eq i32 %i.aru, 0
  br i1 %.not.i1961, label %lean_dec.exit1580, label %bb.aci

bb.aci:                                           ; preds = %bb.ach
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uf) #7
  br label %lean_dec.exit1580

lean_dec.exit1580:                                ; preds = %bb.aci, %bb.ach, %bb.acg, %lean_dec.exit1582
  %i.arx = ptrtoint ptr %.01062 to i64
  %i.ary = and i64 %i.arx, 1
  %.not.i1577 = icmp eq i64 %i.ary, 0
  br i1 %.not.i1577, label %bb.acj, label %lean_dec.exit1578

bb.acj:                                           ; preds = %lean_dec.exit1580
  %i.arz = load i32, ptr %.01062, align 4, !tbaa !10 ; 3 uses
  %i.asa = icmp sgt i32 %i.arz, 1
  br i1 %i.asa, label %bb.ack, label %bb.acl, !prof !11

bb.ack:                                           ; preds = %bb.acj
  %i.asb = add nsw i32 %i.arz, -1
  store i32 %i.asb, ptr %.01062, align 4, !tbaa !10
  br label %lean_dec.exit1578

bb.acl:                                           ; preds = %bb.acj
  %.not.i1963 = icmp eq i32 %i.arz, 0
  br i1 %.not.i1963, label %lean_dec.exit1578, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01062) #7
  br label %lean_dec.exit1578

lean_dec.exit1578:                                ; preds = %bb.acm, %bb.acl, %bb.ack, %lean_dec.exit1580
  %i.asc = ptrtoint ptr %.01060 to i64
  %i.asd = and i64 %i.asc, 1
  %.not.i1575 = icmp eq i64 %i.asd, 0
  br i1 %.not.i1575, label %bb.acn, label %lean_dec.exit1576

bb.acn:                                           ; preds = %lean_dec.exit1578
  %i.ase = load i32, ptr %.01060, align 4, !tbaa !10 ; 3 uses
  %i.asf = icmp sgt i32 %i.ase, 1
  br i1 %i.asf, label %bb.aco, label %bb.acp, !prof !11

bb.aco:                                           ; preds = %bb.acn
  %i.asg = add nsw i32 %i.ase, -1
  store i32 %i.asg, ptr %.01060, align 4, !tbaa !10
  br label %lean_dec.exit1576

bb.acp:                                           ; preds = %bb.acn
  %.not.i1965 = icmp eq i32 %i.ase, 0
  br i1 %.not.i1965, label %lean_dec.exit1576, label %bb.acq

end_hunk_10
