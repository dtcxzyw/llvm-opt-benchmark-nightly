inline.NumInlined: 18
inline.NumDeleted: 18
begin_hunk_0_@padlock_ofb_cipher:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #7 ; 3 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp ult i32 %i.j, 16
  br i1 %i.m, label %.preheader, label %.thread
end_hunk_0
begin_hunk_1_@padlock_ofb_cipher:bb.a
  br i1 %.not82, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.n = zext nneg i32 %i.j to i64                ; 6 uses
  %i.o = add i64 %3, -1
  %i.p = sub nuw nsw i64 15, %i.n
  %umin = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p) ; 2 uses
end_hunk_1
begin_hunk_2_@padlock_ofb_cipher:bb.a
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec102 = and i64 %i.q, 28                    ; 6 uses
  %i.u = add nuw nsw i64 %n.vec102, %i.n          ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %n.vec102  ; 2 uses
  %i.w = sub i64 %3, %n.vec102                    ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 %n.vec102  ; 2 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %i.n
  br label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.vector.body.1, %vec.epilog.ph
  %index103 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body.1 ] ; 4 uses
  %next.gep105.1 = getelementptr i8, ptr %1, i64 %index103
  %next.gep105 = getelementptr i8, ptr %2, i64 %index103
  %wide.load106 = load <4 x i8>, ptr %next.gep105, align 1, !tbaa !14
  %i.z = getelementptr i8, ptr %i.y, i64 %index103
  %wide.load107.1 = load <4 x i8>, ptr %i.z, align 1, !tbaa !14
  %i.aa = xor <4 x i8> %wide.load107.1, %wide.load106
  store <4 x i8> %i.aa, ptr %next.gep105.1, align 1, !tbaa !14
  %index.next108 = add nuw i64 %index103, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next108, %n.vec102
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.1
  %cmp.n109 = icmp eq i64 %i.q, %n.vec102
  br i1 %cmp.n109, label %._crit_edge.loopexit, label %.lr.ph.preheader

end_hunk_2
begin_hunk_3_@padlock_ofb_cipher:bb.a
  %i.ak = icmp samesign ult i64 %.04774, 15
  %i.al = icmp ne i64 %i.aj, 0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block
  %.lcssa94 = phi ptr [ %i.x, %vec.epilog.middle.block ], [ %i.ac, %.lr.ph ]
end_hunk_3
begin_hunk_4_@padlock_ofb_cipher:bb.a
  store <16 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !14
  %index.next135 = add nuw i64 %index127, 32      ; 2 uses
  %i.bo = icmp eq i64 %index.next135, %n.vec125
  br i1 %i.bo, label %middle.block136, label %vector.body126, !llvm.loop !48

middle.block136:                                  ; preds = %vector.body126
  %cmp.n137 = icmp eq i64 %.35370, %n.vec125
end_hunk_4
begin_hunk_5_@padlock_ofb_cipher:bb.a
  store <4 x i8> %i.bt, ptr %next.gep152, align 1, !tbaa !14
  %index.next156 = add nuw i64 %index150, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next156, %n.vec148
  br i1 %i.bu, label %vec.epilog.middle.block157, label %vec.epilog.vector.body149, !llvm.loop !49

vec.epilog.middle.block157:                       ; preds = %vec.epilog.vector.body149
  %cmp.n158 = icmp eq i64 %.35370, %n.vec148
end_hunk_5
begin_hunk_6_@padlock_ofb_cipher:bb.a
  %i.cc = add i64 %.479.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph143.prol.loopexit, label %vec.epilog.scalar.ph143.prol, !llvm.loop !50

vec.epilog.scalar.ph143.prol.loopexit:            ; preds = %vec.epilog.scalar.ph143.prol, %vec.epilog.scalar.ph143.preheader
  %.081.unr = phi ptr [ %.081.ph, %vec.epilog.scalar.ph143.preheader ], [ %i.cb, %vec.epilog.scalar.ph143.prol ]
end_hunk_6
begin_hunk_7_@padlock_ofb_cipher:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %.081, i64 4
  %i.dc = add i64 %.479, -4                       ; 2 uses
  %.not63.3 = icmp eq i64 %i.dc, 0
  br i1 %.not63.3, label %.loopexit, label %vec.epilog.scalar.ph143, !llvm.loop !51

.loopexit:                                        ; preds = %vec.epilog.scalar.ph143.prol.loopexit, %vec.epilog.scalar.ph143, %middle.block136, %vec.epilog.middle.block157, %bb.f
  %i.dd = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #7
end_hunk_7
begin_hunk_8_@llvm.umin.i64
!43 = distinct !{!43, !16, !27, !28}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !16, !27}
!46 = distinct !{!46, !16, !27, !28}
!47 = distinct !{!47, !16, !27}
!48 = distinct !{!48, !16, !27, !28}
!49 = distinct !{!49, !16, !27, !28}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !16, !27}
end_hunk_8
