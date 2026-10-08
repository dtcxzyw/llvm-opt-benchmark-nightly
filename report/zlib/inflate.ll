Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@inflate:bb.a
  %.7106329612975 = phi ptr [ %.01056, %.preheader1292 ], [ %.61062.lcssa, %.thread2954 ] ; 4 uses
  %.799929632974 = phi i32 [ %.0992, %.preheader1292 ], [ %.6998.lcssa, %.thread2954 ] ; 3 uses
  %.793629652973 = phi i64 [ %.0929, %.preheader1292 ], [ 0, %.thread2954 ] ; 2 uses
  %.792529672972 = phi i32 [ %.0918, %.preheader1292 ], [ 0, %.thread2954 ] ; 2 uses
  %i.ib = phi i32 [ %i.hw, %.preheader1292 ], [ %i.hy, %.thread2954 ] ; 2 uses
  %i.ic = zext nneg i32 %.792529672972 to i64     ; 3 uses
  %i.id = icmp eq i32 %.799929632974, 0
  br i1 %i.id, label %.loopexit1277.loopexit2346, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph2314.preheader
  %i.ie = add i32 %.799929632974, -1              ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.7106329612975, i64 1 ; 3 uses
  %i.ig = load i8, ptr %.7106329612975, align 1, !tbaa !45
  %i.ih = zext i8 %i.ig to i64
  %i.ii = shl nuw nsw i64 %i.ih, %i.ic
  %i.ij = add i64 %i.ii, %.793629652973           ; 3 uses
  %indvars.iv.next2839 = add nuw nsw i64 %i.ic, 8 ; 2 uses
  %i.ik = icmp samesign ult i32 %.792529672972, 8
  br i1 %i.ik, label %.lr.ph2314.1, label %._crit_edge2315

.lr.ph2314.1:                                     ; preds = %bb.bf
  %i.il = icmp eq i32 %i.ie, 0
  br i1 %i.il, label %.loopexit1277.loopexit2346, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph2314.1
  %i.im = add i32 %.799929632974, -2
  %i.in = getelementptr inbounds nuw i8, ptr %.7106329612975, i64 2
  %i.io = load i8, ptr %i.if, align 1, !tbaa !45
  %i.ip = zext i8 %i.io to i64
  %i.iq = shl nuw nsw i64 %i.ip, %indvars.iv.next2839
  %i.ir = add i64 %i.iq, %i.ij
  br label %._crit_edge2315

