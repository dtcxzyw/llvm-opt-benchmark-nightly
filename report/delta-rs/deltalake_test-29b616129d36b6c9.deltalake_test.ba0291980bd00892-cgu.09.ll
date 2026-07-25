inline.NumInlined: 191
inline.NumDeleted: 116
begin_hunk_0_@_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test:bb.a
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.14.0.copyload.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 5 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !341 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !341
  %i.hm = trunc nuw i64 %.sroa.041.0.copyload.i.i.i to i1
  %i.hn = add nsw i64 %.sroa.15.0.copyload.i.i.i, -1 ; 3 uses
  %.not.i33.i.i.i = icmp eq i64 %i.hc, 0          ; 3 uses
  br i1 %i.hm, label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i, label %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i

_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i: ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload.i.i.i) ]
  %i.ho = sub i64 %.sroa.15.0.copyload.i.i.i, %.sroa.644.0.copyload.i.i.i
  %umax49.i50.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.442.0.copyload.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i)
  %i.hp = add i64 %.sroa.442.0.copyload.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i = icmp ult i64 %i.hp, %.sroa.15.0.copyload.i.i.i
  %.first_iter.i.fr.i.i = freeze i1 %.first_iter.i.i.i
  %.not73.us.i.i.i = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.442.0.copyload.i.i.i
  %exitcond.not.i52.us.i.i.i202.not = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i
  %invariant.op296 = sub i64 1, %.sroa.442.0.copyload.i.i.i
  %.not73.us.i.us.i.i205 = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br label %bb.be

bb.be:                                            ; preds = %bb.bv, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i
  %.sroa.18.0.us.i.i.i = phi i64 [ %.sroa.846.0.copyload.i.i.i, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.18.3.us.i.i.i, %bb.bv ] ; 3 uses
  %.sroa.3015.0.us.i.i.i = phi i64 [ %.sroa.1048.0.copyload.i.i.i, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.3015.3.us.i.i.i, %bb.bv ] ; 2 uses
  %.sroa.04.0.us.i.i.i = phi i64 [ 0, %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.us.i.i.i ], [ %.sroa.18.3.us.i.i.i, %bb.bv ] ; 7 uses
  %i.hq = icmp eq i64 %.sroa.3015.0.us.i.i.i, -1
  %i.hr = add i64 %.sroa.18.0.us.i.i.i, %i.hn     ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %.sroa.1351.0.copyload.i.i.i ; 2 uses
  br i1 %i.hq, label %bb.bo, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  br i1 %i.hs, label %.lr.ph.i39.us.i.i.i, label %.loopexit.i.i.i

.lr.ph.i39.us.i.i.i:                              ; preds = %bb.bf, %.sink.split.i.us.i.i.i
  %i.ht = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.3015.0.us.i.i.i, %bb.bf ] ; 3 uses
  %i.hu = phi i64 [ %i.ix, %.sink.split.i.us.i.i.i ], [ %i.hr, %bb.bf ]
  %i.hv = phi i64 [ %.ph71.i.us.i.i.i, %.sink.split.i.us.i.i.i ], [ %.sroa.18.0.us.i.i.i, %bb.bf ] ; 8 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.hu
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !347, !noalias !352, !noundef !4
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.ia, %.sroa.745.0.copyload.i.i.i
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i39.us.i.i.i
  %.sroa.0.0.i.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 %.sroa.442.0.copyload.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i.us.i.i.i197.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i, %.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i.us.i.i.i197.not, label %.lr.ph, label %.preheader75.us.i.i.i.preheader

bb.bh:                                            ; preds = %bb.bi
  %i.id = add i64 %.sroa.02.0.i.us.i.i.i198, 1    ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.id, %umax49.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader75.us.i.i.i.preheader, label %.lr.ph

.preheader75.us.i.i.i.preheader:                  ; preds = %bb.bh, %bb.bg
  %i.ie = icmp ult i64 %i.ht, %.sroa.442.0.copyload.i.i.i
  br i1 %i.ie, label %.lr.ph200, label %.loopexit.i.us.i.i.i

.lr.ph:                                           ; preds = %bb.bg, %bb.bh
  %.sroa.02.0.i.us.i.i.i198 = phi i64 [ %i.id, %bb.bh ], [ %.sroa.0.0.i.i.us.i.i.i, %bb.bg ] ; 4 uses
  %i.if = add i64 %.sroa.02.0.i.us.i.i.i198, %i.hv ; 2 uses
  %i.ig = icmp ult i64 %i.if, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.ig, label %bb.bi, label %.split.us.i.i.i

