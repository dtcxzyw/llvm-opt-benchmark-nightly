begin_hunk_0_@horAcc64:bb.a
.lr.ph.us:                                        ; preds = %middle.block, %.lr.ph.us.preheader
  %.045.us.ph = phi i64 [ %i.j, %.lr.ph.us.preheader ], [ %i.l, %middle.block ] ; 2 uses
  %.144.us.ph = phi ptr [ %.038.us, %.lr.ph.us.preheader ], [ %i.n, %middle.block ] ; 6 uses
  %i.ar = load i64, ptr %.144.us.ph, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.144.us.ph, i64 %.fr46 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !79
  %i.au = add i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.as, align 8, !tbaa !79
  %i.av = getelementptr inbounds nuw i8, ptr %.144.us.ph, i64 8 ; 4 uses
  %i.aw = icmp samesign ugt i64 %.045.us.ph, 1
  br i1 %i.aw, label %.lr.ph.us.1, label %.loopexit56

.lr.ph.us.1:                                      ; preds = %.lr.ph.us
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.fr46 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !79
  %i.ba = add i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %.144.us.ph, i64 16 ; 4 uses
  %i.bc = icmp eq i64 %.045.us.ph, 3
  br i1 %i.bc, label %.lr.ph.us.2, label %.loopexit56

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.1
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.fr46 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !79
  %i.bg = add i64 %i.bf, %i.bd
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %.144.us.ph, i64 24
  br label %.loopexit56

.split:                                           ; preds = %bb.d, %bb.h
  %.038 = phi ptr [ %.6, %bb.h ], [ %1, %bb.d ]   ; 7 uses
  %.037 = phi i64 [ %i.cc, %bb.h ], [ %i.i, %bb.d ]
  switch i64 %.fr46, label %.loopexit [
    i64 0, label %bb.h
    i64 3, label %bb.e
    i64 2, label %bb.f
    i64 1, label %bb.g
  ]

.loopexit:                                        ; preds = %.split
  %i.bi = load i64, ptr %.038, align 8, !tbaa !79
  %i.bj = getelementptr inbounds [8 x i8], ptr %.038, i64 %.fr46 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !79
  %i.bl = add i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !79
  %i.bm = getelementptr inbounds nuw i8, ptr %.038, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split
  %.3 = phi ptr [ %i.bm, %.loopexit ], [ %.038, %.split ] ; 3 uses
  %i.bn = load i64, ptr %.3, align 8, !tbaa !79
  %i.bo = getelementptr inbounds [8 x i8], ptr %.3, i64 %.fr46 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !79
  %i.bq = add i64 %i.bp, %i.bn
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %.3, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %.4 = phi ptr [ %i.br, %bb.e ], [ %.038, %.split ] ; 3 uses
  %i.bs = load i64, ptr %.4, align 8, !tbaa !79
  %i.bt = getelementptr inbounds [8 x i8], ptr %.4, i64 %.fr46 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !79
  %i.bv = add i64 %i.bu, %i.bs
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !79
  %i.bw = getelementptr inbounds nuw i8, ptr %.4, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.5 = phi ptr [ %i.bw, %bb.f ], [ %.038, %.split ] ; 3 uses
  %i.bx = load i64, ptr %.5, align 8, !tbaa !79
  %i.by = getelementptr inbounds [8 x i8], ptr %.5, i64 %.fr46 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !79
  %i.ca = add i64 %i.bz, %i.bx
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !79
  %i.cb = getelementptr inbounds nuw i8, ptr %.5, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.6 = phi ptr [ %i.cb, %bb.g ], [ %.038, %.split ]
  %i.cc = sub nsw i64 %.037, %.fr46               ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.split, label %.loopexit43

