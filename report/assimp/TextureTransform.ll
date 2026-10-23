Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TextureTransform?download=true
inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 56 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  store ptr %i.ob, ptr %i.oc, align 8
  store ptr %i.ob, ptr %i.ob, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 72
  store i64 0, ptr %i.od, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #17
  %i.oe = load i64, ptr %i.jy, align 8
  %i.of = add i64 %i.oe, 1
  store i64 %i.of, ptr %i.jy, align 8
  %i.og = load ptr, ptr %i.mr, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 36
  store i32 3, ptr %i.oh, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.oi = load i8, ptr %i.bg, align 4, !range !42, !noundef !43
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ok = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bl unwind label %.loopexit.split-lp579.loopexit.split-lp ; 8 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ol, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.om, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 56 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store ptr %i.op, ptr %i.oq, align 8
  store ptr %i.op, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 72
  store i64 0, ptr %i.or, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ok, ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #17
  %i.os = load i64, ptr %i.jy, align 8
  %i.ot = add i64 %i.os, 1
  store i64 %i.ot, ptr %i.jy, align 8
  %i.ou = load ptr, ptr %i.mr, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 36
  store i32 4, ptr %i.ov, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %i.ow = load i8, ptr %i.bh, align 1, !range !42, !noundef !43
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.oy = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bo unwind label %.loopexit.split-lp579.loopexit.split-lp ; 8 uses

bb.bo:                                            ; preds = %bb.bn
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.oz, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.pa, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 56 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  store ptr %i.pd, ptr %i.pe, align 8
  store ptr %i.pd, ptr %i.pd, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 72
  store i64 0, ptr %i.pf, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #17
  %i.pg = load i64, ptr %i.jy, align 8
  %i.ph = add i64 %i.pg, 1
  store i64 %i.ph, ptr %i.jy, align 8
  %i.pi = load ptr, ptr %i.mr, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 36
  store i32 5, ptr %i.pj, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.pk = load i8, ptr %i.bi, align 2, !range !42, !noundef !43
  %i.pl = trunc nuw i8 %i.pk to i1
  br i1 %i.pl, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pm = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.br unwind label %.loopexit.split-lp579.loopexit.split-lp ; 8 uses

bb.br:                                            ; preds = %bb.bq
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.pn, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.po, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.pq, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 56 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  store ptr %i.pr, ptr %i.ps, align 8
  store ptr %i.pr, ptr %i.pr, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 72
  store i64 0, ptr %i.pt, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pm, ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #17
  %i.pu = load i64, ptr %i.jy, align 8
  %i.pv = add i64 %i.pu, 1
  store i64 %i.pv, ptr %i.jy, align 8
  %i.pw = load ptr, ptr %i.mr, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 36
  store i32 6, ptr %i.px, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.py = load i8, ptr %i.bj, align 1, !range !42, !noundef !43
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qa = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bu unwind label %.loopexit.split-lp579.loopexit.split-lp ; 8 uses

bb.bu:                                            ; preds = %bb.bt
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.qb, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.qc, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qa, i64 56 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  store ptr %i.qf, ptr %i.qg, align 8
  store ptr %i.qf, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 72
  store i64 0, ptr %i.qh, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.qa, ptr noundef nonnull align 8 dereferenceable(24) %i.jm) #17
  %i.qi = load i64, ptr %i.jy, align 8
  %i.qj = add i64 %i.qi, 1
  store i64 %i.qj, ptr %i.jy, align 8
  %i.qk = load ptr, ptr %i.mr, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 36
  store i32 7, ptr %i.ql, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.qm = load i64, ptr %i.jy, align 8            ; 2 uses
  %i.qn = trunc i64 %i.qm to i32                  ; 2 uses
  %i.qo = icmp ugt i32 %i.qn, 8
  br i1 %i.qo, label %bb.bw, label %.preheader576

