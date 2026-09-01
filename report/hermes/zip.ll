Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 52
begin_hunk_0_@tinfl_decompress:bb.a
  %i.lq = add i32 %i.kc, %i.lm
  %i.lr = add i32 %i.kc, %i.lo
  %i.ls = shl i32 %i.lr, 1                        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.ls, ptr %i.lt, align 8, !tbaa !3
  %i.lu = add i32 %i.kb, %i.lq
  %i.lv = add i32 %i.kb, %i.ls
  %i.lw = shl i32 %i.lv, 1                        ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !3
  %i.ly = add i32 %i.ka, %i.lu
  %i.lz = add i32 %i.ka, %i.lw
  %i.ma = shl i32 %i.lz, 1                        ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.ma, ptr %i.mb, align 16, !tbaa !3
  %i.mc = add i32 %i.jz, %i.ly
  %i.md = add i32 %i.jz, %i.ma
  %i.me = shl i32 %i.md, 1                        ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !3
  %i.mg = add i32 %i.jy, %i.mc
  %i.mh = add i32 %i.jy, %i.me
  %i.mi = shl i32 %i.mh, 1                        ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.mi, ptr %i.mj, align 8, !tbaa !3
  %i.mk = add i32 %i.jx, %i.mg
  %i.ml = add i32 %i.jx, %i.mi
  %i.mm = shl i32 %i.ml, 1                        ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3  ; 2 uses
  %i.mq = add i32 %i.mp, %i.mk
  %i.mr = add i32 %i.mp, %i.mm
  %i.ms = shl i32 %i.mr, 1                        ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %i.ms, ptr %i.mt, align 16, !tbaa !3
  %i.mu = icmp ne i32 %i.ms, 65536
  %i.mv = icmp ugt i32 %i.mq, 1
  %or.cond = select i1 %i.mu, i1 %i.mv, i1 false
  br i1 %or.cond, label %.sink.split2211, label %.preheader1915

.preheader1915:                                   ; preds = %._crit_edge
  br i1 %.not2014, label %._crit_edge1986, label %.lr.ph1985.preheader

.lr.ph1985.preheader:                             ; preds = %.preheader1915
  %wide.trip.count2067 = zext i32 %i.io to i64
  br label %.lr.ph1985

.lr.ph1985:                                       ; preds = %.lr.ph1985.preheader, %.loopexit1914
  %indvars.iv2064 = phi i64 [ 0, %.lr.ph1985.preheader ], [ %indvars.iv.next2065, %.loopexit1914 ] ; 4 uses
  %.09431983 = phi i32 [ -1, %.lr.ph1985.preheader ], [ %.4947, %.loopexit1914 ] ; 7 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv2064
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !7   ; 6 uses
  %i.my = zext i8 %i.mx to i32                    ; 5 uses
  %.not1831 = icmp eq i8 %i.mx, 0
  br i1 %.not1831, label %.loopexit1914, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph1985
  %i.mz = zext i8 %i.mx to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mz ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !3  ; 3 uses
  %i.nc = add i32 %i.nb, 1
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !3
  %xtraiter2333 = and i32 %i.my, 3                ; 3 uses
  %i.nd = icmp ult i8 %i.mx, 4
  br i1 %i.nd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ca
  %unroll_iter2340 = and i32 %i.my, 252
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.new
  %.09251969 = phi i32 [ %i.nb, %.new ], [ %i.nr, %bb.cb ] ; 5 uses
  %.09271967 = phi i32 [ 0, %.new ], [ %i.nq, %bb.cb ]
  %niter2341 = phi i32 [ 0, %.new ], [ %niter2341.next.3, %bb.cb ]
  %i.ne = shl i32 %.09271967, 3
  %i.nf = shl i32 %.09251969, 2
  %i.ng = and i32 %i.nf, 4
  %i.nh = or disjoint i32 %i.ne, %i.ng
  %i.ni = and i32 %.09251969, 2
  %i.nj = or disjoint i32 %i.ni, %i.nh
  %i.nk = lshr i32 %.09251969, 2
  %i.nl = and i32 %i.nk, 1
  %i.nm = or disjoint i32 %i.nl, %i.nj
  %i.nn = lshr i32 %.09251969, 3                  ; 2 uses
  %i.no = shl i32 %i.nm, 1                        ; 2 uses
  %i.np = and i32 %i.nn, 1
  %i.nq = or disjoint i32 %i.np, %i.no            ; 3 uses
  %i.nr = lshr i32 %.09251969, 4                  ; 2 uses
  %niter2341.next.3 = add i32 %niter2341, 4       ; 2 uses
  %niter2341.ncmp.3 = icmp eq i32 %niter2341.next.3, %unroll_iter2340
  br i1 %niter2341.ncmp.3, label %.unr-lcssa, label %bb.cb, !llvm.loop !106

.unr-lcssa:                                       ; preds = %bb.cb
  %lcmp.mod2335.not = icmp eq i32 %xtraiter2333, 0
  br i1 %lcmp.mod2335.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ca
  %.09251969.epil.init = phi i32 [ %i.nb, %bb.ca ], [ %i.nr, %.unr-lcssa ]
  %.09271967.epil.init = phi i32 [ 0, %bb.ca ], [ %i.nq, %.unr-lcssa ]
  %lcmp.mod2339 = icmp ne i32 %xtraiter2333, 0
  tail call void @llvm.assume(i1 %lcmp.mod2339)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader
  %.09251969.epil = phi i32 [ %.09251969.epil.init, %.epil.preheader ], [ %i.nv, %bb.cc ] ; 3 uses
  %.09271967.epil = phi i32 [ %.09271967.epil.init, %.epil.preheader ], [ %i.nu, %bb.cc ]
  %epil.iter2334 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter2334.next, %bb.cc ]
  %i.ns = shl i32 %.09271967.epil, 1              ; 2 uses
  %i.nt = and i32 %.09251969.epil, 1
  %i.nu = or disjoint i32 %i.nt, %i.ns            ; 2 uses
  %i.nv = lshr i32 %.09251969.epil, 1
  %epil.iter2334.next = add i32 %epil.iter2334, 1 ; 2 uses
  %epil.iter2334.cmp.not = icmp eq i32 %epil.iter2334.next, %xtraiter2333
  br i1 %epil.iter2334.cmp.not, label %.epilog-lcssa, label %bb.cc, !llvm.loop !107

.epilog-lcssa:                                    ; preds = %bb.cc, %.unr-lcssa
  %.09251969.lcssa = phi i32 [ %i.nn, %.unr-lcssa ], [ %.09251969.epil, %bb.cc ]
  %.lcssa2290 = phi i32 [ %i.no, %.unr-lcssa ], [ %i.ns, %bb.cc ] ; 3 uses
  %.lcssa2289 = phi i32 [ %i.nq, %.unr-lcssa ], [ %i.nu, %bb.cc ]
  %i.nw = icmp ult i8 %i.mx, 11
  br i1 %i.nw, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.epilog-lcssa
  %i.nx = shl nuw nsw i32 %i.my, 9
  %i.ny = trunc nuw i64 %indvars.iv2064 to i32
  %i.nz = or i32 %i.nx, %i.ny
  %i.oa = trunc i32 %i.nz to i16
  %i.ob = icmp ult i32 %.lcssa2290, 1024
  br i1 %i.ob, label %iter.check, label %.loopexit1914

iter.check:                                       ; preds = %bb.cd
  %i.oc = shl nuw nsw i32 1, %i.my
  %i.od = and i32 %.09251969.lcssa, 1
  %i.oe = or disjoint i32 %.lcssa2290, %i.od
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = zext nneg i32 %i.oc to i64
  br label %bb.ce

