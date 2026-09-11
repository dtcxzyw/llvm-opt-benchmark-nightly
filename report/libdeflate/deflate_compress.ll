Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
begin_hunk_0_@deflate_compress_near_optimal:bb.a
  %.4.ptr.le371 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx
  br label %vector.ph

bb.bn:                                            ; preds = %.loopexit304
  %i.xa = load i32, ptr %i.af, align 4, !tbaa !50
  %i.xb = icmp ugt i32 %i.xa, 511
  br i1 %i.xb, label %bb.bo, label %deflate_near_optimal_merge_stats.exit.backedge

deflate_near_optimal_merge_stats.exit.backedge:   ; preds = %bb.bn, %bb.bo
  br label %deflate_near_optimal_merge_stats.exit

bb.bo:                                            ; preds = %bb.bn
  %i.xc = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.xd = sub i64 %i.xc, %i.dq                    ; 2 uses
  %i.xe = icmp sgt i64 %i.xd, 4999
  %i.xf = sub i64 %i.x, %i.xc
  %i.xg = icmp sgt i64 %i.xf, 4999
  %or.cond292 = select i1 %i.xe, i1 %i.xg, i1 false
  br i1 %or.cond292, label %bb.bp, label %deflate_near_optimal_merge_stats.exit.backedge

bb.bp:                                            ; preds = %bb.bo
  %i.xh = trunc i64 %i.xd to i32
  %i.xi = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.aa, i32 noundef %i.xh)
  br i1 %i.xi, label %bb.bq, label %vector.ph467

vector.ph467:                                     ; preds = %bb.bp
  %i.xj = load <4 x i32>, ptr %i.aa, align 4, !tbaa !31
  %i.xk = load <4 x i32>, ptr %i.ag, align 4, !tbaa !31
  %i.xl = add <4 x i32> %i.xk, %i.xj
  store <4 x i32> %i.xl, ptr %i.ag, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !31
  %i.xm = load <4 x i32>, ptr %i.ah, align 4, !tbaa !31
  %i.xn = load <4 x i32>, ptr %i.ai, align 4, !tbaa !31
  %i.xo = add <4 x i32> %i.xn, %i.xm
  store <4 x i32> %i.xo, ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !31
  %i.xp = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31
  store i32 0, ptr %i.aj, align 4, !tbaa !31
  %i.xq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !31
  %i.xr = add <2 x i32> %i.xq, %i.xp
  store <2 x i32> %i.xr, ptr %i.ak, align 4, !tbaa !31
  store i32 0, ptr %i.al, align 4, !tbaa !31
  %i.xs = load i32, ptr %i.af, align 4, !tbaa !50
  %i.xt = load i32, ptr %i.am, align 4, !tbaa !55
  %i.xu = add i32 %i.xt, %i.xs
  store i32 %i.xu, ptr %i.am, align 4, !tbaa !55
  store i32 0, ptr %i.af, align 4, !tbaa !50
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph467
  %index469 = phi i64 [ 0, %vector.ph467 ], [ %index.next474.1, %vector.body468 ] ; 4 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index469 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  %wide.load470 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !30
  %wide.load471 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !30
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index469 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 2 uses
  %wide.load472 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !30
  %wide.load473 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !30
  %i.xz = add <4 x i32> %wide.load472, %wide.load470
  %i.ya = add <4 x i32> %wide.load473, %wide.load471
  store <4 x i32> %i.xz, ptr %i.xx, align 4, !tbaa !30
  store <4 x i32> %i.ya, ptr %i.xy, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.xv, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.xw, align 4, !tbaa !30
  %index.next474 = or disjoint i64 %index469, 8   ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next474 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16 ; 2 uses
  %wide.load470.1 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !30
  %wide.load471.1 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !30
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next474 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16 ; 2 uses
  %wide.load472.1 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !30
  %wide.load473.1 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !30
  %i.yf = add <4 x i32> %wide.load472.1, %wide.load470.1
  %i.yg = add <4 x i32> %wide.load473.1, %wide.load471.1
  store <4 x i32> %i.yf, ptr %i.yd, align 4, !tbaa !30
  store <4 x i32> %i.yg, ptr %i.ye, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.yb, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.yc, align 4, !tbaa !30
  %index.next474.1 = add nuw nsw i64 %index469, 16 ; 2 uses
  %i.yh = icmp eq i64 %index.next474.1, 256
  br i1 %i.yh, label %scalar.ph466, label %vector.body468, !llvm.loop !99

