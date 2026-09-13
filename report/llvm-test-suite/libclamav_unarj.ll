Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_unarj?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cli_unarj_extract_file:bb.a

.lr.ph91.preheader.i:                             ; preds = %bb.af
  %i.fv = zext nneg i16 %spec.select.i to i64
  %i.fw = zext nneg i32 %.04594.i to i64
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i, %.lr.ph91.preheader.i
  %indvars.iv100.i = phi i64 [ %i.fw, %.lr.ph91.preheader.i ], [ %indvars.iv.next101.i, %.lr.ph91.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.fv, %.lr.ph91.preheader.i ], [ %indvars.iv.next.i, %.lr.ph91.i ] ; 3 uses
  %i.fx = phi i16 [ %i.fu, %.lr.ph91.preheader.i ], [ %i.gc, %.lr.ph91.i ]
  %i.fy = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.i
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv100.i
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !11
  %i.gc = add i16 %i.fx, -1                       ; 2 uses
  %i.gd = icmp sgt i16 %i.gc, -1
  %i.ge = trunc nuw i64 %indvars.iv.i to i16
  %i.gf = icmp slt i16 %i.ge, 26623
  %or.cond7.i = and i1 %i.gf, %i.gd
  %i.gg = icmp samesign ult i64 %indvars.iv100.i, 26623
  %i.gh = and i1 %i.gg, %or.cond7.i
  br i1 %i.gh, label %.lr.ph91.i, label %.loopexit.loopexit.i, !llvm.loop !60

.lr.ph.i:                                         ; preds = %bb.af, %bb.ah
  %i.gi = phi i16 [ %i.gw, %bb.ah ], [ %i.fu, %bb.af ] ; 2 uses
  %.287.i = phi i16 [ %spec.store.select.i, %bb.ah ], [ %spec.select.i, %bb.af ] ; 2 uses
  %.24786.i = phi i32 [ %.3.i, %bb.ah ], [ %.04594.i, %bb.af ] ; 2 uses
  %i.gj = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.gk = sext i16 %.287.i to i64
  %i.gl = getelementptr inbounds i8, ptr %i.gj, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !11
  %i.gn = zext i32 %.24786.i to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gn
  store i8 %i.gm, ptr %i.go, align 1, !tbaa !11
  %i.gp = add i32 %.24786.i, 1                    ; 2 uses
  %i.gq = icmp ugt i32 %i.gp, 26623
  br i1 %i.gq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i
  %i.gr = load i32, ptr %i.n, align 4, !tbaa !17
  %i.gs = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.gt = call i32 @cli_writen(i32 noundef %i.gr, ptr noundef %i.gs, i32 noundef 26624) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i
  %.3.i = phi i32 [ 0, %bb.ag ], [ %i.gp, %.lr.ph.i ] ; 2 uses
  %i.gu = add i16 %.287.i, 1                      ; 2 uses
  %i.gv = icmp sgt i16 %i.gu, 26623
  %spec.store.select.i = select i1 %i.gv, i16 0, i16 %i.gu
  %i.gw = add nsw i16 %i.gi, -1
  %i.gx = icmp sgt i16 %i.gi, 0
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !61

.loopexit.loopexit.i:                             ; preds = %.lr.ph91.i
  %i.gy = trunc nuw nsw i64 %indvars.iv.next101.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ah, %.loopexit.loopexit.i, %bb.y, %bb.x
  %.149.i = phi i32 [ %i.ec, %bb.y ], [ %i.ec, %bb.x ], [ %i.ek, %.loopexit.loopexit.i ], [ %i.ek, %bb.ah ] ; 2 uses
  %.4.i = phi i32 [ 0, %bb.y ], [ %i.ed, %bb.x ], [ %i.gy, %.loopexit.loopexit.i ], [ %.3.i, %bb.ah ] ; 2 uses
  %i.gz = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.ha = icmp ult i32 %.149.i, %i.gz
  br i1 %i.ha, label %bb.i, label %.loopexit83.i, !llvm.loop !62

