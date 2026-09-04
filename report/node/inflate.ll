Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inflate?download=true
inline.NumInlined: 53
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@inflate:bb.a

bb.bj:                                            ; preds = %bb.bi
  %i.ix = load i32, ptr %i.ag, align 8, !tbaa !26
  %i.iy = and i32 %i.ix, 4
  %.not1231 = icmp eq i32 %i.iy, 0
  br i1 %.not1231, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iz = trunc i64 %.8943.lcssa to i16
  store i16 %i.iz, ptr %i.a, align 4
  %i.ja = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.jb = call i64 @crc32(i64 noundef %i.ja, ptr noundef nonnull %i.a, i32 noundef 2) #12
  store i64 %i.jb, ptr %i.ak, align 8, !tbaa !48
  br label %bb.bn

bb.bl:                                            ; preds = %.thread2952, %bb.be
  %.79302964 = phi i32 [ 0, %.thread2952 ], [ %.0923, %bb.be ] ; 2 uses
  %.79422962 = phi i64 [ 0, %.thread2952 ], [ %.0935, %bb.be ] ; 2 uses
  %.710052960 = phi i32 [ %.61004.lcssa, %.thread2952 ], [ %.0998, %bb.be ] ; 2 uses
  %.710692958 = phi ptr [ %.61068.lcssa, %.thread2952 ], [ %.01062, %bb.be ] ; 2 uses
  %i.jc = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %.not1228 = icmp eq ptr %i.jc, null
  br i1 %.not1228, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store ptr null, ptr %i.jd, align 8, !tbaa !85
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bl, %bb.bm
  %.91071 = phi ptr [ %.710692958, %bb.bl ], [ %.710692958, %bb.bm ], [ %.81070.lcssa, %bb.bi ], [ %.81070.lcssa, %bb.bj ], [ %.81070.lcssa, %bb.bk ]
  %.91007 = phi i32 [ %.710052960, %bb.bl ], [ %.710052960, %bb.bm ], [ %.81006.lcssa, %bb.bi ], [ %.81006.lcssa, %bb.bj ], [ %.81006.lcssa, %bb.bk ]
  %.9944 = phi i64 [ %.79422962, %bb.bl ], [ %.79422962, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bk ]
  %.9932 = phi i32 [ %.79302964, %bb.bl ], [ %.79302964, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bk ]
  store i32 16185, ptr %i.m, align 8, !tbaa !23
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.k
  %.101072 = phi ptr [ %.91071, %bb.bn ], [ %.01062, %bb.k ] ; 5 uses
  %.101008 = phi i32 [ %.91007, %bb.bn ], [ %.0998, %bb.k ] ; 4 uses
  %.10945 = phi i64 [ %.9944, %bb.bn ], [ %.0935, %bb.k ] ; 2 uses
  %.10933 = phi i32 [ %.9932, %bb.bn ], [ %.0923, %bb.k ] ; 2 uses
  %i.je = load i32, ptr %i.aj, align 8, !tbaa !30 ; 4 uses
  %i.jf = and i32 %i.je, 1024
  %.not1232 = icmp eq i32 %i.jf, 0
  br i1 %.not1232, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = load i32, ptr %i.an, align 4, !tbaa !53 ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.jg, i32 %.101008) ; 7 uses
  %.not1233 = icmp eq i32 %spec.select, 0
  br i1 %.not1233, label %bb.by, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jh = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 4 uses
  %.not1234 = icmp eq ptr %i.jh, null
  br i1 %.not1234, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !85 ; 2 uses
  %.not1235 = icmp eq ptr %i.jj, null
  br i1 %.not1235, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !84
  %i.jm = sub i32 %i.jl, %i.jg                    ; 4 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 36
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !86 ; 3 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr align 1 %.101072, i64 %i.jw, i1 false)
  %.pre2870 = load i32, ptr %i.aj, align 8, !tbaa !30
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.jx = phi i32 [ %.pre2870, %bb.bt ], [ %i.je, %bb.bs ], [ %i.je, %bb.br ], [ %i.je, %bb.bq ]
  %i.jy = and i32 %i.jx, 512
  %.not1236 = icmp eq i32 %i.jy, 0
  br i1 %.not1236, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jz = load i32, ptr %i.ag, align 8, !tbaa !26
  %i.ka = and i32 %i.jz, 4
  %.not1237 = icmp eq i32 %i.ka, 0
  br i1 %.not1237, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kb = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.kc = call i64 @crc32(i64 noundef %i.kb, ptr noundef %.101072, i32 noundef %spec.select) #12
  store i64 %i.kc, ptr %i.ak, align 8, !tbaa !48
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.kd = sub nuw i32 %.101008, %spec.select
  %i.ke = zext i32 %spec.select to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %.101072, i64 %i.ke
  %i.kg = load i32, ptr %i.an, align 4, !tbaa !53
  %i.kh = sub i32 %i.kg, %spec.select             ; 2 uses
  store i32 %i.kh, ptr %i.an, align 4, !tbaa !53
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bp
  %i.ki = phi i32 [ %i.kh, %bb.bx ], [ %i.jg, %bb.bp ]
  %.111073 = phi ptr [ %i.kf, %bb.bx ], [ %.101072, %bb.bp ] ; 2 uses
  %.111009 = phi i32 [ %i.kd, %bb.bx ], [ %.101008, %bb.bp ] ; 2 uses
  %.not1238 = icmp eq i32 %i.ki, 0
  br i1 %.not1238, label %bb.bz, label %.loopexit1282

