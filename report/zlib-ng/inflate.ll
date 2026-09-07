Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/inflate?download=true
inline.NumInlined: 31
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@zng_inflate:bb.a

bb.bl:                                            ; preds = %bb.bk
  %i.jh = trunc i64 %.8928.lcssa to i16
  store i16 %i.jh, ptr %i.a, align 4
  %i.ji = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = call i32 @zng_crc32(i32 noundef %i.jj, ptr noundef nonnull %i.a, i32 noundef 2) #14
  %i.jl = zext i32 %i.jk to i64
  store i64 %i.jl, ptr %i.ao, align 32, !tbaa !28
  br label %bb.bo

bb.bm:                                            ; preds = %.thread2908, %bb.bf
  %.79162920 = phi i32 [ 0, %.thread2908 ], [ %.0909, %bb.bf ] ; 2 uses
  %.79272918 = phi i64 [ 0, %.thread2908 ], [ %.0920, %bb.bf ] ; 2 uses
  %.79902916 = phi i32 [ %.6989.lcssa, %.thread2908 ], [ %.0983, %bb.bf ] ; 2 uses
  %.710552914 = phi ptr [ %.61054.lcssa, %.thread2908 ], [ %.01048, %bb.bf ] ; 2 uses
  %i.jm = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1211 = icmp eq ptr %i.jm, null
  br i1 %.not1211, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store ptr null, ptr %i.jn, align 8, !tbaa !98
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bm, %bb.bn
  %.91057 = phi ptr [ %.710552914, %bb.bm ], [ %.710552914, %bb.bn ], [ %.81056.lcssa, %bb.bj ], [ %.81056.lcssa, %bb.bk ], [ %.81056.lcssa, %bb.bl ]
  %.9992 = phi i32 [ %.79902916, %bb.bm ], [ %.79902916, %bb.bn ], [ %.8991.lcssa, %bb.bj ], [ %.8991.lcssa, %bb.bk ], [ %.8991.lcssa, %bb.bl ]
  %.9929 = phi i64 [ %.79272918, %bb.bm ], [ %.79272918, %bb.bn ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ]
  %.9918 = phi i32 [ %.79162920, %bb.bm ], [ %.79162920, %bb.bn ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ]
  store i32 16185, ptr %i.p, align 8, !tbaa !23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.l
  %.101058 = phi ptr [ %.91057, %bb.bo ], [ %.01048, %bb.l ] ; 5 uses
  %.10993 = phi i32 [ %.9992, %bb.bo ], [ %.0983, %bb.l ] ; 4 uses
  %.10930 = phi i64 [ %.9929, %bb.bo ], [ %.0920, %bb.l ] ; 2 uses
  %.10919 = phi i32 [ %.9918, %bb.bo ], [ %.0909, %bb.l ] ; 2 uses
  %i.jo = load i32, ptr %i.am, align 8, !tbaa !31 ; 4 uses
  %i.jp = and i32 %i.jo, 1024
  %.not1215 = icmp eq i32 %i.jp, 0
  br i1 %.not1215, label %bb.ca, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jq = load i32, ptr %i.ar, align 4, !tbaa !62 ; 3 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.jq, i32 %.10993) ; 7 uses
  %.not1216 = icmp eq i32 %spec.select, 0
  br i1 %.not1216, label %bb.bz, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jr = load ptr, ptr %i.br, align 16, !tbaa !32 ; 4 uses
  %.not1217 = icmp eq ptr %i.jr, null
  br i1 %.not1217, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !98 ; 2 uses
  %.not1218 = icmp eq ptr %i.jt, null
  br i1 %.not1218, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !97
  %i.jw = sub i32 %i.jv, %i.jq                    ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !99 ; 3 uses
  %i.jz = icmp ult i32 %i.jw, %i.jy
  br i1 %i.jz, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ka = zext i32 %i.jw to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ka
  %i.kc = add i32 %i.jw, %spec.select
  %i.kd = icmp ugt i32 %i.kc, %i.jy
  %i.ke = sub nuw i32 %i.jy, %i.jw
  %i.kf = select i1 %i.kd, i32 %i.ke, i32 %spec.select
  %i.kg = zext i32 %i.kf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kb, ptr align 1 %.101058, i64 %i.kg, i1 false)
  %.pre2828 = load i32, ptr %i.am, align 8, !tbaa !31
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs, %bb.br
  %i.kh = phi i32 [ %i.jo, %bb.bt ], [ %.pre2828, %bb.bu ], [ %i.jo, %bb.bs ], [ %i.jo, %bb.br ]
  %i.ki = and i32 %i.kh, 512
  %.not1219 = icmp eq i32 %i.ki, 0
  br i1 %.not1219, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kj = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.kk = and i32 %i.kj, 4
  %.not1220 = icmp eq i32 %i.kk, 0
  br i1 %.not1220, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kl = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.km = trunc i64 %i.kl to i32
  %i.kn = call i32 @zng_crc32(i32 noundef %i.km, ptr noundef %.101058, i32 noundef %spec.select) #14
  %i.ko = zext i32 %i.kn to i64
  store i64 %i.ko, ptr %i.ao, align 32, !tbaa !28
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.kp = sub nuw i32 %.10993, %spec.select
  %i.kq = zext i32 %spec.select to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %.101058, i64 %i.kq
  %i.ks = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.kt = sub i32 %i.ks, %spec.select             ; 2 uses
  store i32 %i.kt, ptr %i.ar, align 4, !tbaa !62
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bq
  %i.ku = phi i32 [ %i.kt, %bb.by ], [ %i.jq, %bb.bq ]
  %.111059 = phi ptr [ %i.kr, %bb.by ], [ %.101058, %bb.bq ] ; 2 uses
  %.11994 = phi i32 [ %i.kp, %bb.by ], [ %.10993, %bb.bq ] ; 2 uses
  %.not1221 = icmp eq i32 %i.ku, 0
  br i1 %.not1221, label %bb.ca, label %.loopexit1260