.loopexit83.i:                                    ; preds = %.loopexit.i, %bb.ae
  %.04585.i = phi i32 [ %.04594.i, %bb.ae ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %.not58.i = icmp eq i32 %.04585.i, 0
  br i1 %.not58.i, label %.loopexit83.thread.i, label %bb.ai

bb.ai:                                            ; preds = %.loopexit83.i
  %i.hb = load i32, ptr %i.n, align 4, !tbaa !17
  %i.hc = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.hd = call i32 @cli_writen(i32 noundef %i.hb, ptr noundef %i.hc, i32 noundef range(i32 1, 0) %.04585.i) #11 ; 0 uses
  br label %.loopexit83.thread.i

.loopexit83.thread.i:                             ; preds = %bb.ai, %.loopexit83.i, %.preheader82.i
  %i.he = load ptr, ptr %i.v, align 8, !tbaa !20
  call void @free(ptr noundef %i.he) #11
  br label %decode.exit

decode.exit:                                      ; preds = %bb.g, %bb.h, %.loopexit83.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ak

bb.aj:                                            ; preds = %bb.e
  call fastcc void @decode_f(i32 noundef %0, ptr noundef nonnull %2)
  br label %bb.ak

bb.ak:                                            ; preds = %decode.exit, %bb.aj, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.027 = phi i32 [ -115, %bb.d ], [ %., %bb.c ], [ -111, %bb.a ], [ 0, %decode.exit ], [ %.34, %bb.f ], [ 0, %bb.aj ], [ -124, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @arj_unstore(i32 noundef range(i32 0, -2147483648) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.28) #11
  %.not28 = icmp eq i32 %2, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.029 = phi i32 [ %i.h, %bb.e ], [ %2, %bb.a ]  ; 4 uses
  %i.b = call i32 @llvm.umin.i32(i32 %.029, i32 8192) ; 6 uses
  %i.c = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.b) #11
  %.not22 = icmp eq i32 %i.c, %i.b
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = sub i32 %2, %.029
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.e = call i32 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.b) #11
  %.not23 = icmp eq i32 %i.e, %i.b
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.029, %i.b
  %i.g = sub i32 %2, %i.f
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = sub nuw i32 %.029, %i.b                  ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !64

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d, %bb.b
  %.020 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ 0, %bb.a ], [ %2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_f(i32 noundef range(i32 0, -2147483648) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.arj_decode_tag, align 8     ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = tail call ptr @cli_malloc(i64 noundef 26624) #11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %2, align 8, !tbaa !21
  %i.c = load i32, ptr %1, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.c, ptr %i.d, align 4, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 15 uses
  store i16 0, ptr %i.e, align 2, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.f, align 4, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !25
  %i.h = call fastcc range(i32 -123, 1) i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16)
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 34 ; 32 uses
  store i16 0, ptr %i.i, align 2, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 16 uses
  store i16 0, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %.not78 = icmp eq i32 %i.l, 0
  br i1 %.not78, label %.loopexit69.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph76, %.loopexit
  %.04275 = phi i32 [ 0, %.lr.ph76 ], [ %.3, %.loopexit ] ; 5 uses
  %.04474 = phi i32 [ 0, %.lr.ph76 ], [ %.145, %.loopexit ] ; 2 uses
  %i.n = load i16, ptr %i.j, align 8, !tbaa !68   ; 8 uses
  %i.o = icmp slt i16 %i.n, 1
  %.pre80 = load i16, ptr %i.i, align 2, !tbaa !67 ; 4 uses
  br i1 %i.o, label %.thread100, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl i16 %.pre80, 1                       ; 4 uses
  %i.q = add nsw i16 %i.n, -1                     ; 4 uses
  store i16 %i.q, ptr %i.j, align 8, !tbaa !68
  %i.r = icmp sgt i16 %.pre80, -1
  br i1 %i.r, label %decode_len.exit.thread, label %bb.f

.thread100:                                       ; preds = %bb.d
  %i.s = load i16, ptr %i.e, align 2, !tbaa !23
  %i.t = zext i16 %i.s to i32
  %i.u = zext nneg i16 %i.n to i32
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc nuw i32 %i.v to i16
  %i.x = or i16 %.pre80, %i.w
  store i16 %i.x, ptr %i.i, align 2, !tbaa !67
  %i.y = sext i16 %i.n to i32
  %i.z = sub nsw i32 16, %i.y
  %i.aa = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.z) ; 0 uses
  %.pre = load i16, ptr %i.i, align 2, !tbaa !67  ; 3 uses
  %i.ab = shl i16 %.pre, 1                        ; 2 uses
  %i.ac = icmp sgt i16 %.pre, -1
  br i1 %i.ac, label %decode_len.exit.thread.thread, label %.thread102

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq i16 %i.n, 1
  br i1 %i.ad, label %.thread76.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl i16 %.pre80, 2                      ; 3 uses
  %i.af = add nsw i16 %i.n, -2                    ; 3 uses
  store i16 %i.af, ptr %i.j, align 8, !tbaa !68
  %i.ag = icmp sgt i16 %i.p, -1
  br i1 %i.ag, label %.thread.i, label %bb.h