bb.bi:                                            ; preds = %.lr.ph
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i.us.i.i.i198
  %i.ii = load i8, ptr %i.ih, align 1, !alias.scope !350, !noalias !355, !noundef !4
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.if
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !347, !noalias !352, !noundef !4
  %.not21.i.us.i.i.i = icmp eq i8 %i.ii, %i.ik
  br i1 %.not21.i.us.i.i.i, label %bb.bh, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.hv, %invariant.op
  %i.il = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i198
  br label %.sink.split.i.us.i.i.i

.preheader75.us.i.i.i:                            ; preds = %bb.bl
  %i.im = icmp ult i64 %i.ht, %i.in
  br i1 %i.im, label %.lr.ph200, label %.loopexit.i.us.i.i.i

.lr.ph200:                                        ; preds = %.preheader75.us.i.i.i.preheader, %.preheader75.us.i.i.i
  %.sroa.2.0.i.us.i.i.i199 = phi i64 [ %i.in, %.preheader75.us.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader75.us.i.i.i.preheader ]
  %i.in = add i64 %.sroa.2.0.i.us.i.i.i199, -1    ; 6 uses
  %i.io = icmp ult i64 %i.in, %.sroa.15.0.copyload.i.i.i
  br i1 %i.io, label %bb.bk, label %.split133.us.invoke.i.i.i

bb.bk:                                            ; preds = %.lr.ph200
  %i.ip = add i64 %i.in, %i.hv                    ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.iq, label %bb.bl, label %.split133.us.invoke.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.in
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !350, !noalias !355, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !347, !noalias !352, !noundef !4
  %.not.i40.us.i.i.i = icmp eq i8 %i.is, %i.iu
  br i1 %.not.i40.us.i.i.i, label %.preheader75.us.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iv = add i64 %i.hv, %.sroa.644.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i39.us.i.i.i
  %i.iw = add i64 %i.hv, %.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i.us.i.i.i

.sink.split.i.us.i.i.i:                           ; preds = %bb.bn, %bb.bm, %bb.bj
  %.sink.i.us.i.i.i = phi i64 [ %i.ho, %bb.bm ], [ 0, %bb.bj ], [ 0, %bb.bn ]
  %.ph71.i.us.i.i.i = phi i64 [ %i.iv, %bb.bm ], [ %i.il, %bb.bj ], [ %i.iw, %bb.bn ] ; 2 uses
  %i.ix = add i64 %.ph71.i.us.i.i.i, %i.hn        ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.iy, label %.lr.ph.i39.us.i.i.i, label %.loopexit.i.i.i

bb.bo:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  br i1 %i.hs, label %.lr.ph.i47.us.i.i.i, label %.loopexit.i.i.i

.lr.ph.i47.us.i.i.i:                              ; preds = %bb.bo, %4
  %i.iz = phi i64 [ %6, %4 ], [ %i.hr, %bb.bo ]
  %i.ja = phi i64 [ %5, %4 ], [ %.sroa.18.0.us.i.i.i, %bb.bo ] ; 9 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.iz
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !356, !noalias !361, !noundef !4
  %i.jd = and i8 %i.jc, 63
  %i.je = zext nneg i8 %i.jd to i64
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = and i64 %i.jf, %.sroa.745.0.copyload.i.i.i
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %2, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i47.us.i.i.i
  br i1 %exitcond.not.i52.us.i.i.i202.not, label %.lr.ph204, label %.preheader.us.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %bb.bq
  %i.ji = add i64 %.sroa.02.0.i51.us.i.i.i203, 1  ; 2 uses
  %exitcond.not.i52.us.i.i.i = icmp eq i64 %i.ji, %umax49.i50.us.i.i.i
  br i1 %exitcond.not.i52.us.i.i.i, label %.preheader.us.i.preheader.i.i, label %.lr.ph204

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not73.us.i.us.i.i205, label %.loopexit.i.us.i.i.i, label %.lr.ph207