bb.ca:                                            ; preds = %bb.bz, %bb.bp
  %.121060 = phi ptr [ %.111059, %bb.bz ], [ %.101058, %bb.bp ]
  %.12995 = phi i32 [ %.11994, %bb.bz ], [ %.10993, %bb.bp ]
  store i32 0, ptr %i.ar, align 4, !tbaa !62
  store i32 16186, ptr %i.p, align 8, !tbaa !23
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.l
  %.131061 = phi ptr [ %.121060, %bb.ca ], [ %.01048, %bb.l ] ; 6 uses
  %.13996 = phi i32 [ %.12995, %bb.ca ], [ %.0983, %bb.l ] ; 5 uses
  %.11931 = phi i64 [ %.10930, %bb.ca ], [ %.0920, %bb.l ] ; 3 uses
  %.11 = phi i32 [ %.10919, %bb.ca ], [ %.0909, %bb.l ] ; 3 uses
  %i.kv = load i32, ptr %i.am, align 8, !tbaa !31
  %i.kw = and i32 %i.kv, 2048
  %.not1222 = icmp eq i32 %i.kw, 0
  br i1 %.not1222, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kx = icmp eq i32 %.13996, 0
  br i1 %i.kx, label %.loopexit1260, label %.preheader1274.preheader

.preheader1274.preheader:                         ; preds = %bb.cc
  %i.ky = zext i32 %.13996 to i64
  br label %.preheader1274

.preheader1274:                                   ; preds = %.preheader1274.preheader, %bb.cg
  %indvars.iv2804 = phi i64 [ 0, %.preheader1274.preheader ], [ %indvars.iv.next2805, %bb.cg ] ; 2 uses
  %indvars.iv.next2805 = add nuw nsw i64 %indvars.iv2804, 1 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.131061, i64 %indvars.iv2804
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !55  ; 2 uses
  %i.lb = load ptr, ptr %i.br, align 16, !tbaa !32 ; 3 uses
  %.not1224 = icmp eq ptr %i.lb, null
  br i1 %.not1224, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %.preheader1274
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !100 ; 2 uses
  %.not1225 = icmp eq ptr %i.ld, null
  br i1 %.not1225, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.le = load i32, ptr %i.ar, align 4, !tbaa !62 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !101
  %i.lh = icmp ult i32 %i.le, %i.lg
  br i1 %i.lh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.li = add nuw i32 %i.le, 1
  store i32 %i.li, ptr %i.ar, align 4, !tbaa !62
  %i.lj = zext i32 %i.le to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lj
  store i8 %i.la, ptr %i.lk, align 1, !tbaa !55
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader1274, %bb.cd, %bb.ce, %bb.cf
  %i.ll = icmp ne i8 %i.la, 0                     ; 2 uses
  %i.lm = icmp samesign ult i64 %indvars.iv.next2805, %i.ky
  %i.ln = select i1 %i.ll, i1 %i.lm, i1 false
  br i1 %i.ln, label %.preheader1274, label %bb.ch, !llvm.loop !75