.thread102:                                       ; preds = %.thread100
  %i.ah = shl i16 %.pre, 2                        ; 2 uses
  %i.ai = icmp sgt i16 %i.ab, -1
  br i1 %i.ai, label %decode_len.exit, label %.thread77.i

.thread76.i:                                      ; preds = %bb.f
  %i.aj = load i16, ptr %i.e, align 2, !tbaa !23
  %i.ak = or i16 %i.aj, %i.p
  store i16 %i.ak, ptr %i.i, align 2, !tbaa !67
  %i.al = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre.i = load i16, ptr %i.i, align 2, !tbaa !67 ; 2 uses
  %i.am = shl i16 %.pre.i, 1                      ; 2 uses
  %i.an = icmp sgt i16 %.pre.i, -1
  br i1 %i.an, label %decode_len.exit, label %.thread77.i

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp eq i16 %i.n, 2
  br i1 %i.ao, label %bb.i, label %.thread77.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i16, ptr %i.e, align 2, !tbaa !23
  %i.aq = or i16 %i.ap, %i.ae
  store i16 %i.aq, ptr %i.i, align 2, !tbaa !67
  %i.ar = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre56.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %.thread77.i

.thread77.i:                                      ; preds = %.thread102, %bb.i, %bb.h, %.thread76.i
  %i.as = phi i16 [ 16, %bb.i ], [ %i.af, %bb.h ], [ 15, %.thread76.i ], [ 14, %.thread102 ] ; 4 uses
  %i.at = phi i16 [ %.pre56.i, %bb.i ], [ %i.ae, %bb.h ], [ %i.am, %.thread76.i ], [ %i.ah, %.thread102 ] ; 3 uses
  %i.au = shl i16 %i.at, 1                        ; 3 uses
  %i.av = add nsw i16 %i.as, -1                   ; 2 uses
  store i16 %i.av, ptr %i.j, align 8, !tbaa !68
  %i.aw = icmp sgt i16 %i.at, -1
  br i1 %i.aw, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %.thread77.i
  %i.ax = icmp samesign ult i16 %i.as, 2
  br i1 %i.ax, label %.thread78.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = shl i16 %i.at, 2                        ; 3 uses
  %i.az = add nsw i16 %i.as, -2                   ; 3 uses
  store i16 %i.az, ptr %i.j, align 8, !tbaa !68
  %i.ba = icmp sgt i16 %i.au, -1
  br i1 %i.ba, label %.thread.i, label %bb.l

.thread78.i:                                      ; preds = %bb.j
  %i.bb = load i16, ptr %i.e, align 2, !tbaa !23
  %i.bc = or i16 %i.bb, %i.au
  store i16 %i.bc, ptr %i.i, align 2, !tbaa !67
  %i.bd = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre57.i = load i16, ptr %i.i, align 2, !tbaa !67 ; 2 uses
  %i.be = shl i16 %.pre57.i, 1                    ; 2 uses
  %i.bf = icmp sgt i16 %.pre57.i, -1
  br i1 %i.bf, label %decode_len.exit, label %.thread79.i

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i16 %i.as, 2
  br i1 %i.bg, label %bb.m, label %.thread79.i

bb.m:                                             ; preds = %bb.l
  %i.bh = load i16, ptr %i.e, align 2, !tbaa !23
  %i.bi = or i16 %i.bh, %i.ay
  store i16 %i.bi, ptr %i.i, align 2, !tbaa !67
  %i.bj = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre58.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %.thread79.i

