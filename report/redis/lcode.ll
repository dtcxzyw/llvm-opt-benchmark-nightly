Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lcode?download=true
inline.NumInlined: 107
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@luaK_self:bb.a
  %i.av = zext i8 %i.au to i32
  %.not3.i.i16 = icmp slt i32 %i.ar, %i.av
  br i1 %.not3.i.i16, label %freeexp.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !42
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !42
  br label %freeexp.exit17

freeexp.exit17:                                   ; preds = %luaK_reserveregs.exit, %bb.h, %bb.i, %bb.j
  store i32 %i.n, ptr %i.aa, align 8, !tbaa !41
  store i32 12, ptr %1, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_goiftrue(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !50
  switch i32 %i.a, label %bb.e [
    i32 4, label %luaK_concat.exit
    i32 5, label %luaK_concat.exit
    i32 2, label %luaK_concat.exit
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val13 = load i32, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.d = sext i32 %.val13 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.d ; 3 uses
  %i.f = icmp sgt i32 %.val13, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9    ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !41
  %.not.i.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i.i, label %bb.d, label %invertjump.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !9
  br label %invertjump.exit

invertjump.exit:                                  ; preds = %bb.c, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.c ]
  %i.n = and i32 %i.m, -16321
  %i.o = and i32 %i.m, 16320
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not.i, i32 64, i32 0
  %i.q = or disjoint i32 %i.p, %i.n
  store i32 %i.q, ptr %.0.i.i, align 4, !tbaa !9
  %i.r = load i32, ptr %i.b, align 8, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %invertjump.exit
  %.0 = phi i32 [ %i.s, %bb.e ], [ %i.r, %invertjump.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.u = icmp eq i32 %.0, -1
  br i1 %i.u, label %luaK_concat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.t, align 4, !tbaa !9    ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.x = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.x, align 8, !tbaa !32 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0, ptr %i.t, align 4, !tbaa !9
  br label %luaK_concat.exit

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i = phi i32 [ %i.af, %bb.i ], [ %i.v, %.preheader.i ] ; 3 uses
  %i.y = sext i32 %.0.i to i64                    ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9   ; 2 uses
  %i.ab = lshr i32 %i.aa, 14
  %i.ac = add nsw i32 %i.ab, -131071              ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = add nuw nsw i32 %.0.i, 1
  %i.af = add nsw i32 %i.ae, %i.ac                ; 2 uses
  %.not13.i = icmp eq i32 %i.af, -1
  %.not.i14 = select i1 %i.ad, i1 true, i1 %.not13.i
  br i1 %.not.i14, label %bb.j, label %bb.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.y ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.ah = add i32 %.0, %.neg.i.i                  ; 2 uses
  %i.ai = add i32 %i.ah, -131072
  %i.aj = icmp ult i32 %i.ai, -262143
  br i1 %i.aj, label %bb.k, label %fixjump.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.al, ptr noundef nonnull @.str.1) #7
  %.pre.i15 = load i32, ptr %i.ag, align 4, !tbaa !9
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.k, %bb.j
  %i.am = phi i32 [ %i.aa, %bb.j ], [ %.pre.i15, %bb.k ]
  %i.an = and i32 %i.am, 16383
  %i.ao = shl i32 %i.ah, 14
  %i.ap = add i32 %i.ao, 2147467264
  %i.aq = or disjoint i32 %i.an, %i.ap
  store i32 %i.aq, ptr %i.ag, align 4, !tbaa !9
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.a, %bb.a, %bb.a, %bb.f, %bb.h, %fixjump.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !51 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.au, ptr %i.av, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ax = icmp eq i32 %i.as, -1
  br i1 %i.ax, label %luaK_patchtohere.exit, label %bb.l

bb.l:                                             ; preds = %luaK_concat.exit
  %i.ay = load i32, ptr %i.aw, align 8, !tbaa !9  ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.as, ptr %i.aw, align 8, !tbaa !9
  br label %luaK_patchtohere.exit

bb.n:                                             ; preds = %bb.n, %.preheader.i.i
  %.0.i.i16 = phi i32 [ %i.bi, %bb.n ], [ %i.ay, %.preheader.i.i ] ; 3 uses
  %i.bb = sext i32 %.0.i.i16 to i64               ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9  ; 2 uses
  %i.be = lshr i32 %i.bd, 14
  %i.bf = add nsw i32 %i.be, -131071              ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  %i.bh = add nuw nsw i32 %.0.i.i16, 1
  %i.bi = add nsw i32 %i.bh, %i.bf                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.bi, -1
  %.not.i.i17 = select i1 %i.bg, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i17, label %bb.o, label %bb.n, !llvm.loop !0

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bb ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i16, -1
  %i.bk = add i32 %i.as, %.neg.i.i.i              ; 2 uses
  %i.bl = add i32 %i.bk, -131072
  %i.bm = icmp ult i32 %i.bl, -262143
  br i1 %i.bm, label %bb.p, label %fixjump.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.bo, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.bj, align 4, !tbaa !9
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.p, %bb.o
  %i.bp = phi i32 [ %i.bd, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.bq = and i32 %i.bp, 16383
  %i.br = shl i32 %i.bk, 14
  %i.bs = add i32 %i.br, 2147467264
  %i.bt = or disjoint i32 %i.bq, %i.bs
  store i32 %i.bt, ptr %i.bj, align 4, !tbaa !9
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %luaK_concat.exit, %bb.m, %fixjump.exit.i.i
  store i32 -1, ptr %i.ar, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jumponcond(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !50
  switch i32 %i.a, label %.thread.thread [
    i32 11, label %bb.b
    i32 12, label %discharge2anyreg.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = and i32 %i.i, 63
  %i.k = icmp eq i32 %i.j, 19
  br i1 %i.k, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !19
  %i.o = lshr i32 %i.i, 23
  %i.p = xor i32 %2, 1
  %i.q = tail call fastcc i32 @condjump(ptr noundef nonnull %0, i32 noundef 26, i32 noundef %i.o, i32 noundef 0, i32 noundef %i.p)
  br label %bb.i

.thread.thread:                                   ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42   ; 3 uses
  %i.t = add nsw i32 %i.s, 1                      ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 115
  %i.w = load i8, ptr %i.v, align 1, !tbaa !43
  %i.x = zext i8 %i.w to i32
  %.not5.i = icmp slt i32 %i.s, %i.x
  br i1 %.not5.i, label %discharge2anyreg.exit, label %bb.d

bb.d:                                             ; preds = %.thread.thread
  %i.y = icmp samesign ugt i32 %i.s, 248
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.aa, ptr noundef nonnull @.str) #7
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %.pre.pre.i.i = load i32, ptr %i.r, align 4, !tbaa !42
  %.pre5.i.i = add nsw i32 %.pre.pre.i.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre4.pre-phi.i.i = phi i32 [ %.pre5.i.i, %bb.e ], [ %i.t, %bb.d ]
  %i.ab = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.u, %bb.d ]
  %i.ac = trunc i32 %i.t to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 115
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !43
  br label %discharge2anyreg.exit

discharge2anyreg.exit:                            ; preds = %.thread.thread, %bb.f
  %.pre-phi.i.i = phi i32 [ %i.t, %.thread.thread ], [ %.pre4.pre-phi.i.i, %bb.f ] ; 2 uses
  store i32 %.pre-phi.i.i, ptr %i.r, align 4, !tbaa !42
  %i.ae = add nsw i32 %.pre-phi.i.i, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ae)
  %.pre = load i32, ptr %1, align 8, !tbaa !50
  %i.af = icmp eq i32 %.pre, 12
  br i1 %i.af, label %discharge2anyreg.exit.thread, label %freeexp.exit

discharge2anyreg.exit.thread:                     ; preds = %bb.a, %discharge2anyreg.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !41 ; 2 uses
  %i.ai = and i32 %i.ah, 256
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.g, label %freeexp.exit

bb.g:                                             ; preds = %discharge2anyreg.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !21
  %i.al = zext i8 %i.ak to i32
  %.not3.i.i = icmp slt i32 %i.ah, %i.al
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %discharge2anyreg.exit, %discharge2anyreg.exit.thread, %bb.g, %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = tail call fastcc i32 @condjump(ptr noundef %0, i32 noundef 27, i32 noundef 255, i32 noundef %i.aq, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %freeexp.exit
  %.1 = phi i32 [ %i.ar, %freeexp.exit ], [ %i.q, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_indexed(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4), (12, 16)) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.a, ptr %i.b, align 4, !tbaa !41
  store i32 9, ptr %1, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.expdesc, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.a, align 4, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.b, align 8, !tbaa !51
  store i32 5, ptr %3, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !41
  switch i32 %1, label %codenot.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %codenot.exit.sink.split.sink.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !50
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %bb.c, label %codenot.exit.sink.split.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %isnumeral.exit, label %codenot.exit.sink.split.sink.split

isnumeral.exit:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !52
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %codenot.exit.sink.split, label %codenot.exit.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.k = load i32, ptr %2, align 8, !tbaa !50
  switch i32 %i.k, label %bb.p [
    i32 1, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 2, label %bb.f
    i32 10, label %bb.g
    i32 12, label %discharge2anyreg.exit.thread.i
    i32 11, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i32 2, ptr %2, align 8, !tbaa !50
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  store i32 3, ptr %2, align 8, !tbaa !50
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr i8, ptr %2, i64 8
  %.val23.i = load i32, ptr %i.l, align 8, !tbaa !41 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.n = sext i32 %.val23.i to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.n ; 3 uses
  %i.p = icmp sgt i32 %.val23.i, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9    ; 2 uses
  %i.s = and i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !41
  %.not.i.i.i = icmp sgt i8 %i.v, -1
  br i1 %.not.i.i.i, label %bb.i, label %invertjump.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre.i.i = load i32, ptr %i.o, align 4, !tbaa !9
  br label %invertjump.exit.i

invertjump.exit.i:                                ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %.pre.i.i, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.o, %bb.i ], [ %i.q, %bb.h ]
  %i.x = and i32 %i.w, -16321
  %i.y = and i32 %i.w, 16320
  %.not.i.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.i.i, i32 64, i32 0
  %i.aa = or disjoint i32 %i.z, %i.x
  store i32 %i.aa, ptr %.0.i.i.i, align 4, !tbaa !9
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42 ; 3 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 115
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %i.ah = zext i8 %i.ag to i32
  %.not5.i.i = icmp slt i32 %i.ac, %i.ah
  br i1 %.not5.i.i, label %discharge2anyreg.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp samesign ugt i32 %i.ac, 248
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.ak, ptr noundef nonnull @.str) #7
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %.pre.pre.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !42
  %.pre5.i.i.i = add nsw i32 %.pre.pre.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre4.pre-phi.i.i.i = phi i32 [ %.pre5.i.i.i, %bb.l ], [ %i.ad, %bb.k ]
  %i.al = phi ptr [ %.pre.i.i.i.i, %bb.l ], [ %i.ae, %bb.k ]
  %i.am = trunc i32 %i.ad to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 115
  store i8 %i.am, ptr %i.an, align 1, !tbaa !43
  br label %discharge2anyreg.exit.i

discharge2anyreg.exit.i:                          ; preds = %bb.m, %bb.j
  %.pre-phi.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %.pre4.pre-phi.i.i.i, %bb.m ] ; 2 uses
  store i32 %.pre-phi.i.i.i, ptr %i.ab, align 4, !tbaa !42
  %i.ao = add nsw i32 %.pre-phi.i.i.i, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.ao)
  %.pre.i = load i32, ptr %2, align 8, !tbaa !50
  %i.ap = icmp eq i32 %.pre.i, 12
  br i1 %i.ap, label %discharge2anyreg.exit.thread.i, label %freeexp.exit.i

