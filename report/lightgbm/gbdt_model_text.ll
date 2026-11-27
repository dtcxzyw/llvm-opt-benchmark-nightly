Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt_model_text?download=true
inline.NumInlined: 2729
inline.NumDeleted: 811
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK8LightGBM4GBDT9DumpModelB5cxx11Eiii:bb.a
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.dr ; 0 uses

bb.dr:                                            ; preds = %bb.ds, %bb.dq
  %i.yg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yh = load ptr, ptr %21, align 8, !tbaa !154, !alias.scope !296 ; 2 uses
  %i.yi = icmp eq ptr %i.yh, %i.hy
  br i1 %i.yi, label %.body291, label %.body291.sink.split

bb.ds:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.id)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.dr

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ds, %bb.dq
  %i.yj = load ptr, ptr %21, align 8, !tbaa !154
  %i.yk = load i64, ptr %i.hz, align 8, !tbaa !155
  %i.yl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.yj, i64 noundef %i.yk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294 unwind label %bb.dv ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ym = load ptr, ptr %21, align 8, !tbaa !154  ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.hy
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294
  %i.yo = load i64, ptr %i.hy, align 8, !tbaa !37
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %.pre624 = load ptr, ptr %18, align 8, !tbaa !160
  br label %bb.dt

bb.dt:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.yq = phi ptr [ %.pre624, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %i.mt, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 3 uses
  %.157 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297 ], [ %.056561, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.yr = load ptr, ptr %i.gw, align 8, !tbaa !159 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.yq, %i.yr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i298

.lr.ph.i.i.i298:                                  ; preds = %bb.dt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.yx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.yq, %bb.dt ] ; 3 uses
  %i.ys = load ptr, ptr %.05.i.i.i, align 8, !tbaa !154 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.yu = icmp eq ptr %i.ys, %i.yt
  br i1 %i.yu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299: ; preds = %.lr.ph.i.i.i298
  %i.yv = load i64, ptr %i.yt, align 8, !tbaa !37
  %i.yw = add i64 %i.yv, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yw) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i299
  %i.yx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i300 = icmp eq ptr %i.yx, %i.yr
  br i1 %.not.i.i.i300, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i298, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %18, align 8, !tbaa !160
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.dt
  %i.yy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.yq, %bb.dt ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.yy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.du

bb.du:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.yz = load ptr, ptr %i.gx, align 8, !tbaa !163
  %i.za = ptrtoint ptr %i.yz to i64
  %i.zb = ptrtoint ptr %i.yy to i64
  %i.zc = sub i64 %i.za, %i.zb
  call void @_ZdlPvm(ptr noundef nonnull %i.yy, i64 noundef %i.zc) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  store ptr %i.hm, ptr %17, align 8, !tbaa !25
  %i.zd = load i64, ptr %i.ho, align 8
  %i.ze = getelementptr inbounds i8, ptr %17, i64 %i.zd
  store ptr %i.hn, ptr %i.ze, align 8, !tbaa !25
  store ptr %i.hp, ptr %i.he, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ie, align 8, !tbaa !25
  %i.zf = load ptr, ptr %i.id, align 8, !tbaa !154 ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.if
  br i1 %i.zg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.zh = load i64, ptr %i.if, align 8, !tbaa !37
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zi) #31
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ie, align 8, !tbaa !25
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ig) #20
  store ptr %i.ht, ptr %17, align 8, !tbaa !25
  %i.zj = load i64, ptr %i.hv, align 8
  %i.zk = getelementptr inbounds i8, ptr %17, i64 %i.zj
  store ptr %i.hu, ptr %i.zk, align 8, !tbaa !25
  store i64 0, ptr %i.ih, align 8, !tbaa !179
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ii) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.zl = add nuw i64 %.055562, 1                 ; 2 uses
  %i.zm = load ptr, ptr %i.gp, align 8, !tbaa !159
  %i.zn = load ptr, ptr %i.go, align 8, !tbaa !160
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = sub i64 %i.zo, %i.zp
  %i.zr = ashr exact i64 %i.zq, 5
  %i.zs = icmp ult i64 %i.zl, %i.zr
  br i1 %i.zs, label %bb.au, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197._crit_edge, !llvm.loop !270

bb.dv:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.zt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zu = load ptr, ptr %21, align 8, !tbaa !154  ; 2 uses
  %i.zv = icmp eq ptr %i.zu, %i.hy
  br i1 %i.zv, label %.body291, label %.body291.sink.split

