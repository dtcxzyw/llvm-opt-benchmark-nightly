Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_importer?download=true
inline.NumInlined: 8193
inline.NumDeleted: 1946
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter15parseExpandDimsERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
bb.eg:                                            ; preds = %.noexc352
  %i.rb = landingpad { ptr, i32 }
          cleanup
  %i.rc = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.re = icmp eq ptr %i.rc, %i.rd
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349: ; preds = %bb.eg
  %i.rf = load i64, ptr %i.rd, align 8, !tbaa !25
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body410

bb.eh:                                            ; preds = %bb.ed
  %.not486 = icmp eq i32 %i.qz, 2
  br i1 %.not486, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc361 unwind label %bb.ev

.noexc361:                                        ; preds = %bb.ei
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %.noexc361
  unreachable

bb.ek:                                            ; preds = %.noexc361
  %i.rh = landingpad { ptr, i32 }
          cleanup
  %i.ri = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358: ; preds = %bb.ek
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !25
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i359: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.body410

bb.el:                                            ; preds = %bb.eh
  %i.rn = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %38, i64 20 ; 3 uses
  %i.rp = load i32, ptr %i.rn, align 4, !tbaa !9  ; 3 uses
  %i.rq = load i32, ptr %i.ro, align 4, !tbaa !9
  store i32 %i.rq, ptr %i.rn, align 4, !tbaa !9
  store i32 %i.rp, ptr %i.ro, align 4, !tbaa !9
  %i.rr = icmp samesign ugt i32 %i.qz, 3
  br i1 %i.rr, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc379 unwind label %bb.ev

.noexc379:                                        ; preds = %bb.em
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %.noexc379
  unreachable

bb.eo:                                            ; preds = %.noexc379
  %i.rs = landingpad { ptr, i32 }
          cleanup
  %i.rt = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376: ; preds = %bb.eo
  %i.rw = load i64, ptr %i.ru, align 8, !tbaa !25
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i377: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body410

bb.ep:                                            ; preds = %bb.el
  %i.ry = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 3 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !9
  store i32 %i.rz, ptr %i.ro, align 4, !tbaa !9
  store i32 %i.rp, ptr %i.ry, align 4, !tbaa !9
  %.not487 = icmp eq i32 %i.qz, 4
  br i1 %.not487, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc397 unwind label %bb.ev

.noexc397:                                        ; preds = %bb.eq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %.noexc397
  unreachable

bb.es:                                            ; preds = %.noexc397
  %i.sa = landingpad { ptr, i32 }
          cleanup
  %i.sb = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394: ; preds = %bb.es
  %i.se = load i64, ptr %i.sc, align 8, !tbaa !25
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i395

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i395: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body410

bb.et:                                            ; preds = %bb.ep
  %i.sg = getelementptr inbounds nuw i8, ptr %38, i64 28 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !9
  store i32 %i.sh, ptr %i.ry, align 4, !tbaa !9
  store i32 %i.rp, ptr %i.sg, align 4, !tbaa !9
  br label %bb.ew

bb.eu:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit321
  %i.si = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sj = load ptr, ptr %48, align 8, !tbaa !10   ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.ox
  br i1 %i.sk, label %.body319, label %.body319.sink.split

.body319.sink.split:                              ; preds = %bb.eu, %bb.du
  %.sink667 = phi ptr [ %i.pj, %bb.du ], [ %i.sj, %bb.eu ]
  %.pn130.ph = phi { ptr, i32 } [ %i.pi, %bb.du ], [ %i.si, %bb.eu ]
  %i.sl = load i64, ptr %i.ox, align 8, !tbaa !25
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %.sink667, i64 noundef %i.sm) #27
  br label %.body319

.body319:                                         ; preds = %.body319.sink.split, %bb.eu, %bb.du
  %.pn130 = phi { ptr, i32 } [ %i.pi, %bb.du ], [ %i.si, %bb.eu ], [ %.pn130.ph, %.body319.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %.body410

.body333:                                         ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  br label %.body410

bb.ev:                                            ; preds = %bb.eq, %bb.em, %bb.ei, %bb.ee
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %.body410

bb.ew:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %bb.et, %bb.dr, %bb.dq
  %i.so = invoke noundef ptr @_ZN2cv8MatShape5beginEv(ptr noundef nonnull align 4 dereferenceable(52) %38)
          to label %bb.ex unwind label %bb.bi

bb.ex:                                            ; preds = %bb.ew
  %i.sp = zext nneg i32 %.270 to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sp
  invoke void @_ZN2cv8MatShape6insertEPii(ptr noundef nonnull align 4 dereferenceable(52) %38, ptr noundef %i.sq, i32 noundef 1)
          to label %bb.ey unwind label %bb.bi

bb.ey:                                            ; preds = %bb.ex
  %i.sr = add nuw i32 %narrow.i, 1                ; 2 uses
  %i.ss = icmp eq i32 %i.sr, 5                    ; 2 uses
  br i1 %i.ss, label %switch.early.test, label %._crit_edge.i.i422

switch.early.test:                                ; preds = %bb.ey
  switch i32 %i.as, label %.preheader [
    i32 4, label %._crit_edge.i.i422
    i32 2, label %._crit_edge.i.i422
  ]

.preheader:                                       ; preds = %switch.early.test
  %i.st = icmp sgt i32 %.fr, 1
  br i1 %i.st, label %.lr.ph, label %._crit_edge.i.i422

.lr.ph:                                           ; preds = %.preheader
  %i.su = load i32, ptr %38, align 4, !tbaa !440
  %narrow.i404 = call i32 @llvm.smax.i32(i32 %i.su, i32 1) ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %38, i64 12
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %bb.ez

bb.ez:                                            ; preds = %.lr.ph, %bb.fh
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.fh ] ; 3 uses
  %i.sw = sub nsw i64 4, %indvars.iv              ; 2 uses
  %55 = trunc nsw i64 %i.sw to i32
  %56 = icmp ugt i32 %narrow.i404, %55
  br i1 %56, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc409 unwind label %bb.fi