bb.ce:                                            ; preds = %iter.check, %bb.ce
  %indvars.iv2061 = phi i64 [ %i.of, %iter.check ], [ %indvars.iv.next2062, %bb.ce ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %indvars.iv2061
  store i16 %i.oa, ptr %i.oh, align 2, !tbaa !108
  %indvars.iv.next2062 = add nuw nsw i64 %indvars.iv2061, %i.og ; 2 uses
  %i.oi = icmp samesign ult i64 %indvars.iv.next2062, 1024
  br i1 %i.oi, label %bb.ce, label %.loopexit1914, !llvm.loop !110

bb.cf:                                            ; preds = %.epilog-lcssa
  %i.oj = and i32 %.lcssa2289, 1023
  %i.ok = zext nneg i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ok ; 2 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !108 ; 2 uses
  %i.on = sext i16 %i.om to i32
  %i.oo = icmp eq i16 %i.om, 0
  br i1 %i.oo, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.op = trunc i32 %.09431983 to i16
  store i16 %i.op, ptr %i.ol, align 2, !tbaa !108
  %i.oq = add nsw i32 %.09431983, -2
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1944 = phi i32 [ %i.oq, %bb.cg ], [ %.09431983, %bb.cf ] ; 2 uses
  %.0940 = phi i32 [ %.09431983, %bb.cg ], [ %i.on, %bb.cf ] ; 2 uses
  %i.or = lshr i32 %.lcssa2290, 9                 ; 2 uses
  %.not2016 = icmp eq i8 %i.mx, 11
  br i1 %.not2016, label %._crit_edge1976, label %.lr.ph1975

.lr.ph1975:                                       ; preds = %bb.ch, %bb.ck
  %.29291973 = phi i32 [ %i.os, %bb.ck ], [ %i.or, %bb.ch ]
  %.09331972 = phi i32 [ %i.pc, %bb.ck ], [ %i.my, %bb.ch ]
  %.19411971 = phi i32 [ %.2942, %bb.ck ], [ %.0940, %bb.ch ]
  %.29451970 = phi i32 [ %.3946, %bb.ck ], [ %.1944, %bb.ch ] ; 4 uses
  %i.os = lshr i32 %.29291973, 1                  ; 3 uses
  %i.ot = and i32 %i.os, 1
  %i.ou = xor i32 %.19411971, -1
  %i.ov = add i32 %i.ot, %i.ou
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.ow ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !108 ; 2 uses
  %.not1835 = icmp eq i16 %i.oy, 0
  br i1 %.not1835, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph1975
  %i.oz = trunc i32 %.29451970 to i16
  store i16 %i.oz, ptr %i.ox, align 2, !tbaa !108
  %i.pa = add nsw i32 %.29451970, -2
  br label %bb.ck

bb.cj:                                            ; preds = %.lr.ph1975
  %i.pb = sext i16 %i.oy to i32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %.3946 = phi i32 [ %.29451970, %bb.cj ], [ %i.pa, %bb.ci ] ; 2 uses
  %.2942 = phi i32 [ %i.pb, %bb.cj ], [ %.29451970, %bb.ci ] ; 2 uses
  %i.pc = add nsw i32 %.09331972, -1              ; 2 uses
  %i.pd = icmp ugt i32 %i.pc, 11
  br i1 %i.pd, label %.lr.ph1975, label %._crit_edge1976, !llvm.loop !112

._crit_edge1976:                                  ; preds = %bb.ck, %bb.ch
  %.2945.lcssa = phi i32 [ %.1944, %bb.ch ], [ %.3946, %bb.ck ]
  %.1941.lcssa = phi i32 [ %.0940, %bb.ch ], [ %.2942, %bb.ck ]
  %.2929.lcssa = phi i32 [ %i.or, %bb.ch ], [ %i.os, %bb.ck ]
  %i.pe = lshr i32 %.2929.lcssa, 1
  %.neg = and i32 %i.pe, 1
  %i.pf = trunc i64 %indvars.iv2064 to i16
  %i.pg = xor i32 %.1941.lcssa, -1
  %i.ph = add i32 %.neg, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.pi
  store i16 %i.pf, ptr %i.pj, align 2, !tbaa !108
  br label %.loopexit1914

.loopexit1914:                                    ; preds = %bb.ce, %bb.cd, %.lr.ph1985, %._crit_edge1976
  %.4947 = phi i32 [ %.09431983, %.lr.ph1985 ], [ %.2945.lcssa, %._crit_edge1976 ], [ %.09431983, %bb.cd ], [ %.09431983, %bb.ce ]
  %indvars.iv.next2065 = add nuw nsw i64 %indvars.iv2064, 1 ; 2 uses
  %exitcond2068.not = icmp eq i64 %indvars.iv.next2065, %wide.trip.count2067
  br i1 %exitcond2068.not, label %._crit_edge1986, label %.lr.ph1985, !llvm.loop !113

._crit_edge1986:                                  ; preds = %.loopexit1914, %.preheader1915
  %i.pk = icmp eq i32 %i.if, 2
  br i1 %i.pk, label %bb.cl, label %bb.dn

bb.cl:                                            ; preds = %._crit_edge1986, %bb.dk, %bb.db
  %.471597 = phi i32 [ %.561606, %bb.dk ], [ %.511601, %bb.db ], [ %.451595, %._crit_edge1986 ] ; 5 uses
  %.471496 = phi i64 [ %i.tr, %bb.dk ], [ %i.so, %bb.db ], [ %.451494, %._crit_edge1986 ] ; 5 uses
  %.461396 = phi ptr [ %.551405, %bb.dk ], [ %.501400, %bb.db ], [ %.441394, %._crit_edge1986 ] ; 8 uses
  %.411291 = phi ptr [ %.501300, %bb.dk ], [ %.451295, %bb.db ], [ %.391289, %._crit_edge1986 ] ; 5 uses
  %.411200 = phi i64 [ %.501209, %bb.dk ], [ %.451204, %bb.db ], [ %.391198, %._crit_edge1986 ] ; 5 uses
  %.461100 = phi i32 [ %i.uj, %bb.dk ], [ %i.st, %bb.db ], [ 0, %._crit_edge1986 ] ; 7 uses
  %.46995 = phi i32 [ %.541003, %bb.dk ], [ %.2924, %bb.db ], [ %.44993, %._crit_edge1986 ] ; 3 uses
  %.47 = phi i32 [ %i.ts, %bb.dk ], [ %i.sp, %bb.db ], [ %.45, %._crit_edge1986 ] ; 8 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3  ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !3  ; 2 uses
  %i.pp = add i32 %i.po, %i.pm                    ; 2 uses
  %i.pq = icmp ult i32 %.461100, %i.pp
  br i1 %i.pq, label %bb.cm, label %bb.dl

bb.cm:                                            ; preds = %bb.cl
  %i.pr = icmp ult i32 %.47, 15
  br i1 %i.pr, label %bb.cn, label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  %i.ps = ptrtoint ptr %i.d to i64
  %i.pt = ptrtoint ptr %.461396 to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = icmp slt i64 %i.pu, 2
  br i1 %i.pv, label %bb.co, label %bb.cx

bb.co:                                            ; preds = %bb.cn, %bb.cw
  %.481598 = phi i32 [ %.471597, %bb.cn ], [ %.501600, %bb.cw ] ; 4 uses
  %.481497 = phi i64 [ %.471496, %bb.cn ], [ %i.rc, %bb.cw ] ; 6 uses
  %.471397 = phi ptr [ %.461396, %bb.cn ], [ %.491399, %bb.cw ] ; 5 uses
  %.421292 = phi ptr [ %.411291, %bb.cn ], [ %.441294, %bb.cw ] ; 4 uses
  %.421201 = phi i64 [ %.411200, %bb.cn ], [ %.441203, %bb.cw ] ; 4 uses
  %.471101 = phi i32 [ %.461100, %bb.cn ], [ %.491103, %bb.cw ] ; 4 uses
  %.47996 = phi i32 [ %.46995, %bb.cn ], [ %.49998, %bb.cw ] ; 2 uses
  %.48 = phi i32 [ %.47, %bb.cn ], [ %i.rd, %bb.cw ]
  %i.pw = freeze i32 %.48                         ; 7 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 7336
  %i.py = and i64 %.481497, 1023
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.px, i64 %i.py
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !108 ; 2 uses
  %i.qb = sext i16 %i.qa to i32                   ; 2 uses
  %i.qc = icmp sgt i16 %i.qa, -1
  br i1 %i.qc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qd = lshr i32 %i.qb, 9
  %i.qe = add nsw i32 %i.qd, -1
  %or.cond1862.not = icmp ult i32 %i.qe, %i.pw
  br i1 %or.cond1862.not, label %bb.cy, label %bb.ct

bb.cq:                                            ; preds = %bb.co
  %i.qf = icmp samesign ugt i32 %i.pw, 10
  br i1 %i.qf, label %.preheader1913, label %bb.ct

.preheader1913:                                   ; preds = %bb.cq
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 9384
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader1913, %bb.cr
  %.0922 = phi i32 [ %i.qq, %bb.cr ], [ %i.qb, %.preheader1913 ]
  %.0919 = phi i32 [ %i.qj, %bb.cr ], [ 10, %.preheader1913 ] ; 3 uses
  %i.qh = xor i32 %.0922, -1
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = add i32 %.0919, 1
  %i.qk = zext nneg i32 %.0919 to i64
  %i.ql = lshr i64 %.481497, %i.qk
  %i.qm = and i64 %i.ql, 1
  %i.qn = getelementptr [2 x i8], ptr %i.qg, i64 %i.qm
  %i.qo = getelementptr [2 x i8], ptr %i.qn, i64 %i.qi
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !108 ; 3 uses
  %i.qq = sext i16 %i.qp to i32
  %i.qr = icmp slt i16 %i.qp, 0
  %i.qs = add i32 %.0919, 2
  %i.qt = icmp uge i32 %i.pw, %i.qs
  %i.qu = and i1 %i.qr, %i.qt
  br i1 %i.qu, label %bb.cr, label %bb.cs, !llvm.loop !114

bb.cs:                                            ; preds = %bb.cr
  %i.qv = icmp sgt i16 %i.qp, -1
  br i1 %i.qv, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cp, %bb.cs, %bb.cq
  %.not1826 = icmp ult ptr %.471397, %i.d
  br i1 %.not1826, label %.sink.split2193, label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %bb.ct
  %.491599 = phi i32 [ %.481598, %bb.ct ], [ %i.z, %bb.cv ] ; 2 uses
  %.491498 = phi i64 [ %.481497, %bb.ct ], [ %i.t, %bb.cv ] ; 2 uses
  %.481398 = phi ptr [ %.471397, %bb.ct ], [ %1, %bb.cv ] ; 2 uses
  %.431293 = phi ptr [ %.421292, %bb.ct ], [ %4, %bb.cv ] ; 2 uses
  %.431202 = phi i64 [ %.421201, %bb.ct ], [ %i.ab, %bb.cv ] ; 2 uses
  %.481102 = phi i32 [ %.471101, %bb.ct ], [ %i.x, %bb.cv ] ; 2 uses
  %.48997 = phi i32 [ %.47996, %bb.ct ], [ %i.v, %bb.cv ] ; 2 uses
  %.49 = phi i32 [ %i.pw, %bb.ct ], [ %i.r, %bb.cv ] ; 2 uses
  %i.qw = and i32 %6, 2
  %.not1827 = icmp eq i32 %i.qw, 0
  br i1 %.not1827, label %bb.cw, label %.sink.split2211

bb.cv:                                            ; preds = %bb.c
  %.not1775 = icmp eq i64 %i.c, 0
  br i1 %.not1775, label %bb.cu, label %.sink.split2193

.sink.split2193:                                  ; preds = %bb.ct, %bb.cv
  %.sink2195 = phi ptr [ %1, %bb.cv ], [ %.471397, %bb.ct ] ; 2 uses
  %.501600.ph = phi i32 [ %i.z, %bb.cv ], [ %.481598, %bb.ct ]
  %.501499.ph = phi i64 [ %i.t, %bb.cv ], [ %.481497, %bb.ct ]
  %.441294.ph = phi ptr [ %4, %bb.cv ], [ %.421292, %bb.ct ]
  %.441203.ph = phi i64 [ %i.ab, %bb.cv ], [ %.421201, %bb.ct ]
  %.491103.ph = phi i32 [ %i.x, %bb.cv ], [ %.471101, %bb.ct ]
  %.49998.ph = phi i32 [ %i.v, %bb.cv ], [ %.47996, %bb.ct ]
  %.50.ph = phi i32 [ %i.r, %bb.cv ], [ %i.pw, %bb.ct ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.sink2195, i64 1
  %i.qy = load i8, ptr %.sink2195, align 1, !tbaa !7
  %i.qz = zext i8 %i.qy to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split2193, %bb.cu
  %.501600 = phi i32 [ %.491599, %bb.cu ], [ %.501600.ph, %.sink.split2193 ] ; 2 uses
  %.501499 = phi i64 [ %.491498, %bb.cu ], [ %.501499.ph, %.sink.split2193 ]
  %.491399 = phi ptr [ %.481398, %bb.cu ], [ %i.qx, %.sink.split2193 ] ; 2 uses
  %.441294 = phi ptr [ %.431293, %bb.cu ], [ %.441294.ph, %.sink.split2193 ] ; 2 uses
  %.441203 = phi i64 [ %.431202, %bb.cu ], [ %.441203.ph, %.sink.split2193 ] ; 2 uses
  %.491103 = phi i32 [ %.481102, %bb.cu ], [ %.491103.ph, %.sink.split2193 ] ; 2 uses
  %.49998 = phi i32 [ %.48997, %bb.cu ], [ %.49998.ph, %.sink.split2193 ]
  %.50 = phi i32 [ %.49, %bb.cu ], [ %.50.ph, %.sink.split2193 ] ; 2 uses
  %.0918.shrunk = phi i64 [ 0, %bb.cu ], [ %i.qz, %.sink.split2193 ]
  %i.ra = zext nneg i32 %.50 to i64
  %i.rb = shl i64 %.0918.shrunk, %i.ra
  %i.rc = or i64 %i.rb, %.501499                  ; 2 uses
  %i.rd = add i32 %.50, 8                         ; 3 uses
  %i.re = icmp ult i32 %i.rd, 15
  br i1 %i.re, label %bb.co, label %bb.cy, !llvm.loop !115

bb.cx:                                            ; preds = %bb.cn
  %i.rf = load i8, ptr %.461396, align 1, !tbaa !7
  %i.rg = zext i8 %i.rf to i64
  %i.rh = zext nneg i32 %.47 to i64
  %i.ri = shl nuw nsw i64 %i.rg, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %.461396, i64 1
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !7
  %i.rl = zext i8 %i.rk to i64
  %i.rm = add nuw nsw i32 %.47, 8
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = shl nuw nsw i64 %i.rl, %i.rn
  %i.rp = or i64 %i.ri, %i.ro
  %i.rq = or i64 %i.rp, %.471496
  %i.rr = getelementptr inbounds nuw i8, ptr %.461396, i64 2
  %i.rs = or disjoint i32 %.47, 16
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cp, %bb.cx, %bb.cs, %bb.cw, %bb.cm
  %.511601 = phi i32 [ %.481598, %bb.cp ], [ %.501600, %bb.cw ], [ %.481598, %bb.cs ], [ %.471597, %bb.cx ], [ %.471597, %bb.cm ] ; 2 uses
  %.511500 = phi i64 [ %.481497, %bb.cp ], [ %i.rc, %bb.cw ], [ %.481497, %bb.cs ], [ %i.rq, %bb.cx ], [ %.471496, %bb.cm ] ; 3 uses
  %.501400 = phi ptr [ %.471397, %bb.cp ], [ %.491399, %bb.cw ], [ %.471397, %bb.cs ], [ %i.rr, %bb.cx ], [ %.461396, %bb.cm ] ; 4 uses
  %.451295 = phi ptr [ %.421292, %bb.cp ], [ %.441294, %bb.cw ], [ %.421292, %bb.cs ], [ %.411291, %bb.cx ], [ %.411291, %bb.cm ] ; 4 uses
  %.451204 = phi i64 [ %.421201, %bb.cp ], [ %.441203, %bb.cw ], [ %.421201, %bb.cs ], [ %.411200, %bb.cx ], [ %.411200, %bb.cm ] ; 4 uses
  %.501104 = phi i32 [ %.471101, %bb.cp ], [ %.491103, %bb.cw ], [ %.471101, %bb.cs ], [ %.461100, %bb.cx ], [ %.461100, %bb.cm ] ; 5 uses
  %.51 = phi i32 [ %i.pw, %bb.cp ], [ %i.rd, %bb.cw ], [ %i.pw, %bb.cs ], [ %i.rs, %bb.cx ], [ %.47, %bb.cm ]
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 7336
  %i.ru = and i64 %.511500, 1023
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr %i.rt, i64 %i.ru
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !108 ; 2 uses
  %i.rx = sext i16 %i.rw to i32                   ; 3 uses
  %i.ry = icmp sgt i16 %i.rw, -1
  br i1 %i.ry, label %bb.cz, label %.preheader1912

.preheader1912:                                   ; preds = %bb.cy
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 9384
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.sa = lshr i32 %i.rx, 9
  %i.sb = and i32 %i.rx, 511
  br label %.loopexit

bb.da:                                            ; preds = %.preheader1912, %bb.da
  %.1923 = phi i32 [ %i.sl, %bb.da ], [ %i.rx, %.preheader1912 ]
  %.1920 = phi i32 [ %i.se, %bb.da ], [ 10, %.preheader1912 ] ; 2 uses
  %i.sc = xor i32 %.1923, -1
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = add i32 %.1920, 1                       ; 2 uses
  %i.sf = zext nneg i32 %.1920 to i64
  %i.sg = lshr i64 %.511500, %i.sf
  %i.sh = and i64 %i.sg, 1
  %i.si = getelementptr [2 x i8], ptr %i.rz, i64 %i.sh
  %i.sj = getelementptr [2 x i8], ptr %i.si, i64 %i.sd
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !108 ; 2 uses
  %i.sl = sext i16 %i.sk to i32                   ; 2 uses
  %i.sm = icmp slt i16 %i.sk, 0
  br i1 %i.sm, label %bb.da, label %.loopexit, !llvm.loop !116

.loopexit:                                        ; preds = %bb.da, %bb.cz
  %.2924 = phi i32 [ %i.sb, %bb.cz ], [ %i.sl, %bb.da ] ; 7 uses
  %.2921 = phi i32 [ %i.sa, %bb.cz ], [ %i.se, %bb.da ] ; 2 uses
  %i.sn = zext nneg i32 %.2921 to i64
  %i.so = lshr i64 %.511500, %i.sn                ; 4 uses
  %i.sp = sub i32 %.51, %.2921                    ; 5 uses
  %i.sq = icmp samesign ult i32 %.2924, 16
  br i1 %i.sq, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.loopexit
  %i.sr = trunc nuw nsw i32 %.2924 to i8
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 10540
  %i.st = add i32 %.501104, 1
  %i.su = zext i32 %.501104 to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.su
  store i8 %i.sr, ptr %i.sv, align 1, !tbaa !7
  br label %bb.cl, !llvm.loop !117

bb.dc:                                            ; preds = %.loopexit
  %i.sw = icmp ne i32 %.2924, 16
  %i.sx = icmp ne i32 %.501104, 0
  %or.cond3 = select i1 %i.sw, i1 true, i1 %i.sx
  br i1 %or.cond3, label %bb.dd, label %.sink.split2211

bb.dd:                                            ; preds = %bb.dc
  %i.sy = zext nneg i32 %.2924 to i64
  %i.sz = getelementptr i8, ptr @.str.12, i64 %i.sy
  %i.ta = getelementptr i8, ptr %i.sz, i64 -16
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !7
  %i.tc = sext i8 %i.tb to i32                    ; 3 uses
  %i.td = icmp ult i32 %i.sp, %i.tc
  br i1 %i.td, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd, %bb.dh
  %.531603 = phi i32 [ %i.tc, %bb.dd ], [ %.551605, %bb.dh ] ; 2 uses
  %.531502 = phi i64 [ %i.so, %bb.dd ], [ %i.tk, %bb.dh ] ; 2 uses
  %.521402 = phi ptr [ %.501400, %bb.dd ], [ %.541404, %bb.dh ] ; 3 uses
  %.471297 = phi ptr [ %.451295, %bb.dd ], [ %.491299, %bb.dh ] ; 2 uses
  %.471206 = phi i64 [ %.451204, %bb.dd ], [ %.491208, %bb.dh ] ; 2 uses
  %.521106 = phi i32 [ %.501104, %bb.dd ], [ %.541108, %bb.dh ] ; 2 uses
  %.511000 = phi i32 [ %.2924, %bb.dd ], [ %.531002, %bb.dh ] ; 2 uses
  %.53 = phi i32 [ %i.sp, %bb.dd ], [ %i.tl, %bb.dh ] ; 2 uses
  %.not1828 = icmp ult ptr %.521402, %i.d
  br i1 %.not1828, label %.sink.split2196, label %bb.df

bb.df:                                            ; preds = %bb.dg, %bb.de
  %.541604 = phi i32 [ %.531603, %bb.de ], [ %i.z, %bb.dg ] ; 2 uses
  %.541503 = phi i64 [ %.531502, %bb.de ], [ %i.t, %bb.dg ] ; 2 uses
  %.531403 = phi ptr [ %.521402, %bb.de ], [ %1, %bb.dg ] ; 2 uses
  %.481298 = phi ptr [ %.471297, %bb.de ], [ %4, %bb.dg ] ; 2 uses
  %.481207 = phi i64 [ %.471206, %bb.de ], [ %i.ab, %bb.dg ] ; 2 uses
  %.531107 = phi i32 [ %.521106, %bb.de ], [ %i.x, %bb.dg ] ; 2 uses
  %.521001 = phi i32 [ %.511000, %bb.de ], [ %i.v, %bb.dg ] ; 2 uses
  %.54 = phi i32 [ %.53, %bb.de ], [ %i.r, %bb.dg ] ; 2 uses
  %i.te = and i32 %6, 2
  %.not1829 = icmp eq i32 %i.te, 0
  br i1 %.not1829, label %bb.dh, label %.sink.split2211

bb.dg:                                            ; preds = %bb.c
  %.not1774 = icmp eq i64 %i.c, 0
  br i1 %.not1774, label %bb.df, label %.sink.split2196

.sink.split2196:                                  ; preds = %bb.de, %bb.dg
  %.sink2198 = phi ptr [ %1, %bb.dg ], [ %.521402, %bb.de ] ; 2 uses
  %.551605.ph = phi i32 [ %i.z, %bb.dg ], [ %.531603, %bb.de ]
  %.551504.ph = phi i64 [ %i.t, %bb.dg ], [ %.531502, %bb.de ]
  %.491299.ph = phi ptr [ %4, %bb.dg ], [ %.471297, %bb.de ]
  %.491208.ph = phi i64 [ %i.ab, %bb.dg ], [ %.471206, %bb.de ]
  %.541108.ph = phi i32 [ %i.x, %bb.dg ], [ %.521106, %bb.de ]
  %.531002.ph = phi i32 [ %i.v, %bb.dg ], [ %.511000, %bb.de ]
  %.55.ph = phi i32 [ %i.r, %bb.dg ], [ %.53, %bb.de ]
  %i.tf = getelementptr inbounds nuw i8, ptr %.sink2198, i64 1
  %i.tg = load i8, ptr %.sink2198, align 1, !tbaa !7
  %i.th = zext i8 %i.tg to i64
  br label %bb.dh

bb.dh:                                            ; preds = %.sink.split2196, %bb.df
  %.551605 = phi i32 [ %.541604, %bb.df ], [ %.551605.ph, %.sink.split2196 ] ; 3 uses
  %.551504 = phi i64 [ %.541503, %bb.df ], [ %.551504.ph, %.sink.split2196 ]
  %.541404 = phi ptr [ %.531403, %bb.df ], [ %i.tf, %.sink.split2196 ] ; 2 uses
  %.491299 = phi ptr [ %.481298, %bb.df ], [ %.491299.ph, %.sink.split2196 ] ; 2 uses
  %.491208 = phi i64 [ %.481207, %bb.df ], [ %.491208.ph, %.sink.split2196 ] ; 2 uses
  %.541108 = phi i32 [ %.531107, %bb.df ], [ %.541108.ph, %.sink.split2196 ] ; 2 uses
  %.531002 = phi i32 [ %.521001, %bb.df ], [ %.531002.ph, %.sink.split2196 ] ; 2 uses
  %.55 = phi i32 [ %.54, %bb.df ], [ %.55.ph, %.sink.split2196 ] ; 2 uses
  %.0917.shrunk = phi i64 [ 0, %bb.df ], [ %i.th, %.sink.split2196 ]
  %i.ti = zext nneg i32 %.55 to i64
  %i.tj = shl i64 %.0917.shrunk, %i.ti
  %i.tk = or i64 %i.tj, %.551504                  ; 2 uses
  %i.tl = add i32 %.55, 8                         ; 3 uses
  %i.tm = icmp ult i32 %i.tl, %.551605
  br i1 %i.tm, label %bb.de, label %bb.di, !llvm.loop !118

bb.di:                                            ; preds = %bb.dh, %bb.dd
  %.561606 = phi i32 [ %.551605, %bb.dh ], [ %i.tc, %bb.dd ] ; 4 uses
  %.561505 = phi i64 [ %i.tk, %bb.dh ], [ %i.so, %bb.dd ] ; 2 uses
  %.551405 = phi ptr [ %.541404, %bb.dh ], [ %.501400, %bb.dd ]
  %.501300 = phi ptr [ %.491299, %bb.dh ], [ %.451295, %bb.dd ]
  %.501209 = phi i64 [ %.491208, %bb.dh ], [ %.451204, %bb.dd ]
  %.551109 = phi i32 [ %.541108, %bb.dh ], [ %.501104, %bb.dd ] ; 3 uses
  %.541003 = phi i32 [ %.531002, %bb.dh ], [ %.2924, %bb.dd ] ; 3 uses
  %.56 = phi i32 [ %i.tl, %bb.dh ], [ %i.sp, %bb.dd ]
  %notmask1830 = shl nsw i32 -1, %.561606
  %i.tn = xor i32 %notmask1830, -1
  %i.to = trunc i64 %.561505 to i32
  %i.tp = and i32 %i.to, %i.tn
  %i.tq = zext nneg i32 %.561606 to i64
  %i.tr = lshr i64 %.561505, %i.tq
  %i.ts = sub i32 %.56, %.561606
  %i.tt = add i32 %.541003, -16
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw i8, ptr @.str.13, i64 %i.tu
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !7
  %i.tx = sext i8 %i.tw to i32
  %i.ty = add i32 %i.tp, %i.tx                    ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 10540 ; 2 uses
  %i.ua = zext i32 %.551109 to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ua
  %i.uc = icmp eq i32 %.541003, 16
  br i1 %i.uc, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ud = add i32 %.551109, -1
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !7
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.uh = phi i8 [ %i.ug, %bb.dj ], [ 0, %bb.di ]
  %i.ui = zext i32 %i.ty to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ub, i8 %i.uh, i64 %i.ui, i1 false)
  %i.uj = add i32 %i.ty, %.551109
  br label %bb.cl, !llvm.loop !117

bb.dl:                                            ; preds = %bb.cl
  %.not1823 = icmp eq i32 %i.pp, %.461100
  br i1 %.not1823, label %bb.dm, label %.sink.split2211

bb.dm:                                            ; preds = %bb.dl
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 10540 ; 2 uses
  %i.um = zext i32 %i.pm to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.uk, ptr nonnull align 4 %i.ul, i64 %i.um, i1 false)
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.um
  %i.up = zext i32 %i.po to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.un, ptr nonnull align 1 %i.uo, i64 %i.up, i1 false)
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge1986, %bb.dm
  %.581608 = phi i32 [ %.471597, %bb.dm ], [ %.451595, %._crit_edge1986 ]
  %.581507 = phi i64 [ %.471496, %bb.dm ], [ %.451494, %._crit_edge1986 ]
  %.571407 = phi ptr [ %.461396, %bb.dm ], [ %.441394, %._crit_edge1986 ]
  %.521302 = phi ptr [ %.411291, %bb.dm ], [ %.391289, %._crit_edge1986 ]
  %.521211 = phi i64 [ %.411200, %bb.dm ], [ %.391198, %._crit_edge1986 ]
  %.571111 = phi i32 [ %.461100, %bb.dm ], [ %.441098, %._crit_edge1986 ]
  %.561005 = phi i32 [ %.46995, %bb.dm ], [ %.44993, %._crit_edge1986 ]
  %.58 = phi i32 [ %.47, %bb.dm ], [ %.45, %._crit_edge1986 ]
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !92
  %i.us = add i32 %i.ur, -1                       ; 2 uses
  store i32 %i.us, ptr %i.uq, align 8, !tbaa !92
  br label %.loopexit1927, !llvm.loop !119