bb.bz:                                            ; preds = %bb.by, %bb.bo
  %.121074 = phi ptr [ %.111073, %bb.by ], [ %.101072, %bb.bo ]
  %.121010 = phi i32 [ %.111009, %bb.by ], [ %.101008, %bb.bo ]
  store i32 0, ptr %i.an, align 4, !tbaa !53
  store i32 16186, ptr %i.m, align 8, !tbaa !23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.k
  %.131075 = phi ptr [ %.121074, %bb.bz ], [ %.01062, %bb.k ] ; 6 uses
  %.131011 = phi i32 [ %.121010, %bb.bz ], [ %.0998, %bb.k ] ; 5 uses
  %.11946 = phi i64 [ %.10945, %bb.bz ], [ %.0935, %bb.k ] ; 3 uses
  %.11934 = phi i32 [ %.10933, %bb.bz ], [ %.0923, %bb.k ] ; 3 uses
  %i.kj = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.kk = and i32 %i.kj, 2048
  %.not1239 = icmp eq i32 %i.kk, 0
  br i1 %.not1239, label %bb.ck, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kl = icmp eq i32 %.131011, 0
  br i1 %i.kl, label %.loopexit1282, label %.preheader1296.preheader

.preheader1296.preheader:                         ; preds = %bb.cb
  %i.km = zext i32 %.131011 to i64
  br label %.preheader1296

.preheader1296:                                   ; preds = %.preheader1296.preheader, %bb.cf
  %indvars.iv2843 = phi i64 [ 0, %.preheader1296.preheader ], [ %indvars.iv.next2844, %bb.cf ] ; 2 uses
  %indvars.iv.next2844 = add nuw nsw i64 %indvars.iv2843, 1 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.131075, i64 %indvars.iv2843
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !46  ; 2 uses
  %i.kp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 3 uses
  %.not1241 = icmp eq ptr %i.kp, null
  br i1 %.not1241, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %.preheader1296
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !87 ; 2 uses
  %.not1242 = icmp eq ptr %i.kr, null
  br i1 %.not1242, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ks = load i32, ptr %i.an, align 4, !tbaa !53 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !88
  %i.kv = icmp ult i32 %i.ks, %i.ku
  br i1 %i.kv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.kw = add nuw i32 %i.ks, 1
  store i32 %i.kw, ptr %i.an, align 4, !tbaa !53
  %i.kx = zext i32 %i.ks to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kx
  store i8 %i.ko, ptr %i.ky, align 1, !tbaa !46
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader1296, %bb.cc, %bb.cd, %bb.ce
  %i.kz = icmp ne i8 %i.ko, 0                     ; 2 uses
  %i.la = icmp samesign ult i64 %indvars.iv.next2844, %i.km
  %i.lb = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %i.lb, label %.preheader1296, label %bb.cg, !llvm.loop !62

