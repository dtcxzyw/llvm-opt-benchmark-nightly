Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/region_layer?download=true
inline.NumInlined: 438
inline.NumDeleted: 204
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn15RegionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.am
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !22
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %bb.al
  %.pn228 = phi { ptr, i32 } [ %i.dm, %bb.al ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ], [ %i.dn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %.body

bb.an:                                            ; preds = %bb.ah
  %i.dt = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.ci)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.du = icmp eq i64 %i.dt, %i.dj
  br i1 %i.du, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv3dnn15RegionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.1, i32 noundef 265) #22
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

bb.at:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.at
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !22
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.as
  %.pn230 = phi { ptr, i32 } [ %i.dv, %bb.as ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %i.dw, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  br label %.body

bb.au:                                            ; preds = %bb.ao
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.ed = load ptr, ptr %13, align 8, !tbaa !16   ; 5 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = sdiv exact i64 %i.eg, 208
  %i.ei = icmp ult i64 %i.eh, 2
  br i1 %i.ei, label %.thread337, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 212
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !121
  %i.el = icmp eq i32 %i.ek, 4
  br i1 %i.el, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv3dnn15RegionLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.1, i32 noundef 267) #22
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

bb.ba:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %24, align 8, !tbaa !21   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %bb.ba
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !22
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287, %bb.az
  %.pn232 = phi { ptr, i32 } [ %i.em, %bb.az ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ], [ %i.en, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.body

bb.bb:                                            ; preds = %bb.av
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 280
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !55 ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 2
  br i1 %i.ev, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc295 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc295:                                        ; preds = %bb.bc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.34, i32 noundef 97) #22
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %.noexc295
  unreachable

bb.be:                                            ; preds = %.noexc295
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292: ; preds = %bb.be
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !22
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i293: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

bb.bf:                                            ; preds = %bb.bb
  %.not525 = icmp eq i32 %i.eu, 3
  br i1 %.not525, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc304 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc304:                                        ; preds = %bb.bg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.34, i32 noundef 97) #22
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %.noexc304
  unreachable

bb.bi:                                            ; preds = %.noexc304
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301: ; preds = %bb.bi
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !22
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i302: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.bj:                                            ; preds = %bb.bf
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ed, i64 300
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ed, i64 304
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56
  br label %.thread337

.thread337:                                       ; preds = %bb.au, %bb.bj
  %i.fm = phi i32 [ %i.fj, %bb.bj ], [ %i.cv, %bb.au ]
  %i.fn = phi i32 [ %i.fl, %bb.bj ], [ %i.dd, %bb.au ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !119 ; 16 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !119 ; 20 uses
  %i.fs = load i32, ptr %i.ap, align 8, !tbaa !49
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.preheader348, label %.loopexit347

.preheader348:                                    ; preds = %.thread337
  %i.fu = mul nsw i32 %i.cv, %i.cm
  %i.fv = mul nsw i32 %i.fu, %i.dd
  %i.fw = load i32, ptr %i.ao, align 8, !tbaa !43
  %i.fx = mul nsw i32 %i.fv, %i.fw                ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 0                   ; 2 uses
  br i1 %i.fy, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader348
  %wide.trip.count = zext nneg i32 %i.fx to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader348
  %i.fz = load i8, ptr %i.aq, align 4, !tbaa !45, !range !50, !noundef !51
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.bk, label %bb.bq

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.gb = mul nsw i64 %indvars.iv, %i.aw
  %i.gc = add nsw i64 %i.gb, 4                    ; 2 uses
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !57
  %i.gf = fneg float %i.ge
  %i.gg = call noundef float @expf(float noundef %i.gf) #21
  %i.gh = fadd float %i.gg, 1.000000e+00
  %i.gi = fdiv float 1.000000e+00, %i.gh
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.gc
  store float %i.gi, ptr %i.gj, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !92

bb.bk:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  invoke void @_ZNK2cv3Mat7reshapeEiRKNS_8MatShapeE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %26, ptr noundef nonnull align 8 dereferenceable(208) %i.ch, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(52) %i.gk)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.gl = load i32, ptr %i.ae, align 4, !tbaa !42
  invoke void @_ZN2cv3dnn7softmaxERNS_3MatERKS1_iiif(ptr noundef nonnull align 8 dereferenceable(208) %i.ci, ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef -1, i32 noundef 5, i32 noundef %i.gl, float noundef 1.000000e+00)
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %.loopexit347

