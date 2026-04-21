inline.NumInlined: 42
inline.NumDeleted: 10
begin_hunk_0_@ossl_rsa_padding_check_PKCS1_type_2:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %5 to i64                       ; 2 uses
  %i.h = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.g, ptr noundef nonnull @.str, i32 noundef 424) #7 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

end_hunk_0
begin_hunk_1_@ossl_rsa_padding_check_PKCS1_type_2:bb.a

.lr.ph107:                                        ; preds = %._crit_edge
  %i.cb = and i32 %i.bt, 255                      ; 2 uses
  %i.cc = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cb) #8, !srcloc !15 ; 2 uses
  %i.cd = xor i32 %i.cb, -1
  %i.ce = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cd) #8, !srcloc !15 ; 2 uses
  %i.cf = zext nneg i32 %2 to i64                 ; 2 uses
  %i.cg = sext i32 %i.bz to i64                   ; 6 uses
  %i.ch = sext i32 %5 to i64                      ; 2 uses
  %i.ci = xor i64 %i.cg, -1
  %i.cj = add nsw i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.usub.sat.i64(i64 %i.cf, i64 1)
  %umin = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ck) ; 2 uses
  %i.cl = add nuw nsw i64 %umin, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107
  %i.cm = add i64 %i.a, %i.cg
  %i.cn = sub i64 %i.b, %i.cm
  %diff.check = icmp ult i64 %i.cn, 16
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cl, 4294967280              ; 5 uses
  %i.co = add nsw i64 %n.vec, %i.cg
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@ossl_rsa_padding_check_PKCS1_type_2:bb.a
  store <16 x i8> %i.cw, ptr %i.cx, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block.a, label %vector.body, !llvm.loop !32

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n.a, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph107, %middle.block.a
  %indvars.iv117.ph = phi i64 [ %i.cg, %vector.memcheck ], [ %i.cg, %.lr.ph107 ], [ %i.co, %middle.block.a ]
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107 ], [ %n.vec, %middle.block.a ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_2
begin_hunk_3_@ossl_rsa_padding_check_PKCS1_type_2:bb.a
  %i.dk = icmp slt i64 %indvars.iv.next118, %i.ch
  %i.dl = icmp samesign ult i64 %indvars.iv.next116, %i.cf
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %scalar.ph, label %.loopexit.loopexit, !llvm.loop !33

bb.j:                                             ; preds = %bb.e, %bb.f
  call void @ERR_new() #7
end_hunk_3
begin_hunk_4_@ossl_rsa_padding_check_PKCS1_type_2:bb.a
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 786691, ptr noundef null) #7
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block.a
  %indvars.iv.next116.lcssa = phi i64 [ %n.vec, %middle.block.a ], [ %indvars.iv.next116, %scalar.ph ]
  %i.dn = trunc nuw nsw i64 %indvars.iv.next116.lcssa to i32
  br label %.loopexit

end_hunk_4
begin_hunk_5_@ossl_rsa_prf:bb.a
bb.w:                                             ; preds = %bb.t, %bb.u
  %i.am = add i16 %.03645, 1
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.an, label %bb.i, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.s, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.037 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.p ], [ -1, %bb.s ], [ -1, %bb.v ], [ 0, %bb.w ]
end_hunk_5
begin_hunk_6_@ossl_rsa_padding_check_PKCS1_type_2_TLS:bb.a
  %i.ag = and <4 x i32> %i.ae, %vec.phi63         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %bin.rdx = and <4 x i32> %i.ag, %i.af
end_hunk_6
begin_hunk_7_@ossl_rsa_padding_check_PKCS1_type_2_TLS:bb.a
  %i.ap = add i32 %.04655, 1                      ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ugt i64 %i.h, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.ai, %middle.block ], [ %i.ao, %.lr.ph ]
end_hunk_7
begin_hunk_8_@ossl_rsa_padding_check_PKCS1_type_2_TLS:bb.a
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond.not.2, label %.loopexit, label %scalar.ph66, !llvm.loop !37

.loopexit:                                        ; preds = %scalar.ph66, %vector.body70, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 48, %vector.body70 ], [ 48, %scalar.ph66 ]
end_hunk_8
begin_hunk_9_@llvm.vector.reduce.and.v4i32
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11, !23, !24}
!33 = distinct !{!33, !11, !23}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11, !23, !24}
!36 = distinct !{!36, !11, !23}
!37 = distinct !{!37, !11, !23}
end_hunk_9
