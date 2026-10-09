Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lparser?download=true
inline.NumInlined: 174
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@chunk:bb.a
str_checkname.exit.i19:                           ; preds = %bb.ba, %bb.az
  %i.xj = load ptr, ptr %i.l, align 8, !tbaa !34
  call void @luaX_next(ptr noundef nonnull %0) #6, !inline_history !141
  call fastcc void @new_localvar(ptr noundef nonnull %0, ptr noundef %i.xj, i32 noundef 0), !inline_history !141
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 60
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !81
  store i32 -1, ptr %i.m, align 8, !tbaa !83
  store i32 -1, ptr %i.n, align 4, !tbaa !67
  store i32 6, ptr %18, align 8, !tbaa !66
  store i32 %i.xl, ptr %i.o, align 8, !tbaa !34
  call void @luaK_reserveregs(ptr noundef %i.xe, i32 noundef 1) #6, !inline_history !141
  %.val.i20 = load ptr, ptr %i.j, align 8, !tbaa !44 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.val.i20, i64 74 ; 2 uses
  %i.xn = load i8, ptr %i.xm, align 2, !tbaa !72
  %i.xo = add i8 %i.xn, 1                         ; 2 uses
  store i8 %i.xo, ptr %i.xm, align 2, !tbaa !72
  %i.xp = getelementptr inbounds nuw i8, ptr %.val.i20, i64 48
  %i.xq = load i32, ptr %i.xp, align 8, !tbaa !48
  %i.xr = load ptr, ptr %.val.i20, align 8, !tbaa !43
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 48
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !76
  %i.xu = zext i8 %i.xo to i64
  %i.xv = getelementptr i8, ptr %.val.i20, i64 194
  %i.xw = getelementptr [2 x i8], ptr %i.xv, i64 %i.xu
  %i.xx = load i16, ptr %i.xw, align 2, !tbaa !77
  %i.xy = zext i16 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %i.xt, i64 %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store i32 %i.xq, ptr %i.ya, align 8, !tbaa !84
  %i.yb = load i32, ptr %i.i, align 4, !tbaa !64  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  call fastcc void @open_func(ptr noundef nonnull %0, ptr noundef %17), !inline_history !142
  %i.yc = load ptr, ptr %17, align 8, !tbaa !43
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 96
  store i32 %i.yb, ptr %i.yd, align 8, !tbaa !85
  %i.ye = load i32, ptr %i.h, align 8, !tbaa !62
  %.not.i.i57 = icmp eq i32 %i.ye, 40
  br i1 %.not.i.i57, label %checknext.exit58, label %bb.bb

bb.bb:                                            ; preds = %str_checkname.exit.i19
  %i.yf = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.yg = call ptr @luaX_token2str(ptr noundef nonnull %0, i32 noundef range(i32 40, 288) 40) #6
  %i.yh = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.yf, ptr noundef nonnull @.str, ptr noundef %i.yg) #6
  call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef %i.yh) #6
  br label %checknext.exit58

checknext.exit58:                                 ; preds = %str_checkname.exit.i19, %bb.bb
  call void @luaX_next(ptr noundef nonnull %0) #6
  call fastcc void @parlist(ptr noundef nonnull %0), !inline_history !142
  %i.yi = load i32, ptr %i.h, align 8, !tbaa !62
  %.not.i.i56 = icmp eq i32 %i.yi, 41
  br i1 %.not.i.i56, label %checknext.exit, label %bb.bc

bb.bc:                                            ; preds = %checknext.exit58
  %i.yj = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.yk = call ptr @luaX_token2str(ptr noundef nonnull %0, i32 noundef range(i32 40, 288) 41) #6
  %i.yl = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.yj, ptr noundef nonnull @.str, ptr noundef %i.yk) #6
  call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef %i.yl) #6
  br label %checknext.exit

checknext.exit:                                   ; preds = %checknext.exit58, %bb.bc
  call void @luaX_next(ptr noundef nonnull %0) #6
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !142
  %i.ym = load i32, ptr %i.i, align 4, !tbaa !64
  %i.yn = load ptr, ptr %17, align 8, !tbaa !43
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 100
  store i32 %i.ym, ptr %i.yo, align 4, !tbaa !86
  call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 262, i32 noundef 265, i32 noundef %i.yb), !inline_history !142
  call fastcc void @close_func(ptr noundef nonnull %0), !inline_history !142
  call fastcc void @pushclosure(ptr noundef nonnull %0, ptr noundef %17, ptr noundef nonnull %19), !inline_history !142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @luaK_storevar(ptr noundef nonnull %i.xe, ptr noundef nonnull %18, ptr noundef nonnull %19) #6, !inline_history !141
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !48
  %i.yr = load ptr, ptr %i.xe, align 8, !tbaa !43
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 48
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !76
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xe, i64 74
  %i.yv = load i8, ptr %i.yu, align 2, !tbaa !72
  %i.yw = zext i8 %i.yv to i64
  %i.yx = getelementptr i8, ptr %i.xe, i64 194
  %i.yy = getelementptr [2 x i8], ptr %i.yx, i64 %i.yw
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !77
  %i.za = zext i16 %i.yz to i64
  %i.zb = getelementptr inbounds nuw [16 x i8], ptr %i.yt, i64 %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store i32 %i.yq, ptr %i.zc, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %statement.exit

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #6
  br label %bb.be

thread-pre-split:                                 ; preds = %str_checkname.exit.i
  call void @luaX_next(ptr noundef nonnull %0) #6, !inline_history !143
  %.pr = load i32, ptr %i.h, align 8, !tbaa !62
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split, %bb.bd
  %i.zd = phi i32 [ %.pr, %thread-pre-split ], [ %i.xc, %bb.bd ]
  %.010.i = phi i32 [ %i.zi, %thread-pre-split ], [ 0, %bb.bd ] ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.zd, 285
  br i1 %.not.i.i.i, label %str_checkname.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ze = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.zf = call ptr @luaX_token2str(ptr noundef nonnull %0, i32 noundef range(i32 40, 288) 285) #6, !inline_history !143
  %i.zg = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ze, ptr noundef nonnull @.str, ptr noundef %i.zf) #6, !inline_history !143
  call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef %i.zg) #6, !inline_history !143
  br label %str_checkname.exit.i

str_checkname.exit.i:                             ; preds = %bb.bf, %bb.be
  %i.zh = load ptr, ptr %i.l, align 8, !tbaa !34
  call void @luaX_next(ptr noundef nonnull %0) #6, !inline_history !143
  %i.zi = add nuw nsw i32 %.010.i, 1              ; 5 uses
  call fastcc void @new_localvar(ptr noundef nonnull %0, ptr noundef %i.zh, i32 noundef %.010.i), !inline_history !143
  %i.zj = load i32, ptr %i.h, align 8, !tbaa !62
  switch i32 %i.zj, label %.thread [
    i32 44, label %thread-pre-split
    i32 61, label %bb.bg
  ]

