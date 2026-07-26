inline.NumInlined: 243
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 99
begin_hunk_0_@CreateBackwardReferencesDH58:bb.a

.critedge.i157.i.3:                               ; preds = %.lr.ph739.3, %bb.ch, %.preheader594.3
  %.224.i155.i.lcssa.3 = phi ptr [ %.022.i151.i.lcssa.3, %.preheader594.3 ], [ %.224.i155.i738.3, %.lr.ph739.3 ], [ %scevgep1066.3, %bb.ch ]
  %i.xb = ptrtoint ptr %.224.i155.i.lcssa.3 to i64
  %i.xc = ptrtoint ptr %i.wi to i64
  %i.xd = sub i64 %i.xb, %i.xc
  br label %FindMatchLengthWithLimit.exit162.i.3

FindMatchLengthWithLimit.exit162.i.3:             ; preds = %.critedge.i157.i.3, %bb.cf
  %.2.i158.i.3 = phi i64 [ %i.wq, %bb.cf ], [ %i.xd, %.critedge.i157.i.3 ] ; 4 uses
  %i.xe = icmp ugt i64 %.2.i158.i.3, 1
  br i1 %i.xe, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %FindMatchLengthWithLimit.exit162.i.3
  %i.xf = mul i64 %.2.i158.i.3, 135               ; 2 uses
  %i.xg = add i64 %i.xf, 1935
  %i.xh = icmp ult i64 %.sroa.29417.6.2, %i.xg
  br i1 %i.xh, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.xi = add i64 %i.xf, 1892                     ; 2 uses
  %i.xj = icmp ult i64 %.sroa.29417.6.2, %i.xi
  br i1 %i.xj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %spec.select.i.3 = tail call i64 @llvm.umax.i64(i64 %.2.i158.i.3, i64 %.4128.i.2)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %FindMatchLengthWithLimit.exit162.i.3, %bb.cd
  %.sroa.29417.6.3 = phi i64 [ %.sroa.29417.6.2, %bb.cd ], [ %i.xi, %bb.ck ], [ %.sroa.29417.6.2, %bb.cj ], [ %.sroa.29417.6.2, %bb.ci ], [ %.sroa.29417.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 3 uses
  %.sroa.18413.6.3 = phi i64 [ %.sroa.18413.6.2, %bb.cd ], [ %i.qp, %bb.ck ], [ %.sroa.18413.6.2, %bb.cj ], [ %.sroa.18413.6.2, %bb.ci ], [ %.sroa.18413.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 2 uses
  %.sroa.0405.6.3 = phi i64 [ %.sroa.0405.6.2, %bb.cd ], [ %.2.i158.i.3, %bb.ck ], [ %.sroa.0405.6.2, %bb.cj ], [ %.sroa.0405.6.2, %bb.ci ], [ %.sroa.0405.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 2 uses
  %.sroa.42.6.3 = phi i32 [ %.sroa.42.6.2, %bb.cd ], [ 0, %bb.ck ], [ %.sroa.42.6.2, %bb.cj ], [ %.sroa.42.6.2, %bb.ci ], [ %.sroa.42.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 2 uses
  %.4128.i.3 = phi i64 [ %.4128.i.2, %bb.cd ], [ %spec.select.i.3, %bb.ck ], [ %.4128.i.2, %bb.cj ], [ %.4128.i.2, %bb.ci ], [ %.4128.i.2, %FindMatchLengthWithLimit.exit162.i.3 ]
  br i1 %.not985, label %FindCompoundDictionaryMatch.exit, label %.lr.ph775.preheader

.lr.ph775.preheader:                              ; preds = %bb.cl
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %.4128.i.3, i64 3)
  br label %.lr.ph775

.lr.ph775:                                        ; preds = %.lr.ph775.preheader, %bb.cu
  %.4.i773 = phi i64 [ %.7.i, %bb.cu ], [ %.sroa.29417.6.3, %.lr.ph775.preheader ] ; 6 uses
  %.5129.i772 = phi i64 [ %.8.i, %bb.cu ], [ %spec.store.select.i, %.lr.ph775.preheader ] ; 8 uses
  %.0134.i771 = phi ptr [ %i.xl, %bb.cu ], [ %i.sh, %.lr.ph775.preheader ] ; 2 uses
  %.sroa.42.4770 = phi i32 [ %.sroa.42.5, %bb.cu ], [ %.sroa.42.6.3, %.lr.ph775.preheader ] ; 5 uses
  %.sroa.0405.4769 = phi i64 [ %.sroa.0405.5, %bb.cu ], [ %.sroa.0405.6.3, %.lr.ph775.preheader ] ; 5 uses
  %.sroa.18413.4768 = phi i64 [ %.sroa.18413.5, %bb.cu ], [ %.sroa.18413.6.3, %.lr.ph775.preheader ] ; 5 uses
  %.sroa.29417.4767 = phi i64 [ %.sroa.29417.5, %bb.cu ], [ %.sroa.29417.6.3, %.lr.ph775.preheader ] ; 5 uses
  %i.xk = load i32, ptr %.0134.i771, align 4, !tbaa !5, !noalias !330 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0134.i771, i64 4
  %i.xm = and i32 %i.xk, 2147483647
  %i.xn = zext nneg i32 %i.xm to i64              ; 4 uses
  %i.xo = sub i64 %i.qu, %i.xn                    ; 3 uses
  %i.xp = sub nsw i64 %i.qx, %i.xn
  %i.xq = tail call i64 @llvm.umin.i64(i64 %i.xp, i64 %i.bu) ; 4 uses
  %i.xr = icmp ugt i64 %i.xo, %i.qe
  br i1 %i.xr, label %bb.cu, label %bb.cm, !llvm.loop !111

bb.cm:                                            ; preds = %.lr.ph775
  %i.xs = add i64 %.5129.i772, %i.db              ; 2 uses
  %i.xt = icmp ule i64 %i.xs, %3
  %.not.i217 = icmp ult i64 %.5129.i772, %i.xq
  %or.cond148.i = select i1 %i.xt, i1 %.not.i217, i1 false
  br i1 %or.cond148.i, label %bb.cn, label %bb.cu, !llvm.loop !111

bb.cn:                                            ; preds = %bb.cm
  %i.xu = getelementptr i8, ptr %2, i64 %i.xs
  %i.xv = getelementptr i8, ptr %i.xu, i64 -3
  %.0.copyload.i163.i = load i32, ptr %i.xv, align 1, !alias.scope !322, !noalias !325
  %i.xw = getelementptr i8, ptr %.0.i216, i64 %.5129.i772
  %i.xx = getelementptr i8, ptr %i.xw, i64 %i.xn
  %i.xy = getelementptr i8, ptr %i.xx, i64 -3
  %.0.copyload.i.i = load i32, ptr %i.xy, align 1, !noalias !330
  %.not145.i = icmp eq i32 %.0.copyload.i163.i, %.0.copyload.i.i
  br i1 %.not145.i, label %bb.co, label %bb.cu, !llvm.loop !111

bb.co:                                            ; preds = %bb.cn
  %i.xz = getelementptr inbounds nuw i8, ptr %.0.i216, i64 %i.xn ; 4 uses
  %i.ya = icmp ugt i64 %i.xq, 7
  br i1 %i.ya, label %.lr.ph755, label %.lr.ph763.preheader

.preheader593:                                    ; preds = %bb.cq
  %.not.i.i759 = icmp eq i64 %i.yk, 0
  br i1 %.not.i.i759, label %.critedge.i.i, label %.lr.ph763.preheader

.lr.ph763.preheader:                              ; preds = %bb.co, %.preheader593
  %.022.i.i.lcssa1283 = phi ptr [ %i.yj, %.preheader593 ], [ %i.xz, %bb.co ] ; 2 uses
  %.025.i.i.lcssa1282 = phi ptr [ %i.yi, %.preheader593 ], [ %i.dc, %bb.co ]
  %.027.i.i.lcssa1281 = phi i64 [ %i.yk, %.preheader593 ], [ %i.xq, %bb.co ] ; 2 uses
  %scevgep1068 = getelementptr i8, ptr %.022.i.i.lcssa1283, i64 %.027.i.i.lcssa1281
  br label %.lr.ph763

.lr.ph755:                                        ; preds = %bb.co, %bb.cq
  %.022.i.i753 = phi ptr [ %i.yj, %bb.cq ], [ %i.xz, %bb.co ] ; 3 uses
  %.025.i.i752 = phi ptr [ %i.yi, %bb.cq ], [ %i.dc, %bb.co ] ; 2 uses
  %.027.i.i751 = phi i64 [ %i.yk, %bb.cq ], [ %i.xq, %bb.co ]
  %.0.copyload.i167.i = load i64, ptr %.025.i.i752, align 1, !alias.scope !322, !noalias !325 ; 2 uses
  %.0.copyload.i166.i = load i64, ptr %.022.i.i753, align 1, !noalias !330 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i167.i, %.0.copyload.i166.i
  br i1 %.not30.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph755
  %i.yb = xor i64 %.0.copyload.i166.i, %.0.copyload.i167.i
  %i.yc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yb, i1 true)
  %i.yd = ptrtoint ptr %.022.i.i753 to i64
  %i.ye = ptrtoint ptr %i.xz to i64
  %i.yf = sub i64 %i.yd, %i.ye
  %i.yg = lshr i64 %i.yc, 3
  %i.yh = add i64 %i.yf, %i.yg
  br label %FindMatchLengthWithLimit.exit.i

bb.cq:                                            ; preds = %.lr.ph755
  %i.yi = getelementptr inbounds nuw i8, ptr %.025.i.i752, i64 8 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.022.i.i753, i64 8 ; 3 uses
  %i.yk = add i64 %.027.i.i751, -8                ; 4 uses
  %i.yl = icmp ugt i64 %i.yk, 7
  br i1 %i.yl, label %.lr.ph755, label %.preheader593, !llvm.loop !65

.lr.ph763:                                        ; preds = %.lr.ph763.preheader, %bb.cr
  %.224.i.i762 = phi ptr [ %i.yr, %bb.cr ], [ %.022.i.i.lcssa1283, %.lr.ph763.preheader ] ; 3 uses
  %.126.i.i761 = phi ptr [ %i.yq, %bb.cr ], [ %.025.i.i.lcssa1282, %.lr.ph763.preheader ] ; 2 uses
  %.128.i.i760 = phi i64 [ %i.yp, %bb.cr ], [ %.027.i.i.lcssa1281, %.lr.ph763.preheader ]
  %i.ym = load i8, ptr %.224.i.i762, align 1, !tbaa !55, !noalias !330
  %i.yn = load i8, ptr %.126.i.i761, align 1, !tbaa !55, !alias.scope !322, !noalias !325
  %i.yo = icmp eq i8 %i.ym, %i.yn
  br i1 %i.yo, label %bb.cr, label %.critedge.i.i

bb.cr:                                            ; preds = %.lr.ph763
  %i.yp = add nsw i64 %.128.i.i760, -1            ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.126.i.i761, i64 1
  %i.yr = getelementptr inbounds nuw i8, ptr %.224.i.i762, i64 1
  %.not.i.i = icmp eq i64 %i.yp, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph763, !llvm.loop !67

.critedge.i.i:                                    ; preds = %bb.cr, %.lr.ph763, %.preheader593
  %.224.i.i.lcssa = phi ptr [ %i.yj, %.preheader593 ], [ %.224.i.i762, %.lr.ph763 ], [ %scevgep1068, %bb.cr ]
  %i.ys = ptrtoint ptr %.224.i.i.lcssa to i64
  %i.yt = ptrtoint ptr %i.xz to i64
  %i.yu = sub i64 %i.ys, %i.yt
  br label %FindMatchLengthWithLimit.exit.i

FindMatchLengthWithLimit.exit.i:                  ; preds = %bb.cp, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.yh, %bb.cp ], [ %i.yu, %.critedge.i.i ] ; 4 uses
  %i.yv = icmp ugt i64 %.2.i.i, 3
  br i1 %i.yv, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %FindMatchLengthWithLimit.exit.i
  %i.yw = mul i64 %.2.i.i, 135
  %i.yx = trunc i64 %i.xo to i32
  %i.yy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yx, i1 true)
  %i.yz = xor i32 %i.yy, 31
  %.neg987 = mul nsw i32 %i.yz, -30
  %narrow986 = add nsw i32 %.neg987, 1920
  %i.za = zext nneg i32 %narrow986 to i64
  %i.zb = add i64 %i.yw, %i.za                    ; 3 uses
  %i.zc = icmp ult i64 %.4.i773, %i.zb
  br i1 %i.zc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %FindMatchLengthWithLimit.exit.i, %bb.cn, %bb.cm, %.lr.ph775
  %.sroa.29417.5 = phi i64 [ %.sroa.29417.4767, %.lr.ph775 ], [ %i.zb, %bb.ct ], [ %.sroa.29417.4767, %bb.cs ], [ %.sroa.29417.4767, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.29417.4767, %bb.cn ], [ %.sroa.29417.4767, %bb.cm ] ; 2 uses
  %.sroa.18413.5 = phi i64 [ %.sroa.18413.4768, %.lr.ph775 ], [ %i.xo, %bb.ct ], [ %.sroa.18413.4768, %bb.cs ], [ %.sroa.18413.4768, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.18413.4768, %bb.cn ], [ %.sroa.18413.4768, %bb.cm ] ; 2 uses
  %.sroa.0405.5 = phi i64 [ %.sroa.0405.4769, %.lr.ph775 ], [ %.2.i.i, %bb.ct ], [ %.sroa.0405.4769, %bb.cs ], [ %.sroa.0405.4769, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.0405.4769, %bb.cn ], [ %.sroa.0405.4769, %bb.cm ] ; 2 uses
  %.sroa.42.5 = phi i32 [ %.sroa.42.4770, %.lr.ph775 ], [ 0, %bb.ct ], [ %.sroa.42.4770, %bb.cs ], [ %.sroa.42.4770, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.42.4770, %bb.cn ], [ %.sroa.42.4770, %bb.cm ] ; 2 uses
  %.8.i = phi i64 [ %.5129.i772, %.lr.ph775 ], [ %.2.i.i, %bb.ct ], [ %.5129.i772, %bb.cs ], [ %.5129.i772, %FindMatchLengthWithLimit.exit.i ], [ %.5129.i772, %bb.cn ], [ %.5129.i772, %bb.cm ]
  %.7.i = phi i64 [ %.4.i773, %.lr.ph775 ], [ %i.zb, %bb.ct ], [ %.4.i773, %bb.cs ], [ %.4.i773, %FindMatchLengthWithLimit.exit.i ], [ %.4.i773, %bb.cn ], [ %.4.i773, %bb.cm ]
  %i.zd = icmp sgt i32 %i.xk, -1
  br i1 %i.zd, label %.lr.ph775, label %FindCompoundDictionaryMatch.exit

FindCompoundDictionaryMatch.exit:                 ; preds = %bb.cu, %bb.cl
  %.sroa.29417.4.lcssa = phi i64 [ %.sroa.29417.6.3, %bb.cl ], [ %.sroa.29417.5, %bb.cu ] ; 2 uses
  %.sroa.18413.4.lcssa = phi i64 [ %.sroa.18413.6.3, %bb.cl ], [ %.sroa.18413.5, %bb.cu ] ; 2 uses
  %.sroa.0405.4.lcssa = phi i64 [ %.sroa.0405.6.3, %bb.cl ], [ %.sroa.0405.5, %bb.cu ] ; 2 uses
  %.sroa.42.4.lcssa = phi i32 [ %.sroa.42.6.3, %bb.cl ], [ %.sroa.42.5, %bb.cu ] ; 2 uses
  %i.ze = add nuw i64 %.0.i213784, 1              ; 2 uses
  %exitcond1069.not = icmp eq i64 %i.ze, %i.qh
  br i1 %exitcond1069.not, label %LookupCompoundDictionaryMatch.exit214, label %bb.be, !llvm.loop !112

LookupCompoundDictionaryMatch.exit214:            ; preds = %FindCompoundDictionaryMatch.exit, %FindLongestMatchH58.exit388
  %.sroa.29417.2.lcssa = phi i64 [ %.sroa.29417.17, %FindLongestMatchH58.exit388 ], [ %.sroa.29417.4.lcssa, %FindCompoundDictionaryMatch.exit ] ; 2 uses
  %.sroa.18413.2.lcssa = phi i64 [ %.sroa.18413.17, %FindLongestMatchH58.exit388 ], [ %.sroa.18413.4.lcssa, %FindCompoundDictionaryMatch.exit ]
  %.sroa.0405.2.lcssa = phi i64 [ %.sroa.0405.17, %FindLongestMatchH58.exit388 ], [ %.sroa.0405.4.lcssa, %FindCompoundDictionaryMatch.exit ]
  %.sroa.42.2.lcssa = phi i32 [ %.sroa.42.11, %FindLongestMatchH58.exit388 ], [ %.sroa.42.4.lcssa, %FindCompoundDictionaryMatch.exit ]
  %i.zf = icmp ugt i64 %.sroa.29417.2.lcssa, 2020
  br i1 %i.zf, label %.preheader598, label %bb.hn

.preheader598:                                    ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.zg = load ptr, ptr %i.ay, align 8, !tbaa !302, !alias.scope !331, !noalias !334
  %i.zh = load ptr, ptr %i.az, align 8, !tbaa !305, !alias.scope !331, !noalias !334
  %i.zi = load ptr, ptr %i.ba, align 8, !tbaa !306, !alias.scope !331, !noalias !334
  %i.zj = load i32, ptr %i.bb, align 8, !tbaa !307, !alias.scope !331, !noalias !334
  %i.zk = load i32, ptr %i.bc, align 8, !tbaa !308, !alias.scope !331, !noalias !334 ; 2 uses
  %i.zl = icmp sgt i32 %i.zk, 4
  %i.zm = load i32, ptr %i.t, align 4, !tbaa !290, !alias.scope !331, !noalias !334 ; 2 uses
  %i.zn = sext i32 %i.zm to i64
  %.not988 = icmp eq i32 %i.zm, 0
  %i.zo = load i32, ptr %i.bd, align 4, !tbaa !312, !alias.scope !331, !noalias !334 ; 3 uses
  %i.zp = load i64, ptr %i.be, align 8, !tbaa !313, !alias.scope !331, !noalias !334 ; 2 uses
  %i.zq = lshr i64 %i.zp, 4                       ; 5 uses
  %.not989 = icmp eq i64 %i.zq, 0
  %12 = zext i32 %i.zo to i64
  %exitcond1073.not = icmp eq i64 %i.zq, 1
  %exitcond1073.not.1 = icmp eq i64 %i.zq, 2
  %exitcond1073.not.2 = icmp eq i64 %i.zq, 3
  br label %bb.cv

bb.cv:                                            ; preds = %.preheader598, %bb.gl
  %.sroa.29417.0 = phi i64 [ %.sroa.18.0.lcssa, %bb.gl ], [ %.sroa.29417.2.lcssa, %.preheader598 ]
  %.sroa.18413.0 = phi i64 [ %.sroa.12.0.lcssa, %bb.gl ], [ %.sroa.18413.2.lcssa, %.preheader598 ]
  %.sroa.0405.0 = phi i64 [ %.sroa.0.0.lcssa, %bb.gl ], [ %.sroa.0405.2.lcssa, %.preheader598 ] ; 2 uses
  %.sroa.42.0 = phi i32 [ %.sroa.29.0.lcssa, %bb.gl ], [ %.sroa.42.2.lcssa, %.preheader598 ]
  %.1201 = phi i32 [ %.2202, %bb.gl ], [ %.0200, %.preheader598 ]
  %.1198 = phi i8 [ %.2199, %bb.gl ], [ %.0197, %.preheader598 ] ; 2 uses
  %.0194 = phi i32 [ %i.awc, %bb.gl ], [ 0, %.preheader598 ] ; 2 uses
  %.0191.in = phi i64 [ %.0191, %bb.gl ], [ %i.bu, %.preheader598 ]
  %.1183 = phi i64 [ %i.awb, %bb.gl ], [ %.0182973, %.preheader598 ] ; 2 uses
  %.1 = phi i64 [ %i.zw, %bb.gl ], [ %.0975, %.preheader598 ] ; 5 uses
  %.0191 = add i64 %.0191.in, -1                  ; 15 uses
  %i.zr = load i32, ptr %i.l, align 4, !tbaa !32
  %i.zs = icmp slt i32 %i.zr, 5
  %i.zt = add i64 %.sroa.0405.0, -1
  %i.zu = tail call i64 @llvm.umin.i64(i64 %i.zt, i64 %.0191)
  %i.zv = select i1 %i.zs, i64 %i.zu, i64 0       ; 2 uses
  %i.zw = add i64 %.1, 1                          ; 9 uses
  %i.zx = tail call i64 @llvm.umin.i64(i64 %i.zw, i64 %i.e) ; 2 uses
  %i.zy = add i64 %i.zw, %i.g
  %i.zz = tail call i64 @llvm.umin.i64(i64 %i.zy, i64 %i.e) ; 3 uses
  %i.aaa = load i32, ptr %i.as, align 8, !tbaa !54
  %.not211 = icmp eq i32 %i.aaa, 0
  br i1 %.not211, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aab = and i64 %.1, %3
  %i.aac = getelementptr inbounds nuw i8, ptr %2, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !55 ; 2 uses
  %i.aae = zext i8 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr %4, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !55
  %i.aah = zext i8 %.1198 to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !55
  %i.aak = or i8 %i.aaj, %i.aag
  %i.aal = zext i8 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !55
  %i.aao = zext i8 %i.aan to i32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.2202 = phi i32 [ %i.aao, %bb.cw ], [ %.1201, %bb.cv ] ; 2 uses
  %.2199 = phi i8 [ %i.aad, %bb.cw ], [ %.1198, %bb.cv ]
  %i.aap = zext nneg i32 %.2202 to i64
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aap
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !56 ; 6 uses
  %i.aas = load i64, ptr %i.ax, align 8, !tbaa !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.aat = and i64 %i.zw, %3                      ; 4 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %2, i64 %i.aat ; 22 uses
  %.val399 = load i32, ptr %i.aau, align 1
  %i.aav = mul i32 %.val399, 506832829
  %i.aaw = lshr i32 %i.aav, %i.zj                 ; 2 uses
  %i.aax = lshr i32 %i.aaw, 8                     ; 2 uses
  %i.aay = shl i32 %i.aax, %i.zk
  %i.aaz = zext i32 %i.aay to i64                 ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.aaz ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.zi, i64 %i.aaz ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.aba, i32 0, i32 3, i32 1), !noalias !340
  tail call void @llvm.prefetch.p0(ptr %i.abb, i32 0, i32 3, i32 1), !noalias !340
  br i1 %i.zl, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.abc, i32 0, i32 3, i32 1), !noalias !340
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %.not988, label %._crit_edge827, label %.lr.ph826

.lr.ph826:                                        ; preds = %bb.cz
  %i.abd = icmp ugt i64 %.0191, 7
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph826, %bb.do
  %.0.i282824 = phi i64 [ 2020, %.lr.ph826 ], [ %.3.i302.ph, %bb.do ] ; 9 uses
  %.0158.i823 = phi i64 [ %i.zv, %.lr.ph826 ], [ %.3161.i.ph, %bb.do ] ; 9 uses
  %.0167.i821 = phi i64 [ 0, %.lr.ph826 ], [ %i.ada, %bb.do ] ; 5 uses
  %.sroa.0.5820 = phi i64 [ 0, %.lr.ph826 ], [ %.sroa.0.14.ph, %bb.do ] ; 7 uses
  %.sroa.12.5819 = phi i64 [ 0, %.lr.ph826 ], [ %.sroa.12.14.ph, %bb.do ] ; 7 uses
  %.sroa.18.5818 = phi i64 [ 2020, %.lr.ph826 ], [ %.sroa.18.14.ph, %bb.do ] ; 7 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0167.i821
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !5, !alias.scope !339, !noalias !341
  %i.abg = sext i32 %i.abf to i64                 ; 3 uses
  %i.abh = sub i64 %i.zw, %i.abg                  ; 2 uses
  %.not.i301 = icmp uge i64 %i.abh, %i.zw
  %i.abi = icmp ult i64 %i.zx, %i.abg
  %or.cond190.i = or i1 %i.abi, %.not.i301
  br i1 %or.cond190.i, label %bb.do, label %bb.db, !prof !64

bb.db:                                            ; preds = %bb.da
  %i.abj = and i64 %i.abh, %3                     ; 2 uses
  %i.abk = add i64 %.0158.i823, %i.aat            ; 2 uses
  %i.abl = icmp ugt i64 %i.abk, %3
  br i1 %i.abl, label %._crit_edge827, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.abm = add i64 %i.abj, %.0158.i823            ; 2 uses
  %i.abn = icmp ugt i64 %i.abm, %3
  br i1 %i.abn, label %bb.do, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abo = getelementptr inbounds nuw i8, ptr %2, i64 %i.abk
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !55, !alias.scope !338, !noalias !340
  %i.abq = getelementptr inbounds nuw i8, ptr %2, i64 %i.abm
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !55, !alias.scope !338, !noalias !340
  %.not185.i = icmp eq i8 %i.abp, %i.abr
  br i1 %.not185.i, label %bb.de, label %bb.do

bb.de:                                            ; preds = %bb.dd
  %i.abs = getelementptr inbounds nuw i8, ptr %2, i64 %i.abj ; 4 uses
  br i1 %i.abd, label %.lr.ph806, label %.preheader592

.preheader592:                                    ; preds = %bb.dg, %bb.de
  %.027.i191.i.lcssa = phi i64 [ %.0191, %bb.de ], [ %i.acc, %bb.dg ] ; 3 uses
  %.025.i192.i.lcssa = phi ptr [ %i.aau, %bb.de ], [ %i.aca, %bb.dg ]
  %.022.i193.i.lcssa = phi ptr [ %i.abs, %bb.de ], [ %i.acb, %bb.dg ] ; 3 uses
  %.not.i198.i810 = icmp eq i64 %.027.i191.i.lcssa, 0
  br i1 %.not.i198.i810, label %.critedge.i199.i, label %.lr.ph814.preheader

.lr.ph814.preheader:                              ; preds = %.preheader592
  %scevgep1070 = getelementptr i8, ptr %.022.i193.i.lcssa, i64 %.027.i191.i.lcssa
  br label %.lr.ph814

