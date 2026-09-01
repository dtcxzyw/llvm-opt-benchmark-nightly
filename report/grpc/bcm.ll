Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@BN_mod_exp_mont_consttime:bb.a
  %i.bs = or i64 %i.br, %.04054.i.i               ; 2 uses
  %i.bt = add nuw i64 %.055.i.i, 1                ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %i.bt, %i.n
  br i1 %exitcond60.not.i.i, label %.loopexit232, label %.preheader51.i.i, !llvm.loop !393

BN_ucmp.exit:                                     ; preds = %.loopexit231, %bb.f, %.loopexit232
  %.1.i.i = phi i32 [ %i.av, %.loopexit231 ], [ %i.bp, %.loopexit232 ], [ %.043.lcssa.i.i, %bb.f ]
  %i.bu = icmp sgt i32 %.1.i.i, -1
  %i.bv = zext i1 %i.bu to i32
  %i.bw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bv) #38, !srcloc !367
  %.not130 = icmp eq i32 %i.bw, 0
  br i1 %.not130, label %bb.h, label %bb.g

bb.g:                                             ; preds = %BN_ucmp.exit, %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.4, i32 noundef 433) #36
  br label %bb.aj

bb.h:                                             ; preds = %BN_ucmp.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !186 ; 6 uses
  %i.bz = shl i32 %i.by, 6                        ; 2 uses
  %i.ca = icmp eq i32 %i.by, 0
  br i1 %i.ca, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cb = and i64 %i.e, -2                        ; 3 uses
  %.not148 = icmp eq i32 %i.b, 1
  br i1 %.not148, label %BN_abs_is_word.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.cc = add nsw i64 %i.o, -1                    ; 2 uses
  %min.iters.check216 = icmp ult i32 %i.b, 5
  br i1 %min.iters.check216, label %.lr.ph.i.preheader233, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph.i.preheader
  %n.vec218 = and i64 %i.cc, -4                   ; 3 uses
  %i.cd = or disjoint i64 %n.vec218, 1
  %i.ce = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cb, i64 0
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next225, %vector.body219 ] ; 2 uses
  %vec.phi221 = phi <2 x i64> [ %i.ce, %vector.ph217 ], [ %i.ci, %vector.body219 ]
  %vec.phi222 = phi <2 x i64> [ zeroinitializer, %vector.ph217 ], [ %i.cj, %vector.body219 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index220 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %wide.load223 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !94
  %wide.load224 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !94
  %i.ci = or <2 x i64> %wide.load223, %vec.phi221 ; 2 uses
  %i.cj = or <2 x i64> %wide.load224, %vec.phi222 ; 2 uses
  %index.next225 = add nuw i64 %index220, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next225, %n.vec218
  br i1 %i.ck, label %middle.block226, label %vector.body219, !llvm.loop !394

middle.block226:                                  ; preds = %vector.body219
  %bin.rdx227 = or <2 x i64> %i.cj, %i.ci
  %i.cl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx227) ; 2 uses
  %cmp.n228 = icmp eq i64 %i.cc, %n.vec218
  br i1 %cmp.n228, label %BN_abs_is_word.exit, label %.lr.ph.i.preheader233

