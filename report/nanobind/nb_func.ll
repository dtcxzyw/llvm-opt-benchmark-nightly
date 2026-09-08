Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_func?download=true
inline.NumInlined: 459
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE:bb.a
  %i.ht = load ptr, ptr %i.hq, align 8
  call void @_ZN8nanobind6detail22implicitly_convertibleEPNS0_12nb_internalsEPKSt9type_infoPvb(ptr noundef nonnull %0, ptr noundef %i.ht, ptr noundef nonnull %i.hs, i1 noundef zeroext false) #25
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %_ZN8nanobind6detail12strdup_checkEPKc.exit376
  %i.hu = load ptr, ptr %i.fs, align 8
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.hu)
  %i.hv = add i64 %strlen, 1                      ; 2 uses
  %i.hw = call noalias ptr @malloc(i64 noundef %i.hv) #27 ; 3 uses
  %.not.i377 = icmp eq ptr %i.hw, null
  br i1 %.not.i377, label %bb.cj, label %_ZN8nanobind6detail12malloc_checkEm.exit, !prof !6

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

_ZN8nanobind6detail12malloc_checkEm.exit:         ; preds = %bb.ci
  store ptr %i.hw, ptr %i.fu, align 8
  %i.hx = load ptr, ptr %i.fs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hw, ptr align 1 %i.hx, i64 %i.hv, i1 false)
  %i.hy = load ptr, ptr %i.fv, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %_ZN8nanobind6detail12malloc_checkEm.exit
  %.0278 = phi i64 [ 0, %_ZN8nanobind6detail12malloc_checkEm.exit ], [ %i.ib, %bb.ck ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.0278
  %i.ia = load ptr, ptr %i.hz, align 8
  %.not342 = icmp eq ptr %i.ia, null
  %i.ib = add i64 %.0278, 1
  br i1 %.not342, label %bb.cl, label %bb.ck, !llvm.loop !25

bb.cl:                                            ; preds = %bb.ck
  %i.ic = shl i64 %.0278, 3
  %i.id = add i64 %i.ic, 8                        ; 2 uses
  %i.ie = call noalias ptr @malloc(i64 noundef %i.id) #27 ; 3 uses
  %.not.i378 = icmp eq ptr %i.ie, null
  br i1 %.not.i378, label %bb.cm, label %_ZN8nanobind6detail12malloc_checkEm.exit379, !prof !6

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

_ZN8nanobind6detail12malloc_checkEm.exit379:      ; preds = %bb.cl
  store ptr %i.ie, ptr %i.fx, align 8
  %i.if = load ptr, ptr %i.fv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ie, ptr align 8 %i.if, i64 %i.id, i1 false)
  br i1 %.not317, label %.loopexit432, label %bb.cn

bb.cn:                                            ; preds = %_ZN8nanobind6detail12malloc_checkEm.exit379
  %i.ig = load i16, ptr %i.dh, align 4
  %i.ih = zext i16 %i.ig to i64
  %i.ii = mul nuw nsw i64 %i.ih, 40
  %i.ij = call noalias ptr @malloc(i64 noundef %i.ii) #27 ; 3 uses
  %.not.i380 = icmp eq ptr %i.ij, null
  br i1 %.not.i380, label %bb.co, label %_ZN8nanobind6detail12malloc_checkEm.exit381, !prof !6

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str) #26
  unreachable

_ZN8nanobind6detail12malloc_checkEm.exit381:      ; preds = %bb.cn
  store ptr %i.ij, ptr %i.gm, align 8
  br i1 %i.q, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN8nanobind6detail12malloc_checkEm.exit381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ij, ptr noundef nonnull align 8 dereferenceable(40) @_ZN8nanobind6detailL15method_self_argE, i64 40, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN8nanobind6detail12malloc_checkEm.exit381
  %.lobit = lshr exact i32 %i.p, 6                ; 2 uses
  %i.ik = zext nneg i32 %.lobit to i64            ; 2 uses
  %i.il = load i16, ptr %i.gc, align 4            ; 2 uses
  %i.im = zext i16 %i.il to i32
  %i.in = icmp samesign ult i32 %.lobit, %i.im
  br i1 %i.in, label %.lr.ph438, label %.preheader431

.preheader431:                                    ; preds = %.lr.ph438, %bb.cq
  %i.io = phi i16 [ %i.il, %bb.cq ], [ %i.iz, %.lr.ph438 ]
  %.not446 = icmp eq i16 %i.io, 0
  br i1 %.not446, label %.loopexit432, label %.lr.ph440