.lr.ph806:                                        ; preds = %bb.de, %bb.dg
  %.022.i193.i804 = phi ptr [ %i.acb, %bb.dg ], [ %i.abs, %bb.de ] ; 3 uses
  %.025.i192.i803 = phi ptr [ %i.aca, %bb.dg ], [ %i.aau, %bb.de ] ; 2 uses
  %.027.i191.i802 = phi i64 [ %i.acc, %bb.dg ], [ %.0191, %bb.de ]
  %.0.copyload.i208.i = load i64, ptr %.025.i192.i803, align 1, !alias.scope !338, !noalias !340 ; 2 uses
  %.0.copyload.i207.i = load i64, ptr %.022.i193.i804, align 1, !alias.scope !338, !noalias !340 ; 2 uses
  %.not30.i201.i = icmp eq i64 %.0.copyload.i208.i, %.0.copyload.i207.i
  br i1 %.not30.i201.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph806
  %i.abt = xor i64 %.0.copyload.i207.i, %.0.copyload.i208.i
  %i.abu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abt, i1 true)
  %i.abv = ptrtoint ptr %.022.i193.i804 to i64
  %i.abw = ptrtoint ptr %i.abs to i64
  %i.abx = sub i64 %i.abv, %i.abw
  %i.aby = lshr i64 %i.abu, 3
  %i.abz = add i64 %i.abx, %i.aby
  br label %FindMatchLengthWithLimit.exit204.i

bb.dg:                                            ; preds = %.lr.ph806
  %i.aca = getelementptr inbounds nuw i8, ptr %.025.i192.i803, i64 8 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.022.i193.i804, i64 8 ; 2 uses
  %i.acc = add i64 %.027.i191.i802, -8            ; 3 uses
  %i.acd = icmp ugt i64 %i.acc, 7
  br i1 %i.acd, label %.lr.ph806, label %.preheader592, !llvm.loop !65

.lr.ph814:                                        ; preds = %.lr.ph814.preheader, %bb.dh
  %.224.i197.i813 = phi ptr [ %i.acj, %bb.dh ], [ %.022.i193.i.lcssa, %.lr.ph814.preheader ] ; 3 uses
  %.126.i196.i812 = phi ptr [ %i.aci, %bb.dh ], [ %.025.i192.i.lcssa, %.lr.ph814.preheader ] ; 2 uses
  %.128.i195.i811 = phi i64 [ %i.ach, %bb.dh ], [ %.027.i191.i.lcssa, %.lr.ph814.preheader ]
  %i.ace = load i8, ptr %.224.i197.i813, align 1, !tbaa !55, !alias.scope !338, !noalias !340
  %i.acf = load i8, ptr %.126.i196.i812, align 1, !tbaa !55, !alias.scope !338, !noalias !340
  %i.acg = icmp eq i8 %i.ace, %i.acf
  br i1 %i.acg, label %bb.dh, label %.critedge.i199.i

bb.dh:                                            ; preds = %.lr.ph814
  %i.ach = add nsw i64 %.128.i195.i811, -1        ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.126.i196.i812, i64 1
  %i.acj = getelementptr inbounds nuw i8, ptr %.224.i197.i813, i64 1
  %.not.i198.i = icmp eq i64 %i.ach, 0
  br i1 %.not.i198.i, label %.critedge.i199.i, label %.lr.ph814, !llvm.loop !67

.critedge.i199.i:                                 ; preds = %bb.dh, %.lr.ph814, %.preheader592
  %.224.i197.i.lcssa = phi ptr [ %.022.i193.i.lcssa, %.preheader592 ], [ %.224.i197.i813, %.lr.ph814 ], [ %scevgep1070, %bb.dh ]
  %i.ack = ptrtoint ptr %.224.i197.i.lcssa to i64
  %i.acl = ptrtoint ptr %i.abs to i64
  %i.acm = sub i64 %i.ack, %i.acl
  br label %FindMatchLengthWithLimit.exit204.i

FindMatchLengthWithLimit.exit204.i:               ; preds = %bb.df, %.critedge.i199.i
  %.2.i200.i = phi i64 [ %i.abz, %bb.df ], [ %i.acm, %.critedge.i199.i ] ; 5 uses
  %i.acn = icmp ugt i64 %.2.i200.i, 2
  br i1 %i.acn, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %FindMatchLengthWithLimit.exit204.i
  %i.aco = icmp eq i64 %.2.i200.i, 2
  %i.acp = icmp ult i64 %.0167.i821, 2
  %or.cond.i303 = and i1 %i.acp, %i.aco
  br i1 %or.cond.i303, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di, %FindMatchLengthWithLimit.exit204.i
  %i.acq = mul i64 %.2.i200.i, 135
  %i.acr = add i64 %i.acq, 1935                   ; 3 uses
  %i.acs = icmp ult i64 %.0.i282824, %i.acr
  br i1 %i.acs, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %.not186.i = icmp eq i64 %.0167.i821, 0
  br i1 %.not186.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.act = trunc i64 %.0167.i821 to i32
  %i.acu = and i32 %i.act, 14
  %i.acv = lshr i32 117264, %i.acu
  %i.acw = and i32 %i.acv, 14
  %narrow.i.i304 = add nuw nsw i32 %i.acw, 39
  %i.acx = zext nneg i32 %narrow.i.i304 to i64
  %i.acy = sub nuw i64 %i.acr, %i.acx
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0170.i = phi i64 [ %i.acy, %bb.dl ], [ %i.acr, %bb.dk ] ; 3 uses
  %i.acz = icmp ult i64 %.0.i282824, %.0170.i
  br i1 %i.acz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  br label %bb.do

bb.do:                                            ; preds = %bb.dc, %bb.da, %bb.di, %bb.dd, %bb.dj, %bb.dn, %bb.dm
  %.sroa.18.14.ph = phi i64 [ %.sroa.18.5818, %bb.dd ], [ %.sroa.18.5818, %bb.di ], [ %.sroa.18.5818, %bb.dj ], [ %.sroa.18.5818, %bb.dm ], [ %.0170.i, %bb.dn ], [ %.sroa.18.5818, %bb.dc ], [ %.sroa.18.5818, %bb.da ] ; 2 uses
  %.sroa.12.14.ph = phi i64 [ %.sroa.12.5819, %bb.dd ], [ %.sroa.12.5819, %bb.di ], [ %.sroa.12.5819, %bb.dj ], [ %.sroa.12.5819, %bb.dm ], [ %i.abg, %bb.dn ], [ %.sroa.12.5819, %bb.dc ], [ %.sroa.12.5819, %bb.da ] ; 2 uses
  %.sroa.0.14.ph = phi i64 [ %.sroa.0.5820, %bb.dd ], [ %.sroa.0.5820, %bb.di ], [ %.sroa.0.5820, %bb.dj ], [ %.sroa.0.5820, %bb.dm ], [ %.2.i200.i, %bb.dn ], [ %.sroa.0.5820, %bb.dc ], [ %.sroa.0.5820, %bb.da ] ; 2 uses
  %.3161.i.ph = phi i64 [ %.0158.i823, %bb.dd ], [ %.0158.i823, %bb.di ], [ %.0158.i823, %bb.dj ], [ %.0158.i823, %bb.dm ], [ %.2.i200.i, %bb.dn ], [ %.0158.i823, %bb.dc ], [ %.0158.i823, %bb.da ] ; 2 uses
  %.3.i302.ph = phi i64 [ %.0.i282824, %bb.dd ], [ %.0.i282824, %bb.di ], [ %.0.i282824, %bb.dj ], [ %.0.i282824, %bb.dm ], [ %.0170.i, %bb.dn ], [ %.0.i282824, %bb.dc ], [ %.0.i282824, %bb.da ] ; 2 uses
  %i.ada = add nuw i64 %.0167.i821, 1             ; 2 uses
  %exitcond1071.not = icmp eq i64 %i.ada, %i.zn
  br i1 %exitcond1071.not, label %._crit_edge827, label %bb.da, !llvm.loop !311

._crit_edge827:                                   ; preds = %bb.do, %bb.db, %bb.cz
  %.sroa.18.5.lcssa = phi i64 [ 2020, %bb.cz ], [ %.sroa.18.5818, %bb.db ], [ %.sroa.18.14.ph, %bb.do ] ; 2 uses
  %.sroa.12.5.lcssa = phi i64 [ 0, %bb.cz ], [ %.sroa.12.5819, %bb.db ], [ %.sroa.12.14.ph, %bb.do ] ; 2 uses
  %.sroa.0.5.lcssa = phi i64 [ 0, %bb.cz ], [ %.sroa.0.5820, %bb.db ], [ %.sroa.0.14.ph, %bb.do ] ; 2 uses
  %.0158.i.lcssa = phi i64 [ %i.zv, %bb.cz ], [ %.0158.i823, %bb.db ], [ %.3161.i.ph, %bb.do ]
  %.0.i282.lcssa = phi i64 [ 2020, %bb.cz ], [ %.0.i282824, %bb.db ], [ %.3.i302.ph, %bb.do ]
  %spec.store.select.i284 = tail call i64 @llvm.umax.i64(i64 %.0158.i.lcssa, i64 3)
  %i.adb = trunc i32 %i.aaw to i8                 ; 2 uses
  %i.adc = zext nneg i32 %i.aax to i64
  %i.add = getelementptr inbounds nuw [2 x i8], ptr %i.zg, i64 %i.adc ; 3 uses
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !69, !noalias !340 ; 2 uses
  %i.adf = zext i16 %i.ade to i32                 ; 2 uses
  %i.adg = add nuw nsw i32 %i.adf, 1
  %i.adh = and i32 %i.adg, %i.zo                  ; 3 uses
  %i.adi = zext nneg i32 %i.adh to i64            ; 2 uses
  %i.adj = insertelement <16 x i8> poison, i8 %i.adb, i64 0
  %i.adk = shufflevector <16 x i8> %i.adj, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %.not989, label %._crit_edge845.thread, label %.lr.ph844

.lr.ph844:                                        ; preds = %._crit_edge827
  %13 = load <16 x i8>, ptr %i.abb, align 1, !tbaa !55, !noalias !340
  %14 = icmp eq <16 x i8> %13, %i.adk
  %15 = bitcast <16 x i1> %14 to i16
  %16 = zext i16 %15 to i64                       ; 2 uses
  br i1 %exitcond1073.not, label %._crit_edge845, label %.lr.ph844.1

.lr.ph844.1:                                      ; preds = %.lr.ph844
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.adm = load <16 x i8>, ptr %i.adl, align 1, !tbaa !55, !noalias !340
  %i.adn = icmp eq <16 x i8> %i.adm, %i.adk
  %i.ado = bitcast <16 x i1> %i.adn to i16
  %i.adp = zext i16 %i.ado to i64
  %i.adq = shl nuw nsw i64 %i.adp, 16
  %i.adr = or disjoint i64 %i.adq, %16            ; 2 uses
  br i1 %exitcond1073.not.1, label %._crit_edge845, label %.lr.ph844.2

.lr.ph844.2:                                      ; preds = %.lr.ph844.1
  %17 = getelementptr inbounds nuw i8, ptr %i.abb, i64 32
  %18 = load <16 x i8>, ptr %17, align 1, !tbaa !55, !noalias !340
  %19 = icmp eq <16 x i8> %18, %i.adk
  %20 = bitcast <16 x i1> %19 to i16
  %21 = zext i16 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = or disjoint i64 %22, %i.adr               ; 2 uses
  br i1 %exitcond1073.not.2, label %._crit_edge845, label %.lr.ph844.3

.lr.ph844.3:                                      ; preds = %.lr.ph844.2
  %i.ads = getelementptr inbounds nuw i8, ptr %i.abb, i64 48
  %i.adt = load <16 x i8>, ptr %i.ads, align 1, !tbaa !55, !noalias !340
  %i.adu = icmp eq <16 x i8> %i.adt, %i.adk
  %i.adv = bitcast <16 x i1> %i.adu to i16
  %i.adw = zext i16 %i.adv to i64
  %i.adx = shl nuw i64 %i.adw, 48
  %i.ady = or disjoint i64 %i.adx, %23
  br label %._crit_edge845

._crit_edge845:                                   ; preds = %.lr.ph844.3, %.lr.ph844.2, %.lr.ph844.1, %.lr.ph844
  %.lcssa1636 = phi i64 [ %16, %.lr.ph844 ], [ %i.adr, %.lr.ph844.1 ], [ %23, %.lr.ph844.2 ], [ %i.ady, %.lr.ph844.3 ] ; 3 uses
  switch i64 %i.zq, label %._crit_edge845.thread [
    i64 1, label %bb.dp
    i64 2, label %bb.dq
  ]

bb.dp:                                            ; preds = %._crit_edge845
  %i.adz = trunc i64 %.lcssa1636 to i16           ; 2 uses
  %i.aea = trunc i32 %i.adh to i16
  %i.aeb = tail call i16 @llvm.fshr.i16(i16 %i.adz, i16 %i.adz, i16 %i.aea)
  %i.aec = zext i16 %i.aeb to i64
  br label %GetMatchingTagMask.exit395

bb.dq:                                            ; preds = %._crit_edge845
  %i.aed = trunc i64 %.lcssa1636 to i32           ; 2 uses
  %i.aee = tail call i32 @llvm.fshr.i32(i32 %i.aed, i32 %i.aed, i32 %i.adh)
  %i.aef = zext i32 %i.aee to i64
  br label %GetMatchingTagMask.exit395

._crit_edge845.thread:                            ; preds = %._crit_edge827, %._crit_edge845
  %.020.i393.lcssa1285 = phi i64 [ %.lcssa1636, %._crit_edge845 ], [ 0, %._crit_edge827 ] ; 2 uses
  %i.aeg = tail call i64 @llvm.fshr.i64(i64 %.020.i393.lcssa1285, i64 %.020.i393.lcssa1285, i64 range(i64 0, 65537) %i.adi)
  br label %GetMatchingTagMask.exit395

GetMatchingTagMask.exit395:                       ; preds = %bb.dp, %bb.dq, %._crit_edge845.thread
  %.0.i394 = phi i64 [ %i.aec, %bb.dp ], [ %i.aef, %bb.dq ], [ %i.aeg, %._crit_edge845.thread ]
  %i.aeh = xor i16 %i.ade, -1                     ; 2 uses
  %i.aei = zext i16 %i.aeh to i64
  %i.aej = icmp ugt i64 %i.zp, %i.aei
  %i.aek = zext i1 %i.aej to i64
  %i.ael = and i16 %i.aeh, 63
  %i.aem = zext nneg i16 %i.ael to i64
  %i.aen = shl nuw i64 %i.aek, %i.aem
  %i.aeo = add i64 %i.aen, -1
  %i.aep = and i64 %.0.i394, %i.aeo               ; 2 uses
  %.not187.i863 = icmp eq i64 %i.aep, 0
  br i1 %.not187.i863, label %._crit_edge871, label %.lr.ph870

.lr.ph870:                                        ; preds = %GetMatchingTagMask.exit395
  %i.aeq = icmp ugt i64 %.0191, 7
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph870, %bb.eb
  %.5.i869 = phi i64 [ %.0.i282.lcssa, %.lr.ph870 ], [ %.8.i286.ph, %bb.eb ] ; 5 uses
  %.5163.i868 = phi i64 [ %spec.store.select.i284, %.lr.ph870 ], [ %.8166.i.ph, %bb.eb ] ; 6 uses
  %.0171.i867 = phi i64 [ %i.aep, %.lr.ph870 ], [ %i.agm, %bb.eb ] ; 3 uses
  %.sroa.0.7866 = phi i64 [ %.sroa.0.5.lcssa, %.lr.ph870 ], [ %.sroa.0.8.ph, %bb.eb ] ; 6 uses
  %.sroa.12.7865 = phi i64 [ %.sroa.12.5.lcssa, %.lr.ph870 ], [ %.sroa.12.8.ph, %bb.eb ] ; 6 uses
  %.sroa.18.7864 = phi i64 [ %.sroa.18.5.lcssa, %.lr.ph870 ], [ %.sroa.18.8.ph, %bb.eb ] ; 6 uses
  %i.aer = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0171.i867, i1 true)
  %i.aes = add nuw nsw i64 %i.aer, %i.adi
  %i.aet = and i64 %i.aes, %12
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.aet
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !5, !noalias !340
  %i.aew = zext i32 %i.aev to i64                 ; 2 uses
  %i.aex = sub i64 %i.zw, %i.aew                  ; 3 uses
  %i.aey = icmp ugt i64 %i.aex, %i.zx
  br i1 %i.aey, label %._crit_edge871, label %bb.ds, !prof !73

bb.ds:                                            ; preds = %bb.dr
  %i.aez = and i64 %3, %i.aew                     ; 2 uses
  %i.afa = add i64 %.5163.i868, %i.aat            ; 2 uses
  %i.afb = icmp ugt i64 %i.afa, %3
  br i1 %i.afb, label %._crit_edge871, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.afc = add i64 %i.aez, %.5163.i868            ; 2 uses
  %i.afd = icmp ugt i64 %i.afc, %3
  br i1 %i.afd, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.afe = getelementptr i8, ptr %2, i64 %i.afa
  %i.aff = getelementptr i8, ptr %i.afe, i64 -3
  %.0.copyload.i205.i = load i32, ptr %i.aff, align 1, !alias.scope !338, !noalias !340
  %i.afg = getelementptr i8, ptr %2, i64 %i.afc
  %i.afh = getelementptr i8, ptr %i.afg, i64 -3
  %.0.copyload.i.i285 = load i32, ptr %i.afh, align 1, !alias.scope !338, !noalias !340
  %.not188.i = icmp eq i32 %.0.copyload.i205.i, %.0.copyload.i.i285
  br i1 %.not188.i, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %i.afi = getelementptr inbounds nuw i8, ptr %2, i64 %i.aez ; 4 uses
  br i1 %i.aeq, label %.lr.ph851, label %.preheader591

.preheader591:                                    ; preds = %bb.dx, %bb.dv
  %.027.i.i287.lcssa = phi i64 [ %.0191, %bb.dv ], [ %i.afs, %bb.dx ] ; 3 uses
  %.025.i.i288.lcssa = phi ptr [ %i.aau, %bb.dv ], [ %i.afq, %bb.dx ]
  %.022.i.i289.lcssa = phi ptr [ %i.afi, %bb.dv ], [ %i.afr, %bb.dx ] ; 3 uses
  %.not.i.i294855 = icmp eq i64 %.027.i.i287.lcssa, 0
  br i1 %.not.i.i294855, label %.critedge.i.i295, label %.lr.ph859.preheader

.lr.ph859.preheader:                              ; preds = %.preheader591
  %scevgep1074 = getelementptr i8, ptr %.022.i.i289.lcssa, i64 %.027.i.i287.lcssa
  br label %.lr.ph859

.lr.ph851:                                        ; preds = %bb.dv, %bb.dx
  %.022.i.i289849 = phi ptr [ %i.afr, %bb.dx ], [ %i.afi, %bb.dv ] ; 3 uses
  %.025.i.i288848 = phi ptr [ %i.afq, %bb.dx ], [ %i.aau, %bb.dv ] ; 2 uses
  %.027.i.i287847 = phi i64 [ %i.afs, %bb.dx ], [ %.0191, %bb.dv ]
  %.0.copyload.i210.i = load i64, ptr %.025.i.i288848, align 1, !alias.scope !338, !noalias !340 ; 2 uses
  %.0.copyload.i209.i = load i64, ptr %.022.i.i289849, align 1, !alias.scope !338, !noalias !340 ; 2 uses
  %.not30.i.i298 = icmp eq i64 %.0.copyload.i210.i, %.0.copyload.i209.i
  br i1 %.not30.i.i298, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph851
  %i.afj = xor i64 %.0.copyload.i209.i, %.0.copyload.i210.i
  %i.afk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afj, i1 true)
  %i.afl = ptrtoint ptr %.022.i.i289849 to i64
  %i.afm = ptrtoint ptr %i.afi to i64
  %i.afn = sub i64 %i.afl, %i.afm
  %i.afo = lshr i64 %i.afk, 3
  %i.afp = add i64 %i.afn, %i.afo
  br label %FindMatchLengthWithLimit.exit.i296

bb.dx:                                            ; preds = %.lr.ph851
  %i.afq = getelementptr inbounds nuw i8, ptr %.025.i.i288848, i64 8 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.022.i.i289849, i64 8 ; 2 uses
  %i.afs = add i64 %.027.i.i287847, -8            ; 3 uses
  %i.aft = icmp ugt i64 %i.afs, 7
  br i1 %i.aft, label %.lr.ph851, label %.preheader591, !llvm.loop !65

.lr.ph859:                                        ; preds = %.lr.ph859.preheader, %bb.dy
  %.224.i.i293858 = phi ptr [ %i.afz, %bb.dy ], [ %.022.i.i289.lcssa, %.lr.ph859.preheader ] ; 3 uses
  %.126.i.i292857 = phi ptr [ %i.afy, %bb.dy ], [ %.025.i.i288.lcssa, %.lr.ph859.preheader ] ; 2 uses
  %.128.i.i291856 = phi i64 [ %i.afx, %bb.dy ], [ %.027.i.i287.lcssa, %.lr.ph859.preheader ]
  %i.afu = load i8, ptr %.224.i.i293858, align 1, !tbaa !55, !alias.scope !338, !noalias !340
  %i.afv = load i8, ptr %.126.i.i292857, align 1, !tbaa !55, !alias.scope !338, !noalias !340
  %i.afw = icmp eq i8 %i.afu, %i.afv
  br i1 %i.afw, label %bb.dy, label %.critedge.i.i295

bb.dy:                                            ; preds = %.lr.ph859
  %i.afx = add nsw i64 %.128.i.i291856, -1        ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.126.i.i292857, i64 1
  %i.afz = getelementptr inbounds nuw i8, ptr %.224.i.i293858, i64 1
  %.not.i.i294 = icmp eq i64 %i.afx, 0
  br i1 %.not.i.i294, label %.critedge.i.i295, label %.lr.ph859, !llvm.loop !67

.critedge.i.i295:                                 ; preds = %bb.dy, %.lr.ph859, %.preheader591
  %.224.i.i293.lcssa = phi ptr [ %.022.i.i289.lcssa, %.preheader591 ], [ %.224.i.i293858, %.lr.ph859 ], [ %scevgep1074, %bb.dy ]
  %i.aga = ptrtoint ptr %.224.i.i293.lcssa to i64
  %i.agb = ptrtoint ptr %i.afi to i64
  %i.agc = sub i64 %i.aga, %i.agb
  br label %FindMatchLengthWithLimit.exit.i296

FindMatchLengthWithLimit.exit.i296:               ; preds = %bb.dw, %.critedge.i.i295
  %.2.i.i297 = phi i64 [ %i.afp, %bb.dw ], [ %i.agc, %.critedge.i.i295 ] ; 4 uses
  %i.agd = icmp ugt i64 %.2.i.i297, 3
  br i1 %i.agd, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %FindMatchLengthWithLimit.exit.i296
  %i.age = mul i64 %.2.i.i297, 135
  %i.agf = trunc i64 %i.aex to i32
  %i.agg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agf, i1 true)
  %i.agh = xor i32 %i.agg, 31
  %.neg991 = mul nsw i32 %i.agh, -30
  %narrow990 = add nsw i32 %.neg991, 1920
  %i.agi = zext nneg i32 %narrow990 to i64
  %i.agj = add i64 %i.age, %i.agi                 ; 3 uses
  %i.agk = icmp ult i64 %.5.i869, %i.agj
  br i1 %i.agk, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dt, %bb.du, %bb.dz, %bb.ea, %FindMatchLengthWithLimit.exit.i296
  %.sroa.18.8.ph = phi i64 [ %.sroa.18.7864, %bb.du ], [ %.sroa.18.7864, %FindMatchLengthWithLimit.exit.i296 ], [ %.sroa.18.7864, %bb.dz ], [ %i.agj, %bb.ea ], [ %.sroa.18.7864, %bb.dt ] ; 2 uses
  %.sroa.12.8.ph = phi i64 [ %.sroa.12.7865, %bb.du ], [ %.sroa.12.7865, %FindMatchLengthWithLimit.exit.i296 ], [ %.sroa.12.7865, %bb.dz ], [ %i.aex, %bb.ea ], [ %.sroa.12.7865, %bb.dt ] ; 2 uses
  %.sroa.0.8.ph = phi i64 [ %.sroa.0.7866, %bb.du ], [ %.sroa.0.7866, %FindMatchLengthWithLimit.exit.i296 ], [ %.sroa.0.7866, %bb.dz ], [ %.2.i.i297, %bb.ea ], [ %.sroa.0.7866, %bb.dt ] ; 2 uses
  %.8166.i.ph = phi i64 [ %.5163.i868, %bb.du ], [ %.5163.i868, %FindMatchLengthWithLimit.exit.i296 ], [ %.5163.i868, %bb.dz ], [ %.2.i.i297, %bb.ea ], [ %.5163.i868, %bb.dt ]
  %.8.i286.ph = phi i64 [ %.5.i869, %bb.du ], [ %.5.i869, %FindMatchLengthWithLimit.exit.i296 ], [ %.5.i869, %bb.dz ], [ %i.agj, %bb.ea ], [ %.5.i869, %bb.dt ]
  %i.agl = add i64 %.0171.i867, -1
  %i.agm = and i64 %i.agl, %.0171.i867            ; 2 uses
  %.not187.i = icmp eq i64 %i.agm, 0
  br i1 %.not187.i, label %._crit_edge871, label %bb.dr, !llvm.loop !315

._crit_edge871:                                   ; preds = %bb.eb, %bb.ds, %bb.dr, %GetMatchingTagMask.exit395
  %.sroa.18.7.lcssa = phi i64 [ %.sroa.18.5.lcssa, %GetMatchingTagMask.exit395 ], [ %.sroa.18.7864, %bb.dr ], [ %.sroa.18.7864, %bb.ds ], [ %.sroa.18.8.ph, %bb.eb ] ; 2 uses
  %.sroa.12.7.lcssa = phi i64 [ %.sroa.12.5.lcssa, %GetMatchingTagMask.exit395 ], [ %.sroa.12.7865, %bb.dr ], [ %.sroa.12.7865, %bb.ds ], [ %.sroa.12.8.ph, %bb.eb ] ; 7 uses
  %.sroa.0.7.lcssa = phi i64 [ %.sroa.0.5.lcssa, %GetMatchingTagMask.exit395 ], [ %.sroa.0.7866, %bb.dr ], [ %.sroa.0.7866, %bb.ds ], [ %.sroa.0.8.ph, %bb.eb ] ; 7 uses
  %i.agn = trunc i64 %i.zw to i32
  %i.ago = and i32 %i.zo, %i.adf
  %i.agp = zext nneg i32 %i.ago to i64            ; 2 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.agp
  store i32 %i.agn, ptr %i.agq, align 4, !tbaa !5, !noalias !340
  %i.agr = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.agp
  store i8 %i.adb, ptr %i.agr, align 1, !tbaa !55, !noalias !340
  %i.ags = load i16, ptr %i.add, align 2, !tbaa !69, !noalias !340
  %i.agt = add i16 %i.ags, -1
  store i16 %i.agt, ptr %i.add, align 2, !tbaa !69, !noalias !340
  %i.agu = icmp eq i64 %.sroa.18.7.lcssa, 2020
  br i1 %i.agu, label %bb.ec, label %FindLongestMatchH58.exit

