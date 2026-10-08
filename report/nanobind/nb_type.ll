Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_type?download=true
inline.NumInlined: 874
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE:bb.a
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %.0338.i, i64 8
  %.val.i.i = load ptr, ptr %i.ct, align 8
  %i.cu = icmp eq ptr %i.cs, %.val.i.i
  br i1 %i.cu, label %.thread532.i, label %bb.as, !prof !10

bb.as:                                            ; preds = %_ZL9Py_DECREFP7_object.exit.i
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.at:                                            ; preds = %_ZNKR8nanobind6handle7dec_refEv.exit461.i
  br i1 %.not389.i, label %.thread543.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cw = invoke ptr @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPKSt9type_infoPN8nanobind6detail9type_dataEENS_9robin_mapIS5_S9_NS7_17std_typeinfo_hashENS7_15std_typeinfo_eqESaISA_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESC_SD_SE_Lb0ESH_E4findIS5_EENSL_14robin_iteratorILb0EEERKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
          to label %bb.av unwind label %bb.ax     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.da
  %.not587.i = icmp eq ptr %i.cw, %i.db
  br i1 %.not587.i, label %bb.aw, label %bb.ay, !prof !8

bb.aw:                                            ; preds = %bb.av
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fa

bb.ay:                                            ; preds = %bb.av
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not404.i = icmp eq ptr %i.dg, null
  br i1 %.not404.i, label %.thread543.i, label %.thread532.i

