Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpCGPenaltyLSAcceptor?download=true
inline.NumInlined: 1819
inline.NumDeleted: 488
begin_hunk_0_@_ZN5Ipopt19CGPenaltyLSAcceptor22UpdatePenaltyParameterEv:bb.a

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.bs, %bb.bt
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 208
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !109, !noalias !500
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !112, !noalias !500 ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i333, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i337, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i334

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i337: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 232
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !115, !noalias !500
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !117, !noalias !500, !nonnull !94, !noundef !94
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i334

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i334: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i337, %_ZNK5Ipopt9IpoptData4currEv.exit
  %.0.i3.i.i.i335 = phi ptr [ %i.pn, %_ZNK5Ipopt9IpoptData4currEv.exit ], [ %i.pr, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i337 ] ; 22 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 8 ; 6 uses
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !22, !noalias !501
  %i.pu = add nsw i32 %i.pt, 1
  store i32 %i.pu, ptr %i.ps, align 8, !tbaa !22, !noalias !501
  %i.pv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 56
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !134 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !24
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = invoke noundef ptr %i.pz(ptr noundef nonnull align 8 dereferenceable(16) %i.pw)
          to label %.noexc339 unwind label %bb.ec, !inline_history !3 ; 44 uses

.noexc339:                                        ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i334
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load ptr, ptr %i.qc, align 8
  invoke void %i.qd(ptr noundef nonnull align 8 dereferenceable(205) %i.qa, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i335)
          to label %.noexc340 unwind label %bb.ec, !inline_history !4

.noexc340:                                        ; preds = %.noexc339
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.qa)
          to label %.noexc341 unwind label %bb.ec

.noexc341:                                        ; preds = %.noexc340
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 48
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !132 ; 7 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 88
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !131
  %i.qi = icmp eq i32 %i.qf, %i.qh
  br i1 %i.qi, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.noexc341
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !132
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 88
  store i32 %i.qk, ptr %i.ql, align 8, !tbaa !131
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 96
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !133
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qa, i64 96
  store double %i.qn, ptr %i.qo, align 8, !tbaa !133
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.noexc341
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 104
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !135
  %i.qr = icmp eq i32 %i.qf, %i.qq
  br i1 %i.qr, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !132
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qa, i64 104
  store i32 %i.qt, ptr %i.qu, align 8, !tbaa !135
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 112
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !136
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qa, i64 112
  store double %i.qw, ptr %i.qx, align 8, !tbaa !136
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 120
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !137
  %i.ra = icmp eq i32 %i.qf, %i.qz
  br i1 %i.ra, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !132
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qa, i64 120
  store i32 %i.rc, ptr %i.rd, align 8, !tbaa !137
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 128
  %i.rf = load double, ptr %i.re, align 8, !tbaa !138
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qa, i64 128
  store double %i.rf, ptr %i.rg, align 8, !tbaa !138
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 136
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !139
  %i.rj = icmp eq i32 %i.qf, %i.ri
  br i1 %i.rj, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !132
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qa, i64 136
  store i32 %i.rl, ptr %i.rm, align 8, !tbaa !139
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 144
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !140
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qa, i64 144
  store double %i.ro, ptr %i.rp, align 8, !tbaa !140
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 152
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !141
  %i.rs = icmp eq i32 %i.qf, %i.rr
  br i1 %i.rs, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !132
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qa, i64 152
  store i32 %i.ru, ptr %i.rv, align 8, !tbaa !141
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 160
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !142
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qa, i64 160
  store double %i.rx, ptr %i.ry, align 8, !tbaa !142
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 168
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !143
  %i.sb = icmp eq i32 %i.qf, %i.sa
  br i1 %i.sb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !132
  %i.se = getelementptr inbounds nuw i8, ptr %i.qa, i64 168
  store i32 %i.sd, ptr %i.se, align 8, !tbaa !143
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 176
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !144
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qa, i64 176
  store double %i.sg, ptr %i.sh, align 8, !tbaa !144
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 184
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !145
  %i.sk = icmp eq i32 %i.qf, %i.sj
  br i1 %i.sk, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !132
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qa, i64 184
  store i32 %i.sm, ptr %i.sn, align 8, !tbaa !145
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i335, i64 192
  %i.sp = load double, ptr %i.so, align 8, !tbaa !146
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qa, i64 192
  store double %i.sp, ptr %i.sq, align 8, !tbaa !146
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 4 uses
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !22
  %i.st = add nsw i32 %i.ss, 1
  store i32 %i.st, ptr %i.sr, align 8, !tbaa !22
  %i.su = load i32, ptr %i.ps, align 8, !tbaa !22
  %i.sv = add nsw i32 %i.su, -1                   ; 2 uses
  store i32 %i.sv, ptr %i.ps, align 8, !tbaa !22
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %bb.ci, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit344

