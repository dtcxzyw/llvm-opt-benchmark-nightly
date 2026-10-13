Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/five-point?download=true
inline.NumInlined: 1153
inline.NumDeleted: 229
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK2cv19EMEstimatorCallback9runKernelERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.pn272.pn = phi { ptr, i32 } [ %.pn272, %bb.hd ], [ %i.ln, %bb.ha ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %172) #18
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.gz
  %.pn272.pn.pn = phi { ptr, i32 } [ %.pn272.pn, %bb.he ], [ %i.lm, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #18
  br label %bb.hz

bb.hg:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit408
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hh:                                            ; preds = %bb.fm
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hi:                                            ; preds = %bb.fn
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %bb.fo
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %176) #18
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn276 = phi { ptr, i32 } [ %i.lt, %bb.hj ], [ %i.ls, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %174) #18
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hh
  %.pn276.pn = phi { ptr, i32 } [ %.pn276, %bb.hk ], [ %i.lr, %bb.hh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %175) #18
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hg
  %.pn276.pn.pn = phi { ptr, i32 } [ %.pn276.pn, %bb.hl ], [ %i.lq, %bb.hg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #18
  br label %bb.hz

bb.hn:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit414
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.ho:                                            ; preds = %bb.fp
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

bb.hp:                                            ; preds = %bb.fq
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hq:                                            ; preds = %bb.fr
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %179) #18
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.pn280 = phi { ptr, i32 } [ %i.lx, %bb.hq ], [ %i.lw, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %179) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %177) #18
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.ho
  %.pn280.pn = phi { ptr, i32 } [ %.pn280, %bb.hr ], [ %i.lv, %bb.ho ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %178) #18
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hn
  %.pn280.pn.pn = phi { ptr, i32 } [ %.pn280.pn, %bb.hs ], [ %i.lu, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %178) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #18
  br label %bb.hz

