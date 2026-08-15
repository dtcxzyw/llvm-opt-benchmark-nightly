inline.NumInlined: 8193
inline.NumDeleted: 1946
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter19parseFusedBatchNormERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
  %i.sd = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %37, ptr noundef nonnull %i.sa, ptr noundef nonnull %i.rz)
          to label %bb.dg unwind label %bb.de

bb.de:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i319, %bb.dd
  %i.se = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sf = load ptr, ptr %36, align 8, !tbaa !195  ; 3 uses
  %.not.i.i5.i317 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i5.i317, label %.body320, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.sg = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !198
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = ptrtoint ptr %i.sf to i64
  %i.sk = sub i64 %i.si, %i.sj
  call void @_ZdlPvm(ptr noundef nonnull %i.sf, i64 noundef %i.sk) #27
  br label %.body320

bb.dg:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i319
  %i.sl = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  store ptr %i.sd, ptr %i.sl, align 8, !tbaa !196
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8addLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RNS1_11LayerParamsESt6vectorIS9_SaIS9_EEii(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef align 8 %36, i32 noundef 1, i32 noundef 0)
          to label %bb.dh unwind label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.sm = load ptr, ptr %36, align 8, !tbaa !195  ; 3 uses
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !196 ; 2 uses
  %.not4.i.i.i323 = icmp eq ptr %i.sm, %i.sn
  br i1 %.not4.i.i.i323, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, label %.lr.ph.i.i.i324

.lr.ph.i.i.i324:                                  ; preds = %bb.dh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327
  %.05.i.i.i325 = phi ptr [ %i.st, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327 ], [ %i.sm, %bb.dh ] ; 3 uses
  %i.so = load ptr, ptr %.05.i.i.i325, align 8, !tbaa !10 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326: ; preds = %.lr.ph.i.i.i324
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !25
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327: ; preds = %.lr.ph.i.i.i324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i326
  %i.st = getelementptr inbounds nuw i8, ptr %.05.i.i.i325, i64 32 ; 2 uses
  %.not.i.i.i328 = icmp eq ptr %i.st, %i.sn
  br i1 %.not.i.i.i328, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i329, label %.lr.ph.i.i.i324, !llvm.loop !197

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i329: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i327
  %.pr.i330 = load ptr, ptr %36, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i329, %bb.dh
  %i.su = phi ptr [ %.pr.i330, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i329 ], [ %i.sm, %bb.dh ] ; 3 uses
  %.not.i.i1.i332 = icmp eq ptr %i.su, null
  br i1 %.not.i.i1.i332, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit335, label %bb.di

bb.di:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331
  %i.sv = load ptr, ptr %i.sc, align 8, !tbaa !198
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = ptrtoint ptr %i.su to i64
  %i.sy = sub i64 %i.sw, %i.sx
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sy) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit335

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit335: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i331, %bb.di
  %i.sz = load ptr, ptr %37, align 8, !tbaa !10   ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.tb = icmp eq ptr %i.sz, %i.ta
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit335
  %i.tc = load i64, ptr %i.ta, align 8, !tbaa !25
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.td) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.te = load ptr, ptr %35, align 8, !tbaa !10   ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.rk
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.tg = load i64, ptr %i.rk, align 8, !tbaa !25
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.ti = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.u
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
  %i.tk = load i64, ptr %i.u, align 8, !tbaa !25
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.dj:                                            ; preds = %.noexc.i314
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.dk:                                            ; preds = %bb.dg
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #26
  br label %.body320

.body320:                                         ; preds = %bb.df, %bb.de, %bb.dk
  %.pn112 = phi { ptr, i32 } [ %i.tn, %bb.dk ], [ %i.se, %bb.de ], [ %i.se, %bb.df ] ; 2 uses
  %i.to = load ptr, ptr %37, align 8, !tbaa !10   ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.tq = icmp eq ptr %i.to, %i.tp
  br i1 %i.tq, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %.body320
  %i.tr = load i64, ptr %i.tp, align 8, !tbaa !25
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.ts) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.body320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.dj
  %.pn112.pn = phi { ptr, i32 } [ %i.tm, %bb.dj ], [ %.pn112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn112, %.body320 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.tt = load ptr, ptr %35, align 8, !tbaa !10   ; 2 uses
  %i.tu = icmp eq ptr %i.tt, %i.rk
  br i1 %i.tu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %.loopexit
  %i.tv = load i64, ptr %i.rk, align 8, !tbaa !25
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.cu, %bb.ct, %bb.cs, %.body, %bb.bl, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %.pn112.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308 ], [ %i.qw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.pj, %bb.cs ], [ %.pn104.pn, %.body ], [ %.pn96, %bb.bl ], [ %.pn94, %bb.bi ], [ %i.pl, %bb.cu ], [ %i.pk, %bb.ct ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.dm

bb.dm:                                            ; preds = %bb.w, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.am, %bb.al, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.ds, %bb.v ], [ %i.du, %bb.x ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.dt, %bb.w ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn116.pn, %bb.dl ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %i.gc, %bb.al ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.gd, %bb.am ]
  %i.tx = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.u
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %bb.dm
  %i.tz = load i64, ptr %i.u, align 8, !tbaa !25
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %.pn116.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter24parseConv2DBackpropInputERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %6 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::vector.89", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %12 = alloca %"class.std::map.38", align 8      ; 10 uses
  %13 = alloca %"class.std::map.38", align 8      ; 10 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = alloca [8 x i64], align 16               ; 8 uses
  %.sroa.0509 = alloca [2 x i64], align 16        ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 21 uses
  %21 = alloca %"class.std::map.38", align 8      ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::vector", align 8      ; 10 uses
  %32 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"struct.cv::dnn::dnn5_v20260605::DictValue", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::vector", align 8      ; 10 uses
  %39 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !36
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !10   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.u, ptr %i.c, align 8, !tbaa !32
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !10
  %i.x = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.x, ptr %i.r, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.y = phi ptr [ %i.w, %.noexc.i ], [ %i.r, %bb.a ] ; 2 uses
  switch i64 %i.u, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !25
  store i8 %i.z, ptr %i.y, align 1, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !37
  %i.ac = load ptr, ptr %7, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 3
  br i1 %i.ag, label %._crit_edge.i.i170, label %bb.f

bb.e:                                             ; preds = %bb.i, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.af, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter24parseConv2DBackpropInputERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__1965) #29
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  unreachable

._crit_edge.i.i170:                               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ai, ptr %8, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ai, ptr noundef nonnull align 1 dereferenceable(9) @.str.95, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 9, ptr %i.aj, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 25
  store i8 0, ptr %i.ak, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i8 0, ptr %i.d, align 1, !tbaa !17
  %i.al = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIbEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.h unwind label %bb.y       ; 0 uses

