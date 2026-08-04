inline.NumInlined: 493
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp20TextureTransformStep7ExecuteEP7aiScene:bb.a
          to label %bb.bo unwind label %bb.bz     ; 8 uses

bb.bo:                                            ; preds = %bb.bn
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.oo, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.op, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oq, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.on, i64 56 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  store ptr %i.os, ptr %i.ot, align 8
  store ptr %i.os, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 72
  store i64 0, ptr %i.ou, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(24) %i.jp) #17
  %i.ov = load i64, ptr %i.kb, align 8
  %i.ow = add i64 %i.ov, 1
  store i64 %i.ow, ptr %i.kb, align 8
  %i.ox = load ptr, ptr %i.mu, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 36
  store i32 4, ptr %i.oy, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.oz = load i8, ptr %i.bh, align 1, !range !34, !noundef !36
  %i.pa = trunc nuw i8 %i.oz to i1
  br i1 %i.pa, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pb = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.br unwind label %bb.bz     ; 8 uses

bb.br:                                            ; preds = %bb.bq
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.pc, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.pd, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 56 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  store ptr %i.pg, ptr %i.ph, align 8
  store ptr %i.pg, ptr %i.pg, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 72
  store i64 0, ptr %i.pi, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, ptr noundef nonnull align 8 dereferenceable(24) %i.jp) #17
  %i.pj = load i64, ptr %i.kb, align 8
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.kb, align 8
  %i.pl = load ptr, ptr %i.mu, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 36
  store i32 5, ptr %i.pm, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bp
  %i.pn = load i8, ptr %i.bi, align 2, !range !34, !noundef !36
  %i.po = trunc nuw i8 %i.pn to i1
  br i1 %i.po, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pp = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bu unwind label %bb.bz     ; 8 uses

bb.bu:                                            ; preds = %bb.bt
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.pq, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.pr, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.pt, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 56 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  store ptr %i.pu, ptr %i.pv, align 8
  store ptr %i.pu, ptr %i.pu, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 72
  store i64 0, ptr %i.pw, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, ptr noundef nonnull align 8 dereferenceable(24) %i.jp) #17
  %i.px = load i64, ptr %i.kb, align 8
  %i.py = add i64 %i.px, 1
  store i64 %i.py, ptr %i.kb, align 8
  %i.pz = load ptr, ptr %i.mu, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 36
  store i32 6, ptr %i.qa, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.qb = load i8, ptr %i.bj, align 1, !range !34, !noundef !36
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qd = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19
          to label %bb.bx unwind label %bb.bz     ; 8 uses

bb.bx:                                            ; preds = %bb.bw
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.qe, i8 0, i64 40, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.qf, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i8 0, i64 16, i1 false)
  store i32 -286331154, ptr %i.qh, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 56 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  store ptr %i.qi, ptr %i.qj, align 8
  store ptr %i.qi, ptr %i.qi, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 72
  store i64 0, ptr %i.qk, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, ptr noundef nonnull align 8 dereferenceable(24) %i.jp) #17
  %i.ql = load i64, ptr %i.kb, align 8
  %i.qm = add i64 %i.ql, 1
  store i64 %i.qm, ptr %i.kb, align 8
  %i.qn = load ptr, ptr %i.mu, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 36
  store i32 7, ptr %i.qo, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %i.qp = load i64, ptr %i.kb, align 8            ; 2 uses
  %i.qq = trunc i64 %i.qp to i32                  ; 2 uses
  %i.qr = icmp ugt i32 %i.qq, 8
  br i1 %i.qr, label %bb.ca, label %.preheader573

bb.bz:                                            ; preds = %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.bb
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.ca:                                            ; preds = %bb.by
  %i.qt = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.qt, label %.preheader573thread-pre-split, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.qv = load i64, ptr %i.kb, align 8
  %i.qw = trunc i64 %i.qv to i32
  store i32 %i.qw, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  store i32 8, ptr %i.i, align 4
  invoke void @_ZN6Assimp6Logger5errorIJjRA32_KciRA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qu, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(32) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(11) @.str.18)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %.preheader573thread-pre-split

bb.cf:                                            ; preds = %bb.cc, %bb.ca
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.cg:                                            ; preds = %bb.cd
  %i.qy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.df

.preheader573thread-pre-split:                    ; preds = %bb.ce, %bb.cb
  %.pr780 = load i64, ptr %i.kb, align 8
  br label %.preheader573