.lr.ph.i.preheader233:                            ; preds = %.lr.ph.i.preheader, %middle.block226
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.cd, %middle.block226 ]
  %.01113.i.ph = phi i64 [ %i.cb, %.lr.ph.i.preheader ], [ %i.cl, %middle.block226 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader233, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader233 ] ; 2 uses
  %.01113.i = phi i64 [ %i.co, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader233 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !94
  %i.co = or i64 %i.cn, %.01113.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %BN_abs_is_word.exit, label %.lr.ph.i, !llvm.loop !395

BN_abs_is_word.exit:                              ; preds = %.lr.ph.i, %middle.block226, %bb.i
  %.012.in.in.i = phi i64 [ %i.cb, %bb.i ], [ %i.cl, %middle.block226 ], [ %i.co, %.lr.ph.i ]
  %.012.in.i.not = icmp eq i64 %.012.in.in.i, 0
  br i1 %.012.in.i.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %BN_abs_is_word.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.cp, align 8, !tbaa !182
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cq, align 8, !tbaa !186
  br label %bb.aj

bb.k:                                             ; preds = %BN_abs_is_word.exit
  %i.cr = tail call i32 @BN_one(ptr noundef %0)
  br label %bb.aj

bb.l:                                             ; preds = %bb.h
  %i.cs = icmp eq ptr %5, null
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = tail call ptr @BN_MONT_CTX_new_consttime(ptr noundef nonnull %3, ptr noundef %4) ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0117 = phi ptr [ %5, %bb.l ], [ %i.ct, %bb.m ] ; 9 uses
  %.0109 = phi ptr [ null, %bb.l ], [ %i.ct, %bb.m ] ; 12 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0117, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !377 ; 11 uses
  %i.cx = icmp sgt i32 %i.by, 14
  br i1 %i.cx, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = icmp sgt i32 %i.by, 4
  br i1 %i.cy, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = icmp sgt i32 %i.by, 1
  %.inv = icmp slt i32 %i.by, 1
  %i.da = select i1 %.inv, i32 1, i32 3
  %i.db = select i1 %i.cz, i32 4, i32 %i.da
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dc = phi i32 [ 6, %bb.n ], [ %i.db, %bb.p ], [ 5, %bb.o ] ; 8 uses
  %i.dd = shl nuw nsw i32 1, %i.dc                ; 2 uses
  %i.de = sext i32 %i.cw to i64                   ; 4 uses
  %i.df = shl nsw i64 %i.de, 3
  %i.dg = add nuw nsw i32 %i.dd, 2
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = mul nsw i64 %i.df, %i.dh                ; 14 uses
  %i.dj = add nsw i64 %i.di, 64
  %i.dk = tail call ptr @OPENSSL_malloc(i64 noundef %i.dj) #36 ; 14 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 0, %i.dm
  %i.do = and i64 %i.dn, 63
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.do ; 19 uses
  %i.dq = icmp eq i32 %i.cw, 0
  br i1 %i.dq, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dp, i8 0, i64 %i.di, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.r, %bb.s
  %i.dr = shl nsw i32 %i.cw, %i.dc
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ds ; 2 uses
  store ptr %i.dt, ptr %6, align 8, !tbaa !185
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.de
  store ptr %i.du, ptr %7, align 8, !tbaa !185
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.dv, align 8, !tbaa !186
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.dw, align 8, !tbaa !186
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.cw, ptr %i.dx, align 4, !tbaa !197
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.cw, ptr %i.dy, align 4, !tbaa !197
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.dz, align 8, !tbaa !182
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ea, align 8, !tbaa !182
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 2, ptr %i.eb, align 4, !tbaa !198
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 2, ptr %i.ec, align 4, !tbaa !198
  %i.ed = call i32 @bn_one_to_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %.0117, ptr noundef %4)
  %.not131 = icmp eq i32 %i.ed, 0
  br i1 %.not131, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.ee = call i32 @bn_resize_words(ptr noundef nonnull %6, i64 noundef %i.de)
  %.not132 = icmp eq i32 %i.ee, 0
  br i1 %.not132, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ef = call range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr noundef nonnull %7, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %.0117, ptr noundef nonnull readonly %.0117, ptr noundef %4)
  %.not133 = icmp eq i32 %i.ef, 0
  br i1 %.not133, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = call i32 @bn_resize_words(ptr noundef nonnull %7, i64 noundef %i.de)
  %.not134 = icmp eq i32 %i.eg, 0
  br i1 %.not134, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @_ZL14copy_to_prebufPK9bignum_stiPmii(ptr noundef %6, i32 noundef %i.cw, ptr noundef %i.dp, i32 noundef 0)
  call fastcc void @_ZL14copy_to_prebufPK9bignum_stiPmii(ptr noundef %7, i32 noundef %i.cw, ptr noundef %i.dp, i32 noundef 1)
  %i.eh = icmp samesign ugt i32 %i.dc, 1
  br i1 %i.eh, label %bb.x, label %.loopexit151

bb.x:                                             ; preds = %bb.w
  %i.ei = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %.0117, ptr noundef %4)
  %.not135 = icmp eq i32 %i.ei, 0
  br i1 %.not135, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  call fastcc void @_ZL14copy_to_prebufPK9bignum_stiPmii(ptr noundef %6, i32 noundef %i.cw, ptr noundef %i.dp, i32 noundef 2)
  %umax = call i32 @llvm.umax.i32(i32 %i.dd, i32 4)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.0114158 = phi i32 [ %i.ek, %bb.y ], [ 3, %.lr.ph.preheader ] ; 2 uses
  %i.ej = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %.0117, ptr noundef %4)
  %.not141 = icmp eq i32 %i.ej, 0
  br i1 %.not141, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  call fastcc void @_ZL14copy_to_prebufPK9bignum_stiPmii(ptr noundef %6, i32 noundef %i.cw, ptr noundef %i.dp, i32 noundef %.0114158)
  %i.ek = add nuw nsw i32 %.0114158, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ek, %umax
  br i1 %exitcond.not, label %.loopexit151, label %.lr.ph, !llvm.loop !396

.loopexit151:                                     ; preds = %bb.y, %bb.w
  %i.el = add nsw i32 %i.bz, -1                   ; 3 uses
  %i.em = srem i32 %i.el, %i.dc                   ; 3 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %.lr.ph162, label %._crit_edge

.lr.ph162:                                        ; preds = %.loopexit151, %BN_is_bit_set.exit
  %.0161 = phi i32 [ %i.fd, %BN_is_bit_set.exit ], [ %i.el, %.loopexit151 ] ; 3 uses
  %.0111160 = phi i32 [ %.0.i, %BN_is_bit_set.exit ], [ 0, %.loopexit151 ]
  %.1115159 = phi i32 [ %i.fc, %BN_is_bit_set.exit ], [ %i.em, %.loopexit151 ] ; 2 uses
  %i.eo = shl i32 %.0111160, 1                    ; 3 uses
  %i.ep = icmp slt i32 %.0161, 0
  br i1 %i.ep, label %BN_is_bit_set.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph162
  %i.eq = load i32, ptr %i.bx, align 8, !tbaa !186
  %i.er = sext i32 %i.eq to i64
  %i.es = zext nneg i32 %.0161 to i64             ; 2 uses
  %i.et = lshr i64 %i.es, 6                       ; 2 uses
  %.not.i.i143 = icmp ult i64 %i.et, %i.er
  br i1 %.not.i.i143, label %bb.aa, label %BN_is_bit_set.exit