bb.ch:                                            ; preds = %bb.cg
  %i.lo = trunc nuw i64 %indvars.iv.next2805 to i32 ; 2 uses
  %i.lp = load i32, ptr %i.am, align 8, !tbaa !31
  %i.lq = and i32 %i.lp, 512
  %.not1226 = icmp eq i32 %i.lq, 0
  br i1 %.not1226, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lr = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.ls = and i32 %i.lr, 4
  %.not1227 = icmp eq i32 %i.ls, 0
  br i1 %.not1227, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lt = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = call i32 @zng_crc32(i32 noundef %i.lu, ptr noundef nonnull %.131061, i32 noundef %i.lo) #14
  %i.lw = zext i32 %i.lv to i64
  store i64 %i.lw, ptr %i.ao, align 32, !tbaa !28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.lx = sub nuw i32 %.13996, %i.lo              ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.131061, i64 %indvars.iv.next2805 ; 2 uses
  br i1 %i.ll, label %.loopexit1260, label %bb.cn

bb.cl:                                            ; preds = %bb.cb
  %i.lz = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1223 = icmp eq ptr %i.lz, null
  br i1 %.not1223, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  store ptr null, ptr %i.ma, align 8, !tbaa !100
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm, %bb.ck
  %.141062 = phi ptr [ %i.ly, %bb.ck ], [ %.131061, %bb.cm ], [ %.131061, %bb.cl ]
  %.14997 = phi i32 [ %i.lx, %bb.ck ], [ %.13996, %bb.cm ], [ %.13996, %bb.cl ]
  store i32 0, ptr %i.ar, align 4, !tbaa !62
  store i32 16187, ptr %i.p, align 8, !tbaa !23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.l
  %.151063 = phi ptr [ %.141062, %bb.cn ], [ %.01048, %bb.l ] ; 6 uses
  %.15998 = phi i32 [ %.14997, %bb.cn ], [ %.0983, %bb.l ] ; 5 uses
  %.12932 = phi i64 [ %.11931, %bb.cn ], [ %.0920, %bb.l ] ; 3 uses
  %.12 = phi i32 [ %.11, %bb.cn ], [ %.0909, %bb.l ] ; 3 uses
  %i.mb = load i32, ptr %i.am, align 8, !tbaa !31
  %i.mc = and i32 %i.mb, 4096
  %.not1228 = icmp eq i32 %i.mc, 0
  br i1 %.not1228, label %bb.cy, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.md = icmp eq i32 %.15998, 0
  br i1 %i.md, label %.loopexit1260, label %.preheader1273.preheader

.preheader1273.preheader:                         ; preds = %bb.cp
  %i.me = zext i32 %.15998 to i64
  br label %.preheader1273

.preheader1273:                                   ; preds = %.preheader1273.preheader, %bb.ct
  %indvars.iv2807 = phi i64 [ 0, %.preheader1273.preheader ], [ %indvars.iv.next2808, %bb.ct ] ; 2 uses
  %indvars.iv.next2808 = add nuw nsw i64 %indvars.iv2807, 1 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.151063, i64 %indvars.iv2807
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !55  ; 2 uses
  %i.mh = load ptr, ptr %i.br, align 16, !tbaa !32 ; 3 uses
  %.not1230 = icmp eq ptr %i.mh, null
  br i1 %.not1230, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %.preheader1273
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !102 ; 2 uses
  %.not1231 = icmp eq ptr %i.mj, null
  br i1 %.not1231, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mk = load i32, ptr %i.ar, align 4, !tbaa !62 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !103
  %i.mn = icmp ult i32 %i.mk, %i.mm
  br i1 %i.mn, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mo = add nuw i32 %i.mk, 1
  store i32 %i.mo, ptr %i.ar, align 4, !tbaa !62
  %i.mp = zext i32 %i.mk to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mp
  store i8 %i.mg, ptr %i.mq, align 1, !tbaa !55
  br label %bb.ct

bb.ct:                                            ; preds = %.preheader1273, %bb.cq, %bb.cr, %bb.cs
  %i.mr = icmp ne i8 %i.mg, 0                     ; 2 uses
  %i.ms = icmp samesign ult i64 %indvars.iv.next2808, %i.me
  %i.mt = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %i.mt, label %.preheader1273, label %bb.cu, !llvm.loop !76

