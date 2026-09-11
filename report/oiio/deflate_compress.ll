Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/deflate_compress?download=true
inline.NumInlined: 62
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 103
begin_hunk_0_@deflate_compress_near_optimal:bb.a
  %.4.ptr.le370 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx
  br label %vector.ph

bb.bl:                                            ; preds = %.loopexit304
  %i.wz = load i32, ptr %i.af, align 4, !tbaa !41
  %i.xa = icmp ugt i32 %i.wz, 511
  br i1 %i.xa, label %bb.bm, label %deflate_near_optimal_merge_stats.exit.backedge

deflate_near_optimal_merge_stats.exit.backedge:   ; preds = %bb.bl, %bb.bm
  br label %deflate_near_optimal_merge_stats.exit

bb.bm:                                            ; preds = %bb.bl
  %i.xb = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.xc = sub i64 %i.xb, %i.dp                    ; 2 uses
  %i.xd = icmp sgt i64 %i.xc, 4999
  %i.xe = sub i64 %i.x, %i.xb
  %i.xf = icmp sgt i64 %i.xe, 4999
  %or.cond292 = select i1 %i.xd, i1 %i.xf, i1 false
  br i1 %or.cond292, label %bb.bn, label %deflate_near_optimal_merge_stats.exit.backedge

bb.bn:                                            ; preds = %bb.bm
  %i.xg = trunc i64 %i.xc to i32
  %i.xh = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.aa, i32 noundef %i.xg)
  br i1 %i.xh, label %bb.bo, label %vector.ph466

vector.ph466:                                     ; preds = %bb.bn
  %i.xi = load <4 x i32>, ptr %i.aa, align 4, !tbaa !14
  %i.xj = load <4 x i32>, ptr %i.ag, align 4, !tbaa !14
  %i.xk = add <4 x i32> %i.xj, %i.xi
  store <4 x i32> %i.xk, ptr %i.ag, align 4, !tbaa !14
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !14
  %i.xl = load <4 x i32>, ptr %i.ah, align 4, !tbaa !14
  %i.xm = load <4 x i32>, ptr %i.ai, align 4, !tbaa !14
  %i.xn = add <4 x i32> %i.xm, %i.xl
  store <4 x i32> %i.xn, ptr %i.ai, align 4, !tbaa !14
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !14
  %i.xo = load <2 x i32>, ptr %i.aj, align 4, !tbaa !14
  store i32 0, ptr %i.aj, align 4, !tbaa !14
  %i.xp = load <2 x i32>, ptr %i.ak, align 4, !tbaa !14
  %i.xq = add <2 x i32> %i.xp, %i.xo
  store <2 x i32> %i.xq, ptr %i.ak, align 4, !tbaa !14
  store i32 0, ptr %i.al, align 4, !tbaa !14
  %i.xr = load i32, ptr %i.af, align 4, !tbaa !41
  %i.xs = load i32, ptr %i.am, align 4, !tbaa !47
  %i.xt = add i32 %i.xs, %i.xr
  store i32 %i.xt, ptr %i.am, align 4, !tbaa !47
  store i32 0, ptr %i.af, align 4, !tbaa !41
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph466
  %index468 = phi i64 [ 0, %vector.ph466 ], [ %index.next473.1, %vector.body467 ] ; 4 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index468 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  %wide.load469 = load <4 x i32>, ptr %i.xu, align 4, !tbaa !28
  %wide.load470 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !28
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index468 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 2 uses
  %wide.load471 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !28
  %wide.load472 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !28
  %i.xy = add <4 x i32> %wide.load471, %wide.load469
  %i.xz = add <4 x i32> %wide.load472, %wide.load470
  store <4 x i32> %i.xy, ptr %i.xw, align 4, !tbaa !28
  store <4 x i32> %i.xz, ptr %i.xx, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.xu, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.xv, align 4, !tbaa !28
  %index.next473 = or disjoint i64 %index468, 8   ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next473 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16 ; 2 uses
  %wide.load469.1 = load <4 x i32>, ptr %i.ya, align 4, !tbaa !28
  %wide.load470.1 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !28
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next473 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16 ; 2 uses
  %wide.load471.1 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !28
  %wide.load472.1 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !28
  %i.ye = add <4 x i32> %wide.load471.1, %wide.load469.1
  %i.yf = add <4 x i32> %wide.load472.1, %wide.load470.1
  store <4 x i32> %i.ye, ptr %i.yc, align 4, !tbaa !28
  store <4 x i32> %i.yf, ptr %i.yd, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.ya, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.yb, align 4, !tbaa !28
  %index.next473.1 = add nuw nsw i64 %index468, 16 ; 2 uses
  %i.yg = icmp eq i64 %index.next473.1, 256
  br i1 %i.yg, label %scalar.ph465, label %vector.body467, !llvm.loop !89