.body291.sink.split:                              ; preds = %bb.dv, %bb.dr
  %.sink = phi ptr [ %i.yh, %bb.dr ], [ %i.zu, %bb.dv ]
  %.pn82.ph = phi { ptr, i32 } [ %i.yg, %bb.dr ], [ %i.zt, %bb.dv ]
  %i.zw = load i64, ptr %i.hy, align 8, !tbaa !37
  %i.zx = add i64 %i.zw, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.zx) #31
  br label %.body291

.body291:                                         ; preds = %.body291.sink.split, %bb.dv, %bb.dr
  %.pn82 = phi { ptr, i32 } [ %i.yg, %bb.dr ], [ %i.zt, %bb.dv ], [ %.pn82.ph, %.body291.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body

.body:                                            ; preds = %bb.cg, %.body238, %.body291, %.loopexit.split-lp454.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i ], [ %.pn82, %.body291 ], [ %.pn77.pn.pn.pn, %.body238 ], [ %i.oh, %bb.cg ], [ %lpad.loopexit.split-lp877, %.loopexit.split-lp454.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.dw

bb.dw:                                            ; preds = %.body, %bb.cf
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %.body ], [ %i.og, %bb.cf ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %17) #20
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.ce
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %bb.dw ], [ %i.of, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.loopexit.split-lp432

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !37
  %i.zy = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.zz = getelementptr i8, ptr %i.zy, i64 -24
  %i.aaa = load i64, ptr %i.zz, align 8
  %i.aab = getelementptr inbounds i8, ptr %i.z, i64 %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !38
  %.not.i305 = icmp eq i64 %i.aad, 0
  br i1 %.not.i305, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.aae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.ea unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dz:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
  %i.aaf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext 10)
          to label %bb.ea unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.32, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311: ; preds = %bb.ea
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !180
  %i.aak = load ptr, ptr %i.aah, align 8, !tbaa !181
  %i.aal = ptrtoint ptr %i.aaj to i64
  %i.aam = ptrtoint ptr %i.aak to i64
  %i.aan = sub i64 %i.aal, %i.aam
  %i.aao = lshr exact i64 %i.aan, 3
  %i.aap = trunc i64 %i.aao to i32                ; 3 uses
  %i.aaq = load i32, ptr %i.cg, align 8, !tbaa !150 ; 3 uses
  %i.aar = sdiv i32 %i.aap, %i.aaq
  %.sroa.speculated413 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %.sroa.speculated418 = call i32 @llvm.smin.i32(i32 %i.aar, i32 %.sroa.speculated413) ; 2 uses
  %i.aas = icmp sgt i32 %3, 0
  %i.aat = add nsw i32 %.sroa.speculated418, %3
  %i.aau = mul nsw i32 %i.aat, %i.aaq
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aau, i32 %i.aap)
  %.0429 = select i1 %i.aas, i32 %.sroa.speculated, i32 %i.aap ; 3 uses
  %i.aav = mul nsw i32 %.sroa.speculated418, %i.aaq ; 3 uses
  %i.aaw = icmp slt i32 %i.aav, %.0429
  br i1 %i.aaw, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318.peel, label %._crit_edge

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311
  %i.aax = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.aaz = sext i32 %i.aav to i64                 ; 3 uses
  %i.aba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320.peel unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318.peel
  %i.abb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.33, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.peel unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320.peel
  %i.abc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aav)
          to label %bb.eb unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eb:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.peel
  %i.abd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abc, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324.peel unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324.peel: ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.abe = load ptr, ptr %i.aah, align 8, !tbaa !181
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.aaz
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !183
  invoke void @_ZNK8LightGBM4Tree6ToJSONB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(648) %i.abg)
          to label %bb.ec unwind label %.loopexit.split-lp610.loopexit.split-lp.loopexit.split-lp

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324.peel
  %i.abh = load ptr, ptr %22, align 8, !tbaa !154
  %i.abi = load i64, ptr %i.aax, align 8, !tbaa !155
  %i.abj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.abh, i64 noundef %i.abi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326.peel unwind label %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326.peel: ; preds = %bb.ec
  %i.abk = load ptr, ptr %22, align 8, !tbaa !154 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.aay
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326.peel
  %i.abm = load i64, ptr %i.aay, align 8, !tbaa !37
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.abo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331.peel unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.peel
  %indvars.iv.next.peel = add nsw i64 %i.aaz, 1   ; 2 uses
  %lftr.wideiv.peel = trunc nsw i64 %indvars.iv.next.peel to i32
  %exitcond.peel.not = icmp eq i32 %.0429, %lftr.wideiv.peel
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit311
  %i.abp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.20, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331 ], [ %indvars.iv.next.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331.peel ] ; 4 uses
  %i.abq = icmp sgt i64 %indvars.iv, %i.aaz
  br i1 %i.abq, label %bb.ed, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318