._crit_edge2315:                                  ; preds = %bb.bf, %bb.bg, %.preheader1292
  %i.is = phi i32 [ %i.hw, %.preheader1292 ], [ %i.ib, %bb.bg ], [ %i.ib, %bb.bf ]
  %.81064.lcssa = phi ptr [ %.01056, %.preheader1292 ], [ %i.if, %bb.bf ], [ %i.in, %bb.bg ] ; 3 uses
  %.81000.lcssa = phi i32 [ %.0992, %.preheader1292 ], [ %i.ie, %bb.bf ], [ %i.im, %bb.bg ] ; 3 uses
  %.8937.lcssa = phi i64 [ %.0929, %.preheader1292 ], [ %i.ij, %bb.bf ], [ %i.ir, %bb.bg ] ; 2 uses
  %i.it = trunc i64 %.8937.lcssa to i32           ; 2 uses
  store i32 %i.it, ptr %i.an, align 4, !tbaa !52
  %i.iu = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1224 = icmp eq ptr %i.iu, null
  br i1 %.not1224, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge2315
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  store i32 %i.it, ptr %i.iv, align 8, !tbaa !85
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge2315
  %i.iw = and i32 %i.is, 512
  %.not1225 = icmp eq i32 %i.iw, 0
  br i1 %.not1225, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ix = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.iy = and i32 %i.ix, 4
  %.not1226 = icmp eq i32 %i.iy, 0
  br i1 %.not1226, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iz = trunc i64 %.8937.lcssa to i16
  store i16 %i.iz, ptr %i.a, align 4
  %i.ja = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.jb = call i64 @crc32(i64 noundef %i.ja, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.jb, ptr %i.ak, align 8, !tbaa !49
  br label %bb.bn

bb.bl:                                            ; preds = %.thread2954, %bb.be
  %.79252966 = phi i32 [ 0, %.thread2954 ], [ %.0918, %bb.be ] ; 2 uses
  %.79362964 = phi i64 [ 0, %.thread2954 ], [ %.0929, %bb.be ] ; 2 uses
  %.79992962 = phi i32 [ %.6998.lcssa, %.thread2954 ], [ %.0992, %bb.be ] ; 2 uses
  %.710632960 = phi ptr [ %.61062.lcssa, %.thread2954 ], [ %.01056, %bb.be ] ; 2 uses
  %i.jc = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1223 = icmp eq ptr %i.jc, null
  br i1 %.not1223, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store ptr null, ptr %i.jd, align 8, !tbaa !86
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bl, %bb.bm
  %.91065 = phi ptr [ %.710632960, %bb.bl ], [ %.710632960, %bb.bm ], [ %.81064.lcssa, %bb.bi ], [ %.81064.lcssa, %bb.bj ], [ %.81064.lcssa, %bb.bk ]
  %.91001 = phi i32 [ %.79992962, %bb.bl ], [ %.79992962, %bb.bm ], [ %.81000.lcssa, %bb.bi ], [ %.81000.lcssa, %bb.bj ], [ %.81000.lcssa, %bb.bk ]
  %.9938 = phi i64 [ %.79362964, %bb.bl ], [ %.79362964, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bk ]
  %.9927 = phi i32 [ %.79252966, %bb.bl ], [ %.79252966, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bk ]
  store i32 16185, ptr %i.m, align 8, !tbaa !21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.k
  %.101066 = phi ptr [ %.91065, %bb.bn ], [ %.01056, %bb.k ] ; 5 uses
  %.101002 = phi i32 [ %.91001, %bb.bn ], [ %.0992, %bb.k ] ; 4 uses
  %.10939 = phi i64 [ %.9938, %bb.bn ], [ %.0929, %bb.k ] ; 2 uses
  %.10928 = phi i32 [ %.9927, %bb.bn ], [ %.0918, %bb.k ] ; 2 uses
  %i.je = load i32, ptr %i.aj, align 8, !tbaa !29 ; 4 uses
  %i.jf = and i32 %i.je, 1024
  %.not1227 = icmp eq i32 %i.jf, 0
  br i1 %.not1227, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !52 ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.jg, i32 %.101002) ; 7 uses
  %.not1228 = icmp eq i32 %spec.select, 0
  br i1 %.not1228, label %bb.by, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jh = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 4 uses
  %.not1229 = icmp eq ptr %i.jh, null
  br i1 %.not1229, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !86 ; 2 uses
  %.not1230 = icmp eq ptr %i.jj, null
  br i1 %.not1230, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !85
  %i.jm = sub i32 %i.jl, %i.jg                    ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 36
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !87 ; 3 uses
  %i.jp = icmp ult i32 %i.jm, %i.jo
  br i1 %i.jp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jq = zext i32 %i.jm to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jq
  %i.js = add i32 %i.jm, %spec.select
  %i.jt = icmp ugt i32 %i.js, %i.jo
  %i.ju = sub nuw i32 %i.jo, %i.jm
  %i.jv = select i1 %i.jt, i32 %i.ju, i32 %spec.select
  %i.jw = zext i32 %i.jv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr align 1 %.101066, i64 %i.jw, i1 false)
  %.pre2868 = load i32, ptr %i.aj, align 8, !tbaa !29
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.jx = phi i32 [ %.pre2868, %bb.bt ], [ %i.je, %bb.bs ], [ %i.je, %bb.br ], [ %i.je, %bb.bq ]
  %i.jy = and i32 %i.jx, 512
  %.not1231 = icmp eq i32 %i.jy, 0
  br i1 %.not1231, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jz = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ka = and i32 %i.jz, 4
  %.not1232 = icmp eq i32 %i.ka, 0
  br i1 %.not1232, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kb = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.kc = call i64 @crc32(i64 noundef %i.kb, ptr noundef %.101066, i32 noundef %spec.select) #9
  store i64 %i.kc, ptr %i.ak, align 8, !tbaa !49
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.kd = sub nuw i32 %.101002, %spec.select
  %i.ke = zext i32 %spec.select to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %.101066, i64 %i.ke
  %i.kg = load i32, ptr %i.an, align 4, !tbaa !52
  %i.kh = sub i32 %i.kg, %spec.select             ; 2 uses
  store i32 %i.kh, ptr %i.an, align 4, !tbaa !52
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bp
  %i.ki = phi i32 [ %i.kh, %bb.bx ], [ %i.jg, %bb.bp ]
  %.111067 = phi ptr [ %i.kf, %bb.bx ], [ %.101066, %bb.bp ] ; 2 uses
  %.111003 = phi i32 [ %i.kd, %bb.bx ], [ %.101002, %bb.bp ] ; 2 uses
  %.not1233 = icmp eq i32 %i.ki, 0
  br i1 %.not1233, label %bb.bz, label %.loopexit1277