bb.do:                                            ; preds = %.preheader2305, %bb.eo
  %.601509 = phi i64 [ %i.zy, %bb.eo ], [ %.601509.ph, %.preheader2305 ] ; 5 uses
  %.591409 = phi ptr [ %.651415, %bb.eo ], [ %.591409.ph, %.preheader2305 ] ; 9 uses
  %.541304 = phi ptr [ %i.aaf, %bb.eo ], [ %.541304.ph, %.preheader2305 ] ; 9 uses
  %.591113 = phi i32 [ %.1904, %bb.eo ], [ %.591113.ph, %.preheader2305 ]
  %.60 = phi i32 [ %i.zz, %bb.eo ], [ %.60.ph, %.preheader2305 ] ; 10 uses
  %i.ut = ptrtoint ptr %.591409 to i64
  %i.uu = sub i64 %i.xy, %i.ut                    ; 2 uses
  %i.uv = icmp slt i64 %i.uu, 4
  %i.uw = ptrtoint ptr %.541304 to i64
  %i.ux = sub i64 %i.xz, %i.uw
  %i.uy = icmp slt i64 %i.ux, 2
  %or.cond1866 = select i1 %i.uv, i1 true, i1 %i.uy
  br i1 %or.cond1866, label %bb.dp, label %bb.eh

bb.dp:                                            ; preds = %bb.do
  %i.uz = icmp ult i32 %.60, 15
  br i1 %i.uz, label %bb.dq, label %bb.eb

bb.dq:                                            ; preds = %bb.dp
  %i.va = icmp slt i64 %i.uu, 2
  br i1 %i.va, label %bb.dr, label %bb.ea

bb.dr:                                            ; preds = %bb.dq, %bb.dz
  %.611611 = phi i32 [ %.601610.ph, %bb.dq ], [ %.631613, %bb.dz ] ; 4 uses
  %.611510 = phi i64 [ %.601509, %bb.dq ], [ %i.wh, %bb.dz ] ; 6 uses
  %.601410 = phi ptr [ %.591409, %bb.dq ], [ %.621412, %bb.dz ] ; 5 uses
  %.551305 = phi ptr [ %.541304, %bb.dq ], [ %.571307, %bb.dz ] ; 4 uses
  %.551214 = phi i64 [ %.541213.ph, %bb.dq ], [ %.571216, %bb.dz ] ; 4 uses
  %.601114 = phi i32 [ %.591113, %bb.dq ], [ %.621116, %bb.dz ] ; 2 uses
  %.591008 = phi i32 [ %.581007.ph, %bb.dq ], [ %.611010, %bb.dz ] ; 4 uses
  %.61 = phi i32 [ %.60, %bb.dq ], [ %i.wi, %bb.dz ]
  %i.vb = freeze i32 %.61                         ; 7 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.vd = and i64 %.611510, 1023
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !108 ; 2 uses
  %i.vg = sext i16 %i.vf to i32                   ; 2 uses
  %i.vh = icmp sgt i16 %i.vf, -1
  br i1 %i.vh, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.vi = lshr i32 %i.vg, 9
  %i.vj = add nsw i32 %i.vi, -1
  %or.cond1867.not = icmp ult i32 %i.vj, %i.vb
  br i1 %or.cond1867.not, label %bb.eb, label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  %i.vk = icmp samesign ugt i32 %i.vb, 10
  br i1 %i.vk, label %.preheader1921, label %bb.dw

.preheader1921:                                   ; preds = %bb.dt
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 2408
  br label %bb.du

bb.du:                                            ; preds = %.preheader1921, %bb.du
  %.0911 = phi i32 [ %i.vv, %bb.du ], [ %i.vg, %.preheader1921 ]
  %.0908 = phi i32 [ %i.vo, %bb.du ], [ 10, %.preheader1921 ] ; 3 uses
  %i.vm = xor i32 %.0911, -1
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = add i32 %.0908, 1
  %i.vp = zext nneg i32 %.0908 to i64
  %i.vq = lshr i64 %.611510, %i.vp
  %i.vr = and i64 %i.vq, 1
  %i.vs = getelementptr [2 x i8], ptr %i.vl, i64 %i.vr
  %i.vt = getelementptr [2 x i8], ptr %i.vs, i64 %i.vn
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !108 ; 3 uses
  %i.vv = sext i16 %i.vu to i32
  %i.vw = icmp slt i16 %i.vu, 0
  %i.vx = add i32 %.0908, 2
  %i.vy = icmp uge i32 %i.vb, %i.vx
  %i.vz = and i1 %i.vw, %i.vy
  br i1 %i.vz, label %bb.du, label %bb.dv, !llvm.loop !120

bb.dv:                                            ; preds = %bb.du
  %i.wa = icmp sgt i16 %i.vu, -1
  br i1 %i.wa, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.ds, %bb.dv, %bb.dt
  %.not1804 = icmp ult ptr %.601410, %i.d
  br i1 %.not1804, label %.sink.split2199, label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %.621612 = phi i32 [ %.611611, %bb.dw ], [ %i.z, %bb.dy ] ; 2 uses
  %.621511 = phi i64 [ %.611510, %bb.dw ], [ %i.t, %bb.dy ] ; 2 uses
  %.611411 = phi ptr [ %.601410, %bb.dw ], [ %1, %bb.dy ] ; 2 uses
  %.561306 = phi ptr [ %.551305, %bb.dw ], [ %4, %bb.dy ] ; 2 uses
  %.561215 = phi i64 [ %.551214, %bb.dw ], [ %i.ab, %bb.dy ] ; 2 uses
  %.611115 = phi i32 [ %.601114, %bb.dw ], [ %i.x, %bb.dy ] ; 2 uses
  %.601009 = phi i32 [ %.591008, %bb.dw ], [ %i.v, %bb.dy ] ; 2 uses
  %.62 = phi i32 [ %i.vb, %bb.dw ], [ %i.r, %bb.dy ] ; 2 uses
  %i.wb = and i32 %6, 2
  %.not1805 = icmp eq i32 %i.wb, 0
  br i1 %.not1805, label %bb.dz, label %.sink.split2211

bb.dy:                                            ; preds = %bb.c
  %.not1773 = icmp eq i64 %i.c, 0
  br i1 %.not1773, label %bb.dx, label %.sink.split2199

.sink.split2199:                                  ; preds = %bb.dw, %bb.dy
  %.sink2201 = phi ptr [ %1, %bb.dy ], [ %.601410, %bb.dw ] ; 2 uses
  %.631613.ph = phi i32 [ %i.z, %bb.dy ], [ %.611611, %bb.dw ]
  %.631512.ph = phi i64 [ %i.t, %bb.dy ], [ %.611510, %bb.dw ]
  %.571307.ph = phi ptr [ %4, %bb.dy ], [ %.551305, %bb.dw ]
  %.571216.ph = phi i64 [ %i.ab, %bb.dy ], [ %.551214, %bb.dw ]
  %.621116.ph = phi i32 [ %i.x, %bb.dy ], [ %.601114, %bb.dw ]
  %.611010.ph = phi i32 [ %i.v, %bb.dy ], [ %.591008, %bb.dw ]
  %.63.ph = phi i32 [ %i.r, %bb.dy ], [ %i.vb, %bb.dw ]
  %i.wc = getelementptr inbounds nuw i8, ptr %.sink2201, i64 1
  %i.wd = load i8, ptr %.sink2201, align 1, !tbaa !7
  %i.we = zext i8 %i.wd to i64
  br label %bb.dz

bb.dz:                                            ; preds = %.sink.split2199, %bb.dx
  %.631613 = phi i32 [ %.621612, %bb.dx ], [ %.631613.ph, %.sink.split2199 ] ; 2 uses
  %.631512 = phi i64 [ %.621511, %bb.dx ], [ %.631512.ph, %.sink.split2199 ]
  %.621412 = phi ptr [ %.611411, %bb.dx ], [ %i.wc, %.sink.split2199 ] ; 2 uses
  %.571307 = phi ptr [ %.561306, %bb.dx ], [ %.571307.ph, %.sink.split2199 ] ; 2 uses
  %.571216 = phi i64 [ %.561215, %bb.dx ], [ %.571216.ph, %.sink.split2199 ] ; 2 uses
  %.621116 = phi i32 [ %.611115, %bb.dx ], [ %.621116.ph, %.sink.split2199 ]
  %.611010 = phi i32 [ %.601009, %bb.dx ], [ %.611010.ph, %.sink.split2199 ] ; 2 uses
  %.63 = phi i32 [ %.62, %bb.dx ], [ %.63.ph, %.sink.split2199 ] ; 2 uses
  %.0907.shrunk = phi i64 [ 0, %bb.dx ], [ %i.we, %.sink.split2199 ]
  %i.wf = zext nneg i32 %.63 to i64
  %i.wg = shl i64 %.0907.shrunk, %i.wf
  %i.wh = or i64 %i.wg, %.631512                  ; 2 uses
  %i.wi = add i32 %.63, 8                         ; 3 uses
  %i.wj = icmp ult i32 %i.wi, 15
  br i1 %i.wj, label %bb.dr, label %bb.eb, !llvm.loop !121

bb.ea:                                            ; preds = %bb.dq
  %i.wk = load i8, ptr %.591409, align 1, !tbaa !7
  %i.wl = zext i8 %i.wk to i64
  %i.wm = zext nneg i32 %.60 to i64
  %i.wn = shl nuw nsw i64 %i.wl, %i.wm
  %i.wo = getelementptr inbounds nuw i8, ptr %.591409, i64 1
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !7
  %i.wq = zext i8 %i.wp to i64
  %i.wr = add nuw nsw i32 %.60, 8
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = shl nuw nsw i64 %i.wq, %i.ws
  %i.wu = or i64 %i.wn, %i.wt
  %i.wv = or i64 %i.wu, %.601509
  %i.ww = getelementptr inbounds nuw i8, ptr %.591409, i64 2
  %i.wx = or disjoint i32 %.60, 16
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ds, %bb.ea, %bb.dv, %bb.dz, %bb.dp
  %.641614 = phi i32 [ %.611611, %bb.ds ], [ %.631613, %bb.dz ], [ %.611611, %bb.dv ], [ %.601610.ph, %bb.ea ], [ %.601610.ph, %bb.dp ] ; 2 uses
  %.641513 = phi i64 [ %.611510, %bb.ds ], [ %i.wh, %bb.dz ], [ %.611510, %bb.dv ], [ %i.wv, %bb.ea ], [ %.601509, %bb.dp ] ; 3 uses
  %.631413 = phi ptr [ %.601410, %bb.ds ], [ %.621412, %bb.dz ], [ %.601410, %bb.dv ], [ %i.ww, %bb.ea ], [ %.591409, %bb.dp ] ; 2 uses
  %.581308 = phi ptr [ %.551305, %bb.ds ], [ %.571307, %bb.dz ], [ %.551305, %bb.dv ], [ %.541304, %bb.ea ], [ %.541304, %bb.dp ] ; 2 uses
  %.581217 = phi i64 [ %.551214, %bb.ds ], [ %.571216, %bb.dz ], [ %.551214, %bb.dv ], [ %.541213.ph, %bb.ea ], [ %.541213.ph, %bb.dp ] ; 2 uses
  %.621011 = phi i32 [ %.591008, %bb.ds ], [ %.611010, %bb.dz ], [ %.591008, %bb.dv ], [ %.581007.ph, %bb.ea ], [ %.581007.ph, %bb.dp ] ; 2 uses
  %.64 = phi i32 [ %i.vb, %bb.ds ], [ %i.wi, %bb.dz ], [ %i.vb, %bb.dv ], [ %i.wx, %bb.ea ], [ %.60, %bb.dp ]
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.wz = and i64 %.641513, 1023
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %i.wz
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !108 ; 2 uses
  %i.xc = sext i16 %i.xb to i32                   ; 3 uses
  %i.xd = icmp sgt i16 %i.xb, -1
  br i1 %i.xd, label %bb.ec, label %.preheader1919