.noexc409:                                        ; preds = %bb.fa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %.noexc409
  unreachable

bb.fc:                                            ; preds = %.noexc409
  %i.sx = landingpad { ptr, i32 }
          cleanup
  %i.sy = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i406: ; preds = %bb.fc
  %i.tb = load i64, ptr %i.sz, align 8, !tbaa !25
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i407: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body410

bb.fd:                                            ; preds = %bb.ez
  %57 = trunc i64 %indvars.iv to i32
  %58 = sub i32 5, %57
  %59 = icmp ugt i32 %narrow.i404, %58
  br i1 %59, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc418 unwind label %bb.fi

.noexc418:                                        ; preds = %bb.fe
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.170, i32 noundef 97) #29
          to label %bb.ff unwind label %bb.fg

bb.ff:                                            ; preds = %.noexc418
  unreachable

bb.fg:                                            ; preds = %.noexc418
  %i.td = landingpad { ptr, i32 }
          cleanup
  %i.te = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.tg = icmp eq ptr %i.te, %i.tf
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415: ; preds = %bb.fg
  %i.th = load i64, ptr %i.tf, align 8, !tbaa !25
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.ti) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i416: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body410

bb.fh:                                            ; preds = %bb.fd
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.sw ; 2 uses
  %i.tk = load <2 x i32>, ptr %i.tj, align 4, !tbaa !9
  %i.tl = shufflevector <2 x i32> %i.tk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.tl, ptr %i.tj, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i422, label %bb.ez, !llvm.loop !878

bb.fi:                                            ; preds = %bb.fe, %bb.fa
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.body410

._crit_edge.i.i422:                               ; preds = %bb.fh, %.preheader, %switch.early.test, %switch.early.test, %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.tn = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.tn, ptr %50, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.tn, ptr noundef nonnull align 1 dereferenceable(3) @.str.216, i64 3, i1 false)
  %i.to = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 3, ptr %i.to, align 8, !tbaa !37
  %i.tp = getelementptr inbounds nuw i8, ptr %50, i64 19
  store i8 0, ptr %i.tp, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  %i.tq = load i32, ptr %38, align 4, !tbaa !440  ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %38, i64 12 ; 3 uses
  %narrow.i430 = call i32 @llvm.smax.i32(i32 %i.tq, i32 0)
  %spec.select.i431 = zext nneg i32 %narrow.i430 to i64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.ts = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc434 unwind label %bb.fw ; 7 uses

.noexc434:                                        ; preds = %._crit_edge.i.i422
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 2 uses
  store ptr %i.tt, ptr %i.ts, align 8, !tbaa !450, !noalias !879
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %.not.i.i.i432 = icmp sgt i32 %i.tq, 1
  store i64 %spec.select.i431, ptr %i.tu, align 8, !tbaa !453, !noalias !879
  br i1 %.not.i.i.i432, label %bb.fj, label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i

bb.fj:                                            ; preds = %.noexc434
  %i.tv = shl nuw nsw i64 %spec.select.i431, 3
  %i.tw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tv) #30
          to label %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread unwind label %bb.fk, !noalias !879 ; 2 uses

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread:      ; preds = %bb.fj
  store ptr %i.tw, ptr %i.ts, align 8, !tbaa !450, !noalias !879
  store i32 0, ptr %51, align 8, !tbaa !454, !alias.scope !879
  %i.tx = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.ts, ptr %i.tx, align 8, !tbaa !25, !alias.scope !879
  br label %.lr.ph.i

_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i:             ; preds = %.noexc434
  store i32 0, ptr %51, align 8, !tbaa !454, !alias.scope !879
  %i.ty = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.ts, ptr %i.ty, align 8, !tbaa !25, !alias.scope !879
  %.not488.not = icmp eq i32 %i.tq, 1
  br i1 %.not488.not, label %.lr.ph.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit

.lr.ph.i:                                         ; preds = %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.tz = phi ptr [ %i.tw, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i.thread ], [ %i.tt, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i ] ; 2 uses
  %min.iters.check650 = icmp slt i32 %i.tq, 4
  br i1 %min.iters.check650, label %scalar.ph649.preheader, label %vector.ph651

vector.ph651:                                     ; preds = %.lr.ph.i
  %n.vec652 = and i64 %spec.select.i431, 2147483644 ; 4 uses
  %i.ua = shl nuw nsw i64 %n.vec652, 2
  %i.ub = getelementptr i8, ptr %i.tr, i64 %i.ua
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph651
  %index654 = phi i64 [ 0, %vector.ph651 ], [ %index.next657, %vector.body653 ] ; 3 uses
  %i.uc = shl i64 %index654, 2
  %next.gep655 = getelementptr i8, ptr %i.tr, i64 %i.uc ; 2 uses
  %i.ud = getelementptr i8, ptr %next.gep655, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep655, align 4, !tbaa !9, !noalias !879
  %wide.load656 = load <2 x i32>, ptr %i.ud, align 4, !tbaa !9, !noalias !879
  %i.ue = sext <2 x i32> %wide.load to <2 x i64>
  %i.uf = sext <2 x i32> %wide.load656 to <2 x i64>
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %index654 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  store <2 x i64> %i.ue, ptr %i.ug, align 8, !tbaa !32, !noalias !879
  store <2 x i64> %i.uf, ptr %i.uh, align 8, !tbaa !32, !noalias !879
  %index.next657 = add nuw i64 %index654, 4       ; 2 uses
  %i.ui = icmp eq i64 %index.next657, %n.vec652
  br i1 %i.ui, label %middle.block658, label %vector.body653, !llvm.loop !882

middle.block658:                                  ; preds = %vector.body653
  %cmp.n659 = icmp eq i64 %n.vec652, %spec.select.i431
  br i1 %cmp.n659, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph649.preheader

scalar.ph649.preheader:                           ; preds = %.lr.ph.i, %middle.block658
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec652, %middle.block658 ]
  %.0910.i.ph = phi ptr [ %i.tr, %.lr.ph.i ], [ %i.ub, %middle.block658 ]
  br label %scalar.ph649

bb.fk:                                            ; preds = %bb.fj
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef 24) #27, !noalias !879
  br label %.body435

scalar.ph649:                                     ; preds = %scalar.ph649.preheader, %scalar.ph649
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph649 ], [ %indvars.iv.i.ph, %scalar.ph649.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.un, %scalar.ph649 ], [ %.0910.i.ph, %scalar.ph649.preheader ] ; 2 uses
  %i.uk = load i32, ptr %.0910.i, align 4, !tbaa !9, !noalias !879
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.i
  store i64 %i.ul, ptr %i.um, align 8, !tbaa !32, !noalias !879
  %i.un = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %spec.select.i431
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit, label %scalar.ph649, !llvm.loop !883

_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit: ; preds = %scalar.ph649, %middle.block658, %_ZN2cv10AutoBufferIlLm1EEC2Em.exit.i
  %i.uo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(16) %51)
          to label %bb.fl unwind label %bb.fx     ; 0 uses

bb.fl:                                            ; preds = %_ZN2cv3dnn14dnn5_v202606059DictValue8arrayIntIPiEES2_T_i.exit
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %51)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  %i.up = load ptr, ptr %50, align 8, !tbaa !10   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.tn
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.fl
  %i.ur = load i64, ptr %i.tn, align 8, !tbaa !25
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.us) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  %i.ut = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  store ptr %i.ut, ptr %52, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ut, ptr noundef nonnull align 1 dereferenceable(7) @.str.30, i64 7, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 7, ptr %i.uu, align 8, !tbaa !37
  %i.uv = getelementptr inbounds nuw i8, ptr %52, i64 23
  store i8 0, ptr %i.uv, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  %i.uw = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 3 uses
  store ptr %i.uw, ptr %54, align 8, !tbaa !36
  %i.ux = load ptr, ptr %29, align 8, !tbaa !10   ; 2 uses
  %i.uy = load i64, ptr %i.al, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.uy, ptr %i.a, align 8, !tbaa !32
  %i.uz = icmp ugt i64 %i.uy, 15
  br i1 %i.uz, label %.noexc.i445, label %._crit_edge.i.i444

.noexc.i445:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.va = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc446 unwind label %bb.fy ; 2 uses

.noexc446:                                        ; preds = %.noexc.i445
  store ptr %i.va, ptr %54, align 8, !tbaa !10
  %i.vb = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.vb, ptr %i.uw, align 8, !tbaa !25
  br label %._crit_edge.i.i444

._crit_edge.i.i444:                               ; preds = %.noexc446, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.vc = phi ptr [ %i.va, %.noexc446 ], [ %i.uw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ] ; 2 uses
  switch i64 %i.uy, label %bb.fn [
    i64 1, label %bb.fm
    i64 0, label %bb.fo
  ]
end_hunk_0