.thread532.i:                                     ; preds = %bb.ay, %_ZL9Py_DECREFP7_object.exit.i
  %.1339537.i = phi ptr [ %i.dg, %bb.ay ], [ %.0338.i, %_ZL9Py_DECREFP7_object.exit.i ] ; 5 uses
  %.1341536.i = phi i1 [ false, %bb.ay ], [ %i.ck, %_ZL9Py_DECREFP7_object.exit.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.1339537.i, i64 920 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1339537.i, i64 924
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = or i32 %i.dj, %i.d
  %i.dl = load i32, ptr %i.dh, align 8
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dm, 24
  %i.do = getelementptr inbounds nuw i8, ptr %.1339537.i, i64 928
  %i.dp = load i32, ptr %i.do, align 8            ; 2 uses
  %i.dq = icmp ugt i32 %i.dp, 8
  %i.dr = zext i32 %i.dp to i64
  %i.ds = add nsw i64 %i.dr, -8
  %i.dt = select i1 %i.dq, i64 %i.ds, i64 0
  %.0346595.i = add nuw nsw i64 %i.dn, %i.dt
  %.2334596.i = call i64 @llvm.umax.i64(i64 %.0346595.i, i64 %.0332.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1339537.i, i64 256
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not407597.i = icmp eq ptr %i.dv, null
  br i1 %.not407597.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread532.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ek, i64 920
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add nuw nsw i64 %i.ea, 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ek, i64 928
  %i.ed = load i32, ptr %i.ec, align 8            ; 2 uses
  %i.ee = icmp ugt i32 %i.ed, 8
  %i.ef = zext i32 %i.ed to i64
  %i.eg = add nsw i64 %i.ef, -8
  %i.eh = select i1 %i.ee, i64 %i.eg, i64 0
  %.0346.i = add nuw nsw i64 %i.eb, %i.eh
  %.2334.i = call i64 @llvm.umax.i64(i64 %.0346.i, i64 %.2334598.i) ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ek, i64 256
  %i.ej = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not407.i = icmp eq ptr %i.ej, null
  br i1 %.not407.i, label %._crit_edge.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph.i
  %i.ek = phi ptr [ %i.dv, %.lr.ph.i ], [ %i.ej, %bb.az ] ; 4 uses
  %.2334598.i = phi i64 [ %.2334596.i, %.lr.ph.i ], [ %.2334.i, %bb.az ] ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %.val.i463.i = load ptr, ptr %i.el, align 8
  %i.em = icmp eq ptr %i.dx, %.val.i463.i
  br i1 %i.em, label %bb.az, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ba, %bb.az, %.thread532.i
  %.2334.lcssa.i = phi i64 [ %.2334596.i, %.thread532.i ], [ %.2334598.i, %bb.ba ], [ %.2334.i, %bb.az ]
  %i.en = and i32 %i.dj, 256
  %i.eo = icmp ne i32 %i.en, 0
  br label %.thread543.i

.thread543.i:                                     ; preds = %._crit_edge.i, %bb.ay, %bb.at
  %or.cond9.i = phi i1 [ %.not395.i, %._crit_edge.i ], [ false, %bb.ay ], [ false, %bb.at ]
  %.1557.in.in.i = phi i32 [ %i.dk, %._crit_edge.i ], [ %i.d, %bb.ay ], [ %i.d, %bb.at ] ; 3 uses
  %.3335555.i = phi i64 [ %.2334.lcssa.i, %._crit_edge.i ], [ %.0332.i, %bb.ay ], [ %.0332.i, %bb.at ]
  %.0342554.i = phi ptr [ %i.dh, %._crit_edge.i ], [ null, %bb.ay ], [ null, %bb.at ] ; 3 uses
  %.1341529553.i = phi i1 [ %.1341536.i, %._crit_edge.i ], [ false, %bb.ay ], [ false, %bb.at ]
  %.1339530552.i = phi ptr [ %.1339537.i, %._crit_edge.i ], [ null, %bb.ay ], [ null, %bb.at ]
  %.not404531551.i = phi i1 [ false, %._crit_edge.i ], [ true, %bb.ay ], [ true, %bb.at ]
  %i.ep = phi i1 [ %i.eo, %._crit_edge.i ], [ false, %bb.ay ], [ false, %bb.at ]
  %.1313556.in.i = and i32 %.1557.in.in.i, 1024
  %.1313556.not.not.i = icmp eq i32 %.1313556.in.i, 0 ; 2 uses
  %.1557.in.i = and i32 %.1557.in.in.i, 128
  %.1557.not.not.not.i = icmp eq i32 %.1557.in.i, 0
  %i.eq = add nuw nsw i64 %.3335555.i, 7
  %i.er = and i64 %i.eq, -8                       ; 5 uses
  %i.es = invoke noundef ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.bv, ptr noundef null)
          to label %_ZNK8nanobind3str5c_strEv.exit.i unwind label %bb.bd

_ZNK8nanobind3str5c_strEv.exit.i:                 ; preds = %.thread543.i
  %i.et = invoke noundef ptr @_ZN8nanobind6detail12strdup_checkEPKc(ptr noundef %i.es)
          to label %bb.bb unwind label %bb.bd     ; 2 uses

bb.bb:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %12, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr %i.et, ptr %14, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ev = trunc i64 %i.er to i32                  ; 4 uses
  store i32 %i.ev, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 0, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store i32 1024, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %13, ptr %i.ey, align 8
  br i1 %.not404531551.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 48, ptr %13, align 16
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.1339530552.i, ptr %.sroa.4142.0..sroa_idx.i, align 8
  br label %bb.be

bb.bd:                                            ; preds = %_ZNK8nanobind3str5c_strEv.exit.i, %.thread543.i
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.fa

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.0347.i = phi ptr [ %i.ez, %bb.bc ], [ %13, %bb.bb ] ; 9 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0347.i, i64 16
  store i32 60, ptr %.0347.i, align 8
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0347.i, i64 8
  store ptr @_ZN8nanobind6detailL9inst_initEP7_objectS2_S2_, ptr %.sroa.4139.0..sroa_idx.i, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.0347.i, i64 32
  store i32 65, ptr %i.fb, align 8
  %.sroa.4136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0347.i, i64 24
  store ptr @_ZN8nanobind6detail12inst_new_intEP11_typeobjectP7_objectS4_, ptr %.sroa.4136.0..sroa_idx.i, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0347.i, i64 48 ; 2 uses
  store i32 52, ptr %i.fc, align 8
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0347.i, i64 40
  store ptr @_ZN8nanobind6detailL12inst_deallocEP7_object, ptr %.sroa.4133.0..sroa_idx.i, align 8
  br i1 %.not388.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.0347.i, i64 64
  store i32 56, ptr %i.fd, align 8
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0347.i, i64 56
  store ptr %i.ff, ptr %.sroa.4130.0..sroa_idx.i, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.1348.i = phi ptr [ %i.fg, %bb.bf ], [ %i.fd, %bb.be ] ; 3 uses
  br i1 %.not391.i, label %.thread558.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bg
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8            ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %.not408601.i = icmp eq i32 %i.fj, 0
  br i1 %.not408601.i, label %.thread558.i, label %.lr.ph609.i.preheader

.lr.ph609.i:                                      ; preds = %bb.bk
  %.not431.i = icmp eq i64 %i.fn, 80
  br i1 %.not431.i, label %bb.bh, label %.lr.ph609.i.preheader, !prof !50

bb.bh:                                            ; preds = %.lr.ph609.i
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

.lr.ph609.i.preheader:                            ; preds = %.preheader.i, %.lr.ph609.i
  %.0375602.i43 = phi i64 [ %i.fn, %.lr.ph609.i ], [ 0, %.preheader.i ] ; 2 uses
  %.0372603.i42 = phi i1 [ %.1373.i, %.lr.ph609.i ], [ false, %.preheader.i ]
  %.0370604.i41 = phi i1 [ %i.fw, %.lr.ph609.i ], [ false, %.preheader.i ]
  %.0368605.i40 = phi i1 [ %i.fs, %.lr.ph609.i ], [ false, %.preheader.i ]
  %.0362606.i39 = phi i8 [ %i.fq, %.lr.ph609.i ], [ 0, %.preheader.i ]
  %.0358607.i38 = phi ptr [ %.1359.i, %.lr.ph609.i ], [ @_ZN8nanobind6detailL18nb_type_vectorcallEP7_objectPKS2_mS2_, %.preheader.i ]
  %.2349608.i37 = phi ptr [ %.3350.i, %.lr.ph609.i ], [ %.1348.i, %.preheader.i ] ; 3 uses
  %i.fk = phi ptr [ %18, %.lr.ph609.i ], [ %i.fi, %.preheader.i ] ; 2 uses
  %i.fl = phi i32 [ %i.gd, %.lr.ph609.i ], [ %i.fj, %.preheader.i ] ; 5 uses
  %i.fm = phi ptr [ %i.gb, %.lr.ph609.i ], [ %i.fi, %.preheader.i ]
  %i.fn = add nuw nsw i64 %.0375602.i43, 1        ; 2 uses
  %i.fo = icmp eq i32 %i.fl, 71
  %i.fp = zext i1 %i.fo to i8
  %i.fq = or i8 %.0362606.i39, %i.fp              ; 2 uses
  %i.fr = icmp eq i32 %i.fl, 73
  %i.fs = or i1 %i.fr, %.0368605.i40              ; 2 uses
  %i.ft = icmp eq i32 %i.fl, 60
  %i.fu = icmp eq i32 %i.fl, 65
  %i.fv = or i1 %i.ft, %i.fu
  %i.fw = or i1 %i.fv, %.0370604.i41              ; 2 uses
  %i.fx = icmp eq i32 %i.fl, 82
  br i1 %i.fx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph609.i.preheader
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  br label %bb.bk, !llvm.loop !40

bb.bj:                                            ; preds = %.lr.ph609.i.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %.2349608.i37, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.2349608.i37, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 16, i1 false)
  %.pre627.i = load ptr, ptr %i.fh, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.gb = phi ptr [ %i.fm, %bb.bi ], [ %.pre627.i, %bb.bj ] ; 2 uses
  %.1373.i = phi i1 [ true, %bb.bi ], [ %.0372603.i42, %bb.bj ] ; 2 uses
  %.1359.i = phi ptr [ %i.fz, %bb.bi ], [ %.0358607.i38, %bb.bj ] ; 2 uses
  %.3350.i = phi ptr [ %.2349608.i37, %bb.bi ], [ %i.ga, %bb.bj ] ; 2 uses
  %i.gc = getelementptr [16 x i8], ptr %i.gb, i64 %.0375602.i43
  %18 = getelementptr i8, ptr %i.gc, i64 16       ; 2 uses
  %i.gd = load i32, ptr %18, align 8              ; 2 uses
  %.not408.i = icmp eq i32 %i.gd, 0
  br i1 %.not408.i, label %._crit_edge610.loopexit.i, label %.lr.ph609.i

