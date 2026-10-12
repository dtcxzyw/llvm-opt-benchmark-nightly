Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/convert?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BN_bn2dec:bb.a
  %i.v = icmp samesign ult i32 %.02746, 18
  %i.w = icmp ugt i64 %.02845, 9
  %i.x = or i1 %.not36, %i.w
  %or.cond = and i1 %i.v, %i.x
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %.critedge.loopexit, %.critedge.preheader, %bb.d
  %.029 = phi ptr [ null, %bb.d ], [ %i.g, %.critedge.preheader ], [ %i.g, %.critedge.loopexit ] ; 3 uses
  %i.y = call i32 @BN_is_negative(ptr noundef %0) #4
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.z = call i32 @CBB_add_u8(ptr noundef nonnull %1, i8 noundef zeroext 45) #4
  %.not40 = icmp eq i32 %i.z, 0
  br i1 %.not40, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.aa = call i32 @CBB_finish(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #4
  %.not41 = icmp eq i32 %i.aa, 0
  br i1 %.not41, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %.not51 = icmp ult i64 %i.ab, 2
  br i1 %.not51, label %._crit_edge, label %.lr.ph50

._crit_edge:                                      ; preds = %.lr.ph50, %.preheader
  call void @BN_free(ptr noundef %.029) #4
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.j

.lr.ph50:                                         ; preds = %.preheader, %.lr.ph50
  %i.ad = phi i64 [ %i.aq, %.lr.ph50 ], [ %i.ab, %.preheader ]
  %.02549 = phi i64 [ %i.ap, %.lr.ph50 ], [ 0, %.preheader ] ; 3 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.02549 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = xor i64 %.02549, -1                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  store i8 %i.ak, ptr %i.af, align 1, !tbaa !16
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.am = load i64, ptr %i.b, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ah
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !16
  %i.ap = add nuw nsw i64 %.02549, 1              ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = icmp samesign ult i64 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph50, label %._crit_edge, !llvm.loop !29

.critedge.thread:                                 ; preds = %.lr.ph48, %.lr.ph, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a, %bb.b
  %.130 = phi ptr [ %.029, %bb.i ], [ %.029, %bb.h ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.g, %.lr.ph ], [ %i.g, %.lr.ph48 ]
  call void @BN_free(ptr noundef %.130) #4
  call void @CBB_cleanup(ptr noundef nonnull %1) #4
  br label %bb.j

bb.j:                                             ; preds = %.critedge.thread, %._crit_edge
  %.0 = phi ptr [ %i.ac, %._crit_edge ], [ null, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret ptr %.0
}

declare i32 @CBB_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @CBB_add_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BN_dup(ptr noundef) local_unnamed_addr #2

declare i64 @BN_div_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #2

declare i32 @CBB_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

declare void @CBB_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_dec2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bn_x2bn.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !16
  switch i8 %i.b, label %bb.d [
    i8 0, label %bn_x2bn.exit
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.035.i = phi ptr [ %i.c, %bb.c ], [ %1, %bb.b ] ; 2 uses
  %.032.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.d = zext nneg i32 %.032.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.035.i, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %i.h = tail call i32 @OPENSSL_isdigit(i32 noundef %i.g) #4, !callees !21, !inline_history !0
  %i.i = icmp ne i32 %i.h, 0
  %i.j = add nuw nsw i64 %indvars.iv.i, %i.d      ; 2 uses
  %i.k = icmp ne i64 %i.j, 2147483647
  %i.l = select i1 %i.i, i1 %i.k, i1 false
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.l, label %bb.e, label %bb.f, !llvm.loop !1

bb.f:                                             ; preds = %bb.e
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.o = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.2, i32 noundef 144) #4
  br label %bn_x2bn.exit

bb.h:                                             ; preds = %bb.f
  %i.p = icmp eq ptr %0, null
  br i1 %i.p, label %bn_x2bn.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @BN_new() #4               ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bn_x2bn.exit, label %.lr.ph.preheader.i

bb.k:                                             ; preds = %bb.i
  tail call void @BN_zero(ptr noundef nonnull %i.q) #4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %bb.k
  %.033.i = phi ptr [ %i.s, %bb.j ], [ %i.q, %bb.k ] ; 7 uses
  %i.u = urem i32 %i.m, 19                        ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %i.w = sub nuw nsw i32 19, %i.u
  %spec.store.select.i = select i1 %i.v, i32 0, i32 %i.w
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %indvars.iv.i2 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i3, %bb.n ] ; 2 uses
  %.021.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.n ]
  %.01320.i = phi i32 [ %spec.store.select.i, %.lr.ph.preheader.i ], [ %.114.i, %bb.n ]
  %i.x = mul i64 %.021.i, 10
  %i.y = getelementptr inbounds nuw i8, ptr %.035.i, i64 %indvars.iv.i2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = sext i8 %i.z to i64
  %i.ab = add i64 %i.x, -48
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = add nsw i32 %.01320.i, 1                ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 19
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.af = tail call i32 @BN_mul_word(ptr noundef nonnull %.033.i, i64 noundef -8446744073709551616) #4
  %.not.i4 = icmp eq i32 %i.af, 0
  br i1 %.not.i4, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 @BN_add_word(ptr noundef nonnull %.033.i, i64 noundef %i.ac) #4
  %.not18.i = icmp eq i32 %i.ag, 0
  br i1 %.not18.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.114.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %bb.m ]
  %.1.i = phi i64 [ %i.ac, %.lr.ph.i ], [ 0, %bb.m ]
  %indvars.iv.next.i3 = add nuw nsw i64 %indvars.iv.i2, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i3, %indvars.iv.i
  br i1 %exitcond.not.i, label %decode_dec.exit, label %.lr.ph.i, !llvm.loop !30

