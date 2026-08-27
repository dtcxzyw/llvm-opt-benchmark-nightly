Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZNK2OT4avar16map_coords_16_16EPij:bb.a
  %.038183 = phi i32 [ %i.bi, %.lr.ph185 ], [ %.038183.unr, %.lr.ph185.prol.loopexit ]
  %.1182 = phi ptr [ %i.bh, %.lr.ph185 ], [ %.1182.unr, %.lr.ph185.prol.loopexit ] ; 2 uses
  %i.ak = load i16, ptr %.1182, align 1, !tbaa !62
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.1182, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !62
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !62
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !62
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  %i.bi = add nuw nsw i32 %.038183, 4             ; 2 uses
  %exitcond211.not.3 = icmp eq i32 %i.bi, %i.y
  br i1 %exitcond211.not.3, label %._crit_edge186, label %.lr.ph185, !llvm.loop !2361

._crit_edge186:                                   ; preds = %.lr.ph185.prol.loopexit, %.lr.ph185, %bb.b
  %.1.lcssa = phi ptr [ %.039.lcssa, %bb.b ], [ %.lcssa287.unr, %.lr.ph185.prol.loopexit ], [ %i.bh, %.lr.ph185 ] ; 2 uses
  %i.bj = load i32, ptr %.1.lcssa, align 1, !tbaa !58 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %.0.i.i = select i1 %i.bk, ptr @_hb_NullPool, ptr %i.bn, !prof !48
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %i.bp = load i32, ptr %i.bo, align 1, !tbaa !58 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bp)
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %.0.i.i45 = select i1 %i.bq, ptr @_hb_NullPool, ptr %i.bt, !prof !48 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 2 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !58 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 %i.by
  %.0.i.i.i = select i1 %i.bw, ptr @_hb_NullPool, ptr %i.bz, !prof !48
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !62 ; 2 uses
  %i.cc = tail call noundef i16 @llvm.bswap.i16(i16 %i.cb) ; 3 uses
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge186
  %i.ce = zext i16 %i.cc to i64                   ; 5 uses
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  %i.ch = tail call noalias noundef ptr @malloc(i64 noundef %i.cg) #65 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.ch, null
  br i1 %.not16.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  store i32 %i.cd, ptr %i.ch, align 4, !tbaa !328
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 12 uses
  %i.cj = icmp ugt i16 %i.cc, 3
  br i1 %i.cj, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.d
  %i.ck = add nsw i64 %i.ce, -4                   ; 2 uses
  %i.cl = lshr i64 %i.ck, 2                       ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %i.cn = icmp eq i64 %i.cl, 0
  br i1 %i.cn, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.cm, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.co = and i64 %i.ck, 4
  %lcmp.mod290.not.not = icmp eq i64 %i.co, 0
  br i1 %lcmp.mod290.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod292 = trunc i64 %i.cm to i1
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.cp monotonic, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store atomic i32 -2147483648, ptr %i.cq monotonic, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store atomic i32 -2147483648, ptr %i.cr monotonic, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store atomic i32 -2147483648, ptr %i.cs monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.d
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.d ], [ %i.ct, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.cu = icmp samesign ult i32 %.0.lcssa.i18.i.i, %i.cd
  br i1 %i.cu, label %.lr.ph18.preheader.i19.i.i, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.cv = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.cw = sub nsw i64 %i.ce, %i.cv
  %xtraiter293 = and i64 %i.cw, 7                 ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.cv, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter295 = phi i64 [ %prol.iter295.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.cx monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter295.next = add i64 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i64 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !2362

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.cv, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.cy = sub nsw i64 %i.cv, %i.ce
  %i.cz = icmp ugt i64 %i.cy, -8
  br i1 %i.cz, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.da monotonic, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store atomic i32 -2147483648, ptr %i.db monotonic, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store atomic i32 -2147483648, ptr %i.dc monotonic, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store atomic i32 -2147483648, ptr %i.dd monotonic, align 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store atomic i32 -2147483648, ptr %i.df monotonic, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store atomic i32 -2147483648, ptr %i.dg monotonic, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store atomic i32 -2147483648, ptr %i.dh monotonic, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store atomic i32 -2147483648, ptr %i.di monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !332

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.dj monotonic, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store atomic i32 -2147483648, ptr %i.dl monotonic, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store atomic i32 -2147483648, ptr %i.dn monotonic, align 4
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store atomic i32 -2147483648, ptr %i.dp monotonic, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store atomic i32 -2147483648, ptr %i.dr monotonic, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i32 -2147483648, ptr %i.dt monotonic, align 4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store atomic i32 -2147483648, ptr %i.dv monotonic, align 4
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i22.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 28
  store atomic i32 -2147483648, ptr %i.dx monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.ce
  br i1 %exitcond.not.i24.i.i.7, label %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, label %.lr.ph18.i21.i.i, !llvm.loop !333

_ZNK2OT18ItemVariationStore12create_cacheEv.exit: ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %._crit_edge186, %bb.c, %.preheader.i17.i.i
  %.1.i.i = phi ptr [ @_hb_NullPool, %._crit_edge186 ], [ @_hb_NullPool, %bb.c ], [ %i.ch, %.preheader.i17.i.i ], [ %i.ch, %.lr.ph18.i21.i.i ], [ %i.ch, %.lr.ph18.i21.i.i.prol.loopexit ] ; 3 uses
  %or.cond = icmp sgt i32 %2, 0
  br i1 %or.cond, label %.preheader.i64, label %_ZN11hb_vector_tIiLb0EE6resizeEi.exit, !prof !2363

.preheader.i64:                                   ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit, %.preheader.i64
  %.043.i65 = phi i32 [ %i.ea, %.preheader.i64 ], [ 0, %_ZNK2OT18ItemVariationStore12create_cacheEv.exit ] ; 2 uses
  %i.dy = lshr i32 %.043.i65, 1
  %i.dz = add nuw i32 %.043.i65, 8
  %i.ea = add nuw i32 %i.dz, %i.dy                ; 6 uses
  %i.eb = icmp ugt i32 %2, %i.ea
  br i1 %i.eb, label %.preheader.i64, label %.thread.i66, !llvm.loop !129

.thread.i66:                                      ; preds = %.preheader.i64
  %i.ec = icmp ugt i32 %i.ea, 1073741823
  br i1 %i.ec, label %.lr.ph189.preheader, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69, !prof !48

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69: ; preds = %.thread.i66
  %i.ed = shl nuw i32 %i.ea, 2
  %i.ee = zext i32 %i.ed to i64
  %malloc = tail call ptr @malloc(i64 %i.ee)      ; 4 uses
  %.not22.i70 = icmp eq ptr %malloc, null
  br i1 %.not22.i70, label %.lr.ph189.preheader, label %3, !prof !130

3:                                                ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69
  %4 = shl i32 %2, 2                              ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %.lr.ph189.preheader, label %bb.e, !prof !48

bb.e:                                             ; preds = %3
  %i.ef = zext i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %malloc, i8 0, i64 %i.ef, i1 false)
  br label %.lr.ph189.preheader

_ZN11hb_vector_tIiLb0EE6resizeEi.exit:            ; preds = %_ZNK2OT18ItemVariationStore12create_cacheEv.exit
  %.not203 = icmp eq i32 %2, 0
  br i1 %.not203, label %._crit_edge202, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.thread.i66, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69, %bb.e, %3, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  %.sroa.0136.0246 = phi i32 [ 0, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %i.ea, %3 ], [ %i.ea, %bb.e ], [ -1, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ -1, %.thread.i66 ]
  %.sroa.7.0244 = phi i32 [ 0, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %2, %3 ], [ %2, %bb.e ], [ 0, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ 0, %.thread.i66 ] ; 2 uses
  %.sroa.13.0242 = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %malloc, %3 ], [ %malloc, %bb.e ], [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i69 ], [ null, %.thread.i66 ] ; 5 uses
  %i.eg = zext nneg i32 %.sroa.7.0244 to i64      ; 3 uses
  %wide.trip.count215 = zext i32 %2 to i64        ; 5 uses
  %i.eh = add nsw i64 %wide.trip.count215, -1     ; 2 uses
  %xtraiter296 = and i64 %wide.trip.count215, 1
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph189.epil.preheader, label %.lr.ph189.preheader.new

