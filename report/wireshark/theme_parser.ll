inline.NumInlined: 819
inline.NumDeleted: 352
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11ThemeParser5parseERK7QStringS2_RNS_6ResultE:bb.a
  %i.fk = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i218, label %_ZN17QArrayDataPointerIDsED2Ev.exit225, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219:   ; preds = %bb.bq
  %i.fl = atomicrmw sub ptr %i.fk, i32 1 acq_rel, align 4
  %.not.i.i220 = icmp eq i32 %i.fl, 1
  br i1 %.not.i.i220, label %bb.br, label %_ZN17QArrayDataPointerIDsED2Ev.exit225

bb.br:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219
  %i.fm = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fm, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit225

_ZN17QArrayDataPointerIDsED2Ev.exit225:           ; preds = %bb.br, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  store ptr null, ptr %30, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr @.str.8, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 11, ptr %i.fo, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %29, ptr noundef nonnull align 8 dereferenceable_or_null(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.bs unwind label %bb.cv

bb.bs:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit225
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %28, ptr noundef nonnull align 8 dereferenceable_or_null(24) %29)
          to label %bb.bt unwind label %bb.cw

bb.bt:                                            ; preds = %bb.bs
  %i.fp = load <2 x ptr>, ptr %28, align 16
  %i.fq = load <2 x ptr>, ptr %i.ej, align 8
  %i.fr = load ptr, ptr %i.ej, align 8            ; 2 uses
  store <2 x ptr> %i.fp, ptr %i.ej, align 8
  store <2 x ptr> %i.fq, ptr %28, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ft = load i64, ptr %i.el, align 8
  %i.fu = load i64, ptr %i.fs, align 16
  store i64 %i.fu, ptr %i.el, align 8
  store i64 %i.ft, ptr %i.fs, align 16
  %.not.i.i.i226 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i226, label %_ZN7QStringD2Ev.exit229, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227:   ; preds = %bb.bt
  %i.fv = atomicrmw sub ptr %i.fr, i32 1 acq_rel, align 4
  %.not.i.i228 = icmp eq i32 %i.fv, 1
  br i1 %.not.i.i228, label %bb.bu, label %_ZN7QStringD2Ev.exit229

bb.bu:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227
  %i.fw = load ptr, ptr %28, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fw, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit229

_ZN7QStringD2Ev.exit229:                          ; preds = %bb.bt, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227, %bb.bu
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %29) #21
  %i.fx = load ptr, ptr %30, align 8              ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i230, label %_ZN17QArrayDataPointerIDsED2Ev.exit237, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i231

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i231:   ; preds = %_ZN7QStringD2Ev.exit229
  %i.fy = atomicrmw sub ptr %i.fx, i32 1 acq_rel, align 4
  %.not.i.i232 = icmp eq i32 %i.fy, 1
  br i1 %.not.i.i232, label %bb.bv, label %_ZN17QArrayDataPointerIDsED2Ev.exit237

bb.bv:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i231
  %i.fz = load ptr, ptr %30, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fz, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit237

_ZN17QArrayDataPointerIDsED2Ev.exit237:           ; preds = %bb.bv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i231, %_ZN7QStringD2Ev.exit229
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  store ptr null, ptr %33, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.9, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i64 6, ptr %i.gb, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %32, ptr noundef nonnull align 8 dereferenceable_or_null(8) %20, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.bw unwind label %bb.cz

bb.bw:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit237
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %31, ptr noundef nonnull align 8 dereferenceable_or_null(24) %32)
          to label %bb.bx unwind label %bb.da

bb.bx:                                            ; preds = %bb.bw
  %i.gc = load <2 x ptr>, ptr %31, align 16
  %i.gd = load <2 x ptr>, ptr %i.em, align 8
  %i.ge = load ptr, ptr %i.em, align 8            ; 2 uses
  store <2 x ptr> %i.gc, ptr %i.em, align 8
  store <2 x ptr> %i.gd, ptr %31, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.gg = load i64, ptr %i.eo, align 8
  %i.gh = load i64, ptr %i.gf, align 16
  store i64 %i.gh, ptr %i.eo, align 8
  store i64 %i.gg, ptr %i.gf, align 16
  %.not.i.i.i238 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i238, label %_ZN7QStringD2Ev.exit241, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i239

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i239:   ; preds = %bb.bx
  %i.gi = atomicrmw sub ptr %i.ge, i32 1 acq_rel, align 4
  %.not.i.i240 = icmp eq i32 %i.gi, 1
  br i1 %.not.i.i240, label %bb.by, label %_ZN7QStringD2Ev.exit241