bb.h:                                             ; preds = %._crit_edge.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.am = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ai
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !475 ; 4 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !476 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 208               ; 2 uses
  %i.ay = icmp eq ptr %i.as, %i.at
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = sub nuw nsw i64 1, %i.ax
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.az)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit unwind label %bb.e

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = icmp ugt i64 %i.ax, 1
  br i1 %i.ba, label %bb.k, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 208 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.as
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !477

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !475
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.bd, ptr %10, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bd, ptr noundef nonnull align 1 dereferenceable(7) @.str.27, i64 7, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 7, ptr %i.be, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 23
  store i8 0, ptr %i.bf, align 1, !tbaa !25
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113getNextLayersERKN17opencv_tensorflow8GraphDefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %i.bg = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bd
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.l
  %i.bi = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !422
  %i.bm = load ptr, ptr %9, align 8, !tbaa !419
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp eq i64 %i.bp, 40
  br i1 %i.bq, label %._crit_edge.i.i180, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

._crit_edge.i.i180:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.br, ptr %11, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.br, ptr noundef nonnull align 1 dereferenceable(9) @.str.95, i64 9, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 9, ptr %i.bs, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 25
  store i8 0, ptr %i.bt, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter24parseConv2DBackpropInputERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
bb.aa:                                            ; preds = %._crit_edge.i.i180
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.ea = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.br
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.aa
  %i.ec = load i64, ptr %i.br, align 8, !tbaa !25
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ds

bb.ab:                                            ; preds = %bb.ae, %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ac:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit, %bb.x, %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ad:                                            ; preds = %bb.u, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %12) #26
  br label %bb.ds

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i32 0, ptr %i.eh, align 8, !tbaa !119
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr null, ptr %i.ei, align 8, !tbaa !123
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !124
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !125
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store i64 0, ptr %i.el, align 8, !tbaa !126
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !123 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.en, null
  br i1 %.not.i.i206, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit214, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %13, ptr %5, align 8, !tbaa !426
  %i.eo = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull %i.en, ptr noundef nonnull %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc.i.i207 unwind label %bb.ab ; 3 uses

.noexc.i.i207:                                    ; preds = %bb.ae, %.noexc.i.i207
  %.0.i.i.i.i.i.i208 = phi ptr [ %i.eq, %.noexc.i.i207 ], [ %i.eo, %bb.ae ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i208, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !211 ; 2 uses
  %.not.i.i.i.i.i.i209 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i.i209, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i210, label %.noexc.i.i207, !llvm.loop !212

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i210: ; preds = %.noexc.i.i207
  store ptr %.0.i.i.i.i.i.i208, ptr %i.ej, align 8, !tbaa !91
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i210
  %.0.i.i7.i.i.i.i211 = phi ptr [ %i.eo, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i210 ], [ %i.es, %bb.af ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i211, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !213 ; 2 uses
  %.not.i.i8.i.i.i.i212 = icmp eq ptr %i.es, null
  br i1 %.not.i.i8.i.i.i.i212, label %bb.ag, label %bb.af, !llvm.loop !214

bb.ag:                                            ; preds = %bb.af
  store ptr %.0.i.i7.i.i.i.i211, ptr %i.ek, align 8, !tbaa !91
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !126
  store i64 %i.eu, ptr %i.el, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store ptr %i.eo, ptr %i.ei, align 8, !tbaa !91
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit214

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit214: ; preds = %bb.ag, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  %i.ev = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef align 8 %13, i32 noundef 1, ptr noundef null)
          to label %bb.ah unwind label %bb.at

bb.ah:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit214
  %i.ew = load ptr, ptr %i.aq, align 8, !tbaa !476
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16kernelFromTensorERKN17opencv_tensorflow11TensorProtoERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(224) %i.ev, ptr noundef nonnull align 8 dereferenceable(208) %i.ew)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.ex = load ptr, ptr %i.ei, align 8, !tbaa !123
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.ex)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit215 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit215: ; preds = %bb.ai
  %i.fa = load ptr, ptr %i.aq, align 8, !tbaa !476 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 92
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !9
  store i32 %i.fc, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !9
  store i32 %i.fe, ptr %i.g, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ff, ptr %14, align 8, !tbaa !36
  store i64 7520849085632505195, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 8, ptr %i.fg, align 8, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i8 0, ptr %i.fh, align 8, !tbaa !25
  %i.fi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.ak unwind label %bb.au     ; 0 uses

bb.ak:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit215
  %i.fj = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ff
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.ak
  %i.fl = load i64, ptr %i.ff, align 8, !tbaa !25
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fn, ptr %15, align 8, !tbaa !36
  store i64 8601712996201424235, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 8, ptr %i.fo, align 8, !tbaa !37
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i8 0, ptr %i.fp, align 8, !tbaa !25
  %i.fq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.al unwind label %bb.av     ; 0 uses

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.fr = load ptr, ptr %15, align 8, !tbaa !10   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.fn
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.al
  %i.ft = load i64, ptr %i.fn, align 8, !tbaa !25
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fv, ptr %16, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.fv, ptr noundef nonnull align 1 dereferenceable(10) @.str.99, i64 10, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.fw, align 8, !tbaa !37
  %i.fx = getelementptr inbounds nuw i8, ptr %16, i64 26
  store i8 0, ptr %i.fx, align 2, !tbaa !25
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fz = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.fy)
          to label %bb.am unwind label %bb.aw     ; 0 uses

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.ga = load ptr, ptr %16, align 8, !tbaa !10   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fv
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.am
  %i.gc = load i64, ptr %i.fv, align 8, !tbaa !25
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110setStridesERNS1_11LayerParamsERKN17opencv_tensorflow7NodeDefE(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110setPadModeERNS1_11LayerParamsERKN17opencv_tensorflow7NodeDefE(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.ge = invoke fastcc noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_118getExplicitPaddingERNS1_11LayerParamsERKN17opencv_tensorflow7NodeDefERA8_l(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.ap unwind label %bb.ay     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0509)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0509, i8 0, i64 16, i1 false)
  br i1 %i.ge, label %bb.aq, label %._crit_edge.i.i258

bb.aq:                                            ; preds = %bb.ap
  %i.gf = load i64, ptr %i.ab, align 8, !tbaa !37
  %i.gg = add i64 %i.gf, -4611686018427387897
  %i.gh = icmp ult i64 %i.gg, 7
  br i1 %i.gh, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #29
          to label %.noexc237 unwind label %bb.az

.noexc237:                                        ; preds = %bb.ar
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.aq
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.322, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.az ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.gj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.gj, ptr %17, align 8, !tbaa !36
  store i64 7306087011044319600, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 8, ptr %i.gk, align 8, !tbaa !37
  %i.gl = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i8 0, ptr %i.gl, align 8, !tbaa !25
  %i.gm = invoke noundef nonnull align 1 dereferenceable(6) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIA6_cEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 1 dereferenceable(6) @.str.188)
          to label %bb.as unwind label %bb.ba     ; 0 uses

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.gn = load ptr, ptr %17, align 8, !tbaa !10   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.gj
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.as
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !25
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.gs = load i64, ptr %i.gr, align 16, !tbaa !32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !32
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.gx = load i64, ptr %i.gw, align 16, !tbaa !32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !32
  %i.ha = sub nsw i64 0, %i.gz
  br label %._crit_edge.i.i258

bb.at:                                            ; preds = %bb.ah, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit214
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #26
  br label %bb.ds

