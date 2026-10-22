Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/demosaicing?download=true
inline.NumInlined: 241
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv11demosaicingERKNS_11_InputArrayERKNS_12_OutputArrayEii:bb.a
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.ed
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !18
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.pv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.ec
  %.pn109 = phi { ptr, i32 } [ %i.pp, %bb.ec ], [ %i.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.pq, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #16
  br label %.body217

bb.ee:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit194
  br i1 %i.ad, label %bb.ek, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %65)
          to label %bb.eg unwind label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @__func__._ZN2cv11demosaicingERKNS_11_InputArrayERKNS_12_OutputArrayEii, ptr noundef nonnull @.str.1, i32 noundef 1804) #17
          to label %bb.eh unwind label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  unreachable

bb.ei:                                            ; preds = %bb.ef
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.ej:                                            ; preds = %bb.eg
  %i.px = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.py = load ptr, ptr %64, align 8, !tbaa !17   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.ej
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !18
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.ei
  %.pn107 = phi { ptr, i32 } [ %i.pw, %bb.ei ], [ %i.px, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %i.px, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #16
  br label %.body217

bb.ek:                                            ; preds = %bb.ee
  %i.qd = load i32, ptr %i.e, align 8, !tbaa !12  ; 3 uses
  %i.qe = icmp slt i32 %i.qd, 3
  br i1 %i.qe, label %bb.eo, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc238 unwind label %bb.cy

.noexc238:                                        ; preds = %bb.el
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.13, i32 noundef 109) #17
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %.noexc238
  unreachable

bb.en:                                            ; preds = %.noexc238
  %i.qf = landingpad { ptr, i32 }
          cleanup
  %i.qg = load ptr, ptr %20, align 8, !tbaa !17   ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i226: ; preds = %bb.en
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !18
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i227: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %.body217

bb.eo:                                            ; preds = %bb.ek
  %i.ql = icmp sgt i32 %i.qd, 0
  br i1 %i.ql, label %_ZNK2cv8MatShapeclEv.exit598.i, label %_ZNK2cv8MatShapeclEv.exit606.thread.i.invoke

_ZNK2cv8MatShapeclEv.exit598.i:                   ; preds = %bb.eo
  %i.qm = icmp eq i32 %i.qd, 2                    ; 2 uses
  %.sroa.gep337 = getelementptr inbounds nuw i8, ptr %48, i64 88
  %.sroa.gep337.val = load i32, ptr %.sroa.gep337, align 8
  %.val = load i32, ptr %i.u, align 4             ; 2 uses
  %i.qn = select i1 %i.qm, i32 %.sroa.gep337.val, i32 %.val
  %i.qo = select i1 %i.qm, i32 %.val, i32 1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.qn, i32 %i.qo)
  %i.qp = icmp slt i32 %spec.select, 8
  br i1 %i.qp, label %_ZNK2cv8MatShapeclEv.exit606.thread.i.invoke, label %bb.ep

_ZNK2cv8MatShapeclEv.exit606.thread.i.invoke:     ; preds = %bb.cw, %_ZNK2cv8MatShapeclEv.exit598.i, %bb.eo
  invoke fastcc void @_ZN2cvL10Bayer2RGB_IhNS_24SIMDBayerInterpolator_8uEEEvRKNS_3MatERS2_i(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %61, i32 noundef %2)
          to label %_ZN2cvL10Bayer2RGB_ItNS_26SIMDBayerStubInterpolator_ItEEEEvRKNS_3MatERS3_i.exit unwind label %bb.cy

bb.ep:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit598.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.qq = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.qq, align 8, !tbaa !108
  %i.qr = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.qr, align 4, !tbaa !109
  store i32 16842752, ptr %23, align 8, !tbaa !110
  %i.qs = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %48, ptr %i.qs, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.qt = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.qu, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !110
  store ptr %22, ptr %i.qt, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.eq unwind label %bb.fa

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.qv = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !36 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !37 ; 5 uses
  %i.qz = trunc i64 %i.qy to i32                  ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !36
  %i.rc = getelementptr inbounds nuw i8, ptr %61, i64 128
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !37
  %i.re = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !12 ; 6 uses
  %i.rg = icmp slt i32 %i.rf, 3
  br i1 %i.rg, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %.noexc.i unwind label %bb.fb

.noexc.i:                                         ; preds = %bb.er
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.13, i32 noundef 109) #17
          to label %bb.es unwind label %bb.et

bb.es:                                            ; preds = %.noexc.i
  unreachable

bb.et:                                            ; preds = %.noexc.i
  %i.rh = landingpad { ptr, i32 }
          cleanup
  %i.ri = load ptr, ptr %18, align 8, !tbaa !17   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i616.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i615.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i615.i: ; preds = %bb.et
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !18
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i616.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i616.i: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i615.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %.body.i

bb.eu:                                            ; preds = %bb.eq
  %i.rn = icmp sgt i32 %i.rf, 0
  br i1 %i.rn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ro = icmp eq i32 %i.rf, 2
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ro, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %22, i64 %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.rp = load i32, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !19
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.rq = icmp eq i32 %i.rf, 0
  %i.rr = zext i1 %i.rq to i32
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.rs = phi i32 [ %i.rp, %bb.ev ], [ %i.rr, %bb.ew ] ; 8 uses
  %i.rt = icmp eq i32 %i.rf, 2
  %i.ru = getelementptr inbounds nuw i8, ptr %22, i64 84
  %i.rv = load i32, ptr %i.ru, align 4
  %i.rw = icmp sgt i32 %i.rf, -1
  %i.rx = zext i1 %i.rw to i32
  %i.ry = select i1 %i.rt, i32 %i.rv, i32 %i.rx   ; 3 uses
  %.sroa.2.0.insert.ext.i618.i = zext i32 %i.ry to i64
  %.sroa.2.0.insert.shift.i619.i = shl nuw i64 %.sroa.2.0.insert.ext.i618.i, 32
  %.sroa.0.0.insert.ext.i620.i = zext i32 %i.rs to i64 ; 2 uses
  %.sroa.0.0.insert.insert.i621.i = or disjoint i64 %.sroa.2.0.insert.shift.i619.i, %.sroa.0.0.insert.ext.i620.i
  %i.rz = insertelement <4 x i32> poison, i32 %i.rs, i64 0
  %i.sa = shufflevector <4 x i32> %i.rz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.sb = mul <4 x i32> %i.sa, <i32 2, i32 3, i32 4, i32 5> ; 3 uses
  %i.sc = mul i32 %i.rs, 6
  %i.sd = mul nsw i32 %i.rs, 49                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %sext.i231 = mul i64 %.sroa.0.0.insert.insert.i621.i, 631360192512 ; 2 uses
  %i.se = ashr exact i64 %sext.i231, 32           ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.sf, ptr %26, align 8, !tbaa !113
  %i.sg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.not.i.i.i = icmp ugt i64 %i.se, 520
  store i64 %i.se, ptr %i.sg, align 8, !tbaa !114
  br i1 %.not.i.i.i, label %bb.ey, label %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i

bb.ey:                                            ; preds = %bb.ex
  %i.sh = ashr exact i64 %sext.i231, 31
  %.inv.i.i.i = icmp sgt i64 %i.se, -1
  %i.si = select i1 %.inv.i.i.i, i64 %i.sh, i64 -1
  %i.sj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.si) #19
          to label %.noexc623.i unwind label %bb.fc ; 2 uses

.noexc623.i:                                      ; preds = %bb.ey
  store ptr %i.sj, ptr %26, align 8, !tbaa !113
  br label %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i

_ZN2cv10AutoBufferItLm520EEC2Em.exit.i:           ; preds = %.noexc623.i, %bb.ex
  %i.sk = phi ptr [ %i.sj, %.noexc623.i ], [ %i.sf, %bb.ex ] ; 5 uses
  %i.sl = icmp sgt i32 %i.ry, 4
  br i1 %i.sl, label %.lr.ph869.i, label %._crit_edge870.i