bb.bz:                                            ; preds = %bb.by, %bb.bo
  %.121068 = phi ptr [ %.111067, %bb.by ], [ %.101066, %bb.bo ]
  %.121004 = phi i32 [ %.111003, %bb.by ], [ %.101002, %bb.bo ]
  store i32 0, ptr %i.an, align 4, !tbaa !52
  store i32 16186, ptr %i.m, align 8, !tbaa !21
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.k
  %.131069 = phi ptr [ %.121068, %bb.bz ], [ %.01056, %bb.k ] ; 6 uses
  %.131005 = phi i32 [ %.121004, %bb.bz ], [ %.0992, %bb.k ] ; 5 uses
  %.11940 = phi i64 [ %.10939, %bb.bz ], [ %.0929, %bb.k ] ; 3 uses
  %.11 = phi i32 [ %.10928, %bb.bz ], [ %.0918, %bb.k ] ; 3 uses
  %i.kj = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.kk = and i32 %i.kj, 2048
  %.not1234 = icmp eq i32 %i.kk, 0
  br i1 %.not1234, label %bb.ck, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kl = icmp eq i32 %.131005, 0
  br i1 %i.kl, label %.loopexit1277, label %.preheader1291.preheader

.preheader1291.preheader:                         ; preds = %bb.cb
  %i.km = zext i32 %.131005 to i64
  %.pre2870 = load ptr, ptr %i.bo, align 8, !tbaa !31
  br label %.preheader1291

.preheader1291:                                   ; preds = %.preheader1291.preheader, %bb.cf
  %i.kn = phi ptr [ %.pre2870, %.preheader1291.preheader ], [ %i.kz, %bb.cf ] ; 5 uses
  %indvars.iv2841 = phi i64 [ 0, %.preheader1291.preheader ], [ %indvars.iv.next2842, %bb.cf ] ; 3 uses
  %indvars.iv.next2842 = add nuw nsw i64 %indvars.iv2841, 1 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.131069, i64 %indvars.iv2841
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !45  ; 2 uses
  %.not1236 = icmp eq ptr %i.kn, null
  br i1 %.not1236, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %.preheader1291
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !88 ; 2 uses
  %.not1237 = icmp eq ptr %i.kr, null
  br i1 %.not1237, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ks = load i32, ptr %i.an, align 4, !tbaa !52 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 48
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !89
  %i.kv = icmp ult i32 %i.ks, %i.ku
  br i1 %i.kv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.kw = add nuw i32 %i.ks, 1
  store i32 %i.kw, ptr %i.an, align 4, !tbaa !52
  %i.kx = zext i32 %i.ks to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kx
  store i8 %i.kp, ptr %i.ky, align 1, !tbaa !45
  %.pre2869 = load ptr, ptr %i.bo, align 8, !tbaa !31
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader1291, %bb.cc, %bb.cd, %bb.ce
  %i.kz = phi ptr [ null, %.preheader1291 ], [ %i.kn, %bb.cc ], [ %i.kn, %bb.cd ], [ %.pre2869, %bb.ce ]
  %i.la = icmp ne i8 %i.kp, 0                     ; 2 uses
  %i.lb = icmp samesign ult i64 %indvars.iv.next2842, %i.km
  %i.lc = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %i.lc, label %.preheader1291, label %bb.cg, !llvm.loop !59