bb.ci:                                            ; preds = %bb.ch
  %i.sx = load ptr, ptr %.0.i3.i.i.i335, align 8, !tbaa !24
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i335) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit344

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit344:     ; preds = %bb.ci, %bb.ch
  %i.ta = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !22
  %i.tc = add nsw i32 %i.tb, -1                   ; 2 uses
  store i32 %i.tc, ptr %i.ta, align 8, !tbaa !22
  %i.td = icmp eq i32 %i.tc, 0
  br i1 %i.td, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit344
  %i.te = load ptr, ptr %i.pg, align 8, !tbaa !24
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8
  call void %i.tg(ptr noundef nonnull align 8 dereferenceable(280) %i.pg) #22, !inline_history !0
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit344
  %i.th = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 2192
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !82
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !28, !noalias !502 ; 9 uses
  %.not.i.i.i.i347 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i.i347, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit348, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !22, !noalias !502
  %i.to = add nsw i32 %i.tn, 1
  store i32 %i.to, ptr %i.tm, align 8, !tbaa !22, !noalias !502
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit348

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit348: ; preds = %bb.cl, %bb.ck
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 208
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !109, !noalias !503
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !112, !noalias !503 ; 2 uses
  %.not.i.i.i349 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i349, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i353, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i350

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i353: ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit348
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tl, i64 232
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !115, !noalias !503
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !117, !noalias !503 ; 2 uses
  %.not3.i.i.i354 = icmp eq ptr %i.tw, null
  br i1 %.not3.i.i.i354, label %bb.cm, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i350

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i350: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i353, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit348
  %.0.i3.i.i.i351 = phi ptr [ %i.ts, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit348 ], [ %i.tw, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i353 ] ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i351, i64 8 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !22, !noalias !504
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr %i.tx, align 8, !tbaa !22, !noalias !504
  br label %bb.cm

bb.cm:                                            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i353, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i350
  %storemerge.i.i352 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i353 ], [ %.0.i3.i.i.i351, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i350 ] ; 8 uses
  %i.ua = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 32
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !100
  %i.ud = invoke noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.uc)
          to label %bb.cn unwind label %bb.ef

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ue = load ptr, ptr %i.e, align 8, !tbaa !38
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities6curr_cEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.39") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2185) %i.ue)
          to label %bb.co unwind label %bb.eg

bb.co:                                            ; preds = %bb.cn
  %i.uf = fdiv double -1.000000e+00, %i.ud
  %i.ug = load ptr, ptr %9, align 8, !tbaa !117
  %i.uh = load ptr, ptr %i.qa, align 8, !tbaa !24
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 192
  %i.uj = load ptr, ptr %i.ui, align 8
  invoke void %i.uj(ptr noundef nonnull align 8 dereferenceable(205) %i.qa, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i352, double noundef %i.uf, ptr noundef nonnull align 8 dereferenceable(205) %i.ug, double noundef 1.000000e+00)
          to label %.noexc356 unwind label %bb.eh, !inline_history !5

.noexc356:                                        ; preds = %bb.co
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.qa)
          to label %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit unwind label %bb.eh

_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit: ; preds = %.noexc356
  %i.uk = load ptr, ptr %9, align 8, !tbaa !117   ; 4 uses
  %.not.i.i358 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i358, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !22
  %i.un = add nsw i32 %i.um, -1                   ; 2 uses
  store i32 %i.un, ptr %i.ul, align 8, !tbaa !22
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.up = load ptr, ptr %i.uk, align 8, !tbaa !24
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(205) %i.uk) #22, !inline_history !1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.us = getelementptr inbounds nuw i8, ptr %storemerge.i.i352, i64 8 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !22
  %i.uu = add nsw i32 %i.ut, -1                   ; 2 uses
  store i32 %i.uu, ptr %i.us, align 8, !tbaa !22
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.cs, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit361

bb.cs:                                            ; preds = %bb.cr
  %i.uw = load ptr, ptr %storemerge.i.i352, align 8, !tbaa !24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load ptr, ptr %i.ux, align 8
  call void %i.uy(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i352) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit361

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit361:     ; preds = %bb.cs, %bb.cr
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !22
  %i.vb = add nsw i32 %i.va, -1                   ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 8, !tbaa !22
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.ct, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit363

bb.ct:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit361
  %i.vd = load ptr, ptr %i.tl, align 8, !tbaa !24
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(280) %i.tl) #22, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit363

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit363: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit361, %bb.ct
  %i.vg = getelementptr inbounds nuw i8, ptr %i.qa, i64 120 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !137
  %i.vi = getelementptr inbounds nuw i8, ptr %i.qa, i64 48 ; 2 uses
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !132
  %.not.i364 = icmp eq i32 %i.vh, %i.vj
  br i1 %.not.i364, label %._crit_edge.i365, label %bb.cu

._crit_edge.i365:                                 ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit363
  %.phi.trans.insert.i366 = getelementptr inbounds nuw i8, ptr %i.qa, i64 128
  %.pre.i367 = load double, ptr %.phi.trans.insert.i366, align 8, !tbaa !138
  br label %bb.cv

bb.cu:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit363
  %i.vk = load ptr, ptr %i.qa, align 8, !tbaa !24
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 64
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = invoke noundef double %i.vm(ptr noundef nonnull align 8 dereferenceable(205) %i.qa)
          to label %.noexc368 unwind label %bb.en, !inline_history !345 ; 2 uses

.noexc368:                                        ; preds = %bb.cu
  %i.vo = getelementptr inbounds nuw i8, ptr %i.qa, i64 128
  store double %i.vn, ptr %i.vo, align 8, !tbaa !138
  %i.vp = load i32, ptr %i.vi, align 8, !tbaa !132
  store i32 %i.vp, ptr %i.vg, align 8, !tbaa !137
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.i365, %.noexc368
  %i.vq = phi double [ %.pre.i367, %._crit_edge.i365 ], [ %i.vn, %.noexc368 ] ; 2 uses
  %i.vr = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !24
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.vu(ptr noundef nonnull align 8 dereferenceable(40) %i.vr, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.48, double noundef %i.vq)
          to label %bb.cw unwind label %bb.en

