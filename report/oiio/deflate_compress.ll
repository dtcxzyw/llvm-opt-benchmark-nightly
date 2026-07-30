inline.NumInlined: 62
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 103
begin_hunk_0_@deflate_optimize_and_flush_block:bb.a
  %i.fv = zext i32 %spec.store.select.i.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !20
  %i.fy = zext i8 %i.fx to i32                    ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 257
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !139
  %i.gb = zext i8 %i.ga to i32                    ; 12 uses
  br i1 %5, label %vector.ph226, label %bb.i

vector.ph226:                                     ; preds = %deflate_choose_default_litlen_costs.exit.i
  %broadcast.splatinsert227 = insertelement <4 x i32> poison, i32 %i.fy, i64 0
  %broadcast.splat228 = shufflevector <4 x i32> %broadcast.splatinsert227, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat228, ptr %i.gc, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gd, align 4, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat228, ptr %i.ge, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gf, align 4, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat228, ptr %i.gg, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gh, align 4, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat228, ptr %i.gi, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gj, align 4, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat228, ptr %i.gk, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gl, align 4, !tbaa !20
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat228, ptr %i.gm, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gn, align 4, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat228, ptr %i.go, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gp, align 4, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat228, ptr %i.gq, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gr, align 4, !tbaa !20
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat228, ptr %i.gs, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gt, align 4, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat228, ptr %i.gu, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gv, align 4, !tbaa !20
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat228, ptr %i.gw, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gx, align 4, !tbaa !20
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat228, ptr %i.gy, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.gz, align 4, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat228, ptr %i.ha, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hb, align 4, !tbaa !20
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat228, ptr %i.hc, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hd, align 4, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat228, ptr %i.he, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hf, align 4, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat228, ptr %i.hg, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hh, align 4, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat228, ptr %i.hi, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hj, align 4, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat228, ptr %i.hk, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hl, align 4, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat228, ptr %i.hm, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hn, align 4, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat228, ptr %i.ho, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hp, align 4, !tbaa !20
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat228, ptr %i.hq, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hr, align 4, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat228, ptr %i.hs, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.ht, align 4, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat228, ptr %i.hu, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hv, align 4, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat228, ptr %i.hw, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hx, align 4, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat228, ptr %i.hy, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.hz, align 4, !tbaa !20
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat228, ptr %i.ia, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.ib, align 4, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat228, ptr %i.ic, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.id, align 4, !tbaa !20
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat228, ptr %i.ie, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.if, align 4, !tbaa !20
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat228, ptr %i.ig, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.ih, align 4, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat228, ptr %i.ii, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.ij, align 4, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat228, ptr %i.ik, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.il, align 4, !tbaa !20
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat228, ptr %i.im, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat228, ptr %i.in, align 4, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %vector.ph226
  %indvars.iv21.i.i = phi i64 [ 3, %vector.ph226 ], [ %indvars.iv.next22.i.i.1, %bb.h ] ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !20
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !20
  %i.iu = zext i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 4
  %i.iw = add nuw nsw i32 %i.iv, %i.gb
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv21.i.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !20
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !20
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !20
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 4
  %i.jf = add nuw nsw i32 %i.je, %i.gb
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.next22.i.i
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !20
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.1, 259
  br i1 %exitcond24.not.i.i.1, label %deflate_set_default_costs.exit.i, label %bb.h, !llvm.loop !141

deflate_set_default_costs.exit.i:                 ; preds = %bb.h
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.jh, align 16, !tbaa !20
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.ji, align 32, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.jj, align 16, !tbaa !20
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.jk, align 32, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.jl, align 16, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.jm, align 32, !tbaa !20
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.jn, align 16, !tbaa !20
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.jo, align 32, !tbaa !20
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.jp, align 4, !tbaa !20
  br label %deflate_set_initial_costs.exit