bb.by:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i239
  %i.gj = load ptr, ptr %31, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gj, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit241

_ZN7QStringD2Ev.exit241:                          ; preds = %bb.bx, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i239, %bb.by
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %32) #21
  %i.gk = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i242, label %_ZN17QArrayDataPointerIDsED2Ev.exit249, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i243

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i243:   ; preds = %_ZN7QStringD2Ev.exit241
  %i.gl = atomicrmw sub ptr %i.gk, i32 1 acq_rel, align 4
  %.not.i.i244 = icmp eq i32 %i.gl, 1
  br i1 %.not.i.i244, label %bb.bz, label %_ZN17QArrayDataPointerIDsED2Ev.exit249

bb.bz:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i243
  %i.gm = load ptr, ptr %33, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gm, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit249

_ZN17QArrayDataPointerIDsED2Ev.exit249:           ; preds = %bb.bz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i243, %_ZN7QStringD2Ev.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.go = load ptr, ptr %i.gn, align 8            ; 3 uses
  %.not.i250 = icmp eq ptr %i.go, null
  br i1 %.not.i250, label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit249
  %i.gp = load atomic i32, ptr %i.go monotonic, align 4
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.ca
  %i.gr = atomicrmw sub ptr %i.go, i32 1 acq_rel, align 4
  %.not3.i = icmp eq i32 %i.gr, 1
  br i1 %.not3.i, label %bb.cb, label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit

bb.cb:                                            ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %i.gs = load ptr, ptr %i.gn, align 8            ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gu = getelementptr i8, ptr %i.gs, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8            ; 4 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -8 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8            ; 2 uses
  %.idx.i.i = mul i64 %i.gy, 144                  ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.cd
  %i.ha = getelementptr inbounds i8, ptr %i.gv, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.hb = phi ptr [ %i.hc, %_ZN12QHashPrivate4SpanINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i.i ], [ %i.ha, %.preheader.preheader.i.i ] ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -144 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hb, i64 -16
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not.i.i.i.i251 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i251, label %_ZN12QHashPrivate4SpanINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %.preheader.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.he) #23
  br label %_ZN12QHashPrivate4SpanINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i.i

_ZN12QHashPrivate4SpanINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i.i: ; preds = %bb.ce, %.preheader.i.i
  %i.hf = icmp eq ptr %i.hc, %i.gv
  br i1 %i.hf, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i.i, %bb.cd
  %i.hg = or disjoint i64 %.idx.i.i, 8
  call void @_ZdaPvm(ptr noundef %i.gx, i64 noundef %i.hg) #23
  br label %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i

_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.cc
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef 40) #23
  br label %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit

_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit: ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit249, %bb.ca, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %bb.cb, %_ZN12QHashPrivate4DataINS_4NodeIN12ThemeManager10ThemeTokenE14ThemeColorPairEEED2Ev.exit.i
  store ptr null, ptr %i.gn, align 8
  %i.hh = load ptr, ptr %0, align 8, !align !8
  %i.hi = load ptr, ptr %i.hh, align 8            ; 5 uses
  %.not.i252 = icmp eq ptr %i.hi, null
  br i1 %.not.i252, label %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit
  %i.hj = getelementptr i8, ptr %i.hi, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1
  %.not.i.i.i253 = icmp eq i8 %i.hl, -1
  br i1 %.not.i.i.i253, label %bb.cg, label %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread.preheader

bb.cg:                                            ; preds = %bb.cf
  %i.hm = getelementptr i8, ptr %i.hi, i64 16
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit, label %.lr.ph

bb.ch:                                            ; preds = %.lr.ph
  %i.hp = add i64 %i.hr, 1                        ; 2 uses
  %i.hq = icmp eq i64 %i.hp, %i.hn
  br i1 %i.hq, label %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.cg, %bb.ch
  %i.hr = phi i64 [ %i.hp, %bb.ch ], [ 1, %bb.cg ] ; 4 uses
  %i.hs = lshr i64 %i.hr, 7
  %i.ht = getelementptr [144 x i8], ptr %i.hk, i64 %i.hs
  %i.hu = and i64 %i.hr, 127
  %i.hv = getelementptr i8, ptr %i.ht, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %.not.i.i.i.i254 = icmp eq i8 %i.hw, -1
  br i1 %.not.i.i.i.i254, label %bb.ch, label %._ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !9

._ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit, !llvm.loop !9

_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit: ; preds = %bb.ch, %bb.cg, %._ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit.loopexit_crit_edge, %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit
  %.sroa.0.0.i = phi ptr [ null, %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit ], [ null, %bb.cg ], [ %i.hi, %._ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.ch ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE5clearEv.exit ], [ 0, %bb.cg ], [ %i.hr, %._ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.ch ] ; 2 uses
  %51 = icmp eq ptr %.sroa.0.0.i, null
  %52 = icmp eq i64 %.sroa.4.0.i, 0
  %or.cond.not491 = and i1 %51, %52
  br i1 %or.cond.not491, label %.critedge123, label %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread.preheader

_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread.preheader: ; preds = %bb.cf, %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit
  %.sroa.10435.0493.ph = phi i64 [ 0, %bb.cf ], [ %.sroa.4.0.i, %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit ]
  %.sroa.0431.0492.ph = phi ptr [ %i.hi, %bb.cf ], [ %.sroa.0.0.i, %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit ]
  br label %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread

bb.ci:                                            ; preds = %bb.bc
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.cj:                                            ; preds = %bb.bd
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.be
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %21) #21
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn78 = phi { ptr, i32 } [ %i.hz, %bb.ck ], [ %i.hy, %bb.cj ]
  %i.ia = load ptr, ptr %22, align 8              ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i255, label %_ZN17QArrayDataPointerIDsED2Ev.exit262, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i256

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i256:   ; preds = %bb.cl
  %i.ib = atomicrmw sub ptr %i.ia, i32 1 acq_rel, align 4
  %.not.i.i257 = icmp eq i32 %i.ib, 1
  br i1 %.not.i.i257, label %bb.cm, label %_ZN17QArrayDataPointerIDsED2Ev.exit262

bb.cm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i256
  %i.ic = load ptr, ptr %22, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ic, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit262

_ZN17QArrayDataPointerIDsED2Ev.exit262:           ; preds = %bb.cm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i256, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.gb

bb.cn:                                            ; preds = %_ZN9ThemeInfoD2Ev.exit
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.bl
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %24) #21
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn80 = phi { ptr, i32 } [ %i.ie, %bb.co ], [ %i.id, %bb.cn ]
  %i.if = load ptr, ptr %25, align 8              ; 2 uses
  %.not.i.i.i263 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i263, label %_ZN17QArrayDataPointerIDsED2Ev.exit270, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264:   ; preds = %bb.cp
  %i.ig = atomicrmw sub ptr %i.if, i32 1 acq_rel, align 4
  %.not.i.i265 = icmp eq i32 %i.ig, 1
  br i1 %.not.i.i265, label %bb.cq, label %_ZN17QArrayDataPointerIDsED2Ev.exit270

bb.cq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264
  %i.ih = load ptr, ptr %25, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ih, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit270

_ZN17QArrayDataPointerIDsED2Ev.exit270:           ; preds = %bb.cq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i264, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.ga

bb.cr:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit217
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.bp
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %26) #21
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn82 = phi { ptr, i32 } [ %i.ij, %bb.cs ], [ %i.ii, %bb.cr ]
  %i.ik = load ptr, ptr %27, align 8              ; 2 uses
  %.not.i.i.i271 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i271, label %_ZN17QArrayDataPointerIDsED2Ev.exit278, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272:   ; preds = %bb.ct
  %i.il = atomicrmw sub ptr %i.ik, i32 1 acq_rel, align 4
  %.not.i.i273 = icmp eq i32 %i.il, 1
  br i1 %.not.i.i273, label %bb.cu, label %_ZN17QArrayDataPointerIDsED2Ev.exit278

bb.cu:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272
  %i.im = load ptr, ptr %27, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.im, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit278

_ZN17QArrayDataPointerIDsED2Ev.exit278:           ; preds = %bb.cu, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i272, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.ga

bb.cv:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit225
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %bb.bs
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %29) #21
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn84 = phi { ptr, i32 } [ %i.io, %bb.cw ], [ %i.in, %bb.cv ]
  %i.ip = load ptr, ptr %30, align 8              ; 2 uses
  %.not.i.i.i279 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i279, label %_ZN17QArrayDataPointerIDsED2Ev.exit286, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i280

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i280:   ; preds = %bb.cx
  %i.iq = atomicrmw sub ptr %i.ip, i32 1 acq_rel, align 4
  %.not.i.i281 = icmp eq i32 %i.iq, 1
  br i1 %.not.i.i281, label %bb.cy, label %_ZN17QArrayDataPointerIDsED2Ev.exit286