discharge2anyreg.exit.thread.i:                   ; preds = %discharge2anyreg.exit.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !41 ; 2 uses
  %i.as = and i32 %i.ar, 256
  %.not.i.i25.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i25.i, label %bb.n, label %freeexp.exit.i

bb.n:                                             ; preds = %discharge2anyreg.exit.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.au = load i8, ptr %i.at, align 2, !tbaa !21
  %i.av = zext i8 %i.au to i32
  %.not3.i.i.i = icmp slt i32 %i.ar, %i.av
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !42
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.o, %bb.n, %discharge2anyreg.exit.thread.i, %discharge2anyreg.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !41
  %i.bb = shl i32 %i.ba, 23
  %i.bc = or disjoint i32 %i.bb, 19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !38
  %i.bh = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.bc, i32 noundef %i.bg)
  store i32 %i.bh, ptr %i.az, align 8, !tbaa !41
  store i32 11, ptr %2, align 8, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %freeexp.exit.i, %invertjump.exit.i, %bb.f, %bb.e, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !52 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !51 ; 3 uses
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !52
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !51
  %.not6.i.i = icmp eq i32 %i.bl, -1
  br i1 %.not6.i.i, label %removevalues.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %.val4.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.bm = getelementptr i8, ptr %.val4.i.i, i64 24
  %.val4.val.i.i = load ptr, ptr %i.bm, align 8, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %patchtestreg.exit.i.i, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %i.ch, %patchtestreg.exit.i.i ] ; 3 uses
  %i.bn = sext i32 %.07.i.i to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val4.val.i.i, i64 %i.bn ; 4 uses
  %i.bp = icmp sgt i32 %.07.i.i, 0
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9  ; 2 uses
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !41
  %.not.i.i.i.i = icmp sgt i8 %i.bv, -1
  br i1 %.not.i.i.i.i, label %bb.s, label %getjumpcontrol.exit.i.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre.i.i.i = load i32, ptr %i.bo, align 4, !tbaa !9
  br label %getjumpcontrol.exit.i.i.i