bb.ec:                                            ; preds = %._crit_edge871
  %i.agv = load ptr, ptr %i.bf, align 8, !tbaa !316, !alias.scope !331, !noalias !334 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 48 ; 3 uses
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !76, !noalias !340 ; 7 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 40 ; 3 uses
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !79, !noalias !340 ; 3 uses
  %i.aha = lshr i64 %i.agz, 7
  %i.ahb = icmp ult i64 %i.agx, %i.aha
  br i1 %i.ahb, label %FindLongestMatchH58.exit, label %bb.ed
end_hunk_0
begin_hunk_1_@CreateBackwardReferencesDH68:bb.a
.critedge.i157.i.3:                               ; preds = %.lr.ph741.3, %bb.ch, %.preheader596.3
  %.224.i155.i.lcssa.3 = phi ptr [ %.022.i151.i.lcssa.3, %.preheader596.3 ], [ %.224.i155.i740.3, %.lr.ph741.3 ], [ %scevgep1068.3, %bb.ch ]
  %i.xd = ptrtoint ptr %.224.i155.i.lcssa.3 to i64
  %i.xe = ptrtoint ptr %i.wk to i64
  %i.xf = sub i64 %i.xd, %i.xe
  br label %FindMatchLengthWithLimit.exit162.i.3

FindMatchLengthWithLimit.exit162.i.3:             ; preds = %.critedge.i157.i.3, %bb.cf
  %.2.i158.i.3 = phi i64 [ %i.ws, %bb.cf ], [ %i.xf, %.critedge.i157.i.3 ] ; 4 uses
  %i.xg = icmp ugt i64 %.2.i158.i.3, 1
  br i1 %i.xg, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %FindMatchLengthWithLimit.exit162.i.3
  %i.xh = mul i64 %.2.i158.i.3, 135               ; 2 uses
  %i.xi = add i64 %i.xh, 1935
  %i.xj = icmp ult i64 %.sroa.29419.6.2, %i.xi
  br i1 %i.xj, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.xk = add i64 %i.xh, 1892                     ; 2 uses
  %i.xl = icmp ult i64 %.sroa.29419.6.2, %i.xk
  br i1 %i.xl, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %spec.select.i.3 = tail call i64 @llvm.umax.i64(i64 %.2.i158.i.3, i64 %.4128.i.2)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %FindMatchLengthWithLimit.exit162.i.3, %bb.cd
  %.sroa.29419.6.3 = phi i64 [ %.sroa.29419.6.2, %bb.cd ], [ %i.xk, %bb.ck ], [ %.sroa.29419.6.2, %bb.cj ], [ %.sroa.29419.6.2, %bb.ci ], [ %.sroa.29419.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 3 uses
  %.sroa.18415.6.3 = phi i64 [ %.sroa.18415.6.2, %bb.cd ], [ %i.qr, %bb.ck ], [ %.sroa.18415.6.2, %bb.cj ], [ %.sroa.18415.6.2, %bb.ci ], [ %.sroa.18415.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 2 uses
  %.sroa.0407.6.3 = phi i64 [ %.sroa.0407.6.2, %bb.cd ], [ %.2.i158.i.3, %bb.ck ], [ %.sroa.0407.6.2, %bb.cj ], [ %.sroa.0407.6.2, %bb.ci ], [ %.sroa.0407.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 2 uses
  %.sroa.42.6.3 = phi i32 [ %.sroa.42.6.2, %bb.cd ], [ 0, %bb.ck ], [ %.sroa.42.6.2, %bb.cj ], [ %.sroa.42.6.2, %bb.ci ], [ %.sroa.42.6.2, %FindMatchLengthWithLimit.exit162.i.3 ] ; 2 uses
  %.4128.i.3 = phi i64 [ %.4128.i.2, %bb.cd ], [ %spec.select.i.3, %bb.ck ], [ %.4128.i.2, %bb.cj ], [ %.4128.i.2, %bb.ci ], [ %.4128.i.2, %FindMatchLengthWithLimit.exit162.i.3 ]
  br i1 %.not987, label %FindCompoundDictionaryMatch.exit, label %.lr.ph777.preheader

.lr.ph777.preheader:                              ; preds = %bb.cl
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %.4128.i.3, i64 3)
  br label %.lr.ph777

.lr.ph777:                                        ; preds = %.lr.ph777.preheader, %bb.cu
  %.4.i775 = phi i64 [ %.7.i, %bb.cu ], [ %.sroa.29419.6.3, %.lr.ph777.preheader ] ; 6 uses
  %.5129.i774 = phi i64 [ %.8.i, %bb.cu ], [ %spec.store.select.i, %.lr.ph777.preheader ] ; 8 uses
  %.0134.i773 = phi ptr [ %i.xn, %bb.cu ], [ %i.sj, %.lr.ph777.preheader ] ; 2 uses
  %.sroa.42.4772 = phi i32 [ %.sroa.42.5, %bb.cu ], [ %.sroa.42.6.3, %.lr.ph777.preheader ] ; 5 uses
  %.sroa.0407.4771 = phi i64 [ %.sroa.0407.5, %bb.cu ], [ %.sroa.0407.6.3, %.lr.ph777.preheader ] ; 5 uses
  %.sroa.18415.4770 = phi i64 [ %.sroa.18415.5, %bb.cu ], [ %.sroa.18415.6.3, %.lr.ph777.preheader ] ; 5 uses
  %.sroa.29419.4769 = phi i64 [ %.sroa.29419.5, %bb.cu ], [ %.sroa.29419.6.3, %.lr.ph777.preheader ] ; 5 uses
  %i.xm = load i32, ptr %.0134.i773, align 4, !tbaa !5, !noalias !430 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0134.i773, i64 4
  %i.xo = and i32 %i.xm, 2147483647
  %i.xp = zext nneg i32 %i.xo to i64              ; 4 uses
  %i.xq = sub i64 %i.qw, %i.xp                    ; 3 uses
  %i.xr = sub nsw i64 %i.qz, %i.xp
  %i.xs = tail call i64 @llvm.umin.i64(i64 %i.xr, i64 %i.bt) ; 4 uses
  %i.xt = icmp ugt i64 %i.xq, %i.qg
  br i1 %i.xt, label %bb.cu, label %bb.cm, !llvm.loop !111

bb.cm:                                            ; preds = %.lr.ph777
  %i.xu = add i64 %.5129.i774, %i.da              ; 2 uses
  %i.xv = icmp ule i64 %i.xu, %3
  %.not.i217 = icmp ult i64 %.5129.i774, %i.xs
  %or.cond148.i = select i1 %i.xv, i1 %.not.i217, i1 false
  br i1 %or.cond148.i, label %bb.cn, label %bb.cu, !llvm.loop !111

bb.cn:                                            ; preds = %bb.cm
  %i.xw = getelementptr i8, ptr %2, i64 %i.xu
  %i.xx = getelementptr i8, ptr %i.xw, i64 -3
  %.0.copyload.i163.i = load i32, ptr %i.xx, align 1, !alias.scope !422, !noalias !425
  %i.xy = getelementptr i8, ptr %.0.i216, i64 %.5129.i774
  %i.xz = getelementptr i8, ptr %i.xy, i64 %i.xp
  %i.ya = getelementptr i8, ptr %i.xz, i64 -3
  %.0.copyload.i.i = load i32, ptr %i.ya, align 1, !noalias !430
  %.not145.i = icmp eq i32 %.0.copyload.i163.i, %.0.copyload.i.i
  br i1 %.not145.i, label %bb.co, label %bb.cu, !llvm.loop !111

bb.co:                                            ; preds = %bb.cn
  %i.yb = getelementptr inbounds nuw i8, ptr %.0.i216, i64 %i.xp ; 4 uses
  %i.yc = icmp ugt i64 %i.xs, 7
  br i1 %i.yc, label %.lr.ph757, label %.lr.ph765.preheader

.preheader595:                                    ; preds = %bb.cq
  %.not.i.i761 = icmp eq i64 %i.ym, 0
  br i1 %.not.i.i761, label %.critedge.i.i, label %.lr.ph765.preheader

.lr.ph765.preheader:                              ; preds = %bb.co, %.preheader595
  %.022.i.i.lcssa1287 = phi ptr [ %i.yl, %.preheader595 ], [ %i.yb, %bb.co ] ; 2 uses
  %.025.i.i.lcssa1286 = phi ptr [ %i.yk, %.preheader595 ], [ %i.db, %bb.co ]
  %.027.i.i.lcssa1285 = phi i64 [ %i.ym, %.preheader595 ], [ %i.xs, %bb.co ] ; 2 uses
  %scevgep1070 = getelementptr i8, ptr %.022.i.i.lcssa1287, i64 %.027.i.i.lcssa1285
  br label %.lr.ph765

.lr.ph757:                                        ; preds = %bb.co, %bb.cq
  %.022.i.i755 = phi ptr [ %i.yl, %bb.cq ], [ %i.yb, %bb.co ] ; 3 uses
  %.025.i.i754 = phi ptr [ %i.yk, %bb.cq ], [ %i.db, %bb.co ] ; 2 uses
  %.027.i.i753 = phi i64 [ %i.ym, %bb.cq ], [ %i.xs, %bb.co ]
  %.0.copyload.i167.i = load i64, ptr %.025.i.i754, align 1, !alias.scope !422, !noalias !425 ; 2 uses
  %.0.copyload.i166.i = load i64, ptr %.022.i.i755, align 1, !noalias !430 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i167.i, %.0.copyload.i166.i
  br i1 %.not30.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph757
  %i.yd = xor i64 %.0.copyload.i166.i, %.0.copyload.i167.i
  %i.ye = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yd, i1 true)
  %i.yf = ptrtoint ptr %.022.i.i755 to i64
  %i.yg = ptrtoint ptr %i.yb to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = lshr i64 %i.ye, 3
  %i.yj = add i64 %i.yh, %i.yi
  br label %FindMatchLengthWithLimit.exit.i

bb.cq:                                            ; preds = %.lr.ph757
  %i.yk = getelementptr inbounds nuw i8, ptr %.025.i.i754, i64 8 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.022.i.i755, i64 8 ; 3 uses
  %i.ym = add i64 %.027.i.i753, -8                ; 4 uses
  %i.yn = icmp ugt i64 %i.ym, 7
  br i1 %i.yn, label %.lr.ph757, label %.preheader595, !llvm.loop !65

.lr.ph765:                                        ; preds = %.lr.ph765.preheader, %bb.cr
  %.224.i.i764 = phi ptr [ %i.yt, %bb.cr ], [ %.022.i.i.lcssa1287, %.lr.ph765.preheader ] ; 3 uses
  %.126.i.i763 = phi ptr [ %i.ys, %bb.cr ], [ %.025.i.i.lcssa1286, %.lr.ph765.preheader ] ; 2 uses
  %.128.i.i762 = phi i64 [ %i.yr, %bb.cr ], [ %.027.i.i.lcssa1285, %.lr.ph765.preheader ]
  %i.yo = load i8, ptr %.224.i.i764, align 1, !tbaa !55, !noalias !430
  %i.yp = load i8, ptr %.126.i.i763, align 1, !tbaa !55, !alias.scope !422, !noalias !425
  %i.yq = icmp eq i8 %i.yo, %i.yp
  br i1 %i.yq, label %bb.cr, label %.critedge.i.i

bb.cr:                                            ; preds = %.lr.ph765
  %i.yr = add nsw i64 %.128.i.i762, -1            ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.126.i.i763, i64 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.224.i.i764, i64 1
  %.not.i.i = icmp eq i64 %i.yr, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph765, !llvm.loop !67

.critedge.i.i:                                    ; preds = %bb.cr, %.lr.ph765, %.preheader595
  %.224.i.i.lcssa = phi ptr [ %i.yl, %.preheader595 ], [ %.224.i.i764, %.lr.ph765 ], [ %scevgep1070, %bb.cr ]
  %i.yu = ptrtoint ptr %.224.i.i.lcssa to i64
  %i.yv = ptrtoint ptr %i.yb to i64
  %i.yw = sub i64 %i.yu, %i.yv
  br label %FindMatchLengthWithLimit.exit.i

FindMatchLengthWithLimit.exit.i:                  ; preds = %bb.cp, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.yj, %bb.cp ], [ %i.yw, %.critedge.i.i ] ; 4 uses
  %i.yx = icmp ugt i64 %.2.i.i, 3
  br i1 %i.yx, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %FindMatchLengthWithLimit.exit.i
  %i.yy = mul i64 %.2.i.i, 135
  %i.yz = trunc i64 %i.xq to i32
  %i.za = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yz, i1 true)
  %i.zb = xor i32 %i.za, 31
  %.neg989 = mul nsw i32 %i.zb, -30
  %narrow988 = add nsw i32 %.neg989, 1920
  %i.zc = zext nneg i32 %narrow988 to i64
  %i.zd = add i64 %i.yy, %i.zc                    ; 3 uses
  %i.ze = icmp ult i64 %.4.i775, %i.zd
  br i1 %i.ze, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %FindMatchLengthWithLimit.exit.i, %bb.cn, %bb.cm, %.lr.ph777
  %.sroa.29419.5 = phi i64 [ %.sroa.29419.4769, %.lr.ph777 ], [ %i.zd, %bb.ct ], [ %.sroa.29419.4769, %bb.cs ], [ %.sroa.29419.4769, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.29419.4769, %bb.cn ], [ %.sroa.29419.4769, %bb.cm ] ; 2 uses
  %.sroa.18415.5 = phi i64 [ %.sroa.18415.4770, %.lr.ph777 ], [ %i.xq, %bb.ct ], [ %.sroa.18415.4770, %bb.cs ], [ %.sroa.18415.4770, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.18415.4770, %bb.cn ], [ %.sroa.18415.4770, %bb.cm ] ; 2 uses
  %.sroa.0407.5 = phi i64 [ %.sroa.0407.4771, %.lr.ph777 ], [ %.2.i.i, %bb.ct ], [ %.sroa.0407.4771, %bb.cs ], [ %.sroa.0407.4771, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.0407.4771, %bb.cn ], [ %.sroa.0407.4771, %bb.cm ] ; 2 uses
  %.sroa.42.5 = phi i32 [ %.sroa.42.4772, %.lr.ph777 ], [ 0, %bb.ct ], [ %.sroa.42.4772, %bb.cs ], [ %.sroa.42.4772, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.42.4772, %bb.cn ], [ %.sroa.42.4772, %bb.cm ] ; 2 uses
  %.8.i = phi i64 [ %.5129.i774, %.lr.ph777 ], [ %.2.i.i, %bb.ct ], [ %.5129.i774, %bb.cs ], [ %.5129.i774, %FindMatchLengthWithLimit.exit.i ], [ %.5129.i774, %bb.cn ], [ %.5129.i774, %bb.cm ]
  %.7.i = phi i64 [ %.4.i775, %.lr.ph777 ], [ %i.zd, %bb.ct ], [ %.4.i775, %bb.cs ], [ %.4.i775, %FindMatchLengthWithLimit.exit.i ], [ %.4.i775, %bb.cn ], [ %.4.i775, %bb.cm ]
  %i.zf = icmp sgt i32 %i.xm, -1
  br i1 %i.zf, label %.lr.ph777, label %FindCompoundDictionaryMatch.exit

FindCompoundDictionaryMatch.exit:                 ; preds = %bb.cu, %bb.cl
  %.sroa.29419.4.lcssa = phi i64 [ %.sroa.29419.6.3, %bb.cl ], [ %.sroa.29419.5, %bb.cu ] ; 2 uses
  %.sroa.18415.4.lcssa = phi i64 [ %.sroa.18415.6.3, %bb.cl ], [ %.sroa.18415.5, %bb.cu ] ; 2 uses
  %.sroa.0407.4.lcssa = phi i64 [ %.sroa.0407.6.3, %bb.cl ], [ %.sroa.0407.5, %bb.cu ] ; 2 uses
  %.sroa.42.4.lcssa = phi i32 [ %.sroa.42.6.3, %bb.cl ], [ %.sroa.42.5, %bb.cu ] ; 2 uses
  %i.zg = add nuw i64 %.0.i213786, 1              ; 2 uses
  %exitcond1071.not = icmp eq i64 %i.zg, %i.qj
  br i1 %exitcond1071.not, label %LookupCompoundDictionaryMatch.exit214, label %bb.be, !llvm.loop !112

LookupCompoundDictionaryMatch.exit214:            ; preds = %FindCompoundDictionaryMatch.exit, %FindLongestMatchH68.exit395
  %.sroa.29419.2.lcssa = phi i64 [ %.sroa.29419.17, %FindLongestMatchH68.exit395 ], [ %.sroa.29419.4.lcssa, %FindCompoundDictionaryMatch.exit ] ; 2 uses
  %.sroa.18415.2.lcssa = phi i64 [ %.sroa.18415.17, %FindLongestMatchH68.exit395 ], [ %.sroa.18415.4.lcssa, %FindCompoundDictionaryMatch.exit ]
  %.sroa.0407.2.lcssa = phi i64 [ %.sroa.0407.17, %FindLongestMatchH68.exit395 ], [ %.sroa.0407.4.lcssa, %FindCompoundDictionaryMatch.exit ]
  %.sroa.42.2.lcssa = phi i32 [ %.sroa.42.11, %FindLongestMatchH68.exit395 ], [ %.sroa.42.4.lcssa, %FindCompoundDictionaryMatch.exit ]
  %i.zh = icmp ugt i64 %.sroa.29419.2.lcssa, 2020
  br i1 %i.zh, label %.preheader600, label %bb.hn

.preheader600:                                    ; preds = %LookupCompoundDictionaryMatch.exit214
  %i.zi = load ptr, ptr %i.ay, align 8, !tbaa !400, !alias.scope !431, !noalias !434
  %i.zj = load ptr, ptr %i.az, align 8, !tbaa !403, !alias.scope !431, !noalias !434
  %i.zk = load ptr, ptr %i.ba, align 8, !tbaa !404, !alias.scope !431, !noalias !434
  %i.zl = load i64, ptr %i.bb, align 8, !tbaa !405, !alias.scope !431, !noalias !434
  %i.zm = load i32, ptr %i.bc, align 4, !tbaa !410, !alias.scope !431, !noalias !434 ; 2 uses
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = icmp sgt i32 %i.zm, 4
  %i.zp = load i32, ptr %i.t, align 8, !tbaa !388, !alias.scope !431, !noalias !434 ; 2 uses
  %i.zq = sext i32 %i.zp to i64
  %.not990 = icmp eq i32 %i.zp, 0
  %i.zr = load i32, ptr %i.bd, align 8, !tbaa !413, !alias.scope !431, !noalias !434 ; 3 uses
  %i.zs = load i64, ptr %i.be, align 8, !tbaa !414, !alias.scope !431, !noalias !434 ; 2 uses
  %i.zt = lshr i64 %i.zs, 4                       ; 5 uses
  %.not991 = icmp eq i64 %i.zt, 0
  %12 = zext i32 %i.zr to i64
  %exitcond1075.not = icmp eq i64 %i.zt, 1
  %exitcond1075.not.1 = icmp eq i64 %i.zt, 2
  %exitcond1075.not.2 = icmp eq i64 %i.zt, 3
  br label %bb.cv

bb.cv:                                            ; preds = %.preheader600, %bb.gl
  %.sroa.29419.0 = phi i64 [ %.sroa.18.0.lcssa, %bb.gl ], [ %.sroa.29419.2.lcssa, %.preheader600 ]
  %.sroa.18415.0 = phi i64 [ %.sroa.12.0.lcssa, %bb.gl ], [ %.sroa.18415.2.lcssa, %.preheader600 ]
  %.sroa.0407.0 = phi i64 [ %.sroa.0.0.lcssa, %bb.gl ], [ %.sroa.0407.2.lcssa, %.preheader600 ] ; 2 uses
  %.sroa.42.0 = phi i32 [ %.sroa.29.0.lcssa, %bb.gl ], [ %.sroa.42.2.lcssa, %.preheader600 ]
  %.1201 = phi i32 [ %.2202, %bb.gl ], [ %.0200, %.preheader600 ]
  %.1198 = phi i8 [ %.2199, %bb.gl ], [ %.0197, %.preheader600 ] ; 2 uses
  %.0194 = phi i32 [ %i.awh, %bb.gl ], [ 0, %.preheader600 ] ; 2 uses
  %.0191.in = phi i64 [ %.0191, %bb.gl ], [ %i.bt, %.preheader600 ] ; 2 uses
  %.1183 = phi i64 [ %i.awg, %bb.gl ], [ %.0182975, %.preheader600 ] ; 2 uses
  %.1 = phi i64 [ %i.zz, %bb.gl ], [ %.0977, %.preheader600 ] ; 5 uses
  %.0191 = add i64 %.0191.in, -1                  ; 12 uses
  %i.zu = load i32, ptr %i.l, align 4, !tbaa !32
  %i.zv = icmp slt i32 %i.zu, 5
  %i.zw = add i64 %.sroa.0407.0, -1
  %i.zx = tail call i64 @llvm.umin.i64(i64 %i.zw, i64 %.0191)
  %i.zy = select i1 %i.zv, i64 %i.zx, i64 0       ; 2 uses
  %i.zz = add i64 %.1, 1                          ; 9 uses
  %i.aaa = tail call i64 @llvm.umin.i64(i64 %i.zz, i64 %i.e) ; 2 uses
  %i.aab = add i64 %i.zz, %i.g
  %i.aac = tail call i64 @llvm.umin.i64(i64 %i.aab, i64 %i.e) ; 3 uses
  %i.aad = load i32, ptr %i.as, align 8, !tbaa !54
  %.not211 = icmp eq i32 %i.aad, 0
  br i1 %.not211, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aae = and i64 %.1, %3
  %i.aaf = getelementptr inbounds nuw i8, ptr %2, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !55 ; 2 uses
  %i.aah = zext i8 %i.aag to i64
  %i.aai = getelementptr inbounds nuw i8, ptr %4, i64 %i.aah
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !55
  %i.aak = zext i8 %.1198 to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aak
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !55
  %i.aan = or i8 %i.aam, %i.aaj
  %i.aao = zext i8 %i.aan to i64
  %i.aap = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aao
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !55
  %i.aar = zext i8 %i.aaq to i32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.2202 = phi i32 [ %i.aar, %bb.cw ], [ %.1201, %bb.cv ] ; 2 uses
  %.2199 = phi i8 [ %i.aag, %bb.cw ], [ %.1198, %bb.cv ]
  %i.aas = zext nneg i32 %.2202 to i64
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aas
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !56 ; 6 uses
  %i.aav = load i64, ptr %i.ax, align 8, !tbaa !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.aaw = and i64 %i.zz, %3                      ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aaw ; 21 uses
  %.0.copyload.i.i401 = load i64, ptr %i.aax, align 1, !alias.scope !440, !noalias !443 ; 2 uses
  %i.aay = mul i64 %.0.copyload.i.i401, %i.zl     ; 2 uses
  %i.aaz = lshr i64 %i.aay, 41
  %i.aba = lshr i64 %i.aay, 49                    ; 2 uses
  %i.abb = shl i64 %i.aba, %i.zn                  ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %i.abb ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.abb ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.abc, i32 0, i32 3, i32 1), !noalias !443
  tail call void @llvm.prefetch.p0(ptr %i.abd, i32 0, i32 3, i32 1), !noalias !443
  %i.abe = trunc i64 %.0.copyload.i.i401 to i32
  br i1 %i.zo, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.abf, i32 0, i32 3, i32 1), !noalias !443
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  br i1 %.not990, label %._crit_edge829, label %.lr.ph828

.lr.ph828:                                        ; preds = %bb.cz
  %i.abg = icmp ugt i64 %.0191, 7
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph828, %bb.do
  %.0.i282826 = phi i64 [ 2020, %.lr.ph828 ], [ %.3.i302.ph, %bb.do ] ; 9 uses
  %.0164.i825 = phi i64 [ %i.zy, %.lr.ph828 ], [ %.3167.i.ph, %bb.do ] ; 9 uses
  %.0172.i823 = phi i64 [ 0, %.lr.ph828 ], [ %i.add, %bb.do ] ; 5 uses
  %.sroa.0.5822 = phi i64 [ 0, %.lr.ph828 ], [ %.sroa.0.14.ph, %bb.do ] ; 7 uses
  %.sroa.12.5821 = phi i64 [ 0, %.lr.ph828 ], [ %.sroa.12.14.ph, %bb.do ] ; 7 uses
  %.sroa.18.5820 = phi i64 [ 2020, %.lr.ph828 ], [ %.sroa.18.14.ph, %bb.do ] ; 7 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0172.i823
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !5, !alias.scope !439, !noalias !444
  %i.abj = sext i32 %i.abi to i64                 ; 3 uses
  %i.abk = sub i64 %i.zz, %i.abj                  ; 2 uses
  %.not.i301 = icmp uge i64 %i.abk, %i.zz
  %i.abl = icmp ult i64 %i.aaa, %i.abj
  %or.cond195.i = or i1 %i.abl, %.not.i301
  br i1 %or.cond195.i, label %bb.do, label %bb.db, !prof !64

bb.db:                                            ; preds = %bb.da
  %i.abm = and i64 %i.abk, %3                     ; 2 uses
  %i.abn = add i64 %.0164.i825, %i.aaw            ; 2 uses
  %i.abo = icmp ugt i64 %i.abn, %3
  br i1 %i.abo, label %._crit_edge829, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.abp = add i64 %i.abm, %.0164.i825            ; 2 uses
  %i.abq = icmp ugt i64 %i.abp, %3
  br i1 %i.abq, label %bb.do, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.abr = getelementptr inbounds nuw i8, ptr %2, i64 %i.abn
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !55, !alias.scope !438, !noalias !443
  %i.abt = getelementptr inbounds nuw i8, ptr %2, i64 %i.abp
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !55, !alias.scope !438, !noalias !443
  %.not189.i = icmp eq i8 %i.abs, %i.abu
  br i1 %.not189.i, label %bb.de, label %bb.do