bb.cg:                                            ; preds = %bb.cf
  %i.ld = trunc nuw i64 %indvars.iv.next2842 to i32 ; 2 uses
  %i.le = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.lf = and i32 %i.le, 512
  %.not1238 = icmp eq i32 %i.lf, 0
  br i1 %.not1238, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lg = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.lh = and i32 %i.lg, 4
  %.not1239 = icmp eq i32 %i.lh, 0
  br i1 %.not1239, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.li = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.lj = call i64 @crc32(i64 noundef %i.li, ptr noundef nonnull %.131069, i32 noundef %i.ld) #9
  store i64 %i.lj, ptr %i.ak, align 8, !tbaa !49
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.lk = sub nuw i32 %.131005, %i.ld             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.131069, i64 %indvars.iv2841
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  br i1 %i.la, label %.loopexit1277, label %bb.cm

bb.ck:                                            ; preds = %bb.ca
  %i.lm = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1235 = icmp eq ptr %i.lm, null
  br i1 %.not1235, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  store ptr null, ptr %i.ln, align 8, !tbaa !88
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.cj
  %.141070 = phi ptr [ %i.ll, %bb.cj ], [ %.131069, %bb.cl ], [ %.131069, %bb.ck ]
  %.141006 = phi i32 [ %i.lk, %bb.cj ], [ %.131005, %bb.cl ], [ %.131005, %bb.ck ]
  store i32 0, ptr %i.an, align 4, !tbaa !52
  store i32 16187, ptr %i.m, align 8, !tbaa !21
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.k
  %.151071 = phi ptr [ %.141070, %bb.cm ], [ %.01056, %bb.k ] ; 6 uses
  %.151007 = phi i32 [ %.141006, %bb.cm ], [ %.0992, %bb.k ] ; 5 uses
  %.12941 = phi i64 [ %.11940, %bb.cm ], [ %.0929, %bb.k ] ; 3 uses
  %.12 = phi i32 [ %.11, %bb.cm ], [ %.0918, %bb.k ] ; 3 uses
  %i.lo = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.lp = and i32 %i.lo, 4096
  %.not1240 = icmp eq i32 %i.lp, 0
  br i1 %.not1240, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lq = icmp eq i32 %.151007, 0
  br i1 %i.lq, label %.loopexit1277, label %.preheader1290.preheader

.preheader1290.preheader:                         ; preds = %bb.co
  %i.lr = zext i32 %.151007 to i64
  %.pre2872 = load ptr, ptr %i.bo, align 8, !tbaa !31
  br label %.preheader1290

.preheader1290:                                   ; preds = %.preheader1290.preheader, %bb.cs
  %i.ls = phi ptr [ %.pre2872, %.preheader1290.preheader ], [ %i.me, %bb.cs ] ; 5 uses
  %indvars.iv2844 = phi i64 [ 0, %.preheader1290.preheader ], [ %indvars.iv.next2845, %bb.cs ] ; 3 uses
  %indvars.iv.next2845 = add nuw nsw i64 %indvars.iv2844, 1 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.151071, i64 %indvars.iv2844
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !45  ; 2 uses
  %.not1242 = icmp eq ptr %i.ls, null
  br i1 %.not1242, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %.preheader1290
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 56
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !90 ; 2 uses
  %.not1243 = icmp eq ptr %i.lw, null
  br i1 %.not1243, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lx = load i32, ptr %i.an, align 4, !tbaa !52 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 64
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !91
  %i.ma = icmp ult i32 %i.lx, %i.lz
  br i1 %i.ma, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.mb = add nuw i32 %i.lx, 1
  store i32 %i.mb, ptr %i.an, align 4, !tbaa !52
  %i.mc = zext i32 %i.lx to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.mc
  store i8 %i.lu, ptr %i.md, align 1, !tbaa !45
  %.pre2871 = load ptr, ptr %i.bo, align 8, !tbaa !31
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader1290, %bb.cp, %bb.cq, %bb.cr
  %i.me = phi ptr [ null, %.preheader1290 ], [ %i.ls, %bb.cp ], [ %i.ls, %bb.cq ], [ %.pre2871, %bb.cr ]
  %i.mf = icmp ne i8 %i.lu, 0                     ; 2 uses
  %i.mg = icmp samesign ult i64 %indvars.iv.next2845, %i.lr
  %i.mh = select i1 %i.mf, i1 %i.mg, i1 false
  br i1 %i.mh, label %.preheader1290, label %bb.ct, !llvm.loop !60