bb.hu:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit420
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.hv:                                            ; preds = %bb.fs
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.hw:                                            ; preds = %bb.ft
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %181) #18
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %.pn284 = phi { ptr, i32 } [ %i.ma, %bb.hw ], [ %i.lz, %bb.hv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %180) #18
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hu
  %.pn284.pn = phi { ptr, i32 } [ %.pn284, %bb.hx ], [ %i.ly, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #18
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.ht, %bb.hm, %bb.hf, %bb.gy, %bb.gr, %bb.gk
  %.pn284.pn.pn = phi { ptr, i32 } [ %.pn284.pn, %bb.hy ], [ %.pn280.pn.pn, %bb.ht ], [ %.pn276.pn.pn, %bb.hm ], [ %.pn272.pn.pn, %bb.hf ], [ %.pn268.pn.pn, %bb.gy ], [ %.pn264.pn.pn, %bb.gr ], [ %.pn260.pn.pn, %bb.gk ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %160) #18
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.gd
  %.pn284.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn, %bb.hz ], [ %i.kz, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %158) #18
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.gc
  %.pn284.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn, %bb.ia ], [ %i.ky, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %155) #18
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.gb
  %.pn284.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn, %bb.ib ], [ %.pn257.pn, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %152) #18
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.fx
  %.pn284.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn.pn.pn.pn, %bb.ic ], [ %.pn254.pn, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #18
  br label %bb.ly

bb.ie:                                            ; preds = %bb.bb
  %i.mb = load double, ptr %i.a, align 16, !tbaa !33 ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.md = load double, ptr %i.mc, align 8, !tbaa !33 ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.mf = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.mk = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.mz = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.nb = load double, ptr %i.na, align 8, !tbaa !33 ; 9 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ni = load double, ptr %i.nh, align 16, !tbaa !33 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.no = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.nq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.nr = load <2 x double>, ptr %i.mw, align 16, !tbaa !33 ; 21 uses
  %i.ns = extractelement <2 x double> %i.nr, i64 0 ; 3 uses
  %i.nt = load double, ptr %i.ne, align 16, !tbaa !33 ; 7 uses
  %i.nu = load <2 x double>, ptr %i.ng, align 8, !tbaa !33 ; 19 uses
  %i.nv = load double, ptr %i.nm, align 16, !tbaa !33 ; 21 uses
  %i.nw = extractelement <2 x double> %i.nu, i64 0 ; 4 uses
  %i.nx = fmul double %i.nb, %i.ni                ; 5 uses
  %i.ny = insertelement <2 x double> %i.nr, double %i.nb, i64 0
  %i.nz = fneg double %i.ns
  %i.oa = load <2 x double>, ptr %i.mo, align 8, !tbaa !33 ; 17 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 0
  %i.oc = load <2 x double>, ptr %i.ms, align 16, !tbaa !33 ; 8 uses
  %i.od = load double, ptr %i.mx, align 8, !tbaa !33 ; 3 uses
  %i.oe = extractelement <2 x double> %i.oc, i64 0
  %i.of = load <2 x double>, ptr %i.mt, align 16, !tbaa !33 ; 25 uses
  %i.og = extractelement <2 x double> %i.of, i64 0 ; 4 uses
  %i.oh = fneg double %i.od                       ; 2 uses
  %i.oi = load <2 x double>, ptr %i.my, align 16, !tbaa !33 ; 7 uses
  %i.oj = load double, ptr %i.nk, align 8, !tbaa !33 ; 7 uses
  %i.ok = load <2 x double>, ptr %i.nj, align 16, !tbaa !33 ; 15 uses
  %i.ol = load double, ptr %i.nn, align 8, !tbaa !33 ; 13 uses
  %i.om = extractelement <2 x double> %i.ok, i64 0 ; 2 uses
  %i.on = fmul double %i.oe, %i.nb                ; 5 uses
  %i.oo = insertelement <2 x double> poison, double %i.ni, i64 0 ; 3 uses
  %i.op = shufflevector <2 x double> %i.oa, <2 x double> %i.oc, <2 x i32> <i32 1, i32 3>
  %204 = fneg double %i.og
  %i.oq = shufflevector <2 x double> %i.oa, <2 x double> %i.oi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.or = fmul double %i.nb, %i.om
  %i.os = fneg double %i.oj
  %i.ot = load <2 x double>, ptr %i.mu, align 16, !tbaa !33 ; 6 uses
  %i.ou = load double, ptr %i.nf, align 8, !tbaa !33 ; 5 uses
  %i.ov = extractelement <2 x double> %i.ot, i64 0
  %i.ow = shufflevector <2 x double> %i.oa, <2 x double> %i.ot, <2 x i32> <i32 0, i32 2>
  %i.ox = shufflevector <2 x double> %i.oc, <2 x double> %i.oi, <2 x i32> <i32 1, i32 2>
  %i.oy = fmul <2 x double> %i.ow, %i.ox          ; 9 uses
  %i.oz = fneg double %i.ol                       ; 3 uses
  %i.pa = shufflevector <2 x double> %i.oc, <2 x double> %i.oa, <2 x i32> <i32 0, i32 3>
  %i.pb = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.pc = insertelement <2 x double> %i.pb, double %i.oz, i64 1 ; 3 uses
  %i.pd = fmul <2 x double> %i.pa, %i.pc          ; 6 uses
  %i.pe = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pf = shufflevector <2 x double> %i.oc, <2 x double> %i.oa, <2 x i32> <i32 3, i32 1>
  %i.pg = shufflevector <2 x double> %i.pc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ph = fmul <2 x double> %i.pf, %i.pg
  %i.pi = insertelement <2 x double> %i.oq, double %i.mb, i64 0
  %i.pj = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.oh, i64 1
  %i.pl = fmul <2 x double> %i.pi, %i.pk          ; 8 uses
  %i.pm = shufflevector <2 x double> %i.oa, <2 x double> %i.oi, <2 x i32> <i32 0, i32 2>
  %i.pn = extractelement <2 x double> %i.pl, i64 1
  %i.po = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.nt, i64 1
  %i.pq = fmul <2 x double> %i.ny, %i.pp          ; 8 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 1
  %i.ps = load <2 x double>, ptr %i.nc, align 8, !tbaa !33 ; 18 uses
  %i.pt = load <2 x double>, ptr %i.mk, align 16, !tbaa !33 ; 33 uses
  %i.pu = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 8 uses
  %i.pv = extractelement <2 x double> %i.pt, i64 1
  %i.pw = extractelement <2 x double> %i.pt, i64 0
  %i.px = extractelement <2 x double> %i.ps, i64 0 ; 3 uses
  %i.py = load <2 x double>, ptr %i.nd, align 8, !tbaa !33 ; 28 uses
  %i.pz = load double, ptr %i.nl, align 16, !tbaa !33 ; 17 uses
  %i.qa = extractelement <2 x double> %i.py, i64 0 ; 2 uses
  %i.qb = fneg double %i.qa
  %i.qc = load <2 x double>, ptr %i.me, align 16, !tbaa !33 ; 22 uses
  %i.qd = load double, ptr %i.mr, align 8, !tbaa !33 ; 16 uses
  %i.qe = fneg double %i.qd
  %i.qf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.qg = shufflevector <2 x double> %i.qf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qh = fmul <2 x double> %i.qg, %i.oa          ; 8 uses
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qj = insertelement <2 x double> %i.oc, double %i.md, i64 1
  %i.qk = fmul <2 x double> %i.qj, %i.oa          ; 5 uses
  %i.ql = insertelement <2 x double> poison, double %i.mb, i64 0 ; 3 uses
  %i.qm = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qn = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qo = extractelement <2 x double> %i.qc, i64 0 ; 4 uses
  %205 = fneg double %i.qo
  %i.qp = load <2 x double>, ptr %i.mf, align 16, !tbaa !33 ; 7 uses
  %i.qq = load double, ptr %i.mq, align 8, !tbaa !33 ; 4 uses
  %i.qr = load <2 x double>, ptr %i.mh, align 8, !tbaa !33 ; 12 uses
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qt = insertelement <2 x double> %i.qs, double %i.md, i64 1
  %i.qu = fneg <2 x double> %i.qt                 ; 6 uses
  %i.qv = extractelement <2 x double> %i.qu, i64 1
  %i.qw = shufflevector <2 x double> %i.qr, <2 x double> %i.oc, <2 x i32> <i32 0, i32 2>
  %i.qx = fneg <2 x double> %i.qw                 ; 6 uses
  %i.qy = load <2 x double>, ptr %i.mi, align 16, !tbaa !33 ; 24 uses
  %i.qz = extractelement <2 x double> %i.qy, i64 0 ; 2 uses
  %i.ra = shufflevector <2 x double> %i.oa, <2 x double> %i.qp, <2 x i32> <i32 1, i32 2>
  %i.rb = fmul <2 x double> %i.ra, %i.qx          ; 8 uses
  %i.rc = fmul double %i.oj, %i.qv                ; 4 uses
  %i.rd = insertelement <2 x double> %i.pu, double %i.md, i64 0
  %i.re = extractelement <2 x double> %i.qu, i64 0 ; 2 uses
  %i.rf = fmul double %i.nb, %i.re                ; 4 uses
  %i.rg = shufflevector <2 x double> %i.oi, <2 x double> %i.oa, <2 x i32> <i32 0, i32 2>
  %i.rh = shufflevector <2 x double> %i.qu, <2 x double> %i.qx, <2 x i32> <i32 1, i32 2>
  %i.ri = fmul <2 x double> %i.rg, %i.rh          ; 8 uses
  %i.rj = shufflevector <2 x double> %i.oa, <2 x double> %i.qp, <2 x i32> <i32 0, i32 3>
  %i.rk = fmul <2 x double> %i.rj, %i.qu          ; 8 uses
  %shift = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.qu ; 4 uses
  %i.rl = load <2 x double>, ptr %i.mg, align 16, !tbaa !33 ; 7 uses
  %shift1690 = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1691 = fmul <2 x double> %shift1690, %i.oi ; 5 uses
  %i.rm = insertelement <2 x double> %i.qp, double %i.qq, i64 1
  %shift1693 = fmul <2 x double> %i.rm, %i.rl     ; 7 uses
  %i.rn = shufflevector <2 x double> %shift1693, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop1694 = fmul <2 x double> %shift1693, %i.qr
  %i.ro = extractelement <2 x double> %foldExtExtBinop1694, i64 0
  %i.rp = load <2 x double>, ptr %i.mp, align 8, !tbaa !33 ; 19 uses
  %i.rq = extractelement <2 x double> %i.rp, i64 0
  %i.rr = load double, ptr %i.mv, align 16, !tbaa !33 ; 18 uses
  %i.rs = shufflevector <2 x double> %i.rk, <2 x double> %i.qy, <2 x i32> <i32 1, i32 2>
  %i.rt = shufflevector <2 x double> %i.qy, <2 x double> %i.qc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ru = shufflevector <2 x double> %i.ri, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.rv = shufflevector <2 x double> %i.pt, <2 x double> %i.qc, <2 x i32> <i32 1, i32 2>
  %i.rw = shufflevector <2 x double> %i.pt, <2 x double> %i.qr, <2 x i32> <i32 0, i32 2>
  %i.rx = shufflevector <2 x double> %i.nr, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.ry = shufflevector <2 x double> %i.qr, <2 x double> %i.qy, <2 x i32> <i32 0, i32 3>
  %i.rz = shufflevector <2 x double> %i.qy, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2>
  %i.sa = shufflevector <2 x double> %i.qc, <2 x double> %i.qr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sb = insertelement <2 x double> poison, double %i.qd, i64 0 ; 4 uses
  %i.sc = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sd = shufflevector <2 x double> %i.of, <2 x double> %i.qy, <2 x i32> <i32 0, i32 3>
  %i.se = shufflevector <2 x double> %i.qc, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.sf = shufflevector <2 x double> %i.pt, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.sg = fmul double %i.mb, %i.od                ; 5 uses
  %i.sh = fmul double %i.mb, %i.re                ; 2 uses
  %i.si = insertelement <2 x double> poison, double %i.sh, i64 0 ; 2 uses
  %i.sj = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sk = insertelement <2 x double> %i.oi, double %i.qq, i64 1 ; 3 uses
  %i.sl = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.sm = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sn = fmul <2 x double> %i.sk, %i.sm          ; 9 uses
  %i.so = insertelement <2 x double> %i.sm, double %i.oj, i64 0
  %i.sp = shufflevector <2 x double> %i.qx, <2 x double> %i.qp, <2 x i32> <i32 1, i32 2>
  %i.sq = fmul <2 x double> %i.so, %i.sp          ; 9 uses
  %i.sr = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ss = fmul <2 x double> %i.sr, %i.sk          ; 9 uses
  %i.st = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.su = fmul <2 x double> %i.sk, %i.st          ; 9 uses
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> %i.qh, <2 x i32> <i32 1, i32 2>
  %i.sw = shufflevector <2 x double> %i.qh, <2 x double> %i.ss, <2 x i32> <i32 1, i32 3>
  %i.sx = fneg double %i.ni                       ; 4 uses
  %i.sy = load <2 x double>, ptr %i.mm, align 16, !tbaa !33 ; 25 uses
  %i.sz = insertelement <2 x double> poison, double %i.qq, i64 0
  %i.ta = insertelement <2 x double> %i.sz, double %i.nt, i64 1
  %i.tb = insertelement <2 x double> %i.pu, double %i.sx, i64 0
  %i.tc = fmul <2 x double> %i.ta, %i.tb          ; 9 uses
  %i.td = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.te = insertelement <2 x double> %i.td, double %i.qq, i64 0 ; 2 uses
  %i.tf = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.tg = insertelement <2 x double> %i.tf, double %i.ou, i64 0
  %i.th = fmul <2 x double> %i.te, %i.tg          ; 9 uses
  %i.ti = shufflevector <2 x double> %i.ot, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.tj = fmul <2 x double> %i.te, %i.ti          ; 9 uses
  %i.tk = extractelement <2 x double> %i.sy, i64 1
  %i.tl = shufflevector <2 x double> %i.qr, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.tm = extractelement <2 x double> %i.tc, i64 1
  %i.tn = load <2 x double>, ptr %i.mj, align 8, !tbaa !33 ; 5 uses
  %i.to = load <2 x double>, ptr %i.mn, align 16, !tbaa !33 ; 12 uses
  %i.tp = extractelement <2 x double> %i.to, i64 0 ; 3 uses
  %i.tq = fneg double %i.ov                       ; 4 uses
  %i.tr = fmul double %i.tp, %i.tq
  %i.ts = fmul double %i.tp, %i.ou                ; 4 uses
  %i.tt = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tu = shufflevector <2 x double> %i.tn, <2 x double> %i.to, <2 x i32> <i32 0, i32 3>
  %i.tv = fmul <2 x double> %i.tt, %i.tu          ; 9 uses
  %foldExtExtBinop1696 = fmul <2 x double> %i.to, %i.ps ; 5 uses
  %i.tw = extractelement <2 x double> %foldExtExtBinop1696, i64 0
  %i.tx = fmul double %i.ts, %i.qe
  %i.ty = shufflevector <2 x double> %i.tn, <2 x double> %i.qp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tz = insertelement <2 x double> %i.qu, double %i.tq, i64 0
  %i.ua = fmul <2 x double> %i.ty, %i.tz          ; 9 uses
  %i.ub = shufflevector <2 x double> %i.ql, <2 x double> %i.tn, <2 x i32> <i32 0, i32 2>
  %i.uc = fmul <2 x double> %i.ub, %i.rd          ; 9 uses
  %i.ud = extractelement <2 x double> %i.uc, i64 0
  %i.ue = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.uf = insertelement <2 x double> %i.ue, double %i.ou, i64 1
  %i.ug = fneg <2 x double> %i.rl                 ; 8 uses
  %i.uh = shufflevector <2 x double> %i.pt, <2 x double> %i.ug, <2 x i32> <i32 1, i32 2>
  %206 = fmul <2 x double> %i.to, %i.uh           ; 9 uses
  %foldExtExtBinop1698 = fmul <2 x double> %i.qy, %206
  %i.ui = shufflevector <2 x double> %i.ug, <2 x double> %i.qp, <2 x i32> <i32 0, i32 2>
  %i.uj = fmul <2 x double> %i.ui, %i.uf          ; 9 uses
  %i.uk = fmul <2 x double> %i.to, %i.ug          ; 8 uses
  %i.ul = insertelement <2 x double> %i.ug, double %i.sx, i64 1
  %i.um = fmul <2 x double> %i.ty, %i.ul          ; 9 uses
  %i.un = extractelement <2 x double> %i.um, i64 0
  %i.uo = extractelement <2 x double> %i.ua, i64 1
  %i.up = shufflevector <2 x double> %i.rp, <2 x double> %i.tv, <2 x i32> <i32 0, i32 2>
  %i.uq = shufflevector <2 x double> %i.qk, <2 x double> %i.uk, <2 x i32> <i32 0, i32 2>
  %i.ur = shufflevector <2 x double> %i.qh, <2 x double> %i.um, <2 x i32> <i32 0, i32 2>
  %207 = fmul double %i.ts, %205
  %i.us = fneg <2 x double> %i.to
  %i.ut = shufflevector <2 x double> %i.ql, <2 x double> %i.us, <2 x i32> <i32 0, i32 2>
  %i.uu = shufflevector <2 x double> %i.qx, <2 x double> %i.ot, <2 x i32> <i32 0, i32 2>
  %i.uv = fmul <2 x double> %i.ut, %i.uu          ; 5 uses
  %i.uw = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ux = extractelement <2 x double> %i.uv, i64 1 ; 2 uses
  %i.uy = call double @llvm.fmuladd.f64(double %i.ux, double %i.og, double %i.tx)
  %i.uz = call double @llvm.fmuladd.f64(double %i.ud, double %i.qo, double %i.ro)
  %i.va = call double @llvm.fmuladd.f64(double %i.uo, double %i.qz, double %i.uz)
  %i.vb = call double @llvm.fmuladd.f64(double %i.un, double %i.qo, double %i.va)
  %208 = insertelement <2 x double> %i.pt, double %i.qd, i64 1
  %i.vc = insertelement <2 x double> poison, double %i.vb, i64 0
  %i.vd = insertelement <2 x double> %i.vc, double %207, i64 1
  %209 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> %208, <2 x double> %i.vd)
  %i.ve = shufflevector <2 x double> %i.uc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vf = insertelement <2 x double> %i.ve, double %i.rf, i64 1
  %i.vg = shufflevector <2 x double> %i.qy, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2>
  %210 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vf, <2 x double> %i.vg, <2 x double> %209) ; 2 uses
  %211 = extractelement <2 x double> %210, i64 0
  store double %211, ptr %i.ml, align 16, !tbaa !33
  %i.vh = shufflevector <2 x double> %i.ss, <2 x double> %i.ua, <2 x i32> <i32 0, i32 3>
  %i.vi = insertelement <2 x double> poison, double %i.rr, i64 0 ; 7 uses
  %i.vj = shufflevector <2 x double> %i.vi, <2 x double> %foldExtExtBinop1696, <2 x i32> <i32 0, i32 2>
  %i.vk = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vl = shufflevector <2 x double> %i.pt, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.vm = shufflevector <2 x double> %i.qc, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.vn = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.vo = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.vp = shufflevector <2 x double> %i.py, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vq = shufflevector <2 x double> %i.of, <2 x double> %shift1693, <2 x i32> <i32 0, i32 2>
  %i.vr = shufflevector <2 x double> %i.rp, <2 x double> %i.ok, <2 x i32> <i32 0, i32 2>
  %i.vs = shufflevector <2 x double> %i.th, <2 x double> %i.tv, <2 x i32> <i32 3, i32 1>
  %i.vt = shufflevector <2 x double> %i.qy, <2 x double> %i.sy, <2 x i32> <i32 0, i32 3>
  %i.vu = shufflevector <2 x double> %i.qc, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2>
  %i.vv = insertelement <2 x double> %i.sb, double %i.nv, i64 1
  %i.vw = shufflevector <2 x double> %i.qc, <2 x double> %i.nu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.vx = shufflevector <2 x double> %i.uc, <2 x double> %206, <2 x i32> <i32 1, i32 2>
  %i.vy = insertelement <2 x double> %i.nu, double %i.rr, i64 1
  %i.vz = insertelement <2 x double> %i.vn, double %i.rr, i64 0
  %i.wa = shufflevector <2 x double> %i.rp, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.wb = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wc = insertelement <2 x double> %i.wb, double %i.qd, i64 0
  %i.wd = insertelement <2 x double> %i.nu, double %i.qd, i64 1 ; 2 uses
  %i.we = shufflevector <2 x double> %i.sq, <2 x double> %i.qc, <2 x i32> <i32 1, i32 2>
  %i.wf = insertelement <2 x double> %i.vi, double %i.tr, i64 1
  %i.wg = shufflevector <2 x double> %i.ss, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wh = shufflevector <2 x double> %i.ss, <2 x double> %i.um, <2 x i32> <i32 1, i32 3>
  %i.wi = shufflevector <2 x double> %i.ok, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.wj = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wk = shufflevector <2 x double> %i.sy, <2 x double> %i.ok, <2 x i32> <i32 1, i32 2>
  %i.wl = shufflevector <2 x double> %i.rk, <2 x double> %i.uj, <2 x i32> <i32 1, i32 3>
  %i.wm = shufflevector <2 x double> %i.nu, <2 x double> %i.qr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.wn = shufflevector <2 x double> %i.su, <2 x double> %i.nu, <2 x i32> <i32 1, i32 2>
  %i.wo = insertelement <2 x double> %i.ua, double %i.rr, i64 0
  %i.wp = shufflevector <2 x double> %i.sn, <2 x double> %206, <2 x i32> <i32 1, i32 3>
  %i.wq = insertelement <2 x double> %i.rp, double %i.qd, i64 1
  %i.wr = insertelement <2 x double> poison, double %i.rc, i64 0 ; 2 uses
  %i.ws = insertelement <2 x double> %i.wr, double %i.rr, i64 1 ; 2 uses
  %i.wt = shufflevector <2 x double> %i.rp, <2 x double> %i.rb, <2 x i32> <i32 0, i32 3>
  %i.wu = shufflevector <2 x double> %i.qy, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2>
  %i.wv = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ww = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wx = shufflevector <2 x double> %foldExtExtBinop1691, <2 x double> %shift1693, <2 x i32> <i32 0, i32 3>
  %i.wy = shufflevector <2 x double> %i.sy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wz = shufflevector <2 x double> %i.oy, <2 x double> %i.tj, <2 x i32> <i32 1, i32 2>
  %i.xa = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xb = shufflevector <2 x double> %i.ri, <2 x double> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.xc = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xd = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xe = insertelement <2 x double> poison, double %i.oj, i64 0 ; 2 uses
  %i.xf = insertelement <2 x double> %i.xe, double %i.mb, i64 1
  %i.xg = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.xh = shufflevector <2 x double> %i.sy, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.xi = shufflevector <2 x double> %i.qr, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.xj = shufflevector <2 x double> %i.pt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xk = shufflevector <2 x double> %i.pd, <2 x double> %i.ps, <2 x i32> <i32 0, i32 2>
  %i.xl = shufflevector <2 x double> %i.sb, <2 x double> %i.uv, <2 x i32> <i32 0, i32 2>
  %i.xm = insertelement <2 x double> %i.rk, double %i.rc, i64 1
  %i.xn = shufflevector <2 x double> %i.nr, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.xo = shufflevector <2 x double> %i.rb, <2 x double> %i.ss, <2 x i32> <i32 0, i32 2>
  %i.xp = shufflevector <2 x double> %i.nr, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2>
  %i.xq = insertelement <2 x double> %i.ru, double %i.sg, i64 0
  %i.xr = shufflevector <2 x double> %i.of, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2>
  %i.xs = shufflevector <2 x double> %i.si, <2 x double> %i.su, <2 x i32> <i32 0, i32 2>
  %i.xt = shufflevector <2 x double> %i.ps, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.xu = insertelement <2 x double> %i.qs, double %i.qd, i64 0
  %i.xv = shufflevector <2 x double> %i.nr, <2 x double> %i.qc, <2 x i32> <i32 0, i32 2>
  %i.xw = shufflevector <2 x double> %i.pl, <2 x double> %i.rb, <2 x i32> <i32 0, i32 2>
  %i.xx = shufflevector <2 x double> %i.uc, <2 x double> %i.qc, <2 x i32> <i32 0, i32 2>
  %i.xy = insertelement <2 x double> poison, double %i.pz, i64 0 ; 2 uses
  %i.xz = shufflevector <2 x double> %i.py, <2 x double> %i.qc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ya = shufflevector <2 x double> %i.pt, <2 x double> %i.of, <2 x i32> <i32 1, i32 2>
  %i.yb = insertelement <2 x double> %i.qh, double %i.sh, i64 1
  %i.yc = shufflevector <2 x double> %i.py, <2 x double> %i.nr, <2 x i32> <i32 0, i32 2>
  %i.yd = shufflevector <2 x double> %i.pt, <2 x double> %i.nr, <2 x i32> <i32 0, i32 2>
  %i.ye = shufflevector <2 x double> %i.ps, <2 x double> %i.qc, <2 x i32> <i32 0, i32 3>
  %i.yf = shufflevector <2 x double> %i.qc, <2 x double> %i.rk, <2 x i32> <i32 0, i32 2>
  %i.yg = shufflevector <2 x double> %i.oy, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2>
  %i.yh = shufflevector <2 x double> %i.qc, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  %i.yi = shufflevector <2 x double> %i.of, <2 x double> %i.qc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yj = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.qc, <2 x i32> <i32 0, i32 2>
  %i.yk = shufflevector <2 x double> %i.pt, <2 x double> %i.pd, <2 x i32> <i32 1, i32 2>
  %i.yl = extractelement <2 x double> %i.tv, i64 1
  %i.ym = fmul double %i.nt, %i.tq                ; 5 uses
  %i.yn = shufflevector <2 x double> %i.pt, <2 x double> %i.to, <2 x i32> <i32 1, i32 3>
  %i.yo = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 3 uses
  %i.yp = insertelement <2 x double> %i.yo, double %i.nt, i64 0
  %i.yq = fmul <2 x double> %i.yn, %i.yp          ; 9 uses
  %i.yr = extractelement <2 x double> %i.yq, i64 0
  %i.ys = shufflevector <2 x double> %i.nr, <2 x double> %i.to, <2 x i32> <i32 0, i32 2>
  %i.yt = insertelement <2 x double> %i.ug, double %i.nt, i64 0
  %i.yu = fmul <2 x double> %i.ys, %i.yt          ; 8 uses
  %i.yv = shufflevector <2 x double> %i.rb, <2 x double> %i.yu, <2 x i32> <i32 1, i32 3>
  %i.yw = fneg double %i.om                       ; 4 uses
  %i.yx = insertelement <2 x double> %i.qn, double %i.yw, i64 0
  %i.yy = fmul <2 x double> %i.qm, %i.yx          ; 8 uses
  %i.yz = insertelement <2 x double> %i.oa, double %i.yw, i64 0
  %i.za = fmul <2 x double> %i.op, %i.yz          ; 7 uses
  %i.zb = shufflevector <2 x double> %i.za, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zc = insertelement <2 x double> %i.ot, double %i.yw, i64 0
  %i.zd = fmul <2 x double> %i.pm, %i.zc          ; 8 uses
  %i.ze = extractelement <2 x double> %i.zd, i64 1
  %i.zf = shufflevector <2 x double> %i.yy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.zg = insertelement <2 x double> %i.yy, double %i.sg, i64 0
  %i.zh = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.zi = insertelement <2 x double> %i.zh, double %i.tq, i64 1
  %i.zj = shufflevector <2 x double> %i.qx, <2 x double> %i.to, <2 x i32> <i32 0, i32 3>
  %i.zk = fmul <2 x double> %i.zi, %i.zj          ; 8 uses
  %212 = fmul double %i.ts, %204
  %i.zl = insertelement <2 x double> %i.pu, double %i.od, i64 0
  %i.zm = insertelement <2 x double> %i.to, double %i.nb, i64 0
  %i.zn = fmul <2 x double> %i.zl, %i.zm          ; 7 uses
  %i.zo = shufflevector <2 x double> %i.tn, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.zp = insertelement <2 x double> %i.zo, double %i.nb, i64 0 ; 2 uses
  %i.zq = insertelement <2 x double> %i.ug, double %i.yw, i64 0
  %i.zr = fmul <2 x double> %i.zp, %i.zq          ; 7 uses
  %i.zs = shufflevector <2 x double> %i.ri, <2 x double> %i.zr, <2 x i32> <i32 1, i32 3>
  %i.zt = shufflevector <2 x double> %i.yy, <2 x double> %i.uc, <2 x i32> <i32 1, i32 2>
  %i.zu = extractelement <2 x double> %i.zk, i64 0
  %i.zv = shufflevector <2 x double> %206, <2 x double> %i.zk, <2 x i32> <i32 0, i32 2>
  %i.zw = shufflevector <2 x double> %i.nu, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.zx = insertelement <2 x double> %210, double %i.uy, i64 0
  %i.zy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zv, <2 x double> %i.zw, <2 x double> %i.zx) ; 2 uses
  %i.zz = insertelement <2 x double> %i.zo, double %i.md, i64 0
  %i.aaa = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 3 uses
  %i.aab = insertelement <2 x double> %i.aaa, double %i.nb, i64 0
  %i.aac = fmul <2 x double> %i.zz, %i.aab        ; 9 uses
  %i.aad = extractelement <2 x double> %i.aac, i64 0
  %i.aae = extractelement <2 x double> %i.zy, i64 1
  %i.aaf = extractelement <2 x double> %i.aac, i64 1
  %i.aag = fneg double %i.tk                      ; 4 uses
  %i.aah = insertelement <2 x double> %i.yo, double %i.aag, i64 0
  %i.aai = fmul <2 x double> %i.zp, %i.aah        ; 7 uses
  %i.aaj = extractelement <2 x double> %i.aai, i64 1
  %i.aak = shufflevector <2 x double> %i.zk, <2 x double> %i.uk, <2 x i32> <i32 0, i32 2>
  %i.aal = shufflevector <2 x double> %i.tc, <2 x double> %i.aac, <2 x i32> <i32 3, i32 1>
  %i.aam = shufflevector <2 x double> %i.zr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aan = insertelement <2 x double> %i.aam, double %i.ol, i64 1
  %i.aao = shufflevector <2 x double> %i.tj, <2 x double> %i.zn, <2 x i32> <i32 3, i32 1>
  %i.aap = fmul double %i.ob, %i.aag
  %i.aaq = insertelement <2 x double> %i.oo, double %i.aag, i64 1 ; 2 uses
  %i.aar = fmul <2 x double> %i.oa, %i.aaq        ; 7 uses
  %i.aas = shufflevector <2 x double> %i.aar, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aat = insertelement <2 x double> %i.aaq, double %i.sx, i64 1
  %i.aau = fmul <2 x double> %i.oq, %i.aat        ; 3 uses
  %i.aav = shufflevector <2 x double> %i.pc, <2 x double> %i.oo, <2 x i32> <i32 1, i32 2>
  %i.aaw = fmul <2 x double> %i.oa, %i.aav        ; 7 uses
  %i.aax = extractelement <2 x double> %i.aaw, i64 1
  %i.aay = insertelement <2 x double> %i.xd, double %i.aag, i64 1
  %i.aaz = fmul <2 x double> %i.aay, %i.xf        ; 8 uses
  %i.aba = shufflevector <2 x double> %i.aaz, <2 x double> %i.tj, <2 x i32> <i32 1, i32 3>
  %i.abb = shufflevector <2 x double> %i.aar, <2 x double> %i.yy, <2 x i32> <i32 1, i32 2>
  %i.abc = shufflevector <2 x double> %i.za, <2 x double> %foldExtExtBinop1691, <2 x i32> <i32 1, i32 2>
  %i.abd = shufflevector <2 x double> %i.aaz, <2 x double> %i.oy, <2 x i32> <i32 1, i32 2>
  %i.abe = insertelement <2 x double> %i.zf, double %i.sg, i64 1
  %i.abf = insertelement <2 x double> poison, double %i.aap, i64 0
  %i.abg = shufflevector <2 x double> %i.abf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abh = shufflevector <2 x double> %i.zd, <2 x double> %i.ri, <2 x i32> <i32 0, i32 3>
  %i.abi = shufflevector <2 x double> %i.ri, <2 x double> %i.qk, <2 x i32> <i32 1, i32 2>
  %i.abj = shufflevector <2 x double> %i.aar, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.abk = extractelement <2 x double> %i.aai, i64 0 ; 2 uses
  %i.abl = extractelement <2 x double> %i.zy, i64 0
  %i.abm = call double @llvm.fmuladd.f64(double %i.abk, double %i.pw, double %i.abl)
  %i.abn = call double @llvm.fmuladd.f64(double %i.zu, double %i.ns, double %i.abm)
  %i.abo = call double @llvm.fmuladd.f64(double %i.on, double %i.qd, double %i.abn)
  %i.abp = call double @llvm.fmuladd.f64(double %i.rf, double %i.pv, double %i.abo)
  %i.abq = shufflevector <2 x double> %i.uv, <2 x double> %i.aac, <2 x i32> <i32 1, i32 2>
  %i.abr = shufflevector <2 x double> %i.py, <2 x double> %i.of, <2 x i32> <i32 0, i32 2> ; 2 uses
  %213 = insertelement <2 x double> poison, double %212, i64 0
  %i.abs = insertelement <2 x double> %213, double %i.abp, i64 1
  %i.abt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abq, <2 x double> %i.abr, <2 x double> %i.abs)
  %i.abu = shufflevector <2 x double> %206, <2 x double> %i.qc, <2 x i32> <i32 0, i32 2>
  %i.abv = shufflevector <2 x double> %i.zn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.abw = insertelement <2 x double> %i.abv, double %i.nv, i64 0
  %i.abx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abu, <2 x double> %i.abw, <2 x double> %i.abt)
  %i.aby = shufflevector <2 x double> %i.py, <2 x double> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.abz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aac, <2 x double> %i.aby, <2 x double> %i.abx)
  %i.aca = insertelement <2 x double> %i.pu, double %i.rr, i64 1 ; 2 uses
  %i.acb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aai, <2 x double> %i.aca, <2 x double> %i.abz)
  %i.acc = insertelement <2 x double> %i.pt, double %i.pz, i64 1
  %i.acd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zr, <2 x double> %i.acc, <2 x double> %i.acb)
  %i.ace = insertelement <2 x double> %i.ps, double %i.qd, i64 1
  %i.acf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zk, <2 x double> %i.ace, <2 x double> %i.acd)
  %i.acg = shufflevector <2 x double> %i.aai, <2 x double> %i.yq, <2 x i32> <i32 1, i32 2>
  %i.ach = shufflevector <2 x double> %i.aac, <2 x double> %i.yu, <2 x i32> <i32 0, i32 3>
  %i.aci = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 3 uses
  %i.acj = insertelement <2 x double> %i.aci, double %i.qd, i64 0
  %i.ack = insertelement <2 x double> %i.aca, double %i.on, i64 0
  %i.acl = shufflevector <2 x double> %i.of, <2 x double> %i.tv, <2 x i32> <i32 0, i32 3>
  %i.acm = shufflevector <2 x double> %i.yq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.acn = insertelement <2 x double> %i.acm, double %i.rf, i64 0
  %i.aco = shufflevector <2 x double> %i.nr, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2>
  %i.acp = shufflevector <2 x double> %i.aac, <2 x double> %i.ua, <2 x i32> <i32 1, i32 2>
  %i.acq = insertelement <2 x double> %i.xg, double %i.nv, i64 0 ; 3 uses
  %i.acr = shufflevector <2 x double> %i.nu, <2 x double> %i.of, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.acs = shufflevector <2 x double> %i.zk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.act = insertelement <2 x double> %i.acs, double %i.nv, i64 1
  %i.acu = shufflevector <2 x double> %i.of, <2 x double> %i.tv, <2 x i32> <i32 0, i32 2>
  %i.acv = insertelement <2 x double> %i.sb, double %i.rr, i64 1
  %i.acw = shufflevector <2 x double> %i.tv, <2 x double> %foldExtExtBinop1696, <2 x i32> <i32 1, i32 2>
  %i.acx = shufflevector <2 x double> %i.nu, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.acy = shufflevector <2 x double> %i.zn, <2 x double> %i.uk, <2 x i32> <i32 1, i32 2>
  %i.acz = insertelement <2 x double> poison, double %i.nv, i64 0 ; 3 uses
  %i.ada = insertelement <2 x double> %i.acz, double %i.pz, i64 1 ; 2 uses
  %i.adb = shufflevector <2 x double> %i.rp, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.adc = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.add = insertelement <2 x double> %i.adc, double %i.ym, i64 1
  %i.ade = shufflevector <2 x double> %i.ua, <2 x double> %i.tc, <2 x i32> <i32 0, i32 3>
  %i.adf = insertelement <2 x double> %i.xy, double %i.rr, i64 1
  %i.adg = shufflevector <2 x double> %i.py, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.adh = shufflevector <2 x double> %i.nu, <2 x double> %i.um, <2 x i32> <i32 0, i32 3>
  %i.adi = shufflevector <2 x double> %foldExtExtBinop1696, <2 x double> %i.tj, <2 x i32> <i32 0, i32 3>
  %i.adj = insertelement <2 x double> %i.vi, double %i.ol, i64 1
  %i.adk = shufflevector <2 x double> %i.th, <2 x double> %i.yu, <2 x i32> <i32 3, i32 1>
  %i.adl = insertelement <2 x double> %i.wj, double %i.pz, i64 0 ; 2 uses
  %i.adm = insertelement <2 x double> %i.uj, double %i.ym, i64 0
  %i.adn = insertelement <2 x double> %i.sy, double %i.qd, i64 0
  %i.ado = insertelement <2 x double> %i.vo, double %i.rr, i64 0
  %i.adp = shufflevector <2 x double> %i.sq, <2 x double> %206, <2 x i32> <i32 1, i32 3>
  %i.adq = shufflevector <2 x double> %i.um, <2 x double> %i.uk, <2 x i32> <i32 1, i32 3>
  %i.adr = shufflevector <2 x double> %i.th, <2 x double> %i.aaz, <2 x i32> <i32 1, i32 2>
  %i.ads = insertelement <2 x double> %i.wv, double %i.ol, i64 0
  %i.adt = shufflevector <2 x double> %i.ok, <2 x double> %i.qr, <2 x i32> <i32 0, i32 2>
  %i.adu = insertelement <2 x double> %i.vi, double %i.nv, i64 1 ; 3 uses
  %i.adv = shufflevector <2 x double> %i.sq, <2 x double> %i.yq, <2 x i32> <i32 3, i32 1>
  %i.adw = shufflevector <2 x double> %i.rp, <2 x double> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.adx = shufflevector <2 x double> %206, <2 x double> %i.tc, <2 x i32> <i32 1, i32 2>
  %i.ady = insertelement <2 x double> %i.vn, double %i.pz, i64 0
  %i.adz = shufflevector <2 x double> %i.uk, <2 x double> %i.ss, <2 x i32> <i32 1, i32 3>
  %i.aea = insertelement <2 x double> %i.py, double %i.ol, i64 1
  %i.aeb = shufflevector <2 x double> %i.aaz, <2 x double> %shift1693, <2 x i32> <i32 0, i32 3>
  %i.aec = shufflevector <2 x double> %i.sy, <2 x double> %i.ok, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.aed = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.aee = shufflevector <2 x double> %i.tc, <2 x double> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.aef = shufflevector <2 x double> %shift1693, <2 x double> %i.su, <2 x i32> <i32 1, i32 3>
  %i.aeg = insertelement <2 x double> %i.aci, double %i.ol, i64 0 ; 3 uses
  %i.aeh = shufflevector <2 x double> %i.tj, <2 x double> %i.sn, <2 x i32> <i32 0, i32 3>
  %i.aei = insertelement <2 x double> %i.ok, double %i.rr, i64 1 ; 2 uses
  %i.aej = shufflevector <2 x double> %i.sy, <2 x double> %i.qy, <2 x i32> <i32 1, i32 2>
  %i.aek = shufflevector <2 x double> %i.su, <2 x double> %i.uj, <2 x i32> <i32 1, i32 2>
  %i.ael = insertelement <2 x double> %i.wb, double %i.nv, i64 0
  %i.aem = insertelement <2 x double> %i.rl, double %i.mb, i64 1
  %i.aen = insertelement <2 x double> %i.xe, double %i.ni, i64 1
  %i.aeo = fmul <2 x double> %i.aem, %i.aen       ; 8 uses
  %i.aep = shufflevector <2 x double> %i.aeo, <2 x double> %i.uc, <2 x i32> <i32 0, i32 2>
  %i.aeq = shufflevector <2 x double> %i.aeo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aer = insertelement <2 x double> %i.aeo, double %i.pz, i64 0
  %i.aes = insertelement <2 x double> %i.rp, double %i.rr, i64 1 ; 2 uses
  %i.aet = shufflevector <2 x double> %i.uj, <2 x double> %i.sq, <2 x i32> <i32 0, i32 2>
  %i.aeu = shufflevector <2 x double> %i.of, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.aev = insertelement <2 x double> %i.wg, double %i.sg, i64 0
  %i.aew = shufflevector <2 x double> %i.yy, <2 x double> %foldExtExtBinop1691, <2 x i32> <i32 0, i32 2>
  %i.aex = shufflevector <2 x double> %i.ps, <2 x double> %i.sy, <2 x i32> <i32 0, i32 3>
  %i.aey = shufflevector <2 x double> %i.aeo, <2 x double> %i.oy, <2 x i32> <i32 1, i32 3>
  %i.aez = shufflevector <2 x double> %i.py, <2 x double> %i.sy, <2 x i32> <i32 0, i32 2>
  %i.afa = insertelement <2 x double> %i.zd, double %i.rc, i64 0
  %i.afb = shufflevector <2 x double> %i.sq, <2 x double> %i.ri, <2 x i32> <i32 0, i32 2>
  %i.afc = insertelement <2 x double> %i.aci, double %i.rr, i64 0
  %i.afd = shufflevector <2 x double> %i.pl, <2 x double> %i.su, <2 x i32> <i32 1, i32 2>
  %i.afe = shufflevector <2 x double> %i.ss, <2 x double> %i.sn, <2 x i32> <i32 0, i32 2>
  %i.aff = insertelement <2 x double> %i.vn, double %i.ol, i64 0
  %i.afg = shufflevector <2 x double> %foldExtExtBinop1691, <2 x double> %i.aeo, <2 x i32> <i32 0, i32 2>
  %i.afh = shufflevector <2 x double> %i.ok, <2 x double> %i.sy, <2 x i32> <i32 0, i32 3>
  %i.afi = shufflevector <2 x double> %i.oy, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  %i.afj = shufflevector <2 x double> %i.sy, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.afk = shufflevector <2 x double> %i.zd, <2 x double> %i.rb, <2 x i32> <i32 1, i32 2>
  %i.afl = shufflevector <2 x double> %i.sy, <2 x double> %i.ps, <2 x i32> <i32 0, i32 2>
  %i.afm = shufflevector <2 x double> %i.ri, <2 x double> %i.zd, <2 x i32> <i32 0, i32 2>
  %i.afn = insertelement <2 x double> %i.pt, double %i.nv, i64 0 ; 2 uses
  %i.afo = shufflevector <2 x double> %i.su, <2 x double> %i.yy, <2 x i32> <i32 0, i32 3>
  %i.afp = insertelement <2 x double> %i.nu, double %i.pz, i64 1 ; 2 uses
  %i.afq = shufflevector <2 x double> %i.sn, <2 x double> %i.yy, <2 x i32> <i32 0, i32 2>
  %i.afr = insertelement <2 x double> %i.aaa, double %i.rr, i64 0
  %i.afs = shufflevector <2 x double> %i.aau, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aft = insertelement <2 x double> %i.afs, double %i.sg, i64 1
  %i.afu = shufflevector <2 x double> %i.qy, <2 x double> %i.py, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.afv = shufflevector <2 x double> %i.ok, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.afw = shufflevector <2 x double> %i.pd, <2 x double> %i.pl, <2 x i32> <i32 0, i32 2>
  %i.afx = shufflevector <2 x double> %i.py, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.afy = shufflevector <2 x double> %i.pl, <2 x double> %i.aaz, <2 x i32> <i32 0, i32 3>
  %i.afz = shufflevector <2 x double> %i.nr, <2 x double> %i.ps, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aga = shufflevector <2 x double> %i.qk, <2 x double> %i.oy, <2 x i32> <i32 0, i32 2>
  %i.agb = insertelement <2 x double> %i.wb, double %i.pz, i64 0
  %i.agc = shufflevector <2 x double> %i.zd, <2 x double> %i.rk, <2 x i32> <i32 0, i32 2>
  %i.agd = shufflevector <2 x double> %i.oy, <2 x double> %i.aar, <2 x i32> <i32 0, i32 2>
  %i.age = shufflevector <2 x double> %i.aar, <2 x double> %i.za, <2 x i32> <i32 0, i32 3>
  %i.agf = shufflevector <2 x double> %i.aaw, <2 x double> %i.za, <2 x i32> <i32 0, i32 2>
  %i.agg = shufflevector <2 x double> %i.qh, <2 x double> %i.aar, <2 x i32> <i32 1, i32 3>
  %i.agh = shufflevector <2 x double> %i.py, <2 x double> %i.pt, <2 x i32> <i32 1, i32 3>
  %i.agi = shufflevector <2 x double> %i.za, <2 x double> %i.aaw, <2 x i32> <i32 1, i32 3>
  %i.agj = shufflevector <2 x double> %i.of, <2 x double> %i.ps, <2 x i32> <i32 0, i32 3>
  %i.agk = shufflevector <2 x double> %i.za, <2 x double> %i.qh, <2 x i32> <i32 0, i32 3>
  %i.agl = shufflevector <2 x double> %i.pt, <2 x double> %i.py, <2 x i32> <i32 1, i32 2>
  %i.agm = shufflevector <2 x double> %i.aaw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.agn = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.aaw, <2 x i32> <i32 0, i32 2>
  %i.ago = shufflevector <2 x double> %i.ps, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2>
  %i.agp = shufflevector <2 x double> %i.aar, <2 x double> %i.qk, <2 x i32> <i32 1, i32 2>
  %i.agq = shufflevector <2 x double> %i.nr, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.agr = shufflevector <2 x double> %i.aaw, <2 x double> %i.qh, <2 x i32> <i32 1, i32 2>
  %i.ags = shufflevector <2 x double> %i.qc, <2 x double> %i.py, <2 x i32> <i32 1, i32 3>
  %i.agt = shufflevector <2 x double> %i.ps, <2 x double> %i.nr, <2 x i32> <i32 0, i32 2>
  %i.agu = shufflevector <2 x double> %i.pt, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.agv = fmul double %i.ts, %i.qb
  %i.agw = extractelement <2 x double> %i.zn, i64 0 ; 2 uses
  %i.agx = extractelement <2 x double> %i.zr, i64 0
  %i.agy = extractelement <2 x double> %i.yu, i64 0 ; 2 uses
  %i.agz = extractelement <2 x double> %i.yq, i64 1
  %214 = fmul double %i.or, %i.nz
  %i.aha = shufflevector <2 x double> %i.oi, <2 x double> %i.ug, <2 x i32> <i32 0, i32 3>
  %i.ahb = insertelement <2 x double> poison, double %i.sx, i64 0
  %i.ahc = insertelement <2 x double> %i.ahb, double %i.nt, i64 1 ; 2 uses
  %i.ahd = fmul <2 x double> %i.aha, %i.ahc       ; 5 uses
  %i.ahe = fneg double %i.ou                      ; 4 uses
  %i.ahf = shufflevector <2 x double> %i.ahc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ahg = shufflevector <2 x double> %i.ug, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ahh = insertelement <2 x double> %i.ahg, double %i.ahe, i64 1
  %i.ahi = fmul <2 x double> %i.ahf, %i.ahh       ; 8 uses
  %i.ahj = shufflevector <2 x double> %i.ahi, <2 x double> %i.uk, <2 x i32> <i32 0, i32 3>
  %i.ahk = insertelement <2 x double> %i.nr, double %i.ahe, i64 1
  %i.ahl = fmul <2 x double> %i.to, %i.ahk        ; 8 uses
  %i.ahm = shufflevector <2 x double> %i.ahl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %215 = extractelement <2 x double> %i.ahl, i64 0 ; 2 uses
  %216 = fmul double %i.qz, %215
  %i.ahn = insertelement <2 x double> %i.pu, double %i.ahe, i64 0
  %i.aho = fmul <2 x double> %i.ahn, %i.tn        ; 9 uses
  %shift1700 = shufflevector <2 x double> %i.aho, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1701 = fmul <2 x double> %i.qy, %shift1700
  %i.ahp = extractelement <2 x double> %i.aho, i64 0
  %i.ahq = shufflevector <2 x double> %i.aho, <2 x double> %i.qy, <2 x i32> <i32 1, i32 2>
  %i.ahr = call double @llvm.fmuladd.f64(double %i.aad, double %i.qd, double %i.aae)
  %i.ahs = call double @llvm.fmuladd.f64(double %i.on, double %i.qo, double %i.ahr)
  %i.aht = call double @llvm.fmuladd.f64(double %i.aaf, double %i.rr, double %i.ahs)
  %i.ahu = shufflevector <2 x double> %i.aho, <2 x double> %i.aai, <2 x i32> <i32 1, i32 3>
  %i.ahv = insertelement <2 x double> %foldExtExtBinop1698, double %i.aht, i64 1
  %i.ahw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahu, <2 x double> %i.vn, <2 x double> %i.ahv)
  %i.ahx = shufflevector <2 x double> %i.tv, <2 x double> %i.um, <2 x i32> <i32 0, i32 2>
  %i.ahy = insertelement <2 x double> %i.rp, double %i.pz, i64 1
  %i.ahz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahx, <2 x double> %i.ahy, <2 x double> %i.ahw)
  %i.aia = shufflevector <2 x double> %i.um, <2 x double> %i.zr, <2 x i32> <i32 0, i32 3>
  %i.aib = shufflevector <2 x double> %i.of, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.aic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aia, <2 x double> %i.aib, <2 x double> %i.ahz)
  %i.aid = shufflevector <2 x double> %i.zr, <2 x double> %i.zk, <2 x i32> <i32 1, i32 3>
  %i.aie = insertelement <2 x double> %i.se, double %i.qd, i64 0
  %i.aif = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aid, <2 x double> %i.aie, <2 x double> %i.aic)
  %i.aig = shufflevector <2 x double> %i.zn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aih = insertelement <2 x double> %i.qy, double %i.rr, i64 1
  %i.aii = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aig, <2 x double> %i.aih, <2 x double> %i.aif)
  %i.aij = shufflevector <2 x double> %i.qc, <2 x double> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.aik = shufflevector <2 x double> %i.uc, <2 x double> %i.uj, <2 x i32> <i32 1, i32 2>
  %i.ail = insertelement <2 x double> %i.vi, double %i.qd, i64 1 ; 2 uses
  %i.aim = shufflevector <2 x double> %i.aac, <2 x double> %i.ua, <2 x i32> <i32 1, i32 2>
  %i.ain = shufflevector <2 x double> %i.qy, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.aio = shufflevector <2 x double> %i.uk, <2 x double> %i.aho, <2 x i32> <i32 0, i32 2>
  %i.aip = shufflevector <2 x double> %i.ail, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aiq = shufflevector <2 x double> %i.yu, <2 x double> %i.tv, <2 x i32> <i32 1, i32 2>
  %i.air = shufflevector <2 x double> %shift1693, <2 x double> %i.uc, <2 x i32> <i32 0, i32 3>
  %i.ais = insertelement <2 x double> %i.wv, double %i.nv, i64 1
  %i.ait = shufflevector <2 x double> %i.tj, <2 x double> %i.ahl, <2 x i32> <i32 1, i32 2>
  %i.aiu = shufflevector <2 x double> %i.sy, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2>
  %i.aiv = insertelement <2 x double> %i.ahl, double %i.nx, i64 0
  %i.aiw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiv, <2 x double> %i.se, <2 x double> %i.acf)
  %i.aix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zn, <2 x double> %i.acj, <2 x double> %i.aiw)
  %i.aiy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ack, <2 x double> %i.acl, <2 x double> %i.aix)
  %i.aiz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acn, <2 x double> %i.aco, <2 x double> %i.aiy)
  %i.aja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acp, <2 x double> %i.acq, <2 x double> %i.aiz)
  %i.ajb = shufflevector <2 x double> %i.aai, <2 x double> %i.aho, <2 x i32> <i32 1, i32 2>
  %i.ajc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajb, <2 x double> %i.acr, <2 x double> %i.aja)
  %i.ajd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.act, <2 x double> %i.acu, <2 x double> %i.ajc)
  %i.aje = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahm, <2 x double> %i.acv, <2 x double> %i.ajd)
  %i.ajf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acw, <2 x double> %i.acx, <2 x double> %i.aje)
  %i.ajg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acy, <2 x double> %i.ada, <2 x double> %i.ajf)
  %i.ajh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yu, <2 x double> %i.adb, <2 x double> %i.ajg)
  %i.aji = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.add, <2 x double> %i.rt, <2 x double> %i.ajh)
  %i.ajj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ade, <2 x double> %i.adf, <2 x double> %i.aji)
  %i.ajk = shufflevector <2 x double> %i.aho, <2 x double> %i.yu, <2 x i32> <i32 0, i32 2>
  %i.ajl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajk, <2 x double> %i.adg, <2 x double> %i.ajj)
  %i.ajm = insertelement <2 x double> %i.ahl, double %i.rr, i64 1
  %i.ajn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajm, <2 x double> %i.adh, <2 x double> %i.ajl)
  %i.ajo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adi, <2 x double> %i.adj, <2 x double> %i.ajn)
  %i.ajp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adk, <2 x double> %i.adl, <2 x double> %i.ajo)
  %i.ajq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adm, <2 x double> %i.adn, <2 x double> %i.ajp)
  %i.ajr = shufflevector <2 x double> %i.ahi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ajs = insertelement <2 x double> %i.ajr, double %i.nv, i64 1
  %i.ajt = shufflevector <2 x double> %i.qc, <2 x double> %i.aho, <2 x i32> <i32 0, i32 3>
  %i.aju = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajs, <2 x double> %i.ajt, <2 x double> %i.ajq)
  %i.ajv = shufflevector <2 x double> %i.th, <2 x double> %i.ahd, <2 x i32> <i32 0, i32 2>
  %i.ajw = shufflevector <2 x double> %i.sn, <2 x double> %i.ahi, <2 x i32> <i32 1, i32 2>
  %i.ajx = insertelement <2 x double> %i.ahd, double %i.rc, i64 1
  %i.ajy = shufflevector <2 x double> %i.ahi, <2 x double> %i.pl, <2 x i32> <i32 0, i32 3>
  %i.ajz = call double @llvm.fmuladd.f64(double %i.ux, double %i.pz, double %i.agv)
  %i.aka = call double @llvm.fmuladd.f64(double %i.agw, double %i.og, double %i.ajz)
  %i.akb = call double @llvm.fmuladd.f64(double %i.rf, double %i.px, double %i.aka)
  %i.akc = call double @llvm.fmuladd.f64(double %i.nx, double %i.qd, double %i.akb)
  %i.akd = call double @llvm.fmuladd.f64(double %i.abk, double %i.ns, double %i.akc)
  %i.ake = shufflevector <2 x double> %i.th, <2 x double> %i.pq, <2 x i32> <i32 1, i32 2>
  %i.akf = shufflevector <2 x double> %i.qr, <2 x double> %i.pt, <2 x i32> <i32 0, i32 2>
  %i.akg = shufflevector <2 x double> %i.ua, <2 x double> %i.aac, <2 x i32> <i32 1, i32 2>
  %i.akh = insertelement <2 x double> %i.vi, double %i.pz, i64 1 ; 2 uses
  %i.aki = shufflevector <2 x double> %206, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.akj = insertelement <2 x double> %i.aki, double %i.on, i64 1
  %i.akk = shufflevector <2 x double> %i.qc, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.akl = shufflevector <2 x double> %i.rb, <2 x double> %i.zr, <2 x i32> <i32 1, i32 2>
  %i.akm = shufflevector <2 x double> %i.rp, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.akn = shufflevector <2 x double> %i.sq, <2 x double> %i.zk, <2 x i32> <i32 1, i32 3>
  %i.ako = shufflevector <2 x double> %i.ss, <2 x double> %i.ahl, <2 x i32> <i32 1, i32 3>
  %i.akp = shufflevector <2 x double> %i.sy, <2 x double> %i.of, <2 x i32> <i32 0, i32 2>
  %i.akq = extractelement <2 x double> %i.ahi, i64 1
  %i.akr = insertelement <2 x double> %i.vk, double %i.on, i64 1
  %i.aks = shufflevector <2 x double> %i.xy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akt = shufflevector <2 x double> %i.aaz, <2 x double> %i.zn, <2 x i32> <i32 0, i32 2>
  %i.aku = shufflevector <2 x double> %i.ok, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.akv = shufflevector <2 x double> %i.sy, <2 x double> %i.of, <2 x i32> <i32 1, i32 2>
  %i.akw = shufflevector <2 x double> %i.um, <2 x double> %i.pq, <2 x i32> <i32 1, i32 2>
  %i.akx = shufflevector <2 x double> %i.uj, <2 x double> %i.aai, <2 x i32> <i32 1, i32 2>
  %i.aky = insertelement <2 x double> %i.yo, double %i.ol, i64 0
  %i.akz = shufflevector <2 x double> %i.sn, <2 x double> %i.zk, <2 x i32> <i32 1, i32 3>
  %i.ala = shufflevector <2 x double> %i.tc, <2 x double> %i.ahl, <2 x i32> <i32 0, i32 3>
  %i.alb = shufflevector <2 x double> %i.nu, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.alc = shufflevector <2 x double> %i.tj, <2 x double> %i.yu, <2 x i32> <i32 0, i32 2>
  %i.ald = shufflevector <2 x double> %i.th, <2 x double> %i.pq, <2 x i32> <i32 0, i32 3>
  %i.ale = shufflevector <2 x double> %i.uj, <2 x double> %i.py, <2 x i32> <i32 0, i32 2>
  %i.alf = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.alg = insertelement <2 x double> %i.alf, double %i.ym, i64 1
  %i.alh = shufflevector <2 x double> %i.sy, <2 x double> %i.yq, <2 x i32> <i32 0, i32 2>
  %i.ali = fmul double %i.tp, %i.ahe
  %i.alj = shufflevector <2 x double> %i.wr, <2 x double> %foldExtExtBinop1696, <2 x i32> <i32 0, i32 2>
  %i.alk = shufflevector <2 x double> %i.acz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.all = insertelement <2 x double> %i.sq, double %i.ali, i64 1
  %i.alm = shufflevector <2 x double> %foldExtExtBinop1691, <2 x double> %i.yq, <2 x i32> <i32 0, i32 3>
  %i.aln = shufflevector <2 x double> %i.oy, <2 x double> %i.aaz, <2 x i32> <i32 1, i32 2>
  %i.alo = insertelement <2 x double> %i.ok, double %i.ol, i64 1
  %i.alp = shufflevector <2 x double> %i.su, <2 x double> %i.tc, <2 x i32> <i32 0, i32 2>
  %i.alq = shufflevector <2 x double> %i.sn, <2 x double> %i.th, <2 x i32> <i32 0, i32 2>
  %i.alr = insertelement <2 x double> %i.nu, double %i.ol, i64 1 ; 2 uses
  %i.als = shufflevector <2 x double> %i.aau, <2 x double> %i.sn, <2 x i32> <i32 1, i32 2>
  %i.alt = insertelement <2 x double> %i.rp, double %i.nv, i64 1
  %i.alu = shufflevector <2 x double> %i.aeo, <2 x double> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.alv = shufflevector <2 x double> %i.alr, <2 x double> %i.ahd, <2 x i32> <i32 1, i32 2>
  %i.alw = shufflevector <2 x double> %i.nr, <2 x double> %i.sy, <2 x i32> <i32 0, i32 3>
  %i.alx = shufflevector <2 x double> %i.aeo, <2 x double> %i.sq, <2 x i32> <i32 1, i32 2>
  %i.aly = insertelement <2 x double> %i.xg, double %i.nv, i64 1
  %i.alz = shufflevector <2 x double> %i.ps, <2 x double> %i.nu, <2 x i32> <i32 0, i32 2>
  %i.ama = shufflevector <2 x double> %i.xg, <2 x double> %i.ok, <2 x i32> <i32 0, i32 3>
  %i.amb = shufflevector <2 x double> %i.ps, <2 x double> %i.ok, <2 x i32> <i32 0, i32 2>
  %i.amc = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.amd = insertelement <2 x double> %i.amc, double %i.rr, i64 1
  %i.ame = shufflevector <2 x double> %i.pt, <2 x double> %i.py, <2 x i32> <i32 1, i32 3>
  %i.amf = shufflevector <2 x double> %i.of, <2 x double> %i.ps, <2 x i32> <i32 0, i32 2>
  %i.amg = shufflevector <2 x double> %i.nr, <2 x double> %i.of, <2 x i32> <i32 0, i32 3>
  %i.amh = shufflevector <2 x double> %i.of, <2 x double> %i.ps, <2 x i32> <i32 1, i32 2>
  %i.ami = shufflevector <2 x double> %i.py, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %i.amj = shufflevector <2 x double> %i.ps, <2 x double> %i.py, <2 x i32> <i32 0, i32 3>
  %i.amk = fneg double %i.nw
  %i.aml = extractelement <2 x double> %i.pd, i64 1
  %i.amm = extractelement <2 x double> %i.ahd, i64 0
  %i.amn = fmul double %i.ou, %i.oj               ; 5 uses
  %i.amo = insertelement <2 x double> %i.oo, double %i.oj, i64 1
  %i.amp = insertelement <2 x double> %i.tf, double %i.os, i64 0
  %i.amq = fmul <2 x double> %i.amo, %i.amp       ; 5 uses
  %i.amr = shufflevector <2 x double> %i.uj, <2 x double> %i.amq, <2 x i32> <i32 1, i32 3>
  %i.ams = shufflevector <2 x double> %i.amq, <2 x double> %i.tj, <2 x i32> <i32 1, i32 2>
  %i.amt = insertelement <2 x double> %i.aed, double %i.amn, i64 0
  %i.amu = shufflevector <2 x double> %i.amq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.amv = insertelement <2 x double> %i.amu, double %i.nx, i64 1
  %i.amw = insertelement <2 x double> poison, double %i.amn, i64 0
  %i.amx = insertelement <2 x double> %i.amw, double %i.nv, i64 1
  %i.amy = shufflevector <2 x double> %i.zd, <2 x double> %i.amq, <2 x i32> <i32 1, i32 3>
  %i.amz = insertelement <2 x double> %i.za, double %i.amn, i64 1
  %i.ana = fmul double %i.ni, %i.oj
  %shift1703 = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1704 = fmul <2 x double> %shift1703, %i.nr ; 5 uses
  %i.anb = extractelement <2 x double> %foldExtExtBinop1704, i64 0
  %i.anc = shufflevector <2 x double> %i.tc, <2 x double> %foldExtExtBinop1704, <2 x i32> <i32 1, i32 2>
  %i.and = shufflevector <2 x double> %foldExtExtBinop1704, <2 x double> %i.rb, <2 x i32> <i32 0, i32 3>
  %i.ane = shufflevector <2 x double> %i.ua, <2 x double> %foldExtExtBinop1704, <2 x i32> <i32 0, i32 2>
  %i.anf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ane, <2 x double> %i.aij, <2 x double> %i.aii)
  %i.ang = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aik, <2 x double> %i.ail, <2 x double> %i.anf)
  %i.anh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aim, <2 x double> %i.ain, <2 x double> %i.ang)
  %i.ani = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aio, <2 x double> %i.aip, <2 x double> %i.anh)
  %i.anj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aiq, <2 x double> %i.vw, <2 x double> %i.ani)
  %i.ank = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.air, <2 x double> %i.ais, <2 x double> %i.anj)
  %i.anl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ait, <2 x double> %i.aiu, <2 x double> %i.ank) ; 2 uses
  %217 = insertelement <2 x double> %i.anl, double %216, i64 0
  %i.anm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahq, <2 x double> %i.vj, <2 x double> %217)
  %i.ann = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aak, <2 x double> %i.vl, <2 x double> %i.anm)
  %i.ano = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ach, <2 x double> %i.vm, <2 x double> %i.ann)
  %i.anp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aal, <2 x double> %i.vn, <2 x double> %i.ano)
  %i.anq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.acg, <2 x double> %i.vo, <2 x double> %i.anp)
  %i.anr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.um, <2 x double> %i.vp, <2 x double> %i.anq)
  %i.ans = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vq, <2 x double> %i.aan, <2 x double> %i.anr)
  %i.ant = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aao, <2 x double> %i.vr, <2 x double> %i.ans)
  %i.anu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vs, <2 x double> %i.vt, <2 x double> %i.ant)
  %i.anv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uj, <2 x double> %i.vu, <2 x double> %i.anu)
  %i.anw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %i.vv, <2 x double> %i.anv)
  %i.anx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aho, <2 x double> %i.vw, <2 x double> %i.anw)
  %i.any = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.vy, <2 x double> %i.anx)
  %i.anz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %i.vz, <2 x double> %i.any)
  %i.aoa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %206, <2 x double> %i.wa, <2 x double> %i.anz)
  %i.aob = shufflevector <2 x double> %i.aoa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aoc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %i.wc, <2 x double> %i.aob)
  %i.aod = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yv, <2 x double> %i.wd, <2 x double> %i.aoc)
  %i.aoe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.wf, <2 x double> %i.aod)
  %i.aof = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tc, <2 x double> %i.vo, <2 x double> %i.aoe)
  %i.aog = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wh, <2 x double> %i.wi, <2 x double> %i.aof)
  %i.aoh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.wk, <2 x double> %i.aog)
  %i.aoi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.sy, <2 x double> %i.aoh)
  %i.aoj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.tl, <2 x double> %i.aoi)
  %i.aok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.wm, <2 x double> %i.aoj)
  %i.aol = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wo, <2 x double> %i.aok)
  %i.aom = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wp, <2 x double> %i.wq, <2 x double> %i.aol)
  %i.aon = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahj, <2 x double> %i.se, <2 x double> %i.aom)
  %i.aoo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ws, <2 x double> %i.wt, <2 x double> %i.aon)
  %i.aop = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> %i.wu, <2 x double> %i.aoo)
  %i.aoq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ss, <2 x double> %i.ww, <2 x double> %i.aop)
  %i.aor = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wx, <2 x double> %i.wy, <2 x double> %i.aoq)
  %i.aos = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wz, <2 x double> %i.xa, <2 x double> %i.aor)
  %i.aot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xb, <2 x double> %i.xc, <2 x double> %i.aos)
  %i.aou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.su, <2 x double> %i.vn, <2 x double> %i.aot)
  %i.aov = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sn, <2 x double> %i.vo, <2 x double> %i.aou)
  %i.aow = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.anc, <2 x double> %i.acx, <2 x double> %i.aju)
  %i.aox = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yq, <2 x double> %i.ado, <2 x double> %i.aow)
  %i.aoy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adp, <2 x double> %i.acq, <2 x double> %i.aox)
  %i.aoz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adq, <2 x double> %i.acr, <2 x double> %i.aoy)
  %i.apa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adr, <2 x double> %i.ads, <2 x double> %i.aoz)
  %i.apb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aep, <2 x double> %i.xh, <2 x double> %i.aov)
  %i.apc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaz, <2 x double> %i.xi, <2 x double> %i.apb)
  %i.apd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abb, <2 x double> %i.xj, <2 x double> %i.apc)
  %i.ape = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xk, <2 x double> %i.xl, <2 x double> %i.apd)
  %i.apf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xm, <2 x double> %i.xn, <2 x double> %i.ape)
  %i.apg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xo, <2 x double> %i.xp, <2 x double> %i.apf)
  %i.aph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abc, <2 x double> %i.sa, <2 x double> %i.apg)
  %i.api = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xq, <2 x double> %i.xr, <2 x double> %i.aph)
  %i.apj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xs, <2 x double> %i.xt, <2 x double> %i.api)
  %i.apk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeq, <2 x double> %i.xu, <2 x double> %i.apj)
  %i.apl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abd, <2 x double> %i.xv, <2 x double> %i.apk)
  %i.apm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xw, <2 x double> %i.pt, <2 x double> %i.apl)
  %i.apn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xx, <2 x double> %i.aer, <2 x double> %i.apm)
  %i.apo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abe, <2 x double> %i.xz, <2 x double> %i.apn)
  %i.app = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yy, <2 x double> %i.ya, <2 x double> %i.apo)
  %i.apq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yb, <2 x double> %i.yc, <2 x double> %i.app)
  %i.apr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> %i.pu, <2 x double> %i.apq)
  %i.aps = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abh, <2 x double> %i.yd, <2 x double> %i.apr)
  %i.apt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abi, <2 x double> %i.ye, <2 x double> %i.aps)
  %i.apu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abj, <2 x double> %i.yf, <2 x double> %i.apt)
  %i.apv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yg, <2 x double> %i.yh, <2 x double> %i.apu)
  %i.apw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.yi, <2 x double> %i.apv)
  %i.apx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> %i.wb, <2 x double> %i.apw)
  %i.apy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yj, <2 x double> %i.yk, <2 x double> %i.apx)
  store <2 x double> %i.apy, ptr %i.no, align 16, !tbaa !33
  %i.apz = insertelement <2 x double> %i.anl, double %i.akd, i64 1
  %i.aqa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ake, <2 x double> %i.akf, <2 x double> %i.apz)
  %i.aqb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akg, <2 x double> %i.akh, <2 x double> %i.aqa)
  %i.aqc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akj, <2 x double> %i.akk, <2 x double> %i.aqb)
  %i.aqd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akl, <2 x double> %i.akm, <2 x double> %i.aqc)
  %i.aqe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akn, <2 x double> %i.afu, <2 x double> %i.aqd)
  %i.aqf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ako, <2 x double> %i.akp, <2 x double> %i.aqe) ; 2 uses
  %i.aqg = shufflevector <2 x double> %i.aqf, <2 x double> %foldExtExtBinop1701, <2 x i32> <i32 0, i32 2>
  %i.aqh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> %i.tl, <2 x double> %i.aqg)
  %i.aqi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.up, <2 x double> %i.aqh)
  %i.aqj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.rt, <2 x double> %i.aqi)
  %i.aqk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zs, <2 x double> %i.rv, <2 x double> %i.aqj)
  %i.aql = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aba, <2 x double> %i.rw, <2 x double> %i.aqk)
  %i.aqm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uw, <2 x double> %i.rx, <2 x double> %i.aql)
  %i.aqn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.ry, <2 x double> %i.aqm)
  %i.aqo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ri, <2 x double> %i.rz, <2 x double> %i.aqn)
  %i.aqp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sw, <2 x double> %i.sa, <2 x double> %i.aqo)
  %i.aqq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.sc, <2 x double> %i.aqp)
  %i.aqr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sj, <2 x double> %i.pu, <2 x double> %i.aqq)
  %i.aqs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uc, <2 x double> %i.sd, <2 x double> %i.aqr)
  %i.aqt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zg, <2 x double> %i.se, <2 x double> %i.aqs)
  %i.aqu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rk, <2 x double> %i.sf, <2 x double> %i.aqt)
  %i.aqv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> %i.se, <2 x double> %i.aqu)
  %i.aqw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.sc, <2 x double> %i.aqv)
  %i.aqx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.sf, <2 x double> %i.aqw)
  store <2 x double> %i.aqx, ptr %i.mz, align 16, !tbaa !33
  %i.aqy = extractelement <2 x double> %i.aqf, i64 1
  %i.aqz = call double @llvm.fmuladd.f64(double %i.yl, double %i.nv, double %i.aqy)
  %i.ara = call double @llvm.fmuladd.f64(double %i.agy, double %i.rr, double %i.aqz)
  %i.arb = call double @llvm.fmuladd.f64(double %i.pr, double %i.rq, double %i.ara)
  %i.arc = call double @llvm.fmuladd.f64(double %i.aaj, double %i.nv, double %i.arb)
  %i.ard = call double @llvm.fmuladd.f64(double %i.ahp, double %i.pz, double %i.arc)
  %i.are = call double @llvm.fmuladd.f64(double %215, double %i.nv, double %i.ard)
  %i.arf = call double @llvm.fmuladd.f64(double %i.tw, double %i.nw, double %i.are)
  %i.arg = call double @llvm.fmuladd.f64(double %i.ym, double %i.og, double %i.arf)
  %i.arh = call double @llvm.fmuladd.f64(double %i.akq, double %i.qd, double %i.arg)
  %i.ari = call double @llvm.fmuladd.f64(double %i.yr, double %i.nw, double %i.arh)
  %i.arj = call double @llvm.fmuladd.f64(double %i.tm, double %i.nv, double %i.ari)
  %i.ark = call double @llvm.fmuladd.f64(double %i.anb, double %i.nw, double %i.arj)
  %i.arl = fmul double %i.ana, %i.amk
  %i.arm = shufflevector <2 x double> %i.yq, <2 x double> %i.ok, <2 x i32> <i32 1, i32 2>
  %i.arn = insertelement <2 x double> %i.vi, double %i.amn, i64 1
  %i.aro = insertelement <2 x double> poison, double %i.ark, i64 0
  %i.arp = insertelement <2 x double> %i.aro, double %i.arl, i64 1
  %i.arq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.arm, <2 x double> %i.arn, <2 x double> %i.arp) ; 2 uses
  %i.arr = insertelement <2 x double> %i.arq, double %214, i64 1
  %i.ars = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akr, <2 x double> %i.aks, <2 x double> %i.arr)
  %i.art = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akt, <2 x double> %i.aku, <2 x double> %i.ars)
  %i.aru = shufflevector <2 x double> %i.pl, <2 x double> %foldExtExtBinop1704, <2 x i32> <i32 1, i32 2>
  %i.arv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amr, <2 x double> %i.adt, <2 x double> %i.apa)
  %i.arw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.and, <2 x double> %i.adu, <2 x double> %i.arv)
  %i.arx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adv, <2 x double> %i.adw, <2 x double> %i.arw)
  %i.ary = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adx, <2 x double> %i.ady, <2 x double> %i.arx)
  %i.arz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adz, <2 x double> %i.aea, <2 x double> %i.ary)
  %i.asa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeb, <2 x double> %i.aec, <2 x double> %i.arz)
  %i.asb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ams, <2 x double> %i.sy, <2 x double> %i.asa)
  %i.asc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amt, <2 x double> %i.tl, <2 x double> %i.asb)
  %i.asd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aee, <2 x double> %i.adu, <2 x double> %i.asc)
  %i.ase = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aef, <2 x double> %i.aeg, <2 x double> %i.asd)
  %i.asf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeh, <2 x double> %i.aei, <2 x double> %i.ase)
  %i.asg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajv, <2 x double> %i.aej, <2 x double> %i.asf)
  %i.ash = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aek, <2 x double> %i.ael, <2 x double> %i.asg)
  %i.asi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajw, <2 x double> %i.wd, <2 x double> %i.ash)
  %i.asj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajx, <2 x double> %i.aes, <2 x double> %i.asi)
  %i.ask = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aet, <2 x double> %i.vp, <2 x double> %i.asj)
  %i.asl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajy, <2 x double> %i.aeu, <2 x double> %i.ask)
  %i.asm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aev, <2 x double> %i.adl, <2 x double> %i.asl)
  %i.asn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aew, <2 x double> %i.aex, <2 x double> %i.asm)
  %i.aso = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aey, <2 x double> %i.aez, <2 x double> %i.asn)
  %i.asp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afa, <2 x double> %i.wm, <2 x double> %i.aso)
  %i.asq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afb, <2 x double> %i.afc, <2 x double> %i.asp)
  %i.asr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afd, <2 x double> %i.aes, <2 x double> %i.asq)
  %i.ass = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afe, <2 x double> %i.aff, <2 x double> %i.asr)
  %i.ast = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afg, <2 x double> %i.afh, <2 x double> %i.ass)
  %i.asu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afi, <2 x double> %i.afj, <2 x double> %i.ast)
  %i.asv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afk, <2 x double> %i.afl, <2 x double> %i.asu)
  %i.asw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %i.afn, <2 x double> %i.asv)
  %i.asx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afo, <2 x double> %i.afp, <2 x double> %i.asw)
  %i.asy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afq, <2 x double> %i.afr, <2 x double> %i.asx)
  %i.asz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aft, <2 x double> %i.afu, <2 x double> %i.asy)
  %i.ata = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeo, <2 x double> %i.afv, <2 x double> %i.asz)
  %i.atb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afw, <2 x double> %i.afx, <2 x double> %i.ata)
  %i.atc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afy, <2 x double> %i.afz, <2 x double> %i.atb)
  %i.atd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aga, <2 x double> %i.agb, <2 x double> %i.atc)
  %i.ate = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agc, <2 x double> %i.afz, <2 x double> %i.atd)
  %i.atf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agd, <2 x double> %i.xz, <2 x double> %i.ate)
  %i.atg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.age, <2 x double> %i.yi, <2 x double> %i.atf)
  %i.ath = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agf, <2 x double> %i.pu, <2 x double> %i.atg)
  %i.ati = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agg, <2 x double> %i.agh, <2 x double> %i.ath)
  %i.atj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agi, <2 x double> %i.agj, <2 x double> %i.ati)
  %i.atk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agk, <2 x double> %i.agl, <2 x double> %i.atj)
  %i.atl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agn, <2 x double> %i.ago, <2 x double> %i.atk)
  %i.atm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agp, <2 x double> %i.agq, <2 x double> %i.atl)
  %i.atn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agr, <2 x double> %i.ags, <2 x double> %i.atm)
  %i.ato = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.abg, <2 x double> %i.agt, <2 x double> %i.atn)
  %i.atp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.agu, <2 x double> %i.ato)
  store <2 x double> %i.atp, ptr %i.np, align 16, !tbaa !33
  %i.atq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amv, <2 x double> %i.akv, <2 x double> %i.art)
  %i.atr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akw, <2 x double> %i.afn, <2 x double> %i.atq)
  %i.ats = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akx, <2 x double> %i.aky, <2 x double> %i.atr)
  %i.att = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akz, <2 x double> %i.ada, <2 x double> %i.ats)
  %i.atu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ala, <2 x double> %i.alb, <2 x double> %i.att)
  %i.atv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alc, <2 x double> %i.aeg, <2 x double> %i.atu)
  %i.atw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ald, <2 x double> %i.aei, <2 x double> %i.atv)
  %i.atx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahd, <2 x double> %i.akh, <2 x double> %i.atw)
  %i.aty = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ale, <2 x double> %i.alg, <2 x double> %i.atx)
  %i.atz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ahi, <2 x double> %i.abr, <2 x double> %i.aty)
  %i.aua = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amx, <2 x double> %i.alh, <2 x double> %i.atz)
  %i.aub = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alj, <2 x double> %i.alk, <2 x double> %i.aua)
  %i.auc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.all, <2 x double> %i.afp, <2 x double> %i.aub)
  %i.aud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aru, <2 x double> %i.adu, <2 x double> %i.auc)
  %i.aue = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alm, <2 x double> %i.aeg, <2 x double> %i.aud)
  %i.auf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aln, <2 x double> %i.alo, <2 x double> %i.aue)
  %i.aug = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amy, <2 x double> %i.aec, <2 x double> %i.auf)
  %i.auh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alp, <2 x double> %i.alk, <2 x double> %i.aug)
  %i.aui = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alq, <2 x double> %i.alr, <2 x double> %i.auh)
  %i.auj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.als, <2 x double> %i.alt, <2 x double> %i.aui)
  %i.auk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alu, <2 x double> %i.alv, <2 x double> %i.auj)
  %i.aul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amz, <2 x double> %i.alw, <2 x double> %i.auk)
  %i.aum = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alx, <2 x double> %i.aly, <2 x double> %i.aul)
  %i.aun = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.alz, <2 x double> %i.aum)
  %i.auo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oy, <2 x double> %i.ama, <2 x double> %i.aun)
  %i.aup = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zd, <2 x double> %i.amb, <2 x double> %i.auo)
  %i.auq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aau, <2 x double> %i.amd, <2 x double> %i.aup)
  %i.aur = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.ame, <2 x double> %i.auq)
  %i.aus = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.agm, <2 x double> %i.amf, <2 x double> %i.aur)
  %i.aut = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaw, <2 x double> %i.amg, <2 x double> %i.aus)
  %i.auu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zb, <2 x double> %i.amh, <2 x double> %i.aut)
  %i.auv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.ami, <2 x double> %i.auu)
  %i.auw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aas, <2 x double> %i.amj, <2 x double> %i.auv)
  %i.aux = shufflevector <2 x double> %i.auw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.aux, ptr %i.nq, align 16, !tbaa !33
  %i.auy = extractelement <2 x double> %i.arq, i64 1
  %i.auz = call double @llvm.fmuladd.f64(double %i.aax, double %i.pz, double %i.auy)
  %i.ava = call double @llvm.fmuladd.f64(double %i.aml, double %i.px, double %i.auz)
  %i.avb = call double @llvm.fmuladd.f64(double %i.amm, double %i.nv, double %i.ava)
  %i.avc = call double @llvm.fmuladd.f64(double %i.ze, double %i.ol, double %i.avb)
  %i.avd = call double @llvm.fmuladd.f64(double %i.pn, double %i.nv, double %i.avc)
  %i.ave = call double @llvm.fmuladd.f64(double %i.agx, double %i.px, double %i.avd)
  %i.avf = call double @llvm.fmuladd.f64(double %i.agz, double %i.nv, double %i.ave)
  %i.avg = call double @llvm.fmuladd.f64(double %i.agw, double %i.pz, double %i.avf)
  %i.avh = call double @llvm.fmuladd.f64(double %i.ym, double %i.pz, double %i.avg)
  %i.avi = call double @llvm.fmuladd.f64(double %i.nx, double %i.qa, double %i.avh)
  %i.avj = call double @llvm.fmuladd.f64(double %i.agy, double %i.nv, double %i.avi)
  %i.avk = fmul double %i.amn, %i.ol
  %i.avl = insertelement <2 x double> %i.acz, double %i.ol, i64 1
  %i.avm = insertelement <2 x double> poison, double %i.avk, i64 0
  %i.avn = insertelement <2 x double> %i.avm, double %i.avj, i64 1
  %i.avo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.amq, <2 x double> %i.avl, <2 x double> %i.avn)
  %i.avp = shufflevector <2 x double> %i.pq, <2 x double> %i.ahi, <2 x i32> <i32 1, i32 3>
  %i.avq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avp, <2 x double> %i.acq, <2 x double> %i.avo)
  %i.avr = shufflevector <2 x double> %i.ahi, <2 x double> %i.pq, <2 x i32> <i32 1, i32 2>
  %i.avs = insertelement <2 x double> %i.aaa, double %i.pz, i64 0
  %i.avt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avr, <2 x double> %i.avs, <2 x double> %i.avq)
  %i.avu = insertelement <2 x double> %i.ahl, double %i.nx, i64 0
  %i.avv = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.avw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.avu, <2 x double> %i.avv, <2 x double> %i.avt)
  %i.avx = shufflevector <2 x double> %i.nr, <2 x double> %i.nu, <2 x i32> <i32 1, i32 2>
  %i.avy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.avx, <2 x double> %i.avw)
  store <2 x double> %i.avy, ptr %i.b, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %183, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #18
  %i.avz = getelementptr inbounds nuw i8, ptr %184, i64 16
  store i32 0, ptr %i.avz, align 8, !tbaa !51
  %i.awa = getelementptr inbounds nuw i8, ptr %184, i64 20
  store i32 0, ptr %i.awa, align 4, !tbaa !52
  store i32 16842752, ptr %184, align 8, !tbaa !15
  %i.awb = getelementptr inbounds nuw i8, ptr %184, i64 8
  store ptr %182, ptr %i.awb, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #18
  %i.awc = getelementptr inbounds nuw i8, ptr %185, i64 8
  %i.awd = getelementptr inbounds nuw i8, ptr %185, i64 16
  store i64 0, ptr %i.awd, align 8
  store i32 -2113732570, ptr %185, align 8, !tbaa !15
  store ptr %183, ptr %i.awc, align 8, !tbaa !14
  %i.awe = invoke noundef double @_ZN2cv9solvePolyERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %184, ptr noundef nonnull align 8 dereferenceable(24) %185, i32 noundef 300)
          to label %bb.if unwind label %bb.ii     ; 0 uses

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %185) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #18
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %186, i32 noundef 30, i32 noundef 3, i32 noundef 6)
          to label %bb.ig unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit473.thread

