Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/scrypt?download=true
inline.NumInlined: 15
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@kdf_scrypt_derive:bb.a
  %i.aj = icmp ne i64 %i.ac, 0
  %or.cond.not93.i = and i1 %i.ai, %i.aj
  %i.ak = icmp ugt i64 %i.y, 1
  %or.cond3.not90.i = and i1 %i.ak, %or.cond.not93.i
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.y)
  %.not.i = icmp samesign ult i64 %i.al, 2
  %or.cond83.i = select i1 %or.cond3.not90.i, i1 %.not.i, i1 false
  br i1 %or.cond83.i, label %bb.i, label %scrypt_alg.exit

bb.i:                                             ; preds = %set_digest.exit
  %i.am = udiv i64 1073741823, %i.aa
  %i.an = icmp ugt i64 %i.ac, %i.am
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 447, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = shl i64 %i.aa, 4                        ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 63
  %.highbits.i = lshr i64 %i.y, %i.ao
  %.not82.i = icmp eq i64 %.highbits.i, 0
  %or.cond84.i = select i1 %i.ap, i1 true, i1 %.not82.i
  br i1 %or.cond84.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 458, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.m:                                             ; preds = %bb.k
  %i.aq = shl nuw nsw i64 %i.ac, 7
  %i.ar = mul i64 %i.aq, %i.aa                    ; 5 uses
  %i.as = icmp ugt i64 %i.ar, 2147483647
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 476, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.o:                                             ; preds = %bb.m
  %i.at = add nuw i64 %i.y, 2                     ; 2 uses
  %i.au = udiv i64 144115188075855871, %i.aa
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.q:                                             ; preds = %bb.o
  %i.aw = shl i64 %i.aa, 5                        ; 12 uses
  %i.ax = shl nuw nsw i64 %i.at, 2
  %i.ay = mul i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = xor i64 %i.ay, -1
  %i.ba = icmp ugt i64 %i.ar, %i.az
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.s:                                             ; preds = %bb.q
  %i.bb = add i64 %i.ar, %i.ay                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, %i.ae
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 502, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 172, ptr noundef null) #7
  br label %scrypt_alg.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = icmp eq ptr %1, null
  br i1 %i.bd, label %scrypt_alg.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 510) #7 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %scrypt_alg.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ar ; 12 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aw ; 9 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aw ; 4 uses
  %i.bj = trunc i64 %i.u to i32                   ; 2 uses
  %i.bk = trunc i64 %i.w to i32
  %i.bl = trunc nuw nsw i64 %i.ar to i32          ; 2 uses
  %i.bm = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef %i.r, i32 noundef %i.bk, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.bl, ptr noundef nonnull %i.be, ptr noundef %i.af, ptr noundef %i.ah) #7
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.w
  %i.bo = shl i64 %i.aa, 7                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, 0
  %i.bp = sub i64 0, %i.aw
  %i.bq = shl nuw nsw i64 %i.y, 5
  %i.br = add nsw i64 %i.bq, -32
  %i.bs = mul i64 %i.br, %i.aa
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.bv = getelementptr i8, ptr %i.bu, i64 -64
  br i1 %.not.i.i, label %.preheader69.i.us.i, label %.lr.ph.i.preheader.i.preheader

.lr.ph.i.preheader.i.preheader:                   ; preds = %.preheader.i
  %min.iters.check51 = icmp ult i64 %i.aw, 44
  br label %.lr.ph.i.preheader.i