.thread79.i:                                      ; preds = %bb.m, %bb.l, %.thread78.i
  %i.bk = phi i16 [ 16, %bb.m ], [ %i.az, %bb.l ], [ 15, %.thread78.i ] ; 4 uses
  %i.bl = phi i16 [ %.pre58.i, %bb.m ], [ %i.ay, %bb.l ], [ %i.be, %.thread78.i ] ; 3 uses
  %i.bm = shl i16 %i.bl, 1                        ; 3 uses
  %i.bn = add nsw i16 %i.bk, -1                   ; 2 uses
  store i16 %i.bn, ptr %i.j, align 8, !tbaa !68
  %i.bo = icmp sgt i16 %i.bl, -1
  br i1 %i.bo, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %.thread79.i
  %i.bp = icmp samesign ult i16 %i.bk, 2
  br i1 %i.bp, label %.thread80.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = shl i16 %i.bl, 2                        ; 3 uses
  %i.br = add nsw i16 %i.bk, -2                   ; 3 uses
  store i16 %i.br, ptr %i.j, align 8, !tbaa !68
  %i.bs = icmp sgt i16 %i.bm, -1
  br i1 %i.bs, label %.thread.i, label %bb.p

.thread80.i:                                      ; preds = %bb.n
  %i.bt = load i16, ptr %i.e, align 2, !tbaa !23
  %i.bu = or i16 %i.bt, %i.bm
  store i16 %i.bu, ptr %i.i, align 2, !tbaa !67
  %i.bv = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre59.i = load i16, ptr %i.i, align 2, !tbaa !67 ; 2 uses
  %i.bw = shl i16 %.pre59.i, 1                    ; 2 uses
  %i.bx = icmp sgt i16 %.pre59.i, -1
  br i1 %i.bx, label %decode_len.exit, label %.thread81.i

bb.p:                                             ; preds = %bb.o
  %i.by = icmp eq i16 %i.bk, 2
  br i1 %i.by, label %bb.q, label %.thread81.i

bb.q:                                             ; preds = %bb.p
  %i.bz = load i16, ptr %i.e, align 2, !tbaa !23
  %i.ca = or i16 %i.bz, %i.bq
  store i16 %i.ca, ptr %i.i, align 2, !tbaa !67
  %i.cb = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre60.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %.thread81.i

.thread81.i:                                      ; preds = %bb.q, %bb.p, %.thread80.i
  %i.cc = phi i16 [ 16, %bb.q ], [ %i.br, %bb.p ], [ 15, %.thread80.i ]
  %i.cd = phi i16 [ %.pre60.i, %bb.q ], [ %i.bq, %bb.p ], [ %i.bw, %.thread80.i ] ; 2 uses
  %i.ce = shl i16 %i.cd, 1
  %i.cf = add nsw i16 %i.cc, -1                   ; 2 uses
  store i16 %i.cf, ptr %i.j, align 8, !tbaa !68
  %i.cg = icmp sgt i16 %i.cd, -1                  ; 2 uses
  %spec.select.i = select i1 %i.cg, i16 6, i16 7
  %spec.select90.i = select i1 %i.cg, i16 63, i16 127
  br label %.thread.i

.thread.i:                                        ; preds = %.thread81.i, %bb.o, %.thread79.i, %bb.k, %.thread77.i, %bb.g
  %i.ch = phi i16 [ %i.ce, %.thread81.i ], [ %i.au, %.thread77.i ], [ %i.ae, %bb.g ], [ %i.ay, %bb.k ], [ %i.bq, %bb.o ], [ %i.bm, %.thread79.i ] ; 2 uses
  %i.ci = phi i16 [ %i.cf, %.thread81.i ], [ %i.av, %.thread77.i ], [ %i.af, %bb.g ], [ %i.az, %bb.k ], [ %i.br, %bb.o ], [ %i.bn, %.thread79.i ] ; 3 uses
  %.03446.i = phi i16 [ %spec.select.i, %.thread81.i ], [ 2, %.thread77.i ], [ 1, %bb.g ], [ 3, %bb.k ], [ 5, %bb.o ], [ 4, %.thread79.i ] ; 3 uses
  %.03343.i = phi i16 [ %spec.select90.i, %.thread81.i ], [ 3, %.thread77.i ], [ 1, %bb.g ], [ 7, %bb.k ], [ 31, %bb.o ], [ 15, %.thread79.i ] ; 2 uses
  %i.cj = icmp samesign ult i16 %i.ci, %.03446.i
  br i1 %i.cj, label %bb.r, label %decode_len.exit