bb.bn:                                            ; preds = %bb.bk
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn234 = phi { ptr, i32 } [ %i.gn, %bb.bo ], [ %i.gm, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %.body

bb.bq:                                            ; preds = %._crit_edge
  %i.go = load i8, ptr %i.ar, align 1, !tbaa !46, !range !50, !noundef !51
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond = and i1 %i.fy, %i.gp
  br i1 %or.cond, label %.lr.ph358, label %.loopexit347

.lr.ph358:                                        ; preds = %bb.bq
  %i.gq = load i32, ptr %i.ae, align 4, !tbaa !42 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph355.preheader, label %.loopexit347

.lr.ph355.preheader:                              ; preds = %.lr.ph358
  %wide.trip.count414 = zext nneg i32 %i.fx to i64
  %wide.trip.count409 = zext nneg i32 %i.gq to i64
  br label %.lr.ph355

.lr.ph355:                                        ; preds = %.lr.ph355.preheader, %._crit_edge356
  %indvars.iv411 = phi i64 [ 0, %.lr.ph355.preheader ], [ %indvars.iv.next412, %._crit_edge356 ] ; 2 uses
  %i.gs = mul nsw i64 %indvars.iv411, %i.aw       ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  br label %bb.br

._crit_edge356:                                   ; preds = %bb.br
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next412, %wide.trip.count414
  br i1 %exitcond415.not, label %.loopexit347, label %.lr.ph355, !llvm.loop !93

bb.br:                                            ; preds = %.lr.ph355, %bb.br
  %indvars.iv406 = phi i64 [ 0, %.lr.ph355 ], [ %indvars.iv.next407, %bb.br ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv406
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !57
  %i.gz = fneg float %i.gy
  %i.ha = call noundef float @expf(float noundef %i.gz) #21
  %i.hb = fadd float %i.ha, 1.000000e+00
  %i.hc = fdiv float 1.000000e+00, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv406
  store float %i.hc, ptr %i.hd, align 4, !tbaa !57
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count409
  br i1 %exitcond410.not, label %._crit_edge356, label %bb.br, !llvm.loop !94

.loopexit347:                                     ; preds = %._crit_edge356, %.lr.ph358, %bb.bm, %bb.bq, %.thread337
  %i.he = icmp sgt i32 %i.cm, 0
  br i1 %i.he, label %.preheader342.lr.ph, label %.loopexit344

.preheader342.lr.ph:                              ; preds = %.loopexit347
  %i.hf = icmp sgt i32 %i.dd, 0
  %i.hg = insertelement <2 x i32> poison, i32 %i.dd, i64 0
  %i.hh = insertelement <2 x i32> %i.hg, i32 %i.cv, i64 1
  %i.hi = sitofp <2 x i32> %i.hh to <2 x float>   ; 2 uses
  %i.hj = sitofp i32 %i.fn to float               ; 2 uses
  %i.hk = sitofp i32 %i.fm to float               ; 2 uses
  %i.hl = icmp sgt i32 %i.cv, 0
  %or.cond529 = select i1 %i.hf, i1 %i.hl, i1 false
  br i1 %or.cond529, label %.preheader342.lr.ph.split.split.us, label %._crit_edge383.split

.preheader342.lr.ph.split.split.us:               ; preds = %.preheader342.lr.ph
  %i.hm = load i32, ptr %i.ao, align 8, !tbaa !43 ; 3 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.preheader342.lr.ph.split.split.us.split, label %._crit_edge383.split

.preheader342.lr.ph.split.split.us.split:         ; preds = %.preheader342.lr.ph.split.split.us
  %i.ho = load i32, ptr %i.as, align 4, !tbaa !44
  %i.hp = icmp eq i32 %i.ho, -1                   ; 2 uses
  %i.hq = load i32, ptr %i.ap, align 8, !tbaa !49
  %i.hr = icmp eq i32 %i.hq, 1
  %i.hs = load i32, ptr %i.ae, align 4, !tbaa !42 ; 4 uses
  %i.ht = icmp sgt i32 %i.hs, 0                   ; 2 uses
  %i.hu = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.hv = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.hw = sext i32 %i.dh to i64                   ; 3 uses
  %wide.trip.count464 = zext nneg i32 %i.cm to i64 ; 2 uses
  %wide.trip.count459 = zext nneg i32 %i.dd to i64 ; 4 uses
  %wide.trip.count454 = zext nneg i32 %i.cv to i64 ; 2 uses
  %wide.trip.count449 = zext nneg i32 %i.hm to i64 ; 7 uses
  %wide.trip.count444 = zext i32 %i.hs to i64     ; 11 uses
  %i.hx = add nsw i64 %wide.trip.count449, -1     ; 2 uses
  %27 = shl nuw nsw i64 %wide.trip.count444, 2    ; 3 uses
  %28 = shl nsw i64 %i.hw, 2                      ; 2 uses
  br i1 %i.hr, label %.preheader342.us.us.preheader, label %.preheader342.us.preheader

.preheader342.us.preheader:                       ; preds = %.preheader342.lr.ph.split.split.us.split
  %i.hy = mul i64 %i.ba, %i.hx
  %i.hz = mul i64 %i.bb, %wide.trip.count449
  %i.ia = mul i64 %i.bc, %wide.trip.count459
  %i.ib = mul i64 %i.ia, %wide.trip.count449
  %i.ic = getelementptr i8, ptr %i.fr, i64 %i.hy
  %i.id = getelementptr i8, ptr %i.ic, i64 20
  %i.ie = getelementptr i8, ptr %i.id, i64 %27
  %min.iters.check562 = icmp ult i32 %i.hs, 8
  %n.vec569 = and i64 %wide.trip.count444, 2147483640 ; 3 uses
  %cmp.n580 = icmp eq i64 %n.vec569, %wide.trip.count444
  %xtraiter = and i64 %wide.trip.count444, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.if = add nsw i64 %wide.trip.count444, -1
  br label %.preheader342.us

.preheader342.us.us.preheader:                    ; preds = %.preheader342.lr.ph.split.split.us.split
  %i.ig = mul i64 %i.ax, %i.hx
  %29 = mul i64 %i.ay, %wide.trip.count449
  %30 = mul i64 %i.az, %wide.trip.count459
  %31 = mul i64 %30, %wide.trip.count449
  %32 = add nuw nsw i64 %27, 20
  %33 = getelementptr i8, ptr %i.fr, i64 %i.ig
  %34 = getelementptr i8, ptr %33, i64 20
  %35 = getelementptr i8, ptr %34, i64 %27
  %min.iters.check = icmp ult i32 %i.hs, 8
  %n.vec = and i64 %wide.trip.count444, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count444
  %xtraiter588 = and i64 %wide.trip.count444, 1
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  %i.ih = add nsw i64 %wide.trip.count444, -1
  br label %.preheader342.us.us

.preheader342.us.us:                              ; preds = %.preheader342.us.us.preheader, %._crit_edge375.split.us.split381.us.us.us
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %._crit_edge375.split.us.split381.us.us.us ], [ 0, %.preheader342.us.us.preheader ] ; 3 uses
  %i.ii = mul i64 %28, %indvars.iv461             ; 3 uses
  %i.ij = add i64 %32, %i.ii
  %i.ik = add i64 %i.ii, 20
  %i.il = mul nsw i64 %indvars.iv461, %i.hw
  %36 = getelementptr i8, ptr %35, i64 %i.ii
  br label %.preheader341.us.us.us.us

.preheader341.us.us.us.us:                        ; preds = %._crit_edge369.split371.us.us.us.us.us, %.preheader342.us.us
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %._crit_edge369.split371.us.us.us.us.us ], [ 0, %.preheader342.us.us ] ; 4 uses
  %i.im = mul i64 %29, %indvars.iv456             ; 3 uses
  %i.in = add i64 %i.ij, %i.im
  %i.io = add i64 %i.ik, %i.im
  %i.ip = trunc nuw nsw i64 %indvars.iv456 to i32
  %i.iq = uitofp nneg i32 %i.ip to float
  %37 = getelementptr i8, ptr %36, i64 %i.im
  %i.ir = insertelement <2 x float> poison, float %i.iq, i64 0
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge367.split.us.us.us.us.us.us, %.preheader341.us.us.us.us
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %._crit_edge367.split.us.us.us.us.us.us ], [ 0, %.preheader341.us.us.us.us ] ; 4 uses
  %i.is = mul i64 %31, %indvars.iv451             ; 3 uses
  %scevgep = getelementptr i8, ptr %37, i64 %i.is
  %i.it = add i64 %i.in, %i.is                    ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.fp, i64 %i.it
  %i.iu = add i64 %i.io, %i.is                    ; 2 uses
  %scevgep541 = getelementptr i8, ptr %i.fp, i64 %i.iu
  %scevgep542 = getelementptr i8, ptr %i.fr, i64 %i.it
  %scevgep543 = getelementptr i8, ptr %i.fr, i64 %i.iu ; 2 uses
  %i.iv = mul nuw nsw i64 %indvars.iv451, %i.hu
  %i.iw = add nuw nsw i64 %i.iv, %indvars.iv456
  %i.ix = mul nuw nsw i64 %i.iw, %i.hv
  %i.iy = trunc nuw nsw i64 %indvars.iv451 to i32
  %i.iz = uitofp nneg i32 %i.iy to float
  %i.ja = insertelement <2 x float> %i.ir, float %i.iz, i64 1
  %bound0 = icmp ult ptr %scevgep543, %scevgep.a
  %bound1 = icmp ult ptr %scevgep541, %scevgep542
  %found.conflict = and i1 %bound0, %bound1
  %bound0546 = icmp ult ptr %scevgep543, %i.at
  %bound0544 = icmp ult ptr %i.au, %scevgep
  %found.conflict548 = and i1 %bound0546, %bound0544
  %38 = or i1 %found.conflict548, %stride.check
  %conflict.rdx = or i1 %found.conflict, %38
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.us.us.us.us.us.us, %.preheader.us.us.us.us.us
  %indvars.iv446 = phi i64 [ %indvars.iv.next447, %.loopexit.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us ] ; 3 uses
  %i.jb = add nuw nsw i64 %i.ix, %indvars.iv446
  %i.jc = mul nsw i64 %i.jb, %i.aw
  %i.jd = add nsw i64 %i.jc, %i.il                ; 6 uses
  %i.je = add nsw i64 %i.jd, 4                    ; 2 uses
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.je
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.jd
  %i.jh = load float, ptr %i.at, align 4, !tbaa !48
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jd
  %i.jj = load <2 x float>, ptr %i.jg, align 4, !tbaa !57
  %i.jk = fadd <2 x float> %i.jj, splat (float -5.000000e-01)
  %i.jl = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jm, <2 x float> splat (float 5.000000e-01))
  %i.jo = fadd <2 x float> %i.jn, %i.ja
  %i.jp = fdiv <2 x float> %i.jo, %i.hi
  store <2 x float> %i.jp, ptr %i.ji, align 4, !tbaa !57
  %i.jq = add nsw i64 %i.jd, 2                    ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !57 ; 2 uses
  %i.jt = fmul float %i.js, %i.js
  %i.ju = fmul float %i.jt, 4.000000e+00
  %.idx526 = shl nuw nsw i64 %indvars.iv446, 3
  %i.jv = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx526 ; 2 uses
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !57
  %i.jx = fmul float %i.jw, %i.ju
  %i.jy = fdiv float %i.jx, %i.hj
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.jq
  store float %i.jy, ptr %i.jz, align 4, !tbaa !57
  %i.ka = add nsw i64 %i.jd, 3                    ; 2 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !57 ; 2 uses
  %i.kd = fmul float %i.kc, %i.kc
  %i.ke = fmul float %i.kd, 4.000000e+00
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !57
  %i.kh = fmul float %i.kg, %i.ke
  %i.ki = fdiv float %i.kh, %i.hk
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ka
  store float %i.ki, ptr %i.kj, align 4, !tbaa !57
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.je
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !57 ; 4 uses
  store float %i.kl, ptr %i.jf, align 4, !tbaa !57
  br i1 %i.hp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.km = load float, ptr %i.au, align 8, !tbaa !40
  %i.kn = fcmp olt float %i.kl, %i.km
  %spec.store.select1.us.us.us.us.us.us = select i1 %i.kn, float 0.000000e+00, float %i.kl
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1211.us.us.us.us.us.us = phi float [ %spec.store.select1.us.us.us.us.us.us, %bb.bt ], [ %i.kl, %bb.bs ] ; 4 uses
  %i.ko = add nsw i64 %i.jd, 5                    ; 4 uses
  br i1 %i.ht, label %.lr.ph364.us.us.us.us.us.us.preheader, label %.loopexit.us.us.us.us.us.us