bb.aa:                                            ; preds = %bb.z
  %i.eu = load ptr, ptr %2, align 8, !tbaa !185
  %i.ev = and i64 %i.es, 63
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !94
  %i.ey = lshr i64 %i.ex, %i.ev
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = and i32 %i.ez, 1
  %i.fb = or disjoint i32 %i.fa, %i.eo
  br label %BN_is_bit_set.exit

BN_is_bit_set.exit:                               ; preds = %.lr.ph162, %bb.z, %bb.aa
  %.0.i = phi i32 [ %i.eo, %.lr.ph162 ], [ %i.fb, %bb.aa ], [ %i.eo, %bb.z ] ; 2 uses
  %i.fc = add nsw i32 %.1115159, -1
  %i.fd = add nsw i32 %.0161, -1
  %i.fe = icmp sgt i32 %.1115159, 0
  br i1 %i.fe, label %.lr.ph162, label %._crit_edge.loopexit, !llvm.loop !397

._crit_edge.loopexit:                             ; preds = %BN_is_bit_set.exit
  %i.ff = add i32 %i.bz, -2
  %i.fg = sub i32 %i.ff, %i.em
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit151
  %.0111.lcssa = phi i32 [ 0, %.loopexit151 ], [ %.0.i, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.el, %.loopexit151 ], [ %i.fg, %._crit_edge.loopexit ]
  %i.fh = call fastcc noundef i32 @_ZL16copy_from_prebufP9bignum_stiPKmii(ptr noundef %6, i32 noundef %i.cw, ptr noundef %i.dp, i32 noundef %.0111.lcssa, i32 noundef %i.dc)
  %.not136 = icmp eq i32 %i.fh, 0
  br i1 %.not136, label %.loopexit, label %.preheader149

.preheader149:                                    ; preds = %._crit_edge, %bb.af
  %.1 = phi i32 [ %i.fj, %bb.af ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.fi = icmp sgt i32 %.1, -1
  br i1 %i.fi, label %.preheader.preheader, label %bb.ag

.preheader.preheader:                             ; preds = %.preheader149
  %i.fj = sub nsw i32 %.1, %i.dc
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %BN_is_bit_set.exit146
  %.2166 = phi i32 [ %i.ga, %BN_is_bit_set.exit146 ], [ %.1, %.preheader.preheader ] ; 3 uses
  %.1112165 = phi i32 [ %.0.i145, %BN_is_bit_set.exit146 ], [ 0, %.preheader.preheader ]
  %.2116164 = phi i32 [ %i.fz, %BN_is_bit_set.exit146 ], [ 0, %.preheader.preheader ]
  %i.fk = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0117, ptr noundef %4)
  %.not140 = icmp eq i32 %i.fk, 0
  br i1 %.not140, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.preheader
  %i.fl = shl i32 %.1112165, 1                    ; 3 uses
  %i.fm = icmp slt i32 %.2166, 0
  br i1 %i.fm, label %BN_is_bit_set.exit146, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load i32, ptr %i.bx, align 8, !tbaa !186
  %i.fo = sext i32 %i.fn to i64
  %i.fp = zext nneg i32 %.2166 to i64             ; 2 uses
  %i.fq = lshr i64 %i.fp, 6                       ; 2 uses
  %.not.i.i144 = icmp ult i64 %i.fq, %i.fo
  br i1 %.not.i.i144, label %bb.ad, label %BN_is_bit_set.exit146

bb.ad:                                            ; preds = %bb.ac
  %i.fr = load ptr, ptr %2, align 8, !tbaa !185
  %i.fs = and i64 %i.fp, 63
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !94
  %i.fv = lshr i64 %i.fu, %i.fs
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = and i32 %i.fw, 1
  %i.fy = or disjoint i32 %i.fx, %i.fl
  br label %BN_is_bit_set.exit146

BN_is_bit_set.exit146:                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0.i145 = phi i32 [ %i.fl, %bb.ab ], [ %i.fy, %bb.ad ], [ %i.fl, %bb.ac ] ; 2 uses
  %i.fz = add nuw nsw i32 %.2116164, 1            ; 2 uses
  %i.ga = add nsw i32 %.2166, -1
  %exitcond174.not = icmp eq i32 %i.fz, %i.dc
  br i1 %exitcond174.not, label %bb.ae, label %.preheader, !llvm.loop !398

bb.ae:                                            ; preds = %BN_is_bit_set.exit146
  %i.gb = call fastcc noundef i32 @_ZL16copy_from_prebufP9bignum_stiPKmii(ptr noundef %7, i32 noundef %i.cw, ptr noundef %i.dp, i32 noundef %.0.i145, i32 noundef %i.dc)
  %.not138 = icmp eq i32 %i.gb, 0
  br i1 %.not138, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %.0117, ptr noundef %4)
  %.not139 = icmp eq i32 %i.gc, 0
  br i1 %.not139, label %.loopexit, label %.preheader149, !llvm.loop !399