.preheader1919:                                   ; preds = %bb.eb
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 2408
  br label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.xf = lshr i32 %i.xc, 9
  %i.xg = and i32 %i.xc, 511
  br label %.loopexit1920

bb.ed:                                            ; preds = %.preheader1919, %bb.ed
  %.1912 = phi i32 [ %i.xq, %bb.ed ], [ %i.xc, %.preheader1919 ]
  %.1909 = phi i32 [ %i.xj, %bb.ed ], [ 10, %.preheader1919 ] ; 2 uses
  %i.xh = xor i32 %.1912, -1
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = add i32 %.1909, 1                       ; 2 uses
  %i.xk = zext nneg i32 %.1909 to i64
  %i.xl = lshr i64 %.641513, %i.xk
  %i.xm = and i64 %i.xl, 1
  %i.xn = getelementptr [2 x i8], ptr %i.xe, i64 %i.xm
  %i.xo = getelementptr [2 x i8], ptr %i.xn, i64 %i.xi
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !108 ; 2 uses
  %i.xq = sext i16 %i.xp to i32                   ; 2 uses
  %i.xr = icmp slt i16 %i.xp, 0
  br i1 %i.xr, label %bb.ed, label %.loopexit1920, !llvm.loop !122

.loopexit1920:                                    ; preds = %bb.ed, %bb.ec
  %.2913 = phi i32 [ %i.xg, %bb.ec ], [ %i.xq, %bb.ed ] ; 3 uses
  %.2910 = phi i32 [ %i.xf, %bb.ec ], [ %i.xj, %bb.ed ] ; 2 uses
  %i.xs = zext nneg i32 %.2910 to i64
  %i.xt = lshr i64 %.641513, %i.xs                ; 2 uses
  %i.xu = sub i32 %.64, %.2910                    ; 2 uses
  %i.xv = icmp samesign ugt i32 %.2913, 255
  br i1 %i.xv, label %.thread1890, label %bb.ee

bb.ee:                                            ; preds = %.loopexit1920, %bb.ef
  %.651615 = phi i32 [ %.641614, %.loopexit1920 ], [ %i.z, %bb.ef ] ; 2 uses
  %.651514 = phi i64 [ %i.xt, %.loopexit1920 ], [ %i.t, %bb.ef ] ; 2 uses
  %.641414 = phi ptr [ %.631413, %.loopexit1920 ], [ %1, %bb.ef ] ; 2 uses
  %.591309 = phi ptr [ %.581308, %.loopexit1920 ], [ %4, %bb.ef ] ; 4 uses
  %.591218 = phi i64 [ %.581217, %.loopexit1920 ], [ %i.ab, %bb.ef ] ; 2 uses
  %.631117 = phi i32 [ %.2913, %.loopexit1920 ], [ %i.x, %bb.ef ] ; 3 uses
  %.631012 = phi i32 [ %.621011, %.loopexit1920 ], [ %i.v, %bb.ef ] ; 2 uses
  %.65 = phi i32 [ %i.xu, %.loopexit1920 ], [ %i.r, %bb.ef ] ; 2 uses
  %.not1806 = icmp ult ptr %.591309, %i.f
  br i1 %.not1806, label %bb.eg, label %.sink.split2211

bb.ef:                                            ; preds = %bb.c
  br label %bb.ee, !llvm.loop !123

bb.eg:                                            ; preds = %bb.ee
  %i.xw = trunc i32 %.631117 to i8
  %i.xx = getelementptr inbounds nuw i8, ptr %.591309, i64 1
  store i8 %i.xw, ptr %.591309, align 1, !tbaa !7
  br label %.preheader2305

.preheader2305:                                   ; preds = %bb.ft, %.loopexit1927, %bb.eg, %bb.fz, %bb.gc, %bb.gg, %bb.gd
  %.601610.ph = phi i32 [ %.801630, %bb.gd ], [ %.801630, %bb.gg ], [ %.801630, %bb.fz ], [ %.651615, %bb.eg ], [ %.801630, %bb.gc ], [ %.821632, %bb.ft ], [ %.451595, %.loopexit1927 ] ; 5 uses
  %.601509.ph = phi i64 [ %.831532, %bb.gd ], [ %.831532, %bb.gg ], [ %.831532, %bb.fz ], [ %.651514, %bb.eg ], [ %.831532, %bb.gc ], [ %.851534, %bb.ft ], [ %.451494, %.loopexit1927 ]
  %.591409.ph = phi ptr [ %.811431, %bb.gd ], [ %.811431, %bb.gg ], [ %.811431, %bb.fz ], [ %.641414, %bb.eg ], [ %.811431, %bb.gc ], [ %.831433, %bb.ft ], [ %.441394, %.loopexit1927 ]
  %.541304.ph = phi ptr [ %i.ahv, %bb.gd ], [ %i.aig, %bb.gg ], [ %.lcssa2235, %bb.fz ], [ %i.xx, %bb.eg ], [ %i.ahn, %bb.gc ], [ %.781328, %bb.ft ], [ %.391289, %.loopexit1927 ]
  %.541213.ph = phi i64 [ %i.afc, %bb.gd ], [ %i.afc, %bb.gg ], [ %i.afc, %bb.fz ], [ %.591218, %bb.eg ], [ %i.afc, %bb.gc ], [ %.751234, %bb.ft ], [ %.391198, %.loopexit1927 ] ; 5 uses
  %.591113.ph = phi i32 [ %i.ahx, %bb.gd ], [ %i.ahx, %bb.gg ], [ %i.ahf, %bb.fz ], [ %.631117, %bb.eg ], [ %i.ahf, %bb.gc ], [ -1, %bb.ft ], [ %.441098, %.loopexit1927 ]
  %.581007.ph = phi i32 [ %.781027, %bb.gd ], [ %.781027, %bb.gg ], [ %.781027, %bb.fz ], [ %.631012, %bb.eg ], [ %.781027, %bb.gc ], [ %.801029, %bb.ft ], [ %.44993, %.loopexit1927 ] ; 5 uses
  %.60.ph = phi i32 [ %.83, %bb.gd ], [ %.83, %bb.gg ], [ %.83, %bb.fz ], [ %.65, %bb.eg ], [ %.83, %bb.gc ], [ %.85, %bb.ft ], [ %.45, %.loopexit1927 ]
  %i.xy = ptrtoint ptr %i.d to i64
  %i.xz = ptrtoint ptr %i.f to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 2408
  br label %bb.do

bb.eh:                                            ; preds = %bb.do
  %i.yd = icmp ult i32 %.60, 30
  br i1 %i.yd, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ye = load i32, ptr %.591409, align 4, !tbaa !3
  %i.yf = zext i32 %i.ye to i64
  %i.yg = zext nneg i32 %.60 to i64
  %i.yh = shl nuw nsw i64 %i.yf, %i.yg
  %i.yi = or i64 %i.yh, %.601509
  %i.yj = getelementptr inbounds nuw i8, ptr %.591409, i64 4
  %i.yk = or disjoint i32 %.60, 32
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.661515 = phi i64 [ %i.yi, %bb.ei ], [ %.601509, %bb.eh ] ; 3 uses
  %.651415 = phi ptr [ %i.yj, %bb.ei ], [ %.591409, %bb.eh ] ; 3 uses
  %.66 = phi i32 [ %i.yk, %bb.ei ], [ %.60, %bb.eh ]
  %i.yl = and i64 %.661515, 1023
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.ya, i64 %i.yl
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !108 ; 2 uses
  %i.yo = sext i16 %i.yn to i32                   ; 3 uses
  %i.yp = icmp sgt i16 %i.yn, -1
  br i1 %i.yp, label %bb.ek, label %.preheader1924

bb.ek:                                            ; preds = %bb.ej
  %i.yq = lshr i32 %i.yo, 9
  br label %.loopexit1925

.preheader1924:                                   ; preds = %bb.ej, %.preheader1924
  %.0903 = phi i32 [ %i.za, %.preheader1924 ], [ %i.yo, %bb.ej ]
  %.0900 = phi i32 [ %i.yt, %.preheader1924 ], [ 10, %bb.ej ] ; 2 uses
  %i.yr = xor i32 %.0903, -1
  %i.ys = zext nneg i32 %i.yr to i64
  %i.yt = add i32 %.0900, 1                       ; 2 uses
  %i.yu = zext nneg i32 %.0900 to i64
  %i.yv = lshr i64 %.661515, %i.yu
  %i.yw = and i64 %i.yv, 1
  %i.yx = getelementptr [2 x i8], ptr %i.yb, i64 %i.yw
  %i.yy = getelementptr [2 x i8], ptr %i.yx, i64 %i.ys
  %i.yz = load i16, ptr %i.yy, align 2, !tbaa !108 ; 2 uses
  %i.za = sext i16 %i.yz to i32                   ; 2 uses
  %i.zb = icmp slt i16 %i.yz, 0
  br i1 %i.zb, label %.preheader1924, label %.loopexit1925, !llvm.loop !124

.loopexit1925:                                    ; preds = %.preheader1924, %bb.ek
  %.1904 = phi i32 [ %i.yo, %bb.ek ], [ %i.za, %.preheader1924 ] ; 4 uses
  %.1901 = phi i32 [ %i.yq, %bb.ek ], [ %i.yt, %.preheader1924 ] ; 2 uses
  %i.zc = zext nneg i32 %.1901 to i64
  %i.zd = lshr i64 %.661515, %i.zc                ; 4 uses
  %i.ze = sub i32 %.66, %.1901                    ; 2 uses
  %i.zf = and i32 %.1904, 256
  %.not1800 = icmp eq i32 %i.zf, 0
  br i1 %.not1800, label %bb.el, label %.thread1890

bb.el:                                            ; preds = %.loopexit1925
  %i.zg = and i64 %i.zd, 1023
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %i.ya, i64 %i.zg
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !108 ; 2 uses
  %i.zj = sext i16 %i.zi to i32                   ; 3 uses
  %i.zk = icmp sgt i16 %i.zi, -1
  br i1 %i.zk, label %bb.em, label %.preheader1922

bb.em:                                            ; preds = %bb.el
  %i.zl = lshr i32 %i.zj, 9
  br label %.loopexit1923

.preheader1922:                                   ; preds = %bb.el, %.preheader1922
  %.2905 = phi i32 [ %i.zv, %.preheader1922 ], [ %i.zj, %bb.el ]
  %.2902 = phi i32 [ %i.zo, %.preheader1922 ], [ 10, %bb.el ] ; 2 uses
  %i.zm = xor i32 %.2905, -1
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = add i32 %.2902, 1                       ; 2 uses
  %i.zp = zext nneg i32 %.2902 to i64
  %i.zq = lshr i64 %i.zd, %i.zp
  %i.zr = and i64 %i.zq, 1
  %i.zs = getelementptr [2 x i8], ptr %i.yc, i64 %i.zr
  %i.zt = getelementptr [2 x i8], ptr %i.zs, i64 %i.zn
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !108 ; 2 uses
  %i.zv = sext i16 %i.zu to i32                   ; 2 uses
  %i.zw = icmp slt i16 %i.zu, 0
  br i1 %i.zw, label %.preheader1922, label %.loopexit1923, !llvm.loop !125

.loopexit1923:                                    ; preds = %.preheader1922, %bb.em
  %.3906 = phi i32 [ %i.zj, %bb.em ], [ %i.zv, %.preheader1922 ] ; 3 uses
  %.3 = phi i32 [ %i.zl, %bb.em ], [ %i.zo, %.preheader1922 ] ; 2 uses
  %i.zx = zext nneg i32 %.3 to i64
  %i.zy = lshr i64 %i.zd, %i.zx                   ; 2 uses
  %i.zz = sub i32 %i.ze, %.3                      ; 2 uses
  %i.aaa = trunc i32 %.1904 to i8
  store i8 %i.aaa, ptr %.541304, align 1, !tbaa !7
  %i.aab = and i32 %.3906, 256
  %.not1801 = icmp eq i32 %i.aab, 0
  br i1 %.not1801, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.loopexit1923
  %i.aac = getelementptr inbounds nuw i8, ptr %.541304, i64 1
  br label %.thread1890

bb.eo:                                            ; preds = %.loopexit1923
  %i.aad = trunc i32 %.3906 to i8
  %i.aae = getelementptr inbounds nuw i8, ptr %.541304, i64 1
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !7
  %i.aaf = getelementptr inbounds nuw i8, ptr %.541304, i64 2
  br label %bb.do

.thread1890:                                      ; preds = %.loopexit1925, %bb.en, %.loopexit1920
  %.671617 = phi i32 [ %.641614, %.loopexit1920 ], [ %.601610.ph, %bb.en ], [ %.601610.ph, %.loopexit1925 ]
  %.691518 = phi i64 [ %i.xt, %.loopexit1920 ], [ %i.zy, %bb.en ], [ %i.zd, %.loopexit1925 ] ; 4 uses
  %.671417 = phi ptr [ %.631413, %.loopexit1920 ], [ %.651415, %bb.en ], [ %.651415, %.loopexit1925 ] ; 4 uses
  %.621312 = phi ptr [ %.581308, %.loopexit1920 ], [ %i.aac, %bb.en ], [ %.541304, %.loopexit1925 ] ; 4 uses
  %.611220 = phi i64 [ %.581217, %.loopexit1920 ], [ %.541213.ph, %bb.en ], [ %.541213.ph, %.loopexit1925 ] ; 4 uses
  %.661120 = phi i32 [ %.2913, %.loopexit1920 ], [ %.3906, %bb.en ], [ %.1904, %.loopexit1925 ]
  %.651014 = phi i32 [ %.621011, %.loopexit1920 ], [ %.581007.ph, %bb.en ], [ %.581007.ph, %.loopexit1925 ] ; 4 uses
  %.69 = phi i32 [ %i.xu, %.loopexit1920 ], [ %i.zz, %bb.en ], [ %i.ze, %.loopexit1925 ] ; 5 uses
  %i.aag = and i32 %.661120, 511                  ; 3 uses
  %i.aah = icmp eq i32 %i.aag, 256
  br i1 %i.aah, label %bb.gh, label %bb.ep

bb.ep:                                            ; preds = %.thread1890
  %i.aai = add nsw i32 %i.aag, -257
  %i.aaj = zext i32 %i.aai to i64                 ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_length_base, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !3 ; 3 uses
  %i.aam = add nsw i32 %i.aag, -285
  %.not1807 = icmp ult i32 %i.aam, -20
  br i1 %.not1807, label %bb.ew, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_length_extra, i64 %i.aaj
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !3 ; 3 uses
  %i.aap = icmp ult i32 %.69, %i.aao
  br i1 %i.aap, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %bb.eq, %bb.eu
  %.681618 = phi i32 [ %i.aao, %bb.eq ], [ %.701620, %bb.eu ] ; 2 uses
  %.701519 = phi i64 [ %.691518, %bb.eq ], [ %i.aaw, %bb.eu ] ; 2 uses
  %.681418 = phi ptr [ %.671417, %bb.eq ], [ %.701420, %bb.eu ] ; 3 uses
  %.631313 = phi ptr [ %.621312, %bb.eq ], [ %.651315, %bb.eu ] ; 2 uses
  %.621221 = phi i64 [ %.611220, %bb.eq ], [ %.641223, %bb.eu ] ; 2 uses
  %.671121 = phi i32 [ %i.aal, %bb.eq ], [ %.691123, %bb.eu ] ; 2 uses
  %.661015 = phi i32 [ %.651014, %bb.eq ], [ %.681017, %bb.eu ] ; 2 uses
  %.70 = phi i32 [ %.69, %bb.eq ], [ %i.aax, %bb.eu ] ; 2 uses
  %.not1808 = icmp ult ptr %.681418, %i.d
  br i1 %.not1808, label %.sink.split2202, label %bb.es