._crit_edge610.loopexit.i:                        ; preds = %bb.bk
  %i.ge = xor i1 %i.fw, true
  %i.gf = select i1 %i.ge, i1 true, i1 %.1373.i
  %i.gg = freeze i1 %i.gf
  %i.gh = select i1 %i.gg, ptr %.1359.i, ptr null
  br label %.thread558.i

.thread558.i:                                     ; preds = %._crit_edge610.loopexit.i, %.preheader.i, %bb.bg
  %.4351570.i = phi ptr [ %.1348.i, %bb.bg ], [ %.1348.i, %.preheader.i ], [ %.3350.i, %._crit_edge610.loopexit.i ] ; 13 uses
  %.1363567.i = phi i8 [ 0, %bb.bg ], [ 0, %.preheader.i ], [ %i.fq, %._crit_edge610.loopexit.i ] ; 3 uses
  %.1369565.i = phi i1 [ false, %bb.bg ], [ false, %.preheader.i ], [ %i.fs, %._crit_edge610.loopexit.i ]
  %i.gi = phi ptr [ @_ZN8nanobind6detailL18nb_type_vectorcallEP7_objectPKS2_mS2_, %bb.bg ], [ @_ZN8nanobind6detailL18nb_type_vectorcallEP7_objectPKS2_mS2_, %.preheader.i ], [ %i.gh, %._crit_edge610.loopexit.i ]
  br i1 %.1557.not.not.not.i, label %.thread.i, label %bb.bl