scalar.ph466:                                     ; preds = %vector.body468
  %i.yi = load i32, ptr %i.de, align 4, !tbaa !30
  %i.yj = load i32, ptr %i.df, align 4, !tbaa !30
  %i.yk = add i32 %i.yj, %i.yi
  store i32 %i.yk, ptr %i.df, align 4, !tbaa !30
  store i32 0, ptr %i.de, align 4, !tbaa !30
  %i.yl = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.ym = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.yn = add i32 %i.ym, %i.yl
  store i32 %i.yn, ptr %i.dh, align 4, !tbaa !30
  store i32 0, ptr %i.dg, align 4, !tbaa !30
  %i.yo = load i32, ptr %i.di, align 4, !tbaa !30
  %i.yp = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.yq = add i32 %i.yp, %i.yo
  store i32 %i.yq, ptr %i.dj, align 4, !tbaa !30
  store i32 0, ptr %i.di, align 4, !tbaa !30
  br label %deflate_near_optimal_merge_stats.exit.outer

bb.bq:                                            ; preds = %bb.bp
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx ; 4 uses
  %.not420 = icmp eq ptr %.0163.ph, null
  br i1 %.not420, label %vector.ph, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.3.lcssa537.lcssa538 = ptrtoaddr ptr %.3 to i64
  %.0163.ph.lcssa534535 = ptrtoaddr ptr %.0163.ph to i64
  %i.yr = ptrtoint ptr %.0163.ph to i64           ; 2 uses
  %i.ys = ptrtoint ptr %.3 to i64
  %i.yt = sub i64 %i.ys, %i.yr
  %i.yu = trunc i64 %i.yt to i32                  ; 3 uses
  %i.yv = trunc i64 %.0163.ph.lcssa534535 to i32
  %i.yw = trunc i64 %.3.lcssa537.lcssa538 to i32
  %xtraiter539 = and i32 %i.yu, 7                 ; 2 uses
  %lcmp.mod540.not = icmp eq i32 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.br, %.prol.preheader
  %.5.prol = phi ptr [ %i.zb, %.prol.preheader ], [ %.4.ptr.le, %bb.br ]
  %.0154.prol = phi i32 [ %i.zc, %.prol.preheader ], [ %i.yu, %bb.br ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.br ]
  %i.yx = getelementptr inbounds i8, ptr %.5.prol, i64 -4 ; 2 uses
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !53
  %i.yz = zext i16 %i.yy to i64
  %i.za = sub nsw i64 0, %i.yz
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.yx, i64 %i.za ; 3 uses
  %i.zc = add i32 %.0154.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter539
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !100

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.br
  %.lcssa531.unr = phi ptr [ poison, %bb.br ], [ %i.zb, %.prol.preheader ]
  %.5.unr = phi ptr [ %.4.ptr.le, %bb.br ], [ %i.zb, %.prol.preheader ]
  %.0154.unr = phi i32 [ %i.yu, %bb.br ], [ %i.zc, %.prol.preheader ]
  %i.zd = sub i32 %i.yv, %i.yw
  %i.ze = icmp ugt i32 %i.zd, -8
  br i1 %i.ze, label %.unr-lcssa, label %.new533

.new533:                                          ; preds = %.prol.loopexit, %.new533
  %.5 = phi ptr [ %i.aas, %.new533 ], [ %.5.unr, %.prol.loopexit ]
  %.0154 = phi i32 [ %i.aat, %.new533 ], [ %.0154.unr, %.prol.loopexit ]
  %i.zf = getelementptr inbounds i8, ptr %.5, i64 -4 ; 2 uses
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !53
  %i.zh = zext i16 %i.zg to i64
  %i.zi = sub nsw i64 0, %i.zh
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zi
  %i.zk = getelementptr inbounds i8, ptr %i.zj, i64 -4 ; 2 uses
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !53
  %i.zm = zext i16 %i.zl to i64
  %i.zn = sub nsw i64 0, %i.zm
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.zn
  %i.zp = getelementptr inbounds i8, ptr %i.zo, i64 -4 ; 2 uses
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !53
  %i.zr = zext i16 %i.zq to i64
  %i.zs = sub nsw i64 0, %i.zr
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.zs
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -4 ; 2 uses
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !53
  %i.zw = zext i16 %i.zv to i64
  %i.zx = sub nsw i64 0, %i.zw
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %i.zx
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -4 ; 2 uses
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !53
  %i.aab = zext i16 %i.aaa to i64
  %i.aac = sub nsw i64 0, %i.aab
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aac
  %i.aae = getelementptr inbounds i8, ptr %i.aad, i64 -4 ; 2 uses
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !53
  %i.aag = zext i16 %i.aaf to i64
  %i.aah = sub nsw i64 0, %i.aag
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.aah
  %i.aaj = getelementptr inbounds i8, ptr %i.aai, i64 -4 ; 2 uses
  %i.aak = load i16, ptr %i.aaj, align 2, !tbaa !53
  %i.aal = zext i16 %i.aak to i64
  %i.aam = sub nsw i64 0, %i.aal
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.aam
  %i.aao = getelementptr inbounds i8, ptr %i.aan, i64 -4 ; 2 uses
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !53
  %i.aaq = zext i16 %i.aap to i64
  %i.aar = sub nsw i64 0, %i.aaq
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aar ; 2 uses
  %i.aat = add i32 %.0154, -8                     ; 2 uses
  %.not192.7 = icmp eq i32 %i.aat, 0
  br i1 %.not192.7, label %.unr-lcssa, label %.new533, !llvm.loop !101