.lr.ph869.i:                                      ; preds = %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i
  %i.sm = add nsw i32 %i.ry, -2
  %i.sn = and i32 %2, -2
  %i.so = icmp eq i32 %i.sn, 62
  %i.sp = select i1 %i.so, i32 0, i32 2
  %i.sq = icmp ne i32 %2, 62
  %i.sr = icmp ne i32 %2, 64
  %i.ss = and i1 %i.sq, %i.sr
  %i.st = add i32 %i.rs, -2                       ; 5 uses
  %i.su = icmp sgt i32 %i.rs, 2
  %i.sv = xor i64 %i.qy, -1
  %sext584.i = shl i64 %i.sv, 32
  %i.sw = ashr exact i64 %sext584.i, 32           ; 6 uses
  %i.sx = shl i64 %i.qy, 32                       ; 8 uses
  %sext585.i = add i64 %i.sx, -4294967296
  %i.sy = ashr exact i64 %sext585.i, 32           ; 6 uses
  %.neg.i = mul i64 %i.qy, -4294967296
  %i.sz = ashr exact i64 %.neg.i, 32              ; 2 uses
  %i.ta = ashr exact i64 %i.sx, 32                ; 8 uses
  %sext588.i = sub i64 4294967296, %i.sx
  %i.tb = ashr exact i64 %sext588.i, 32           ; 6 uses
  %sext589.i = add i64 %i.sx, 4294967296
  %i.tc = ashr exact i64 %sext589.i, 32           ; 6 uses
  %sext590.i = shl nuw i64 %.sroa.0.0.insert.ext.i620.i, 32 ; 3 uses
  %i.td = sext <4 x i32> %i.sb to <4 x i64>       ; 11 uses
  %i.te = extractelement <4 x i64> %i.td, i64 0   ; 6 uses
  %i.tf = sext i32 %i.sc to i64                   ; 7 uses
  %i.tg = icmp sgt i32 %i.rs, 4
  %sext546.i = add i64 %sext590.i, -4294967296
  %i.th = ashr exact i64 %sext546.i, 31
  %sext548.i = add i64 %sext590.i, 4294967296
  %i.ti = ashr exact i64 %sext548.i, 31
  %i.tj = sub nsw i32 0, %i.qz                    ; 2 uses
  %i.tk = shl nsw i32 %i.tj, 1
  %i.tl = sext i32 %i.tk to i64                   ; 4 uses
  %i.tm = sext i32 %i.tj to i64                   ; 4 uses
  %i.tn = shl nsw i32 %i.qz, 1
  %i.to = sext i32 %i.tn to i64                   ; 6 uses
  %sext558.i = mul i64 %i.qy, -8589934592
  %i.tp = ashr exact i64 %sext558.i, 32           ; 2 uses
  %i.tq = extractelement <4 x i32> %i.sb, i64 0   ; 2 uses
  %i.tr = or disjoint i32 %i.tq, 1
  %i.ts = sext i32 %i.tr to i64                   ; 2 uses
  %i.tt = add nsw i32 %i.tq, -1
  %i.tu = sext i32 %i.tt to i64                   ; 2 uses
  %73 = extractelement <4 x i32> %i.sb, i64 1     ; 2 uses
  %i.tv = add nsw i32 %73, -1
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = add nuw nsw i32 %73, 1
  %i.ty = sext i32 %i.tx to i64                   ; 2 uses
  %sext565.i = sub i64 -8589934592, %i.sx
  %i.tz = ashr exact i64 %sext565.i, 32           ; 2 uses
  %sext566.i = add i64 %i.sx, -8589934592
  %i.ua = ashr exact i64 %sext566.i, 32           ; 2 uses
  %sext567.i = sub i64 8589934592, %i.sx
  %i.ub = ashr exact i64 %sext567.i, 32           ; 2 uses
  %sext568.i = add i64 %i.sx, 8589934592
  %i.uc = ashr exact i64 %sext568.i, 32           ; 2 uses
  %i.ud = sext i32 %i.rs to i64                   ; 7 uses
  %i.ue = sext i32 %i.st to i64                   ; 6 uses
  %i.uf = shl i64 %i.rd, 32
  %i.ug = ashr exact i64 %i.uf, 32
  %wide.trip.count.i232 = zext nneg i32 %i.sm to i64
  %.idx = shl nsw i64 %i.ud, 2
  %.idx351 = mul nsw i64 %i.ud, 6
  %.idx352 = shl nsw i64 %i.ud, 3
  %.idx353 = mul nsw i64 %i.ud, 10
  %.idx354 = mul nsw i64 %i.ud, 12
  %i.uh = ashr exact i64 %sext590.i, 31           ; 4 uses
  %i.ui = insertelement <6 x i64> <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 0>, i64 %i.tf, i64 4
  %i.uj = shufflevector <4 x i64> %i.td, <4 x i64> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %i.uk = shufflevector <6 x i64> %i.uj, <6 x i64> %i.ui, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 11>
  %i.ul = shl nsw <6 x i64> %i.uk, <i64 1, i64 1, i64 1, i64 1, i64 1, i64 0> ; 7 uses
  %i.um = shufflevector <6 x i64> %i.ul, <6 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3, i32 4, i32 2, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5>
  %i.un = shufflevector <6 x i64> %i.ul, <6 x i64> poison, <5 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 poison>
  %i.uo = insertelement <5 x i64> %i.un, i64 %i.uh, i64 0
  %i.up = extractelement <6 x i64> %i.ul, i64 1
  %i.uq = extractelement <6 x i64> %i.ul, i64 2
  %i.ur = extractelement <6 x i64> %i.ul, i64 3
  %i.us = extractelement <6 x i64> %i.ul, i64 4
  %i.ut = shufflevector <5 x i64> %i.uo, <5 x i64> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %i.uu = zext i32 %i.st to i64                   ; 2 uses
  %min.iters.check687 = icmp ult i32 %i.st, 8
  %i.uv = and i64 %i.te, 9223372036854775800
  %diff.check647 = icmp eq i64 %i.uv, 0
  %diff.check649 = icmp ult i64 %i.up, 16
  %i.uw = add nsw i64 %i.uq, -1
  %diff.check651 = icmp ult i64 %i.uw, 15
  %diff.check653 = icmp ult i64 %i.ur, 16
  %i.ux = add nsw i64 %i.us, -1
  %diff.check655 = icmp ult i64 %i.ux, 15
  %i.uy = shufflevector <6 x i64> %i.ut, <6 x i64> %i.ul, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 9, i32 0>
  %i.uz = sub nsw <16 x i64> %i.uy, %i.um         ; 2 uses
  %i.va = icmp ugt <16 x i64> %i.uz, <i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 16>
  %i.vb = icmp ult <16 x i64> %i.uz, <i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 -16, i64 16>
  %i.vc = shufflevector <16 x i1> %i.va, <16 x i1> %i.vb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 31>
  %i.vd = bitcast <16 x i1> %i.vc to i16
  %i.ve = icmp ne i16 %i.vd, 0
  %op.rdx = or i1 %i.ve, %diff.check647
  %op.rdx827 = or i1 %diff.check649, %diff.check651
  %op.rdx828 = or i1 %diff.check653, %diff.check655
  %op.rdx829 = or i1 %op.rdx, %op.rdx827
  %op.rdx830 = or i1 %op.rdx829, %op.rdx828
  %n.vec689 = and i64 %i.uu, 4294967288           ; 5 uses
  %i.vf = shl nuw nsw i64 %n.vec689, 1
  %i.vg = trunc nuw i64 %n.vec689 to i32
  %i.vh = or disjoint i32 %i.vg, 1
  %74 = extractelement <4 x i64> %i.td, i64 1
  %75 = extractelement <4 x i64> %i.td, i64 2
  %i.vi = extractelement <4 x i64> %i.td, i64 3
  %cmp.n723 = icmp eq i64 %n.vec689, %i.uu
  %76 = extractelement <4 x i64> %i.td, i64 1
  %77 = extractelement <4 x i64> %i.td, i64 2
  %78 = extractelement <4 x i64> %i.td, i64 3
  %79 = extractelement <4 x i64> %i.td, i64 1     ; 3 uses
  %i.vj = extractelement <4 x i64> %i.td, i64 2   ; 3 uses
  %i.vk = extractelement <4 x i64> %i.td, i64 3   ; 3 uses
  br label %bb.fd

._crit_edge870.loopexit.i:                        ; preds = %._crit_edge865.i
  %.pre880.i = load ptr, ptr %26, align 8, !tbaa !113
  br label %._crit_edge870.i

._crit_edge870.i:                                 ; preds = %._crit_edge870.loopexit.i, %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i
  %i.vl = phi ptr [ %.pre880.i, %._crit_edge870.loopexit.i ], [ %i.sk, %_ZN2cv10AutoBufferItLm520EEC2Em.exit.i ] ; 3 uses
  %.not.i.i624.i = icmp eq ptr %i.vl, %i.sf
  %i.vm = icmp eq ptr %i.vl, null
  %or.cond.i.i = or i1 %.not.i.i624.i, %i.vm
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferItLm520EED2Ev.exit.i, label %bb.ez

bb.ez:                                            ; preds = %._crit_edge870.i
  call void @_ZdaPv(ptr noundef nonnull %i.vl) #18
  br label %_ZN2cv10AutoBufferItLm520EED2Ev.exit.i

_ZN2cv10AutoBufferItLm520EED2Ev.exit.i:           ; preds = %bb.ez, %._crit_edge870.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %_ZN2cvL10Bayer2RGB_ItNS_26SIMDBayerStubInterpolator_ItEEEEvRKNS_3MatERS3_i.exit

bb.fa:                                            ; preds = %bb.ep
  %i.vn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %.body.i

bb.fb:                                            ; preds = %bb.er
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.fc:                                            ; preds = %bb.ey
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  br label %.body.i

bb.fd:                                            ; preds = %._crit_edge865.i, %.lr.ph869.i
  %indvars.iv876.i = phi i64 [ 2, %.lr.ph869.i ], [ %indvars.iv.next877.i, %._crit_edge865.i ] ; 6 uses
  %.0527.in867.i = phi i1 [ %i.ss, %.lr.ph869.i ], [ %i.ayh, %._crit_edge865.i ] ; 2 uses
  %.0528866.i = phi i32 [ %i.sp, %.lr.ph869.i ], [ %.pre-phi.i, %._crit_edge865.i ] ; 3 uses
  %i.vq = icmp eq i64 %indvars.iv876.i, 2
  %i.vr = select i1 %i.vq, i64 -1, i64 1
  br label %.preheader.i233

bb.fe:                                            ; preds = %._crit_edge.i
  br i1 %i.tg, label %.lr.ph864.i, label %.._crit_edge865_crit_edge.i

.._crit_edge865_crit_edge.i:                      ; preds = %bb.fe
  %.pre.i = xor i32 %.0528866.i, 2
  br label %._crit_edge865.i

.lr.ph864.i:                                      ; preds = %bb.fe
  %i.vs = add nsw i64 %indvars.iv876.i, -2        ; 2 uses
  %i.vt = mul nsw i64 %i.vs, %i.ug
  %i.vu = getelementptr inbounds i8, ptr %i.rb, i64 %i.vt
  %i.vv = mul nsw i64 %indvars.iv876.i, %i.ta
  %i.vw = getelementptr inbounds i8, ptr %i.qw, i64 %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.vy = trunc i64 %indvars.iv876.i to i32       ; 2 uses
  %i.vz = urem i32 %i.vy, 3
  %i.wa = mul nuw nsw i32 %i.vz, %i.sd
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.we = add i32 %i.vy, -1
  %.urem.i = urem i32 %i.we, 3
  %i.wf = mul nuw nsw i32 %.urem.i, %i.sd
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %i.wj = trunc nuw nsw i64 %i.vs to i32
  %.urem875.i = urem i32 %i.wj, 3
  %i.wk = mul nuw nsw i32 %.urem875.i, %i.sd
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.sk, i64 %i.wl
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wo = zext nneg i32 %.0528866.i to i64
  %i.wp = xor i32 %.0528866.i, 2                  ; 2 uses
  %i.wq = zext nneg i32 %i.wp to i64
  br label %bb.ff

