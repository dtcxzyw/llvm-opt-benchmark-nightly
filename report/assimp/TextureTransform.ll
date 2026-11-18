Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/TextureTransform?download=true
inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
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
  %i.oi = load i8, ptr %i.bg, align 4, !range !80, !noundef !81
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
  %i.ow = load i8, ptr %i.bh, align 1, !range !80, !noundef !81
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
  %i.pk = load i8, ptr %i.bi, align 2, !range !80, !noundef !81
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
  %i.py = load i8, ptr %i.bj, align 1, !range !80, !noundef !81
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
  %.promoted680 = load i32, ptr %i.f, align 4
  %.promoted = load i32, ptr %i.d, align 4
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
  %.0207682 = phi i32 [ 0, %.lr.ph685 ], [ %i.zt, %bb.cx ] ; 7 uses
  %3 = phi i32 [ %.promoted, %.lr.ph685 ], [ %6, %bb.cx ] ; 2 uses
  %.0207681 = phi i32 [ %.promoted680, %.lr.ph685 ], [ %5, %bb.cx ] ; 3 uses
  %.sroa.0481.3683 = load ptr, ptr %.sroa.0481.3683.in, align 8 ; 13 uses
  %.not239 = icmp ult i32 %.0207682, %.0210
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
  %i.rj = add i32 %3, 1                           ; 2 uses
  store i32 %i.rj, ptr %i.d, align 4
  %i.rk = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.rk, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 16
  %i.rm = load <4 x float>, ptr %i.rl, align 8
  %i.rn = fpext <4 x float> %i.rm to <4 x double> ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 32
  %i.rp = load float, ptr %i.ro, align 8
  %i.rq = fmul float %i.rp, f0x42652EE1
  %i.rr = fpext float %i.rq to double
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 40
  %i.rt = load i32, ptr %i.rs, align 8            ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.rt, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i = icmp eq i32 %i.rt, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.25, ptr %switch.select.i
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 44
  %i.rv = load i32, ptr %i.ru, align 4            ; 2 uses
  %switch.selectcmp.i330 = icmp eq i32 %i.rv, 2
  %switch.select.i331 = select i1 %switch.selectcmp.i330, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i332 = icmp eq i32 %i.rv, 0
  %switch.select4.i333 = select i1 %switch.selectcmp3.i332, ptr @.str.25, ptr %switch.select.i331
  %i.rw = extractelement <4 x double> %i.rn, i64 0
  %i.rx = extractelement <4 x double> %i.rn, i64 1
  %i.ry = extractelement <4 x double> %i.rn, i64 2
  %i.rz = extractelement <4 x double> %i.rn, i64 3
  %i.sa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.19, i32 noundef %i.qw, i32 noundef %.0207682, double noundef %i.rw, double noundef %i.rx, double noundef %i.ry, double noundef %i.rz, double noundef %i.rr, ptr noundef nonnull %switch.select4.i, ptr noundef nonnull %switch.select4.i333) #17 ; 0 uses
  %i.sb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sb, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck, %bb.ci
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.qx ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8            ; 3 uses
  %.not240 = icmp eq ptr %i.sd, null
  br i1 %.not240, label %bb.cn, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cl
  %.sroa.0469.2853 = load ptr, ptr %.sroa.0481.3683, align 8 ; 2 uses
  %.0206854 = add nuw nsw i32 %.0207682, 1        ; 2 uses
  %i.se = icmp ult i32 %.0206854, %.0210
  br i1 %i.se, label %.lr.ph857, label %.loopexit571

.preheader:                                       ; preds = %.lr.ph857
  %.sroa.0469.2 = load ptr, ptr %.sroa.0469.2855, align 8 ; 2 uses
  %.0206 = add nuw nsw i32 %.0206856, 1           ; 2 uses
  %i.sf = icmp ult i32 %.0206, %.0210
  br i1 %i.sf, label %.lr.ph857, label %.loopexit571, !llvm.loop !71