.unr-lcssa:                                       ; preds = %.new533, %.prol.loopexit
  %.lcssa531 = phi ptr [ %.lcssa531.unr, %.prol.loopexit ], [ %i.aas, %.new533 ] ; 3 uses
  %i.aau = sub i64 %i.yr, %i.dq
  %i.aav = trunc i64 %i.aau to i32
  %i.aaw = icmp eq ptr %.0152, %1
  %i.aax = ptrtoint ptr %.4.ptr.le to i64
  %i.aay = ptrtoint ptr %.lcssa531 to i64
  %i.aaz = sub i64 %i.aax, %i.aay                 ; 2 uses
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0152, i32 noundef %i.aav, ptr noundef nonnull %.lcssa531, i1 noundef zeroext %i.aaw, i1 noundef zeroext false, ptr noundef %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %.ptr296, ptr nonnull align 2 %.lcssa531, i64 %i.aaz, i1 false)
  %.add = add nuw nsw i64 %i.aaz, 530368
  %i.aba = load <4 x i32>, ptr %i.ag, align 16, !tbaa !31
  store <4 x i32> %i.aba, ptr %i.ao, align 32, !tbaa !30
  %i.abb = load <4 x i32>, ptr %i.ai, align 32, !tbaa !31
  store <4 x i32> %i.abb, ptr %i.ap, align 16, !tbaa !30
  %i.abc = load <2 x i32>, ptr %i.ak, align 16, !tbaa !31
  store <2 x i32> %i.abc, ptr %i.aq, align 32, !tbaa !30
  %i.abd = load i32, ptr %i.am, align 4, !tbaa !56
  store i32 %i.abd, ptr %i.ar, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false), !tbaa !31
  store i32 0, ptr %i.am, align 4, !tbaa !56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.an, i8 0, i64 1036, i1 false)
  br label %bb.bs

vector.ph:                                        ; preds = %.thread, %bb.bq
  %.4.ptr.le373 = phi ptr [ %.4.ptr.le371, %.thread ], [ %.4.ptr.le, %bb.bq ]
  %i.abe = load <4 x i32>, ptr %i.aa, align 4, !tbaa !31
  %i.abf = load <4 x i32>, ptr %i.ag, align 4, !tbaa !31
  %i.abg = add <4 x i32> %i.abf, %i.abe
  store <4 x i32> %i.abg, ptr %i.ag, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !31
  %i.abh = load <4 x i32>, ptr %i.ah, align 4, !tbaa !31
  %i.abi = load <4 x i32>, ptr %i.ai, align 4, !tbaa !31
  %i.abj = add <4 x i32> %i.abi, %i.abh
  store <4 x i32> %i.abj, ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !31
  %i.abk = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31
  store i32 0, ptr %i.aj, align 4, !tbaa !31
  %i.abl = load <2 x i32>, ptr %i.ak, align 4, !tbaa !31
  %i.abm = add <2 x i32> %i.abl, %i.abk
  store <2 x i32> %i.abm, ptr %i.ak, align 4, !tbaa !31
  store i32 0, ptr %i.al, align 4, !tbaa !31
  %i.abn = load i32, ptr %i.af, align 4, !tbaa !50
  %i.abo = load i32, ptr %i.am, align 4, !tbaa !55
  %i.abp = add i32 %i.abo, %i.abn
  store i32 %i.abp, ptr %i.am, align 4, !tbaa !55
  store i32 0, ptr %i.af, align 4, !tbaa !50
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.abq, align 4, !tbaa !30
  %wide.load463 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !30
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16 ; 2 uses
  %wide.load464 = load <4 x i32>, ptr %i.abs, align 4, !tbaa !30
  %wide.load465 = load <4 x i32>, ptr %i.abt, align 4, !tbaa !30
  %i.abu = add <4 x i32> %wide.load464, %wide.load
  %i.abv = add <4 x i32> %wide.load465, %wide.load463
  store <4 x i32> %i.abu, ptr %i.abs, align 4, !tbaa !30
  store <4 x i32> %i.abv, ptr %i.abt, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abq, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abr, align 4, !tbaa !30
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.abw, align 4, !tbaa !30
  %wide.load463.1 = load <4 x i32>, ptr %i.abx, align 4, !tbaa !30
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16 ; 2 uses
  %wide.load464.1 = load <4 x i32>, ptr %i.aby, align 4, !tbaa !30
  %wide.load465.1 = load <4 x i32>, ptr %i.abz, align 4, !tbaa !30
  %i.aca = add <4 x i32> %wide.load464.1, %wide.load.1
  %i.acb = add <4 x i32> %wide.load465.1, %wide.load463.1
  store <4 x i32> %i.aca, ptr %i.aby, align 4, !tbaa !30
  store <4 x i32> %i.acb, ptr %i.abz, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abw, align 4, !tbaa !30
  store <4 x i32> zeroinitializer, ptr %i.abx, align 4, !tbaa !30
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.acc = icmp eq i64 %index.next.1, 256
  br i1 %i.acc, label %scalar.ph, label %vector.body, !llvm.loop !102