bb.bw:                                            ; preds = %bb.bv
  %i.qp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.bx unwind label %.loopexit.split-lp579.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.qp, label %.preheader576thread-pre-split, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bz unwind label %.loopexit.split-lp579.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.qr = load i64, ptr %i.jy, align 8
  %i.qs = trunc i64 %i.qr to i32
  store i32 %i.qs, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i32 8, ptr %i.i, align 4
  invoke void @_ZN6Assimp6Logger5errorIJjRA32_KciRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qq, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(11) @.str.18)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %.preheader576thread-pre-split

.loopexit.split-lp579.loopexit.split-lp:          ; preds = %bb.ay, %bb.bb, %bb.be, %bb.bh, %bb.bk, %bb.bn, %bb.bq, %bb.bt, %bb.by, %bb.bw
  %lpad.loopexit.split-lp705 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp579

bb.cb:                                            ; preds = %bb.bz
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %.loopexit.split-lp579

.preheader576thread-pre-split:                    ; preds = %bb.ca, %bb.bx
  %.pr805 = load i64, ptr %i.jy, align 8
  br label %.preheader576

.preheader576:                                    ; preds = %.preheader576thread-pre-split, %bb.bv
  %i.qu = phi i64 [ %.pr805, %.preheader576thread-pre-split ], [ %i.qm, %bb.bv ]
  %.0210 = phi i32 [ 8, %.preheader576thread-pre-split ], [ %i.qn, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.jn, i64 64, i1 false)
  %.not699 = icmp eq i64 %i.qu, 0
  br i1 %.not699, label %._crit_edge686, label %.lr.ph685

.lr.ph685:                                        ; preds = %.preheader576
  %i.qv = getelementptr inbounds nuw i8, ptr %i.jl, i64 4 ; 4 uses
  %i.qw = trunc nuw i64 %indvars.iv746 to i32
  br label %bb.cc

._crit_edge686:                                   ; preds = %bb.cx, %.preheader576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.critedge692

bb.cc:                                            ; preds = %.lr.ph685, %bb.cx
  %i.qx = phi i64 [ 0, %.lr.ph685 ], [ %i.zu, %bb.cx ]
  %.sroa.0481.3683.in = phi ptr [ %i.jm, %.lr.ph685 ], [ %.sroa.0481.3683, %bb.cx ]
  %.0207681 = phi i32 [ 0, %.lr.ph685 ], [ %i.zt, %bb.cx ] ; 7 uses
  %.sroa.0481.3683 = load ptr, ptr %.sroa.0481.3683.in, align 8 ; 13 uses
  %.not239 = icmp ult i32 %.0207681, %.0210
  br i1 %.not239, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %.sroa.08.012.i = load ptr, ptr %i.qy, align 8  ; 2 uses
  %.not1113.i = icmp eq ptr %.sroa.08.012.i, %i.qy
  br i1 %.not1113.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.i

.lr.ph.ithread-pre-split:                         ; preds = %.noexc329
  %.pr = load i32, ptr %i.b, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd, %.lr.ph.ithread-pre-split
  %i.qz = phi i32 [ %.pr, %.lr.ph.ithread-pre-split ], [ 0, %bb.cd ] ; 2 uses
  %.sroa.08.014.i = phi ptr [ %.sroa.08.0.i, %.lr.ph.ithread-pre-split ], [ %.sroa.08.012.i, %bb.cd ] ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8            ; 2 uses
  %.not.i328 = icmp eq ptr %i.rb, null
  br i1 %.not.i328, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i
  store i32 %i.qz, ptr %i.rb, align 4
  br label %.noexc329

bb.cf:                                            ; preds = %.lr.ph.i
  %.not7.i = icmp eq i32 %i.qz, 0
  br i1 %.not7.i, label %bb.cg, label %.noexc329