.lr.ph857:                                        ; preds = %.preheader.preheader, %.preheader
  %.0206856 = phi i32 [ %.0206, %.preheader ], [ %.0206854, %.preheader.preheader ]
  %.sroa.0469.2855 = phi ptr [ %.sroa.0469.2, %.preheader ], [ %.sroa.0469.2853, %.preheader.preheader ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0469.2855, i64 36
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = icmp eq i32 %i.sh, %.0207682
  br i1 %i.si, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %.preheader, !llvm.loop !71

.loopexit571:                                     ; preds = %.preheader, %.preheader.preheader
  %.sroa.0469.2.lcssa = phi ptr [ %.sroa.0469.2853, %.preheader.preheader ], [ %.sroa.0469.2, %.preheader ]
  %.pre751 = load ptr, ptr %i.jm, align 8
  %i.sj = icmp eq ptr %.sroa.0469.2.lcssa, %.pre751
  br i1 %i.sj, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %bb.cp

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph857, %.loopexit571
  call void @_ZdaPv(ptr noundef nonnull %i.sd) #18
  %i.sk = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %i.sm = mul nuw nsw i64 %i.sl, 12               ; 2 uses
  %i.sn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sm) #19
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit
  %i.so = icmp eq i32 %i.sk, 0
  br i1 %i.so, label %.sink.split818, label %.sink.split818.sink.split

bb.cn:                                            ; preds = %bb.cl
  %i.sp = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.sq = zext i32 %i.sp to i64
  %i.sr = mul nuw nsw i64 %i.sq, 12               ; 2 uses
  %i.ss = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sr) #19
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %i.st = icmp eq i32 %i.sp, 0
  br i1 %i.st, label %.sink.split818, label %.sink.split818.sink.split

.sink.split818.sink.split:                        ; preds = %bb.co, %bb.cm
  %.sink826 = phi i64 [ %i.sm, %bb.cm ], [ %i.sr, %bb.co ]
  %.sink820 = phi ptr [ %i.sn, %bb.cm ], [ %i.ss, %bb.co ] ; 2 uses
  %i.su = add nsw i64 %.sink826, -12              ; 2 uses
  %i.sv = urem i64 %i.su, 12
  %i.sw = sub nuw nsw i64 %i.su, %i.sv
  %i.sx = add nsw i64 %i.sw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sink820, i8 0, i64 %i.sx, i1 false)
  br label %.sink.split818