.preheader.us.i.us.i.i:                           ; preds = %bb.bp
  %.not73.us.i.us.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not73.us.i.us.i.i, label %.loopexit.i.us.i.i.i, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i55.us.i.us.i.i206 = phi i64 [ %i.jj, %.preheader.us.i.us.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %i.jj = add i64 %.sroa.2.0.i55.us.i.us.i.i206, -1 ; 4 uses
  %i.jk = add i64 %i.jj, %i.ja                    ; 3 uses
  %i.jl = icmp ult i64 %i.jk, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.jl, label %bb.bp, label %.split133.us.invoke.i.i.i

bb.bp:                                            ; preds = %.lr.ph207
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %i.jj
  %i.jn = load i8, ptr %i.jm, align 1, !alias.scope !359, !noalias !364, !noundef !4
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.jk
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !356, !noalias !361, !noundef !4
  %.not.i56.us.i.us.i.i = icmp eq i8 %i.jn, %i.jp
  br i1 %.not.i56.us.i.us.i.i, label %.preheader.us.i.us.i.i, label %.split.us.i32.i

.split.us.i32.i:                                  ; preds = %bb.bp
  %i.jq = add i64 %i.ja, %.sroa.644.0.copyload.i.i.i
  br label %4

.preheader.us.i.preheader.split.i.i:              ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not73.us.i.i.i, label %.loopexit.i.us.i.i.i, label %.split133.us.invoke.i.i.i

.lr.ph204:                                        ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.sroa.02.0.i51.us.i.i.i203 = phi i64 [ %i.ji, %.preheader.i.i.i ], [ %.sroa.442.0.copyload.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.jr = add i64 %.sroa.02.0.i51.us.i.i.i203, %i.ja ; 2 uses
  %i.js = icmp ult i64 %i.jr, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.js, label %bb.bq, label %.split140.us.i.i.i

bb.bq:                                            ; preds = %.lr.ph204
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i51.us.i.i.i203
  %i.ju = load i8, ptr %i.jt, align 1, !alias.scope !359, !noalias !364, !noundef !4
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.jr
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !356, !noalias !361, !noundef !4
  %.not21.i54.us.i.i.i = icmp eq i8 %i.ju, %i.jw
  br i1 %.not21.i54.us.i.i.i, label %.preheader.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.reass270.i.reass.i.reass.i.reass.reass = add i64 %i.ja, %invariant.op296
  %i.jx = add i64 %.reass270.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i51.us.i.i.i203
  br label %4

2:                                                ; preds = %.lr.ph.i47.us.i.i.i
  %3 = add i64 %i.ja, %.sroa.15.0.copyload.i.i.i
  br label %4

4:                                                ; preds = %2, %bb.br, %.split.us.i32.i
  %5 = phi i64 [ %i.jx, %bb.br ], [ %3, %2 ], [ %i.jq, %.split.us.i32.i ] ; 2 uses
  %6 = add i64 %5, %i.hn                          ; 2 uses
  %7 = icmp ult i64 %6, %.sroa.1351.0.copyload.i.i.i
  br i1 %7, label %.lr.ph.i47.us.i.i.i, label %.loopexit.i.i.i

.loopexit.i.us.i.i.i:                             ; preds = %.preheader75.us.i.i.i.preheader, %.preheader.us.i.us.i.i.preheader, %.preheader75.us.i.i.i, %.preheader.us.i.us.i.i, %.preheader.us.i.preheader.split.i.i
  %.sroa.3015.3.us.i.i.i = phi i64 [ -1, %.preheader.us.i.us.i.i ], [ -1, %.preheader.us.i.preheader.split.i.i ], [ 0, %.preheader75.us.i.i.i ], [ -1, %.preheader.us.i.us.i.i.preheader ], [ 0, %.preheader75.us.i.i.i.preheader ]
  %.sroa.753.4.us.i.i.i = phi i64 [ %i.ja, %.preheader.us.i.us.i.i ], [ %i.ja, %.preheader.us.i.preheader.split.i.i ], [ %i.hv, %.preheader75.us.i.i.i ], [ %i.ja, %.preheader.us.i.us.i.i.preheader ], [ %i.hv, %.preheader75.us.i.i.i.preheader ] ; 3 uses
  %.sroa.18.3.us.i.i.i = add i64 %.sroa.753.4.us.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.04.0.us.i.i.i
  %gepdiff.us.i.i.i = sub nuw nsw i64 %.sroa.753.4.us.i.i.i, %.sroa.04.0.us.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.us.i.i.i)
          to label %.noexc31.us.i.i.i unwind label %.loopexit78.split.us.i.i.i, !noalias !346

.noexc31.us.i.i.i:                                ; preds = %.loopexit.i.us.i.i.i
  %i.jz = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !365, !noalias !341, !noundef !4 ; 3 uses
  %i.ka = icmp sgt i64 %i.jz, -1
  call void @llvm.assume(i1 %i.ka)
  %.not.i29.us.i.i.i = icmp eq i64 %.sroa.753.4.us.i.i.i, %.sroa.04.0.us.i.i.i
  br i1 %.not.i29.us.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc31.us.i.i.i
  %i.kb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i24.i, align 8, !alias.scope !365, !noalias !341, !nonnull !4, !noundef !4
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kc, ptr nonnull readonly align 1 %i.jy, i64 %gepdiff.us.i.i.i, i1 false), !noalias !346
  %.pre.i30.us.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !365, !noalias !341
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.noexc31.us.i.i.i
  %i.kd = phi i64 [ %.pre.i30.us.i.i.i, %bb.bs ], [ %i.jz, %.noexc31.us.i.i.i ]
  %i.ke = add i64 %i.kd, %gepdiff.us.i.i.i
  store i64 %i.ke, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !365, !noalias !341
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hc)
          to label %.noexc35.us.i.i.i unwind label %.loopexit78.split.us.i.i.i, !noalias !346