decode_dec.exit:                                  ; preds = %bb.n
  tail call void @bn_set_minimal_width(ptr noundef nonnull %.033.i) #4
  %i.ah = tail call i32 @BN_is_zero(ptr noundef nonnull %.033.i) #4
  %.not41.i = icmp eq i32 %i.ah, 0
  br i1 %.not41.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %decode_dec.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  store i32 %.032.i, ptr %i.ai, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %decode_dec.exit
  store ptr %.033.i, ptr %0, align 8, !tbaa !23
  br label %bn_x2bn.exit

bb.q:                                             ; preds = %bb.l, %bb.m
  %i.aj = load ptr, ptr %0, align 8, !tbaa !23
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bn_x2bn.exit

bb.r:                                             ; preds = %bb.q
  tail call void @BN_free(ptr noundef nonnull %.033.i) #4
  br label %bn_x2bn.exit

bn_x2bn.exit:                                     ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %bb.j, %bb.p, %bb.q, %bb.r
  %.034.i = phi i32 [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.a ], [ %i.n, %bb.h ], [ %i.n, %bb.p ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.q ]
  ret i32 %.034.i
}

declare i32 @OPENSSL_isdigit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_asc2bn(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !16
  %i.b = icmp eq i8 %i.a, 45
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 4 uses
  %i.c = load i8, ptr %spec.select, align 1, !tbaa !16
  %i.d = icmp eq i8 %i.c, 48
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  switch i8 %i.f, label %bb.d [
    i8 88, label %bb.c
    i8 120, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.h = tail call i32 @BN_hex2bn(ptr noundef %0, ptr noundef nonnull %i.g)
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call i32 @BN_dec2bn(ptr noundef %0, ptr noundef nonnull %spec.select)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !16
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = tail call i32 @BN_is_zero(ptr noundef %i.l) #4
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 1, ptr %i.o, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.c
  %.013 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_print(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1) #4
  %.not20 = icmp eq i32 %i.c, 1
  br i1 %.not20, label %bb.c, label %.loopexit24

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @BN_is_zero(ptr noundef nonnull %1) #4
  %.not21 = icmp eq i32 %i.d, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 1) #4
  %.not22 = icmp eq i32 %i.e, 1
  br i1 %.not22, label %bb.e, label %.loopexit24

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call i32 @bn_minimal_width(ptr noundef nonnull %1) #4 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.preheader, label %.loopexit24

.preheader.preheader:                             ; preds = %bb.e
  %i.h = zext nneg i32 %i.f to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv = phi i64 [ %i.h, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.01730 = phi i32 [ 0, %.preheader.preheader ], [ %.2.15, %.loopexit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 17 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = lshr i64 %i.k, 60                        ; 2 uses
  %i.m = icmp ne i32 %.01730, 0
  %i.n = icmp ne i64 %i.l, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.l
  %i.p = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.o, i32 noundef 1) #4
  %.not23 = icmp eq i32 %i.p, 1
  br i1 %.not23, label %.thread, label %.loopexit24

.thread:                                          ; preds = %bb.f
  %.pre = load ptr, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.next
  %.pre35 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  %i.q = lshr i64 %.pre35, 56
  %i.r = and i64 %i.q, 15
  br label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.s = lshr i64 %i.k, 56                        ; 2 uses
  %.not122 = icmp eq i64 %i.s, 0
  br i1 %.not122, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.t = phi i64 [ %i.r, %.thread ], [ %i.s, %bb.g ]
  %i.u = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.t
  %i.v = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.u, i32 noundef 1) #4
  %.not23.1 = icmp eq i32 %i.v, 1
  br i1 %.not23.1, label %._crit_edge36, label %.loopexit24

._crit_edge36:                                    ; preds = %bb.h
  %.pre37 = load ptr, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert38 = getelementptr inbounds nuw [8 x i8], ptr %.pre37, i64 %indvars.iv.next
  %.pre39 = load i64, ptr %.phi.trans.insert38, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge36, %bb.g
  %or.cond.194 = phi i1 [ false, %bb.g ], [ true, %._crit_edge36 ]
  %i.w = phi i64 [ %i.k, %bb.g ], [ %.pre39, %._crit_edge36 ] ; 3 uses
  %i.x = lshr i64 %i.w, 52
  %i.y = and i64 %i.x, 15                         ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  %or.cond.2 = select i1 %or.cond.194, i1 true, i1 %i.z
  br i1 %or.cond.2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.y
  %i.ab = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.aa, i32 noundef 1) #4
  %.not23.2 = icmp eq i32 %i.ab, 1
  br i1 %.not23.2, label %.thread96, label %.loopexit24