bb.de:                                            ; preds = %bb.dd
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 %i.abm ; 4 uses
  br i1 %i.abg, label %.lr.ph808, label %.preheader594

.preheader594:                                    ; preds = %bb.dg, %bb.de
  %.027.i196.i.lcssa = phi i64 [ %.0191, %bb.de ], [ %i.acf, %bb.dg ] ; 3 uses
  %.025.i197.i.lcssa = phi ptr [ %i.aax, %bb.de ], [ %i.acd, %bb.dg ]
  %.022.i198.i.lcssa = phi ptr [ %i.abv, %bb.de ], [ %i.ace, %bb.dg ] ; 3 uses
  %.not.i203.i812 = icmp eq i64 %.027.i196.i.lcssa, 0
  br i1 %.not.i203.i812, label %.critedge.i204.i, label %.lr.ph816.preheader

.lr.ph816.preheader:                              ; preds = %.preheader594
  %scevgep1072 = getelementptr i8, ptr %.022.i198.i.lcssa, i64 %.027.i196.i.lcssa
  br label %.lr.ph816

.lr.ph808:                                        ; preds = %bb.de, %bb.dg
  %.022.i198.i806 = phi ptr [ %i.ace, %bb.dg ], [ %i.abv, %bb.de ] ; 3 uses
  %.025.i197.i805 = phi ptr [ %i.acd, %bb.dg ], [ %i.aax, %bb.de ] ; 2 uses
  %.027.i196.i804 = phi i64 [ %i.acf, %bb.dg ], [ %.0191, %bb.de ]
  %.0.copyload.i215.i = load i64, ptr %.025.i197.i805, align 1, !alias.scope !438, !noalias !443 ; 2 uses
  %.0.copyload.i214.i = load i64, ptr %.022.i198.i806, align 1, !alias.scope !438, !noalias !443 ; 2 uses
  %.not30.i206.i = icmp eq i64 %.0.copyload.i215.i, %.0.copyload.i214.i
  br i1 %.not30.i206.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %.lr.ph808
  %i.abw = xor i64 %.0.copyload.i214.i, %.0.copyload.i215.i
  %i.abx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.abw, i1 true)
  %i.aby = ptrtoint ptr %.022.i198.i806 to i64
  %i.abz = ptrtoint ptr %i.abv to i64
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = lshr i64 %i.abx, 3
  %i.acc = add i64 %i.aca, %i.acb
  br label %FindMatchLengthWithLimit.exit209.i

bb.dg:                                            ; preds = %.lr.ph808
  %i.acd = getelementptr inbounds nuw i8, ptr %.025.i197.i805, i64 8 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.022.i198.i806, i64 8 ; 2 uses
  %i.acf = add i64 %.027.i196.i804, -8            ; 3 uses
  %i.acg = icmp ugt i64 %i.acf, 7
  br i1 %i.acg, label %.lr.ph808, label %.preheader594, !llvm.loop !65

.lr.ph816:                                        ; preds = %.lr.ph816.preheader, %bb.dh
  %.224.i202.i815 = phi ptr [ %i.acm, %bb.dh ], [ %.022.i198.i.lcssa, %.lr.ph816.preheader ] ; 3 uses
  %.126.i201.i814 = phi ptr [ %i.acl, %bb.dh ], [ %.025.i197.i.lcssa, %.lr.ph816.preheader ] ; 2 uses
  %.128.i200.i813 = phi i64 [ %i.ack, %bb.dh ], [ %.027.i196.i.lcssa, %.lr.ph816.preheader ]
  %i.ach = load i8, ptr %.224.i202.i815, align 1, !tbaa !55, !alias.scope !438, !noalias !443
  %i.aci = load i8, ptr %.126.i201.i814, align 1, !tbaa !55, !alias.scope !438, !noalias !443
  %i.acj = icmp eq i8 %i.ach, %i.aci
  br i1 %i.acj, label %bb.dh, label %.critedge.i204.i

bb.dh:                                            ; preds = %.lr.ph816
  %i.ack = add nsw i64 %.128.i200.i813, -1        ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.126.i201.i814, i64 1
  %i.acm = getelementptr inbounds nuw i8, ptr %.224.i202.i815, i64 1
  %.not.i203.i = icmp eq i64 %i.ack, 0
  br i1 %.not.i203.i, label %.critedge.i204.i, label %.lr.ph816, !llvm.loop !67

.critedge.i204.i:                                 ; preds = %bb.dh, %.lr.ph816, %.preheader594
  %.224.i202.i.lcssa = phi ptr [ %.022.i198.i.lcssa, %.preheader594 ], [ %.224.i202.i815, %.lr.ph816 ], [ %scevgep1072, %bb.dh ]
  %i.acn = ptrtoint ptr %.224.i202.i.lcssa to i64
  %i.aco = ptrtoint ptr %i.abv to i64
  %i.acp = sub i64 %i.acn, %i.aco
  br label %FindMatchLengthWithLimit.exit209.i

FindMatchLengthWithLimit.exit209.i:               ; preds = %bb.df, %.critedge.i204.i
  %.2.i205.i = phi i64 [ %i.acc, %bb.df ], [ %i.acp, %.critedge.i204.i ] ; 5 uses
  %i.acq = icmp ugt i64 %.2.i205.i, 2
  br i1 %i.acq, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %FindMatchLengthWithLimit.exit209.i
  %i.acr = icmp eq i64 %.2.i205.i, 2
  %i.acs = icmp ult i64 %.0172.i823, 2
  %or.cond.i303 = and i1 %i.acs, %i.acr
  br i1 %or.cond.i303, label %bb.dj, label %bb.do

bb.dj:                                            ; preds = %bb.di, %FindMatchLengthWithLimit.exit209.i
  %i.act = mul i64 %.2.i205.i, 135
  %i.acu = add i64 %i.act, 1935                   ; 3 uses
  %i.acv = icmp ult i64 %.0.i282826, %i.acu
  br i1 %i.acv, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %.not190.i = icmp eq i64 %.0172.i823, 0
  br i1 %.not190.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.acw = trunc i64 %.0172.i823 to i32
  %i.acx = and i32 %i.acw, 14
  %i.acy = lshr i32 117264, %i.acx
  %i.acz = and i32 %i.acy, 14
  %narrow.i.i304 = add nuw nsw i32 %i.acz, 39
  %i.ada = zext nneg i32 %narrow.i.i304 to i64
  %i.adb = sub nuw i64 %i.acu, %i.ada
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0175.i = phi i64 [ %i.adb, %bb.dl ], [ %i.acu, %bb.dk ] ; 3 uses
  %i.adc = icmp ult i64 %.0.i282826, %.0175.i
  br i1 %i.adc, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  br label %bb.do

bb.do:                                            ; preds = %bb.dc, %bb.da, %bb.di, %bb.dd, %bb.dj, %bb.dn, %bb.dm
  %.sroa.18.14.ph = phi i64 [ %.sroa.18.5820, %bb.dd ], [ %.sroa.18.5820, %bb.di ], [ %.sroa.18.5820, %bb.dj ], [ %.sroa.18.5820, %bb.dm ], [ %.0175.i, %bb.dn ], [ %.sroa.18.5820, %bb.dc ], [ %.sroa.18.5820, %bb.da ] ; 2 uses
  %.sroa.12.14.ph = phi i64 [ %.sroa.12.5821, %bb.dd ], [ %.sroa.12.5821, %bb.di ], [ %.sroa.12.5821, %bb.dj ], [ %.sroa.12.5821, %bb.dm ], [ %i.abj, %bb.dn ], [ %.sroa.12.5821, %bb.dc ], [ %.sroa.12.5821, %bb.da ] ; 2 uses
  %.sroa.0.14.ph = phi i64 [ %.sroa.0.5822, %bb.dd ], [ %.sroa.0.5822, %bb.di ], [ %.sroa.0.5822, %bb.dj ], [ %.sroa.0.5822, %bb.dm ], [ %.2.i205.i, %bb.dn ], [ %.sroa.0.5822, %bb.dc ], [ %.sroa.0.5822, %bb.da ] ; 2 uses
  %.3167.i.ph = phi i64 [ %.0164.i825, %bb.dd ], [ %.0164.i825, %bb.di ], [ %.0164.i825, %bb.dj ], [ %.0164.i825, %bb.dm ], [ %.2.i205.i, %bb.dn ], [ %.0164.i825, %bb.dc ], [ %.0164.i825, %bb.da ] ; 2 uses
  %.3.i302.ph = phi i64 [ %.0.i282826, %bb.dd ], [ %.0.i282826, %bb.di ], [ %.0.i282826, %bb.dj ], [ %.0.i282826, %bb.dm ], [ %.0175.i, %bb.dn ], [ %.0.i282826, %bb.dc ], [ %.0.i282826, %bb.da ] ; 2 uses
  %i.add = add nuw i64 %.0172.i823, 1             ; 2 uses
  %exitcond1073.not = icmp eq i64 %i.add, %i.zq
  br i1 %exitcond1073.not, label %._crit_edge829, label %bb.da, !llvm.loop !412

._crit_edge829:                                   ; preds = %bb.do, %bb.db, %bb.cz
  %.sroa.18.5.lcssa = phi i64 [ 2020, %bb.cz ], [ %.sroa.18.5820, %bb.db ], [ %.sroa.18.14.ph, %bb.do ] ; 2 uses
  %.sroa.12.5.lcssa = phi i64 [ 0, %bb.cz ], [ %.sroa.12.5821, %bb.db ], [ %.sroa.12.14.ph, %bb.do ] ; 2 uses
  %.sroa.0.5.lcssa = phi i64 [ 0, %bb.cz ], [ %.sroa.0.5822, %bb.db ], [ %.sroa.0.14.ph, %bb.do ] ; 2 uses
  %.0164.i.lcssa = phi i64 [ %i.zy, %bb.cz ], [ %.0164.i825, %bb.db ], [ %.3167.i.ph, %bb.do ]
  %.0.i282.lcssa = phi i64 [ 2020, %bb.cz ], [ %.0.i282826, %bb.db ], [ %.3.i302.ph, %bb.do ]
  %spec.store.select.i284 = tail call i64 @llvm.umax.i64(i64 %.0164.i.lcssa, i64 3)
  %i.ade = trunc i64 %i.aaz to i8                 ; 2 uses
  %i.adf = add i64 %.0191.in, -5                  ; 3 uses
  %i.adg = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %i.aba ; 3 uses
  %i.adh = load i16, ptr %i.adg, align 2, !tbaa !69, !noalias !443 ; 2 uses
  %i.adi = zext i16 %i.adh to i32                 ; 2 uses
  %i.adj = add nuw nsw i32 %i.adi, 1
  %i.adk = and i32 %i.adj, %i.zr                  ; 3 uses
  %i.adl = zext nneg i32 %i.adk to i64            ; 2 uses
  %i.adm = insertelement <16 x i8> poison, i8 %i.ade, i64 0
  %i.adn = shufflevector <16 x i8> %i.adm, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %.not991, label %._crit_edge847.thread, label %.lr.ph846

.lr.ph846:                                        ; preds = %._crit_edge829
  %13 = load <16 x i8>, ptr %i.abd, align 1, !tbaa !55, !noalias !443
  %14 = icmp eq <16 x i8> %13, %i.adn
  %15 = bitcast <16 x i1> %14 to i16
  %16 = zext i16 %15 to i64                       ; 2 uses
  br i1 %exitcond1075.not, label %._crit_edge847, label %.lr.ph846.1

.lr.ph846.1:                                      ; preds = %.lr.ph846
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.adp = load <16 x i8>, ptr %i.ado, align 1, !tbaa !55, !noalias !443
  %i.adq = icmp eq <16 x i8> %i.adp, %i.adn
  %i.adr = bitcast <16 x i1> %i.adq to i16
  %i.ads = zext i16 %i.adr to i64
  %i.adt = shl nuw nsw i64 %i.ads, 16
  %i.adu = or disjoint i64 %i.adt, %16            ; 2 uses
  br i1 %exitcond1075.not.1, label %._crit_edge847, label %.lr.ph846.2

.lr.ph846.2:                                      ; preds = %.lr.ph846.1
  %17 = getelementptr inbounds nuw i8, ptr %i.abd, i64 32
  %18 = load <16 x i8>, ptr %17, align 1, !tbaa !55, !noalias !443
  %19 = icmp eq <16 x i8> %18, %i.adn
  %20 = bitcast <16 x i1> %19 to i16
  %21 = zext i16 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = or disjoint i64 %22, %i.adu               ; 2 uses
  br i1 %exitcond1075.not.2, label %._crit_edge847, label %.lr.ph846.3

.lr.ph846.3:                                      ; preds = %.lr.ph846.2
  %i.adv = getelementptr inbounds nuw i8, ptr %i.abd, i64 48
  %i.adw = load <16 x i8>, ptr %i.adv, align 1, !tbaa !55, !noalias !443
  %i.adx = icmp eq <16 x i8> %i.adw, %i.adn
  %i.ady = bitcast <16 x i1> %i.adx to i16
  %i.adz = zext i16 %i.ady to i64
  %i.aea = shl nuw i64 %i.adz, 48
  %i.aeb = or disjoint i64 %i.aea, %23
  br label %._crit_edge847

._crit_edge847:                                   ; preds = %.lr.ph846.3, %.lr.ph846.2, %.lr.ph846.1, %.lr.ph846
  %.lcssa1640 = phi i64 [ %16, %.lr.ph846 ], [ %i.adu, %.lr.ph846.1 ], [ %23, %.lr.ph846.2 ], [ %i.aeb, %.lr.ph846.3 ] ; 3 uses
  switch i64 %i.zt, label %._crit_edge847.thread [
    i64 1, label %bb.dp
    i64 2, label %bb.dq
  ]

bb.dp:                                            ; preds = %._crit_edge847
  %i.aec = trunc i64 %.lcssa1640 to i16           ; 2 uses
  %i.aed = trunc i32 %i.adk to i16
  %i.aee = tail call i16 @llvm.fshr.i16(i16 %i.aec, i16 %i.aec, i16 %i.aed)
  %i.aef = zext i16 %i.aee to i64
  br label %GetMatchingTagMask.exit.i

bb.dq:                                            ; preds = %._crit_edge847
  %i.aeg = trunc i64 %.lcssa1640 to i32           ; 2 uses
  %i.aeh = tail call i32 @llvm.fshr.i32(i32 %i.aeg, i32 %i.aeg, i32 %i.adk)
  %i.aei = zext i32 %i.aeh to i64
  br label %GetMatchingTagMask.exit.i

._crit_edge847.thread:                            ; preds = %._crit_edge829, %._crit_edge847
  %.020.i.i.lcssa1289 = phi i64 [ %.lcssa1640, %._crit_edge847 ], [ 0, %._crit_edge829 ] ; 2 uses
  %i.aej = tail call i64 @llvm.fshr.i64(i64 %.020.i.i.lcssa1289, i64 %.020.i.i.lcssa1289, i64 range(i64 0, 65537) %i.adl)
  br label %GetMatchingTagMask.exit.i

GetMatchingTagMask.exit.i:                        ; preds = %._crit_edge847.thread, %bb.dq, %bb.dp
  %.0.i221.i = phi i64 [ %i.aef, %bb.dp ], [ %i.aei, %bb.dq ], [ %i.aej, %._crit_edge847.thread ]
  %i.aek = xor i16 %i.adh, -1                     ; 2 uses
  %i.ael = zext i16 %i.aek to i64
  %i.aem = icmp ugt i64 %i.zs, %i.ael
  %i.aen = zext i1 %i.aem to i64
  %i.aeo = and i16 %i.aek, 63
  %i.aep = zext nneg i16 %i.aeo to i64
  %i.aeq = shl nuw i64 %i.aen, %i.aep
  %i.aer = add i64 %i.aeq, -1
  %i.aes = and i64 %.0.i221.i, %i.aer             ; 2 uses
  %.not191.i865 = icmp eq i64 %i.aes, 0
  br i1 %.not191.i865, label %._crit_edge873, label %.lr.ph872

.lr.ph872:                                        ; preds = %GetMatchingTagMask.exit.i
  %i.aet = getelementptr i8, ptr %i.aax, i64 4    ; 2 uses
  %i.aeu = icmp ugt i64 %i.adf, 7
  br label %bb.dr

bb.dr:                                            ; preds = %.lr.ph872, %bb.eb
  %.5.i871 = phi i64 [ %.0.i282.lcssa, %.lr.ph872 ], [ %.7.i285.ph, %bb.eb ] ; 5 uses
  %.5169.i870 = phi i64 [ %spec.store.select.i284, %.lr.ph872 ], [ %.7171.i.ph, %bb.eb ] ; 6 uses
  %.0176.i869 = phi i64 [ %i.aes, %.lr.ph872 ], [ %i.agr, %bb.eb ] ; 3 uses
  %.sroa.0.7868 = phi i64 [ %.sroa.0.5.lcssa, %.lr.ph872 ], [ %.sroa.0.8.ph, %bb.eb ] ; 6 uses
  %.sroa.12.7867 = phi i64 [ %.sroa.12.5.lcssa, %.lr.ph872 ], [ %.sroa.12.8.ph, %bb.eb ] ; 6 uses
  %.sroa.18.7866 = phi i64 [ %.sroa.18.5.lcssa, %.lr.ph872 ], [ %.sroa.18.8.ph, %bb.eb ] ; 6 uses
  %i.aev = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0176.i869, i1 true)
  %i.aew = add nuw nsw i64 %i.aev, %i.adl
  %i.aex = and i64 %i.aew, %12
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !5, !noalias !443
  %i.afa = zext i32 %i.aez to i64                 ; 2 uses
  %i.afb = sub i64 %i.zz, %i.afa                  ; 3 uses
  %i.afc = icmp ugt i64 %i.afb, %i.aaa
  br i1 %i.afc, label %._crit_edge873, label %bb.ds, !prof !73

bb.ds:                                            ; preds = %bb.dr
  %i.afd = and i64 %3, %i.afa                     ; 2 uses
  %i.afe = add i64 %.5169.i870, %i.aaw            ; 2 uses
  %i.aff = icmp ugt i64 %i.afe, %3
  br i1 %i.aff, label %._crit_edge873, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.afg = add i64 %i.afd, %.5169.i870            ; 2 uses
  %i.afh = icmp ugt i64 %i.afg, %3
  br i1 %i.afh, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.afi = getelementptr i8, ptr %2, i64 %i.afe
  %i.afj = getelementptr i8, ptr %i.afi, i64 -3
  %.0.copyload.i211.i = load i32, ptr %i.afj, align 1, !alias.scope !438, !noalias !443
  %i.afk = getelementptr i8, ptr %2, i64 %i.afg
  %i.afl = getelementptr i8, ptr %i.afk, i64 -3
  %.0.copyload.i210.i = load i32, ptr %i.afl, align 1, !alias.scope !438, !noalias !443
  %.not192.i = icmp eq i32 %.0.copyload.i211.i, %.0.copyload.i210.i
  br i1 %.not192.i, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %i.afm = getelementptr inbounds nuw i8, ptr %2, i64 %i.afd ; 2 uses
  %.0.copyload.i.i286 = load i32, ptr %i.afm, align 1, !alias.scope !438, !noalias !443
  %.not193.i = icmp eq i32 %.0.copyload.i.i286, %i.abe
  br i1 %.not193.i, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 4 ; 4 uses
  br i1 %i.aeu, label %.lr.ph853, label %.preheader593

.preheader593:                                    ; preds = %bb.dy, %bb.dw
  %.027.i.i287.lcssa = phi i64 [ %i.adf, %bb.dw ], [ %i.afx, %bb.dy ] ; 3 uses
  %.025.i.i288.lcssa = phi ptr [ %i.aet, %bb.dw ], [ %i.afv, %bb.dy ]
  %.022.i.i289.lcssa = phi ptr [ %i.afn, %bb.dw ], [ %i.afw, %bb.dy ] ; 3 uses
  %.not.i.i294857 = icmp eq i64 %.027.i.i287.lcssa, 0
  br i1 %.not.i.i294857, label %.critedge.i.i295, label %.lr.ph861.preheader

.lr.ph861.preheader:                              ; preds = %.preheader593
  %scevgep1076 = getelementptr i8, ptr %.022.i.i289.lcssa, i64 %.027.i.i287.lcssa
  br label %.lr.ph861

.lr.ph853:                                        ; preds = %bb.dw, %bb.dy
  %.022.i.i289851 = phi ptr [ %i.afw, %bb.dy ], [ %i.afn, %bb.dw ] ; 3 uses
  %.025.i.i288850 = phi ptr [ %i.afv, %bb.dy ], [ %i.aet, %bb.dw ] ; 2 uses
  %.027.i.i287849 = phi i64 [ %i.afx, %bb.dy ], [ %i.adf, %bb.dw ]
  %.0.copyload.i217.i = load i64, ptr %.025.i.i288850, align 1, !alias.scope !438, !noalias !443 ; 2 uses
  %.0.copyload.i216.i = load i64, ptr %.022.i.i289851, align 1, !alias.scope !438, !noalias !443 ; 2 uses
  %.not30.i.i298 = icmp eq i64 %.0.copyload.i217.i, %.0.copyload.i216.i
  br i1 %.not30.i.i298, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph853
  %i.afo = xor i64 %.0.copyload.i216.i, %.0.copyload.i217.i
  %i.afp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.afo, i1 true)
  %i.afq = ptrtoint ptr %.022.i.i289851 to i64
  %i.afr = ptrtoint ptr %i.afn to i64
  %i.afs = sub i64 %i.afq, %i.afr
  %i.aft = lshr i64 %i.afp, 3
  %i.afu = add i64 %i.afs, %i.aft
  br label %FindMatchLengthWithLimit.exit.i296

bb.dy:                                            ; preds = %.lr.ph853
  %i.afv = getelementptr inbounds nuw i8, ptr %.025.i.i288850, i64 8 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.022.i.i289851, i64 8 ; 2 uses
  %i.afx = add i64 %.027.i.i287849, -8            ; 3 uses
  %i.afy = icmp ugt i64 %i.afx, 7
  br i1 %i.afy, label %.lr.ph853, label %.preheader593, !llvm.loop !65

.lr.ph861:                                        ; preds = %.lr.ph861.preheader, %bb.dz
  %.224.i.i293860 = phi ptr [ %i.age, %bb.dz ], [ %.022.i.i289.lcssa, %.lr.ph861.preheader ] ; 3 uses
  %.126.i.i292859 = phi ptr [ %i.agd, %bb.dz ], [ %.025.i.i288.lcssa, %.lr.ph861.preheader ] ; 2 uses
  %.128.i.i291858 = phi i64 [ %i.agc, %bb.dz ], [ %.027.i.i287.lcssa, %.lr.ph861.preheader ]
  %i.afz = load i8, ptr %.224.i.i293860, align 1, !tbaa !55, !alias.scope !438, !noalias !443
  %i.aga = load i8, ptr %.126.i.i292859, align 1, !tbaa !55, !alias.scope !438, !noalias !443
  %i.agb = icmp eq i8 %i.afz, %i.aga
  br i1 %i.agb, label %bb.dz, label %.critedge.i.i295

bb.dz:                                            ; preds = %.lr.ph861
  %i.agc = add nsw i64 %.128.i.i291858, -1        ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.126.i.i292859, i64 1
  %i.age = getelementptr inbounds nuw i8, ptr %.224.i.i293860, i64 1
  %.not.i.i294 = icmp eq i64 %i.agc, 0
  br i1 %.not.i.i294, label %.critedge.i.i295, label %.lr.ph861, !llvm.loop !67

.critedge.i.i295:                                 ; preds = %bb.dz, %.lr.ph861, %.preheader593
  %.224.i.i293.lcssa = phi ptr [ %.022.i.i289.lcssa, %.preheader593 ], [ %.224.i.i293860, %.lr.ph861 ], [ %scevgep1076, %bb.dz ]
  %i.agf = ptrtoint ptr %.224.i.i293.lcssa to i64
  %i.agg = ptrtoint ptr %i.afn to i64
  %i.agh = sub i64 %i.agf, %i.agg
  br label %FindMatchLengthWithLimit.exit.i296

FindMatchLengthWithLimit.exit.i296:               ; preds = %bb.dx, %.critedge.i.i295
  %.2.i.i297 = phi i64 [ %i.afu, %bb.dx ], [ %i.agh, %.critedge.i.i295 ]
  %i.agi = add i64 %.2.i.i297, 4                  ; 3 uses
  %i.agj = mul i64 %i.agi, 135
  %i.agk = trunc i64 %i.afb to i32
  %i.agl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agk, i1 true)
  %i.agm = xor i32 %i.agl, 31
  %.neg993 = mul nsw i32 %i.agm, -30
  %narrow992 = add nsw i32 %.neg993, 1920
  %i.agn = zext nneg i32 %narrow992 to i64
  %i.ago = add i64 %i.agj, %i.agn                 ; 3 uses
  %i.agp = icmp ult i64 %.5.i871, %i.ago
  br i1 %i.agp, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %FindMatchLengthWithLimit.exit.i296
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dv, %bb.dt, %bb.du, %bb.ea, %FindMatchLengthWithLimit.exit.i296
  %.sroa.18.8.ph = phi i64 [ %.sroa.18.7866, %bb.du ], [ %.sroa.18.7866, %bb.dv ], [ %.sroa.18.7866, %FindMatchLengthWithLimit.exit.i296 ], [ %i.ago, %bb.ea ], [ %.sroa.18.7866, %bb.dt ] ; 2 uses
  %.sroa.12.8.ph = phi i64 [ %.sroa.12.7867, %bb.du ], [ %.sroa.12.7867, %bb.dv ], [ %.sroa.12.7867, %FindMatchLengthWithLimit.exit.i296 ], [ %i.afb, %bb.ea ], [ %.sroa.12.7867, %bb.dt ] ; 2 uses
  %.sroa.0.8.ph = phi i64 [ %.sroa.0.7868, %bb.du ], [ %.sroa.0.7868, %bb.dv ], [ %.sroa.0.7868, %FindMatchLengthWithLimit.exit.i296 ], [ %i.agi, %bb.ea ], [ %.sroa.0.7868, %bb.dt ] ; 2 uses
  %.7171.i.ph = phi i64 [ %.5169.i870, %bb.du ], [ %.5169.i870, %bb.dv ], [ %.5169.i870, %FindMatchLengthWithLimit.exit.i296 ], [ %i.agi, %bb.ea ], [ %.5169.i870, %bb.dt ]
  %.7.i285.ph = phi i64 [ %.5.i871, %bb.du ], [ %.5.i871, %bb.dv ], [ %.5.i871, %FindMatchLengthWithLimit.exit.i296 ], [ %i.ago, %bb.ea ], [ %.5.i871, %bb.dt ]
  %i.agq = add i64 %.0176.i869, -1
  %i.agr = and i64 %i.agq, %.0176.i869            ; 2 uses
  %.not191.i = icmp eq i64 %i.agr, 0
  br i1 %.not191.i, label %._crit_edge873, label %bb.dr, !llvm.loop !415