bb.bg:                                            ; preds = %str_checkname.exit.i
  call void @luaX_next(ptr noundef nonnull %0) #6, !inline_history !143
  %i.zk = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 0), !inline_history !144 ; 0 uses
  %i.zl = load i32, ptr %i.h, align 8, !tbaa !62
  %i.zm = icmp eq i32 %i.zl, 44
  br i1 %i.zm, label %.lr.ph132, label %explist1.exit.i16

.lr.ph132:                                        ; preds = %bb.bg, %.lr.ph132
  %.0.i15.i131 = phi i32 [ %i.zp, %.lr.ph132 ], [ 1, %bb.bg ]
  call void @luaX_next(ptr noundef nonnull %0) #6
  %i.zn = load ptr, ptr %i.j, align 8, !tbaa !44
  call void @luaK_exp2nextreg(ptr noundef %i.zn, ptr noundef nonnull %20) #6, !inline_history !145
  %i.zo = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 0), !inline_history !144 ; 0 uses
  %i.zp = add nuw nsw i32 %.0.i15.i131, 1         ; 2 uses
  %i.zq = load i32, ptr %i.h, align 8, !tbaa !62
  %i.zr = icmp eq i32 %i.zq, 44
  br i1 %i.zr, label %.lr.ph132, label %explist1.exit.i16, !llvm.loop !1

.thread:                                          ; preds = %str_checkname.exit.i
  store i32 0, ptr %20, align 8, !tbaa !66
  %.val12.i108 = load ptr, ptr %i.j, align 8, !tbaa !44
  br label %bb.bl

explist1.exit.i16:                                ; preds = %.lr.ph132, %bb.bg
  %.0.i15.i.lcssa = phi i32 [ 1, %bb.bg ], [ %i.zp, %.lr.ph132 ]
  %.pr106 = load i32, ptr %20, align 8, !tbaa !66
  %.val12.i = load ptr, ptr %i.j, align 8, !tbaa !44 ; 4 uses
  %i.zs = sub nsw i32 %i.zi, %.0.i15.i.lcssa      ; 4 uses
  switch i32 %.pr106, label %bb.bj [
    i32 13, label %bb.bh
    i32 14, label %bb.bh
    i32 0, label %bb.bk
  ]

bb.bh:                                            ; preds = %explist1.exit.i16, %explist1.exit.i16
  %i.zt = call i32 @llvm.smax.i32(i32 %i.zs, i32 -1) ; 2 uses
  %spec.store.select.i.i = add nsw i32 %i.zt, 1
  call void @luaK_setreturns(ptr noundef %.val12.i, ptr noundef nonnull %20, i32 noundef %spec.store.select.i.i) #6, !inline_history !143
  %i.zu = icmp sgt i32 %i.zs, 0
  br i1 %i.zu, label %bb.bi, label %adjust_assign.exit.i

bb.bi:                                            ; preds = %bb.bh
  call void @luaK_reserveregs(ptr noundef %.val12.i, i32 noundef %i.zt) #6, !inline_history !143
  br label %adjust_assign.exit.i

bb.bj:                                            ; preds = %explist1.exit.i16
  call void @luaK_exp2nextreg(ptr noundef %.val12.i, ptr noundef nonnull %20) #6, !inline_history !143
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %explist1.exit.i16
  %i.zv = icmp sgt i32 %i.zs, 0
  br i1 %i.zv, label %bb.bl, label %adjust_assign.exit.i

bb.bl:                                            ; preds = %.thread, %bb.bk
  %.val12.i109111 = phi ptr [ %.val12.i108, %.thread ], [ %.val12.i, %bb.bk ] ; 3 uses
  %i.zw = phi i32 [ %i.zi, %.thread ], [ %i.zs, %bb.bk ] ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.val12.i109111, i64 60
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !81
  call void @luaK_reserveregs(ptr noundef %.val12.i109111, i32 noundef %i.zw) #6, !inline_history !143
  call void @luaK_nil(ptr noundef %.val12.i109111, i32 noundef %i.zy, i32 noundef %i.zw) #6, !inline_history !143
  br label %adjust_assign.exit.i

adjust_assign.exit.i:                             ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !44 ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.val.i, i64 74 ; 2 uses
  %i.aaa = load i8, ptr %i.zz, align 2, !tbaa !72
  %i.aab = trunc i32 %i.zi to i8
  %i.aac = add i8 %i.aaa, %i.aab                  ; 2 uses
  store i8 %i.aac, ptr %i.zz, align 2, !tbaa !72
  %i.aad = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !48 ; 5 uses
  %i.aaf = load ptr, ptr %.val.i, align 8, !tbaa !43
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 48
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !76 ; 5 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.val.i, i64 196 ; 5 uses
  %i.aaj = zext nneg i32 %i.zi to i64             ; 3 uses
  %i.aak = zext i8 %i.aac to i64                  ; 2 uses
  %xtraiter = and i64 %i.aaj, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %adjust_assign.exit.i, %.prol.preheader
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.prol.preheader ], [ %i.aaj, %adjust_assign.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %adjust_assign.exit.i ]
  %i.aal = sub nsw i64 %i.aak, %indvars.iv.i.i.prol
  %i.aam = getelementptr inbounds [2 x i8], ptr %i.aai, i64 %i.aal
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !77
  %i.aao = zext i16 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  store i32 %i.aae, ptr %i.aaq, align 8, !tbaa !84
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !146

.prol.loopexit:                                   ; preds = %.prol.preheader, %adjust_assign.exit.i
  %indvars.iv.i.i.unr = phi i64 [ %i.aaj, %adjust_assign.exit.i ], [ %indvars.iv.next.i.i.prol, %.prol.preheader ]
  %i.aar = icmp samesign ult i32 %.010.i, 3
  br i1 %i.aar, label %localstat.exit, label %adjust_assign.exit.i.new

adjust_assign.exit.i.new:                         ; preds = %.prol.loopexit, %adjust_assign.exit.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %adjust_assign.exit.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.aas = sub nsw i64 %i.aak, %indvars.iv.i.i    ; 4 uses
  %i.aat = getelementptr inbounds [2 x i8], ptr %i.aai, i64 %i.aas
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !77
  %i.aav = zext i16 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store i32 %i.aae, ptr %i.aax, align 8, !tbaa !84
  %23 = getelementptr [2 x i8], ptr %i.aai, i64 %i.aas
  %24 = getelementptr i8, ptr %23, i64 2
  %i.aay = load i16, ptr %24, align 2, !tbaa !77
  %i.aaz = zext i16 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store i32 %i.aae, ptr %i.abb, align 8, !tbaa !84
  %25 = getelementptr [2 x i8], ptr %i.aai, i64 %i.aas
  %26 = getelementptr i8, ptr %25, i64 4
  %i.abc = load i16, ptr %26, align 2, !tbaa !77
  %i.abd = zext i16 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  store i32 %i.aae, ptr %i.abf, align 8, !tbaa !84
  %27 = getelementptr [2 x i8], ptr %i.aai, i64 %i.aas
  %28 = getelementptr i8, ptr %27, i64 6
  %i.abg = load i16, ptr %28, align 2, !tbaa !77
  %i.abh = zext i16 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store i32 %i.aae, ptr %i.abj, align 8, !tbaa !84
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, -4 ; 2 uses
  %.not.i16.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 0
  br i1 %.not.i16.i.3, label %localstat.exit, label %adjust_assign.exit.i.new, !llvm.loop !2

