inline.NumInlined: 1814
inline.NumDeleted: 298
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 9 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 24 uses
  %i.aq = sub nsw i64 %.086, %.082                ; 12 uses
  %i.ar = icmp slt i64 %.082, %i.aq
end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %cmp.n, label %._crit_edge110, label %.lr.ph109.preheader229

.lr.ph109.preheader229:                           ; preds = %vector.memcheck, %.lr.ph109.preheader, %middle.block
  %.054107.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph109.preheader ], [ %n.vec, %middle.block ]
  %.055106.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph109.preheader ], [ %i.az, %middle.block ]
  %.159105.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph109.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.ba, %middle.block ], [ %i.bh, %.lr.ph109 ]
  %i.be = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.be, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.preheader229, %.lr.ph109
  %.054107 = phi i64 [ %i.bj, %.lr.ph109 ], [ %.054107.ph, %.lr.ph109.preheader229 ]
  %.055106 = phi ptr [ %i.bi, %.lr.ph109 ], [ %.055106.ph, %.lr.ph109.preheader229 ] ; 3 uses
  %.159105 = phi ptr [ %i.bh, %.lr.ph109 ], [ %.159105.ph, %.lr.ph109.preheader229 ] ; 3 uses
  %i.bf = load i8, ptr %.159105, align 1, !tbaa !18
  %i.bg = load i8, ptr %.055106, align 1, !tbaa !18
  store i8 %i.bg, ptr %.159105, align 1, !tbaa !18
  store i8 %i.bf, ptr %.055106, align 1, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.055106, i64 1
  %i.bj = add nuw nsw i64 %.054107, 1             ; 2 uses
  %exitcond118.not = icmp eq i64 %i.bj, %i.aq
  br i1 %exitcond118.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !313

bb.h:                                             ; preds = %._crit_edge110
  %i.bk = sub nsw i64 %.082, %i.be
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %offset.idx156 = sub i64 0, %index154
  %next.gep157 = getelementptr i8, ptr %i.bv, i64 %offset.idx156
  %i.cb = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %wide.load158 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !18, !alias.scope !314, !noalias !317
  %i.cc = getelementptr inbounds i8, ptr %next.gep155, i64 -16 ; 2 uses
  %wide.load159 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !18, !alias.scope !317
  store <16 x i8> %wide.load159, ptr %i.cb, align 1, !tbaa !18, !alias.scope !314, !noalias !317
  store <16 x i8> %wide.load158, ptr %i.cc, align 1, !tbaa !18, !alias.scope !317
  %index.next163 = add nuw i64 %index154, 16      ; 2 uses
  %i.cd = icmp eq i64 %index.next163, %n.vec152
  br i1 %i.cd, label %middle.block164, label %vector.body153, !llvm.loop !319