bb.es:                                            ; preds = %bb.et, %bb.er
  %.691619 = phi i32 [ %.681618, %bb.er ], [ %i.z, %bb.et ] ; 2 uses
  %.711520 = phi i64 [ %.701519, %bb.er ], [ %i.t, %bb.et ] ; 2 uses
  %.691419 = phi ptr [ %.681418, %bb.er ], [ %1, %bb.et ] ; 2 uses
  %.641314 = phi ptr [ %.631313, %bb.er ], [ %4, %bb.et ] ; 2 uses
  %.631222 = phi i64 [ %.621221, %bb.er ], [ %i.ab, %bb.et ] ; 2 uses
  %.681122 = phi i32 [ %.671121, %bb.er ], [ %i.x, %bb.et ] ; 2 uses
  %.671016 = phi i32 [ %.661015, %bb.er ], [ %i.v, %bb.et ] ; 2 uses
  %.71 = phi i32 [ %.70, %bb.er ], [ %i.r, %bb.et ] ; 2 uses
  %i.aaq = and i32 %6, 2
  %.not1809 = icmp eq i32 %i.aaq, 0
  br i1 %.not1809, label %bb.eu, label %.sink.split2211

bb.et:                                            ; preds = %bb.c
  %.not1772 = icmp eq i64 %i.c, 0
  br i1 %.not1772, label %bb.es, label %.sink.split2202

.sink.split2202:                                  ; preds = %bb.er, %bb.et
  %.sink2204 = phi ptr [ %1, %bb.et ], [ %.681418, %bb.er ] ; 2 uses
  %.701620.ph = phi i32 [ %i.z, %bb.et ], [ %.681618, %bb.er ]
  %.721521.ph = phi i64 [ %i.t, %bb.et ], [ %.701519, %bb.er ]
  %.651315.ph = phi ptr [ %4, %bb.et ], [ %.631313, %bb.er ]
  %.641223.ph = phi i64 [ %i.ab, %bb.et ], [ %.621221, %bb.er ]
  %.691123.ph = phi i32 [ %i.x, %bb.et ], [ %.671121, %bb.er ]
  %.681017.ph = phi i32 [ %i.v, %bb.et ], [ %.661015, %bb.er ]
  %.72.ph = phi i32 [ %i.r, %bb.et ], [ %.70, %bb.er ]
  %i.aar = getelementptr inbounds nuw i8, ptr %.sink2204, i64 1
  %i.aas = load i8, ptr %.sink2204, align 1, !tbaa !7
  %i.aat = zext i8 %i.aas to i64
  br label %bb.eu

bb.eu:                                            ; preds = %.sink.split2202, %bb.es
  %.701620 = phi i32 [ %.691619, %bb.es ], [ %.701620.ph, %.sink.split2202 ] ; 3 uses
  %.721521 = phi i64 [ %.711520, %bb.es ], [ %.721521.ph, %.sink.split2202 ]
  %.701420 = phi ptr [ %.691419, %bb.es ], [ %i.aar, %.sink.split2202 ] ; 2 uses
  %.651315 = phi ptr [ %.641314, %bb.es ], [ %.651315.ph, %.sink.split2202 ] ; 2 uses
  %.641223 = phi i64 [ %.631222, %bb.es ], [ %.641223.ph, %.sink.split2202 ] ; 2 uses
  %.691123 = phi i32 [ %.681122, %bb.es ], [ %.691123.ph, %.sink.split2202 ] ; 2 uses
  %.681017 = phi i32 [ %.671016, %bb.es ], [ %.681017.ph, %.sink.split2202 ] ; 2 uses
  %.72 = phi i32 [ %.71, %bb.es ], [ %.72.ph, %.sink.split2202 ] ; 2 uses
  %.0896.shrunk = phi i64 [ 0, %bb.es ], [ %i.aat, %.sink.split2202 ]
  %i.aau = zext nneg i32 %.72 to i64
  %i.aav = shl i64 %.0896.shrunk, %i.aau
  %i.aaw = or i64 %i.aav, %.721521                ; 2 uses
  %i.aax = add i32 %.72, 8                        ; 3 uses
  %i.aay = icmp ult i32 %i.aax, %.701620
  br i1 %i.aay, label %bb.er, label %bb.ev, !llvm.loop !126

bb.ev:                                            ; preds = %bb.eu, %bb.eq
  %.711621 = phi i32 [ %.701620, %bb.eu ], [ %i.aao, %bb.eq ] ; 4 uses
  %.731522 = phi i64 [ %i.aaw, %bb.eu ], [ %.691518, %bb.eq ] ; 2 uses
  %.711421 = phi ptr [ %.701420, %bb.eu ], [ %.671417, %bb.eq ]
  %.661316 = phi ptr [ %.651315, %bb.eu ], [ %.621312, %bb.eq ]
  %.651224 = phi i64 [ %.641223, %bb.eu ], [ %.611220, %bb.eq ]
  %.701124 = phi i32 [ %.691123, %bb.eu ], [ %i.aal, %bb.eq ]
  %.691018 = phi i32 [ %.681017, %bb.eu ], [ %.651014, %bb.eq ]
  %.73 = phi i32 [ %i.aax, %bb.eu ], [ %.69, %bb.eq ]
  %notmask1810 = shl nsw i32 -1, %.711621
  %i.aaz = xor i32 %notmask1810, -1
  %i.aba = trunc i64 %.731522 to i32
  %i.abb = and i32 %i.aba, %i.aaz
  %i.abc = zext nneg i32 %.711621 to i64
  %i.abd = lshr i64 %.731522, %i.abc
  %i.abe = sub i32 %.73, %.711621
  %i.abf = add i32 %.701124, %i.abb
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ep, %bb.ev
  %.721622 = phi i32 [ %.711621, %bb.ev ], [ 0, %bb.ep ]
  %.741523 = phi i64 [ %i.abd, %bb.ev ], [ %.691518, %bb.ep ] ; 3 uses
  %.721422 = phi ptr [ %.711421, %bb.ev ], [ %.671417, %bb.ep ] ; 6 uses
  %.671317 = phi ptr [ %.661316, %bb.ev ], [ %.621312, %bb.ep ] ; 3 uses
  %.661225 = phi i64 [ %.651224, %bb.ev ], [ %.611220, %bb.ep ] ; 3 uses
  %.711125 = phi i32 [ %i.abf, %bb.ev ], [ %i.aal, %bb.ep ] ; 3 uses
  %.701019 = phi i32 [ %.691018, %bb.ev ], [ %.651014, %bb.ep ]
  %.74 = phi i32 [ %i.abe, %bb.ev ], [ %.69, %bb.ep ] ; 6 uses
  %i.abg = icmp ult i32 %.74, 15
  br i1 %i.abg, label %bb.ex, label %bb.fi

bb.ex:                                            ; preds = %bb.ew
  %i.abh = ptrtoint ptr %i.d to i64
  %i.abi = ptrtoint ptr %.721422 to i64
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = icmp slt i64 %i.abj, 2
  br i1 %i.abk, label %bb.ey, label %bb.fh

bb.ey:                                            ; preds = %bb.ex, %bb.fg
  %.731623 = phi i32 [ %.721622, %bb.ex ], [ %.751625, %bb.fg ] ; 2 uses
  %.751524 = phi i64 [ %.741523, %bb.ex ], [ %i.acq, %bb.fg ] ; 6 uses
  %.731423 = phi ptr [ %.721422, %bb.ex ], [ %.751425, %bb.fg ] ; 5 uses
  %.681318 = phi ptr [ %.671317, %bb.ex ], [ %.701320, %bb.fg ] ; 4 uses
  %.671226 = phi i64 [ %.661225, %bb.ex ], [ %.691228, %bb.fg ] ; 4 uses
  %.721126 = phi i32 [ %.711125, %bb.ex ], [ %.741128, %bb.fg ] ; 4 uses
  %.711020 = phi i32 [ %.701019, %bb.ex ], [ %.731022, %bb.fg ] ; 2 uses
  %.75 = phi i32 [ %.74, %bb.ex ], [ %i.acr, %bb.fg ] ; 7 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 3848
  %i.abm = and i64 %.751524, 1023
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %i.abl, i64 %i.abm
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !108 ; 2 uses
  %i.abp = sext i16 %i.abo to i32                 ; 2 uses
  %i.abq = icmp sgt i16 %i.abo, -1
  br i1 %i.abq, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.abr = lshr i32 %i.abp, 9
  %i.abs = add nsw i32 %i.abr, -1
  %or.cond1868.not = icmp ult i32 %i.abs, %.75
  br i1 %or.cond1868.not, label %bb.fi, label %bb.fd

bb.fa:                                            ; preds = %bb.ey
  %i.abt = icmp samesign ugt i32 %.75, 10
  br i1 %i.abt, label %.preheader1918, label %bb.fd

.preheader1918:                                   ; preds = %bb.fa
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 5896
  br label %bb.fb

bb.fb:                                            ; preds = %.preheader1918, %bb.fb
  %.0893 = phi i32 [ %i.ace, %bb.fb ], [ %i.abp, %.preheader1918 ]
  %.0890 = phi i32 [ %i.abx, %bb.fb ], [ 10, %.preheader1918 ] ; 3 uses
  %i.abv = xor i32 %.0893, -1
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = add i32 %.0890, 1
  %i.aby = zext nneg i32 %.0890 to i64
  %i.abz = lshr i64 %.751524, %i.aby
  %i.aca = and i64 %i.abz, 1
  %i.acb = getelementptr [2 x i8], ptr %i.abu, i64 %i.aca
  %i.acc = getelementptr [2 x i8], ptr %i.acb, i64 %i.abw
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !108 ; 3 uses
  %i.ace = sext i16 %i.acd to i32
  %i.acf = icmp slt i16 %i.acd, 0
  %i.acg = add i32 %.0890, 2
  %i.ach = icmp uge i32 %.75, %i.acg
  %i.aci = and i1 %i.acf, %i.ach
  br i1 %i.aci, label %bb.fb, label %bb.fc, !llvm.loop !127

bb.fc:                                            ; preds = %bb.fb
  %i.acj = icmp sgt i16 %i.acd, -1
  br i1 %i.acj, label %bb.fi, label %bb.fd

bb.fd:                                            ; preds = %bb.ez, %bb.fc, %bb.fa
  %.not1813 = icmp ult ptr %.731423, %i.d
  br i1 %.not1813, label %.sink.split2205, label %bb.fe

bb.fe:                                            ; preds = %bb.ff, %bb.fd
  %.741624 = phi i32 [ %.731623, %bb.fd ], [ %i.z, %bb.ff ] ; 2 uses
  %.761525 = phi i64 [ %.751524, %bb.fd ], [ %i.t, %bb.ff ] ; 2 uses
  %.741424 = phi ptr [ %.731423, %bb.fd ], [ %1, %bb.ff ] ; 2 uses
  %.691319 = phi ptr [ %.681318, %bb.fd ], [ %4, %bb.ff ] ; 2 uses
  %.681227 = phi i64 [ %.671226, %bb.fd ], [ %i.ab, %bb.ff ] ; 2 uses
  %.731127 = phi i32 [ %.721126, %bb.fd ], [ %i.x, %bb.ff ] ; 2 uses
  %.721021 = phi i32 [ %.711020, %bb.fd ], [ %i.v, %bb.ff ] ; 2 uses
  %.76 = phi i32 [ %.75, %bb.fd ], [ %i.r, %bb.ff ] ; 2 uses
  %i.ack = and i32 %6, 2
  %.not1814 = icmp eq i32 %i.ack, 0
  br i1 %.not1814, label %bb.fg, label %.sink.split2211

bb.ff:                                            ; preds = %bb.c
  %.not1771 = icmp eq i64 %i.c, 0
  br i1 %.not1771, label %bb.fe, label %.sink.split2205

.sink.split2205:                                  ; preds = %bb.fd, %bb.ff
  %.sink2207 = phi ptr [ %1, %bb.ff ], [ %.731423, %bb.fd ] ; 2 uses
  %.751625.ph = phi i32 [ %i.z, %bb.ff ], [ %.731623, %bb.fd ]
  %.771526.ph = phi i64 [ %i.t, %bb.ff ], [ %.751524, %bb.fd ]
  %.701320.ph = phi ptr [ %4, %bb.ff ], [ %.681318, %bb.fd ]
  %.691228.ph = phi i64 [ %i.ab, %bb.ff ], [ %.671226, %bb.fd ]
  %.741128.ph = phi i32 [ %i.x, %bb.ff ], [ %.721126, %bb.fd ]
  %.731022.ph = phi i32 [ %i.v, %bb.ff ], [ %.711020, %bb.fd ]
  %.77.ph = phi i32 [ %i.r, %bb.ff ], [ %.75, %bb.fd ]
  %i.acl = getelementptr inbounds nuw i8, ptr %.sink2207, i64 1
  %i.acm = load i8, ptr %.sink2207, align 1, !tbaa !7
  %i.acn = zext i8 %i.acm to i64
  br label %bb.fg

bb.fg:                                            ; preds = %.sink.split2205, %bb.fe
  %.751625 = phi i32 [ %.741624, %bb.fe ], [ %.751625.ph, %.sink.split2205 ]
  %.771526 = phi i64 [ %.761525, %bb.fe ], [ %.771526.ph, %.sink.split2205 ]
  %.751425 = phi ptr [ %.741424, %bb.fe ], [ %i.acl, %.sink.split2205 ] ; 2 uses
  %.701320 = phi ptr [ %.691319, %bb.fe ], [ %.701320.ph, %.sink.split2205 ] ; 2 uses
  %.691228 = phi i64 [ %.681227, %bb.fe ], [ %.691228.ph, %.sink.split2205 ] ; 2 uses
  %.741128 = phi i32 [ %.731127, %bb.fe ], [ %.741128.ph, %.sink.split2205 ] ; 2 uses
  %.731022 = phi i32 [ %.721021, %bb.fe ], [ %.731022.ph, %.sink.split2205 ]
  %.77 = phi i32 [ %.76, %bb.fe ], [ %.77.ph, %.sink.split2205 ] ; 2 uses
  %.0889.shrunk = phi i64 [ 0, %bb.fe ], [ %i.acn, %.sink.split2205 ]
  %i.aco = zext nneg i32 %.77 to i64
  %i.acp = shl i64 %.0889.shrunk, %i.aco
  %i.acq = or i64 %i.acp, %.771526                ; 2 uses
  %i.acr = add i32 %.77, 8                        ; 3 uses
  %i.acs = icmp ult i32 %i.acr, 15
  br i1 %i.acs, label %bb.ey, label %bb.fi, !llvm.loop !128

bb.fh:                                            ; preds = %bb.ex
  %i.act = load i8, ptr %.721422, align 1, !tbaa !7
  %i.acu = zext i8 %i.act to i64
  %i.acv = zext nneg i32 %.74 to i64
  %i.acw = shl nuw nsw i64 %i.acu, %i.acv
  %i.acx = getelementptr inbounds nuw i8, ptr %.721422, i64 1
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !7
  %i.acz = zext i8 %i.acy to i64
  %i.ada = add nuw nsw i32 %.74, 8
  %i.adb = zext nneg i32 %i.ada to i64
  %i.adc = shl nuw nsw i64 %i.acz, %i.adb
  %i.add = or i64 %i.acw, %i.adc
  %i.ade = or i64 %i.add, %.741523
  %i.adf = getelementptr inbounds nuw i8, ptr %.721422, i64 2
  %i.adg = or disjoint i32 %.74, 16
  br label %bb.fi