bb.r:                                             ; preds = %.thread.i
  %i.ck = load i16, ptr %i.e, align 2, !tbaa !23
  %i.cl = zext i16 %i.ck to i32
  %i.cm = zext nneg i16 %i.ci to i32              ; 2 uses
  %i.cn = lshr i32 %i.cl, %i.cm
  %i.co = trunc nuw i32 %i.cn to i16
  %i.cp = or i16 %i.ch, %i.co
  store i16 %i.cp, ptr %i.i, align 2, !tbaa !67
  %i.cq = sub nuw nsw i32 16, %i.cm
  %i.cr = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.cq) ; 0 uses
  %.pre61.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %decode_len.exit

decode_len.exit:                                  ; preds = %.thread102, %.thread.i, %bb.r, %.thread80.i, %.thread78.i, %.thread76.i
  %.0334389.i = phi i16 [ %.03343.i, %bb.r ], [ %.03343.i, %.thread.i ], [ 1, %.thread76.i ], [ 7, %.thread78.i ], [ 31, %.thread80.i ], [ 1, %.thread102 ]
  %.0344688.i = phi i16 [ %.03446.i, %bb.r ], [ %.03446.i, %.thread.i ], [ 1, %.thread76.i ], [ 3, %.thread78.i ], [ 5, %.thread80.i ], [ 1, %.thread102 ] ; 2 uses
  %i.cs = phi i16 [ 16, %bb.r ], [ %i.ci, %.thread.i ], [ 15, %.thread76.i ], [ 15, %.thread78.i ], [ 15, %.thread80.i ], [ 14, %.thread102 ]
  %i.ct = phi i16 [ %.pre61.i, %bb.r ], [ %i.ch, %.thread.i ], [ %i.am, %.thread76.i ], [ %i.be, %.thread78.i ], [ %i.bw, %.thread80.i ], [ %i.ah, %.thread102 ]
  %i.cu = zext nneg i16 %.0344688.i to i32        ; 2 uses
  %i.cv = zext i16 %i.ct to i32                   ; 2 uses
  %i.cw = sub nuw nsw i32 16, %i.cu
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc nuw nsw i32 %i.cx to i16
  %i.cz = shl nuw nsw i32 %i.cv, %i.cu            ; 2 uses
  %i.da = trunc i32 %i.cz to i16                  ; 3 uses
  %i.db = sub nsw i16 %i.cs, %.0344688.i          ; 8 uses
  store i16 %i.db, ptr %i.j, align 8, !tbaa !68
  %i.dc = add nuw nsw i16 %.0334389.i, 2
  %i.dd = add nuw nsw i16 %i.dc, %i.cy            ; 2 uses
  %i.de = zext nneg i16 %i.dd to i32
  %i.df = add i32 %.04474, %i.de
  %i.dg = icmp slt i16 %i.db, 1
  br i1 %i.dg, label %.thread, label %bb.u

decode_len.exit.thread:                           ; preds = %bb.e
  %i.dh = icmp samesign ult i16 %i.n, 9
  br i1 %i.dh, label %bb.s, label %decode_len.exit.thread.thread

bb.s:                                             ; preds = %decode_len.exit.thread
  %i.di = load i16, ptr %i.e, align 2, !tbaa !23
  %i.dj = zext i16 %i.di to i32
  %i.dk = zext nneg i16 %i.q to i32
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc nuw i32 %i.dl to i16
  %i.dn = or i16 %i.p, %i.dm
  store i16 %i.dn, ptr %i.i, align 2, !tbaa !67
  %3 = zext nneg i16 %i.q to i32
  %i.do = sub nuw nsw i32 16, %3
  %i.dp = call fastcc i32 @fill_buf(ptr noundef %2, i32 noundef %i.do) ; 0 uses
  %.pre81 = load i16, ptr %i.i, align 2, !tbaa !67
  br label %decode_len.exit.thread.thread