bb.cy:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i280
  %i.ir = load ptr, ptr %30, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ir, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit286

_ZN17QArrayDataPointerIDsED2Ev.exit286:           ; preds = %bb.cy, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i280, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.ga

bb.cz:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit237
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.bw
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %32) #21
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn86 = phi { ptr, i32 } [ %i.it, %bb.da ], [ %i.is, %bb.cz ]
  %i.iu = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i.i.i287 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i287, label %_ZN17QArrayDataPointerIDsED2Ev.exit294, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288:   ; preds = %bb.db
  %i.iv = atomicrmw sub ptr %i.iu, i32 1 acq_rel, align 4
  %.not.i.i289 = icmp eq i32 %i.iv, 1
  br i1 %.not.i.i289, label %bb.dc, label %_ZN17QArrayDataPointerIDsED2Ev.exit294

bb.dc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288
  %i.iw = load ptr, ptr %33, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.iw, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit294

_ZN17QArrayDataPointerIDsED2Ev.exit294:           ; preds = %bb.dc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.ga

_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread: ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread.preheader, %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit
  %.sroa.10435.0493 = phi i64 [ %.sroa.10435.1, %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit ], [ %.sroa.10435.0493.ph, %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread.preheader ] ; 3 uses
  %.sroa.0431.0492 = phi ptr [ %.sroa.0431.1, %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit ], [ %.sroa.0431.0492.ph, %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread.preheader ] ; 3 uses
  %i.ix = getelementptr i8, ptr %.sroa.0431.0492, i64 32 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = lshr i64 %.sroa.10435.0493, 7
  %i.ja = getelementptr [144 x i8], ptr %i.iy, i64 %i.iz ; 2 uses
  %i.jb = and i64 %.sroa.10435.0493, 127
  %i.jc = getelementptr i8, ptr %i.ja, i64 128
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr i8, ptr %i.ja, i64 %i.jb
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr [56 x i8], ptr %i.jd, i64 %i.jg ; 4 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 24     ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 8, !range !6, !noundef !7
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.dd, label %bb.do

bb.dd:                                            ; preds = %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread
  %i.jl = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %19, ptr noundef align 8 dereferenceable(24) %i.jh)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  br i1 %i.jl, label %bb.do, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  store i32 2, ptr %34, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %34, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jm, i8 0, i64 20, i1 false)
  store ptr @.str.28, ptr %i.jn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %35, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.jh)
          to label %_ZNKR7QString6toUtf8Ev.exit296 unwind label %bb.dj

_ZNKR7QString6toUtf8Ev.exit296:                   ; preds = %bb.df
  %i.jo = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %36, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %3)
          to label %_ZNKR7QString6toUtf8Ev.exit300 unwind label %bb.dk

_ZNKR7QString6toUtf8Ev.exit300:                   ; preds = %_ZNKR7QString6toUtf8Ev.exit296
  %.not.i.i297 = icmp eq ptr %i.jp, null
  %spec.select.i.i298 = select i1 %.not.i.i297, ptr @_ZN10QByteArray6_emptyE, ptr %i.jp
  %i.jq = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %.not.i.i301 = icmp eq ptr %i.jr, null
  %spec.select.i.i302 = select i1 %.not.i.i301, ptr @_ZN10QByteArray6_emptyE, ptr %i.jr
  invoke void (ptr, ptr, ...) @_ZNK14QMessageLogger7warningEPKcz(ptr noundef nonnull align 8 dereferenceable_or_null(32) %34, ptr noundef nonnull @.str.10, ptr noundef nonnull %spec.select.i.i298, ptr noundef nonnull %spec.select.i.i302) #22
          to label %.critedge unwind label %bb.dl

.critedge:                                        ; preds = %_ZNKR7QString6toUtf8Ev.exit300
  %i.js = load ptr, ptr %36, align 8              ; 2 uses
  %.not.i.i.i303 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i303, label %_ZN10QByteArrayD2Ev.exit306, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i304

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i304:    ; preds = %.critedge
  %i.jt = atomicrmw sub ptr %i.js, i32 1 acq_rel, align 4
  %.not.i.i305 = icmp eq i32 %i.jt, 1
  br i1 %.not.i.i305, label %bb.dg, label %_ZN10QByteArrayD2Ev.exit306