bb.fi:                                            ; preds = %bb.ez, %bb.fh, %bb.fc, %bb.fg, %bb.ew
  %.781527 = phi i64 [ %.751524, %bb.ez ], [ %i.acq, %bb.fg ], [ %.751524, %bb.fc ], [ %i.ade, %bb.fh ], [ %.741523, %bb.ew ] ; 3 uses
  %.761426 = phi ptr [ %.731423, %bb.ez ], [ %.751425, %bb.fg ], [ %.731423, %bb.fc ], [ %i.adf, %bb.fh ], [ %.721422, %bb.ew ] ; 3 uses
  %.711321 = phi ptr [ %.681318, %bb.ez ], [ %.701320, %bb.fg ], [ %.681318, %bb.fc ], [ %.671317, %bb.fh ], [ %.671317, %bb.ew ] ; 3 uses
  %.701229 = phi i64 [ %.671226, %bb.ez ], [ %.691228, %bb.fg ], [ %.671226, %bb.fc ], [ %.661225, %bb.fh ], [ %.661225, %bb.ew ]
  %.751129 = phi i32 [ %.721126, %bb.ez ], [ %.741128, %bb.fg ], [ %.721126, %bb.fc ], [ %.711125, %bb.fh ], [ %.711125, %bb.ew ] ; 3 uses
  %.78 = phi i32 [ %.75, %bb.ez ], [ %i.acr, %bb.fg ], [ %.75, %bb.fc ], [ %i.adg, %bb.fh ], [ %.74, %bb.ew ]
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 3848
  %i.adi = and i64 %.781527, 1023
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.adh, i64 %i.adi
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !108 ; 2 uses
  %i.adl = sext i16 %i.adk to i32                 ; 3 uses
  %i.adm = icmp sgt i16 %i.adk, -1
  br i1 %i.adm, label %bb.fj, label %.preheader1916

.preheader1916:                                   ; preds = %bb.fi
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 5896
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ado = lshr i32 %i.adl, 9
  %i.adp = and i32 %i.adl, 511
  br label %.loopexit1917

bb.fk:                                            ; preds = %.preheader1916, %bb.fk
  %.1894 = phi i32 [ %i.adz, %bb.fk ], [ %i.adl, %.preheader1916 ]
  %.1891 = phi i32 [ %i.ads, %bb.fk ], [ 10, %.preheader1916 ] ; 2 uses
  %i.adq = xor i32 %.1894, -1
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = add i32 %.1891, 1                      ; 2 uses
  %i.adt = zext nneg i32 %.1891 to i64
  %i.adu = lshr i64 %.781527, %i.adt
  %i.adv = and i64 %i.adu, 1
  %i.adw = getelementptr [2 x i8], ptr %i.adn, i64 %i.adv
  %i.adx = getelementptr [2 x i8], ptr %i.adw, i64 %i.adr
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !108 ; 2 uses
  %i.adz = sext i16 %i.ady to i32                 ; 2 uses
  %i.aea = icmp slt i16 %i.ady, 0
  br i1 %i.aea, label %bb.fk, label %.loopexit1917, !llvm.loop !129

.loopexit1917:                                    ; preds = %bb.fk, %bb.fj
  %.2895 = phi i32 [ %i.adp, %bb.fj ], [ %i.adz, %bb.fk ] ; 2 uses
  %.2892 = phi i32 [ %i.ado, %bb.fj ], [ %i.ads, %bb.fk ] ; 2 uses
  %i.aeb = zext nneg i32 %.2892 to i64
  %i.aec = lshr i64 %.781527, %i.aeb              ; 3 uses
  %i.aed = sub i32 %.78, %.2892                   ; 4 uses
  %i.aee = zext nneg i32 %.2895 to i64            ; 2 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_base, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !3 ; 3 uses
  %i.aeh = add nsw i32 %.2895, -30
  %.not1815 = icmp ult i32 %i.aeh, -26
  br i1 %.not1815, label %bb.fr, label %bb.fl

bb.fl:                                            ; preds = %.loopexit1917
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_extra, i64 %i.aee
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !3 ; 3 uses
  %i.aek = icmp ult i32 %i.aed, %i.aej
  br i1 %i.aek, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %bb.fl, %bb.fp
  %.761626 = phi i32 [ %i.aej, %bb.fl ], [ %.781628, %bb.fp ] ; 2 uses
  %.791528 = phi i64 [ %i.aec, %bb.fl ], [ %i.aer, %bb.fp ] ; 2 uses
  %.771427 = phi ptr [ %.761426, %bb.fl ], [ %.791429, %bb.fp ] ; 3 uses
  %.721322 = phi ptr [ %.711321, %bb.fl ], [ %.741324, %bb.fp ] ; 2 uses
  %.711230 = phi i64 [ %.701229, %bb.fl ], [ %.731232, %bb.fp ] ; 2 uses
  %.761130 = phi i32 [ %.751129, %bb.fl ], [ %.781132, %bb.fp ] ; 2 uses
  %.741023 = phi i32 [ %i.aeg, %bb.fl ], [ %.761025, %bb.fp ] ; 2 uses
  %.79 = phi i32 [ %i.aed, %bb.fl ], [ %i.aes, %bb.fp ] ; 2 uses
  %.not1816 = icmp ult ptr %.771427, %i.d
  br i1 %.not1816, label %.sink.split2208, label %bb.fn

bb.fn:                                            ; preds = %bb.fo, %bb.fm
  %.771627 = phi i32 [ %.761626, %bb.fm ], [ %i.z, %bb.fo ] ; 2 uses
  %.801529 = phi i64 [ %.791528, %bb.fm ], [ %i.t, %bb.fo ] ; 2 uses
  %.781428 = phi ptr [ %.771427, %bb.fm ], [ %1, %bb.fo ] ; 2 uses
  %.731323 = phi ptr [ %.721322, %bb.fm ], [ %4, %bb.fo ] ; 2 uses
  %.721231 = phi i64 [ %.711230, %bb.fm ], [ %i.ab, %bb.fo ] ; 2 uses
  %.771131 = phi i32 [ %.761130, %bb.fm ], [ %i.x, %bb.fo ] ; 2 uses
  %.751024 = phi i32 [ %.741023, %bb.fm ], [ %i.v, %bb.fo ] ; 2 uses
  %.80 = phi i32 [ %.79, %bb.fm ], [ %i.r, %bb.fo ] ; 2 uses
  %i.ael = and i32 %6, 2
  %.not1817 = icmp eq i32 %i.ael, 0
  br i1 %.not1817, label %bb.fp, label %.sink.split2211

bb.fo:                                            ; preds = %bb.c
  %.not1770 = icmp eq i64 %i.c, 0
  br i1 %.not1770, label %bb.fn, label %.sink.split2208

.sink.split2208:                                  ; preds = %bb.fm, %bb.fo
  %.sink2210 = phi ptr [ %1, %bb.fo ], [ %.771427, %bb.fm ] ; 2 uses
  %.781628.ph = phi i32 [ %i.z, %bb.fo ], [ %.761626, %bb.fm ]
  %.811530.ph = phi i64 [ %i.t, %bb.fo ], [ %.791528, %bb.fm ]
  %.741324.ph = phi ptr [ %4, %bb.fo ], [ %.721322, %bb.fm ]
  %.731232.ph = phi i64 [ %i.ab, %bb.fo ], [ %.711230, %bb.fm ]
  %.781132.ph = phi i32 [ %i.x, %bb.fo ], [ %.761130, %bb.fm ]
  %.761025.ph = phi i32 [ %i.v, %bb.fo ], [ %.741023, %bb.fm ]
  %.81.ph = phi i32 [ %i.r, %bb.fo ], [ %.79, %bb.fm ]
  %i.aem = getelementptr inbounds nuw i8, ptr %.sink2210, i64 1
  %i.aen = load i8, ptr %.sink2210, align 1, !tbaa !7
  %i.aeo = zext i8 %i.aen to i64
  br label %bb.fp

bb.fp:                                            ; preds = %.sink.split2208, %bb.fn
  %.781628 = phi i32 [ %.771627, %bb.fn ], [ %.781628.ph, %.sink.split2208 ] ; 3 uses
  %.811530 = phi i64 [ %.801529, %bb.fn ], [ %.811530.ph, %.sink.split2208 ]
  %.791429 = phi ptr [ %.781428, %bb.fn ], [ %i.aem, %.sink.split2208 ] ; 2 uses
  %.741324 = phi ptr [ %.731323, %bb.fn ], [ %.741324.ph, %.sink.split2208 ] ; 2 uses
  %.731232 = phi i64 [ %.721231, %bb.fn ], [ %.731232.ph, %.sink.split2208 ]
  %.781132 = phi i32 [ %.771131, %bb.fn ], [ %.781132.ph, %.sink.split2208 ] ; 2 uses
  %.761025 = phi i32 [ %.751024, %bb.fn ], [ %.761025.ph, %.sink.split2208 ] ; 2 uses
  %.81 = phi i32 [ %.80, %bb.fn ], [ %.81.ph, %.sink.split2208 ] ; 2 uses
  %.0887.shrunk = phi i64 [ 0, %bb.fn ], [ %i.aeo, %.sink.split2208 ]
  %i.aep = zext nneg i32 %.81 to i64
  %i.aeq = shl i64 %.0887.shrunk, %i.aep
  %i.aer = or i64 %i.aeq, %.811530                ; 2 uses
  %i.aes = add i32 %.81, 8                        ; 3 uses
  %i.aet = icmp ult i32 %i.aes, %.781628
  br i1 %i.aet, label %bb.fm, label %bb.fq, !llvm.loop !130

bb.fq:                                            ; preds = %bb.fp, %bb.fl
  %.791629 = phi i32 [ %.781628, %bb.fp ], [ %i.aej, %bb.fl ] ; 4 uses
  %.821531 = phi i64 [ %i.aer, %bb.fp ], [ %i.aec, %bb.fl ] ; 2 uses
  %.801430 = phi ptr [ %.791429, %bb.fp ], [ %.761426, %bb.fl ]
  %.751325 = phi ptr [ %.741324, %bb.fp ], [ %.711321, %bb.fl ]
  %.791133 = phi i32 [ %.781132, %bb.fp ], [ %.751129, %bb.fl ]
  %.771026 = phi i32 [ %.761025, %bb.fp ], [ %i.aeg, %bb.fl ]
  %.82 = phi i32 [ %i.aes, %bb.fp ], [ %i.aed, %bb.fl ]
  %notmask1818 = shl nsw i32 -1, %.791629
  %i.aeu = xor i32 %notmask1818, -1
  %i.aev = trunc i64 %.821531 to i32
  %i.aew = and i32 %i.aev, %i.aeu
  %i.aex = zext nneg i32 %.791629 to i64
  %i.aey = lshr i64 %.821531, %i.aex
  %i.aez = sub i32 %.82, %.791629
  %i.afa = add i32 %.771026, %i.aew
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.loopexit1917
  %.801630 = phi i32 [ %.791629, %bb.fq ], [ 0, %.loopexit1917 ] ; 6 uses
  %.831532 = phi i64 [ %i.aey, %bb.fq ], [ %i.aec, %.loopexit1917 ] ; 6 uses
  %.811431 = phi ptr [ %.801430, %bb.fq ], [ %.761426, %.loopexit1917 ] ; 6 uses
  %.761326 = phi ptr [ %.751325, %bb.fq ], [ %.711321, %.loopexit1917 ] ; 13 uses
  %.801134 = phi i32 [ %.791133, %bb.fq ], [ %.751129, %.loopexit1917 ] ; 8 uses
  %.781027 = phi i32 [ %i.afa, %bb.fq ], [ %i.aeg, %.loopexit1917 ] ; 8 uses
  %.83 = phi i32 [ %i.aez, %bb.fq ], [ %i.aed, %.loopexit1917 ] ; 6 uses
  %i.afb = ptrtoint ptr %.761326 to i64
  %i.afc = sub i64 %i.afb, %i.i                   ; 8 uses
  %i.afd = zext i32 %.781027 to i64               ; 2 uses
  %i.afe = icmp uge i64 %i.afc, %i.afd
  %brmerge = or i1 %.not, %i.afe
  br i1 %brmerge, label %bb.fs, label %.sink.split2211

bb.fs:                                            ; preds = %bb.fr
  %i.aff = sub i64 %i.afc, %i.afd
  %i.afg = and i64 %i.aff, %i.m                   ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %3, i64 %i.afg ; 10 uses
  %i.afi = icmp ugt ptr %.761326, %i.afh
  %i.afj = select i1 %i.afi, ptr %.761326, ptr %i.afh
  %i.afk = zext i32 %.801134 to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  %i.afm = icmp ugt ptr %i.afl, %i.f
  br i1 %i.afm, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs, %bb.fw
  %.821632 = phi i32 [ %.801630, %bb.fs ], [ %.831633, %bb.fw ] ; 2 uses
  %.851534 = phi i64 [ %.831532, %bb.fs ], [ %.861535, %bb.fw ] ; 2 uses
  %.831433 = phi ptr [ %.811431, %bb.fs ], [ %.841434, %bb.fw ] ; 2 uses
  %.781328 = phi ptr [ %.761326, %bb.fs ], [ %i.afu, %bb.fw ] ; 2 uses
  %.751234 = phi i64 [ %i.afc, %bb.fs ], [ %i.afo, %bb.fw ] ; 2 uses
  %.821136 = phi i32 [ %.801134, %bb.fs ], [ %.831137, %bb.fw ] ; 2 uses
  %.801029 = phi i32 [ %.781027, %bb.fs ], [ %.811030, %bb.fw ] ; 2 uses
  %.85 = phi i32 [ %.83, %bb.fs ], [ %.86, %bb.fw ] ; 2 uses
  %i.afn = add i32 %.821136, -1
  %.not1821 = icmp eq i32 %.821136, 0
  br i1 %.not1821, label %.preheader2305, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fv
  %.831633 = phi i32 [ %.821632, %bb.ft ], [ %i.z, %bb.fv ] ; 2 uses
  %.861535 = phi i64 [ %.851534, %bb.ft ], [ %i.t, %bb.fv ] ; 2 uses
  %.841434 = phi ptr [ %.831433, %bb.ft ], [ %1, %bb.fv ] ; 2 uses
  %.791329 = phi ptr [ %.781328, %bb.ft ], [ %4, %bb.fv ] ; 4 uses
  %.761235 = phi i64 [ %.751234, %bb.ft ], [ %i.ab, %bb.fv ] ; 3 uses
  %.831137 = phi i32 [ %i.afn, %bb.ft ], [ %i.x, %bb.fv ] ; 2 uses
  %.811030 = phi i32 [ %.801029, %bb.ft ], [ %i.v, %bb.fv ] ; 3 uses
  %.86 = phi i32 [ %.85, %bb.ft ], [ %i.r, %bb.fv ] ; 2 uses
  %.not1822 = icmp ult ptr %.791329, %i.f
  br i1 %.not1822, label %bb.fw, label %.sink.split2211

bb.fv:                                            ; preds = %bb.c
  br label %bb.fu, !llvm.loop !131

bb.fw:                                            ; preds = %bb.fu
  %i.afo = add i64 %.761235, 1
  %i.afp = zext i32 %.811030 to i64
  %i.afq = sub i64 %.761235, %i.afp
  %i.afr = and i64 %i.afq, %i.m
  %i.afs = getelementptr inbounds nuw i8, ptr %3, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !7
  %i.afu = getelementptr inbounds nuw i8, ptr %.791329, i64 1
  store i8 %i.aft, ptr %.791329, align 1, !tbaa !7
  br label %bb.ft, !llvm.loop !132

bb.fx:                                            ; preds = %bb.fs
  %i.afv = icmp ult i32 %.801134, 9
  %.not1819 = icmp ugt i32 %.801134, %.781027
  %or.cond1870 = or i1 %i.afv, %.not1819
  br i1 %or.cond1870, label %.thread1896.preheader, label %bb.fy

.thread1896.preheader:                            ; preds = %.loopexit2277, %bb.fx
  %.841334.ph = phi ptr [ %.lcssa2235, %.loopexit2277 ], [ %.761326, %bb.fx ]
  %.851139.ph = phi i32 [ %i.ahf, %.loopexit2277 ], [ %.801134, %bb.fx ]
  %.2916.ph = phi ptr [ %.lcssa2234, %.loopexit2277 ], [ %i.afh, %bb.fx ]
  br label %.thread1896