._crit_edge873:                                   ; preds = %bb.eb, %bb.ds, %bb.dr, %GetMatchingTagMask.exit.i
  %.sroa.18.7.lcssa = phi i64 [ %.sroa.18.5.lcssa, %GetMatchingTagMask.exit.i ], [ %.sroa.18.7866, %bb.dr ], [ %.sroa.18.7866, %bb.ds ], [ %.sroa.18.8.ph, %bb.eb ] ; 2 uses
  %.sroa.12.7.lcssa = phi i64 [ %.sroa.12.5.lcssa, %GetMatchingTagMask.exit.i ], [ %.sroa.12.7867, %bb.dr ], [ %.sroa.12.7867, %bb.ds ], [ %.sroa.12.8.ph, %bb.eb ] ; 7 uses
  %.sroa.0.7.lcssa = phi i64 [ %.sroa.0.5.lcssa, %GetMatchingTagMask.exit.i ], [ %.sroa.0.7868, %bb.dr ], [ %.sroa.0.7868, %bb.ds ], [ %.sroa.0.8.ph, %bb.eb ] ; 7 uses
  %i.ags = trunc i64 %i.zz to i32
  %i.agt = and i32 %i.zr, %i.adi
  %i.agu = zext nneg i32 %i.agt to i64            ; 2 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.agu
  store i32 %i.ags, ptr %i.agv, align 4, !tbaa !5, !noalias !443
  %i.agw = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.agu
  store i8 %i.ade, ptr %i.agw, align 1, !tbaa !55, !noalias !443
  %i.agx = load i16, ptr %i.adg, align 2, !tbaa !69, !noalias !443
  %i.agy = add i16 %i.agx, -1
  store i16 %i.agy, ptr %i.adg, align 2, !tbaa !69, !noalias !443
  %i.agz = icmp eq i64 %.sroa.18.7.lcssa, 2020
  br i1 %i.agz, label %bb.ec, label %FindLongestMatchH68.exit

bb.ec:                                            ; preds = %._crit_edge873
  %i.aha = load ptr, ptr %i.bf, align 8, !tbaa !416, !alias.scope !431, !noalias !434 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 48 ; 3 uses
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !76, !noalias !443 ; 7 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 40 ; 3 uses
end_hunk_1
begin_hunk_2_@CreateBackwardReferencesNH58:bb.a

bb.at:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i234
  %i.mg = sub i64 %i.ks, %.2.i.i.i235             ; 2 uses
  %i.mh = shl i64 %i.mg, 2
  %i.mi = load i64, ptr %i.kn, align 8, !tbaa !86, !noalias !1642
  %i.mj = mul i64 %i.mg, 6
  %i.mk = lshr i64 %i.mi, %i.mj
  %i.ml = and i64 %i.mk, 63
  %i.mm = add i64 %i.ml, %i.mh
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.ks
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !55, !noalias !1640
  %i.mp = zext nneg i8 %i.mo to i64
  %i.mq = shl i64 %i.mm, %i.mp
  %i.mr = add i64 %i.ko, %i.kw
  %i.ms = add i64 %i.mr, %i.mq                    ; 3 uses
  %i.mt = icmp ugt i64 %i.ms, %i.cu
  br i1 %i.mt, label %TestStaticDictionaryItem.exit.i237.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mu = mul i64 %.2.i.i.i235, 135
  %i.mv = add i64 %i.mu, 1920
  %i.mw = trunc i64 %i.ms to i32
  %i.mx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mw, i1 true)
  %i.my = xor i32 %i.mx, 31
  %i.mz = mul nuw nsw i32 %i.my, 30
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = sub i64 %i.mv, %i.na                    ; 2 uses
  %i.nc = icmp ult i64 %i.nb, 2020
  br i1 %i.nc, label %TestStaticDictionaryItem.exit.i237.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nd = zext i8 %i.kr to i32
  %i.ne = trunc i64 %.2.i.i.i235 to i32
  %i.nf = sub nsw i32 %i.nd, %i.ne
  %i.ng = add i64 %i.jz, 1                        ; 2 uses
  store i64 %i.ng, ptr %i.jy, align 8, !tbaa !76, !noalias !1640
  br label %TestStaticDictionaryItem.exit.i237.thread

TestStaticDictionaryItem.exit.i237.thread:        ; preds = %bb.au, %bb.at, %FindMatchLengthWithLimit.exit.i.i234, %bb.ao, %bb.av, %bb.an
  %i.nh = phi i64 [ %i.jz, %bb.an ], [ %i.ng, %bb.av ], [ %i.jz, %bb.ao ], [ %i.jz, %FindMatchLengthWithLimit.exit.i.i234 ], [ %i.jz, %bb.at ], [ %i.jz, %bb.au ]
  %.sroa.24312.10 = phi i64 [ 2020, %bb.an ], [ %i.nb, %bb.av ], [ 2020, %bb.ao ], [ 2020, %FindMatchLengthWithLimit.exit.i.i234 ], [ 2020, %bb.at ], [ 2020, %bb.au ] ; 6 uses
  %.sroa.15.10 = phi i64 [ %.sroa.15.4.lcssa, %bb.an ], [ %i.ms, %bb.av ], [ %.sroa.15.4.lcssa, %bb.ao ], [ %.sroa.15.4.lcssa, %FindMatchLengthWithLimit.exit.i.i234 ], [ %.sroa.15.4.lcssa, %bb.at ], [ %.sroa.15.4.lcssa, %bb.au ] ; 5 uses
  %.sroa.0302.10 = phi i64 [ %.sroa.0302.4.lcssa, %bb.an ], [ %.2.i.i.i235, %bb.av ], [ %.sroa.0302.4.lcssa, %bb.ao ], [ %.sroa.0302.4.lcssa, %FindMatchLengthWithLimit.exit.i.i234 ], [ %.sroa.0302.4.lcssa, %bb.at ], [ %.sroa.0302.4.lcssa, %bb.au ] ; 5 uses
  %.sroa.34.5 = phi i32 [ 0, %bb.an ], [ %i.nf, %bb.av ], [ 0, %bb.ao ], [ 0, %FindMatchLengthWithLimit.exit.i.i234 ], [ 0, %bb.at ], [ 0, %bb.au ] ; 5 uses
  %i.ni = or disjoint i64 %i.kh, 1                ; 2 uses
  %i.nj = add i64 %i.kb, 2
  store i64 %i.nj, ptr %i.ka, align 8, !tbaa !79, !noalias !1640
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.ni
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !55, !noalias !1640 ; 4 uses
  %.not22.i.i224.1 = icmp eq i8 %i.nl, 0
  br i1 %.not22.i.i224.1, label %FindLongestMatchH58.exit287, label %bb.aw

bb.aw:                                            ; preds = %TestStaticDictionaryItem.exit.i237.thread
  %i.nm = zext i8 %i.nl to i64                    ; 8 uses
  %i.nn = load ptr, ptr %i.kk, align 8, !tbaa !81, !noalias !1642
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %i.nn, i64 %i.ni
  %i.np = load i16, ptr %i.no, align 2, !tbaa !69, !noalias !1640
  %i.nq = zext i16 %i.np to i64                   ; 2 uses
  %i.nr = icmp ult i64 %i.br, %i.nm
  br i1 %i.nr, label %FindLongestMatchH58.exit287, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ns = load ptr, ptr %i.ct, align 8, !tbaa !82, !noalias !1642 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nm
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !5, !noalias !1640
  %i.nw = zext i32 %i.nv to i64
  %i.nx = mul nuw nsw i64 %i.nq, %i.nm
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 168
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !83, !noalias !1640
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.nx
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.nw ; 2 uses
  %i.oc = icmp ugt i8 %i.nl, 7
  br i1 %i.oc, label %.lr.ph563.1, label %.lr.ph571.preheader.1

.lr.ph563.1:                                      ; preds = %bb.ax, %bb.az
  %.022.i.i.i227561.1 = phi ptr [ %i.ok, %bb.az ], [ %i.cz, %bb.ax ] ; 3 uses
  %.025.i.i.i226560.1 = phi ptr [ %i.oj, %bb.az ], [ %i.ob, %bb.ax ] ; 2 uses
  %.027.i.i.i225559.1 = phi i64 [ %i.ol, %bb.az ], [ %i.nm, %bb.ax ]
  %.0.copyload.i44.i.i240.1 = load i64, ptr %.025.i.i.i226560.1, align 1, !noalias !1640 ; 2 uses
  %.0.copyload.i.i212.i241.1 = load i64, ptr %.022.i.i.i227561.1, align 1, !alias.scope !1634, !noalias !1640 ; 2 uses
  %.not30.i.i.i242.1 = icmp eq i64 %.0.copyload.i44.i.i240.1, %.0.copyload.i.i212.i241.1
  br i1 %.not30.i.i.i242.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph563.1
  %i.od = xor i64 %.0.copyload.i.i212.i241.1, %.0.copyload.i44.i.i240.1
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.od, i1 true)
  %i.of = ptrtoint ptr %.022.i.i.i227561.1 to i64
  %i.og = sub i64 %i.of, %i.kl
  %i.oh = lshr i64 %i.oe, 3
  %i.oi = add i64 %i.og, %i.oh
  br label %FindMatchLengthWithLimit.exit.i.i234.1

bb.az:                                            ; preds = %.lr.ph563.1
  %i.oj = getelementptr inbounds nuw i8, ptr %.025.i.i.i226560.1, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.022.i.i.i227561.1, i64 8 ; 3 uses
  %i.ol = add i64 %.027.i.i.i225559.1, -8         ; 4 uses
  %i.om = icmp ugt i64 %i.ol, 7
  br i1 %i.om, label %.lr.ph563.1, label %.preheader461.1, !llvm.loop !65

.preheader461.1:                                  ; preds = %bb.az
  %.not.i.i.i232567.1 = icmp eq i64 %i.ol, 0
  br i1 %.not.i.i.i232567.1, label %.critedge.i.i.i233.1, label %.lr.ph571.preheader.1

.lr.ph571.preheader.1:                            ; preds = %bb.ax, %.preheader461.1
  %.022.i.i.i227.lcssa.1872 = phi ptr [ %i.ok, %.preheader461.1 ], [ %i.cz, %bb.ax ] ; 2 uses
  %.025.i.i.i226.lcssa.1871 = phi ptr [ %i.oj, %.preheader461.1 ], [ %i.ob, %bb.ax ]
  %.027.i.i.i225.lcssa.1870 = phi i64 [ %i.ol, %.preheader461.1 ], [ %i.nm, %bb.ax ] ; 2 uses
  %scevgep761.1 = getelementptr i8, ptr %.022.i.i.i227.lcssa.1872, i64 %.027.i.i.i225.lcssa.1870
  br label %.lr.ph571.1

.lr.ph571.1:                                      ; preds = %bb.ba, %.lr.ph571.preheader.1
  %.224.i.i.i231570.1 = phi ptr [ %i.os, %bb.ba ], [ %.022.i.i.i227.lcssa.1872, %.lr.ph571.preheader.1 ] ; 3 uses
  %.126.i.i.i230569.1 = phi ptr [ %i.or, %bb.ba ], [ %.025.i.i.i226.lcssa.1871, %.lr.ph571.preheader.1 ] ; 2 uses
  %.128.i.i.i229568.1 = phi i64 [ %i.oq, %bb.ba ], [ %.027.i.i.i225.lcssa.1870, %.lr.ph571.preheader.1 ]
  %i.on = load i8, ptr %.224.i.i.i231570.1, align 1, !tbaa !55, !alias.scope !1634, !noalias !1640
  %i.oo = load i8, ptr %.126.i.i.i230569.1, align 1, !tbaa !55, !noalias !1640
  %i.op = icmp eq i8 %i.on, %i.oo
  br i1 %i.op, label %bb.ba, label %.critedge.i.i.i233.1

bb.ba:                                            ; preds = %.lr.ph571.1
  %i.oq = add nsw i64 %.128.i.i.i229568.1, -1     ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.126.i.i.i230569.1, i64 1
  %i.os = getelementptr inbounds nuw i8, ptr %.224.i.i.i231570.1, i64 1
  %.not.i.i.i232.1 = icmp eq i64 %i.oq, 0
  br i1 %.not.i.i.i232.1, label %.critedge.i.i.i233.1, label %.lr.ph571.1, !llvm.loop !67

.critedge.i.i.i233.1:                             ; preds = %.lr.ph571.1, %bb.ba, %.preheader461.1
  %.224.i.i.i231.lcssa.1 = phi ptr [ %i.ok, %.preheader461.1 ], [ %.224.i.i.i231570.1, %.lr.ph571.1 ], [ %scevgep761.1, %bb.ba ]
  %i.ot = ptrtoint ptr %.224.i.i.i231.lcssa.1 to i64
  %i.ou = sub i64 %i.ot, %i.kl
  br label %FindMatchLengthWithLimit.exit.i.i234.1

FindMatchLengthWithLimit.exit.i.i234.1:           ; preds = %.critedge.i.i.i233.1, %bb.ay
  %.2.i.i.i235.1 = phi i64 [ %i.oi, %bb.ay ], [ %i.ou, %.critedge.i.i.i233.1 ] ; 6 uses
  %i.ov = load i32, ptr %i.km, align 4, !tbaa !85, !noalias !1642
  %i.ow = zext i32 %i.ov to i64
  %i.ox = add i64 %.2.i.i.i235.1, %i.ow
  %i.oy = icmp ule i64 %i.ox, %i.nm
  %i.oz = icmp eq i64 %.2.i.i.i235.1, 0
  %or.cond.i.i236.1 = or i1 %i.oz, %i.oy
  br i1 %or.cond.i.i236.1, label %FindLongestMatchH58.exit287, label %bb.bb

bb.bb:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i234.1
  %i.pa = sub i64 %i.nm, %.2.i.i.i235.1           ; 2 uses
  %i.pb = shl i64 %i.pa, 2
  %i.pc = load i64, ptr %i.kn, align 8, !tbaa !86, !noalias !1642
  %i.pd = mul i64 %i.pa, 6
  %i.pe = lshr i64 %i.pc, %i.pd
  %i.pf = and i64 %i.pe, 63
  %i.pg = add i64 %i.pf, %i.pb
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nm
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !55, !noalias !1640
  %i.pj = zext nneg i8 %i.pi to i64
  %i.pk = shl i64 %i.pg, %i.pj
  %i.pl = add i64 %i.ko, %i.nq
  %i.pm = add i64 %i.pl, %i.pk                    ; 3 uses
  %i.pn = icmp ugt i64 %i.pm, %i.cu
  br i1 %i.pn, label %FindLongestMatchH58.exit287, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.po = mul i64 %.2.i.i.i235.1, 135
  %i.pp = add i64 %i.po, 1920
  %i.pq = trunc i64 %i.pm to i32
  %i.pr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pq, i1 true)
  %i.ps = xor i32 %i.pr, 31
  %i.pt = mul nuw nsw i32 %i.ps, 30
  %i.pu = zext nneg i32 %i.pt to i64
  %i.pv = sub i64 %i.pp, %i.pu                    ; 2 uses
  %i.pw = icmp ult i64 %i.pv, %.sroa.24312.10
  br i1 %i.pw, label %FindLongestMatchH58.exit287, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.px = zext i8 %i.nl to i32
  %i.py = trunc i64 %.2.i.i.i235.1 to i32
  %i.pz = sub nsw i32 %i.px, %i.py
  %i.qa = add i64 %i.nh, 1
  store i64 %i.qa, ptr %i.jy, align 8, !tbaa !76, !noalias !1640
  br label %FindLongestMatchH58.exit287

FindLongestMatchH58.exit287:                      ; preds = %TestStaticDictionaryItem.exit.i237.thread, %bb.aw, %FindMatchLengthWithLimit.exit.i.i234.1, %bb.bb, %bb.bc, %bb.bd, %._crit_edge547
  %.sroa.24312.12 = phi i64 [ %.sroa.24312.4.lcssa, %._crit_edge547 ], [ %.sroa.24312.10, %TestStaticDictionaryItem.exit.i237.thread ], [ %i.pv, %bb.bd ], [ %.sroa.24312.10, %bb.aw ], [ %.sroa.24312.10, %FindMatchLengthWithLimit.exit.i.i234.1 ], [ %.sroa.24312.10, %bb.bb ], [ %.sroa.24312.10, %bb.bc ] ; 2 uses
  %.sroa.15.12 = phi i64 [ %.sroa.15.4.lcssa, %._crit_edge547 ], [ %.sroa.15.10, %TestStaticDictionaryItem.exit.i237.thread ], [ %i.pm, %bb.bd ], [ %.sroa.15.10, %bb.aw ], [ %.sroa.15.10, %FindMatchLengthWithLimit.exit.i.i234.1 ], [ %.sroa.15.10, %bb.bb ], [ %.sroa.15.10, %bb.bc ]
  %.sroa.0302.12 = phi i64 [ %.sroa.0302.4.lcssa, %._crit_edge547 ], [ %.sroa.0302.10, %TestStaticDictionaryItem.exit.i237.thread ], [ %.2.i.i.i235.1, %bb.bd ], [ %.sroa.0302.10, %bb.aw ], [ %.sroa.0302.10, %FindMatchLengthWithLimit.exit.i.i234.1 ], [ %.sroa.0302.10, %bb.bb ], [ %.sroa.0302.10, %bb.bc ]
  %.sroa.34.6 = phi i32 [ 0, %._crit_edge547 ], [ %.sroa.34.5, %TestStaticDictionaryItem.exit.i237.thread ], [ %i.pz, %bb.bd ], [ %.sroa.34.5, %bb.aw ], [ %.sroa.34.5, %FindMatchLengthWithLimit.exit.i.i234.1 ], [ %.sroa.34.5, %bb.bb ], [ %.sroa.34.5, %bb.bc ]
  %i.qb = icmp ugt i64 %.sroa.24312.12, 2020
  br i1 %i.qb, label %.preheader466, label %FindLongestMatchH58.exit287.thread

.preheader466:                                    ; preds = %FindLongestMatchH58.exit287
  %i.qc = load ptr, ptr %i.ax, align 8, !tbaa !302, !alias.scope !1643, !noalias !1646
  %i.qd = load ptr, ptr %i.ay, align 8, !tbaa !305, !alias.scope !1643, !noalias !1646
  %i.qe = load ptr, ptr %i.az, align 8, !tbaa !306, !alias.scope !1643, !noalias !1646
  %i.qf = load i32, ptr %i.ba, align 8, !tbaa !307, !alias.scope !1643, !noalias !1646
  %i.qg = load i32, ptr %i.bb, align 8, !tbaa !308, !alias.scope !1643, !noalias !1646 ; 2 uses
  %i.qh = icmp sgt i32 %i.qg, 4
  %i.qi = load i32, ptr %i.s, align 4, !tbaa !290, !alias.scope !1643, !noalias !1646 ; 2 uses
  %i.qj = sext i32 %i.qi to i64
  %.not712 = icmp eq i32 %i.qi, 0
  %i.qk = load i32, ptr %i.bc, align 4, !tbaa !312, !alias.scope !1643, !noalias !1646 ; 3 uses
  %i.ql = load i64, ptr %i.bd, align 8, !tbaa !313, !alias.scope !1643, !noalias !1646 ; 2 uses
  %i.qm = lshr i64 %i.ql, 4                       ; 5 uses
  %.not713 = icmp eq i64 %i.qm, 0
  %12 = zext i32 %i.qk to i64
  %exitcond765.not = icmp eq i64 %i.qm, 1
  %exitcond765.not.1 = icmp eq i64 %i.qm, 2
  %exitcond765.not.2 = icmp eq i64 %i.qm, 3
  br label %bb.be

bb.be:                                            ; preds = %.preheader466, %bb.dd
  %.sroa.24312.0 = phi i64 [ %.sroa.13.10, %bb.dd ], [ %.sroa.24312.12, %.preheader466 ]
  %.sroa.15.0 = phi i64 [ %.sroa.9.10, %bb.dd ], [ %.sroa.15.12, %.preheader466 ]
  %.sroa.0302.0 = phi i64 [ %.sroa.0.10, %bb.dd ], [ %.sroa.0302.12, %.preheader466 ] ; 2 uses
  %.sroa.34.0 = phi i32 [ %.sroa.21.4, %bb.dd ], [ %.sroa.34.6, %.preheader466 ]
  %.1185 = phi i32 [ %.2186, %bb.dd ], [ %.0184, %.preheader466 ]
  %.1182 = phi i8 [ %.2183, %bb.dd ], [ %.0181, %.preheader466 ] ; 2 uses
  %.0178 = phi i32 [ %i.adx, %bb.dd ], [ 0, %.preheader466 ] ; 2 uses
  %.0175.in = phi i64 [ %.0175, %bb.dd ], [ %i.br, %.preheader466 ]
  %.1167 = phi i64 [ %i.adw, %bb.dd ], [ %.0166701, %.preheader466 ] ; 2 uses
  %.1 = phi i64 [ %i.qs, %bb.dd ], [ %.0703, %.preheader466 ] ; 5 uses
  %.0175 = add i64 %.0175.in, -1                  ; 10 uses
  %i.qn = load i32, ptr %i.l, align 4, !tbaa !32
  %i.qo = icmp slt i32 %i.qn, 5
  %i.qp = add i64 %.sroa.0302.0, -1
  %i.qq = tail call i64 @llvm.umin.i64(i64 %i.qp, i64 %.0175)
  %i.qr = select i1 %i.qo, i64 %i.qq, i64 0       ; 2 uses
  %i.qs = add i64 %.1, 1                          ; 9 uses
  %i.qt = tail call i64 @llvm.umin.i64(i64 %i.qs, i64 %i.e) ; 2 uses
  %i.qu = add i64 %i.qs, %i.g
  %i.qv = tail call i64 @llvm.umin.i64(i64 %i.qu, i64 %i.e) ; 2 uses
  %i.qw = load i32, ptr %i.ar, align 8, !tbaa !54
  %.not195 = icmp eq i32 %i.qw, 0
  br i1 %.not195, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qx = and i64 %.1, %3
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 %i.qx
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !55  ; 2 uses
  %i.ra = zext i8 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !55
  %i.rd = zext i8 %.1182 to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !55
  %i.rg = or i8 %i.rf, %i.rc
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !55
  %i.rk = zext i8 %i.rj to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.2186 = phi i32 [ %i.rk, %bb.bf ], [ %.1185, %bb.be ] ; 2 uses
  %.2183 = phi i8 [ %i.qz, %bb.bf ], [ %.1182, %bb.be ]
  %i.rl = zext nneg i32 %.2186 to i64
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.rl
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !56 ; 6 uses
  %i.ro = load i64, ptr %i.aw, align 8, !tbaa !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651)
  %i.rp = and i64 %i.qs, %3                       ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %2, i64 %i.rp ; 11 uses
  %.val298 = load i32, ptr %i.rq, align 1
  %i.rr = mul i32 %.val298, 506832829
  %i.rs = lshr i32 %i.rr, %i.qf                   ; 2 uses
  %i.rt = lshr i32 %i.rs, 8                       ; 2 uses
  %i.ru = shl i32 %i.rt, %i.qg
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.rv ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.rv ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.rw, i32 0, i32 3, i32 1), !noalias !1652
  tail call void @llvm.prefetch.p0(ptr %i.rx, i32 0, i32 3, i32 1), !noalias !1652
  br i1 %i.qh, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ry, i32 0, i32 3, i32 1), !noalias !1652
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br i1 %.not712, label %._crit_edge606, label %.lr.ph605

.lr.ph605:                                        ; preds = %bb.bi
  %i.rz = icmp ugt i64 %.0175, 7
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph605, %bb.bx
  %.0.i201603 = phi i64 [ 2020, %.lr.ph605 ], [ %.3.i.ph, %bb.bx ] ; 9 uses
  %.0158.i602 = phi i64 [ %i.qr, %.lr.ph605 ], [ %.3161.i.ph, %bb.bx ] ; 9 uses
  %.0167.i600 = phi i64 [ 0, %.lr.ph605 ], [ %i.tw, %bb.bx ] ; 5 uses
  %.sroa.0.0599 = phi i64 [ 0, %.lr.ph605 ], [ %.sroa.0.9.ph, %bb.bx ] ; 7 uses
  %.sroa.9.0598 = phi i64 [ 0, %.lr.ph605 ], [ %.sroa.9.9.ph, %bb.bx ] ; 7 uses
  %.sroa.13.0597 = phi i64 [ 2020, %.lr.ph605 ], [ %.sroa.13.9.ph, %bb.bx ] ; 7 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0167.i600
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !5, !alias.scope !1651, !noalias !1653
  %i.sc = sext i32 %i.sb to i64                   ; 3 uses
  %i.sd = sub i64 %i.qs, %i.sc                    ; 2 uses
  %.not.i202 = icmp uge i64 %i.sd, %i.qs
  %i.se = icmp ult i64 %i.qt, %i.sc
  %or.cond190.i = or i1 %i.se, %.not.i202
  br i1 %or.cond190.i, label %bb.bx, label %bb.bk, !prof !64

bb.bk:                                            ; preds = %bb.bj
  %i.sf = and i64 %i.sd, %3                       ; 2 uses
  %i.sg = add i64 %.0158.i602, %i.rp              ; 2 uses
  %i.sh = icmp ugt i64 %i.sg, %3
  br i1 %i.sh, label %._crit_edge606, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.si = add i64 %i.sf, %.0158.i602              ; 2 uses
  %i.sj = icmp ugt i64 %i.si, %3
  br i1 %i.sj, label %bb.bx, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 %i.sg
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !55, !alias.scope !1650, !noalias !1652
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 %i.si
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !55, !alias.scope !1650, !noalias !1652
  %.not185.i = icmp eq i8 %i.sl, %i.sn
  br i1 %.not185.i, label %bb.bn, label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 %i.sf ; 4 uses
  br i1 %i.rz, label %.lr.ph585, label %.preheader460