bb.ct:                                            ; preds = %bb.cs
  %i.mi = trunc nuw i64 %indvars.iv.next2845 to i32 ; 2 uses
  %i.mj = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.mk = and i32 %i.mj, 512
  %.not1244 = icmp eq i32 %i.mk, 0
  br i1 %.not1244, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ml = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.mm = and i32 %i.ml, 4
  %.not1245 = icmp eq i32 %i.mm, 0
  br i1 %.not1245, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mn = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.mo = call i64 @crc32(i64 noundef %i.mn, ptr noundef nonnull %.151071, i32 noundef %i.mi) #9
  store i64 %i.mo, ptr %i.ak, align 8, !tbaa !49
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.mp = sub nuw i32 %.151007, %i.mi             ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.151071, i64 %indvars.iv2844
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  br i1 %i.mf, label %.loopexit1277, label %bb.cz

bb.cx:                                            ; preds = %bb.cn
  %i.mr = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1241 = icmp eq ptr %i.mr, null
  br i1 %.not1241, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  store ptr null, ptr %i.ms, align 8, !tbaa !90
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cw
  %.161072 = phi ptr [ %i.mq, %bb.cw ], [ %.151071, %bb.cy ], [ %.151071, %bb.cx ]
  %.161008 = phi i32 [ %i.mp, %bb.cw ], [ %.151007, %bb.cy ], [ %.151007, %bb.cx ]
  store i32 16188, ptr %i.m, align 8, !tbaa !21
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.k
  %.171073 = phi ptr [ %.161072, %bb.cz ], [ %.01056, %bb.k ] ; 6 uses
  %.171009 = phi i32 [ %.161008, %bb.cz ], [ %.0992, %bb.k ] ; 5 uses
  %.13942 = phi i64 [ %.12941, %bb.cz ], [ %.0929, %bb.k ] ; 4 uses
  %.13 = phi i32 [ %.12, %bb.cz ], [ %.0918, %bb.k ] ; 5 uses
  %i.mt = load i32, ptr %i.aj, align 8, !tbaa !29 ; 2 uses
  %i.mu = and i32 %i.mt, 512
  %.not1246 = icmp eq i32 %i.mu, 0
  br i1 %.not1246, label %bb.df, label %.preheader1288

.preheader1288:                                   ; preds = %bb.da
  %i.mv = icmp ult i32 %.13, 16
  br i1 %i.mv, label %.lr.ph2323.preheader, label %._crit_edge2324

.lr.ph2323.preheader:                             ; preds = %.preheader1288
  %i.mw = zext nneg i32 %.13 to i64               ; 4 uses
  %i.mx = icmp eq i32 %.171009, 0
  br i1 %i.mx, label %.loopexit1277.loopexit2345, label %bb.db

bb.db:                                            ; preds = %.lr.ph2323.preheader
  %i.my = add i32 %.171009, -1                    ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.171073, i64 1 ; 3 uses
  %i.na = load i8, ptr %.171073, align 1, !tbaa !45
  %i.nb = zext i8 %i.na to i64
  %i.nc = shl nuw nsw i64 %i.nb, %i.mw
  %i.nd = add i64 %i.nc, %.13942                  ; 3 uses
  %indvars.iv.next2848 = add nuw nsw i64 %i.mw, 8 ; 3 uses
  %i.ne = icmp ult i32 %.13, 8
  br i1 %i.ne, label %.lr.ph2323.1, label %._crit_edge2324.loopexit

.lr.ph2323.1:                                     ; preds = %bb.db
  %i.nf = icmp eq i32 %i.my, 0
  br i1 %i.nf, label %.loopexit1277.loopexit2345, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph2323.1
  %i.ng = add i32 %.171009, -2
  %i.nh = getelementptr inbounds nuw i8, ptr %.171073, i64 2
  %i.ni = load i8, ptr %i.mz, align 1, !tbaa !45
  %i.nj = zext i8 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nj, %indvars.iv.next2848
  %i.nl = add i64 %i.nk, %i.nd
  %indvars.iv.next2848.1 = or disjoint i64 %i.mw, 16
  br label %._crit_edge2324.loopexit