getjumpcontrol.exit.i.i.i:                        ; preds = %bb.s, %bb.r
  %i.bw = phi i32 [ %.pre.i.i.i, %bb.s ], [ %i.br, %bb.r ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bo, %bb.s ], [ %i.bq, %bb.r ]
  %i.bx = and i32 %i.bw, 63
  %.not.i.i26.i = icmp eq i32 %i.bx, 27
  br i1 %.not.i.i26.i, label %bb.t, label %patchtestreg.exit.i.i

bb.t:                                             ; preds = %getjumpcontrol.exit.i.i.i
  %i.by = lshr i32 %i.bw, 17
  %i.bz = and i32 %i.by, 32704
  %i.ca = and i32 %i.bw, 8372250
  %i.cb = or i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %.0.i.i.i.i, align 4, !tbaa !9
  br label %patchtestreg.exit.i.i

patchtestreg.exit.i.i:                            ; preds = %bb.t, %getjumpcontrol.exit.i.i.i
  %i.cc = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.cd = lshr i32 %i.cc, 14
  %i.ce = add nsw i32 %i.cd, -131071              ; 2 uses
  %i.cf = icmp eq i32 %i.ce, -1
  %i.cg = add nuw nsw i32 %.07.i.i, 1
  %i.ch = add nsw i32 %i.cg, %i.ce                ; 2 uses
  %.not8.i.i = icmp eq i32 %i.ch, -1
  %.not.i27.i = select i1 %i.cf, i1 true, i1 %.not8.i.i
  br i1 %.not.i27.i, label %removevalues.exitthread-pre-split.i, label %bb.q