middle.block164:                                  ; preds = %vector.body153
  %cmp.n165 = icmp eq i64 %.082, %n.vec152
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block164
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf151, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !320

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec152, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cj = sub i64 0, %index170
  %next.gep172 = getelementptr i8, ptr %i.bv, i64 %i.cj
  %i.ck = getelementptr inbounds i8, ptr %next.gep172, i64 -8 ; 2 uses
  %wide.load173 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !18, !alias.scope !314, !noalias !317
  %i.cl = getelementptr inbounds i8, ptr %next.gep171, i64 -8 ; 2 uses
  %wide.load175 = load <8 x i8>, ptr %i.cl, align 1, !tbaa !18, !alias.scope !317
  store <8 x i8> %wide.load175, ptr %i.ck, align 1, !tbaa !18, !alias.scope !314, !noalias !317
  store <8 x i8> %wide.load173, ptr %i.cl, align 1, !tbaa !18, !alias.scope !317
  %index.next179 = add nuw i64 %index170, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next179, %n.vec169
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n180 = icmp eq i64 %.082, %n.vec169
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.cr = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !322

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.cr, %.lr.ph.prol ]
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.aq, %._crit_edge ]
  %.082.be = phi i64 [ %i.bk, %bb.h ], [ %i.cu, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !323

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.dl, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !18
  %i.dl = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dl, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !324

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block206, %vec.epilog.middle.block225, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ap, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.ap, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block206 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block225 ], [ %1, %.lr.ph.i ], [ %i.ap, %._crit_edge110 ], [ %i.ap, %._crit_edge ]
end_hunk_7
begin_hunk_8_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.aj = mul i64 %i.ai, -7070675565921424023     ; 2 uses
  %i.ak = add i64 %i.w, %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.al, align 1, !noalias !325 ; 2 uses
  %i.am = add i64 %i.ak, %.0.copyload.i.i.i       ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 27)
  %i.ao = mul i64 %i.an, -5435081209227447693
  %i.ap = mul i64 %i.f, -5435081209227447692
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i7.i.i = load i64, ptr %i.aq, align 1, !noalias !325 ; 2 uses
  %i.ar = add i64 %.0.copyload.i7.i.i, %i.ap      ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 22)
  %i.at = mul i64 %i.as, -5435081209227447693
  %i.au = xor i64 %i.ao, %i.aj                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i8.i.i = load i64, ptr %i.av, align 1, !noalias !325 ; 2 uses
  %i.aw = add i64 %.0.copyload.i8.i.i, %i.w
  %i.ax = add i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = add i64 %i.v, %i.z                      ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.ba = mul i64 %i.az, -5435081209227447693     ; 3 uses
  %i.bb = mul i64 %i.f, -7894485801551159383
  %i.bc = add i64 %i.au, %i.z
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 1, !noalias !325
  %i.bd = add i64 %.0.copyload.i.i.i.i, %i.bb     ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i15.i.i.i = load i64, ptr %i.be, align 1, !noalias !325 ; 2 uses
  %i.bf = add i64 %i.bc, %i.bd
  %i.bg = add i64 %i.bf, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 43)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i17.i.i.i = load i64, ptr %i.bi, align 1, !noalias !325 ; 2 uses
  %i.bj = add i64 %i.bd, %.0.copyload.i.i.i
  %i.bk = add i64 %i.bj, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 20)
end_hunk_9
begin_hunk_10_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.bp = add i64 %i.aj, %i.ba
  %i.bq = add i64 %i.ax, %.0.copyload.i17.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.br, align 1, !noalias !325
  %i.bs = add i64 %i.bp, %.0.copyload.i.i10.i.i   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bt, align 1, !noalias !325 ; 2 uses
  %i.bu = add i64 %i.bq, %i.bs
  %i.bv = add i64 %i.bu, %.0.copyload.i15.i11.i.i ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 43)
end_hunk_10
begin_hunk_11_@_ZN4llvh7hashing6detail23hash_combine_range_implIKmEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.dw = add i64 %i.ds, %.0.copyload.i15.i11.i   ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %.not = icmp eq ptr %.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !328

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.58.0.lcssa = phi i64 [ %i.cb, %bb.e ], [ %i.dv, %.lr.ph ] ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIsEEPcRmS4_S4_T_:bb.a
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.ag, align 8, !noalias !329 ; 2 uses
  %i.ah = add i64 %.0.copyload.i.i.i, %i.i
  %i.ai = add i64 %i.ah, %i.s                     ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 27)
  %i.ak = mul i64 %i.aj, -5435081209227447693
  %i.al = mul i64 %i.i, -5435081209227447692
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i7.i.i = load i64, ptr %i.am, align 8, !noalias !329 ; 2 uses
  %i.an = add i64 %.0.copyload.i7.i.i, %i.al      ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 22)
  %i.ap = mul i64 %i.ao, -5435081209227447693
  %i.aq = xor i64 %i.af, %i.ak                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i8.i.i = load i64, ptr %i.ar, align 8, !noalias !329 ; 2 uses
  %i.as = add i64 %.0.copyload.i8.i.i, %i.s
  %i.at = add i64 %i.as, %i.ap                    ; 2 uses
  %i.au = add i64 %i.r, %i.v                      ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 31)
  %i.aw = mul i64 %i.av, -5435081209227447693     ; 2 uses
  %i.ax = mul i64 %i.i, -7894485801551159383
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 8, !noalias !329
  %i.ay = add i64 %.0.copyload.i.i.i.i, %i.ax     ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i15.i.i.i = load i64, ptr %i.az, align 8, !noalias !329 ; 2 uses
  %i.ba = add i64 %i.ay, %i.v
  %i.bb = add i64 %i.ba, %.0.copyload.i15.i.i.i
  %i.bc = add i64 %i.bb, %i.aq                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 43)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i17.i.i.i = load i64, ptr %i.be, align 8, !noalias !329 ; 2 uses
  %i.bf = add i64 %i.ay, %.0.copyload.i.i.i
  %i.bg = add i64 %i.bf, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 20)
