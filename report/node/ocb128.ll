inline.NumInlined: 17
inline.NumDeleted: 5
begin_hunk_0_@CRYPTO_ocb128_setiv:bb.a
  call void %i.u(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.w) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load <8 x i8>, ptr %i.a, align 16, !tbaa !21
  %i.aa = load <8 x i8>, ptr %i.x, align 1, !tbaa !21
  %i.ab = xor <8 x i8> %i.aa, %i.z
  store <8 x i8> %i.ab, ptr %i.y, align 16, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !21  ; 2 uses
  %i.ae = lshr i8 %i.ad, 3
  %i.af = and i8 %i.ae, 7
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = and i8 %i.ad, 7                         ; 3 uses
  %i.ak = zext nneg i8 %i.aj to i16               ; 9 uses
  %i.al = sub nuw nsw i16 8, %i.ak                ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21  ; 2 uses
  %i.ao = zext i8 %i.an to i16
  %i.ap = lshr i16 %i.ao, %i.al
  %i.aq = shl i8 %i.an, %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 159 ; 3 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = zext i8 %i.at to i16                    ; 2 uses
  %i.av = lshr i16 %i.au, %i.al
  %i.aw = shl nuw nsw i16 %i.au, %i.ak
  %i.ax = or i16 %i.aw, %i.ap
  %i.ay = trunc i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21
  %i.bc = zext i8 %i.bb to i16                    ; 2 uses
  %i.bd = lshr i16 %i.bc, %i.al
  %i.be = shl nuw nsw i16 %i.bc, %i.ak
  %i.bf = or i16 %i.be, %i.av
  %i.bg = trunc i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !21
  %i.bk = zext i8 %i.bj to i16                    ; 2 uses
  %i.bl = lshr i16 %i.bk, %i.al
  %i.bm = shl nuw nsw i16 %i.bk, %i.ak
  %i.bn = or i16 %i.bm, %i.bd
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = zext i8 %i.br to i16                    ; 2 uses
  %i.bt = lshr i16 %i.bs, %i.al
  %i.bu = shl nuw nsw i16 %i.bs, %i.ak
  %i.bv = or i16 %i.bu, %i.bl
  %i.bw = trunc i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  %i.ca = zext i8 %i.bz to i16                    ; 2 uses
  %i.cb = lshr i16 %i.ca, %i.al
  %i.cc = shl nuw nsw i16 %i.ca, %i.ak
  %i.cd = or i16 %i.cc, %i.bt
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.ce, ptr %i.cf, align 2, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !21
  %i.ci = zext i8 %i.ch to i16                    ; 2 uses
  %i.cj = lshr i16 %i.ci, %i.al
  %i.ck = shl nuw nsw i16 %i.ci, %i.ak
  %i.cl = or i16 %i.ck, %i.cb
  %i.cm = trunc i16 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.cr = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cs = load <8 x i8>, ptr %i.cq, align 1, !tbaa !21
  %i.ct = load <8 x i8>, ptr %i.ah, align 1, !tbaa !21
  %i.cu = zext i8 %i.cr to i16
  %i.cv = zext <8 x i8> %i.cs to <8 x i16>
  %i.cw = shl nuw nsw i16 %i.cu, %i.ak
  %i.cx = or i16 %i.cw, %i.cj
  %i.cy = trunc i16 %i.cx to i8
  store i8 %i.cy, ptr %i.cp, align 8, !tbaa !21
  %i.cz = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.da = shufflevector <8 x i16> %i.cz, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.db = lshr <8 x i16> %i.cv, %i.da
  %i.dc = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.dd = shufflevector <8 x i8> %i.dc, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.de = shl <8 x i8> %i.ct, %i.dd
  %i.df = trunc nuw nsw <8 x i16> %i.db to <8 x i8>
  %i.dg = or <8 x i8> %i.de, %i.df
  store <8 x i8> %i.dg, ptr %i.ai, align 8, !tbaa !21
  %i.dh = lshr exact i16 -256, %i.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !21
  %i.dk = zext i8 %i.dj to i16
  %i.dl = and i16 %i.dh, %i.dk
  %i.dm = lshr i16 %i.dl, %i.al
  %i.dn = load i8, ptr %i.ar, align 1, !tbaa !21
  %i.do = trunc nuw nsw i16 %i.dm to i8
  %i.dp = or i8 %i.dn, %i.do
  store i8 %i.dp, ptr %i.ar, align 1, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ocb_block_xor.exit
  %.0 = phi i32 [ 1, %ocb_block_xor.exit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @CRYPTO_ocb128_aad(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.OCB_BLOCK, align 16          ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = lshr i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 3 uses
  %.05158 = add i64 %i.c, 1                       ; 2 uses
  %.not59 = icmp ugt i64 %.05158, %i.d
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.05162 = phi i64 [ %.05158, %.lr.ph ], [ %.051, %bb.c ] ; 3 uses
  %.04961 = phi ptr [ %1, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %.051.in60 = phi i64 [ %i.c, %.lr.ph ], [ %.05162, %bb.c ]
  %i.j = and i64 %.051.in60, 1
  %.not5.i.not = icmp eq i64 %i.j, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %.046.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.05162, %bb.b ] ; 2 uses
  %i.k = lshr exact i64 %.046.i, 1
  %i.l = add i32 %.07.i, 1                        ; 2 uses
  %i.m = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !24

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.n = zext i32 %i.l to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.n, %ocb_ntz.exit.loopexit ]
  %i.o = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not56 = icmp eq ptr %i.o, null
  br i1 %.not56, label %.critedge, label %bb.c

bb.c:                                             ; preds = %ocb_ntz.exit
  %i.p = load i64, ptr %i.e, align 8, !tbaa !21
  %i.q = load i64, ptr %i.o, align 8, !tbaa !21
  %i.r = xor i64 %i.q, %i.p                       ; 2 uses
  store i64 %i.r, ptr %i.e, align 8, !tbaa !21
  %i.s = load i64, ptr %i.f, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %i.v = xor i64 %i.u, %i.s                       ; 2 uses
  store i64 %i.v, ptr %i.f, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.04961, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.04961, i64 16 ; 2 uses
  %i.x = load i64, ptr %3, align 16, !tbaa !21
  %i.y = xor i64 %i.x, %i.r
  store i64 %i.y, ptr %3, align 16, !tbaa !21
  %i.z = load i64, ptr %i.g, align 8, !tbaa !21
  %i.aa = xor i64 %i.z, %i.v
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !21
  %i.ab = load ptr, ptr %0, align 8, !tbaa !16
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !19
  call void %i.ab(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.ac) #7
  %i.ad = load <2 x i64>, ptr %3, align 16, !tbaa !21
  %i.ae = load <2 x i64>, ptr %i.i, align 8, !tbaa !21
  %i.af = xor <2 x i64> %i.ae, %i.ad
  store <2 x i64> %i.af, ptr %i.i, align 8, !tbaa !21
  %.051 = add i64 %.05162, 1                      ; 2 uses
  %.not = icmp ugt i64 %.051, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.049.lcssa = phi ptr [ %1, %bb.a ], [ %i.w, %bb.c ]
  %i.ag = and i64 %2, 15                          ; 5 uses
  %.not55 = icmp eq i64 %i.ag, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !21
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !21
  %i.al = xor <2 x i64> %i.ak, %i.aj              ; 2 uses
  store <2 x i64> %i.al, ptr %i.ah, align 8, !tbaa !21
  %4 = sub nuw nsw i64 16, %i.ag
  %5 = getelementptr i8, ptr %3, i64 %i.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %5, i8 0, i64 %4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %.049.lcssa, i64 %i.ag, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  store i8 -128, ptr %i.am, align 1, !tbaa !21
  %i.an = load <2 x i64>, ptr %3, align 16, !tbaa !21
  %i.ao = xor <2 x i64> %i.an, %i.al
  store <2 x i64> %i.ao, ptr %3, align 16, !tbaa !21
  %i.ap = load ptr, ptr %0, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  call void %i.ap(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.ar) #7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.at = load <2 x i64>, ptr %3, align 16, !tbaa !21
  %i.au = load <2 x i64>, ptr %i.as, align 8, !tbaa !21
  %i.av = xor <2 x i64> %i.au, %i.at
  store <2 x i64> %i.av, ptr %i.as, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  store i64 %i.d, ptr %i.b, align 8, !tbaa !23
  br label %.critedge

.critedge:                                        ; preds = %ocb_ntz.exit, %bb.e
  %.2 = phi i32 [ 1, %bb.e ], [ 0, %ocb_ntz.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ocb_lookup_l(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %.critedge.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %.not33 = icmp ult i64 %1, %i.d
  br i1 %.not33, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %1, %i.d
  %i.f = and i64 %i.e, -4
  %i.g = add i64 %i.d, 4
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = shl i64 %i.h, 4
  %i.l = tail call ptr @CRYPTO_realloc(ptr noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 113) #7 ; 2 uses
  %.not34 = icmp eq ptr %i.l, null
  br i1 %.not34, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.i, align 8, !tbaa !15
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.02835 = phi i64 [ %i.b, %.lr.ph ], [ %i.bd, %bb.e ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.02835 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.r = load i8, ptr %i.q, align 1, !tbaa !21    ; 2 uses
  %i.s = shl i8 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 31
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.v = load i8, ptr %i.u, align 2, !tbaa !21    ; 2 uses
  %i.w = tail call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.r, i8 1)
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 30
  store i8 %i.w, ptr %i.x, align 2, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  %i.z = load i8, ptr %i.y, align 1, !tbaa !21    ; 2 uses
  %i.aa = tail call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.v, i8 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 29
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !21  ; 2 uses
  %i.ae = tail call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.z, i8 1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21  ; 2 uses
  %i.ai = tail call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.ad, i8 1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 27
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !21  ; 2 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ah, i8 1)
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  store i8 %i.am, ptr %i.an, align 2, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21  ; 2 uses
  %i.aq = tail call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.al, i8 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.av = load i8, ptr %i.o, align 8, !tbaa !21
  %i.aw = load <8 x i8>, ptr %i.o, align 8, !tbaa !21
  %isneg.i = icmp slt i8 %i.av, 0
  %i.ax = select i1 %isneg.i, i8 -121, i8 0
  %i.ay = load i8, ptr %i.as, align 8, !tbaa !21
  %i.az = load <8 x i8>, ptr %i.au, align 1, !tbaa !21
  %i.ba = tail call i8 @llvm.fshl.i8(i8 %i.ay, i8 %i.ap, i8 1)
  store i8 %i.ba, ptr %i.at, align 8, !tbaa !21
  %i.bb = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.aw, <8 x i8> %i.az, <8 x i8> splat (i8 1))
  store <8 x i8> %i.bb, ptr %i.p, align 8, !tbaa !21
  %i.bc = xor i8 %i.ax, %i.s
  store i8 %i.bc, ptr %i.t, align 1, !tbaa !21
  %i.bd = add nuw i64 %.02835, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.a, %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.bg, %.critedge.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @CRYPTO_ocb128_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.OCB_BLOCK, align 16          ; 11 uses
  %5 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %i.a = lshr i64 %3, 4                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %.not95 = icmp eq ptr %i.f, null
  br i1 %.not95, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = lshr i64 %i.d, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = tail call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %i.i)
  %.not99 = icmp eq ptr %i.j, null
  br i1 %.not99, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = load i64, ptr %i.b, align 8, !tbaa !28
  %i.o = add i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void %i.k(ptr noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noundef nonnull %i.s) #7
  %i.t = and i64 %3, -16                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %.091105 = add i64 %i.c, 1                      ; 2 uses
  %.not96106 = icmp ugt i64 %.091105, %i.d
  br i1 %.not96106, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.091110 = phi i64 [ %.091105, %.lr.ph ], [ %.091, %bb.f ] ; 3 uses
  %.184109 = phi ptr [ %1, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %.188108 = phi ptr [ %2, %.lr.ph ], [ %i.az, %bb.f ] ; 2 uses
  %.091.in107 = phi i64 [ %i.c, %.lr.ph ], [ %.091110, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.aa = and i64 %.091.in107, 1
  %.not5.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 0, %bb.e ]
  %.046.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %.091110, %bb.e ] ; 2 uses
  %i.ab = lshr exact i64 %.046.i, 1
  %i.ac = add i32 %.07.i, 1                       ; 2 uses
  %i.ad = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !24

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.ae = zext i32 %i.ac to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ae, %ocb_ntz.exit.loopexit ]
  %i.af = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not97 = icmp eq ptr %i.af, null
  br i1 %.not97, label %.critedge102, label %bb.f