decode_len.exit.thread.thread:                    ; preds = %.thread100, %bb.s, %decode_len.exit.thread
  %i.dq = phi i16 [ 16, %bb.s ], [ %i.q, %decode_len.exit.thread ], [ 15, %.thread100 ]
  %i.dr = phi i16 [ %.pre81, %bb.s ], [ %i.p, %decode_len.exit.thread ], [ %i.ab, %.thread100 ] ; 2 uses
  %i.ds = lshr i16 %i.dr, 8
  %i.dt = shl i16 %i.dr, 8
  store i16 %i.dt, ptr %i.i, align 2, !tbaa !67
  %i.du = add nsw i16 %i.dq, -8
  store i16 %i.du, ptr %i.j, align 8, !tbaa !68
  %i.dv = trunc nuw i16 %i.ds to i8
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.dx = zext i32 %.04275 to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !11
  %i.dz = add nuw i32 %.04474, 1                  ; 2 uses
  %i.ea = add i32 %.04275, 1                      ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, 26623
  br i1 %i.eb, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %decode_len.exit.thread.thread
  %i.ec = load i32, ptr %i.m, align 4, !tbaa !17
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.ee = call i32 @cli_writen(i32 noundef %i.ec, ptr noundef %i.ed, i32 noundef 26624) #11 ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %decode_len.exit
  %i.ef = shl i16 %i.da, 1                        ; 3 uses
  %i.eg = add nsw i16 %i.db, -1                   ; 2 uses
  store i16 %i.eg, ptr %i.j, align 8, !tbaa !68
  %i.eh = icmp sgt i16 %i.da, -1
  br i1 %i.eh, label %bb.ac, label %bb.v

.thread:                                          ; preds = %decode_len.exit
  %i.ei = load i16, ptr %i.e, align 2, !tbaa !23
  %i.ej = zext i16 %i.ei to i32
  %i.ek = zext nneg i16 %i.db to i32
  %i.el = lshr i32 %i.ej, %i.ek
  %i.em = or i32 %i.cz, %i.el
  %i.en = trunc i32 %i.em to i16
  store i16 %i.en, ptr %i.i, align 2, !tbaa !67
  %i.eo = sext i16 %i.db to i32
  %i.ep = sub nsw i32 16, %i.eo
  %i.eq = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.ep) ; 0 uses
  %i.er = load i16, ptr %i.i, align 2, !tbaa !67  ; 3 uses
  %i.es = shl i16 %i.er, 1                        ; 2 uses
  %i.et = icmp sgt i16 %i.er, -1
  br i1 %i.et, label %decode_ptr.exit, label %.thread63

bb.v:                                             ; preds = %bb.u
  %i.eu = icmp eq i16 %i.db, 1
  br i1 %i.eu, label %.thread.i56, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = shl i16 %i.da, 2                        ; 3 uses
  %i.ew = add nsw i16 %i.db, -2                   ; 3 uses
  store i16 %i.ew, ptr %i.j, align 8, !tbaa !68
  %i.ex = icmp sgt i16 %i.ef, -1
  br i1 %i.ex, label %bb.ac, label %bb.x

.thread63:                                        ; preds = %.thread
  %i.ey = shl i16 %i.er, 2                        ; 2 uses
  %i.ez = icmp sgt i16 %i.es, -1
  br i1 %i.ez, label %decode_ptr.exit, label %.thread53.i

.thread.i56:                                      ; preds = %bb.v
  %i.fa = load i16, ptr %i.e, align 2, !tbaa !23
  %i.fb = or i16 %i.fa, %i.ef
  store i16 %i.fb, ptr %i.i, align 2, !tbaa !67
  %i.fc = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre.i57 = load i16, ptr %i.i, align 2, !tbaa !67 ; 2 uses
  %i.fd = shl i16 %.pre.i57, 1                    ; 2 uses
  %i.fe = icmp sgt i16 %.pre.i57, -1
  br i1 %i.fe, label %decode_ptr.exit, label %.thread53.i