.noexc35.us.i.i.i:                                ; preds = %bb.bt
  %i.kf = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !368, !noalias !341, !noundef !4 ; 3 uses
  %i.kg = icmp sgt i64 %i.kf, -1
  call void @llvm.assume(i1 %i.kg)
  br i1 %.not.i33.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.noexc35.us.i.i.i
  %i.kh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i24.i, align 8, !alias.scope !368, !noalias !341, !nonnull !4, !noundef !4
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ki, ptr nonnull readonly align 1 %i.hb, i64 %i.hc, i1 false), !noalias !371
  %.pre.i34.us.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !368, !noalias !341
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.noexc35.us.i.i.i
  %i.kj = phi i64 [ %.pre.i34.us.i.i.i, %bb.bu ], [ %i.kf, %.noexc35.us.i.i.i ]
  %i.kk = add i64 %i.kj, %i.hc
  store i64 %i.kk, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !368, !noalias !341
  br label %bb.be

.loopexit78.split.us.i.i.i:                       ; preds = %bb.bt, %.loopexit.i.us.i.i.i
  %lpad.loopexit.us.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit78.i.i.i

_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i: ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.i.i.i
  %i.kl = and i64 %.sroa.644.0.copyload.i.i.i, 65536
  %.not72.i.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not72.i.i.i, label %.lr.ph.i.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern13into_searcher.exit.split.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1250.0.copyload.i.i.i) ]
  %i.km = trunc i64 %.sroa.644.0.copyload.i.i.i to i1 ; 2 uses
  %i.kn = icmp eq i64 %.sroa.442.0.copyload.i.i.i, 0
  br i1 %i.kn, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.lr.ph.i.i.i
  %.not.i.i.i.peel.i.peel.i.i = icmp ult i64 %.sroa.442.0.copyload.i.i.i, %.sroa.1351.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.peel.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ko = icmp eq i64 %.sroa.442.0.copyload.i.i.i, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.ko, label %bb.bz, label %.loopexit204.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %.sroa.442.0.copyload.i.i.i
  %i.kq = load i8, ptr %i.kp, align 1, !alias.scope !372, !noalias !375, !noundef !4
  %i.kr = icmp sgt i8 %i.kq, -65
  br i1 %i.kr, label %bb.bz, label %.loopexit204.i.i.i

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph.i.lr.ph.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %.sroa.442.0.copyload.i.i.i ; 4 uses
  %i.kt = icmp samesign eq i64 %.sroa.442.0.copyload.i.i.i, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.kt, label %.loopexit205.i.peel.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ku = load i8, ptr %i.ks, align 1, !noalias !382, !noundef !4 ; 5 uses
  %i.kv = icmp sgt i8 %i.ku, -1
  br i1 %i.kv, label %bb.cb, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.peel.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.peel.i.peel.i.i: ; preds = %bb.ca
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %i.kx = and i8 %i.ku, 31
  %i.ky = zext nneg i8 %i.kx to i32               ; 3 uses
  %i.kz = add nuw nsw i64 %.sroa.442.0.copyload.i.i.i, 1
  %i.la = icmp samesign ne i64 %i.kz, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.la)
  %i.lb = load i8, ptr %i.kw, align 1, !noalias !382, !noundef !4
  %i.lc = shl nuw nsw i32 %i.ky, 6
  %i.ld = and i8 %i.lb, 63
  %i.le = zext nneg i8 %i.ld to i32               ; 2 uses
  %i.lf = or disjoint i32 %i.lc, %i.le
  %i.lg = icmp samesign ugt i8 %i.ku, -33
  br i1 %i.lg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.peel.i.peel.i.i, label %bb.cc

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.peel.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.peel.i.peel.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.li = add nuw nsw i64 %.sroa.442.0.copyload.i.i.i, 2
  %i.lj = icmp samesign ne i64 %i.li, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lj)
  %i.lk = load i8, ptr %i.lh, align 1, !noalias !382, !noundef !4
  %i.ll = shl nuw nsw i32 %i.le, 6
  %i.lm = and i8 %i.lk, 63
  %i.ln = zext nneg i8 %i.lm to i32
  %i.lo = or disjoint i32 %i.ll, %i.ln            ; 2 uses
  %i.lp = shl nuw nsw i32 %i.ky, 12
  %i.lq = or disjoint i32 %i.lo, %i.lp
  %i.lr = icmp samesign ugt i8 %i.ku, -17
  br i1 %i.lr, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.peel.i.peel.i.i, label %bb.cc

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.peel.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.peel.i.peel.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %i.lt = add nuw nsw i64 %.sroa.442.0.copyload.i.i.i, 3
  %i.lu = icmp samesign ne i64 %i.lt, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lu)
  %i.lv = load i8, ptr %i.ls, align 1, !noalias !382, !noundef !4
  %i.lw = shl nuw nsw i32 %i.ky, 18
  %i.lx = and i32 %i.lw, 1835008
  %i.ly = shl nuw nsw i32 %i.lo, 6
  %i.lz = and i8 %i.lv, 63
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.ly, %i.ma
  %i.mc = or disjoint i32 %i.mb, %i.lx
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.md = zext nneg i8 %i.ku to i32
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.peel.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.peel.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.peel.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i = phi i32 [ %i.lq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.peel.i.peel.i.i ], [ %i.mc, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.peel.i.peel.i.i ], [ %i.lf, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.peel.i.peel.i.i ], [ %i.md, %bb.cb ] ; 4 uses
  %i.me = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.me)
  br i1 %i.km, label %.loopexit.i.i.peel.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 128
  br i1 %i.mf, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 2048
  br i1 %i.mg, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel.i.i, 65536
  %..i.i.peel.i.peel.i.i = select i1 %i.mh, i64 3, i64 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %.sroa.01.0.i.i.peel.i.peel.i.i = phi i64 [ 2, %bb.ce ], [ %..i.i.peel.i.peel.i.i, %bb.cf ], [ 1, %bb.cd ]
  %i.mi = add i64 %.sroa.01.0.i.i.peel.i.peel.i.i, %.sroa.442.0.copyload.i.i.i ; 15 uses
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i.i.i.peel.i.i = icmp ult i64 %i.mi, %.sroa.1351.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.peel.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mk = icmp eq i64 %i.mi, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.mk, label %bb.ck, label %.loopexit204.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.mi
  %i.mm = load i8, ptr %i.ml, align 1, !alias.scope !372, !noalias !375, !noundef !4
  %i.mn = icmp sgt i8 %i.mm, -65
  br i1 %i.mn, label %bb.ck, label %.loopexit204.i.i.i

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.cg
  %i.mo = icmp samesign eq i64 %i.mi, %.sroa.1351.0.copyload.i.i.i
  br i1 %i.mo, label %.loopexit.i.i.peel.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.1250.0.copyload.i.i.i, i64 %i.mi
  %i.mq = load i8, ptr %i.mp, align 1, !noalias !382, !noundef !4 ; 3 uses
  %i.mr = icmp sgt i8 %i.mq, -1
  br i1 %i.mr, label %.loopexit.i.i.peel.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i: ; preds = %bb.cl
  %i.ms = add nuw nsw i64 %i.mi, 1
  %i.mt = icmp samesign ne i64 %i.ms, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.mt)
  %i.mu = icmp samesign ugt i8 %i.mq, -33
  br i1 %i.mu, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i, label %.loopexit.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i
  %i.mv = add nuw nsw i64 %i.mi, 2
  %i.mw = icmp samesign ne i64 %i.mv, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.mw)
  %i.mx = icmp samesign ugt i8 %i.mq, -17
  br i1 %i.mx, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.peel.i.i, label %.loopexit.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i
  %i.my = add nuw nsw i64 %i.mi, 3
  %i.mz = icmp samesign ne i64 %i.my, %.sroa.1351.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.mz)
  br label %.loopexit.i.i.peel.i.i