bb.cg:                                            ; preds = %bb.cf
  %i.lc = trunc nuw i64 %indvars.iv.next2844 to i32 ; 2 uses
  %i.ld = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.le = and i32 %i.ld, 512
  %.not1243 = icmp eq i32 %i.le, 0
  br i1 %.not1243, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lf = load i32, ptr %i.ag, align 8, !tbaa !26
  %i.lg = and i32 %i.lf, 4
  %.not1244 = icmp eq i32 %i.lg, 0
  br i1 %.not1244, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lh = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.li = call i64 @crc32(i64 noundef %i.lh, ptr noundef nonnull %.131075, i32 noundef %i.lc) #12
  store i64 %i.li, ptr %i.ak, align 8, !tbaa !48
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.lj = sub nuw i32 %.131011, %i.lc             ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.131075, i64 %indvars.iv.next2844 ; 2 uses
  br i1 %i.kz, label %.loopexit1282, label %bb.cm

bb.ck:                                            ; preds = %bb.ca
  %i.ll = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %.not1240 = icmp eq ptr %i.ll, null
  br i1 %.not1240, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  store ptr null, ptr %i.lm, align 8, !tbaa !87
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.cj
  %.141076 = phi ptr [ %i.lk, %bb.cj ], [ %.131075, %bb.cl ], [ %.131075, %bb.ck ]
  %.141012 = phi i32 [ %i.lj, %bb.cj ], [ %.131011, %bb.cl ], [ %.131011, %bb.ck ]
  store i32 0, ptr %i.an, align 4, !tbaa !53
  store i32 16187, ptr %i.m, align 8, !tbaa !23
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.k
  %.151077 = phi ptr [ %.141076, %bb.cm ], [ %.01062, %bb.k ] ; 6 uses
  %.151013 = phi i32 [ %.141012, %bb.cm ], [ %.0998, %bb.k ] ; 5 uses
  %.12947 = phi i64 [ %.11946, %bb.cm ], [ %.0935, %bb.k ] ; 3 uses
  %.12 = phi i32 [ %.11934, %bb.cm ], [ %.0923, %bb.k ] ; 3 uses
  %i.ln = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.lo = and i32 %i.ln, 4096
  %.not1245 = icmp eq i32 %i.lo, 0
  br i1 %.not1245, label %bb.cx, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lp = icmp eq i32 %.151013, 0
  br i1 %i.lp, label %.loopexit1282, label %.preheader1295.preheader

.preheader1295.preheader:                         ; preds = %bb.co
  %i.lq = zext i32 %.151013 to i64
  br label %.preheader1295

.preheader1295:                                   ; preds = %.preheader1295.preheader, %bb.cs
  %indvars.iv2846 = phi i64 [ 0, %.preheader1295.preheader ], [ %indvars.iv.next2847, %bb.cs ] ; 2 uses
  %indvars.iv.next2847 = add nuw nsw i64 %indvars.iv2846, 1 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.151077, i64 %indvars.iv2846
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !46  ; 2 uses
  %i.lt = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 3 uses
  %.not1247 = icmp eq ptr %i.lt, null
  br i1 %.not1247, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %.preheader1295
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !89 ; 2 uses
  %.not1248 = icmp eq ptr %i.lv, null
  br i1 %.not1248, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lw = load i32, ptr %i.an, align 4, !tbaa !53 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !90
  %i.lz = icmp ult i32 %i.lw, %i.ly
  br i1 %i.lz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ma = add nuw i32 %i.lw, 1
  store i32 %i.ma, ptr %i.an, align 4, !tbaa !53
  %i.mb = zext i32 %i.lw to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mb
  store i8 %i.ls, ptr %i.mc, align 1, !tbaa !46
  br label %bb.cs

bb.cs:                                            ; preds = %.preheader1295, %bb.cp, %bb.cq, %bb.cr
  %i.md = icmp ne i8 %i.ls, 0                     ; 2 uses
  %i.me = icmp samesign ult i64 %indvars.iv.next2847, %i.lq
  %i.mf = select i1 %i.md, i1 %i.me, i1 false
  br i1 %i.mf, label %.preheader1295, label %bb.ct, !llvm.loop !63