bb.dg:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i304
  %i.ju = load ptr, ptr %36, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ju, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit306

_ZN10QByteArrayD2Ev.exit306:                      ; preds = %.critedge, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i304, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.jv = load ptr, ptr %35, align 8              ; 2 uses
  %.not.i.i.i307 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i307, label %_ZN10QByteArrayD2Ev.exit310, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i308

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i308:    ; preds = %_ZN10QByteArrayD2Ev.exit306
  %i.jw = atomicrmw sub ptr %i.jv, i32 1 acq_rel, align 4
  %.not.i.i309 = icmp eq i32 %i.jw, 1
  br i1 %.not.i.i309, label %bb.dh, label %_ZN10QByteArrayD2Ev.exit310

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i308
  %i.jx = load ptr, ptr %35, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jx, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit310

_ZN10QByteArrayD2Ev.exit310:                      ; preds = %_ZN10QByteArrayD2Ev.exit306, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i308, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.fz

bb.di:                                            ; preds = %bb.do, %bb.dd
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.dj:                                            ; preds = %bb.df
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit318

bb.dk:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit296
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit314

bb.dl:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit300
  %i.kb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kc = load ptr, ptr %36, align 8              ; 2 uses
  %.not.i.i.i311 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i311, label %_ZN10QByteArrayD2Ev.exit314, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i312

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i312:    ; preds = %bb.dl
  %i.kd = atomicrmw sub ptr %i.kc, i32 1 acq_rel, align 4
  %.not.i.i313 = icmp eq i32 %i.kd, 1
  br i1 %.not.i.i313, label %bb.dm, label %_ZN10QByteArrayD2Ev.exit314

bb.dm:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i312
  %i.ke = load ptr, ptr %36, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ke, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit314