.loopexit205.i.peel.i.i:                          ; preds = %bb.bz
  br i1 %i.km, label %.loopexit.i.i.peel.i.i, label %.loopexit.i.i.i

.loopexit.i.i.peel.i.i:                           ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.peel.i.i, %bb.cl, %.loopexit205.i.peel.i.i, %bb.ck, %bb.cc
  %.sroa.48.1202.i.peel.i.i = phi i64 [ %.sroa.442.0.copyload.i.i.i, %.loopexit205.i.peel.i.i ], [ %.sroa.1351.0.copyload.i.i.i, %bb.ck ], [ %.sroa.442.0.copyload.i.i.i, %bb.cc ], [ %i.mi, %bb.cl ], [ %i.mi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit16.i.i.i.i.peel.i.i ], [ %i.mi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit14.i.i.i.i.peel.i.i ], [ %i.mi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test.exit12.i.i.i.i.peel.i.i ] ; 6 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.48.1202.i.peel.i.i)
          to label %.noexc31.i.peel.i.i unwind label %.loopexit78.split.i.loopexit.split-lp.i.i, !noalias !346

.noexc31.i.peel.i.i:                              ; preds = %.loopexit.i.i.peel.i.i
  %i.na = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !365, !noalias !341, !noundef !4 ; 3 uses
  %i.nb = icmp sgt i64 %i.na, -1
  call void @llvm.assume(i1 %i.nb)
  %.not.i29.i.peel.i.i = icmp eq i64 %.sroa.48.1202.i.peel.i.i, 0
  br i1 %.not.i29.i.peel.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.noexc31.i.peel.i.i
  %i.nc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i24.i, align 8, !alias.scope !365, !noalias !341, !nonnull !4, !noundef !4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.na
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nd, ptr nonnull readonly align 1 %i.gz, i64 %.sroa.48.1202.i.peel.i.i, i1 false), !noalias !346
  %.pre.i30.i.peel.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !365, !noalias !341
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.noexc31.i.peel.i.i
  %i.ne = phi i64 [ %.pre.i30.i.peel.i.i, %bb.cm ], [ %i.na, %.noexc31.i.peel.i.i ]
  %i.nf = add i64 %i.ne, %.sroa.48.1202.i.peel.i.i
  store i64 %i.nf, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !365, !noalias !341
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hc)
          to label %.noexc35.i.peel.i.i unwind label %.loopexit78.split.i.loopexit.split-lp.i.i, !noalias !346