bb.i:                                             ; preds = %deflate_choose_default_litlen_costs.exit.i
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 9009568
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !85
  %i.jt = zext i32 %i.js to i64                   ; 11 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 9009608
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !20
  %i.jx = zext i32 %i.jw to i64                   ; 11 uses
  %9 = load i32, ptr %i.jq, align 32, !tbaa !20
  %10 = zext i32 %9 to i64
  %11 = mul nuw i64 %10, %i.jt                    ; 3 uses
  %12 = load i32, ptr %i.ju, align 8, !tbaa !3
  %13 = zext i32 %12 to i64
  %14 = mul nuw i64 %13, %i.jx                    ; 3 uses
  %15 = icmp ugt i64 %11, %14
  %16 = sub nuw i64 %11, %14
  %17 = sub nuw i64 %14, %11
  %18 = select i1 %15, i64 %16, i64 %17
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 9009572
  %19 = load i32, ptr %i.jy, align 4, !tbaa !20
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, %i.jt                    ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3
  %22 = zext i32 %i.ka to i64
  %23 = mul nuw i64 %22, %i.jx                    ; 3 uses
  %24 = icmp ugt i64 %21, %23
  %25 = sub nuw i64 %21, %23
  %26 = sub nuw i64 %23, %21
  %27 = select i1 %24, i64 %25, i64 %26
  %28 = add i64 %27, %18
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 9009576
  %i.kb = load i32, ptr %29, align 8, !tbaa !20
  %i.kc = zext i32 %i.kb to i64
  %30 = mul nuw i64 %i.kc, %i.jt                  ; 3 uses
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %32 = load i32, ptr %31, align 16, !tbaa !3
  %i.kd = zext i32 %32 to i64
  %33 = mul nuw i64 %i.kd, %i.jx                  ; 3 uses
  %34 = icmp ugt i64 %30, %33
  %35 = sub nuw i64 %30, %33
  %36 = sub nuw i64 %33, %30
  %37 = select i1 %34, i64 %35, i64 %36
  %38 = add i64 %28, %37
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 9009580
  %40 = load i32, ptr %39, align 4, !tbaa !20
  %41 = zext i32 %40 to i64
  %i.ke = mul nuw i64 %41, %i.jt                  ; 3 uses
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.kf = load i32, ptr %42, align 4, !tbaa !3
  %43 = zext i32 %i.kf to i64
  %44 = mul nuw i64 %43, %i.jx                    ; 3 uses
  %45 = icmp ugt i64 %i.ke, %44
  %46 = sub nuw i64 %i.ke, %44
  %47 = sub nuw i64 %44, %i.ke
  %48 = select i1 %45, i64 %46, i64 %47
  %49 = add i64 %38, %48
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 9009584
  %51 = load i32, ptr %50, align 16, !tbaa !20
  %i.kg = zext i32 %51 to i64
  %52 = mul nuw i64 %i.kg, %i.jt                  ; 3 uses
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %54 = load i32, ptr %53, align 8, !tbaa !3
  %i.kh = zext i32 %54 to i64
  %55 = mul nuw i64 %i.kh, %i.jx                  ; 3 uses
  %56 = icmp ugt i64 %52, %55
  %57 = sub nuw i64 %52, %55
  %58 = sub nuw i64 %55, %52
  %59 = select i1 %56, i64 %57, i64 %58
  %60 = add i64 %49, %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 9009588
  %62 = load i32, ptr %61, align 4, !tbaa !20
  %63 = zext i32 %62 to i64
  %i.ki = mul nuw i64 %63, %i.jt                  ; 3 uses
  %64 = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %65 = load i32, ptr %64, align 4, !tbaa !3
  %66 = zext i32 %65 to i64
  %67 = mul nuw i64 %66, %i.jx                    ; 3 uses
  %i.kj = icmp ugt i64 %i.ki, %67
  %68 = sub nuw i64 %i.ki, %67
  %69 = sub nuw i64 %67, %i.ki
  %70 = select i1 %i.kj, i64 %68, i64 %69
  %71 = add i64 %60, %70
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 9009592
  %73 = load i32, ptr %72, align 8, !tbaa !20
  %74 = zext i32 %73 to i64
  %75 = mul nuw i64 %74, %i.jt                    ; 3 uses
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %77 = load i32, ptr %76, align 32, !tbaa !3
  %78 = zext i32 %77 to i64
  %79 = mul nuw i64 %78, %i.jx                    ; 3 uses
  %80 = icmp ugt i64 %75, %79
  %81 = sub nuw i64 %75, %79
  %82 = sub nuw i64 %79, %75
  %83 = select i1 %80, i64 %81, i64 %82
  %84 = add i64 %71, %83
  %85 = getelementptr inbounds nuw i8, ptr %0, i64 9009596
  %86 = load i32, ptr %85, align 4, !tbaa !20
  %87 = zext i32 %86 to i64
  %88 = mul nuw i64 %87, %i.jt                    ; 3 uses
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %90 = load i32, ptr %89, align 4, !tbaa !3
  %91 = zext i32 %90 to i64
  %92 = mul nuw i64 %91, %i.jx                    ; 3 uses
  %93 = icmp ugt i64 %88, %92
  %94 = sub nuw i64 %88, %92
  %95 = sub nuw i64 %92, %88
  %96 = select i1 %93, i64 %94, i64 %95
  %97 = add i64 %84, %96
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 9009600
  %i.kl = load i32, ptr %i.kk, align 32, !tbaa !20
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul nuw i64 %i.km, %i.jt                ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !3
  %i.kq = zext i32 %i.kp to i64
  %i.kr = mul nuw i64 %i.kq, %i.jx                ; 3 uses
  %i.ks = icmp ugt i64 %i.kn, %i.kr
  %i.kt = sub nuw i64 %i.kn, %i.kr
  %i.ku = sub nuw i64 %i.kr, %i.kn
  %i.kv = select i1 %i.ks, i64 %i.kt, i64 %i.ku
  %98 = add i64 %97, %i.kv
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 9009604
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !20
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw i64 %i.ky, %i.jt                ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !3
  %i.lc = zext i32 %i.lb to i64
  %i.ld = mul nuw i64 %i.lc, %i.jx                ; 3 uses
  %i.le = icmp ugt i64 %i.kz, %i.ld
  %i.lf = sub nuw i64 %i.kz, %i.ld
  %i.lg = sub nuw i64 %i.ld, %i.kz
  %i.lh = select i1 %i.le, i64 %i.lf, i64 %i.lg
  %op.rdx334 = add i64 %98, %i.lh                 ; 3 uses
  %i.li = mul nuw nsw i64 %i.jt, 200
  %i.lj = mul i64 %i.li, %i.jx
  %i.lk = lshr i64 %i.lj, 9                       ; 3 uses
  %i.ll = mul nuw nsw i64 %i.lk, 3                ; 2 uses
  %i.lm = icmp ugt i64 %op.rdx334, %i.ll
  br i1 %i.lm, label %vector.ph218, label %bb.k