scalar.ph465:                                     ; preds = %vector.body467
  %i.yh = load i32, ptr %i.dd, align 4, !tbaa !28
  %i.yi = load i32, ptr %i.de, align 4, !tbaa !28
  %i.yj = add i32 %i.yi, %i.yh
  store i32 %i.yj, ptr %i.de, align 4, !tbaa !28
  store i32 0, ptr %i.dd, align 4, !tbaa !28
  %i.yk = load i32, ptr %i.df, align 4, !tbaa !28
  %i.yl = load i32, ptr %i.dg, align 4, !tbaa !28
  %i.ym = add i32 %i.yl, %i.yk
  store i32 %i.ym, ptr %i.dg, align 4, !tbaa !28
  store i32 0, ptr %i.df, align 4, !tbaa !28
  %i.yn = load i32, ptr %i.dh, align 4, !tbaa !28
  %i.yo = load i32, ptr %i.di, align 4, !tbaa !28
  %i.yp = add i32 %i.yo, %i.yn
  store i32 %i.yp, ptr %i.di, align 4, !tbaa !28
  store i32 0, ptr %i.dh, align 4, !tbaa !28
  br label %deflate_near_optimal_merge_stats.exit.outer

bb.bo:                                            ; preds = %bb.bn
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx ; 4 uses
  %.not419 = icmp eq ptr %.0162.ph, null
  br i1 %.not419, label %vector.ph, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.3.lcssa535.lcssa536 = ptrtoaddr ptr %.3 to i64
  %.0162.ph.lcssa532533 = ptrtoaddr ptr %.0162.ph to i64
  %i.yq = ptrtoint ptr %.0162.ph to i64           ; 2 uses
  %i.yr = ptrtoint ptr %.3 to i64
  %i.ys = sub i64 %i.yr, %i.yq
  %i.yt = trunc i64 %i.ys to i32                  ; 3 uses
  %i.yu = trunc i64 %.0162.ph.lcssa532533 to i32
  %i.yv = trunc i64 %.3.lcssa535.lcssa536 to i32
  %xtraiter537 = and i32 %i.yt, 7                 ; 2 uses
  %lcmp.mod538.not = icmp eq i32 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bp, %.prol.preheader
  %.5.prol = phi ptr [ %i.za, %.prol.preheader ], [ %.4.ptr.le, %bb.bp ]
  %.0153.prol = phi i32 [ %i.zb, %.prol.preheader ], [ %i.yt, %bb.bp ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bp ]
  %i.yw = getelementptr inbounds i8, ptr %.5.prol, i64 -4 ; 2 uses
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !45
  %i.yy = zext i16 %i.yx to i64
  %i.yz = sub nsw i64 0, %i.yy
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yw, i64 %i.yz ; 3 uses
  %i.zb = add i32 %.0153.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter537
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !90

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bp
  %.lcssa530.unr = phi ptr [ poison, %bb.bp ], [ %i.za, %.prol.preheader ]
  %.5.unr = phi ptr [ %.4.ptr.le, %bb.bp ], [ %i.za, %.prol.preheader ]
  %.0153.unr = phi i32 [ %i.yt, %bb.bp ], [ %i.zb, %.prol.preheader ]
  %i.zc = sub i32 %i.yu, %i.yv
  %i.zd = icmp ugt i32 %i.zc, -8
  br i1 %i.zd, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.5 = phi ptr [ %i.aar, %.new ], [ %.5.unr, %.prol.loopexit ]
  %.0153 = phi i32 [ %i.aas, %.new ], [ %.0153.unr, %.prol.loopexit ]
  %i.ze = getelementptr inbounds i8, ptr %.5, i64 -4 ; 2 uses
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !45
  %i.zg = zext i16 %i.zf to i64
  %i.zh = sub nsw i64 0, %i.zg
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.ze, i64 %i.zh
  %i.zj = getelementptr inbounds i8, ptr %i.zi, i64 -4 ; 2 uses
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !45
  %i.zl = zext i16 %i.zk to i64
  %i.zm = sub nsw i64 0, %i.zl
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %i.zm
  %i.zo = getelementptr inbounds i8, ptr %i.zn, i64 -4 ; 2 uses
  %i.zp = load i16, ptr %i.zo, align 2, !tbaa !45
  %i.zq = zext i16 %i.zp to i64
  %i.zr = sub nsw i64 0, %i.zq
  %i.zs = getelementptr inbounds [4 x i8], ptr %i.zo, i64 %i.zr
  %i.zt = getelementptr inbounds i8, ptr %i.zs, i64 -4 ; 2 uses
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !45
  %i.zv = zext i16 %i.zu to i64
  %i.zw = sub nsw i64 0, %i.zv
  %i.zx = getelementptr inbounds [4 x i8], ptr %i.zt, i64 %i.zw
  %i.zy = getelementptr inbounds i8, ptr %i.zx, i64 -4 ; 2 uses
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !45
  %i.aaa = zext i16 %i.zz to i64
  %i.aab = sub nsw i64 0, %i.aaa
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.zy, i64 %i.aab
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 -4 ; 2 uses
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !45
  %i.aaf = zext i16 %i.aae to i64
  %i.aag = sub nsw i64 0, %i.aaf
  %i.aah = getelementptr inbounds [4 x i8], ptr %i.aad, i64 %i.aag
  %i.aai = getelementptr inbounds i8, ptr %i.aah, i64 -4 ; 2 uses
  %i.aaj = load i16, ptr %i.aai, align 2, !tbaa !45
  %i.aak = zext i16 %i.aaj to i64
  %i.aal = sub nsw i64 0, %i.aak
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.aai, i64 %i.aal
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 -4 ; 2 uses
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !45
  %i.aap = zext i16 %i.aao to i64
  %i.aaq = sub nsw i64 0, %i.aap
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aan, i64 %i.aaq ; 2 uses
  %i.aas = add i32 %.0153, -8                     ; 2 uses
  %.not191.7 = icmp eq i32 %i.aas, 0
  br i1 %.not191.7, label %.unr-lcssa, label %.new, !llvm.loop !91

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa530 = phi ptr [ %.lcssa530.unr, %.prol.loopexit ], [ %i.aar, %.new ] ; 3 uses
  %i.aat = sub i64 %i.yq, %i.dp
  %i.aau = trunc i64 %i.aat to i32
  %i.aav = icmp eq ptr %.0151, %1
  %i.aaw = ptrtoint ptr %.4.ptr.le to i64
  %i.aax = ptrtoint ptr %.lcssa530 to i64
  %i.aay = sub i64 %i.aaw, %i.aax                 ; 2 uses
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0151, i32 noundef %i.aau, ptr noundef nonnull %.lcssa530, i1 noundef zeroext %i.aav, i1 noundef zeroext false, ptr noundef %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %.ptr296, ptr nonnull align 2 %.lcssa530, i64 %i.aay, i1 false)
  %.add = add nuw nsw i64 %i.aay, 530368
  %i.aaz = load <4 x i32>, ptr %i.ag, align 4, !tbaa !14
  store <4 x i32> %i.aaz, ptr %i.ao, align 4, !tbaa !28
  %i.aba = load <4 x i32>, ptr %i.ai, align 4, !tbaa !14
  store <4 x i32> %i.aba, ptr %i.ap, align 4, !tbaa !28
  %i.abb = load <2 x i32>, ptr %i.ak, align 4, !tbaa !14
  store <2 x i32> %i.abb, ptr %i.aq, align 4, !tbaa !28
  %i.abc = load i32, ptr %i.am, align 4, !tbaa !48
  store i32 %i.abc, ptr %i.ar, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false), !tbaa !14
  store i32 0, ptr %i.am, align 4, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.an, i8 0, i64 1036, i1 false)
  br label %bb.bq