bb.bl:                                            ; preds = %.thread558.i
  %i.gj = add nuw nsw i64 %i.er, 8                ; 2 uses
  store ptr @.str.17, ptr %12, align 16
  %.sroa.491.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 19, ptr %.sroa.491.0..sroa_idx.i, align 8
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.er, ptr %.sroa.593.0..sroa_idx.i, align 16
  %.sroa.694.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %.sroa.694.0..sroa_idx.i, align 8
  %.sroa.796.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr null, ptr %.sroa.796.0..sroa_idx.i, align 16
  %i.gk = trunc nuw i8 %.1363567.i to i1
  br i1 %i.gk, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gl = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 16
  store i32 71, ptr %.4351570.i, align 8
  %.sroa.489.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 8
  store ptr @_ZN8nanobind6detailL13inst_traverseEP7_objectPFiS2_PvES3_, ptr %.sroa.489.0..sroa_idx.i, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 32
  store i32 51, ptr %i.gl, align 8
  %.sroa.486.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 24
  store ptr @_ZN8nanobind6detailL10inst_clearEP7_object, ptr %.sroa.486.0..sroa_idx.i, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.5352.i = phi ptr [ %.4351570.i, %bb.bl ], [ %i.gm, %bb.bm ] ; 4 uses
  %i.gn = trunc i64 %i.gj to i32                  ; 2 uses
  store i32 %i.gn, ptr %i.eu, align 8
  br i1 %.1369565.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.go = getelementptr inbounds nuw i8, ptr %.5352.i, i64 16
  store i32 73, ptr %.5352.i, align 8
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.5352.i, i64 8
  store ptr @_ZN8nanobind6detailL11inst_getsetE, ptr %.sroa.483.0..sroa_idx.i, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.6353.i = phi ptr [ %.5352.i, %bb.bn ], [ %i.go, %bb.bo ] ; 2 uses
  br i1 %.1313556.not.not.i, label %bb.bs, label %.thread686.i

.thread686.i:                                     ; preds = %bb.bp
  store ptr @.str.18, ptr %.0376.sroa.gep.i, align 8
  %.sroa.477.0..sroa_idx692.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 19, ptr %.sroa.477.0..sroa_idx692.i, align 16
  %.sroa.579.0..sroa_idx693.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 %i.gj, ptr %.sroa.579.0..sroa_idx693.i, align 8
  %.sroa.6.0..sroa_idx694.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 1, ptr %.sroa.6.0..sroa_idx694.i, align 16
  %.sroa.780.0..sroa_idx695.i = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr null, ptr %.sroa.780.0..sroa_idx695.i, align 8
  %i.gp = trunc i64 %i.er to i32
  br label %.thread572.i

.thread.i:                                        ; preds = %.thread558.i
  br i1 %.1313556.not.not.i, label %.thread678.i, label %bb.bq

bb.bq:                                            ; preds = %.thread.i
  store ptr @.str.18, ptr %12, align 16
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 19, ptr %.sroa.477.0..sroa_idx.i, align 8
  %.sroa.579.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.er, ptr %.sroa.579.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr null, ptr %.sroa.780.0..sroa_idx.i, align 16
  %i.gq = trunc nuw i8 %.1363567.i to i1
  br i1 %i.gq, label %.thread572.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gr = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 16
  store i32 71, ptr %.4351570.i, align 8
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 8
  store ptr @_ZN8nanobind6detailL13inst_traverseEP7_objectPFiS2_PvES3_, ptr %.sroa.475.0..sroa_idx.i, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 32
  store i32 51, ptr %i.gr, align 8
  %.sroa.472.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.4351570.i, i64 24
  store ptr @_ZN8nanobind6detailL10inst_clearEP7_object, ptr %.sroa.472.0..sroa_idx.i, align 8
  br label %.thread572.i