.preheader460:                                    ; preds = %bb.bp, %bb.bn
  %.027.i191.i.lcssa = phi i64 [ %.0175, %bb.bn ], [ %i.sy, %bb.bp ] ; 3 uses
  %.025.i192.i.lcssa = phi ptr [ %i.rq, %bb.bn ], [ %i.sw, %bb.bp ]
  %.022.i193.i.lcssa = phi ptr [ %i.so, %bb.bn ], [ %i.sx, %bb.bp ] ; 3 uses
  %.not.i198.i589 = icmp eq i64 %.027.i191.i.lcssa, 0
  br i1 %.not.i198.i589, label %.critedge.i199.i, label %.lr.ph593.preheader

.lr.ph593.preheader:                              ; preds = %.preheader460
  %scevgep762 = getelementptr i8, ptr %.022.i193.i.lcssa, i64 %.027.i191.i.lcssa
  br label %.lr.ph593

.lr.ph585:                                        ; preds = %bb.bn, %bb.bp
  %.022.i193.i583 = phi ptr [ %i.sx, %bb.bp ], [ %i.so, %bb.bn ] ; 3 uses
  %.025.i192.i582 = phi ptr [ %i.sw, %bb.bp ], [ %i.rq, %bb.bn ] ; 2 uses
  %.027.i191.i581 = phi i64 [ %i.sy, %bb.bp ], [ %.0175, %bb.bn ]
  %.0.copyload.i208.i = load i64, ptr %.025.i192.i582, align 1, !alias.scope !1650, !noalias !1652 ; 2 uses
  %.0.copyload.i207.i = load i64, ptr %.022.i193.i583, align 1, !alias.scope !1650, !noalias !1652 ; 2 uses
  %.not30.i201.i = icmp eq i64 %.0.copyload.i208.i, %.0.copyload.i207.i
  br i1 %.not30.i201.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph585
  %i.sp = xor i64 %.0.copyload.i207.i, %.0.copyload.i208.i
  %i.sq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sp, i1 true)
  %i.sr = ptrtoint ptr %.022.i193.i583 to i64
  %i.ss = ptrtoint ptr %i.so to i64
  %i.st = sub i64 %i.sr, %i.ss
  %i.su = lshr i64 %i.sq, 3
  %i.sv = add i64 %i.st, %i.su
  br label %FindMatchLengthWithLimit.exit204.i

bb.bp:                                            ; preds = %.lr.ph585
  %i.sw = getelementptr inbounds nuw i8, ptr %.025.i192.i582, i64 8 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.022.i193.i583, i64 8 ; 2 uses
  %i.sy = add i64 %.027.i191.i581, -8             ; 3 uses
  %i.sz = icmp ugt i64 %i.sy, 7
  br i1 %i.sz, label %.lr.ph585, label %.preheader460, !llvm.loop !65

.lr.ph593:                                        ; preds = %.lr.ph593.preheader, %bb.bq
  %.224.i197.i592 = phi ptr [ %i.tf, %bb.bq ], [ %.022.i193.i.lcssa, %.lr.ph593.preheader ] ; 3 uses
  %.126.i196.i591 = phi ptr [ %i.te, %bb.bq ], [ %.025.i192.i.lcssa, %.lr.ph593.preheader ] ; 2 uses
  %.128.i195.i590 = phi i64 [ %i.td, %bb.bq ], [ %.027.i191.i.lcssa, %.lr.ph593.preheader ]
  %i.ta = load i8, ptr %.224.i197.i592, align 1, !tbaa !55, !alias.scope !1650, !noalias !1652
  %i.tb = load i8, ptr %.126.i196.i591, align 1, !tbaa !55, !alias.scope !1650, !noalias !1652
  %i.tc = icmp eq i8 %i.ta, %i.tb
  br i1 %i.tc, label %bb.bq, label %.critedge.i199.i

bb.bq:                                            ; preds = %.lr.ph593
  %i.td = add nsw i64 %.128.i195.i590, -1         ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.126.i196.i591, i64 1
  %i.tf = getelementptr inbounds nuw i8, ptr %.224.i197.i592, i64 1
  %.not.i198.i = icmp eq i64 %i.td, 0
  br i1 %.not.i198.i, label %.critedge.i199.i, label %.lr.ph593, !llvm.loop !67

.critedge.i199.i:                                 ; preds = %bb.bq, %.lr.ph593, %.preheader460
  %.224.i197.i.lcssa = phi ptr [ %.022.i193.i.lcssa, %.preheader460 ], [ %.224.i197.i592, %.lr.ph593 ], [ %scevgep762, %bb.bq ]
  %i.tg = ptrtoint ptr %.224.i197.i.lcssa to i64
  %i.th = ptrtoint ptr %i.so to i64
  %i.ti = sub i64 %i.tg, %i.th
  br label %FindMatchLengthWithLimit.exit204.i

FindMatchLengthWithLimit.exit204.i:               ; preds = %bb.bo, %.critedge.i199.i
  %.2.i200.i = phi i64 [ %i.sv, %bb.bo ], [ %i.ti, %.critedge.i199.i ] ; 5 uses
  %i.tj = icmp ugt i64 %.2.i200.i, 2
  br i1 %i.tj, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %FindMatchLengthWithLimit.exit204.i
  %i.tk = icmp eq i64 %.2.i200.i, 2
  %i.tl = icmp ult i64 %.0167.i600, 2
  %or.cond.i203 = and i1 %i.tl, %i.tk
  br i1 %or.cond.i203, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br, %FindMatchLengthWithLimit.exit204.i
  %i.tm = mul i64 %.2.i200.i, 135
  %i.tn = add i64 %i.tm, 1935                     ; 3 uses
  %i.to = icmp ult i64 %.0.i201603, %i.tn
  br i1 %i.to, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %.not186.i = icmp eq i64 %.0167.i600, 0
  br i1 %.not186.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tp = trunc i64 %.0167.i600 to i32
  %i.tq = and i32 %i.tp, 14
  %i.tr = lshr i32 117264, %i.tq
  %i.ts = and i32 %i.tr, 14
  %narrow.i.i = add nuw nsw i32 %i.ts, 39
  %i.tt = zext nneg i32 %narrow.i.i to i64
  %i.tu = sub nuw i64 %i.tn, %i.tt
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0170.i = phi i64 [ %i.tu, %bb.bu ], [ %i.tn, %bb.bt ] ; 3 uses
  %i.tv = icmp ult i64 %.0.i201603, %.0170.i
  br i1 %i.tv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bl, %bb.bj, %bb.br, %bb.bm, %bb.bs, %bb.bw, %bb.bv
  %.sroa.13.9.ph = phi i64 [ %.sroa.13.0597, %bb.bm ], [ %.sroa.13.0597, %bb.br ], [ %.sroa.13.0597, %bb.bs ], [ %.sroa.13.0597, %bb.bv ], [ %.0170.i, %bb.bw ], [ %.sroa.13.0597, %bb.bl ], [ %.sroa.13.0597, %bb.bj ] ; 2 uses
  %.sroa.9.9.ph = phi i64 [ %.sroa.9.0598, %bb.bm ], [ %.sroa.9.0598, %bb.br ], [ %.sroa.9.0598, %bb.bs ], [ %.sroa.9.0598, %bb.bv ], [ %i.sc, %bb.bw ], [ %.sroa.9.0598, %bb.bl ], [ %.sroa.9.0598, %bb.bj ] ; 2 uses
  %.sroa.0.9.ph = phi i64 [ %.sroa.0.0599, %bb.bm ], [ %.sroa.0.0599, %bb.br ], [ %.sroa.0.0599, %bb.bs ], [ %.sroa.0.0599, %bb.bv ], [ %.2.i200.i, %bb.bw ], [ %.sroa.0.0599, %bb.bl ], [ %.sroa.0.0599, %bb.bj ] ; 2 uses
  %.3161.i.ph = phi i64 [ %.0158.i602, %bb.bm ], [ %.0158.i602, %bb.br ], [ %.0158.i602, %bb.bs ], [ %.0158.i602, %bb.bv ], [ %.2.i200.i, %bb.bw ], [ %.0158.i602, %bb.bl ], [ %.0158.i602, %bb.bj ] ; 2 uses
  %.3.i.ph = phi i64 [ %.0.i201603, %bb.bm ], [ %.0.i201603, %bb.br ], [ %.0.i201603, %bb.bs ], [ %.0.i201603, %bb.bv ], [ %.0170.i, %bb.bw ], [ %.0.i201603, %bb.bl ], [ %.0.i201603, %bb.bj ] ; 2 uses
  %i.tw = add nuw i64 %.0167.i600, 1              ; 2 uses
  %exitcond763.not = icmp eq i64 %i.tw, %i.qj
  br i1 %exitcond763.not, label %._crit_edge606, label %bb.bj, !llvm.loop !311

._crit_edge606:                                   ; preds = %bb.bx, %bb.bk, %bb.bi
  %.sroa.13.0.lcssa = phi i64 [ 2020, %bb.bi ], [ %.sroa.13.0597, %bb.bk ], [ %.sroa.13.9.ph, %bb.bx ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.bi ], [ %.sroa.9.0598, %bb.bk ], [ %.sroa.9.9.ph, %bb.bx ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.bi ], [ %.sroa.0.0599, %bb.bk ], [ %.sroa.0.9.ph, %bb.bx ] ; 2 uses
  %.0158.i.lcssa = phi i64 [ %i.qr, %bb.bi ], [ %.0158.i602, %bb.bk ], [ %.3161.i.ph, %bb.bx ]
  %.0.i201.lcssa = phi i64 [ 2020, %bb.bi ], [ %.0.i201603, %bb.bk ], [ %.3.i.ph, %bb.bx ]
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %.0158.i.lcssa, i64 3)
  %i.tx = trunc i32 %i.rs to i8                   ; 2 uses
  %i.ty = zext nneg i32 %i.rt to i64
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %i.ty ; 3 uses
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !69, !noalias !1652 ; 2 uses
  %i.ub = zext i16 %i.ua to i32                   ; 2 uses
  %i.uc = add nuw nsw i32 %i.ub, 1
  %i.ud = and i32 %i.uc, %i.qk                    ; 3 uses
  %i.ue = zext nneg i32 %i.ud to i64              ; 2 uses
  %i.uf = insertelement <16 x i8> poison, i8 %i.tx, i64 0
  %i.ug = shufflevector <16 x i8> %i.uf, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %.not713, label %._crit_edge624.thread, label %.lr.ph623

.lr.ph623:                                        ; preds = %._crit_edge606
  %13 = load <16 x i8>, ptr %i.rx, align 1, !tbaa !55, !noalias !1652
  %14 = icmp eq <16 x i8> %13, %i.ug
  %15 = bitcast <16 x i1> %14 to i16
  %16 = zext i16 %15 to i64                       ; 2 uses
  br i1 %exitcond765.not, label %._crit_edge624, label %.lr.ph623.1

.lr.ph623.1:                                      ; preds = %.lr.ph623
  %i.uh = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.ui = load <16 x i8>, ptr %i.uh, align 1, !tbaa !55, !noalias !1652
  %i.uj = icmp eq <16 x i8> %i.ui, %i.ug
  %i.uk = bitcast <16 x i1> %i.uj to i16
  %i.ul = zext i16 %i.uk to i64
  %i.um = shl nuw nsw i64 %i.ul, 16
  %i.un = or disjoint i64 %i.um, %16              ; 2 uses
  br i1 %exitcond765.not.1, label %._crit_edge624, label %.lr.ph623.2

.lr.ph623.2:                                      ; preds = %.lr.ph623.1
  %17 = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  %18 = load <16 x i8>, ptr %17, align 1, !tbaa !55, !noalias !1652
  %19 = icmp eq <16 x i8> %18, %i.ug
  %20 = bitcast <16 x i1> %19 to i16
  %21 = zext i16 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = or disjoint i64 %22, %i.un                ; 2 uses
  br i1 %exitcond765.not.2, label %._crit_edge624, label %.lr.ph623.3

.lr.ph623.3:                                      ; preds = %.lr.ph623.2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.rx, i64 48
  %i.up = load <16 x i8>, ptr %i.uo, align 1, !tbaa !55, !noalias !1652
  %i.uq = icmp eq <16 x i8> %i.up, %i.ug
  %i.ur = bitcast <16 x i1> %i.uq to i16
  %i.us = zext i16 %i.ur to i64
  %i.ut = shl nuw i64 %i.us, 48
  %i.uu = or disjoint i64 %i.ut, %23
  br label %._crit_edge624

._crit_edge624:                                   ; preds = %.lr.ph623.3, %.lr.ph623.2, %.lr.ph623.1, %.lr.ph623
  %.lcssa1064 = phi i64 [ %16, %.lr.ph623 ], [ %i.un, %.lr.ph623.1 ], [ %23, %.lr.ph623.2 ], [ %i.uu, %.lr.ph623.3 ] ; 3 uses
  switch i64 %i.qm, label %._crit_edge624.thread [
    i64 1, label %bb.by
    i64 2, label %bb.bz
  ]

bb.by:                                            ; preds = %._crit_edge624
  %i.uv = trunc i64 %.lcssa1064 to i16            ; 2 uses
  %i.uw = trunc i32 %i.ud to i16
  %i.ux = tail call i16 @llvm.fshr.i16(i16 %i.uv, i16 %i.uv, i16 %i.uw)
  %i.uy = zext i16 %i.ux to i64
  br label %GetMatchingTagMask.exit294

bb.bz:                                            ; preds = %._crit_edge624
  %i.uz = trunc i64 %.lcssa1064 to i32            ; 2 uses
  %i.va = tail call i32 @llvm.fshr.i32(i32 %i.uz, i32 %i.uz, i32 %i.ud)
  %i.vb = zext i32 %i.va to i64
  br label %GetMatchingTagMask.exit294

._crit_edge624.thread:                            ; preds = %._crit_edge606, %._crit_edge624
  %.020.i292.lcssa874 = phi i64 [ %.lcssa1064, %._crit_edge624 ], [ 0, %._crit_edge606 ] ; 2 uses
  %i.vc = tail call i64 @llvm.fshr.i64(i64 %.020.i292.lcssa874, i64 %.020.i292.lcssa874, i64 range(i64 0, 65537) %i.ue)
  br label %GetMatchingTagMask.exit294

GetMatchingTagMask.exit294:                       ; preds = %bb.by, %bb.bz, %._crit_edge624.thread
  %.0.i293 = phi i64 [ %i.uy, %bb.by ], [ %i.vb, %bb.bz ], [ %i.vc, %._crit_edge624.thread ]
  %i.vd = xor i16 %i.ua, -1                       ; 2 uses
  %i.ve = zext i16 %i.vd to i64
  %i.vf = icmp ugt i64 %i.ql, %i.ve
  %i.vg = zext i1 %i.vf to i64
  %i.vh = and i16 %i.vd, 63
  %i.vi = zext nneg i16 %i.vh to i64
  %i.vj = shl nuw i64 %i.vg, %i.vi
  %i.vk = add i64 %i.vj, -1
  %i.vl = and i64 %.0.i293, %i.vk                 ; 2 uses
  %.not187.i642 = icmp eq i64 %i.vl, 0
  br i1 %.not187.i642, label %._crit_edge650, label %.lr.ph649

.lr.ph649:                                        ; preds = %GetMatchingTagMask.exit294
  %i.vm = icmp ugt i64 %.0175, 7
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph649, %bb.ck
  %.5.i648 = phi i64 [ %.0.i201.lcssa, %.lr.ph649 ], [ %.8.i.ph, %bb.ck ] ; 5 uses
  %.5163.i647 = phi i64 [ %spec.store.select.i, %.lr.ph649 ], [ %.8166.i.ph, %bb.ck ] ; 6 uses
  %.0171.i646 = phi i64 [ %i.vl, %.lr.ph649 ], [ %i.xi, %bb.ck ] ; 3 uses
  %.sroa.0.2645 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph649 ], [ %.sroa.0.3.ph, %bb.ck ] ; 6 uses
  %.sroa.9.2644 = phi i64 [ %.sroa.9.0.lcssa, %.lr.ph649 ], [ %.sroa.9.3.ph, %bb.ck ] ; 6 uses
  %.sroa.13.2643 = phi i64 [ %.sroa.13.0.lcssa, %.lr.ph649 ], [ %.sroa.13.3.ph, %bb.ck ] ; 6 uses
  %i.vn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0171.i646, i1 true)
  %i.vo = add nuw nsw i64 %i.vn, %i.ue
  %i.vp = and i64 %i.vo, %12
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !5, !noalias !1652
  %i.vs = zext i32 %i.vr to i64                   ; 2 uses
  %i.vt = sub i64 %i.qs, %i.vs                    ; 3 uses
  %i.vu = icmp ugt i64 %i.vt, %i.qt
  br i1 %i.vu, label %._crit_edge650, label %bb.cb, !prof !73

bb.cb:                                            ; preds = %bb.ca
  %i.vv = and i64 %3, %i.vs                       ; 2 uses
  %i.vw = add i64 %.5163.i647, %i.rp              ; 2 uses
  %i.vx = icmp ugt i64 %i.vw, %3
  br i1 %i.vx, label %._crit_edge650, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vy = add i64 %i.vv, %.5163.i647              ; 2 uses
  %i.vz = icmp ugt i64 %i.vy, %3
  br i1 %i.vz, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wa = getelementptr i8, ptr %2, i64 %i.vw
  %i.wb = getelementptr i8, ptr %i.wa, i64 -3
  %.0.copyload.i205.i = load i32, ptr %i.wb, align 1, !alias.scope !1650, !noalias !1652
  %i.wc = getelementptr i8, ptr %2, i64 %i.vy
  %i.wd = getelementptr i8, ptr %i.wc, i64 -3
  %.0.copyload.i.i = load i32, ptr %i.wd, align 1, !alias.scope !1650, !noalias !1652
  %.not188.i = icmp eq i32 %.0.copyload.i205.i, %.0.copyload.i.i
  br i1 %.not188.i, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 %i.vv ; 4 uses
  br i1 %i.vm, label %.lr.ph630, label %.preheader459

.preheader459:                                    ; preds = %bb.cg, %bb.ce
  %.027.i.i.lcssa = phi i64 [ %.0175, %bb.ce ], [ %i.wo, %bb.cg ] ; 3 uses
  %.025.i.i.lcssa = phi ptr [ %i.rq, %bb.ce ], [ %i.wm, %bb.cg ]
  %.022.i.i.lcssa = phi ptr [ %i.we, %bb.ce ], [ %i.wn, %bb.cg ] ; 3 uses
  %.not.i.i634 = icmp eq i64 %.027.i.i.lcssa, 0
  br i1 %.not.i.i634, label %.critedge.i.i, label %.lr.ph638.preheader

.lr.ph638.preheader:                              ; preds = %.preheader459
  %scevgep766 = getelementptr i8, ptr %.022.i.i.lcssa, i64 %.027.i.i.lcssa
  br label %.lr.ph638

.lr.ph630:                                        ; preds = %bb.ce, %bb.cg
  %.022.i.i628 = phi ptr [ %i.wn, %bb.cg ], [ %i.we, %bb.ce ] ; 3 uses
  %.025.i.i627 = phi ptr [ %i.wm, %bb.cg ], [ %i.rq, %bb.ce ] ; 2 uses
  %.027.i.i626 = phi i64 [ %i.wo, %bb.cg ], [ %.0175, %bb.ce ]
  %.0.copyload.i210.i = load i64, ptr %.025.i.i627, align 1, !alias.scope !1650, !noalias !1652 ; 2 uses
  %.0.copyload.i209.i = load i64, ptr %.022.i.i628, align 1, !alias.scope !1650, !noalias !1652 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i210.i, %.0.copyload.i209.i
  br i1 %.not30.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph630
  %i.wf = xor i64 %.0.copyload.i209.i, %.0.copyload.i210.i
  %i.wg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wf, i1 true)
  %i.wh = ptrtoint ptr %.022.i.i628 to i64
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = sub i64 %i.wh, %i.wi
  %i.wk = lshr i64 %i.wg, 3
  %i.wl = add i64 %i.wj, %i.wk
  br label %FindMatchLengthWithLimit.exit.i

bb.cg:                                            ; preds = %.lr.ph630
  %i.wm = getelementptr inbounds nuw i8, ptr %.025.i.i627, i64 8 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.022.i.i628, i64 8 ; 2 uses
  %i.wo = add i64 %.027.i.i626, -8                ; 3 uses
  %i.wp = icmp ugt i64 %i.wo, 7
  br i1 %i.wp, label %.lr.ph630, label %.preheader459, !llvm.loop !65

.lr.ph638:                                        ; preds = %.lr.ph638.preheader, %bb.ch
  %.224.i.i637 = phi ptr [ %i.wv, %bb.ch ], [ %.022.i.i.lcssa, %.lr.ph638.preheader ] ; 3 uses
  %.126.i.i636 = phi ptr [ %i.wu, %bb.ch ], [ %.025.i.i.lcssa, %.lr.ph638.preheader ] ; 2 uses
  %.128.i.i635 = phi i64 [ %i.wt, %bb.ch ], [ %.027.i.i.lcssa, %.lr.ph638.preheader ]
  %i.wq = load i8, ptr %.224.i.i637, align 1, !tbaa !55, !alias.scope !1650, !noalias !1652
  %i.wr = load i8, ptr %.126.i.i636, align 1, !tbaa !55, !alias.scope !1650, !noalias !1652
  %i.ws = icmp eq i8 %i.wq, %i.wr
  br i1 %i.ws, label %bb.ch, label %.critedge.i.i

bb.ch:                                            ; preds = %.lr.ph638
  %i.wt = add nsw i64 %.128.i.i635, -1            ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.126.i.i636, i64 1
  %i.wv = getelementptr inbounds nuw i8, ptr %.224.i.i637, i64 1
  %.not.i.i = icmp eq i64 %i.wt, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph638, !llvm.loop !67

.critedge.i.i:                                    ; preds = %bb.ch, %.lr.ph638, %.preheader459
  %.224.i.i.lcssa = phi ptr [ %.022.i.i.lcssa, %.preheader459 ], [ %.224.i.i637, %.lr.ph638 ], [ %scevgep766, %bb.ch ]
  %i.ww = ptrtoint ptr %.224.i.i.lcssa to i64
  %i.wx = ptrtoint ptr %i.we to i64
  %i.wy = sub i64 %i.ww, %i.wx
  br label %FindMatchLengthWithLimit.exit.i

FindMatchLengthWithLimit.exit.i:                  ; preds = %bb.cf, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.wl, %bb.cf ], [ %i.wy, %.critedge.i.i ] ; 4 uses
  %i.wz = icmp ugt i64 %.2.i.i, 3
  br i1 %i.wz, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %FindMatchLengthWithLimit.exit.i
  %i.xa = mul i64 %.2.i.i, 135
  %i.xb = trunc i64 %i.vt to i32
  %i.xc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xb, i1 true)
  %i.xd = xor i32 %i.xc, 31
  %.neg715 = mul nsw i32 %i.xd, -30
  %narrow714 = add nsw i32 %.neg715, 1920
  %i.xe = zext nneg i32 %narrow714 to i64
  %i.xf = add i64 %i.xa, %i.xe                    ; 3 uses
  %i.xg = icmp ult i64 %.5.i648, %i.xf
  br i1 %i.xg, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cc, %bb.cd, %bb.ci, %bb.cj, %FindMatchLengthWithLimit.exit.i
  %.sroa.13.3.ph = phi i64 [ %.sroa.13.2643, %bb.cd ], [ %.sroa.13.2643, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.13.2643, %bb.ci ], [ %i.xf, %bb.cj ], [ %.sroa.13.2643, %bb.cc ] ; 2 uses
  %.sroa.9.3.ph = phi i64 [ %.sroa.9.2644, %bb.cd ], [ %.sroa.9.2644, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.9.2644, %bb.ci ], [ %i.vt, %bb.cj ], [ %.sroa.9.2644, %bb.cc ] ; 2 uses
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.2645, %bb.cd ], [ %.sroa.0.2645, %FindMatchLengthWithLimit.exit.i ], [ %.sroa.0.2645, %bb.ci ], [ %.2.i.i, %bb.cj ], [ %.sroa.0.2645, %bb.cc ] ; 2 uses
  %.8166.i.ph = phi i64 [ %.5163.i647, %bb.cd ], [ %.5163.i647, %FindMatchLengthWithLimit.exit.i ], [ %.5163.i647, %bb.ci ], [ %.2.i.i, %bb.cj ], [ %.5163.i647, %bb.cc ]
  %.8.i.ph = phi i64 [ %.5.i648, %bb.cd ], [ %.5.i648, %FindMatchLengthWithLimit.exit.i ], [ %.5.i648, %bb.ci ], [ %i.xf, %bb.cj ], [ %.5.i648, %bb.cc ]
  %i.xh = add i64 %.0171.i646, -1
  %i.xi = and i64 %i.xh, %.0171.i646              ; 2 uses
  %.not187.i = icmp eq i64 %i.xi, 0
  br i1 %.not187.i, label %._crit_edge650, label %bb.ca, !llvm.loop !315

._crit_edge650:                                   ; preds = %bb.ck, %bb.cb, %bb.ca, %GetMatchingTagMask.exit294
  %.sroa.13.2.lcssa = phi i64 [ %.sroa.13.0.lcssa, %GetMatchingTagMask.exit294 ], [ %.sroa.13.2643, %bb.ca ], [ %.sroa.13.2643, %bb.cb ], [ %.sroa.13.3.ph, %bb.ck ] ; 2 uses
  %.sroa.9.2.lcssa = phi i64 [ %.sroa.9.0.lcssa, %GetMatchingTagMask.exit294 ], [ %.sroa.9.2644, %bb.ca ], [ %.sroa.9.2644, %bb.cb ], [ %.sroa.9.3.ph, %bb.ck ] ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.0.lcssa, %GetMatchingTagMask.exit294 ], [ %.sroa.0.2645, %bb.ca ], [ %.sroa.0.2645, %bb.cb ], [ %.sroa.0.3.ph, %bb.ck ] ; 7 uses
  %i.xj = trunc i64 %i.qs to i32
  %i.xk = and i32 %i.qk, %i.ub
  %i.xl = zext nneg i32 %i.xk to i64              ; 2 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.xl
  store i32 %i.xj, ptr %i.xm, align 4, !tbaa !5, !noalias !1652
  %i.xn = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.xl
  store i8 %i.tx, ptr %i.xn, align 1, !tbaa !55, !noalias !1652
  %i.xo = load i16, ptr %i.tz, align 2, !tbaa !69, !noalias !1652
  %i.xp = add i16 %i.xo, -1
  store i16 %i.xp, ptr %i.tz, align 2, !tbaa !69, !noalias !1652
  %i.xq = icmp eq i64 %.sroa.13.2.lcssa, 2020
  br i1 %i.xq, label %bb.cl, label %FindLongestMatchH58.exit

