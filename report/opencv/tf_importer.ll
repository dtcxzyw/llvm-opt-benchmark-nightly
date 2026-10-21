Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_importer?download=true
inline.NumInlined: 8193
inline.NumDeleted: 1946
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
          cleanup
  %i.qx = load ptr, ptr %14, align 8, !tbaa !46   ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349: ; preds = %bb.eb
  %i.ra = load i64, ptr %i.qy, align 8, !tbaa !56
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.rb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body410

bb.ec:                                            ; preds = %bb.dy
  %.not486 = icmp eq i32 %i.qu, 2
  br i1 %.not486, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc361 unwind label %bb.eq

.noexc361:                                        ; preds = %bb.ed
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %.noexc361
  unreachable

bb.ef:                                            ; preds = %.noexc361
  %i.rc = landingpad { ptr, i32 }
          cleanup
  %i.rd = load ptr, ptr %12, align 8, !tbaa !46   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358: ; preds = %bb.ef
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !56
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i359: ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.body410

bb.eg:                                            ; preds = %bb.ec
  %i.ri = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %38, i64 20 ; 3 uses
  %i.rk = load i32, ptr %i.ri, align 4, !tbaa !40 ; 3 uses
  %i.rl = load i32, ptr %i.rj, align 4, !tbaa !40
  store i32 %i.rl, ptr %i.ri, align 4, !tbaa !40
  store i32 %i.rk, ptr %i.rj, align 4, !tbaa !40
  %i.rm = icmp samesign ugt i32 %i.qu, 3
  br i1 %i.rm, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc379 unwind label %bb.eq

.noexc379:                                        ; preds = %bb.eh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %.noexc379
  unreachable

bb.ej:                                            ; preds = %.noexc379
  %i.rn = landingpad { ptr, i32 }
          cleanup
  %i.ro = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376: ; preds = %bb.ej
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !56
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i377: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body410

bb.ek:                                            ; preds = %bb.eg
  %i.rt = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 3 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !40
  store i32 %i.ru, ptr %i.rj, align 4, !tbaa !40
  store i32 %i.rk, ptr %i.rt, align 4, !tbaa !40
  %.not487 = icmp eq i32 %i.qu, 4
  br i1 %.not487, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc397 unwind label %bb.eq

.noexc397:                                        ; preds = %bb.el
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %.noexc397
  unreachable

bb.en:                                            ; preds = %.noexc397
  %i.rv = landingpad { ptr, i32 }
          cleanup
  %i.rw = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394: ; preds = %bb.en
  %i.rz = load i64, ptr %i.rx, align 8, !tbaa !56
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i395: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body410

bb.eo:                                            ; preds = %bb.ek
  %i.sb = getelementptr inbounds nuw i8, ptr %38, i64 28 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !40
  store i32 %i.sc, ptr %i.rt, align 4, !tbaa !40
  store i32 %i.rk, ptr %i.sb, align 4, !tbaa !40
  br label %bb.er

bb.ep:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit321
  %i.sd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.se = load ptr, ptr %48, align 8, !tbaa !46   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.os
  br i1 %i.sf, label %.body319, label %.body319.sink.split

.body319.sink.split:                              ; preds = %bb.ep, %bb.dp
  %.sink664 = phi ptr [ %i.pe, %bb.dp ], [ %i.se, %bb.ep ]
  %.pn130.ph = phi { ptr, i32 } [ %i.pd, %bb.dp ], [ %i.sd, %bb.ep ]
  %i.sg = load i64, ptr %i.os, align 8, !tbaa !56
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %.sink664, i64 noundef %i.sh) #27
  br label %.body319

.body319:                                         ; preds = %.body319.sink.split, %bb.ep, %bb.dp
  %.pn130 = phi { ptr, i32 } [ %i.pd, %bb.dp ], [ %i.sd, %bb.ep ], [ %.pn130.ph, %.body319.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %.body410

.body333:                                         ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  br label %.body410

bb.eq:                                            ; preds = %bb.cy, %bb.dc, %bb.dg, %bb.ca, %bb.ce, %bb.fx, %bb.fv, %bb.fo, %bb.es, %bb.er, %bb.at, %bb.bb, %bb.ev, %bb.ez, %bb.el, %bb.eh, %bb.ed, %bb.dz
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.body410

bb.er:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %bb.eo, %bb.dm, %bb.dl
  %i.sj = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %38)
          to label %bb.es unwind label %bb.eq

bb.es:                                            ; preds = %bb.er
  %i.sk = zext nneg i32 %.270 to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.sk
  invoke void @_ZN2cv8MatShape6insertEPii(ptr noundef nonnull align 4 dereferenceable(52) %38, ptr noundef %i.sl, i32 noundef 1)
          to label %bb.et unwind label %bb.eq

bb.et:                                            ; preds = %bb.es
  %i.sm = add nuw i32 %narrow.i, 1                ; 2 uses
  %i.sn = icmp eq i32 %i.sm, 5                    ; 2 uses
  br i1 %i.sn, label %switch.early.test, label %._crit_edge.i.i422