bb.au:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit215
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.ff
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.au
  %i.hf = load i64, ptr %i.ff, align 8, !tbaa !25
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.dr

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.hh = landingpad { ptr, i32 }
          cleanup
  %i.hi = load ptr, ptr %15, align 8, !tbaa !10   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.fn
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.av
  %i.hk = load i64, ptr %i.fn, align 8, !tbaa !25
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.dr

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %16, align 8, !tbaa !10   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.fv
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.aw
  %i.hp = load i64, ptr %i.fv, align 8, !tbaa !25
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.dr

bb.ax:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.ay:                                            ; preds = %bb.ao
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.ar
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %40

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %17, align 8, !tbaa !10   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.gj
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %bb.ba
  %i.hx = load i64, ptr %i.gj, align 8, !tbaa !25
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %40

._crit_edge.i.i258:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.ap
  %.sroa.5.0 = phi i64 [ %i.gs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 2147483647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ 0, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.hz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hz, ptr %18, align 8, !tbaa !36
  store i64 7520841384672261235, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.ia, align 8, !tbaa !37
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.ib, align 8, !tbaa !25
  %i.ic = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc262 unwind label %bb.bw

.noexc262:                                        ; preds = %._crit_edge.i.i258
  %i.id = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i32 noundef -1)
          to label %bb.bb unwind label %bb.bw

bb.bb:                                            ; preds = %.noexc262
  %i.ie = call i64 @llvm.smax.i64(i64 %i.id, i64 -2147483648)
  %i.if = call i64 @llvm.smin.i64(i64 %i.ie, i64 2147483647)
  %i.ig = trunc nsw i64 %i.if to i32              ; 2 uses
  %i.ih = load ptr, ptr %18, align 8, !tbaa !10   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hz
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.bb
  %i.ij = load i64, ptr %i.hz, align 8, !tbaa !25
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.il = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.il, ptr %19, align 8, !tbaa !36
  store i64 8601705295241180275, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 8, ptr %i.im, align 8, !tbaa !37
  %i.in = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i8 0, ptr %i.in, align 8, !tbaa !25
  %i.io = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc271 unwind label %bb.bx

.noexc271:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.ip = invoke noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %i.io, i32 noundef -1)
          to label %bb.bc unwind label %bb.bx

bb.bc:                                            ; preds = %.noexc271
  %i.iq = call i64 @llvm.smax.i64(i64 %i.ip, i64 -2147483648)
  %i.ir = call i64 @llvm.smin.i64(i64 %i.iq, i64 2147483647)
  %i.is = trunc nsw i64 %i.ir to i32              ; 2 uses
  %i.it = load ptr, ptr %19, align 8, !tbaa !10   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.il
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %bb.bc
  %i.iv = load i64, ptr %i.il, align 8, !tbaa !25
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i32 0, ptr %i.ix, align 8, !tbaa !119
  %i.iy = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr null, ptr %i.iy, align 8, !tbaa !123
  %i.iz = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  store ptr %i.ix, ptr %i.iz, align 8, !tbaa !124
  %i.ja = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  store ptr %i.ix, ptr %i.ja, align 8, !tbaa !125
  %i.jb = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  store i64 0, ptr %i.jb, align 8, !tbaa !126
  %i.jc = load ptr, ptr %i.em, align 8, !tbaa !123 ; 2 uses
  %.not.i.i277 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i277, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit285, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %21, ptr %4, align 8, !tbaa !426
  %i.jd = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull %i.jc, ptr noundef nonnull %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.i278 unwind label %bb.by ; 3 uses