localstat.exit:                                   ; preds = %adjust_assign.exit.i.new, %.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #6
  br label %statement.exit

bb.bm:                                            ; preds = %bb.d
  %i.abk = load ptr, ptr %i.j, align 8, !tbaa !44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #6
  call void @luaX_next(ptr noundef nonnull %0) #6, !inline_history !147
  %i.abl = load i32, ptr %i.h, align 8, !tbaa !62
  switch i32 %i.abl, label %bb.bn [
    i32 260, label %retstat.exit
    i32 261, label %retstat.exit
    i32 262, label %retstat.exit
    i32 276, label %retstat.exit
    i32 287, label %retstat.exit
    i32 59, label %retstat.exit
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.abm = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %21, i32 noundef 0), !inline_history !148 ; 0 uses
  %i.abn = load i32, ptr %i.h, align 8, !tbaa !62
  %i.abo = icmp ne i32 %i.abn, 44                 ; 2 uses
  br i1 %i.abo, label %explist1.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bn, %.lr.ph
  %.0.i22.i130 = phi i32 [ %i.abr, %.lr.ph ], [ 1, %bb.bn ]
  call void @luaX_next(ptr noundef nonnull %0) #6
  %i.abp = load ptr, ptr %i.j, align 8, !tbaa !44
  call void @luaK_exp2nextreg(ptr noundef %i.abp, ptr noundef nonnull %21) #6, !inline_history !149
  %i.abq = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %21, i32 noundef 0), !inline_history !148 ; 0 uses
  %i.abr = add nuw nsw i32 %.0.i22.i130, 1        ; 2 uses
  %i.abs = load i32, ptr %i.h, align 8, !tbaa !62
  %i.abt = icmp eq i32 %i.abs, 44
  br i1 %i.abt, label %.lr.ph, label %explist1.exit.i, !llvm.loop !1

explist1.exit.i:                                  ; preds = %.lr.ph
  %i.abu = load i32, ptr %21, align 8, !tbaa !66
  %i.abv = add i32 %i.abu, -13
  %or.cond.i = icmp ult i32 %i.abv, 2
  br i1 %or.cond.i, label %bb.bo, label %bb.bs

explist1.exit.i.thread:                           ; preds = %bb.bn
  %i.abw = load i32, ptr %21, align 8, !tbaa !66
  %i.abx = add i32 %i.abw, -13
  %or.cond.i184 = icmp ult i32 %i.abx, 2
  br i1 %or.cond.i184, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %explist1.exit.i.thread, %explist1.exit.i
  call void @luaK_setreturns(ptr noundef %i.abk, ptr noundef nonnull %21, i32 noundef -1) #6, !inline_history !147
  %i.aby = load i32, ptr %21, align 8, !tbaa !66
  %i.abz = icmp eq i32 %i.aby, 13
  %or.cond4.i = and i1 %i.abz, %i.abo
  br i1 %or.cond4.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.aca = load ptr, ptr %i.abk, align 8, !tbaa !43
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !87
  %i.acd = load i32, ptr %i.k, align 8, !tbaa !34
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.ace ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !14
  %i.ach = and i32 %i.acg, -64
  %i.aci = or disjoint i32 %i.ach, 29
  store i32 %i.aci, ptr %i.acf, align 4, !tbaa !14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abk, i64 74
  %i.ack = load i8, ptr %i.acj, align 2, !tbaa !72
  %i.acl = zext i8 %i.ack to i32
  br label %retstat.exit

bb.br:                                            ; preds = %explist1.exit.i.thread
  %i.acm = call i32 @luaK_exp2anyreg(ptr noundef %i.abk, ptr noundef nonnull %21) #6, !inline_history !147
  br label %retstat.exit

bb.bs:                                            ; preds = %explist1.exit.i
  call void @luaK_exp2nextreg(ptr noundef %i.abk, ptr noundef nonnull %21) #6, !inline_history !147
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abk, i64 74
  %i.aco = load i8, ptr %i.acn, align 2, !tbaa !72
  %i.acp = zext i8 %i.aco to i32
  br label %retstat.exit

retstat.exit:                                     ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bq, %bb.br, %bb.bs
  %.020.i = phi i32 [ %i.acp, %bb.bs ], [ %i.acl, %bb.bq ], [ %i.acm, %bb.br ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ]
  %.0.i12 = phi i32 [ %i.abr, %bb.bs ], [ -1, %bb.bq ], [ 1, %bb.br ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ], [ 0, %bb.bm ]
  call void @luaK_ret(ptr noundef %i.abk, i32 noundef %.020.i, i32 noundef %.0.i12) #6, !inline_history !147
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #6
  br label %statement.exit

bb.bt:                                            ; preds = %bb.d
  call void @luaX_next(ptr noundef nonnull %0) #6, !inline_history !122
  %i.acq = load ptr, ptr %i.j, align 8, !tbaa !44 ; 4 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 40
  %.01422.i = load ptr, ptr %i.acr, align 8, !tbaa !82 ; 2 uses
  %.not23.i = icmp eq ptr %.01422.i, null
  br i1 %.not23.i, label %.critedge17.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bt, %bb.bu
  %.01425.i = phi ptr [ %.014.i, %bb.bu ], [ %.01422.i, %bb.bt ] ; 4 uses
  %.024.i = phi i32 [ %i.acx, %bb.bu ], [ 0, %bb.bt ] ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %.01425.i, i64 14
  %i.act = load i8, ptr %i.acs, align 2, !tbaa !71
  %.not15.i = icmp eq i8 %i.act, 0
  br i1 %.not15.i, label %bb.bu, label %.critedge.i

bb.bu:                                            ; preds = %.lr.ph.i
  %i.acu = getelementptr inbounds nuw i8, ptr %.01425.i, i64 13
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !74
  %i.acw = zext i8 %i.acv to i32
  %i.acx = or i32 %.024.i, %i.acw                 ; 2 uses
  %.014.i = load ptr, ptr %.01425.i, align 8, !tbaa !82 ; 2 uses
  %.not.i10 = icmp eq ptr %.014.i, null
  br i1 %.not.i10, label %.critedge17.i, label %.lr.ph.i, !llvm.loop !136