switch.early.test:                                ; preds = %bb.et
  switch i32 %i.as, label %.preheader [
    i32 4, label %._crit_edge.i.i422
    i32 2, label %._crit_edge.i.i422
  ]

.preheader:                                       ; preds = %switch.early.test
  %i.so = icmp sgt i32 %.fr, 1
  br i1 %i.so, label %.lr.ph, label %._crit_edge.i.i422

.lr.ph:                                           ; preds = %.preheader
  %i.sp = load i32, ptr %38, align 4, !tbaa !285
  %narrow.i404 = call i32 @llvm.smax.i32(i32 %i.sp, i32 1) ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %38, i64 12
  %55 = zext nneg i32 %narrow.i404 to i64
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %bb.eu

bb.eu:                                            ; preds = %.lr.ph, %bb.fc
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.fc ] ; 3 uses
  %i.sr = sub nsw i64 4, %indvars.iv              ; 2 uses
  %i.ss = trunc nsw i64 %i.sr to i32
  %i.st = icmp ugt i32 %narrow.i404, %i.ss
  br i1 %i.st, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc409 unwind label %bb.eq

.noexc409:                                        ; preds = %bb.ev
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.ew unwind label %bb.ex

bb.ew:                                            ; preds = %.noexc409
  unreachable

bb.ex:                                            ; preds = %.noexc409
  %i.su = landingpad { ptr, i32 }
          cleanup
  %i.sv = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i406: ; preds = %bb.ex
  %i.sy = load i64, ptr %i.sw, align 8, !tbaa !56
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i407: ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body410

bb.ey:                                            ; preds = %bb.eu
  %56 = sub nsw i64 5, %indvars.iv
  %57 = icmp ult i64 %56, %55
  br i1 %57, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc418 unwind label %bb.eq

.noexc418:                                        ; preds = %bb.ez
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %.noexc418
  unreachable

bb.fb:                                            ; preds = %.noexc418
  %i.ta = landingpad { ptr, i32 }
          cleanup
  %i.tb = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.td = icmp eq ptr %i.tb, %i.tc
  br i1 %i.td, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415: ; preds = %bb.fb
  %i.te = load i64, ptr %i.tc, align 8, !tbaa !56
  %i.tf = add i64 %i.te, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.tf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body410

bb.fc:                                            ; preds = %bb.ey
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sr ; 2 uses
  %i.th = load <2 x i32>, ptr %i.tg, align 4, !tbaa !40
  %i.ti = shufflevector <2 x i32> %i.th, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ti, ptr %i.tg, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i422, label %bb.eu, !llvm.loop !921

._crit_edge.i.i422:                               ; preds = %bb.fc, %.preheader, %switch.early.test, %switch.early.test, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.tj = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.tj, ptr %50, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.tj, ptr noundef nonnull align 1 dereferenceable(3) @.str.216, i64 3, i1 false)
  %i.tk = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 3, ptr %i.tk, align 8, !tbaa !65
  %i.tl = getelementptr inbounds nuw i8, ptr %50, i64 19
  store i8 0, ptr %i.tl, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  %i.tm = load i32, ptr %38, align 4, !tbaa !285  ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 3 uses
  %narrow.i430 = call i32 @llvm.smax.i32(i32 %i.tm, i32 0)
  %spec.select.i431 = zext nneg i32 %narrow.i430 to i64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.to = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc434 unwind label %bb.fq ; 7 uses

.noexc434:                                        ; preds = %._crit_edge.i.i422
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 2 uses
  store ptr %i.tp, ptr %i.to, align 8, !tbaa !293, !noalias !939
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %.not.i.i.i432 = icmp sgt i32 %i.tm, 1
  store i64 %spec.select.i431, ptr %i.tq, align 8, !tbaa !294, !noalias !939
  br i1 %.not.i.i.i432, label %bb.fd, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.fd:                                            ; preds = %.noexc434
  %i.tr = shl nuw nsw i64 %spec.select.i431, 3
  %i.ts = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tr) #30
          to label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread unwind label %bb.fe, !noalias !939 ; 2 uses

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread:      ; preds = %bb.fd
  store ptr %i.ts, ptr %i.to, align 8, !tbaa !293, !noalias !939
  store i32 0, ptr %51, align 8, !tbaa !297, !alias.scope !939
  %i.tt = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.to, ptr %i.tt, align 8, !tbaa !56, !alias.scope !939
  br label %.lr.ph.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc434
  store i32 0, ptr %51, align 8, !tbaa !297, !alias.scope !939
  %i.tu = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.to, ptr %i.tu, align 8, !tbaa !56, !alias.scope !939
  %.not488.not = icmp eq i32 %i.tm, 1
  br i1 %.not488.not, label %.lr.ph.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit

.lr.ph.i:                                         ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.tv = phi ptr [ %i.ts, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread ], [ %i.tp, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i ] ; 2 uses
  %min.iters.check647 = icmp slt i32 %i.tm, 4
  br i1 %min.iters.check647, label %scalar.ph646.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %.lr.ph.i
  %n.vec649 = and i64 %spec.select.i431, 2147483644 ; 4 uses
  %i.tw = shl nuw nsw i64 %n.vec649, 2
  %i.tx = getelementptr i8, ptr %i.tn, i64 %i.tw
  br label %vector.body650

vector.body650:                                   ; preds = %vector.body650, %vector.ph648
  %index651 = phi i64 [ 0, %vector.ph648 ], [ %index.next654, %vector.body650 ] ; 3 uses
  %i.ty = shl i64 %index651, 2
  %next.gep652 = getelementptr i8, ptr %i.tn, i64 %i.ty ; 2 uses
  %i.tz = getelementptr i8, ptr %next.gep652, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep652, align 4, !tbaa !40, !noalias !939
  %wide.load653 = load <2 x i32>, ptr %i.tz, align 4, !tbaa !40, !noalias !939
  %i.ua = sext <2 x i32> %wide.load to <2 x i64>
  %i.ub = sext <2 x i32> %wide.load653 to <2 x i64>
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index651 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store <2 x i64> %i.ua, ptr %i.uc, align 8, !tbaa !63, !noalias !939
  store <2 x i64> %i.ub, ptr %i.ud, align 8, !tbaa !63, !noalias !939
  %index.next654 = add nuw i64 %index651, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next654, %n.vec649
  br i1 %i.ue, label %middle.block655, label %vector.body650, !llvm.loop !924

middle.block655:                                  ; preds = %vector.body650
  %cmp.n656 = icmp eq i64 %n.vec649, %spec.select.i431
  br i1 %cmp.n656, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph646.preheader

scalar.ph646.preheader:                           ; preds = %.lr.ph.i, %middle.block655
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec649, %middle.block655 ]
  %.0910.i.ph = phi ptr [ %i.tn, %.lr.ph.i ], [ %i.tx, %middle.block655 ]
  br label %scalar.ph646

bb.fe:                                            ; preds = %bb.fd
  %i.uf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef 24) #27, !noalias !939
  br label %.body435

scalar.ph646:                                     ; preds = %scalar.ph646.preheader, %scalar.ph646
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph646 ], [ %indvars.iv.i.ph, %scalar.ph646.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.uj, %scalar.ph646 ], [ %.0910.i.ph, %scalar.ph646.preheader ] ; 2 uses
  %i.ug = load i32, ptr %.0910.i, align 4, !tbaa !40, !noalias !939
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i
  store i64 %i.uh, ptr %i.ui, align 8, !tbaa !63, !noalias !939
  %i.uj = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %spec.select.i431
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph646, !llvm.loop !925

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph646, %middle.block655, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.uk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(16) %51)
          to label %bb.ff unwind label %bb.fr     ; 0 uses

bb.ff:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %i.ul = load ptr, ptr %50, align 8, !tbaa !46   ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.tj
  br i1 %i.um, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.ff
  %i.un = load i64, ptr %i.tj, align 8, !tbaa !56
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.uo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  %i.up = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  store ptr %i.up, ptr %52, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.up, ptr noundef nonnull align 1 dereferenceable(7) @.str.30, i64 7, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 7, ptr %i.uq, align 8, !tbaa !65
  %i.ur = getelementptr inbounds nuw i8, ptr %52, i64 23
  store i8 0, ptr %i.ur, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  %i.us = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 3 uses
  store ptr %i.us, ptr %54, align 8, !tbaa !64
  %i.ut = load ptr, ptr %29, align 8, !tbaa !46   ; 2 uses
  %i.uu = load i64, ptr %i.al, align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.uu, ptr %i.a, align 8, !tbaa !63
  %i.uv = icmp ugt i64 %i.uu, 15
  br i1 %i.uv, label %.noexc.i445, label %._crit_edge.i.i444

.noexc.i445:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.uw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc446 unwind label %bb.fs ; 2 uses

.noexc446:                                        ; preds = %.noexc.i445
  store ptr %i.uw, ptr %54, align 8, !tbaa !46
  %i.ux = load i64, ptr %i.a, align 8, !tbaa !63
  store i64 %i.ux, ptr %i.us, align 8, !tbaa !56
  br label %._crit_edge.i.i444

._crit_edge.i.i444:                               ; preds = %.noexc446, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.uy = phi ptr [ %i.uw, %.noexc446 ], [ %i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ] ; 2 uses
  switch i64 %i.uu, label %bb.fh [
    i64 1, label %bb.fg
    i64 0, label %bb.fi
  ]

bb.fg:                                            ; preds = %._crit_edge.i.i444
  %i.uz = load i8, ptr %i.ut, align 1, !tbaa !56
  store i8 %i.uz, ptr %i.uy, align 1, !tbaa !56
end_hunk_0