.lr.ph189.preheader.new:                          ; preds = %.lr.ph189.preheader
  %unroll_iter299 = and i64 %wide.trip.count215, 4294967294
  br label %.lr.ph189

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.043.i = phi i32 [ %i.el, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ej = lshr i32 %.043.i, 1
  %i.ek = add i32 %.043.i, 8
  %i.el = add i32 %i.ek, %i.ej                    ; 5 uses
  %i.em = icmp ugt i32 %2, %i.el
  br i1 %i.em, label %.preheader.i, label %.thread.i, !llvm.loop !129

.thread.i:                                        ; preds = %.preheader.i
  %i.en = icmp ugt i32 %i.el, 1073741823
  br i1 %i.en, label %.lr.ph196, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, !prof !48

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.eo = shl nuw i32 %i.el, 2
  %i.ep = zext i32 %i.eo to i64
  %malloc177 = tail call ptr @malloc(i64 %i.ep)   ; 2 uses
  %.not22.i = icmp eq ptr %malloc177, null
  %spec.select176 = select i1 %.not22.i, i32 -1, i32 %i.el, !prof !130
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.thread.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %.sroa.18.2 = phi ptr [ %malloc177, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ null, %.thread.i ]
  %.sroa.0.1 = phi i32 [ %spec.select176, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i ], [ -1, %.thread.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 6
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 8
  %wide.trip.count220 = zext i32 %2 to i64
  br label %bb.l

.lr.ph189:                                        ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit.1, %.lr.ph189.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.lr.ph189.preheader.new ], [ %indvars.iv.next213.1, %_ZN11hb_vector_tIiLb0EEixEi.exit.1 ] ; 5 uses
  %niter300 = phi i64 [ 0, %.lr.ph189.preheader.new ], [ %niter300.next.1, %_ZN11hb_vector_tIiLb0EEixEi.exit.1 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv212
  %i.et = load i32, ptr %i.es, align 4, !tbaa !139
  %i.eu = sitofp i32 %i.et to float
  %i.ev = fmul nnan float %i.eu, 2.500000e-01
  %i.ew = fadd float %i.ev, 5.000000e-01
  %i.ex = tail call noundef float @llvm.floor.f32(float %i.ew)
  %i.ey = fptosi float %i.ex to i32
  %.not.i48 = icmp samesign ult i64 %indvars.iv212, %i.eg
  br i1 %.not.i48, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %.lr.ph189
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

bb.g:                                             ; preds = %.lr.ph189
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0242, i64 %indvars.iv212
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit

_ZN11hb_vector_tIiLb0EEixEi.exit:                 ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ez, %bb.g ]
  store i32 %i.ey, ptr %.0.i, align 4, !tbaa !139
  %indvars.iv.next213 = or disjoint i64 %indvars.iv212, 1 ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next213
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !139
  %i.fc = sitofp i32 %i.fb to float
  %i.fd = fmul nnan float %i.fc, 2.500000e-01
  %i.fe = fadd float %i.fd, 5.000000e-01
  %i.ff = tail call noundef float @llvm.floor.f32(float %i.fe)
  %i.fg = fptosi float %i.ff to i32
  %.not.i48.1 = icmp samesign ult i64 %indvars.iv.next213, %i.eg
  br i1 %.not.i48.1, label %bb.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.1

bb.i:                                             ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0242, i64 %indvars.iv.next213
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.1

_ZN11hb_vector_tIiLb0EEixEi.exit.1:               ; preds = %bb.i, %bb.h
  %.0.i.1 = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.fh, %bb.i ]
  store i32 %i.fg, ptr %.0.i.1, align 4, !tbaa !139
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2 ; 2 uses
  %niter300.next.1 = add i64 %niter300, 2         ; 2 uses
  %niter300.ncmp.1 = icmp eq i64 %niter300.next.1, %unroll_iter299
  br i1 %niter300.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %.lr.ph189, !llvm.loop !2364