.sink.split818:                                   ; preds = %.sink.split818.sink.split, %bb.co, %bb.cm
  %.sink = phi ptr [ %i.sn, %bb.cm ], [ %i.ss, %bb.co ], [ %.sink820, %.sink.split818.sink.split ] ; 2 uses
  store ptr %.sink, ptr %i.sc, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %.sink.split818, %.loopexit571
  %i.sy = phi ptr [ %i.sd, %.loopexit571 ], [ %.sink, %.sink.split818 ] ; 9 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 16 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 36
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.sy, %i.te
  br i1 %.not241, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tf = load i32, ptr %i.qv, align 4
  %i.tg = zext i32 %i.tf to i64
  %i.th = mul nuw nsw i64 %i.tg, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sy, ptr align 4 %i.te, i64 %i.th, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ti = load i32, ptr %i.qv, align 4            ; 2 uses
  %i.tj = zext i32 %i.ti to i64
  %.idx = mul nuw nsw i64 %i.tj, 12               ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.idx
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 24
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 28
  %i.tn = load <2 x float>, ptr %i.sz, align 8    ; 2 uses
  %i.to = load <2 x float>, ptr %i.tl, align 8    ; 4 uses
  %i.tp = load float, ptr %i.tm, align 4
  %i.tq = shufflevector <2 x float> %i.tn, <2 x float> %i.to, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %.fr882 = freeze <4 x float> %i.tq
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 32
  %.pre752 = load float, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.tr = fcmp olt float %.pre752, f0x3C0EFA35
  %i.ts = fcmp une <4 x float> %.fr882, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.tt = bitcast <4 x i1> %i.ts to i4
  %i.tu = icmp eq i4 %i.tt, 0
  %op.rdx = select i1 %i.tu, i1 %i.tr, i1 false
  br i1 %op.rdx, label %.loopexit568, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread: ; preds = %bb.cr
  %i.tv = add i32 %.0207681, 1                    ; 3 uses
  store i32 %i.tv, ptr %i.f, align 4
  %i.tw = fcmp ogt float %.pre752, f0x3C0EFA35
  br i1 %i.tw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.tx = call noundef float @cosf(float noundef %.pre752) #17
  %i.ty = call noundef float @sinf(float noundef %.pre752) #17 ; 2 uses
  %i.tz = fneg float %i.ty
  %i.ua = load <2 x float>, ptr %i.sz, align 8
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
  %i.ub = phi <2 x float> [ %i.ua, %bb.cs ], [ %i.tn, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.uc = fadd <2 x float> %i.ub, zeroinitializer ; 4 uses
  %i.ud = fmul float %i.tp, 0.000000e+00
  %i.ue = extractelement <2 x float> %i.to, i64 0
  %i.uf = call float @llvm.fmuladd.f32(float %i.ue, float 0.000000e+00, float 0.000000e+00)
  %i.ug = insertelement <2 x float> %i.to, float %i.uf, i64 1
  %i.uh = fadd <2 x float> %i.ug, zeroinitializer ; 4 uses
  %i.ui = insertelement <2 x float> %i.to, float %i.ud, i64 0
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
  %.not243676 = icmp eq i32 %i.ti, 0
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
  %i.xd = mul i64 %n.vec, 12
  %i.xe = getelementptr i8, ptr %i.sy, i64 %i.xd
  %broadcast.splat = shufflevector <2 x float> %i.wl, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat859 = shufflevector <2 x float> %i.wk, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat861 = shufflevector <2 x float> %i.wm, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat863 = shufflevector <2 x float> %i.wl, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat865 = shufflevector <2 x float> %i.wk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat867 = shufflevector <2 x float> %i.wm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert868 = insertelement <4 x float> poison, float %i.wr, i64 0
  %broadcast.splat869 = shufflevector <4 x float> %broadcast.splatinsert868, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert870 = insertelement <4 x float> poison, float %i.wp, i64 0
  %broadcast.splat871 = shufflevector <4 x float> %broadcast.splatinsert870, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert872 = insertelement <4 x float> poison, float %i.ww, i64 0
  %broadcast.splat873 = shufflevector <4 x float> %broadcast.splatinsert872, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.xf = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.sy, i64 %i.xf ; 3 uses
  %i.xg = getelementptr i8, ptr %i.sy, i64 %i.xf  ; 2 uses
  %next.gep874 = getelementptr i8, ptr %i.xg, i64 12
  %i.xh = getelementptr i8, ptr %i.sy, i64 %i.xf  ; 2 uses
  %next.gep875 = getelementptr i8, ptr %i.xh, i64 24
  %i.xi = getelementptr i8, ptr %i.sy, i64 %i.xf  ; 2 uses
  %next.gep876 = getelementptr i8, ptr %i.xi, i64 36
  %i.xj = load float, ptr %next.gep, align 4
  %i.xk = load float, ptr %next.gep874, align 4
  %i.xl = load float, ptr %next.gep875, align 4
  %i.xm = load float, ptr %next.gep876, align 4
  %i.xn = insertelement <4 x float> poison, float %i.xj, i64 0
  %i.xo = insertelement <4 x float> %i.xn, float %i.xk, i64 1
  %i.xp = insertelement <4 x float> %i.xo, float %i.xl, i64 2
  %i.xq = insertelement <4 x float> %i.xp, float %i.xm, i64 3 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.xs = getelementptr i8, ptr %i.xg, i64 16
  %i.xt = getelementptr i8, ptr %i.xh, i64 28
  %i.xu = getelementptr i8, ptr %i.xi, i64 40
  %i.xv = load float, ptr %i.xr, align 4
  %i.xw = load float, ptr %i.xs, align 4
  %i.xx = load float, ptr %i.xt, align 4
  %i.xy = load float, ptr %i.xu, align 4
  %i.xz = insertelement <4 x float> poison, float %i.xv, i64 0
  %i.ya = insertelement <4 x float> %i.xz, float %i.xw, i64 1
  %i.yb = insertelement <4 x float> %i.ya, float %i.xx, i64 2
  %i.yc = insertelement <4 x float> %i.yb, float %i.xy, i64 3 ; 3 uses
  %i.yd = fmul <4 x float> %broadcast.splat, %i.yc
  %i.ye = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat859, <4 x float> %i.xq, <4 x float> %i.yd)
  %i.yf = fadd <4 x float> %broadcast.splat861, %i.ye
  %i.yg = fmul <4 x float> %broadcast.splat863, %i.yc
  %i.yh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat865, <4 x float> %i.xq, <4 x float> %i.yg)
  %i.yi = fadd <4 x float> %broadcast.splat867, %i.yh
  %i.yj = fmul <4 x float> %broadcast.splat869, %i.yc
  %i.yk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat871, <4 x float> %i.xq, <4 x float> %i.yj)
  %i.yl = fadd <4 x float> %broadcast.splat873, %i.yk ; 2 uses
  %i.ym = fdiv <4 x float> %i.yf, %i.yl
  %i.yn = fdiv <4 x float> %i.yi, %i.yl
  %i.yo = shufflevector <4 x float> %i.ym, <4 x float> %i.yn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.yo, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.yp = icmp eq i64 %index.next, %n.vec
  br i1 %i.yp, label %.lr.ph679.preheader884, label %vector.body, !llvm.loop !72