vector.ph218:                                     ; preds = %bb.i
  %broadcast.splatinsert219 = insertelement <4 x i32> poison, i32 %i.fy, i64 0
  %broadcast.splat220 = shufflevector <4 x i32> %broadcast.splatinsert219, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8972436
  store <4 x i32> %broadcast.splat220, ptr %i.ln, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.lo, align 4, !tbaa !20
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8972452
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8972468
  store <4 x i32> %broadcast.splat220, ptr %i.lp, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.lq, align 4, !tbaa !20
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8972484
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8972500
  store <4 x i32> %broadcast.splat220, ptr %i.lr, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ls, align 4, !tbaa !20
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 8972516
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 8972532
  store <4 x i32> %broadcast.splat220, ptr %i.lt, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.lu, align 4, !tbaa !20
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8972548
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8972564
  store <4 x i32> %broadcast.splat220, ptr %i.lv, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.lw, align 4, !tbaa !20
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8972580
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8972596
  store <4 x i32> %broadcast.splat220, ptr %i.lx, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ly, align 4, !tbaa !20
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 8972612
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8972628
  store <4 x i32> %broadcast.splat220, ptr %i.lz, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ma, align 4, !tbaa !20
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 8972644
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 8972660
  store <4 x i32> %broadcast.splat220, ptr %i.mb, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mc, align 4, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8972676
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8972692
  store <4 x i32> %broadcast.splat220, ptr %i.md, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.me, align 4, !tbaa !20
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8972708
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8972724
  store <4 x i32> %broadcast.splat220, ptr %i.mf, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mg, align 4, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8972740
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8972756
  store <4 x i32> %broadcast.splat220, ptr %i.mh, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mi, align 4, !tbaa !20
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8972772
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 8972788
  store <4 x i32> %broadcast.splat220, ptr %i.mj, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mk, align 4, !tbaa !20
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 8972804
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8972820
  store <4 x i32> %broadcast.splat220, ptr %i.ml, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mm, align 4, !tbaa !20
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8972836
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8972852
  store <4 x i32> %broadcast.splat220, ptr %i.mn, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mo, align 4, !tbaa !20
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 8972868
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8972884
  store <4 x i32> %broadcast.splat220, ptr %i.mp, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mq, align 4, !tbaa !20
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8972900
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 8972916
  store <4 x i32> %broadcast.splat220, ptr %i.mr, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ms, align 4, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8972932
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 8972948
  store <4 x i32> %broadcast.splat220, ptr %i.mt, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mu, align 4, !tbaa !20
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 8972964
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8972980
  store <4 x i32> %broadcast.splat220, ptr %i.mv, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.mw, align 4, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8972996
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8973012
  store <4 x i32> %broadcast.splat220, ptr %i.mx, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.my, align 4, !tbaa !20
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8973028
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8973044
  store <4 x i32> %broadcast.splat220, ptr %i.mz, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.na, align 4, !tbaa !20
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 8973060
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8973076
  store <4 x i32> %broadcast.splat220, ptr %i.nb, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.nc, align 4, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8973092
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8973108
  store <4 x i32> %broadcast.splat220, ptr %i.nd, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ne, align 4, !tbaa !20
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8973124
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8973140
  store <4 x i32> %broadcast.splat220, ptr %i.nf, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ng, align 4, !tbaa !20
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8973156
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8973172
  store <4 x i32> %broadcast.splat220, ptr %i.nh, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ni, align 4, !tbaa !20
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 8973188
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8973204
  store <4 x i32> %broadcast.splat220, ptr %i.nj, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.nk, align 4, !tbaa !20
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8973220
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8973236
  store <4 x i32> %broadcast.splat220, ptr %i.nl, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.nm, align 4, !tbaa !20
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 8973252
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 8973268
  store <4 x i32> %broadcast.splat220, ptr %i.nn, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.no, align 4, !tbaa !20
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8973284
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8973300
  store <4 x i32> %broadcast.splat220, ptr %i.np, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.nq, align 4, !tbaa !20
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8973316
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8973332
  store <4 x i32> %broadcast.splat220, ptr %i.nr, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ns, align 4, !tbaa !20
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 8973348
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8973364
  store <4 x i32> %broadcast.splat220, ptr %i.nt, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.nu, align 4, !tbaa !20
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8973380
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 8973396
  store <4 x i32> %broadcast.splat220, ptr %i.nv, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.nw, align 4, !tbaa !20
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 8973412
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8973428
  store <4 x i32> %broadcast.splat220, ptr %i.nx, align 4, !tbaa !20
  store <4 x i32> %broadcast.splat220, ptr %i.ny, align 4, !tbaa !20
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8973444 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %vector.ph218
  %indvars.iv21.i.i.i = phi i64 [ 3, %vector.ph218 ], [ %indvars.iv.next22.i.i.i.1, %bb.j ] ; 4 uses
  %i.oa = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv21.i.i.i
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !20
  %i.oc = zext i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !20
  %i.of = zext i8 %i.oe to i32
  %i.og = shl nuw nsw i32 %i.of, 4
  %i.oh = add nuw nsw i32 %i.og, %i.gb
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv21.i.i.i
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !20
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %indvars.iv.next22.i.i.i
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !20
  %i.ol = zext i8 %i.ok to i64
  %i.om = getelementptr inbounds nuw i8, ptr @deflate_extra_length_bits, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !20
  %i.oo = zext i8 %i.on to i32
  %i.op = shl nuw nsw i32 %i.oo, 4
  %i.oq = add nuw nsw i32 %i.op, %i.gb
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next22.i.i.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !20
  %indvars.iv.next22.i.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.1 = icmp eq i64 %indvars.iv.next22.i.i.i.1, 259
  br i1 %exitcond24.not.i.i.i.1, label %deflate_set_default_costs.exit.i.i, label %bb.j, !llvm.loop !141