.preheader.i.preheader.unr-lcssa:                 ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit.1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.preheader.i.preheader, label %.lr.ph189.epil.preheader

.lr.ph189.epil.preheader:                         ; preds = %.preheader.i.preheader.unr-lcssa, %.lr.ph189.preheader
  %indvars.iv212.epil.init = phi i64 [ 0, %.lr.ph189.preheader ], [ %indvars.iv.next213.1, %.preheader.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod298 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod298)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv212.epil.init
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !139
  %i.fk = sitofp i32 %i.fj to float
  %i.fl = fmul nnan float %i.fk, 2.500000e-01
  %i.fm = fadd float %i.fl, 5.000000e-01
  %i.fn = tail call noundef float @llvm.floor.f32(float %i.fm)
  %i.fo = fptosi float %i.fn to i32
  %.not.i48.epil = icmp samesign ult i64 %indvars.iv212.epil.init, %i.eg
  br i1 %.not.i48.epil, label %bb.k, label %bb.j, !prof !49

bb.j:                                             ; preds = %.lr.ph189.epil.preheader
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.epil

bb.k:                                             ; preds = %.lr.ph189.epil.preheader
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0242, i64 %indvars.iv212.epil.init
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit.epil

_ZN11hb_vector_tIiLb0EEixEi.exit.epil:            ; preds = %bb.k, %bb.j
  %.0.i.epil = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.fp, %bb.k ]
  store i32 %i.fo, ptr %.0.i.epil, align 4, !tbaa !139
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %_ZN11hb_vector_tIiLb0EEixEi.exit.epil
  br label %.preheader.i