removevalues.exitthread-pre-split.i:              ; preds = %patchtestreg.exit.i.i
  %.pr.i = load i32, ptr %i.bk, align 8, !tbaa !51
  br label %removevalues.exit.i

removevalues.exit.i:                              ; preds = %removevalues.exitthread-pre-split.i, %bb.p
  %i.ci = phi i32 [ %.pr.i, %removevalues.exitthread-pre-split.i ], [ %i.bj, %bb.p ] ; 2 uses
  %.not6.i28.i = icmp eq i32 %i.ci, -1
  br i1 %.not6.i28.i, label %codenot.exit, label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %removevalues.exit.i
  %.val4.i30.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.cj = getelementptr i8, ptr %.val4.i30.i, i64 24
  %.val4.val.i31.i = load ptr, ptr %i.cj, align 8, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %patchtestreg.exit.i37.i, %.lr.ph.i29.i
  %.07.i32.i = phi i32 [ %i.ci, %.lr.ph.i29.i ], [ %i.de, %patchtestreg.exit.i37.i ] ; 3 uses
  %i.ck = sext i32 %.07.i32.i to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val4.val.i31.i, i64 %i.ck ; 4 uses
  %i.cm = icmp sgt i32 %.07.i32.i, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !9  ; 2 uses
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !41
  %.not.i.i.i40.i = icmp sgt i8 %i.cs, -1
  br i1 %.not.i.i.i40.i, label %bb.w, label %getjumpcontrol.exit.i.i34.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre.i.i33.i = load i32, ptr %i.cl, align 4, !tbaa !9
  br label %getjumpcontrol.exit.i.i34.i

getjumpcontrol.exit.i.i34.i:                      ; preds = %bb.w, %bb.v
  %i.ct = phi i32 [ %.pre.i.i33.i, %bb.w ], [ %i.co, %bb.v ] ; 3 uses
  %.0.i.i.i35.i = phi ptr [ %i.cl, %bb.w ], [ %i.cn, %bb.v ]
  %i.cu = and i32 %i.ct, 63
  %.not.i.i36.i = icmp eq i32 %i.cu, 27
  br i1 %.not.i.i36.i, label %bb.x, label %patchtestreg.exit.i37.i

bb.x:                                             ; preds = %getjumpcontrol.exit.i.i34.i
  %i.cv = lshr i32 %i.ct, 17
  %i.cw = and i32 %i.cv, 32704
  %i.cx = and i32 %i.ct, 8372250
  %i.cy = or i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %.0.i.i.i35.i, align 4, !tbaa !9
  br label %patchtestreg.exit.i37.i

patchtestreg.exit.i37.i:                          ; preds = %bb.x, %getjumpcontrol.exit.i.i34.i
  %i.cz = load i32, ptr %i.cl, align 4, !tbaa !9
  %i.da = lshr i32 %i.cz, 14
  %i.db = add nsw i32 %i.da, -131071              ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  %i.dd = add nuw nsw i32 %.07.i32.i, 1
  %i.de = add nsw i32 %i.dd, %i.db                ; 2 uses
  %.not8.i38.i = icmp eq i32 %i.de, -1
  %.not.i39.i = select i1 %i.dc, i1 true, i1 %.not8.i38.i
  br i1 %.not.i39.i, label %codenot.exit, label %bb.u