.preheader.i233:                                  ; preds = %._crit_edge.i, %bb.fd
  %indvars.iv.i234 = phi i64 [ %i.vr, %bb.fd ], [ %indvars.iv.next.i235, %._crit_edge.i ] ; 2 uses
  %i.wr = add nsw i64 %indvars.iv.i234, %indvars.iv876.i ; 2 uses
  %i.ws = trunc i64 %i.wr to i32
  %i.wt = add i32 %i.ws, -1
  %i.wu = srem i32 %i.wt, 3
  %i.wv = mul nsw i32 %i.wu, %i.sd
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds [2 x i8], ptr %i.sk, i64 %i.ww ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 2 ; 10 uses
  %i.wz = getelementptr inbounds [2 x i8], ptr %i.wy, i64 %i.ue ; 2 uses
  store i16 0, ptr %i.wz, align 2, !tbaa !48
  store i16 0, ptr %i.wx, align 2, !tbaa !48
  %i.xa = getelementptr [2 x i8], ptr %i.wz, i64 %i.ud
  store i16 0, ptr %i.xa, align 2, !tbaa !48
  %i.xb = getelementptr [2 x i8], ptr %i.wy, i64 %i.ud
  %i.xc = getelementptr i8, ptr %i.xb, i64 -2
  store i16 0, ptr %i.xc, align 2, !tbaa !48
  %i.xd = getelementptr i8, ptr %i.wy, i64 %.idx  ; 2 uses
  %i.xe = getelementptr [2 x i8], ptr %i.xd, i64 %i.ue
  store i16 0, ptr %i.xe, align 2, !tbaa !48
  %i.xf = getelementptr i8, ptr %i.xd, i64 -2
  store i16 0, ptr %i.xf, align 2, !tbaa !48
  %i.xg = getelementptr i8, ptr %i.wy, i64 %.idx351 ; 2 uses
  %i.xh = getelementptr [2 x i8], ptr %i.xg, i64 %i.ue
  store i16 0, ptr %i.xh, align 2, !tbaa !48
  %i.xi = getelementptr i8, ptr %i.xg, i64 -2
  store i16 0, ptr %i.xi, align 2, !tbaa !48
  %i.xj = getelementptr i8, ptr %i.wy, i64 %.idx352 ; 2 uses
  %i.xk = getelementptr [2 x i8], ptr %i.xj, i64 %i.ue
  store i16 0, ptr %i.xk, align 2, !tbaa !48
  %i.xl = getelementptr i8, ptr %i.xj, i64 -2
  store i16 0, ptr %i.xl, align 2, !tbaa !48
  %i.xm = getelementptr i8, ptr %i.wy, i64 %.idx353 ; 2 uses
  %i.xn = getelementptr [2 x i8], ptr %i.xm, i64 %i.ue
  store i16 0, ptr %i.xn, align 2, !tbaa !48
  %i.xo = getelementptr i8, ptr %i.xm, i64 -2
  store i16 0, ptr %i.xo, align 2, !tbaa !48
  %i.xp = getelementptr i8, ptr %i.wy, i64 %.idx354 ; 2 uses
  %i.xq = getelementptr [2 x i8], ptr %i.xp, i64 %i.ue
  store i16 0, ptr %i.xq, align 2, !tbaa !48
  %i.xr = getelementptr i8, ptr %i.xp, i64 -2
  store i16 0, ptr %i.xr, align 2, !tbaa !48
  br i1 %i.su, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i233
  %i.xs = mul nsw i64 %i.wr, %i.ta
  %i.xt = getelementptr inbounds i8, ptr %i.qw, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 1 ; 3 uses
  %brmerge = select i1 %min.iters.check687, i1 true, i1 %op.rdx830
  br i1 %brmerge, label %.lr.ph.i236.preheader, label %vector.ph688

vector.ph688:                                     ; preds = %.lr.ph.preheader.i
  %i.xv = getelementptr i8, ptr %i.wy, i64 %i.vf
  %i.xw = getelementptr i8, ptr %i.xu, i64 %n.vec689
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph688
  %index691 = phi i64 [ 0, %vector.ph688 ], [ %index.next721, %vector.body690 ] ; 3 uses
  %i.xx = shl i64 %index691, 1
  %next.gep = getelementptr i8, ptr %i.wy, i64 %i.xx ; 7 uses
  %next.gep692 = getelementptr i8, ptr %i.xu, i64 %index691 ; 8 uses
  %i.xy = getelementptr inbounds i8, ptr %next.gep692, i64 %i.sw ; 3 uses
  %wide.load693 = load <8 x i8>, ptr %i.xy, align 1, !tbaa !18
  %i.xz = zext <8 x i8> %wide.load693 to <8 x i16>
  %i.ya = getelementptr inbounds i8, ptr %next.gep692, i64 %i.sy ; 3 uses
  %wide.load694 = load <8 x i8>, ptr %i.ya, align 1, !tbaa !18
  %i.yb = zext <8 x i8> %wide.load694 to <8 x i16>
  %i.yc = sub nsw <8 x i16> %i.xz, %i.yb
  %i.yd = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yc, i1 true)
  %i.ye = getelementptr inbounds i8, ptr %next.gep692, i64 %i.sz ; 4 uses
  %wide.load695 = load <8 x i8>, ptr %i.ye, align 1, !tbaa !18
  %i.yf = zext <8 x i8> %wide.load695 to <8 x i16>
  %i.yg = getelementptr inbounds i8, ptr %next.gep692, i64 %i.ta ; 4 uses
  %wide.load696 = load <8 x i8>, ptr %i.yg, align 1, !tbaa !18
  %i.yh = zext <8 x i8> %wide.load696 to <8 x i16>
  %i.yi = sub nsw <8 x i16> %i.yf, %i.yh
  %i.yj = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yi, i1 true)
  %i.yk = shl nuw nsw <8 x i16> %i.yj, splat (i16 1)
  %i.yl = add nuw nsw <8 x i16> %i.yk, %i.yd
  %i.ym = getelementptr inbounds i8, ptr %next.gep692, i64 %i.tb ; 3 uses
  %wide.load697 = load <8 x i8>, ptr %i.ym, align 1, !tbaa !18
  %i.yn = zext <8 x i8> %wide.load697 to <8 x i16>
  %i.yo = getelementptr inbounds i8, ptr %next.gep692, i64 %i.tc ; 3 uses
  %wide.load698 = load <8 x i8>, ptr %i.yo, align 1, !tbaa !18
  %i.yp = zext <8 x i8> %wide.load698 to <8 x i16>
  %i.yq = sub nsw <8 x i16> %i.yn, %i.yp
  %i.yr = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yq, i1 true)
  %i.ys = add nuw nsw <8 x i16> %i.yl, %i.yr
  store <8 x i16> %i.ys, ptr %next.gep, align 2, !tbaa !48
  %wide.load699 = load <8 x i8>, ptr %i.xy, align 1, !tbaa !18
  %i.yt = zext <8 x i8> %wide.load699 to <8 x i16>
  %wide.load700 = load <8 x i8>, ptr %i.ym, align 1, !tbaa !18
  %i.yu = zext <8 x i8> %wide.load700 to <8 x i16>
  %i.yv = sub nsw <8 x i16> %i.yt, %i.yu
  %i.yw = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.yv, i1 true)
  %i.yx = getelementptr inbounds i8, ptr %next.gep692, i64 -1 ; 4 uses
  %wide.load701 = load <8 x i8>, ptr %i.yx, align 1, !tbaa !18
  %i.yy = zext <8 x i8> %wide.load701 to <8 x i16>
  %i.yz = getelementptr inbounds nuw i8, ptr %next.gep692, i64 1 ; 4 uses
  %wide.load702 = load <8 x i8>, ptr %i.yz, align 1, !tbaa !18
  %i.za = zext <8 x i8> %wide.load702 to <8 x i16>
  %i.zb = sub nsw <8 x i16> %i.yy, %i.za
  %i.zc = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zb, i1 true)
  %i.zd = shl nuw nsw <8 x i16> %i.zc, splat (i16 1)
  %i.ze = add nuw nsw <8 x i16> %i.zd, %i.yw
  %wide.load703 = load <8 x i8>, ptr %i.ya, align 1, !tbaa !18
  %i.zf = zext <8 x i8> %wide.load703 to <8 x i16>
  %wide.load704 = load <8 x i8>, ptr %i.yo, align 1, !tbaa !18
  %i.zg = zext <8 x i8> %wide.load704 to <8 x i16>
  %i.zh = sub nsw <8 x i16> %i.zf, %i.zg
  %i.zi = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zh, i1 true)
  %i.zj = add nuw nsw <8 x i16> %i.ze, %i.zi
  %i.zk = getelementptr inbounds nuw i8, ptr %next.gep, i64 %i.uh
  store <8 x i16> %i.zj, ptr %i.zk, align 2, !tbaa !48
  %wide.load705 = load <8 x i8>, ptr %i.ym, align 1, !tbaa !18
  %i.zl = zext <8 x i8> %wide.load705 to <8 x i16>
  %wide.load706 = load <8 x i8>, ptr %i.ya, align 1, !tbaa !18
  %i.zm = zext <8 x i8> %wide.load706 to <8 x i16>
  %i.zn = sub nsw <8 x i16> %i.zl, %i.zm
  %i.zo = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zn, i1 true)
  %i.zp = shl nuw nsw <8 x i16> %i.zo, splat (i16 1) ; 2 uses
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.te
  store <8 x i16> %i.zp, ptr %i.zq, align 2, !tbaa !48
  %wide.load707 = load <8 x i8>, ptr %i.xy, align 1, !tbaa !18
  %i.zr = zext <8 x i8> %wide.load707 to <8 x i16>
  %wide.load708 = load <8 x i8>, ptr %i.yo, align 1, !tbaa !18
  %i.zs = zext <8 x i8> %wide.load708 to <8 x i16>
  %i.zt = sub nsw <8 x i16> %i.zr, %i.zs
  %i.zu = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zt, i1 true)
  %i.zv = shl nuw nsw <8 x i16> %i.zu, splat (i16 1) ; 2 uses
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %74
  store <8 x i16> %i.zv, ptr %i.zw, align 2, !tbaa !48
  %wide.load709 = load <8 x i8>, ptr %i.ye, align 1, !tbaa !18
  %i.zx = zext <8 x i8> %wide.load709 to <8 x i16>
  %wide.load710 = load <8 x i8>, ptr %i.yx, align 1, !tbaa !18
  %i.zy = zext <8 x i8> %wide.load710 to <8 x i16>
  %i.zz = sub nsw <8 x i16> %i.zx, %i.zy
  %i.aaa = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.zz, i1 true)
  %i.aab = add nuw nsw <8 x i16> %i.aaa, %i.zp
  %wide.load711 = load <8 x i8>, ptr %i.yg, align 1, !tbaa !18
  %i.aac = zext <8 x i8> %wide.load711 to <8 x i16>
  %wide.load712 = load <8 x i8>, ptr %i.yz, align 1, !tbaa !18
  %i.aad = zext <8 x i8> %wide.load712 to <8 x i16>
  %i.aae = sub nsw <8 x i16> %i.aac, %i.aad
  %i.aaf = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aae, i1 true)
  %i.aag = add nuw nsw <8 x i16> %i.aab, %i.aaf
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %75
  store <8 x i16> %i.aag, ptr %i.aah, align 2, !tbaa !48
  %wide.load713 = load <8 x i8>, ptr %i.ye, align 1, !tbaa !18
  %i.aai = zext <8 x i8> %wide.load713 to <8 x i16>
  %wide.load714 = load <8 x i8>, ptr %i.yz, align 1, !tbaa !18
  %i.aaj = zext <8 x i8> %wide.load714 to <8 x i16>
  %i.aak = sub nsw <8 x i16> %i.aai, %i.aaj
  %i.aal = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aak, i1 true)
  %i.aam = add nuw nsw <8 x i16> %i.aal, %i.zv
  %wide.load715 = load <8 x i8>, ptr %i.yg, align 1, !tbaa !18
  %i.aan = zext <8 x i8> %wide.load715 to <8 x i16>
  %wide.load716 = load <8 x i8>, ptr %i.yx, align 1, !tbaa !18
  %i.aao = zext <8 x i8> %wide.load716 to <8 x i16>
  %i.aap = sub nsw <8 x i16> %i.aan, %i.aao
  %i.aaq = call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.aap, i1 true)
  %i.aar = add nuw nsw <8 x i16> %i.aam, %i.aaq
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.vi
  store <8 x i16> %i.aar, ptr %i.aas, align 2, !tbaa !48
  %wide.load717 = load <8 x i8>, ptr %i.ye, align 1, !tbaa !18
  %i.aat = zext <8 x i8> %wide.load717 to <8 x i16>
  %wide.load718 = load <8 x i8>, ptr %i.yx, align 1, !tbaa !18
  %i.aau = zext <8 x i8> %wide.load718 to <8 x i16>
  %i.aav = add nuw nsw <8 x i16> %i.aau, %i.aat
  %wide.load719 = load <8 x i8>, ptr %i.yz, align 1, !tbaa !18
  %i.aaw = zext <8 x i8> %wide.load719 to <8 x i16>
  %i.aax = add nuw nsw <8 x i16> %i.aav, %i.aaw
  %wide.load720 = load <8 x i8>, ptr %i.yg, align 1, !tbaa !18
  %i.aay = zext <8 x i8> %wide.load720 to <8 x i16>
  %i.aaz = add nuw nsw <8 x i16> %i.aax, %i.aay
  %i.aba = lshr <8 x i16> %i.aaz, splat (i16 1)
  %i.abb = getelementptr inbounds nuw [2 x i8], ptr %next.gep, i64 %i.tf
  store <8 x i16> %i.aba, ptr %i.abb, align 2, !tbaa !48
  %index.next721 = add nuw i64 %index691, 8       ; 2 uses
  %i.abc = icmp eq i64 %index.next721, %n.vec689
  br i1 %i.abc, label %middle.block722, label %vector.body690, !llvm.loop !84