deflate_set_default_costs.exit.i.i:               ; preds = %bb.j
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  store <4 x i32> splat (i32 78), ptr %i.os, align 16, !tbaa !20
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8974496
  store <4 x i32> <i32 94, i32 94, i32 110, i32 110>, ptr %i.ot, align 32, !tbaa !20
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8974512
  store <4 x i32> <i32 126, i32 126, i32 142, i32 142>, ptr %i.ou, align 16, !tbaa !20
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8974528
  store <4 x i32> <i32 158, i32 158, i32 174, i32 174>, ptr %i.ov, align 32, !tbaa !20
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8974544
  store <4 x i32> <i32 190, i32 190, i32 206, i32 206>, ptr %i.ow, align 16, !tbaa !20
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 8974560
  store <4 x i32> <i32 222, i32 222, i32 238, i32 238>, ptr %i.ox, align 32, !tbaa !20
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8974576
  store <4 x i32> <i32 254, i32 254, i32 270, i32 270>, ptr %i.oy, align 16, !tbaa !20
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 8974592
  store i32 286, ptr %i.oz, align 32, !tbaa !20
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8974596
  store i32 286, ptr %i.pa, align 4, !tbaa !20
  br label %deflate_set_initial_costs.exit

bb.k:                                             ; preds = %bb.i
  %i.pb = shl nuw nsw i64 %op.rdx334, 2
  %i.pc = mul nuw nsw i64 %i.lk, 9
  %i.pd = icmp samesign ugt i64 %i.pb, %i.pc
  br i1 %i.pd, label %.preheader58.i.i, label %bb.m