codenot.exit.sink.split.sink.split:               ; preds = %bb.a, %isnumeral.exit, %bb.c, %bb.b
  %.sink.ph = phi i32 [ 18, %isnumeral.exit ], [ 18, %bb.b ], [ 18, %bb.c ], [ 20, %bb.a ]
  %i.df = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codenot.exit.sink.split

codenot.exit.sink.split:                          ; preds = %codenot.exit.sink.split.sink.split, %isnumeral.exit
  %.sink = phi i32 [ 18, %isnumeral.exit ], [ %.sink.ph, %codenot.exit.sink.split.sink.split ]
  call fastcc void @codearith(ptr noundef %0, i32 noundef %.sink, ptr noundef %2, ptr noundef nonnull %3)
  br label %codenot.exit

codenot.exit:                                     ; preds = %patchtestreg.exit.i37.i, %codenot.exit.sink.split, %removevalues.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codearith(ptr nofree noundef captures(none) %0, i32 noundef range(i32 12, 22) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !50
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %isnumeral.exit.i, label %bb.p

isnumeral.exit.i:                                 ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %isnumeral.exit.i
  %i.h = load i32, ptr %3, align 8, !tbaa !50
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %isnumeral.exit29.i, label %bb.p

isnumeral.exit29.i:                               ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %.not34.i = icmp eq i32 %i.n, -1
  br i1 %.not34.i, label %bb.e, label %bb.p

bb.e:                                             ; preds = %isnumeral.exit29.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !41 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !41 ; 9 uses
  switch i32 %1, label %constfolding.exit.a [
    i32 12, label %bb.f
    i32 13, label %bb.g
    i32 14, label %bb.h
    i32 15, label %bb.i
    i32 16, label %bb.k
    i32 17, label %bb.m
    i32 18, label %bb.n
    i32 20, label %.thread36
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = fadd double %i.p, %i.r
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.t = fsub double %i.p, %i.r
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.u = fmul double %i.p, %i.r
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.v = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.v, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = fdiv double %i.p, %i.r
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.x = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.x, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = fdiv double %i.p, %i.r
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.r, double %i.p)
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.ac = tail call double @pow(double noundef %i.p, double noundef %i.r) #7, !tbaa !9
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.ad = fneg double %i.p
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f
  %.0.i = phi double [ %i.ad, %bb.n ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.j ], [ %i.ab, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ae = fcmp ord double %.0.i, 0.000000e+00
  br i1 %i.ae, label %constfolding.exit.a, label %bb.p

constfolding.exit.a:                              ; preds = %bb.e, %bb.o
  %.033.i = phi double [ %.0.i, %bb.o ], [ 0.000000e+00, %bb.e ]
  store double %.033.i, ptr %i.o, align 8, !tbaa !41
  br label %bb.ac

bb.p:                                             ; preds = %isnumeral.exit.i, %isnumeral.exit29.i, %bb.o, %bb.a, %bb.b, %bb.d, %bb.c
  switch i32 %1, label %.thread [
    i32 20, label %.thread36
    i32 18, label %.thread36
  ]

.thread:                                          ; preds = %bb.k, %bb.i, %bb.p
  %i.af = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %3)
  br label %.thread36

.thread36:                                        ; preds = %bb.e, %bb.p, %bb.p, %.thread
  %i.ag = phi i32 [ %i.af, %.thread ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.e ] ; 2 uses
  %i.ah = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef nonnull %2) ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, %i.ag
  br i1 %i.ai, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.thread36
  %i.aj = load i32, ptr %2, align 8, !tbaa !50
  %i.ak = icmp eq i32 %i.aj, 12
  br i1 %i.ak, label %bb.r, label %freeexp.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.an = and i32 %i.am, 256
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.s, label %freeexp.exit

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !21
  %i.aq = zext i8 %i.ap to i32
  %.not3.i.i = icmp slt i32 %i.am, %i.aq
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %i.au = load i32, ptr %3, align 8, !tbaa !50
  %i.av = icmp eq i32 %i.au, 12
  br i1 %i.av, label %bb.u, label %freeexp.exit27

bb.u:                                             ; preds = %freeexp.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !41 ; 2 uses
  %i.ay = and i32 %i.ax, 256
  %.not.i.i25 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i25, label %bb.v, label %freeexp.exit27

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !21
  %i.bb = zext i8 %i.ba to i32
  %.not3.i.i26 = icmp slt i32 %i.ax, %i.bb
  br i1 %.not3.i.i26, label %freeexp.exit27, label %freeexp.exit27.sink.split

bb.w:                                             ; preds = %.thread36
  %i.bc = load i32, ptr %3, align 8, !tbaa !50
  %i.bd = icmp eq i32 %i.bc, 12
  br i1 %i.bd, label %bb.x, label %freeexp.exit30

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !41 ; 2 uses
  %i.bg = and i32 %i.bf, 256
  %.not.i.i28 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i28, label %bb.y, label %freeexp.exit30

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !21
  %i.bj = zext i8 %i.bi to i32
  %.not3.i.i29 = icmp slt i32 %i.bf, %i.bj
  br i1 %.not3.i.i29, label %freeexp.exit30, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !42
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !42
  br label %freeexp.exit30