.lr.ph364.us.us.us.us.us.us.preheader:            ; preds = %bb.bu
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph364.us.us.us.us.us.us.preheader582, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph364.us.us.us.us.us.us.preheader
  %i.kp = load <1 x float>, ptr %i.au, align 8
  %broadcast.splat549 = shufflevector <1 x float> %i.kp, <1 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.1211.us.us.us.us.us.us, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kq = add nsw i64 %i.ko, %index               ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load = load <4 x float>, ptr %i.kr, align 4, !tbaa !57, !alias.scope !122
  %wide.load547 = load <4 x float>, ptr %i.ks, align 4, !tbaa !57, !alias.scope !122
  %i.kt = fmul <4 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.ku = fmul <4 x float> %broadcast.splat, %wide.load547 ; 2 uses
  %i.kv = fcmp ogt <4 x float> %i.kt, %broadcast.splat549
  %i.kw = fcmp ogt <4 x float> %i.ku, %broadcast.splat549
  %i.kx = select <4 x i1> %i.kv, <4 x float> %i.kt, <4 x float> zeroinitializer
  %i.ky = select <4 x i1> %i.kw, <4 x float> %i.ku, <4 x float> zeroinitializer
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.kq ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <4 x float> %i.kx, ptr %i.kz, align 4, !tbaa !57, !alias.scope !123, !noalias !124
  store <4 x float> %i.ky, ptr %i.la, align 4, !tbaa !57, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.us.us.us.us.us, label %.lr.ph364.us.us.us.us.us.us.preheader582

