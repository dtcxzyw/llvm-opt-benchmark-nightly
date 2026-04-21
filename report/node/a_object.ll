inline.NumInlined: 4
begin_hunk_0_@a2d_ASN1_OBJECT:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit273, %.loopexit.loopexit, %bb.x
  %.4130 = phi i32 [ %i.bh, %.loopexit.loopexit ], [ 0, %bb.x ], [ %i.bi, %.loopexit.loopexit273 ] ; 4 uses
  %.3112 = phi ptr [ %.0109263, %.loopexit.loopexit ], [ %.1110, %bb.x ], [ %.1110, %.loopexit.loopexit273 ] ; 9 uses
  %.3108 = phi i32 [ %.0105264, %.loopexit.loopexit ], [ %.1106, %bb.x ], [ %.1106, %.loopexit.loopexit273 ]
  %i.bj = add nsw i32 %.4130, %.0119261           ; 2 uses
  br i1 %.not151, label %bb.aa, label %bb.z
end_hunk_0
begin_hunk_1_@a2d_ASN1_OBJECT:bb.a
  br i1 %i.bl, label %.lr.ph257.preheader.a, label %._crit_edge258

.lr.ph257.preheader.a:                            ; preds = %.preheader
  %i.bm = sext i32 %.0119261 to i64               ; 6 uses
  %i.bn = zext nneg i32 %.4130 to i64             ; 7 uses
  %i.bo = add nsw i64 %i.bn, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.4130, 33
  br i1 %min.iters.check, label %.lr.ph257.preheader397, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph257.preheader.a
end_hunk_1
begin_hunk_2_@a2d_ASN1_OBJECT:bb.a
  %bound0 = icmp ult ptr %scevgep, %scevgep391
  %bound1 = icmp ult ptr %scevgep390, %scevgep388
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph257.preheader397, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, -32                     ; 4 uses
  %i.bq = sub nsw i64 %i.bn, %n.vec
  %i.br = add nsw i64 %n.vec, %i.bm               ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.3112, i64 %i.bn
end_hunk_2
begin_hunk_3_@a2d_ASN1_OBJECT:bb.a
  store <16 x i8> %i.by, ptr %i.bz, align 1, !tbaa !15, !alias.scope !21, !noalias !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block.a, label %vector.body, !llvm.loop !23

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n.a, label %._crit_edge258.loopexit, label %.lr.ph257.preheader397

.lr.ph257.preheader397:                           ; preds = %vector.memcheck, %.lr.ph257.preheader.a, %middle.block.a
  %indvars.iv314.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph257.preheader.a ], [ %i.bq, %middle.block.a ]
  %indvars.iv312.ph = phi i64 [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph257.preheader.a ], [ %i.br, %middle.block.a ]
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader397, %.lr.ph257
end_hunk_3
begin_hunk_4_@a2d_ASN1_OBJECT:bb.a
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %indvars.iv312
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !15
  %i.cf = icmp samesign ugt i64 %indvars.iv314, 2
  br i1 %i.cf, label %.lr.ph257, label %._crit_edge258.loopexit, !llvm.loop !26

._crit_edge258.loopexit:                          ; preds = %.lr.ph257, %middle.block.a
  %indvars.iv.next313.lcssa = phi i64 [ %i.br, %middle.block.a ], [ %indvars.iv.next313, %.lr.ph257 ]
  %i.cg = trunc nsw i64 %indvars.iv.next313.lcssa to i32
  br label %._crit_edge258