.lr.ph201.preheader:                              ; preds = %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit
  %i.fq = zext i32 %.sroa.11.1 to i64             ; 3 uses
  %xtraiter301 = and i64 %wide.trip.count215, 1
  %i.fr = icmp eq i64 %i.eh, 0
  br i1 %i.fr, label %.lr.ph201.epil.preheader, label %.lr.ph201.preheader.new

.lr.ph201.preheader.new:                          ; preds = %.lr.ph201.preheader
  %unroll_iter304 = and i64 %wide.trip.count215, 4294967294
  br label %.lr.ph201

bb.l:                                             ; preds = %.lr.ph196, %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit
  %indvars.iv217 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next218, %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit ] ; 3 uses
  %.sroa.0.0194 = phi i32 [ %.sroa.0.1, %.lr.ph196 ], [ %.sroa.0.3, %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit ] ; 10 uses
  %.sroa.11.0192 = phi i32 [ 0, %.lr.ph196 ], [ %.sroa.11.1, %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit ] ; 6 uses
  %.sroa.18.0191 = phi ptr [ %.sroa.18.2, %.lr.ph196 ], [ %.sroa.18.4, %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv217
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !139
  %i.fu = trunc nuw i64 %indvars.iv217 to i32
  %i.fv = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %.0.i.i, i32 noundef %i.fu) ; 2 uses
  %i.fw = lshr i32 %i.fv, 16                      ; 2 uses
  %i.fx = and i32 %i.fv, 65535
  %i.fy = load i16, ptr %i.eq, align 1, !tbaa !62
  %i.fz = tail call noundef i16 @llvm.bswap.i16(i16 %i.fy)
  %i.ga = zext i16 %i.fz to i32
  %.not.i.i49 = icmp samesign ult i32 %i.fw, %i.ga
  br i1 %.not.i.i49, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, !prof !49

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.gb = zext nneg i32 %i.fw to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 1, !tbaa !58 ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.gd)
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 %i.gg
  %.0.i.i.i.i = select i1 %i.ge, ptr @_hb_NullPool, ptr %i.gh, !prof !48 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.gj = load i16, ptr %i.gi, align 1, !tbaa !62
  %.not.i.i.i51 = icmp eq i16 %i.gj, 0
  br i1 %.not.i.i.i51, label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i
  %i.gk = load i32, ptr %i.bu, align 1, !tbaa !58 ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 0
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gk)
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i45, i64 %i.gn
  %.0.i.i10.i.i = select i1 %i.gl, ptr @_hb_NullPool, ptr %i.go, !prof !48
  %i.gp = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i, i32 noundef %i.fx, ptr noundef %.sroa.13.0242, i32 noundef %.sroa.7.0244, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i, ptr noundef nonnull %.1.i.i)
  %i.gq = fmul float %i.gp, 4.000000e+00
  br label %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit

_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit: ; preds = %bb.l, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i, %bb.m
  %.0.i.i50 = phi float [ 0.000000e+00, %bb.l ], [ %i.gq, %bb.m ], [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i ] ; 2 uses
  %i.gr = fcmp oge float %.0.i.i50, -1.310720e+05
  %i.gs = select i1 %i.gr, float %.0.i.i50, float -1.310720e+05 ; 2 uses
  %i.gt = fcmp ole float %i.gs, 1.310720e+05
  %.sroa.speculated107 = select i1 %i.gt, float %i.gs, float 1.310720e+05
  %i.gu = fadd float %.sroa.speculated107, 5.000000e-01
  %i.gv = tail call noundef float @llvm.floor.f32(float %i.gu)
  %i.gw = fptosi float %i.gv to i32
  %i.gx = add nsw i32 %i.ft, %i.gw
  %.sroa.speculate.load.false.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 -65536)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated, i32 65536)
  %.not.i53 = icmp slt i32 %.sroa.11.0192, %.sroa.0.0194
  %.pre227 = add i32 %.sroa.11.0192, 1            ; 6 uses
  br i1 %.not.i53, label %.critedge.i55, label %bb.n

bb.n:                                             ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit
  %i.gy = icmp slt i32 %.sroa.0.0194, 0
  br i1 %i.gy, label %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103, label %bb.o, !prof !48

bb.o:                                             ; preds = %bb.n
  %.not.i83 = icmp ugt i32 %.pre227, %.sroa.0.0194
  br i1 %.not.i83, label %.preheader.i85, label %.critedge.i55, !prof !48

.preheader.i85:                                   ; preds = %bb.o, %.preheader.i85
  %.043.i86 = phi i32 [ %i.hb, %.preheader.i85 ], [ %.sroa.0.0194, %bb.o ] ; 2 uses
  %i.gz = lshr i32 %.043.i86, 1
  %i.ha = add i32 %.043.i86, 8
  %i.hb = add i32 %i.ha, %i.gz                    ; 8 uses
  %i.hc = icmp ugt i32 %.pre227, %i.hb
  br i1 %i.hc, label %.preheader.i85, label %.thread.i87, !llvm.loop !129

.thread.i87:                                      ; preds = %.preheader.i85
  %i.hd = icmp ugt i32 %i.hb, 1073741823
  br i1 %i.hd, label %.critedge.i102, label %bb.p, !prof !48

.critedge.i102:                                   ; preds = %.thread.i87
  %i.he = xor i32 %.sroa.0.0194, -1
  br label %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103

bb.p:                                             ; preds = %.thread.i87
  %.not50.i89 = icmp eq i32 %.sroa.0.0194, 0
  br i1 %.not50.i89, label %bb.q, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90

bb.q:                                             ; preds = %bb.p
  %.not9.i.i.i99 = icmp eq ptr %.sroa.18.0191, null
  br i1 %.not9.i.i.i99, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hf = shl nuw i32 %i.hb, 2
  %i.hg = zext i32 %i.hf to i64
  %i.hh = tail call noalias noundef ptr @malloc(i64 noundef %i.hg) #65 ; 4 uses
  %.not10.i.i.i100 = icmp eq ptr %i.hh, null
  br i1 %.not10.i.i.i100, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread54.i97, label %bb.s, !prof !48

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i101 = icmp eq i32 %.sroa.11.0192, 0
  br i1 %.not.i.i.i.i101, label %.critedge.i55, label %bb.t, !prof !48