bb.x:                                             ; preds = %bb.w
  %i.ff = icmp eq i16 %i.db, 2
  br i1 %i.ff, label %bb.y, label %.thread53.i

bb.y:                                             ; preds = %bb.x
  %i.fg = load i16, ptr %i.e, align 2, !tbaa !23
  %i.fh = or i16 %i.fg, %i.ev
  store i16 %i.fh, ptr %i.i, align 2, !tbaa !67
  %i.fi = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre42.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %.thread53.i

.thread53.i:                                      ; preds = %.thread63, %bb.y, %bb.x, %.thread.i56
  %i.fj = phi i16 [ 16, %bb.y ], [ %i.ew, %bb.x ], [ 15, %.thread.i56 ], [ 14, %.thread63 ] ; 2 uses
  %i.fk = phi i16 [ %.pre42.i, %bb.y ], [ %i.ev, %bb.x ], [ %i.fd, %.thread.i56 ], [ %i.ey, %.thread63 ] ; 2 uses
  %i.fl = shl i16 %i.fk, 1                        ; 3 uses
  %i.fm = add nsw i16 %i.fj, -1                   ; 3 uses
  store i16 %i.fm, ptr %i.j, align 8, !tbaa !68
  %i.fn = icmp sgt i16 %i.fk, -1
  br i1 %i.fn, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.thread53.i
  %i.fo = icmp samesign ult i16 %i.fj, 2
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fp = load i16, ptr %i.e, align 2, !tbaa !23
  %i.fq = or i16 %i.fp, %i.fl
  store i16 %i.fq, ptr %i.i, align 2, !tbaa !67
  %i.fr = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef 16) ; 0 uses
  %.pre43.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fs = phi i16 [ 16, %bb.aa ], [ %i.fm, %bb.z ]
  %i.ft = phi i16 [ %.pre43.i, %bb.aa ], [ %i.fl, %bb.z ] ; 2 uses
  %i.fu = shl i16 %i.ft, 1
  %i.fv = add nsw i16 %i.fs, -1                   ; 2 uses
  store i16 %i.fv, ptr %i.j, align 8, !tbaa !68
  %i.fw = icmp sgt i16 %i.ft, -1                  ; 2 uses
  %spec.select.i55 = select i1 %i.fw, i16 12, i16 13
  %spec.select59.i = select i1 %i.fw, i16 3584, i16 7680
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread53.i, %bb.w, %bb.u
  %i.fx = phi i16 [ %i.fl, %.thread53.i ], [ %i.ef, %bb.u ], [ %i.ev, %bb.w ], [ %i.fu, %bb.ab ] ; 2 uses
  %i.fy = phi i16 [ %i.fm, %.thread53.i ], [ %i.eg, %bb.u ], [ %i.ew, %bb.w ], [ %i.fv, %bb.ab ] ; 3 uses
  %.034.lcssa.i = phi i16 [ 11, %.thread53.i ], [ 9, %bb.u ], [ 10, %bb.w ], [ %spec.select.i55, %bb.ab ] ; 3 uses
  %.033.lcssa.i = phi i16 [ 1536, %.thread53.i ], [ 0, %bb.u ], [ 512, %bb.w ], [ %spec.select59.i, %bb.ab ] ; 2 uses
  %i.fz = icmp samesign ult i16 %i.fy, %.034.lcssa.i
  br i1 %i.fz, label %bb.ad, label %decode_ptr.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ga = load i16, ptr %i.e, align 2, !tbaa !23
  %i.gb = zext i16 %i.ga to i32
  %i.gc = zext nneg i16 %i.fy to i32              ; 2 uses
  %i.gd = lshr i32 %i.gb, %i.gc
  %i.ge = trunc nuw i32 %i.gd to i16
  %i.gf = or i16 %i.fx, %i.ge
  store i16 %i.gf, ptr %i.i, align 2, !tbaa !67
  %i.gg = sub nuw nsw i32 16, %i.gc
  %i.gh = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.gg) ; 0 uses
  %.pre44.i = load i16, ptr %i.i, align 2, !tbaa !67
  br label %decode_ptr.exit