.preheader69.i.us.i:                              ; preds = %.preheader.i, %scryptROMix.exit.loopexit.us.i
  %.095.us.i = phi i64 [ %i.by, %scryptROMix.exit.loopexit.us.i ], [ 0, %.preheader.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader69.i.us.i
  %.16375.i.us.i = phi i64 [ 1, %.preheader69.i.us.i ], [ %i.bw, %bb.x ]
  tail call fastcc void @scryptBlockMix(ptr noundef %i.bi, ptr noundef %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bw = add nuw i64 %.16375.i.us.i, 1           ; 2 uses
  %exitcond86.not.i.us.i = icmp eq i64 %i.bw, %i.y
  br i1 %exitcond86.not.i.us.i, label %.split.i.preheader.us.i, label %bb.x, !llvm.loop !32

.split.i.preheader.us.i:                          ; preds = %bb.x
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.split.i.us.i

.split.i.us.i:                                    ; preds = %.split.i.us.i, %.split.i.preheader.us.i
  %.279.i.us.i = phi i64 [ %i.bx, %.split.i.us.i ], [ 0, %.split.i.preheader.us.i ]
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.bx = add nuw i64 %.279.i.us.i, 1             ; 2 uses
  %exitcond89.not.i.us.i = icmp eq i64 %i.bx, %i.y
  br i1 %exitcond89.not.i.us.i, label %scryptROMix.exit.loopexit.us.i, label %.split.i.us.i, !llvm.loop !33

scryptROMix.exit.loopexit.us.i:                   ; preds = %.split.i.us.i
  %i.by = add nuw nsw i64 %.095.us.i, 1           ; 2 uses
  %exitcond97.not.i = icmp eq i64 %i.by, %i.ac
  br i1 %exitcond97.not.i, label %.split.us.i, label %.preheader69.i.us.i, !llvm.loop !34

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.preheader, %scryptROMix.exit.loopexit94.i
  %.095.i = phi i64 [ %i.eu, %scryptROMix.exit.loopexit94.i ], [ 0, %.lr.ph.i.preheader.i.preheader ] ; 2 uses
  %i.bz = mul i64 %.095.i, %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bz ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.072.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.i.preheader.i ] ; 5 uses
  %.06271.i.i = phi i64 [ %i.ct, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %.06470.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.bi, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 1
  %i.cc = load i8, ptr %.072.i.i, align 1, !tbaa !27
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  store i32 %i.cd, ptr %.06470.i.i, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 2
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !27
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cd            ; 2 uses
  store i32 %i.ci, ptr %.06470.i.i, align 4, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 3
  %i.ck = load i8, ptr %i.ce, align 1, !tbaa !27
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 16
  %i.cn = or disjoint i32 %i.cm, %i.ci            ; 2 uses
  store i32 %i.cn, ptr %.06470.i.i, align 4, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %.072.i.i, i64 4
  %i.cp = load i8, ptr %i.cj, align 1, !tbaa !27
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw i32 %i.cq, 24
  %i.cs = or disjoint i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %.06470.i.i, align 4, !tbaa !28
  %i.ct = add nuw i64 %.06271.i.i, 1              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.06470.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ct, %i.aw
  br i1 %exitcond.not.i.i, label %.preheader69.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !35

.preheader69.i.loopexit.i:                        ; preds = %.lr.ph.i.i, %.preheader69.i.loopexit.i
  %.16375.i.i = phi i64 [ %i.cw, %.preheader69.i.loopexit.i ], [ 1, %.lr.ph.i.i ]
  %.16574.i.i = phi ptr [ %i.cx, %.preheader69.i.loopexit.i ], [ %i.cu, %.lr.ph.i.i ] ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.16574.i.i, i64 %i.bp
  tail call fastcc void @scryptBlockMix(ptr noundef %.16574.i.i, ptr noundef %i.cv, i64 noundef range(i64 1, 0) %i.aa)
  %i.cw = add nuw i64 %.16375.i.i, 1              ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.16574.i.i, i64 %i.aw
  %exitcond86.not.i.i = icmp eq i64 %i.cw, %i.y
  br i1 %exitcond86.not.i.i, label %.lr.ph78.us.i.preheader.i, label %.preheader69.i.loopexit.i, !llvm.loop !32

.lr.ph78.us.i.preheader.i:                        ; preds = %.preheader69.i.loopexit.i
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef %i.bt, i64 noundef range(i64 1, 0) %i.aa)
  br label %.lr.ph78.us.i.i

.lr.ph78.us.i.i:                                  ; preds = %._crit_edge.us.i.i, %.lr.ph78.us.i.preheader.i
  %.279.us.i.i = phi i64 [ %i.eo, %._crit_edge.us.i.i ], [ 0, %.lr.ph78.us.i.preheader.i ]
  %i.cy = load i32, ptr %i.bv, align 4, !tbaa !28
  %.fr69 = freeze i32 %i.cy
  %i.cz = zext i32 %.fr69 to i64
  %i.da = urem i64 %i.cz, %i.y
  %i.db = mul i64 %i.da, %i.aw
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.db ; 2 uses
  br i1 %min.iters.check51, label %scalar.ph50, label %vector.body54

vector.body54:                                    ; preds = %.lr.ph78.us.i.i, %vector.body54
  %index55 = phi i64 [ %index.next61, %vector.body54 ], [ 0, %.lr.ph78.us.i.i ] ; 4 uses
  %i.dd = shl i64 %index55, 2
  %next.gep56 = getelementptr i8, ptr %i.dc, i64 %i.dd ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index55 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load57 = load <4 x i32>, ptr %i.de, align 4, !tbaa !28
  %wide.load58 = load <4 x i32>, ptr %i.df, align 4, !tbaa !28
  %i.dg = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep56, align 4, !tbaa !28
  %wide.load60 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !28
  %i.dh = xor <4 x i32> %wide.load59, %wide.load57
  %i.di = xor <4 x i32> %wide.load60, %wide.load58
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index55 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <4 x i32> %i.dh, ptr %i.dj, align 4, !tbaa !28
  store <4 x i32> %i.di, ptr %i.dk, align 4, !tbaa !28
  %index.next61 = add nuw i64 %index55, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next61, %i.aw
  br i1 %i.dl, label %._crit_edge.us.i.i, label %vector.body54, !llvm.loop !36

scalar.ph50:                                      ; preds = %.lr.ph78.us.i.i, %scalar.ph50
  %.06177.us.i.i = phi i64 [ %i.en, %scalar.ph50 ], [ 0, %.lr.ph78.us.i.i ] ; 6 uses
  %.26676.us.i.i = phi ptr [ %i.ej, %scalar.ph50 ], [ %i.dc, %.lr.ph78.us.i.i ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.06177.us.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 4
  %i.dp = load i32, ptr %.26676.us.i.i, align 4, !tbaa !28
  %i.dq = xor i32 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.06177.us.i.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !28
  %i.ds = or disjoint i64 %.06177.us.i.i, 1       ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 8
  %i.dw = load i32, ptr %i.do, align 4, !tbaa !28
  %i.dx = xor i32 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ds
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !28
  %i.dz = or disjoint i64 %.06177.us.i.i, 2       ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 12
  %i.ed = load i32, ptr %i.dv, align 4, !tbaa !28
  %i.ee = xor i32 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dz
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !28
  %i.eg = or disjoint i64 %.06177.us.i.i, 3       ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.26676.us.i.i, i64 16
  %i.ek = load i32, ptr %i.ec, align 4, !tbaa !28
  %i.el = xor i32 %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.eg
  store i32 %i.el, ptr %i.em, align 4, !tbaa !28
  %i.en = add nuw i64 %.06177.us.i.i, 4           ; 2 uses
  %exitcond87.not.i.i.3 = icmp eq i64 %i.en, %i.aw
  br i1 %exitcond87.not.i.i.3, label %._crit_edge.us.i.i, label %scalar.ph50, !llvm.loop !37

._crit_edge.us.i.i:                               ; preds = %vector.body54, %scalar.ph50
  tail call fastcc void @scryptBlockMix(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.aa)
  %i.eo = add nuw i64 %.279.us.i.i, 1             ; 2 uses
  %exitcond88.not.i.i = icmp eq i64 %i.eo, %i.y
  br i1 %exitcond88.not.i.i, label %vector.body, label %.lr.ph78.us.i.i, !llvm.loop !33

vector.body:                                      ; preds = %._crit_edge.us.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %._crit_edge.us.i.i ] ; 3 uses
  %i.ep = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.ep ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load = load <4 x i32>, ptr %i.eq, align 4, !tbaa !28
  %wide.load45 = load <4 x i32>, ptr %i.er, align 4, !tbaa !28
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load45, ptr %i.es, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %i.aw
  br i1 %i.et, label %scryptROMix.exit.loopexit94.i, label %vector.body, !llvm.loop !38

scryptROMix.exit.loopexit94.i:                    ; preds = %vector.body
  %i.eu = add nuw nsw i64 %.095.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eu, %i.ac
  br i1 %exitcond.not.i, label %.split.us.i, label %.lr.ph.i.preheader.i, !llvm.loop !34

.split.us.i:                                      ; preds = %scryptROMix.exit.loopexit94.i, %scryptROMix.exit.loopexit.us.i
  %i.ev = trunc i64 %2 to i32
  %i.ew = tail call i32 @ossl_pkcs5_pbkdf2_hmac_ex(ptr noundef %i.s, i32 noundef %i.bj, ptr noundef nonnull %i.be, i32 noundef %i.bl, i32 noundef 1, ptr noundef nonnull %i.q, i32 noundef %i.ev, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef %i.ah) #7
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.thread.i, label %bb.y

.thread.i:                                        ; preds = %.split.us.i, %bb.w
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 531, ptr noundef nonnull @__func__.scrypt_alg) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 181, ptr noundef null) #7
  br label %bb.y