middle.block722:                                  ; preds = %vector.body690
  br i1 %cmp.n723, label %._crit_edge.i, label %.lr.ph.i236.preheader

.lr.ph.i236.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block722
  %.0515854.i.ph = phi ptr [ %i.xv, %middle.block722 ], [ %i.wy, %.lr.ph.preheader.i ]
  %.0517853.i.ph = phi ptr [ %i.xw, %middle.block722 ], [ %i.xu, %.lr.ph.preheader.i ]
  %.1524852.i.ph = phi i32 [ %i.vh, %middle.block722 ], [ 1, %.lr.ph.preheader.i ]
  br label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %.lr.ph.i236.preheader, %.lr.ph.i236
  %.0515854.i = phi ptr [ %i.afk, %.lr.ph.i236 ], [ %.0515854.i.ph, %.lr.ph.i236.preheader ] ; 8 uses
  %.0517853.i = phi ptr [ %i.acn, %.lr.ph.i236 ], [ %.0517853.i.ph, %.lr.ph.i236.preheader ] ; 8 uses
  %.1524852.i = phi i32 [ %i.afj, %.lr.ph.i236 ], [ %.1524852.i.ph, %.lr.ph.i236.preheader ] ; 2 uses
  %i.abd = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.sw ; 3 uses
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !18
  %i.abf = zext i8 %i.abe to i16
  %i.abg = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.sy ; 3 uses
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !18
  %i.abi = zext i8 %i.abh to i16
  %i.abj = sub nsw i16 %i.abf, %i.abi
  %i.abk = call i16 @llvm.abs.i16(i16 %i.abj, i1 true)
  %i.abl = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.sz ; 4 uses
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !18
  %i.abn = zext i8 %i.abm to i16
  %i.abo = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.ta ; 4 uses
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !18
  %i.abq = zext i8 %i.abp to i16
  %i.abr = sub nsw i16 %i.abn, %i.abq
  %i.abs = call i16 @llvm.abs.i16(i16 %i.abr, i1 true)
  %i.abt = shl nuw nsw i16 %i.abs, 1
  %i.abu = add nuw nsw i16 %i.abt, %i.abk
  %i.abv = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.tb ; 3 uses
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !18
  %i.abx = zext i8 %i.abw to i16
  %i.aby = getelementptr inbounds i8, ptr %.0517853.i, i64 %i.tc ; 3 uses
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !18
  %i.aca = zext i8 %i.abz to i16
  %i.acb = sub nsw i16 %i.abx, %i.aca
  %i.acc = call i16 @llvm.abs.i16(i16 %i.acb, i1 true)
  %i.acd = add nuw nsw i16 %i.abu, %i.acc
  store i16 %i.acd, ptr %.0515854.i, align 2, !tbaa !48
  %i.ace = load i8, ptr %i.abd, align 1, !tbaa !18
  %i.acf = zext i8 %i.ace to i16
  %i.acg = load i8, ptr %i.abv, align 1, !tbaa !18
  %i.ach = zext i8 %i.acg to i16
  %i.aci = sub nsw i16 %i.acf, %i.ach
  %i.acj = call i16 @llvm.abs.i16(i16 %i.aci, i1 true)
  %i.ack = getelementptr inbounds i8, ptr %.0517853.i, i64 -1 ; 4 uses
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !18
  %i.acm = zext i8 %i.acl to i16
  %i.acn = getelementptr inbounds nuw i8, ptr %.0517853.i, i64 1 ; 5 uses
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !18
  %i.acp = zext i8 %i.aco to i16
  %i.acq = sub nsw i16 %i.acm, %i.acp
  %i.acr = call i16 @llvm.abs.i16(i16 %i.acq, i1 true)
  %i.acs = shl nuw nsw i16 %i.acr, 1
  %i.act = add nuw nsw i16 %i.acs, %i.acj
  %i.acu = load i8, ptr %i.abg, align 1, !tbaa !18
  %i.acv = zext i8 %i.acu to i16
  %i.acw = load i8, ptr %i.aby, align 1, !tbaa !18
  %i.acx = zext i8 %i.acw to i16
  %i.acy = sub nsw i16 %i.acv, %i.acx
  %i.acz = call i16 @llvm.abs.i16(i16 %i.acy, i1 true)
  %i.ada = add nuw nsw i16 %i.act, %i.acz
  %i.adb = getelementptr inbounds nuw i8, ptr %.0515854.i, i64 %i.uh
  store i16 %i.ada, ptr %i.adb, align 2, !tbaa !48
  %i.adc = load i8, ptr %i.abv, align 1, !tbaa !18
  %i.add = zext i8 %i.adc to i16
  %i.ade = load i8, ptr %i.abg, align 1, !tbaa !18
  %i.adf = zext i8 %i.ade to i16
  %i.adg = sub nsw i16 %i.add, %i.adf
  %i.adh = call i16 @llvm.abs.i16(i16 %i.adg, i1 true)
  %i.adi = shl nuw nsw i16 %i.adh, 1              ; 2 uses
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %.0515854.i, i64 %i.te
  store i16 %i.adi, ptr %i.adj, align 2, !tbaa !48
  %i.adk = load i8, ptr %i.abd, align 1, !tbaa !18
  %i.adl = zext i8 %i.adk to i16
  %i.adm = load i8, ptr %i.aby, align 1, !tbaa !18
  %i.adn = zext i8 %i.adm to i16
  %i.ado = sub nsw i16 %i.adl, %i.adn
  %i.adp = call i16 @llvm.abs.i16(i16 %i.ado, i1 true)
  %i.adq = shl nuw nsw i16 %i.adp, 1              ; 2 uses
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %.0515854.i, i64 %76
  store i16 %i.adq, ptr %i.adr, align 2, !tbaa !48
  %i.ads = load i8, ptr %i.abl, align 1, !tbaa !18
  %i.adt = zext i8 %i.ads to i16
  %i.adu = load i8, ptr %i.ack, align 1, !tbaa !18
  %i.adv = zext i8 %i.adu to i16
  %i.adw = sub nsw i16 %i.adt, %i.adv
  %i.adx = call i16 @llvm.abs.i16(i16 %i.adw, i1 true)
  %i.ady = add nuw nsw i16 %i.adx, %i.adi
  %i.adz = load i8, ptr %i.abo, align 1, !tbaa !18
  %i.aea = zext i8 %i.adz to i16
  %i.aeb = load i8, ptr %i.acn, align 1, !tbaa !18
  %i.aec = zext i8 %i.aeb to i16
  %i.aed = sub nsw i16 %i.aea, %i.aec
  %i.aee = call i16 @llvm.abs.i16(i16 %i.aed, i1 true)
  %i.aef = add nuw nsw i16 %i.ady, %i.aee
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %.0515854.i, i64 %77
  store i16 %i.aef, ptr %i.aeg, align 2, !tbaa !48
  %i.aeh = load i8, ptr %i.abl, align 1, !tbaa !18
  %i.aei = zext i8 %i.aeh to i16
  %i.aej = load i8, ptr %i.acn, align 1, !tbaa !18
  %i.aek = zext i8 %i.aej to i16
  %i.ael = sub nsw i16 %i.aei, %i.aek
  %i.aem = call i16 @llvm.abs.i16(i16 %i.ael, i1 true)
  %i.aen = add nuw nsw i16 %i.aem, %i.adq
  %i.aeo = load i8, ptr %i.abo, align 1, !tbaa !18
  %i.aep = zext i8 %i.aeo to i16
  %i.aeq = load i8, ptr %i.ack, align 1, !tbaa !18
  %i.aer = zext i8 %i.aeq to i16
  %i.aes = sub nsw i16 %i.aep, %i.aer
  %i.aet = call i16 @llvm.abs.i16(i16 %i.aes, i1 true)
  %i.aeu = add nuw nsw i16 %i.aen, %i.aet
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %.0515854.i, i64 %78
  store i16 %i.aeu, ptr %i.aev, align 2, !tbaa !48
  %i.aew = load i8, ptr %i.abl, align 1, !tbaa !18
  %i.aex = zext i8 %i.aew to i16
  %i.aey = load i8, ptr %i.ack, align 1, !tbaa !18
  %i.aez = zext i8 %i.aey to i16
  %i.afa = add nuw nsw i16 %i.aez, %i.aex
  %i.afb = load i8, ptr %i.acn, align 1, !tbaa !18
  %i.afc = zext i8 %i.afb to i16
  %i.afd = add nuw nsw i16 %i.afa, %i.afc
  %i.afe = load i8, ptr %i.abo, align 1, !tbaa !18
  %i.aff = zext i8 %i.afe to i16
  %i.afg = add nuw nsw i16 %i.afd, %i.aff
  %i.afh = lshr i16 %i.afg, 1
  %i.afi = getelementptr inbounds nuw [2 x i8], ptr %.0515854.i, i64 %i.tf
  store i16 %i.afh, ptr %i.afi, align 2, !tbaa !48
  %i.afj = add nuw nsw i32 %.1524852.i, 1
  %i.afk = getelementptr inbounds nuw i8, ptr %.0515854.i, i64 2
  %exitcond.not.i237 = icmp eq i32 %.1524852.i, %i.st
  br i1 %exitcond.not.i237, label %._crit_edge.i, label %.lr.ph.i236, !llvm.loop !85