bb.t:                                             ; preds = %bb.s
  %i.hi = zext i32 %.sroa.11.0192 to i64
  %i.hj = shl nuw nsw i64 %i.hi, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull readonly align 1 %.sroa.18.0191, i64 %i.hj, i1 false), !alias.scope !2365
  br label %.critedge.i55

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90: ; preds = %bb.q, %bb.p
  %i.hk = phi ptr [ null, %bb.q ], [ %.sroa.18.0191, %bb.p ]
  %i.hl = shl nuw i32 %i.hb, 2
  %i.hm = zext i32 %i.hl to i64
  %i.hn = tail call noalias noundef ptr @realloc(ptr noundef %i.hk, i64 noundef %i.hm) #66 ; 2 uses
  %.not22.i91 = icmp eq ptr %i.hn, null
  br i1 %.not22.i91, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread54.i97, label %.critedge.i55, !prof !130

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread54.i97: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90, %bb.r
  %i.ho = xor i32 %.sroa.0.0194, -1
  br label %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103

_ZN11hb_vector_tIiLb0EE5allocEjb.exit103:         ; preds = %bb.n, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread54.i97, %.critedge.i102
  %.sroa.0.4 = phi i32 [ %.sroa.0.0194, %bb.n ], [ %i.ho, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread54.i97 ], [ %i.he, %.critedge.i102 ]
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit

.critedge.i55:                                    ; preds = %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit, %bb.s, %bb.t, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90, %bb.o
  %.pre-phi = phi i32 [ %.pre227, %bb.o ], [ 1, %bb.s ], [ %.pre227, %bb.t ], [ %.pre227, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90 ], [ %.pre227, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.0191, %bb.o ], [ %i.hh, %bb.s ], [ %i.hh, %bb.t ], [ %i.hn, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90 ], [ %.sroa.18.0191, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.0194, %bb.o ], [ %i.hb, %bb.s ], [ %i.hb, %bb.t ], [ %i.hb, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i90 ], [ %.sroa.0.0194, %_ZNK2OT18ItemVariationStore9get_deltaEjPKijPNS_17hb_scalar_cache_tE.exit ]
  %i.hp = zext i32 %.sroa.11.0192 to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.3, i64 %i.hp
  store i32 %.sroa.speculated, ptr %i.hq, align 4, !tbaa !139
  br label %_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit

_ZN11hb_vector_tIiLb0EE4pushIJRiEEEPiDpOT_.exit:  ; preds = %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103, %.critedge.i55
  %.sroa.18.4 = phi ptr [ %.sroa.18.3, %.critedge.i55 ], [ %.sroa.18.0191, %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103 ] ; 5 uses
  %.sroa.11.1 = phi i32 [ %.pre-phi, %.critedge.i55 ], [ %.sroa.11.0192, %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103 ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %.critedge.i55 ], [ %.sroa.0.4, %_ZN11hb_vector_tIiLb0EE5allocEjb.exit103 ] ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.lr.ph201.preheader, label %bb.l, !llvm.loop !2369

._crit_edge202.loopexit.unr-lcssa:                ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit61.1
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %._crit_edge202.loopexit, label %.lr.ph201.epil.preheader

.lr.ph201.epil.preheader:                         ; preds = %._crit_edge202.loopexit.unr-lcssa, %.lr.ph201.preheader
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph201.preheader ], [ %indvars.iv.next223.1, %._crit_edge202.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod303 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod303)
  %.not.i59.epil = icmp samesign ult i64 %indvars.iv222.epil.init, %i.fq
  br i1 %.not.i59.epil, label %bb.v, label %bb.u, !prof !49

bb.u:                                             ; preds = %.lr.ph201.epil.preheader
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit61.epil

bb.v:                                             ; preds = %.lr.ph201.epil.preheader
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.4, i64 %indvars.iv222.epil.init
  %.pre.epil = load i32, ptr %i.hr, align 4, !tbaa !139
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit61.epil