bb.y:                                             ; preds = %.thread.i, %.split.us.i
  %.07187.i = phi i32 [ 0, %.thread.i ], [ 1, %.split.us.i ]
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.be, i64 noundef %i.bb, ptr noundef nonnull @.str, i32 noundef 533) #7
  br label %scrypt_alg.exit

scrypt_alg.exit:                                  ; preds = %bb.y, %bb.v, %bb.u, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %set_digest.exit, %set_digest.exit.thread, %bb.a, %bb.b, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %set_digest.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ %.07187.i, %bb.y ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %set_digest.exit ], [ 1, %bb.u ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @kdf_scrypt_settable_ctx_params(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  ret ptr @scrypt_set_ctx_params_list
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @kdf_scrypt_set_ctx_params(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %scrypt_set_membuf.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread130, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %.not4459.i = icmp eq ptr %i.c, null
  br i1 %.not4459.i, label %.thread130, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.7.0 = phi ptr [ %.sroa.7.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %bb.p ], [ null, %.preheader.i ] ; 14 uses
  %i.d = phi ptr [ %i.ap, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.e = phi ptr [ %i.aq, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.f = phi ptr [ %i.ar, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.g = phi ptr [ %i.as, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.h = phi ptr [ %i.at, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.i = phi ptr [ %i.au, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.j = phi ptr [ %i.av, %bb.p ], [ null, %.preheader.i ] ; 15 uses
  %i.k = phi ptr [ %i.ax, %bb.p ], [ %i.c, %.preheader.i ] ; 11 uses
  %.04160.i = phi ptr [ %i.aw, %bb.p ], [ %1, %.preheader.i ] ; 15 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  switch i8 %i.l, label %bb.p [
    i8 109, label %bb.c
    i8 110, label %bb.e
    i8 112, label %bb.g
    i8 114, label %bb.l
    i8 115, label %bb.n
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.10, ptr noundef nonnull dereferenceable(1) %i.m) #8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.p, !prof !31

bb.d:                                             ; preds = %bb.c
  %.not51.i = icmp eq ptr %i.d, null
  br i1 %.not51.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27
  %cond1.i = icmp eq i8 %i.q, 0
  br i1 %cond1.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %.not50.i = icmp eq ptr %i.e, null
  br i1 %.not50.i, label %bb.p, label %scrypt_set_ctx_params_decoder.exit, !prof !31

bb.g:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27
  switch i8 %i.s, label %bb.p [
    i8 97, label %sub_0.i
    i8 114, label %bb.i
    i8 0, label %bb.k
  ]

sub_0.i:                                          ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 115, %i.v
  %.not61.i = icmp eq i8 %i.u, 115
  br i1 %.not61.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3
end_hunk_0