end_hunk_12
begin_hunk_13_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataIsEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.bg, %.0.copyload.i15.i.i.i
  %i.bl = add i64 %i.at, %.0.copyload.i17.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bm, align 8, !noalias !329
  %i.bn = add i64 %i.aw, %.0.copyload.i.i10.i.i
  %i.bo = add i64 %i.bn, %i.af                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bp, align 8, !noalias !329 ; 2 uses
  %i.bq = add i64 %i.bl, %.0.copyload.i15.i11.i.i
  %i.br = add i64 %i.bq, %i.bo                    ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 43)
end_hunk_13
begin_hunk_14_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.ag, align 8, !noalias !332 ; 2 uses
  %i.ah = add i64 %.0.copyload.i.i.i, %i.i
  %i.ai = add i64 %i.ah, %i.s                     ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 27)
  %i.ak = mul i64 %i.aj, -5435081209227447693
  %i.al = mul i64 %i.i, -5435081209227447692
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i7.i.i = load i64, ptr %i.am, align 8, !noalias !332 ; 2 uses
  %i.an = add i64 %.0.copyload.i7.i.i, %i.al      ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 22)
  %i.ap = mul i64 %i.ao, -5435081209227447693
  %i.aq = xor i64 %i.af, %i.ak                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i8.i.i = load i64, ptr %i.ar, align 8, !noalias !332 ; 2 uses
  %i.as = add i64 %.0.copyload.i8.i.i, %i.s
  %i.at = add i64 %i.as, %i.ap                    ; 2 uses
  %i.au = add i64 %i.r, %i.v                      ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 31)
  %i.aw = mul i64 %i.av, -5435081209227447693     ; 2 uses
  %i.ax = mul i64 %i.i, -7894485801551159383
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 8, !noalias !332
  %i.ay = add i64 %.0.copyload.i.i.i.i, %i.ax     ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i15.i.i.i = load i64, ptr %i.az, align 8, !noalias !332 ; 2 uses
  %i.ba = add i64 %i.ay, %i.v
  %i.bb = add i64 %i.ba, %.0.copyload.i15.i.i.i
  %i.bc = add i64 %i.bb, %i.aq                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 43)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i17.i.i.i = load i64, ptr %i.be, align 8, !noalias !332 ; 2 uses
  %i.bf = add i64 %i.ay, %.0.copyload.i.i.i
  %i.bg = add i64 %i.bf, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 20)
end_hunk_14
begin_hunk_15_@_ZN4llvh7hashing6detail29hash_combine_recursive_helper12combine_dataImEEPcRmS4_S4_T_:bb.a
  %i.bk = add i64 %i.bg, %.0.copyload.i15.i.i.i
  %i.bl = add i64 %i.at, %.0.copyload.i17.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bm, align 8, !noalias !332
  %i.bn = add i64 %i.aw, %.0.copyload.i.i10.i.i
  %i.bo = add i64 %i.bn, %i.af                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bp, align 8, !noalias !332 ; 2 uses
  %i.bq = add i64 %i.bl, %.0.copyload.i15.i11.i.i
  %i.br = add i64 %i.bq, %i.bo                    ; 2 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 43)
end_hunk_15
begin_hunk_16_@llvm.umax.i64
!310 = !{!311}
!311 = distinct !{!311, !309}
!312 = distinct !{!312, !25, !26, !27}
!313 = distinct !{!313, !25, !26}
!314 = !{!315}
!315 = distinct !{!315, !316}
!316 = distinct !{!316, !"LVerDomain"}
!317 = !{!318}
!318 = distinct !{!318, !316}
!319 = distinct !{!319, !25, !26, !27}
!320 = !{!"branch_weights", i32 8, i32 8}
!321 = distinct !{!321, !25, !26, !27}
!322 = distinct !{!322, !29}
!323 = distinct !{!323, !25}
!324 = distinct !{!324, !25, !26}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm: argument 0"}
!327 = distinct !{!327, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm"}
!328 = distinct !{!328, !25}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm: argument 0"}
!331 = distinct !{!331, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm: argument 0"}
!334 = distinct !{!334, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm"}
end_hunk_16