.noexc.i.i278:                                    ; preds = %bb.bd, %.noexc.i.i278
  %.0.i.i.i.i.i.i279 = phi ptr [ %i.jf, %.noexc.i.i278 ], [ %i.jd, %bb.bd ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i279, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !211 ; 2 uses
  %.not.i.i.i.i.i.i280 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i.i.i280, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i281, label %.noexc.i.i278, !llvm.loop !212

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i281: ; preds = %.noexc.i.i278
  store ptr %.0.i.i.i.i.i.i279, ptr %i.iz, align 8, !tbaa !91
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i281
  %.0.i.i7.i.i.i.i282 = phi ptr [ %i.jd, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i281 ], [ %i.jh, %bb.be ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i282, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !213 ; 2 uses
  %.not.i.i8.i.i.i.i283 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i8.i.i.i.i283, label %bb.bf, label %bb.be, !llvm.loop !214

bb.bf:                                            ; preds = %bb.be
  store ptr %.0.i.i7.i.i.i.i282, ptr %i.ja, align 8, !tbaa !91
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !126
  store i64 %i.jj, ptr %i.jb, align 8, !tbaa !126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store ptr %i.jd, ptr %i.iy, align 8, !tbaa !91
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit285

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit285: ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %i.jk = invoke fastcc noundef nonnull align 8 dereferenceable(224) ptr @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter12getConstBlobERKN17opencv_tensorflow7NodeDefESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISE_ESaISt4pairIKSE_iEEEiPi(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef align 8 %21, i32 noundef 0, ptr noundef null)
          to label %bb.bg unwind label %bb.bz

bb.bg:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit285
  invoke void @_ZN2cv3dnn14dnn5_v2026060516getTensorContentERKN17opencv_tensorflow11TensorProtoEb(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(224) %i.jk, i1 noundef zeroext true)
          to label %bb.bh unwind label %bb.bz

bb.bh:                                            ; preds = %bb.bg
  %i.jl = load ptr, ptr %i.iy, align 8, !tbaa !123
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.jl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit286 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  %i.jn = extractvalue { ptr, i32 } %i.jm, 0
  call void @__clang_call_terminate(ptr %i.jn) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit286: ; preds = %bb.bh
  %i.jo = invoke fastcc noundef i32 @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_113getDataLayoutERKN17opencv_tensorflow7NodeDefE(ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %bb.bj unwind label %bb.ca

bb.bj:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit286
  %i.jp = icmp eq i32 %i.jo, 2                    ; 5 uses
  %i.jq = select i1 %i.jp, i32 2, i32 1           ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !466
  %i.jt = icmp slt i32 %i.js, 2
  br i1 %i.jt, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ju = load i32, ptr %20, align 8, !tbaa !441
  %i.jv = and i32 %i.ju, 16384
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %20, i64 84
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = icmp eq i32 %i.jy, 1
  %or.cond.i = select i1 %i.jw, i1 true, i1 %i.jz
  br i1 %or.cond.i, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ka = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !9
  %i.kc = icmp eq i32 %i.kb, 1
  br i1 %i.kc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kd = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !446 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !32
  %i.kh = zext i1 %i.jp to i64
  %i.ki = shl i64 %i.kg, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ki
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !467 ; 2 uses
  %i.km = sdiv i32 %i.jq, %i.kl
  %.recomposed = srem i32 %i.jq, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !446 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !32
  %i.kr = sext i32 %i.km to i64
  %i.ks = mul i64 %i.kq, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ks
  %i.ku = sext i32 %.recomposed to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ku
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bj
  %i.kw = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !446 ; 2 uses
  %i.ky = zext nneg i32 %i.jq to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !9
  %i.lb = select i1 %i.jp, i64 3, i64 2
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.lb
  br label %_ZN2cv3Mat2atIiEERT_i.exit289

bb.bp:                                            ; preds = %bb.bk
  %i.ld = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !446 ; 2 uses
  %i.lf = zext nneg i32 %i.jq to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9
  %i.li = select i1 %i.jp, i64 3, i64 2
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.li
  br label %_ZN2cv3Mat2atIiEERT_i.exit289

bb.bq:                                            ; preds = %bb.bm, %bb.bn
  %.ph = phi ptr [ %i.ke, %bb.bm ], [ %i.ko, %bb.bn ] ; 2 uses
  %.0.i.ph.ph = phi ptr [ %i.kj, %bb.bm ], [ %i.kv, %bb.bn ]
  %i.lk = load i32, ptr %.0.i.ph.ph, align 4, !tbaa !9 ; 2 uses
  %i.ll = select i1 %i.jp, i32 3, i32 2           ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !9
  %i.lo = icmp eq i32 %i.ln, 1
  br i1 %i.lo, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lp = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !32
  %i.lr = zext nneg i32 %i.ll to i64
  %i.ls = mul i64 %i.lq, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.ls
  br label %_ZN2cv3Mat2atIiEERT_i.exit289

bb.bs:                                            ; preds = %bb.bq
  %i.lu = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !467 ; 2 uses
  %i.lw = sdiv i32 %i.ll, %i.lv
  %.recomposed637 = srem i32 %i.ll, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !32
  %i.lz = sext i32 %i.lw to i64
  %i.ma = mul i64 %i.ly, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.ma
  %i.mc = sext i32 %.recomposed637 to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.mc
  br label %_ZN2cv3Mat2atIiEERT_i.exit289

_ZN2cv3Mat2atIiEERT_i.exit289:                    ; preds = %bb.bo, %bb.bp, %bb.br, %bb.bs
  %.pn635.in = phi i32 [ %i.la, %bb.bo ], [ %i.lh, %bb.bp ], [ %i.lk, %bb.br ], [ %i.lk, %bb.bs ]
  %.0.i288 = phi ptr [ %i.lc, %bb.bo ], [ %i.lj, %bb.bp ], [ %i.lt, %bb.br ], [ %i.md, %bb.bs ]
  %.pn635 = zext i32 %.pn635.in to i64
  %.pn = add i64 %.sroa.5.0, %.pn635
  %.in = sub i64 %.pn, %.sroa.7.0
  %i.me = trunc i64 %.in to i32                   ; 2 uses
  %i.mf = load i32, ptr %.0.i288, align 4, !tbaa !9
  %i.mg = zext i32 %i.mf to i64
  %i.mh = add i64 %.sroa.8.0, %i.mg
  %i.mi = sub i64 %i.mh, %.sroa.10.0
  %i.mj = trunc i64 %i.mi to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.mk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.mk, ptr %23, align 8, !tbaa !36
  store i64 7306087011044319600, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 8, ptr %i.ml, align 8, !tbaa !37
  %i.mm = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i8 0, ptr %i.mm, align 8, !tbaa !25
  %i.mn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %.noexc294 unwind label %bb.cb

.noexc294:                                        ; preds = %_ZN2cv3Mat2atIiEERT_i.exit289
  invoke void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.mn, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit unwind label %bb.cb

_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit: ; preds = %.noexc294
  %i.mo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !37 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 4
  %.pre = load ptr, ptr %22, align 8, !tbaa !10   ; 3 uses
  br i1 %i.mq, label %bb.bt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.bt:                                            ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit
  %i.mr = load i32, ptr %.pre, align 1
  %i.ms = icmp ne i32 %i.mr, 1162690899
  %i.mt = zext i1 %i.ms to i32
  %i.mu = icmp eq i32 %i.mt, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bt, %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit
  %i.mv = phi i1 [ false, %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit ], [ %i.mu, %bb.bt ]
  %i.mw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.mx = icmp eq ptr %.pre, %i.mw
  br i1 %i.mx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.my = icmp ult i64 %i.mp, 16
  call void @llvm.assume(i1 %i.my)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.mz = load i64, ptr %i.mw, align 8, !tbaa !25
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.na) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  %i.nb = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.mk
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298
  %i.nd = load i64, ptr %i.mk, align 8, !tbaa !25
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br i1 %i.mv, label %._crit_edge.i.i302, label %._crit_edge.i.i334

._crit_edge.i.i302:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.nf = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.nf, ptr %24, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.nf, ptr noundef nonnull align 1 dereferenceable(5) @.str.324, i64 5, i1 false)
  %i.ng = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 5, ptr %i.ng, align 8, !tbaa !37
  %i.nh = getelementptr inbounds nuw i8, ptr %24, i64 21
  store i8 0, ptr %i.nh, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.ni = add nsw i32 %i.mj, -1
  %i.nj = srem i32 %i.ni, %i.is
  store i32 %i.nj, ptr %i.i, align 4, !tbaa !9
  %i.nk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.bu unwind label %bb.cc     ; 0 uses

bb.bu:                                            ; preds = %._crit_edge.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.nl = load ptr, ptr %24, align 8, !tbaa !10   ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.nf
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.bu
  %i.nn = load i64, ptr %i.nf, align 8, !tbaa !25
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.np = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.np, ptr %25, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.np, ptr noundef nonnull align 1 dereferenceable(5) @.str.325, i64 5, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 5, ptr %i.nq, align 8, !tbaa !37
  %i.nr = getelementptr inbounds nuw i8, ptr %25, i64 21
  store i8 0, ptr %i.nr, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.ns = add nsw i32 %i.me, -1
  %i.nt = srem i32 %i.ns, %i.ig
  store i32 %i.nt, ptr %i.j, align 4, !tbaa !9
  %i.nu = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.bv unwind label %bb.cd     ; 0 uses

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %i.nv = load ptr, ptr %25, align 8, !tbaa !10   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.np
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.bv
  %i.nx = load i64, ptr %i.np, align 8, !tbaa !25
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %._crit_edge.i.i375

bb.bw:                                            ; preds = %.noexc262, %._crit_edge.i.i258
  %i.nz = landingpad { ptr, i32 }
          cleanup
  %i.oa = load ptr, ptr %18, align 8, !tbaa !10   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.hz
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.bw
  %i.oc = load i64, ptr %i.hz, align 8, !tbaa !25
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %40

bb.bx:                                            ; preds = %.noexc271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %i.oe = landingpad { ptr, i32 }
          cleanup
  %i.of = load ptr, ptr %19, align 8, !tbaa !10   ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.il
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.bx
  %i.oh = load i64, ptr %i.il, align 8, !tbaa !25
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %40

bb.by:                                            ; preds = %bb.bd
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.bz:                                            ; preds = %bb.bg, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEC2ERKSC_.exit285
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %21) #26
  br label %bb.dp

bb.ca:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev.exit286
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cb:                                            ; preds = %.noexc294, %_ZN2cv3Mat2atIiEERT_i.exit289
  %i.om = landingpad { ptr, i32 }
          cleanup
  %i.on = load ptr, ptr %23, align 8, !tbaa !10   ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.mk
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.cb
  %i.op = load i64, ptr %i.mk, align 8, !tbaa !25
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.do