._crit_edge.i:                                    ; preds = %.lr.ph.i236, %middle.block722, %.preheader.i233
  %indvars.iv.next.i235 = add nsw i64 %indvars.iv.i234, 1 ; 2 uses
  %exitcond873.not.i = icmp eq i64 %indvars.iv.next.i235, 2
  br i1 %exitcond873.not.i, label %bb.fe, label %.preheader.i233, !llvm.loop !86

bb.ff:                                            ; preds = %bb.go, %.lr.ph864.i
  %.1508.in862.i = phi i1 [ %.0527.in867.i, %.lr.ph864.i ], [ %i.aya, %bb.go ] ; 2 uses
  %.1510861.i = phi ptr [ %i.wd, %.lr.ph864.i ], [ %i.ayf, %bb.go ] ; 10 uses
  %.1512860.i = phi ptr [ %i.wi, %.lr.ph864.i ], [ %i.aye, %bb.go ] ; 13 uses
  %.1514859.i = phi ptr [ %i.wn, %.lr.ph864.i ], [ %i.ayd, %bb.go ] ; 10 uses
  %.2519858.i = phi ptr [ %i.vx, %.lr.ph864.i ], [ %i.ayc, %bb.go ] ; 63 uses
  %.1521857.i = phi ptr [ %i.vu, %.lr.ph864.i ], [ %i.ayg, %bb.go ] ; 4 uses
  %.3526856.i = phi i32 [ 2, %.lr.ph864.i ], [ %i.ayb, %bb.go ]
  %i.afl = load i16, ptr %.1514859.i, align 2, !tbaa !48
  %i.afm = zext i16 %i.afl to i32
  %i.afn = load i16, ptr %.1512860.i, align 2, !tbaa !48
  %i.afo = zext i16 %i.afn to i32                 ; 2 uses
  %i.afp = add nuw nsw i32 %i.afo, %i.afm         ; 4 uses
  %i.afq = load i16, ptr %.1510861.i, align 2, !tbaa !48
  %i.afr = zext i16 %i.afq to i32
  %i.afs = add nuw nsw i32 %i.afr, %i.afo         ; 4 uses
  %i.aft = getelementptr inbounds i8, ptr %.1512860.i, i64 %i.th
  %i.afu = load i16, ptr %i.aft, align 2, !tbaa !48
  %i.afv = zext i16 %i.afu to i32
  %i.afw = getelementptr inbounds nuw i8, ptr %.1512860.i, i64 %i.uh
  %i.afx = load i16, ptr %i.afw, align 2, !tbaa !48
  %i.afy = zext i16 %i.afx to i32                 ; 2 uses
  %i.afz = add nuw nsw i32 %i.afy, %i.afv         ; 4 uses
  %i.aga = getelementptr inbounds i8, ptr %.1512860.i, i64 %i.ti
  %i.agb = load i16, ptr %i.aga, align 2, !tbaa !48
  %i.agc = zext i16 %i.agb to i32
  %i.agd = add nuw nsw i32 %i.agc, %i.afy         ; 4 uses
  %.sroa.speculated826.i = call i32 @llvm.umin.i32(i32 %i.afs, i32 %i.afp)
  %.sroa.speculated808.i = call i32 @llvm.umin.i32(i32 %i.afz, i32 %.sroa.speculated826.i)
  %.sroa.speculated794.i = call i32 @llvm.umin.i32(i32 %i.agd, i32 %.sroa.speculated808.i) ; 2 uses
  %.sroa.speculated823.i = call i32 @llvm.umax.i32(i32 %i.afp, i32 %i.afs)
  %.sroa.speculated805.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated823.i, i32 %i.afz)
  %.sroa.speculated791.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated805.i, i32 %i.agd) ; 2 uses
  br i1 %.1508.in862.i, label %bb.fx, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.age = getelementptr [2 x i8], ptr %.1514859.i, i64 %i.vj
  %i.agf = getelementptr i8, ptr %i.age, i64 2
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !48
  %i.agh = zext i16 %i.agg to i32
  %i.agi = getelementptr inbounds nuw [2 x i8], ptr %.1512860.i, i64 %i.vj
  %i.agj = load i16, ptr %i.agi, align 2, !tbaa !48
  %i.agk = zext i16 %i.agj to i32                 ; 2 uses
  %i.agl = add nuw nsw i32 %i.agk, %i.agh         ; 3 uses
  %i.agm = getelementptr [2 x i8], ptr %.1510861.i, i64 %i.vj
  %i.agn = getelementptr i8, ptr %i.agm, i64 -2
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !48
  %i.agp = zext i16 %i.ago to i32
  %i.agq = add nuw nsw i32 %i.agp, %i.agk         ; 3 uses
  %i.agr = getelementptr [2 x i8], ptr %.1514859.i, i64 %i.vk
  %i.ags = getelementptr i8, ptr %i.agr, i64 -2
  %i.agt = load i16, ptr %i.ags, align 2, !tbaa !48
  %i.agu = zext i16 %i.agt to i32
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %.1512860.i, i64 %i.vk
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !48
  %i.agx = zext i16 %i.agw to i32                 ; 2 uses
  %i.agy = add nuw nsw i32 %i.agx, %i.agu         ; 3 uses
  %i.agz = getelementptr [2 x i8], ptr %.1510861.i, i64 %i.vk
  %i.aha = getelementptr i8, ptr %i.agz, i64 2
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !48
  %i.ahc = zext i16 %i.ahb to i32
  %i.ahd = add nuw nsw i32 %i.ahc, %i.agx         ; 3 uses
  %.sroa.speculated754.i = call i32 @llvm.umin.i32(i32 %i.agl, i32 %.sroa.speculated794.i)
  %.sroa.speculated738.i = call i32 @llvm.umin.i32(i32 %i.agq, i32 %.sroa.speculated754.i)
  %.sroa.speculated724.i = call i32 @llvm.umin.i32(i32 %i.agy, i32 %.sroa.speculated738.i)
  %.sroa.speculated712.i = call i32 @llvm.umin.i32(i32 %i.ahd, i32 %.sroa.speculated724.i)
  %.sroa.speculated751.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated791.i, i32 %i.agl)
  %.sroa.speculated735.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated751.i, i32 %i.agq)
  %.sroa.speculated721.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated735.i, i32 %i.agy)
  %.sroa.speculated709.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated721.i, i32 %i.ahd)
  %i.ahe = call i32 @llvm.umax.i32(i32 %.sroa.speculated709.i, i32 2)
  %i.ahf = lshr i32 %i.ahe, 1
  %i.ahg = add nuw nsw i32 %i.ahf, %.sroa.speculated712.i ; 8 uses
  %i.ahh = icmp samesign ult i32 %i.afp, %i.ahg
  %.pre.pre.pre.pre.pre.pre.pre.pre.i = load i8, ptr %.2519858.i, align 1, !tbaa !18 ; 10 uses
  br i1 %i.ahh, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ahi = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tl
  %i.ahj = load i8, ptr %i.ahi, align 1, !tbaa !18
  %i.ahk = zext i8 %i.ahj to i32
  %i.ahl = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.ahm = add nuw nsw i32 %i.ahk, %i.ahl
  %i.ahn = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tm
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !18
  %i.ahp = zext i8 %i.aho to i32
  %i.ahq = shl nuw nsw i32 %i.ahp, 1
  %i.ahr = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sw
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !18
  %i.aht = zext i8 %i.ahs to i32
  %i.ahu = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tb
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !18
  %i.ahw = zext i8 %i.ahv to i32
  %i.ahx = add nuw nsw i32 %i.ahw, %i.aht
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.0495.i = phi i32 [ %i.ahm, %bb.fh ], [ 0, %bb.fg ] ; 2 uses
  %.0487.i = phi i32 [ %i.ahq, %bb.fh ], [ 0, %bb.fg ] ; 2 uses
  %.0479.i = phi i32 [ %i.ahx, %bb.fh ], [ 0, %bb.fg ] ; 2 uses
  %.0471.i = phi i64 [ 1, %bb.fh ], [ 0, %bb.fg ] ; 2 uses
  %i.ahy = icmp samesign ult i32 %i.afs, %i.ahg
  br i1 %i.ahy, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ahz = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.to
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !18
  %i.aib = zext i8 %i.aia to i32
  %i.aic = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.aid = add nuw nsw i32 %.0495.i, %i.aic
  %i.aie = add nuw nsw i32 %i.aid, %i.aib
  %i.aif = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ta
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !18
  %i.aih = zext i8 %i.aig to i32
  %i.aii = shl nuw nsw i32 %i.aih, 1
  %i.aij = add nuw nsw i32 %i.aii, %.0487.i
  %i.aik = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sy
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !18
  %i.aim = zext i8 %i.ail to i32
  %i.ain = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tc
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !18
  %i.aip = zext i8 %i.aio to i32
  %i.aiq = add nuw nsw i32 %.0479.i, %i.aim
  %i.air = add nuw nsw i32 %i.aiq, %i.aip
  %i.ais = add nuw nsw i64 %.0471.i, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.1496.i = phi i32 [ %i.aie, %bb.fj ], [ %.0495.i, %bb.fi ] ; 2 uses
  %.1488.i = phi i32 [ %i.aij, %bb.fj ], [ %.0487.i, %bb.fi ] ; 2 uses
  %.1480.i = phi i32 [ %i.air, %bb.fj ], [ %.0479.i, %bb.fi ] ; 2 uses
  %.1472.i = phi i64 [ %i.ais, %bb.fj ], [ %.0471.i, %bb.fi ] ; 2 uses
  %i.ait = icmp samesign ult i32 %i.afz, %i.ahg
  br i1 %i.ait, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aiu = getelementptr inbounds i8, ptr %.2519858.i, i64 -2
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !18
  %i.aiw = zext i8 %i.aiv to i32
  %i.aix = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.aiy = add nuw nsw i32 %.1496.i, %i.aix
  %i.aiz = add nuw nsw i32 %i.aiy, %i.aiw
  %i.aja = getelementptr inbounds i8, ptr %.2519858.i, i64 -1
  %i.ajb = load i8, ptr %i.aja, align 1, !tbaa !18
  %i.ajc = zext i8 %i.ajb to i32
  %i.ajd = shl nuw nsw i32 %i.ajc, 1
  %i.aje = add nuw nsw i32 %i.ajd, %.1488.i
  %i.ajf = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sw
  %i.ajg = load i8, ptr %i.ajf, align 1, !tbaa !18
  %i.ajh = zext i8 %i.ajg to i32
  %i.aji = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sy
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !18
  %i.ajk = zext i8 %i.ajj to i32
  %i.ajl = add nuw nsw i32 %.1480.i, %i.ajh
  %i.ajm = add nuw nsw i32 %i.ajl, %i.ajk
  %i.ajn = add nuw nsw i64 %.1472.i, 1
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.2497.i = phi i32 [ %i.aiz, %bb.fl ], [ %.1496.i, %bb.fk ] ; 2 uses
  %.2489.i = phi i32 [ %i.aje, %bb.fl ], [ %.1488.i, %bb.fk ] ; 2 uses
  %.2481.i = phi i32 [ %i.ajm, %bb.fl ], [ %.1480.i, %bb.fk ] ; 2 uses
  %.2473.i = phi i64 [ %i.ajn, %bb.fl ], [ %.1472.i, %bb.fk ] ; 2 uses
  %i.ajo = icmp samesign ult i32 %i.agd, %i.ahg
  br i1 %i.ajo, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ajp = getelementptr inbounds nuw i8, ptr %.2519858.i, i64 2
  %i.ajq = load i8, ptr %i.ajp, align 1, !tbaa !18
  %i.ajr = zext i8 %i.ajq to i32
  %i.ajs = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.ajt = add nuw nsw i32 %.2497.i, %i.ajs
  %i.aju = add nuw nsw i32 %i.ajt, %i.ajr
  %i.ajv = getelementptr inbounds nuw i8, ptr %.2519858.i, i64 1
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !18
  %i.ajx = zext i8 %i.ajw to i32
  %i.ajy = shl nuw nsw i32 %i.ajx, 1
  %i.ajz = add nuw nsw i32 %i.ajy, %.2489.i
  %i.aka = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tb
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !18
  %i.akc = zext i8 %i.akb to i32
  %i.akd = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tc
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !18
  %i.akf = zext i8 %i.ake to i32
  %i.akg = add nuw nsw i32 %.2481.i, %i.akc
  %i.akh = add nuw nsw i32 %i.akg, %i.akf
  %i.aki = add nuw nsw i64 %.2473.i, 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.3498.i = phi i32 [ %i.aju, %bb.fn ], [ %.2497.i, %bb.fm ] ; 2 uses
  %.3490.i = phi i32 [ %i.ajz, %bb.fn ], [ %.2489.i, %bb.fm ] ; 2 uses
  %.3482.i = phi i32 [ %i.akh, %bb.fn ], [ %.2481.i, %bb.fm ] ; 2 uses
  %.3474.i = phi i64 [ %i.aki, %bb.fn ], [ %.2473.i, %bb.fm ] ; 2 uses
  %i.akj = icmp samesign ult i32 %i.agl, %i.ahg
  br i1 %i.akj, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.akk = getelementptr i8, ptr %.2519858.i, i64 %i.tp
  %i.akl = getelementptr i8, ptr %i.akk, i64 2
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !18
  %i.akn = zext i8 %i.akm to i32
  %i.ako = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.akp = add nuw nsw i32 %.3498.i, %i.ako
  %i.akq = add nuw nsw i32 %i.akp, %i.akn
  %i.akr = getelementptr [2 x i8], ptr %.1514859.i, i64 %i.tf
  %i.aks = getelementptr i8, ptr %i.akr, i64 2
  %i.akt = load i16, ptr %i.aks, align 2, !tbaa !48
  %i.aku = zext i16 %i.akt to i32
  %i.akv = add nuw nsw i32 %.3490.i, %i.aku
  %i.akw = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tb
  %i.akx = load i8, ptr %i.akw, align 1, !tbaa !18
  %i.aky = zext i8 %i.akx to i32
  %i.akz = shl nuw nsw i32 %i.aky, 1
  %i.ala = add nuw nsw i32 %i.akz, %.3482.i
  %i.alb = add nuw nsw i64 %.3474.i, 1
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.4499.i = phi i32 [ %i.akq, %bb.fp ], [ %.3498.i, %bb.fo ] ; 2 uses
  %.4491.i = phi i32 [ %i.akv, %bb.fp ], [ %.3490.i, %bb.fo ] ; 2 uses
  %.4483.i = phi i32 [ %i.ala, %bb.fp ], [ %.3482.i, %bb.fo ] ; 2 uses
  %.4475.i = phi i64 [ %i.alb, %bb.fp ], [ %.3474.i, %bb.fo ] ; 2 uses
  %i.alc = icmp samesign ult i32 %i.agq, %i.ahg
  br i1 %i.alc, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.ald = getelementptr i8, ptr %.2519858.i, i64 %i.to
  %i.ale = getelementptr i8, ptr %i.ald, i64 -2
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !18
  %i.alg = zext i8 %i.alf to i32
  %i.alh = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.ali = add nuw nsw i32 %.4499.i, %i.alh
  %i.alj = add nuw nsw i32 %i.ali, %i.alg
  %i.alk = getelementptr [2 x i8], ptr %.1510861.i, i64 %i.tf
  %i.all = getelementptr i8, ptr %i.alk, i64 -2
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !48
  %i.aln = zext i16 %i.alm to i32
  %i.alo = add nuw nsw i32 %.4491.i, %i.aln
  %i.alp = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sy
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !18
  %i.alr = zext i8 %i.alq to i32
  %i.als = shl nuw nsw i32 %i.alr, 1
  %i.alt = add nuw nsw i32 %i.als, %.4483.i
  %i.alu = add nuw nsw i64 %.4475.i, 1
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.5500.i = phi i32 [ %i.alj, %bb.fr ], [ %.4499.i, %bb.fq ] ; 2 uses
  %.5492.i = phi i32 [ %i.alo, %bb.fr ], [ %.4491.i, %bb.fq ] ; 2 uses
  %.5484.i = phi i32 [ %i.alt, %bb.fr ], [ %.4483.i, %bb.fq ] ; 2 uses
  %.5476.i = phi i64 [ %i.alu, %bb.fr ], [ %.4475.i, %bb.fq ] ; 2 uses
  %i.alv = icmp samesign ult i32 %i.agy, %i.ahg
  br i1 %i.alv, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.alw = getelementptr i8, ptr %.2519858.i, i64 %i.tp
  %i.alx = getelementptr i8, ptr %i.alw, i64 -2
  %i.aly = load i8, ptr %i.alx, align 1, !tbaa !18
  %i.alz = zext i8 %i.aly to i32
  %i.ama = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  %i.amb = add nuw nsw i32 %.5500.i, %i.ama
  %i.amc = add nuw nsw i32 %i.amb, %i.alz
  %i.amd = getelementptr [2 x i8], ptr %.1514859.i, i64 %i.tf
  %i.ame = getelementptr i8, ptr %i.amd, i64 -2
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !48
  %i.amg = zext i16 %i.amf to i32
  %i.amh = add nuw nsw i32 %.5492.i, %i.amg
  %i.ami = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sw
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !18
  %i.amk = zext i8 %i.amj to i32
  %i.aml = shl nuw nsw i32 %i.amk, 1
  %i.amm = add nuw nsw i32 %i.aml, %.5484.i
  %i.amn = add nuw nsw i64 %.5476.i, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.6501.i = phi i32 [ %i.amc, %bb.ft ], [ %.5500.i, %bb.fs ] ; 2 uses
  %.6493.i = phi i32 [ %i.amh, %bb.ft ], [ %.5492.i, %bb.fs ] ; 2 uses
  %.6485.i = phi i32 [ %i.amm, %bb.ft ], [ %.5484.i, %bb.fs ] ; 2 uses
  %.6477.i = phi i64 [ %i.amn, %bb.ft ], [ %.5476.i, %bb.fs ] ; 2 uses
  %i.amo = icmp samesign ult i32 %i.ahd, %i.ahg
  br i1 %i.amo, label %bb.fv, label %._crit_edge881.i