decode_ptr.exit:                                  ; preds = %.thread63, %.thread, %.thread.i56, %bb.ac, %bb.ad
  %.033.lcssa58.i = phi i16 [ %.033.lcssa.i, %bb.ad ], [ %.033.lcssa.i, %bb.ac ], [ 512, %.thread.i56 ], [ 512, %.thread63 ], [ 0, %.thread ]
  %.034.lcssa57.i = phi i16 [ %.034.lcssa.i, %bb.ad ], [ %.034.lcssa.i, %bb.ac ], [ 10, %.thread.i56 ], [ 10, %.thread63 ], [ 9, %.thread ] ; 3 uses
  %i.gi = phi i16 [ 16, %bb.ad ], [ %i.fy, %bb.ac ], [ 15, %.thread.i56 ], [ 14, %.thread63 ], [ 15, %.thread ]
  %i.gj = phi i16 [ %.pre44.i, %bb.ad ], [ %i.fx, %bb.ac ], [ %i.fd, %.thread.i56 ], [ %i.ey, %.thread63 ], [ %i.es, %.thread ] ; 2 uses
  %narrow.i = sub nuw nsw i16 16, %.034.lcssa57.i
  %i.gk = lshr i16 %i.gj, %narrow.i
  %i.gl = shl i16 %i.gj, %.034.lcssa57.i
  store i16 %i.gl, ptr %i.i, align 2, !tbaa !67
  %i.gm = sub nsw i16 %i.gi, %.034.lcssa57.i
  store i16 %i.gm, ptr %i.j, align 8, !tbaa !68
  %i.gn = add nuw nsw i16 %i.gk, %.033.lcssa58.i
  %i.go = xor i16 %i.gn, -1
  %i.gp = trunc nuw nsw i32 %.04275 to i16
  %i.gq = add nsw i16 %i.go, %i.gp                ; 3 uses
  %i.gr = icmp slt i16 %i.gq, 0
  %narrow = add nsw i16 %i.gq, 26624
  %spec.select = select i1 %i.gr, i16 %narrow, i16 %i.gq ; 2 uses
  %or.cond = icmp ugt i16 %spec.select, 26623
  br i1 %or.cond, label %bb.ae, label %.lr.ph

bb.ae:                                            ; preds = %decode_ptr.exit
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.29) #11
  br label %.loopexit69

.lr.ph:                                           ; preds = %decode_ptr.exit, %bb.ag
  %.in = phi i16 [ %i.gs, %bb.ag ], [ %i.dd, %decode_ptr.exit ] ; 2 uses
  %.173 = phi i16 [ %spec.store.select, %bb.ag ], [ %spec.select, %decode_ptr.exit ] ; 2 uses
  %.14372 = phi i32 [ %.2, %bb.ag ], [ %.04275, %decode_ptr.exit ] ; 2 uses
  %i.gs = add nsw i16 %.in, -1
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.gu = sext i16 %.173 to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !11
  %i.gx = zext i32 %.14372 to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gx
  store i8 %i.gw, ptr %i.gy, align 1, !tbaa !11
  %i.gz = add i32 %.14372, 1                      ; 2 uses
  %i.ha = icmp ugt i32 %i.gz, 26623
  br i1 %i.ha, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph
  %i.hb = load i32, ptr %i.m, align 4, !tbaa !17
  %i.hc = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.hd = call i32 @cli_writen(i32 noundef %i.hb, ptr noundef %i.hc, i32 noundef 26624) #11 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph
  %.2 = phi i32 [ 0, %bb.af ], [ %i.gz, %.lr.ph ] ; 2 uses
  %i.he = add i16 %.173, 1                        ; 2 uses
  %i.hf = icmp sgt i16 %i.he, 26623
  %spec.store.select = select i1 %i.hf, i16 0, i16 %i.he
  %i.hg = icmp samesign ugt i16 %.in, 1
  br i1 %i.hg, label %.lr.ph, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %bb.ag, %decode_len.exit.thread.thread, %bb.t
  %.145 = phi i32 [ %i.dz, %bb.t ], [ %i.dz, %decode_len.exit.thread.thread ], [ %i.df, %bb.ag ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.t ], [ %i.ea, %decode_len.exit.thread.thread ], [ %.2, %bb.ag ] ; 2 uses
end_hunk_0
