Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/gblinear?download=true
inline.NumInlined: 3102
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK7xgboost3gbm13GBLinearModel9DumpModelERKNS_10FeatureMapEbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
.noexc144:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %_ZNSolsEPFRSoS_E.exit62 unwind label %.loopexit226.loopexit ; 0 uses

.loopexit226.loopexit:                            ; preds = %.noexc144, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i139, %.noexc142, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64, %_ZNSolsEPFRSoS_E.exit62, %.peel.next
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit226

.loopexit226.loopexit.split-lp:                   ; preds = %_ZNSolsEPFRSoS_E.exit62.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.peel
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit226

.loopexit.split-lp227:                            ; preds = %.loopexit273
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit226

_ZNSolsEPFRSoS_E.exit62:                          ; preds = %.noexc144
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.111, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %.loopexit226.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZNSolsEPFRSoS_E.exit62
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !279 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !356
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !362
  %i.ct = mul i32 %i.cs, %i.cq
  %i.cu = zext i32 %i.ct to i64
  %i.cv = load ptr, ptr %i.am, align 8, !tbaa !283
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv265
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !169
  %i.cz = fpext float %i.cy to double
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, double noundef %i.cz)
          to label %_ZNSolsEf.exit unwind label %.loopexit226.loopexit ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %_ZNSolsEPFRSoS_E.exit._crit_edge, label %.peel.next, !llvm.loop !619

_ZNSolsEPFRSoS_E.exit55:                          ; preds = %.noexc133
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.112, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67: ; preds = %_ZNSolsEPFRSoS_E.exit55
  %i.dc = load ptr, ptr %i.bp, align 8, !tbaa !55
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %i.bp, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 240
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !606 ; 6 uses
  %.not.i.i.i147 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i147, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !613
  %.not.i1.i.i149 = icmp eq i8 %i.dj, 0
  br i1 %.not.i1.i.i149, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 67
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dh)
          to label %.noexc153 unwind label %bb.g

.noexc153:                                        ; preds = %bb.k
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !55
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef signext i8 %i.do(ptr noundef nonnull align 8 dereferenceable(570) %i.dh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150 unwind label %bb.g, !inline_history !618

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150: ; preds = %.noexc153, %bb.j
  %.0.i.i.i151 = phi i8 [ %i.dl, %bb.j ], [ %i.dp, %.noexc153 ]
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i8 noundef signext %.0.i.i.i151)
          to label %.noexc155 unwind label %bb.g

.noexc155:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %_ZNSolsEPFRSoS_E.exit69 unwind label %bb.g ; 4 uses

_ZNSolsEPFRSoS_E.exit69:                          ; preds = %.noexc155
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull @.str.113, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZNSolsEPFRSoS_E.exit69
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !55
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !606 ; 6 uses
  %.not.i.i.i158 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i158, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !613
  %.not.i1.i.i160 = icmp eq i8 %i.ea, 0
  br i1 %.not.i1.i.i160, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 67
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i159
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dy)
          to label %.noexc164 unwind label %bb.g

.noexc164:                                        ; preds = %bb.m
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !55
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161 unwind label %bb.g, !inline_history !618

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161: ; preds = %.noexc164, %bb.l
  %.0.i.i.i162 = phi i8 [ %i.ec, %bb.l ], [ %i.eg, %.noexc164 ]
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, i8 noundef signext %.0.i.i.i162)
          to label %.noexc166 unwind label %bb.g

.noexc166:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i161
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %_ZNSolsEPFRSoS_E.exit73.preheader unwind label %bb.g ; 0 uses

_ZNSolsEPFRSoS_E.exit73.preheader:                ; preds = %.noexc166
  %.not253 = icmp eq i32 %i.f, 0
  br i1 %.not253, label %_ZNSolsEPFRSoS_E.exit73._crit_edge.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSolsEPFRSoS_E.exit73.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
  br i1 %i.al, label %.preheader.preheader, label %_ZNSolsEPFRSoS_E.exit73._crit_edge.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count282 = zext i32 %i.f to i64
  %wide.trip.count277 = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge250
  %indvars.iv279 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next280, %._crit_edge250 ] ; 3 uses
  br label %bb.p

_ZNSolsEPFRSoS_E.exit73._crit_edge.split:         ; preds = %._crit_edge250, %.preheader.lr.ph, %_ZNSolsEPFRSoS_E.exit73.preheader
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %i.t, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 240
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !606 ; 6 uses
  %.not.i.i.i169 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i169, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170: ; preds = %_ZNSolsEPFRSoS_E.exit73._crit_edge.split
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !613
  %.not.i1.i.i171 = icmp eq i8 %i.er, 0
  br i1 %.not.i1.i.i171, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 67
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i172

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i170
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ep)
          to label %.noexc175 unwind label %bb.g

.noexc175:                                        ; preds = %bb.o
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef signext i8 %i.ew(ptr noundef nonnull align 8 dereferenceable(570) %i.ep, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i172 unwind label %bb.g, !inline_history !618

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i172: ; preds = %.noexc175, %bb.n
  %.0.i.i.i173 = phi i8 [ %i.et, %bb.n ], [ %i.ex, %.noexc175 ]
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext %.0.i.i.i173)
          to label %.noexc177 unwind label %bb.g

.noexc177:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i172
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %_ZNSolsEPFRSoS_E.exit75 unwind label %bb.g ; 4 uses

._crit_edge250:                                   ; preds = %_ZNSolsEf.exit83
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %_ZNSolsEPFRSoS_E.exit73._crit_edge.split, label %.preheader, !llvm.loop !621