bb.cl:                                            ; preds = %._crit_edge650
  %i.xr = load ptr, ptr %i.be, align 8, !tbaa !316, !alias.scope !1643, !noalias !1646 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 48 ; 3 uses
  %i.xt = load i64, ptr %i.xs, align 8, !tbaa !76, !noalias !1652 ; 7 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 40 ; 3 uses
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !79, !noalias !1652 ; 3 uses
  %i.xw = lshr i64 %i.xv, 7
  %i.xx = icmp ult i64 %i.xt, %i.xw
  br i1 %i.xx, label %FindLongestMatchH58.exit, label %bb.cm
end_hunk_2
begin_hunk_3_@CreateBackwardReferencesNH68:bb.a
bb.at:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i239
  %i.mi = sub i64 %i.ku, %.2.i.i.i240             ; 2 uses
  %i.mj = shl i64 %i.mi, 2
  %i.mk = load i64, ptr %i.kp, align 8, !tbaa !86, !noalias !1703
  %i.ml = mul i64 %i.mi, 6
  %i.mm = lshr i64 %i.mk, %i.ml
  %i.mn = and i64 %i.mm, 63
  %i.mo = add i64 %i.mn, %i.mj
  %i.mp = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ku
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !55, !noalias !1701
  %i.mr = zext nneg i8 %i.mq to i64
  %i.ms = shl i64 %i.mo, %i.mr
  %i.mt = add i64 %i.kq, %i.ky
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, %i.ct
  br i1 %i.mv, label %TestStaticDictionaryItem.exit.i242.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mw = mul i64 %.2.i.i.i240, 135
  %i.mx = add i64 %i.mw, 1920
  %i.my = trunc i64 %i.mu to i32
  %i.mz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.my, i1 true)
  %i.na = xor i32 %i.mz, 31
  %i.nb = mul nuw nsw i32 %i.na, 30
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = sub i64 %i.mx, %i.nc                    ; 2 uses
  %i.ne = icmp ult i64 %i.nd, 2020
  br i1 %i.ne, label %TestStaticDictionaryItem.exit.i242.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nf = zext i8 %i.kt to i32
  %i.ng = trunc i64 %.2.i.i.i240 to i32
  %i.nh = sub nsw i32 %i.nf, %i.ng
  %i.ni = add i64 %i.kb, 1                        ; 2 uses
  store i64 %i.ni, ptr %i.ka, align 8, !tbaa !76, !noalias !1701
  br label %TestStaticDictionaryItem.exit.i242.thread

TestStaticDictionaryItem.exit.i242.thread:        ; preds = %bb.au, %bb.at, %FindMatchLengthWithLimit.exit.i.i239, %bb.ao, %bb.av, %bb.an
  %i.nj = phi i64 [ %i.kb, %bb.an ], [ %i.ni, %bb.av ], [ %i.kb, %bb.ao ], [ %i.kb, %FindMatchLengthWithLimit.exit.i.i239 ], [ %i.kb, %bb.at ], [ %i.kb, %bb.au ]
  %.sroa.24314.10 = phi i64 [ 2020, %bb.an ], [ %i.nd, %bb.av ], [ 2020, %bb.ao ], [ 2020, %FindMatchLengthWithLimit.exit.i.i239 ], [ 2020, %bb.at ], [ 2020, %bb.au ] ; 6 uses
  %.sroa.15.10 = phi i64 [ %.sroa.15.4.lcssa, %bb.an ], [ %i.mu, %bb.av ], [ %.sroa.15.4.lcssa, %bb.ao ], [ %.sroa.15.4.lcssa, %FindMatchLengthWithLimit.exit.i.i239 ], [ %.sroa.15.4.lcssa, %bb.at ], [ %.sroa.15.4.lcssa, %bb.au ] ; 5 uses
  %.sroa.0304.10 = phi i64 [ %.sroa.0304.4.lcssa, %bb.an ], [ %.2.i.i.i240, %bb.av ], [ %.sroa.0304.4.lcssa, %bb.ao ], [ %.sroa.0304.4.lcssa, %FindMatchLengthWithLimit.exit.i.i239 ], [ %.sroa.0304.4.lcssa, %bb.at ], [ %.sroa.0304.4.lcssa, %bb.au ] ; 5 uses
  %.sroa.34.5 = phi i32 [ 0, %bb.an ], [ %i.nh, %bb.av ], [ 0, %bb.ao ], [ 0, %FindMatchLengthWithLimit.exit.i.i239 ], [ 0, %bb.at ], [ 0, %bb.au ] ; 5 uses
  %i.nk = or disjoint i64 %i.kj, 1                ; 2 uses
  %i.nl = add i64 %i.kd, 2
  store i64 %i.nl, ptr %i.kc, align 8, !tbaa !79, !noalias !1701
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.nk
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !55, !noalias !1701 ; 4 uses
  %.not22.i.i229.1 = icmp eq i8 %i.nn, 0
  br i1 %.not22.i.i229.1, label %FindLongestMatchH68.exit294, label %bb.aw

bb.aw:                                            ; preds = %TestStaticDictionaryItem.exit.i242.thread
  %i.no = zext i8 %i.nn to i64                    ; 8 uses
  %i.np = load ptr, ptr %i.km, align 8, !tbaa !81, !noalias !1703
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.nk
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !69, !noalias !1701
  %i.ns = zext i16 %i.nr to i64                   ; 2 uses
  %i.nt = icmp ult i64 %i.bq, %i.no
  br i1 %i.nt, label %FindLongestMatchH68.exit294, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nu = load ptr, ptr %i.cs, align 8, !tbaa !82, !noalias !1703 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.no
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !5, !noalias !1701
  %i.ny = zext i32 %i.nx to i64
  %i.nz = mul nuw nsw i64 %i.ns, %i.no
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 168
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !83, !noalias !1701
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nz
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ny ; 2 uses
  %i.oe = icmp ugt i8 %i.nn, 7
  br i1 %i.oe, label %.lr.ph565.1, label %.lr.ph573.preheader.1

.lr.ph565.1:                                      ; preds = %bb.ax, %bb.az
  %.022.i.i.i232563.1 = phi ptr [ %i.om, %bb.az ], [ %i.cy, %bb.ax ] ; 3 uses
  %.025.i.i.i231562.1 = phi ptr [ %i.ol, %bb.az ], [ %i.od, %bb.ax ] ; 2 uses
  %.027.i.i.i230561.1 = phi i64 [ %i.on, %bb.az ], [ %i.no, %bb.ax ]
  %.0.copyload.i44.i.i245.1 = load i64, ptr %.025.i.i.i231562.1, align 1, !noalias !1701 ; 2 uses
  %.0.copyload.i.i219.i246.1 = load i64, ptr %.022.i.i.i232563.1, align 1, !alias.scope !1692, !noalias !1701 ; 2 uses
  %.not30.i.i.i247.1 = icmp eq i64 %.0.copyload.i44.i.i245.1, %.0.copyload.i.i219.i246.1
  br i1 %.not30.i.i.i247.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph565.1
  %i.of = xor i64 %.0.copyload.i.i219.i246.1, %.0.copyload.i44.i.i245.1
  %i.og = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.of, i1 true)
  %i.oh = ptrtoint ptr %.022.i.i.i232563.1 to i64
  %i.oi = sub i64 %i.oh, %i.kn
  %i.oj = lshr i64 %i.og, 3
  %i.ok = add i64 %i.oi, %i.oj
  br label %FindMatchLengthWithLimit.exit.i.i239.1

bb.az:                                            ; preds = %.lr.ph565.1
  %i.ol = getelementptr inbounds nuw i8, ptr %.025.i.i.i231562.1, i64 8 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.022.i.i.i232563.1, i64 8 ; 3 uses
  %i.on = add i64 %.027.i.i.i230561.1, -8         ; 4 uses
  %i.oo = icmp ugt i64 %i.on, 7
  br i1 %i.oo, label %.lr.ph565.1, label %.preheader463.1, !llvm.loop !65

.preheader463.1:                                  ; preds = %bb.az
  %.not.i.i.i237569.1 = icmp eq i64 %i.on, 0
  br i1 %.not.i.i.i237569.1, label %.critedge.i.i.i238.1, label %.lr.ph573.preheader.1

.lr.ph573.preheader.1:                            ; preds = %bb.ax, %.preheader463.1
  %.022.i.i.i232.lcssa.1876 = phi ptr [ %i.om, %.preheader463.1 ], [ %i.cy, %bb.ax ] ; 2 uses
  %.025.i.i.i231.lcssa.1875 = phi ptr [ %i.ol, %.preheader463.1 ], [ %i.od, %bb.ax ]
  %.027.i.i.i230.lcssa.1874 = phi i64 [ %i.on, %.preheader463.1 ], [ %i.no, %bb.ax ] ; 2 uses
  %scevgep763.1 = getelementptr i8, ptr %.022.i.i.i232.lcssa.1876, i64 %.027.i.i.i230.lcssa.1874
  br label %.lr.ph573.1

.lr.ph573.1:                                      ; preds = %bb.ba, %.lr.ph573.preheader.1
  %.224.i.i.i236572.1 = phi ptr [ %i.ou, %bb.ba ], [ %.022.i.i.i232.lcssa.1876, %.lr.ph573.preheader.1 ] ; 3 uses
  %.126.i.i.i235571.1 = phi ptr [ %i.ot, %bb.ba ], [ %.025.i.i.i231.lcssa.1875, %.lr.ph573.preheader.1 ] ; 2 uses
  %.128.i.i.i234570.1 = phi i64 [ %i.os, %bb.ba ], [ %.027.i.i.i230.lcssa.1874, %.lr.ph573.preheader.1 ]
  %i.op = load i8, ptr %.224.i.i.i236572.1, align 1, !tbaa !55, !alias.scope !1692, !noalias !1701
  %i.oq = load i8, ptr %.126.i.i.i235571.1, align 1, !tbaa !55, !noalias !1701
  %i.or = icmp eq i8 %i.op, %i.oq
  br i1 %i.or, label %bb.ba, label %.critedge.i.i.i238.1

bb.ba:                                            ; preds = %.lr.ph573.1
  %i.os = add nsw i64 %.128.i.i.i234570.1, -1     ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.126.i.i.i235571.1, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %.224.i.i.i236572.1, i64 1
  %.not.i.i.i237.1 = icmp eq i64 %i.os, 0
  br i1 %.not.i.i.i237.1, label %.critedge.i.i.i238.1, label %.lr.ph573.1, !llvm.loop !67

.critedge.i.i.i238.1:                             ; preds = %.lr.ph573.1, %bb.ba, %.preheader463.1
  %.224.i.i.i236.lcssa.1 = phi ptr [ %i.om, %.preheader463.1 ], [ %.224.i.i.i236572.1, %.lr.ph573.1 ], [ %scevgep763.1, %bb.ba ]
  %i.ov = ptrtoint ptr %.224.i.i.i236.lcssa.1 to i64
  %i.ow = sub i64 %i.ov, %i.kn
  br label %FindMatchLengthWithLimit.exit.i.i239.1

FindMatchLengthWithLimit.exit.i.i239.1:           ; preds = %.critedge.i.i.i238.1, %bb.ay
  %.2.i.i.i240.1 = phi i64 [ %i.ok, %bb.ay ], [ %i.ow, %.critedge.i.i.i238.1 ] ; 6 uses
  %i.ox = load i32, ptr %i.ko, align 4, !tbaa !85, !noalias !1703
  %i.oy = zext i32 %i.ox to i64
  %i.oz = add i64 %.2.i.i.i240.1, %i.oy
  %i.pa = icmp ule i64 %i.oz, %i.no
  %i.pb = icmp eq i64 %.2.i.i.i240.1, 0
  %or.cond.i.i241.1 = or i1 %i.pb, %i.pa
  br i1 %or.cond.i.i241.1, label %FindLongestMatchH68.exit294, label %bb.bb

bb.bb:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i239.1
  %i.pc = sub i64 %i.no, %.2.i.i.i240.1           ; 2 uses
  %i.pd = shl i64 %i.pc, 2
  %i.pe = load i64, ptr %i.kp, align 8, !tbaa !86, !noalias !1703
  %i.pf = mul i64 %i.pc, 6
  %i.pg = lshr i64 %i.pe, %i.pf
  %i.ph = and i64 %i.pg, 63
  %i.pi = add i64 %i.ph, %i.pd
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.no
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !55, !noalias !1701
  %i.pl = zext nneg i8 %i.pk to i64
  %i.pm = shl i64 %i.pi, %i.pl
  %i.pn = add i64 %i.kq, %i.ns
  %i.po = add i64 %i.pn, %i.pm                    ; 3 uses
  %i.pp = icmp ugt i64 %i.po, %i.ct
  br i1 %i.pp, label %FindLongestMatchH68.exit294, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pq = mul i64 %.2.i.i.i240.1, 135
  %i.pr = add i64 %i.pq, 1920
  %i.ps = trunc i64 %i.po to i32
  %i.pt = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ps, i1 true)
  %i.pu = xor i32 %i.pt, 31
  %i.pv = mul nuw nsw i32 %i.pu, 30
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = sub i64 %i.pr, %i.pw                    ; 2 uses
  %i.py = icmp ult i64 %i.px, %.sroa.24314.10
  br i1 %i.py, label %FindLongestMatchH68.exit294, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pz = zext i8 %i.nn to i32
  %i.qa = trunc i64 %.2.i.i.i240.1 to i32
  %i.qb = sub nsw i32 %i.pz, %i.qa
  %i.qc = add i64 %i.nj, 1
  store i64 %i.qc, ptr %i.ka, align 8, !tbaa !76, !noalias !1701
  br label %FindLongestMatchH68.exit294

FindLongestMatchH68.exit294:                      ; preds = %TestStaticDictionaryItem.exit.i242.thread, %bb.aw, %FindMatchLengthWithLimit.exit.i.i239.1, %bb.bb, %bb.bc, %bb.bd, %._crit_edge549
  %.sroa.24314.12 = phi i64 [ %.sroa.24314.4.lcssa, %._crit_edge549 ], [ %.sroa.24314.10, %TestStaticDictionaryItem.exit.i242.thread ], [ %i.px, %bb.bd ], [ %.sroa.24314.10, %bb.aw ], [ %.sroa.24314.10, %FindMatchLengthWithLimit.exit.i.i239.1 ], [ %.sroa.24314.10, %bb.bb ], [ %.sroa.24314.10, %bb.bc ] ; 2 uses
  %.sroa.15.12 = phi i64 [ %.sroa.15.4.lcssa, %._crit_edge549 ], [ %.sroa.15.10, %TestStaticDictionaryItem.exit.i242.thread ], [ %i.po, %bb.bd ], [ %.sroa.15.10, %bb.aw ], [ %.sroa.15.10, %FindMatchLengthWithLimit.exit.i.i239.1 ], [ %.sroa.15.10, %bb.bb ], [ %.sroa.15.10, %bb.bc ]
  %.sroa.0304.12 = phi i64 [ %.sroa.0304.4.lcssa, %._crit_edge549 ], [ %.sroa.0304.10, %TestStaticDictionaryItem.exit.i242.thread ], [ %.2.i.i.i240.1, %bb.bd ], [ %.sroa.0304.10, %bb.aw ], [ %.sroa.0304.10, %FindMatchLengthWithLimit.exit.i.i239.1 ], [ %.sroa.0304.10, %bb.bb ], [ %.sroa.0304.10, %bb.bc ]
  %.sroa.34.6 = phi i32 [ 0, %._crit_edge549 ], [ %.sroa.34.5, %TestStaticDictionaryItem.exit.i242.thread ], [ %i.qb, %bb.bd ], [ %.sroa.34.5, %bb.aw ], [ %.sroa.34.5, %FindMatchLengthWithLimit.exit.i.i239.1 ], [ %.sroa.34.5, %bb.bb ], [ %.sroa.34.5, %bb.bc ]
  %i.qd = icmp ugt i64 %.sroa.24314.12, 2020
  br i1 %i.qd, label %.preheader468, label %FindLongestMatchH68.exit294.thread

.preheader468:                                    ; preds = %FindLongestMatchH68.exit294
  %i.qe = load ptr, ptr %i.ax, align 8, !tbaa !400, !alias.scope !1704, !noalias !1707
  %i.qf = load ptr, ptr %i.ay, align 8, !tbaa !403, !alias.scope !1704, !noalias !1707
  %i.qg = load ptr, ptr %i.az, align 8, !tbaa !404, !alias.scope !1704, !noalias !1707
  %i.qh = load i64, ptr %i.ba, align 8, !tbaa !405, !alias.scope !1704, !noalias !1707
  %i.qi = load i32, ptr %i.bb, align 4, !tbaa !410, !alias.scope !1704, !noalias !1707 ; 2 uses
  %i.qj = zext nneg i32 %i.qi to i64
  %i.qk = icmp sgt i32 %i.qi, 4
  %i.ql = load i32, ptr %i.s, align 8, !tbaa !388, !alias.scope !1704, !noalias !1707 ; 2 uses
  %i.qm = sext i32 %i.ql to i64
  %.not714 = icmp eq i32 %i.ql, 0
  %i.qn = load i32, ptr %i.bc, align 8, !tbaa !413, !alias.scope !1704, !noalias !1707 ; 3 uses
  %i.qo = load i64, ptr %i.bd, align 8, !tbaa !414, !alias.scope !1704, !noalias !1707 ; 2 uses
  %i.qp = lshr i64 %i.qo, 4                       ; 5 uses
  %.not715 = icmp eq i64 %i.qp, 0
  %12 = zext i32 %i.qn to i64
  %exitcond767.not = icmp eq i64 %i.qp, 1
  %exitcond767.not.1 = icmp eq i64 %i.qp, 2
  %exitcond767.not.2 = icmp eq i64 %i.qp, 3
  br label %bb.be

bb.be:                                            ; preds = %.preheader468, %bb.dd
  %.sroa.24314.0 = phi i64 [ %.sroa.13.10, %bb.dd ], [ %.sroa.24314.12, %.preheader468 ]
  %.sroa.15.0 = phi i64 [ %.sroa.9.10, %bb.dd ], [ %.sroa.15.12, %.preheader468 ]
  %.sroa.0304.0 = phi i64 [ %.sroa.0.10, %bb.dd ], [ %.sroa.0304.12, %.preheader468 ] ; 2 uses
  %.sroa.34.0 = phi i32 [ %.sroa.21.4, %bb.dd ], [ %.sroa.34.6, %.preheader468 ]
  %.1185 = phi i32 [ %.2186, %bb.dd ], [ %.0184, %.preheader468 ]
  %.1182 = phi i8 [ %.2183, %bb.dd ], [ %.0181, %.preheader468 ] ; 2 uses
  %.0178 = phi i32 [ %i.aec, %bb.dd ], [ 0, %.preheader468 ] ; 2 uses
  %.0175.in = phi i64 [ %.0175, %bb.dd ], [ %i.bq, %.preheader468 ] ; 2 uses
  %.1167 = phi i64 [ %i.aeb, %bb.dd ], [ %.0166703, %.preheader468 ] ; 2 uses
  %.1 = phi i64 [ %i.qv, %bb.dd ], [ %.0705, %.preheader468 ] ; 5 uses
  %.0175 = add i64 %.0175.in, -1                  ; 7 uses
  %i.qq = load i32, ptr %i.l, align 4, !tbaa !32
  %i.qr = icmp slt i32 %i.qq, 5
  %i.qs = add i64 %.sroa.0304.0, -1
  %i.qt = tail call i64 @llvm.umin.i64(i64 %i.qs, i64 %.0175)
  %i.qu = select i1 %i.qr, i64 %i.qt, i64 0       ; 2 uses
  %i.qv = add i64 %.1, 1                          ; 9 uses
  %i.qw = tail call i64 @llvm.umin.i64(i64 %i.qv, i64 %i.e) ; 2 uses
  %i.qx = add i64 %i.qv, %i.g
  %i.qy = tail call i64 @llvm.umin.i64(i64 %i.qx, i64 %i.e) ; 2 uses
  %i.qz = load i32, ptr %i.ar, align 8, !tbaa !54
  %.not195 = icmp eq i32 %i.qz, 0
  br i1 %.not195, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ra = and i64 %.1, %3
  %i.rb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !55  ; 2 uses
  %i.rd = zext i8 %i.rc to i64
  %i.re = getelementptr inbounds nuw i8, ptr %4, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !55
  %i.rg = zext i8 %.1182 to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !55
  %i.rj = or i8 %i.ri, %i.rf
  %i.rk = zext i8 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !55
  %i.rn = zext i8 %i.rm to i32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.2186 = phi i32 [ %i.rn, %bb.bf ], [ %.1185, %bb.be ] ; 2 uses
  %.2183 = phi i8 [ %i.rc, %bb.bf ], [ %.1182, %bb.be ]
  %i.ro = zext nneg i32 %.2186 to i64
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !56 ; 6 uses
  %i.rr = load i64, ptr %i.aw, align 8, !tbaa !57 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1704)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  %i.rs = and i64 %i.qv, %3                       ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 %i.rs ; 10 uses
  %.0.copyload.i.i300 = load i64, ptr %i.rt, align 1, !alias.scope !1713, !noalias !1716 ; 2 uses
  %i.ru = mul i64 %.0.copyload.i.i300, %i.qh      ; 2 uses
  %i.rv = lshr i64 %i.ru, 41
  %i.rw = lshr i64 %i.ru, 49                      ; 2 uses
  %i.rx = shl i64 %i.rw, %i.qj                    ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.rx ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.rx ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.ry, i32 0, i32 3, i32 1), !noalias !1716
  tail call void @llvm.prefetch.p0(ptr %i.rz, i32 0, i32 3, i32 1), !noalias !1716
  %i.sa = trunc i64 %.0.copyload.i.i300 to i32
  br i1 %i.qk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.sb, i32 0, i32 3, i32 1), !noalias !1716
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br i1 %.not714, label %._crit_edge608, label %.lr.ph607

.lr.ph607:                                        ; preds = %bb.bi
  %i.sc = icmp ugt i64 %.0175, 7
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph607, %bb.bx
  %.0.i201605 = phi i64 [ 2020, %.lr.ph607 ], [ %.3.i.ph, %bb.bx ] ; 9 uses
  %.0164.i604 = phi i64 [ %i.qu, %.lr.ph607 ], [ %.3167.i.ph, %bb.bx ] ; 9 uses
  %.0172.i602 = phi i64 [ 0, %.lr.ph607 ], [ %i.tz, %bb.bx ] ; 5 uses
  %.sroa.0.0601 = phi i64 [ 0, %.lr.ph607 ], [ %.sroa.0.9.ph, %bb.bx ] ; 7 uses
  %.sroa.9.0600 = phi i64 [ 0, %.lr.ph607 ], [ %.sroa.9.9.ph, %bb.bx ] ; 7 uses
  %.sroa.13.0599 = phi i64 [ 2020, %.lr.ph607 ], [ %.sroa.13.9.ph, %bb.bx ] ; 7 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0172.i602
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !5, !alias.scope !1712, !noalias !1717
  %i.sf = sext i32 %i.se to i64                   ; 3 uses
  %i.sg = sub i64 %i.qv, %i.sf                    ; 2 uses
  %.not.i202 = icmp uge i64 %i.sg, %i.qv
  %i.sh = icmp ult i64 %i.qw, %i.sf
  %or.cond195.i = or i1 %i.sh, %.not.i202
  br i1 %or.cond195.i, label %bb.bx, label %bb.bk, !prof !64

bb.bk:                                            ; preds = %bb.bj
  %i.si = and i64 %i.sg, %3                       ; 2 uses
  %i.sj = add i64 %.0164.i604, %i.rs              ; 2 uses
  %i.sk = icmp ugt i64 %i.sj, %3
  br i1 %i.sk, label %._crit_edge608, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.sl = add i64 %i.si, %.0164.i604              ; 2 uses
  %i.sm = icmp ugt i64 %i.sl, %3
  br i1 %i.sm, label %bb.bx, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sn = getelementptr inbounds nuw i8, ptr %2, i64 %i.sj
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !55, !alias.scope !1711, !noalias !1716
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 %i.sl
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !55, !alias.scope !1711, !noalias !1716
  %.not189.i = icmp eq i8 %i.so, %i.sq
  br i1 %.not189.i, label %bb.bn, label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 %i.si ; 4 uses
  br i1 %i.sc, label %.lr.ph587, label %.preheader462

.preheader462:                                    ; preds = %bb.bp, %bb.bn
  %.027.i196.i.lcssa = phi i64 [ %.0175, %bb.bn ], [ %i.tb, %bb.bp ] ; 3 uses
  %.025.i197.i.lcssa = phi ptr [ %i.rt, %bb.bn ], [ %i.sz, %bb.bp ]
  %.022.i198.i.lcssa = phi ptr [ %i.sr, %bb.bn ], [ %i.ta, %bb.bp ] ; 3 uses
  %.not.i203.i591 = icmp eq i64 %.027.i196.i.lcssa, 0
  br i1 %.not.i203.i591, label %.critedge.i204.i, label %.lr.ph595.preheader

.lr.ph595.preheader:                              ; preds = %.preheader462
  %scevgep764 = getelementptr i8, ptr %.022.i198.i.lcssa, i64 %.027.i196.i.lcssa
  br label %.lr.ph595