bb.cw:                                            ; preds = %bb.cv
  %i.vv = load double, ptr %i.p, align 8, !tbaa !81
  %i.vw = fcmp olt double %i.vq, %i.vv
  br i1 %i.vw, label %bb.cx, label %.thread1067

bb.cx:                                            ; preds = %bb.cw
  %i.vx = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !28, !noalias !505 ; 9 uses
  %.not.i.i.i.i370 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i370, label %_ZNK5Ipopt9IpoptData4currEv.exit371, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !22, !noalias !505
  %i.wc = add nsw i32 %i.wb, 1
  store i32 %i.wc, ptr %i.wa, align 8, !tbaa !22, !noalias !505
  br label %_ZNK5Ipopt9IpoptData4currEv.exit371

_ZNK5Ipopt9IpoptData4currEv.exit371:              ; preds = %bb.cy, %bb.cx
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 208
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !109, !noalias !506
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !112, !noalias !506 ; 2 uses
  %.not.i.i.i372 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i372, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i376, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i373

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i376: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit371
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vz, i64 232
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !115, !noalias !506
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !117, !noalias !506, !nonnull !94, !noundef !94
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i373

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i373: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i376, %_ZNK5Ipopt9IpoptData4currEv.exit371
  %.0.i3.i.i.i374 = phi ptr [ %i.wg, %_ZNK5Ipopt9IpoptData4currEv.exit371 ], [ %i.wk, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i376 ] ; 22 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 8 ; 6 uses
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !22, !noalias !507
  %i.wn = add nsw i32 %i.wm, 1
  store i32 %i.wn, ptr %i.wl, align 8, !tbaa !22, !noalias !507
  %i.wo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 56
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !134 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !24
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = invoke noundef ptr %i.ws(ptr noundef nonnull align 8 dereferenceable(16) %i.wp)
          to label %.noexc378 unwind label %bb.eo, !inline_history !3 ; 41 uses

.noexc378:                                        ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i373
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !24
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8
  invoke void %i.ww(ptr noundef nonnull align 8 dereferenceable(205) %i.wt, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i374)
          to label %.noexc379 unwind label %bb.eo, !inline_history !4

.noexc379:                                        ; preds = %.noexc378
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.wt)
          to label %.noexc380 unwind label %bb.eo

.noexc380:                                        ; preds = %.noexc379
  %i.wx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 48
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !132 ; 7 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 88
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !131
  %i.xb = icmp eq i32 %i.wy, %i.xa
  br i1 %i.xb, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.noexc380
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !132
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wt, i64 88
  store i32 %i.xd, ptr %i.xe, align 8, !tbaa !131
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 96
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !133
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wt, i64 96
  store double %i.xg, ptr %i.xh, align 8, !tbaa !133
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.noexc380
  %i.xi = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 104
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !135
  %i.xk = icmp eq i32 %i.wy, %i.xj
  br i1 %i.xk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !132
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wt, i64 104
  store i32 %i.xm, ptr %i.xn, align 8, !tbaa !135
  %i.xo = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 112
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !136
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wt, i64 112
  store double %i.xp, ptr %i.xq, align 8, !tbaa !136
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.xr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 120
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !137
  %i.xt = icmp eq i32 %i.wy, %i.xs
  br i1 %i.xt, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !132
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wt, i64 120
  store i32 %i.xv, ptr %i.xw, align 8, !tbaa !137
  %i.xx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 128
  %i.xy = load double, ptr %i.xx, align 8, !tbaa !138
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wt, i64 128
  store double %i.xy, ptr %i.xz, align 8, !tbaa !138
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 136
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !139
  %i.yc = icmp eq i32 %i.wy, %i.yb
  br i1 %i.yc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !132
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wt, i64 136
  store i32 %i.ye, ptr %i.yf, align 8, !tbaa !139
  %i.yg = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 144
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !140
  %i.yi = getelementptr inbounds nuw i8, ptr %i.wt, i64 144
  store double %i.yh, ptr %i.yi, align 8, !tbaa !140
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.yj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 152
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !141
  %i.yl = icmp eq i32 %i.wy, %i.yk
  br i1 %i.yl, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !132
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wt, i64 152
  store i32 %i.yn, ptr %i.yo, align 8, !tbaa !141
  %i.yp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 160
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !142
  %i.yr = getelementptr inbounds nuw i8, ptr %i.wt, i64 160
  store double %i.yq, ptr %i.yr, align 8, !tbaa !142
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 168
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !143
  %i.yu = icmp eq i32 %i.wy, %i.yt
  br i1 %i.yu, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.yv = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !132
  %i.yx = getelementptr inbounds nuw i8, ptr %i.wt, i64 168
  store i32 %i.yw, ptr %i.yx, align 8, !tbaa !143
  %i.yy = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 176
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !144
  %i.za = getelementptr inbounds nuw i8, ptr %i.wt, i64 176
  store double %i.yz, ptr %i.za, align 8, !tbaa !144
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.zb = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 184
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !145
  %i.zd = icmp eq i32 %i.wy, %i.zc
  br i1 %i.zd, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ze = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !132
  %i.zg = getelementptr inbounds nuw i8, ptr %i.wt, i64 184
  store i32 %i.zf, ptr %i.zg, align 8, !tbaa !145
  %i.zh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i374, i64 192
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !146
  %i.zj = getelementptr inbounds nuw i8, ptr %i.wt, i64 192
  store double %i.zi, ptr %i.zj, align 8, !tbaa !146
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.zk = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 8, !tbaa !22
  %i.zm = add nsw i32 %i.zl, 1
  store i32 %i.zm, ptr %i.zk, align 8, !tbaa !22
  %i.zn = load i32, ptr %i.sr, align 8, !tbaa !22
  %i.zo = add nsw i32 %i.zn, -1                   ; 2 uses
  store i32 %i.zo, ptr %i.sr, align 8, !tbaa !22
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %bb.dn, label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit

bb.dn:                                            ; preds = %bb.dm
  %i.zq = load ptr, ptr %i.qa, align 8, !tbaa !24
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zs = load ptr, ptr %i.zr, align 8
  call void %i.zs(ptr noundef nonnull align 8 dereferenceable(205) %i.qa) #22, !inline_history !380
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit:      ; preds = %bb.dm, %bb.dn
  %i.zt = load i32, ptr %i.wl, align 8, !tbaa !22
  %i.zu = add nsw i32 %i.zt, -1                   ; 2 uses
  store i32 %i.zu, ptr %i.wl, align 8, !tbaa !22
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %bb.do, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit385

bb.do:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit
  %i.zw = load ptr, ptr %.0.i3.i.i.i374, align 8, !tbaa !24
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8
  call void %i.zy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i374) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit385

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit385:     ; preds = %bb.do, %_ZN5Ipopt8SmartPtrINS_6VectorEEaSEPS1_.exit
  %i.zz = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !22
  %i.aab = add nsw i32 %i.aaa, -1                 ; 2 uses
  store i32 %i.aab, ptr %i.zz, align 8, !tbaa !22
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit385
  %i.aad = load ptr, ptr %i.vz, align 8, !tbaa !24
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load ptr, ptr %i.aae, align 8
  call void %i.aaf(ptr noundef nonnull align 8 dereferenceable(280) %i.vz) #22, !inline_history !0
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit385
  %i.aag = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 40
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !28, !noalias !508 ; 9 uses
  %.not.i.i.i.i388 = icmp eq ptr %i.aai, null
  br i1 %.not.i.i.i.i388, label %_ZNK5Ipopt9IpoptData5deltaEv.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8 ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !22, !noalias !508
  %i.aal = add nsw i32 %i.aak, 1
  store i32 %i.aal, ptr %i.aaj, align 8, !tbaa !22, !noalias !508
  br label %_ZNK5Ipopt9IpoptData5deltaEv.exit

_ZNK5Ipopt9IpoptData5deltaEv.exit:                ; preds = %bb.dr, %bb.dq
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 208
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !109, !noalias !509
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !112, !noalias !509 ; 2 uses
  %.not.i.i.i389 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i389, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i393, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i390

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i393: ; preds = %_ZNK5Ipopt9IpoptData5deltaEv.exit
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aai, i64 232
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !115, !noalias !509
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !117, !noalias !509 ; 2 uses
  %.not3.i.i.i394 = icmp eq ptr %i.aat, null
  br i1 %.not3.i.i.i394, label %bb.ds, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i390

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i390: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i393, %_ZNK5Ipopt9IpoptData5deltaEv.exit
  %.0.i3.i.i.i391 = phi ptr [ %i.aap, %_ZNK5Ipopt9IpoptData5deltaEv.exit ], [ %i.aat, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i393 ] ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i391, i64 8 ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 8, !tbaa !22, !noalias !510
  %i.aaw = add nsw i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aau, align 8, !tbaa !22, !noalias !510
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i393, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i390
  %storemerge.i.i392 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i393 ], [ %.0.i3.i.i.i391, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i390 ] ; 8 uses
  %i.aax = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 32
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !100
  %i.aba = invoke noundef double @_ZN5Ipopt11CGPenaltyCq17curr_cg_pert_factEv(ptr noundef nonnull align 8 dereferenceable(241) %i.aaz)
          to label %bb.dt unwind label %bb.eq

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.abb = load ptr, ptr %i.e, align 8, !tbaa !38
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.39") align 8 %10, ptr noundef nonnull align 8 dereferenceable(2185) %i.abb)
          to label %bb.du unwind label %bb.er

bb.du:                                            ; preds = %bb.dt
  %i.abc = fdiv double -1.000000e+00, %i.aba
  %i.abd = load ptr, ptr %10, align 8, !tbaa !117
  %i.abe = load ptr, ptr %i.wt, align 8, !tbaa !24
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 192
  %i.abg = load ptr, ptr %i.abf, align 8
  invoke void %i.abg(ptr noundef nonnull align 8 dereferenceable(205) %i.wt, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i392, double noundef %i.abc, ptr noundef nonnull align 8 dereferenceable(205) %i.abd, double noundef 1.000000e+00)
          to label %.noexc396 unwind label %bb.es, !inline_history !5

.noexc396:                                        ; preds = %bb.du
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.wt)
          to label %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit398 unwind label %bb.es

_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit398: ; preds = %.noexc396
  %i.abh = load ptr, ptr %10, align 8, !tbaa !117 ; 4 uses
  %.not.i.i399 = icmp eq ptr %i.abh, null
  br i1 %.not.i.i399, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit398
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !22
  %i.abk = add nsw i32 %i.abj, -1                 ; 2 uses
  store i32 %i.abk, ptr %i.abi, align 8, !tbaa !22
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.abm = load ptr, ptr %i.abh, align 8, !tbaa !24
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8
  call void %i.abo(ptr noundef nonnull align 8 dereferenceable(205) %i.abh) #22, !inline_history !1
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit398
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.abp = getelementptr inbounds nuw i8, ptr %storemerge.i.i392, i64 8 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !22
  %i.abr = add nsw i32 %i.abq, -1                 ; 2 uses
  store i32 %i.abr, ptr %i.abp, align 8, !tbaa !22
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.dy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit402