bb.cg:                                            ; preds = %bb.cf
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 24
  %i.rd = load ptr, ptr %i.rc, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 32
  %i.rf = load i32, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 36
  %i.rh = load i32, ptr %i.rg, align 4
  %i.ri = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.rd, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %i.rf, i32 noundef %i.rh, i32 noundef 4)
          to label %.noexc329 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc329:                                        ; preds = %bb.cg, %bb.cf, %bb.ce
  %.sroa.08.0.i = load ptr, ptr %.sroa.08.014.i, align 8 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.08.0.i, %i.qy
  br i1 %.not11.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.ithread-pre-split, !llvm.loop !0

_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit: ; preds = %.noexc329, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cx

bb.ch:                                            ; preds = %bb.cc
  %i.rj = load i32, ptr %i.d, align 4
  %i.rk = add i32 %i.rj, 1
  store i32 %i.rk, ptr %i.d, align 4
  %i.rl = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.rl, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 16
  %i.rn = load <4 x float>, ptr %i.rm, align 8
  %i.ro = fpext <4 x float> %i.rn to <4 x double> ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 32
  %i.rq = load float, ptr %i.rp, align 8
  %i.rr = fmul float %i.rq, f0x42652EE1
  %i.rs = fpext float %i.rr to double
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 40
  %i.ru = load i32, ptr %i.rt, align 8            ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.ru, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i = icmp eq i32 %i.ru, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.25, ptr %switch.select.i
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 44
  %i.rw = load i32, ptr %i.rv, align 4            ; 2 uses
  %switch.selectcmp.i330 = icmp eq i32 %i.rw, 2
  %switch.select.i331 = select i1 %switch.selectcmp.i330, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i332 = icmp eq i32 %i.rw, 0
  %switch.select4.i333 = select i1 %switch.selectcmp3.i332, ptr @.str.25, ptr %switch.select.i331
  %i.rx = extractelement <4 x double> %i.ro, i64 0
  %i.ry = extractelement <4 x double> %i.ro, i64 1
  %i.rz = extractelement <4 x double> %i.ro, i64 2
  %i.sa = extractelement <4 x double> %i.ro, i64 3
  %i.sb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.19, i32 noundef %i.qw, i32 noundef %.0207681, double noundef %i.rx, double noundef %i.ry, double noundef %i.rz, double noundef %i.sa, double noundef %i.rs, ptr noundef nonnull %switch.select4.i, ptr noundef nonnull %switch.select4.i333) #17 ; 0 uses
  %i.sc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sc, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.qx ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8            ; 3 uses
  %.not240 = icmp eq ptr %i.se, null
  br i1 %.not240, label %bb.cn, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cl
  %.sroa.0469.2853 = load ptr, ptr %.sroa.0481.3683, align 8 ; 2 uses
  %.0206854 = add nuw nsw i32 %.0207681, 1        ; 2 uses
  %3 = icmp ult i32 %.0206854, %.0210
  br i1 %3, label %.lr.ph857, label %.loopexit571

.preheader:                                       ; preds = %.lr.ph857
  %.sroa.0469.2 = load ptr, ptr %.sroa.0469.2855, align 8 ; 2 uses
  %.0206 = add nuw nsw i32 %.0206856, 1           ; 2 uses
  %4 = icmp ult i32 %.0206, %.0210
  br i1 %4, label %.lr.ph857, label %.loopexit571, !llvm.loop !34