._crit_edge881.i:                                 ; preds = %bb.fu
  %.pre882.i = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.amp = getelementptr i8, ptr %.2519858.i, i64 %i.to
  %i.amq = getelementptr i8, ptr %i.amp, i64 2
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !18
  %i.ams = zext i8 %i.amr to i32
  %i.amt = zext i8 %.pre.pre.pre.pre.pre.pre.pre.pre.i to i32 ; 2 uses
  %i.amu = add nuw nsw i32 %.6501.i, %i.amt
  %i.amv = add nuw nsw i32 %i.amu, %i.ams
  %i.amw = getelementptr [2 x i8], ptr %.1510861.i, i64 %i.tf
  %i.amx = getelementptr i8, ptr %i.amw, i64 2
  %i.amy = load i16, ptr %i.amx, align 2, !tbaa !48
  %i.amz = zext i16 %i.amy to i32
  %i.ana = add nuw nsw i32 %.6493.i, %i.amz
  %i.anb = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tc
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !18
  %i.and = zext i8 %i.anc to i32
  %i.ane = shl nuw nsw i32 %i.and, 1
  %i.anf = add nuw nsw i32 %i.ane, %.6485.i
  %i.ang = add nuw nsw i64 %.6477.i, 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %._crit_edge881.i
  %.pre-phi883.i = phi i32 [ %.pre882.i, %._crit_edge881.i ], [ %i.amt, %bb.fv ] ; 2 uses
  %.7502.i = phi i32 [ %.6501.i, %._crit_edge881.i ], [ %i.amv, %bb.fv ] ; 2 uses
  %.7494.i = phi i32 [ %.6493.i, %._crit_edge881.i ], [ %i.ana, %bb.fv ]
  %.7486.i = phi i32 [ %.6485.i, %._crit_edge881.i ], [ %i.anf, %bb.fv ]
  %.7478.i = phi i64 [ %.6477.i, %._crit_edge881.i ], [ %i.ang, %bb.fv ]
  %i.anh = sub nsw i32 %.7494.i, %.7502.i
  %i.ani = sitofp i32 %i.anh to float
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cvL16Bayer2RGB_VNG_8uERKNS_3MatERS0_iE5scale, i64 %.7478.i
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !116 ; 2 uses
  %i.anl = fmul float %i.ank, %i.ani
  %i.anm = insertelement <4 x float> poison, float %i.anl, i64 0
  %i.ann = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.anm)
  %i.ano = sub nsw i32 %.7486.i, %.7502.i
  %i.anp = sitofp i32 %i.ano to float
  %i.anq = fmul float %i.ank, %i.anp
  %i.anr = insertelement <4 x float> poison, float %i.anq, i64 0
  %i.ans = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.anr)
  %i.ant = add nsw i32 %i.ann, %.pre-phi883.i
  %i.anu = add nsw i32 %i.ans, %.pre-phi883.i
  %i.anv = call i32 @llvm.smax.i32(i32 %i.ant, i32 0)
  %i.anw = call i32 @llvm.umin.i32(i32 %i.anv, i32 255)
  %i.anx = trunc nuw i32 %i.anw to i8
  br label %bb.go