bb.cc:                                            ; preds = %._crit_edge.i.i302
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.os = load ptr, ptr %24, align 8, !tbaa !10   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.nf
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %bb.cc
  %i.ou = load i64, ptr %i.nf, align 8, !tbaa !25
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.do

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %i.ox = load ptr, ptr %25, align 8, !tbaa !10   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.np
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %bb.cd
  %i.oz = load i64, ptr %i.np, align 8, !tbaa !25
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.do

._crit_edge.i.i334:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.pb = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.pb, ptr %27, align 8, !tbaa !36
  store i64 7306087011044319600, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 8, ptr %i.pc, align 8, !tbaa !37
  %i.pd = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i8 0, ptr %i.pd, align 8, !tbaa !25
  %i.pe = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK2cv3dnn14dnn5_v202606054Dict3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %.noexc338 unwind label %bb.ch

.noexc338:                                        ; preds = %._crit_edge.i.i334
  invoke void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i32 noundef -1)
          to label %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit340 unwind label %bb.ch

_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit340: ; preds = %.noexc338
  %i.pf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !37 ; 2 uses
  %i.ph = icmp eq i64 %i.pg, 5
  %.pre513 = load ptr, ptr %26, align 8, !tbaa !10 ; 4 uses
  br i1 %i.ph, label %bb.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit342

bb.ce:                                            ; preds = %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit340
  %i.pi = load i32, ptr %.pre513, align 1
  %i.pj = xor i32 %i.pi, 1229734230
  %i.pk = getelementptr i8, ptr %.pre513, i64 4
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = zext i8 %i.pl to i32
  %i.pn = xor i32 %i.pm, 68
  %i.po = or i32 %i.pj, %i.pn
  %i.pp = icmp ne i32 %i.po, 0
  %i.pq = zext i1 %i.pp to i32
  %i.pr = icmp eq i32 %i.pq, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit342

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit342: ; preds = %bb.ce, %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit340
  %i.ps = phi i1 [ false, %_ZNK2cv3dnn14dnn5_v202606054Dict3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS9_.exit340 ], [ %i.pr, %bb.ce ]
  %i.pt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.pu = icmp eq ptr %.pre513, %i.pt
  br i1 %i.pu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit342
  %i.pv = icmp ult i64 %i.pg, 16
  call void @llvm.assume(i1 %i.pv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit342
  %i.pw = load i64, ptr %i.pt, align 8, !tbaa !25
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %.pre513, i64 noundef %i.px) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  %i.py = load ptr, ptr %27, align 8, !tbaa !10   ; 2 uses
  %i.pz = icmp eq ptr %i.py, %i.pb
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.qa = load i64, ptr %i.pb, align 8, !tbaa !25
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br i1 %i.ps, label %._crit_edge.i.i349, label %._crit_edge.i.i375

._crit_edge.i.i349:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.qc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.qc, ptr %28, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.qc, ptr noundef nonnull align 1 dereferenceable(5) @.str.324, i64 5, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 5, ptr %i.qd, align 8, !tbaa !37
  %i.qe = getelementptr inbounds nuw i8, ptr %28, i64 21
  store i8 0, ptr %i.qe, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.qf = load i32, ptr %i.g, align 4, !tbaa !9
  %i.qg = sub nsw i32 %i.mj, %i.qf
  %i.qh = srem i32 %i.qg, %i.is
  store i32 %i.qh, ptr %i.k, align 4, !tbaa !9
  %i.qi = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %bb.cf unwind label %bb.ci     ; 0 uses

bb.cf:                                            ; preds = %._crit_edge.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  %i.qj = load ptr, ptr %28, align 8, !tbaa !10   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.qc
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.cf
  %i.ql = load i64, ptr %i.qc, align 8, !tbaa !25
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.qn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.qn, ptr %29, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.qn, ptr noundef nonnull align 1 dereferenceable(5) @.str.325, i64 5, i1 false)
  %i.qo = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 5, ptr %i.qo, align 8, !tbaa !37
  %i.qp = getelementptr inbounds nuw i8, ptr %29, i64 21
  store i8 0, ptr %i.qp, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  %i.qq = load i32, ptr %i.f, align 4, !tbaa !9
  %i.qr = sub nsw i32 %i.me, %i.qq
  %i.qs = srem i32 %i.qr, %i.ig
  store i32 %i.qs, ptr %i.l, align 4, !tbaa !9
  %i.qt = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIiEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.cg unwind label %bb.cj     ; 0 uses

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  %i.qu = load ptr, ptr %29, align 8, !tbaa !10   ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.qn
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %bb.cg
  %i.qw = load i64, ptr %i.qn, align 8, !tbaa !25
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362

end_hunk_1
begin_hunk_2_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter24parseConv2DBackpropInputERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.cj
  %i.rl = load i64, ptr %i.qn, align 8, !tbaa !25
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %bb.do

._crit_edge.i.i375:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.rn = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.rn, ptr %30, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.rn, ptr noundef nonnull align 1 dereferenceable(13) @.str.326, i64 13, i1 false)
  %i.ro = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 13, ptr %i.ro, align 8, !tbaa !37
  %i.rp = getelementptr inbounds nuw i8, ptr %30, i64 29
  store i8 0, ptr %i.rp, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.rq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !45
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !31 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.ru, ptr %32, align 8, !tbaa !36
  %i.rv = load ptr, ptr %i.rt, align 8, !tbaa !10 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.rx, ptr %i.b, align 8, !tbaa !32
  %i.ry = icmp ugt i64 %i.rx, 15
  br i1 %i.ry, label %.noexc.i380, label %._crit_edge.i.i379

.noexc.i380:                                      ; preds = %._crit_edge.i.i375
  %i.rz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc381 unwind label %bb.de ; 2 uses

.noexc381:                                        ; preds = %.noexc.i380
  store ptr %i.rz, ptr %32, align 8, !tbaa !10
  %i.sa = load i64, ptr %i.b, align 8, !tbaa !32
  store i64 %i.sa, ptr %i.ru, align 8, !tbaa !25
  br label %._crit_edge.i.i379

._crit_edge.i.i379:                               ; preds = %.noexc381, %._crit_edge.i.i375
  %i.sb = phi ptr [ %i.rz, %.noexc381 ], [ %i.ru, %._crit_edge.i.i375 ] ; 2 uses
  switch i64 %i.rx, label %bb.cl [
    i64 1, label %bb.ck
    i64 0, label %bb.cm
  ]

bb.ck:                                            ; preds = %._crit_edge.i.i379
  %i.sc = load i8, ptr %i.rv, align 1, !tbaa !25
  store i8 %i.sc, ptr %i.sb, align 1, !tbaa !25
  br label %bb.cm

bb.cl:                                            ; preds = %._crit_edge.i.i379
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sb, ptr align 1 %i.rv, i64 %i.rx, i1 false)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %._crit_edge.i.i379
  %i.sd = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.sd, ptr %i.se, align 8, !tbaa !37
  %i.sf = load ptr, ptr %32, align 8, !tbaa !10
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sd
  store i8 0, ptr %i.sg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false)
  %i.sh = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.cn ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.cm
  %i.si = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %i.sh, ptr %31, align 8, !tbaa !195
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr %i.sj, ptr %i.sk, align 8, !tbaa !198
  %i.sl = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %32, ptr noundef nonnull %i.si, ptr noundef nonnull %i.sh)
          to label %bb.cp unwind label %bb.cn