._crit_edge2324.loopexit:                         ; preds = %bb.dc, %bb.db
  %.lcssa4203 = phi i32 [ %i.my, %bb.db ], [ %i.ng, %bb.dc ]
  %.lcssa4202 = phi ptr [ %i.mz, %bb.db ], [ %i.nh, %bb.dc ]
  %.lcssa4201 = phi i64 [ %i.nd, %bb.db ], [ %i.nl, %bb.dc ]
  %indvars.iv.next2848.lcssa = phi i64 [ %indvars.iv.next2848, %bb.db ], [ %indvars.iv.next2848.1, %bb.dc ]
  %i.nm = trunc nuw nsw i64 %indvars.iv.next2848.lcssa to i32
  br label %._crit_edge2324

._crit_edge2324:                                  ; preds = %._crit_edge2324.loopexit, %.preheader1288
  %.181074.lcssa = phi ptr [ %.171073, %.preheader1288 ], [ %.lcssa4202, %._crit_edge2324.loopexit ] ; 3 uses
  %.181010.lcssa = phi i32 [ %.171009, %.preheader1288 ], [ %.lcssa4203, %._crit_edge2324.loopexit ] ; 3 uses
  %.14943.lcssa = phi i64 [ %.13942, %.preheader1288 ], [ %.lcssa4201, %._crit_edge2324.loopexit ] ; 2 uses
  %.14.lcssa = phi i32 [ %.13, %.preheader1288 ], [ %i.nm, %._crit_edge2324.loopexit ]
  %i.nn = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.no = and i32 %i.nn, 4
  %.not1247 = icmp eq i32 %i.no, 0
  br i1 %.not1247, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge2324
  %i.np = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.nq = and i64 %i.np, 65535
  %.not1248 = icmp eq i64 %.14943.lcssa, %i.nq
  br i1 %.not1248, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr @.str.5, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.df:                                            ; preds = %bb.dd, %._crit_edge2324, %bb.da
  %.191075 = phi ptr [ %.171073, %bb.da ], [ %.181074.lcssa, %._crit_edge2324 ], [ %.181074.lcssa, %bb.dd ]
  %.191011 = phi i32 [ %.171009, %bb.da ], [ %.181010.lcssa, %._crit_edge2324 ], [ %.181010.lcssa, %bb.dd ]
  %.15944 = phi i64 [ %.13942, %bb.da ], [ 0, %._crit_edge2324 ], [ 0, %bb.dd ]
  %.15 = phi i32 [ %.13, %bb.da ], [ 0, %._crit_edge2324 ], [ 0, %bb.dd ]
  %i.nr = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 3 uses
  %.not1249 = icmp eq ptr %i.nr, null
  br i1 %.not1249, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ns = lshr i32 %i.mt, 9
  %i.nt = and i32 %i.ns, 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 68
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !92
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 72
  store i32 1, ptr %i.nv, align 8, !tbaa !51
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.nw = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.nw, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.nw, ptr %i.al, align 8, !tbaa !26
  store i32 16191, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.di:                                            ; preds = %.lr.ph2116.preheader
  %i.nx = add i32 %.0992, -1                      ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.nz = load i8, ptr %.01056, align 1, !tbaa !45
  %i.oa = zext i8 %i.nz to i64
  %i.ob = shl nuw nsw i64 %i.oa, %i.bx
  %i.oc = add i64 %i.ob, %.0929                   ; 3 uses
  %indvars.iv.next2827 = add nuw nsw i64 %i.bx, 8 ; 2 uses
  %i.od = icmp ult i32 %.0918, 24
  br i1 %i.od, label %.lr.ph2116.1, label %._crit_edge2117

.lr.ph2116.1:                                     ; preds = %bb.di
  %i.oe = icmp eq i32 %i.nx, 0
  br i1 %i.oe, label %.loopexit1277.loopexit2350, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2116.1
  %i.of = add i32 %.0992, -2                      ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.01056, i64 2 ; 3 uses
  %i.oh = load i8, ptr %i.ny, align 1, !tbaa !45
  %i.oi = zext i8 %i.oh to i64
  %i.oj = shl nuw nsw i64 %i.oi, %indvars.iv.next2827
  %i.ok = add i64 %i.oj, %i.oc                    ; 3 uses
  %indvars.iv.next2827.1 = add nuw nsw i64 %i.bx, 16 ; 2 uses
  %i.ol = icmp ult i32 %.0918, 16
  br i1 %i.ol, label %.lr.ph2116.2, label %._crit_edge2117