.lr.ph438:                                        ; preds = %bb.cq, %.lr.ph438
  %.0277437 = phi i64 [ %i.iy, %.lr.ph438 ], [ %i.ik, %bb.cq ] ; 3 uses
  %i.ip = sub nuw nsw i64 %.0277437, %i.ik
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.ip ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !33
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.iu = load i32, ptr %i.it, align 8, !noalias !33
  %i.iv = load ptr, ptr %i.gm, align 8
  %i.iw = getelementptr inbounds nuw [40 x i8], ptr %i.iv, i64 %.0277437 ; 4 uses
  %i.ix = load <2 x ptr>, ptr %i.iq, align 8, !noalias !33
  store <2 x ptr> %i.ix, ptr %i.iw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store ptr %i.is, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  store i32 %i.iu, ptr %.sroa.7.0..sroa_idx, align 8
  %i.iy = add nuw nsw i64 %.0277437, 1            ; 2 uses
  %i.iz = load i16, ptr %i.gc, align 4            ; 2 uses
  %i.ja = zext i16 %i.iz to i64
  %i.jb = icmp samesign ult i64 %i.iy, %i.ja
  br i1 %i.jb, label %.lr.ph438, label %.preheader431, !llvm.loop !28

.lr.ph440:                                        ; preds = %.preheader431, %_ZL10Py_XINCREFP7_object.exit
  %.0276439 = phi i64 [ %i.js, %_ZL10Py_XINCREFP7_object.exit ], [ 0, %.preheader431 ] ; 2 uses
  %i.jc = load ptr, ptr %i.gm, align 8
  %i.jd = getelementptr inbounds nuw [40 x i8], ptr %i.jc, i64 %.0276439 ; 6 uses
  %i.je = load ptr, ptr %i.jd, align 8            ; 2 uses
  %.not348 = icmp eq ptr %i.je, null
  br i1 %.not348, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph440
  %i.jf = invoke ptr @PyUnicode_InternFromString(ptr noundef nonnull %i.je)
          to label %bb.cs unwind label %.loopexit433 ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr %i.jf, ptr %i.jg, align 8
  %i.jh = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef %i.jf, ptr noundef null)
          to label %bb.ct unwind label %.loopexit433

bb.ct:                                            ; preds = %bb.cs
  store ptr %i.jh, ptr %i.jd, align 8
  br label %bb.cv

bb.cu:                                            ; preds = %.lr.ph440
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr null, ptr %i.ji, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %.not349 = icmp eq ptr %i.jk, null
  br i1 %.not349, label %_ZN8nanobind6detail12strdup_checkEPKc.exit383, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jl = call noalias ptr @strdup(ptr noundef nonnull readonly %i.jk) #25 ; 2 uses
  %.not.i382 = icmp eq ptr %i.jl, null
  br i1 %.not.i382, label %bb.cx, label %_ZN8nanobind6detail12strdup_checkEPKc.exit383, !prof !6

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @_ZN8nanobind6detail4failEPKcz(ptr noundef nonnull @.str.1) #26
  unreachable

_ZN8nanobind6detail12strdup_checkEPKc.exit383:    ; preds = %bb.cw, %bb.cv
  %i.jm = phi ptr [ null, %bb.cv ], [ %i.jl, %bb.cw ]
  store ptr %i.jm, ptr %i.jj, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8            ; 3 uses
  %.not.i384 = icmp eq ptr %i.jo, null
  br i1 %.not.i384, label %_ZL10Py_XINCREFP7_object.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8nanobind6detail12strdup_checkEPKc.exit383
  %i.jp = load i32, ptr %i.jo, align 8
  %i.jq = add i32 %i.jp, 1                        ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %_ZL10Py_XINCREFP7_object.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 %i.jq, ptr %i.jo, align 8
  br label %_ZL10Py_XINCREFP7_object.exit

_ZL10Py_XINCREFP7_object.exit:                    ; preds = %bb.cz, %bb.cy, %_ZN8nanobind6detail12strdup_checkEPKc.exit383
  %i.js = add nuw nsw i64 %.0276439, 1            ; 2 uses
  %i.jt = load i16, ptr %i.gc, align 4
  %i.ju = zext i16 %i.jt to i64
  %i.jv = icmp samesign ult i64 %i.js, %i.ju
  br i1 %i.jv, label %.lr.ph440, label %.loopexit432, !llvm.loop !29

.loopexit432:                                     ; preds = %_ZL10Py_XINCREFP7_object.exit, %.preheader431, %_ZN8nanobind6detail12malloc_checkEm.exit379
  %or.cond13 = and i1 %i.q, %.0289416
  %or.cond13.not = xor i1 %or.cond13, true
  %.not = xor i1 %.0288417, true
  %or.cond15 = or i1 %i.q, %.not
  %or.cond352 = select i1 %or.cond13.not, i1 %or.cond15, i1 false
  br i1 %or.cond352, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %.loopexit432
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = call noundef zeroext i1 @_ZN8nanobind6detail13nb_type_checkEPNS0_12nb_internalsEP7_object(ptr noundef nonnull %0, ptr noundef %i.jx) #25
  br i1 %i.jy, label %bb.db, label %.loopexit