bb.p:                                             ; preds = %.preheader, %_ZNSolsEf.exit83
  %indvars.iv274 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next275, %_ZNSolsEf.exit83 ] ; 3 uses
  %i.fa = or i64 %indvars.iv274, %indvars.iv279
  %or.cond.not = icmp eq i64 %i.fa, 0
  br i1 %or.cond.not, label %_ZNSolsEPFRSoS_E.exit79, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.110, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %bb.q
  %i.fc = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.fd = getelementptr i8, ptr %i.fc, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds i8, ptr %i.t, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 240
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !606 ; 6 uses
  %.not.i.i.i180 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i180, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i181

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.noexc185 unwind label %.loopexit.split-lp

.noexc185:                                        ; preds = %bb.r
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i181: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !613
  %.not.i1.i.i182 = icmp eq i8 %i.fj, 0
  br i1 %.not.i1.i.i182, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i181
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 67
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i183

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i181
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fh)
          to label %.noexc186 unwind label %.loopexit

.noexc186:                                        ; preds = %bb.t
  %i.fm = load ptr, ptr %i.fh, align 8, !tbaa !55
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = invoke noundef signext i8 %i.fo(ptr noundef nonnull align 8 dereferenceable(570) %i.fh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i183 unwind label %.loopexit, !inline_history !618

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i183: ; preds = %.noexc186, %bb.s
  %.0.i.i.i184 = phi i8 [ %i.fl, %bb.s ], [ %i.fp, %.noexc186 ]
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef signext %.0.i.i.i184)
          to label %.noexc188 unwind label %.loopexit

.noexc188:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i183
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fq)
          to label %_ZNSolsEPFRSoS_E.exit79 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.q, %_ZNSolsEPFRSoS_E.exit79, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81, %bb.t, %.noexc186, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i183, %.noexc188
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit226

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit226

_ZNSolsEPFRSoS_E.exit79:                          ; preds = %.noexc188, %bb.p
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.111, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZNSolsEPFRSoS_E.exit79
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 28
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !362
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul nuw i64 %indvars.iv279, %i.fw
  %i.fy = load ptr, ptr %i.ej, align 8, !tbaa !283
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv274
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !169
  %i.gc = fpext float %i.gb to double
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, double noundef %i.gc)
          to label %_ZNSolsEf.exit83 unwind label %.loopexit ; 0 uses

_ZNSolsEf.exit83:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %._crit_edge250, label %bb.p, !llvm.loop !622

_ZNSolsEPFRSoS_E.exit75:                          ; preds = %.noexc177
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.114, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZNSolsEPFRSoS_E.exit75
  %i.gf = load ptr, ptr %i.ez, align 8, !tbaa !55
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.ez, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 240
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !606 ; 6 uses
  %.not.i.i.i191 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i191, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i192

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEPFRSoS_E.exit._crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNSolsEPFRSoS_E.exit73._crit_edge.split, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
  invoke void @_ZSt16__throw_bad_castv() #37
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i192: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !613
  %.not.i1.i.i193 = icmp eq i8 %i.gm, 0
  br i1 %.not.i1.i.i193, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i192
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 67
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i194

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i192
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gk)
          to label %.noexc197 unwind label %bb.g

.noexc197:                                        ; preds = %bb.v
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !55
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = invoke noundef signext i8 %i.gr(ptr noundef nonnull align 8 dereferenceable(570) %i.gk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i194 unwind label %bb.g, !inline_history !618

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i194: ; preds = %.noexc197, %bb.u
  %.0.i.i.i195 = phi i8 [ %i.go, %bb.u ], [ %i.gs, %.noexc197 ]
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i8 noundef signext %.0.i.i.i195)
          to label %.noexc199 unwind label %bb.g

.noexc199:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i194
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gt)
          to label %_ZNSolsEPFRSoS_E.exit87 unwind label %bb.g

_ZNSolsEPFRSoS_E.exit87:                          ; preds = %.noexc199
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull @.str.115, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.g ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gw = load i32, ptr %i.o, align 1
  %i.gx = icmp ne i32 %i.gw, 1954047348
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread225

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull @.str.117, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.preheader unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.preheader: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread
  %i.hc = icmp sgt i32 %i.d, 0                    ; 2 uses
  br i1 %i.hc, label %.lr.ph, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93._crit_edge

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.preheader
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.w

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93._crit_edge: ; preds = %_ZNSolsEPFRSoS_E.exit99, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93.preheader
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull @.str.118, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.preheader unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.preheader: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93._crit_edge
  %.not252 = icmp eq i32 %i.f, 0
  br i1 %.not252, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89, label %.preheader231.lr.ph

.preheader231.lr.ph:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95.preheader
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 24
  br i1 %i.hc, label %.preheader231.preheader, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89

.preheader231.preheader:                          ; preds = %.preheader231.lr.ph
  %wide.trip.count263 = zext i32 %i.f to i64
  %wide.trip.count258 = zext nneg i32 %i.d to i64
  br label %.preheader231

bb.w:                                             ; preds = %.lr.ph, %_ZNSolsEPFRSoS_E.exit99
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSolsEPFRSoS_E.exit99 ] ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !279 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !356
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 28
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !362
  %i.hl = mul i32 %i.hk, %i.hi
  %i.hm = zext i32 %i.hl to i64
  %i.hn = load ptr, ptr %i.hd, align 8, !tbaa !283
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !169
  %i.hr = fpext float %i.hq to double
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, double noundef %i.hr)
          to label %_ZNSolsEf.exit97 unwind label %.loopexit237 ; 3 uses

_ZNSolsEf.exit97:                                 ; preds = %bb.w
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !55
end_hunk_0