freeexp.exit30:                                   ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %i.bn = load i32, ptr %2, align 8, !tbaa !50
  %i.bo = icmp eq i32 %i.bn, 12
  br i1 %i.bo, label %bb.aa, label %freeexp.exit27

bb.aa:                                            ; preds = %freeexp.exit30
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !41 ; 2 uses
  %i.br = and i32 %i.bq, 256
  %.not.i.i31 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i31, label %bb.ab, label %freeexp.exit27

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !21
  %i.bu = zext i8 %i.bt to i32
  %.not3.i.i32 = icmp slt i32 %i.bq, %i.bu
  br i1 %.not3.i.i32, label %freeexp.exit27, label %freeexp.exit27.sink.split

freeexp.exit27.sink.split:                        ; preds = %bb.ab, %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !42
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !42
  br label %freeexp.exit27

freeexp.exit27:                                   ; preds = %freeexp.exit27.sink.split, %bb.ab, %bb.aa, %freeexp.exit30, %bb.v, %bb.u, %freeexp.exit
  %i.by = shl i32 %i.ah, 23
  %i.bz = shl i32 %i.ag, 14
  %i.ca = or i32 %i.bz, %i.by
  %i.cb = or disjoint i32 %i.ca, %1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !38
  %i.cg = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.cb, i32 noundef %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !41
  store i32 11, ptr %2, align 8, !tbaa !50
  br label %bb.ac

bb.ac:                                            ; preds = %constfolding.exit.a, %freeexp.exit27
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_infix(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.z [
    i32 13, label %bb.b
    i32 14, label %bb.c
    i32 6, label %bb.q
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 4, label %bb.x
    i32 5, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @luaK_goiftrue(ptr noundef %0, ptr noundef %2)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.a = load i32, ptr %2, align 8, !tbaa !50
  switch i32 %i.a, label %bb.e [
    i32 1, label %luaK_concat.exit.i
    i32 3, label %luaK_concat.exit.i
    i32 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.e ], [ %i.c, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq i32 %.0.i, -1
  br i1 %i.f, label %luaK_concat.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i32, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.h, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.i = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !32 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0.i, ptr %i.e, align 8, !tbaa !9
  br label %luaK_concat.exit.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.q, %bb.i ], [ %i.g, %.preheader.i.i ] ; 3 uses
  %i.j = sext i32 %.0.i.i to i64                  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9    ; 2 uses
  %i.m = lshr i32 %i.l, 14
  %i.n = add nsw i32 %i.m, -131071                ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i.i = icmp eq i32 %i.q, -1
  %.not.i.i = select i1 %i.o, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.j ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.s = add i32 %.0.i, %.neg.i.i.i               ; 2 uses
  %i.t = add i32 %i.s, -131072
  %i.u = icmp ult i32 %i.t, -262143
  br i1 %i.u, label %bb.k, label %fixjump.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.r, align 4, !tbaa !9
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.k, %bb.j
  %i.x = phi i32 [ %i.l, %bb.j ], [ %.pre.i.i, %bb.k ]
  %i.y = and i32 %i.x, 16383
  %i.z = shl i32 %i.s, 14
  %i.aa = add i32 %i.z, 2147467264
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !9
  br label %luaK_concat.exit.i

luaK_concat.exit.i:                               ; preds = %fixjump.exit.i.i, %bb.h, %bb.f, %bb.c, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !52 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = icmp eq i32 %i.ad, -1
  br i1 %i.ai, label %luaK_goiffalse.exit, label %bb.l

bb.l:                                             ; preds = %luaK_concat.exit.i
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %bb.m, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l
  %.val.i.i.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.al = getelementptr i8, ptr %.val.i.i.i, i64 24
  %.val.val.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ad, ptr %i.ah, align 8, !tbaa !9
  br label %luaK_goiffalse.exit

bb.n:                                             ; preds = %bb.n, %.preheader.i.i.i
  %.0.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.aj, %.preheader.i.i.i ] ; 3 uses
  %i.am = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9  ; 2 uses
  %i.ap = lshr i32 %i.ao, 14
  %i.aq = add nsw i32 %i.ap, -131071              ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  %i.as = add nuw nsw i32 %.0.i.i.i, 1
  %i.at = add nsw i32 %i.as, %i.aq                ; 2 uses
  %.not13.i.i.i = icmp eq i32 %i.at, -1
  %.not.i.i.i = select i1 %i.ar, i1 true, i1 %.not13.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %bb.n, !llvm.loop !0

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i, i64 %i.am ; 2 uses
  %.neg.i.i.i.i = xor i32 %.0.i.i.i, -1
  %i.av = add i32 %i.ad, %.neg.i.i.i.i            ; 2 uses
  %i.aw = add i32 %i.av, -131072
  %i.ax = icmp ult i32 %i.aw, -262143
  br i1 %i.ax, label %bb.p, label %fixjump.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.az, ptr noundef nonnull @.str.1) #7
  %.pre.i.i.i = load i32, ptr %i.au, align 4, !tbaa !9
  br label %fixjump.exit.i.i.i