bb.dy:                                            ; preds = %bb.dx
  %i.abt = load ptr, ptr %storemerge.i.i392, align 8, !tbaa !24
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.abv = load ptr, ptr %i.abu, align 8
  call void %i.abv(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i392) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit402

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit402:     ; preds = %bb.dy, %bb.dx
  %i.abw = getelementptr inbounds nuw i8, ptr %i.aai, i64 8 ; 2 uses
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !22
  %i.aby = add nsw i32 %i.abx, -1                 ; 2 uses
  store i32 %i.aby, ptr %i.abw, align 8, !tbaa !22
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %bb.dz, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit404

bb.dz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit402
  %i.aca = load ptr, ptr %i.aai, align 8, !tbaa !24
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  %i.acc = load ptr, ptr %i.acb, align 8
  call void %i.acc(ptr noundef nonnull align 8 dereferenceable(280) %i.aai) #22, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit404

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit404: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit402, %bb.dz
  %i.acd = getelementptr inbounds nuw i8, ptr %i.wt, i64 120 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !137
  %i.acf = getelementptr inbounds nuw i8, ptr %i.wt, i64 48 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !132
  %.not.i405 = icmp eq i32 %i.ace, %i.acg
  br i1 %.not.i405, label %._crit_edge.i406, label %bb.ea

._crit_edge.i406:                                 ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit404
  %.phi.trans.insert.i407 = getelementptr inbounds nuw i8, ptr %i.wt, i64 128
  %.pre.i408 = load double, ptr %.phi.trans.insert.i407, align 8, !tbaa !138
  br label %bb.eb

bb.ea:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit404
  %i.ach = load ptr, ptr %i.wt, align 8, !tbaa !24
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 64
  %i.acj = load ptr, ptr %i.aci, align 8
  %i.ack = invoke noundef double %i.acj(ptr noundef nonnull align 8 dereferenceable(205) %i.wt)
          to label %.noexc409 unwind label %bb.en, !inline_history !345 ; 2 uses

.noexc409:                                        ; preds = %bb.ea
  %i.acl = getelementptr inbounds nuw i8, ptr %i.wt, i64 128
  store double %i.ack, ptr %i.acl, align 8, !tbaa !138
  %i.acm = load i32, ptr %i.acf, align 8, !tbaa !132
  store i32 %i.acm, ptr %i.acd, align 8, !tbaa !137
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge.i406, %.noexc409
  %i.acn = phi double [ %.pre.i408, %._crit_edge.i406 ], [ %i.ack, %.noexc409 ] ; 2 uses
  %i.aco = load ptr, ptr %i.k, align 8, !tbaa !47 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !24
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acr = load ptr, ptr %i.acq, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.acr(ptr noundef nonnull align 8 dereferenceable(40) %i.aco, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.49, double noundef %i.acn)
          to label %bb.ey unwind label %bb.en

bb.ec:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i334, %.noexc339, %.noexc340
  %i.acs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.act = load i32, ptr %i.ps, align 8, !tbaa !22
  %i.acu = add nsw i32 %i.act, -1                 ; 2 uses
  store i32 %i.acu, ptr %i.ps, align 8, !tbaa !22
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.ed, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit412.thread

bb.ed:                                            ; preds = %bb.ec
  %i.acw = load ptr, ptr %.0.i3.i.i.i335, align 8, !tbaa !24
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.acy = load ptr, ptr %i.acx, align 8
  call void %i.acy(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i335) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit412.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit412.thread: ; preds = %bb.ec, %bb.ed
  %i.acz = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !22
  %i.adb = add nsw i32 %i.ada, -1                 ; 2 uses
  store i32 %i.adb, ptr %i.acz, align 8, !tbaa !22
  %i.adc = icmp eq i32 %i.adb, 0
  br i1 %i.adc, label %bb.ee, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

bb.ee:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit412.thread
  %i.add = load ptr, ptr %i.pg, align 8, !tbaa !24
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8
  call void %i.adf(ptr noundef nonnull align 8 dereferenceable(280) %i.pg) #22, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

bb.ef:                                            ; preds = %bb.cm
  %i.adg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.eg:                                            ; preds = %bb.cn
  %i.adh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416

bb.eh:                                            ; preds = %.noexc356, %bb.co
  %i.adi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.adj = load ptr, ptr %9, align 8, !tbaa !117  ; 4 uses
  %.not.i.i415 = icmp eq ptr %i.adj, null
  br i1 %.not.i.i415, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 8 ; 2 uses
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !22
  %i.adm = add nsw i32 %i.adl, -1                 ; 2 uses
  store i32 %i.adm, ptr %i.adk, align 8, !tbaa !22
  %i.adn = icmp eq i32 %i.adm, 0
  br i1 %i.adn, label %bb.ej, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416