vector.ph:                                        ; preds = %.thread, %bb.bo
  %.4.ptr.le372 = phi ptr [ %.4.ptr.le370, %.thread ], [ %.4.ptr.le, %bb.bo ]
  %i.abd = load <4 x i32>, ptr %i.aa, align 4, !tbaa !14
  %i.abe = load <4 x i32>, ptr %i.ag, align 4, !tbaa !14
  %i.abf = add <4 x i32> %i.abe, %i.abd
  store <4 x i32> %i.abf, ptr %i.ag, align 4, !tbaa !14
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !14
  %i.abg = load <4 x i32>, ptr %i.ah, align 4, !tbaa !14
  %i.abh = load <4 x i32>, ptr %i.ai, align 4, !tbaa !14
  %i.abi = add <4 x i32> %i.abh, %i.abg
  store <4 x i32> %i.abi, ptr %i.ai, align 4, !tbaa !14
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !14
  %i.abj = load <2 x i32>, ptr %i.aj, align 4, !tbaa !14
  store i32 0, ptr %i.aj, align 4, !tbaa !14
  %i.abk = load <2 x i32>, ptr %i.ak, align 4, !tbaa !14
  %i.abl = add <2 x i32> %i.abk, %i.abj
  store <2 x i32> %i.abl, ptr %i.ak, align 4, !tbaa !14
  store i32 0, ptr %i.al, align 4, !tbaa !14
  %i.abm = load i32, ptr %i.af, align 4, !tbaa !41
  %i.abn = load i32, ptr %i.am, align 4, !tbaa !47
  %i.abo = add i32 %i.abn, %i.abm
  store i32 %i.abo, ptr %i.am, align 4, !tbaa !47
  store i32 0, ptr %i.af, align 4, !tbaa !41
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.abp, align 4, !tbaa !28
  %wide.load462 = load <4 x i32>, ptr %i.abq, align 4, !tbaa !28
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16 ; 2 uses
  %wide.load463 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !28
  %wide.load464 = load <4 x i32>, ptr %i.abs, align 4, !tbaa !28
  %i.abt = add <4 x i32> %wide.load463, %wide.load
  %i.abu = add <4 x i32> %wide.load464, %wide.load462
  store <4 x i32> %i.abt, ptr %i.abr, align 4, !tbaa !28
  store <4 x i32> %i.abu, ptr %i.abs, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.abp, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.abq, align 4, !tbaa !28
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.abv, align 4, !tbaa !28
  %wide.load462.1 = load <4 x i32>, ptr %i.abw, align 4, !tbaa !28
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16 ; 2 uses
  %wide.load463.1 = load <4 x i32>, ptr %i.abx, align 4, !tbaa !28
  %wide.load464.1 = load <4 x i32>, ptr %i.aby, align 4, !tbaa !28
  %i.abz = add <4 x i32> %wide.load463.1, %wide.load.1
  %i.aca = add <4 x i32> %wide.load464.1, %wide.load462.1
  store <4 x i32> %i.abz, ptr %i.abx, align 4, !tbaa !28
  store <4 x i32> %i.aca, ptr %i.aby, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.abv, align 4, !tbaa !28
  store <4 x i32> zeroinitializer, ptr %i.abw, align 4, !tbaa !28
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.acb = icmp eq i64 %index.next.1, 256
  br i1 %i.acb, label %scalar.ph, label %vector.body, !llvm.loop !92