fixjump.exit.i.i.i:                               ; preds = %bb.p, %bb.o
  %i.ba = phi i32 [ %i.ao, %bb.o ], [ %.pre.i.i.i, %bb.p ]
  %i.bb = and i32 %i.ba, 16383
  %i.bc = shl i32 %i.av, 14
  %i.bd = add i32 %i.bc, 2147467264
  %i.be = or disjoint i32 %i.bb, %i.bd
  store i32 %i.be, ptr %i.au, align 4, !tbaa !9
  br label %luaK_goiffalse.exit

luaK_goiffalse.exit:                              ; preds = %luaK_concat.exit.i, %bb.m, %fixjump.exit.i.i.i
  store i32 -1, ptr %i.ac, align 4, !tbaa !52
  br label %bb.aa

bb.q:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.bf = load i32, ptr %2, align 8, !tbaa !50
  %i.bg = icmp eq i32 %i.bf, 12
  br i1 %i.bg, label %bb.r, label %freeexp.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.bj = and i32 %i.bi, 256
  %.not.i.i.i12 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i12, label %bb.s, label %freeexp.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !21
  %i.bm = zext i8 %i.bl to i32
  %.not3.i.i.i = icmp slt i32 %i.bi, %i.bm
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !42
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !42
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42 ; 3 uses
  %i.bs = add nsw i32 %i.br, 1                    ; 3 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 115
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !43
  %i.bw = zext i8 %i.bv to i32
  %.not.i = icmp slt i32 %i.br, %i.bw
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.u

bb.u:                                             ; preds = %freeexp.exit.i
  %i.bx = icmp samesign ugt i32 %i.br, 248
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.bz, ptr noundef nonnull @.str) #7
  %.pre.i.i.i11 = load ptr, ptr %0, align 8, !tbaa !22
  %.pre.pre.i.i = load i32, ptr %i.bq, align 4, !tbaa !42
  %.pre5.i.i = add nsw i32 %.pre.pre.i.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre4.pre-phi.i.i = phi i32 [ %.pre5.i.i, %bb.v ], [ %i.bs, %bb.u ]
  %i.ca = phi ptr [ %.pre.i.i.i11, %bb.v ], [ %i.bt, %bb.u ]
  %i.cb = trunc i32 %i.bs to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 115
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !43
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.w
  %.pre-phi.i.i = phi i32 [ %i.bs, %freeexp.exit.i ], [ %.pre4.pre-phi.i.i, %bb.w ] ; 2 uses
  store i32 %.pre-phi.i.i, ptr %i.bq, align 4, !tbaa !42
  %i.cd = add nsw i32 %.pre-phi.i.i, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.cd)
  br label %bb.aa

bb.x:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ce = load i32, ptr %2, align 8, !tbaa !50
  %i.cf = icmp eq i32 %i.ce, 5
  br i1 %i.cf, label %bb.y, label %isnumeral.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !51
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %isnumeral.exit, label %isnumeral.exit.thread

isnumeral.exit:                                   ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !52
  %.not = icmp eq i32 %i.ck, -1
  br i1 %.not, label %bb.aa, label %isnumeral.exit.thread