bb.fx:                                            ; preds = %bb.ff
  %i.any = getelementptr inbounds nuw [2 x i8], ptr %.1514859.i, i64 %i.te
  %i.anz = load i16, ptr %i.any, align 2, !tbaa !48
  %i.aoa = zext i16 %i.anz to i32
  %i.aob = getelementptr inbounds nuw [2 x i8], ptr %.1514859.i, i64 %i.ts
  %i.aoc = load i16, ptr %i.aob, align 2, !tbaa !48
  %i.aod = zext i16 %i.aoc to i32
  %i.aoe = add nuw nsw i32 %i.aod, %i.aoa
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %.1512860.i, i64 %i.te
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !48
  %i.aoh = zext i16 %i.aog to i32                 ; 2 uses
  %i.aoi = add nuw nsw i32 %i.aoe, %i.aoh
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %.1512860.i, i64 %i.ts
  %i.aok = load i16, ptr %i.aoj, align 2, !tbaa !48
  %i.aol = zext i16 %i.aok to i32
  %i.aom = add nuw nsw i32 %i.aoi, %i.aol         ; 3 uses
  %i.aon = getelementptr inbounds [2 x i8], ptr %.1512860.i, i64 %i.tu
  %i.aoo = load i16, ptr %i.aon, align 2, !tbaa !48
  %i.aop = zext i16 %i.aoo to i32
  %i.aoq = add nuw nsw i32 %i.aop, %i.aoh
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %.1510861.i, i64 %i.te
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !48
  %i.aot = zext i16 %i.aos to i32
  %i.aou = add nuw nsw i32 %i.aoq, %i.aot
  %i.aov = getelementptr inbounds [2 x i8], ptr %.1510861.i, i64 %i.tu
  %i.aow = load i16, ptr %i.aov, align 2, !tbaa !48
  %i.aox = zext i16 %i.aow to i32
  %i.aoy = add nuw nsw i32 %i.aou, %i.aox         ; 3 uses
  %i.aoz = getelementptr inbounds nuw [2 x i8], ptr %.1514859.i, i64 %79
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !48
  %i.apb = zext i16 %i.apa to i32
  %i.apc = getelementptr inbounds [2 x i8], ptr %.1514859.i, i64 %i.tw
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !48
  %i.ape = zext i16 %i.apd to i32
  %i.apf = add nuw nsw i32 %i.ape, %i.apb
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %.1512860.i, i64 %79
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !48
  %i.api = zext i16 %i.aph to i32                 ; 2 uses
  %i.apj = add nuw nsw i32 %i.apf, %i.api
  %i.apk = getelementptr inbounds [2 x i8], ptr %.1512860.i, i64 %i.tw
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !48
  %i.apm = zext i16 %i.apl to i32
  %i.apn = add nuw nsw i32 %i.apj, %i.apm         ; 3 uses
  %i.apo = getelementptr inbounds nuw [2 x i8], ptr %.1512860.i, i64 %i.ty
  %i.app = load i16, ptr %i.apo, align 2, !tbaa !48
  %i.apq = zext i16 %i.app to i32
  %i.apr = add nuw nsw i32 %i.apq, %i.api
  %i.aps = getelementptr inbounds nuw [2 x i8], ptr %.1510861.i, i64 %79
  %i.apt = load i16, ptr %i.aps, align 2, !tbaa !48
  %i.apu = zext i16 %i.apt to i32
  %i.apv = add nuw nsw i32 %i.apr, %i.apu
  %i.apw = getelementptr inbounds nuw [2 x i8], ptr %.1510861.i, i64 %i.ty
  %i.apx = load i16, ptr %i.apw, align 2, !tbaa !48
  %i.apy = zext i16 %i.apx to i32
  %i.apz = add nuw nsw i32 %i.apv, %i.apy         ; 3 uses
  %.sroa.speculated694.i = call i32 @llvm.umin.i32(i32 %i.aom, i32 %.sroa.speculated794.i)
  %.sroa.speculated678.i = call i32 @llvm.umin.i32(i32 %i.aoy, i32 %.sroa.speculated694.i)
  %.sroa.speculated663.i = call i32 @llvm.umin.i32(i32 %i.apn, i32 %.sroa.speculated678.i)
  %.sroa.speculated653.i = call i32 @llvm.umin.i32(i32 %i.apz, i32 %.sroa.speculated663.i)
  %.sroa.speculated691.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated791.i, i32 %i.aom)
  %.sroa.speculated675.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated691.i, i32 %i.aoy)
  %.sroa.speculated660.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated675.i, i32 %i.apn)
  %.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %.sroa.speculated660.i, i32 %i.apz)
  %i.aqa = call i32 @llvm.umax.i32(i32 %.sroa.speculated.i, i32 2)
  %i.aqb = lshr i32 %i.aqa, 1
  %i.aqc = add nuw nsw i32 %i.aqb, %.sroa.speculated653.i ; 8 uses
  %i.aqd = icmp samesign ult i32 %i.afp, %i.aqc
  br i1 %i.aqd, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aqe = getelementptr i8, ptr %.2519858.i, i64 %i.tl ; 3 uses
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 -1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !18
  %i.aqh = zext i8 %i.aqg to i32
  %i.aqi = getelementptr i8, ptr %i.aqe, i64 1
  %i.aqj = load i8, ptr %i.aqi, align 1, !tbaa !18
  %i.aqk = zext i8 %i.aqj to i32
  %i.aql = add nuw nsw i32 %i.aqk, %i.aqh
  %i.aqm = load i8, ptr %i.aqe, align 1, !tbaa !18
  %i.aqn = zext i8 %i.aqm to i32
  %i.aqo = load i8, ptr %.2519858.i, align 1, !tbaa !18
  %i.aqp = zext i8 %i.aqo to i32
  %i.aqq = add nuw nsw i32 %i.aqp, %i.aqn
  %i.aqr = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tm
  %i.aqs = load i8, ptr %i.aqr, align 1, !tbaa !18
  %i.aqt = zext i8 %i.aqs to i32
  %i.aqu = shl nuw nsw i32 %i.aqt, 1
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0463.i = phi i32 [ %i.aql, %bb.fy ], [ 0, %bb.fx ] ; 2 uses
  %.0455.i = phi i32 [ %i.aqq, %bb.fy ], [ 0, %bb.fx ] ; 2 uses
  %.0447.i = phi i32 [ %i.aqu, %bb.fy ], [ 0, %bb.fx ] ; 2 uses
  %.0.i = phi i64 [ 1, %bb.fy ], [ 0, %bb.fx ]    ; 2 uses
  %i.aqv = icmp samesign ult i32 %i.afs, %i.aqc
  br i1 %i.aqv, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.aqw = getelementptr i8, ptr %.2519858.i, i64 %i.to ; 3 uses
  %i.aqx = getelementptr i8, ptr %i.aqw, i64 -1
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !18
  %i.aqz = zext i8 %i.aqy to i32
  %i.ara = getelementptr i8, ptr %i.aqw, i64 1
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !18
  %i.arc = zext i8 %i.arb to i32
  %i.ard = add nuw nsw i32 %.0463.i, %i.aqz
  %i.are = add nuw nsw i32 %i.ard, %i.arc
  %i.arf = load i8, ptr %i.aqw, align 1, !tbaa !18
  %i.arg = zext i8 %i.arf to i32
  %i.arh = load i8, ptr %.2519858.i, align 1, !tbaa !18
  %i.ari = zext i8 %i.arh to i32
  %i.arj = add nuw nsw i32 %.0455.i, %i.arg
  %i.ark = add nuw nsw i32 %i.arj, %i.ari
  %i.arl = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ta
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !18
  %i.arn = zext i8 %i.arm to i32
  %i.aro = shl nuw nsw i32 %i.arn, 1
  %i.arp = add nuw nsw i32 %i.aro, %.0447.i
  %i.arq = add nuw nsw i64 %.0.i, 1
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.1464.i = phi i32 [ %i.are, %bb.ga ], [ %.0463.i, %bb.fz ] ; 2 uses
  %.1456.i = phi i32 [ %i.ark, %bb.ga ], [ %.0455.i, %bb.fz ] ; 2 uses
  %.1448.i = phi i32 [ %i.arp, %bb.ga ], [ %.0447.i, %bb.fz ] ; 2 uses
  %.1.i = phi i64 [ %i.arq, %bb.ga ], [ %.0.i, %bb.fz ] ; 2 uses
  %i.arr = icmp samesign ult i32 %i.afz, %i.aqc
  br i1 %i.arr, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ars = getelementptr inbounds i8, ptr %.2519858.i, i64 -1
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18
  %i.aru = zext i8 %i.art to i32
  %i.arv = shl nuw nsw i32 %i.aru, 1
  %i.arw = add nuw nsw i32 %i.arv, %.1464.i
  %i.arx = getelementptr inbounds i8, ptr %.2519858.i, i64 -2
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !18
  %i.arz = zext i8 %i.ary to i32
  %i.asa = load i8, ptr %.2519858.i, align 1, !tbaa !18
  %i.asb = zext i8 %i.asa to i32
  %i.asc = add nuw nsw i32 %.1456.i, %i.arz
  %i.asd = add nuw nsw i32 %i.asc, %i.asb
  %i.ase = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tz
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !18
  %i.asg = zext i8 %i.asf to i32
  %i.ash = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ua
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18
  %i.asj = zext i8 %i.asi to i32
  %i.ask = add nuw nsw i32 %.1448.i, %i.asg
  %i.asl = add nuw nsw i32 %i.ask, %i.asj
  %i.asm = add nuw nsw i64 %.1.i, 1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.2465.i = phi i32 [ %i.arw, %bb.gc ], [ %.1464.i, %bb.gb ] ; 2 uses
  %.2457.i = phi i32 [ %i.asd, %bb.gc ], [ %.1456.i, %bb.gb ] ; 2 uses
  %.2449.i = phi i32 [ %i.asl, %bb.gc ], [ %.1448.i, %bb.gb ] ; 2 uses
  %.2.i = phi i64 [ %i.asm, %bb.gc ], [ %.1.i, %bb.gb ] ; 2 uses
  %i.asn = icmp samesign ult i32 %i.agd, %i.aqc
  br i1 %i.asn, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aso = getelementptr inbounds nuw i8, ptr %.2519858.i, i64 1
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !18
  %i.asq = zext i8 %i.asp to i32
  %i.asr = shl nuw nsw i32 %i.asq, 1
  %i.ass = add nuw nsw i32 %i.asr, %.2465.i
  %i.ast = getelementptr inbounds nuw i8, ptr %.2519858.i, i64 2
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !18
  %i.asv = zext i8 %i.asu to i32
  %i.asw = load i8, ptr %.2519858.i, align 1, !tbaa !18
  %i.asx = zext i8 %i.asw to i32
  %i.asy = add nuw nsw i32 %.2457.i, %i.asv
  %i.asz = add nuw nsw i32 %i.asy, %i.asx
  %i.ata = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ub
  %i.atb = load i8, ptr %i.ata, align 1, !tbaa !18
  %i.atc = zext i8 %i.atb to i32
  %i.atd = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.uc
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i32
  %i.atg = add nuw nsw i32 %.2449.i, %i.atc
  %i.ath = add nuw nsw i32 %i.atg, %i.atf
  %i.ati = add nuw nsw i64 %.2.i, 1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.3466.i = phi i32 [ %i.ass, %bb.ge ], [ %.2465.i, %bb.gd ] ; 2 uses
  %.3458.i = phi i32 [ %i.asz, %bb.ge ], [ %.2457.i, %bb.gd ] ; 2 uses
  %.3450.i = phi i32 [ %i.ath, %bb.ge ], [ %.2449.i, %bb.gd ] ; 2 uses
  %.3.i = phi i64 [ %i.ati, %bb.ge ], [ %.2.i, %bb.gd ] ; 2 uses
  %i.atj = icmp samesign ult i32 %i.aom, %i.aqc
  br i1 %i.atj, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.atk = getelementptr i8, ptr %.2519858.i, i64 %i.tl
  %i.atl = getelementptr i8, ptr %i.atk, i64 1
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !18
  %i.atn = zext i8 %i.atm to i32
  %i.ato = getelementptr inbounds nuw i8, ptr %.2519858.i, i64 1
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atq = zext i8 %i.atp to i32
  %i.atr = add nuw nsw i32 %.3466.i, %i.atn
  %i.ats = add nuw nsw i32 %i.atr, %i.atq
  %i.att = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tb
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !18
  %i.atv = zext i8 %i.atu to i32
  %i.atw = shl nuw nsw i32 %i.atv, 1
  %i.atx = add nuw nsw i32 %i.atw, %.3458.i
  %i.aty = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.tm
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i32
  %i.aub = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ub
  %i.auc = load i8, ptr %i.aub, align 1, !tbaa !18
  %i.aud = zext i8 %i.auc to i32
  %i.aue = add nuw nsw i32 %.3450.i, %i.aua
  %i.auf = add nuw nsw i32 %i.aue, %i.aud
  %i.aug = add nuw nsw i64 %.3.i, 1
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.4467.i = phi i32 [ %i.ats, %bb.gg ], [ %.3466.i, %bb.gf ] ; 2 uses
  %.4459.i = phi i32 [ %i.atx, %bb.gg ], [ %.3458.i, %bb.gf ] ; 2 uses
  %.4451.i = phi i32 [ %i.auf, %bb.gg ], [ %.3450.i, %bb.gf ] ; 2 uses
  %.4.i = phi i64 [ %i.aug, %bb.gg ], [ %.3.i, %bb.gf ] ; 2 uses
  %i.auh = icmp samesign ult i32 %i.aoy, %i.aqc
  br i1 %i.auh, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.aui = getelementptr i8, ptr %.2519858.i, i64 %i.to
  %i.auj = getelementptr i8, ptr %i.aui, i64 -1
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !18
  %i.aul = zext i8 %i.auk to i32
  %i.aum = getelementptr inbounds i8, ptr %.2519858.i, i64 -1
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !18
  %i.auo = zext i8 %i.aun to i32
  %i.aup = add nuw nsw i32 %.4467.i, %i.aul
  %i.auq = add nuw nsw i32 %i.aup, %i.auo
  %i.aur = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.sy
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !18
  %i.aut = zext i8 %i.aus to i32
  %i.auu = shl nuw nsw i32 %i.aut, 1
  %i.auv = add nuw nsw i32 %i.auu, %.4459.i
  %i.auw = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ta
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !18
  %i.auy = zext i8 %i.aux to i32
  %i.auz = getelementptr inbounds i8, ptr %.2519858.i, i64 %i.ua
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !18
  %i.avb = zext i8 %i.ava to i32
end_hunk_0