bb.f:                                             ; preds = %ocb_ntz.exit
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !21
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !21
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.184109, i64 16 ; 2 uses
  %i.al = xor i64 %i.ah, %i.ag                    ; 2 uses
  store i64 %i.al, ptr %i.w, align 8, !tbaa !21
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.an = xor i64 %i.am, %i.ai                    ; 2 uses
  store i64 %i.an, ptr %i.x, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.184109, i64 16, i1 false)
  %i.ao = load <2 x i64>, ptr %4, align 16, !tbaa !21 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.y, align 8, !tbaa !21
  %i.aq = xor <2 x i64> %i.ap, %i.ao
  store <2 x i64> %i.aq, ptr %i.y, align 8, !tbaa !21
  %i.ar = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.as = insertelement <2 x i64> %i.ar, i64 %i.an, i64 1
  %i.at = xor <2 x i64> %i.ao, %i.as
  store <2 x i64> %i.at, ptr %4, align 16, !tbaa !21
  %i.au = load ptr, ptr %0, align 8, !tbaa !16
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !19
  call void %i.au(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %i.av) #7
  %i.aw = load <2 x i64>, ptr %i.w, align 8, !tbaa !21
  %i.ax = load <2 x i64>, ptr %4, align 16, !tbaa !21
  %i.ay = xor <2 x i64> %i.ax, %i.aw
  store <2 x i64> %i.ay, ptr %4, align 16, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.188108, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.188108, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.091 = add i64 %.091110, 1                     ; 2 uses
  %.not96 = icmp ugt i64 %.091, %i.d
  br i1 %.not96, label %.loopexit, label %bb.e, !llvm.loop !29

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c
  %.390 = phi ptr [ %i.v, %bb.c ], [ %2, %bb.d ], [ %i.az, %bb.f ] ; 5 uses
  %.386 = phi ptr [ %i.u, %bb.c ], [ %1, %bb.d ], [ %i.ak, %bb.f ] ; 6 uses
  %i.ba = and i64 %3, 15                          ; 6 uses
  %.not100 = icmp eq i64 %i.ba, 0
  br i1 %.not100, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !21
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !21
  %i.bf = xor <2 x i64> %i.be, %i.bd
  store <2 x i64> %i.bf, ptr %i.bb, align 8, !tbaa !21
  %i.bg = load ptr, ptr %0, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  call void %i.bg(ptr noundef nonnull %i.bb, ptr noundef nonnull %5, ptr noundef %i.bi) #7
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bj = icmp samesign ult i64 %i.ba, 4
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %3, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.08.i = phi i64 [ 0, %.new ], [ %i.cl, %bb.h ] ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.386, i64 %.08.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !21
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %.390, i64 %.08.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !21
  %i.bq = or disjoint i64 %.08.i, 1               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.386, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = xor i8 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %.390, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !21
  %i.bx = or disjoint i64 %.08.i, 2               ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.386, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !21
  %i.cc = xor i8 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %.390, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !21
  %i.ce = or disjoint i64 %.08.i, 3               ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.386, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 %i.ce
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !21
  %i.cj = xor i8 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %.390, i64 %i.ce
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !21
  %i.cl = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ocb_block_xor.exit.unr-lcssa, label %bb.h, !llvm.loop !30