bb.ag:                                            ; preds = %.preheader149
  %i.gd = call i32 @BN_from_montgomery(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %.0117, ptr noundef %4)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.af, %bb.ae, %.preheader, %bb.ag, %._crit_edge, %bb.x, %bb.u, %bb.v, %_ZL14OPENSSL_memsetPvim.exit, %bb.t, %bb.q, %bb.m
  %.0113 = phi i32 [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %.preheader ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.af ], [ 0, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.gd, %bb.ag ], [ 0, %._crit_edge ], [ 0, %bb.x ], [ 0, %bb.v ], [ 0, %bb.ae ], [ 0, %.lr.ph ]
  %.1110 = phi ptr [ null, %bb.m ], [ %.0109, %bb.q ], [ %.0109, %.preheader ], [ %.0109, %bb.t ], [ %.0109, %bb.u ], [ %.0109, %bb.af ], [ %.0109, %_ZL14OPENSSL_memsetPvim.exit ], [ %.0109, %bb.ag ], [ %.0109, %._crit_edge ], [ %.0109, %bb.x ], [ %.0109, %bb.v ], [ %.0109, %bb.ae ], [ %.0109, %.lr.ph ]
  %.1108 = phi ptr [ null, %bb.m ], [ null, %bb.q ], [ %i.dk, %.preheader ], [ %i.dk, %bb.t ], [ %i.dk, %bb.u ], [ %i.dk, %bb.af ], [ %i.dk, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.dk, %bb.ag ], [ %i.dk, %._crit_edge ], [ %i.dk, %bb.x ], [ %i.dk, %bb.v ], [ %i.dk, %bb.ae ], [ %i.dk, %.lr.ph ] ; 2 uses
  %.0106 = phi i64 [ 0, %bb.m ], [ %i.di, %bb.q ], [ %i.di, %.preheader ], [ %i.di, %bb.t ], [ %i.di, %bb.u ], [ %i.di, %bb.af ], [ %i.di, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.di, %bb.ag ], [ %i.di, %._crit_edge ], [ %i.di, %bb.x ], [ %i.di, %bb.v ], [ %i.di, %bb.ae ], [ %i.di, %.lr.ph ]
  %.1105 = phi ptr [ null, %bb.m ], [ null, %bb.q ], [ %i.dp, %.preheader ], [ %i.dp, %bb.t ], [ %i.dp, %bb.u ], [ %i.dp, %bb.af ], [ %i.dp, %_ZL14OPENSSL_memsetPvim.exit ], [ %i.dp, %bb.ag ], [ %i.dp, %._crit_edge ], [ %i.dp, %bb.x ], [ %i.dp, %bb.v ], [ %i.dp, %bb.ae ], [ %i.dp, %.lr.ph ] ; 2 uses
  call void @BN_MONT_CTX_free(ptr noundef %.1110)
  %i.ge = icmp ne ptr %.1105, null
  %i.gf = icmp eq ptr %.1108, null
  %or.cond = and i1 %i.gf, %i.ge
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  call void @OPENSSL_cleanse(ptr noundef nonnull %.1105, i64 noundef %.0106) #36
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  call void @OPENSSL_free(ptr noundef %.1108) #36
  br label %bb.aj