bb.cn:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %bb.cm
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sn = load ptr, ptr %31, align 8, !tbaa !195  ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.sn, null
  br i1 %.not.i.i5.i, label %.body, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.so = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !198
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = ptrtoint ptr %i.sn to i64
  %i.ss = sub i64 %i.sq, %i.sr
  call void @_ZdlPvm(ptr noundef nonnull %i.sn, i64 noundef %i.ss) #27
  br label %.body

bb.cp:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %i.sl, ptr %i.st, align 8, !tbaa !196
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8addLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RNS1_11LayerParamsESt6vectorIS9_SaIS9_EEii(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef align 8 %31, i32 noundef 1, i32 noundef 0)
          to label %bb.cq unwind label %bb.df

bb.cq:                                            ; preds = %bb.cp
  %i.su = load ptr, ptr %31, align 8, !tbaa !195  ; 3 uses
  %i.sv = load ptr, ptr %i.st, align 8, !tbaa !196 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.su, %i.sv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.tb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.su, %bb.cq ] ; 3 uses
  %i.sw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.sz = load i64, ptr %i.sx, align 8, !tbaa !25
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.ta) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.tb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.tb, %i.sv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !197

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %31, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.cq
  %i.tc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.su, %bb.cq ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.tc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.td = load ptr, ptr %i.sk, align 8, !tbaa !198
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tc to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef %i.tg) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cr
  %i.th = load ptr, ptr %32, align 8, !tbaa !10   ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.tk = load i64, ptr %i.ti, align 8, !tbaa !25
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.tm = load ptr, ptr %30, align 8, !tbaa !10   ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.rn
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386
  %i.to = load i64, ptr %i.rn, align 8, !tbaa !25
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i387
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br i1 %i.ge, label %._crit_edge.i.i390, label %bb.dm

._crit_edge.i.i390:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  %i.tq = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.tq, ptr %33, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.tq, ptr noundef nonnull align 1 dereferenceable(5) @.str.284, i64 5, i1 false)
  %i.tr = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 5, ptr %i.tr, align 8, !tbaa !37
  %i.ts = getelementptr inbounds nuw i8, ptr %33, i64 21
  store i8 0, ptr %i.ts, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.tt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc395 unwind label %bb.dg ; 6 uses

.noexc395:                                        ; preds = %._crit_edge.i.i390
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store ptr %i.tu, ptr %i.tt, align 8, !tbaa !450, !noalias !680
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i64 4, ptr %i.tv, align 8, !tbaa !453, !noalias !680
  %i.tw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #30
          to label %.noexc.i394 unwind label %bb.cs, !noalias !680 ; 4 uses

.noexc.i394:                                      ; preds = %.noexc395
  store ptr %i.tw, ptr %i.tt, align 8, !tbaa !450, !noalias !680
  store i32 0, ptr %34, align 8, !tbaa !454, !alias.scope !680
  %i.tx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %i.tt, ptr %i.tx, align 8, !tbaa !25, !alias.scope !680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tw, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0509, i64 16, i1 false), !tbaa !32, !noalias !680
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !32, !noalias !680
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !32, !noalias !680
  %i.ty = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.ct unwind label %bb.dh     ; 0 uses

bb.cs:                                            ; preds = %.noexc395
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef 24) #27, !noalias !680
  br label %.body396

bb.ct:                                            ; preds = %.noexc.i394
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.ua = load ptr, ptr %33, align 8, !tbaa !10   ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.tq
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.ct
  %i.uc = load i64, ptr %i.tq, align 8, !tbaa !25
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  %i.ue = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.ue, ptr %35, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ue, ptr noundef nonnull align 1 dereferenceable(3) @.str.292, i64 3, i1 false)
  %i.uf = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 3, ptr %i.uf, align 8, !tbaa !37
  %i.ug = getelementptr inbounds nuw i8, ptr %35, i64 19
  store i8 0, ptr %i.ug, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.uh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc410 unwind label %bb.di ; 6 uses

.noexc410:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  store ptr %i.ui, ptr %i.uh, align 8, !tbaa !450, !noalias !683
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  store i64 4, ptr %i.uj, align 8, !tbaa !453, !noalias !683
  %i.uk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #30
          to label %.noexc.i405 unwind label %bb.cu, !noalias !683 ; 5 uses

.noexc.i405:                                      ; preds = %.noexc410
  store ptr %i.uk, ptr %i.uh, align 8, !tbaa !450, !noalias !683
  store i32 0, ptr %36, align 8, !tbaa !454, !alias.scope !683
  %i.ul = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.uh, ptr %i.ul, align 8, !tbaa !25, !alias.scope !683
  store i64 %.sroa.0.0, ptr %i.uk, align 8, !tbaa !32, !noalias !683
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !32, !noalias !683
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !32, !noalias !683
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !32, !noalias !683
  %i.um = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setINS1_9DictValueEEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(16) %36)
          to label %bb.cv unwind label %bb.dj     ; 0 uses

bb.cu:                                            ; preds = %.noexc410
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef 24) #27, !noalias !683
  br label %.body411

bb.cv:                                            ; preds = %.noexc.i405
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.uo = load ptr, ptr %35, align 8, !tbaa !10   ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.ue
  br i1 %i.up, label %._crit_edge.i.i417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %bb.cv
  %i.uq = load i64, ptr %i.ue, align 8, !tbaa !25
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.ur) #27
  br label %._crit_edge.i.i417

._crit_edge.i.i417:                               ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.us = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.ut = ptrtoint ptr %i.us to i64
  %i.uu = and i64 %i.ut, -2
  %i.uv = inttoptr i64 %i.uu to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  %i.uw = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.uw, ptr %37, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.uw, ptr noundef nonnull align 1 dereferenceable(5) @.str.44, i64 5, i1 false)
  %i.ux = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 5, ptr %i.ux, align 8, !tbaa !37
  %i.uy = getelementptr inbounds nuw i8, ptr %37, i64 21
  store i8 0, ptr %i.uy, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  %i.uz = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  store ptr %i.uz, ptr %39, align 8, !tbaa !36
  %i.va = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.vb = load i64, ptr %i.ab, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.vb, ptr %i.a, align 8, !tbaa !32
  %i.vc = icmp ugt i64 %i.vb, 15
  br i1 %i.vc, label %.noexc.i422, label %._crit_edge.i.i421

.noexc.i422:                                      ; preds = %._crit_edge.i.i417
  %i.vd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc423 unwind label %bb.dk ; 2 uses

.noexc423:                                        ; preds = %.noexc.i422
  store ptr %i.vd, ptr %39, align 8, !tbaa !10
  %i.ve = load i64, ptr %i.a, align 8, !tbaa !32
  store i64 %i.ve, ptr %i.uz, align 8, !tbaa !25
  br label %._crit_edge.i.i421

._crit_edge.i.i421:                               ; preds = %.noexc423, %._crit_edge.i.i417
  %i.vf = phi ptr [ %i.vd, %.noexc423 ], [ %i.uz, %._crit_edge.i.i417 ] ; 2 uses
  switch i64 %i.vb, label %bb.cx [
    i64 1, label %bb.cw
    i64 0, label %bb.cy
  ]