.lr.ph2116.2:                                     ; preds = %bb.dj
  %i.om = icmp eq i32 %i.of, 0
  br i1 %i.om, label %.loopexit1277.loopexit2350, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2116.2
  %i.on = add i32 %.0992, -3                      ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.01056, i64 3 ; 3 uses
  %i.op = load i8, ptr %i.og, align 1, !tbaa !45
  %i.oq = zext i8 %i.op to i64
  %i.or = shl nuw nsw i64 %i.oq, %indvars.iv.next2827.1
  %i.os = add i64 %i.or, %i.ok                    ; 3 uses
  %indvars.iv.next2827.2 = add nuw nsw i64 %i.bx, 24 ; 2 uses
  %i.ot = icmp ult i32 %.0918, 8
  br i1 %i.ot, label %.lr.ph2116.3, label %._crit_edge2117

.lr.ph2116.3:                                     ; preds = %bb.dk
  %i.ou = icmp eq i32 %i.on, 0
  br i1 %i.ou, label %.loopexit1277.loopexit2350, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph2116.3
  %i.ov = add i32 %.0992, -4
  %i.ow = getelementptr inbounds nuw i8, ptr %.01056, i64 4
  %i.ox = load i8, ptr %i.oo, align 1, !tbaa !45
  %i.oy = zext i8 %i.ox to i64
  %i.oz = shl nuw nsw i64 %i.oy, %indvars.iv.next2827.2
  %i.pa = add i64 %i.oz, %i.os
  br label %._crit_edge2117

._crit_edge2117:                                  ; preds = %bb.di, %bb.dj, %bb.dk, %bb.dl, %.preheader1300
  %.201076.lcssa = phi ptr [ %.01056, %.preheader1300 ], [ %i.ny, %bb.di ], [ %i.og, %bb.dj ], [ %i.oo, %bb.dk ], [ %i.ow, %bb.dl ]
  %.201012.lcssa = phi i32 [ %.0992, %.preheader1300 ], [ %i.nx, %bb.di ], [ %i.of, %bb.dj ], [ %i.on, %bb.dk ], [ %i.ov, %bb.dl ]
  %.16945.lcssa = phi i64 [ %.0929, %.preheader1300 ], [ %i.oc, %bb.di ], [ %i.ok, %bb.dj ], [ %i.os, %bb.dk ], [ %i.pa, %bb.dl ]
  %trunc1208 = trunc i64 %.16945.lcssa to i32
  %rev1209 = call i32 @llvm.bswap.i32(i32 %trunc1208)
  %i.pb = zext i32 %rev1209 to i64                ; 2 uses
  store i64 %i.pb, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.pb, ptr %i.al, align 8, !tbaa !26
  store i32 16190, ptr %i.m, align 8, !tbaa !21
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge2117, %bb.k
  %.211077 = phi ptr [ %.201076.lcssa, %._crit_edge2117 ], [ %.01056, %bb.k ] ; 2 uses
  %.211013 = phi i32 [ %.201012.lcssa, %._crit_edge2117 ], [ %.0992, %bb.k ] ; 2 uses
  %.17946 = phi i64 [ 0, %._crit_edge2117 ], [ %.0929, %bb.k ] ; 2 uses
  %.17 = phi i32 [ 0, %._crit_edge2117 ], [ %.0918, %bb.k ] ; 2 uses
  %i.pc = load i32, ptr %i.bl, align 4, !tbaa !28
  %i.pd = icmp eq i32 %i.pc, 0
  br i1 %i.pd, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store ptr %.01053, ptr %i.p, align 8, !tbaa !77
  store i32 %.0990, ptr %i.y, align 8, !tbaa !78
  store ptr %.211077, ptr %0, align 8, !tbaa !47
  store i32 %.211013, ptr %i.aa, align 8, !tbaa !48
  store i64 %.17946, ptr %i.ac, align 8, !tbaa !32
  store i32 %.17, ptr %i.ae, align 8, !tbaa !33
  br label %inflateStateCheck.exit.thread

end_hunk_0