_ZN11hb_vector_tIiLb0EEixEi.exit61.epil:          ; preds = %bb.v, %bb.u
  %i.hs = phi i32 [ 0, %bb.u ], [ %.pre.epil, %bb.v ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv222.epil.init
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !139
  br label %._crit_edge202.loopexit

._crit_edge202.loopexit:                          ; preds = %._crit_edge202.loopexit.unr-lcssa, %_ZN11hb_vector_tIiLb0EEixEi.exit61.epil
  %i.hu = add i32 %.sroa.0.3, -1
  %5 = icmp ult i32 %i.hu, -2
  %6 = add nsw i32 %.sroa.0136.0246, -1
  %i.hv = icmp ult i32 %6, -2
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %._crit_edge202.loopexit, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit
  %.sroa.0.0.lcssa276 = phi i1 [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %5, %._crit_edge202.loopexit ]
  %.sroa.18.0.lcssa275 = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %.sroa.18.4, %._crit_edge202.loopexit ]
  %.sroa.13.0243257264274 = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %.sroa.13.0242, %._crit_edge202.loopexit ]
  %.sroa.0136.0247255265273 = phi i1 [ false, %_ZN11hb_vector_tIiLb0EE6resizeEi.exit ], [ %i.hv, %._crit_edge202.loopexit ]
  %.not.i.i56 = icmp eq ptr %.1.i.i, @_hb_NullPool
  br i1 %.not.i.i56, label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge202
  tail call void @free(ptr noundef %.1.i.i) #63
  br label %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit

_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit: ; preds = %._crit_edge202, %bb.w
  br i1 %.sroa.0.0.lcssa276, label %bb.x, label %_ZN11hb_vector_tIiLb0EED2Ev.exit

bb.x:                                             ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit
  tail call void @free(ptr noundef %.sroa.18.0.lcssa275) #63
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit

_ZN11hb_vector_tIiLb0EED2Ev.exit:                 ; preds = %_ZN2OT18ItemVariationStore13destroy_cacheEPNS_17hb_scalar_cache_tE.exit, %bb.x
  br i1 %.sroa.0136.0247255265273, label %bb.y, label %_ZN11hb_vector_tIiLb0EED2Ev.exit58

bb.y:                                             ; preds = %_ZN11hb_vector_tIiLb0EED2Ev.exit
  tail call void @free(ptr noundef %.sroa.13.0243257264274) #63
  br label %_ZN11hb_vector_tIiLb0EED2Ev.exit58

.lr.ph201:                                        ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit61.1, %.lr.ph201.preheader.new
  %indvars.iv222 = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %indvars.iv.next223.1, %_ZN11hb_vector_tIiLb0EEixEi.exit61.1 ] ; 5 uses
  %niter305 = phi i64 [ 0, %.lr.ph201.preheader.new ], [ %niter305.next.1, %_ZN11hb_vector_tIiLb0EEixEi.exit61.1 ]
  %.not.i59 = icmp samesign ult i64 %indvars.iv222, %i.fq
  br i1 %.not.i59, label %bb.aa, label %bb.z, !prof !49

bb.z:                                             ; preds = %.lr.ph201
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit61

bb.aa:                                            ; preds = %.lr.ph201
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.4, i64 %indvars.iv222
  %.pre = load i32, ptr %i.hw, align 4, !tbaa !139
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit61