.loopexit43:                                      ; preds = %bb.h, %.loopexit56, %bb.c, %bb.b
  %.039 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.loopexit56 ], [ 1, %bb.h ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorDecodeRow(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 noundef zeroext %3) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PredictorDecodeTile(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 noundef zeroext %3) #10
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !63   ; 4 uses
  %i.h = srem i64 %2, %i.g
  %.not21 = icmp eq i64 %i.h, 0
  br i1 %.not21, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = icmp sgt i64 %2, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22) #10
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.01924 = phi ptr [ %i.n, %bb.d ], [ %1, %.preheader ] ; 2 uses
  %.02023 = phi i64 [ %i.m, %bb.d ], [ %2, %.preheader ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.l = tail call i32 %i.k(ptr noundef %0, ptr noundef %.01924, i64 noundef %i.g) #10
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = sub nsw i64 %.02023, %i.g                ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.01924, i64 %i.g
  %i.o = icmp sgt i64 %i.m, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %.preheader, %bb.a, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %.preheader ], [ 1, %bb.d ], [ 0, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorAcc16(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = sdiv i64 %2, 2
  tail call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %i.a) #10
  %i.b = tail call i32 @horAcc16(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %i.b
}

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorAcc32(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = sdiv i64 %2, 4
  tail call void @TIFFSwabArrayOfLong(ptr noundef %1, i64 noundef %i.a) #10
  %i.b = tail call i32 @horAcc32(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorAcc64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = sdiv i64 %2, 8
  tail call void @TIFFSwabArrayOfLong8(ptr noundef %1, i64 noundef %i.a) #10
  %i.b = tail call i32 @horAcc64(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fpAcc(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i16, ptr %i.e, align 4, !tbaa !81
  %i.g = lshr i16 %i.f, 3                         ; 6 uses
  %i.h = zext nneg i16 %i.g to i64                ; 3 uses
  %i.i = zext nneg i16 %i.g to i64                ; 5 uses
  %i.j = sdiv i64 %2, %i.i                        ; 11 uses
  %i.k = mul nsw i64 %i.d, %i.i
  %i.l = srem i64 %2, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24) #10
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %2) #10 ; 5 uses
  %.not171 = icmp eq ptr %i.m, null
  br i1 %.not171, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.d, 1
  br i1 %i.n, label %.preheader188, label %.preheader190

.preheader190:                                    ; preds = %bb.d
  %i.o = icmp sgt i64 %2, %i.d
  br i1 %i.o, label %.lr.ph196, label %.loopexit187

.lr.ph196:                                        ; preds = %.preheader190
  %i.p = add i64 %i.d, -4                         ; 9 uses
  %i.q = icmp sgt i64 %i.d, 4
  %min.iters.check = icmp ult i64 %i.p, 4
  %min.iters.check234 = icmp ult i64 %i.p, 32
  %n.mod.vf = and i64 %i.p, 28
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  %i.r = and i64 %i.p, 31
  %cmp.n = icmp eq i64 %i.p, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec240 = and i64 %i.p, -4                    ; 3 uses
  %i.s = and i64 %i.d, 3
  %cmp.n246 = icmp eq i64 %i.p, %n.vec240
  br label %bb.e

.preheader188:                                    ; preds = %bb.d
  %i.t = icmp sgt i64 %2, 8
  br i1 %i.t, label %.lr.ph199.preheader, label %.preheader186

.lr.ph199.preheader:                              ; preds = %.preheader188
  %.pre = load i8, ptr %1, align 1, !tbaa !64
  br label %.lr.ph199

.preheader186:                                    ; preds = %.lr.ph199, %.preheader188
  %.0159.lcssa = phi ptr [ %1, %.preheader188 ], [ %i.ar, %.lr.ph199 ] ; 3 uses
  %.0158.lcssa = phi i64 [ %2, %.preheader188 ], [ %i.at, %.lr.ph199 ] ; 5 uses
  %i.u = icmp sgt i64 %.0158.lcssa, 1
  br i1 %i.u, label %.lr.ph204.preheader, label %.loopexit187

.lr.ph204.preheader:                              ; preds = %.preheader186
  %.pre219 = load i8, ptr %.0159.lcssa, align 1, !tbaa !64 ; 2 uses
  %i.v = add nuw i64 %.0158.lcssa, 3
  %i.w = add nsw i64 %.0158.lcssa, -2
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader, %.lr.ph204.prol
  %i.x = phi i8 [ %.narrow176.prol, %.lr.ph204.prol ], [ %.pre219, %.lr.ph204.preheader ]
  %.1203.prol = phi i64 [ %i.aa, %.lr.ph204.prol ], [ %.0158.lcssa, %.lr.ph204.preheader ]
  %.1160202.prol = phi ptr [ %i.y, %.lr.ph204.prol ], [ %.0159.lcssa, %.lr.ph204.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph204.prol ], [ 0, %.lr.ph204.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.1160202.prol, i64 1 ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  %.narrow176.prol = add i8 %i.x, %i.z            ; 3 uses
  store i8 %.narrow176.prol, ptr %i.y, align 1, !tbaa !64
  %i.aa = add nsw i64 %.1203.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol, !llvm.loop !82

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader
  %.unr = phi i8 [ %.pre219, %.lr.ph204.preheader ], [ %.narrow176.prol, %.lr.ph204.prol ]
  %.1203.unr = phi i64 [ %.0158.lcssa, %.lr.ph204.preheader ], [ %i.aa, %.lr.ph204.prol ]
  %.1160202.unr = phi ptr [ %.0159.lcssa, %.lr.ph204.preheader ], [ %i.y, %.lr.ph204.prol ]
  %i.ab = icmp ult i64 %i.w, 3
  br i1 %i.ab, label %.loopexit187, label %.lr.ph204

.lr.ph199:                                        ; preds = %.lr.ph199.preheader, %.lr.ph199
  %i.ac = phi i8 [ %.narrow184, %.lr.ph199 ], [ %.pre, %.lr.ph199.preheader ]
  %.0158198 = phi i64 [ %i.at, %.lr.ph199 ], [ %2, %.lr.ph199.preheader ] ; 2 uses
  %.0159197 = phi ptr [ %i.ar, %.lr.ph199 ], [ %1, %.lr.ph199.preheader ] ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0159197, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64
  %.narrow177 = add i8 %i.ac, %i.ae               ; 2 uses
  store i8 %.narrow177, ptr %i.ad, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %.0159197, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %.narrow178 = add i8 %i.ag, %.narrow177         ; 2 uses
  store i8 %.narrow178, ptr %i.af, align 1, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0159197, i64 3 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !64
  %.narrow179 = add i8 %i.ai, %.narrow178         ; 2 uses
  store i8 %.narrow179, ptr %i.ah, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %.0159197, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !64
  %.narrow180 = add i8 %i.ak, %.narrow179         ; 2 uses
  store i8 %.narrow180, ptr %i.aj, align 1, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %.0159197, i64 5 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %.narrow181 = add i8 %i.am, %.narrow180         ; 2 uses
  store i8 %.narrow181, ptr %i.al, align 1, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %.0159197, i64 6 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !64
  %.narrow182 = add i8 %i.ao, %.narrow181         ; 2 uses
  store i8 %.narrow182, ptr %i.an, align 1, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0159197, i64 7 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !64
  %.narrow183 = add i8 %i.aq, %.narrow182         ; 2 uses
  store i8 %.narrow183, ptr %i.ap, align 1, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0159197, i64 8 ; 4 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !64
  %.narrow184 = add i8 %i.as, %.narrow183         ; 2 uses
  store i8 %.narrow184, ptr %i.ar, align 1, !tbaa !64
  %i.at = add nsw i64 %.0158198, -8               ; 2 uses
  %i.au = icmp samesign ugt i64 %.0158198, 16
  br i1 %i.au, label %.lr.ph199, label %.preheader186

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %i.av = phi i8 [ %.narrow176.3, %.lr.ph204 ], [ %.unr, %.lr.ph204.prol.loopexit ]
  %.1203 = phi i64 [ %i.be, %.lr.ph204 ], [ %.1203.unr, %.lr.ph204.prol.loopexit ] ; 2 uses
  %.1160202 = phi ptr [ %i.bc, %.lr.ph204 ], [ %.1160202.unr, %.lr.ph204.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.1160202, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !64
  %.narrow176 = add i8 %i.av, %i.ax               ; 2 uses
  store i8 %.narrow176, ptr %i.aw, align 1, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %.1160202, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !64
  %.narrow176.1 = add i8 %.narrow176, %i.az       ; 2 uses
  store i8 %.narrow176.1, ptr %i.ay, align 1, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %.1160202, i64 3 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %.narrow176.2 = add i8 %.narrow176.1, %i.bb     ; 2 uses
  store i8 %.narrow176.2, ptr %i.ba, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %.1160202, i64 4 ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %.narrow176.3 = add i8 %.narrow176.2, %i.bd     ; 2 uses
  store i8 %.narrow176.3, ptr %i.bc, align 1, !tbaa !64
  %i.be = add nsw i64 %.1203, -4
  %i.bf = icmp sgt i64 %.1203, 5
  br i1 %i.bf, label %.lr.ph204, label %.loopexit187

bb.e:                                             ; preds = %.lr.ph196, %bb.i
  %.2195 = phi i64 [ %2, %.lr.ph196 ], [ %i.cn, %bb.i ]
  %.2161194 = phi ptr [ %1, %.lr.ph196 ], [ %.8, %bb.i ] ; 10 uses
  switch i64 %i.d, label %bb.f [
    i64 4, label %.loopexit189
    i64 3, label %bb.g
    i64 2, label %bb.h
    i64 0, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %iter.check, label %.loopexit189

iter.check:                                       ; preds = %bb.f
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check234, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bg = getelementptr i8, ptr %.2161194, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.2161194, i64 %index ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %next.gep, i64 %i.d ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bh, align 1, !tbaa !64
  %wide.load235 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !64
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load236 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !64
  %wide.load237 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !64
  %i.bk = add <16 x i8> %wide.load236, %wide.load
  %i.bl = add <16 x i8> %wide.load237, %wide.load235
  store <16 x i8> %i.bk, ptr %i.bh, align 1, !tbaa !64
  store <16 x i8> %i.bl, ptr %i.bi, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit189, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bn = getelementptr i8, ptr %.2161194, i64 %n.vec240 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index241 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next245, %vec.epilog.vector.body ] ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.2161194, i64 %index241 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep242, i64 %i.d ; 2 uses
  %wide.load243 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !64
  %wide.load244 = load <4 x i8>, ptr %next.gep242, align 1, !tbaa !64
  %i.bp = add <4 x i8> %wide.load244, %wide.load243
  store <4 x i8> %i.bp, ptr %i.bo, align 1, !tbaa !64
  %index.next245 = add nuw i64 %index241, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next245, %n.vec240
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n246, label %.loopexit189, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3162193.ph = phi ptr [ %.2161194, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.0165192.ph = phi i64 [ %i.p, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.3162193 = phi ptr [ %i.bu, %.lr.ph ], [ %.3162193.ph, %.lr.ph.preheader ] ; 3 uses
  %.0165192 = phi i64 [ %i.bv, %.lr.ph ], [ %.0165192.ph, %.lr.ph.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3162193, i64 %i.d ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !64
  %i.bt = load i8, ptr %.3162193, align 1, !tbaa !64
  %.narrow175 = add i8 %i.bt, %i.bs
  store i8 %.narrow175, ptr %i.br, align 1, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %.3162193, i64 1 ; 2 uses
  %i.bv = add nsw i64 %.0165192, -1
  %i.bw = icmp samesign ugt i64 %.0165192, 1
  br i1 %i.bw, label %.lr.ph, label %.loopexit189, !llvm.loop !85

.loopexit189:                                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.f, %bb.e
  %.4163 = phi ptr [ %.2161194, %bb.e ], [ %.2161194, %bb.f ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.bu, %.lr.ph ] ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.4163, i64 %i.d ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !64
  %i.bz = load i8, ptr %.4163, align 1, !tbaa !64
  %.narrow = add i8 %i.bz, %i.by
  store i8 %.narrow, ptr %i.bx, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %.4163, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit189, %bb.e
  %.5164 = phi ptr [ %i.ca, %.loopexit189 ], [ %.2161194, %bb.e ] ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %.5164, i64 %i.d ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64
  %i.cd = load i8, ptr %.5164, align 1, !tbaa !64
  %.narrow172 = add i8 %i.cd, %i.cc
  store i8 %.narrow172, ptr %i.cb, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %.5164, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.6 = phi ptr [ %i.ce, %bb.g ], [ %.2161194, %bb.e ] ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %.6, i64 %i.d ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !64
  %i.ch = load i8, ptr %.6, align 1, !tbaa !64
  %.narrow173 = add i8 %i.ch, %i.cg
  store i8 %.narrow173, ptr %i.cf, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.d ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = load i8, ptr %i.ci, align 1, !tbaa !64
  %.narrow174 = add i8 %i.cl, %i.ck
  store i8 %.narrow174, ptr %i.cj, align 1, !tbaa !64
  %i.cm = getelementptr inbounds nuw i8, ptr %.6, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.8 = phi ptr [ %i.cm, %bb.h ], [ %.2161194, %bb.e ]
  %i.cn = sub nsw i64 %.2195, %i.d                ; 2 uses
  %i.co = icmp sgt i64 %i.cn, %i.d
  br i1 %i.co, label %bb.e, label %.loopexit187

.loopexit187:                                     ; preds = %bb.i, %.lr.ph204.prol.loopexit, %.lr.ph204, %.preheader190, %.preheader186
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.m, ptr noundef %1, i64 noundef %2) #10
  %i.cp = icmp eq i16 %i.g, 4
  %i.cq = icmp sgt i64 %i.j, 15
  %or.cond = and i1 %i.cp, %i.cq
  br i1 %or.cond, label %.lr.ph206, label %.loopexit

.lr.ph206:                                        ; preds = %.loopexit187
  %i.cr = mul nuw nsw i64 %i.j, 3
  %i.cs = shl nuw nsw i64 %i.j, 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph206, %bb.j
  %.3205 = phi i64 [ 0, %.lr.ph206 ], [ %i.ds, %bb.j ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 %.3205 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  %i.cv = load <16 x i8>, ptr %i.cu, align 1, !tbaa !64 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  %i.cx = load <16 x i8>, ptr %i.cw, align 1, !tbaa !64 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.j
  %i.cz = load <16 x i8>, ptr %i.cy, align 1, !tbaa !64 ; 2 uses
  %i.da = load <16 x i8>, ptr %i.ct, align 1, !tbaa !64 ; 2 uses
  %i.db = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dc = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cx, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dd = shufflevector <16 x i8> %i.cz, <16 x i8> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.de = shufflevector <16 x i8> %i.cz, <16 x i8> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.df = bitcast <16 x i8> %i.db to <8 x i16>    ; 2 uses
  %i.dg = bitcast <16 x i8> %i.dd to <8 x i16>    ; 2 uses
  %i.dh = shufflevector <8 x i16> %i.df, <8 x i16> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.di = shufflevector <8 x i16> %i.df, <8 x i16> %i.dg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dj = bitcast <16 x i8> %i.dc to <8 x i16>    ; 2 uses
  %i.dk = bitcast <16 x i8> %i.de to <8 x i16>    ; 2 uses
  %i.dl = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dm = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dn = shl nsw i64 %.3205, 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn ; 4 uses
  store <8 x i16> %i.dh, ptr %i.do, align 1, !tbaa !64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <8 x i16> %i.di, ptr %i.dp, align 1, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store <8 x i16> %i.dl, ptr %i.dq, align 1, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  store <8 x i16> %i.dm, ptr %i.dr, align 1, !tbaa !64
  %i.ds = add nuw nsw i64 %.3205, 16              ; 4 uses
  %i.dt = or disjoint i64 %i.ds, 15
  %i.du = icmp slt i64 %i.dt, %i.j
  br i1 %i.du, label %bb.j, label %.loopexit.thread

.loopexit:                                        ; preds = %.loopexit187
  %i.dv = icmp slt i64 %i.j, 1
  %.not212 = icmp eq i16 %i.g, 0
  %or.cond236 = or i1 %i.dv, %.not212
  br i1 %or.cond236, label %._crit_edge211.split, label %.preheader.preheader

.loopexit.thread:                                 ; preds = %bb.j
  %3 = icmp samesign ult i64 %i.ds, %i.j
  br i1 %3, label %.preheader.preheader, label %._crit_edge211.split

.preheader.preheader:                             ; preds = %.loopexit, %.loopexit.thread
  %.4228231 = phi i64 [ 0, %.loopexit ], [ %i.ds, %.loopexit.thread ]
  %xtraiter253 = and i64 %i.i, 1
  %i.dw = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %i.i, 8190
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  %lcmp.mod255 = trunc i16 %i.g to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.5210 = phi i64 [ %i.es, %._crit_edge ], [ %.4228231, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %.5210 ; 3 uses
  %i.dx = mul nuw nsw i64 %.5210, %i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx ; 3 uses
  br i1 %i.dw, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.dz = xor i64 %indvars.iv, -1
  %i.ea = add nsw i64 %i.dz, %i.h
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = mul nsw i64 %i.j, %i.eb
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ec
  %i.ed = load i8, ptr %gep, align 1, !tbaa !64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !64
  %i.ef = xor i64 %indvars.iv, 4294967294
  %i.eg = add nuw i64 %i.ef, %i.h
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = mul nsw i64 %i.j, %i.eh
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ei
  %i.ej = load i8, ptr %gep.1, align 1, !tbaa !64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod254.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.em = xor i64 %indvars.iv.epil.init, -1
  %i.en = add nsw i64 %i.em, %i.h
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = mul nsw i64 %i.j, %i.eo
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.ep
  %i.eq = load i8, ptr %gep.epil, align 1, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.epil.init
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.es = add nuw nsw i64 %.5210, 1               ; 2 uses
  %exitcond218.not = icmp eq i64 %i.es, %i.j
  br i1 %exitcond218.not, label %._crit_edge211.split, label %.preheader

._crit_edge211.split:                             ; preds = %._crit_edge, %.loopexit.thread, %.loopexit
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %._crit_edge211.split, %bb.b
  %.0157 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge211.split ], [ 0, %bb.c ]
  ret i32 %.0157
}

declare i64 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #1

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfLong8(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @horDiff8(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62   ; 20 uses
  %i.e = srem i64 %2, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i64 %2, %i.d
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = sub nsw i64 %2, %i.d                     ; 5 uses
  switch i64 %i.d, label %bb.i [
    i64 3, label %bb.e
    i64 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %1, align 1, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0107 = phi i8 [ %i.h, %bb.e ], [ %i.n, %bb.f ]
  %.0106 = phi i8 [ %i.j, %bb.e ], [ %i.q, %bb.f ]
  %.0105 = phi i8 [ %i.l, %bb.e ], [ %i.t, %bb.f ]
  %.0102 = phi ptr [ %1, %bb.e ], [ %i.m, %bb.f ] ; 3 uses
  %.0101 = phi i64 [ %i.g, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0102, i64 3 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64    ; 2 uses
  %i.o = sub i8 %i.n, %.0107
  store i8 %i.o, ptr %i.m, align 1, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %.0102, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64    ; 2 uses
  %i.r = sub i8 %i.q, %.0106
  store i8 %i.r, ptr %i.p, align 1, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %.0102, i64 5 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !64    ; 2 uses
  %i.u = sub i8 %i.t, %.0105
  store i8 %i.u, ptr %i.s, align 1, !tbaa !64
  %i.v = add nsw i64 %.0101, -3
  %i.w = icmp sgt i64 %.0101, 3
  br i1 %i.w, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.x = load <4 x i8>, ptr %1, align 1, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.1103 = phi ptr [ %1, %bb.g ], [ %i.z, %bb.h ]
  %.1 = phi i64 [ %i.g, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %i.y = phi <4 x i8> [ %i.x, %bb.g ], [ %i.aa, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %.1103, i64 4 ; 3 uses
  %i.aa = load <4 x i8>, ptr %i.z, align 1, !tbaa !64 ; 2 uses
  %i.ab = sub <4 x i8> %i.aa, %i.y
  store <4 x i8> %i.ab, ptr %i.z, align 1, !tbaa !64
  %i.ac = add nsw i64 %.1, -4
  %i.ad = icmp sgt i64 %.1, 4
  br i1 %i.ad, label %bb.h, label %.loopexit

bb.i:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %1, i64 %i.g
  %i.af = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  %i.ag = add i64 %i.d, -4                        ; 10 uses
  %i.ah = icmp sgt i64 %i.d, 4
  br i1 %i.ah, label %iter.check.preheader, label %.split

iter.check.preheader:                             ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ag, 8
  %min.iters.check131 = icmp ult i64 %i.ag, 16
  %n.mod.vf = and i64 %i.ag, 8
  %n.vec = and i64 %i.ag, -16                     ; 4 uses
  %i.ai = sub i64 0, %n.vec
  %i.aj = and i64 %i.ag, 15
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  %n.vec137 = and i64 %i.ag, -8                   ; 3 uses
  %i.ak = sub i64 0, %n.vec137
  %i.al = and i64 %i.ag, 7
  %cmp.n147 = icmp eq i64 %i.ag, %n.vec137
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit150
  %.2104.us = phi ptr [ %i.bp, %.loopexit150 ], [ %i.af, %iter.check.preheader ] ; 5 uses
  %.2.us = phi i64 [ %i.bq, %.loopexit150 ], [ %i.g, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = getelementptr i8, ptr %.2104.us, i64 %i.ai ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.2104.us, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep, i64 %i.d
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -15 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !64
  %i.aq = getelementptr i8, ptr %next.gep, i64 -15
  %wide.load132 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !64
  %i.ar = sub <16 x i8> %wide.load, %wide.load132
  store <16 x i8> %i.ar, ptr %i.ap, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.am, i64 1
  br i1 %cmp.n, label %.loopexit150, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.at = getelementptr i8, ptr %.2104.us, i64 %i.ak ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.au = sub i64 0, %index138
  %next.gep139 = getelementptr i8, ptr %.2104.us, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep139, i64 %i.d
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -7 ; 2 uses
  %wide.load140 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !64
  %i.ax = getelementptr i8, ptr %next.gep139, i64 -7
  %wide.load142 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !64
  %i.ay = sub <8 x i8> %wide.load140, %wide.load142
  store <8 x i8> %i.ay, ptr %i.aw, align 1, !tbaa !64
  %index.next145 = add nuw i64 %index138, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next145, %n.vec137
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape146 = getelementptr i8, ptr %i.at, i64 1
  br i1 %cmp.n147, label %.loopexit150, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0118.us.ph = phi i64 [ %i.ag, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.3117.us.ph = phi ptr [ %.2104.us, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit150:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.3117.us.lcssa = phi ptr [ %ind.escape146, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.3117.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.at, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bv, %.lr.ph.us ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %i.d ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = load i8, ptr %.lcssa, align 1, !tbaa !64
  %.narrow.us = sub i8 %i.bb, %i.bc
  store i8 %.narrow.us, ptr %i.ba, align 1, !tbaa !64
  %i.bd = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.d ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = load i8, ptr %i.bd, align 1, !tbaa !64
  %.narrow111.us = sub i8 %i.bf, %i.bg
  store i8 %.narrow111.us, ptr %i.be, align 1, !tbaa !64
  %i.bh = getelementptr inbounds i8, ptr %.3117.us.lcssa, i64 -3 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.d ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !64
  %.narrow112.us = sub i8 %i.bj, %i.bk
end_hunk_0
begin_hunk_1_@horDiff64:bb.a
  %i.bu = sub i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !79
  %i.bv = getelementptr inbounds i8, ptr %.4, i64 -8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.5 = phi ptr [ %i.bv, %bb.f ], [ %.041, %.split ] ; 3 uses
  %i.bw = load i64, ptr %.5, align 8, !tbaa !79
  %i.bx = getelementptr inbounds [8 x i8], ptr %.5, i64 %.fr49 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !79
  %i.bz = sub i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !79
  %i.ca = getelementptr inbounds i8, ptr %.5, i64 -8
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.6 = phi ptr [ %i.ca, %bb.g ], [ %.041, %.split ]
  %i.cb = sub nsw i64 %.040, %.fr49               ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.split, label %.loopexit46

.loopexit46:                                      ; preds = %bb.h, %.loopexit64, %bb.c, %bb.b
  %.042 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.loopexit64 ], [ 1, %bb.h ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeRow(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %2) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorEncodeRow.module, ptr noundef nonnull @.str.31, i64 noundef %2) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2, i16 noundef zeroext %3) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeTile(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %2) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i64 noundef %2) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 4 uses
  %i.g = srem i64 %2, %i.f
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.03438 = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %.03537 = phi i64 [ %2, %.lr.ph ], [ %i.l, %bb.e ]
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %.03438, i64 noundef %i.f) #10 ; 0 uses
  %i.l = sub nsw i64 %.03537, %i.f                ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.03438, i64 %i.f
  %i.n = icmp sgt i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2, i16 noundef zeroext %3) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.q, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff16(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff16(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 2
  tail call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff32(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff32(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 4
  tail call void @TIFFSwabArrayOfLong(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff64(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 8
  tail call void @TIFFSwabArrayOfLong8(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fpDiff(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !62
  %.fr100 = freeze i64 %i.d                       ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i16, ptr %i.e, align 4, !tbaa !81
  %i.g = lshr i16 %i.f, 3                         ; 6 uses
  %i.h = zext nneg i16 %i.g to i64                ; 3 uses
  %i.i = zext nneg i16 %i.g to i64                ; 3 uses
  %i.j = sdiv i64 %2, %i.i                        ; 5 uses
  %i.k = mul nsw i64 %.fr100, %i.i
  %i.l = srem i64 %2, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.35) #10
  br label %.loopexit89

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %2) #10 ; 4 uses
  %.not84 = icmp eq ptr %i.m, null
  br i1 %.not84, label %.loopexit89, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.m, ptr noundef %1, i64 noundef %2) #10
  %3 = icmp slt i64 %i.j, 1
  %.not98 = icmp eq i16 %i.g, 0
  %or.cond = or i1 %3, %.not98
  br i1 %or.cond, label %._crit_edge92.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %wide.trip.count = zext nneg i16 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count, 8190
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod134 = trunc i16 %i.g to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07891 = phi i64 [ %i.aj, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %.07891 ; 3 uses
  %i.o = mul nuw nsw i64 %.07891, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 3 uses
  br i1 %i.n, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !64
  %i.s = xor i64 %indvars.iv, -1
  %i.t = add nsw i64 %i.s, %i.h
  %i.u = and i64 %i.t, 4294967295
  %i.v = mul nuw nsw i64 %i.j, %i.u
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.v
  store i8 %i.r, ptr %gep, align 1, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !64
  %i.z = xor i64 %indvars.iv, 4294967294
  %i.aa = add nuw i64 %i.z, %i.h
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = mul nuw nsw i64 %i.j, %i.ab
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ac
  store i8 %i.y, ptr %gep.1, align 1, !tbaa !64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.epil.init
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64
  %i.af = xor i64 %indvars.iv.epil.init, -1
  %i.ag = add nsw i64 %i.af, %i.h
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = mul nuw nsw i64 %i.j, %i.ah
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.ai
  store i8 %i.ae, ptr %gep.epil, align 1, !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.aj = add nuw nsw i64 %.07891, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.aj, %i.j
  br i1 %exitcond103.not, label %._crit_edge92.split, label %.preheader

._crit_edge92.split:                              ; preds = %._crit_edge, %bb.d
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  %i.ak = icmp sgt i64 %2, %.fr100
  br i1 %i.ak, label %.lr.ph99, label %.loopexit89

.lr.ph99:                                         ; preds = %._crit_edge92.split
  %i.al = getelementptr i8, ptr %1, i64 %2
  %i.am = xor i64 %.fr100, -1
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am  ; 2 uses
  %i.ao = add i64 %.fr100, -4                     ; 10 uses
  %i.ap = icmp sgt i64 %.fr100, 4
  br i1 %i.ap, label %iter.check.preheader, label %.lr.ph99.split

iter.check.preheader:                             ; preds = %.lr.ph99
  %min.iters.check = icmp ult i64 %i.ao, 8
  %min.iters.check111 = icmp ult i64 %i.ao, 16
  %n.mod.vf = and i64 %i.ao, 8
  %n.vec = and i64 %i.ao, -16                     ; 4 uses
  %i.aq = sub i64 0, %n.vec
  %i.ar = and i64 %i.ao, 15
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  %n.vec117 = and i64 %i.ao, -8                   ; 3 uses
  %i.as = sub i64 0, %n.vec117
  %i.at = and i64 %i.ao, 7
  %cmp.n127 = icmp eq i64 %i.ao, %n.vec117
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit130
  %.07797.us = phi ptr [ %i.bx, %.loopexit130 ], [ %i.an, %iter.check.preheader ] ; 5 uses
  %.17996.us = phi i64 [ %i.by, %.loopexit130 ], [ %2, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = getelementptr i8, ptr %.07797.us, i64 %i.aq ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.07797.us, i64 %i.av ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep, i64 %.fr100
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -15 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !tbaa !64
  %i.ay = getelementptr i8, ptr %next.gep, i64 -15
  %wide.load112 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !64
  %i.az = sub <16 x i8> %wide.load, %wide.load112
  store <16 x i8> %i.az, ptr %i.ax, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.au, i64 1
  br i1 %cmp.n, label %.loopexit130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bb = getelementptr i8, ptr %.07797.us, i64 %i.as ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = sub i64 0, %index118
  %next.gep119 = getelementptr i8, ptr %.07797.us, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep119, i64 %.fr100
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -7 ; 2 uses
  %wide.load120 = load <8 x i8>, ptr %i.be, align 1, !tbaa !64
  %i.bf = getelementptr i8, ptr %next.gep119, i64 -7
  %wide.load122 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !64
  %i.bg = sub <8 x i8> %wide.load120, %wide.load122
  store <8 x i8> %i.bg, ptr %i.be, align 1, !tbaa !64
  %index.next125 = add nuw i64 %index118, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape126 = getelementptr i8, ptr %i.bb, i64 1
  br i1 %cmp.n127, label %.loopexit130, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.094.us.ph = phi i64 [ %i.ao, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.193.us.ph = phi ptr [ %.07797.us, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.loopexit130:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.193.us.lcssa = phi ptr [ %ind.escape126, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.193.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.bb, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %i.cd, %.lr.ph.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.fr100 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !64
  %i.bk = load i8, ptr %.lcssa, align 1, !tbaa !64
  %.narrow.us = sub i8 %i.bj, %i.bk
  store i8 %.narrow.us, ptr %i.bi, align 1, !tbaa !64
  %i.bl = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -2 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr100 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !64
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !64
  %.narrow85.us = sub i8 %i.bn, %i.bo
  store i8 %.narrow85.us, ptr %i.bm, align 1, !tbaa !64
  %i.bp = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.fr100 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !64
  %.narrow86.us = sub i8 %i.br, %i.bs
  store i8 %.narrow86.us, ptr %i.bq, align 1, !tbaa !64
  %i.bt = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.fr100 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !64
  %.narrow87.us = sub i8 %i.bv, %i.bw
  store i8 %.narrow87.us, ptr %i.bu, align 1, !tbaa !64
  %i.bx = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -5
  %i.by = sub nsw i64 %.17996.us, %.fr100         ; 2 uses
  %i.bz = icmp sgt i64 %i.by, %.fr100
  br i1 %i.bz, label %iter.check, label %.loopexit89

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.094.us = phi i64 [ %i.ce, %.lr.ph.us ], [ %.094.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.193.us = phi ptr [ %i.cd, %.lr.ph.us ], [ %.193.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.193.us, i64 %.fr100 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = load i8, ptr %.193.us, align 1, !tbaa !64
  %.narrow88.us = sub i8 %i.cb, %i.cc
  store i8 %.narrow88.us, ptr %i.ca, align 1, !tbaa !64
  %i.cd = getelementptr inbounds i8, ptr %.193.us, i64 -1 ; 2 uses
  %i.ce = add nsw i64 %.094.us, -1
  %i.cf = icmp sgt i64 %.094.us, 1
  br i1 %i.cf, label %.lr.ph.us, label %.loopexit130, !llvm.loop !97

.lr.ph99.split:                                   ; preds = %.lr.ph99, %bb.h
  %.07797 = phi ptr [ %.6, %bb.h ], [ %i.an, %.lr.ph99 ] ; 7 uses
end_hunk_1