.critedge17.i:                                    ; preds = %bb.bu, %bb.bt
  %.0.lcssa.i = phi i32 [ 0, %bb.bt ], [ %i.acx, %bb.bu ]
  call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #6
  br label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedge17.i
  %.021.i = phi i32 [ %.0.lcssa.i, %.critedge17.i ], [ %.024.i, %.lr.ph.i ]
  %.01419.i = phi ptr [ null, %.critedge17.i ], [ %.01425.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i32 %.021.i, 0
  br i1 %.not16.i, label %breakstat.exit, label %bb.bv

bb.bv:                                            ; preds = %.critedge.i
  %i.acy = getelementptr inbounds nuw i8, ptr %.01419.i, i64 12
  %i.acz = load i8, ptr %i.acy, align 4, !tbaa !73
  %i.ada = zext i8 %i.acz to i32
  %i.adb = call i32 @luaK_codeABC(ptr noundef %i.acq, i32 noundef 35, i32 noundef %i.ada, i32 noundef 0, i32 noundef 0) #6 ; 0 uses
  br label %breakstat.exit

breakstat.exit:                                   ; preds = %.critedge.i, %bb.bv
  %i.adc = getelementptr inbounds nuw i8, ptr %.01419.i, i64 8
  %i.add = call i32 @luaK_jump(ptr noundef %i.acq) #6
  call void @luaK_concat(ptr noundef %i.acq, ptr noundef nonnull %i.adc, i32 noundef %i.add) #6
  br label %statement.exit

bb.bw:                                            ; preds = %bb.d
  %i.ade = load ptr, ptr %i.j, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #6
  call fastcc void @primaryexp(ptr noundef nonnull %0, ptr noundef %i.ar), !inline_history !150
  %i.adf = load i32, ptr %i.ar, align 8, !tbaa !90
  %i.adg = icmp eq i32 %i.adf, 13
  br i1 %i.adg, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.adh = load ptr, ptr %i.ade, align 8, !tbaa !43
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !87
  %i.adk = load i32, ptr %i.as, align 8, !tbaa !34
  %i.adl = sext i32 %i.adk to i64
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.adl ; 2 uses
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !14
  %i.ado = and i32 %i.adn, -8372225
  %i.adp = or disjoint i32 %i.ado, 16384
  store i32 %i.adp, ptr %i.adm, align 4, !tbaa !14
  br label %exprstat.exit

bb.by:                                            ; preds = %bb.bw
  store ptr null, ptr %22, align 8, !tbaa !91
  call fastcc void @assignment(ptr noundef nonnull %0, ptr noundef %22, i32 noundef 1), !inline_history !150
  br label %exprstat.exit

exprstat.exit:                                    ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #6
  br label %statement.exit

statement.exit:                                   ; preds = %ifstat.exit, %whilestat.exit, %bb.r, %forstat.exit, %repeatstat.exit, %funcstat.exit, %checknext.exit, %localstat.exit, %retstat.exit, %breakstat.exit, %exprstat.exit
  %.not = phi i1 [ true, %exprstat.exit ], [ true, %ifstat.exit ], [ true, %whilestat.exit ], [ true, %bb.r ], [ true, %forstat.exit ], [ true, %repeatstat.exit ], [ true, %funcstat.exit ], [ false, %breakstat.exit ], [ false, %retstat.exit ], [ true, %localstat.exit ], [ true, %checknext.exit ]
  %i.adq = load i32, ptr %i.h, align 8, !tbaa !62
  %i.adr = icmp eq i32 %i.adq, 59
  br i1 %i.adr, label %bb.bz, label %testnext.exit

bb.bz:                                            ; preds = %statement.exit
  call void @luaX_next(ptr noundef nonnull %0) #6
  br label %testnext.exit

testnext.exit:                                    ; preds = %statement.exit, %bb.bz
  %i.ads = load ptr, ptr %i.j, align 8, !tbaa !44 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 74
  %i.adu = load i8, ptr %i.adt, align 2, !tbaa !72
  %i.adv = zext i8 %i.adu to i32
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 60
  store i32 %i.adv, ptr %i.adw, align 4, !tbaa !81
  br i1 %.not, label %bb.c, label %.critedge, !llvm.loop !151

.critedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %testnext.exit
  %i.adx = load ptr, ptr %i.b, align 8, !tbaa !37
end_hunk_0
begin_hunk_1_@new_localvar:bb.a
bb.d:                                             ; preds = %bb.b
  %i.o = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.m, ptr noundef nonnull @.str.5, i32 noundef %i.j, i32 noundef 200, ptr noundef nonnull @.str.7) #6
  br label %errorlimit.exit