bb.cw:                                            ; preds = %._crit_edge.i.i421
  %i.vg = load i8, ptr %i.va, align 1, !tbaa !25
  store i8 %i.vg, ptr %i.vf, align 1, !tbaa !25
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i421
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vf, ptr align 1 %i.va, i64 %i.vb, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %._crit_edge.i.i421
  %i.vh = load i64, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %i.vh, ptr %i.vi, align 8, !tbaa !37
  %i.vj = load ptr, ptr %39, align 8, !tbaa !10
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vh
  store i8 0, ptr %i.vk, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.vl = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i427 unwind label %bb.cz ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i427: ; preds = %bb.cy
  %i.vm = getelementptr inbounds nuw i8, ptr %39, i64 32
  store ptr %i.vl, ptr %38, align 8, !tbaa !195
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.vo = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  store ptr %i.vn, ptr %i.vo, align 8, !tbaa !198
  %i.vp = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %39, ptr noundef nonnull %i.vm, ptr noundef nonnull %i.vl)
          to label %bb.db unwind label %bb.cz

bb.cz:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i427, %bb.cy
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vr = load ptr, ptr %38, align 8, !tbaa !195  ; 3 uses
  %.not.i.i5.i425 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i5.i425, label %.body428, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vs = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !198
  %i.vu = ptrtoint ptr %i.vt to i64
  %i.vv = ptrtoint ptr %i.vr to i64
  %i.vw = sub i64 %i.vu, %i.vv
  call void @_ZdlPvm(ptr noundef nonnull %i.vr, i64 noundef %i.vw) #27
  br label %.body428

bb.db:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i427
  %i.vx = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  store ptr %i.vp, ptr %i.vx, align 8, !tbaa !196
  invoke fastcc void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter8addLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RNS1_11LayerParamsESt6vectorIS9_SaIS9_EEii(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.uv, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef align 8 %38, i32 noundef 1, i32 noundef 0)
          to label %bb.dc unwind label %bb.dl

bb.dc:                                            ; preds = %bb.db
  %i.vy = load ptr, ptr %38, align 8, !tbaa !195  ; 3 uses
  %i.vz = load ptr, ptr %i.vx, align 8, !tbaa !196 ; 2 uses
  %.not4.i.i.i431 = icmp eq ptr %i.vy, %i.vz
  br i1 %.not4.i.i.i431, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i439, label %.lr.ph.i.i.i432

.lr.ph.i.i.i432:                                  ; preds = %bb.dc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i435
  %.05.i.i.i433 = phi ptr [ %i.wf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i435 ], [ %i.vy, %bb.dc ] ; 3 uses
  %i.wa = load ptr, ptr %.05.i.i.i433, align 8, !tbaa !10 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.05.i.i.i433, i64 16 ; 2 uses
  %i.wc = icmp eq ptr %i.wa, %i.wb
  br i1 %i.wc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i435, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i434: ; preds = %.lr.ph.i.i.i432
  %i.wd = load i64, ptr %i.wb, align 8, !tbaa !25
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.we) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i435

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i435: ; preds = %.lr.ph.i.i.i432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i434
  %i.wf = getelementptr inbounds nuw i8, ptr %.05.i.i.i433, i64 32 ; 2 uses
  %.not.i.i.i436 = icmp eq ptr %i.wf, %i.vz
  br i1 %.not.i.i.i436, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i437, label %.lr.ph.i.i.i432, !llvm.loop !197

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i437: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i435
  %.pr.i438 = load ptr, ptr %38, align 8, !tbaa !195
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i439

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i439: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i437, %bb.dc
  %i.wg = phi ptr [ %.pr.i438, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i437 ], [ %i.vy, %bb.dc ] ; 3 uses
  %.not.i.i1.i440 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i1.i440, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit443, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i439
  %i.wh = load ptr, ptr %i.vo, align 8, !tbaa !198
  %i.wi = ptrtoint ptr %i.wh to i64
  %i.wj = ptrtoint ptr %i.wg to i64
  %i.wk = sub i64 %i.wi, %i.wj
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.wk) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit443

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit443: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i439, %bb.dd
  %i.wl = load ptr, ptr %39, align 8, !tbaa !10   ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit443
  %i.wo = load i64, ptr %i.wm, align 8, !tbaa !25
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.wq = load ptr, ptr %37, align 8, !tbaa !10   ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.uw
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
  %i.ws = load i64, ptr %i.uw, align 8, !tbaa !25
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.dm

bb.de:                                            ; preds = %.noexc.i380
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit503

bb.df:                                            ; preds = %bb.cp
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #26
  br label %.body

.body:                                            ; preds = %bb.co, %bb.cn, %bb.df
  %.pn145 = phi { ptr, i32 } [ %i.wv, %bb.df ], [ %i.sm, %bb.cn ], [ %i.sm, %bb.co ] ; 2 uses
  %i.ww = load ptr, ptr %32, align 8, !tbaa !10   ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.wy = icmp eq ptr %i.ww, %i.wx
  br i1 %i.wy, label %.loopexit503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %.body
  %i.wz = load i64, ptr %i.wx, align 8, !tbaa !25
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.xa) #27
  br label %.loopexit503

.loopexit503:                                     ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450, %bb.de
  %.pn145.pn = phi { ptr, i32 } [ %i.wu, %bb.de ], [ %.pn145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450 ], [ %.pn145, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.xb = load ptr, ptr %30, align 8, !tbaa !10   ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.rn
  br i1 %i.xc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %.loopexit503
  %i.xd = load i64, ptr %i.rn, align 8, !tbaa !25
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xb, i64 noundef %i.xe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %.loopexit503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  br label %bb.do

bb.dg:                                            ; preds = %._crit_edge.i.i390
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %.body396

bb.dh:                                            ; preds = %.noexc.i394
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %34)
  br label %.body396

.body396:                                         ; preds = %bb.dg, %bb.cs, %bb.dh
  %.pn149 = phi { ptr, i32 } [ %i.xg, %bb.dh ], [ %i.xf, %bb.dg ], [ %i.tz, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  %i.xh = load ptr, ptr %33, align 8, !tbaa !10   ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.tq
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %.body396
  %i.xj = load i64, ptr %i.tq, align 8, !tbaa !25
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %.body396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.do

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %.body411

bb.dj:                                            ; preds = %.noexc.i405
  %i.xm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3dnn14dnn5_v202606059DictValue7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %36)
  br label %.body411

.body411:                                         ; preds = %bb.di, %bb.cu, %bb.dj
  %.pn152 = phi { ptr, i32 } [ %i.xm, %bb.dj ], [ %i.xl, %bb.di ], [ %i.un, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.xn = load ptr, ptr %35, align 8, !tbaa !10   ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %i.ue
  br i1 %i.xo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459: ; preds = %.body411
  %i.xp = load i64, ptr %i.ue, align 8, !tbaa !25
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461: ; preds = %.body411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %bb.do

bb.dk:                                            ; preds = %.noexc.i422
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.dl:                                            ; preds = %bb.db
  %i.xs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #26
  br label %.body428

.body428:                                         ; preds = %bb.da, %bb.cz, %bb.dl
  %.pn155 = phi { ptr, i32 } [ %i.xs, %bb.dl ], [ %i.vq, %bb.cz ], [ %i.vq, %bb.da ] ; 2 uses
  %i.xt = load ptr, ptr %39, align 8, !tbaa !10   ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462: ; preds = %.body428
  %i.xw = load i64, ptr %i.xu, align 8, !tbaa !25
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xx) #27
  br label %.loopexit