.lr.ph857:                                        ; preds = %.preheader.preheader, %.preheader
  %.0206856 = phi i32 [ %.0206, %.preheader ], [ %.0206854, %.preheader.preheader ]
  %.sroa.0469.2855 = phi ptr [ %.sroa.0469.2, %.preheader ], [ %.sroa.0469.2853, %.preheader.preheader ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.0469.2855, i64 36
  %i.sg = load i32, ptr %i.sf, align 4
  %i.sh = icmp eq i32 %i.sg, %.0207681
  br i1 %i.sh, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %.preheader, !llvm.loop !34

.loopexit571:                                     ; preds = %.preheader, %.preheader.preheader
  %.sroa.0469.2.lcssa = phi ptr [ %.sroa.0469.2853, %.preheader.preheader ], [ %.sroa.0469.2, %.preheader ]
  %.pre751 = load ptr, ptr %i.jm, align 8
  %i.si = icmp eq ptr %.sroa.0469.2.lcssa, %.pre751
  br i1 %i.si, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %bb.cp

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph857, %.loopexit571
  call void @_ZdaPv(ptr noundef nonnull %i.se) #18
  %i.sj = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.sk = zext i32 %i.sj to i64
  %i.sl = mul nuw nsw i64 %i.sk, 12               ; 2 uses
  %i.sm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sl) #19
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit
  %i.sn = icmp eq i32 %i.sj, 0
  br i1 %i.sn, label %.sink.split818, label %.sink.split818.sink.split

bb.cn:                                            ; preds = %bb.cl
  %i.so = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.sp = zext i32 %i.so to i64
  %i.sq = mul nuw nsw i64 %i.sp, 12               ; 2 uses
  %i.sr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sq) #19
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.ss = icmp eq i32 %i.so, 0
  br i1 %i.ss, label %.sink.split818, label %.sink.split818.sink.split

.sink.split818.sink.split:                        ; preds = %bb.co, %bb.cm
  %.sink826 = phi i64 [ %i.sl, %bb.cm ], [ %i.sq, %bb.co ]
  %.sink820 = phi ptr [ %i.sm, %bb.cm ], [ %i.sr, %bb.co ] ; 2 uses
  %i.st = add nsw i64 %.sink826, -12              ; 2 uses
  %i.su = urem i64 %i.st, 12
  %i.sv = sub nuw nsw i64 %i.st, %i.su
  %i.sw = add nsw i64 %i.sv, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sink820, i8 0, i64 %i.sw, i1 false)
  br label %.sink.split818

.sink.split818:                                   ; preds = %.sink.split818.sink.split, %bb.co, %bb.cm
  %.sink = phi ptr [ %i.sm, %bb.cm ], [ %i.sr, %bb.co ], [ %.sink820, %.sink.split818.sink.split ] ; 2 uses
  store ptr %.sink, ptr %i.sd, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %.sink.split818, %.loopexit571
  %i.sx = phi ptr [ %i.se, %.loopexit571 ], [ %.sink, %.sink.split818 ] ; 9 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 16 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 36
  %i.ta = load i32, ptr %i.sz, align 4
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.tb
  %i.td = load ptr, ptr %i.tc, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.sx, %i.td
  br i1 %.not241, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.te = load i32, ptr %i.qv, align 4
  %i.tf = zext i32 %i.te to i64
  %i.tg = mul nuw nsw i64 %i.tf, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sx, ptr align 4 %i.td, i64 %i.tg, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.th = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.ti = zext i32 %i.th to i64
  %.idx = mul nuw nsw i64 %i.ti, 12               ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sx, i64 %.idx
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 24
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 28
  %i.tm = load <2 x float>, ptr %i.sy, align 8    ; 2 uses
  %i.tn = load <2 x float>, ptr %i.tk, align 8    ; 4 uses
  %i.to = load float, ptr %i.tl, align 4
  %i.tp = shufflevector <2 x float> %i.tm, <2 x float> %i.tn, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %.fr882 = freeze <4 x float> %i.tp
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 32
  %.pre752 = load float, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.tq = fcmp olt float %.pre752, f0x3C0EFA35
  %i.tr = fcmp une <4 x float> %.fr882, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ts = bitcast <4 x i1> %i.tr to i4
  %i.tt = icmp eq i4 %i.ts, 0
  %op.rdx = select i1 %i.tt, i1 %i.tq, i1 false
  br i1 %op.rdx, label %.loopexit568, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread: ; preds = %bb.cr
  %i.tu = load i32, ptr %i.f, align 4
  %i.tv = add i32 %i.tu, 1
  store i32 %i.tv, ptr %i.f, align 4
  %i.tw = fcmp ogt float %.pre752, f0x3C0EFA35
  br i1 %i.tw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.tx = call noundef float @cosf(float noundef %.pre752) #17
  %i.ty = call noundef float @sinf(float noundef %.pre752) #17 ; 2 uses
  %i.tz = fneg float %i.ty
  %i.ua = load <2 x float>, ptr %i.sy, align 8
  br label %bb.ct

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cw, %bb.cg, %bb.ch, %bb.cj, %bb.ck, %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, %bb.cn
  %lpad.loopexit.split-lp886 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  br label %.loopexit.split-lp579