.preheader573:                                    ; preds = %.preheader573thread-pre-split, %bb.by
  %i.qz = phi i64 [ %.pr780, %.preheader573thread-pre-split ], [ %i.qp, %bb.by ]
  %.0218 = phi i32 [ 8, %.preheader573thread-pre-split ], [ %i.qq, %bb.by ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.jq, i64 64, i1 false)
  %.not685 = icmp eq i64 %i.qz, 0
  br i1 %.not685, label %._crit_edge672, label %.lr.ph671

.lr.ph671:                                        ; preds = %.preheader573
  %i.ra = getelementptr inbounds nuw i8, ptr %i.jo, i64 4 ; 4 uses
  %i.rb = trunc nuw i64 %indvars.iv720 to i32
  br label %bb.ch

._crit_edge672:                                   ; preds = %bb.dd, %.preheader573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.critedge678

bb.ch:                                            ; preds = %.lr.ph671, %bb.dd
  %i.rc = phi i64 [ 0, %.lr.ph671 ], [ %i.zw, %bb.dd ]
  %.sroa.0481.3669.in = phi ptr [ %i.jp, %.lr.ph671 ], [ %.sroa.0481.3669, %bb.dd ]
  %.0215667 = phi i32 [ 0, %.lr.ph671 ], [ %i.zv, %bb.dd ] ; 7 uses
  %.sroa.0481.3669 = load ptr, ptr %.sroa.0481.3669.in, align 8 ; 12 uses
  %.not239 = icmp ult i32 %.0215667, %.0218
  br i1 %.not239, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %.sroa.08.012.i = load ptr, ptr %i.rd, align 8  ; 2 uses
  %.not1113.i = icmp eq ptr %.sroa.08.012.i, %i.rd
  br i1 %.not1113.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.i

.lr.ph.ithread-pre-split:                         ; preds = %.noexc329
  %.pr = load i32, ptr %i.b, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ci, %.lr.ph.ithread-pre-split
  %i.re = phi i32 [ %.pr, %.lr.ph.ithread-pre-split ], [ 0, %bb.ci ] ; 2 uses
  %.sroa.08.014.i = phi ptr [ %.sroa.08.0.i, %.lr.ph.ithread-pre-split ], [ %.sroa.08.012.i, %bb.ci ] ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8            ; 2 uses
  %.not.i328 = icmp eq ptr %i.rg, null
  br i1 %.not.i328, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i
  store i32 %i.re, ptr %i.rg, align 4
  br label %.noexc329

bb.ck:                                            ; preds = %.lr.ph.i
  %.not7.i = icmp eq i32 %i.re, 0
  br i1 %.not7.i, label %bb.cl, label %.noexc329

bb.cl:                                            ; preds = %bb.ck
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 24
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 32
  %i.rk = load i32, ptr %i.rj, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 36
  %i.rm = load i32, ptr %i.rl, align 4
  %i.rn = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ri, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %i.rk, i32 noundef %i.rm, i32 noundef 4)
          to label %.noexc329 unwind label %.loopexit571 ; 0 uses

.noexc329:                                        ; preds = %bb.cl, %bb.ck, %bb.cj
  %.sroa.08.0.i = load ptr, ptr %.sroa.08.014.i, align 8 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.08.0.i, %i.rd
  br i1 %.not11.i, label %_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit, label %.lr.ph.ithread-pre-split, !llvm.loop !16

_ZN6Assimp13UpdateUVIndexERKNSt7__cxx114listINS_12TTUpdateInfoESaIS2_EEEj.exit: ; preds = %.noexc329, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.dd