.loopexit:                                        ; preds = %.body428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462, %bb.dk
  %.pn155.pn = phi { ptr, i32 } [ %i.xr, %bb.dk ], [ %.pn155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462 ], [ %.pn155, %.body428 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  %i.xy = load ptr, ptr %37, align 8, !tbaa !10   ; 2 uses
  %i.xz = icmp eq ptr %i.xy, %i.uw
  br i1 %i.xz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465: ; preds = %.loopexit
  %i.ya = load i64, ptr %i.uw, align 8, !tbaa !25
  %i.yb = add i64 %i.ya, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  br label %bb.do

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit389
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.yc = load ptr, ptr %9, align 8, !tbaa !419   ; 3 uses
  %i.yd = load ptr, ptr %i.bk, align 8, !tbaa !422 ; 2 uses
  %.not4.i.i.i468 = icmp eq ptr %i.yc, %i.yd
  br i1 %.not4.i.i.i468, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i469

.lr.ph.i.i.i469:                                  ; preds = %bb.dm, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i
  %.05.i.i.i470 = phi ptr [ %i.yj, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i ], [ %i.yc, %bb.dm ] ; 3 uses
  %i.ye = load ptr, ptr %.05.i.i.i470, align 8, !tbaa !10 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.05.i.i.i470, i64 16 ; 2 uses
  %i.yg = icmp eq ptr %i.ye, %i.yf
  br i1 %i.yg, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i469
  %i.yh = load i64, ptr %i.yf, align 8, !tbaa !25
  %i.yi = add i64 %i.yh, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yi) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.yj = getelementptr inbounds nuw i8, ptr %.05.i.i.i470, i64 40 ; 2 uses
  %.not.i.i.i471 = icmp eq ptr %i.yj, %i.yd
  br i1 %.not.i.i.i471, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i469, !llvm.loop !425

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEvPT_.exit.i.i.i
  %.pr.i472 = load ptr, ptr %9, align 8, !tbaa !419
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.dm
  %i.yk = phi ptr [ %.pr.i472, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.yc, %bb.dm ] ; 3 uses
  %.not.i.i1.i473 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i1.i473, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i
  %i.yl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !423
  %i.yn = ptrtoint ptr %i.ym to i64
  %i.yo = ptrtoint ptr %i.yk to i64
  %i.yp = sub i64 %i.yn, %i.yo
  call void @_ZdlPvm(ptr noundef nonnull %i.yk, i64 noundef %i.yp) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiES7_EvT_S9_RSaIT0_E.exit.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.yq = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.yr = icmp eq ptr %i.yq, %i.r
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit
  %i.ys = load i64, ptr %i.r, align 8, !tbaa !25
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, %bb.ca
  %.pn155.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ol, %bb.ca ], [ %.pn155.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467 ], [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461 ], [ %.pn149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458 ], [ %.pn145.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ], [ %i.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330 ], [ %i.ri, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374 ], [ %i.rd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371 ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #26
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.bz, %bb.by
  %.pn155.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn, %bb.do ], [ %i.ok, %bb.bz ], [ %i.oj, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %40

40:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %bb.az
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.az ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %i.nz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.pn155.pn.pn.pn.pn.pn, %bb.dp ], [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0509)
  br label %bb.dq

bb.dq:                                            ; preds = %40, %bb.ay
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn, %40 ], [ %i.hs, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dq ], [ %i.hr, %bb.ax ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ac, %bb.ad, %bb.dr, %bb.at, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dr ], [ %i.hb, %bb.at ], [ %i.ee, %bb.ab ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %i.ef, %bb.ac ], [ %i.eg, %bb.ad ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ds ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, %bb.e
  %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dt ], [ %i.ah, %bb.e ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199 ]
  %i.yu = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.yv = icmp eq ptr %i.yu, %i.r
  br i1 %i.yv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477: ; preds = %bb.du
  %i.yw = load i64, ptr %i.r, align 8, !tbaa !25
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yu, i64 noundef %i.yx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn155.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseBlockLSTMERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 12 uses
  %5 = alloca %"class.cv::Range", align 4         ; 5 uses
  %6 = alloca %"class.cv::Range", align 8         ; 4 uses
  %7 = alloca %"class.cv::Range", align 4         ; 5 uses
  %8 = alloca %"class.cv::Range", align 8         ; 4 uses
  %9 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %10 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %11 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %12 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %26 = alloca %"class.std::map.38", align 8      ; 10 uses
  %27 = alloca %"class.std::map.38", align 8      ; 10 uses
  %28 = alloca %"class.std::map.38", align 8      ; 10 uses
  %29 = alloca %"class.std::map.38", align 8      ; 10 uses
  %30 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %32 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 35 uses
  %38 = alloca %"class.std::map.38", align 8      ; 18 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 17 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::vector", align 8      ; 8 uses
  %43 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = icmp eq i32 %i.l, 9
  br i1 %i.m, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.l, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter14parseBlockLSTMERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsEE16__cv_check__2064) #29
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.n, ptr %13, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.n, ptr noundef nonnull align 1 dereferenceable(11) @.str.330, i64 11, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.o, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 27
  store i8 0, ptr %i.p, align 1, !tbaa !25
  %i.q = invoke fastcc noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_112hasLayerAttrERKN17opencv_tensorflow7NodeDefERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load ptr, ptr %13, align 8, !tbaa !10    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.n, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br i1 %i.q, label %._crit_edge.i.i131, label %._crit_edge.i.i156

._crit_edge.i.i131:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.v, ptr %14, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.v, ptr noundef nonnull align 1 dereferenceable(11) @.str.330, i64 11, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 27
  store i8 0, ptr %i.x, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.y, ptr %15, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.y, ptr noundef nonnull align 1 dereferenceable(11) @.str.330, i64 11, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 11, ptr %i.z, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 27
  store i8 0, ptr %i.aa, align 1, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ab)
          to label %.noexc139 unwind label %bb.g

.noexc139:                                        ; preds = %._crit_edge.i.i131
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17opencv_tensorflow9AttrValueEE2atIS7_EERKS9_RKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %.noexc139
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.ag = icmp eq i32 %i.af, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load float, ptr %i.ah, align 8
  %.0.i.i = select i1 %i.ag, float %i.ai, float 0.000000e+00
  store float %.0.i.i, ptr %i.b, align 4, !tbaa !459
  %i.aj = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv3dnn14dnn5_v202606054Dict3setIfEERKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %15, align 8, !tbaa !10   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.y
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.e
  %i.am = load i64, ptr %i.y, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ao = load ptr, ptr %14, align 8, !tbaa !10   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.v
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %._crit_edge.i.i156

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %13, align 8, !tbaa !10   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.n
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.f
  %i.av = load i64, ptr %i.n, align 8, !tbaa !25
end_hunk_2