scalar.ph:                                        ; preds = %vector.body
  %i.acc = load i32, ptr %i.dj, align 4, !tbaa !28
  %i.acd = load i32, ptr %i.dk, align 4, !tbaa !28
  %i.ace = add i32 %i.acd, %i.acc
  store i32 %i.ace, ptr %i.dk, align 4, !tbaa !28
  store i32 0, ptr %i.dj, align 4, !tbaa !28
  %i.acf = load i32, ptr %i.dl, align 4, !tbaa !28
  %i.acg = load i32, ptr %i.dm, align 4, !tbaa !28
  %i.ach = add i32 %i.acg, %i.acf
  store i32 %i.ach, ptr %i.dm, align 4, !tbaa !28
  store i32 0, ptr %i.dl, align 4, !tbaa !28
  %i.aci = load i32, ptr %i.dn, align 4, !tbaa !28
  %i.acj = load i32, ptr %i.do, align 4, !tbaa !28
  %i.ack = add i32 %i.acj, %i.aci
  store i32 %i.ack, ptr %i.do, align 4, !tbaa !28
  store i32 0, ptr %i.dn, align 4, !tbaa !28
  %i.acl = ptrtoint ptr %.3 to i64
  %i.acm = sub i64 %i.acl, %i.dp
  %i.acn = trunc i64 %i.acm to i32
  %i.aco = icmp eq ptr %.0151, %1
  %i.acp = icmp eq ptr %.3, %i.w
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0151, i32 noundef %i.acn, ptr noundef nonnull %.4.ptr.le372, i1 noundef zeroext %i.aco, i1 noundef zeroext %i.acp, ptr noundef %i.b)
  %i.acq = load <4 x i32>, ptr %i.ag, align 4, !tbaa !14
  store <4 x i32> %i.acq, ptr %i.ao, align 4, !tbaa !28
  %i.acr = load <4 x i32>, ptr %i.ai, align 4, !tbaa !14
  store <4 x i32> %i.acr, ptr %i.ap, align 4, !tbaa !28
  %i.acs = load <2 x i32>, ptr %i.ak, align 4, !tbaa !14
  store <2 x i32> %i.acs, ptr %i.aq, align 4, !tbaa !28
  %i.act = load i32, ptr %i.am, align 4, !tbaa !48
  store i32 %i.act, ptr %i.ar, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2072) %i.ab, i8 0, i64 2072, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %scalar.ph, %.unr-lcssa
  %.6.idx = phi i64 [ %.add, %.unr-lcssa ], [ 530368, %scalar.ph ]
  %.1152 = phi ptr [ %.0162.ph, %.unr-lcssa ], [ %.3, %scalar.ph ]
  %.not192 = icmp eq ptr %.3, %i.w
  br i1 %.not192, label %bb.br, label %bb.c, !llvm.loop !93

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i64 @libdeflate_deflate_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.deflate_output_bitstream, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !24
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @deflate_compress_none(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %4, 9
  br i1 %i.d, label %bb.h, label %bb.d, !prof !36

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %5, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !54
  %i.j = load ptr, ptr %0, align 32, !tbaa !25
  call void %i.j(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %5) #16
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !54
  %.not17 = icmp ult ptr %i.k, %i.l
  br i1 %.not17, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.e, align 8, !tbaa !52
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %5, align 8, !tbaa !51
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.p, ptr %i.f, align 8, !tbaa !53
  store i8 %i.o, ptr %i.k, align 1, !tbaa !28
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !53
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %.pre, %bb.f ], [ %i.k, %bb.e ]
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.g, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.t, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @deflate_compress_none(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %.preheader, !prof !36

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %3, 5
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %2, align 1, !tbaa !28
  store i32 -65536, ptr %i.g, align 1
  br label %.critedge

end_hunk_0