.lr.ph679.preheader884:                           ; preds = %vector.body, %.lr.ph679.preheader
  %.0205677.ph = phi ptr [ %i.sy, %.lr.ph679.preheader ], [ %i.xe, %vector.body ]
  br label %.lr.ph679

.lr.ph679:                                        ; preds = %.lr.ph679.preheader884, %.lr.ph679
  %.0205677 = phi ptr [ %i.zh, %.lr.ph679 ], [ %.0205677.ph, %.lr.ph679.preheader884 ] ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.0205677, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %.0205677, i64 4
  %i.ys = load float, ptr %.0205677, align 4      ; 2 uses
  %i.yt = load float, ptr %i.yr, align 4          ; 2 uses
  %i.yu = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = fmul <2 x float> %i.wl, %i.yv
  %i.yx = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.yy, <2 x float> %i.yw)
  %i.za = fadd <2 x float> %i.wm, %i.yz
  %i.zb = fmul float %i.wr, %i.yt
  %i.zc = call float @llvm.fmuladd.f32(float %i.wp, float %i.ys, float %i.zb)
  %i.zd = fadd float %i.ww, %i.zc
  %i.ze = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zg = fdiv <2 x float> %i.za, %i.zf
  store <2 x float> %i.zg, ptr %.0205677, align 4
  store float 0.000000e+00, ptr %i.yq, align 4
  %i.zh = getelementptr inbounds nuw i8, ptr %.0205677, i64 12 ; 2 uses
  %.not243 = icmp eq ptr %i.zh, %i.tk
  br i1 %.not243, label %.loopexit568, label %.lr.ph679, !llvm.loop !73

.loopexit568:                                     ; preds = %.lr.ph679, %bb.cr, %bb.ct
  %4 = phi i32 [ %.0207681, %bb.cr ], [ %i.tv, %bb.ct ], [ %i.tv, %.lr.ph679 ]
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.0481.3683, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0207682, ptr %i.a, align 4
  %.sroa.08.012.i339 = load ptr, ptr %i.zi, align 8 ; 2 uses
  %.not1113.i340 = icmp eq ptr %.sroa.08.012.i339, %i.zi
  br i1 %.not1113.i340, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, label %.lr.ph.i341

.lr.ph.i341thread-pre-split:                      ; preds = %.noexc347
  %.pr559 = load i32, ptr %i.a, align 4
  br label %.lr.ph.i341

.lr.ph.i341:                                      ; preds = %.loopexit568, %.lr.ph.i341thread-pre-split
  %i.zj = phi i32 [ %.pr559, %.lr.ph.i341thread-pre-split ], [ %.0207682, %.loopexit568 ] ; 2 uses
  %.sroa.08.014.i342 = phi ptr [ %.sroa.08.0.i344, %.lr.ph.i341thread-pre-split ], [ %.sroa.08.012.i339, %.loopexit568 ] ; 5 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8            ; 2 uses
  %.not.i343 = icmp eq ptr %i.zl, null
  br i1 %.not.i343, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i341
  store i32 %i.zj, ptr %i.zl, align 4
  br label %.noexc347

bb.cv:                                            ; preds = %.lr.ph.i341
  %.not7.i346 = icmp eq i32 %i.zj, 0
  br i1 %.not7.i346, label %bb.cw, label %.noexc347

bb.cw:                                            ; preds = %bb.cv
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 24
  %i.zn = load ptr, ptr %i.zm, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 32
  %i.zp = load i32, ptr %i.zo, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i342, i64 36
  %i.zr = load i32, ptr %i.zq, align 4
  %i.zs = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.zn, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %i.zp, i32 noundef %i.zr, i32 noundef 4)
          to label %.noexc347 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc347:                                        ; preds = %bb.cw, %bb.cv, %bb.cu
  %.sroa.08.0.i344 = load ptr, ptr %.sroa.08.014.i342, align 8 ; 2 uses
  %.not11.i345 = icmp eq ptr %.sroa.08.0.i344, %i.zi
  br i1 %.not11.i345, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, label %.lr.ph.i341thread-pre-split, !llvm.loop !0