bb.ed:                                            ; preds = %.peel.next
  %i.abr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322, %bb.ed, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320, %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.peel, %bb.eb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit143, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93, %bb.a, %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197._crit_edge, %bb.dy, %bb.dz, %bb.ea, %bb.eh, %bb.eg, %._crit_edge
  %lpad.loopexit.split-lp858 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp432

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318: ; preds = %bb.ed, %.peel.next
  %i.abs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318
  %i.abt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.33, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit320
  %i.abu = trunc nsw i64 %indvars.iv to i32
  %i.abv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.abu)
          to label %bb.ee unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322
  %i.abw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abv, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324: ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.abx = load ptr, ptr %i.aah, align 8, !tbaa !181
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !183
  invoke void @_ZNK8LightGBM4Tree6ToJSONB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(648) %i.abz)
          to label %bb.ef unwind label %.loopexit.split-lp610.loopexit.split-lp.loopexit.split-lp

bb.ef:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324
  %i.aca = load ptr, ptr %22, align 8, !tbaa !154
  %i.acb = load i64, ptr %i.aax, align 8, !tbaa !155
  %i.acc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aca, i64 noundef %i.acb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326 unwind label %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326: ; preds = %bb.ef
  %i.acd = load ptr, ptr %22, align 8, !tbaa !154 ; 2 uses
  %i.ace = icmp eq ptr %i.acd, %i.aay
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326
  %i.acf = load i64, ptr %i.aay, align 8, !tbaa !37
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.acg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %i.ach = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331 unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.0429, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !271

.loopexit.split-lp610.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324.peel
  %lpad.loopexit.split-lp861 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ef, %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aci = load ptr, ptr %22, align 8, !tbaa !154 ; 2 uses
  %i.acj = icmp eq ptr %i.aci, %i.aay
  br i1 %i.acj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp
  %i.ack = load i64, ptr %i.aay, align 8, !tbaa !37
  %i.acl = add i64 %i.ack, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp610.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  %.pn72 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %lpad.loopexit.split-lp861, %.loopexit.split-lp610.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp615.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %.loopexit.split-lp432

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !37
  %i.acm = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.acn = getelementptr i8, ptr %i.acm, i64 -24
  %i.aco = load i64, ptr %i.acn, align 8
  %i.acp = getelementptr inbounds i8, ptr %i.z, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !38
  %.not.i335 = icmp eq i64 %i.acr, 0
  br i1 %.not.i335, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316
  %i.acs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.ei unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316
  %i.act = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext 10)
          to label %bb.ei unwind label %.loopexit.split-lp432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.acu = load ptr, ptr %1, align 8, !tbaa !25
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 256
  %i.acw = load ptr, ptr %i.acv, align 8
  invoke void %i.acw(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.101") align 8 %23, ptr noundef nonnull align 8 dereferenceable(648) %1, i32 noundef %3, i32 noundef %4)
          to label %bb.ej unwind label %bb.em

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %i.acx = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !187
  %i.acz = load ptr, ptr %23, align 8, !tbaa !188 ; 2 uses
  %.not572 = icmp eq ptr %i.acy, %i.acz
  br i1 %.not572, label %._crit_edge568, label %.lr.ph567

.lr.ph567:                                        ; preds = %bb.ej
  %i.ada = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %24, i64 16
  br label %bb.en

._crit_edge568:                                   ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRmRKS6_EEERS7_DpOT_.exit, %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !37
  %i.adc = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.add = getelementptr i8, ptr %i.adc, i64 -24
  %i.ade = load i64, ptr %i.add, align 8
  %i.adf = getelementptr inbounds i8, ptr %i.z, i64 %i.ade
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %i.adh = load i64, ptr %i.adg, align 8, !tbaa !38
  %.not.i340 = icmp eq i64 %i.adh, 0
  br i1 %.not.i340, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %._crit_edge568
  %i.adi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.el:                                            ; preds = %._crit_edge568
  %i.adj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext 10)
          to label %bb.eu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.em:                                            ; preds = %bb.ei
  %i.adk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit410

