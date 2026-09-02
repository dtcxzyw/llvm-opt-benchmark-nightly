Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIfEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a

bb.q:                                             ; preds = %bb.p
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.r, label %.critedge.i24

bb.r:                                             ; preds = %bb.q
  %i.ax = mul nuw nsw i64 %i.ar, 10
  %i.ay = sext i8 %i.at to i64
  %i.az = add nsw i64 %i.ax, -48
  %i.ba = add nsw i64 %i.az, %i.ay                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0288, i64 2 ; 4 uses
  %.not113.i = icmp eq ptr %i.bb, %i.d
  br i1 %.not113.i, label %.critedge.i24, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.t, label %.critedge.i24

bb.t:                                             ; preds = %bb.s
  %i.bg = mul nsw i64 %i.ba, 10
  %i.bh = sext i8 %i.bc to i64
  %i.bi = add nsw i64 %i.bg, -48
  %i.bj = add nsw i64 %i.bi, %i.bh                ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0288, i64 3 ; 4 uses
  %.not114.i = icmp eq ptr %i.bk, %i.d
  br i1 %.not114.i, label %.critedge.i24, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.v, label %.critedge.i24

bb.v:                                             ; preds = %bb.u
  %i.bp = mul nsw i64 %i.bj, 10
  %i.bq = sext i8 %i.bl to i64
  %i.br = add nsw i64 %i.bp, -48
  %i.bs = add nsw i64 %i.br, %i.bq                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0288, i64 4 ; 4 uses
  %.not115.i = icmp eq ptr %i.bt, %i.d
  br i1 %.not115.i, label %.critedge.i24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48
  %i.bx = icmp ult i32 %i.bw, 10
  br i1 %i.bx, label %bb.x, label %.critedge.i24