ocb_block_xor.exit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ocb_block_xor.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ocb_block_xor.exit.unr-lcssa, %bb.g
  %.08.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.cl, %ocb_block_xor.exit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.08.i.epil = phi i64 [ %.08.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.i ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.386, i64 %.08.i.epil
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !21
  %i.cq = xor i8 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.390, i64 %.08.i.epil
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !21
  %i.cs = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ocb_block_xor.exit, label %bb.i, !llvm.loop !31

ocb_block_xor.exit:                               ; preds = %bb.i, %ocb_block_xor.exit.unr-lcssa
  %6 = sub nuw nsw i64 16, %i.ba
  %7 = getelementptr i8, ptr %5, i64 %i.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 0, i64 %6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 1 %.386, i64 %i.ba, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 %i.ba
  store i8 -128, ptr %i.ct, align 1, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cv = load <2 x i64>, ptr %5, align 16, !tbaa !21
  %i.cw = load <2 x i64>, ptr %i.cu, align 8, !tbaa !21
  %i.cx = xor <2 x i64> %i.cw, %i.cv
  store <2 x i64> %i.cx, ptr %i.cu, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.j

bb.j:                                             ; preds = %ocb_block_xor.exit, %.loopexit
  store i64 %i.d, ptr %i.b, align 8, !tbaa !28
  br label %.critedge

.critedge102:                                     ; preds = %ocb_ntz.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.critedge102, %bb.j
  %.3 = phi i32 [ 1, %bb.j ], [ 0, %.preheader.preheader ], [ 0, %.critedge102 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @CRYPTO_ocb128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %5 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %i.a = lshr i64 %3, 4                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %.not100 = icmp eq ptr %i.f, null
  br i1 %.not100, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = lshr i64 %i.d, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = tail call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %i.i)
  %.not104 = icmp eq ptr %i.j, null
  br i1 %.not104, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = load i64, ptr %i.b, align 8, !tbaa !28
  %i.o = add i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void %i.k(ptr noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noundef nonnull %i.s) #7
  %i.t = and i64 %3, -16                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %.096111 = add i64 %i.c, 1                      ; 2 uses
  %.not101112 = icmp ugt i64 %.096111, %i.d
  br i1 %.not101112, label %.thread108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.e

.thread108:                                       ; preds = %bb.f, %bb.d
  %.192.lcssa = phi ptr [ %2, %bb.d ], [ %i.bb, %bb.f ]
  %.187.lcssa = phi ptr [ %1, %bb.d ], [ %i.ap, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.096116 = phi i64 [ %.096111, %.lr.ph ], [ %.096, %bb.f ] ; 3 uses
  %.187115 = phi ptr [ %1, %.lr.ph ], [ %i.ap, %bb.f ] ; 2 uses
  %.192114 = phi ptr [ %2, %.lr.ph ], [ %i.bb, %bb.f ] ; 2 uses
  %.096.in113 = phi i64 [ %i.c, %.lr.ph ], [ %.096116, %bb.f ]
  %i.ac = and i64 %.096.in113, 1
  %.not5.i.not = icmp eq i64 %i.ac, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %bb.e ]
  %.046.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.096116, %bb.e ] ; 2 uses
  %i.ad = lshr exact i64 %.046.i, 1
  %i.ae = add i32 %.07.i, 1                       ; 2 uses
  %i.af = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !24

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.ag = zext i32 %i.ae to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ag, %ocb_ntz.exit.loopexit ]
  %i.ah = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not102 = icmp eq ptr %i.ah, null
  br i1 %.not102, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ocb_ntz.exit
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !21
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.ak = xor i64 %i.aj, %i.ai                    ; 2 uses
  store i64 %i.ak, ptr %i.w, align 8, !tbaa !21
  %i.al = load i64, ptr %i.x, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21
  %i.ao = xor i64 %i.an, %i.al                    ; 2 uses
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.187115, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.187115, i64 16 ; 2 uses
  %i.aq = load i64, ptr %4, align 16, !tbaa !21
  %i.ar = xor i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %4, align 16, !tbaa !21
  %i.as = load i64, ptr %i.y, align 8, !tbaa !21
  %i.at = xor i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.y, align 8, !tbaa !21
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !20
  call void %i.au(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %i.av) #7
  %i.aw = load <2 x i64>, ptr %i.w, align 8, !tbaa !21
  %i.ax = load <2 x i64>, ptr %4, align 16, !tbaa !21
  %i.ay = xor <2 x i64> %i.ax, %i.aw              ; 2 uses
  store <2 x i64> %i.ay, ptr %4, align 16, !tbaa !21
  %i.az = load <2 x i64>, ptr %i.ab, align 8, !tbaa !21
  %i.ba = xor <2 x i64> %i.az, %i.ay
  store <2 x i64> %i.ba, ptr %i.ab, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.192114, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.192114, i64 16 ; 2 uses
  %.096 = add i64 %.096116, 1                     ; 2 uses
  %.not101 = icmp ugt i64 %.096, %i.d
  br i1 %.not101, label %.thread108, label %bb.e, !llvm.loop !33