_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348: ; preds = %.noexc347, %.loopexit568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cx

bb.cx:                                            ; preds = %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348, %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit
  %5 = phi i32 [ %4, %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348 ], [ %.0207681, %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit ]
  %6 = phi i32 [ %i.rj, %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit348 ], [ %3, %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit ]
  %i.zt = add i32 %.0207682, 1                    ; 2 uses
  %i.zu = zext i32 %i.zt to i64                   ; 2 uses
  %i.zv = load i64, ptr %i.jy, align 8
  %i.zw = icmp ugt i64 %i.zv, %i.zu
  br i1 %i.zw, label %bb.cc, label %._crit_edge686, !llvm.loop !74

.critedge692:                                     ; preds = %._crit_edge686, %.loopexit590, %.critedge
  %indvars.iv.next747 = add nuw nsw i64 %indvars.iv746, 1 ; 2 uses
  %i.zx = load i32, ptr %i.l, align 8
  %i.zy = zext i32 %i.zx to i64
  %i.zz = icmp samesign ult i64 %indvars.iv.next747, %i.zy
  br i1 %i.zz, label %bb.an, label %._crit_edge691, !llvm.loop !75

.loopexit.split-lp579:                            ; preds = %.loopexit.split-lp579.loopexit.split-lp, %bb.cb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn249 = phi { ptr, i32 } [ %i.qt, %bb.cb ], [ %lpad.loopexit.split-lp886, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp705, %.loopexit.split-lp579.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.loopexit.split-lp585.loopexit.split-lp

bb.cy:                                            ; preds = %._crit_edge691
  br i1 %i.ji, label %bb.de, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aaa = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.aaa, 0
  br i1 %.not, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aab = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.db unwind label %.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN6Assimp6Logger4infoIJRA31_KcRjRA23_S2_S5_RA13_S2_S5_RA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aab, ptr noundef nonnull align 1 dereferenceable(31) @.str.20, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(23) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str.22, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(2) @.str.23)
          to label %bb.de unwind label %.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader575.preheader, %bb.aw, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit323.thread, %bb.dd, %bb.dc, %bb.db, %bb.da, %._crit_edge691
  %lpad.loopexit.split-lp892 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp585.loopexit.split-lp

bb.dc:                                            ; preds = %bb.cz
  %i.aac = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.dd unwind label %.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aac, ptr noundef nonnull @.str.24)
          to label %bb.de unwind label %.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.db, %bb.dd, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %.not4.i.i.i = icmp eq ptr %.sroa.0545.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i349

.lr.ph.i.i.i349:                                  ; preds = %bb.de, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aai, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i ], [ %.sroa.0545.0, %bb.de ] ; 4 uses
  %i.aad = load ptr, ptr %.05.i.i.i, align 8      ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.aad, %.05.i.i.i
  br i1 %.not8.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i349, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aae, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i ], [ %i.aad, %.lr.ph.i.i.i349 ] ; 3 uses
  %i.aae = load ptr, ptr %.09.i.i.i.i.i.i, align 8 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.aag = load ptr, ptr %i.aaf, align 8          ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aag, %i.aaf
  br i1 %.not8.i.i.i.i.i.i.i.i.i, label %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aah, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aag, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aah = load ptr, ptr %.09.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i.i.i, i64 noundef 40) #18
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aah, %i.aaf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 80) #18
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aae, %.05.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i: ; preds = %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.i.i349
  %i.aai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i350 = icmp eq ptr %i.aai, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i350, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i349, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i, %bb.de
  %.not.i.i1.i = icmp eq ptr %.sroa.0545.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i
  %i.aaj = ptrtoint ptr %.sroa.0545.0 to i64
  %i.aak = sub i64 %.sroa.20.0, %i.aaj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0545.0, i64 noundef %i.aak) #18
  br label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.df
  ret void