scalar.ph:                                        ; preds = %vector.body
  %i.acd = load i32, ptr %i.dk, align 4, !tbaa !30
  %i.ace = load i32, ptr %i.dl, align 4, !tbaa !30
  %i.acf = add i32 %i.ace, %i.acd
  store i32 %i.acf, ptr %i.dl, align 4, !tbaa !30
  store i32 0, ptr %i.dk, align 4, !tbaa !30
  %i.acg = load i32, ptr %i.dm, align 4, !tbaa !30
  %i.ach = load i32, ptr %i.dn, align 4, !tbaa !30
  %i.aci = add i32 %i.ach, %i.acg
  store i32 %i.aci, ptr %i.dn, align 4, !tbaa !30
  store i32 0, ptr %i.dm, align 4, !tbaa !30
  %i.acj = load i32, ptr %i.do, align 4, !tbaa !30
  %i.ack = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.acl = add i32 %i.ack, %i.acj
  store i32 %i.acl, ptr %i.dp, align 4, !tbaa !30
  store i32 0, ptr %i.do, align 4, !tbaa !30
  %i.acm = ptrtoint ptr %.3 to i64
  %i.acn = sub i64 %i.acm, %i.dq
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = icmp eq ptr %.0152, %1
  %i.acq = icmp eq ptr %.3, %i.w
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0152, i32 noundef %i.aco, ptr noundef nonnull %.4.ptr.le373, i1 noundef zeroext %i.acp, i1 noundef zeroext %i.acq, ptr noundef %i.b)
  %i.acr = load <4 x i32>, ptr %i.ag, align 4, !tbaa !31
  store <4 x i32> %i.acr, ptr %i.ao, align 4, !tbaa !30
  %i.acs = load <4 x i32>, ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> %i.acs, ptr %i.ap, align 4, !tbaa !30
  %i.act = load <2 x i32>, ptr %i.ak, align 4, !tbaa !31
  store <2 x i32> %i.act, ptr %i.aq, align 4, !tbaa !30
  %i.acu = load i32, ptr %i.am, align 4, !tbaa !56
  store i32 %i.acu, ptr %i.ar, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2072) %i.ab, i8 0, i64 2072, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %scalar.ph, %.unr-lcssa
  %.6.idx = phi i64 [ %.add, %.unr-lcssa ], [ 530368, %scalar.ph ]
  %.1153 = phi ptr [ %.0163.ph, %.unr-lcssa ], [ %.3, %scalar.ph ]
  %.not193 = icmp eq ptr %.3, %i.w
  br i1 %.not193, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.acv = load i8, ptr %i.as, align 8, !tbaa !47, !range !48, !noundef !49
  %i.acw = trunc nuw i8 %i.acv to i1
  br i1 %i.acw, label %.critedge, label %bb.c, !llvm.loop !103

.critedge:                                        ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @libdeflate_alloc_compressor(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @libdeflate_alloc_compressor_ex(i32 noundef %0, ptr noundef nonnull @libdeflate_alloc_compressor.defaults)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i64 @libdeflate_deflate_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.deflate_output_bitstream, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @deflate_compress_none(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !47
  %i.i = load ptr, ptr %0, align 32, !tbaa !27
  call void %i.i(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %5) #16
  %i.j = load i8, ptr %i.h, align 8, !tbaa !47, !range !48, !noundef !49
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.d, align 8, !tbaa !58
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %5, align 8, !tbaa !57
  %i.n = trunc i64 %i.m to i8
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.e, align 8, !tbaa !59
  store i8 %i.n, ptr %i.o, align 1, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.t, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @deflate_compress_none(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %.preheader, !prof !39

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %3, 5
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