.loopexit571:                                     ; preds = %bb.cl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %bb.cm, %bb.co, %bb.cp, %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cm:                                            ; preds = %bb.ch
  %i.ro = load i32, ptr %i.d, align 4
  %i.rp = add i32 %i.ro, 1
  store i32 %i.rp, ptr %i.d, align 4
  %i.rq = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.cn unwind label %.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.rq, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16
  %3 = load <4 x float>, ptr %i.rr, align 8
  %4 = fpext <4 x float> %3 to <4 x double>       ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %i.rt = load float, ptr %i.rs, align 8
  %i.ru = fmul float %i.rt, f0x42652EE1
  %i.rv = fpext float %i.ru to double
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 40
  %i.rx = load i32, ptr %i.rw, align 8            ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.rx, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i = icmp eq i32 %i.rx, 0
  %switch.select4.i = select i1 %switch.selectcmp3.i, ptr @.str.25, ptr %switch.select.i
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 44
  %i.rz = load i32, ptr %i.ry, align 4            ; 2 uses
  %switch.selectcmp.i330 = icmp eq i32 %i.rz, 2
  %switch.select.i331 = select i1 %switch.selectcmp.i330, ptr @.str.26, ptr @.str.27
  %switch.selectcmp3.i332 = icmp eq i32 %i.rz, 0
  %switch.select4.i333 = select i1 %switch.selectcmp3.i332, ptr @.str.25, ptr %switch.select.i331
  %5 = extractelement <4 x double> %4, i64 0
  %6 = extractelement <4 x double> %4, i64 1
  %7 = extractelement <4 x double> %4, i64 2
  %8 = extractelement <4 x double> %4, i64 3
  %i.sa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.19, i32 noundef %i.rb, i32 noundef %.0215667, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %i.rv, ptr noundef nonnull %switch.select4.i, ptr noundef nonnull %switch.select4.i333) #17 ; 0 uses
  %i.sb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cp unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.sb, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.cq unwind label %.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.rc ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8            ; 3 uses
  %.not240 = icmp eq ptr %i.sd, null
  br i1 %.not240, label %bb.cs, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.cq
  %.sroa.0469.2818 = load ptr, ptr %.sroa.0481.3669, align 8 ; 2 uses
  %.0214819 = add nuw nsw i32 %.0215667, 1        ; 2 uses
  %i.se = icmp ult i32 %.0214819, %.0218
  br i1 %i.se, label %.lr.ph822, label %.loopexit570

.preheader:                                       ; preds = %.lr.ph822
  %.sroa.0469.2 = load ptr, ptr %.sroa.0469.2820, align 8 ; 2 uses
  %.0214 = add nuw nsw i32 %.0214821, 1           ; 2 uses
  %i.sf = icmp ult i32 %.0214, %.0218
  br i1 %i.sf, label %.lr.ph822, label %.loopexit570, !llvm.loop !37

.lr.ph822:                                        ; preds = %.preheader.preheader, %.preheader
  %.0214821 = phi i32 [ %.0214, %.preheader ], [ %.0214819, %.preheader.preheader ]
  %.sroa.0469.2820 = phi ptr [ %.sroa.0469.2, %.preheader ], [ %.sroa.0469.2818, %.preheader.preheader ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0469.2820, i64 36
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = icmp eq i32 %i.sh, %.0215667
  br i1 %i.si, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %.preheader, !llvm.loop !37

.loopexit570:                                     ; preds = %.preheader, %.preheader.preheader
  %.sroa.0469.2.lcssa = phi ptr [ %.sroa.0469.2818, %.preheader.preheader ], [ %.sroa.0469.2, %.preheader ]
  %.pre726 = load ptr, ptr %i.jp, align 8
  %i.sj = icmp eq ptr %.sroa.0469.2.lcssa, %.pre726
  br i1 %i.sj, label %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit, label %bb.cu

_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit: ; preds = %.lr.ph822, %.loopexit570
  call void @_ZdaPv(ptr noundef nonnull %i.sd) #18
  %i.sk = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.sl = zext i32 %i.sk to i64
  %i.sm = mul nuw nsw i64 %i.sl, 12               ; 2 uses
  %i.sn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sm) #19
          to label %bb.cr unwind label %.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %_ZNSt10unique_ptrIA_10aiVector3tIfESt14default_deleteIS2_EED2Ev.exit
  %i.so = icmp eq i32 %i.sk, 0
  br i1 %i.so, label %.sink.split793, label %.sink.split793.sink.split

bb.cs:                                            ; preds = %bb.cq
  %i.sp = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.sq = zext i32 %i.sp to i64
  %i.sr = mul nuw nsw i64 %i.sq, 12               ; 2 uses
  %i.ss = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sr) #19
          to label %bb.ct unwind label %.loopexit.split-lp ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.st = icmp eq i32 %i.sp, 0
  br i1 %i.st, label %.sink.split793, label %.sink.split793.sink.split