isnumeral.exit.thread:                            ; preds = %bb.x, %bb.y, %isnumeral.exit
  %i.cl = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef nonnull %2) ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cm = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %isnumeral.exit, %isnumeral.exit.thread, %bb.z, %luaK_exp2nextreg.exit, %luaK_goiffalse.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_posfix(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.by [
    i32 13, label %bb.b
    i32 14, label %bb.h
    i32 6, label %bb.n
    i32 0, label %bb.ac
    i32 1, label %bb.ad
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
    i32 8, label %bb.ai
    i32 7, label %bb.ap
    i32 9, label %bb.aw
    i32 10, label %bb.bd
    i32 11, label %bb.bk
    i32 12, label %bb.br
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52   ; 3 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %luaK_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !22
  %i.g = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %i.a, align 4, !tbaa !9
  br label %luaK_concat.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.e, %.preheader.i ] ; 3 uses
  %i.h = sext i32 %.0.i to i64                    ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9    ; 2 uses
  %i.k = lshr i32 %i.j, 14
  %i.l = add nsw i32 %i.k, -131071                ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  %i.n = add nuw nsw i32 %.0.i, 1
  %i.o = add nsw i32 %i.n, %i.l                   ; 2 uses
  %.not13.i = icmp eq i32 %i.o, -1
  %.not.i = select i1 %i.m, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.h ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.q = add i32 %i.c, %.neg.i.i                  ; 2 uses
  %i.r = add i32 %i.q, -131072
  %i.s = icmp ult i32 %i.r, -262143
  br i1 %i.s, label %bb.g, label %fixjump.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.u, ptr noundef nonnull @.str.1) #7
  %.pre.i = load i32, ptr %i.p, align 4, !tbaa !9
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.g, %bb.f
  %i.v = phi i32 [ %i.j, %bb.f ], [ %.pre.i, %bb.g ]
  %i.w = and i32 %i.v, 16383
  %i.x = shl i32 %i.q, 14
  %i.y = add i32 %i.x, 2147467264
  %i.z = or disjoint i32 %i.w, %i.y
  store i32 %i.z, ptr %i.p, align 4, !tbaa !9
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.b, %bb.d, %fixjump.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  br label %bb.by

bb.h:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %luaK_concat.exit79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !9  ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.j, label %.preheader.i70

.preheader.i70:                                   ; preds = %bb.i
  %.val.i71 = load ptr, ptr %0, align 8, !tbaa !22
  %i.ag = getelementptr i8, ptr %.val.i71, i64 24
  %.val.val.i72 = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !9
  br label %luaK_concat.exit79

bb.k:                                             ; preds = %bb.k, %.preheader.i70
  %.0.i73 = phi i32 [ %i.ao, %bb.k ], [ %i.ae, %.preheader.i70 ] ; 3 uses
  %i.ah = sext i32 %.0.i73 to i64                 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.val.i72, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9  ; 2 uses
  %i.ak = lshr i32 %i.aj, 14
  %i.al = add nsw i32 %i.ak, -131071              ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  %i.an = add nuw nsw i32 %.0.i73, 1
  %i.ao = add nsw i32 %i.an, %i.al                ; 2 uses
  %.not13.i74 = icmp eq i32 %i.ao, -1
  %.not.i75 = select i1 %i.am, i1 true, i1 %.not13.i74
  br i1 %.not.i75, label %bb.l, label %bb.k, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds [4 x i8], ptr %.val.val.i72, i64 %i.ah ; 2 uses
  %.neg.i.i76 = xor i32 %.0.i73, -1
  %i.aq = add i32 %i.ac, %.neg.i.i76              ; 2 uses
  %i.ar = add i32 %i.aq, -131072
  %i.as = icmp ult i32 %i.ar, -262143
  br i1 %i.as, label %bb.m, label %fixjump.exit.i77

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  tail call void @luaX_syntaxerror(ptr noundef %i.au, ptr noundef nonnull @.str.1) #7
  %.pre.i78 = load i32, ptr %i.ap, align 4, !tbaa !9
  br label %fixjump.exit.i77

fixjump.exit.i77:                                 ; preds = %bb.m, %bb.l
  %i.av = phi i32 [ %i.aj, %bb.l ], [ %.pre.i78, %bb.m ]
  %i.aw = and i32 %i.av, 16383
  %i.ax = shl i32 %i.aq, 14
  %i.ay = add i32 %i.ax, 2147467264
  %i.az = or disjoint i32 %i.aw, %i.ay
  store i32 %i.az, ptr %i.ap, align 4, !tbaa !9
  br label %luaK_concat.exit79

luaK_concat.exit79:                               ; preds = %bb.h, %bb.j, %fixjump.exit.i77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !59
  br label %bb.by

bb.n:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !52
  %.not.i80 = icmp eq i32 %i.bb, %i.bd
  br i1 %.not.i80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %3) ; 0 uses
  br label %luaK_exp2val.exit

bb.p:                                             ; preds = %bb.n
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %3)
  br label %luaK_exp2val.exit

luaK_exp2val.exit:                                ; preds = %bb.o, %bb.p
  %i.bf = load i32, ptr %3, align 8, !tbaa !50
  %i.bg = icmp eq i32 %i.bf, 11
  br i1 %i.bg, label %bb.q, label %bb.v

bb.q:                                             ; preds = %luaK_exp2val.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !41
  %i.bm = sext i32 %i.bl to i64                   ; 4 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !9  ; 4 uses
  %i.bp = and i32 %i.bo, 63
  %i.bq = icmp eq i32 %i.bp, 21
  br i1 %i.bq, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr %2, align 8, !tbaa !50
  %i.bs = icmp eq i32 %i.br, 12
  br i1 %i.bs, label %bb.s, label %freeexp.exit
end_hunk_0