.thread96:                                        ; preds = %bb.j
  %.pre41 = load ptr, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert42 = getelementptr inbounds nuw [8 x i8], ptr %.pre41, i64 %indvars.iv.next
  %.pre43 = load i64, ptr %.phi.trans.insert42, align 8, !tbaa !19
  %i.ac = lshr i64 %.pre43, 48
  %i.ad = and i64 %i.ac, 15
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = lshr i64 %i.w, 48
  %i.af = and i64 %i.ae, 15                       ; 2 uses
  %.not123 = icmp eq i64 %i.af, 0
  br i1 %.not123, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread96, %bb.k
  %i.ag = phi i64 [ %i.ad, %.thread96 ], [ %i.af, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.ag
  %i.ai = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.ah, i32 noundef 1) #4
  %.not23.3 = icmp eq i32 %i.ai, 1
  br i1 %.not23.3, label %._crit_edge44, label %.loopexit24

._crit_edge44:                                    ; preds = %bb.l
  %.pre45 = load ptr, ptr %1, align 8, !tbaa !17
  %.phi.trans.insert46 = getelementptr inbounds nuw [8 x i8], ptr %.pre45, i64 %indvars.iv.next
  %.pre47 = load i64, ptr %.phi.trans.insert46, align 8, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge44, %bb.k
  %or.cond.398 = phi i1 [ false, %bb.k ], [ true, %._crit_edge44 ]
  %i.aj = phi i64 [ %i.w, %bb.k ], [ %.pre47, %._crit_edge44 ] ; 3 uses
  %i.ak = lshr i64 %i.aj, 44
  %i.al = and i64 %i.ak, 15                       ; 2 uses
  %i.am = icmp ne i64 %i.al, 0
  %or.cond.4 = select i1 %or.cond.398, i1 true, i1 %i.am
  br i1 %or.cond.4, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr @hextable, i64 %i.al
  %i.ao = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull %i.an, i32 noundef 1) #4
  %.not23.4 = icmp eq i32 %i.ao, 1
  br i1 %.not23.4, label %.thread100, label %.loopexit24
end_hunk_0