bb.x:                                             ; preds = %bb.w
  %i.by = mul nsw i64 %i.bs, 10
  %i.bz = sext i8 %i.bu to i64
  %i.ca = add nsw i64 %i.by, -48
  %i.cb = add nsw i64 %i.ca, %i.bz                ; 2 uses
  %storemerge.i45362 = getelementptr inbounds nuw i8, ptr %.0288, i64 5 ; 3 uses
  %.not116.i363 = icmp eq ptr %storemerge.i45362, %i.d
  br i1 %.not116.i363, label %.critedge.i24, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.cc = sub i64 %i.f, %.0288408
  %scevgep = getelementptr i8, ptr %.0288, i64 %i.cc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %storemerge.i45365 = phi ptr [ %storemerge.i45, %bb.y ], [ %storemerge.i45362, %.lr.ph.preheader ] ; 3 uses
  %storemerge131.i364 = phi i64 [ %i.ck, %bb.y ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %i.cd = load i8, ptr %storemerge.i45365, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.ce = sext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48
  %i.cg = icmp ult i32 %i.cf, 10
  br i1 %i.cg, label %bb.y, label %.critedge.i24

bb.y:                                             ; preds = %.lr.ph
  %i.ch = mul i64 %storemerge131.i364, 10
  %i.ci = sext i8 %i.cd to i64
  %i.cj = add i64 %i.ch, -48
  %i.ck = add i64 %i.cj, %i.ci                    ; 2 uses
  %storemerge.i45 = getelementptr inbounds nuw i8, ptr %storemerge.i45365, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %storemerge.i45, %i.d
  br i1 %.not116.i, label %.critedge.i24, label %.lr.ph, !llvm.loop !0

.critedge.i24:                                    ; preds = %bb.y, %.lr.ph, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.1289 = phi ptr [ %.0288, %bb.o ], [ %i.as, %bb.p ], [ %i.bb, %bb.r ], [ %i.bk, %bb.t ], [ %i.bt, %bb.v ], [ %i.bb, %bb.s ], [ %i.as, %bb.q ], [ %i.bt, %bb.w ], [ %i.bk, %bb.u ], [ %storemerge.i45362, %bb.x ], [ %scevgep, %bb.y ], [ %storemerge.i45365, %.lr.ph ] ; 6 uses
  %.0283 = phi i64 [ 0, %bb.o ], [ %i.ar, %bb.p ], [ %i.ba, %bb.r ], [ %i.bj, %bb.t ], [ %i.bs, %bb.v ], [ %i.ba, %bb.s ], [ %i.ar, %bb.q ], [ %i.bs, %bb.w ], [ %i.bj, %bb.u ], [ %i.cb, %bb.x ], [ %i.ck, %bb.y ], [ %storemerge131.i364, %.lr.ph ] ; 4 uses
  %i.cl = ptrtoint ptr %.1289 to i64
  %i.cm = ptrtoint ptr %.0288 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %.not117.i = icmp eq ptr %.1289, %i.d
  br i1 %.not117.i, label %.critedge133.i, label %bb.z

bb.z:                                             ; preds = %.critedge.i24
  %i.co = load i8, ptr %.1289, align 1, !tbaa !71, !noalias !403
  %i.cp = icmp eq i8 %i.co, 46
  br i1 %i.cp, label %bb.aa, label %.critedge133.i

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %.1289, i64 1 ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = sub i64 %i.f, %i.cr                     ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 7
  br i1 %i.ct, label %.lr.ph372, label %.critedge.i64

.lr.ph372:                                        ; preds = %bb.aa, %.noexc
  %.3286371 = phi i64 [ %i.dj, %.noexc ], [ %.0283, %bb.aa ] ; 2 uses
  %.9297370 = phi ptr [ %i.dk, %.noexc ], [ %i.cq, %bb.aa ] ; 3 uses
  %.0.copyload.i72 = load i64, ptr %.9297370, align 1, !noalias !403 ; 3 uses
  %i.cu = add i64 %.0.copyload.i72, 5063812098665367110
  %i.cv = add i64 %.0.copyload.i72, -3472328296227680304 ; 3 uses
  %i.cw = or i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, -9187201950435737472
  %.not.i69 = icmp eq i64 %i.cx, 0
  br i1 %.not.i69, label %.noexc, label %.critedge.i64.thread.loopexit

.noexc:                                           ; preds = %.lr.ph372
  %i.cy = mul i64 %.3286371, 100000000
  %i.cz = mul i64 %i.cv, 10
  %i.da = lshr i64 %i.cv, 8
  %i.db = add i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = and i64 %i.db, 1095216660735
  %i.dd = mul i64 %i.dc, 4294967296000100
  %i.de = lshr i64 %i.db, 16
  %i.df = and i64 %i.de, 1095216660735
  %i.dg = mul i64 %i.df, 42949672960001
  %i.dh = add i64 %i.dg, %i.dd
  %i.di = lshr i64 %i.dh, 32
  %i.dj = add i64 %i.di, %i.cy                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.9297370, i64 8 ; 3 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.f, %i.dl                     ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 7
  br i1 %i.dn, label %.lr.ph372, label %.critedge.i64, !llvm.loop !1

.critedge.i64:                                    ; preds = %.noexc, %bb.aa
  %.9297.lcssa = phi ptr [ %i.cq, %bb.aa ], [ %i.dk, %.noexc ] ; 3 uses
  %.3286.lcssa = phi i64 [ %.0283, %bb.aa ], [ %i.dj, %.noexc ] ; 2 uses
  %.lcssa = phi i64 [ %i.cs, %bb.aa ], [ %i.dm, %.noexc ]
  %i.do = icmp sgt i64 %.lcssa, 3
  br i1 %i.do, label %.critedge.i64..critedge.i64.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.critedge.i64..critedge.i64.thread_crit_edge:     ; preds = %.critedge.i64
  %.0.copyload.i74.pre = load i32, ptr %.9297.lcssa, align 1, !noalias !403
  br label %.critedge.i64.thread

.critedge.i64.thread.loopexit:                    ; preds = %.lr.ph372
  %i.dp = trunc i64 %.0.copyload.i72 to i32
  br label %.critedge.i64.thread

.critedge.i64.thread:                             ; preds = %.critedge.i64..critedge.i64.thread_crit_edge, %.critedge.i64.thread.loopexit
  %.0.copyload.i74 = phi i32 [ %.0.copyload.i74.pre, %.critedge.i64..critedge.i64.thread_crit_edge ], [ %i.dp, %.critedge.i64.thread.loopexit ] ; 2 uses
  %.9297353 = phi ptr [ %.9297.lcssa, %.critedge.i64..critedge.i64.thread_crit_edge ], [ %.9297370, %.critedge.i64.thread.loopexit ] ; 2 uses
  %.3286351 = phi i64 [ %.3286.lcssa, %.critedge.i64..critedge.i64.thread_crit_edge ], [ %.3286371, %.critedge.i64.thread.loopexit ] ; 2 uses
  %i.dq = add i32 %.0.copyload.i74, 1179010630
  %i.dr = add i32 %.0.copyload.i74, -808464432    ; 3 uses
  %i.ds = or i32 %i.dq, %i.dr
  %i.dt = and i32 %i.ds, -2139062144
  %.not.i76 = icmp eq i32 %i.dt, 0
  br i1 %.not.i76, label %bb.ab, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

bb.ab:                                            ; preds = %.critedge.i64.thread
  %i.du = mul i64 %.3286351, 10000
  %i.dv = mul i32 %i.dr, 10
  %i.dw = lshr i32 %i.dr, 8
  %i.dx = add i32 %i.dv, %i.dw
  %i.dy = and i32 %i.dx, 16711935
  %i.dz = mul i32 %i.dy, 6553601
  %i.ea = lshr i32 %i.dz, 16
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = add i64 %i.du, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.9297353, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit: ; preds = %.critedge.i64, %.critedge.i64.thread, %bb.ab
  %.10298 = phi ptr [ %i.ed, %bb.ab ], [ %.9297353, %.critedge.i64.thread ], [ %.9297.lcssa, %.critedge.i64 ] ; 5 uses
  %.4287 = phi i64 [ %i.ec, %bb.ab ], [ %.3286351, %.critedge.i64.thread ], [ %.3286.lcssa, %.critedge.i64 ] ; 2 uses
  %.not118.i44376 = icmp eq ptr %.10298, %i.d
  br i1 %.not118.i44376, label %.critedge2.i, label %.lr.ph379.preheader

.lr.ph379.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.10298409 = ptrtoaddr ptr %.10298 to i64
  %i.ee = sub i64 %i.f, %.10298409
  %scevgep410 = getelementptr i8, ptr %.10298, i64 %i.ee
  br label %.lr.ph379

.lr.ph379:                                        ; preds = %.lr.ph379.preheader, %bb.ac
  %.2285378 = phi i64 [ %i.en, %bb.ac ], [ %.4287, %.lr.ph379.preheader ] ; 2 uses
  %.8296377 = phi ptr [ %i.ek, %bb.ac ], [ %.10298, %.lr.ph379.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.8296377, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.eg = sext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -48
  %i.ei = icmp ult i32 %i.eh, 10
  br i1 %i.ei, label %bb.ac, label %.critedge2.i

bb.ac:                                            ; preds = %.lr.ph379
  %i.ej = add i8 %i.ef, -48
  %i.ek = getelementptr inbounds nuw i8, ptr %.8296377, i64 1 ; 2 uses
  %i.el = mul i64 %.2285378, 10
  %i.em = zext i8 %i.ej to i64
  %i.en = add i64 %i.el, %i.em                    ; 2 uses
  %.not118.i44 = icmp eq ptr %i.ek, %i.d
  br i1 %.not118.i44, label %.critedge2.i, label %.lr.ph379, !llvm.loop !2

.critedge2.i:                                     ; preds = %bb.ac, %.lr.ph379, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.8296.lcssa = phi ptr [ %.10298, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.8296377, %.lr.ph379 ], [ %scevgep410, %bb.ac ] ; 2 uses
  %.2285.lcssa = phi i64 [ %.4287, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.2285378, %.lr.ph379 ], [ %i.en, %bb.ac ]
  %i.eo = ptrtoint ptr %.8296.lcssa to i64
  %i.ep = sub i64 %i.cr, %i.eo                    ; 2 uses
  %i.eq = sub nsw i64 %i.cn, %i.ep
  br label %.critedge133.i

.critedge133.i:                                   ; preds = %.critedge2.i, %bb.z, %.critedge.i24
  %.2290 = phi ptr [ %.1289, %.critedge.i24 ], [ %.8296.lcssa, %.critedge2.i ], [ %.1289, %bb.z ] ; 8 uses
  %.1284 = phi i64 [ %.0283, %.critedge.i24 ], [ %.2285.lcssa, %.critedge2.i ], [ %.0283, %bb.z ] ; 8 uses
  %.080.i25 = phi i64 [ %i.cn, %.critedge.i24 ], [ %i.eq, %.critedge2.i ], [ %i.cn, %bb.z ] ; 3 uses
  %.074.i = phi i64 [ 0, %.critedge.i24 ], [ %i.ep, %.critedge2.i ], [ 0, %bb.z ] ; 5 uses
  %i.er = icmp eq i64 %.080.i25, 0
  br i1 %i.er, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56, label %bb.ad

bb.ad:                                            ; preds = %.critedge133.i
  %.not120.i27 = icmp eq ptr %.2290, %i.d
  br i1 %.not120.i27, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i8, ptr %.2290, align 1, !tbaa !71, !noalias !403
  switch i8 %i.es, label %bb.an [
    i8 101, label %bb.af
    i8 69, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %.2290, i64 1 ; 4 uses
  %.not125.i28 = icmp eq ptr %i.et, %i.d
  br i1 %.not125.i28, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.ev = icmp eq i8 %i.eu, 45
  br i1 %i.ev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %.2290, i64 2
  br label %.thread

bb.ai:                                            ; preds = %bb.ag
  %i.ex = icmp eq i8 %i.eu, 43
  %i.ey = getelementptr inbounds nuw i8, ptr %.2290, i64 2
  %spec.select = select i1 %i.ex, ptr %i.ey, ptr %i.et
  br label %.thread

.thread:                                          ; preds = %bb.ai, %bb.af, %bb.ah
  %.4292 = phi ptr [ %i.ew, %bb.ah ], [ %i.et, %bb.af ], [ %spec.select, %bb.ai ] ; 5 uses
  %.072.i = phi i1 [ true, %bb.ah ], [ false, %bb.af ], [ false, %bb.ai ]
  %.4292411 = ptrtoaddr ptr %.4292 to i64
  %i.ez = icmp eq ptr %.4292, %i.d
  br i1 %i.ez, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.fa = load i8, ptr %.4292, align 1, !tbaa !71, !noalias !403
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -48
  %i.fd = icmp ult i32 %i.fc, 10
  br i1 %i.fd, label %.lr.ph388.preheader, label %bb.an

.lr.ph388.preheader:                              ; preds = %bb.aj
  %i.fe = sub i64 %i.f, %.4292411
  %scevgep412 = getelementptr i8, ptr %.4292, i64 %i.fe
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %bb.am
  %.073.i387 = phi i64 [ %.1.i39, %bb.am ], [ 0, %.lr.ph388.preheader ] ; 4 uses
  %.7295386 = phi ptr [ %i.fo, %bb.am ], [ %.4292, %.lr.ph388.preheader ] ; 3 uses
  %i.ff = load i8, ptr %.7295386, align 1, !tbaa !71, !noalias !403 ; 2 uses
  %i.fg = sext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.ak, label %.critedge4.i

bb.ak:                                            ; preds = %.lr.ph388
  %i.fj = icmp slt i64 %.073.i387, 268435456
  br i1 %i.fj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fk = add i8 %i.ff, -48
  %i.fl = mul nsw i64 %.073.i387, 10
  %i.fm = zext i8 %i.fk to i64
  %i.fn = add nsw i64 %i.fl, %i.fm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1.i39 = phi i64 [ %i.fn, %bb.al ], [ %.073.i387, %bb.ak ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.7295386, i64 1 ; 2 uses
  %.not127.i37 = icmp eq ptr %i.fo, %i.d
  br i1 %.not127.i37, label %.critedge4.i, label %.lr.ph388, !llvm.loop !3

.critedge4.i:                                     ; preds = %bb.am, %.lr.ph388
  %.7295.lcssa.ph = phi ptr [ %scevgep412, %bb.am ], [ %.7295386, %.lr.ph388 ]
  %.073.i.lcssa.ph = phi i64 [ %.1.i39, %bb.am ], [ %.073.i387, %.lr.ph388 ] ; 2 uses
  %i.fp = sub nsw i64 0, %.073.i.lcssa.ph
  %spec.select.i38 = select i1 %.072.i, i64 %i.fp, i64 %.073.i.lcssa.ph
  %i.fq = add nsw i64 %spec.select.i38, %.074.i
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %bb.ad, %.critedge4.i, %.thread, %bb.aj
  %.6294 = phi ptr [ %.2290, %bb.aj ], [ %.2290, %.thread ], [ %.7295.lcssa.ph, %.critedge4.i ], [ %.2290, %bb.ae ], [ %i.d, %bb.ad ] ; 5 uses
  %.377.i = phi i64 [ %.074.i, %bb.aj ], [ %.074.i, %.thread ], [ %i.fq, %.critedge4.i ], [ %.074.i, %bb.ae ], [ %.074.i, %bb.ad ] ; 10 uses
  %i.fr = icmp sgt i64 %.080.i25, 19
  br i1 %i.fr, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.an, %.critedge8.i
  %.0.i34395 = phi ptr [ %i.fv, %.critedge8.i ], [ %.0288, %bb.an ] ; 2 uses
  %.181.i394 = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.080.i25, %bb.an ] ; 2 uses
  %i.fs = load i8, ptr %.0.i34395, align 1, !tbaa !71 ; 2 uses
  switch i8 %i.fs, label %.critedge6.i [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.ft = icmp eq i8 %i.fs, 48
  %i.fu = sext i1 %i.ft to i64
  %spec.select134.i = add nsw i64 %.181.i394, %i.fu ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i34395, i64 1 ; 2 uses
  %.not129.i35 = icmp eq ptr %i.fv, %i.d
  br i1 %.not129.i35, label %.critedge6.i, label %.preheader, !llvm.loop !4

.critedge6.i:                                     ; preds = %.preheader, %.critedge8.i
  %.181.i.lcssa = phi i64 [ %.181.i394, %.preheader ], [ %spec.select134.i, %.critedge8.i ]
  %i.fw = icmp sgt i64 %.181.i.lcssa, 19
  br i1 %i.fw, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %.critedge, !prof !73

_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56: ; preds = %.critedge133.i, %bb.n, %bb.m
  %i.fx = icmp eq i8 %i.ag, 43
  %or.cond335 = or i1 %i.ah, %i.fx
  %.035.i.idx = zext i1 %or.cond335 to i64
  %.035.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 %.035.i.idx ; 6 uses
  %i.fy = ptrtoint ptr %.035.i to i64
  %i.fz = sub i64 %i.f, %i.fy                     ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 2
  br i1 %i.ga, label %bb.ao, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448

bb.ao:                                            ; preds = %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit56
  %.0.copyload4.i.i = load i24, ptr %.035.i, align 1
  %i.gb = and i24 %.0.copyload4.i.i, -2105377
  switch i24 %i.gb, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread448 [
    i24 5128526, label %bb.ap
    i24 4607561, label %bb.at
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %.035.i, i64 3 ; 5 uses
  %i.gd = select i1 %i.ah, float -qnan, float +qnan
  store float %i.gd, ptr %i.a, align 4, !tbaa !75
  %.not42.i = icmp eq ptr %i.gc, %i.d
  br i1 %.not42.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !71
  %i.gf = icmp ne i8 %i.ge, 40
  %i.gg = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 4 uses
  %.not4352.i = icmp eq ptr %i.gg, %i.d
  %or.cond55.i = select i1 %i.gf, i1 true, i1 %.not4352.i
  br i1 %or.cond55.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.aq
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !71  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 41
  br i1 %i.gi, label %.lr.ph.i._crit_edge, label %.lr.ph397

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.backedge.i, %.lr.ph.i.preheader
  %.053.i.lcssa = phi ptr [ %i.gg, %.lr.ph.i.preheader ], [ %.053.be.i, %.lr.ph.backedge.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.053.i.lcssa, i64 1
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.lr.ph397:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.backedge.i
  %i.gk = phi i8 [ %i.gq, %.lr.ph.backedge.i ], [ %i.gh, %.lr.ph.i.preheader ] ; 3 uses
  %.053.i396 = phi ptr [ %.053.be.i, %.lr.ph.backedge.i ], [ %i.gg, %.lr.ph.i.preheader ] ; 2 uses
  %i.gl = and i8 %i.gk, -33
  %i.gm = add i8 %i.gl, -65
  %or.cond50.i = icmp ult i8 %i.gm, 26
  br i1 %or.cond50.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph397
  %i.gn = add i8 %i.gk, -58
  %or.cond45.i = icmp ult i8 %i.gn, -10
  %i.go = icmp ne i8 %i.gk, 95
  %or.cond49.not58.i = and i1 %i.go, %or.cond45.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.053.i396, i64 1 ; 2 uses
  %.not43.i = icmp eq ptr %i.gp, %i.d
  %or.cond56.i = select i1 %or.cond49.not58.i, i1 true, i1 %.not43.i
  br i1 %or.cond56.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

bb.as:                                            ; preds = %.lr.ph397
  %.old.i = getelementptr inbounds nuw i8, ptr %.053.i396, i64 1 ; 2 uses
  %.not43.old.i = icmp eq ptr %.old.i, %i.d
  br i1 %.not43.old.i, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

.lr.ph.backedge.i:                                ; preds = %bb.as, %bb.ar
  %.053.be.i = phi ptr [ %.old.i, %bb.as ], [ %i.gp, %bb.ar ] ; 3 uses
  %i.gq = load i8, ptr %.053.be.i, align 1, !tbaa !71 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 41
  br i1 %i.gr, label %.lr.ph.i._crit_edge, label %.lr.ph397, !llvm.loop !402

bb.at:                                            ; preds = %bb.ao
  %i.gs = icmp samesign ugt i64 %i.fz, 7
  br i1 %i.gs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gt = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %.0.copyload4.i47.i = load i40, ptr %i.gt, align 1
  %i.gu = and i40 %.0.copyload4.i47.i, -137977929761
  %i.gv = icmp eq i40 %i.gu, 383666179657
  br i1 %i.gv, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sink.i = phi i64 [ 3, %bb.av ], [ 8, %bb.au ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.035.i, i64 %.sink.i
  %i.gx = select i1 %i.ah, float -inf, float +inf
  store float %i.gx, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.critedge:                                        ; preds = %bb.an, %.critedge6.i
  %i.gy = add i64 %.377.i, -11                    ; 2 uses
  %or.cond336 = icmp ult i64 %i.gy, -21
  br i1 %or.cond336, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.gz = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.ha = fadd float %i.gz, 1.000000e+00
  %i.hb = fsub float 1.000000e+00, %i.gz
  %i.hc = fcmp oeq float %i.ha, %i.hb
  br i1 %i.hc, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %.not31.i = icmp ugt i64 %.1284, 16777216
  br i1 %.not31.i, label %.noexc78, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = uitofp nneg i64 %.1284 to float         ; 2 uses
  %i.he = icmp slt i64 %.377.i, 0
  br i1 %i.he, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hf = sub nsw i64 0, %.377.i
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !75
  %i.hi = fdiv float %i.hd, %i.hh
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.377.i
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !75
  %i.hl = fmul float %i.hk, %i.hd
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge32.i = phi float [ %i.hl, %bb.bb ], [ %i.hi, %bb.ba ] ; 2 uses
  store float %storemerge32.i, ptr %i.a, align 4, !tbaa !75
  br i1 %i.ah, label %bb.bd, label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.hm = fneg float %storemerge32.i
  store float %i.hm, ptr %i.a, align 4, !tbaa !75
  br label %_ZN10fast_float25from_chars_float_advancedIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.be:                                            ; preds = %bb.ax
  %i.hn = icmp sgt i64 %.377.i, -1
  br i1 %i.hn, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE12max_mantissaE.const, i64 %.377.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !77
  %.not30.i = icmp ugt i64 %.1284, %i.hp
  br i1 %.not30.i, label %.noexc78, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = icmp eq i64 %.1284, 0
  br i1 %i.hq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hr = select i1 %i.ah, float -0.000000e+00, float 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZN10fast_float22parse_number_slow_pathIfcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  %i.y = add nsw i64 %i.w, -48
  %i.z = add nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0264, i64 2 ; 4 uses
  %.not119.i = icmp eq ptr %i.aa, %1
  br i1 %.not119.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.af = mul nsw i64 %i.z, 10
  %i.ag = sext i8 %i.ab to i64
  %i.ah = add nsw i64 %i.af, -48
  %i.ai = add nsw i64 %i.ah, %i.ag                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0264, i64 3 ; 4 uses
  %.not120.i = icmp eq ptr %i.aj, %1
  br i1 %.not120.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ao = mul nsw i64 %i.ai, 10
  %i.ap = sext i8 %i.ak to i64
  %i.aq = add nsw i64 %i.ao, -48
  %i.ar = add nsw i64 %i.aq, %i.ap                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0264, i64 4 ; 4 uses
  %.not121.i = icmp eq ptr %i.as, %1
  br i1 %.not121.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.ax = mul nsw i64 %i.ar, 10
  %i.ay = sext i8 %i.at to i64
  %i.az = add nsw i64 %i.ax, -48
  %i.ba = add nsw i64 %i.az, %i.ay                ; 2 uses
  %storemerge.i437 = getelementptr inbounds nuw i8, ptr %.0264, i64 5 ; 3 uses
  %.not122.i438 = icmp eq ptr %storemerge.i437, %1
  br i1 %.not122.i438, label %.critedge.i, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %bb.o
  %i.bb = sub i64 %i.a, %.0264525
  %scevgep526 = getelementptr i8, ptr %.0264, i64 %i.bb
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %bb.p
  %storemerge.i440 = phi ptr [ %storemerge.i, %bb.p ], [ %storemerge.i437, %.lr.ph442.preheader ] ; 3 uses
  %storemerge137.i439 = phi i64 [ %i.bj, %bb.p ], [ %i.ba, %.lr.ph442.preheader ] ; 2 uses
  %i.bc = load i8, ptr %storemerge.i440, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph442
  %i.bg = mul i64 %storemerge137.i439, 10
  %i.bh = sext i8 %i.bc to i64
  %i.bi = add i64 %i.bg, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i440, i64 1 ; 2 uses
  %.not122.i = icmp eq ptr %storemerge.i, %1
  br i1 %.not122.i, label %.critedge.i, label %.lr.ph442, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.p, %.lr.ph442, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1265 = phi ptr [ %.0264, %bb.e ], [ %i.r, %bb.g ], [ %i.aa, %bb.i ], [ %i.aj, %bb.k ], [ %i.as, %bb.m ], [ %i.r, %bb.h ], [ %.0264, %bb.f ], [ %i.as, %bb.n ], [ %i.aj, %bb.l ], [ %i.aa, %bb.j ], [ %storemerge.i437, %bb.o ], [ %scevgep526, %bb.p ], [ %storemerge.i440, %.lr.ph442 ] ; 9 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.q, %bb.g ], [ %i.z, %bb.i ], [ %i.ai, %bb.k ], [ %i.ar, %bb.m ], [ %i.q, %bb.h ], [ 0, %bb.f ], [ %i.ar, %bb.n ], [ %i.ai, %bb.l ], [ %i.z, %bb.j ], [ %i.ba, %bb.o ], [ %i.bj, %bb.p ], [ %storemerge137.i439, %.lr.ph442 ] ; 4 uses
  %i.bk = ptrtoint ptr %.1265 to i64              ; 2 uses
  %i.bl = ptrtoint ptr %.0264 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 8 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.thread606, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.bo = icmp eq i8 %i.l, 48
  %i.bp = icmp sgt i64 %i.bm, 1
  %or.cond.i = and i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %.thread606, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not123.i = icmp eq ptr %.1265, %1
  br i1 %.not123.i, label %.thread295, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %.1265, align 1, !tbaa !71, !noalias !408
  %i.br = icmp eq i8 %i.bq, %.sroa.2.8.extract.trunc.i
  br i1 %i.br, label %bb.t, label %.thread295

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.1265, i64 1 ; 4 uses
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 7
  br i1 %i.bw, label %.lr.ph451, label %.critedge.i50

.lr.ph451:                                        ; preds = %bb.t, %.noexc51
  %.7449 = phi i64 [ %i.cm, %.noexc51 ], [ %.0, %bb.t ] ; 2 uses
  %.11448 = phi ptr [ %i.cn, %.noexc51 ], [ %i.bs, %bb.t ] ; 3 uses
  %.0.copyload.i55 = load i64, ptr %.11448, align 1, !noalias !408 ; 3 uses
  %i.bx = add i64 %.0.copyload.i55, 5063812098665367110
  %i.by = add i64 %.0.copyload.i55, -3472328296227680304 ; 3 uses
  %i.bz = or i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -9187201950435737472
  %.not.i53 = icmp eq i64 %i.ca, 0
  br i1 %.not.i53, label %.noexc51, label %.critedge.i50.thread.loopexit

.noexc51:                                         ; preds = %.lr.ph451
  %i.cb = mul i64 %.7449, 100000000
  %i.cc = mul i64 %i.by, 10
  %i.cd = lshr i64 %i.by, 8
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = and i64 %i.ce, 1095216660735
  %i.cg = mul i64 %i.cf, 4294967296000100
  %i.ch = lshr i64 %i.ce, 16
  %i.ci = and i64 %i.ch, 1095216660735
  %i.cj = mul i64 %i.ci, 42949672960001
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = add i64 %i.cl, %i.cb                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.11448, i64 8 ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.bt, %i.co                    ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 7
  br i1 %i.cq, label %.lr.ph451, label %.critedge.i50, !llvm.loop !1

.critedge.i50:                                    ; preds = %.noexc51, %bb.t
  %.11.lcssa = phi ptr [ %i.bs, %bb.t ], [ %i.cn, %.noexc51 ] ; 3 uses
  %.7.lcssa = phi i64 [ %.0, %bb.t ], [ %i.cm, %.noexc51 ] ; 2 uses
  %.lcssa374 = phi i64 [ %i.bv, %bb.t ], [ %i.cp, %.noexc51 ]
  %i.cr = icmp sgt i64 %.lcssa374, 3
  br i1 %i.cr, label %.critedge.i50..critedge.i50.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

.critedge.i50..critedge.i50.thread_crit_edge:     ; preds = %.critedge.i50
  %.0.copyload.i58.pre = load i32, ptr %.11.lcssa, align 1, !noalias !408
  br label %.critedge.i50.thread

.critedge.i50.thread.loopexit:                    ; preds = %.lr.ph451
  %i.cs = trunc i64 %.0.copyload.i55 to i32
  br label %.critedge.i50.thread

.critedge.i50.thread:                             ; preds = %.critedge.i50..critedge.i50.thread_crit_edge, %.critedge.i50.thread.loopexit
  %.0.copyload.i58 = phi i32 [ %.0.copyload.i58.pre, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %i.cs, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.11379 = phi ptr [ %.11.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.11448, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.7377 = phi i64 [ %.7.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.7449, %.critedge.i50.thread.loopexit ] ; 2 uses
  %i.ct = add i32 %.0.copyload.i58, 1179010630
  %i.cu = add i32 %.0.copyload.i58, -808464432    ; 3 uses
  %i.cv = or i32 %i.ct, %i.cu
  %i.cw = and i32 %i.cv, -2139062144
  %.not.i60 = icmp eq i32 %i.cw, 0
  br i1 %.not.i60, label %bb.u, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

bb.u:                                             ; preds = %.critedge.i50.thread
  %i.cx = mul i64 %.7377, 10000
  %i.cy = mul i32 %i.cu, 10
  %i.cz = lshr i32 %i.cu, 8
  %i.da = add i32 %i.cy, %i.cz
  %i.db = and i32 %i.da, 16711935
  %i.dc = mul i32 %i.db, 6553601
  %i.dd = lshr i32 %i.dc, 16
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.11379, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52: ; preds = %.critedge.i50, %.critedge.i50.thread, %bb.u
  %.12 = phi ptr [ %i.dg, %bb.u ], [ %.11379, %.critedge.i50.thread ], [ %.11.lcssa, %.critedge.i50 ] ; 5 uses
  %.8 = phi i64 [ %i.df, %bb.u ], [ %.7377, %.critedge.i50.thread ], [ %.7.lcssa, %.critedge.i50 ] ; 2 uses
  %.not124.i455 = icmp eq ptr %.12, %1
  br i1 %.not124.i455, label %._crit_edge459, label %.lr.ph458.preheader

.lr.ph458.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.12527 = ptrtoaddr ptr %.12 to i64
  %i.dh = sub i64 %i.a, %.12527
  %scevgep528 = getelementptr i8, ptr %.12, i64 %i.dh
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %bb.v
  %.6457 = phi i64 [ %i.dq, %bb.v ], [ %.8, %.lr.ph458.preheader ] ; 2 uses
  %.10456 = phi ptr [ %i.dn, %bb.v ], [ %.12, %.lr.ph458.preheader ] ; 3 uses
  %i.di = load i8, ptr %.10456, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.v, label %._crit_edge459

bb.v:                                             ; preds = %.lr.ph458
  %i.dm = add i8 %i.di, -48
  %i.dn = getelementptr inbounds nuw i8, ptr %.10456, i64 1 ; 2 uses
  %i.do = mul i64 %.6457, 10
  %i.dp = zext i8 %i.dm to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 2 uses
  %.not124.i = icmp eq ptr %i.dn, %1
  br i1 %.not124.i, label %._crit_edge459, label %.lr.ph458, !llvm.loop !6

._crit_edge459:                                   ; preds = %.lr.ph458, %bb.v, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.10.lcssa = phi ptr [ %.12, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %scevgep528, %bb.v ], [ %.10456, %.lr.ph458 ] ; 3 uses
  %.6.lcssa = phi i64 [ %.8, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %i.dq, %bb.v ], [ %.6457, %.lr.ph458 ]
  %i.dr = ptrtoint ptr %.10.lcssa to i64          ; 2 uses
  %i.ds = sub i64 %i.bu, %i.dr                    ; 3 uses
  %i.dt = sub i64 %i.dr, %i.bu
  %i.du = sub nsw i64 %i.bm, %i.ds
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %.thread606, label %.thread295

.thread295:                                       ; preds = %bb.r, %bb.s, %._crit_edge459
  %.081.i308 = phi i64 [ %i.ds, %._crit_edge459 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.087.i307 = phi i64 [ %i.du, %._crit_edge459 ], [ %i.bm, %bb.s ], [ %i.bm, %bb.r ] ; 2 uses
  %.1306 = phi i64 [ %.6.lcssa, %._crit_edge459 ], [ %.0, %bb.s ], [ %.0, %bb.r ] ; 2 uses
  %.sroa.20.0305 = phi i64 [ %i.dt, %._crit_edge459 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 5 uses
  %.sroa.17.0304 = phi ptr [ %i.bs, %._crit_edge459 ], [ null, %bb.s ], [ null, %bb.r ] ; 7 uses
  %.2266303 = phi ptr [ %.10.lcssa, %._crit_edge459 ], [ %.1265, %bb.s ], [ %.1265, %bb.r ] ; 8 uses
  %i.dw = and i64 %3, 1
  %.not125.i = icmp eq i64 %i.dw, 0
  %.not126.i = icmp eq ptr %.2266303, %1          ; 2 uses
  %or.cond = or i1 %.not125.i, %.not126.i
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread295
  %i.dx = load i8, ptr %.2266303, align 1, !tbaa !71, !noalias !408 ; 3 uses
  switch i8 %i.dx, label %bb.x [
    i8 101, label %bb.z
    i8 69, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w, %.thread295
  %i.dy = and i64 %3, 64
  %.not127.i = icmp eq i64 %i.dy, 0
  %or.cond328 = or i1 %.not127.i, %.not126.i
  br i1 %or.cond328, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load i8, ptr %.2266303, align 1, !tbaa !71, !noalias !408 ; 5 uses
  switch i8 %i.dz, label %bb.ak [
    i8 43, label %bb.z
    i8 45, label %bb.z
    i8 100, label %bb.z
    i8 68, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.w, %bb.w
  %i.ea = phi i8 [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dx, %bb.w ], [ %i.dx, %bb.w ]
  switch i8 %i.ea, label %bb.ab [
    i8 101, label %bb.aa
    i8 69, label %bb.aa
    i8 100, label %bb.aa
    i8 68, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %.2266303, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3267 = phi ptr [ %.2266303, %bb.z ], [ %i.eb, %bb.aa ] ; 5 uses
  %.not131.i = icmp eq ptr %.3267, %1
  br i1 %.not131.i, label %.thread309, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr %.3267, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 45
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %.3267, i64 1
  br label %.thread309

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp eq i8 %i.ec, 43
  %spec.select.idx = zext i1 %i.ef to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3267, i64 %spec.select.idx
  br label %.thread309

.thread309:                                       ; preds = %bb.ae, %bb.ab, %bb.ad
  %.4268 = phi ptr [ %i.ee, %bb.ad ], [ %.3267, %bb.ab ], [ %spec.select, %bb.ae ] ; 6 uses
  %.079.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.4268529 = ptrtoaddr ptr %.4268 to i64
  %i.eg = icmp eq ptr %.4268, %1
  br i1 %i.eg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread309
  %i.eh = load i8, ptr %.4268, align 1, !tbaa !71, !noalias !408
  %i.ei = sext i8 %i.eh to i32
  %i.ej = add nsw i32 %i.ei, -48
  %i.ek = icmp ult i32 %i.ej, 10
  br i1 %i.ek, label %.lr.ph468.preheader, label %bb.ag

.lr.ph468.preheader:                              ; preds = %bb.af
  %i.el = sub i64 %i.a, %.4268529
  %scevgep530 = getelementptr i8, ptr %.4268, i64 %i.el
  br label %.lr.ph468

bb.ag:                                            ; preds = %bb.af, %.thread309
  %i.em = and i64 %3, 4
  %.not134.i = icmp eq i64 %i.em, 0
  br i1 %.not134.i, label %.thread606, label %.thread311

.lr.ph468:                                        ; preds = %.lr.ph468.preheader, %bb.aj
  %.080.i467 = phi i64 [ %.1.i, %bb.aj ], [ 0, %.lr.ph468.preheader ] ; 4 uses
  %.9466 = phi ptr [ %i.ew, %bb.aj ], [ %.4268, %.lr.ph468.preheader ] ; 3 uses
  %i.en = load i8, ptr %.9466, align 1, !tbaa !71, !noalias !408 ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -48
  %i.eq = icmp ult i32 %i.ep, 10
  br i1 %i.eq, label %bb.ah, label %.critedge7.i

bb.ah:                                            ; preds = %.lr.ph468
  %i.er = icmp slt i64 %.080.i467, 268435456
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = add i8 %i.en, -48
  %i.et = mul nsw i64 %.080.i467, 10
  %i.eu = zext i8 %i.es to i64
  %i.ev = add nsw i64 %i.et, %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i64 [ %i.ev, %bb.ai ], [ %.080.i467, %bb.ah ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.9466, i64 1 ; 2 uses
  %.not133.i = icmp eq ptr %i.ew, %1
  br i1 %.not133.i, label %.critedge7.i, label %.lr.ph468, !llvm.loop !7

.critedge7.i:                                     ; preds = %bb.aj, %.lr.ph468
  %.9.lcssa.ph = phi ptr [ %scevgep530, %bb.aj ], [ %.9466, %.lr.ph468 ]
  %.080.i.lcssa.ph = phi i64 [ %.1.i, %bb.aj ], [ %.080.i467, %.lr.ph468 ] ; 2 uses
  %i.ex = sub nsw i64 0, %.080.i.lcssa.ph
  %spec.select.i = select i1 %.079.i, i64 %i.ex, i64 %.080.i.lcssa.ph ; 2 uses
  %i.ey = add nsw i64 %spec.select.i, %.081.i308
  br label %.thread311

bb.ak:                                            ; preds = %bb.y, %bb.x
  %i.ez = and i64 %3, 5
  %or.cond329.not.not = icmp eq i64 %i.ez, 1
  br i1 %or.cond329.not.not, label %.thread606, label %.thread311

.thread311:                                       ; preds = %bb.ag, %.critedge7.i, %bb.ak
  %.6270 = phi ptr [ %.2266303, %bb.ak ], [ %.9.lcssa.ph, %.critedge7.i ], [ %.2266303, %bb.ag ] ; 3 uses
  %.384.i = phi i64 [ %.081.i308, %bb.ak ], [ %i.ey, %.critedge7.i ], [ %.081.i308, %bb.ag ] ; 2 uses
  %.5.i = phi i64 [ 0, %bb.ak ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.ag ]
  %i.fa = icmp sgt i64 %.087.i307, 19
  br i1 %i.fa, label %.preheader365, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader365:                                    ; preds = %.thread311
  br i1 %.not.i, label %.preheader, label %.lr.ph477

.lr.ph477:                                        ; preds = %.preheader365, %.critedge11.i
  %.0.i476 = phi ptr [ %i.ff, %.critedge11.i ], [ %.0264, %.preheader365 ] ; 2 uses
  %.188.i475 = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.087.i307, %.preheader365 ] ; 2 uses
  %i.fb = load i8, ptr %.0.i476, align 1, !tbaa !71 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 48                    ; 2 uses
  %i.fd = icmp eq i8 %i.fb, %.sroa.2.8.extract.trunc.i
  %or.cond138.i = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond138.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph477
  %i.fe = sext i1 %i.fc to i64
  %spec.select139.i = add nsw i64 %.188.i475, %i.fe ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i476, i64 1 ; 2 uses
  %.not135.i = icmp eq ptr %i.ff, %1
  br i1 %.not135.i, label %.critedge9.i, label %.lr.ph477, !llvm.loop !8

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph477
  %.188.i.lcssa.ph = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.188.i475, %.lr.ph477 ]
  %i.fg = icmp sgt i64 %.188.i.lcssa.ph, 19
  br i1 %i.fg, label %.preheader, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader:                                       ; preds = %.preheader365, %.critedge9.i
  %.not496 = icmp eq ptr %.0264, %.1265
  br i1 %.not496, label %._crit_edge484.thread, label %.lr.ph483

.lr.ph483:                                        ; preds = %.preheader, %.lr.ph483
  %.3482 = phi i64 [ %i.fl, %.lr.ph483 ], [ 0, %.preheader ]
  %.7271481 = phi ptr [ %i.fm, %.lr.ph483 ], [ %.0264, %.preheader ] ; 2 uses
  %i.fh = mul nuw i64 %.3482, 10
  %i.fi = load i8, ptr %.7271481, align 1, !tbaa !71
  %i.fj = sext i8 %i.fi to i64
  %i.fk = add i64 %i.fh, -48
  %i.fl = add i64 %i.fk, %i.fj                    ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.7271481, i64 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fl, 1000000000000000000
  %i.fo = icmp ne ptr %i.fm, %.1265
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph483, label %._crit_edge484, !llvm.loop !9

._crit_edge484:                                   ; preds = %.lr.ph483
  %i.fq = icmp ugt i64 %i.fl, 999999999999999999
  br i1 %i.fq, label %bb.al, label %._crit_edge484.thread

._crit_edge484.thread:                            ; preds = %.preheader, %._crit_edge484
  %.3.lcssa590 = phi i64 [ %i.fl, %._crit_edge484 ], [ 0, %.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.17.0304, i64 %.sroa.20.0305
  %.not497 = icmp samesign eq i64 %.sroa.20.0305, 0
  br i1 %.not497, label %._crit_edge491, label %.lr.ph490

.lr.ph490:                                        ; preds = %._crit_edge484.thread, %.lr.ph490
  %.4488 = phi i64 [ %i.fw, %.lr.ph490 ], [ %.3.lcssa590, %._crit_edge484.thread ]
  %.8272487 = phi ptr [ %i.fx, %.lr.ph490 ], [ %.sroa.17.0304, %._crit_edge484.thread ] ; 2 uses
  %i.fs = mul nuw i64 %.4488, 10
  %i.ft = load i8, ptr %.8272487, align 1, !tbaa !71
  %i.fu = sext i8 %i.ft to i64
  %i.fv = add i64 %i.fs, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.8272487, i64 1 ; 3 uses
  %i.fy = icmp ult i64 %i.fw, 1000000000000000000
  %i.fz = icmp ne ptr %i.fx, %i.fr
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.lr.ph490, label %._crit_edge491, !llvm.loop !10

._crit_edge491:                                   ; preds = %.lr.ph490, %._crit_edge484.thread
  %.8272.lcssa = phi ptr [ %.sroa.17.0304, %._crit_edge484.thread ], [ %i.fx, %.lr.ph490 ]
  %.4.lcssa = phi i64 [ %.3.lcssa590, %._crit_edge484.thread ], [ %i.fw, %.lr.ph490 ]
  %i.gb = ptrtoint ptr %.sroa.17.0304 to i64
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge484, %._crit_edge491
  %.8272.lcssa.sink = phi ptr [ %.8272.lcssa, %._crit_edge491 ], [ %i.fm, %._crit_edge484 ]
  %.sink = phi i64 [ %i.gb, %._crit_edge491 ], [ %i.bk, %._crit_edge484 ]
  %.5 = phi i64 [ %.4.lcssa, %._crit_edge491 ], [ %i.fl, %._crit_edge484 ]
  %i.gc = ptrtoint ptr %.8272.lcssa.sink to i64
  %i.gd = sub i64 %.sink, %i.gc
  %.485.i = add nsw i64 %i.gd, %.5.i
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

bb.am:                                            ; preds = %bb.a
  br i1 %i.d, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = and i64 %3, 128
  %.not.i13 = icmp ne i64 %i.ge, 0
  %i.gf = icmp eq i8 %.fr, 43
  %or.cond330 = and i1 %.not.i13, %i.gf
  br i1 %or.cond330, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.gh = icmp eq ptr %i.gg, %1
  br i1 %i.gh, label %.thread606, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !71, !noalias !409 ; 3 uses
  %i.gj = sext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48
  %i.gl = icmp ult i32 %i.gk, 10
  %.not110.i = icmp eq i8 %i.gi, %.sroa.2.8.extract.trunc.i
  %or.cond331 = select i1 %i.gl, i1 true, i1 %.not110.i
  br i1 %or.cond331, label %bb.aq, label %.thread606

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gm = phi i8 [ %i.gi, %bb.ap ], [ %.fr, %bb.an ] ; 2 uses
  %.0282 = phi ptr [ %i.gg, %bb.ap ], [ %0, %bb.an ] ; 17 uses
  %.0282520 = ptrtoaddr ptr %.0282 to i64
  %.not111.i = icmp eq ptr %.0282, %1             ; 2 uses
  br i1 %.not111.i, label %.critedge.i14, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = sext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -48
  %i.gp = icmp ult i32 %i.go, 10
  br i1 %i.gp, label %bb.as, label %.critedge.i14

bb.as:                                            ; preds = %bb.ar
  %i.gq = sext i8 %i.gm to i64
  %i.gr = add nsw i64 %i.gq, -48                  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0282, i64 1 ; 4 uses
  %.not112.i = icmp eq ptr %i.gs, %1
  br i1 %.not112.i, label %.critedge.i14, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, -48
  %i.gw = icmp ult i32 %i.gv, 10
  br i1 %i.gw, label %bb.au, label %.critedge.i14

bb.au:                                            ; preds = %bb.at
  %i.gx = mul nuw nsw i64 %i.gr, 10
  %i.gy = sext i8 %i.gt to i64
  %i.gz = add nsw i64 %i.gx, -48
  %i.ha = add nsw i64 %i.gz, %i.gy                ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0282, i64 2 ; 4 uses
  %.not113.i = icmp eq ptr %i.hb, %1
  br i1 %.not113.i, label %.critedge.i14, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.hd = sext i8 %i.hc to i32
  %i.he = add nsw i32 %i.hd, -48
  %i.hf = icmp ult i32 %i.he, 10
  br i1 %i.hf, label %bb.aw, label %.critedge.i14

bb.aw:                                            ; preds = %bb.av
  %i.hg = mul nsw i64 %i.ha, 10
  %i.hh = sext i8 %i.hc to i64
  %i.hi = add nsw i64 %i.hg, -48
  %i.hj = add nsw i64 %i.hi, %i.hh                ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0282, i64 3 ; 4 uses
  %.not114.i = icmp eq ptr %i.hk, %1
  br i1 %.not114.i, label %.critedge.i14, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.hm = sext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.ay, label %.critedge.i14

bb.ay:                                            ; preds = %bb.ax
  %i.hp = mul nsw i64 %i.hj, 10
  %i.hq = sext i8 %i.hl to i64
  %i.hr = add nsw i64 %i.hp, -48
  %i.hs = add nsw i64 %i.hr, %i.hq                ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0282, i64 4 ; 4 uses
  %.not115.i = icmp eq ptr %i.ht, %1
  br i1 %.not115.i, label %.critedge.i14, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.hv = sext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, -48
  %i.hx = icmp ult i32 %i.hw, 10
  br i1 %i.hx, label %bb.ba, label %.critedge.i14

bb.ba:                                            ; preds = %bb.az
  %i.hy = mul nsw i64 %i.hs, 10
  %i.hz = sext i8 %i.hu to i64
  %i.ia = add nsw i64 %i.hy, -48
  %i.ib = add nsw i64 %i.ia, %i.hz                ; 2 uses
  %storemerge.i37386 = getelementptr inbounds nuw i8, ptr %.0282, i64 5 ; 3 uses
  %.not116.i387 = icmp eq ptr %storemerge.i37386, %1
  br i1 %.not116.i387, label %.critedge.i14, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba
  %i.ic = sub i64 %i.a, %.0282520
  %scevgep = getelementptr i8, ptr %.0282, i64 %i.ic
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bb
  %storemerge.i37389 = phi ptr [ %storemerge.i37, %bb.bb ], [ %storemerge.i37386, %.lr.ph.preheader ] ; 3 uses
  %storemerge131.i388 = phi i64 [ %i.ik, %bb.bb ], [ %i.ib, %.lr.ph.preheader ] ; 2 uses
  %i.id = load i8, ptr %storemerge.i37389, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.ie = sext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48
  %i.ig = icmp ult i32 %i.if, 10
  br i1 %i.ig, label %bb.bb, label %.critedge.i14

bb.bb:                                            ; preds = %.lr.ph
  %i.ih = mul i64 %storemerge131.i388, 10
  %i.ii = sext i8 %i.id to i64
  %i.ij = add i64 %i.ih, -48
  %i.ik = add i64 %i.ij, %i.ii                    ; 2 uses
  %storemerge.i37 = getelementptr inbounds nuw i8, ptr %storemerge.i37389, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %storemerge.i37, %1
  br i1 %.not116.i, label %.critedge.i14, label %.lr.ph, !llvm.loop !0

.critedge.i14:                                    ; preds = %bb.bb, %.lr.ph, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.1283 = phi ptr [ %.0282, %bb.aq ], [ %i.gs, %bb.as ], [ %i.hb, %bb.au ], [ %i.hk, %bb.aw ], [ %i.ht, %bb.ay ], [ %i.gs, %bb.at ], [ %.0282, %bb.ar ], [ %i.ht, %bb.az ], [ %i.hk, %bb.ax ], [ %i.hb, %bb.av ], [ %storemerge.i37386, %bb.ba ], [ %scevgep, %bb.bb ], [ %storemerge.i37389, %.lr.ph ] ; 8 uses
  %.0273 = phi i64 [ 0, %bb.aq ], [ %i.gr, %bb.as ], [ %i.ha, %bb.au ], [ %i.hj, %bb.aw ], [ %i.hs, %bb.ay ], [ %i.gr, %bb.at ], [ 0, %bb.ar ], [ %i.hs, %bb.az ], [ %i.hj, %bb.ax ], [ %i.ha, %bb.av ], [ %i.ib, %bb.ba ], [ %i.ik, %bb.bb ], [ %storemerge131.i388, %.lr.ph ] ; 4 uses
  %i.il = ptrtoint ptr %.1283 to i64              ; 2 uses
  %i.im = ptrtoint ptr %.0282 to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %.not117.i = icmp eq ptr %.1283, %1
  br i1 %.not117.i, label %.critedge133.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i14
  %i.io = load i8, ptr %.1283, align 1, !tbaa !71, !noalias !409
  %i.ip = icmp eq i8 %i.io, %.sroa.2.8.extract.trunc.i
  br i1 %i.ip, label %bb.bd, label %.critedge133.i

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %.1283, i64 1 ; 4 uses
  %i.ir = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64               ; 3 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 7
  br i1 %i.iu, label %.lr.ph396, label %.critedge.i49

.lr.ph396:                                        ; preds = %bb.bd, %.noexc
  %.7280395 = phi i64 [ %i.jk, %.noexc ], [ %.0273, %bb.bd ] ; 2 uses
  %.11293394 = phi ptr [ %i.jl, %.noexc ], [ %i.iq, %bb.bd ] ; 3 uses
  %.0.copyload.i57 = load i64, ptr %.11293394, align 1, !noalias !409 ; 3 uses
  %i.iv = add i64 %.0.copyload.i57, 5063812098665367110
  %i.iw = add i64 %.0.copyload.i57, -3472328296227680304 ; 3 uses
  %i.ix = or i64 %i.iv, %i.iw
  %i.iy = and i64 %i.ix, -9187201950435737472
  %.not.i54 = icmp eq i64 %i.iy, 0
  br i1 %.not.i54, label %.noexc, label %.critedge.i49.thread.loopexit

.noexc:                                           ; preds = %.lr.ph396
  %i.iz = mul i64 %.7280395, 100000000
  %i.ja = mul i64 %i.iw, 10
  %i.jb = lshr i64 %i.iw, 8
  %i.jc = add i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = and i64 %i.jc, 1095216660735
  %i.je = mul i64 %i.jd, 4294967296000100
  %i.jf = lshr i64 %i.jc, 16
  %i.jg = and i64 %i.jf, 1095216660735
  %i.jh = mul i64 %i.jg, 42949672960001
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = lshr i64 %i.ji, 32
  %i.jk = add i64 %i.jj, %i.iz                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.11293394, i64 8 ; 3 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.ir, %i.jm                    ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, 7
  br i1 %i.jo, label %.lr.ph396, label %.critedge.i49, !llvm.loop !1

.critedge.i49:                                    ; preds = %.noexc, %bb.bd
  %.11293.lcssa = phi ptr [ %i.iq, %bb.bd ], [ %i.jl, %.noexc ] ; 3 uses
  %.7280.lcssa = phi i64 [ %.0273, %bb.bd ], [ %i.jk, %.noexc ] ; 2 uses
  %.lcssa380 = phi i64 [ %i.it, %bb.bd ], [ %i.jn, %.noexc ]
  %i.jp = icmp sgt i64 %.lcssa380, 3
  br i1 %i.jp, label %.critedge.i49..critedge.i49.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.critedge.i49..critedge.i49.thread_crit_edge:     ; preds = %.critedge.i49
  %.0.copyload.i59.pre = load i32, ptr %.11293.lcssa, align 1, !noalias !409
  br label %.critedge.i49.thread

.critedge.i49.thread.loopexit:                    ; preds = %.lr.ph396
  %i.jq = trunc i64 %.0.copyload.i57 to i32
  br label %.critedge.i49.thread

.critedge.i49.thread:                             ; preds = %.critedge.i49..critedge.i49.thread_crit_edge, %.critedge.i49.thread.loopexit
  %.0.copyload.i59 = phi i32 [ %.0.copyload.i59.pre, %.critedge.i49..critedge.i49.thread_crit_edge ], [ %i.jq, %.critedge.i49.thread.loopexit ] ; 2 uses
  %.11293385 = phi ptr [ %.11293.lcssa, %.critedge.i49..critedge.i49.thread_crit_edge ], [ %.11293394, %.critedge.i49.thread.loopexit ] ; 2 uses
  %.7280383 = phi i64 [ %.7280.lcssa, %.critedge.i49..critedge.i49.thread_crit_edge ], [ %.7280395, %.critedge.i49.thread.loopexit ] ; 2 uses
  %i.jr = add i32 %.0.copyload.i59, 1179010630
  %i.js = add i32 %.0.copyload.i59, -808464432    ; 3 uses
  %i.jt = or i32 %i.jr, %i.js
  %i.ju = and i32 %i.jt, -2139062144
  %.not.i61 = icmp eq i32 %i.ju, 0
  br i1 %.not.i61, label %bb.be, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

bb.be:                                            ; preds = %.critedge.i49.thread
  %i.jv = mul i64 %.7280383, 10000
  %i.jw = mul i32 %i.js, 10
  %i.jx = lshr i32 %i.js, 8
  %i.jy = add i32 %i.jw, %i.jx
  %i.jz = and i32 %i.jy, 16711935
  %i.ka = mul i32 %i.jz, 6553601
  %i.kb = lshr i32 %i.ka, 16
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = add i64 %i.jv, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.11293385, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit: ; preds = %.critedge.i49, %.critedge.i49.thread, %bb.be
  %.12294 = phi ptr [ %i.ke, %bb.be ], [ %.11293385, %.critedge.i49.thread ], [ %.11293.lcssa, %.critedge.i49 ] ; 5 uses
  %.8281 = phi i64 [ %i.kd, %bb.be ], [ %.7280383, %.critedge.i49.thread ], [ %.7280.lcssa, %.critedge.i49 ] ; 2 uses
  %.not118.i36400 = icmp eq ptr %.12294, %1
  br i1 %.not118.i36400, label %.critedge2.i, label %.lr.ph403.preheader

.lr.ph403.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.12294521 = ptrtoaddr ptr %.12294 to i64
  %i.kf = sub i64 %i.a, %.12294521
  %scevgep522 = getelementptr i8, ptr %.12294, i64 %i.kf
  br label %.lr.ph403

.lr.ph403:                                        ; preds = %.lr.ph403.preheader, %bb.bf
  %.6279402 = phi i64 [ %i.ko, %bb.bf ], [ %.8281, %.lr.ph403.preheader ] ; 2 uses
  %.10292401 = phi ptr [ %i.kl, %bb.bf ], [ %.12294, %.lr.ph403.preheader ] ; 3 uses
  %i.kg = load i8, ptr %.10292401, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.kh = sext i8 %i.kg to i32
  %i.ki = add nsw i32 %i.kh, -48
  %i.kj = icmp ult i32 %i.ki, 10
  br i1 %i.kj, label %bb.bf, label %.critedge2.i

bb.bf:                                            ; preds = %.lr.ph403
  %i.kk = add i8 %i.kg, -48
  %i.kl = getelementptr inbounds nuw i8, ptr %.10292401, i64 1 ; 2 uses
  %i.km = mul i64 %.6279402, 10
  %i.kn = zext i8 %i.kk to i64
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %.not118.i36 = icmp eq ptr %i.kl, %1
  br i1 %.not118.i36, label %.critedge2.i, label %.lr.ph403, !llvm.loop !2

.critedge2.i:                                     ; preds = %bb.bf, %.lr.ph403, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.10292.lcssa = phi ptr [ %.12294, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.10292401, %.lr.ph403 ], [ %scevgep522, %bb.bf ] ; 2 uses
  %.6279.lcssa = phi i64 [ %.8281, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.6279402, %.lr.ph403 ], [ %i.ko, %bb.bf ]
  %i.kp = ptrtoint ptr %.10292.lcssa to i64       ; 2 uses
  %i.kq = sub i64 %i.is, %i.kp                    ; 2 uses
  %i.kr = sub i64 %i.kp, %i.is
  %i.ks = sub nsw i64 %i.in, %i.kq
  br label %.critedge133.i

.critedge133.i:                                   ; preds = %.critedge2.i, %bb.bc, %.critedge.i14
  %.2284 = phi ptr [ %.1283, %.critedge.i14 ], [ %.10292.lcssa, %.critedge2.i ], [ %.1283, %bb.bc ] ; 9 uses
  %.sroa.17174.0 = phi ptr [ null, %.critedge.i14 ], [ %i.iq, %.critedge2.i ], [ null, %bb.bc ] ; 7 uses
  %.sroa.20176.0 = phi i64 [ 0, %.critedge.i14 ], [ %i.kr, %.critedge2.i ], [ 0, %bb.bc ] ; 5 uses
  %.1274 = phi i64 [ %.0273, %.critedge.i14 ], [ %.6279.lcssa, %.critedge2.i ], [ %.0273, %bb.bc ] ; 2 uses
  %.080.i15 = phi i64 [ %i.in, %.critedge.i14 ], [ %i.ks, %.critedge2.i ], [ %i.in, %bb.bc ] ; 3 uses
  %.074.i = phi i64 [ 0, %.critedge.i14 ], [ %i.kq, %.critedge2.i ], [ 0, %bb.bc ] ; 3 uses
  %i.kt = icmp eq i64 %.080.i15, 0
  br i1 %i.kt, label %.thread606, label %bb.bg

bb.bg:                                            ; preds = %.critedge133.i
  %i.ku = and i64 %3, 1
  %.not119.i16 = icmp eq i64 %i.ku, 0
  %.not120.i17 = icmp eq ptr %.2284, %1           ; 2 uses
  %or.cond332 = or i1 %.not119.i16, %.not120.i17
  br i1 %or.cond332, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kv = load i8, ptr %.2284, align 1, !tbaa !71, !noalias !409 ; 3 uses
  switch i8 %i.kv, label %bb.bi [
    i8 101, label %bb.bk
    i8 69, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kw = and i64 %3, 64
  %.not121.i32 = icmp eq i64 %i.kw, 0
  %or.cond333 = or i1 %.not121.i32, %.not120.i17
  br i1 %or.cond333, label %bb.bv, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kx = load i8, ptr %.2284, align 1, !tbaa !71, !noalias !409 ; 5 uses
  switch i8 %i.kx, label %bb.bv [
    i8 43, label %bb.bk
    i8 45, label %bb.bk
    i8 100, label %bb.bk
    i8 68, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bh, %bb.bh
  %i.ky = phi i8 [ %i.kx, %bb.bj ], [ %i.kx, %bb.bj ], [ %i.kx, %bb.bj ], [ %i.kx, %bb.bj ], [ %i.kv, %bb.bh ], [ %i.kv, %bb.bh ]
  switch i8 %i.ky, label %bb.bm [
    i8 101, label %bb.bl
    i8 69, label %bb.bl
    i8 100, label %bb.bl
    i8 68, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk
  %i.kz = getelementptr inbounds nuw i8, ptr %.2284, i64 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3285 = phi ptr [ %.2284, %bb.bk ], [ %i.kz, %bb.bl ] ; 5 uses
  %.not125.i18 = icmp eq ptr %.3285, %1
  br i1 %.not125.i18, label %.thread316, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.la = load i8, ptr %.3285, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.lb = icmp eq i8 %i.la, 45
  br i1 %i.lb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lc = getelementptr inbounds nuw i8, ptr %.3285, i64 1
  br label %.thread316

bb.bp:                                            ; preds = %bb.bn
  %i.ld = icmp eq i8 %i.la, 43
  %spec.select334.idx = zext i1 %i.ld to i64
  %spec.select334 = getelementptr inbounds nuw i8, ptr %.3285, i64 %spec.select334.idx
  br label %.thread316

.thread316:                                       ; preds = %bb.bp, %bb.bm, %bb.bo
  %.4286 = phi ptr [ %i.lc, %bb.bo ], [ %.3285, %bb.bm ], [ %spec.select334, %bb.bp ] ; 6 uses
  %.072.i = phi i1 [ true, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bp ]
  %.4286523 = ptrtoaddr ptr %.4286 to i64
  %i.le = icmp eq ptr %.4286, %1
  br i1 %i.le, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.thread316
  %i.lf = load i8, ptr %.4286, align 1, !tbaa !71, !noalias !409
  %i.lg = sext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %.lr.ph412.preheader, label %bb.br

.lr.ph412.preheader:                              ; preds = %bb.bq
  %i.lj = sub i64 %i.a, %.4286523
  %scevgep524 = getelementptr i8, ptr %.4286, i64 %i.lj
  br label %.lr.ph412

bb.br:                                            ; preds = %bb.bq, %.thread316
  %i.lk = and i64 %3, 4
  %.not128.i20 = icmp eq i64 %i.lk, 0
  br i1 %.not128.i20, label %.thread606, label %.thread318

.lr.ph412:                                        ; preds = %.lr.ph412.preheader, %bb.bu
  %.073.i411 = phi i64 [ %.1.i31, %bb.bu ], [ 0, %.lr.ph412.preheader ] ; 4 uses
  %.9291410 = phi ptr [ %i.lu, %bb.bu ], [ %.4286, %.lr.ph412.preheader ] ; 3 uses
  %i.ll = load i8, ptr %.9291410, align 1, !tbaa !71, !noalias !409 ; 2 uses
  %i.lm = sext i8 %i.ll to i32
  %i.ln = add nsw i32 %i.lm, -48
  %i.lo = icmp ult i32 %i.ln, 10
  br i1 %i.lo, label %bb.bs, label %.critedge4.i

bb.bs:                                            ; preds = %.lr.ph412
  %i.lp = icmp slt i64 %.073.i411, 268435456
  br i1 %i.lp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lq = add i8 %i.ll, -48
  %i.lr = mul nsw i64 %.073.i411, 10
  %i.ls = zext i8 %i.lq to i64
  %i.lt = add nsw i64 %i.lr, %i.ls
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i31 = phi i64 [ %i.lt, %bb.bt ], [ %.073.i411, %bb.bs ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.9291410, i64 1 ; 2 uses
  %.not127.i29 = icmp eq ptr %i.lu, %1
  br i1 %.not127.i29, label %.critedge4.i, label %.lr.ph412, !llvm.loop !3

.critedge4.i:                                     ; preds = %bb.bu, %.lr.ph412
  %.9291.lcssa.ph = phi ptr [ %scevgep524, %bb.bu ], [ %.9291410, %.lr.ph412 ]
  %.073.i.lcssa.ph = phi i64 [ %.1.i31, %bb.bu ], [ %.073.i411, %.lr.ph412 ] ; 2 uses
  %i.lv = sub nsw i64 0, %.073.i.lcssa.ph
  %spec.select.i30 = select i1 %.072.i, i64 %i.lv, i64 %.073.i.lcssa.ph ; 2 uses
  %i.lw = add nsw i64 %spec.select.i30, %.074.i
  br label %.thread318

bb.bv:                                            ; preds = %bb.bj, %bb.bi
  %i.lx = and i64 %3, 5
  %or.cond335.not.not = icmp eq i64 %i.lx, 1
  br i1 %or.cond335.not.not, label %.thread606, label %.thread318

.thread318:                                       ; preds = %bb.br, %.critedge4.i, %bb.bv
  %.6288 = phi ptr [ %.2284, %bb.bv ], [ %.9291.lcssa.ph, %.critedge4.i ], [ %.2284, %bb.br ] ; 3 uses
  %.377.i = phi i64 [ %.074.i, %bb.bv ], [ %i.lw, %.critedge4.i ], [ %.074.i, %bb.br ] ; 2 uses
  %.5.i23 = phi i64 [ 0, %bb.bv ], [ %spec.select.i30, %.critedge4.i ], [ 0, %bb.br ]
  %i.ly = icmp sgt i64 %.080.i15, 19
  br i1 %i.ly, label %.preheader368, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader368:                                    ; preds = %.thread318
  br i1 %.not111.i, label %.preheader367, label %.lr.ph421

.lr.ph421:                                        ; preds = %.preheader368, %.critedge8.i
  %.0.i25420 = phi ptr [ %i.md, %.critedge8.i ], [ %.0282, %.preheader368 ] ; 2 uses
  %.181.i419 = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.080.i15, %.preheader368 ] ; 2 uses
  %i.lz = load i8, ptr %.0.i25420, align 1, !tbaa !71 ; 2 uses
  %i.ma = icmp eq i8 %i.lz, 48                    ; 2 uses
  %i.mb = icmp eq i8 %i.lz, %.sroa.2.8.extract.trunc.i
  %or.cond.i27 = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %or.cond.i27, label %.critedge8.i, label %.critedge6.i

.critedge8.i:                                     ; preds = %.lr.ph421
  %i.mc = sext i1 %i.ma to i64
  %spec.select134.i = add nsw i64 %.181.i419, %i.mc ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i25420, i64 1 ; 2 uses
  %.not129.i26 = icmp eq ptr %i.md, %1
  br i1 %.not129.i26, label %.critedge6.i, label %.lr.ph421, !llvm.loop !4

.critedge6.i:                                     ; preds = %.critedge8.i, %.lr.ph421
  %.181.i.lcssa.ph = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.181.i419, %.lr.ph421 ]
  %i.me = icmp sgt i64 %.181.i.lcssa.ph, 19
  br i1 %i.me, label %.preheader367, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader367:                                    ; preds = %.preheader368, %.critedge6.i
  %.not494 = icmp eq ptr %.0282, %.1283
  br i1 %.not494, label %._crit_edge.thread, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader367, %.lr.ph427
  %.3276426 = phi i64 [ %i.mj, %.lr.ph427 ], [ 0, %.preheader367 ]
  %.7289425 = phi ptr [ %i.mk, %.lr.ph427 ], [ %.0282, %.preheader367 ] ; 2 uses
  %i.mf = mul nuw i64 %.3276426, 10
  %i.mg = load i8, ptr %.7289425, align 1, !tbaa !71
  %i.mh = sext i8 %i.mg to i64
  %i.mi = add i64 %i.mf, -48
  %i.mj = add i64 %i.mi, %i.mh                    ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.7289425, i64 1 ; 3 uses
  %i.ml = icmp ult i64 %i.mj, 1000000000000000000
  %i.mm = icmp ne ptr %i.mk, %.1283
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  br i1 %i.mn, label %.lr.ph427, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph427
  %i.mo = icmp ugt i64 %i.mj, 999999999999999999
  br i1 %i.mo, label %bb.bw, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader367, %._crit_edge
  %.3276.lcssa594 = phi i64 [ %i.mj, %._crit_edge ], [ 0, %.preheader367 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.17174.0, i64 %.sroa.20176.0
  %.not495 = icmp samesign eq i64 %.sroa.20176.0, 0
  br i1 %.not495, label %._crit_edge434, label %.lr.ph433

.lr.ph433:                                        ; preds = %._crit_edge.thread, %.lr.ph433
  %.4277431 = phi i64 [ %i.mu, %.lr.ph433 ], [ %.3276.lcssa594, %._crit_edge.thread ]
  %.8290430 = phi ptr [ %i.mv, %.lr.ph433 ], [ %.sroa.17174.0, %._crit_edge.thread ] ; 2 uses
  %i.mq = mul nuw i64 %.4277431, 10
  %i.mr = load i8, ptr %.8290430, align 1, !tbaa !71
  %i.ms = sext i8 %i.mr to i64
  %i.mt = add i64 %i.mq, -48
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.8290430, i64 1 ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 1000000000000000000
  %i.mx = icmp ne ptr %i.mv, %i.mp
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %.lr.ph433, label %._crit_edge434, !llvm.loop !12

._crit_edge434:                                   ; preds = %.lr.ph433, %._crit_edge.thread
  %.8290.lcssa = phi ptr [ %.sroa.17174.0, %._crit_edge.thread ], [ %i.mv, %.lr.ph433 ]
  %.4277.lcssa = phi i64 [ %.3276.lcssa594, %._crit_edge.thread ], [ %i.mu, %.lr.ph433 ]
  %i.mz = ptrtoint ptr %.sroa.17174.0 to i64
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge, %._crit_edge434
  %.8290.lcssa.sink = phi ptr [ %.8290.lcssa, %._crit_edge434 ], [ %i.mk, %._crit_edge ]
  %.sink656 = phi i64 [ %i.mz, %._crit_edge434 ], [ %i.il, %._crit_edge ]
  %.5278 = phi i64 [ %.4277.lcssa, %._crit_edge434 ], [ %i.mj, %._crit_edge ]
  %i.na = ptrtoint ptr %.8290.lcssa.sink to i64
  %i.nb = sub i64 %.sink656, %i.na
  %.478.i = add nsw i64 %i.nb, %.5.i23
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit: ; preds = %.thread318, %.critedge6.i, %bb.bw, %.thread311, %.critedge9.i, %bb.al
  %.6.i24.sink = phi i64 [ %.384.i, %.thread311 ], [ %.485.i, %bb.al ], [ %.384.i, %.critedge9.i ], [ %.478.i, %bb.bw ], [ %.377.i, %.critedge6.i ], [ %.377.i, %.thread318 ] ; 16 uses
  %.2275.sink = phi i64 [ %.1306, %.thread311 ], [ %.5, %bb.al ], [ %.1306, %.critedge9.i ], [ %.5278, %bb.bw ], [ %.1274, %.critedge6.i ], [ %.1274, %.thread318 ] ; 18 uses
  %.6288.sink = phi ptr [ %.6270, %.thread311 ], [ %.6270, %bb.al ], [ %.6270, %.critedge9.i ], [ %.6288, %bb.bw ], [ %.6288, %.critedge6.i ], [ %.6288, %.thread318 ] ; 8 uses
  %.sroa.10170.0.sink = phi i8 [ 0, %.thread311 ], [ 1, %bb.al ], [ 0, %.critedge9.i ], [ 1, %bb.bw ], [ 0, %.critedge6.i ], [ 0, %.thread318 ] ; 2 uses
  %.0282.sink = phi ptr [ %.0264, %.thread311 ], [ %.0264, %bb.al ], [ %.0264, %.critedge9.i ], [ %.0282, %bb.bw ], [ %.0282, %.critedge6.i ], [ %.0282, %.thread318 ]
  %.sink658 = phi i64 [ %i.bm, %.thread311 ], [ %i.bm, %bb.al ], [ %i.bm, %.critedge9.i ], [ %i.in, %bb.bw ], [ %i.in, %.critedge6.i ], [ %i.in, %.thread318 ]
  %.sroa.17174.0.sink = phi ptr [ %.sroa.17.0304, %.thread311 ], [ %.sroa.17.0304, %bb.al ], [ %.sroa.17.0304, %.critedge9.i ], [ %.sroa.17174.0, %bb.bw ], [ %.sroa.17174.0, %.critedge6.i ], [ %.sroa.17174.0, %.thread318 ]
  %.sroa.20176.0.sink = phi i64 [ %.sroa.20.0305, %.thread311 ], [ %.sroa.20.0305, %bb.al ], [ %.sroa.20.0305, %.critedge9.i ], [ %.sroa.20176.0, %bb.bw ], [ %.sroa.20176.0, %.critedge6.i ], [ %.sroa.20176.0, %.thread318 ]
  store i64 %.6.i24.sink, ptr %7, align 8, !tbaa !77
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.2275.sink, ptr %.sroa.5166.0..sroa_idx, align 8, !tbaa !77
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.6288.sink, ptr %.sroa.6167.0..sroa_idx, align 8, !tbaa !79
  %.sroa.7168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.e, ptr %.sroa.7168.0..sroa_idx, align 8, !tbaa !81
  %.sroa.8169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.8169.0..sroa_idx, align 1, !tbaa !81
  %.sroa.10170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 %.sroa.10170.0.sink, ptr %.sroa.10170.0..sroa_idx, align 2, !tbaa !81
  %.sroa.12172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.0282.sink, ptr %.sroa.12172.0..sroa_idx, align 8, !tbaa !79
  %.sroa.15173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink658, ptr %.sroa.15173.0..sroa_idx, align 8, !tbaa !77
  %.sroa.17174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.17174.0.sink, ptr %.sroa.17174.0..sroa_idx, align 8, !tbaa !79
  %.sroa.20176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.20176.0.sink, ptr %.sroa.20176.0..sroa_idx, align 8, !tbaa !77
  %.sroa.22177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.22177.0..sroa_idx, align 8
  %i.nc = trunc nuw i8 %.sroa.10170.0.sink to i1  ; 2 uses
  %i.nd = add i64 %.6.i24.sink, -11
  %or.cond659 = icmp ult i64 %i.nd, -21
  %or.cond684 = select i1 %i.nc, i1 true, i1 %or.cond659
  br i1 %or.cond684, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.ne = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = fsub float 1.000000e+00, %i.ne
  %i.nh = fcmp oeq float %i.nf, %i.ng
  br i1 %i.nh, label %bb.by, label %bb.cc

.thread606:                                       ; preds = %bb.bv, %bb.br, %.critedge133.i, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %._crit_edge459, %bb.q, %.critedge.i, %bb.d, %bb.c
  %.ph = phi ptr [ %i.gg, %bb.ao ], [ %.2266303, %bb.ak ], [ %.2284, %.critedge133.i ], [ %i.gg, %bb.ap ], [ %.4286, %bb.br ], [ %i.f, %bb.c ], [ %.10.lcssa, %._crit_edge459 ], [ %i.f, %bb.d ], [ %.1265, %.critedge.i ], [ %.0264, %bb.q ], [ %.4268, %bb.ag ], [ %.2284, %bb.bv ] ; 2 uses
  %i.ni = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nj = fadd float %i.ni, 1.000000e+00
  %i.nk = fsub float 1.000000e+00, %i.ni
  %i.nl = fcmp oeq float %i.nj, %i.nk
  br i1 %i.nl, label %.split.thread, label %.thread628

.split.thread:                                    ; preds = %.thread606
  store float 0.000000e+00, ptr %2, align 4, !tbaa !75
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.by:                                            ; preds = %bb.bx
  %.not31.i.i = icmp ugt i64 %.2275.sink, 16777216
  br i1 %.not31.i.i, label %_ZN10fast_float22clinger_fast_path_implIfEEbmlbRT_.exit.i.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = uitofp nneg i64 %.2275.sink to float    ; 3 uses
  store float %i.nm, ptr %2, align 4, !tbaa !75
  %i.nn = icmp slt i64 %.6.i24.sink, 0
  br i1 %i.nn, label %bb.ca, label %.split

.split:                                           ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.np = load float, ptr %i.no, align 4, !tbaa !75
  %i.nq = fmul float %i.np, %i.nm                 ; 2 uses
  store float %i.nq, ptr %2, align 4, !tbaa !75
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nr = sub nsw i64 0, %.6.i24.sink
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIfvE13powers_of_tenE.const, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !75
  %i.nu = fdiv float %i.nm, %i.nt                 ; 2 uses
  store float %i.nu, ptr %2, align 4, !tbaa !75
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cb:                                            ; preds = %.split, %bb.ca
  %storemerge32.i.i618 = phi float [ %i.nq, %.split ], [ %i.nu, %bb.ca ]
  %i.nv = fneg float %storemerge32.i.i618
  store float %i.nv, ptr %2, align 4, !tbaa !75
  br label %_ZN10fast_float19from_chars_advancedIfcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cc:                                            ; preds = %bb.bx
  %i.nw = icmp sgt i64 %.6.i24.sink, -1
end_hunk_1
begin_hunk_2_@_ZN5folly6detail37str_to_floating_fast_float_from_charsIdEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE:bb.a

bb.q:                                             ; preds = %bb.p
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.r, label %.critedge.i79.i

bb.r:                                             ; preds = %bb.q
  %i.ax = mul nuw nsw i64 %i.ar, 10
  %i.ay = sext i8 %i.at to i64
  %i.az = add nsw i64 %i.ax, -48
  %i.ba = add nsw i64 %i.az, %i.ay                ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0224, i64 2 ; 4 uses
  %.not113.i.i = icmp eq ptr %i.bb, %i.d
  br i1 %.not113.i.i, label %.critedge.i79.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.t, label %.critedge.i79.i

bb.t:                                             ; preds = %bb.s
  %i.bg = mul nsw i64 %i.ba, 10
  %i.bh = sext i8 %i.bc to i64
  %i.bi = add nsw i64 %i.bg, -48
  %i.bj = add nsw i64 %i.bi, %i.bh                ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0224, i64 3 ; 4 uses
  %.not114.i.i = icmp eq ptr %i.bk, %i.d
  br i1 %.not114.i.i, label %.critedge.i79.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -48
  %i.bo = icmp ult i32 %i.bn, 10
  br i1 %i.bo, label %bb.v, label %.critedge.i79.i

bb.v:                                             ; preds = %bb.u
  %i.bp = mul nsw i64 %i.bj, 10
  %i.bq = sext i8 %i.bl to i64
  %i.br = add nsw i64 %i.bp, -48
  %i.bs = add nsw i64 %i.br, %i.bq                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0224, i64 4 ; 4 uses
  %.not115.i.i = icmp eq ptr %i.bt, %i.d
  br i1 %.not115.i.i, label %.critedge.i79.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48
  %i.bx = icmp ult i32 %i.bw, 10
  br i1 %i.bx, label %bb.x, label %.critedge.i79.i

bb.x:                                             ; preds = %bb.w
  %i.by = mul nsw i64 %i.bs, 10
  %i.bz = sext i8 %i.bu to i64
  %i.ca = add nsw i64 %i.by, -48
  %i.cb = add nsw i64 %i.ca, %i.bz                ; 2 uses
  %storemerge.i100.i298 = getelementptr inbounds nuw i8, ptr %.0224, i64 5 ; 3 uses
  %.not116.i.i299 = icmp eq ptr %storemerge.i100.i298, %i.d
  br i1 %.not116.i.i299, label %.critedge.i79.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.cc = sub i64 %i.f, %.0224344
  %scevgep = getelementptr i8, ptr %.0224, i64 %i.cc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %storemerge.i100.i301 = phi ptr [ %storemerge.i100.i, %bb.y ], [ %storemerge.i100.i298, %.lr.ph.preheader ] ; 3 uses
  %storemerge131.i.i300 = phi i64 [ %i.ck, %bb.y ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %i.cd = load i8, ptr %storemerge.i100.i301, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.ce = sext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, -48
  %i.cg = icmp ult i32 %i.cf, 10
  br i1 %i.cg, label %bb.y, label %.critedge.i79.i

bb.y:                                             ; preds = %.lr.ph
  %i.ch = mul i64 %storemerge131.i.i300, 10
  %i.ci = sext i8 %i.cd to i64
  %i.cj = add i64 %i.ch, -48
  %i.ck = add i64 %i.cj, %i.ci                    ; 2 uses
  %storemerge.i100.i = getelementptr inbounds nuw i8, ptr %storemerge.i100.i301, i64 1 ; 2 uses
  %.not116.i.i = icmp eq ptr %storemerge.i100.i, %i.d
  br i1 %.not116.i.i, label %.critedge.i79.i, label %.lr.ph, !llvm.loop !0

.critedge.i79.i:                                  ; preds = %bb.y, %.lr.ph, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.1225 = phi ptr [ %.0224, %bb.o ], [ %i.as, %bb.p ], [ %i.bb, %bb.r ], [ %i.bk, %bb.t ], [ %i.bt, %bb.v ], [ %i.bb, %bb.s ], [ %i.as, %bb.q ], [ %i.bt, %bb.w ], [ %i.bk, %bb.u ], [ %storemerge.i100.i298, %bb.x ], [ %scevgep, %bb.y ], [ %storemerge.i100.i301, %.lr.ph ] ; 6 uses
  %.0219 = phi i64 [ 0, %bb.o ], [ %i.ar, %bb.p ], [ %i.ba, %bb.r ], [ %i.bj, %bb.t ], [ %i.bs, %bb.v ], [ %i.ba, %bb.s ], [ %i.ar, %bb.q ], [ %i.bs, %bb.w ], [ %i.bj, %bb.u ], [ %i.cb, %bb.x ], [ %i.ck, %bb.y ], [ %storemerge131.i.i300, %.lr.ph ] ; 4 uses
  %i.cl = ptrtoint ptr %.1225 to i64
  %i.cm = ptrtoint ptr %.0224 to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %.not117.i.i = icmp eq ptr %.1225, %i.d
  br i1 %.not117.i.i, label %.critedge133.i.i, label %bb.z

bb.z:                                             ; preds = %.critedge.i79.i
  %i.co = load i8, ptr %.1225, align 1, !tbaa !71, !noalias !441
  %i.cp = icmp eq i8 %i.co, 46
  br i1 %i.cp, label %bb.aa, label %.critedge133.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cq = getelementptr inbounds nuw i8, ptr %.1225, i64 1 ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cs = sub i64 %i.f, %i.cr                     ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 7
  br i1 %i.ct, label %.lr.ph308, label %.critedge.i112.i

.lr.ph308:                                        ; preds = %bb.aa, %bb.ab
  %.2221307 = phi i64 [ %i.dj, %bb.ab ], [ %.0219, %bb.aa ] ; 2 uses
  %.8232306 = phi ptr [ %i.dk, %bb.ab ], [ %i.cq, %bb.aa ] ; 3 uses
  %.0.copyload.i120.i = load i64, ptr %.8232306, align 1, !noalias !441 ; 3 uses
  %i.cu = add i64 %.0.copyload.i120.i, 5063812098665367110
  %i.cv = add i64 %.0.copyload.i120.i, -3472328296227680304 ; 3 uses
  %i.cw = or i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, -9187201950435737472
  %.not.i117.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i117.i, label %bb.ab, label %.critedge.i112.i.thread.loopexit

bb.ab:                                            ; preds = %.lr.ph308
  %i.cy = mul i64 %.2221307, 100000000
  %i.cz = mul i64 %i.cv, 10
  %i.da = lshr i64 %i.cv, 8
  %i.db = add i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = and i64 %i.db, 1095216660735
  %i.dd = mul i64 %i.dc, 4294967296000100
  %i.de = lshr i64 %i.db, 16
  %i.df = and i64 %i.de, 1095216660735
  %i.dg = mul i64 %i.df, 42949672960001
  %i.dh = add i64 %i.dg, %i.dd
  %i.di = lshr i64 %i.dh, 32
  %i.dj = add i64 %i.di, %i.cy                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.8232306, i64 8 ; 3 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.f, %i.dl                     ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 7
  br i1 %i.dn, label %.lr.ph308, label %.critedge.i112.i, !llvm.loop !1

.critedge.i112.i:                                 ; preds = %bb.ab, %bb.aa
  %.8232.lcssa = phi ptr [ %i.cq, %bb.aa ], [ %i.dk, %bb.ab ] ; 3 uses
  %.2221.lcssa = phi i64 [ %.0219, %bb.aa ], [ %i.dj, %bb.ab ] ; 2 uses
  %.lcssa = phi i64 [ %i.cs, %bb.aa ], [ %i.dm, %bb.ab ]
  %i.do = icmp sgt i64 %.lcssa, 3
  br i1 %i.do, label %.critedge.i112.i..critedge.i112.i.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i

.critedge.i112.i..critedge.i112.i.thread_crit_edge: ; preds = %.critedge.i112.i
  %.0.copyload.i122.i.pre = load i32, ptr %.8232.lcssa, align 1, !noalias !441
  br label %.critedge.i112.i.thread

.critedge.i112.i.thread.loopexit:                 ; preds = %.lr.ph308
  %i.dp = trunc i64 %.0.copyload.i120.i to i32
  br label %.critedge.i112.i.thread

.critedge.i112.i.thread:                          ; preds = %.critedge.i112.i..critedge.i112.i.thread_crit_edge, %.critedge.i112.i.thread.loopexit
  %.0.copyload.i122.i = phi i32 [ %.0.copyload.i122.i.pre, %.critedge.i112.i..critedge.i112.i.thread_crit_edge ], [ %i.dp, %.critedge.i112.i.thread.loopexit ] ; 2 uses
  %.8232289 = phi ptr [ %.8232.lcssa, %.critedge.i112.i..critedge.i112.i.thread_crit_edge ], [ %.8232306, %.critedge.i112.i.thread.loopexit ] ; 2 uses
  %.2221287 = phi i64 [ %.2221.lcssa, %.critedge.i112.i..critedge.i112.i.thread_crit_edge ], [ %.2221307, %.critedge.i112.i.thread.loopexit ] ; 2 uses
  %i.dq = add i32 %.0.copyload.i122.i, 1179010630
  %i.dr = add i32 %.0.copyload.i122.i, -808464432 ; 3 uses
  %i.ds = or i32 %i.dq, %i.dr
  %i.dt = and i32 %i.ds, -2139062144
  %.not.i124.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i124.i, label %bb.ac, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i

bb.ac:                                            ; preds = %.critedge.i112.i.thread
  %i.du = mul i64 %.2221287, 10000
  %i.dv = mul i32 %i.dr, 10
  %i.dw = lshr i32 %i.dr, 8
  %i.dx = add i32 %i.dv, %i.dw
  %i.dy = and i32 %i.dx, 16711935
  %i.dz = mul i32 %i.dy, 6553601
  %i.ea = lshr i32 %i.dz, 16
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = add i64 %i.du, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.8232289, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i: ; preds = %bb.ac, %.critedge.i112.i.thread, %.critedge.i112.i
  %.9233 = phi ptr [ %i.ed, %bb.ac ], [ %.8232289, %.critedge.i112.i.thread ], [ %.8232.lcssa, %.critedge.i112.i ] ; 5 uses
  %.3222 = phi i64 [ %i.ec, %bb.ac ], [ %.2221287, %.critedge.i112.i.thread ], [ %.2221.lcssa, %.critedge.i112.i ] ; 2 uses
  %.not118.i99.i312 = icmp eq ptr %.9233, %i.d
  br i1 %.not118.i99.i312, label %.critedge2.i.i, label %.lr.ph315.preheader

.lr.ph315.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i
  %.9233345 = ptrtoaddr ptr %.9233 to i64
  %i.ee = sub i64 %i.f, %.9233345
  %scevgep346 = getelementptr i8, ptr %.9233, i64 %i.ee
  br label %.lr.ph315

.lr.ph315:                                        ; preds = %.lr.ph315.preheader, %bb.ad
  %.4223314 = phi i64 [ %i.en, %bb.ad ], [ %.3222, %.lr.ph315.preheader ] ; 2 uses
  %.10234313 = phi ptr [ %i.ek, %bb.ad ], [ %.9233, %.lr.ph315.preheader ] ; 3 uses
  %i.ef = load i8, ptr %.10234313, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.eg = sext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -48
  %i.ei = icmp ult i32 %i.eh, 10
  br i1 %i.ei, label %bb.ad, label %.critedge2.i.i

bb.ad:                                            ; preds = %.lr.ph315
  %i.ej = add i8 %i.ef, -48
  %i.ek = getelementptr inbounds nuw i8, ptr %.10234313, i64 1 ; 2 uses
  %i.el = mul i64 %.4223314, 10
  %i.em = zext i8 %i.ej to i64
  %i.en = add i64 %i.el, %i.em                    ; 2 uses
  %.not118.i99.i = icmp eq ptr %i.ek, %i.d
  br i1 %.not118.i99.i, label %.critedge2.i.i, label %.lr.ph315, !llvm.loop !2

.critedge2.i.i:                                   ; preds = %bb.ad, %.lr.ph315, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i
  %.10234.lcssa = phi ptr [ %.9233, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i ], [ %.10234313, %.lr.ph315 ], [ %scevgep346, %bb.ad ] ; 2 uses
  %.4223.lcssa = phi i64 [ %.3222, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit.i ], [ %.4223314, %.lr.ph315 ], [ %i.en, %bb.ad ]
  %i.eo = ptrtoint ptr %.10234.lcssa to i64
  %i.ep = sub i64 %i.cr, %i.eo                    ; 2 uses
  %i.eq = sub nsw i64 %i.cn, %i.ep
  br label %.critedge133.i.i

.critedge133.i.i:                                 ; preds = %.critedge2.i.i, %bb.z, %.critedge.i79.i
  %.2226 = phi ptr [ %.1225, %.critedge.i79.i ], [ %.10234.lcssa, %.critedge2.i.i ], [ %.1225, %bb.z ] ; 8 uses
  %.1220 = phi i64 [ %.0219, %.critedge.i79.i ], [ %.4223.lcssa, %.critedge2.i.i ], [ %.0219, %bb.z ] ; 8 uses
  %.080.i80.i = phi i64 [ %i.cn, %.critedge.i79.i ], [ %i.eq, %.critedge2.i.i ], [ %i.cn, %bb.z ] ; 3 uses
  %.074.i.i = phi i64 [ 0, %.critedge.i79.i ], [ %i.ep, %.critedge2.i.i ], [ 0, %bb.z ] ; 5 uses
  %i.er = icmp eq i64 %.080.i80.i, 0
  br i1 %i.er, label %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i, label %bb.ae

bb.ae:                                            ; preds = %.critedge133.i.i
  %.not120.i82.i = icmp eq ptr %.2226, %i.d
  br i1 %.not120.i82.i, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = load i8, ptr %.2226, align 1, !tbaa !71, !noalias !441
  switch i8 %i.es, label %bb.ao [
    i8 101, label %bb.ag
    i8 69, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.et = getelementptr inbounds nuw i8, ptr %.2226, i64 1 ; 4 uses
  %.not125.i83.i = icmp eq ptr %i.et, %i.d
  br i1 %.not125.i83.i, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.ev = icmp eq i8 %i.eu, 45
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ew = getelementptr inbounds nuw i8, ptr %.2226, i64 2
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.ex = icmp eq i8 %i.eu, 43
  %i.ey = getelementptr inbounds nuw i8, ptr %.2226, i64 2
  %spec.select = select i1 %i.ex, ptr %i.ey, ptr %i.et
  br label %.thread

.thread:                                          ; preds = %bb.aj, %bb.ag, %bb.ai
  %.4228 = phi ptr [ %i.ew, %bb.ai ], [ %i.et, %bb.ag ], [ %spec.select, %bb.aj ] ; 5 uses
  %.072.i.i = phi i1 [ true, %bb.ai ], [ false, %bb.ag ], [ false, %bb.aj ]
  %.4228347 = ptrtoaddr ptr %.4228 to i64
  %i.ez = icmp eq ptr %.4228, %i.d
  br i1 %i.ez, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %.thread
  %i.fa = load i8, ptr %.4228, align 1, !tbaa !71, !noalias !441
  %i.fb = sext i8 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -48
  %i.fd = icmp ult i32 %i.fc, 10
  br i1 %i.fd, label %.lr.ph324.preheader, label %bb.ao

.lr.ph324.preheader:                              ; preds = %bb.ak
  %i.fe = sub i64 %i.f, %.4228347
  %scevgep348 = getelementptr i8, ptr %.4228, i64 %i.fe
  br label %.lr.ph324

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %bb.an
  %.073.i.i323 = phi i64 [ %.1.i94.i, %bb.an ], [ 0, %.lr.ph324.preheader ] ; 4 uses
  %.7231322 = phi ptr [ %i.fo, %bb.an ], [ %.4228, %.lr.ph324.preheader ] ; 3 uses
  %i.ff = load i8, ptr %.7231322, align 1, !tbaa !71, !noalias !441 ; 2 uses
  %i.fg = sext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.al, label %.critedge4.i.i

bb.al:                                            ; preds = %.lr.ph324
  %i.fj = icmp slt i64 %.073.i.i323, 268435456
  br i1 %i.fj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fk = add i8 %i.ff, -48
  %i.fl = mul nsw i64 %.073.i.i323, 10
  %i.fm = zext i8 %i.fk to i64
  %i.fn = add nsw i64 %i.fl, %i.fm
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1.i94.i = phi i64 [ %i.fn, %bb.am ], [ %.073.i.i323, %bb.al ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.7231322, i64 1 ; 2 uses
  %.not127.i92.i = icmp eq ptr %i.fo, %i.d
  br i1 %.not127.i92.i, label %.critedge4.i.i, label %.lr.ph324, !llvm.loop !3

.critedge4.i.i:                                   ; preds = %bb.an, %.lr.ph324
  %.7231.lcssa.ph = phi ptr [ %scevgep348, %bb.an ], [ %.7231322, %.lr.ph324 ]
  %.073.i.i.lcssa.ph = phi i64 [ %.1.i94.i, %bb.an ], [ %.073.i.i323, %.lr.ph324 ] ; 2 uses
  %i.fp = sub nsw i64 0, %.073.i.i.lcssa.ph
  %spec.select.i93.i = select i1 %.072.i.i, i64 %i.fp, i64 %.073.i.i.lcssa.ph
  %i.fq = add nsw i64 %spec.select.i93.i, %.074.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.af, %bb.ae, %.critedge4.i.i, %.thread, %bb.ak
  %.6230 = phi ptr [ %.2226, %bb.ak ], [ %.2226, %.thread ], [ %.7231.lcssa.ph, %.critedge4.i.i ], [ %.2226, %bb.af ], [ %i.d, %bb.ae ] ; 5 uses
  %.377.i.i = phi i64 [ %.074.i.i, %bb.ak ], [ %.074.i.i, %.thread ], [ %i.fq, %.critedge4.i.i ], [ %.074.i.i, %bb.af ], [ %.074.i.i, %bb.ae ] ; 11 uses
  %i.fr = icmp sgt i64 %.080.i80.i, 19
  br i1 %i.fr, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.ao, %.critedge8.i.i
  %.0.i89.i331 = phi ptr [ %i.fv, %.critedge8.i.i ], [ %.0224, %bb.ao ] ; 2 uses
  %.181.i.i330 = phi i64 [ %spec.select134.i.i, %.critedge8.i.i ], [ %.080.i80.i, %bb.ao ] ; 2 uses
  %i.fs = load i8, ptr %.0.i89.i331, align 1, !tbaa !71 ; 2 uses
  switch i8 %i.fs, label %.critedge6.i.i [
    i8 48, label %.critedge8.i.i
    i8 46, label %.critedge8.i.i
  ]

.critedge8.i.i:                                   ; preds = %.preheader, %.preheader
  %i.ft = icmp eq i8 %i.fs, 48
  %i.fu = sext i1 %i.ft to i64
  %spec.select134.i.i = add nsw i64 %.181.i.i330, %i.fu ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i89.i331, i64 1 ; 2 uses
  %.not129.i90.i = icmp eq ptr %i.fv, %i.d
  br i1 %.not129.i90.i, label %.critedge6.i.i, label %.preheader, !llvm.loop !4

.critedge6.i.i:                                   ; preds = %.preheader, %.critedge8.i.i
  %.181.i.i.lcssa = phi i64 [ %.181.i.i330, %.preheader ], [ %spec.select134.i.i, %.critedge8.i.i ]
  %i.fw = icmp sgt i64 %.181.i.i.lcssa, 19
  br i1 %i.fw, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit, label %.critedge, !prof !73

_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i: ; preds = %.critedge133.i.i, %bb.n, %bb.m
  %i.fx = icmp eq i8 %i.ag, 43
  %or.cond271 = or i1 %i.ah, %i.fx
  %.035.i.idx = zext i1 %or.cond271 to i64
  %.035.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 %.035.i.idx ; 6 uses
  %i.fy = ptrtoint ptr %.035.i to i64
  %i.fz = sub i64 %i.f, %i.fy                     ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 2
  br i1 %i.ga, label %bb.ap, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384

bb.ap:                                            ; preds = %_ZN10fast_float18report_parse_errorIcEENS_22parsed_number_string_tIT_EEPKS2_NS_11parse_errorE.exit104.i
  %.0.copyload4.i.i = load i24, ptr %.035.i, align 1
  %i.gb = and i24 %.0.copyload4.i.i, -2105377
  switch i24 %i.gb, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread384 [
    i24 5128526, label %bb.aq
    i24 4607561, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gc = getelementptr inbounds nuw i8, ptr %.035.i, i64 3 ; 5 uses
  %i.gd = select i1 %i.ah, double -qnan, double +qnan
  store double %i.gd, ptr %i.a, align 8, !tbaa !97
  %.not42.i = icmp eq ptr %i.gc, %i.d
  br i1 %.not42.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ge = load i8, ptr %i.gc, align 1, !tbaa !71
  %i.gf = icmp ne i8 %i.ge, 40
  %i.gg = getelementptr inbounds nuw i8, ptr %.035.i, i64 4 ; 4 uses
  %.not4352.i = icmp eq ptr %i.gg, %i.d
  %or.cond55.i = select i1 %i.gf, i1 true, i1 %.not4352.i
  br i1 %or.cond55.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ar
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !71  ; 2 uses
  %i.gi = icmp eq i8 %i.gh, 41
  br i1 %i.gi, label %.lr.ph.i._crit_edge, label %.lr.ph333

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.backedge.i, %.lr.ph.i.preheader
  %.053.i.lcssa = phi ptr [ %i.gg, %.lr.ph.i.preheader ], [ %.053.be.i, %.lr.ph.backedge.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.053.i.lcssa, i64 1
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.lr.ph333:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.backedge.i
  %i.gk = phi i8 [ %i.gq, %.lr.ph.backedge.i ], [ %i.gh, %.lr.ph.i.preheader ] ; 3 uses
  %.053.i332 = phi ptr [ %.053.be.i, %.lr.ph.backedge.i ], [ %i.gg, %.lr.ph.i.preheader ] ; 2 uses
  %i.gl = and i8 %i.gk, -33
  %i.gm = add i8 %i.gl, -65
  %or.cond50.i = icmp ult i8 %i.gm, 26
  br i1 %or.cond50.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph333
  %i.gn = add i8 %i.gk, -58
  %or.cond45.i = icmp ult i8 %i.gn, -10
  %i.go = icmp ne i8 %i.gk, 95
  %or.cond49.not58.i = and i1 %i.go, %or.cond45.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.053.i332, i64 1 ; 2 uses
  %.not43.i = icmp eq ptr %i.gp, %i.d
  %or.cond56.i = select i1 %or.cond49.not58.i, i1 true, i1 %.not43.i
  br i1 %or.cond56.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

bb.at:                                            ; preds = %.lr.ph333
  %.old.i = getelementptr inbounds nuw i8, ptr %.053.i332, i64 1 ; 2 uses
  %.not43.old.i = icmp eq ptr %.old.i, %i.d
  br i1 %.not43.old.i, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread, label %.lr.ph.backedge.i

.lr.ph.backedge.i:                                ; preds = %bb.at, %bb.as
  %.053.be.i = phi ptr [ %.old.i, %bb.at ], [ %i.gp, %bb.as ] ; 3 uses
  %i.gq = load i8, ptr %.053.be.i, align 1, !tbaa !71 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 41
  br i1 %i.gr, label %.lr.ph.i._crit_edge, label %.lr.ph333, !llvm.loop !440

bb.au:                                            ; preds = %bb.ap
  %i.gs = icmp samesign ugt i64 %i.fz, 7
  br i1 %i.gs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %.0.copyload4.i47.i = load i40, ptr %i.gt, align 1
  %i.gu = and i40 %.0.copyload4.i47.i, -137977929761
  %i.gv = icmp eq i40 %i.gu, 383666179657
  br i1 %i.gv, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink.i = phi i64 [ 3, %bb.aw ], [ 8, %bb.av ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.035.i, i64 %.sink.i
  %i.gx = select i1 %i.ah, double -inf, double +inf
  store double %i.gx, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

.critedge:                                        ; preds = %bb.ao, %.critedge6.i.i
  %i.gy = add i64 %.377.i.i, -23
  %or.cond272 = icmp ult i64 %i.gy, -45
  br i1 %or.cond272, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %.critedge
  %i.gz = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.ha = fadd float %i.gz, 1.000000e+00
  %i.hb = fsub float 1.000000e+00, %i.gz
  %i.hc = fcmp oeq float %i.ha, %i.hb
  br i1 %i.hc, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %.not31.i = icmp ugt i64 %.1220, 9007199254740992
  br i1 %.not31.i, label %.thread263, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hd = uitofp nneg i64 %.1220 to double        ; 2 uses
  %i.he = icmp slt i64 %.377.i.i, 0
  br i1 %i.he, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hf = sub nsw i64 0, %.377.i.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !97
  %i.hi = fdiv double %i.hd, %i.hh
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.377.i.i
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !97
  %i.hl = fmul double %i.hk, %i.hd
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %storemerge32.i = phi double [ %i.hl, %bb.bc ], [ %i.hi, %bb.bb ] ; 2 uses
  store double %storemerge32.i, ptr %i.a, align 8, !tbaa !97
  br i1 %i.ah, label %bb.be, label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.hm = fneg double %storemerge32.i
  store double %i.hm, ptr %i.a, align 8, !tbaa !97
  br label %_ZN10fast_float25from_chars_float_advancedIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EE.exit.thread

bb.bf:                                            ; preds = %bb.ay
  %i.hn = icmp sgt i64 %.377.i.i, -1
  br i1 %i.hn, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE12max_mantissaE.const, i64 %.377.i.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !77
  %.not30.i = icmp ugt i64 %.1220, %i.hp
  br i1 %.not30.i, label %.thread263, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hq = icmp eq i64 %.1220, 0
  br i1 %i.hq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hr = select i1 %i.ah, double -0.000000e+00, double 0.000000e+00
end_hunk_2
begin_hunk_3_@_ZN10fast_float22parse_number_slow_pathIdcEENS_19from_chars_result_tIT0_EEPKS2_S5_RT_NS_15parse_options_tIS2_EEb:bb.a
  %i.y = add nsw i64 %i.w, -48
  %i.z = add nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0256, i64 2 ; 4 uses
  %.not119.i = icmp eq ptr %i.aa, %1
  br i1 %.not119.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = icmp ult i32 %i.ad, 10
  br i1 %i.ae, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.af = mul nsw i64 %i.z, 10
  %i.ag = sext i8 %i.ab to i64
  %i.ah = add nsw i64 %i.af, -48
  %i.ai = add nsw i64 %i.ah, %i.ag                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0256, i64 3 ; 4 uses
  %.not120.i = icmp eq ptr %i.aj, %1
  br i1 %.not120.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ao = mul nsw i64 %i.ai, 10
  %i.ap = sext i8 %i.ak to i64
  %i.aq = add nsw i64 %i.ao, -48
  %i.ar = add nsw i64 %i.aq, %i.ap                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0256, i64 4 ; 4 uses
  %.not121.i = icmp eq ptr %i.as, %1
  br i1 %.not121.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load i8, ptr %i.as, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.ax = mul nsw i64 %i.ar, 10
  %i.ay = sext i8 %i.at to i64
  %i.az = add nsw i64 %i.ax, -48
  %i.ba = add nsw i64 %i.az, %i.ay                ; 2 uses
  %storemerge.i429 = getelementptr inbounds nuw i8, ptr %.0256, i64 5 ; 3 uses
  %.not122.i430 = icmp eq ptr %storemerge.i429, %1
  br i1 %.not122.i430, label %.critedge.i, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %bb.o
  %i.bb = sub i64 %i.a, %.0256517
  %scevgep518 = getelementptr i8, ptr %.0256, i64 %i.bb
  br label %.lr.ph434

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %bb.p
  %storemerge.i432 = phi ptr [ %storemerge.i, %bb.p ], [ %storemerge.i429, %.lr.ph434.preheader ] ; 3 uses
  %storemerge137.i431 = phi i64 [ %i.bj, %bb.p ], [ %i.ba, %.lr.ph434.preheader ] ; 2 uses
  %i.bc = load i8, ptr %storemerge.i432, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %.lr.ph434
  %i.bg = mul i64 %storemerge137.i431, 10
  %i.bh = sext i8 %i.bc to i64
  %i.bi = add i64 %i.bg, -48
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i432, i64 1 ; 2 uses
  %.not122.i = icmp eq ptr %storemerge.i, %1
  br i1 %.not122.i, label %.critedge.i, label %.lr.ph434, !llvm.loop !5

.critedge.i:                                      ; preds = %bb.p, %.lr.ph434, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.1257 = phi ptr [ %.0256, %bb.e ], [ %i.r, %bb.g ], [ %i.aa, %bb.i ], [ %i.aj, %bb.k ], [ %i.as, %bb.m ], [ %i.r, %bb.h ], [ %.0256, %bb.f ], [ %i.as, %bb.n ], [ %i.aj, %bb.l ], [ %i.aa, %bb.j ], [ %storemerge.i429, %bb.o ], [ %scevgep518, %bb.p ], [ %storemerge.i432, %.lr.ph434 ] ; 9 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.q, %bb.g ], [ %i.z, %bb.i ], [ %i.ai, %bb.k ], [ %i.ar, %bb.m ], [ %i.q, %bb.h ], [ 0, %bb.f ], [ %i.ar, %bb.n ], [ %i.ai, %bb.l ], [ %i.z, %bb.j ], [ %i.ba, %bb.o ], [ %i.bj, %bb.p ], [ %storemerge137.i431, %.lr.ph434 ] ; 4 uses
  %i.bk = ptrtoint ptr %.1257 to i64              ; 2 uses
  %i.bl = ptrtoint ptr %.0256 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 8 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.thread598, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.bo = icmp eq i8 %i.l, 48
  %i.bp = icmp sgt i64 %i.bm, 1
  %or.cond.i = and i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %.thread598, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not123.i = icmp eq ptr %.1257, %1
  br i1 %.not123.i, label %.thread287, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr %.1257, align 1, !tbaa !71, !noalias !446
  %i.br = icmp eq i8 %i.bq, %.sroa.2.8.extract.trunc.i
  br i1 %i.br, label %bb.t, label %.thread287

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %.1257, i64 1 ; 4 uses
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 7
  br i1 %i.bw, label %.lr.ph443, label %.critedge.i50

.lr.ph443:                                        ; preds = %bb.t, %.noexc51
  %.7441 = phi i64 [ %i.cm, %.noexc51 ], [ %.0, %bb.t ] ; 2 uses
  %.11440 = phi ptr [ %i.cn, %.noexc51 ], [ %i.bs, %bb.t ] ; 3 uses
  %.0.copyload.i55 = load i64, ptr %.11440, align 1, !noalias !446 ; 3 uses
  %i.bx = add i64 %.0.copyload.i55, 5063812098665367110
  %i.by = add i64 %.0.copyload.i55, -3472328296227680304 ; 3 uses
  %i.bz = or i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -9187201950435737472
  %.not.i53 = icmp eq i64 %i.ca, 0
  br i1 %.not.i53, label %.noexc51, label %.critedge.i50.thread.loopexit

.noexc51:                                         ; preds = %.lr.ph443
  %i.cb = mul i64 %.7441, 100000000
  %i.cc = mul i64 %i.by, 10
  %i.cd = lshr i64 %i.by, 8
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cf = and i64 %i.ce, 1095216660735
  %i.cg = mul i64 %i.cf, 4294967296000100
  %i.ch = lshr i64 %i.ce, 16
  %i.ci = and i64 %i.ch, 1095216660735
  %i.cj = mul i64 %i.ci, 42949672960001
  %i.ck = add i64 %i.cj, %i.cg
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = add i64 %i.cl, %i.cb                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.11440, i64 8 ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.bt, %i.co                    ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 7
  br i1 %i.cq, label %.lr.ph443, label %.critedge.i50, !llvm.loop !1

.critedge.i50:                                    ; preds = %.noexc51, %bb.t
  %.11.lcssa = phi ptr [ %i.bs, %bb.t ], [ %i.cn, %.noexc51 ] ; 3 uses
  %.7.lcssa = phi i64 [ %.0, %bb.t ], [ %i.cm, %.noexc51 ] ; 2 uses
  %.lcssa366 = phi i64 [ %i.bv, %bb.t ], [ %i.cp, %.noexc51 ]
  %i.cr = icmp sgt i64 %.lcssa366, 3
  br i1 %i.cr, label %.critedge.i50..critedge.i50.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

.critedge.i50..critedge.i50.thread_crit_edge:     ; preds = %.critedge.i50
  %.0.copyload.i58.pre = load i32, ptr %.11.lcssa, align 1, !noalias !446
  br label %.critedge.i50.thread

.critedge.i50.thread.loopexit:                    ; preds = %.lr.ph443
  %i.cs = trunc i64 %.0.copyload.i55 to i32
  br label %.critedge.i50.thread

.critedge.i50.thread:                             ; preds = %.critedge.i50..critedge.i50.thread_crit_edge, %.critedge.i50.thread.loopexit
  %.0.copyload.i58 = phi i32 [ %.0.copyload.i58.pre, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %i.cs, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.11371 = phi ptr [ %.11.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.11440, %.critedge.i50.thread.loopexit ] ; 2 uses
  %.7369 = phi i64 [ %.7.lcssa, %.critedge.i50..critedge.i50.thread_crit_edge ], [ %.7441, %.critedge.i50.thread.loopexit ] ; 2 uses
  %i.ct = add i32 %.0.copyload.i58, 1179010630
  %i.cu = add i32 %.0.copyload.i58, -808464432    ; 3 uses
  %i.cv = or i32 %i.ct, %i.cu
  %i.cw = and i32 %i.cv, -2139062144
  %.not.i60 = icmp eq i32 %i.cw, 0
  br i1 %.not.i60, label %bb.u, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

bb.u:                                             ; preds = %.critedge.i50.thread
  %i.cx = mul i64 %.7369, 10000
  %i.cy = mul i32 %i.cu, 10
  %i.cz = lshr i32 %i.cu, 8
  %i.da = add i32 %i.cy, %i.cz
  %i.db = and i32 %i.da, 16711935
  %i.dc = mul i32 %i.db, 6553601
  %i.dd = lshr i32 %i.dc, 16
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.11371, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52: ; preds = %.critedge.i50, %.critedge.i50.thread, %bb.u
  %.12 = phi ptr [ %i.dg, %bb.u ], [ %.11371, %.critedge.i50.thread ], [ %.11.lcssa, %.critedge.i50 ] ; 5 uses
  %.8 = phi i64 [ %i.df, %bb.u ], [ %.7369, %.critedge.i50.thread ], [ %.7.lcssa, %.critedge.i50 ] ; 2 uses
  %.not124.i447 = icmp eq ptr %.12, %1
  br i1 %.not124.i447, label %._crit_edge451, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.12519 = ptrtoaddr ptr %.12 to i64
  %i.dh = sub i64 %i.a, %.12519
  %scevgep520 = getelementptr i8, ptr %.12, i64 %i.dh
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %bb.v
  %.6449 = phi i64 [ %i.dq, %bb.v ], [ %.8, %.lr.ph450.preheader ] ; 2 uses
  %.10448 = phi ptr [ %i.dn, %bb.v ], [ %.12, %.lr.ph450.preheader ] ; 3 uses
  %i.di = load i8, ptr %.10448, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %bb.v, label %._crit_edge451

bb.v:                                             ; preds = %.lr.ph450
  %i.dm = add i8 %i.di, -48
  %i.dn = getelementptr inbounds nuw i8, ptr %.10448, i64 1 ; 2 uses
  %i.do = mul i64 %.6449, 10
  %i.dp = zext i8 %i.dm to i64
  %i.dq = add i64 %i.do, %i.dp                    ; 2 uses
  %.not124.i = icmp eq ptr %i.dn, %1
  br i1 %.not124.i, label %._crit_edge451, label %.lr.ph450, !llvm.loop !6

._crit_edge451:                                   ; preds = %.lr.ph450, %bb.v, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52
  %.10.lcssa = phi ptr [ %.12, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %scevgep520, %bb.v ], [ %.10448, %.lr.ph450 ] ; 3 uses
  %.6.lcssa = phi i64 [ %.8, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit52 ], [ %i.dq, %bb.v ], [ %.6449, %.lr.ph450 ]
  %i.dr = ptrtoint ptr %.10.lcssa to i64          ; 2 uses
  %i.ds = sub i64 %i.bu, %i.dr                    ; 3 uses
  %i.dt = sub i64 %i.dr, %i.bu
  %i.du = sub nsw i64 %i.bm, %i.ds
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %.thread598, label %.thread287

.thread287:                                       ; preds = %bb.r, %bb.s, %._crit_edge451
  %.081.i300 = phi i64 [ %i.ds, %._crit_edge451 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 3 uses
  %.087.i299 = phi i64 [ %i.du, %._crit_edge451 ], [ %i.bm, %bb.s ], [ %i.bm, %bb.r ] ; 2 uses
  %.1298 = phi i64 [ %.6.lcssa, %._crit_edge451 ], [ %.0, %bb.s ], [ %.0, %bb.r ] ; 2 uses
  %.sroa.20.0297 = phi i64 [ %i.dt, %._crit_edge451 ], [ 0, %bb.s ], [ 0, %bb.r ] ; 5 uses
  %.sroa.17.0296 = phi ptr [ %i.bs, %._crit_edge451 ], [ null, %bb.s ], [ null, %bb.r ] ; 7 uses
  %.2258295 = phi ptr [ %.10.lcssa, %._crit_edge451 ], [ %.1257, %bb.s ], [ %.1257, %bb.r ] ; 8 uses
  %i.dw = and i64 %3, 1
  %.not125.i = icmp eq i64 %i.dw, 0
  %.not126.i = icmp eq ptr %.2258295, %1          ; 2 uses
  %or.cond = or i1 %.not125.i, %.not126.i
  br i1 %or.cond, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread287
  %i.dx = load i8, ptr %.2258295, align 1, !tbaa !71, !noalias !446 ; 3 uses
  switch i8 %i.dx, label %bb.x [
    i8 101, label %bb.z
    i8 69, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w, %.thread287
  %i.dy = and i64 %3, 64
  %.not127.i = icmp eq i64 %i.dy, 0
  %or.cond320 = or i1 %.not127.i, %.not126.i
  br i1 %or.cond320, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load i8, ptr %.2258295, align 1, !tbaa !71, !noalias !446 ; 5 uses
  switch i8 %i.dz, label %bb.ak [
    i8 43, label %bb.z
    i8 45, label %bb.z
    i8 100, label %bb.z
    i8 68, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.w, %bb.w
  %i.ea = phi i8 [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dz, %bb.y ], [ %i.dx, %bb.w ], [ %i.dx, %bb.w ]
  switch i8 %i.ea, label %bb.ab [
    i8 101, label %bb.aa
    i8 69, label %bb.aa
    i8 100, label %bb.aa
    i8 68, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %.2258295, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3259 = phi ptr [ %.2258295, %bb.z ], [ %i.eb, %bb.aa ] ; 5 uses
  %.not131.i = icmp eq ptr %.3259, %1
  br i1 %.not131.i, label %.thread301, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = load i8, ptr %.3259, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 45
  br i1 %i.ed, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %.3259, i64 1
  br label %.thread301

bb.ae:                                            ; preds = %bb.ac
  %i.ef = icmp eq i8 %i.ec, 43
  %spec.select.idx = zext i1 %i.ef to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.3259, i64 %spec.select.idx
  br label %.thread301

.thread301:                                       ; preds = %bb.ae, %bb.ab, %bb.ad
  %.4260 = phi ptr [ %i.ee, %bb.ad ], [ %.3259, %bb.ab ], [ %spec.select, %bb.ae ] ; 6 uses
  %.079.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.4260521 = ptrtoaddr ptr %.4260 to i64
  %i.eg = icmp eq ptr %.4260, %1
  br i1 %i.eg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.thread301
  %i.eh = load i8, ptr %.4260, align 1, !tbaa !71, !noalias !446
  %i.ei = sext i8 %i.eh to i32
  %i.ej = add nsw i32 %i.ei, -48
  %i.ek = icmp ult i32 %i.ej, 10
  br i1 %i.ek, label %.lr.ph460.preheader, label %bb.ag

.lr.ph460.preheader:                              ; preds = %bb.af
  %i.el = sub i64 %i.a, %.4260521
  %scevgep522 = getelementptr i8, ptr %.4260, i64 %i.el
  br label %.lr.ph460

bb.ag:                                            ; preds = %bb.af, %.thread301
  %i.em = and i64 %3, 4
  %.not134.i = icmp eq i64 %i.em, 0
  br i1 %.not134.i, label %.thread598, label %.thread303

.lr.ph460:                                        ; preds = %.lr.ph460.preheader, %bb.aj
  %.080.i459 = phi i64 [ %.1.i, %bb.aj ], [ 0, %.lr.ph460.preheader ] ; 4 uses
  %.9458 = phi ptr [ %i.ew, %bb.aj ], [ %.4260, %.lr.ph460.preheader ] ; 3 uses
  %i.en = load i8, ptr %.9458, align 1, !tbaa !71, !noalias !446 ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -48
  %i.eq = icmp ult i32 %i.ep, 10
  br i1 %i.eq, label %bb.ah, label %.critedge7.i

bb.ah:                                            ; preds = %.lr.ph460
  %i.er = icmp slt i64 %.080.i459, 268435456
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = add i8 %i.en, -48
  %i.et = mul nsw i64 %.080.i459, 10
  %i.eu = zext i8 %i.es to i64
  %i.ev = add nsw i64 %i.et, %i.eu
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i = phi i64 [ %i.ev, %bb.ai ], [ %.080.i459, %bb.ah ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.9458, i64 1 ; 2 uses
  %.not133.i = icmp eq ptr %i.ew, %1
  br i1 %.not133.i, label %.critedge7.i, label %.lr.ph460, !llvm.loop !7

.critedge7.i:                                     ; preds = %bb.aj, %.lr.ph460
  %.9.lcssa.ph = phi ptr [ %scevgep522, %bb.aj ], [ %.9458, %.lr.ph460 ]
  %.080.i.lcssa.ph = phi i64 [ %.1.i, %bb.aj ], [ %.080.i459, %.lr.ph460 ] ; 2 uses
  %i.ex = sub nsw i64 0, %.080.i.lcssa.ph
  %spec.select.i = select i1 %.079.i, i64 %i.ex, i64 %.080.i.lcssa.ph ; 2 uses
  %i.ey = add nsw i64 %spec.select.i, %.081.i300
  br label %.thread303

bb.ak:                                            ; preds = %bb.y, %bb.x
  %i.ez = and i64 %3, 5
  %or.cond321.not.not = icmp eq i64 %i.ez, 1
  br i1 %or.cond321.not.not, label %.thread598, label %.thread303

.thread303:                                       ; preds = %bb.ag, %.critedge7.i, %bb.ak
  %.6262 = phi ptr [ %.2258295, %bb.ak ], [ %.9.lcssa.ph, %.critedge7.i ], [ %.2258295, %bb.ag ] ; 3 uses
  %.384.i = phi i64 [ %.081.i300, %bb.ak ], [ %i.ey, %.critedge7.i ], [ %.081.i300, %bb.ag ] ; 2 uses
  %.5.i = phi i64 [ 0, %bb.ak ], [ %spec.select.i, %.critedge7.i ], [ 0, %bb.ag ]
  %i.fa = icmp sgt i64 %.087.i299, 19
  br i1 %i.fa, label %.preheader357, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader357:                                    ; preds = %.thread303
  br i1 %.not.i, label %.preheader, label %.lr.ph469

.lr.ph469:                                        ; preds = %.preheader357, %.critedge11.i
  %.0.i468 = phi ptr [ %i.ff, %.critedge11.i ], [ %.0256, %.preheader357 ] ; 2 uses
  %.188.i467 = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.087.i299, %.preheader357 ] ; 2 uses
  %i.fb = load i8, ptr %.0.i468, align 1, !tbaa !71 ; 2 uses
  %i.fc = icmp eq i8 %i.fb, 48                    ; 2 uses
  %i.fd = icmp eq i8 %i.fb, %.sroa.2.8.extract.trunc.i
  %or.cond138.i = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond138.i, label %.critedge11.i, label %.critedge9.i

.critedge11.i:                                    ; preds = %.lr.ph469
  %i.fe = sext i1 %i.fc to i64
  %spec.select139.i = add nsw i64 %.188.i467, %i.fe ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i468, i64 1 ; 2 uses
  %.not135.i = icmp eq ptr %i.ff, %1
  br i1 %.not135.i, label %.critedge9.i, label %.lr.ph469, !llvm.loop !8

.critedge9.i:                                     ; preds = %.critedge11.i, %.lr.ph469
  %.188.i.lcssa.ph = phi i64 [ %spec.select139.i, %.critedge11.i ], [ %.188.i467, %.lr.ph469 ]
  %i.fg = icmp sgt i64 %.188.i.lcssa.ph, 19
  br i1 %i.fg, label %.preheader, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader:                                       ; preds = %.preheader357, %.critedge9.i
  %.not488 = icmp eq ptr %.0256, %.1257
  br i1 %.not488, label %._crit_edge476.thread, label %.lr.ph475

.lr.ph475:                                        ; preds = %.preheader, %.lr.ph475
  %.3474 = phi i64 [ %i.fl, %.lr.ph475 ], [ 0, %.preheader ]
  %.7263473 = phi ptr [ %i.fm, %.lr.ph475 ], [ %.0256, %.preheader ] ; 2 uses
  %i.fh = mul nuw i64 %.3474, 10
  %i.fi = load i8, ptr %.7263473, align 1, !tbaa !71
  %i.fj = sext i8 %i.fi to i64
  %i.fk = add i64 %i.fh, -48
  %i.fl = add i64 %i.fk, %i.fj                    ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.7263473, i64 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fl, 1000000000000000000
  %i.fo = icmp ne ptr %i.fm, %.1257
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %.lr.ph475, label %._crit_edge476, !llvm.loop !9

._crit_edge476:                                   ; preds = %.lr.ph475
  %i.fq = icmp ugt i64 %i.fl, 999999999999999999
  br i1 %i.fq, label %bb.al, label %._crit_edge476.thread

._crit_edge476.thread:                            ; preds = %.preheader, %._crit_edge476
  %.3.lcssa582 = phi i64 [ %i.fl, %._crit_edge476 ], [ 0, %.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.17.0296, i64 %.sroa.20.0297
  %.not489 = icmp samesign eq i64 %.sroa.20.0297, 0
  br i1 %.not489, label %._crit_edge483, label %.lr.ph482

.lr.ph482:                                        ; preds = %._crit_edge476.thread, %.lr.ph482
  %.4480 = phi i64 [ %i.fw, %.lr.ph482 ], [ %.3.lcssa582, %._crit_edge476.thread ]
  %.8264479 = phi ptr [ %i.fx, %.lr.ph482 ], [ %.sroa.17.0296, %._crit_edge476.thread ] ; 2 uses
  %i.fs = mul nuw i64 %.4480, 10
  %i.ft = load i8, ptr %.8264479, align 1, !tbaa !71
  %i.fu = sext i8 %i.ft to i64
  %i.fv = add i64 %i.fs, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.8264479, i64 1 ; 3 uses
  %i.fy = icmp ult i64 %i.fw, 1000000000000000000
  %i.fz = icmp ne ptr %i.fx, %i.fr
  %i.ga = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %i.ga, label %.lr.ph482, label %._crit_edge483, !llvm.loop !10

._crit_edge483:                                   ; preds = %.lr.ph482, %._crit_edge476.thread
  %.8264.lcssa = phi ptr [ %.sroa.17.0296, %._crit_edge476.thread ], [ %i.fx, %.lr.ph482 ]
  %.4.lcssa = phi i64 [ %.3.lcssa582, %._crit_edge476.thread ], [ %i.fw, %.lr.ph482 ]
  %i.gb = ptrtoint ptr %.sroa.17.0296 to i64
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge476, %._crit_edge483
  %.8264.lcssa.sink = phi ptr [ %.8264.lcssa, %._crit_edge483 ], [ %i.fm, %._crit_edge476 ]
  %.sink = phi i64 [ %i.gb, %._crit_edge483 ], [ %i.bk, %._crit_edge476 ]
  %.5 = phi i64 [ %.4.lcssa, %._crit_edge483 ], [ %i.fl, %._crit_edge476 ]
  %i.gc = ptrtoint ptr %.8264.lcssa.sink to i64
  %i.gd = sub i64 %.sink, %i.gc
  %.485.i = add nsw i64 %i.gd, %.5.i
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

bb.am:                                            ; preds = %bb.a
  br i1 %i.d, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = and i64 %3, 128
  %.not.i13 = icmp ne i64 %i.ge, 0
  %i.gf = icmp eq i8 %.fr, 43
  %or.cond322 = and i1 %.not.i13, %i.gf
  br i1 %or.cond322, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.gh = icmp eq ptr %i.gg, %1
  br i1 %i.gh, label %.thread598, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load i8, ptr %i.gg, align 1, !tbaa !71, !noalias !447 ; 3 uses
  %i.gj = sext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48
  %i.gl = icmp ult i32 %i.gk, 10
  %.not110.i = icmp eq i8 %i.gi, %.sroa.2.8.extract.trunc.i
  %or.cond323 = select i1 %i.gl, i1 true, i1 %.not110.i
  br i1 %or.cond323, label %bb.aq, label %.thread598

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gm = phi i8 [ %i.gi, %bb.ap ], [ %.fr, %bb.an ] ; 2 uses
  %.0274 = phi ptr [ %i.gg, %bb.ap ], [ %0, %bb.an ] ; 17 uses
  %.0274512 = ptrtoaddr ptr %.0274 to i64
  %.not111.i = icmp eq ptr %.0274, %1             ; 2 uses
  br i1 %.not111.i, label %.critedge.i14, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gn = sext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -48
  %i.gp = icmp ult i32 %i.go, 10
  br i1 %i.gp, label %bb.as, label %.critedge.i14

bb.as:                                            ; preds = %bb.ar
  %i.gq = sext i8 %i.gm to i64
  %i.gr = add nsw i64 %i.gq, -48                  ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0274, i64 1 ; 4 uses
  %.not112.i = icmp eq ptr %i.gs, %1
  br i1 %.not112.i, label %.critedge.i14, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.gu = sext i8 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, -48
  %i.gw = icmp ult i32 %i.gv, 10
  br i1 %i.gw, label %bb.au, label %.critedge.i14

bb.au:                                            ; preds = %bb.at
  %i.gx = mul nuw nsw i64 %i.gr, 10
  %i.gy = sext i8 %i.gt to i64
  %i.gz = add nsw i64 %i.gx, -48
  %i.ha = add nsw i64 %i.gz, %i.gy                ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0274, i64 2 ; 4 uses
  %.not113.i = icmp eq ptr %i.hb, %1
  br i1 %.not113.i, label %.critedge.i14, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.hd = sext i8 %i.hc to i32
  %i.he = add nsw i32 %i.hd, -48
  %i.hf = icmp ult i32 %i.he, 10
  br i1 %i.hf, label %bb.aw, label %.critedge.i14

bb.aw:                                            ; preds = %bb.av
  %i.hg = mul nsw i64 %i.ha, 10
  %i.hh = sext i8 %i.hc to i64
  %i.hi = add nsw i64 %i.hg, -48
  %i.hj = add nsw i64 %i.hi, %i.hh                ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0274, i64 3 ; 4 uses
  %.not114.i = icmp eq ptr %i.hk, %1
  br i1 %.not114.i, label %.critedge.i14, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.hm = sext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.ay, label %.critedge.i14

bb.ay:                                            ; preds = %bb.ax
  %i.hp = mul nsw i64 %i.hj, 10
  %i.hq = sext i8 %i.hl to i64
  %i.hr = add nsw i64 %i.hp, -48
  %i.hs = add nsw i64 %i.hr, %i.hq                ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0274, i64 4 ; 4 uses
  %.not115.i = icmp eq ptr %i.ht, %1
  br i1 %.not115.i, label %.critedge.i14, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.hv = sext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, -48
  %i.hx = icmp ult i32 %i.hw, 10
  br i1 %i.hx, label %bb.ba, label %.critedge.i14

bb.ba:                                            ; preds = %bb.az
  %i.hy = mul nsw i64 %i.hs, 10
  %i.hz = sext i8 %i.hu to i64
  %i.ia = add nsw i64 %i.hy, -48
  %i.ib = add nsw i64 %i.ia, %i.hz                ; 2 uses
  %storemerge.i37378 = getelementptr inbounds nuw i8, ptr %.0274, i64 5 ; 3 uses
  %.not116.i379 = icmp eq ptr %storemerge.i37378, %1
  br i1 %.not116.i379, label %.critedge.i14, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ba
  %i.ic = sub i64 %i.a, %.0274512
  %scevgep = getelementptr i8, ptr %.0274, i64 %i.ic
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bb
  %storemerge.i37381 = phi ptr [ %storemerge.i37, %bb.bb ], [ %storemerge.i37378, %.lr.ph.preheader ] ; 3 uses
  %storemerge131.i380 = phi i64 [ %i.ik, %bb.bb ], [ %i.ib, %.lr.ph.preheader ] ; 2 uses
  %i.id = load i8, ptr %storemerge.i37381, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.ie = sext i8 %i.id to i32
  %i.if = add nsw i32 %i.ie, -48
  %i.ig = icmp ult i32 %i.if, 10
  br i1 %i.ig, label %bb.bb, label %.critedge.i14

bb.bb:                                            ; preds = %.lr.ph
  %i.ih = mul i64 %storemerge131.i380, 10
  %i.ii = sext i8 %i.id to i64
  %i.ij = add i64 %i.ih, -48
  %i.ik = add i64 %i.ij, %i.ii                    ; 2 uses
  %storemerge.i37 = getelementptr inbounds nuw i8, ptr %storemerge.i37381, i64 1 ; 2 uses
  %.not116.i = icmp eq ptr %storemerge.i37, %1
  br i1 %.not116.i, label %.critedge.i14, label %.lr.ph, !llvm.loop !0

.critedge.i14:                                    ; preds = %bb.bb, %.lr.ph, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.1275 = phi ptr [ %.0274, %bb.aq ], [ %i.gs, %bb.as ], [ %i.hb, %bb.au ], [ %i.hk, %bb.aw ], [ %i.ht, %bb.ay ], [ %i.gs, %bb.at ], [ %.0274, %bb.ar ], [ %i.ht, %bb.az ], [ %i.hk, %bb.ax ], [ %i.hb, %bb.av ], [ %storemerge.i37378, %bb.ba ], [ %scevgep, %bb.bb ], [ %storemerge.i37381, %.lr.ph ] ; 8 uses
  %.0265 = phi i64 [ 0, %bb.aq ], [ %i.gr, %bb.as ], [ %i.ha, %bb.au ], [ %i.hj, %bb.aw ], [ %i.hs, %bb.ay ], [ %i.gr, %bb.at ], [ 0, %bb.ar ], [ %i.hs, %bb.az ], [ %i.hj, %bb.ax ], [ %i.ha, %bb.av ], [ %i.ib, %bb.ba ], [ %i.ik, %bb.bb ], [ %storemerge131.i380, %.lr.ph ] ; 4 uses
  %i.il = ptrtoint ptr %.1275 to i64              ; 2 uses
  %i.im = ptrtoint ptr %.0274 to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %.not117.i = icmp eq ptr %.1275, %1
  br i1 %.not117.i, label %.critedge133.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i14
  %i.io = load i8, ptr %.1275, align 1, !tbaa !71, !noalias !447
  %i.ip = icmp eq i8 %i.io, %.sroa.2.8.extract.trunc.i
  br i1 %i.ip, label %bb.bd, label %.critedge133.i

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %.1275, i64 1 ; 4 uses
  %i.ir = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.is = ptrtoint ptr %i.iq to i64               ; 3 uses
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 7
  br i1 %i.iu, label %.lr.ph388, label %.critedge.i49

.lr.ph388:                                        ; preds = %bb.bd, %.noexc
  %.7272387 = phi i64 [ %i.jk, %.noexc ], [ %.0265, %bb.bd ] ; 2 uses
  %.11285386 = phi ptr [ %i.jl, %.noexc ], [ %i.iq, %bb.bd ] ; 3 uses
  %.0.copyload.i57 = load i64, ptr %.11285386, align 1, !noalias !447 ; 3 uses
  %i.iv = add i64 %.0.copyload.i57, 5063812098665367110
  %i.iw = add i64 %.0.copyload.i57, -3472328296227680304 ; 3 uses
  %i.ix = or i64 %i.iv, %i.iw
  %i.iy = and i64 %i.ix, -9187201950435737472
  %.not.i54 = icmp eq i64 %i.iy, 0
  br i1 %.not.i54, label %.noexc, label %.critedge.i49.thread.loopexit

.noexc:                                           ; preds = %.lr.ph388
  %i.iz = mul i64 %.7272387, 100000000
  %i.ja = mul i64 %i.iw, 10
  %i.jb = lshr i64 %i.iw, 8
  %i.jc = add i64 %i.ja, %i.jb                    ; 2 uses
  %i.jd = and i64 %i.jc, 1095216660735
  %i.je = mul i64 %i.jd, 4294967296000100
  %i.jf = lshr i64 %i.jc, 16
  %i.jg = and i64 %i.jf, 1095216660735
  %i.jh = mul i64 %i.jg, 42949672960001
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = lshr i64 %i.ji, 32
  %i.jk = add i64 %i.jj, %i.iz                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.11285386, i64 8 ; 3 uses
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = sub i64 %i.ir, %i.jm                    ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, 7
  br i1 %i.jo, label %.lr.ph388, label %.critedge.i49, !llvm.loop !1

.critedge.i49:                                    ; preds = %.noexc, %bb.bd
  %.11285.lcssa = phi ptr [ %i.iq, %bb.bd ], [ %i.jl, %.noexc ] ; 3 uses
  %.7272.lcssa = phi i64 [ %.0265, %bb.bd ], [ %i.jk, %.noexc ] ; 2 uses
  %.lcssa372 = phi i64 [ %i.it, %bb.bd ], [ %i.jn, %.noexc ]
  %i.jp = icmp sgt i64 %.lcssa372, 3
  br i1 %i.jp, label %.critedge.i49..critedge.i49.thread_crit_edge, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

.critedge.i49..critedge.i49.thread_crit_edge:     ; preds = %.critedge.i49
  %.0.copyload.i59.pre = load i32, ptr %.11285.lcssa, align 1, !noalias !447
  br label %.critedge.i49.thread

.critedge.i49.thread.loopexit:                    ; preds = %.lr.ph388
  %i.jq = trunc i64 %.0.copyload.i57 to i32
  br label %.critedge.i49.thread

.critedge.i49.thread:                             ; preds = %.critedge.i49..critedge.i49.thread_crit_edge, %.critedge.i49.thread.loopexit
  %.0.copyload.i59 = phi i32 [ %.0.copyload.i59.pre, %.critedge.i49..critedge.i49.thread_crit_edge ], [ %i.jq, %.critedge.i49.thread.loopexit ] ; 2 uses
  %.11285377 = phi ptr [ %.11285.lcssa, %.critedge.i49..critedge.i49.thread_crit_edge ], [ %.11285386, %.critedge.i49.thread.loopexit ] ; 2 uses
  %.7272375 = phi i64 [ %.7272.lcssa, %.critedge.i49..critedge.i49.thread_crit_edge ], [ %.7272387, %.critedge.i49.thread.loopexit ] ; 2 uses
  %i.jr = add i32 %.0.copyload.i59, 1179010630
  %i.js = add i32 %.0.copyload.i59, -808464432    ; 3 uses
  %i.jt = or i32 %i.jr, %i.js
  %i.ju = and i32 %i.jt, -2139062144
  %.not.i61 = icmp eq i32 %i.ju, 0
  br i1 %.not.i61, label %bb.be, label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

bb.be:                                            ; preds = %.critedge.i49.thread
  %i.jv = mul i64 %.7272375, 10000
  %i.jw = mul i32 %i.js, 10
  %i.jx = lshr i32 %i.js, 8
  %i.jy = add i32 %i.jw, %i.jx
  %i.jz = and i32 %i.jy, 16711935
  %i.ka = mul i32 %i.jz, 6553601
  %i.kb = lshr i32 %i.ka, 16
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = add i64 %i.jv, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.11285377, i64 4
  br label %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit

_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit: ; preds = %.critedge.i49, %.critedge.i49.thread, %bb.be
  %.12286 = phi ptr [ %i.ke, %bb.be ], [ %.11285377, %.critedge.i49.thread ], [ %.11285.lcssa, %.critedge.i49 ] ; 5 uses
  %.8273 = phi i64 [ %i.kd, %bb.be ], [ %.7272375, %.critedge.i49.thread ], [ %.7272.lcssa, %.critedge.i49 ] ; 2 uses
  %.not118.i36392 = icmp eq ptr %.12286, %1
  br i1 %.not118.i36392, label %.critedge2.i, label %.lr.ph395.preheader

.lr.ph395.preheader:                              ; preds = %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.12286513 = ptrtoaddr ptr %.12286 to i64
  %i.kf = sub i64 %i.a, %.12286513
  %scevgep514 = getelementptr i8, ptr %.12286, i64 %i.kf
  br label %.lr.ph395

.lr.ph395:                                        ; preds = %.lr.ph395.preheader, %bb.bf
  %.6271394 = phi i64 [ %i.ko, %bb.bf ], [ %.8273, %.lr.ph395.preheader ] ; 2 uses
  %.10284393 = phi ptr [ %i.kl, %bb.bf ], [ %.12286, %.lr.ph395.preheader ] ; 3 uses
  %i.kg = load i8, ptr %.10284393, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.kh = sext i8 %i.kg to i32
  %i.ki = add nsw i32 %i.kh, -48
  %i.kj = icmp ult i32 %i.ki, 10
  br i1 %i.kj, label %bb.bf, label %.critedge2.i

bb.bf:                                            ; preds = %.lr.ph395
  %i.kk = add i8 %i.kg, -48
  %i.kl = getelementptr inbounds nuw i8, ptr %.10284393, i64 1 ; 2 uses
  %i.km = mul i64 %.6271394, 10
  %i.kn = zext i8 %i.kk to i64
  %i.ko = add i64 %i.km, %i.kn                    ; 2 uses
  %.not118.i36 = icmp eq ptr %i.kl, %1
  br i1 %.not118.i36, label %.critedge2.i, label %.lr.ph395, !llvm.loop !2

.critedge2.i:                                     ; preds = %bb.bf, %.lr.ph395, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit
  %.10284.lcssa = phi ptr [ %.12286, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.10284393, %.lr.ph395 ], [ %scevgep514, %bb.bf ] ; 2 uses
  %.6271.lcssa = phi i64 [ %.8273, %_ZN10fast_float26loop_parse_if_eight_digitsERPKcS1_Rm.exit ], [ %.6271394, %.lr.ph395 ], [ %i.ko, %bb.bf ]
  %i.kp = ptrtoint ptr %.10284.lcssa to i64       ; 2 uses
  %i.kq = sub i64 %i.is, %i.kp                    ; 2 uses
  %i.kr = sub i64 %i.kp, %i.is
  %i.ks = sub nsw i64 %i.in, %i.kq
  br label %.critedge133.i

.critedge133.i:                                   ; preds = %.critedge2.i, %bb.bc, %.critedge.i14
  %.2276 = phi ptr [ %.1275, %.critedge.i14 ], [ %.10284.lcssa, %.critedge2.i ], [ %.1275, %bb.bc ] ; 9 uses
  %.sroa.17166.0 = phi ptr [ null, %.critedge.i14 ], [ %i.iq, %.critedge2.i ], [ null, %bb.bc ] ; 7 uses
  %.sroa.20168.0 = phi i64 [ 0, %.critedge.i14 ], [ %i.kr, %.critedge2.i ], [ 0, %bb.bc ] ; 5 uses
  %.1266 = phi i64 [ %.0265, %.critedge.i14 ], [ %.6271.lcssa, %.critedge2.i ], [ %.0265, %bb.bc ] ; 2 uses
  %.080.i15 = phi i64 [ %i.in, %.critedge.i14 ], [ %i.ks, %.critedge2.i ], [ %i.in, %bb.bc ] ; 3 uses
  %.074.i = phi i64 [ 0, %.critedge.i14 ], [ %i.kq, %.critedge2.i ], [ 0, %bb.bc ] ; 3 uses
  %i.kt = icmp eq i64 %.080.i15, 0
  br i1 %i.kt, label %.thread598, label %bb.bg

bb.bg:                                            ; preds = %.critedge133.i
  %i.ku = and i64 %3, 1
  %.not119.i16 = icmp eq i64 %i.ku, 0
  %.not120.i17 = icmp eq ptr %.2276, %1           ; 2 uses
  %or.cond324 = or i1 %.not119.i16, %.not120.i17
  br i1 %or.cond324, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kv = load i8, ptr %.2276, align 1, !tbaa !71, !noalias !447 ; 3 uses
  switch i8 %i.kv, label %bb.bi [
    i8 101, label %bb.bk
    i8 69, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kw = and i64 %3, 64
  %.not121.i32 = icmp eq i64 %i.kw, 0
  %or.cond325 = or i1 %.not121.i32, %.not120.i17
  br i1 %or.cond325, label %bb.bv, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kx = load i8, ptr %.2276, align 1, !tbaa !71, !noalias !447 ; 5 uses
  switch i8 %i.kx, label %bb.bv [
    i8 43, label %bb.bk
    i8 45, label %bb.bk
    i8 100, label %bb.bk
    i8 68, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bh, %bb.bh
  %i.ky = phi i8 [ %i.kx, %bb.bj ], [ %i.kx, %bb.bj ], [ %i.kx, %bb.bj ], [ %i.kx, %bb.bj ], [ %i.kv, %bb.bh ], [ %i.kv, %bb.bh ]
  switch i8 %i.ky, label %bb.bm [
    i8 101, label %bb.bl
    i8 69, label %bb.bl
    i8 100, label %bb.bl
    i8 68, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk, %bb.bk, %bb.bk, %bb.bk
  %i.kz = getelementptr inbounds nuw i8, ptr %.2276, i64 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.3277 = phi ptr [ %.2276, %bb.bk ], [ %i.kz, %bb.bl ] ; 5 uses
  %.not125.i18 = icmp eq ptr %.3277, %1
  br i1 %.not125.i18, label %.thread308, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.la = load i8, ptr %.3277, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.lb = icmp eq i8 %i.la, 45
  br i1 %i.lb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lc = getelementptr inbounds nuw i8, ptr %.3277, i64 1
  br label %.thread308

bb.bp:                                            ; preds = %bb.bn
  %i.ld = icmp eq i8 %i.la, 43
  %spec.select326.idx = zext i1 %i.ld to i64
  %spec.select326 = getelementptr inbounds nuw i8, ptr %.3277, i64 %spec.select326.idx
  br label %.thread308

.thread308:                                       ; preds = %bb.bp, %bb.bm, %bb.bo
  %.4278 = phi ptr [ %i.lc, %bb.bo ], [ %.3277, %bb.bm ], [ %spec.select326, %bb.bp ] ; 6 uses
  %.072.i = phi i1 [ true, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bp ]
  %.4278515 = ptrtoaddr ptr %.4278 to i64
  %i.le = icmp eq ptr %.4278, %1
  br i1 %i.le, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.thread308
  %i.lf = load i8, ptr %.4278, align 1, !tbaa !71, !noalias !447
  %i.lg = sext i8 %i.lf to i32
  %i.lh = add nsw i32 %i.lg, -48
  %i.li = icmp ult i32 %i.lh, 10
  br i1 %i.li, label %.lr.ph404.preheader, label %bb.br

.lr.ph404.preheader:                              ; preds = %bb.bq
  %i.lj = sub i64 %i.a, %.4278515
  %scevgep516 = getelementptr i8, ptr %.4278, i64 %i.lj
  br label %.lr.ph404

bb.br:                                            ; preds = %bb.bq, %.thread308
  %i.lk = and i64 %3, 4
  %.not128.i20 = icmp eq i64 %i.lk, 0
  br i1 %.not128.i20, label %.thread598, label %.thread310

.lr.ph404:                                        ; preds = %.lr.ph404.preheader, %bb.bu
  %.073.i403 = phi i64 [ %.1.i31, %bb.bu ], [ 0, %.lr.ph404.preheader ] ; 4 uses
  %.9283402 = phi ptr [ %i.lu, %bb.bu ], [ %.4278, %.lr.ph404.preheader ] ; 3 uses
  %i.ll = load i8, ptr %.9283402, align 1, !tbaa !71, !noalias !447 ; 2 uses
  %i.lm = sext i8 %i.ll to i32
  %i.ln = add nsw i32 %i.lm, -48
  %i.lo = icmp ult i32 %i.ln, 10
  br i1 %i.lo, label %bb.bs, label %.critedge4.i

bb.bs:                                            ; preds = %.lr.ph404
  %i.lp = icmp slt i64 %.073.i403, 268435456
  br i1 %i.lp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lq = add i8 %i.ll, -48
  %i.lr = mul nsw i64 %.073.i403, 10
  %i.ls = zext i8 %i.lq to i64
  %i.lt = add nsw i64 %i.lr, %i.ls
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i31 = phi i64 [ %i.lt, %bb.bt ], [ %.073.i403, %bb.bs ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.9283402, i64 1 ; 2 uses
  %.not127.i29 = icmp eq ptr %i.lu, %1
  br i1 %.not127.i29, label %.critedge4.i, label %.lr.ph404, !llvm.loop !3

.critedge4.i:                                     ; preds = %bb.bu, %.lr.ph404
  %.9283.lcssa.ph = phi ptr [ %scevgep516, %bb.bu ], [ %.9283402, %.lr.ph404 ]
  %.073.i.lcssa.ph = phi i64 [ %.1.i31, %bb.bu ], [ %.073.i403, %.lr.ph404 ] ; 2 uses
  %i.lv = sub nsw i64 0, %.073.i.lcssa.ph
  %spec.select.i30 = select i1 %.072.i, i64 %i.lv, i64 %.073.i.lcssa.ph ; 2 uses
  %i.lw = add nsw i64 %spec.select.i30, %.074.i
  br label %.thread310

bb.bv:                                            ; preds = %bb.bj, %bb.bi
  %i.lx = and i64 %3, 5
  %or.cond327.not.not = icmp eq i64 %i.lx, 1
  br i1 %or.cond327.not.not, label %.thread598, label %.thread310

.thread310:                                       ; preds = %bb.br, %.critedge4.i, %bb.bv
  %.6280 = phi ptr [ %.2276, %bb.bv ], [ %.9283.lcssa.ph, %.critedge4.i ], [ %.2276, %bb.br ] ; 3 uses
  %.377.i = phi i64 [ %.074.i, %bb.bv ], [ %i.lw, %.critedge4.i ], [ %.074.i, %bb.br ] ; 2 uses
  %.5.i23 = phi i64 [ 0, %bb.bv ], [ %spec.select.i30, %.critedge4.i ], [ 0, %bb.br ]
  %i.ly = icmp sgt i64 %.080.i15, 19
  br i1 %i.ly, label %.preheader360, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader360:                                    ; preds = %.thread310
  br i1 %.not111.i, label %.preheader359, label %.lr.ph413

.lr.ph413:                                        ; preds = %.preheader360, %.critedge8.i
  %.0.i25412 = phi ptr [ %i.md, %.critedge8.i ], [ %.0274, %.preheader360 ] ; 2 uses
  %.181.i411 = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.080.i15, %.preheader360 ] ; 2 uses
  %i.lz = load i8, ptr %.0.i25412, align 1, !tbaa !71 ; 2 uses
  %i.ma = icmp eq i8 %i.lz, 48                    ; 2 uses
  %i.mb = icmp eq i8 %i.lz, %.sroa.2.8.extract.trunc.i
  %or.cond.i27 = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %or.cond.i27, label %.critedge8.i, label %.critedge6.i

.critedge8.i:                                     ; preds = %.lr.ph413
  %i.mc = sext i1 %i.ma to i64
  %spec.select134.i = add nsw i64 %.181.i411, %i.mc ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i25412, i64 1 ; 2 uses
  %.not129.i26 = icmp eq ptr %i.md, %1
  br i1 %.not129.i26, label %.critedge6.i, label %.lr.ph413, !llvm.loop !4

.critedge6.i:                                     ; preds = %.critedge8.i, %.lr.ph413
  %.181.i.lcssa.ph = phi i64 [ %spec.select134.i, %.critedge8.i ], [ %.181.i411, %.lr.ph413 ]
  %i.me = icmp sgt i64 %.181.i.lcssa.ph, 19
  br i1 %i.me, label %.preheader359, label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

.preheader359:                                    ; preds = %.preheader360, %.critedge6.i
  %.not486 = icmp eq ptr %.0274, %.1275
  br i1 %.not486, label %._crit_edge.thread, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader359, %.lr.ph419
  %.3268418 = phi i64 [ %i.mj, %.lr.ph419 ], [ 0, %.preheader359 ]
  %.7281417 = phi ptr [ %i.mk, %.lr.ph419 ], [ %.0274, %.preheader359 ] ; 2 uses
  %i.mf = mul nuw i64 %.3268418, 10
  %i.mg = load i8, ptr %.7281417, align 1, !tbaa !71
  %i.mh = sext i8 %i.mg to i64
  %i.mi = add i64 %i.mf, -48
  %i.mj = add i64 %i.mi, %i.mh                    ; 5 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.7281417, i64 1 ; 3 uses
  %i.ml = icmp ult i64 %i.mj, 1000000000000000000
  %i.mm = icmp ne ptr %i.mk, %.1275
  %i.mn = select i1 %i.ml, i1 %i.mm, i1 false
  br i1 %i.mn, label %.lr.ph419, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph419
  %i.mo = icmp ugt i64 %i.mj, 999999999999999999
  br i1 %i.mo, label %bb.bw, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader359, %._crit_edge
  %.3268.lcssa586 = phi i64 [ %i.mj, %._crit_edge ], [ 0, %.preheader359 ] ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.17166.0, i64 %.sroa.20168.0
  %.not487 = icmp samesign eq i64 %.sroa.20168.0, 0
  br i1 %.not487, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %._crit_edge.thread, %.lr.ph425
  %.4269423 = phi i64 [ %i.mu, %.lr.ph425 ], [ %.3268.lcssa586, %._crit_edge.thread ]
  %.8282422 = phi ptr [ %i.mv, %.lr.ph425 ], [ %.sroa.17166.0, %._crit_edge.thread ] ; 2 uses
  %i.mq = mul nuw i64 %.4269423, 10
  %i.mr = load i8, ptr %.8282422, align 1, !tbaa !71
  %i.ms = sext i8 %i.mr to i64
  %i.mt = add i64 %i.mq, -48
  %i.mu = add i64 %i.mt, %i.ms                    ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.8282422, i64 1 ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 1000000000000000000
  %i.mx = icmp ne ptr %i.mv, %i.mp
  %i.my = select i1 %i.mw, i1 %i.mx, i1 false
  br i1 %i.my, label %.lr.ph425, label %._crit_edge426, !llvm.loop !12

._crit_edge426:                                   ; preds = %.lr.ph425, %._crit_edge.thread
  %.8282.lcssa = phi ptr [ %.sroa.17166.0, %._crit_edge.thread ], [ %i.mv, %.lr.ph425 ]
  %.4269.lcssa = phi i64 [ %.3268.lcssa586, %._crit_edge.thread ], [ %i.mu, %.lr.ph425 ]
  %i.mz = ptrtoint ptr %.sroa.17166.0 to i64
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge, %._crit_edge426
  %.8282.lcssa.sink = phi ptr [ %.8282.lcssa, %._crit_edge426 ], [ %i.mk, %._crit_edge ]
  %.sink648 = phi i64 [ %i.mz, %._crit_edge426 ], [ %i.il, %._crit_edge ]
  %.5270 = phi i64 [ %.4269.lcssa, %._crit_edge426 ], [ %i.mj, %._crit_edge ]
  %i.na = ptrtoint ptr %.8282.lcssa.sink to i64
  %i.nb = sub i64 %.sink648, %i.na
  %.478.i = add nsw i64 %i.nb, %.5.i23
  br label %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit

_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit: ; preds = %.thread310, %.critedge6.i, %bb.bw, %.thread303, %.critedge9.i, %bb.al
  %.6.i24.sink = phi i64 [ %.384.i, %.thread303 ], [ %.485.i, %bb.al ], [ %.384.i, %.critedge9.i ], [ %.478.i, %bb.bw ], [ %.377.i, %.critedge6.i ], [ %.377.i, %.thread310 ] ; 16 uses
  %.2267.sink = phi i64 [ %.1298, %.thread303 ], [ %.5, %bb.al ], [ %.1298, %.critedge9.i ], [ %.5270, %bb.bw ], [ %.1266, %.critedge6.i ], [ %.1266, %.thread310 ] ; 18 uses
  %.6280.sink = phi ptr [ %.6262, %.thread303 ], [ %.6262, %bb.al ], [ %.6262, %.critedge9.i ], [ %.6280, %bb.bw ], [ %.6280, %.critedge6.i ], [ %.6280, %.thread310 ] ; 8 uses
  %.sroa.10162.0.sink = phi i8 [ 0, %.thread303 ], [ 1, %bb.al ], [ 0, %.critedge9.i ], [ 1, %bb.bw ], [ 0, %.critedge6.i ], [ 0, %.thread310 ] ; 2 uses
  %.0274.sink = phi ptr [ %.0256, %.thread303 ], [ %.0256, %bb.al ], [ %.0256, %.critedge9.i ], [ %.0274, %bb.bw ], [ %.0274, %.critedge6.i ], [ %.0274, %.thread310 ]
  %.sink650 = phi i64 [ %i.bm, %.thread303 ], [ %i.bm, %bb.al ], [ %i.bm, %.critedge9.i ], [ %i.in, %bb.bw ], [ %i.in, %.critedge6.i ], [ %i.in, %.thread310 ]
  %.sroa.17166.0.sink = phi ptr [ %.sroa.17.0296, %.thread303 ], [ %.sroa.17.0296, %bb.al ], [ %.sroa.17.0296, %.critedge9.i ], [ %.sroa.17166.0, %bb.bw ], [ %.sroa.17166.0, %.critedge6.i ], [ %.sroa.17166.0, %.thread310 ]
  %.sroa.20168.0.sink = phi i64 [ %.sroa.20.0297, %.thread303 ], [ %.sroa.20.0297, %bb.al ], [ %.sroa.20.0297, %.critedge9.i ], [ %.sroa.20168.0, %bb.bw ], [ %.sroa.20168.0, %.critedge6.i ], [ %.sroa.20168.0, %.thread310 ]
  store i64 %.6.i24.sink, ptr %7, align 8, !tbaa !77
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.2267.sink, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !77
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.6280.sink, ptr %.sroa.6159.0..sroa_idx, align 8, !tbaa !79
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.e, ptr %.sroa.7160.0..sroa_idx, align 8, !tbaa !81
  %.sroa.8161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.8161.0..sroa_idx, align 1, !tbaa !81
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 %.sroa.10162.0.sink, ptr %.sroa.10162.0..sroa_idx, align 2, !tbaa !81
  %.sroa.12164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %.0274.sink, ptr %.sroa.12164.0..sroa_idx, align 8, !tbaa !79
  %.sroa.15165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink650, ptr %.sroa.15165.0..sroa_idx, align 8, !tbaa !77
  %.sroa.17166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %.sroa.17166.0.sink, ptr %.sroa.17166.0..sroa_idx, align 8, !tbaa !79
  %.sroa.20168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.sroa.20168.0.sink, ptr %.sroa.20168.0..sroa_idx, align 8, !tbaa !77
  %.sroa.22169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %.sroa.22169.0..sroa_idx, align 8
  %i.nc = trunc nuw i8 %.sroa.10162.0.sink to i1  ; 2 uses
  %i.nd = add i64 %.6.i24.sink, -23
  %or.cond651 = icmp ult i64 %i.nd, -45
  %or.cond676 = select i1 %i.nc, i1 true, i1 %or.cond651
  br i1 %or.cond676, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN10fast_float19parse_number_stringILb1EcEENS_22parsed_number_string_tIT0_EEPKS2_S5_NS_15parse_options_tIS2_EEb.exit
  %i.ne = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nf = fadd float %i.ne, 1.000000e+00
  %i.ng = fsub float 1.000000e+00, %i.ne
  %i.nh = fcmp oeq float %i.nf, %i.ng
  br i1 %i.nh, label %bb.by, label %bb.cc

.thread598:                                       ; preds = %bb.bv, %bb.br, %.critedge133.i, %bb.ap, %bb.ao, %bb.ak, %bb.ag, %._crit_edge451, %bb.q, %.critedge.i, %bb.d, %bb.c
  %.ph = phi ptr [ %i.gg, %bb.ao ], [ %.2258295, %bb.ak ], [ %.2276, %.critedge133.i ], [ %i.gg, %bb.ap ], [ %.4278, %bb.br ], [ %i.f, %bb.c ], [ %.10.lcssa, %._crit_edge451 ], [ %i.f, %bb.d ], [ %.1257, %.critedge.i ], [ %.0256, %bb.q ], [ %.4260, %bb.ag ], [ %.2276, %bb.bv ] ; 2 uses
  %i.ni = load volatile float, ptr @_ZZN10fast_float6detail17rounds_to_nearestEvE4fmin, align 4, !tbaa !75 ; 2 uses
  %i.nj = fadd float %i.ni, 1.000000e+00
  %i.nk = fsub float 1.000000e+00, %i.ni
  %i.nl = fcmp oeq float %i.nj, %i.nk
  br i1 %i.nl, label %.split.thread, label %.thread620

.split.thread:                                    ; preds = %.thread598
  store double 0.000000e+00, ptr %2, align 8, !tbaa !97
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.by:                                            ; preds = %bb.bx
  %.not31.i.i = icmp ugt i64 %.2267.sink, 9007199254740992
  br i1 %.not31.i.i, label %_ZN10fast_float22clinger_fast_path_implIdEEbmlbRT_.exit.i.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = uitofp nneg i64 %.2267.sink to double   ; 3 uses
  store double %i.nm, ptr %2, align 8, !tbaa !97
  %i.nn = icmp slt i64 %.6.i24.sink, 0
  br i1 %i.nn, label %bb.ca, label %.split

.split:                                           ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %.6.i24.sink
  %i.np = load double, ptr %i.no, align 8, !tbaa !97
  %i.nq = fmul double %i.np, %i.nm                ; 2 uses
  store double %i.nq, ptr %2, align 8, !tbaa !97
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.nr = sub nsw i64 0, %.6.i24.sink
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr @_ZN10fast_float27binary_format_lookup_tablesIdvE13powers_of_tenE.const, i64 %i.nr
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !97
  %i.nu = fdiv double %i.nm, %i.nt                ; 2 uses
  store double %i.nu, ptr %2, align 8, !tbaa !97
  br i1 %i.d, label %bb.cb, label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cb:                                            ; preds = %.split, %bb.ca
  %storemerge32.i.i610 = phi double [ %i.nq, %.split ], [ %i.nu, %bb.ca ]
  %i.nv = fneg double %storemerge32.i.i610
  store double %i.nv, ptr %2, align 8, !tbaa !97
  br label %_ZN10fast_float19from_chars_advancedIdcEENS_19from_chars_result_tIT0_EERNS_22parsed_number_string_tIS2_EERT_.exit

bb.cc:                                            ; preds = %bb.bx
  %i.nw = icmp sgt i64 %.6.i24.sink, -1
end_hunk_3