bb.ct:                                            ; preds = %bb.cs
  %i.mg = trunc nuw i64 %indvars.iv.next2847 to i32 ; 2 uses
  %i.mh = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.mi = and i32 %i.mh, 512
  %.not1249 = icmp eq i32 %i.mi, 0
  br i1 %.not1249, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mj = load i32, ptr %i.ag, align 8, !tbaa !26
  %i.mk = and i32 %i.mj, 4
  %.not1250 = icmp eq i32 %i.mk, 0
  br i1 %.not1250, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ml = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.mm = call i64 @crc32(i64 noundef %i.ml, ptr noundef nonnull %.151077, i32 noundef %i.mg) #12
  store i64 %i.mm, ptr %i.ak, align 8, !tbaa !48
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.mn = sub nuw i32 %.151013, %i.mg             ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.151077, i64 %indvars.iv.next2847 ; 2 uses
  br i1 %i.md, label %.loopexit1282, label %bb.cz

bb.cx:                                            ; preds = %bb.cn
  %i.mp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %.not1246 = icmp eq ptr %i.mp, null
  br i1 %.not1246, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  store ptr null, ptr %i.mq, align 8, !tbaa !89
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy, %bb.cw
  %.161078 = phi ptr [ %i.mo, %bb.cw ], [ %.151077, %bb.cy ], [ %.151077, %bb.cx ]
  %.161014 = phi i32 [ %i.mn, %bb.cw ], [ %.151013, %bb.cy ], [ %.151013, %bb.cx ]
  store i32 16188, ptr %i.m, align 8, !tbaa !23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.k
  %.171079 = phi ptr [ %.161078, %bb.cz ], [ %.01062, %bb.k ] ; 6 uses
  %.171015 = phi i32 [ %.161014, %bb.cz ], [ %.0998, %bb.k ] ; 5 uses
  %.13948 = phi i64 [ %.12947, %bb.cz ], [ %.0935, %bb.k ] ; 4 uses
  %.13 = phi i32 [ %.12, %bb.cz ], [ %.0923, %bb.k ] ; 5 uses
  %i.mr = load i32, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.ms = and i32 %i.mr, 512
  %.not1251 = icmp eq i32 %i.ms, 0
  br i1 %.not1251, label %bb.df, label %.preheader1293

.preheader1293:                                   ; preds = %bb.da
  %i.mt = icmp ult i32 %.13, 16
  br i1 %i.mt, label %.lr.ph2327.preheader, label %._crit_edge2328

.lr.ph2327.preheader:                             ; preds = %.preheader1293
  %i.mu = zext nneg i32 %.13 to i64               ; 4 uses
  %i.mv = icmp eq i32 %.171015, 0
  br i1 %i.mv, label %.loopexit1282.loopexit2349, label %bb.db

bb.db:                                            ; preds = %.lr.ph2327.preheader
  %i.mw = add i32 %.171015, -1                    ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.171079, i64 1 ; 3 uses
  %i.my = load i8, ptr %.171079, align 1, !tbaa !46
  %i.mz = zext i8 %i.my to i64
  %i.na = shl nuw nsw i64 %i.mz, %i.mu
  %i.nb = add i64 %i.na, %.13948                  ; 3 uses
  %indvars.iv.next2850 = add nuw nsw i64 %i.mu, 8 ; 3 uses
  %i.nc = icmp ult i32 %.13, 8
  br i1 %i.nc, label %.lr.ph2327.1, label %._crit_edge2328.loopexit

.lr.ph2327.1:                                     ; preds = %bb.db
  %i.nd = icmp eq i32 %i.mw, 0
  br i1 %i.nd, label %.loopexit1282.loopexit2349, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph2327.1
  %i.ne = add i32 %.171015, -2
  %i.nf = getelementptr inbounds nuw i8, ptr %.171079, i64 2
  %i.ng = load i8, ptr %i.mx, align 1, !tbaa !46
  %i.nh = zext i8 %i.ng to i64
  %i.ni = shl nuw nsw i64 %i.nh, %indvars.iv.next2850
  %i.nj = add i64 %i.ni, %i.nb
  %indvars.iv.next2850.1 = or disjoint i64 %i.mu, 16
  br label %._crit_edge2328.loopexit