bb.ej:                                            ; preds = %bb.ei
  %i.ado = load ptr, ptr %i.adj, align 8, !tbaa !24
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adq = load ptr, ptr %i.adp, align 8
  call void %i.adq(ptr noundef nonnull align 8 dereferenceable(205) %i.adj) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416:     ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.pn148 = phi { ptr, i32 } [ %i.adh, %bb.eg ], [ %i.adi, %bb.eh ], [ %i.adi, %bb.ei ], [ %i.adi, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416, %bb.ef
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit416 ], [ %i.adg, %bb.ef ] ; 2 uses
  %.not.i.i417 = icmp eq ptr %storemerge.i.i352, null
  br i1 %.not.i.i417, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.adr = getelementptr inbounds nuw i8, ptr %storemerge.i.i352, i64 8 ; 2 uses
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !22
  %i.adt = add nsw i32 %i.ads, -1                 ; 2 uses
  store i32 %i.adt, ptr %i.adr, align 8, !tbaa !22
  %i.adu = icmp eq i32 %i.adt, 0
  br i1 %i.adu, label %bb.em, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread

bb.em:                                            ; preds = %bb.el
  %i.adv = load ptr, ptr %storemerge.i.i352, align 8, !tbaa !24
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  %i.adx = load ptr, ptr %i.adw, align 8
  call void %i.adx(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i352) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread: ; preds = %bb.ek, %bb.el, %bb.em
  %i.ady = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !22
  %i.aea = add nsw i32 %i.adz, -1                 ; 2 uses
  store i32 %i.aea, ptr %i.ady, align 8, !tbaa !22
  %i.aeb = icmp eq i32 %i.aea, 0
  br i1 %i.aeb, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420

bb.en:                                            ; preds = %bb.ea, %bb.cu, %bb.eb, %bb.cv
  %.sroa.0846.0 = phi ptr [ %i.wt, %bb.eb ], [ %i.wt, %bb.ea ], [ %i.qa, %bb.cv ], [ %i.qa, %bb.cu ]
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420

bb.eo:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i373, %.noexc378, %.noexc379
  %i.aed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aee = load i32, ptr %i.wl, align 8, !tbaa !22
  %i.aef = add nsw i32 %i.aee, -1                 ; 2 uses
  store i32 %i.aef, ptr %i.wl, align 8, !tbaa !22
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.ep, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread

bb.ep:                                            ; preds = %bb.eo
  %i.aeh = load ptr, ptr %.0.i3.i.i.i374, align 8, !tbaa !24
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aej = load ptr, ptr %i.aei, align 8
  call void %i.aej(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i374) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread: ; preds = %bb.eo, %bb.ep
  %i.aek = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !22
  %i.aem = add nsw i32 %i.ael, -1                 ; 2 uses
  store i32 %i.aem, ptr %i.aek, align 8, !tbaa !22
  %i.aen = icmp eq i32 %i.aem, 0
  br i1 %i.aen, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420

bb.eq:                                            ; preds = %bb.ds
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.er:                                            ; preds = %bb.dt
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426

bb.es:                                            ; preds = %.noexc396, %bb.du
  %i.aeq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aer = load ptr, ptr %10, align 8, !tbaa !117 ; 4 uses
  %.not.i.i425 = icmp eq ptr %i.aer, null
  br i1 %.not.i.i425, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8 ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !22
  %i.aeu = add nsw i32 %i.aet, -1                 ; 2 uses
  store i32 %i.aeu, ptr %i.aes, align 8, !tbaa !22
  %i.aev = icmp eq i32 %i.aeu, 0
  br i1 %i.aev, label %bb.eu, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426