bb.cu:                                            ; preds = %bb.ct
  %i.mu = trunc nuw i64 %indvars.iv.next2808 to i32 ; 2 uses
  %i.mv = load i32, ptr %i.am, align 8, !tbaa !31
  %i.mw = and i32 %i.mv, 512
  %.not1232 = icmp eq i32 %i.mw, 0
  br i1 %.not1232, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mx = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.my = and i32 %i.mx, 4
  %.not1233 = icmp eq i32 %i.my, 0
  br i1 %.not1233, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mz = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.na = trunc i64 %i.mz to i32
  %i.nb = call i32 @zng_crc32(i32 noundef %i.na, ptr noundef nonnull %.151063, i32 noundef %i.mu) #14
  %i.nc = zext i32 %i.nb to i64
  store i64 %i.nc, ptr %i.ao, align 32, !tbaa !28
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.nd = sub nuw i32 %.15998, %i.mu              ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.151063, i64 %indvars.iv.next2808 ; 2 uses
  br i1 %i.mr, label %.loopexit1260, label %bb.da

bb.cy:                                            ; preds = %bb.co
  %i.nf = load ptr, ptr %i.br, align 16, !tbaa !32 ; 2 uses
  %.not1229 = icmp eq ptr %i.nf, null
  br i1 %.not1229, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 56
  store ptr null, ptr %i.ng, align 8, !tbaa !102
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cx
  %.161064 = phi ptr [ %i.ne, %bb.cx ], [ %.151063, %bb.cz ], [ %.151063, %bb.cy ]
  %.16999 = phi i32 [ %i.nd, %bb.cx ], [ %.15998, %bb.cz ], [ %.15998, %bb.cy ]
  store i32 16188, ptr %i.p, align 8, !tbaa !23
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.l
  %.171065 = phi ptr [ %.161064, %bb.da ], [ %.01048, %bb.l ] ; 6 uses
  %.171000 = phi i32 [ %.16999, %bb.da ], [ %.0983, %bb.l ] ; 5 uses
  %.13933 = phi i64 [ %.12932, %bb.da ], [ %.0920, %bb.l ] ; 4 uses
  %.13 = phi i32 [ %.12, %bb.da ], [ %.0909, %bb.l ] ; 5 uses
  %i.nh = load i32, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %i.ni = and i32 %i.nh, 512
  %.not1234 = icmp eq i32 %i.ni, 0
  br i1 %.not1234, label %bb.dg, label %.preheader1271

.preheader1271:                                   ; preds = %bb.db
  %i.nj = icmp ult i32 %.13, 16
  br i1 %i.nj, label %.lr.ph2299.preheader, label %._crit_edge2300

.lr.ph2299.preheader:                             ; preds = %.preheader1271
  %i.nk = zext nneg i32 %.13 to i64               ; 4 uses
  %i.nl = icmp eq i32 %.171000, 0
  br i1 %i.nl, label %.loopexit1260.loopexit2321, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph2299.preheader
  %i.nm = add i32 %.171000, -1                    ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.171065, i64 1 ; 3 uses
  %i.no = load i8, ptr %.171065, align 1, !tbaa !55
  %i.np = zext i8 %i.no to i64
  %i.nq = shl nuw nsw i64 %i.np, %i.nk
  %i.nr = add i64 %i.nq, %.13933                  ; 3 uses
  %indvars.iv.next2811 = add nuw nsw i64 %i.nk, 8 ; 3 uses
  %i.ns = icmp ult i32 %.13, 8
  br i1 %i.ns, label %.lr.ph2299.1, label %._crit_edge2300.loopexit

.lr.ph2299.1:                                     ; preds = %bb.dc
  %i.nt = icmp eq i32 %i.nm, 0
  br i1 %i.nt, label %.loopexit1260.loopexit2321, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph2299.1
  %i.nu = add i32 %.171000, -2
  %i.nv = getelementptr inbounds nuw i8, ptr %.171065, i64 2
  %i.nw = load i8, ptr %i.nn, align 1, !tbaa !55
  %i.nx = zext i8 %i.nw to i64
  %i.ny = shl nuw nsw i64 %i.nx, %indvars.iv.next2811
  %i.nz = add i64 %i.ny, %i.nr
  %indvars.iv.next2811.1 = or disjoint i64 %i.nk, 16
  br label %._crit_edge2300.loopexit