_ZN10QByteArrayD2Ev.exit314:                      ; preds = %bb.dm, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i312, %bb.dl, %bb.dk
  %.pn88 = phi { ptr, i32 } [ %i.ka, %bb.dk ], [ %i.kb, %bb.dl ], [ %i.kb, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i312 ], [ %i.kb, %bb.dm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  %i.kf = load ptr, ptr %35, align 8              ; 2 uses
  %.not.i.i.i315 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i315, label %_ZN10QByteArrayD2Ev.exit318, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i316

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i316:    ; preds = %_ZN10QByteArrayD2Ev.exit314
  %i.kg = atomicrmw sub ptr %i.kf, i32 1 acq_rel, align 4
  %.not.i.i317 = icmp eq i32 %i.kg, 1
  br i1 %.not.i.i317, label %bb.dn, label %_ZN10QByteArrayD2Ev.exit318

bb.dn:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i316
  %i.kh = load ptr, ptr %35, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kh, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit318

_ZN10QByteArrayD2Ev.exit318:                      ; preds = %bb.dn, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i316, %_ZN10QByteArrayD2Ev.exit314, %bb.dj
  %.pn88.pn = phi { ptr, i32 } [ %i.jz, %bb.dj ], [ %.pn88, %_ZN10QByteArrayD2Ev.exit314 ], [ %.pn88, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i316 ], [ %.pn88, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.ga

bb.do:                                            ; preds = %bb.de, %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread
  invoke void @_ZN11ThemeParser12parseSectionERK11QJsonObjectRK7QStringRK16ThemeSectionInfoRK9ThemeInfoR5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairE(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef align 8 dereferenceable(24) %i.jh, ptr noundef align 8 dereferenceable(32) %i.ji, ptr noundef align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %bb.dp unwind label %bb.di

bb.dp:                                            ; preds = %bb.do
  %i.ki = getelementptr i8, ptr %.sroa.0431.0492, i64 16
  %i.kj = load i64, ptr %i.ki, align 8            ; 2 uses
  %i.kk = add i64 %.sroa.10435.0493, 1            ; 2 uses
  %i.kl = icmp eq i64 %i.kk, %i.kj
  br i1 %i.kl, label %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit, label %.lr.ph572.preheader

.lr.ph572.preheader:                              ; preds = %bb.dp
  %i.km = load ptr, ptr %i.ix, align 8
  br label %.lr.ph572

bb.dq:                                            ; preds = %.lr.ph572
  %i.kn = add i64 %i.kp, 1                        ; 2 uses
  %i.ko = icmp eq i64 %i.kn, %i.kj
  br i1 %i.ko, label %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit, label %.lr.ph572, !llvm.loop !9

.lr.ph572:                                        ; preds = %.lr.ph572.preheader, %bb.dq
  %i.kp = phi i64 [ %i.kn, %bb.dq ], [ %i.kk, %.lr.ph572.preheader ] ; 4 uses
  %i.kq = lshr i64 %i.kp, 7
  %i.kr = getelementptr [144 x i8], ptr %i.km, i64 %i.kq
  %i.ks = and i64 %i.kp, 127
  %i.kt = getelementptr i8, ptr %i.kr, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1
  %.not.i.i.i319 = icmp eq i8 %i.ku, -1
  br i1 %.not.i.i.i319, label %bb.dq, label %._ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit_crit_edge575, !llvm.loop !9

._ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit_crit_edge575: ; preds = %.lr.ph572
  br label %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit, !llvm.loop !9

_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit: ; preds = %bb.dq, %._ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit_crit_edge575, %bb.dp
  %.sroa.0431.1 = phi ptr [ %.sroa.0431.0492, %._ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit_crit_edge575 ], [ null, %bb.dp ], [ null, %bb.dq ] ; 2 uses
  %.sroa.10435.1 = phi i64 [ %i.kp, %._ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit_crit_edge575 ], [ 0, %bb.dp ], [ 0, %bb.dq ] ; 2 uses
  %i.kv = icmp eq ptr %.sroa.0431.1, null
  %i.kw = icmp eq i64 %.sroa.10435.1, 0
  %or.cond.not = and i1 %i.kv, %i.kw
  br i1 %or.cond.not, label %.critedge123, label %_ZNK5QHashI7QString16ThemeSectionInfoE14const_iteratorneERKS3_.exit.thread, !llvm.loop !11

.critedge123:                                     ; preds = %_ZN5QHashI7QString16ThemeSectionInfoE14const_iteratorppEv.exit, %_ZNK5QHashI7QString16ThemeSectionInfoE10constBeginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  store ptr null, ptr %37, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.11, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 9, ptr %i.ky, align 8
  %i.kz = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %19, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.dr unwind label %bb.eb

bb.dr:                                            ; preds = %.critedge123
  %i.la = load ptr, ptr %37, align 8              ; 2 uses
  %.not.i.i.i320 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i320, label %_ZN17QArrayDataPointerIDsED2Ev.exit327, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i321

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i321:   ; preds = %bb.dr
  %i.lb = atomicrmw sub ptr %i.la, i32 1 acq_rel, align 4
  %.not.i.i322 = icmp eq i32 %i.lb, 1
  br i1 %.not.i.i322, label %bb.ds, label %_ZN17QArrayDataPointerIDsED2Ev.exit327

bb.ds:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i321
  %i.lc = load ptr, ptr %37, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lc, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit327

_ZN17QArrayDataPointerIDsED2Ev.exit327:           ; preds = %bb.ds, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i321, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br i1 %i.kz, label %bb.dt, label %bb.eo

bb.dt:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit327
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  store ptr null, ptr %40, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr @.str.11, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 9, ptr %i.le, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %39, ptr noundef nonnull align 8 dereferenceable_or_null(8) %19, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.du unwind label %bb.ed

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %38, ptr noundef nonnull align 8 dereferenceable_or_null(24) %39)
          to label %bb.dv unwind label %bb.ee

bb.dv:                                            ; preds = %bb.du
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %39) #21
  %i.lf = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i328 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i328, label %_ZN17QArrayDataPointerIDsED2Ev.exit335, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i329

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i329:   ; preds = %bb.dv
  %i.lg = atomicrmw sub ptr %i.lf, i32 1 acq_rel, align 4
  %.not.i.i330 = icmp eq i32 %i.lg, 1
  br i1 %.not.i.i330, label %bb.dw, label %_ZN17QArrayDataPointerIDsED2Ev.exit335

bb.dw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i329
  %i.lh = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.lh, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit335

_ZN17QArrayDataPointerIDsED2Ev.exit335:           ; preds = %bb.dw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i329, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.li = invoke noundef zeroext i1 @_ZNK11QJsonObject7isEmptyEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %38)
          to label %bb.dx unwind label %bb.eh