bb.fy:                                            ; preds = %bb.fx
  %i.afw = and i32 %.801134, -8
  %i.afx = zext i32 %i.afw to i64                 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afx
  %i.afz = add i64 %i.afg, %i.i                   ; 2 uses
  %i.aga = add i64 %i.afz, %i.afx
  %i.agb = add i64 %i.afz, 8
  %i.agc = tail call i64 @llvm.umax.i64(i64 %i.aga, i64 %i.agb)
  %i.agd = xor i64 %i.afg, -1
  %i.age = add i64 %i.agc, %i.agd
  %i.agf = sub i64 %i.age, %i.i                   ; 2 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = add nuw nsw i64 %i.agg, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.agf, 216
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.fy
  %i.agi = add i64 %i.afg, %i.i                   ; 2 uses
  %i.agj = add i64 %i.agi, %i.afx
  %i.agk = add i64 %i.agi, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.agj, i64 %i.agk)
  %i.agl = xor i64 %i.afg, -1
  %i.agm = add i64 %umax, %i.agl
  %i.agn = sub i64 %i.agm, %i.i
  %i.ago = and i64 %i.agn, -8                     ; 2 uses
  %i.agp = getelementptr i8, ptr %.761326, i64 %i.ago
  %scevgep2246 = getelementptr i8, ptr %i.agp, i64 8
  %i.agq = getelementptr i8, ptr %3, i64 %i.afg
  %i.agr = getelementptr i8, ptr %i.agq, i64 %i.ago
  %scevgep2247 = getelementptr i8, ptr %i.agr, i64 8
  %bound0 = icmp ult ptr %.761326, %scevgep2247
  %bound1 = icmp ult ptr %i.afh, %scevgep2246
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.agh, 4611686018427387900    ; 3 uses
  %i.ags = shl i64 %n.vec, 3                      ; 2 uses
  %i.agt = getelementptr i8, ptr %.761326, i64 %i.ags ; 3 uses
  %i.agu = getelementptr i8, ptr %i.afh, i64 %i.ags ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agv = shl i64 %index, 3                      ; 3 uses
  %i.agw = or disjoint i64 %i.agv, 16             ; 2 uses
  %next.gep = getelementptr i8, ptr %.761326, i64 %i.agv
  %next.gep2248 = getelementptr i8, ptr %.761326, i64 %i.agw
  %next.gep2249 = getelementptr i8, ptr %i.afh, i64 %i.agv
  %next.gep2250 = getelementptr i8, ptr %i.afh, i64 %i.agw
  %wide.vec = load <4 x i32>, ptr %next.gep2249, align 4, !tbaa !3, !alias.scope !133
  %wide.vec2252 = load <4 x i32>, ptr %next.gep2250, align 4, !tbaa !3, !alias.scope !133
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !3, !alias.scope !136, !noalias !133
  store <4 x i32> %wide.vec2252, ptr %next.gep2248, align 4, !tbaa !3, !alias.scope !136, !noalias !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agx = icmp eq i64 %index.next, %n.vec
  br i1 %i.agx, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.agt, i64 -8
  %ind.escape2256 = getelementptr i8, ptr %i.agu, i64 -8
  %cmp.n = icmp eq i64 %i.agh, %n.vec
  br i1 %cmp.n, label %.loopexit2277, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.fy, %middle.block
  %.801330.ph = phi ptr [ %.761326, %vector.memcheck ], [ %.761326, %bb.fy ], [ %i.agt, %middle.block ]
  %.0914.ph = phi ptr [ %i.afh, %vector.memcheck ], [ %i.afh, %bb.fy ], [ %i.agu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.801330 = phi ptr [ %i.ahc, %scalar.ph ], [ %.801330.ph, %scalar.ph.preheader ] ; 4 uses
  %.0914 = phi ptr [ %i.ahd, %scalar.ph ], [ %.0914.ph, %scalar.ph.preheader ] ; 4 uses
  %i.agy = load i32, ptr %.0914, align 4, !tbaa !3
  store i32 %i.agy, ptr %.801330, align 4, !tbaa !3
  %i.agz = getelementptr inbounds nuw i8, ptr %.0914, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !3
  %i.ahb = getelementptr inbounds nuw i8, ptr %.801330, i64 4
  store i32 %i.aha, ptr %i.ahb, align 4, !tbaa !3
  %i.ahc = getelementptr inbounds nuw i8, ptr %.801330, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0914, i64 8 ; 3 uses
  %i.ahe = icmp ult ptr %i.ahd, %i.afy
  br i1 %i.ahe, label %scalar.ph, label %.loopexit2277, !llvm.loop !140

.loopexit2277:                                    ; preds = %scalar.ph, %middle.block
  %.801330.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.801330, %scalar.ph ]
  %.0914.lcssa = phi ptr [ %ind.escape2256, %middle.block ], [ %.0914, %scalar.ph ]
  %.lcssa2235 = phi ptr [ %i.agt, %middle.block ], [ %i.ahc, %scalar.ph ] ; 4 uses
  %.lcssa2234 = phi ptr [ %i.agu, %middle.block ], [ %i.ahd, %scalar.ph ] ; 2 uses
  %i.ahf = and i32 %.801134, 7                    ; 7 uses
  %i.ahg = icmp samesign ult i32 %i.ahf, 3
  br i1 %i.ahg, label %bb.fz, label %.thread1896.preheader

bb.fz:                                            ; preds = %.loopexit2277
  %.not1820 = icmp eq i32 %i.ahf, 0
  br i1 %.not1820, label %.preheader2305, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahh = load i8, ptr %.lcssa2234, align 1, !tbaa !7
  store i8 %i.ahh, ptr %.lcssa2235, align 1, !tbaa !7
  %i.ahi = icmp eq i32 %i.ahf, 2
  br i1 %i.ahi, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0914.lcssa, i64 9
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !7
  %i.ahl = getelementptr inbounds nuw i8, ptr %.801330.lcssa, i64 9
  store i8 %i.ahk, ptr %i.ahl, align 1, !tbaa !7
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.ahm = zext nneg i32 %i.ahf to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %.lcssa2235, i64 %i.ahm
  br label %.preheader2305

.thread1896:                                      ; preds = %.thread1896.preheader, %.thread1896
  %.841334 = phi ptr [ %i.ahv, %.thread1896 ], [ %.841334.ph, %.thread1896.preheader ] ; 5 uses
  %.851139 = phi i32 [ %i.ahx, %.thread1896 ], [ %.851139.ph, %.thread1896.preheader ]
  %.2916 = phi ptr [ %i.ahw, %.thread1896 ], [ %.2916.ph, %.thread1896.preheader ] ; 5 uses
  %i.aho = load i8, ptr %.2916, align 1, !tbaa !7
  store i8 %i.aho, ptr %.841334, align 1, !tbaa !7
  %i.ahp = getelementptr inbounds nuw i8, ptr %.2916, i64 1
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !7
  %i.ahr = getelementptr inbounds nuw i8, ptr %.841334, i64 1
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !7
  %i.ahs = getelementptr inbounds nuw i8, ptr %.2916, i64 2
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !7
  %i.ahu = getelementptr inbounds nuw i8, ptr %.841334, i64 2
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !7
  %i.ahv = getelementptr inbounds nuw i8, ptr %.841334, i64 3 ; 4 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.2916, i64 3 ; 2 uses
  %i.ahx = add i32 %.851139, -3                   ; 7 uses
  %i.ahy = icmp sgt i32 %i.ahx, 2
  br i1 %i.ahy, label %.thread1896, label %bb.gd, !llvm.loop !141

bb.gd:                                            ; preds = %.thread1896
  %i.ahz = icmp sgt i32 %i.ahx, 0
  br i1 %i.ahz, label %bb.ge, label %.preheader2305

bb.ge:                                            ; preds = %bb.gd
  %i.aia = load i8, ptr %i.ahw, align 1, !tbaa !7
  store i8 %i.aia, ptr %i.ahv, align 1, !tbaa !7
  %i.aib = icmp eq i32 %i.ahx, 2
  br i1 %i.aib, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aic = getelementptr inbounds nuw i8, ptr %.2916, i64 4
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !7
  %i.aie = getelementptr inbounds nuw i8, ptr %.841334, i64 4
  store i8 %i.aid, ptr %i.aie, align 1, !tbaa !7
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.aif = zext nneg i32 %i.ahx to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %i.aif
  br label %.preheader2305

bb.gh:                                            ; preds = %bb.bb, %.thread1890
  %.841634 = phi i32 [ %.291579, %bb.bb ], [ %.671617, %.thread1890 ] ; 3 uses
  %.871536 = phi i64 [ %.291478, %bb.bb ], [ %.691518, %.thread1890 ] ; 3 uses
  %.851435 = phi ptr [ %.281378, %bb.bb ], [ %.671417, %.thread1890 ] ; 3 uses
  %.861336 = phi ptr [ %.231273, %bb.bb ], [ %.621312, %.thread1890 ] ; 3 uses
  %.771236 = phi i64 [ %.231182, %bb.bb ], [ %.611220, %.thread1890 ] ; 3 uses
  %.861140 = phi i32 [ 0, %bb.bb ], [ 256, %.thread1890 ] ; 2 uses
  %.821031 = phi i32 [ %.28977, %bb.bb ], [ %.651014, %.thread1890 ] ; 3 uses
  %.87 = phi i32 [ %.29, %bb.bb ], [ %.69, %.thread1890 ] ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !91
  %i.aij = and i32 %i.aii, 1
  %.not1838 = icmp eq i32 %i.aij, 0
  br i1 %.not1838, label %bb.p, label %bb.gi, !llvm.loop !142

bb.gi:                                            ; preds = %bb.gh
  %i.aik = and i32 %6, 1
  %.not1839 = icmp eq i32 %i.aik, 0
  br i1 %.not1839, label %.sink.split2211, label %bb.gn

bb.gj:                                            ; preds = %bb.gk
  %i.ail = and i32 %6, 2
  %.not1769 = icmp eq i32 %i.ail, 0
  br i1 %.not1769, label %bb.gm, label %.sink.split2211

bb.gk:                                            ; preds = %bb.c
  %.not1768 = icmp eq i64 %i.c, 0
  br i1 %.not1768, label %bb.gj, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ain = load i8, ptr %1, align 1, !tbaa !7
  %i.aio = zext i8 %i.ain to i64
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gj, %bb.gl
  %.881438 = phi ptr [ %i.aim, %bb.gl ], [ %1, %bb.gj ]
  %.0886 = phi i64 [ %i.aio, %bb.gl ], [ 0, %bb.gj ]
  %i.aip = zext nneg i32 %i.r to i64
  %i.aiq = shl i64 %.0886, %i.aip
  %i.air = or i64 %i.aiq, %i.t
  %i.ais = add i32 %i.r, 8
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gi, %bb.gm
  %.881638 = phi i32 [ %i.z, %bb.gm ], [ %.841634, %bb.gi ]
  %.911540 = phi i64 [ %i.air, %bb.gm ], [ %.871536, %bb.gi ]
  %.891439 = phi ptr [ %.881438, %bb.gm ], [ %.851435, %bb.gi ]
  %.901340 = phi ptr [ %4, %bb.gm ], [ %.861336, %bb.gi ]
  %.811240 = phi i64 [ %i.ab, %bb.gm ], [ %.771236, %bb.gi ]
  %.861035 = phi i32 [ %i.v, %bb.gm ], [ %.821031, %bb.gi ]
  %.91 = phi i32 [ %i.ais, %bb.gm ], [ %.87, %bb.gi ] ; 2 uses
  %i.ait = and i32 %.91, 7
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = lshr i64 %.911540, %i.aiu
  %i.aiw = and i32 %.91, -8
  br label %bb.go

bb.go:                                            ; preds = %bb.hc, %bb.gn
  %.891639 = phi i32 [ %.881638, %bb.gn ], [ %.951645, %bb.hc ] ; 5 uses
  %.921541 = phi i64 [ %i.aiv, %bb.gn ], [ %.981547, %bb.hc ] ; 5 uses
  %.901440 = phi ptr [ %.891439, %bb.gn ], [ %.961446, %bb.hc ] ; 7 uses
  %.911341 = phi ptr [ %.901340, %bb.gn ], [ %.971347, %bb.hc ] ; 5 uses
  %.821241 = phi i64 [ %.811240, %bb.gn ], [ %.881247, %bb.hc ] ; 5 uses
  %.901144 = phi i32 [ 0, %bb.gn ], [ %i.ake, %bb.hc ] ; 6 uses
  %.871036 = phi i32 [ %.861035, %bb.gn ], [ %.931042, %bb.hc ] ; 5 uses
  %.92 = phi i32 [ %i.aiw, %bb.gn ], [ %.98, %bb.hc ] ; 5 uses
  %i.aix = icmp ult i32 %.901144, 4
  br i1 %i.aix, label %bb.gp, label %.sink.split2211

bb.gp:                                            ; preds = %bb.go
  %.not1840 = icmp eq i32 %.92, 0
  br i1 %.not1840, label %bb.gx, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aiy = icmp ult i32 %.92, 8
  br i1 %i.aiy, label %bb.gr, label %bb.gw

bb.gr:                                            ; preds = %bb.gq, %bb.gv
  %.901640 = phi i32 [ %.891639, %bb.gq ], [ %.921642, %bb.gv ] ; 2 uses
  %.931542 = phi i64 [ %.921541, %bb.gq ], [ %i.ajm, %bb.gv ] ; 2 uses
  %.911441 = phi ptr [ %.901440, %bb.gq ], [ %.931443, %bb.gv ] ; 4 uses
  %.921342 = phi ptr [ %.911341, %bb.gq ], [ %.941344, %bb.gv ] ; 2 uses
  %.831242 = phi i64 [ %.821241, %bb.gq ], [ %.851244, %bb.gv ] ; 2 uses
  %.911145 = phi i32 [ %.901144, %bb.gq ], [ %.931147, %bb.gv ] ; 2 uses
  %.881037 = phi i32 [ %.871036, %bb.gq ], [ %.901039, %bb.gv ] ; 2 uses
  %.93 = phi i32 [ %.92, %bb.gq ], [ %i.ajn, %bb.gv ] ; 3 uses
  %.not1843 = icmp ult ptr %.911441, %i.d
  br i1 %.not1843, label %.thread1899, label %bb.gs

bb.gs:                                            ; preds = %bb.gt, %bb.gr
  %.911641 = phi i32 [ %.901640, %bb.gr ], [ %i.z, %bb.gt ] ; 2 uses
  %.941543 = phi i64 [ %.931542, %bb.gr ], [ %i.t, %bb.gt ] ; 2 uses
  %.921442 = phi ptr [ %.911441, %bb.gr ], [ %1, %bb.gt ] ; 2 uses
  %.931343 = phi ptr [ %.921342, %bb.gr ], [ %4, %bb.gt ] ; 2 uses
  %.841243 = phi i64 [ %.831242, %bb.gr ], [ %i.ab, %bb.gt ] ; 2 uses
  %.921146 = phi i32 [ %.911145, %bb.gr ], [ %i.x, %bb.gt ] ; 2 uses
  %.891038 = phi i32 [ %.881037, %bb.gr ], [ %i.v, %bb.gt ] ; 2 uses
  %.94 = phi i32 [ %.93, %bb.gr ], [ %i.r, %bb.gt ] ; 2 uses
  %i.aiz = and i32 %6, 2
  %.not1844 = icmp eq i32 %i.aiz, 0