_ZN11hb_vector_tIiLb0EEixEi.exit61:               ; preds = %bb.z, %bb.aa
  %i.hx = phi i32 [ 0, %bb.z ], [ %.pre, %bb.aa ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv222
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !139
  %indvars.iv.next223 = or disjoint i64 %indvars.iv222, 1 ; 3 uses
  %.not.i59.1 = icmp samesign ult i64 %indvars.iv.next223, %i.fq
  br i1 %.not.i59.1, label %bb.ac, label %bb.ab, !prof !49

bb.ab:                                            ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit61
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit61.1

bb.ac:                                            ; preds = %_ZN11hb_vector_tIiLb0EEixEi.exit61
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.18.4, i64 %indvars.iv.next223
  %.pre.1 = load i32, ptr %i.hz, align 4, !tbaa !139
  br label %_ZN11hb_vector_tIiLb0EEixEi.exit61.1

_ZN11hb_vector_tIiLb0EEixEi.exit61.1:             ; preds = %bb.ac, %bb.ab
  %i.ia = phi i32 [ 0, %bb.ab ], [ %.pre.1, %bb.ac ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next223
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !139
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter305.next.1 = add i64 %niter305, 2         ; 2 uses
  %niter305.ncmp.1 = icmp eq i64 %niter305.next.1, %unroll_iter304
  br i1 %niter305.ncmp.1, label %._crit_edge202.loopexit.unr-lcssa, label %.lr.ph201, !llvm.loop !2370

_ZN11hb_vector_tIiLb0EED2Ev.exit58:               ; preds = %bb.y, %_ZN11hb_vector_tIiLb0EED2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK12hb_outline_t6replayEP15hb_draw_funcs_tPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.hb_draw_state_t, align 4    ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !76   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not128 = icmp eq i32 %i.d, 0
  br i1 %.not128, label %._crit_edge132, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.b

._crit_edge132:                                   ; preds = %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit39, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit39
  %.0130 = phi i32 [ 0, %.lr.ph ], [ %i.r, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit39 ] ; 3 uses
  %.033129 = phi ptr [ %i.b, %.lr.ph ], [ %i.du, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit39 ] ; 2 uses
  %i.r = load i32, ptr %.033129, align 4, !tbaa !139 ; 2 uses
  %i.s = load i32, ptr %i.h, align 4, !tbaa !1304
  %i.t = sub i32 %i.r, %.0130
  %storemerge.i.i = call i32 @llvm.usub.sat.i32(i32 %i.s, i32 %.0130)
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.t) ; 2 uses
  %.not124125 = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not124125, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit39, label %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader, !prof !787

_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader: ; preds = %bb.b
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1301
  %i.v = zext i32 %.0130 to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v
  br label %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit

_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader, %bb.u
  %i.x = phi float [ %i.cv, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ]
  %i.y = phi float [ %i.cw, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ]
  %i.z = phi float [ %i.cx, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.aa = phi float [ %i.cy, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.ab = phi float [ %i.cz, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.ac = phi float [ %i.da, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.ad = phi float [ %i.db, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.ae = phi float [ %i.dc, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.af = phi float [ %i.dd, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %i.ag = phi float [ %i.de, %bb.u ], [ 0.000000e+00, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 2 uses
  %.sroa.11.0127 = phi i64 [ %.sroa.11.1, %bb.u ], [ %.sroa.3.8.insert.ext.i.i, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 3 uses
  %.sroa.092.0126 = phi ptr [ %.sroa.092.1, %bb.u ], [ %i.w, %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit.preheader ] ; 7 uses
  %i.ah = add i64 %.sroa.11.0127, 4294967295
  %.sroa.11.8.insert.ext = and i64 %i.ah, 4294967295 ; 3 uses
  %.sroa.11.12.insert.insert = or disjoint i64 %.sroa.11.8.insert.ext, 4294967296 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.092.0126, i64 12 ; 8 uses
  %i.aj = load <2 x float>, ptr %.sroa.092.0126, align 4, !tbaa !94 ; 5 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1 ; 6 uses
  %i.al = extractelement <2 x float> %i.aj, i64 0 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.092.0126, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !2371
  switch i32 %.sroa.11.0.copyload, label %bb.u [
    i32 0, label %bb.c
    i32 1, label %bb.i
    i32 2, label %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit53
    i32 3, label %bb.p
  ]

bb.c:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit
  %i.am = load i32, ptr %3, align 4, !tbaa !197
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %.sink.split, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %i.an = load float, ptr %i.l, align 4, !tbaa !198 ; 2 uses
  %i.ao = fcmp une float %i.an, %i.aa
  %.pre = load float, ptr %i.m, align 4, !tbaa !200 ; 2 uses
  %i.ap = fcmp une float %.pre, %i.z
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !204 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ar, null
  br i1 %.not.i42, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.e, %bb.f
  %i.au = phi ptr [ %i.at, %bb.f ], [ null, %bb.e ]
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(48) %3, float noundef %i.an, float noundef %.pre, ptr noundef %i.au) #63, !inline_history !821
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !208
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !204 ; 2 uses
  %.not.i43 = icmp eq ptr %i.aw, null
  br i1 %.not.i43, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.h, %bb.g
  %i.az = phi ptr [ %i.ay, %bb.h ], [ null, %bb.g ]
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef %i.az) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  br label %.sink.split

bb.i:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tIK18hb_outline_point_tERS2_EppEi.exit
  %i.ba = load i32, ptr %3, align 4, !tbaa !197
  %.not.i34 = icmp eq i32 %i.ba, 0
  br i1 %.not.i34, label %bb.j, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !809
end_hunk_0