.preheader58.i.i:                                 ; preds = %bb.k
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8972420 ; 2 uses
  %i.pf = mul nuw nsw i32 %i.fy, 3
  %broadcast.splatinsert209 = insertelement <4 x i32> poison, i32 %i.pf, i64 0
  %broadcast.splat210 = shufflevector <4 x i32> %broadcast.splatinsert209, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
end_hunk_0
begin_hunk_1_@deflate_compute_true_cost:.preheader44
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_find_min_cost_path(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %.idx = shl nuw nsw i64 %i.a, 3
  %.add63 = add nuw nsw i64 %.idx, 6532420        ; 2 uses
  %.ptr65 = getelementptr inbounds nuw i8, ptr %0, i64 %.add63
  store i32 0, ptr %.ptr65, align 4, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8972420
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8976796 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8974480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8973444
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.f = phi i32 [ 0, %bb.a ], [ %.3, %.loopexit ]
  %.046.idx = phi i64 [ %.add63, %bb.a ], [ %.046.add, %.loopexit ] ; 2 uses
  %.0 = phi ptr [ %2, %bb.a ], [ %.1, %.loopexit ] ; 4 uses
  %.046.ptr = getelementptr inbounds i8, ptr %0, i64 %.046.idx
  %.046.add = add nsw i64 %.046.idx, -8           ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %0, i64 %.046.add ; 2 uses
  %.ptr60 = getelementptr inbounds i8, ptr %.0, i64 -4 ; 2 uses
  %i.g = load i16, ptr %.ptr60, align 2, !tbaa !77 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.0, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !79   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = zext i16 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %i.n = add i32 %i.f, %i.m                       ; 2 uses
  %i.o = shl nuw nsw i32 %i.j, 9
  %i.p = or disjoint i32 %i.o, 1
  %i.q = getelementptr inbounds i8, ptr %.046.ptr, i64 -4 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !103
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = zext i16 %i.g to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %.add = sub nuw nsw i64 -4, %i.s                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.050 = phi i32 [ 3, %bb.c ], [ %i.ao, %bb.h ]
  %.049.idx = phi i64 [ %.add, %bb.c ], [ %.049.add, %bb.h ] ; 2 uses
  %.047 = phi i32 [ %i.n, %bb.c ], [ %.2, %bb.h ]
  %.049.ptr = getelementptr inbounds i8, ptr %.0, i64 %.049.idx ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.049.ptr, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !79   ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = zext i16 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = load i16, ptr %.049.ptr, align 2, !tbaa !77
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.v, 9
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.151 = phi i32 [ %.050, %bb.d ], [ %i.ao, %bb.g ] ; 3 uses
  %.148 = phi i32 [ %.047, %bb.d ], [ %.2, %bb.g ] ; 2 uses
  %i.af = zext i32 %.151 to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.ai = add i32 %i.ah, %i.ab
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.ptr, i64 %i.af
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !209
  %i.al = add i32 %i.ai, %i.ak                    ; 2 uses
  %i.am = icmp ult i32 %i.al, %.148
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = or i32 %.151, %i.ae
  store i32 %i.an, ptr %i.q, align 4, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.2 = phi i32 [ %i.al, %bb.f ], [ %.148, %bb.e ] ; 3 uses
  %i.ao = add i32 %.151, 1                        ; 3 uses
  %.not58 = icmp ugt i32 %i.ao, %i.ad
  br i1 %.not58, label %bb.h, label %bb.e, !llvm.loop !210

bb.h:                                             ; preds = %bb.g
  %.049.add = add nsw i64 %.049.idx, 4            ; 2 uses
  %.not59 = icmp eq i64 %.049.add, -4
  br i1 %.not59, label %.loopexit.loopexit, label %bb.d, !llvm.loop !211

.loopexit.loopexit:                               ; preds = %bb.h
  %.ptr61 = getelementptr inbounds i8, ptr %.0, i64 %.add
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.3 = phi i32 [ %i.n, %bb.b ], [ %.2, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi ptr [ %.ptr60, %bb.b ], [ %.ptr61, %.loopexit.loopexit ]
  store i32 %.3, ptr %.ptr, align 4, !tbaa !209
  %.not62 = icmp eq i64 %.046.add, 6532420
  br i1 %.not62, label %bb.i, label %bb.b, !llvm.loop !212

bb.i:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1280) %i.ap, i8 0, i64 1280, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6532420 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0.i = phi ptr [ %i.aq, %bb.i ], [ %i.br, %bb.m ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !103 ; 2 uses
  %i.av = and i32 %i.au, 511                      ; 2 uses
  %i.aw = lshr i32 %i.au, 9                       ; 2 uses
  %i.ax = icmp eq i32 %i.av, 1
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bc = zext nneg i32 %i.av to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1060 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !3
  %i.bk = zext nneg i32 %i.aw to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %i.bc, %bb.l ], [ 1, %bb.k ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.pre-phi.i ; 2 uses
  %.not.i = icmp eq ptr %i.br, %i.ar
  br i1 %.not.i, label %deflate_tally_item_list.exit, label %bb.j, !llvm.loop !213

deflate_tally_item_list.exit:                     ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 32, !tbaa !3
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 32, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2680
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.ap, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 2552
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.as, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"libdeflate_compressor", !9, i64 0, !4, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !11, i64 32, !12, i64 1312, !13, i64 1400, !13, i64 3000, !5, i64 4600, !5, i64 6080}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"deflate_freqs", !5, i64 0, !5, i64 1152}
!12 = !{!"block_split_stats", !5, i64 0, !5, i64 40, !4, i64 80, !4, i64 84}
!13 = !{!"deflate_codes", !14, i64 0, !15, i64 1280}
!14 = !{!"deflate_codewords", !5, i64 0, !5, i64 1152}
!15 = !{!"deflate_lens", !5, i64 0, !5, i64 288}
!16 = !{!8, !10, i64 16}
!17 = !{!8, !9, i64 0}
!18 = !{!8, !4, i64 28}
!19 = !{!8, !4, i64 24}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !24, !25, !26}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !24, !25, !26}
!28 = distinct !{!28, !24, !25}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !24, !25, !26}
!32 = distinct !{!32, !24, !25, !26}
!33 = distinct !{!33, !24, !25}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !24, !25, !26}
!36 = distinct !{!36, !24, !25, !26}
!37 = distinct !{!37, !24, !25}
!38 = distinct !{!38, !24}
!39 = !{!40, !4, i64 0}
!40 = !{!"deflate_sequence", !4, i64 0, !41, i64 4, !41, i64 6}
!41 = !{!"short", !5, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!41, !41, i64 0}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = !{!40, !41, i64 4}
!50 = !{!40, !41, i64 6}
!51 = distinct !{!51, !24}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !24}
!56 = !{!12, !4, i64 80}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = !{!61}
!61 = distinct !{!61, !62, !"deflate_compress_lazy_generic: argument 0"}
!62 = distinct !{!62, !"deflate_compress_lazy_generic"}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !24, !25, !26}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = !{!68}
!68 = distinct !{!68, !69, !"deflate_compress_lazy_generic: argument 0"}
!69 = distinct !{!69, !"deflate_compress_lazy_generic"}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !24, !25, !26}
!72 = !{!73, !73, i64 0}
!73 = !{!"_Bool", !5, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = distinct !{!76, !22}
!77 = !{!78, !41, i64 0}
!78 = !{!"lz_match", !41, i64 0, !41, i64 2}
!79 = !{!78, !41, i64 2}
!80 = distinct !{!80, !24}
!81 = !{!12, !4, i64 84}
!82 = distinct !{!82, !24, !25, !26}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !24}
!85 = !{!8, !4, i64 1396}
!86 = distinct !{!86, !24, !25, !26}
!87 = distinct !{!87, !24}
!88 = !{!89, !10, i64 0}
!89 = !{!"deflate_output_bitstream", !10, i64 0, !4, i64 8, !90, i64 16, !90, i64 24}
!90 = !{!"p1 omnipotent char", !9, i64 0}
!91 = !{!89, !4, i64 8}
!92 = !{!89, !90, i64 16}
!93 = !{!89, !90, i64 24}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24, !25, !26}
!96 = distinct !{!96, !24, !25, !26}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !22}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24, !101}
!101 = !{!"llvm.loop.peeled.count", i32 1}
!102 = distinct !{!102, !24}
!103 = !{!104, !4, i64 4}
!104 = !{!"deflate_optimum_node", !4, i64 0, !4, i64 4}
!105 = distinct !{!105, !24}
!106 = distinct !{!106, !24}
!107 = distinct !{!107, !24}
!108 = distinct !{!108, !24}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !24}
!111 = distinct !{!111, !24}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!115 = distinct !{!115, !24}
!116 = distinct !{!116, !24}
!117 = distinct !{!117, !24}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !24}
!120 = distinct !{!120, !24}
!121 = distinct !{!121, !24}
!122 = distinct !{!122, !22}
!123 = distinct !{!123, !24}
!124 = distinct !{!124, !24}
!125 = distinct !{!125, !24}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !24}
!129 = distinct !{!129, !24}
!130 = distinct !{!130, !24}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !24}
!134 = distinct !{!134, !22}
!135 = distinct !{!135, !24, !25, !26}
!136 = distinct !{!136, !24}
!137 = distinct !{!137, !24, !25, !26}
!138 = distinct !{!138, !24, !25}
!139 = !{!140, !5, i64 257}
!140 = !{!"", !5, i64 0, !5, i64 257}
!141 = distinct !{!141, !24}
!142 = distinct !{!142, !24, !25, !26}
!143 = distinct !{!143, !24}
!144 = distinct !{!144, !24, !25, !26}
!145 = !{!146}
!146 = distinct !{!146, !147}
!147 = distinct !{!147, !"LVerDomain"}
!148 = !{!149}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !24, !25}
!151 = distinct !{!151, !24, !25, !26}
!152 = distinct !{!152, !24, !25, !26}
!153 = !{!154}
!154 = distinct !{!154, !155}
!155 = distinct !{!155, !"LVerDomain"}
!156 = !{!157}
!157 = distinct !{!157, !155}
!158 = distinct !{!158, !24, !25}
!159 = !{i64 0, i64 1024, !20, i64 1024, i64 1036, !20, i64 2060, i64 128, !20}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !24, !25, !26}
!166 = distinct !{!166, !24, !25}
!167 = distinct !{!167, !24}
!168 = !{!169}
!169 = distinct !{!169, !170}
!170 = distinct !{!170, !"LVerDomain"}
!171 = !{!172}
!172 = distinct !{!172, !170}
!173 = !{!169, !174}
!174 = distinct !{!174, !170}
!175 = distinct !{!175, !24, !25}
end_hunk_1