.lr.ph587:                                        ; preds = %bb.bn, %bb.bp
  %.022.i198.i585 = phi ptr [ %i.ta, %bb.bp ], [ %i.sr, %bb.bn ] ; 3 uses
  %.025.i197.i584 = phi ptr [ %i.sz, %bb.bp ], [ %i.rt, %bb.bn ] ; 2 uses
  %.027.i196.i583 = phi i64 [ %i.tb, %bb.bp ], [ %.0175, %bb.bn ]
  %.0.copyload.i215.i = load i64, ptr %.025.i197.i584, align 1, !alias.scope !1711, !noalias !1716 ; 2 uses
  %.0.copyload.i214.i = load i64, ptr %.022.i198.i585, align 1, !alias.scope !1711, !noalias !1716 ; 2 uses
  %.not30.i206.i = icmp eq i64 %.0.copyload.i215.i, %.0.copyload.i214.i
  br i1 %.not30.i206.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph587
  %i.ss = xor i64 %.0.copyload.i214.i, %.0.copyload.i215.i
  %i.st = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ss, i1 true)
  %i.su = ptrtoint ptr %.022.i198.i585 to i64
  %i.sv = ptrtoint ptr %i.sr to i64
  %i.sw = sub i64 %i.su, %i.sv
  %i.sx = lshr i64 %i.st, 3
  %i.sy = add i64 %i.sw, %i.sx
  br label %FindMatchLengthWithLimit.exit209.i

bb.bp:                                            ; preds = %.lr.ph587
  %i.sz = getelementptr inbounds nuw i8, ptr %.025.i197.i584, i64 8 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.022.i198.i585, i64 8 ; 2 uses
  %i.tb = add i64 %.027.i196.i583, -8             ; 3 uses
  %i.tc = icmp ugt i64 %i.tb, 7
  br i1 %i.tc, label %.lr.ph587, label %.preheader462, !llvm.loop !65

.lr.ph595:                                        ; preds = %.lr.ph595.preheader, %bb.bq
  %.224.i202.i594 = phi ptr [ %i.ti, %bb.bq ], [ %.022.i198.i.lcssa, %.lr.ph595.preheader ] ; 3 uses
  %.126.i201.i593 = phi ptr [ %i.th, %bb.bq ], [ %.025.i197.i.lcssa, %.lr.ph595.preheader ] ; 2 uses
  %.128.i200.i592 = phi i64 [ %i.tg, %bb.bq ], [ %.027.i196.i.lcssa, %.lr.ph595.preheader ]
  %i.td = load i8, ptr %.224.i202.i594, align 1, !tbaa !55, !alias.scope !1711, !noalias !1716
  %i.te = load i8, ptr %.126.i201.i593, align 1, !tbaa !55, !alias.scope !1711, !noalias !1716
  %i.tf = icmp eq i8 %i.td, %i.te
  br i1 %i.tf, label %bb.bq, label %.critedge.i204.i

bb.bq:                                            ; preds = %.lr.ph595
  %i.tg = add nsw i64 %.128.i200.i592, -1         ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.126.i201.i593, i64 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.224.i202.i594, i64 1
  %.not.i203.i = icmp eq i64 %i.tg, 0
  br i1 %.not.i203.i, label %.critedge.i204.i, label %.lr.ph595, !llvm.loop !67

.critedge.i204.i:                                 ; preds = %bb.bq, %.lr.ph595, %.preheader462
  %.224.i202.i.lcssa = phi ptr [ %.022.i198.i.lcssa, %.preheader462 ], [ %.224.i202.i594, %.lr.ph595 ], [ %scevgep764, %bb.bq ]
  %i.tj = ptrtoint ptr %.224.i202.i.lcssa to i64
  %i.tk = ptrtoint ptr %i.sr to i64
  %i.tl = sub i64 %i.tj, %i.tk
  br label %FindMatchLengthWithLimit.exit209.i

FindMatchLengthWithLimit.exit209.i:               ; preds = %bb.bo, %.critedge.i204.i
  %.2.i205.i = phi i64 [ %i.sy, %bb.bo ], [ %i.tl, %.critedge.i204.i ] ; 5 uses
  %i.tm = icmp ugt i64 %.2.i205.i, 2
  br i1 %i.tm, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %FindMatchLengthWithLimit.exit209.i
  %i.tn = icmp eq i64 %.2.i205.i, 2
  %i.to = icmp ult i64 %.0172.i602, 2
  %or.cond.i203 = and i1 %i.to, %i.tn
  br i1 %or.cond.i203, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br, %FindMatchLengthWithLimit.exit209.i
  %i.tp = mul i64 %.2.i205.i, 135
  %i.tq = add i64 %i.tp, 1935                     ; 3 uses
  %i.tr = icmp ult i64 %.0.i201605, %i.tq
  br i1 %i.tr, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %.not190.i = icmp eq i64 %.0172.i602, 0
  br i1 %.not190.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ts = trunc i64 %.0172.i602 to i32
  %i.tt = and i32 %i.ts, 14
  %i.tu = lshr i32 117264, %i.tt
  %i.tv = and i32 %i.tu, 14
  %narrow.i.i = add nuw nsw i32 %i.tv, 39
  %i.tw = zext nneg i32 %narrow.i.i to i64
  %i.tx = sub nuw i64 %i.tq, %i.tw
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0175.i = phi i64 [ %i.tx, %bb.bu ], [ %i.tq, %bb.bt ] ; 3 uses
  %i.ty = icmp ult i64 %.0.i201605, %.0175.i
  br i1 %i.ty, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bl, %bb.bj, %bb.br, %bb.bm, %bb.bs, %bb.bw, %bb.bv
  %.sroa.13.9.ph = phi i64 [ %.sroa.13.0599, %bb.bm ], [ %.sroa.13.0599, %bb.br ], [ %.sroa.13.0599, %bb.bs ], [ %.sroa.13.0599, %bb.bv ], [ %.0175.i, %bb.bw ], [ %.sroa.13.0599, %bb.bl ], [ %.sroa.13.0599, %bb.bj ] ; 2 uses
  %.sroa.9.9.ph = phi i64 [ %.sroa.9.0600, %bb.bm ], [ %.sroa.9.0600, %bb.br ], [ %.sroa.9.0600, %bb.bs ], [ %.sroa.9.0600, %bb.bv ], [ %i.sf, %bb.bw ], [ %.sroa.9.0600, %bb.bl ], [ %.sroa.9.0600, %bb.bj ] ; 2 uses
  %.sroa.0.9.ph = phi i64 [ %.sroa.0.0601, %bb.bm ], [ %.sroa.0.0601, %bb.br ], [ %.sroa.0.0601, %bb.bs ], [ %.sroa.0.0601, %bb.bv ], [ %.2.i205.i, %bb.bw ], [ %.sroa.0.0601, %bb.bl ], [ %.sroa.0.0601, %bb.bj ] ; 2 uses
  %.3167.i.ph = phi i64 [ %.0164.i604, %bb.bm ], [ %.0164.i604, %bb.br ], [ %.0164.i604, %bb.bs ], [ %.0164.i604, %bb.bv ], [ %.2.i205.i, %bb.bw ], [ %.0164.i604, %bb.bl ], [ %.0164.i604, %bb.bj ] ; 2 uses
  %.3.i.ph = phi i64 [ %.0.i201605, %bb.bm ], [ %.0.i201605, %bb.br ], [ %.0.i201605, %bb.bs ], [ %.0.i201605, %bb.bv ], [ %.0175.i, %bb.bw ], [ %.0.i201605, %bb.bl ], [ %.0.i201605, %bb.bj ] ; 2 uses
  %i.tz = add nuw i64 %.0172.i602, 1              ; 2 uses
  %exitcond765.not = icmp eq i64 %i.tz, %i.qm
  br i1 %exitcond765.not, label %._crit_edge608, label %bb.bj, !llvm.loop !412

._crit_edge608:                                   ; preds = %bb.bx, %bb.bk, %bb.bi
  %.sroa.13.0.lcssa = phi i64 [ 2020, %bb.bi ], [ %.sroa.13.0599, %bb.bk ], [ %.sroa.13.9.ph, %bb.bx ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.bi ], [ %.sroa.9.0600, %bb.bk ], [ %.sroa.9.9.ph, %bb.bx ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.bi ], [ %.sroa.0.0601, %bb.bk ], [ %.sroa.0.9.ph, %bb.bx ] ; 2 uses
  %.0164.i.lcssa = phi i64 [ %i.qu, %bb.bi ], [ %.0164.i604, %bb.bk ], [ %.3167.i.ph, %bb.bx ]
  %.0.i201.lcssa = phi i64 [ 2020, %bb.bi ], [ %.0.i201605, %bb.bk ], [ %.3.i.ph, %bb.bx ]
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %.0164.i.lcssa, i64 3)
  %i.ua = trunc i64 %i.rv to i8                   ; 2 uses
  %i.ub = add i64 %.0175.in, -5                   ; 3 uses
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.qe, i64 %i.rw ; 3 uses
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !69, !noalias !1716 ; 2 uses
  %i.ue = zext i16 %i.ud to i32                   ; 2 uses
  %i.uf = add nuw nsw i32 %i.ue, 1
  %i.ug = and i32 %i.uf, %i.qn                    ; 3 uses
  %i.uh = zext nneg i32 %i.ug to i64              ; 2 uses
  %i.ui = insertelement <16 x i8> poison, i8 %i.ua, i64 0
  %i.uj = shufflevector <16 x i8> %i.ui, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %.not715, label %._crit_edge626.thread, label %.lr.ph625

.lr.ph625:                                        ; preds = %._crit_edge608
  %13 = load <16 x i8>, ptr %i.rz, align 1, !tbaa !55, !noalias !1716
  %14 = icmp eq <16 x i8> %13, %i.uj
  %15 = bitcast <16 x i1> %14 to i16
  %16 = zext i16 %15 to i64                       ; 2 uses
  br i1 %exitcond767.not, label %._crit_edge626, label %.lr.ph625.1

.lr.ph625.1:                                      ; preds = %.lr.ph625
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.ul = load <16 x i8>, ptr %i.uk, align 1, !tbaa !55, !noalias !1716
  %i.um = icmp eq <16 x i8> %i.ul, %i.uj
  %i.un = bitcast <16 x i1> %i.um to i16
  %i.uo = zext i16 %i.un to i64
  %i.up = shl nuw nsw i64 %i.uo, 16
  %i.uq = or disjoint i64 %i.up, %16              ; 2 uses
  br i1 %exitcond767.not.1, label %._crit_edge626, label %.lr.ph625.2

.lr.ph625.2:                                      ; preds = %.lr.ph625.1
  %17 = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %18 = load <16 x i8>, ptr %17, align 1, !tbaa !55, !noalias !1716
  %19 = icmp eq <16 x i8> %18, %i.uj
  %20 = bitcast <16 x i1> %19 to i16
  %21 = zext i16 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = or disjoint i64 %22, %i.uq                ; 2 uses
  br i1 %exitcond767.not.2, label %._crit_edge626, label %.lr.ph625.3

.lr.ph625.3:                                      ; preds = %.lr.ph625.2
  %i.ur = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  %i.us = load <16 x i8>, ptr %i.ur, align 1, !tbaa !55, !noalias !1716
  %i.ut = icmp eq <16 x i8> %i.us, %i.uj
  %i.uu = bitcast <16 x i1> %i.ut to i16
  %i.uv = zext i16 %i.uu to i64
  %i.uw = shl nuw i64 %i.uv, 48
  %i.ux = or disjoint i64 %i.uw, %23
  br label %._crit_edge626

._crit_edge626:                                   ; preds = %.lr.ph625.3, %.lr.ph625.2, %.lr.ph625.1, %.lr.ph625
  %.lcssa1068 = phi i64 [ %16, %.lr.ph625 ], [ %i.uq, %.lr.ph625.1 ], [ %23, %.lr.ph625.2 ], [ %i.ux, %.lr.ph625.3 ] ; 3 uses
  switch i64 %i.qp, label %._crit_edge626.thread [
    i64 1, label %bb.by
    i64 2, label %bb.bz
  ]

bb.by:                                            ; preds = %._crit_edge626
  %i.uy = trunc i64 %.lcssa1068 to i16            ; 2 uses
  %i.uz = trunc i32 %i.ug to i16
  %i.va = tail call i16 @llvm.fshr.i16(i16 %i.uy, i16 %i.uy, i16 %i.uz)
  %i.vb = zext i16 %i.va to i64
  br label %GetMatchingTagMask.exit.i

bb.bz:                                            ; preds = %._crit_edge626
  %i.vc = trunc i64 %.lcssa1068 to i32            ; 2 uses
  %i.vd = tail call i32 @llvm.fshr.i32(i32 %i.vc, i32 %i.vc, i32 %i.ug)
  %i.ve = zext i32 %i.vd to i64
  br label %GetMatchingTagMask.exit.i

._crit_edge626.thread:                            ; preds = %._crit_edge608, %._crit_edge626
  %.020.i.i.lcssa878 = phi i64 [ %.lcssa1068, %._crit_edge626 ], [ 0, %._crit_edge608 ] ; 2 uses
  %i.vf = tail call i64 @llvm.fshr.i64(i64 %.020.i.i.lcssa878, i64 %.020.i.i.lcssa878, i64 range(i64 0, 65537) %i.uh)
  br label %GetMatchingTagMask.exit.i

GetMatchingTagMask.exit.i:                        ; preds = %._crit_edge626.thread, %bb.bz, %bb.by
  %.0.i221.i = phi i64 [ %i.vb, %bb.by ], [ %i.ve, %bb.bz ], [ %i.vf, %._crit_edge626.thread ]
  %i.vg = xor i16 %i.ud, -1                       ; 2 uses
  %i.vh = zext i16 %i.vg to i64
  %i.vi = icmp ugt i64 %i.qo, %i.vh
  %i.vj = zext i1 %i.vi to i64
  %i.vk = and i16 %i.vg, 63
  %i.vl = zext nneg i16 %i.vk to i64
  %i.vm = shl nuw i64 %i.vj, %i.vl
  %i.vn = add i64 %i.vm, -1
  %i.vo = and i64 %.0.i221.i, %i.vn               ; 2 uses
  %.not191.i644 = icmp eq i64 %i.vo, 0
  br i1 %.not191.i644, label %._crit_edge652, label %.lr.ph651

.lr.ph651:                                        ; preds = %GetMatchingTagMask.exit.i
  %i.vp = getelementptr i8, ptr %i.rt, i64 4      ; 2 uses
  %i.vq = icmp ugt i64 %i.ub, 7
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph651, %bb.ck
  %.5.i650 = phi i64 [ %.0.i201.lcssa, %.lr.ph651 ], [ %.7.i.ph, %bb.ck ] ; 5 uses
  %.5169.i649 = phi i64 [ %spec.store.select.i, %.lr.ph651 ], [ %.7171.i.ph, %bb.ck ] ; 6 uses
  %.0176.i648 = phi i64 [ %i.vo, %.lr.ph651 ], [ %i.xn, %bb.ck ] ; 3 uses
  %.sroa.0.2647 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph651 ], [ %.sroa.0.3.ph, %bb.ck ] ; 6 uses
  %.sroa.9.2646 = phi i64 [ %.sroa.9.0.lcssa, %.lr.ph651 ], [ %.sroa.9.3.ph, %bb.ck ] ; 6 uses
  %.sroa.13.2645 = phi i64 [ %.sroa.13.0.lcssa, %.lr.ph651 ], [ %.sroa.13.3.ph, %bb.ck ] ; 6 uses
  %i.vr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0176.i648, i1 true)
  %i.vs = add nuw nsw i64 %i.vr, %i.uh
  %i.vt = and i64 %i.vs, %12
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !5, !noalias !1716
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %i.vx = sub i64 %i.qv, %i.vw                    ; 3 uses
  %i.vy = icmp ugt i64 %i.vx, %i.qw
  br i1 %i.vy, label %._crit_edge652, label %bb.cb, !prof !73

bb.cb:                                            ; preds = %bb.ca
  %i.vz = and i64 %3, %i.vw                       ; 2 uses
  %i.wa = add i64 %.5169.i649, %i.rs              ; 2 uses
  %i.wb = icmp ugt i64 %i.wa, %3
  br i1 %i.wb, label %._crit_edge652, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wc = add i64 %i.vz, %.5169.i649              ; 2 uses
  %i.wd = icmp ugt i64 %i.wc, %3
  br i1 %i.wd, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.we = getelementptr i8, ptr %2, i64 %i.wa
  %i.wf = getelementptr i8, ptr %i.we, i64 -3
  %.0.copyload.i211.i = load i32, ptr %i.wf, align 1, !alias.scope !1711, !noalias !1716
  %i.wg = getelementptr i8, ptr %2, i64 %i.wc
  %i.wh = getelementptr i8, ptr %i.wg, i64 -3
  %.0.copyload.i210.i = load i32, ptr %i.wh, align 1, !alias.scope !1711, !noalias !1716
  %.not192.i = icmp eq i32 %.0.copyload.i211.i, %.0.copyload.i210.i
  br i1 %.not192.i, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 %i.vz ; 2 uses
  %.0.copyload.i.i = load i32, ptr %i.wi, align 1, !alias.scope !1711, !noalias !1716
  %.not193.i = icmp eq i32 %.0.copyload.i.i, %i.sa
  br i1 %.not193.i, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4 ; 4 uses
  br i1 %i.vq, label %.lr.ph632, label %.preheader461

.preheader461:                                    ; preds = %bb.ch, %bb.cf
  %.027.i.i.lcssa = phi i64 [ %i.ub, %bb.cf ], [ %i.wt, %bb.ch ] ; 3 uses
  %.025.i.i.lcssa = phi ptr [ %i.vp, %bb.cf ], [ %i.wr, %bb.ch ]
  %.022.i.i.lcssa = phi ptr [ %i.wj, %bb.cf ], [ %i.ws, %bb.ch ] ; 3 uses
  %.not.i.i636 = icmp eq i64 %.027.i.i.lcssa, 0
  br i1 %.not.i.i636, label %.critedge.i.i, label %.lr.ph640.preheader

.lr.ph640.preheader:                              ; preds = %.preheader461
  %scevgep768 = getelementptr i8, ptr %.022.i.i.lcssa, i64 %.027.i.i.lcssa
  br label %.lr.ph640

.lr.ph632:                                        ; preds = %bb.cf, %bb.ch
  %.022.i.i630 = phi ptr [ %i.ws, %bb.ch ], [ %i.wj, %bb.cf ] ; 3 uses
  %.025.i.i629 = phi ptr [ %i.wr, %bb.ch ], [ %i.vp, %bb.cf ] ; 2 uses
  %.027.i.i628 = phi i64 [ %i.wt, %bb.ch ], [ %i.ub, %bb.cf ]
  %.0.copyload.i217.i = load i64, ptr %.025.i.i629, align 1, !alias.scope !1711, !noalias !1716 ; 2 uses
  %.0.copyload.i216.i = load i64, ptr %.022.i.i630, align 1, !alias.scope !1711, !noalias !1716 ; 2 uses
  %.not30.i.i = icmp eq i64 %.0.copyload.i217.i, %.0.copyload.i216.i
  br i1 %.not30.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph632
  %i.wk = xor i64 %.0.copyload.i216.i, %.0.copyload.i217.i
  %i.wl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.wk, i1 true)
  %i.wm = ptrtoint ptr %.022.i.i630 to i64
  %i.wn = ptrtoint ptr %i.wj to i64
  %i.wo = sub i64 %i.wm, %i.wn
  %i.wp = lshr i64 %i.wl, 3
  %i.wq = add i64 %i.wo, %i.wp
  br label %FindMatchLengthWithLimit.exit.i

bb.ch:                                            ; preds = %.lr.ph632
  %i.wr = getelementptr inbounds nuw i8, ptr %.025.i.i629, i64 8 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.022.i.i630, i64 8 ; 2 uses
  %i.wt = add i64 %.027.i.i628, -8                ; 3 uses
  %i.wu = icmp ugt i64 %i.wt, 7
  br i1 %i.wu, label %.lr.ph632, label %.preheader461, !llvm.loop !65

.lr.ph640:                                        ; preds = %.lr.ph640.preheader, %bb.ci
  %.224.i.i639 = phi ptr [ %i.xa, %bb.ci ], [ %.022.i.i.lcssa, %.lr.ph640.preheader ] ; 3 uses
  %.126.i.i638 = phi ptr [ %i.wz, %bb.ci ], [ %.025.i.i.lcssa, %.lr.ph640.preheader ] ; 2 uses
  %.128.i.i637 = phi i64 [ %i.wy, %bb.ci ], [ %.027.i.i.lcssa, %.lr.ph640.preheader ]
  %i.wv = load i8, ptr %.224.i.i639, align 1, !tbaa !55, !alias.scope !1711, !noalias !1716
  %i.ww = load i8, ptr %.126.i.i638, align 1, !tbaa !55, !alias.scope !1711, !noalias !1716
  %i.wx = icmp eq i8 %i.wv, %i.ww
  br i1 %i.wx, label %bb.ci, label %.critedge.i.i

bb.ci:                                            ; preds = %.lr.ph640
  %i.wy = add nsw i64 %.128.i.i637, -1            ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.126.i.i638, i64 1
  %i.xa = getelementptr inbounds nuw i8, ptr %.224.i.i639, i64 1
  %.not.i.i = icmp eq i64 %i.wy, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph640, !llvm.loop !67

.critedge.i.i:                                    ; preds = %bb.ci, %.lr.ph640, %.preheader461
  %.224.i.i.lcssa = phi ptr [ %.022.i.i.lcssa, %.preheader461 ], [ %.224.i.i639, %.lr.ph640 ], [ %scevgep768, %bb.ci ]
  %i.xb = ptrtoint ptr %.224.i.i.lcssa to i64
  %i.xc = ptrtoint ptr %i.wj to i64
  %i.xd = sub i64 %i.xb, %i.xc
  br label %FindMatchLengthWithLimit.exit.i

FindMatchLengthWithLimit.exit.i:                  ; preds = %bb.cg, %.critedge.i.i
  %.2.i.i = phi i64 [ %i.wq, %bb.cg ], [ %i.xd, %.critedge.i.i ]
  %i.xe = add i64 %.2.i.i, 4                      ; 3 uses
  %i.xf = mul i64 %i.xe, 135
  %i.xg = trunc i64 %i.vx to i32
  %i.xh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xg, i1 true)
  %i.xi = xor i32 %i.xh, 31
  %.neg717 = mul nsw i32 %i.xi, -30
  %narrow716 = add nsw i32 %.neg717, 1920
  %i.xj = zext nneg i32 %narrow716 to i64
  %i.xk = add i64 %i.xf, %i.xj                    ; 3 uses
  %i.xl = icmp ult i64 %.5.i650, %i.xk
  br i1 %i.xl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %FindMatchLengthWithLimit.exit.i
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ce, %bb.cc, %bb.cd, %bb.cj, %FindMatchLengthWithLimit.exit.i
  %.sroa.13.3.ph = phi i64 [ %.sroa.13.2645, %bb.cd ], [ %.sroa.13.2645, %bb.ce ], [ %.sroa.13.2645, %FindMatchLengthWithLimit.exit.i ], [ %i.xk, %bb.cj ], [ %.sroa.13.2645, %bb.cc ] ; 2 uses
  %.sroa.9.3.ph = phi i64 [ %.sroa.9.2646, %bb.cd ], [ %.sroa.9.2646, %bb.ce ], [ %.sroa.9.2646, %FindMatchLengthWithLimit.exit.i ], [ %i.vx, %bb.cj ], [ %.sroa.9.2646, %bb.cc ] ; 2 uses
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.2647, %bb.cd ], [ %.sroa.0.2647, %bb.ce ], [ %.sroa.0.2647, %FindMatchLengthWithLimit.exit.i ], [ %i.xe, %bb.cj ], [ %.sroa.0.2647, %bb.cc ] ; 2 uses
  %.7171.i.ph = phi i64 [ %.5169.i649, %bb.cd ], [ %.5169.i649, %bb.ce ], [ %.5169.i649, %FindMatchLengthWithLimit.exit.i ], [ %i.xe, %bb.cj ], [ %.5169.i649, %bb.cc ]
  %.7.i.ph = phi i64 [ %.5.i650, %bb.cd ], [ %.5.i650, %bb.ce ], [ %.5.i650, %FindMatchLengthWithLimit.exit.i ], [ %i.xk, %bb.cj ], [ %.5.i650, %bb.cc ]
  %i.xm = add i64 %.0176.i648, -1
  %i.xn = and i64 %i.xm, %.0176.i648              ; 2 uses
  %.not191.i = icmp eq i64 %i.xn, 0
  br i1 %.not191.i, label %._crit_edge652, label %bb.ca, !llvm.loop !415

._crit_edge652:                                   ; preds = %bb.ck, %bb.cb, %bb.ca, %GetMatchingTagMask.exit.i
  %.sroa.13.2.lcssa = phi i64 [ %.sroa.13.0.lcssa, %GetMatchingTagMask.exit.i ], [ %.sroa.13.2645, %bb.ca ], [ %.sroa.13.2645, %bb.cb ], [ %.sroa.13.3.ph, %bb.ck ] ; 2 uses
  %.sroa.9.2.lcssa = phi i64 [ %.sroa.9.0.lcssa, %GetMatchingTagMask.exit.i ], [ %.sroa.9.2646, %bb.ca ], [ %.sroa.9.2646, %bb.cb ], [ %.sroa.9.3.ph, %bb.ck ] ; 7 uses
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.0.lcssa, %GetMatchingTagMask.exit.i ], [ %.sroa.0.2647, %bb.ca ], [ %.sroa.0.2647, %bb.cb ], [ %.sroa.0.3.ph, %bb.ck ] ; 7 uses
  %i.xo = trunc i64 %i.qv to i32
  %i.xp = and i32 %i.qn, %i.ue
  %i.xq = zext nneg i32 %i.xp to i64              ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.xq
  store i32 %i.xo, ptr %i.xr, align 4, !tbaa !5, !noalias !1716
  %i.xs = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.xq
  store i8 %i.ua, ptr %i.xs, align 1, !tbaa !55, !noalias !1716
  %i.xt = load i16, ptr %i.uc, align 2, !tbaa !69, !noalias !1716
  %i.xu = add i16 %i.xt, -1
  store i16 %i.xu, ptr %i.uc, align 2, !tbaa !69, !noalias !1716
  %i.xv = icmp eq i64 %.sroa.13.2.lcssa, 2020
  br i1 %i.xv, label %bb.cl, label %FindLongestMatchH68.exit

bb.cl:                                            ; preds = %._crit_edge652
  %i.xw = load ptr, ptr %i.be, align 8, !tbaa !416, !alias.scope !1704, !noalias !1707 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 48 ; 3 uses
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !76, !noalias !1716 ; 7 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 40 ; 3 uses
end_hunk_3