._crit_edge2300.loopexit:                         ; preds = %bb.dd, %bb.dc
  %.lcssa4094 = phi i32 [ %i.nm, %bb.dc ], [ %i.nu, %bb.dd ]
  %.lcssa4093 = phi ptr [ %i.nn, %bb.dc ], [ %i.nv, %bb.dd ]
  %.lcssa4092 = phi i64 [ %i.nr, %bb.dc ], [ %i.nz, %bb.dd ]
  %indvars.iv.next2811.lcssa = phi i64 [ %indvars.iv.next2811, %bb.dc ], [ %indvars.iv.next2811.1, %bb.dd ]
  %i.oa = trunc nuw nsw i64 %indvars.iv.next2811.lcssa to i32
  br label %._crit_edge2300

._crit_edge2300:                                  ; preds = %._crit_edge2300.loopexit, %.preheader1271
  %.181066.lcssa = phi ptr [ %.171065, %.preheader1271 ], [ %.lcssa4093, %._crit_edge2300.loopexit ] ; 3 uses
  %.181001.lcssa = phi i32 [ %.171000, %.preheader1271 ], [ %.lcssa4094, %._crit_edge2300.loopexit ] ; 3 uses
  %.14934.lcssa = phi i64 [ %.13933, %.preheader1271 ], [ %.lcssa4092, %._crit_edge2300.loopexit ] ; 2 uses
  %.14.lcssa = phi i32 [ %.13, %.preheader1271 ], [ %i.oa, %._crit_edge2300.loopexit ]
  %i.ob = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.oc = and i32 %i.ob, 4
  %.not1235 = icmp eq i32 %i.oc, 0
  br i1 %.not1235, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %._crit_edge2300
  %i.od = load i64, ptr %i.ao, align 32, !tbaa !28
  %i.oe = and i64 %i.od, 65535
  %.not1236 = icmp eq i64 %.14934.lcssa, %i.oe
  br i1 %.not1236, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 16209, ptr %i.p, align 8, !tbaa !23
  store ptr @.str.5, ptr %i.aq, align 8, !tbaa !51
  br label %.thread

bb.dg:                                            ; preds = %bb.de, %._crit_edge2300, %bb.db
  %.191067 = phi ptr [ %.171065, %bb.db ], [ %.181066.lcssa, %._crit_edge2300 ], [ %.181066.lcssa, %bb.de ]
  %.191002 = phi i32 [ %.171000, %bb.db ], [ %.181001.lcssa, %._crit_edge2300 ], [ %.181001.lcssa, %bb.de ]
  %.15935 = phi i64 [ %.13933, %bb.db ], [ 0, %._crit_edge2300 ], [ 0, %bb.de ]
  %.15 = phi i32 [ %.13, %bb.db ], [ 0, %._crit_edge2300 ], [ 0, %bb.de ]
  %i.of = load ptr, ptr %i.br, align 16, !tbaa !32 ; 3 uses
  %.not1237 = icmp eq ptr %i.of, null
  br i1 %.not1237, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.og = lshr i32 %i.nh, 9
  %i.oh = and i32 %i.og, 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 68
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !104
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 72
  store i32 1, ptr %i.oj, align 8, !tbaa !61
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ok = load i32, ptr %i.aj, align 16, !tbaa !26
  %i.ol = and i32 %i.ok, 4
  %.not1238 = icmp eq i32 %i.ol, 0
  %.not1239 = icmp eq i32 %i.nh, 0
  %or.cond1257 = or i1 %.not1239, %.not1238
  br i1 %or.cond1257, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.om = load ptr, ptr getelementptr inbounds nuw (i8, ptr @functable, i64 72), align 8, !tbaa !105
  %i.on = call i32 %i.om(ptr noundef nonnull %i.an) #14 ; 2 uses
  %i.oo = zext i32 %i.on to i64
  store i64 %i.oo, ptr %i.ao, align 32, !tbaa !28
  store i32 %i.on, ptr %i.ap, align 4, !tbaa !27
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  store i32 16191, ptr %i.p, align 8, !tbaa !23
  br label %.thread

bb.dl:                                            ; preds = %.lr.ph2096.preheader
  %i.op = add i32 %.0983, -1                      ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.01048, i64 1 ; 3 uses
  %i.or = load i8, ptr %.01048, align 1, !tbaa !55
  %i.os = zext i8 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, %i.bz
  %i.ou = add i64 %i.ot, %.0920                   ; 3 uses
  %indvars.iv.next2790 = add nuw nsw i64 %i.bz, 8 ; 2 uses
  %i.ov = icmp ult i32 %.0909, 24
  br i1 %i.ov, label %.lr.ph2096.1, label %._crit_edge2097