.lr.ph364.us.us.us.us.us.us.preheader582:         ; preds = %.lr.ph364.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv441.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph364.us.us.us.us.us.us.preheader ] ; 4 uses
  br i1 %lcmp.mod589.not, label %.lr.ph364.us.us.us.us.us.us.prol.loopexit, label %.lr.ph364.us.us.us.us.us.us.prol

.lr.ph364.us.us.us.us.us.us.prol:                 ; preds = %.lr.ph364.us.us.us.us.us.us.preheader582
  %i.lc = add nsw i64 %i.ko, %indvars.iv441.ph    ; 2 uses
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.lc
  %i.le = load float, ptr %i.ld, align 4, !tbaa !57
  %i.lf = fmul float %.1211.us.us.us.us.us.us, %i.le ; 2 uses
  %i.lg = load float, ptr %i.au, align 8, !tbaa !40
  %i.lh = fcmp ogt float %i.lf, %i.lg
  %i.li = select i1 %i.lh, float %i.lf, float 0.000000e+00
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.lc
  store float %i.li, ptr %i.lj, align 4, !tbaa !57
  %indvars.iv.next442.prol = or disjoint i64 %indvars.iv441.ph, 1
  br label %.lr.ph364.us.us.us.us.us.us.prol.loopexit

.lr.ph364.us.us.us.us.us.us.prol.loopexit:        ; preds = %.lr.ph364.us.us.us.us.us.us.prol, %.lr.ph364.us.us.us.us.us.us.preheader582
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph364.us.us.us.us.us.us.preheader582 ], [ %indvars.iv.next442.prol, %.lr.ph364.us.us.us.us.us.us.prol ]
  %i.lk = icmp eq i64 %indvars.iv441.ph, %i.ih
  br i1 %i.lk, label %.loopexit.us.us.us.us.us.us, label %.lr.ph364.us.us.us.us.us.us.preheader582.new