end_hunk_0
begin_hunk_1_@strcpy

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(0,1) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{!16, !4, i64 88}
!16 = !{!"mz_stream_s", !17, i64 0, !4, i64 8, !19, i64 16, !17, i64 24, !4, i64 32, !19, i64 40, !17, i64 48, !20, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !4, i64 88, !19, i64 96, !19, i64 104}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 _ZTS17mz_internal_state", !18, i64 0}
!21 = !{!16, !19, i64 96}
!22 = !{!16, !19, i64 104}
!23 = !{!16, !19, i64 16}
!24 = !{!16, !18, i64 64}
!25 = !{!16, !18, i64 72}
!26 = !{!16, !18, i64 80}
!27 = !{!16, !20, i64 56}
!28 = !{!29, !4, i64 16}
!29 = !{!"", !18, i64 0, !18, i64 8, !4, i64 16, !5, i64 20, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !18, i64 136, !18, i64 144, !30, i64 152, !30, i64 160, !4, i64 168, !17, i64 176, !19, i64 184, !19, i64 192, !5, i64 200, !5, i64 33226, !5, i64 34954, !5, i64 36682, !5, i64 37546, !5, i64 103082, !5, i64 168618, !5, i64 234154}
!30 = !{!"p1 long", !18, i64 0}
!31 = !{!29, !4, i64 28}
!32 = !{!29, !17, i64 48}
!33 = !{!29, !17, i64 56}
!34 = !{!29, !4, i64 80}
!35 = !{!29, !17, i64 64}
!36 = !{!29, !17, i64 72}
!37 = !{!29, !4, i64 132}
!38 = !{!29, !4, i64 108}
!39 = !{!29, !4, i64 104}
!40 = !{!29, !4, i64 100}
!41 = !{!29, !18, i64 0}
!42 = !{!29, !18, i64 8}
!43 = !{!16, !19, i64 40}
!44 = !{!16, !17, i64 24}
!45 = !{!16, !4, i64 32}
!46 = !{!16, !4, i64 8}
!47 = !{!16, !17, i64 0}
!48 = !{!19, !19, i64 0}
!49 = !{!29, !4, i64 32}
!50 = !{!29, !18, i64 136}
!51 = !{!29, !30, i64 152}
!52 = !{!29, !18, i64 144}
!53 = !{!29, !30, i64 160}
!54 = !{!29, !17, i64 176}
!55 = !{!29, !19, i64 184}
!56 = !{!29, !19, i64 192}
!57 = !{!29, !4, i64 168}
!58 = !{!29, !4, i64 128}
!59 = !{!29, !4, i64 116}
!60 = !{!29, !4, i64 120}
!61 = !{!29, !4, i64 112}
!62 = !{!29, !4, i64 40}
!63 = !{!29, !4, i64 44}
!64 = !{ptr @mz_deflateEnd}
!65 = !{ptr @mz_compress2, ptr @mz_deflateEnd}
!66 = !{!67, !4, i64 0}
!67 = !{!"", !68, i64 0, !4, i64 11000, !4, i64 11004, !4, i64 11008, !4, i64 11012, !4, i64 11016, !5, i64 11020, !4, i64 43788}
!68 = !{!"tinfl_decompressor_tag", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !5, i64 44, !69, i64 56, !19, i64 64, !5, i64 72, !5, i64 10536, !5, i64 10540}
!69 = !{!"long long", !5, i64 0}
!70 = !{!67, !4, i64 43788}
!71 = !{!67, !4, i64 11016}
!72 = !{ptr @mz_inflateInit2}
!73 = !{!67, !4, i64 11008}
!74 = !{!67, !4, i64 11012}
!75 = !{!67, !4, i64 28}
!76 = !{!67, !4, i64 11004}
!77 = !{!67, !4, i64 11000}
!78 = !{!68, !4, i64 4}
!79 = !{!68, !69, i64 56}
!80 = !{!68, !4, i64 32}
!81 = !{!68, !4, i64 36}
!82 = !{!68, !4, i64 40}
!83 = !{!68, !19, i64 64}
!84 = !{!68, !4, i64 0}
!85 = distinct !{!85, !11}
!86 = !{!68, !4, i64 12}
!87 = !{!68, !4, i64 8}
!88 = !{!68, !4, i64 28}
!89 = !{!68, !4, i64 16}
!90 = distinct !{!90, !11}
!91 = !{!68, !4, i64 20}
!92 = !{!68, !4, i64 24}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !9}
!108 = !{!109, !109, i64 0}
!109 = !{!"short", !5, i64 0}
!110 = distinct !{!110, !11, !111}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !11}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !11, !111, !139}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = distinct !{!140, !11, !111}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !9}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = !{ptr @mz_inflateEnd}
!150 = !{!151, !17, i64 8}
!151 = !{!"", !4, i64 0, !17, i64 8}
!152 = !{!29, !4, i64 36}
!153 = !{!29, !4, i64 84}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11}
!160 = !{!29, !4, i64 88}
!161 = !{!29, !4, i64 124}
!162 = !{!29, !4, i64 92}
!163 = !{!29, !4, i64 96}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11}
!167 = distinct !{!167, !11}
!168 = distinct !{!168, !11}
!169 = distinct !{!169, !9}
!170 = distinct !{!170, !11, !171}
!171 = !{!"llvm.loop.unswitch.partial.disable"}
!172 = distinct !{!172, !11}
!173 = distinct !{!173, !11, !171}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !11, !171}
!177 = distinct !{!177, !11}
!178 = distinct !{!178, !11}
!179 = distinct !{!179, !11}
!180 = distinct !{!180, !11, !171}
!181 = distinct !{!181, !9}
!182 = !{!183, !4, i64 24}
!183 = !{!"", !19, i64 0, !19, i64 8, !17, i64 16, !4, i64 24}
!184 = !{!183, !19, i64 0}
!185 = !{!183, !17, i64 16}
!186 = !{!183, !19, i64 8}
!187 = distinct !{!187, !11}
!188 = distinct !{!188, !11}
!189 = distinct !{!189, !11}
!190 = !{!191, !18, i64 72}
!191 = !{!"", !69, i64 0, !69, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !69, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !192, i64 104}
!192 = !{!"p1 _ZTS25mz_zip_internal_state_tag", !18, i64 0}
!193 = !{!191, !192, i64 104}
!194 = !{!191, !4, i64 20}
!195 = !{!191, !18, i64 40}
!196 = !{!191, !18, i64 48}
!197 = !{!191, !18, i64 56}
!198 = !{!191, !18, i64 64}
!199 = distinct !{null}
!200 = !{!201, !4, i64 24}
!201 = !{!"mz_zip_internal_state_tag", !202, i64 0, !202, i64 32, !202, i64 64, !4, i64 96, !4, i64 100, !4, i64 104, !203, i64 112, !69, i64 120, !18, i64 128, !19, i64 136, !19, i64 144}
!202 = !{!"", !18, i64 0, !19, i64 8, !19, i64 16, !4, i64 24}
!203 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!204 = !{!201, !4, i64 56}
!205 = !{!201, !4, i64 88}
!206 = !{!191, !69, i64 0}
!207 = !{!202, !18, i64 0}
!208 = !{ptr @mz_zip_reader_end}
!209 = !{!201, !203, i64 112}
!210 = !{!191, !4, i64 28}
!211 = !{!191, !18, i64 96}
!212 = distinct !{null}
!213 = distinct !{!213, !11}
!214 = !{!201, !4, i64 100}
!215 = !{!191, !4, i64 16}
!216 = !{!191, !69, i64 8}
!217 = !{!202, !19, i64 16}
!218 = !{!202, !4, i64 24}
!219 = !{ptr @mz_zip_array_ensure_capacity}
!220 = !{!202, !19, i64 8}
!221 = !{!201, !18, i64 0}
!222 = !{!201, !18, i64 32}
!223 = !{!201, !18, i64 64}
!224 = !{!201, !4, i64 104}
!225 = distinct !{!225, !11}
!226 = distinct !{!226, !11}
!227 = distinct !{null}
!228 = !{!201, !18, i64 128}
!229 = !{!201, !19, i64 136}
!230 = !{!231, !4, i64 0}
!231 = !{!"", !4, i64 0, !4, i64 4, !109, i64 8, !109, i64 10, !109, i64 12, !109, i64 14, !19, i64 16, !4, i64 24, !69, i64 32, !69, i64 40, !109, i64 48, !4, i64 52, !69, i64 56, !4, i64 64, !5, i64 68, !5, i64 328}
!232 = !{!231, !4, i64 4}
!233 = !{!231, !109, i64 8}
!234 = !{!231, !109, i64 10}
!235 = !{!231, !109, i64 12}
!236 = !{!231, !109, i64 14}
!237 = !{!238, !4, i64 32}
!238 = !{!"tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !19, i64 40, !17, i64 48}
!239 = !{!238, !4, i64 20}
!240 = !{!238, !4, i64 16}
!241 = !{!238, !4, i64 12}
!242 = !{!238, !4, i64 8}
!243 = !{!238, !4, i64 4}
!244 = !{!238, !4, i64 0}
!245 = !{!231, !19, i64 16}
!246 = !{!231, !4, i64 24}
!247 = !{!69, !69, i64 0}
!248 = !{!231, !109, i64 48}
!249 = !{!231, !4, i64 52}
!250 = !{!231, !69, i64 56}
!251 = !{!231, !4, i64 64}
!252 = !{!201, !19, i64 72}
!253 = distinct !{!253, !11}
!254 = distinct !{!254, !11}
!255 = distinct !{!255, !11}
!256 = distinct !{!256, !11}
!257 = distinct !{!257, !11}
!258 = !{!231, !69, i64 32}
!259 = !{ptr @mz_zip_reader_extract_to_heap}
!260 = distinct !{!260, !11}
!261 = distinct !{!261, !11}
!262 = !{!231, !69, i64 40}
!263 = !{!264, !19, i64 0}
!264 = !{!"utimbuf", !19, i64 0, !19, i64 8}
!265 = !{!264, !19, i64 8}
!266 = !{!191, !18, i64 80}
!267 = !{!191, !69, i64 32}
!268 = !{ptr @mz_zip_writer_init}
!269 = !{!201, !19, i64 144}
!270 = distinct !{!270, !11}
!271 = distinct !{!271, !11}
!272 = distinct !{!272, !11}
!273 = distinct !{null}
!274 = distinct !{!274, !11}
!275 = !{!276, !18, i64 0}
!276 = !{!"", !18, i64 0, !69, i64 8, !69, i64 16}
!277 = !{!276, !69, i64 8}
!278 = !{!276, !69, i64 16}
!279 = !{!201, !19, i64 8}
!280 = distinct !{!280, !11}
!281 = !{!282, !19, i64 88}
!282 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !283, i64 72, !283, i64 88, !283, i64 104, !5, i64 120}
!283 = !{!"timespec", !19, i64 0, !19, i64 8}
!284 = distinct !{!284, !11}
!285 = distinct !{!285, !11}
!286 = !{!18, !18, i64 0}
!287 = !{ptr @mz_zip_writer_finalize_archive}
!288 = !{ptr @mz_zip_writer_end}
!289 = !{!17, !17, i64 0}
!290 = !{!291, !4, i64 112}
!291 = !{!"zip_t", !191, i64 0, !4, i64 112, !292, i64 120}
!292 = !{!"zip_entry_t", !4, i64 0, !17, i64 8, !69, i64 16, !69, i64 24, !4, i64 32, !69, i64 40, !5, i64 48, !69, i64 80, !109, i64 88, !276, i64 96, !29, i64 120, !4, i64 319472, !19, i64 319480}
!293 = !{!291, !192, i64 104}
!294 = !{!291, !17, i64 128}
!295 = distinct !{!295, !11}
!296 = !{!291, !4, i64 120}
!297 = !{!291, !4, i64 152}
!298 = !{!291, !69, i64 160}
!299 = !{!291, !69, i64 200}
!300 = !{!291, !109, i64 208}
!301 = !{!291, !4, i64 319592}
!302 = !{!291, !19, i64 319600}
!303 = !{!291, !4, i64 16}
!304 = !{!291, !69, i64 0}
!305 = !{!291, !18, i64 216}
!306 = !{!291, !69, i64 224}
!307 = !{!291, !69, i64 232}
!308 = !{!291, !69, i64 144}
!309 = !{!291, !69, i64 136}
!310 = !{!282, !4, i64 24}
!311 = distinct !{!311, !11}
!312 = !{!291, !4, i64 20}
!313 = distinct !{!313, !11}
!314 = !{!315, !4, i64 4}
!315 = !{!"zip_entry_mark_t", !4, i64 0, !4, i64 4, !69, i64 8, !69, i64 16}
!316 = !{!315, !69, i64 8}
!317 = !{!315, !4, i64 0}
!318 = !{!315, !69, i64 16}
!319 = distinct !{!319, !11}
!320 = distinct !{!320, !11}
!321 = distinct !{!321, !11, !111, !139}
!322 = distinct !{!322, !11}
!323 = distinct !{!323, !11}
!324 = distinct !{!324, !11}
!325 = distinct !{!325, !11, !139, !111}
!326 = distinct !{!326, !11}
!327 = distinct !{!327, !9}
!328 = distinct !{!328, !11}
!329 = distinct !{!329, !11}
!330 = distinct !{!330, !11}
!331 = distinct !{!331, !11}
!332 = distinct !{!332, !11}
!333 = distinct !{!333, !11}
!334 = distinct !{!334, !11}
!335 = distinct !{!335, !11, !336}
!336 = !{!"llvm.loop.peeled.count", i32 1}
!337 = distinct !{!337, !11}
!338 = distinct !{!338, !11}
!339 = distinct !{!339, !11}
!340 = distinct !{!340, !11}
!341 = distinct !{!341, !11}
!342 = distinct !{!342, !9}
!343 = distinct !{!343, !11}
!344 = distinct !{!344, !9}
!345 = distinct !{!345, !11}
!346 = distinct !{!346, !11}
!347 = distinct !{!347, !11}
!348 = distinct !{!348, !11}
!349 = distinct !{!349, !11}
!350 = distinct !{!350, !11}
!351 = distinct !{!351, !11}
!352 = distinct !{!352, !11, !171}
!353 = distinct !{!353, !11}
!354 = distinct !{!354, !9}
!355 = distinct !{!355, !11}
!356 = distinct !{!356, !11, !171}
!357 = distinct !{!357, !9}
!358 = distinct !{!358, !11}
!359 = distinct !{!359, !11, !171}
!360 = distinct !{!360, !11}
!361 = distinct !{!361, !11}
!362 = distinct !{!362, !9}
!363 = distinct !{!363, !11}
!364 = distinct !{!364, !11, !171}
!365 = distinct !{!365, !11}
!366 = distinct !{!366, !9}
!367 = distinct !{!367, !11}
!368 = distinct !{!368, !11, !171}
!369 = !{!370, !109, i64 0}
!370 = !{!"", !109, i64 0, !109, i64 2}
!371 = !{!370, !109, i64 2}
!372 = distinct !{!372, !11}
!373 = distinct !{!373, !11}
!374 = distinct !{!374, !11}
!375 = distinct !{!375, !11}
!376 = distinct !{!376, !11}
!377 = distinct !{!377, !11}
!378 = distinct !{!378, !9}
!379 = distinct !{!379, !11}
!380 = distinct !{!380, !11}
!381 = distinct !{!381, !9}
!382 = distinct !{!382, !11}
!383 = distinct !{!383, !11}
!384 = distinct !{!384, !11}
!385 = distinct !{!385, !9}
!386 = distinct !{!386, !11, !139, !111}
!387 = distinct !{!387, !9}
!388 = distinct !{!388, !11}
!389 = distinct !{!389, !11}
!390 = distinct !{!390, !11}
!391 = distinct !{!391, !9}
!392 = distinct !{!392, !11}
!393 = distinct !{!393, !11}
!394 = distinct !{!394, !9}
!395 = distinct !{!395, !9}
!396 = distinct !{!396, !11}
!397 = distinct !{!397, !9}
!398 = distinct !{!398, !11}
!399 = distinct !{!399, !11}
!400 = distinct !{!400, !11}
!401 = distinct !{!401, !11}
!402 = distinct !{!402, !11}
!403 = distinct !{!403, !11, !111, !139}
!404 = distinct !{!404, !11, !139, !111}
!405 = distinct !{!405, !11, !111, !139}
!406 = distinct !{!406, !11, !139, !111}
!407 = distinct !{!407, !11}
!408 = distinct !{!408, !11}
!409 = distinct !{!409, !11}
!410 = distinct !{!410, !11, !111, !139}
!411 = distinct !{!411, !11, !111}
!412 = !{!201, !19, i64 40}
end_hunk_1