bb.en:                                            ; preds = %.lr.ph567, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRmRKS6_EEERS7_DpOT_.exit
  %i.adl = phi ptr [ %i.acz, %.lr.ph567 ], [ %i.aem, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRmRKS6_EEERS7_DpOT_.exit ]
  %.031565 = phi i64 [ 0, %.lr.ph567 ], [ %i.aek, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRmRKS6_EEERS7_DpOT_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #20
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adl, i64 %.031565
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !166
  %i.ado = fptoui double %i.adn to i64            ; 3 uses
  store i64 %i.ado, ptr %i.t, align 8, !tbaa !162
  %.not68 = icmp eq i64 %i.ado, 0
  br i1 %.not68, label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJRmRKS6_EEERS7_DpOT_.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.adp = load ptr, ptr %i.ez, align 8, !tbaa !160
  %i.adq = getelementptr inbounds nuw [32 x i8], ptr %i.adp, i64 %.031565 ; 3 uses
  %i.adr = load ptr, ptr %i.ada, align 8, !tbaa !191 ; 6 uses
  %i.ads = load ptr, ptr %i.adb, align 8, !tbaa !192
  %.not.i345 = icmp eq ptr %i.adr, %i.ads
  br i1 %.not.i345, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i64 %i.ado, ptr %i.adr, align 8, !tbaa !194
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 4 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 24 ; 3 uses
  store ptr %i.adu, ptr %i.adt, align 8, !tbaa !161
  %i.adv = load ptr, ptr %i.adq, align 8, !tbaa !154 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
end_hunk_0
begin_hunk_1_@_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4 align 2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #2

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 %2, ptr %3, i32 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.peel.begin:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 15, ptr %i.a, align 8, !tbaa !162
  %i.b = icmp eq i32 %4, -1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %.not.i.i.i.i.peel = icmp ne ptr %1, null
  %i.d = icmp eq i32 %2, -1                       ; 2 uses
  %or.cond.i.i.i.i.peel = select i1 %.not.i.i.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.i.i.peel, label %bb.a, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

bb.a:                                             ; preds = %.peel.begin
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !425  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !426
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !420 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.peel = select i1 %i.n, ptr null, ptr %1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel: ; preds = %bb.a
  %i.o = load i8, ptr %i.f, align 1, !tbaa !37
  %i.p = zext i8 %i.o to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel, %.peel.begin
  %.sroa.045.2.peel = phi ptr [ %1, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %1, %.peel.begin ], [ %spec.select.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 12 uses
  %.0.i.i.i.i.peel = phi i32 [ %i.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i.peel ], [ %2, %.peel.begin ], [ %i.m, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i.peel ] ; 2 uses
  %.not.i.i2.i.i.peel = icmp ne ptr %3, null
  %or.cond.i.i3.i.i.peel = select i1 %.not.i.i2.i.i.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i.peel, label %bb.b, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

bb.b:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !425
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !426
  %i.u = icmp ult ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel: ; preds = %bb.b
  %i.v = load ptr, ptr %3, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(64) %3), !inline_history !420 ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.select56.peel = select i1 %i.z, ptr null, ptr %3
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel: ; preds = %bb.b
  %i.aa = icmp eq i32 %.0.i.i.i.i.peel, -1
  br i1 %i.aa, label %bb.c, label %.preheader

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel
  %.sroa.042.2.peel = phi ptr [ %spec.select56.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %3, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ] ; 2 uses
  %.0.i.i4.i.i.peel = phi i32 [ %i.y, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i.peel ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i.peel ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.peel, -1
  %i.ac = icmp eq i32 %.0.i.i4.i.i.peel, -1
  %i.ad = xor i1 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %.preheader

bb.c:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.peel89 = phi ptr [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ]
  %.not.i.i.peel = icmp ne ptr %.sroa.045.2.peel, null
  %or.cond.i.i.peel = select i1 %.not.i.i.peel, i1 %i.d, i1 false
  br i1 %or.cond.i.i.peel, label %bb.d, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !425 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !426
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel: ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !421 ; 2 uses
  %i.an = icmp ne i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel: ; preds = %bb.d
  %i.ao = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel, %bb.c
  %.0.i.i.peel = phi i32 [ %2, %bb.c ], [ %i.am, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.peel ], [ %i.ap, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.peel ]
  %i.aq = trunc i32 %.0.i.i.peel to i8
  store i8 %i.aq, ptr %i.c, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !425 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.045.2.peel, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !426
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.f, label %bb.e, !prof !218

bb.e:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.aw = load ptr, ptr %.sroa.045.2.peel, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.peel), !inline_history !422 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

bb.f:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !425
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader: ; preds = %bb.f, %bb.e
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader
  %.sroa.045.0 = phi ptr [ %.sroa.045.2.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.045.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 6 uses
  %.sroa.042.0 = phi ptr [ %.sroa.042.2.peel89, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %.sroa.042.2, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 8 uses
  %.013 = phi i64 [ 1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.preheader ], [ %i.ey, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !425
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !426
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel
  %i.bg = load ptr, ptr %.sroa.045.0, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.0), !inline_history !420 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  %spec.select = select i1 %i.bk, ptr null, ptr %.sroa.045.0
  %i.bl = icmp eq i32 %i.bj, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i
  %.sroa.045.2 = phi ptr [ %spec.select, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ %.sroa.045.0, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ] ; 11 uses
  %.0.i.i.i.i = phi i1 [ %i.bl, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel ]
  %.not.i.i2.i.i = icmp ne ptr %.sroa.042.0, null
  %or.cond.i.i3.i.i = select i1 %.not.i.i2.i.i, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i, label %bb.g, label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

bb.g:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !425 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.042.0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !426
  %i.bq = icmp ult ptr %i.bn, %i.bp
  br i1 %i.bq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i: ; preds = %bb.g
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bs = zext i8 %i.br to i32
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i: ; preds = %bb.g
  %i.bt = load ptr, ptr %.sroa.042.0, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.0), !inline_history !420 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  %spec.select56 = select i1 %i.bx, ptr null, ptr %.sroa.042.0
  br label %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit

_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i
  %.sroa.042.2 = phi ptr [ %.sroa.042.0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %.sroa.042.0, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %spec.select56, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ] ; 2 uses
  %.0.i.i4.i.i = phi i32 [ %i.bs, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i ], [ %4, %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i ], [ %i.bw, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i ]
  %i.by = icmp eq i32 %.0.i.i4.i.i, -1
  %i.bz = xor i1 %.0.i.i.i.i, %i.by
  %i.ca = icmp samesign ult i64 %.013, 15
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.u, label %.preheader

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel
  %.sroa.042.2.lcssa = phi ptr [ %.sroa.042.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %3, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.042.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 7 uses
  %.sroa.045.2.lcssa = phi ptr [ %.sroa.045.2.peel, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %.sroa.045.2.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.sroa.045.2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 8 uses
  %.sroa.11.0.lcssa = phi i32 [ %2, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ %2, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ -1, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 3 uses
  %.013.lcssa = phi i64 [ 0, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit.peel ], [ 0, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i6.i.i.peel ], [ %.013, %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit ] ; 10 uses
  %.not.i.i.i.i15.peel = icmp ne ptr %.sroa.045.2.lcssa, null
  %i.cc = icmp eq i32 %.sroa.11.0.lcssa, -1       ; 2 uses
  %or.cond.i.i.i.i16.peel = select i1 %.not.i.i.i.i15.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i.i.i16.peel, label %bb.h, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

bb.h:                                             ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !425 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.045.2.lcssa, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !426
  %i.ch = icmp ult ptr %i.ce, %i.cg
  br i1 %i.ch, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel: ; preds = %bb.h
  %i.ci = load ptr, ptr %.sroa.045.2.lcssa, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2.lcssa)
          to label %.noexc.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !420 ; 2 uses

.noexc.peel:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel
  %i.cm = icmp eq i32 %i.cl, -1
  %spec.select58.peel = select i1 %i.cm, ptr null, ptr %.sroa.045.2.lcssa
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel: ; preds = %bb.h
  %i.cn = load i8, ptr %i.ce, align 1, !tbaa !37
  %i.co = zext i8 %i.cn to i32
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel, %.noexc.peel, %.preheader
  %.sroa.045.4.peel = phi ptr [ %.sroa.045.2.lcssa, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.045.2.lcssa, %.preheader ], [ %spec.select58.peel, %.noexc.peel ] ; 10 uses
  %.0.i.i.i.i18.peel = phi i32 [ %i.co, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i.i.i25.peel ], [ %.sroa.11.0.lcssa, %.preheader ], [ %i.cl, %.noexc.peel ] ; 3 uses
  %.not.i.i2.i.i19.peel = icmp ne ptr %.sroa.042.2.lcssa, null
  %or.cond.i.i3.i.i20.peel = select i1 %.not.i.i2.i.i19.peel, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cp = icmp eq i32 %.0.i.i.i.i18.peel, -1
  %i.cq = xor i1 %i.b, %i.cp
  br i1 %i.cq, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.j:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17.peel
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !425
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.042.2.lcssa, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !426
  %i.cv = icmp ult ptr %i.cs, %i.cu
  br i1 %i.cv, label %.thr_comm.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel: ; preds = %bb.j
  %i.cw = load ptr, ptr %.sroa.042.2.lcssa, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.2.lcssa)
          to label %.noexc26.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !420

.noexc26.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel
  %i.da = icmp eq i32 %i.cz, -1
  br i1 %i.da, label %.split.peel, label %.thr_comm.peel

.split.peel:                                      ; preds = %.noexc26.peel
  %.not.peel = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %.not.peel, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.k

.thr_comm.peel:                                   ; preds = %.noexc26.peel, %bb.j
  %i.db = icmp eq i32 %.0.i.i.i.i18.peel, -1
  br i1 %i.db, label %bb.k, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.k:                                             ; preds = %.thr_comm.peel, %.split.peel, %bb.i
  %.sroa.042.354.peel = phi ptr [ %.sroa.042.2.lcssa, %.thr_comm.peel ], [ %.sroa.042.2.lcssa, %bb.i ], [ null, %.split.peel ]
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !162
  %i.dd = icmp eq i64 %.013.lcssa, %i.dc
  br i1 %i.dd, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %0, align 8, !tbaa !154
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.de = add nuw nsw i64 %.013.lcssa, 1
  store i64 %i.de, ptr %i.a, align 8, !tbaa !162
  %i.df = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.013.lcssa)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  switch i64 %.013.lcssa, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  ]

bb.n:                                             ; preds = %bb.m
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !37
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dg, i64 %.013.lcssa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel: ; preds = %bb.o, %bb.n, %bb.m
  %i.di = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !37
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.peel
  store ptr %i.df, ptr %0, align 8, !tbaa !154
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.dm, ptr %i.c, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel
  %i.dn = phi ptr [ %.pre, %._crit_edge ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.peel ]
  %.not.i.i28.peel = icmp ne ptr %.sroa.045.4.peel, null
  %or.cond.i.i29.peel = select i1 %.not.i.i28.peel, i1 %i.cc, i1 false
  br i1 %or.cond.i.i29.peel, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !425 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !426
  %i.ds = icmp ult ptr %i.dp, %i.dr
  br i1 %i.ds, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel: ; preds = %bb.q
  %i.dt = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %.noexc33.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !421 ; 2 uses

.noexc33.peel:                                    ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel
  %i.dx = icmp ne i32 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  br label %bb.r

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel: ; preds = %bb.q
  %i.dy = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.dz = zext i8 %i.dy to i32
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel, %.noexc33.peel, %bb.p
  %.0.i.i30.peel = phi i32 [ %.sroa.11.0.lcssa, %bb.p ], [ %i.dw, %.noexc33.peel ], [ %i.dz, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32.peel ]
  %i.ea = trunc i32 %.0.i.i30.peel to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.013.lcssa
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !37
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !425 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.045.4.peel, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !426
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.t, label %bb.s, !prof !218

bb.s:                                             ; preds = %bb.r
  %i.eh = load ptr, ptr %.sroa.045.4.peel, align 8, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef i32 %i.ej(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4.peel)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !422 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader: ; preds = %bb.t, %bb.s
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel

bb.t:                                             ; preds = %bb.r
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.el, ptr %i.ec, align 8, !tbaa !425
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader

bb.u:                                             ; preds = %_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_.exit
  %.not.i.i.not = icmp eq ptr %.sroa.045.2, null
  br i1 %.not.i.i.not, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !425 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !426
  %i.eq = icmp ult ptr %i.en, %i.ep
  br i1 %i.eq, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i: ; preds = %bb.v
  %i.er = load i8, ptr %i.en, align 1, !tbaa !37
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i: ; preds = %bb.v
  %i.es = load ptr, ptr %.sroa.045.2, align 8, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !421 ; 2 uses
  %i.ew = icmp ne i32 %i.ev, -1
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc i32 %i.ev to i8
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i, %bb.u, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i
  %.0.i.i = phi i8 [ -1, %bb.u ], [ %i.ex, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i ], [ %i.er, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i ]
  %i.ey = add nuw nsw i64 %.013, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 %.013
  store i8 %.0.i.i, ptr %i.ez, align 1, !tbaa !37
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 16 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !425 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.045.2, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !426
  %i.fe = icmp ult ptr %i.fb, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.x, !prof !218

bb.w:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store ptr %i.ff, ptr %i.fa, align 8, !tbaa !425
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge: ; preds = %bb.w, %bb.x
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel, !llvm.loop !423

bb.x:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv.exit
  %i.fg = load ptr, ptr %.sroa.045.2, align 8, !tbaa !25
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i32 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.2), !inline_history !422 ; 0 uses
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit.peel.backedge

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader
  %.sroa.045.1 = phi ptr [ %.sroa.045.4.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.045.4, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 6 uses
  %.sroa.042.1 = phi ptr [ %.sroa.042.354.peel, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.sroa.042.354, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 7 uses
  %.1.in = phi i64 [ %.013.lcssa, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.preheader ], [ %.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge ] ; 2 uses
  %.1 = add i64 %.1.in, 1                         ; 9 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !425
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.045.1, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !426
  %i.fo = icmp ult ptr %i.fl, %i.fn
  br i1 %i.fo, label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel
  %i.fp = load ptr, ptr %.sroa.045.1, align 8, !tbaa !25
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !420 ; 2 uses

.noexc:                                           ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24
  %i.ft = icmp eq i32 %i.fs, -1
  %spec.select58 = select i1 %i.ft, ptr null, ptr %.sroa.045.1
  %i.fu = icmp eq i32 %i.fs, -1
  br label %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17

_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17: ; preds = %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, %.noexc
  %.sroa.045.4 = phi ptr [ %spec.select58, %.noexc ], [ %.sroa.045.1, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 10 uses
  %.0.i.i.i.i18 = phi i1 [ %i.fu, %.noexc ], [ false, %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel ] ; 3 uses
  %.not.i.i2.i.i19 = icmp ne ptr %.sroa.042.1, null
  %or.cond.i.i3.i.i20 = select i1 %.not.i.i2.i.i19, i1 %i.b, i1 false
  br i1 %or.cond.i.i3.i.i20, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !425
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.042.1, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !426
  %i.fz = icmp ult ptr %i.fw, %i.fy
  br i1 %i.fz, label %.thr_comm, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22: ; preds = %bb.y
  %i.ga = load ptr, ptr %.sroa.042.1, align 8, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = invoke noundef i32 %i.gc(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.042.1)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !420

.noexc26:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.split, label %.thr_comm

.split:                                           ; preds = %.noexc26
  br i1 %.0.i.i.i.i18, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit, label %bb.aa

.thr_comm:                                        ; preds = %bb.y, %.noexc26
  br i1 %.0.i.i.i.i18, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.z:                                             ; preds = %_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv.exit.i.i17
  %i.gf = xor i1 %i.b, %.0.i.i.i.i18
  br i1 %i.gf, label %bb.aa, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit

bb.aa:                                            ; preds = %.split, %.thr_comm, %bb.z
  %.sroa.042.354 = phi ptr [ %.sroa.042.1, %.thr_comm ], [ %.sroa.042.1, %bb.z ], [ null, %.split ]
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !162
  %i.gh = icmp eq i64 %.1, %i.gg
  br i1 %i.gh, label %bb.ab, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.aa
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !154
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gi = add i64 %.1.in, 2
  store i64 %i.gi, ptr %i.a, align 8, !tbaa !162
  %i.gj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %.1)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gk = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  switch i64 %.1, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !37
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gj, ptr align 1 %i.gk, i64 %.1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gm = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.c
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.go = load i64, ptr %i.c, align 8, !tbaa !37
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.gj, ptr %0, align 8, !tbaa !154
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.gq, ptr %i.c, align 8, !tbaa !37
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  %i.gr = phi ptr [ %.pre68, %._crit_edge67 ], [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit ]
  %.not.i.i28.not = icmp eq ptr %.sroa.045.4, null
  br i1 %.not.i.i28.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !425 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !426
  %i.gw = icmp ult ptr %i.gt, %i.gv
  br i1 %i.gw, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, !prof !218

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32: ; preds = %bb.ag
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !37
  br label %bb.ah

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31: ; preds = %bb.ag
  %i.gy = load ptr, ptr %.sroa.045.4, align 8, !tbaa !25
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !421 ; 2 uses

.noexc33:                                         ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31
  %i.hc = icmp ne i32 %i.hb, -1
  call void @llvm.assume(i1 %i.hc)
  %i.hd = trunc i32 %i.hb to i8
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc33, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32, %bb.af
  %.0.i.i30 = phi i8 [ -1, %bb.af ], [ %i.hd, %.noexc33 ], [ %i.gx, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.thread.i.i32 ]
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.1
  store i8 %.0.i.i30, ptr %i.he, align 1, !tbaa !37
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !425 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.045.4, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !426
  %i.hj = icmp ult ptr %i.hg, %i.hi
  br i1 %i.hj, label %bb.ai, label %bb.aj, !prof !218

bb.ai:                                            ; preds = %bb.ah
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store ptr %i.hk, ptr %i.hf, align 8, !tbaa !425
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge

bb.aj:                                            ; preds = %bb.ah
  %i.hl = load ptr, ptr %.sroa.045.4, align 8, !tbaa !25
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = invoke noundef i32 %i.hn(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.045.4)
          to label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !422 ; 0 uses

_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel.backedge: ; preds = %bb.aj, %bb.ai
  br label %_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv.exit36.peel, !llvm.loop !424

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22, %bb.aj, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i.i.i24.peel, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i5.i.i22.peel, %bb.l, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i.i31.peel, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %0, align 8, !tbaa !154   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.c
  br i1 %i.hq, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit: ; preds = %.split, %.thr_comm, %bb.z, %.thr_comm.peel, %.split.peel, %bb.i
  %.1.lcssa61 = phi i64 [ %.013.lcssa, %bb.i ], [ %.013.lcssa, %.split.peel ], [ %.013.lcssa, %.thr_comm.peel ], [ %.1, %bb.z ], [ %.1, %.thr_comm ], [ %.1, %.split ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.1.lcssa61, ptr %5, align 8, !tbaa !155
  %i.hr = load ptr, ptr %0, align 8, !tbaa !154
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.1.lcssa61
  store i8 0, ptr %i.hs, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ht = load i64, ptr %i.c, align 8, !tbaa !37
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hu) #31
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt19istreambuf_iteratorIcS2_EEEvT_S8_St18input_iterator_tagEN6_GuardD2Ev.exit40: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8LightGBM4GBDT17SaveModelToStringB5cxx11Eiii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(648) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::_Temporary_buffer", align 8 ; 10 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::locale", align 8       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::locale", align 8       ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.x = alloca i32, align 4                      ; 9 uses
  %i.y = alloca i32, align 4                      ; 8 uses
  %14 = alloca %"class.std::vector.53", align 8   ; 14 uses
  %15 = alloca %"class.std::vector.122", align 8  ; 17 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %17 = alloca %"class.std::vector.101", align 8  ; 11 uses
  %18 = alloca %"class.std::vector.111", align 8  ; 16 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.aa = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %9, align 8, !tbaa !25
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.a
  %i.af = getelementptr inbounds i8, ptr %9, i64 %i.ad
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %8, ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.b unwind label %bb.ai

bb.b:                                             ; preds = %.noexc
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 85 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(648) %1)
          to label %bb.c unwind label %bb.ai      ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !36
  %i.ar = or i32 %i.aq, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, i32 noundef %i.ar)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #20
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.ak, i64 noundef %i.as)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 10, ptr %i.w, align 1, !tbaa !37
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.ag, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !38
  %.not.i65 = icmp eq i64 %i.az, 0
  br i1 %.not.i65, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.w, i64 noundef 1)
          to label %bb.h unwind label %bb.ai      ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i8 noundef signext 10)
          to label %bb.h unwind label %bb.ai      ; 0 uses

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.114, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %bb.h
  %i.bd = load ptr, ptr @_ZN8LightGBM13kModelVersionE, align 8, !tbaa !40 ; 3 uses
  %.not.i70 = icmp eq ptr %i.bd, null
  br i1 %.not.i70, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.ag, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !36
  %i.bk = or i32 %i.bj, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bh, i32 noundef %i.bk)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.ai

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bd) #20
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.bd, i64 noundef %i.bl)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 10, ptr %i.v, align 1, !tbaa !37
  %i.bn = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.ag, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !38
  %.not.i74 = icmp eq i64 %i.bs, 0
  br i1 %.not.i74, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull %i.v, i64 noundef 1)
          to label %bb.m unwind label %bb.ai      ; 0 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i8 noundef signext 10)
          to label %bb.m unwind label %bb.ai      ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.115, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !149
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef %i.bx)
          to label %bb.n unwind label %bb.ai      ; 4 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 10, ptr %i.u, align 1, !tbaa !37
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !38
  %.not.i81 = icmp eq i64 %i.ce, 0
  br i1 %.not.i81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull %i.u, i64 noundef 1)
          to label %bb.q unwind label %bb.ai      ; 0 uses
end_hunk_1