.lr.ph364.us.us.us.us.us.us.preheader582.new:     ; preds = %.lr.ph364.us.us.us.us.us.us.prol.loopexit
  %invariant.op = add i64 1, %i.ko
  br label %.lr.ph364.us.us.us.us.us.us

.lr.ph364.us.us.us.us.us.us:                      ; preds = %.lr.ph364.us.us.us.us.us.us, %.lr.ph364.us.us.us.us.us.us.preheader582.new
  %indvars.iv441 = phi i64 [ %indvars.iv441.unr, %.lr.ph364.us.us.us.us.us.us.preheader582.new ], [ %indvars.iv.next442.1, %.lr.ph364.us.us.us.us.us.us ] ; 3 uses
  %i.ll = add nsw i64 %i.ko, %indvars.iv441       ; 2 uses
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !57
  %i.lo = fmul float %.1211.us.us.us.us.us.us, %i.ln ; 2 uses
  %i.lp = load float, ptr %i.au, align 8, !tbaa !40
  %i.lq = fcmp ogt float %i.lo, %i.lp
  %i.lr = select i1 %i.lq, float %i.lo, float 0.000000e+00
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ll
  store float %i.lr, ptr %i.ls, align 4, !tbaa !57
  %.reass = add i64 %indvars.iv441, %invariant.op ; 2 uses
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %.reass
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !57
  %i.lv = fmul float %.1211.us.us.us.us.us.us, %i.lu ; 2 uses
  %i.lw = load float, ptr %i.au, align 8, !tbaa !40
  %i.lx = fcmp ogt float %i.lv, %i.lw
  %i.ly = select i1 %i.lx, float %i.lv, float 0.000000e+00
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %.reass
  store float %i.ly, ptr %i.lz, align 4, !tbaa !57
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 2 uses
  %exitcond445.not.1 = icmp eq i64 %indvars.iv.next442.1, %wide.trip.count444
  br i1 %exitcond445.not.1, label %.loopexit.us.us.us.us.us.us, label %.lr.ph364.us.us.us.us.us.us, !llvm.loop !100

