Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/err_save?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@OSSL_ERR_STATE_save_to_mark:bb.a
  store i32 0, ptr %i.z, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 0, ptr %i.aa, align 8, !tbaa !17
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16 ; 3 uses
  %.not94 = icmp eq i32 %i.af, %i.ac
  br i1 %.not94, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.096 = phi i32 [ %i.am, %bb.g ], [ %i.ac, %bb.f ] ; 4 uses
  %.08495 = phi i32 [ %i.an, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ag = sext i32 %.096 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  %i.ak = icmp sgt i32 %.096, 0
  %i.al = add nsw i32 %.096, -1
  %i.am = select i1 %i.ak, i32 %i.al, i32 15      ; 2 uses
  %i.an = add nuw nsw i32 %.08495, 1              ; 2 uses
  %.not = icmp eq i32 %i.af, %i.am
  br i1 %.not, label %.lr.ph103, label %.lr.ph, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph
  %.not109 = icmp eq i32 %.08495, 0
  br i1 %.not109, label %.thread, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.g, %.critedge
  %.0.lcssa133 = phi i32 [ %.096, %.critedge ], [ %i.af, %bb.g ] ; 2 uses
  %.084.lcssa132 = phi i32 [ %.08495, %.critedge ], [ %i.an, %bb.g ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %wide.trip.count = zext i32 %.084.lcssa132 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph103, %err_clear.exit91
  %indvars.iv = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next, %err_clear.exit91 ] ; 12 uses
  %.085102 = phi i32 [ %.0.lcssa133, %.lr.ph103 ], [ %i.be, %err_clear.exit91 ]
  %i.bd = add nsw i32 %.085102, 1
  %i.be = srem i32 %i.bd, 16                      ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = and i32 %i.bg, 1
  %.not.i.i90 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  br i1 %.not.i.i90, label %err_clear.exit91, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.bj, ptr noundef nonnull @.str, i32 noundef 42) #6
  br label %err_clear.exit91

err_clear.exit91:                                 ; preds = %bb.h, %bb.i
  store ptr null, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  store i64 0, ptr %i.bk, align 8, !tbaa !13
  store i32 0, ptr %i.bf, align 4, !tbaa !8
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.bm, align 4, !tbaa !8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv ; 2 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  store i32 -1, ptr %i.bo, align 4, !tbaa !8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.bq, ptr noundef nonnull @.str, i32 noundef 109) #6
  store ptr null, ptr %i.bp, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.bs, ptr noundef nonnull @.str, i32 noundef 111) #6
  store ptr null, ptr %i.br, align 8, !tbaa !11
  %i.bt = sext i32 %i.be to i64                   ; 8 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  store i32 %i.bv, ptr %i.bm, align 4, !tbaa !8
  store i32 0, ptr %i.bl, align 4, !tbaa !8
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bt ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !13
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !13
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bt ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !11
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bt ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !13
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bt ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  store i32 %i.cf, ptr %i.bf, align 4, !tbaa !8
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bt ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11
  store ptr %i.ch, ptr %i.bp, align 8, !tbaa !11
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bt ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  store i32 %i.cj, ptr %i.bo, align 4, !tbaa !8
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bt ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !11
  store ptr %i.cl, ptr %i.br, align 8, !tbaa !11
  store i32 0, ptr %i.bu, align 4, !tbaa !8
  store i64 0, ptr %i.bw, align 8, !tbaa !13
  store ptr null, ptr %i.by, align 8, !tbaa !11
  store i64 0, ptr %i.cb, align 8, !tbaa !13
  store i32 0, ptr %i.ce, align 4, !tbaa !8
  store ptr null, ptr %i.cg, align 8, !tbaa !11
  store i32 0, ptr %i.ci, align 4, !tbaa !8
  store ptr null, ptr %i.ck, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.j, label %bb.h, !llvm.loop !21

.thread:                                          ; preds = %.critedge, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 900
  store i32 0, ptr %i.cm, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 0, ptr %i.cn, align 8, !tbaa !17
  br label %.lr.ph107

bb.j:                                             ; preds = %err_clear.exit91
  store i32 %.0.lcssa133, ptr %i.ab, align 8, !tbaa !17
  %i.co = add nsw i32 %.084.lcssa132, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 900
  store i32 15, ptr %i.cp, align 4, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 %i.co, ptr %i.cq, align 8, !tbaa !17
  %i.cr = icmp samesign ult i32 %.084.lcssa132, 16
  br i1 %i.cr, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %.thread, %bb.j
  %.1.lcssa137142 = phi i32 [ 0, %.thread ], [ %.084.lcssa132, %bb.j ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.da = zext nneg i32 %.1.lcssa137142 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph107, %err_clear.exit93
  %indvars.iv111 = phi i64 [ %i.da, %.lr.ph107 ], [ %indvars.iv.next112, %err_clear.exit93 ] ; 10 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv111 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = and i32 %i.dc, 1
  %.not.i.i92 = icmp eq i32 %i.dd, 0
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv111 ; 2 uses
  br i1 %.not.i.i92, label %err_clear.exit93, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.df, ptr noundef nonnull @.str, i32 noundef 42) #6
  br label %err_clear.exit93