._crit_edge2328.loopexit:                         ; preds = %bb.dc, %bb.db
  %.lcssa4162 = phi i32 [ %i.mw, %bb.db ], [ %i.ne, %bb.dc ]
  %.lcssa4161 = phi ptr [ %i.mx, %bb.db ], [ %i.nf, %bb.dc ]
  %.lcssa4160 = phi i64 [ %i.nb, %bb.db ], [ %i.nj, %bb.dc ]
  %indvars.iv.next2850.lcssa = phi i64 [ %indvars.iv.next2850, %bb.db ], [ %indvars.iv.next2850.1, %bb.dc ]
  %i.nk = trunc nuw nsw i64 %indvars.iv.next2850.lcssa to i32
  br label %._crit_edge2328

._crit_edge2328:                                  ; preds = %._crit_edge2328.loopexit, %.preheader1293
  %.181080.lcssa = phi ptr [ %.171079, %.preheader1293 ], [ %.lcssa4161, %._crit_edge2328.loopexit ] ; 3 uses
  %.181016.lcssa = phi i32 [ %.171015, %.preheader1293 ], [ %.lcssa4162, %._crit_edge2328.loopexit ] ; 3 uses
  %.14949.lcssa = phi i64 [ %.13948, %.preheader1293 ], [ %.lcssa4160, %._crit_edge2328.loopexit ] ; 2 uses
  %.14.lcssa = phi i32 [ %.13, %.preheader1293 ], [ %i.nk, %._crit_edge2328.loopexit ]
  %i.nl = load i32, ptr %i.ag, align 8, !tbaa !26
  %i.nm = and i32 %i.nl, 4
  %.not1252 = icmp eq i32 %i.nm, 0
  br i1 %.not1252, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge2328
  %i.nn = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.no = and i64 %i.nn, 65535
  %.not1253 = icmp eq i64 %.14949.lcssa, %i.no
  br i1 %.not1253, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store ptr @.str.5, ptr %i.am, align 8, !tbaa !47
  store i32 16209, ptr %i.m, align 8, !tbaa !23
  br label %.thread

bb.df:                                            ; preds = %bb.dd, %._crit_edge2328, %bb.da
  %.191081 = phi ptr [ %.171079, %bb.da ], [ %.181080.lcssa, %._crit_edge2328 ], [ %.181080.lcssa, %bb.dd ]
  %.191017 = phi i32 [ %.171015, %bb.da ], [ %.181016.lcssa, %._crit_edge2328 ], [ %.181016.lcssa, %bb.dd ]
  %.15950 = phi i64 [ %.13948, %bb.da ], [ 0, %._crit_edge2328 ], [ 0, %bb.dd ]
  %.15 = phi i32 [ %.13, %bb.da ], [ 0, %._crit_edge2328 ], [ 0, %bb.dd ]
  %i.np = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 3 uses
  %.not1254 = icmp eq ptr %i.np, null
  br i1 %.not1254, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nq = lshr i32 %i.mr, 9
  %i.nr = and i32 %i.nq, 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 68
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !91
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  store i32 1, ptr %i.nt, align 8, !tbaa !52
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.nu = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #12 ; 2 uses
  store i64 %i.nu, ptr %i.ak, align 8, !tbaa !48
  store i64 %i.nu, ptr %i.al, align 8, !tbaa !27
  store i32 16191, ptr %i.m, align 8, !tbaa !23
  br label %.thread

bb.di:                                            ; preds = %.lr.ph2120.preheader
  %i.nv = add i32 %.0998, -1                      ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.01062, i64 1 ; 3 uses
  %i.nx = load i8, ptr %.01062, align 1, !tbaa !46
  %i.ny = zext i8 %i.nx to i64
  %i.nz = shl nuw nsw i64 %i.ny, %i.bx
  %i.oa = add i64 %i.nz, %.0935                   ; 3 uses
  %indvars.iv.next2829 = add nuw nsw i64 %i.bx, 8 ; 2 uses
  %i.ob = icmp ult i32 %.0923, 24
  br i1 %i.ob, label %.lr.ph2120.1, label %._crit_edge2121

.lr.ph2120.1:                                     ; preds = %bb.di
  %i.oc = icmp eq i32 %i.nv, 0
  br i1 %i.oc, label %.loopexit1282.loopexit2354, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph2120.1
  %i.od = add i32 %.0998, -2                      ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.01062, i64 2 ; 3 uses
  %i.of = load i8, ptr %i.nw, align 1, !tbaa !46
  %i.og = zext i8 %i.of to i64
  %i.oh = shl nuw nsw i64 %i.og, %indvars.iv.next2829
  %i.oi = add i64 %i.oh, %i.oa                    ; 3 uses
  %indvars.iv.next2829.1 = add nuw nsw i64 %i.bx, 16 ; 2 uses
  %i.oj = icmp ult i32 %.0923, 16
  br i1 %i.oj, label %.lr.ph2120.2, label %._crit_edge2121