bb.aj:                                            ; preds = %bb.j, %bb.k, %bb.ai, %bb.g, %bb.c, %BN_is_odd.exit.thread
  %.1119 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %BN_is_odd.exit.thread ], [ 1, %bb.j ], [ %i.cr, %bb.k ], [ %.0113, %bb.ai ]
  ret i32 %.1119
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_one_to_montgomery(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !186  ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !94
  %.not = icmp sgt i64 %i.i, -1
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !197
  %.not.i = icmp ugt i32 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %.bn_wexpand.exit_crit_edge

.bn_wexpand.exit_crit_edge:                       ; preds = %bb.c
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !185
  br label %bn_wexpand.exit

bb.d:                                             ; preds = %bb.c
  %i.l = icmp samesign ugt i32 %i.c, 8388607
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !198
  %i.o = and i32 %i.n, 2
  %.not16.i = icmp eq i32 %i.o, 0
  br i1 %.not16.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.p = tail call ptr @OPENSSL_calloc(i64 noundef %i.f, i64 noundef 8) #36 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bn_wexpand.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !186  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@bn_lcm_consttime:bb.a
  %.not21 = icmp eq i32 %i.ah, 0
  br i1 %.not21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !18
  %i.aj = tail call i32 @bn_rshift_secret_shift(ptr noundef %0, ptr noundef %0, i32 noundef %i.ai, ptr noundef nonnull %3)
  br label %bb.l

bb.l:                                             ; preds = %bn_mul_consttime.exit.thread, %bb.k, %bb.j, %bb.i, %bn_mul_consttime.exit, %BN_CTX_start.exit
  %i.ak = phi i32 [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bn_mul_consttime.exit ], [ 0, %BN_CTX_start.exit ], [ %i.aj, %bb.k ], [ 0, %bn_mul_consttime.exit.thread ]
  %i.al = load i8, ptr %i.b, align 8, !tbaa !291
  %.not.i23 = icmp eq i8 %i.al, 0
  br i1 %.not.i23, label %bb.m, label %BN_CTX_end.exit

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !293
  %i.ap = add i64 %i.ao, -1                       ; 2 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !293
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !290
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.as, ptr %i.at, align 8, !tbaa !292
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @bn_mul_consttime(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !182
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !182
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.9, i32 noundef 482) #36
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef i32 @_ZL11bn_mul_implP9bignum_stPKS_S2_P10bignum_ctx(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.e, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @bn_rshift_secret_shift(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !291
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !292
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !293  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !294
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.g, 0
  %i.k = mul i64 %i.g, 3
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %.not.i.i, i64 32, i64 %i.l    ; 4 uses
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = icmp samesign ugt i64 %i.m, 2305843009213693951
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.q = shl nuw i64 %i.m, 3
  %i.r = tail call ptr @OPENSSL_realloc(ptr noundef %i.p, i64 noundef %i.q) #36 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !290
  store i64 %i.m, ptr %i.h, align 8, !tbaa !294
  %.pre26.i.i = load i64, ptr %i.f, align 8, !tbaa !293
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %i.e, ptr %i.v, align 8, !tbaa !94
  %i.w = load i64, ptr %i.f, align 8, !tbaa !293
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !293
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !291
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.y, align 1, !tbaa !295
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.f
  %i.z = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 9 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bn_wexpand.exit.thread, label %bb.g

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %1)
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bn_wexpand.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !186 ; 5 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !197
  %.not.i28 = icmp ugt i32 %i.ad, %i.ag
  br i1 %.not.i28, label %bb.i, label %bn_wexpand.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i32 %i.ad, 8388607
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %bn_wexpand.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 2
  %.not16.i = icmp eq i32 %i.ak, 0
  br i1 %.not16.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %bn_wexpand.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.al = tail call ptr @OPENSSL_calloc(i64 noundef %i.ae, i64 noundef 8) #36 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bn_wexpand.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !186 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = sext i32 %i.ao to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !185
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr readonly align 1 %i.as, i64 %i.ar, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.o, %bb.n
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !185
  tail call void @OPENSSL_free(ptr noundef %i.at) #36
  store ptr %i.al, ptr %i.z, align 8, !tbaa !185
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !197
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !186
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.h
  %i.au = phi i32 [ %.pre, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.av = shl nsw i32 %i.au, 6
  %.not2737 = icmp eq i32 %i.au, 0
  br i1 %.not2737, label %bn_wexpand.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bn_wexpand.exit
  %.pre39 = load ptr, ptr %i.z, align 8, !tbaa !185
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !185
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bn_select_words.exit
  %i.aw = phi i32 [ %i.ei, %bn_select_words.exit ], [ %i.au, %.lr.ph.preheader ] ; 3 uses
  %i.ax = phi ptr [ %i.eg, %bn_select_words.exit ], [ %.pre40, %.lr.ph.preheader ] ; 12 uses
  %i.ay = phi ptr [ %i.eh, %bn_select_words.exit ], [ %.pre39, %.lr.ph.preheader ] ; 10 uses
  %.02438 = phi i32 [ %i.fz, %bn_select_words.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.az = lshr i32 %2, %.02438
  %i.ba = and i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = shl nuw i32 1, %.02438                  ; 2 uses
  %i.be = sext i32 %i.aw to i64                   ; 8 uses
  %i.bf = and i32 %i.bd, 63                       ; 2 uses
  %i.bg = lshr i32 %i.bd, 6                       ; 3 uses
  %i.bh = zext nneg i32 %i.bg to i64              ; 16 uses
  %.not.i29 = icmp ugt i32 %i.aw, %i.bg
  br i1 %.not.i29, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bi = icmp eq i32 %i.aw, 0
  br i1 %i.bi, label %bn_rshift_words.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = shl nuw nsw i64 %i.be, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.bj, i1 false)
  br label %bn_rshift_words.exit

bb.r:                                             ; preds = %.lr.ph
  %i.bk = icmp ugt i32 %.02438, 5
  br i1 %i.bk, label %bb.s, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %i.bl = add nsw i64 %i.be, -1                   ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, %i.bh
  %i.bn = zext nneg i32 %i.bf to i64              ; 5 uses
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bo = sub nuw nsw i32 64, %i.bf
  %i.bp = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bq = xor i64 %i.bh, -1
  %i.br = add nsw i64 %i.bq, %i.be                ; 3 uses
  %min.iters.check69 = icmp ult i64 %i.br, 4
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i
  %scevgep61 = getelementptr i8, ptr %i.ay, i64 -8
  %i.bs = shl nsw i64 %i.be, 3                    ; 2 uses
  %4 = shl nuw nsw i64 %i.bh, 3                   ; 2 uses
  %i.bt = sub nsw i64 %i.bs, %4
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.bt
  %scevgep63 = getelementptr i8, ptr %i.ax, i64 %4
  %scevgep64 = getelementptr i8, ptr %i.ax, i64 %i.bs
  %bound065 = icmp ult ptr %i.ay, %scevgep64
  %bound166 = icmp ult ptr %scevgep63, %scevgep62
  %found.conflict67 = and i1 %bound065, %bound166
  br i1 %found.conflict67, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %vector.memcheck60
  %n.vec71 = and i64 %i.br, -4                    ; 3 uses
  %i.bu = or disjoint i64 %n.vec71, %i.bh
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph70
  %index77 = phi i64 [ 0, %vector.ph70 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bv = or disjoint i64 %index77, %i.bh         ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !94, !alias.scope !550
  %wide.load79 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !94, !alias.scope !550
  %i.by = lshr <2 x i64> %wide.load78, %broadcast.splat75
  %i.bz = lshr <2 x i64> %wide.load79, %broadcast.splat75
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %wide.load80 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !94, !alias.scope !550
  %wide.load81 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !94, !alias.scope !550
  %i.cd = shl <2 x i64> %wide.load80, %broadcast.splat73
  %i.ce = shl <2 x i64> %wide.load81, %broadcast.splat73
  %i.cf = or <2 x i64> %i.cd, %i.by
  %i.cg = or <2 x i64> %i.ce, %i.bz
  %i.ch = sub nuw i64 %i.bv, %i.bh
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x i64> %i.cf, ptr %i.ci, align 8, !tbaa !94, !alias.scope !553, !noalias !550
  store <2 x i64> %i.cg, ptr %i.cj, align 8, !tbaa !94, !alias.scope !553, !noalias !550
  %index.next82 = add nuw i64 %index77, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next82, %n.vec71
  br i1 %i.ck, label %middle.block83, label %vector.body76, !llvm.loop !555

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.br, %n.vec71
  br i1 %cmp.n84, label %._crit_edge.i, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %vector.memcheck60, %.lr.ph.i, %middle.block83
  %.039.i.ph = phi i64 [ %i.bh, %vector.memcheck60 ], [ %i.bh, %.lr.ph.i ], [ %i.bu, %middle.block83 ] ; 6 uses
  %i.cl = add nsw i64 %i.be, -2
  %i.cm = sub nsw i64 %.039.i.ph, %i.be
  %i.cn = and i64 %i.cm, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cn, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph68.prol, label %scalar.ph68.prol.loopexit

scalar.ph68.prol:                                 ; preds = %scalar.ph68.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.039.i.ph
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !94
  %i.cq = lshr i64 %i.cp, %i.bn
  %i.cr = add nuw nsw i64 %.039.i.ph, 1           ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !94
  %i.cu = shl i64 %i.ct, %i.bp
  %i.cv = or i64 %i.cu, %i.cq
  %i.cw = sub nuw nsw i64 %.039.i.ph, %i.bh
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cw
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !94
  br label %scalar.ph68.prol.loopexit

scalar.ph68.prol.loopexit:                        ; preds = %scalar.ph68.prol, %scalar.ph68.preheader
  %.039.i.unr = phi i64 [ %.039.i.ph, %scalar.ph68.preheader ], [ %i.cr, %scalar.ph68.prol ]
  %i.cy = icmp eq i64 %i.cl, %.039.i.ph
  br i1 %i.cy, label %._crit_edge.i, label %scalar.ph68

bb.s:                                             ; preds = %bb.r
  %i.cz = sub nuw nsw i64 %i.be, %i.bh
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ay, ptr readonly align 1 %i.db, i64 %i.da, i1 false)
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

._crit_edge.i:                                    ; preds = %scalar.ph68.prol.loopexit, %scalar.ph68, %middle.block83, %.preheader.i
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bl
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !94
  %i.de = lshr i64 %i.dd, %i.bn
  %i.df = sub nuw nsw i64 %i.bl, %i.bh
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.df
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !94
  br label %_ZL15OPENSSL_memmovePvPKvm.exit.i

scalar.ph68:                                      ; preds = %scalar.ph68.prol.loopexit, %scalar.ph68
  %.039.i = phi i64 [ %i.du, %scalar.ph68 ], [ %.039.i.unr, %scalar.ph68.prol.loopexit ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.039.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !94
  %i.dj = lshr i64 %i.di, %i.bn
  %i.dk = add nuw i64 %.039.i, 1                  ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !94
  %i.dn = shl i64 %i.dm, %i.bp
  %i.do = or i64 %i.dn, %i.dj
  %i.dp = sub nuw i64 %.039.i, %i.bh
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dp
  store i64 %i.do, ptr %i.dq, align 8, !tbaa !94
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.dk
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !94
  %i.dt = lshr i64 %i.ds, %i.bn
  %i.du = add nuw i64 %.039.i, 2                  ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !94
  %i.dx = shl i64 %i.dw, %i.bp
  %i.dy = or i64 %i.dx, %i.dt
  %i.dz = sub nuw i64 %i.dk, %i.bh
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dz
  store i64 %i.dy, ptr %i.ea, align 8, !tbaa !94
  %exitcond.not.i.1 = icmp eq i64 %i.du, %i.bl
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph68, !llvm.loop !556

_ZL15OPENSSL_memmovePvPKvm.exit.i:                ; preds = %._crit_edge.i, %bb.s
  %i.eb = icmp eq i32 %i.bg, 0
  br i1 %i.eb, label %bn_rshift_words.exit, label %bb.t

bb.t:                                             ; preds = %_ZL15OPENSSL_memmovePvPKvm.exit.i
  %i.ec = shl nuw nsw i64 %i.bh, 3
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.be
  %i.ee = sub nsw i64 0, %i.bh
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ee
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ef, i8 0, i64 %i.ec, i1 false)
  br label %bn_rshift_words.exit

bn_rshift_words.exit:                             ; preds = %bb.p, %bb.q, %_ZL15OPENSSL_memmovePvPKvm.exit.i, %bb.t
  %i.eg = load ptr, ptr %0, align 8, !tbaa !185   ; 7 uses
  %i.eh = load ptr, ptr %i.z, align 8, !tbaa !185 ; 7 uses
  %i.ei = load i32, ptr %i.ac, align 8, !tbaa !186 ; 5 uses
  %i.ej = sext i32 %i.ei to i64                   ; 5 uses
  %.not.i30 = icmp eq i32 %i.ei, 0
  br i1 %.not.i30, label %bn_select_words.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bn_rshift_words.exit
  %i.ek = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bc) #38, !srcloc !156 ; 5 uses
  %i.el = xor i64 %i.ek, -1                       ; 4 uses
  %min.iters.check = icmp ult i32 %i.ei, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i31
  %i.em = shl nsw i64 %i.ej, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.eg, i64 %i.em
  %scevgep54 = getelementptr i8, ptr %i.eh, i64 %i.em
  %bound0 = icmp ult ptr %i.eg, %scevgep54
  %bound1 = icmp ult ptr %i.eh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ek, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <2 x i64> poison, i64 %i.el, i64 0
  %broadcast.splat56 = shufflevector <2 x i64> %broadcast.splatinsert55, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !94, !alias.scope !557
  %wide.load57 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !94, !alias.scope !557
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load58 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !94, !alias.scope !560, !noalias !557
  %wide.load59 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !94, !alias.scope !560, !noalias !557
  %i.er = and <2 x i64> %wide.load, %broadcast.splat
  %i.es = and <2 x i64> %wide.load57, %broadcast.splat
  %i.et = and <2 x i64> %wide.load58, %broadcast.splat56
  %i.eu = and <2 x i64> %wide.load59, %broadcast.splat56
  %i.ev = or disjoint <2 x i64> %i.et, %i.er
  %i.ew = or disjoint <2 x i64> %i.eu, %i.es
  store <2 x i64> %i.ev, ptr %i.ep, align 8, !tbaa !94, !alias.scope !560, !noalias !557
  store <2 x i64> %i.ew, ptr %i.eq, align 8, !tbaa !94, !alias.scope !560, !noalias !557
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ej
  br i1 %cmp.n, label %bn_select_words.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i31, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i31 ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ey = and i32 %i.ei, 1
  %lcmp.mod87.not = icmp eq i32 %i.ey, 0
  br i1 %lcmp.mod87.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.09.i.ph
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !94
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.09.i.ph ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !94
  %i.fd = and i64 %i.fa, %i.ek
  %i.fe = and i64 %i.fc, %i.el
  %i.ff = or disjoint i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %i.fb, align 8, !tbaa !94
end_hunk_1
begin_hunk_2_@_ZN5mlkem12_GLOBAL__N_113matrix_expandILi4EEEvPNS0_6matrixIXT_EEEPKh:bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !1222
  store i64 168, ptr %i.f, align 8, !tbaa !1223
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !13
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !13
  store i8 %i.m, ptr %i.k, align 8, !tbaa !13
  store i8 %i.o, ptr %i.l, align 1, !tbaa !13
  store i64 34, ptr %i.g, align 8, !tbaa !1224
  %i.p = getelementptr inbounds nuw [512 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %BORINGSSL_keccak_absorb.exit
  %.pre28 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre29, %bb.k ]
  %.pre.i1127 = phi i64 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %i.an, %bb.k ]
  %.01821.i = phi i32 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %.3.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.q = load i32, ptr %i.e, align 4, !tbaa !1222
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader38

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 8, !tbaa !1218   ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.shiftamt = shl nuw nsw i32 %i.s, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.u = load i64, ptr %i.g, align 8, !tbaa !1224
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  %i.x = xor i8 %i.w, %switch.masked
  store i8 %i.x, ptr %i.v, align 1, !tbaa !13
  %i.y = load i64, ptr %i.f, align 8, !tbaa !1223
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !13
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !1222
  %.pre.i11.pre = load i64, ptr %i.h, align 8, !tbaa !1243
  %.pre.pre = load i64, ptr %i.f, align 8, !tbaa !1223
  br label %.preheader38

.preheader38:                                     ; preds = %switch.lookup, %bb.d
  %.ph = phi i64 [ %.pre28, %bb.d ], [ %.pre.pre, %switch.lookup ] ; 2 uses
  %.ph39 = phi i64 [ %.pre.i1127, %bb.d ], [ %.pre.i11.pre, %switch.lookup ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader38, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre30 = phi i64 [ %.pre29, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ]
  %i.ad = phi i64 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ] ; 2 uses
  %i.ae = phi i64 [ %i.an, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph39, %.preheader38 ] ; 2 uses
  %.02429.i = phi i64 [ %i.am, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader38 ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader38 ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !1243
  %.pre30.i = load i64, ptr %i.f, align 8, !tbaa !1223 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre29 = phi i64 [ %.pre30.i, %bb.h ], [ %.pre30, %bb.g ] ; 2 uses
  %i.ag = phi i64 [ %.pre30.i, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ah = sub i64 %i.ag, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ah) ; 4 uses
  %i.ai = icmp eq i64 %i.ag, %.pre31.i
  br i1 %i.ai, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.aj, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.ak = phi i64 [ %i.ag, %bb.i ], [ %.pre31.i, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.am = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.an = add i64 %i.ak, %spec.select.i           ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !1243
  %.not.i12 = icmp eq i64 %i.am, 0
  br i1 %.not.i12, label %BORINGSSL_keccak_squeeze.exit, label %bb.g, !llvm.loop !1244

bb.k:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bq, label %bb.d, label %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit, !llvm.loop !1664

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.o
  %.020.i = phi i64 [ %i.bo, %bb.o ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.119.i = phi i32 [ %.3.i, %bb.o ], [ %.01821.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = and i32 %i.au, 3840
  %i.aw = or disjoint i32 %i.av, %i.aq            ; 2 uses
  %i.ax = lshr i32 %i.at, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 4
  %i.bc = or disjoint i32 %i.bb, %i.ax            ; 2 uses
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  %i.be = icmp samesign ult i32 %i.aw, 3329
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.bf = trunc nuw nsw i32 %i.aw to i16
  %i.bg = add nsw i32 %.119.i, 1
  %i.bh = sext i32 %.119.i to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bh
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !638
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.bg, %bb.l ], [ %.119.i, %BORINGSSL_keccak_squeeze.exit ] ; 4 uses
  %i.bj = icmp samesign ult i32 %i.bc, 3329
  %i.bk = icmp slt i32 %.2.i, 256
  %or.cond.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %.2.i, 1
  %i.bm = sext i32 %.2.i to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bm
  store i16 %i.bd, ptr %i.bn, align 2, !tbaa !638
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3.i = phi i32 [ %i.bl, %bb.n ], [ %.2.i, %bb.m ] ; 3 uses
  %i.bo = add nuw nsw i64 %.020.i, 3
  %i.bp = icmp samesign ult i64 %.020.i, 165
  %i.bq = icmp slt i32 %.3.i, 256                 ; 2 uses
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %BORINGSSL_keccak_squeeze.exit, label %bb.k, !llvm.loop !1665

_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %BORINGSSL_keccak_absorb.exit, !llvm.loop !1913
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v24i16(<24 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #18 = { mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #24 = { mustprogress nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #25 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #31 = { inlinehint mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nofree nounwind }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind memory(none) }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 240}
!12 = !{!"_ZTS10aes_key_st", !9, i64 0, !8, i64 240}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = !{i64 0, i64 128, !13}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !15, !28, !29}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !15, !28}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !15, !28}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !{!44}
!44 = distinct !{!44, !40}
!45 = !{!39, !42}
!46 = !{!47}
!47 = distinct !{!47, !40}
!48 = !{!44, !39, !42}
!49 = distinct !{!49, !15, !28, !29}
!50 = !{!"branch_weights", i32 4, i32 28}
!51 = distinct !{!51, !15, !28, !29}
!52 = distinct !{!52, !15, !28, !29}
!53 = !{!"branch_weights", i32 8, i32 24}
!54 = distinct !{!54, !15, !28, !29}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !15, !28}
!57 = distinct !{!57, !15, !28}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15, !60}
!60 = !{!"llvm.loop.peeled.count", i32 1}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = !{!67, !62}
!67 = distinct !{!67, !63}
!68 = !{!67}
!69 = distinct !{!69, !15, !28, !29}
!70 = distinct !{!70, !15, !28}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15, !60}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = !{!79}
!79 = distinct !{!79, !75}
!80 = !{!74, !77}
!81 = distinct !{!81, !15, !28, !29}
!82 = distinct !{!82, !15, !28}
!83 = distinct !{null}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15, !28, !29}
!89 = distinct !{!89, !15, !28}
!90 = !{!91, !92, i64 8}
!91 = !{!"_ZTS4u128", !92, i64 0, !92, i64 8}
!92 = !{!"long", !9, i64 0}
!93 = !{!91, !92, i64 0}
!94 = !{!92, !92, i64 0}
!95 = distinct !{!95, !15}
!96 = !{!97, !20, i64 520}
!97 = !{!"_ZTS13gcm128_key_st", !9, i64 0, !20, i64 256, !20, i64 264, !12, i64 272, !20, i64 520, !20, i64 528, !98, i64 536}
!98 = !{!"_ZTS10gcm_impl_t", !9, i64 0}
!99 = distinct !{!99, !15}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !15, !28, !29}
!106 = distinct !{!106, !32}
!107 = distinct !{!107, !15, !28}
!108 = !{!97, !20, i64 528}
!109 = !{!110, !92, i64 56}
!110 = !{!"_ZTS14GCM128_CONTEXT", !9, i64 0, !9, i64 16, !9, i64 32, !111, i64 48, !9, i64 64, !8, i64 80, !8, i64 84}
!111 = !{!"_ZTSN14GCM128_CONTEXTUt_E", !92, i64 0, !92, i64 8}
!112 = !{!110, !92, i64 48}
!113 = !{!110, !8, i64 84}
!114 = distinct !{!114, !15}
!115 = !{!116}
!116 = distinct !{!116, !117}
!117 = distinct !{!117, !"LVerDomain"}
!118 = !{!119}
!119 = distinct !{!119, !117}
!120 = distinct !{!120, !15, !28, !29}
!121 = distinct !{!121, !15, !28, !29}
!122 = distinct !{!122, !32}
!123 = distinct !{!123, !15, !28}
!124 = !{!110, !8, i64 80}
end_hunk_2