.loopexit.us.us.us.us.us.us:                      ; preds = %.lr.ph364.us.us.us.us.us.us.prol.loopexit, %.lr.ph364.us.us.us.us.us.us, %middle.block, %bb.bu
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count449
  br i1 %exitcond450.not, label %._crit_edge367.split.us.us.us.us.us.us, label %bb.bs, !llvm.loop !101

._crit_edge367.split.us.us.us.us.us.us:           ; preds = %.loopexit.us.us.us.us.us.us
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count454
  br i1 %exitcond455.not, label %._crit_edge369.split371.us.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !102

._crit_edge369.split371.us.us.us.us.us:           ; preds = %._crit_edge367.split.us.us.us.us.us.us
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next457, %wide.trip.count459
  br i1 %exitcond460.not, label %._crit_edge375.split.us.split381.us.us.us, label %.preheader341.us.us.us.us, !llvm.loop !103

._crit_edge375.split.us.split381.us.us.us:        ; preds = %._crit_edge369.split371.us.us.us.us.us
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count464
  br i1 %exitcond465.not, label %._crit_edge383.split, label %.preheader342.us.us, !llvm.loop !104

.preheader342.us:                                 ; preds = %.preheader342.us.preheader, %._crit_edge375.split.us.split381.us387
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %._crit_edge375.split.us.split381.us387 ], [ 0, %.preheader342.us.preheader ] ; 3 uses
  %i.ma = mul i64 %28, %indvars.iv436             ; 2 uses
  %i.mb = mul nsw i64 %indvars.iv436, %i.hw
  %i.mc = getelementptr i8, ptr %i.ie, i64 %i.ma
  %i.md = getelementptr i8, ptr %i.fr, i64 %i.ma
  %i.me = getelementptr i8, ptr %i.md, i64 20
  br label %.preheader341.us.us385

.preheader341.us.us385:                           ; preds = %._crit_edge369.split371.us379.us, %.preheader342.us
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %._crit_edge369.split371.us379.us ], [ 0, %.preheader342.us ] ; 4 uses
  %i.mf = mul i64 %i.hz, %indvars.iv431           ; 2 uses
  %i.mg = trunc nuw nsw i64 %indvars.iv431 to i32
  %i.mh = uitofp nneg i32 %i.mg to float
  %i.mi = getelementptr i8, ptr %i.mc, i64 %i.mf
  %i.mj = getelementptr i8, ptr %i.me, i64 %i.mf
  %i.mk = insertelement <2 x float> poison, float %i.mh, i64 0
  br label %.preheader.us377.us

.preheader.us377.us:                              ; preds = %._crit_edge367.split.us.us, %.preheader341.us.us385
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %._crit_edge367.split.us.us ], [ 0, %.preheader341.us.us385 ] ; 4 uses
  %i.ml = mul i64 %i.ib, %indvars.iv426           ; 2 uses
  %scevgep559 = getelementptr i8, ptr %i.mi, i64 %i.ml
  %scevgep560 = getelementptr i8, ptr %i.mj, i64 %i.ml
  %i.mm = mul nuw nsw i64 %indvars.iv426, %i.hu
  %i.mn = add nuw nsw i64 %i.mm, %indvars.iv431
  %i.mo = mul nuw nsw i64 %i.mn, %i.hv
  %i.mp = trunc nuw nsw i64 %indvars.iv426 to i32
  %i.mq = uitofp nneg i32 %i.mp to float
  %i.mr = insertelement <2 x float> %i.mk, float %i.mq, i64 1
  %bound0564 = icmp ult ptr %scevgep560, %scevgep558
  %bound1565 = icmp ult ptr %i.au, %scevgep559
  %found.conflict566 = and i1 %bound0564, %bound1565
  %i.ms = or i1 %found.conflict566, %stride.check567
  br label %bb.bv

end_hunk_0