.thread572.i:                                     ; preds = %bb.br, %bb.bq, %.thread686.i
  %.pre-phi = phi i32 [ %i.ev, %bb.br ], [ %i.ev, %bb.bq ], [ %i.gn, %.thread686.i ] ; 2 uses
  %.0379670697.i = phi i32 [ 0, %bb.br ], [ 0, %bb.bq ], [ %i.gp, %.thread686.i ]
  %.7354.i = phi ptr [ %i.gs, %bb.br ], [ %.4351570.i, %bb.bq ], [ %.6353.i, %.thread686.i ]
  %i.gt = add i32 %.pre-phi, 8
  store i32 %i.gt, ptr %i.eu, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %.thread572.i
  %.pre-phi9 = phi i32 [ %i.ev, %bb.bp ], [ %.0379670697.i, %.thread572.i ]
  %.8355581.i = phi ptr [ %.6353.i, %bb.bp ], [ %.7354.i, %.thread572.i ] ; 3 uses
  %.0378578.i = phi i32 [ 0, %bb.bp ], [ %.pre-phi, %.thread572.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.8355581.i, i64 16
  store i32 72, ptr %.8355581.i, align 8
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.8355581.i, i64 8
  store ptr %12, ptr %.sroa.469.0..sroa_idx.i, align 8
  br label %.thread678.i

.thread678.i:                                     ; preds = %bb.bs, %.thread.i
  %.0379668.i = phi i32 [ %.pre-phi9, %bb.bs ], [ 0, %.thread.i ]
  %.5367579.i = phi i8 [ 1, %bb.bs ], [ %.1363567.i, %.thread.i ]
  %.0378577.i = phi i32 [ %.0378578.i, %bb.bs ], [ 0, %.thread.i ]
  %.9356.i = phi ptr [ %i.gu, %bb.bs ], [ %.4351570.i, %.thread.i ] ; 4 uses
  br i1 %.not393.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.thread678.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.9356.i, i64 16
  store i32 64, ptr %.9356.i, align 8
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.9356.i, i64 8
  store ptr @_ZN8nanobind6detailL20class_getitem_methodE, ptr %.sroa.466.0..sroa_idx.i, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread678.i
  %.10357.i = phi ptr [ %i.gv, %bb.bt ], [ %.9356.i, %.thread678.i ] ; 2 uses
  %i.gw = trunc nuw i8 %.5367579.i to i1
  br i1 %i.gw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gx = load i32, ptr %i.ex, align 8
  %i.gy = or i32 %i.gx, 16384
  store i32 %i.gy, ptr %i.ex, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  store i32 0, ptr %.10357.i, align 8
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.10357.i, i64 8
  store ptr null, ptr %.sroa.463.0..sroa_idx.i, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef ptr @PyType_FromMetaclass(ptr noundef %i.ha, ptr noundef %.0329662.i, ptr noundef nonnull %14, ptr noundef null)
          to label %_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit.i unwind label %bb.by ; 34 uses

_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit.i: ; preds = %bb.bw
  %.not.i = icmp eq ptr %i.hb, null
  br i1 %.not.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @_ZN8nanobind4abi112python_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15)
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #31
  unreachable

bb.by:                                            ; preds = %bb.bz, %bb.bw
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.em

bb.bz:                                            ; preds = %_ZN8nanobind6detailL22nb_type_from_metaclassEP11_typeobjectP7_objectP11PyType_Spec.exit.i
  invoke void @_ZN8nanobind6detail17internals_inc_refEPNS0_12nb_internalsE(ptr noundef nonnull %0)
          to label %bb.ca unwind label %bb.by

bb.ca:                                            ; preds = %bb.bz
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 920 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 924 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(164) %i.he, i8 0, i64 164, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 936
  store ptr %0, ptr %i.hf, align 8
  store i32 %i.ca, ptr %i.hd, align 8
  %i.hg = load i32, ptr %i.c, align 4
  %i.hh = and i32 %i.hg, 524287                   ; 3 uses
  store i32 %i.hh, ptr %i.he, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 928
  store i32 %i.by, ptr %i.hi, align 8
  %i.hj = load ptr, ptr %i.n, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 944 ; 2 uses
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = load ptr, ptr %i.w, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 952
  store ptr %i.hl, ptr %i.hm, align 8
  %i.hn = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ho = and i32 %i.hn, 8
  %.not409.i = icmp eq i32 %i.ho, 0
  br i1 %.not409.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 984
  store ptr %i.hq, ptr %i.hr, align 8
  %.pre628.i = load i32, ptr %i.c, align 4
  br label %bb.cc
end_hunk_0