bb.eu:                                            ; preds = %bb.et
  %i.aew = load ptr, ptr %i.aer, align 8, !tbaa !24
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8
  call void %i.aey(ptr noundef nonnull align 8 dereferenceable(205) %i.aer) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426:     ; preds = %bb.eu, %bb.et, %bb.es, %bb.er
  %.pn156 = phi { ptr, i32 } [ %i.aep, %bb.er ], [ %i.aeq, %bb.es ], [ %i.aeq, %bb.et ], [ %i.aeq, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ev

bb.ev:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426, %bb.eq
  %.pn156.pn = phi { ptr, i32 } [ %.pn156, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit426 ], [ %i.aeo, %bb.eq ] ; 2 uses
  %.not.i.i427 = icmp eq ptr %storemerge.i.i392, null
  br i1 %.not.i.i427, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aez = getelementptr inbounds nuw i8, ptr %storemerge.i.i392, i64 8 ; 2 uses
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !22
  %i.afb = add nsw i32 %i.afa, -1                 ; 2 uses
  store i32 %i.afb, ptr %i.aez, align 8, !tbaa !22
  %i.afc = icmp eq i32 %i.afb, 0
  br i1 %i.afc, label %bb.ex, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread

bb.ex:                                            ; preds = %bb.ew
  %i.afd = load ptr, ptr %storemerge.i.i392, align 8, !tbaa !24
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8
  call void %i.aff(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i392) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread: ; preds = %bb.ev, %bb.ew, %bb.ex
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aai, i64 8 ; 2 uses
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !22
  %i.afi = add nsw i32 %i.afh, -1                 ; 2 uses
  store i32 %i.afi, ptr %i.afg, align 8, !tbaa !22
  %i.afj = icmp eq i32 %i.afi, 0
  br i1 %i.afj, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420

bb.ey:                                            ; preds = %bb.eb
  %i.afk = load double, ptr %i.p, align 8, !tbaa !81 ; 2 uses
  %i.afl = fcmp olt double %i.acn, %i.afk         ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 2 uses
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !22
  %i.afo = add nsw i32 %i.afn, -1                 ; 2 uses
  store i32 %i.afo, ptr %i.afm, align 8, !tbaa !22
  %i.afp = icmp eq i32 %i.afo, 0
  br i1 %i.afp, label %.split, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

.thread1067:                                      ; preds = %bb.cw
  %i.afq = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !22
  %i.afs = add nsw i32 %i.afr, -1                 ; 2 uses
  store i32 %i.afs, ptr %i.afq, align 8, !tbaa !22
  %i.aft = icmp eq i32 %i.afs, 0
  br i1 %i.aft, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit573.sink.split, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit573

.split:                                           ; preds = %bb.ey
  %i.afu = load ptr, ptr %i.wt, align 8, !tbaa !24
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8
  call void %i.afw(ptr noundef nonnull align 8 dereferenceable(205) %i.wt) #22, !inline_history !6
  br i1 %i.afl, label %.split._crit_edge, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit573

.split._crit_edge:                                ; preds = %.split
  %.pre958 = load double, ptr %i.p, align 8, !tbaa !81
  br label %bb.fa

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread
  %.sink1080 = phi ptr [ %i.vz, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread ], [ %i.tl, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread ], [ %i.aai, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread ] ; 2 uses
  %.sroa.0846.2.ph = phi ptr [ %i.qa, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread ], [ %i.qa, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread ], [ %i.wt, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread ]
  %.pn161.pn.ph = phi { ptr, i32 } [ %i.aed, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread ], [ %.pn148.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread ], [ %.pn156.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread ]
  %21 = load ptr, ptr %.sink1080, align 8, !tbaa !24
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  call void %23(ptr noundef nonnull align 8 dereferenceable(280) %.sink1080) #22
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split, %bb.en, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread
  %.sroa.0846.2 = phi ptr [ %.sroa.0846.0, %bb.en ], [ %i.wt, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread ], [ %i.qa, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread ], [ %i.qa, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread ], [ %.sroa.0846.2.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split ] ; 3 uses
  %.pn161.pn = phi { ptr, i32 } [ %i.aec, %bb.en ], [ %.pn156.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit428.thread ], [ %.pn148.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit418.thread ], [ %i.aed, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit422.thread ], [ %.pn161.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420.sink.split ] ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.0846.2, i64 8 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 8, !tbaa !22
  %i.afz = add nsw i32 %i.afy, -1                 ; 2 uses
  store i32 %i.afz, ptr %i.afx, align 8, !tbaa !22
  %i.aga = icmp eq i32 %i.afz, 0
  br i1 %i.aga, label %bb.ez, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

bb.ez:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit420
  %i.agb = load ptr, ptr %.sroa.0846.2, align 8, !tbaa !24
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8
  call void %i.agd(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0846.2) #22, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.ey
  br i1 %i.afl, label %bb.fa, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit573

bb.fa:                                            ; preds = %.split._crit_edge, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.age = phi double [ %.pre958, %.split._crit_edge ], [ %i.afk, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit ]
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 8, !tbaa !79
  %i.agh = add nsw i32 %i.agg, 1
  store i32 %i.agh, ptr %i.agf, align 8, !tbaa !79
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !488 ; 2 uses
  %i.agk = fmul double %i.age, 5.000000e-01       ; 2 uses
  %i.agl = fcmp olt double %i.agj, %i.agk
  %.sroa.speculated.i434 = select i1 %i.agl, double %i.agk, double %i.agj ; 2 uses
  store double %.sroa.speculated.i434, ptr %i.p, align 8, !tbaa !81
  %i.agm = load ptr, ptr %i.k, align 8, !tbaa !47 ; 2 uses
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !24
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  %i.agp = load ptr, ptr %i.ago, align 8
  call void (ptr, i32, i32, ptr, ...) %i.agp(ptr noundef nonnull align 8 dereferenceable(40) %i.agm, i32 noundef 7, i32 noundef 8, ptr noundef nonnull @.str.50, double noundef %.sroa.speculated.i434)
  %i.agq = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 2192
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !82
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 72
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !511 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agq, i64 16
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !28, !noalias !512 ; 10 uses
  %.not.i.i.i.i435 = icmp eq ptr %i.agw, null
  br i1 %.not.i.i.i.i435, label %_ZNK5Ipopt9IpoptData4currEv.exit436, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 8 ; 2 uses
  %i.agy = load i32, ptr %i.agx, align 8, !tbaa !22, !noalias !512
  %i.agz = add nsw i32 %i.agy, 1
  store i32 %i.agz, ptr %i.agx, align 8, !tbaa !22, !noalias !512
  br label %_ZNK5Ipopt9IpoptData4currEv.exit436

_ZNK5Ipopt9IpoptData4currEv.exit436:              ; preds = %bb.fa, %bb.fb
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 208
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !109, !noalias !513
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !112, !noalias !513 ; 2 uses
  %.not.i.i.i437 = icmp eq ptr %i.ahd, null
  br i1 %.not.i.i.i437, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i441, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i438

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i441: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit436
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agw, i64 232
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !115, !noalias !513
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !117, !noalias !513, !nonnull !94, !noundef !94
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i438

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i438: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i441, %_ZNK5Ipopt9IpoptData4currEv.exit436
  %.0.i3.i.i.i439 = phi ptr [ %i.ahd, %_ZNK5Ipopt9IpoptData4currEv.exit436 ], [ %i.ahh, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i441 ] ; 6 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i439, i64 8 ; 6 uses
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !22, !noalias !514
  %i.ahk = add nsw i32 %i.ahj, 1
  store i32 %i.ahk, ptr %i.ahi, align 8, !tbaa !22, !noalias !514
  %i.ahl = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i439, i64 56
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !134 ; 2 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !24
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 8
  %i.ahq = invoke noundef ptr %i.ahp(ptr noundef nonnull align 8 dereferenceable(16) %i.ahm)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.gh, !inline_history !397 ; 19 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i438
  %.not.i.i445 = icmp eq ptr %i.ahq, null
  br i1 %.not.i.i445, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit446, label %bb.fc

bb.fc:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8 ; 2 uses
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !22
  %i.aht = add nsw i32 %i.ahs, 1
  store i32 %i.aht, ptr %i.ahr, align 8, !tbaa !22
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit446

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit446:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit, %bb.fc
  %i.ahu = load i32, ptr %i.ahi, align 8, !tbaa !22
  %i.ahv = add nsw i32 %i.ahu, -1                 ; 2 uses
  store i32 %i.ahv, ptr %i.ahi, align 8, !tbaa !22
  %i.ahw = icmp eq i32 %i.ahv, 0
  br i1 %i.ahw, label %bb.fd, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448

bb.fd:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit446
  %i.ahx = load ptr, ptr %.0.i3.i.i.i439, align 8, !tbaa !24
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8
  call void %i.ahz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i439) #22, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448:     ; preds = %bb.fd, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit446
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agw, i64 8 ; 2 uses
  %i.aib = load i32, ptr %i.aia, align 8, !tbaa !22
  %i.aic = add nsw i32 %i.aib, -1                 ; 2 uses
  store i32 %i.aic, ptr %i.aia, align 8, !tbaa !22
  %i.aid = icmp eq i32 %i.aic, 0
  br i1 %i.aid, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448
  %i.aie = load ptr, ptr %i.agw, align 8, !tbaa !24
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aig = load ptr, ptr %i.aif, align 8
  call void %i.aig(ptr noundef nonnull align 8 dereferenceable(280) %i.agw) #22, !inline_history !0
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit448
  %i.aih = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !28, !noalias !515 ; 10 uses
  %.not.i.i.i.i451 = icmp eq ptr %i.aij, null
  br i1 %.not.i.i.i.i451, label %_ZNK5Ipopt9IpoptData4currEv.exit452, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 8 ; 2 uses
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !22, !noalias !515
  %i.aim = add nsw i32 %i.ail, 1
  store i32 %i.aim, ptr %i.aik, align 8, !tbaa !22, !noalias !515
  br label %_ZNK5Ipopt9IpoptData4currEv.exit452