bb.dx:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit335
  br i1 %i.li, label %bb.el, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  invoke void @_ZN11ThemeParser14parseColorPairERK11QJsonObject(ptr dead_on_unwind nonnull writable sret(%struct.ThemeColorPair) align 4 %41, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.dz unwind label %bb.ei

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 52, ptr %i.b, align 4
  %i.lj = invoke noundef align 4 dereferenceable(32) ptr @_ZN5QHashIN12ThemeManager10ThemeTokenE14ThemeColorPairEixERKS1_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ea unwind label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(32) %i.lj, ptr noundef nonnull align 4 dereferenceable(32) %41, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.el

bb.eb:                                            ; preds = %.critedge123
  %i.lk = landingpad { ptr, i32 }
          cleanup
  %i.ll = load ptr, ptr %37, align 8              ; 2 uses
  %.not.i.i.i336 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i336, label %_ZN17QArrayDataPointerIDsED2Ev.exit343, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i337

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i337:   ; preds = %bb.eb
  %i.lm = atomicrmw sub ptr %i.ll, i32 1 acq_rel, align 4
  %.not.i.i338 = icmp eq i32 %i.lm, 1
  br i1 %.not.i.i338, label %bb.ec, label %_ZN17QArrayDataPointerIDsED2Ev.exit343

bb.ec:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i337
  %i.ln = load ptr, ptr %37, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ln, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit343

_ZN17QArrayDataPointerIDsED2Ev.exit343:           ; preds = %bb.ec, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i337, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %bb.ga

bb.ed:                                            ; preds = %bb.dt
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %bb.du
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %39) #21
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn93 = phi { ptr, i32 } [ %i.lp, %bb.ee ], [ %i.lo, %bb.ed ]
  %i.lq = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i344 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i344, label %_ZN17QArrayDataPointerIDsED2Ev.exit351, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i345

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i345:   ; preds = %bb.ef
  %i.lr = atomicrmw sub ptr %i.lq, i32 1 acq_rel, align 4
  %.not.i.i346 = icmp eq i32 %i.lr, 1
  br i1 %.not.i.i346, label %bb.eg, label %_ZN17QArrayDataPointerIDsED2Ev.exit351

bb.eg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i345
  %i.ls = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ls, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit351

_ZN17QArrayDataPointerIDsED2Ev.exit351:           ; preds = %bb.eg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i345, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.en

bb.eh:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit335
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ei:                                            ; preds = %bb.dy
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %bb.dz
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.pn95 = phi { ptr, i32 } [ %i.lv, %bb.ej ], [ %i.lu, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.em

bb.el:                                            ; preds = %bb.ea, %bb.dx
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek, %bb.eh
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.ek ], [ %i.lt, %bb.eh ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %38) #21
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %_ZN17QArrayDataPointerIDsED2Ev.exit351
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95.pn, %bb.em ], [ %.pn93, %_ZN17QArrayDataPointerIDsED2Ev.exit351 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.ga

bb.eo:                                            ; preds = %bb.el, %_ZN17QArrayDataPointerIDsED2Ev.exit327
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  %i.ly = load i64, ptr %i.lx, align 8
  %.not.i352 = icmp eq i64 %i.ly, 0
  br i1 %.not.i352, label %_ZN5QListI14ThemeColorPairE5clearEv.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.lz = load ptr, ptr %i.lw, align 8            ; 3 uses
  %.not.i.i353 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i353, label %_ZN17QArrayDataPointerI14ThemeColorPairE17allocatedCapacityEv.exit.i, label %_ZNK17QArrayDataPointerI14ThemeColorPairE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerI14ThemeColorPairE11needsDetachEv.exit.i: ; preds = %bb.ep
  %i.ma = load atomic i32, ptr %i.lz monotonic, align 4
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %_ZNK17QArrayDataPointerI14ThemeColorPairE11needsDetachEv.exit.i
  %i.mc = getelementptr i8, ptr %i.lz, i64 8
  %i.md = load i64, ptr %i.mc, align 8
  br label %_ZN17QArrayDataPointerI14ThemeColorPairE17allocatedCapacityEv.exit.i

_ZN17QArrayDataPointerI14ThemeColorPairE17allocatedCapacityEv.exit.i: ; preds = %bb.eq, %bb.ep
  %i.me = phi i64 [ %i.md, %bb.eq ], [ 0, %bb.ep ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
end_hunk_0