bb.db:                                            ; preds = %bb.da
  %i.jz = load ptr, ptr %i.jw, align 8            ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 924 ; 4 uses
  br i1 %.0289416, label %bb.dc, label %bb.dj

bb.dc:                                            ; preds = %bb.db
  %i.kb = load i32, ptr %i.ka, align 4            ; 2 uses
  %i.kc = and i32 %i.kb, 134217728
  %.not343 = icmp eq i32 %i.kc, 0
  br i1 %.not343, label %bb.df, label %.preheader

.preheader:                                       ; preds = %bb.dc
  %i.kd = load i16, ptr %i.gc, align 4
  %i.ke = zext i16 %i.kd to i32
  %4 = lshr i32 %i.g, 5
  %.lobit344 = and i32 %4, 1
  %5 = sub nsw i32 %i.ke, %.lobit344              ; 4 uses
  %.not346441 = icmp ugt i32 %5, 1
  br i1 %.not346441, label %.lr.ph443, label %.critedge354

.lr.ph443:                                        ; preds = %.preheader
  br i1 %.not317, label %.lr.ph443.split.us, label %.lr.ph443.split

.lr.ph443.split.us:                               ; preds = %.lr.ph443
  br i1 %.not329, label %.loopexit, label %.lr.ph443.split.us.split

.lr.ph443.split.us.split:                         ; preds = %.lr.ph443.split.us
  %i.kf = load i16, ptr %i.gf, align 2            ; 2 uses
  %i.kg = zext i16 %i.kf to i32
  %i.kh = icmp ne i16 %i.kf, 1
  %i.ki = add nuw nsw i32 %i.kg, 1
  %exitcond458.not = icmp ne i32 %i.ki, %5
  %brmerge500 = select i1 %i.kh, i1 true, i1 %exitcond458.not
  br i1 %brmerge500, label %.loopexit, label %.critedge354

.lr.ph443.split:                                  ; preds = %.lr.ph443
  br i1 %.not329, label %.lr.ph443.split.split.us, label %.lr.ph443.split.split