.sink.split793.sink.split:                        ; preds = %bb.ct, %bb.cr
  %.sink801 = phi i64 [ %i.sm, %bb.cr ], [ %i.sr, %bb.ct ]
  %.sink795 = phi ptr [ %i.sn, %bb.cr ], [ %i.ss, %bb.ct ] ; 2 uses
  %i.su = add nsw i64 %.sink801, -12              ; 2 uses
  %i.sv = urem i64 %i.su, 12
  %i.sw = sub nuw nsw i64 %i.su, %i.sv
  %i.sx = add nsw i64 %i.sw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sink795, i8 0, i64 %i.sx, i1 false)
  br label %.sink.split793

.sink.split793:                                   ; preds = %.sink.split793.sink.split, %bb.ct, %bb.cr
  %.sink = phi ptr [ %i.sn, %bb.cr ], [ %i.ss, %bb.ct ], [ %.sink795, %.sink.split793.sink.split ] ; 2 uses
  store ptr %.sink, ptr %i.sc, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %.sink.split793, %.loopexit570
  %i.sy = phi ptr [ %i.sd, %.loopexit570 ], [ %.sink, %.sink.split793 ] ; 9 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 16 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 36
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %.not241 = icmp eq ptr %i.sy, %i.te
  br i1 %.not241, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.tf = load i32, ptr %i.ra, align 4
  %i.tg = zext i32 %i.tf to i64
  %i.th = mul nuw nsw i64 %i.tg, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sy, ptr align 4 %i.te, i64 %i.th, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ti = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.tj = zext i32 %i.ti to i64
  %.idx = mul nuw nsw i64 %i.tj, 12               ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sy, i64 %.idx
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 20
  %i.tm = load <4 x float>, ptr %i.sz, align 8
  %.fr847 = freeze <4 x float> %i.tm              ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0481.3669, i64 32
  %.pre727 = load float, ptr %.phi.trans.insert, align 8 ; 4 uses
  %i.tn = fcmp olt float %.pre727, f0x3C0EFA35
  %i.to = fcmp une <4 x float> %.fr847, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.tp = bitcast <4 x i1> %i.to to i4
  %i.tq = icmp eq i4 %i.tp, 0
  %op.rdx = select i1 %i.tq, i1 %i.tn, i1 false
  br i1 %op.rdx, label %.loopexit, label %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread

_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread: ; preds = %bb.cw
  %i.tr = load i32, ptr %i.f, align 4
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr %i.f, align 4
  %i.tt = fcmp ogt float %.pre727, f0x3C0EFA35
  %i.tu = extractelement <4 x float> %.fr847, i64 0
  %i.tv = extractelement <4 x float> %.fr847, i64 1
  br i1 %i.tt, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.tw = call noundef float @cosf(float noundef %.pre727) #17
  %i.tx = call noundef float @sinf(float noundef %.pre727) #17 ; 2 uses
  %i.ty = fneg float %i.tx
  %.pre728 = load float, ptr %i.sz, align 8
  %.pre729 = load float, ptr %i.tl, align 4
  br label %bb.cz