.lr.ph2096.1:                                     ; preds = %bb.dl
  %i.ow = icmp eq i32 %i.op, 0
  br i1 %i.ow, label %.loopexit1260.loopexit2326, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph2096.1
  %i.ox = add i32 %.0983, -2                      ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.01048, i64 2 ; 3 uses
  %i.oz = load i8, ptr %i.oq, align 1, !tbaa !55
  %i.pa = zext i8 %i.oz to i64
  %i.pb = shl nuw nsw i64 %i.pa, %indvars.iv.next2790
  %i.pc = add i64 %i.pb, %i.ou                    ; 3 uses
  %indvars.iv.next2790.1 = add nuw nsw i64 %i.bz, 16 ; 2 uses
  %i.pd = icmp ult i32 %.0909, 16
  br i1 %i.pd, label %.lr.ph2096.2, label %._crit_edge2097

.lr.ph2096.2:                                     ; preds = %bb.dm
  %i.pe = icmp eq i32 %i.ox, 0
  br i1 %i.pe, label %.loopexit1260.loopexit2326, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph2096.2
  %i.pf = add i32 %.0983, -3                      ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.01048, i64 3 ; 3 uses
  %i.ph = load i8, ptr %i.oy, align 1, !tbaa !55
  %i.pi = zext i8 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, %indvars.iv.next2790.1
  %i.pk = add i64 %i.pj, %i.pc                    ; 3 uses
  %indvars.iv.next2790.2 = add nuw nsw i64 %i.bz, 24 ; 2 uses
  %i.pl = icmp ult i32 %.0909, 8
  br i1 %i.pl, label %.lr.ph2096.3, label %._crit_edge2097

.lr.ph2096.3:                                     ; preds = %bb.dn
  %i.pm = icmp eq i32 %i.pf, 0
  br i1 %i.pm, label %.loopexit1260.loopexit2326, label %bb.do

bb.do:                                            ; preds = %.lr.ph2096.3
  %i.pn = add i32 %.0983, -4
  %i.po = getelementptr inbounds nuw i8, ptr %.01048, i64 4
  %i.pp = load i8, ptr %i.pg, align 1, !tbaa !55
  %i.pq = zext i8 %i.pp to i64
  %i.pr = shl nuw nsw i64 %i.pq, %indvars.iv.next2790.2
  %i.ps = add i64 %i.pr, %i.pk
  br label %._crit_edge2097

._crit_edge2097:                                  ; preds = %bb.dl, %bb.dm, %bb.dn, %bb.do, %.preheader1283
  %.201068.lcssa = phi ptr [ %.01048, %.preheader1283 ], [ %i.oq, %bb.dl ], [ %i.oy, %bb.dm ], [ %i.pg, %bb.dn ], [ %i.po, %bb.do ]
  %.201003.lcssa = phi i32 [ %.0983, %.preheader1283 ], [ %i.op, %bb.dl ], [ %i.ox, %bb.dm ], [ %i.pf, %bb.dn ], [ %i.pn, %bb.do ]
  %.16936.lcssa = phi i64 [ %.0920, %.preheader1283 ], [ %i.ou, %bb.dl ], [ %i.pc, %bb.dm ], [ %i.pk, %bb.dn ], [ %i.ps, %bb.do ]
  %i.pt = trunc i64 %.16936.lcssa to i32
  %i.pu = call i32 @llvm.bswap.i32(i32 %i.pt)     ; 2 uses
  %i.pv = zext i32 %i.pu to i64
  store i64 %i.pv, ptr %i.ao, align 32, !tbaa !28
  store i32 %i.pu, ptr %i.ap, align 4, !tbaa !27
  store i32 16190, ptr %i.p, align 8, !tbaa !23
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge2097, %bb.l
  %.211069 = phi ptr [ %.201068.lcssa, %._crit_edge2097 ], [ %.01048, %bb.l ] ; 2 uses
  %.211004 = phi i32 [ %.201003.lcssa, %._crit_edge2097 ], [ %.0983, %bb.l ] ; 2 uses
  %.17937 = phi i64 [ 0, %._crit_edge2097 ], [ %.0920, %bb.l ] ; 2 uses
end_hunk_0