.loopexit.split-lp585.loopexit.split-lp:          ; preds = %.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp579
  %.pn256.pn = phi { ptr, i32 } [ %.pn249, %.loopexit.split-lp579 ], [ %lpad.loopexit.split-lp892, %.loopexit.split-lp585.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.dg

bb.dg:                                            ; preds = %.loopexit.split-lp585.loopexit.split-lp, %_ZN6Assimp17STransformVecInfoD2Ev.exit291
  %.pn268.pn.pn = phi { ptr, i32 } [ %.pn268.pn, %_ZN6Assimp17STransformVecInfoD2Ev.exit291 ], [ %.pn256.pn, %.loopexit.split-lp585.loopexit.split-lp ]
  %.not4.i.i.i351 = icmp eq ptr %.sroa.0545.0, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i351, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i367, label %.lr.ph.i.i.i352

.lr.ph.i.i.i352:                                  ; preds = %bb.dg, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363
  %.05.i.i.i353 = phi ptr [ %i.aaq, %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363 ], [ %.sroa.0545.0, %bb.dg ] ; 4 uses
  %i.aal = load ptr, ptr %.05.i.i.i353, align 8   ; 2 uses
  %.not8.i.i.i.i.i.i354 = icmp eq ptr %i.aal, %.05.i.i.i353
  br i1 %.not8.i.i.i.i.i.i354, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363, label %.lr.ph.i.i.i.i.i.i355

.lr.ph.i.i.i.i.i.i355:                            ; preds = %.lr.ph.i.i.i352, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361
  %.09.i.i.i.i.i.i356 = phi ptr [ %i.aam, %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361 ], [ %i.aal, %.lr.ph.i.i.i352 ] ; 3 uses
  %i.aam = load ptr, ptr %.09.i.i.i.i.i.i356, align 8 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i356, i64 56 ; 3 uses
  %i.aao = load ptr, ptr %i.aan, align 8          ; 2 uses
  %.not8.i.i.i.i.i.i.i.i.i357 = icmp eq ptr %i.aao, %i.aan
  br i1 %.not8.i.i.i.i.i.i.i.i.i357, label %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361, label %.lr.ph.i.i.i.i.i.i.i.i.i358

.lr.ph.i.i.i.i.i.i.i.i.i358:                      ; preds = %.lr.ph.i.i.i.i.i.i355, %.lr.ph.i.i.i.i.i.i.i.i.i358
  %.09.i.i.i.i.i.i.i.i.i359 = phi ptr [ %i.aap, %.lr.ph.i.i.i.i.i.i.i.i.i358 ], [ %i.aao, %.lr.ph.i.i.i.i.i.i355 ] ; 2 uses
  %i.aap = load ptr, ptr %.09.i.i.i.i.i.i.i.i.i359, align 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i.i.i.i359, i64 noundef 40) #18
  %.not.i.i.i.i.i.i.i.i.i360 = icmp eq ptr %i.aap, %i.aan
  br i1 %.not.i.i.i.i.i.i.i.i.i360, label %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361, label %.lr.ph.i.i.i.i.i.i.i.i.i358, !llvm.loop !2

_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i358, %.lr.ph.i.i.i.i.i.i355
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i356, i64 noundef 80) #18
  %.not.i.i.i.i.i.i362 = icmp eq ptr %i.aam, %.05.i.i.i353
  br i1 %.not.i.i.i.i.i.i362, label %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363, label %.lr.ph.i.i.i.i.i.i355, !llvm.loop !76

_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363: ; preds = %_ZN6Assimp17STransformVecInfoD2Ev.exit.i.i.i.i.i.i361, %.lr.ph.i.i.i352
  %i.aaq = getelementptr inbounds nuw i8, ptr %.05.i.i.i353, i64 24 ; 2 uses
  %.not.i.i.i364 = icmp eq ptr %i.aaq, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i364, label %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i367, label %.lr.ph.i.i.i352, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i367: ; preds = %_ZSt8_DestroyINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEEEvPT_.exit.i.i.i363, %bb.dg
  %.not.i.i1.i368 = icmp eq ptr %.sroa.0545.0, null
  br i1 %.not.i.i1.i368, label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit369, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i367
  %i.aar = ptrtoint ptr %.sroa.0545.0 to i64
  %i.aas = sub i64 %.sroa.20.0, %i.aar
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0545.0, i64 noundef %i.aas) #18
  br label %_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit369

_ZNSt6vectorINSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEESaIS5_EED2Ev.exit369: ; preds = %bb.dh, %_ZSt8_DestroyIPNSt7__cxx114listIN6Assimp17STransformVecInfoESaIS3_EEES5_EvT_S7_RSaIT0_E.exit.i367
  resume { ptr, i32 } %.pn268.pn.pn
}

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJjRA32_KciRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(11) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !84 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %6, i64 noundef %i.b)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IjEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6) #17
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IjEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJiRA11_KcERA32_S2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(11) %4)
          to label %bb.c unwind label %bb.e
end_hunk_0