bb.g:                                             ; preds = %ocb_ntz.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

bb.h:                                             ; preds = %.thread108, %bb.c
  %.495 = phi ptr [ %i.v, %bb.c ], [ %.192.lcssa, %.thread108 ] ; 6 uses
  %.490 = phi ptr [ %i.u, %bb.c ], [ %.187.lcssa, %.thread108 ] ; 5 uses
  %i.bc = and i64 %3, 15                          ; 4 uses
  %.not105 = icmp eq i64 %i.bc, 0
  br i1 %.not105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !21
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !tbaa !21
  %i.bh = xor <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %i.bd, align 8, !tbaa !21
  %i.bi = load ptr, ptr %0, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19
  call void %i.bi(ptr noundef nonnull %i.bd, ptr noundef nonnull %5, ptr noundef %i.bk) #7
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bl = icmp samesign ult i64 %i.bc, 4
  br i1 %i.bl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %3, 12
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %.08.i = phi i64 [ 0, %.new ], [ %i.cn, %bb.j ] ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.490, i64 %.08.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !21
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %.495, i64 %.08.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !21
  %i.bs = or disjoint i64 %.08.i, 1               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.490, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !21
  %i.bx = xor i8 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %.495, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !21
  %i.bz = or disjoint i64 %.08.i, 2               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.490, i64 %i.bz
end_hunk_0