end_hunk_4
begin_hunk_5_@d2i_ASN1_OBJECT:bb.a
  br i1 %.not9, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !27
  %i.j = call ptr @ossl_c2i_ASN1_OBJECT(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 2 uses
  %.not10 = icmp eq ptr %i.j, null
  br i1 %.not10, label %bb.f, label %bb.d
end_hunk_5
begin_hunk_6_@ossl_c2i_ASN1_OBJECT:bb.a
bb.e:                                             ; preds = %bb.c
  %i.h = trunc nuw nsw i64 %2 to i32              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.c, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.h, ptr %i.k, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !30
  %i.m = call i32 @OBJ_obj2nid(ptr noundef nonnull %3) #6 ; 2 uses
  %.not83 = icmp eq i32 %i.m, 0
  br i1 %.not83, label %.lr.ph.preheader, label %bb.g
end_hunk_6
begin_hunk_7_@ossl_c2i_ASN1_OBJECT:bb.a
  br i1 %.not90, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %0, align 8, !tbaa !31     ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ASN1_OBJECT_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  %i.u = and i32 %i.t, 4
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !33
  call void @CRYPTO_free(ptr noundef %i.v, ptr noundef nonnull @.str, i32 noundef 354) #6
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  call void @CRYPTO_free(ptr noundef %i.x, ptr noundef nonnull @.str, i32 noundef 355) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
end_hunk_7
begin_hunk_8_@ossl_c2i_ASN1_OBJECT:bb.a
  store ptr null, ptr %i.aa, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !13
  %.pre14.i = load i32, ptr %i.s, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_8
begin_hunk_9_@ossl_c2i_ASN1_OBJECT:bb.a
  br label %ASN1_OBJECT_free.exit

ASN1_OBJECT_free.exit:                            ; preds = %bb.h, %bb.m, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %ASN1_OBJECT_free.exit, %bb.g
end_hunk_9
begin_hunk_10_@ossl_c2i_ASN1_OBJECT:bb.a
bb.q:                                             ; preds = %.lr.ph, %bb.p
  %i.ak = add nuw nsw i32 %.06993, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %i.al = icmp eq ptr %0, null                    ; 3 uses
  br i1 %i.al, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.am = load ptr, ptr %0, align 8, !tbaa !31    ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !30
  %i.aq = and i32 %i.ap, 1
  %.not84 = icmp eq i32 %i.aq, 0
  br i1 %.not84, label %bb.t, label %bb.u
end_hunk_10
begin_hunk_11_@ossl_c2i_ASN1_OBJECT:bb.a

ASN1_OBJECT_new.exit:                             ; preds = %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i32 1, ptr %i.at, align 8, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %ASN1_OBJECT_new.exit, %bb.s
end_hunk_11
begin_hunk_12_@ossl_c2i_ASN1_OBJECT:bb.a

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %.072, i64 32 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !30
  %i.bg = or i32 %i.bf, 8
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.070 = phi ptr [ %i.bc, %bb.x ], [ %i.aw, %bb.v ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.070, ptr align 1 %i.au, i64 %2, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.072, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !30
  %i.bj = and i32 %i.bi, 4
  %.not85 = icmp eq i32 %i.bj, 0
  br i1 %.not85, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = load ptr, ptr %.072, align 8, !tbaa !33
  call void @CRYPTO_free(ptr noundef %i.bk, ptr noundef nonnull @.str, i32 noundef 310) #6
  %i.bl = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34
  call void @CRYPTO_free(ptr noundef %i.bm, ptr noundef nonnull @.str, i32 noundef 311) #6
  %i.bn = load i32, ptr %i.bh, align 8, !tbaa !30
  %i.bo = and i32 %i.bn, -5
  store i32 %i.bo, ptr %i.bh, align 8, !tbaa !30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
end_hunk_12
begin_hunk_13_@ossl_c2i_ASN1_OBJECT:bb.a
  br i1 %i.al, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %.072, ptr %0, align 8, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
end_hunk_13
begin_hunk_14_@ossl_c2i_ASN1_OBJECT:bb.a
  br i1 %i.al, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.br = load ptr, ptr %0, align 8, !tbaa !31
  %.not87 = icmp eq ptr %i.br, %.072
  br i1 %.not87, label %ASN1_OBJECT_new.exit.thread, label %bb.af

end_hunk_14
begin_hunk_15_@ASN1_OBJECT_free:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = and i32 %i.c, 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !33
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 354) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  tail call void @CRYPTO_free(ptr noundef %i.g, ptr noundef nonnull @.str, i32 noundef 355) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_15
begin_hunk_16_@ASN1_OBJECT_free:bb.a
  store ptr null, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !13
  %.pre14 = load i32, ptr %i.b, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_16
begin_hunk_17_@ASN1_OBJECT_new:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_17
begin_hunk_18_@ASN1_OBJECT_create:bb.a
bb.a:
  %5 = alloca %struct.asn1_object_st, align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr %3, ptr %5, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %0, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %2, ptr %i.d, align 4, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 13, ptr %i.e, align 8, !tbaa !30
  %i.f = call ptr @OBJ_dup(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret ptr %i.f
end_hunk_18
begin_hunk_19_@llvm.memset.p0.i64
!23 = distinct !{!23, !17, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !17, !24}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!10, !6, i64 16}
!30 = !{!10, !6, i64 32}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS14asn1_object_st", !12, i64 0}
!33 = !{!10, !11, i64 0}
!34 = !{!10, !11, i64 8}
!35 = distinct !{!35, !17, !36}
!36 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_19