bb.ig:                                            ; preds = %bb.if
  %i.awf = getelementptr inbounds nuw i8, ptr %186, i64 24
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !31
  %i.awh = getelementptr inbounds nuw i8, ptr %183, i64 8 ; 2 uses
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !608 ; 2 uses
  %i.awj = load ptr, ptr %183, align 8, !tbaa !609 ; 2 uses
  %.not = icmp eq ptr %i.awi, %i.awj
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ig
  %i.awk = getelementptr inbounds nuw i8, ptr %189, i64 16
  %i.awl = getelementptr inbounds nuw i8, ptr %189, i64 20
  %i.awm = getelementptr inbounds nuw i8, ptr %189, i64 8
  %i.awn = getelementptr inbounds nuw i8, ptr %190, i64 8
  %i.awo = getelementptr inbounds nuw i8, ptr %190, i64 16
  %i.awp = getelementptr inbounds nuw i8, ptr %188, i64 4 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %188, i64 84 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %188, i64 88 ; 4 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %188, i64 12 ; 4 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %188, i64 24 ; 8 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %188, i64 128 ; 8 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.aww = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.awx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.awy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.awz = getelementptr inbounds nuw i8, ptr %192, i64 432
  %i.axa = getelementptr inbounds nuw i8, ptr %192, i64 224
  %i.axb = getelementptr inbounds nuw i8, ptr %192, i64 16
  %i.axc = getelementptr inbounds nuw i8, ptr %193, i64 432
  %i.axd = getelementptr inbounds nuw i8, ptr %193, i64 224
  %i.axe = getelementptr inbounds nuw i8, ptr %193, i64 16
  %i.axf = getelementptr inbounds nuw i8, ptr %199, i64 432
  %i.axg = getelementptr inbounds nuw i8, ptr %199, i64 224
  %i.axh = getelementptr inbounds nuw i8, ptr %199, i64 16
  %i.axi = getelementptr inbounds nuw i8, ptr %194, i64 432
  %i.axj = getelementptr inbounds nuw i8, ptr %194, i64 224
  %i.axk = getelementptr inbounds nuw i8, ptr %194, i64 16
  %i.axl = getelementptr inbounds nuw i8, ptr %197, i64 432
  %i.axm = getelementptr inbounds nuw i8, ptr %197, i64 224
  %i.axn = getelementptr inbounds nuw i8, ptr %197, i64 16
  %i.axo = getelementptr inbounds nuw i8, ptr %195, i64 432
  %i.axp = getelementptr inbounds nuw i8, ptr %195, i64 224
  %i.axq = getelementptr inbounds nuw i8, ptr %195, i64 16
  %i.axr = getelementptr inbounds nuw i8, ptr %202, i64 16
  %i.axs = getelementptr inbounds nuw i8, ptr %202, i64 20
  %i.axt = getelementptr inbounds nuw i8, ptr %202, i64 8
  %i.axu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.axv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.axw = getelementptr inbounds nuw i8, ptr %191, i64 24
  %i.axx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.axy = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.axz = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.aya = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.aye = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.a, i64 272
end_hunk_0