bb.ct:                                            ; preds = %bb.cs, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %.sroa.23454.0 = phi float [ %i.tx, %bb.cs ], [ 1.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.18.0 = phi float [ %i.ty, %bb.cs ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %.sroa.8449.0 = phi float [ %i.tz, %bb.cs ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %i.ub = phi <2 x float> [ %i.ua, %bb.cs ], [ %i.tm, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.uc = fadd <2 x float> %i.ub, zeroinitializer ; 4 uses
  %i.ud = fmul float %i.to, 0.000000e+00
  %i.ue = extractelement <2 x float> %i.tn, i64 0
  %i.uf = call float @llvm.fmuladd.f32(float %i.ue, float 0.000000e+00, float 0.000000e+00)
  %i.ug = insertelement <2 x float> %i.tn, float %i.uf, i64 1
  %i.uh = fadd <2 x float> %i.ug, zeroinitializer ; 4 uses
  %i.ui = insertelement <2 x float> %i.tn, float %i.ud, i64 0
  %i.uj = fadd <2 x float> %i.ui, zeroinitializer ; 4 uses
  %i.uk = extractelement <2 x float> %i.uj, i64 0
  %i.ul = call float @llvm.fabs.f32(float %i.uk)  ; 2 uses
  %i.um = insertelement <2 x float> poison, float %.sroa.18.0, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = fmul <2 x float> %i.uj, %i.un           ; 2 uses
  %i.up = insertelement <2 x float> poison, float %.sroa.23454.0, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ur = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uq, <2 x float> %i.uh, <2 x float> %i.uo)
  %i.us = fadd <2 x float> %i.ur, zeroinitializer ; 3 uses
  %i.ut = fmul <2 x float> %i.uj, %i.uq           ; 2 uses
  %i.uu = insertelement <2 x float> poison, float %.sroa.8449.0, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> %i.uh, <2 x float> %i.ut)
  %i.ux = fadd <2 x float> %i.uw, zeroinitializer ; 3 uses
  %i.uy = extractelement <2 x float> %i.uj, i64 1
  %i.uz = fmul float %i.uy, 0.000000e+00
  %i.va = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.vb = insertelement <2 x float> %i.va, float %i.uz, i64 1
  %i.vc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uh, <2 x float> zeroinitializer, <2 x float> %i.vb)
  %i.vd = fadd <2 x float> %i.vc, splat (float 5.000000e-01) ; 3 uses
  %i.ve = extractelement <2 x float> %i.uh, i64 1 ; 3 uses
  %i.vf = extractelement <2 x float> %i.uo, i64 0
  %i.vg = call float @llvm.fmuladd.f32(float %.sroa.23454.0, float %i.ve, float %i.vf)
  %i.vh = fadd float %i.vg, 0.000000e+00          ; 3 uses
  %i.vi = extractelement <2 x float> %i.ut, i64 0
  %i.vj = call float @llvm.fmuladd.f32(float %.sroa.8449.0, float %i.ve, float %i.vi)
  %i.vk = fadd float %i.vj, 0.000000e+00          ; 3 uses
  %i.vl = call float @llvm.fmuladd.f32(float %i.ve, float 0.000000e+00, float %i.ul)
  %i.vm = fadd float %i.vl, 1.000000e+00          ; 3 uses
  %i.vn = fmul <2 x float> %i.ux, zeroinitializer
  %i.vo = fadd <2 x float> %i.us, %i.vn
  %i.vp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> zeroinitializer, <2 x float> %i.vo) ; 3 uses
  %i.vq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.us, <2 x float> zeroinitializer, <2 x float> %i.ux)
  %i.vr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vd, <2 x float> zeroinitializer, <2 x float> %i.vq) ; 3 uses
  %i.vs = fmul <2 x float> %i.ux, splat (float -5.000000e-01)
  %i.vt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.us, <2 x float> splat (float -5.000000e-01), <2 x float> %i.vs)
  %i.vu = fadd <2 x float> %i.vd, %i.vt           ; 3 uses
  %i.vv = fmul float %i.vk, 0.000000e+00
  %i.vw = fadd float %i.vh, %i.vv
  %i.vx = call float @llvm.fmuladd.f32(float %i.vm, float 0.000000e+00, float %i.vw) ; 3 uses
  %i.vy = call float @llvm.fmuladd.f32(float %i.vh, float 0.000000e+00, float %i.vk)
  %i.vz = call float @llvm.fmuladd.f32(float %i.vm, float 0.000000e+00, float %i.vy) ; 3 uses
  %i.wa = fmul float %i.vk, -5.000000e-01
  %i.wb = call float @llvm.fmuladd.f32(float %i.vh, float -5.000000e-01, float %i.wa)
  %i.wc = fadd float %i.vm, %i.wb                 ; 3 uses
  %i.wd = fmul <2 x float> %i.vr, zeroinitializer
  %i.we = fadd <2 x float> %i.vp, %i.wd
  %i.wf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vp, <2 x float> zeroinitializer, <2 x float> %i.vr)
  %i.wg = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wh = fmul <2 x float> %i.wg, %i.vr
  %i.wi = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wi, <2 x float> %i.vp, <2 x float> %i.wh)
  %i.wk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vu, <2 x float> zeroinitializer, <2 x float> %i.we) ; 3 uses
  %i.wl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vu, <2 x float> zeroinitializer, <2 x float> %i.wf) ; 3 uses
  %i.wm = fadd <2 x float> %i.vu, %i.wj           ; 3 uses
  %i.wn = fmul float %i.vz, 0.000000e+00
  %i.wo = fadd float %i.vx, %i.wn
  %i.wp = call float @llvm.fmuladd.f32(float %i.wc, float 0.000000e+00, float %i.wo) ; 2 uses
  %i.wq = call float @llvm.fmuladd.f32(float %i.vx, float 0.000000e+00, float %i.vz)
  %i.wr = call float @llvm.fmuladd.f32(float %i.wc, float 0.000000e+00, float %i.wq) ; 2 uses
  %i.ws = extractelement <2 x float> %i.uc, i64 1
  %i.wt = fmul float %i.ws, %i.vz
  %i.wu = extractelement <2 x float> %i.uc, i64 0
  %i.wv = call float @llvm.fmuladd.f32(float %i.wu, float %i.vx, float %i.wt)
  %i.ww = fadd float %i.wc, %i.wv                 ; 2 uses
  %.not243676 = icmp eq i32 %i.th, 0
  br i1 %.not243676, label %.loopexit568, label %.lr.ph679.preheader

.lr.ph679.preheader:                              ; preds = %bb.ct
  %i.wx = add nsw i64 %.idx, -12                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.wx, 48
  br i1 %min.iters.check, label %.lr.ph679.preheader884, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph679.preheader
  %i.wy = udiv i64 %i.wx, 12
  %i.wz = add nuw nsw i64 %i.wy, 1                ; 2 uses
  %i.xa = and i64 %i.wz, 3                        ; 2 uses
  %i.xb = icmp eq i64 %i.xa, 0
  %i.xc = select i1 %i.xb, i64 4, i64 %i.xa
  %n.vec = sub nsw i64 %i.wz, %i.xc               ; 2 uses
end_hunk_0