.lr.ph443.split.split.us:                         ; preds = %.lr.ph443.split
  %i.kj = load ptr, ptr %i.gm, align 8
  %wide.trip.count456 = zext i32 %5 to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.de, %.lr.ph443.split.split.us
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %bb.de ], [ 1, %.lr.ph443.split.split.us ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [40 x i8], ptr %i.kj, i64 %indvars.iv453
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  %.not345.us = icmp eq ptr %i.km, null
  br i1 %.not345.us, label %.loopexit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %indvars.iv.next454 = add nuw nsw i64 %indvars.iv453, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next454, %wide.trip.count456
  br i1 %exitcond457.not, label %.critedge354, label %bb.dd, !llvm.loop !30

.lr.ph443.split.split:                            ; preds = %.lr.ph443.split
  %i.kn = load i16, ptr %i.gf, align 2
  %i.ko = zext i16 %i.kn to i64
  %wide.trip.count = zext i32 %5 to i64
  br label %bb.dg

bb.df:                                            ; preds = %bb.dc
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 976
  store ptr %i.cm, ptr %i.kp, align 8
  br label %.loopexit

bb.dg:                                            ; preds = %.lr.ph443.split.split, %bb.di
  %indvars.iv = phi i64 [ 1, %.lr.ph443.split.split ], [ %indvars.iv.next, %bb.di ] ; 3 uses
  %i.kq = icmp eq i64 %indvars.iv, %i.ko
  br i1 %i.kq, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kr = load ptr, ptr %i.gm, align 8
  %i.ks = getelementptr inbounds nuw [40 x i8], ptr %i.kr, i64 %indvars.iv
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8
  %.not345 = icmp eq ptr %i.ku, null
  br i1 %.not345, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond452.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond452.not, label %.critedge354, label %bb.dg, !llvm.loop !30

.critedge354:                                     ; preds = %bb.di, %bb.de, %.lr.ph443.split.us.split, %.preheader
  %i.kv = or i32 %i.kb, 268435456
  store i32 %i.kv, ptr %i.ka, align 4
  br label %.loopexit

bb.dj:                                            ; preds = %bb.db
  br i1 %.0288417, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jz, i64 976
  store ptr %i.cm, ptr %i.kw, align 8
  %i.kx = load i32, ptr %i.ka, align 4
  %i.ky = or i32 %i.kx, 134217728
  store i32 %i.ky, ptr %i.ka, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dh, %bb.dd, %.lr.ph443.split.us.split, %.lr.ph443.split.us, %bb.df, %bb.dk, %bb.dj, %.critedge354, %.loopexit432, %bb.da
  %i.kz = icmp ne ptr %.0287418, null
  %or.cond17 = select i1 %i.i, i1 %i.kz, i1 false
  br i1 %or.cond17, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %.loopexit
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke i32 @PyObject_SetAttr(ptr noundef %i.lb, ptr noundef nonnull %.0287418, ptr noundef nonnull %i.cm)
          to label %bb.dm unwind label %.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  %.not347 = icmp eq i32 %i.lc, 0
  br i1 %.not347, label %.thread423, label %bb.dn, !prof !5

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN8nanobind6detail16fail_unspecifiedEv() #26
  unreachable

bb.do:                                            ; preds = %.loopexit
  %.not.i385 = icmp eq ptr %.0287418, null
  br i1 %.not.i385, label %_ZL10Py_XDECREFP7_object.exit, label %.thread423

.thread423:                                       ; preds = %bb.dm, %bb.do
  %i.ld = load i64, ptr %.0287418, align 8        ; 2 uses
  %i.le = and i64 %i.ld, 2147483648
  %.not2.i = icmp eq i64 %i.le, 0
  br i1 %.not2.i, label %bb.dp, label %_ZL10Py_XDECREFP7_object.exit

bb.dp:                                            ; preds = %.thread423
  %i.lf = add nsw i64 %i.ld, -1                   ; 2 uses
  store i64 %i.lf, ptr %.0287418, align 8
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %bb.dq, label %_ZL10Py_XDECREFP7_object.exit

bb.dq:                                            ; preds = %bb.dp
  invoke void @_Py_Dealloc(ptr noundef nonnull %.0287418)
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %.loopexit.split-lp

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.dp, %.thread423, %bb.do, %bb.dq
  %i.lh = extractelement <4 x i1> %i.u, i64 0
  br i1 %i.lh, label %bb.dr, label %_ZL9Py_DECREFP7_object.exit

bb.dr:                                            ; preds = %_ZL10Py_XDECREFP7_object.exit
  %i.li = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.lj = and i64 %i.li, 2147483648
  %.not430 = icmp eq i64 %i.lj, 0
  br i1 %.not430, label %bb.ds, label %_ZL9Py_DECREFP7_object.exit

bb.ds:                                            ; preds = %bb.dr
  %i.lk = add nsw i64 %i.li, -1                   ; 2 uses
  store i64 %i.lk, ptr %i.cm, align 8
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.dt, label %_ZL9Py_DECREFP7_object.exit

bb.dt:                                            ; preds = %bb.ds
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.cm)
          to label %_ZL9Py_DECREFP7_object.exit unwind label %.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit:                      ; preds = %bb.ds, %bb.dr, %bb.dt, %_ZL10Py_XDECREFP7_object.exit
  %.0280 = phi ptr [ %i.cm, %_ZL10Py_XDECREFP7_object.exit ], [ null, %bb.dt ], [ null, %bb.dr ], [ null, %bb.ds ]
  ret ptr %.0280

.loopexit433:                                     ; preds = %bb.cr, %bb.cs
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.du

.loopexit.split-lp:                               ; preds = %.invoke, %bb.b, %bb.h, %.thread405, %bb.ai, %bb.dl, %bb.dt, %bb.av, %bb.ar, %bb.ax, %bb.bh, %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.du

bb.du:                                            ; preds = %.loopexit.split-lp, %.loopexit433
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit433 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lm = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.lm) #26
  unreachable
}

declare hidden noundef ptr @_ZN8nanobind6detail12extract_nameEPKcS2_S2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare ptr @PyUnicode_InternFromString(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @_ZN8nanobind6detail17internals_inc_refEPNS0_12nb_internalsE(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZN8nanobind6detailL26nb_func_vectorcall_complexEP7_objectPKS2_mS2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [0 x i8], align 16
  %4 = alloca %"struct.nanobind::detail::cleanup_list", align 8 ; 22 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 3 uses
  %i.c = and i64 %2, 4611686018427387903          ; 10 uses
  %.not = icmp ne ptr %3, null                    ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 16
  %.val272 = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.val272, %bb.b ], [ 0, %bb.a ] ; 20 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = and i32 %i.h, 64
  %i.j = icmp ne i32 %i.i, 0
  %i.k = and i32 %i.h, 128                        ; 2 uses
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %i.m = icmp ne i64 %i.c, 0
  %or.cond = and i1 %i.m, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ]
  %i.p = icmp ugt i64 %i.e, 1024
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @PyExc_TypeError, align 8
  invoke void @PyErr_SetString(ptr noundef %i.q, ptr noundef nonnull @.str.18)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
end_hunk_0