.lr.ph2120.2:                                     ; preds = %bb.dj
  %i.ok = icmp eq i32 %i.od, 0
  br i1 %i.ok, label %.loopexit1282.loopexit2354, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph2120.2
  %i.ol = add i32 %.0998, -3                      ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.01062, i64 3 ; 3 uses
  %i.on = load i8, ptr %i.oe, align 1, !tbaa !46
  %i.oo = zext i8 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, %indvars.iv.next2829.1
  %i.oq = add i64 %i.op, %i.oi                    ; 3 uses
  %indvars.iv.next2829.2 = add nuw nsw i64 %i.bx, 24 ; 2 uses
  %i.or = icmp ult i32 %.0923, 8
  br i1 %i.or, label %.lr.ph2120.3, label %._crit_edge2121

.lr.ph2120.3:                                     ; preds = %bb.dk
  %i.os = icmp eq i32 %i.ol, 0
  br i1 %i.os, label %.loopexit1282.loopexit2354, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph2120.3
  %i.ot = add i32 %.0998, -4
  %i.ou = getelementptr inbounds nuw i8, ptr %.01062, i64 4
  %i.ov = load i8, ptr %i.om, align 1, !tbaa !46
  %i.ow = zext i8 %i.ov to i64
  %i.ox = shl nuw nsw i64 %i.ow, %indvars.iv.next2829.2
  %i.oy = add i64 %i.ox, %i.oq
  br label %._crit_edge2121

._crit_edge2121:                                  ; preds = %bb.di, %bb.dj, %bb.dk, %bb.dl, %.preheader1305
  %.201082.lcssa = phi ptr [ %.01062, %.preheader1305 ], [ %i.nw, %bb.di ], [ %i.oe, %bb.dj ], [ %i.om, %bb.dk ], [ %i.ou, %bb.dl ]
  %.201018.lcssa = phi i32 [ %.0998, %.preheader1305 ], [ %i.nv, %bb.di ], [ %i.od, %bb.dj ], [ %i.ol, %bb.dk ], [ %i.ot, %bb.dl ]
  %.16951.lcssa = phi i64 [ %.0935, %.preheader1305 ], [ %i.oa, %bb.di ], [ %i.oi, %bb.dj ], [ %i.oq, %bb.dk ], [ %i.oy, %bb.dl ]
  %trunc1213 = trunc i64 %.16951.lcssa to i32
  %rev1214 = call i32 @llvm.bswap.i32(i32 %trunc1213)
  %i.oz = zext i32 %rev1214 to i64                ; 2 uses
  store i64 %i.oz, ptr %i.ak, align 8, !tbaa !48
  store i64 %i.oz, ptr %i.al, align 8, !tbaa !27
  store i32 16190, ptr %i.m, align 8, !tbaa !23
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge2121, %bb.k
  %.211083 = phi ptr [ %.201082.lcssa, %._crit_edge2121 ], [ %.01062, %bb.k ] ; 2 uses
  %.211019 = phi i32 [ %.201018.lcssa, %._crit_edge2121 ], [ %.0998, %bb.k ] ; 2 uses
  %.17952 = phi i64 [ 0, %._crit_edge2121 ], [ %.0935, %bb.k ] ; 2 uses
  %.17 = phi i32 [ 0, %._crit_edge2121 ], [ %.0923, %bb.k ] ; 2 uses
  %i.pa = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store ptr %.01059, ptr %i.p, align 8, !tbaa !76
  store i32 %.0996, ptr %i.y, align 8, !tbaa !77
  store ptr %.211083, ptr %0, align 8, !tbaa !49
  store i32 %.211019, ptr %i.aa, align 8, !tbaa !50
  store i64 %.17952, ptr %i.ac, align 8, !tbaa !33
  store i32 %.17, ptr %i.ae, align 8, !tbaa !34
  br label %inflateStateCheck.exit.thread
end_hunk_0