bb.cy:                                            ; preds = %bb.dc
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cz:                                            ; preds = %bb.cx, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread
  %i.ua = phi float [ %.pre729, %bb.cx ], [ %i.tv, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.ub = phi float [ %.pre728, %bb.cx ], [ %i.tu, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %.sroa.0447.0 = phi float [ %i.tw, %bb.cx ], [ 1.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.8449.0 = phi float [ %i.ty, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ] ; 2 uses
  %.sroa.18.0 = phi float [ %i.tx, %bb.cx ], [ 0.000000e+00, %_ZNK6Assimp17STransformVecInfo15IsUntransformedEv.exit338.thread ]
  %i.uc = fadd float %i.ub, 0.000000e+00          ; 2 uses
  %i.ud = fadd float %i.ua, 0.000000e+00          ; 2 uses
  %i.ue = extractelement <4 x float> %.fr847, i64 3
  %i.uf = fmul float %i.ue, 0.000000e+00
  %i.ug = extractelement <4 x float> %.fr847, i64 2
  %i.uh = call float @llvm.fmuladd.f32(float %i.ug, float 0.000000e+00, float 0.000000e+00)
  %i.ui = shufflevector <4 x float> %.fr847, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.uj = insertelement <2 x float> %i.ui, float %i.uh, i64 1
  %i.uk = fadd <2 x float> %i.uj, zeroinitializer ; 4 uses
  %i.ul = insertelement <2 x float> %i.ui, float %i.uf, i64 0
  %i.um = fadd <2 x float> %i.ul, zeroinitializer ; 4 uses
  %i.un = extractelement <2 x float> %i.um, i64 0
  %i.uo = call float @llvm.fabs.f32(float %i.un)  ; 2 uses
  %i.up = insertelement <2 x float> poison, float %.sroa.18.0, i64 0
  %i.uq = shufflevector <2 x float> %i.up, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = fmul <2 x float> %i.um, %i.uq           ; 2 uses
  %i.us = insertelement <2 x float> poison, float %.sroa.0447.0, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ut, <2 x float> %i.uk, <2 x float> %i.ur)
  %i.uv = fadd <2 x float> %i.uu, zeroinitializer ; 3 uses
  %i.uw = fmul <2 x float> %i.um, %i.ut           ; 2 uses
  %i.ux = insertelement <2 x float> poison, float %.sroa.8449.0, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.uk, <2 x float> %i.uw)
  %i.va = fadd <2 x float> %i.uz, zeroinitializer ; 3 uses
  %i.vb = extractelement <2 x float> %i.um, i64 1
  %i.vc = fmul float %i.vb, 0.000000e+00
  %i.vd = insertelement <2 x float> poison, float %i.uo, i64 0
  %i.ve = insertelement <2 x float> %i.vd, float %i.vc, i64 1
  %i.vf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> zeroinitializer, <2 x float> %i.ve)
  %i.vg = fadd <2 x float> %i.vf, splat (float 5.000000e-01) ; 3 uses
  %i.vh = extractelement <2 x float> %i.uk, i64 1 ; 3 uses
  %i.vi = extractelement <2 x float> %i.ur, i64 0
  %i.vj = call float @llvm.fmuladd.f32(float %.sroa.0447.0, float %i.vh, float %i.vi)
  %i.vk = fadd float %i.vj, 0.000000e+00          ; 3 uses
  %i.vl = extractelement <2 x float> %i.uw, i64 0
  %i.vm = call float @llvm.fmuladd.f32(float %.sroa.8449.0, float %i.vh, float %i.vl)
  %i.vn = fadd float %i.vm, 0.000000e+00          ; 3 uses
  %i.vo = call float @llvm.fmuladd.f32(float %i.vh, float 0.000000e+00, float %i.uo)
  %i.vp = fadd float %i.vo, 1.000000e+00          ; 3 uses
  %i.vq = fmul <2 x float> %i.va, zeroinitializer
  %i.vr = fadd <2 x float> %i.vq, %i.uv
  %i.vs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vg, <2 x float> zeroinitializer, <2 x float> %i.vr) ; 3 uses
  %i.vt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> zeroinitializer, <2 x float> %i.va)
  %i.vu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vg, <2 x float> zeroinitializer, <2 x float> %i.vt) ; 3 uses
  %i.vv = fmul <2 x float> %i.va, splat (float -5.000000e-01)
  %i.vw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> splat (float -5.000000e-01), <2 x float> %i.vv)
  %i.vx = fadd <2 x float> %i.vg, %i.vw           ; 3 uses
  %i.vy = fmul float %i.vn, 0.000000e+00
  %i.vz = fadd float %i.vy, %i.vk
  %i.wa = call float @llvm.fmuladd.f32(float %i.vp, float 0.000000e+00, float %i.vz) ; 3 uses
  %i.wb = call float @llvm.fmuladd.f32(float %i.vk, float 0.000000e+00, float %i.vn)
  %i.wc = call float @llvm.fmuladd.f32(float %i.vp, float 0.000000e+00, float %i.wb) ; 3 uses
  %i.wd = fmul float %i.vn, -5.000000e-01
  %i.we = call float @llvm.fmuladd.f32(float %i.vk, float -5.000000e-01, float %i.wd)
  %i.wf = fadd float %i.vp, %i.we                 ; 3 uses
  %i.wg = fmul <2 x float> %i.vu, zeroinitializer
  %i.wh = fadd <2 x float> %i.vs, %i.wg
  %i.wi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vs, <2 x float> zeroinitializer, <2 x float> %i.vu)
  %i.wj = insertelement <2 x float> poison, float %i.ud, i64 0
end_hunk_0