_ZNK5Ipopt9IpoptData4currEv.exit452:              ; preds = %bb.fg, %bb.ff
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aij, i64 208
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !109, !noalias !516
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 16
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !112, !noalias !516 ; 2 uses
  %.not.i.i.i453 = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i.i453, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i457, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i454

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i457: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit452
  %i.air = getelementptr inbounds nuw i8, ptr %i.aij, i64 232
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !115, !noalias !516
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !117, !noalias !516 ; 2 uses
  %.not3.i.i.i458 = icmp eq ptr %i.aiu, null
  br i1 %.not3.i.i.i458, label %bb.fh, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i454

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i454: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i457, %_ZNK5Ipopt9IpoptData4currEv.exit452
  %.0.i3.i.i.i455 = phi ptr [ %i.aiq, %_ZNK5Ipopt9IpoptData4currEv.exit452 ], [ %i.aiu, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i457 ] ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i455, i64 8 ; 2 uses
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !22, !noalias !517
  %i.aix = add nsw i32 %i.aiw, 1
  store i32 %i.aix, ptr %i.aiv, align 8, !tbaa !22, !noalias !517
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i457, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i454
  %storemerge.i.i456 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i457 ], [ %.0.i3.i.i.i455, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i454 ] ; 7 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aih, i64 2192
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !82
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !28, !noalias !518 ; 10 uses
  %.not.i.i.i.i460 = icmp eq ptr %i.ajb, null
  br i1 %.not.i.i.i.i460, label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit461, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8 ; 2 uses
  %i.ajd = load i32, ptr %i.ajc, align 8, !tbaa !22, !noalias !518
  %i.aje = add nsw i32 %i.ajd, 1
  store i32 %i.aje, ptr %i.ajc, align 8, !tbaa !22, !noalias !518
  br label %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit461

_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit461: ; preds = %bb.fi, %bb.fh
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajb, i64 208
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !109, !noalias !519
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !112, !noalias !519 ; 2 uses
  %.not.i.i.i462 = icmp eq ptr %i.aji, null
  br i1 %.not.i.i.i462, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i466, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i463

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i466: ; preds = %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit461
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajb, i64 232
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !115, !noalias !519
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !117, !noalias !519, !nonnull !94, !noundef !94
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i463

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i463: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i466, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit461
  %.0.i3.i.i.i464 = phi ptr [ %i.aji, %_ZNK5Ipopt13CGPenaltyData11delta_cgpenEv.exit461 ], [ %i.ajm, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i466 ] ; 6 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i464, i64 8 ; 6 uses
  %i.ajo = load i32, ptr %i.ajn, align 8, !tbaa !22, !noalias !520
  %i.ajp = add nsw i32 %i.ajo, 1
  store i32 %i.ajp, ptr %i.ajn, align 8, !tbaa !22, !noalias !520
  %i.ajq = load ptr, ptr %i.ahq, align 8, !tbaa !24
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 192
  %i.ajs = load ptr, ptr %i.ajr, align 8
  invoke void %i.ajs(ptr noundef nonnull align 8 dereferenceable(205) %i.ahq, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i456, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i464, double noundef 0.000000e+00)
          to label %.noexc469 unwind label %bb.gl, !inline_history !5
end_hunk_0