.noexc35.i.peel.i.i:                              ; preds = %bb.cn
  %i.ng = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !368, !noalias !341, !noundef !4 ; 3 uses
  %i.nh = icmp sgt i64 %i.ng, -1
  call void @llvm.assume(i1 %i.nh)
  br i1 %.not.i33.i.i.i, label %.lr.ph.i.i43.i.i.preheader, label %.lr.ph.i.i43.i.i.sink.split

.lr.ph.i.i43.i.i.sink.split:                      ; preds = %.noexc35.i.peel.i.i, %bb.dd
  %.sink211 = phi i64 [ %i.qm, %bb.dd ], [ %i.ng, %.noexc35.i.peel.i.i ]
  %.sroa.04.0155.i.i.i.ph = phi i64 [ %.sroa.48.1202.i.i.i, %bb.dd ], [ %.sroa.48.1202.i.peel.i.i, %.noexc35.i.peel.i.i ]
  %i.ni = load ptr, ptr %.sroa.4.0..sroa_idx.i.i24.i, align 8, !alias.scope !368, !noalias !341, !nonnull !4, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %.sink211
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nj, ptr nonnull readonly align 1 %i.hb, i64 %i.hc, i1 false), !noalias !371
  %.pre.i34.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i25.i, align 8, !alias.scope !368, !noalias !341
end_hunk_0