errorlimit.exit:                                  ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  tail call void @luaX_lexerror(ptr noundef %i.r, ptr noundef %i.p, i32 noundef 0) #6
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %errorlimit.exit, %bb.a
  %i.s = phi ptr [ %.pre, %errorlimit.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 92 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 4 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !95
  %i.y = sext i16 %i.x to i32
  %.not.i = icmp sgt i32 %i.v, %i.y
  br i1 %.not.i, label %..._crit_edge_crit_edge.i_crit_edge, label %bb.f

..._crit_edge_crit_edge.i_crit_edge:              ; preds = %bb.e
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.pre25.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !tbaa !76
  br label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = tail call ptr @luaM_growaux_(ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef nonnull %i.u, i64 noundef 16, i32 noundef 32767, ptr noundef nonnull @.str.8) #6 ; 9 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !76
  %.pre.i = load i32, ptr %i.u, align 4, !tbaa !96 ; 2 uses
  %i.ae = icmp slt i32 %i.v, %.pre.i
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.af = sext i32 %i.v to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %.pre.i to i64    ; 3 uses
  %i.ag = sub nsw i64 %wide.trip.count.i, %i.af
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %indvars.iv.i.prol
  store ptr null, ptr %i.ah, align 8, !tbaa !104
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !174

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.af, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ai = sub nsw i64 %i.af, %wide.trip.count.i
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  store ptr null, ptr %i.ak, align 8, !tbaa !104
  %i.al = getelementptr [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !104
  %i.an = getelementptr [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  store ptr null, ptr %i.ao, align 8, !tbaa !104
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !104
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !175

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.f, %..._crit_edge_crit_edge.i_crit_edge
  %i.ar = phi ptr [ %i.ad, %bb.f ], [ %.pre25.i.pre, %..._crit_edge_crit_edge.i_crit_edge ], [ %i.ad, %.lr.ph.i.new ], [ %i.ad, %.prol.loopexit ]
  %i.as = load i16, ptr %i.w, align 8, !tbaa !95  ; 3 uses
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.at
  store ptr %1, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = and i8 %i.aw, 3
  %.not21.i = icmp eq i8 %i.ax, 0
  br i1 %.not21.i, label %registerlocalvar.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34
  %i.ba = and i8 %i.az, 4
  %.not22.i = icmp eq i8 %i.ba, 0
  br i1 %.not22.i, label %registerlocalvar.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  tail call void @luaC_barrierf(ptr noundef %i.bc, ptr noundef nonnull %i.t, ptr noundef nonnull %1) #6
  %.pre26.i = load i16, ptr %i.w, align 8, !tbaa !95
  br label %registerlocalvar.exit

registerlocalvar.exit:                            ; preds = %._crit_edge.i, %bb.g, %bb.h
  %i.bd = phi i16 [ %.pre26.i, %bb.h ], [ %i.as, %bb.g ], [ %i.as, %._crit_edge.i ] ; 2 uses
  %i.be = add i16 %i.bd, 1
  store i16 %i.be, ptr %i.w, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.bg = load i8, ptr %i.c, align 2, !tbaa !72
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %2, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bj
  store i16 %i.bd, ptr %i.bk, align 2, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parlist(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 114 ; 3 uses
  store i8 0, ptr %i.d, align 2, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.not = icmp eq i32 %i.f, 41
  br i1 %.not, label %adjustlocalvars.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

thread-pre-split:                                 ; preds = %bb.e
  tail call void @luaX_next(ptr noundef nonnull %0) #6
  %.pr = load i32, ptr %i.e, align 8, !tbaa !62
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %thread-pre-split
  %i.h = phi i32 [ %.pr, %thread-pre-split ], [ %i.f, %.preheader ]
  %.0 = phi i32 [ %.1.ph, %thread-pre-split ], [ 0, %.preheader ] ; 5 uses
  switch i32 %i.h, label %bb.c [
    i32 285, label %str_checkname.exit
    i32 279, label %.thread
  ]

str_checkname.exit:                               ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void @luaX_next(ptr noundef nonnull %0) #6
  %i.j = add nsw i32 %.0, 1
  tail call fastcc void @new_localvar(ptr noundef %0, ptr noundef %i.i, i32 noundef %.0)
  br label %bb.d

.thread:                                          ; preds = %bb.b
  tail call void @luaX_next(ptr noundef nonnull %0) #6
  %i.k = tail call ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef 3) #6
  %i.l = add nsw i32 %.0, 1
  tail call fastcc void @new_localvar(ptr noundef %0, ptr noundef %i.k, i32 noundef %.0)
  store i8 7, ptr %i.d, align 2, !tbaa !61
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  tail call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #6
  br label %bb.d

bb.d:                                             ; preds = %str_checkname.exit, %bb.c
  %.1.ph = phi i32 [ %i.j, %str_checkname.exit ], [ %.0, %bb.c ] ; 3 uses
  %.pr26 = load i8, ptr %i.d, align 2, !tbaa !61  ; 2 uses
  %.not23 = icmp eq i8 %.pr26, 0
  br i1 %.not23, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.e, align 8, !tbaa !62
  %i.n = icmp eq i32 %i.m, 44
  br i1 %i.n, label %thread-pre-split, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %.thread
  %i.o = phi i8 [ 7, %.thread ], [ 0, %bb.e ], [ %.pr26, %bb.d ] ; 3 uses
  %.2 = phi i32 [ %i.l, %.thread ], [ %.1.ph, %bb.d ], [ %.1.ph, %bb.e ] ; 5 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 74 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !72
  %i.r = trunc i32 %.2 to i8
  %i.s = add i8 %i.q, %i.r                        ; 2 uses
  store i8 %i.s, ptr %i.p, align 2, !tbaa !72
  %.not1.i = icmp eq i32 %.2, 0
  br i1 %.not1.i, label %adjustlocalvars.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !48   ; 5 uses
  %i.v = load ptr, ptr %.val, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 196 ; 5 uses
  %i.z = sext i32 %.2 to i64                      ; 3 uses
  %i.aa = zext i8 %i.s to i64                     ; 2 uses
  %xtraiter = and i64 %i.z, 3
  %i.ab = and i32 %.2, 3
  %lcmp.mod.not = icmp eq i32 %i.ab, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ac = sub nsw i64 %i.aa, %indvars.iv.i.prol
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !77
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.u, ptr %i.ah, align 8, !tbaa !84
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !176

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.z, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ai = icmp ult i32 %.2, 4
  br i1 %i.ai, label %adjustlocalvars.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 2 uses
  %i.aj = sub nsw i64 %i.aa, %indvars.iv.i        ; 4 uses
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !77
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.u, ptr %i.ao, align 8, !tbaa !84
  %1 = getelementptr [2 x i8], ptr %i.y, i64 %i.aj
  %2 = getelementptr i8, ptr %1, i64 2
  %i.ap = load i16, ptr %2, align 2, !tbaa !77
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.u, ptr %i.as, align 8, !tbaa !84
  %3 = getelementptr [2 x i8], ptr %i.y, i64 %i.aj
  %4 = getelementptr i8, ptr %3, i64 4
  %i.at = load i16, ptr %4, align 2, !tbaa !77
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.u, ptr %i.aw, align 8, !tbaa !84
  %5 = getelementptr [2 x i8], ptr %i.y, i64 %i.aj
  %6 = getelementptr i8, ptr %5, i64 6
  %i.ax = load i16, ptr %6, align 2, !tbaa !77
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %i.u, ptr %i.ba, align 8, !tbaa !84
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 0
  br i1 %.not.i.3, label %adjustlocalvars.exit, label %.lr.ph.i.new, !llvm.loop !2

adjustlocalvars.exit:                             ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.a, %.critedge
  %i.bb = phi i8 [ %i.o, %.critedge ], [ 0, %bb.a ], [ %i.o, %.lr.ph.i.new ], [ %i.o, %.prol.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !72  ; 2 uses
  %i.be = and i8 %i.bb, 1
  %i.bf = sub i8 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 113
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !177
  %i.bh = zext i8 %i.bd to i32
  tail call void @luaK_reserveregs(ptr noundef nonnull %i.b, i32 noundef %i.bh) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pushclosure(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4), (8, 12), (16, 24)) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !94   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92
  %.not = icmp slt i32 %i.g, %i.e
  br i1 %.not, label %.._crit_edge_crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = tail call ptr @luaM_growaux_(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull %i.d, i64 noundef 8, i32 noundef 262143, ptr noundef nonnull @.str.11) #6
  store ptr %i.l, ptr %i.j, align 8, !tbaa !93
  %.pre = load i32, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.m = icmp slt i32 %i.e, %.pre
  br i1 %i.m, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a, %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre43 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93   ; 2 uses
  %i.p = sext i32 %i.e to i64
  %i.q = shl nsw i64 %i.p, 3
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.q
  %i.r = xor i32 %i.e, -1
  %i.s = add i32 %.pre, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.v, i1 false), !tbaa !179
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %.lr.ph
  %i.w = phi ptr [ %.pre43, %.._crit_edge_crit_edge ], [ %i.o, %.lr.ph ]
  %i.x = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.y = load i32, ptr %i.f, align 4, !tbaa !92   ; 4 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !92
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aa
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ae = and i8 %i.ad, 3
  %.not33 = icmp eq i8 %i.ae, 0
  br i1 %.not33, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = and i8 %i.ag, 4
  %.not34 = icmp eq i8 %i.ah, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37
  tail call void @luaC_barrierf(ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef nonnull %i.x) #6
  %.pre44 = load i32, ptr %i.f, align 4, !tbaa !92
  %i.ak = add nsw i32 %.pre44, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %i.al = phi i32 [ %i.ak, %bb.d ], [ %i.y, %bb.c ], [ %i.y, %._crit_edge ]
  %i.am = tail call i32 @luaK_codeABx(ptr noundef nonnull %i.b, i32 noundef 36, i32 noundef 0, i32 noundef %i.al) #6
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.an, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.ao, align 4, !tbaa !67
  store i32 11, ptr %2, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.am, ptr %i.ap, align 8, !tbaa !34
  %i.aq = load ptr, ptr %1, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !97
  %.not40 = icmp eq i8 %i.as, 0
  br i1 %.not40, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 75
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph38, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !106
  %i.aw = icmp eq i8 %i.av, 6
  %i.ax = select i1 %i.aw, i32 0, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !107
  %i.ba = zext i8 %i.az to i32
  %i.bb = tail call i32 @luaK_codeABC(ptr noundef nonnull %i.b, i32 noundef %i.ax, i32 noundef 0, i32 noundef %i.ba, i32 noundef 0) #6 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !97
  %i.bf = zext i8 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.f, label %._crit_edge39, !llvm.loop !178

._crit_edge39:                                    ; preds = %bb.f, %bb.e
  ret void
}

declare hidden ptr @luaM_growaux_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaC_barrierf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaK_reserveregs(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @luaK_codeABx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @field(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.expdesc, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.c = tail call i32 @luaK_exp2anyreg(ptr noundef %i.b, ptr noundef nonnull %1) #6 ; 0 uses
  tail call void @luaX_next(ptr noundef nonnull %0) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %.not.i.i.i = icmp eq i32 %i.e, 285
  br i1 %.not.i.i.i, label %checkname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = tail call ptr @luaX_token2str(ptr noundef nonnull %0, i32 noundef range(i32 40, 288) 285) #6
  %i.i = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef %i.h) #6
  tail call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef %i.i) #6
  br label %checkname.exit

checkname.exit:                                   ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  tail call void @luaX_next(ptr noundef nonnull %0) #6
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.l = tail call i32 @luaK_stringK(ptr noundef %.val.i, ptr noundef %i.k) #6
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.n, align 4, !tbaa !67
  store i32 4, ptr %2, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.l, ptr %i.o, align 8, !tbaa !34
  call void @luaK_indexed(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret void
}

declare hidden i32 @luaK_exp2anyreg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaK_indexed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaK_self(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @funcargs(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.expdesc, align 8            ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64   ; 3 uses
end_hunk_1
begin_hunk_2_@singlevaraux:bb.a

._crit_edge.thread.i._crit_edge:                  ; preds = %._crit_edge.thread.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.thread.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !98
  %i.bn = tail call ptr @luaM_growaux_(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef nonnull %i.ah, i64 noundef 8, i32 noundef 2147483645, ptr noundef nonnull @.str.14) #6 ; 2 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !98
  %.pre60.i = load i32, ptr %i.ah, align 8, !tbaa !99
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i._crit_edge, %bb.p
  %i.bo = phi ptr [ %i.bn, %bb.p ], [ %.pre, %._crit_edge.thread.i._crit_edge ] ; 2 uses
  %i.bp = phi i32 [ %.pre60.i, %bb.p ], [ %i.bi, %._crit_edge.thread.i._crit_edge ] ; 2 uses
  %i.bq = icmp slt i32 %i.ai, %i.bp
  br i1 %i.bq, label %.lr.ph51.i, label %._crit_edge52.i

.lr.ph51.i:                                       ; preds = %bb.q
  %i.br = sext i32 %i.ai to i64
  %i.bs = shl nsw i64 %i.br, 3
  %scevgep.i = getelementptr i8, ptr %i.bo, i64 %i.bs
  %i.bt = xor i32 %i.ai, -1
  %i.bu = add i32 %i.bp, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bx, i1 false), !tbaa !184
  br label %._crit_edge52.i

._crit_edge52.i:                                  ; preds = %.lr.ph51.i, %bb.q
  %i.by = load i8, ptr %i.aj, align 8, !tbaa !97  ; 3 uses
  %i.bz = zext i8 %i.by to i64                    ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bz
  store ptr %1, ptr %i.ca, align 8, !tbaa !184
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34
  %i.cd = and i8 %i.cc, 3
  %.not42.i = icmp eq i8 %i.cd, 0
  br i1 %.not42.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge52.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 9
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !34
  %i.cg = and i8 %i.cf, 4
  %.not43.i = icmp eq i8 %i.cg, 0
  br i1 %.not43.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47
  tail call void @luaC_barrierf(ptr noundef %i.ci, ptr noundef nonnull %i.ag, ptr noundef nonnull %1) #6
  %.pre62.i = load i8, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %.pre64.i = zext i8 %.pre62.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge52.i
  %.pre-phi65.i = phi i64 [ %.pre64.i, %bb.s ], [ %i.bz, %bb.r ], [ %i.bz, %._crit_edge52.i ]
  %i.cj = phi i8 [ %.pre62.i, %bb.s ], [ %i.by, %bb.r ], [ %i.by, %._crit_edge52.i ] ; 2 uses
  %i.ck = load i32, ptr %2, align 8, !tbaa !66
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 75
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %.pre-phi65.i ; 2 uses
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !106
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !34
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !107
  %i.cs = add i8 %i.cj, 1
  store i8 %i.cs, ptr %i.aj, align 8, !tbaa !97
  %i.ct = zext i8 %i.cj to i32
  br label %indexupvalue.exit

.loopexit.loopexit.i:                             ; preds = %bb.k
  %i.cu = trunc nuw nsw i64 %indvars.iv.i20 to i32
  br label %indexupvalue.exit

indexupvalue.exit:                                ; preds = %bb.t, %.loopexit.loopexit.i
  %.040.i = phi i32 [ %i.ct, %bb.t ], [ %i.cu, %.loopexit.loopexit.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.040.i, ptr %i.cv, align 8, !tbaa !34
  store i32 7, ptr %2, align 8, !tbaa !66
  br label %markupval.exit

markupval.exit:                                   ; preds = %bb.g, %.critedge.i, %indexupvalue.exit, %searchvar.exit, %searchvar.exit.thread, %bb.b
  %.1 = phi i32 [ 8, %bb.b ], [ 7, %indexupvalue.exit ], [ 6, %searchvar.exit ], [ 8, %searchvar.exit.thread ], [ 6, %.critedge.i ], [ 6, %bb.g ]
  ret i32 %.1
}

declare hidden void @luaK_fixline(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @luaK_getlabel(ptr noundef) local_unnamed_addr #2

declare hidden void @luaK_patchlist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @luaK_numberK(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @forbody(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 2147483645) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
adjustlocalvars.exit:
  %5 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %6 = alloca %struct.BlockCnt, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 74 ; 4 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !72
  %i.e = add i8 %i.d, 3                           ; 2 uses
  store i8 %i.e, ptr %i.c, align 2, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.l = zext i8 %i.e to i64                      ; 3 uses
  %i.m = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !77
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.g, ptr %i.r, align 8, !tbaa !84
  %i.s = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !77
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.g, ptr %i.x, align 8, !tbaa !84
  %i.y = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !77
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.g, ptr %i.ad, align 8, !tbaa !84
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !62
  %.not.i.i = icmp eq i32 %i.af, 259
  br i1 %.not.i.i, label %checknext.exit, label %bb.a

bb.a:                                             ; preds = %adjustlocalvars.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ai = tail call ptr @luaX_token2str(ptr noundef nonnull %0, i32 noundef range(i32 40, 288) 259) #6
  %i.aj = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ah, ptr noundef nonnull @.str, ptr noundef %i.ai) #6
  tail call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef %i.aj) #6
  br label %checknext.exit

checknext.exit:                                   ; preds = %adjustlocalvars.exit, %bb.a
  tail call void @luaX_next(ptr noundef nonnull %0) #6
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %checknext.exit
  %i.ak = tail call i32 @luaK_codeABx(ptr noundef nonnull %i.b, i32 noundef 32, i32 noundef %1, i32 noundef 131070) #6
  br label %bb.d

bb.c:                                             ; preds = %checknext.exit
  %i.al = tail call i32 @luaK_jump(ptr noundef nonnull %i.b) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.am = phi i32 [ %i.ak, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -1, ptr %i.an, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i8 0, ptr %i.ao, align 2, !tbaa !71
  %i.ap = load i8, ptr %i.c, align 2, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %i.ap, ptr %i.aq, align 4, !tbaa !73
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 13
  store i8 0, ptr %i.ar, align 1, !tbaa !74
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51
  store ptr %i.at, ptr %6, align 8, !tbaa !75
  store ptr %6, ptr %i.as, align 8, !tbaa !51
  %.val = load ptr, ptr %i.a, align 8, !tbaa !44  ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 74 ; 2 uses
  %i.av = load i8, ptr %i.au, align 2, !tbaa !72
  %i.aw = trunc i32 %3 to i8
  %i.ax = add i8 %i.av, %i.aw                     ; 2 uses
  store i8 %i.ax, ptr %i.au, align 2, !tbaa !72
  %.not1.i = icmp eq i32 %3, 0
  br i1 %.not1.i, label %adjustlocalvars.exit32, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !48 ; 5 uses
  %i.ba = load ptr, ptr %.val, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 196 ; 5 uses
  %i.be = sext i32 %3 to i64                      ; 3 uses
  %i.bf = zext i8 %i.ax to i64                    ; 2 uses
  %xtraiter = and i64 %i.be, 3
  %i.bg = and i32 %3, 3
  %lcmp.mod.not = icmp eq i32 %i.bg, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i29.prol = phi i64 [ %indvars.iv.next.i30.prol, %.prol.preheader ], [ %i.be, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bh = sub nsw i64 %i.bf, %indvars.iv.i29.prol
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !77
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %i.az, ptr %i.bm, align 8, !tbaa !84
  %indvars.iv.next.i30.prol = add nsw i64 %indvars.iv.i29.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !185

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i29.unr = phi i64 [ %i.be, %.lr.ph.i ], [ %indvars.iv.next.i30.prol, %.prol.preheader ]
  %i.bn = icmp ult i32 %3, 4
  br i1 %i.bn, label %adjustlocalvars.exit32, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30.3, %.lr.ph.i.new ], [ %indvars.iv.i29.unr, %.prol.loopexit ] ; 2 uses
  %i.bo = sub nsw i64 %i.bf, %indvars.iv.i29      ; 4 uses
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !77
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.az, ptr %i.bt, align 8, !tbaa !84
  %7 = getelementptr [2 x i8], ptr %i.bd, i64 %i.bo
  %8 = getelementptr i8, ptr %7, i64 2
  %i.bu = load i16, ptr %8, align 2, !tbaa !77
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.az, ptr %i.bx, align 8, !tbaa !84
  %9 = getelementptr [2 x i8], ptr %i.bd, i64 %i.bo
  %10 = getelementptr i8, ptr %9, i64 4
  %i.by = load i16, ptr %10, align 2, !tbaa !77
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.az, ptr %i.cb, align 8, !tbaa !84
  %11 = getelementptr [2 x i8], ptr %i.bd, i64 %i.bo
  %12 = getelementptr i8, ptr %11, i64 6
  %i.cc = load i16, ptr %12, align 2, !tbaa !77
  %i.cd = zext i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i32 %i.az, ptr %i.cf, align 8, !tbaa !84
  %indvars.iv.next.i30.3 = add nsw i64 %indvars.iv.i29, -4 ; 2 uses
  %.not.i31.3 = icmp eq i64 %indvars.iv.next.i30.3, 0
  br i1 %.not.i31.3, label %adjustlocalvars.exit32, label %.lr.ph.i.new, !llvm.loop !2

adjustlocalvars.exit32:                           ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.d
  call void @luaK_reserveregs(ptr noundef nonnull %i.b, i32 noundef %3) #6
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !44  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.ch, align 8, !tbaa !70
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i8 0, ptr %i.ci, align 2, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 74 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !72
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.ck, ptr %i.cl, align 4, !tbaa !73
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 0, ptr %i.cm, align 1, !tbaa !74
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51
  store ptr %i.co, ptr %5, align 8, !tbaa !75
  store ptr %5, ptr %i.cn, align 8, !tbaa !51
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !188
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !51 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !75
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !73  ; 3 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = getelementptr i8, ptr %i.cs, i64 48
  %.val.i35 = load ptr, ptr %i.cw, align 8, !tbaa !44 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i35, i64 74 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !72  ; 2 uses
  %i.cz = icmp ult i8 %i.cu, %i.cy
  br i1 %i.cz, label %.lr.ph.i.i38, label %removevars.exit.i36

.lr.ph.i.i38:                                     ; preds = %adjustlocalvars.exit32
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i35, i64 48
  %i.db = load i32, ptr %i.da, align 8, !tbaa !48 ; 5 uses
  %i.dc = load ptr, ptr %.val.i35, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !76 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i35, i64 196 ; 5 uses
  %i.dg = zext i8 %i.cy to i64                    ; 4 uses
  %i.dh = zext i8 %i.cu to i64                    ; 3 uses
  %i.di = sub nsw i64 %i.dg, %i.dh
  %xtraiter56 = and i64 %i.di, 3                  ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.prol.loopexit55, label %.prol.preheader54

.prol.preheader54:                                ; preds = %.lr.ph.i.i38, %.prol.preheader54
  %indvars.iv.i39.prol = phi i64 [ %i.dj, %.prol.preheader54 ], [ %i.dg, %.lr.ph.i.i38 ]
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.prol.preheader54 ], [ 0, %.lr.ph.i.i38 ]
  %i.dj = add nsw i64 %indvars.iv.i39.prol, -1    ; 4 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !77
  %i.dm = zext i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 %i.db, ptr %i.do, align 4, !tbaa !79
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.prol.loopexit55, label %.prol.preheader54, !llvm.loop !186

.prol.loopexit55:                                 ; preds = %.prol.preheader54, %.lr.ph.i.i38
  %indvars.iv.i39.unr = phi i64 [ %i.dg, %.lr.ph.i.i38 ], [ %i.dj, %.prol.preheader54 ]
  %.lcssa53.unr = phi i64 [ poison, %.lr.ph.i.i38 ], [ %i.dj, %.prol.preheader54 ]
  %i.dp = sub nsw i64 %i.dh, %i.dg
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %._crit_edge.i.i41, label %.lr.ph.i.i38.new

.lr.ph.i.i38.new:                                 ; preds = %.prol.loopexit55, %.lr.ph.i.i38.new
  %indvars.iv.i39 = phi i64 [ %i.ej, %.lr.ph.i.i38.new ], [ %indvars.iv.i39.unr, %.prol.loopexit55 ] ; 4 uses
  %i.dr = getelementptr [2 x i8], ptr %i.df, i64 %indvars.iv.i39
  %i.ds = getelementptr i8, ptr %i.dr, i64 -2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !77
  %i.du = zext i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 %i.db, ptr %i.dw, align 4, !tbaa !79
  %i.dx = getelementptr [2 x i8], ptr %i.df, i64 %indvars.iv.i39
  %i.dy = getelementptr i8, ptr %i.dx, i64 -4
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !77
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 %i.db, ptr %i.ec, align 4, !tbaa !79
  %i.ed = getelementptr [2 x i8], ptr %i.df, i64 %indvars.iv.i39
  %i.ee = getelementptr i8, ptr %i.ed, i64 -6
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !77
  %i.eg = zext i16 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 %i.db, ptr %i.ei, align 4, !tbaa !79
  %i.ej = add nsw i64 %indvars.iv.i39, -4         ; 4 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !77
  %i.em = zext i16 %i.el to i64
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 %i.db, ptr %i.eo, align 4, !tbaa !79
  %.wide.i40.3 = icmp ugt i64 %i.ej, %i.dh
  br i1 %.wide.i40.3, label %.lr.ph.i.i38.new, label %._crit_edge.i.i41, !llvm.loop !0

._crit_edge.i.i41:                                ; preds = %.lr.ph.i.i38.new, %.prol.loopexit55
  %.lcssa53 = phi i64 [ %.lcssa53.unr, %.prol.loopexit55 ], [ %i.ej, %.lr.ph.i.i38.new ]
  %i.ep = trunc nuw i64 %.lcssa53 to i8
  store i8 %i.ep, ptr %i.cx, align 2, !tbaa !72
  br label %removevars.exit.i36

removevars.exit.i36:                              ; preds = %._crit_edge.i.i41, %adjustlocalvars.exit32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cp, i64 13
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !74
  %.not.i37 = icmp eq i8 %i.er, 0
  br i1 %.not.i37, label %leaveblock.exit42, label %bb.e

bb.e:                                             ; preds = %removevars.exit.i36
  %i.es = call i32 @luaK_codeABC(ptr noundef nonnull %i.cg, i32 noundef 35, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0) #6 ; 0 uses
  br label %leaveblock.exit42

leaveblock.exit42:                                ; preds = %removevars.exit.i36, %bb.e
  %i.et = load i8, ptr %i.cj, align 2, !tbaa !72
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cg, i64 60
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !81
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !70
  call void @luaK_patchtohere(ptr noundef nonnull %i.cg, i32 noundef %i.ex) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.ey = load ptr, ptr %i.as, align 8, !tbaa !51 ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !75
  store ptr %i.ez, ptr %i.as, align 8, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !46
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !73  ; 3 uses
  %i.fe = zext i8 %i.fd to i32
  %i.ff = getelementptr i8, ptr %i.fb, i64 48
  %.val.i = load ptr, ptr %i.ff, align 8, !tbaa !44 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i, i64 74 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 2, !tbaa !72  ; 2 uses
  %i.fi = icmp ult i8 %i.fd, %i.fh
  br i1 %i.fi, label %.lr.ph.i.i, label %removevars.exit.i

.lr.ph.i.i:                                       ; preds = %leaveblock.exit42
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !48 ; 5 uses
  %i.fl = load ptr, ptr %.val.i, align 8, !tbaa !43
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !76 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i, i64 196 ; 5 uses
  %i.fp = zext i8 %i.fh to i64                    ; 4 uses
  %i.fq = zext i8 %i.fd to i64                    ; 3 uses
  %i.fr = sub nsw i64 %i.fp, %i.fq
  %xtraiter61 = and i64 %i.fr, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.prol.loopexit60, label %.prol.preheader59

.prol.preheader59:                                ; preds = %.lr.ph.i.i, %.prol.preheader59
  %indvars.iv.i34.prol = phi i64 [ %i.fs, %.prol.preheader59 ], [ %i.fp, %.lr.ph.i.i ]
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.prol.preheader59 ], [ 0, %.lr.ph.i.i ]
  %i.fs = add nsw i64 %indvars.iv.i34.prol, -1    ; 4 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !77
  %i.fv = zext i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 %i.fk, ptr %i.fx, align 4, !tbaa !79
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.prol.loopexit60, label %.prol.preheader59, !llvm.loop !187

.prol.loopexit60:                                 ; preds = %.prol.preheader59, %.lr.ph.i.i
  %indvars.iv.i34.unr = phi i64 [ %i.fp, %.lr.ph.i.i ], [ %i.fs, %.prol.preheader59 ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i ], [ %i.fs, %.prol.preheader59 ]
  %i.fy = sub nsw i64 %i.fq, %i.fp
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %._crit_edge.i.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit60, %.lr.ph.i.i.new
  %indvars.iv.i34 = phi i64 [ %i.gs, %.lr.ph.i.i.new ], [ %indvars.iv.i34.unr, %.prol.loopexit60 ] ; 4 uses
  %i.ga = getelementptr [2 x i8], ptr %i.fo, i64 %indvars.iv.i34
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !77
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 %i.fk, ptr %i.gf, align 4, !tbaa !79
  %i.gg = getelementptr [2 x i8], ptr %i.fo, i64 %indvars.iv.i34
  %i.gh = getelementptr i8, ptr %i.gg, i64 -4
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !77
  %i.gj = zext i16 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.gj
end_hunk_2