err_clear.exit93:                                 ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.de, align 8, !tbaa !11
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv111
  store i64 0, ptr %i.dg, align 8, !tbaa !13
  store i32 0, ptr %i.db, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv111
  store i32 0, ptr %i.dh, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv111
  store i32 0, ptr %i.di, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv111
  store i64 0, ptr %i.dj, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv111
  store i32 -1, ptr %i.dk, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv111 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.dm, ptr noundef nonnull @.str, i32 noundef 109) #6
  store ptr null, ptr %i.dl, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv111 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.do, ptr noundef nonnull @.str, i32 noundef 111) #6
  store ptr null, ptr %i.dn, align 8, !tbaa !11
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %1 = and i64 %indvars.iv.next112, 4294967295
  %exitcond114.not = icmp eq i64 %1, 16
  br i1 %exitcond114.not, label %.loopexit, label %bb.k, !llvm.loop !22

.loopexit:                                        ; preds = %err_clear.exit93, %bb.j, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define void @OSSL_ERR_STATE_restore(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @ossl_err_get_state_int() #6 ; 12 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.b, align 4, !tbaa !16   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !17
  %.not59 = icmp eq i32 %i.i, %i.j
  br i1 %.not59, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 896 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 900 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 704
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 768
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %err_clear_data.exit
  %.060 = phi i32 [ %i.i, %.lr.ph ], [ %i.ac, %err_clear_data.exit ]
  %i.ab = add nsw i32 %.060, 1
  %i.ac = srem i32 %i.ab, 16                      ; 3 uses
  %i.ad = sext i32 %i.ac to i64                   ; 8 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = and i32 %i.af, 2
  %.not53 = icmp eq i32 %i.ag, 0
  br i1 %.not53, label %bb.f, label %err_clear_data.exit, !llvm.loop !23

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.k, align 8, !tbaa !17
  %i.ai = add nsw i32 %i.ah, 1
  %i.aj = srem i32 %i.ai, 16                      ; 4 uses
  store i32 %i.aj, ptr %i.k, align 8, !tbaa !17
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !16
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %err_get_slot.exit

bb.g:                                             ; preds = %bb.f
  %i.am = trunc nsw i32 %i.aj to i8
  %.lhs.trunc.i = add nsw i8 %i.am, 1
  %i.an = srem i8 %.lhs.trunc.i, 16
  %.sext.i = sext i8 %i.an to i32
  store i32 %.sext.i, ptr %i.l, align 4, !tbaa !16
  br label %err_get_slot.exit

err_get_slot.exit:                                ; preds = %bb.f, %bb.g
  %i.ao = sext i32 %i.aj to i64                   ; 14 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ao ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = and i32 %i.aq, 1
  %.not.i.i = icmp eq i32 %i.ar, 0
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ao ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %err_get_slot.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.at, null
  br i1 %.not23.i.i, label %err_clear.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.at, align 1, !tbaa !24
  br label %.sink.split.i.i

bb.j:                                             ; preds = %err_get_slot.exit
  store ptr null, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ao
  store i64 0, ptr %i.au, align 8, !tbaa !13
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.sink.i.i = phi i32 [ 0, %bb.j ], [ 1, %bb.i ]
  store i32 %.sink.i.i, ptr %i.ap, align 4, !tbaa !8
  br label %err_clear.exit

err_clear.exit:                                   ; preds = %bb.h, %.sink.split.i.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ao
  store i32 0, ptr %i.av, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ao ; 2 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  store i32 -1, ptr %i.ay, align 4, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ao ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.ba, ptr noundef nonnull @.str, i32 noundef 109) #6
  store ptr null, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ao ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.bc, ptr noundef nonnull @.str, i32 noundef 111) #6
  store ptr null, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load i32, ptr %i.ae, align 4, !tbaa !8
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !8
  %i.be = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ad
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !13
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ad
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11 ; 4 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ad
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ad
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 4 uses
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.bm, ptr noundef nonnull @.str, i32 noundef 73) #6
  %i.bn = icmp eq ptr %i.bh, null
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %err_clear.exit
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %err_clear.exit
  store ptr null, ptr %i.az, align 8, !tbaa !11
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bh) #7
  %i.br = add i64 %i.bq, 1
  %i.bs = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.br, ptr noundef null, i32 noundef 0) #6 ; 3 uses
  store ptr %i.bs, ptr %i.az, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bs, ptr noundef nonnull readonly dereferenceable(1) %i.bh) #6 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i32 %i.bj, ptr %i.ay, align 4, !tbaa !8
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !11
  tail call void @CRYPTO_free(ptr noundef %i.bu, ptr noundef nonnull @.str, i32 noundef 83) #6
  %i.bv = icmp eq ptr %i.bl, null
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i8, ptr %i.bl, align 1, !tbaa !24
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.bb, align 8, !tbaa !11
  br label %err_set_debug.exit

bb.r:                                             ; preds = %bb.p
  %i.by = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bl) #7
  %i.bz = add i64 %i.by, 1
  %i.ca = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.bz, ptr noundef null, i32 noundef 0) #6 ; 3 uses
  store ptr %i.ca, ptr %i.bb, align 8, !tbaa !11
  %.not29.i = icmp eq ptr %i.ca, null
  br i1 %.not29.i, label %err_set_debug.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull readonly dereferenceable(1) %i.bl) #6 ; 0 uses
  br label %err_set_debug.exit

err_set_debug.exit:                               ; preds = %bb.q, %bb.r, %bb.s
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11
  %.not54 = icmp eq ptr %i.cd, null
  br i1 %.not54, label %bb.x, label %bb.t

bb.t:                                             ; preds = %err_set_debug.exit
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13 ; 4 uses
  %.not55 = icmp eq i64 %i.cf, 0
end_hunk_0
