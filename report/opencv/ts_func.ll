inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 704
loop-unroll.NumUnrolled: 778
begin_hunk_0_@_ZN6cvtest4normERKN2cv11_InputArrayEiS3_:bb.a
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ab
  %.pn162 = phi { ptr, i32 } [ %i.av, %bb.ab ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aw, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.kx

bb.ad:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %3, ptr %i.a, align 16, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef nonnull %i.a, ptr noundef nonnull %17, i32 noundef -1)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bd = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.af unwind label %bb.ah     ; 5 uses

bb.af:                                            ; preds = %bb.ae
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !40 ; 3 uses
  %i.bg = select i1 %i.x, i32 1, i32 2            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %spec.select.i = select i1 %i.x, i32 1, i32 3   ; 3 uses
  %.not32.i = icmp eq i64 %i.bd, 0
  %exitcond1243.not1521 = icmp eq i64 %i.bf, 0    ; 2 uses
  br i1 %.not32.i, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.af
  br i1 %exitcond1243.not1521, label %.split1131.us, label %.lr.ph29.i.preheader.preheader

.lr.ph29.i.preheader.preheader:                   ; preds = %.split.preheader
  %xtraiter2109 = and i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.bd, 1
  %unroll_iter2114 = and i64 %i.bd, -2
  %lcmp.mod2111.not = icmp eq i64 %xtraiter2109, 0
  %lcmp.mod2113 = trunc i64 %i.bd to i1
  br label %.lr.ph29.i.preheader

.split.us.preheader:                              ; preds = %bb.af
  br i1 %exitcond1243.not1521, label %.split1131.us, label %_ZN6cvtestL11normHammingEPKhmi.exit.us

.split.us:                                        ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.us
  %i.bj = add i64 %.0139.us1522, 1                ; 2 uses
  %exitcond1243.not = icmp eq i64 %i.bj, %i.bf
  br i1 %exitcond1243.not, label %.split1131.us, label %_ZN6cvtestL11normHammingEPKhmi.exit.us, !llvm.loop !1567

_ZN6cvtestL11normHammingEPKhmi.exit.us:           ; preds = %.split.us.preheader, %.split.us
  %.0139.us1522 = phi i64 [ %i.bj, %.split.us ], [ 0, %.split.us.preheader ]
  %i.bk = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %.split.us unwind label %.split1133.us, !llvm.loop !1567 ; 0 uses

.split1133.us:                                    ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.us
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.split:                                           ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit
  %i.bm = add i64 %.01391519, 1                   ; 2 uses
  %i.bn = sitofp i32 %.1.lcssa.i.lcssa to double
  %i.bo = fadd double %.01401518, %i.bn           ; 2 uses
  %exitcond1242.not = icmp eq i64 %i.bm, %i.bf
  br i1 %exitcond1242.not, label %.split1131.us, label %.lr.ph29.i.preheader, !llvm.loop !1567

.lr.ph29.i.preheader:                             ; preds = %.lr.ph29.i.preheader.preheader, %.split
  %.01391519 = phi i64 [ %i.bm, %.split ], [ 0, %.lr.ph29.i.preheader.preheader ]
  %.01401518 = phi double [ %i.bo, %.split ], [ 0.000000e+00, %.lr.ph29.i.preheader.preheader ]
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 3 uses
  br i1 %i.bi, label %.lr.ph29.i.epil.preheader, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.preheader, %._crit_edge.i.1
  %.01727.i = phi i64 [ %i.ch, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ] ; 3 uses
  %.02026.i = phi i32 [ %.1.lcssa.i.1, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ] ; 2 uses
  %niter2115 = phi i64 [ %niter2115.next.1, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01727.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16  ; 2 uses
  %.not23.i = icmp eq i8 %i.br, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph29.i
  %i.bs = zext i8 %i.br to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.bs, %.lr.ph.preheader.i ] ; 2 uses
  %.124.i = phi i32 [ %i.bw, %.lr.ph.i ], [ %.02026.i, %.lr.ph.preheader.i ]
  %i.bt = and i32 %.025.i, %spec.select.i
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = add nsw i32 %.124.i, %i.bv              ; 2 uses
  %i.bx = lshr i32 %.025.i, %i.bg                 ; 2 uses
  %.not.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1568

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph29.i
  %.1.lcssa.i = phi i32 [ %.02026.i, %.lr.ph29.i ], [ %i.bw, %.lr.ph.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01727.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16  ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.ca, 0
  br i1 %.not23.i.1, label %._crit_edge.i.1, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %._crit_edge.i
  %i.cb = zext i8 %i.ca to i32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.lr.ph.preheader.i.1
  %.025.i.1 = phi i32 [ %i.cg, %.lr.ph.i.1 ], [ %i.cb, %.lr.ph.preheader.i.1 ] ; 2 uses
  %.124.i.1 = phi i32 [ %i.cf, %.lr.ph.i.1 ], [ %.1.lcssa.i, %.lr.ph.preheader.i.1 ]
  %i.cc = and i32 %.025.i.1, %spec.select.i
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %.124.i.1, %i.ce            ; 2 uses
  %i.cg = lshr i32 %.025.i.1, %i.bg               ; 2 uses
  %.not.i.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !1568

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %.1.lcssa.i.1 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.cf, %.lr.ph.i.1 ] ; 3 uses
  %i.ch = add nuw i64 %.01727.i, 2                ; 2 uses
  %niter2115.next.1 = add nuw i64 %niter2115, 2   ; 2 uses
  %niter2115.ncmp.1 = icmp eq i64 %niter2115.next.1, %unroll_iter2114
  br i1 %niter2115.ncmp.1, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa, label %.lr.ph29.i, !llvm.loop !1569

_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.1
  br i1 %lcmp.mod2111.not, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph29.i.epil.preheader

.lr.ph29.i.epil.preheader:                        ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa, %.lr.ph29.i.preheader
  %.01727.i.epil.init = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %i.ch, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ]
  %.02026.i.epil.init = phi i32 [ 0, %.lr.ph29.i.preheader ], [ %.1.lcssa.i.1, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2113)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01727.i.epil.init
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16  ; 2 uses
  %.not23.i.epil = icmp eq i8 %i.cj, 0
  br i1 %.not23.i.epil, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph.preheader.i.epil

.lr.ph.preheader.i.epil:                          ; preds = %.lr.ph29.i.epil.preheader
  %i.ck = zext i8 %i.cj to i32
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.i.epil
  %.025.i.epil = phi i32 [ %i.cp, %.lr.ph.i.epil ], [ %i.ck, %.lr.ph.preheader.i.epil ] ; 2 uses
  %.124.i.epil = phi i32 [ %i.co, %.lr.ph.i.epil ], [ %.02026.i.epil.init, %.lr.ph.preheader.i.epil ]
  %i.cl = and i32 %.025.i.epil, %spec.select.i
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = add nsw i32 %.124.i.epil, %i.cn         ; 2 uses
  %i.cp = lshr i32 %.025.i.epil, %i.bg            ; 2 uses
  %.not.i.epil = icmp eq i32 %i.cp, 0
  br i1 %.not.i.epil, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !1568

_ZN6cvtestL11normHammingEPKhmi.exit.loopexit:     ; preds = %.lr.ph29.i.epil.preheader, %.lr.ph.i.epil, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa
  %.1.lcssa.i.lcssa = phi i32 [ %.1.lcssa.i.1, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ], [ %.02026.i.epil.init, %.lr.ph29.i.epil.preheader ], [ %i.co, %.lr.ph.i.epil ]
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %.split unwind label %.split1133, !llvm.loop !1567 ; 0 uses

bb.ag:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.split1133:                                       ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.split1131.us:                                    ; preds = %.split, %.split.us, %.split.preheader, %.split.us.preheader
  %.us-phi = phi double [ 0.000000e+00, %.split.us.preheader ], [ 0.000000e+00, %.split.us ], [ 0.000000e+00, %.split.preheader ], [ %i.bo, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.kw

bb.ai:                                            ; preds = %.split1133, %.split1133.us, %bb.ah, %bb.ag
  %.pn164.pn = phi { ptr, i32 } [ %i.cr, %bb.ag ], [ %i.cs, %bb.ah ], [ %i.ct, %.split1133 ], [ %i.bl, %.split1133.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.kx

bb.aj:                                            ; preds = %bb.n
  %27 = icmp eq i32 %1, 5
  %28 = select i1 %27, i32 4, i32 %1
  %i.cu = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.cu, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cx = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.cv, ptr noundef nonnull align 4 dereferenceable(52) %i.cw)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.cx, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.cy = load i32, ptr %4, align 8, !tbaa !45
  %i.cz = and i32 %i.cy, 4095
  switch i32 %i.cz, label %bb.ap [
    i32 0, label %bb.au
    i32 9, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.al, %bb.aj
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.ap:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1485) #31
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.at:                                            ; preds = %bb.aq
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %19, align 8, !tbaa !19   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.at
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !16
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.as
  %.pn = phi { ptr, i32 } [ %i.db, %bb.as ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %i.dc, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.kx

bb.au:                                            ; preds = %bb.an, %bb.an, %bb.ak
  switch i32 %28, label %bb.av [
    i32 4, label %bb.ba
    i32 2, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1486) #31
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.az:                                            ; preds = %bb.aw
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.az
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ay
  %.pn145 = phi { ptr, i32 } [ %i.di, %bb.ay ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.dj, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.kx

bb.ba:                                            ; preds = %bb.au, %bb.au, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %3, ptr %i.b, align 16, !tbaa !38
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.dp, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.dq, align 16, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %23, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull %i.b, ptr noundef nonnull %23, i32 noundef -1)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.dr = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.bc unwind label %bb.bf     ; 13 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ds = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40 ; 2 uses
  %i.du = load i32, ptr %3, align 8, !tbaa !45
  %i.dv = and i32 %i.du, 31
  %i.dw = load i32, ptr %23, align 16, !tbaa !45
  %i.dx = lshr i32 %i.dw, 5
  %i.dy = and i32 %i.dx, 127
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 232
  %i.ec = zext nneg i32 %i.dz to i64              ; 151 uses
  %exitcond.not1514 = icmp eq i64 %i.dt, 0
  br i1 %exitcond.not1514, label %._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit
  %i.ed = add i64 %.01381515, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %i.dt
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1570

.lr.ph:                                           ; preds = %bb.bc, %bb.bd
  %.01131516 = phi double [ %.1, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 192 uses
  %.01381515 = phi i64 [ %i.ed, %bb.bd ], [ 0, %bb.bc ]
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !53 ; 194 uses
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !53 ; 112 uses
  switch i32 %i.dv, label %bb.kn [
    i32 9, label %bb.bg
    i32 0, label %bb.bz
    i32 1, label %bb.cs
    i32 2, label %bb.dj
    i32 3, label %bb.ec
    i32 12, label %bb.et
    i32 4, label %bb.fm
    i32 10, label %bb.gd
    i32 11, label %bb.gw
    i32 5, label %bb.hn
    i32 6, label %bb.ie
    i32 7, label %bb.ix
    i32 8, label %bb.jw
  ]

bb.be:                                            ; preds = %bb.ba
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.bf:                                            ; preds = %bb.bb
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.bg:                                            ; preds = %.lr.ph
  %.not.i183 = icmp eq ptr %i.ef, null            ; 4 uses
  %i.ei = select i1 %.not.i183, i64 %i.ec, i64 1
  %.0.i = mul i64 %i.ei, %i.dr                    ; 23 uses
  %.not149.i = icmp eq i64 %.0.i, 0               ; 6 uses
  switch i32 %1, label %bb.bt [
    i32 1, label %bb.bh
    i32 2, label %bb.bn
  ]

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i183, label %.preheader97.i, label %.preheader100.i

.preheader100.i:                                  ; preds = %bb.bh
  br i1 %.not149.i, label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit, label %.preheader99.us.i.preheader

.preheader99.us.i.preheader:                      ; preds = %.preheader100.i
  %xtraiter2080 = and i64 %.0.i, 1
  %i.ej = icmp eq i64 %.0.i, 1
  %unroll_iter2085 = and i64 %.0.i, -2
  %lcmp.mod2082.not = icmp eq i64 %xtraiter2080, 0
  %lcmp.mod2084 = trunc i64 %.0.i to i1
  br label %.preheader99.us.i

.preheader99.us.i:                                ; preds = %.preheader99.us.i.preheader, %._crit_edge.us123.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %._crit_edge.us123.i ], [ 0, %.preheader99.us.i.preheader ] ; 2 uses
  %.189118.us.i = phi double [ %.391.us.i.lcssa, %._crit_edge.us123.i ], [ %.01131516, %.preheader99.us.i.preheader ] ; 2 uses
  %invariant.gep.us122.i = getelementptr i8, ptr %i.ee, i64 %indvars.iv163.i ; 3 uses
  br i1 %i.ej, label %.epil.preheader2079, label %.preheader99.us.i.new

.preheader99.us.i.new:                            ; preds = %.preheader99.us.i, %bb.bl
  %.1115.us.i = phi i64 [ %i.ez, %bb.bl ], [ 0, %.preheader99.us.i ] ; 4 uses
  %.290114.us.i = phi double [ %.391.us.i.1, %bb.bl ], [ %.189118.us.i, %.preheader99.us.i ] ; 3 uses
  %niter2086 = phi i64 [ %niter2086.next.1, %bb.bl ], [ 0, %.preheader99.us.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.1115.us.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !16
  %.not76.us.i = icmp eq i8 %i.el, 0
  br i1 %.not76.us.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.preheader99.us.i.new
  %i.em = mul i64 %.1115.us.i, %i.ec
  %gep.us121.i = getelementptr i8, ptr %invariant.gep.us122.i, i64 %i.em
  %i.en = load i8, ptr %gep.us121.i, align 1, !tbaa !313, !range !633, !noundef !634
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = uitofp i1 %i.eo to double               ; 2 uses
  %i.eq = fcmp olt double %.290114.us.i, %i.ep
  %.sroa.speculated.us.i = select i1 %i.eq, double %i.ep, double %.290114.us.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.preheader99.us.i.new
  %.391.us.i = phi double [ %.290114.us.i, %.preheader99.us.i.new ], [ %.sroa.speculated.us.i, %bb.bi ] ; 3 uses
  %i.er = or disjoint i64 %.1115.us.i, 1          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !16
  %.not76.us.i.1 = icmp eq i8 %i.et, 0
  br i1 %.not76.us.i.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eu = mul i64 %i.er, %i.ec
  %gep.us121.i.1 = getelementptr i8, ptr %invariant.gep.us122.i, i64 %i.eu
  %i.ev = load i8, ptr %gep.us121.i.1, align 1, !tbaa !313, !range !633, !noundef !634
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = uitofp i1 %i.ew to double               ; 2 uses
  %i.ey = fcmp olt double %.391.us.i, %i.ex
  %.sroa.speculated.us.i.1 = select i1 %i.ey, double %i.ex, double %.391.us.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.391.us.i.1 = phi double [ %.391.us.i, %bb.bj ], [ %.sroa.speculated.us.i.1, %bb.bk ] ; 3 uses
  %i.ez = add nuw i64 %.1115.us.i, 2              ; 2 uses
  %niter2086.next.1 = add i64 %niter2086, 2       ; 2 uses
  %niter2086.ncmp.1 = icmp eq i64 %niter2086.next.1, %unroll_iter2085
  br i1 %niter2086.ncmp.1, label %._crit_edge.us123.i.unr-lcssa, label %.preheader99.us.i.new, !llvm.loop !1571

._crit_edge.us123.i.unr-lcssa:                    ; preds = %bb.bl
  br i1 %lcmp.mod2082.not, label %._crit_edge.us123.i, label %.epil.preheader2079

.epil.preheader2079:                              ; preds = %._crit_edge.us123.i.unr-lcssa, %.preheader99.us.i
  %.1115.us.i.epil.init = phi i64 [ 0, %.preheader99.us.i ], [ %i.ez, %._crit_edge.us123.i.unr-lcssa ] ; 2 uses
  %.290114.us.i.epil.init = phi double [ %.189118.us.i, %.preheader99.us.i ], [ %.391.us.i.1, %._crit_edge.us123.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod2084)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.1115.us.i.epil.init
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %.not76.us.i.epil = icmp eq i8 %i.fb, 0
  br i1 %.not76.us.i.epil, label %._crit_edge.us123.i, label %bb.bm

bb.bm:                                            ; preds = %.epil.preheader2079
  %i.fc = mul i64 %.1115.us.i.epil.init, %i.ec
  %gep.us121.i.epil = getelementptr i8, ptr %invariant.gep.us122.i, i64 %i.fc
  %i.fd = load i8, ptr %gep.us121.i.epil, align 1, !tbaa !313, !range !633, !noundef !634
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = uitofp i1 %i.fe to double               ; 2 uses
  %i.fg = fcmp olt double %.290114.us.i.epil.init, %i.ff
  %.sroa.speculated.us.i.epil = select i1 %i.fg, double %i.ff, double %.290114.us.i.epil.init
  br label %._crit_edge.us123.i

._crit_edge.us123.i:                              ; preds = %.epil.preheader2079, %bb.bm, %._crit_edge.us123.i.unr-lcssa
  %.391.us.i.lcssa = phi double [ %.391.us.i.1, %._crit_edge.us123.i.unr-lcssa ], [ %.290114.us.i.epil.init, %.epil.preheader2079 ], [ %.sroa.speculated.us.i.epil, %bb.bm ] ; 2 uses
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.ec
  br i1 %exitcond167.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit, label %.preheader99.us.i, !llvm.loop !1572

.preheader97.i:                                   ; preds = %bb.bh
  br i1 %.not149.i, label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit, label %.lr.ph127.i.preheader

.lr.ph127.i.preheader:                            ; preds = %.preheader97.i
  %xtraiter2087 = and i64 %.0.i, 1
  %i.fh = icmp eq i64 %.0.i, 1
  br i1 %i.fh, label %.lr.ph127.i.epil.preheader, label %.lr.ph127.i.preheader.new

.lr.ph127.i.preheader.new:                        ; preds = %.lr.ph127.i.preheader
  %unroll_iter2092 = and i64 %.0.i, -2
  br label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i, %.lr.ph127.i.preheader.new
  %.064126.i = phi i64 [ 0, %.lr.ph127.i.preheader.new ], [ %i.ft, %.lr.ph127.i ] ; 3 uses
  %.088125.i = phi double [ %.01131516, %.lr.ph127.i.preheader.new ], [ %.sroa.speculated79.i.1, %.lr.ph127.i ] ; 2 uses
  %niter2093 = phi i64 [ 0, %.lr.ph127.i.preheader.new ], [ %niter2093.next.1, %.lr.ph127.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.064126.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !313, !range !633, !noundef !634
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = uitofp i1 %i.fk to double               ; 2 uses
  %i.fm = fcmp olt double %.088125.i, %i.fl
  %.sroa.speculated79.i = select i1 %i.fm, double %i.fl, double %.088125.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.064126.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !313, !range !633, !noundef !634
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = uitofp i1 %i.fq to double               ; 2 uses
  %i.fs = fcmp olt double %.sroa.speculated79.i, %i.fr
  %.sroa.speculated79.i.1 = select i1 %i.fs, double %i.fr, double %.sroa.speculated79.i ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6cvtest4normERKN2cv11_InputArrayEiS3_:bb.a
  %.064126.i994.epil.init = phi i64 [ 0, %.lr.ph127.i993.preheader ], [ %i.bhs, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1598.unr-lcssa ]
  %.088125.i995.epil.init = phi double [ %.01131516, %.lr.ph127.i993.preheader ], [ %.sroa.speculated79.i996.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1598.unr-lcssa ] ; 2 uses
  %lcmp.mod1640 = trunc i64 %.0.i948 to i1
  call void @llvm.assume(i1 %lcmp.mod1640)
  %i.bsm = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %.064126.i994.epil.init
  %i.bsn = load i16, ptr %i.bsm, align 2, !tbaa !1222
  %i.bso = zext i16 %i.bsn to i32
  %i.bsp = shl nuw i32 %i.bso, 16
  %i.bsq = bitcast i32 %i.bsp to float
  %i.bsr = call float @llvm.fabs.f32(float %i.bsq)
  %i.bss = fpext float %i.bsr to double           ; 2 uses
  %i.bst = fcmp olt double %.088125.i995.epil.init, %i.bss
  %.sroa.speculated79.i996.epil = select i1 %i.bst, double %i.bss, double %.088125.i995.epil.init
  br label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit

_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1600.unr-lcssa: ; preds = %.lr.ph.i969
  %lcmp.mod1632.not = icmp eq i64 %xtraiter1631, 0
  br i1 %lcmp.mod1632.not, label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit, label %.lr.ph.i969.epil.preheader

.lr.ph.i969.epil.preheader:                       ; preds = %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1600.unr-lcssa, %.lr.ph.i969.preheader
  %.2113.i970.epil.init = phi i64 [ 0, %.lr.ph.i969.preheader ], [ %i.bjs, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1600.unr-lcssa ]
  %.492112.i971.epil.init = phi double [ %.01131516, %.lr.ph.i969.preheader ], [ %i.bjr, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1600.unr-lcssa ]
  %lcmp.mod1634 = trunc i64 %.0.i948 to i1
  call void @llvm.assume(i1 %lcmp.mod1634)
  %i.bsu = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %.2113.i970.epil.init
  %i.bsv = load i16, ptr %i.bsu, align 2, !tbaa !1222
  %i.bsw = zext i16 %i.bsv to i32
  %i.bsx = shl nuw i32 %i.bsw, 16
  %i.bsy = bitcast i32 %i.bsx to float
  %i.bsz = call float @llvm.fabs.f32(float %i.bsy)
  %i.bta = fpext float %i.bsz to double
  %i.btb = fadd double %.492112.i971.epil.init, %i.bta
  br label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit

_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit:           ; preds = %._crit_edge.us.i963, %.lr.ph.i969.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1600.unr-lcssa, %._crit_edge.us123.i988, %.lr.ph127.i993.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1598.unr-lcssa, %._crit_edge.us138.i1012, %.lr.ph142.i1017.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1596.unr-lcssa, %._crit_edge.us.i935, %_ZNK2cv6hfloatcvfEv.exit81.i, %._crit_edge.us133.i, %_ZNK2cv6hfloatcvfEv.exit.i, %._crit_edge.us148.i, %_ZNK2cv6hfloatcvfEv.exit85.i, %._crit_edge.us.i868, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1588.unr-lcssa, %.lr.ph.i874.epil, %._crit_edge.us123.i893, %.lr.ph127.i898.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1586.unr-lcssa, %._crit_edge.us138.i917, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1584.unr-lcssa, %.lr.ph142.i922.epil, %._crit_edge.us.i794, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1582.unr-lcssa, %.lr.ph.i800.epil, %._crit_edge.us123.i819, %.lr.ph127.i824.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1580.unr-lcssa, %._crit_edge.us138.i843, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1578.unr-lcssa, %.lr.ph142.i848.epil, %._crit_edge.us.i720, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1576.unr-lcssa, %.lr.ph.i726.epil, %._crit_edge.us123.i745, %.lr.ph127.i750.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1574.unr-lcssa, %._crit_edge.us138.i769, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1572.unr-lcssa, %.lr.ph142.i774.epil, %._crit_edge.us.i646, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1570.unr-lcssa, %.lr.ph.i652.epil, %._crit_edge.us123.i671, %.lr.ph127.i676.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1568.unr-lcssa, %._crit_edge.us138.i695, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1566.unr-lcssa, %.lr.ph142.i700.epil, %._crit_edge.us.i572, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1564.unr-lcssa, %.lr.ph.i578.epil, %._crit_edge.us123.i597, %.lr.ph127.i602.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1562.unr-lcssa, %._crit_edge.us138.i621, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1560.unr-lcssa, %.lr.ph142.i626.epil, %._crit_edge.us.i498, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1558.unr-lcssa, %.lr.ph.i504.epil, %._crit_edge.us123.i523, %.lr.ph127.i528.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1556.unr-lcssa, %._crit_edge.us138.i547, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1554.unr-lcssa, %.lr.ph142.i552.epil, %._crit_edge.us.i424, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1552.unr-lcssa, %.lr.ph.i430.epil, %._crit_edge.us123.i449, %.lr.ph127.i454.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1550.unr-lcssa, %._crit_edge.us138.i473, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1548.unr-lcssa, %.lr.ph142.i478.epil, %._crit_edge.us.i350, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1546.unr-lcssa, %.lr.ph.i356.epil, %._crit_edge.us123.i375, %.lr.ph127.i380.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1544.unr-lcssa, %._crit_edge.us138.i399, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1542.unr-lcssa, %.lr.ph142.i404.epil, %._crit_edge.us.i276, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1540.unr-lcssa, %.lr.ph.i282.epil, %._crit_edge.us123.i301, %.lr.ph127.i306.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1538.unr-lcssa, %._crit_edge.us138.i325, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1536.unr-lcssa, %.lr.ph142.i330.epil, %._crit_edge.us.i202, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1534.unr-lcssa, %.lr.ph.i208.epil, %._crit_edge.us123.i227, %.lr.ph127.i232.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1532.unr-lcssa, %._crit_edge.us138.i251, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1530.unr-lcssa, %.lr.ph142.i256.epil, %._crit_edge.us.i, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1528.unr-lcssa, %.lr.ph.i185.epil, %._crit_edge.us123.i, %.lr.ph127.i.epil.preheader, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1526.unr-lcssa, %._crit_edge.us138.i, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit.unr-lcssa, %.lr.ph142.i.epil, %.preheader.i1015, %.preheader95.i998, %.preheader102.i967, %.preheader105.i949, %.preheader97.i991, %.preheader100.i973, %.preheader.i946, %.preheader105.i941, %.preheader112.i, %.preheader115.i, %.preheader107.i, %.preheader110.i, %.preheader.i920, %.preheader95.i903, %.preheader102.i872, %.preheader105.i854, %.preheader97.i896, %.preheader100.i878, %.preheader.i846, %.preheader95.i829, %.preheader102.i798, %.preheader105.i780, %.preheader97.i822, %.preheader100.i804, %.preheader.i772, %.preheader95.i755, %.preheader102.i724, %.preheader105.i706, %.preheader97.i748, %.preheader100.i730, %.preheader.i698, %.preheader95.i681, %.preheader102.i650, %.preheader105.i632, %.preheader97.i674, %.preheader100.i656, %.preheader.i624, %.preheader95.i607, %.preheader102.i576, %.preheader105.i558, %.preheader97.i600, %.preheader100.i582, %.preheader.i550, %.preheader95.i533, %.preheader102.i502, %.preheader105.i484, %.preheader97.i526, %.preheader100.i508, %.preheader.i476, %.preheader95.i459, %.preheader102.i428, %.preheader105.i410, %.preheader97.i452, %.preheader100.i434, %.preheader.i402, %.preheader95.i385, %.preheader102.i354, %.preheader105.i336, %.preheader97.i378, %.preheader100.i360, %.preheader.i328, %.preheader95.i311, %.preheader102.i280, %.preheader105.i262, %.preheader97.i304, %.preheader100.i286, %.preheader.i254, %.preheader95.i237, %.preheader102.i206, %.preheader105.i188, %.preheader97.i230, %.preheader100.i212, %.preheader.i, %.preheader95.i, %.preheader102.i, %.preheader105.i, %.preheader97.i, %.preheader100.i
  %.1 = phi double [ %.11.us.i915.lcssa, %._crit_edge.us138.i917 ], [ %i.bsl, %.lr.ph142.i1017.epil.preheader ], [ %.11.us.i.lcssa, %._crit_edge.us138.i ], [ %.11.us.i249.lcssa, %._crit_edge.us138.i251 ], [ %.11.us.i323.lcssa, %._crit_edge.us138.i325 ], [ %.11.us.i397.lcssa, %._crit_edge.us138.i399 ], [ %.11.us.i471.lcssa, %._crit_edge.us138.i473 ], [ %.11.us.i545.lcssa, %._crit_edge.us138.i547 ], [ %.11.us.i619.lcssa, %._crit_edge.us138.i621 ], [ %.11.us.i693.lcssa, %._crit_edge.us138.i695 ], [ %.11.us.i767.lcssa, %._crit_edge.us138.i769 ], [ %.11.us.i841.lcssa, %._crit_edge.us138.i843 ], [ %.01131516, %.preheader102.i ], [ %.11.us.i945, %._crit_edge.us148.i ], [ %.sroa.speculated89.i, %_ZNK2cv6hfloatcvfEv.exit.i ], [ %.01131516, %.preheader105.i ], [ %i.bey, %_ZNK2cv6hfloatcvfEv.exit81.i ], [ %.01131516, %.preheader.i ], [ %.01131516, %.preheader95.i ], [ %.7.us.i933, %._crit_edge.us.i935 ], [ %.01131516, %.preheader97.i ], [ %.01131516, %.preheader100.i ], [ %.3101.us.i, %._crit_edge.us133.i ], [ %.01131516, %.preheader102.i206 ], [ %.11.us.i1010.lcssa, %._crit_edge.us138.i1012 ], [ %.sroa.speculated79.i996.epil, %.lr.ph127.i993.epil.preheader ], [ %.01131516, %.preheader105.i188 ], [ %i.btb, %.lr.ph.i969.epil.preheader ], [ %.01131516, %.preheader.i254 ], [ %.01131516, %.preheader95.i237 ], [ %i.blz, %.lr.ph142.i.epil ], [ %.01131516, %.preheader97.i230 ], [ %.01131516, %.preheader100.i212 ], [ %.391.us.i986, %._crit_edge.us123.i988 ], [ %.01131516, %.preheader102.i280 ], [ %.sroa.speculated79.i.epil, %.lr.ph127.i.epil.preheader ], [ %.391.us.i.lcssa, %._crit_edge.us123.i ], [ %.01131516, %.preheader105.i262 ], [ %.7.us.i.lcssa, %._crit_edge.us.i ], [ %.01131516, %.preheader.i328 ], [ %.01131516, %.preheader95.i311 ], [ %i.bmp, %.lr.ph142.i256.epil ], [ %.01131516, %.preheader97.i304 ], [ %.01131516, %.preheader100.i286 ], [ %i.bmk, %.lr.ph.i185.epil ], [ %.01131516, %.preheader102.i354 ], [ %.sroa.speculated79.i235.epil, %.lr.ph127.i232.epil.preheader ], [ %.391.us.i225.lcssa, %._crit_edge.us123.i227 ], [ %.01131516, %.preheader105.i336 ], [ %.7.us.i200.lcssa, %._crit_edge.us.i202 ], [ %.01131516, %.preheader.i402 ], [ %.01131516, %.preheader95.i385 ], [ %i.bnd, %.lr.ph142.i330.epil ], [ %.01131516, %.preheader97.i378 ], [ %.01131516, %.preheader100.i360 ], [ %i.bmy, %.lr.ph.i208.epil ], [ %.01131516, %.preheader102.i428 ], [ %.sroa.speculated79.i309.epil, %.lr.ph127.i306.epil.preheader ], [ %.391.us.i299, %._crit_edge.us123.i301 ], [ %.01131516, %.preheader105.i410 ], [ %.7.us.i274.lcssa, %._crit_edge.us.i276 ], [ %.01131516, %.preheader.i476 ], [ %.01131516, %.preheader95.i459 ], [ %i.bnt, %.lr.ph142.i404.epil ], [ %.01131516, %.preheader97.i452 ], [ %.01131516, %.preheader100.i434 ], [ %i.bno, %.lr.ph.i282.epil ], [ %.01131516, %.preheader102.i502 ], [ %.sroa.speculated79.i383.epil, %.lr.ph127.i380.epil.preheader ], [ %.391.us.i373.lcssa, %._crit_edge.us123.i375 ], [ %.01131516, %.preheader105.i484 ], [ %.7.us.i348.lcssa, %._crit_edge.us.i350 ], [ %.01131516, %.preheader.i550 ], [ %.01131516, %.preheader95.i533 ], [ %i.boh, %.lr.ph142.i478.epil ], [ %.01131516, %.preheader97.i526 ], [ %.01131516, %.preheader100.i508 ], [ %i.boc, %.lr.ph.i356.epil ], [ %.01131516, %.preheader102.i576 ], [ %.sroa.speculated79.i457.epil, %.lr.ph127.i454.epil.preheader ], [ %.391.us.i447, %._crit_edge.us123.i449 ], [ %.01131516, %.preheader105.i558 ], [ %.7.us.i422.lcssa, %._crit_edge.us.i424 ], [ %.01131516, %.preheader.i624 ], [ %.01131516, %.preheader95.i607 ], [ %i.box, %.lr.ph142.i552.epil ], [ %.01131516, %.preheader97.i600 ], [ %.01131516, %.preheader100.i582 ], [ %i.bos, %.lr.ph.i430.epil ], [ %.01131516, %.preheader102.i650 ], [ %.sroa.speculated79.i531.epil, %.lr.ph127.i528.epil.preheader ], [ %.391.us.i521.lcssa, %._crit_edge.us123.i523 ], [ %.01131516, %.preheader105.i632 ], [ %.7.us.i496.lcssa, %._crit_edge.us.i498 ], [ %.01131516, %.preheader.i698 ], [ %.01131516, %.preheader95.i681 ], [ %i.bpl, %.lr.ph142.i626.epil ], [ %.01131516, %.preheader97.i674 ], [ %.01131516, %.preheader100.i656 ], [ %i.bpg, %.lr.ph.i504.epil ], [ %.01131516, %.preheader102.i724 ], [ %.sroa.speculated79.i605.epil, %.lr.ph127.i602.epil.preheader ], [ %.391.us.i595, %._crit_edge.us123.i597 ], [ %.01131516, %.preheader105.i706 ], [ %.7.us.i570.lcssa, %._crit_edge.us.i572 ], [ %.01131516, %.preheader.i772 ], [ %.01131516, %.preheader95.i755 ], [ %i.bqb, %.lr.ph142.i700.epil ], [ %.01131516, %.preheader97.i748 ], [ %.01131516, %.preheader100.i730 ], [ %i.bpw, %.lr.ph.i578.epil ], [ %.01131516, %.preheader102.i798 ], [ %.sroa.speculated79.i679.epil, %.lr.ph127.i676.epil.preheader ], [ %.391.us.i669.lcssa, %._crit_edge.us123.i671 ], [ %.01131516, %.preheader105.i780 ], [ %.7.us.i644.lcssa, %._crit_edge.us.i646 ], [ %.01131516, %.preheader.i846 ], [ %.01131516, %.preheader95.i829 ], [ %i.bqp, %.lr.ph142.i774.epil ], [ %.01131516, %.preheader97.i822 ], [ %.01131516, %.preheader100.i804 ], [ %i.bqk, %.lr.ph.i652.epil ], [ %.01131516, %.preheader102.i872 ], [ %.sroa.speculated79.i753.epil, %.lr.ph127.i750.epil.preheader ], [ %.391.us.i743, %._crit_edge.us123.i745 ], [ %.01131516, %.preheader105.i854 ], [ %.7.us.i718.lcssa, %._crit_edge.us.i720 ], [ %.01131516, %.preheader.i920 ], [ %.01131516, %.preheader95.i903 ], [ %i.brf, %.lr.ph142.i848.epil ], [ %.01131516, %.preheader97.i896 ], [ %.01131516, %.preheader100.i878 ], [ %i.bra, %.lr.ph.i726.epil ], [ %.01131516, %.preheader112.i ], [ %.sroa.speculated79.i827.epil, %.lr.ph127.i824.epil.preheader ], [ %.391.us.i817, %._crit_edge.us123.i819 ], [ %.01131516, %.preheader115.i ], [ %.7.us.i792.lcssa, %._crit_edge.us.i794 ], [ %.01131516, %.preheader.i946 ], [ %.01131516, %.preheader105.i941 ], [ %i.bru, %.lr.ph142.i922.epil ], [ %.01131516, %.preheader107.i ], [ %.01131516, %.preheader110.i ], [ %i.brq, %.lr.ph.i800.epil ], [ %.01131516, %.preheader102.i967 ], [ %.sroa.speculated79.i901.epil, %.lr.ph127.i898.epil.preheader ], [ %.391.us.i891.lcssa, %._crit_edge.us123.i893 ], [ %.01131516, %.preheader105.i949 ], [ %.7.us.i866.lcssa, %._crit_edge.us.i868 ], [ %.01131516, %.preheader.i1015 ], [ %.01131516, %.preheader95.i998 ], [ %i.bgm, %_ZNK2cv6hfloatcvfEv.exit85.i ], [ %.01131516, %.preheader97.i991 ], [ %.01131516, %.preheader100.i973 ], [ %i.bsd, %.lr.ph.i874.epil ], [ %i.jn, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit.unr-lcssa ], [ %.sroa.speculated79.i.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1526.unr-lcssa ], [ %i.hp, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1528.unr-lcssa ], [ %i.ob, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1530.unr-lcssa ], [ %.sroa.speculated79.i235.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1532.unr-lcssa ], [ %i.mk, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1534.unr-lcssa ], [ %i.sk, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1536.unr-lcssa ], [ %.sroa.speculated79.i309.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1538.unr-lcssa ], [ %i.qu, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1540.unr-lcssa ], [ %i.wy, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1542.unr-lcssa ], [ %.sroa.speculated79.i383.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1544.unr-lcssa ], [ %i.vh, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1546.unr-lcssa ], [ %i.abh, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1548.unr-lcssa ], [ %.sroa.speculated79.i457.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1550.unr-lcssa ], [ %i.zr, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1552.unr-lcssa ], [ %i.afv, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1554.unr-lcssa ], [ %.sroa.speculated79.i531.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1556.unr-lcssa ], [ %i.aee, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1558.unr-lcssa ], [ %i.ake, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1560.unr-lcssa ], [ %.sroa.speculated79.i605.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1562.unr-lcssa ], [ %i.aio, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1564.unr-lcssa ], [ %i.aos, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1566.unr-lcssa ], [ %.sroa.speculated79.i679.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1568.unr-lcssa ], [ %i.anb, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1570.unr-lcssa ], [ %i.atb, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1572.unr-lcssa ], [ %.sroa.speculated79.i753.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1574.unr-lcssa ], [ %i.arl, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1576.unr-lcssa ], [ %i.axk, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1578.unr-lcssa ], [ %.sroa.speculated79.i827.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1580.unr-lcssa ], [ %i.avu, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1582.unr-lcssa ], [ %i.bbr, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1584.unr-lcssa ], [ %.sroa.speculated79.i901.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1586.unr-lcssa ], [ %i.bah, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1588.unr-lcssa ], [ %i.blm, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1596.unr-lcssa ], [ %.sroa.speculated79.i996.1, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1598.unr-lcssa ], [ %i.bjr, %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit.loopexit1600.unr-lcssa ], [ %.7.us.i961.lcssa, %._crit_edge.us.i963 ] ; 2 uses
  %i.btc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %24)
          to label %bb.bd unwind label %bb.ks, !llvm.loop !1570 ; 0 uses

bb.ks:                                            ; preds = %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit
  %i.btd = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

._crit_edge:                                      ; preds = %bb.bd, %bb.bc
  %.0113.lcssa = phi double [ 0.000000e+00, %bb.bc ], [ %.1, %bb.bd ] ; 2 uses
  %i.bte = icmp eq i32 %1, 4
  br i1 %i.bte, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %._crit_edge
  %i.btf = call double @sqrt(double noundef %.0113.lcssa) #30
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %._crit_edge
  %.2 = phi double [ %i.btf, %bb.kt ], [ %.0113.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.btg = getelementptr inbounds nuw i8, ptr %23, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.btg) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.kw

bb.kv:                                            ; preds = %bb.bf, %bb.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023, %bb.be
  %.pn148.pn.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.be ], [ %i.eh, %bb.bf ], [ %.pn148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1023 ], [ %i.btd, %bb.ks ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.bth = getelementptr inbounds nuw i8, ptr %23, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bth) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku, %.split1131.us, %bb.t, %bb.h
  %.0 = phi double [ %i.s, %bb.h ], [ %.us-phi, %.split1131.us ], [ %i.ap, %bb.t ], [ %.2, %bb.ku ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret double %.0

bb.kx:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.kv, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w, %bb.m, %bb.j
  %.pn169.pn.pn = phi { ptr, i32 } [ %.pn169.pn, %bb.m ], [ %.pn164.pn, %bb.ai ], [ %.pn162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn158.pn.pn, %bb.w ], [ %i.u, %bb.j ], [ %.pn148.pn.pn.pn, %bb.kv ], [ %.pn145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %i.da, %bb.ao ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #30
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.i
  %.pn169.pn.pn.pn = phi { ptr, i32 } [ %.pn169.pn.pn, %bb.kx ], [ %i.t, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn169.pn.pn.pn
}

declare void @_ZN2cv11bitwise_andERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN6cvtest4normERKN2cv11_InputArrayES3_iS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %24 = alloca [1 x %"class.cv::Mat"], align 16   ; 9 uses
  %25 = alloca %"class.cv::NAryMatIterator", align 8 ; 7 uses
  %26 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %27 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::allocator", align 1   ; 3 uses
  %32 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::allocator", align 1   ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca [4 x ptr], align 16               ; 8 uses
  %37 = alloca [3 x %"class.cv::Mat"], align 16   ; 18 uses
  %38 = alloca %"class.cv::NAryMatIterator", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::allocator", align 1   ; 3 uses
  %41 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !1710
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36, !noalias !1710
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.g = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.h = icmp eq i32 %i.g, 65536
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36, !noalias !1713
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %_ZNK2cv11_InputArray6getMatEi.exit210 unwind label %bb.o

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit210 unwind label %bb.o

_ZNK2cv11_InputArray6getMatEi.exit210:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.k = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc211 unwind label %bb.p

.noexc211:                                        ; preds = %_ZNK2cv11_InputArray6getMatEi.exit210
  %i.l = icmp eq i32 %i.k, 65536
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc211
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36, !noalias !1716
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %_ZNK2cv11_InputArray6getMatEi.exit214 unwind label %bb.p

bb.g:                                             ; preds = %.noexc211
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit214 unwind label %bb.p

_ZNK2cv11_InputArray6getMatEi.exit214:            ; preds = %bb.f, %bb.g
  %i.o = and i32 %2, 8
  %.not.not = icmp eq i32 %i.o, 0
  %i.p = and i32 %2, -9                           ; 13 uses
  %i.q = icmp eq i32 %i.p, 6                      ; 2 uses
  %i.r = and i32 %2, -10
  %or.cond = icmp eq i32 %i.r, 6
  br i1 %or.cond, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit214
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !1565
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !1566
  store i32 16842752, ptr %16, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %12, ptr %i.u, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !1565
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !1566
  store i32 16842752, ptr %17, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %13, ptr %i.x, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.z, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !33
  store ptr %15, ptr %i.y, align 8, !tbaa !36
  %i.aa = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv11bitwise_xorERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.ab = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  br i1 %i.ab, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !1565
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 20
  store i32 0, ptr %i.ad, align 4, !tbaa !1566
  store i32 16842752, ptr %19, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %15, ptr %i.ae, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.af, align 8, !tbaa !1565
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.ag, align 4, !tbaa !1566
  store i32 16842752, ptr %20, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %14, ptr %i.ah, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i64 0, ptr %i.aj, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !33
  store ptr %15, ptr %i.ai, align 8, !tbaa !36
  %i.ak = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv11bitwise_andERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.t

bb.o:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.mc

bb.p:                                             ; preds = %bb.g, %bb.f, %_ZNK2cv11_InputArray6getMatEi.exit210
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.q:                                             ; preds = %bb.i, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.af

bb.r:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.af

bb.t:                                             ; preds = %bb.k, %bb.n
  %i.aq = load i32, ptr %15, align 8, !tbaa !45
  %i.ar = and i32 %i.aq, 31
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1567) #31
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.y:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %.pn195 = phi { ptr, i32 } [ %i.at, %bb.x ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.au, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.af

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %15, ptr %i.a, align 16, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull %i.a, ptr noundef nonnull %24, i32 noundef -1)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bb = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.ab unwind label %bb.ad     ; 5 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bc = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !40 ; 3 uses
  %i.be = select i1 %i.q, i32 1, i32 2            ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %24, i64 24
  %spec.select.i = select i1 %i.q, i32 1, i32 3   ; 3 uses
  %.not32.i = icmp eq i64 %i.bb, 0
  %exitcond1202.not1543 = icmp eq i64 %i.bd, 0    ; 2 uses
  br i1 %.not32.i, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ab
  br i1 %exitcond1202.not1543, label %.split1094.us, label %.lr.ph29.i.preheader.preheader

.lr.ph29.i.preheader.preheader:                   ; preds = %.split.preheader
  %xtraiter1819 = and i64 %i.bb, 1
  %i.bg = icmp eq i64 %i.bb, 1
  %unroll_iter1823 = and i64 %i.bb, -2
  %lcmp.mod1820.not = icmp eq i64 %xtraiter1819, 0
  %lcmp.mod1822 = trunc i64 %i.bb to i1
  br label %.lr.ph29.i.preheader

.split.us.preheader:                              ; preds = %bb.ab
  br i1 %exitcond1202.not1543, label %.split1094.us, label %_ZN6cvtestL11normHammingEPKhmi.exit.us

.split.us:                                        ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.us
  %i.bh = add i64 %.0164.us1544, 1                ; 2 uses
  %exitcond1202.not = icmp eq i64 %i.bh, %i.bd
  br i1 %exitcond1202.not, label %.split1094.us, label %_ZN6cvtestL11normHammingEPKhmi.exit.us, !llvm.loop !1719

_ZN6cvtestL11normHammingEPKhmi.exit.us:           ; preds = %.split.us.preheader, %.split.us
  %.0164.us1544 = phi i64 [ %i.bh, %.split.us ], [ 0, %.split.us.preheader ]
  %i.bi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %.split.us unwind label %.split1096.us, !llvm.loop !1719 ; 0 uses

.split1096.us:                                    ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.us
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.split:                                           ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit
  %i.bk = add i64 %.01641541, 1                   ; 2 uses
  %i.bl = sitofp i32 %.1.lcssa.i.lcssa to double
  %i.bm = fadd double %.01651540, %i.bl           ; 2 uses
  %exitcond1201.not = icmp eq i64 %i.bk, %i.bd
  br i1 %exitcond1201.not, label %.split1094.us, label %.lr.ph29.i.preheader, !llvm.loop !1719

.lr.ph29.i.preheader:                             ; preds = %.lr.ph29.i.preheader.preheader, %.split
  %.01641541 = phi i64 [ %i.bk, %.split ], [ 0, %.lr.ph29.i.preheader.preheader ]
  %.01651540 = phi double [ %i.bm, %.split ], [ 0.000000e+00, %.lr.ph29.i.preheader.preheader ]
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !53 ; 3 uses
  br i1 %i.bg, label %.lr.ph29.i.epil.preheader, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.preheader, %._crit_edge.i.1
  %.01727.i = phi i64 [ %i.cf, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ] ; 3 uses
  %.02026.i = phi i32 [ %.1.lcssa.i.1, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ] ; 2 uses
  %niter1824 = phi i64 [ %niter1824.next.1, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.01727.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16  ; 2 uses
  %.not23.i = icmp eq i8 %i.bp, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph29.i
  %i.bq = zext i8 %i.bp to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %i.bv, %.lr.ph.i ], [ %i.bq, %.lr.ph.preheader.i ] ; 2 uses
  %.124.i = phi i32 [ %i.bu, %.lr.ph.i ], [ %.02026.i, %.lr.ph.preheader.i ]
  %i.br = and i32 %.025.i, %spec.select.i
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = add nsw i32 %.124.i, %i.bt              ; 2 uses
  %i.bv = lshr i32 %.025.i, %i.be                 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1568

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph29.i
  %.1.lcssa.i = phi i32 [ %.02026.i, %.lr.ph29.i ], [ %i.bu, %.lr.ph.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.01727.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16  ; 2 uses
  %.not23.i.1 = icmp eq i8 %i.by, 0
  br i1 %.not23.i.1, label %._crit_edge.i.1, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %._crit_edge.i
  %i.bz = zext i8 %i.by to i32
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.lr.ph.preheader.i.1
  %.025.i.1 = phi i32 [ %i.ce, %.lr.ph.i.1 ], [ %i.bz, %.lr.ph.preheader.i.1 ] ; 2 uses
  %.124.i.1 = phi i32 [ %i.cd, %.lr.ph.i.1 ], [ %.1.lcssa.i, %.lr.ph.preheader.i.1 ]
  %i.ca = and i32 %.025.i.1, %spec.select.i
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = add nsw i32 %.124.i.1, %i.cc            ; 2 uses
  %i.ce = lshr i32 %.025.i.1, %i.be               ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !1568

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %.1.lcssa.i.1 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.cd, %.lr.ph.i.1 ] ; 3 uses
  %i.cf = add nuw i64 %.01727.i, 2                ; 2 uses
  %niter1824.next.1 = add nuw i64 %niter1824, 2   ; 2 uses
  %niter1824.ncmp.1 = icmp eq i64 %niter1824.next.1, %unroll_iter1823
  br i1 %niter1824.ncmp.1, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa, label %.lr.ph29.i, !llvm.loop !1569

_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.1
  br i1 %lcmp.mod1820.not, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph29.i.epil.preheader

.lr.ph29.i.epil.preheader:                        ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa, %.lr.ph29.i.preheader
  %.01727.i.epil.init = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %i.cf, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ]
  %.02026.i.epil.init = phi i32 [ 0, %.lr.ph29.i.preheader ], [ %.1.lcssa.i.1, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1822)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.01727.i.epil.init
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16  ; 2 uses
  %.not23.i.epil = icmp eq i8 %i.ch, 0
  br i1 %.not23.i.epil, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph.preheader.i.epil

.lr.ph.preheader.i.epil:                          ; preds = %.lr.ph29.i.epil.preheader
  %i.ci = zext i8 %i.ch to i32
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.preheader.i.epil
  %.025.i.epil = phi i32 [ %i.cn, %.lr.ph.i.epil ], [ %i.ci, %.lr.ph.preheader.i.epil ] ; 2 uses
  %.124.i.epil = phi i32 [ %i.cm, %.lr.ph.i.epil ], [ %.02026.i.epil.init, %.lr.ph.preheader.i.epil ]
  %i.cj = and i32 %.025.i.epil, %spec.select.i
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = add nsw i32 %.124.i.epil, %i.cl         ; 2 uses
  %i.cn = lshr i32 %.025.i.epil, %i.be            ; 2 uses
  %.not.i.epil = icmp eq i32 %i.cn, 0
  br i1 %.not.i.epil, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !1568

_ZN6cvtestL11normHammingEPKhmi.exit.loopexit:     ; preds = %.lr.ph29.i.epil.preheader, %.lr.ph.i.epil, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa
  %.1.lcssa.i.lcssa = phi i32 [ %.1.lcssa.i.1, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ], [ %.02026.i.epil.init, %.lr.ph29.i.epil.preheader ], [ %i.cm, %.lr.ph.i.epil ]
  %i.co = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %.split unwind label %.split1096, !llvm.loop !1719 ; 0 uses

bb.ac:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.split1096:                                       ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.split1094.us:                                    ; preds = %.split, %.split.us, %.split.preheader, %.split.us.preheader
  %.us-phi = phi double [ 0.000000e+00, %.split.us.preheader ], [ 0.000000e+00, %.split.us ], [ 0.000000e+00, %.split.preheader ], [ %i.bm, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.lz

bb.ae:                                            ; preds = %.split1096, %.split1096.us, %bb.ad, %bb.ac
  %.pn197.pn = phi { ptr, i32 } [ %i.cp, %bb.ac ], [ %i.cq, %bb.ad ], [ %i.cr, %.split1096 ], [ %i.bj, %.split1096.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.r, %bb.q
  %.pn197.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %bb.ae ], [ %.pn195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ap, %bb.s ], [ %i.ao, %bb.r ], [ %i.an, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.ma

bb.ag:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit214
  %i.cs = icmp eq i32 %i.p, 5
  %i.ct = select i1 %i.cs, i32 4, i32 %i.p        ; 6 uses
  %i.cu = load i32, ptr %12, align 8, !tbaa !45
  %i.cv = and i32 %i.cu, 4095                     ; 2 uses
  %i.cw = load i32, ptr %13, align 8, !tbaa !45
  %i.cx = and i32 %i.cw, 4095                     ; 2 uses
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.ak, label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN6cvtest4normERKN2cv11_InputArrayES3_iS3_E16__cv_check__1585) #31
          to label %bb.aj unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %26, ptr noundef nonnull align 4 dereferenceable(52) %i.da)
          to label %_ZNK2cv3Mat5shapeEv.exit unwind label %bb.aq

_ZNK2cv3Mat5shapeEv.exit:                         ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %27, ptr noundef nonnull align 4 dereferenceable(52) %i.db)
          to label %_ZNK2cv3Mat5shapeEv.exit217 unwind label %bb.ar

_ZNK2cv3Mat5shapeEv.exit217:                      ; preds = %_ZNK2cv3Mat5shapeEv.exit
  %i.dc = invoke noundef zeroext i1 @_ZN2cvneERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %26, ptr noundef nonnull align 4 dereferenceable(52) %27)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %_ZNK2cv3Mat5shapeEv.exit217
  br i1 %i.dc, label %bb.am, label %bb.az

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  invoke void @_ZNK2cv8MatShape3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 4 dereferenceable(52) %26)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.dd = load ptr, ptr %28, align 8, !tbaa !19
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %i.dd) ; 0 uses
  %i.df = load ptr, ptr %28, align 8, !tbaa !19   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.an
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  invoke void @_ZNK2cv8MatShape3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 4 dereferenceable(52) %27)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.dk = load ptr, ptr %29, align 8, !tbaa !19
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %i.dk) ; 0 uses
  %i.dm = load ptr, ptr %29, align 8, !tbaa !19   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.ao
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %i.dr = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %26, ptr noundef nonnull align 4 dereferenceable(52) %27)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  br i1 %i.dr, label %bb.az, label %bb.au

bb.aq:                                            ; preds = %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.ly

bb.ar:                                            ; preds = %_ZNK2cv3Mat5shapeEv.exit, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNK2cv3Mat5shapeEv.exit217
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.lx

bb.as:                                            ; preds = %bb.am
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.lx

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  br label %bb.lx

bb.au:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1591) #31
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

bb.ay:                                            ; preds = %bb.av
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %30, align 8, !tbaa !19   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.ay
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !16
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224, %bb.ax
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.ax ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224 ], [ %i.dx, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.lx

bb.az:                                            ; preds = %bb.al, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  %i.ed = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.ba unwind label %bb.ar

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ed, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %32, ptr noundef nonnull align 4 dereferenceable(52) %i.ee)
          to label %_ZNK2cv3Mat5shapeEv.exit228 unwind label %bb.bf

_ZNK2cv3Mat5shapeEv.exit228:                      ; preds = %bb.bb
  %i.ef = invoke noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %26, ptr noundef nonnull align 4 dereferenceable(52) %32)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZNK2cv3Mat5shapeEv.exit228
  br i1 %i.ef, label %bb.bd, label %.critedge205

bb.bd:                                            ; preds = %bb.bc
  %i.eg = load i32, ptr %14, align 8, !tbaa !45
  %i.eh = and i32 %i.eg, 4095                     ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.critedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ej = icmp eq i32 %i.eh, 9
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br i1 %i.ej, label %bb.bl, label %bb.bg

bb.bf:                                            ; preds = %bb.bb, %_ZNK2cv3Mat5shapeEv.exit228
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.lx

.critedge205:                                     ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge205, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1593) #31
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

bb.bk:                                            ; preds = %bb.bh
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %33, align 8, !tbaa !19   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.bk
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !16
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.bj
  %.pn171 = phi { ptr, i32 } [ %i.el, %bb.bj ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %i.em, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br label %bb.lx

.critedge:                                        ; preds = %bb.bd, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.bl

bb.bl:                                            ; preds = %.critedge, %bb.be
  switch i32 %i.ct, label %bb.bm [
    i32 4, label %bb.br
    i32 2, label %bb.br
    i32 1, label %bb.br
  ]

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1594) #31
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

bb.bq:                                            ; preds = %bb.bn
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %35, align 8, !tbaa !19   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %bb.bq
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232, %bb.bp
  %.pn173 = phi { ptr, i32 } [ %i.es, %bb.bp ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232 ], [ %i.et, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br label %bb.lx

bb.br:                                            ; preds = %bb.bl, %bb.bl, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %12, ptr %i.b, align 16, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %13, ptr %i.ez, align 8, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %14, ptr %i.fa, align 16, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %i.fb, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #30
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %37) #30
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %37, i64 208
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.1) #30
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %37, i64 416
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.ptr.2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #30
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPS1_i(ptr noundef nonnull align 8 dereferenceable(64) %38, ptr noundef nonnull %i.b, ptr noundef nonnull %37, i32 noundef -1)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.fc = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %37)
          to label %bb.bt unwind label %bb.bw     ; 13 uses

bb.bt:                                            ; preds = %bb.bs
  %i.fd = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !40 ; 2 uses
  %i.ff = load i32, ptr %12, align 8, !tbaa !45
  %i.fg = and i32 %i.ff, 31
  %i.fh = load i32, ptr %37, align 16, !tbaa !45
  %i.fi = lshr i32 %i.fh, 5
  %i.fj = and i32 %i.fi, 127
  %i.fk = add nuw nsw i32 %i.fj, 1
  %i.fl = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %37, i64 232
  %i.fn = getelementptr inbounds nuw i8, ptr %37, i64 440
  %i.fo = zext nneg i32 %i.fk to i64              ; 91 uses
  %exitcond.not1536 = icmp eq i64 %i.fe, 0
  br i1 %exitcond.not1536, label %._crit_edge, label %.lr.ph

bb.bu:                                            ; preds = %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit
  %i.fp = add i64 %.01661537, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.fp, %i.fe
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1720

.lr.ph:                                           ; preds = %bb.bt, %bb.bu
  %.01361538 = phi double [ %.1137, %bb.bu ], [ 0.000000e+00, %bb.bt ] ; 186 uses
  %.01661537 = phi i64 [ %i.fp, %bb.bu ], [ 0, %bb.bt ]
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !53 ; 138 uses
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !53 ; 138 uses
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !53 ; 52 uses
  switch i32 %i.fg, label %bb.li [
    i32 9, label %bb.by
    i32 0, label %bb.cl
    i32 1, label %bb.cy
    i32 2, label %bb.dl
    i32 3, label %bb.dy
    i32 12, label %bb.el
    i32 4, label %bb.ey
    i32 10, label %bb.fl
    i32 11, label %bb.fy
    i32 5, label %bb.gl
    i32 6, label %bb.hl
    i32 7, label %bb.im
    i32 8, label %bb.kj
  ]

bb.bv:                                            ; preds = %bb.br
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bw:                                            ; preds = %bb.bs
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bx:                                            ; preds = %bb.lf, %bb.kg, %bb.ij, %bb.hi
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.by:                                            ; preds = %.lr.ph
  %.not.i235 = icmp eq ptr %i.fs, null            ; 4 uses
  %i.fw = select i1 %.not.i235, i64 %i.fo, i64 1
  %.0.i = mul i64 %i.fw, %i.fc                    ; 16 uses
  %.not163.i = icmp eq i64 %.0.i, 0               ; 6 uses
  switch i32 %i.p, label %bb.ch [
    i32 1, label %bb.bz
    i32 2, label %bb.cd
  ]

bb.bz:                                            ; preds = %bb.by
  br i1 %.not.i235, label %.preheader115.i, label %.preheader118.i

.preheader118.i:                                  ; preds = %bb.bz
  br i1 %.not163.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader117.us.i

.preheader117.us.i:                               ; preds = %.preheader118.i, %._crit_edge.us139.i
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %._crit_edge.us139.i ], [ 0, %.preheader118.i ] ; 2 uses
  %.1107136.us.i = phi double [ %.3109.us.i, %._crit_edge.us139.i ], [ %.01361538, %.preheader118.i ]
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %.preheader117.us.i
  %.1133.us.i = phi i64 [ 0, %.preheader117.us.i ], [ %i.gm, %bb.cc ] ; 3 uses
  %.2108132.us.i = phi double [ %.1107136.us.i, %.preheader117.us.i ], [ %.3109.us.i, %bb.cc ] ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.1133.us.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !16
  %.not94.us.i = icmp eq i8 %i.fy, 0
  br i1 %.not94.us.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fz = mul i64 %.1133.us.i, %i.fo
  %i.ga = add i64 %i.fz, %indvars.iv177.i         ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !313, !range !633, !noundef !634
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = uitofp i1 %i.gd to double
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ga
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !313, !range !633, !noundef !634
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = uitofp i1 %i.gh to double
  %i.gj = fsub double %i.ge, %i.gi
  %i.gk = call noundef double @llvm.fabs.f64(double %i.gj) ; 2 uses
  %i.gl = fcmp olt double %.2108132.us.i, %i.gk
  %.sroa.speculated.us.i = select i1 %i.gl, double %i.gk, double %.2108132.us.i
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.3109.us.i = phi double [ %.2108132.us.i, %bb.ca ], [ %.sroa.speculated.us.i, %bb.cb ] ; 3 uses
  %i.gm = add nuw i64 %.1133.us.i, 1              ; 2 uses
  %exitcond176.not.i = icmp eq i64 %i.gm, %.0.i
  br i1 %exitcond176.not.i, label %._crit_edge.us139.i, label %bb.ca, !llvm.loop !1721

._crit_edge.us139.i:                              ; preds = %bb.cc
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %i.fo
  br i1 %exitcond181.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader117.us.i, !llvm.loop !1722

.preheader115.i:                                  ; preds = %bb.bz
  br i1 %.not163.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph143.i.preheader

.lr.ph143.i.preheader:                            ; preds = %.preheader115.i
  %xtraiter1807 = and i64 %.0.i, 1
  %i.gn = icmp eq i64 %.0.i, 1
  br i1 %i.gn, label %.lr.ph143.i.epil.preheader, label %.lr.ph143.i.preheader.new

.lr.ph143.i.preheader.new:                        ; preds = %.lr.ph143.i.preheader
  %unroll_iter1811 = and i64 %.0.i, -2
  br label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i, %.lr.ph143.i.preheader.new
  %.082142.i = phi i64 [ 0, %.lr.ph143.i.preheader.new ], [ %i.hl, %.lr.ph143.i ] ; 4 uses
  %.0106141.i = phi double [ %.01361538, %.lr.ph143.i.preheader.new ], [ %.sroa.speculated97.i.1, %.lr.ph143.i ] ; 2 uses
  %niter1812 = phi i64 [ 0, %.lr.ph143.i.preheader.new ], [ %niter1812.next.1, %.lr.ph143.i ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.082142.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !313, !range !633, !noundef !634
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = uitofp i1 %i.gq to double
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.082142.i
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !313, !range !633, !noundef !634
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = uitofp i1 %i.gu to double
  %i.gw = fsub double %i.gr, %i.gv
  %i.gx = call noundef double @llvm.fabs.f64(double %i.gw) ; 2 uses
  %i.gy = fcmp olt double %.0106141.i, %i.gx
  %.sroa.speculated97.i = select i1 %i.gy, double %i.gx, double %.0106141.i ; 2 uses
  %i.gz = or disjoint i64 %.082142.i, 1           ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !313, !range !633, !noundef !634
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = uitofp i1 %i.hc to double
  %i.he = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gz
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !313, !range !633, !noundef !634
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = uitofp i1 %i.hg to double
  %i.hi = fsub double %i.hd, %i.hh
  %i.hj = call noundef double @llvm.fabs.f64(double %i.hi) ; 2 uses
  %i.hk = fcmp olt double %.sroa.speculated97.i, %i.hj
  %.sroa.speculated97.i.1 = select i1 %i.hk, double %i.hj, double %.sroa.speculated97.i ; 3 uses
  %i.hl = add nuw i64 %.082142.i, 2               ; 2 uses
  %niter1812.next.1 = add i64 %niter1812, 2       ; 2 uses
  %niter1812.ncmp.1 = icmp eq i64 %niter1812.next.1, %unroll_iter1811
  br i1 %niter1812.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1548.unr-lcssa, label %.lr.ph143.i, !llvm.loop !1723

bb.cd:                                            ; preds = %bb.by
  br i1 %.not.i235, label %.preheader120.i, label %.preheader123.i

.preheader123.i:                                  ; preds = %bb.cd
  br i1 %.not163.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader122.us.i

.preheader122.us.i:                               ; preds = %.preheader123.i, %._crit_edge.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.us.i ], [ 0, %.preheader123.i ] ; 2 uses
  %.5111127.us.i = phi double [ %.7.us.i, %._crit_edge.us.i ], [ %.01361538, %.preheader123.i ]
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cg, %.preheader122.us.i
  %.3126.us.i = phi i64 [ 0, %.preheader122.us.i ], [ %i.ib, %bb.cg ] ; 3 uses
  %.6125.us.i = phi double [ %.5111127.us.i, %.preheader122.us.i ], [ %.7.us.i, %bb.cg ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.3126.us.i
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !16
  %.not93.us.i = icmp eq i8 %i.hn, 0
end_hunk_1
begin_hunk_2_@_ZN6cvtest4normERKN2cv11_InputArrayES3_iS3_:bb.a

.lr.ph143.i756:                                   ; preds = %.lr.ph143.i756, %.lr.ph143.i756.preheader.new
  %.082142.i757 = phi i64 [ 0, %.lr.ph143.i756.preheader.new ], [ %i.anp, %.lr.ph143.i756 ] ; 4 uses
  %.0106141.i758 = phi double [ %.01361538, %.lr.ph143.i756.preheader.new ], [ %.sroa.speculated97.i759.1, %.lr.ph143.i756 ] ; 2 uses
  %niter1668 = phi i64 [ 0, %.lr.ph143.i756.preheader.new ], [ %niter1668.next.1, %.lr.ph143.i756 ]
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.082142.i757
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !18
  %i.amy = sitofp i64 %i.amx to double
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.082142.i757
  %i.ana = load i64, ptr %i.amz, align 8, !tbaa !18
  %i.anb = sitofp i64 %i.ana to double
  %i.anc = fsub double %i.amy, %i.anb
  %i.and = call noundef double @llvm.fabs.f64(double %i.anc) ; 2 uses
  %i.ane = fcmp olt double %.0106141.i758, %i.and
  %.sroa.speculated97.i759 = select i1 %i.ane, double %i.and, double %.0106141.i758 ; 2 uses
  %i.anf = or disjoint i64 %.082142.i757, 1       ; 2 uses
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.anf
  %i.anh = load i64, ptr %i.ang, align 8, !tbaa !18
  %i.ani = sitofp i64 %i.anh to double
  %i.anj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.anf
  %i.ank = load i64, ptr %i.anj, align 8, !tbaa !18
  %i.anl = sitofp i64 %i.ank to double
  %i.anm = fsub double %i.ani, %i.anl
  %i.ann = call noundef double @llvm.fabs.f64(double %i.anm) ; 2 uses
  %i.ano = fcmp olt double %.sroa.speculated97.i759, %i.ann
  %.sroa.speculated97.i759.1 = select i1 %i.ano, double %i.ann, double %.sroa.speculated97.i759 ; 3 uses
  %i.anp = add nuw i64 %.082142.i757, 2           ; 2 uses
  %niter1668.next.1 = add i64 %niter1668, 2       ; 2 uses
  %niter1668.ncmp.1 = icmp eq i64 %niter1668.next.1, %unroll_iter1667
  br i1 %niter1668.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1596.unr-lcssa, label %.lr.ph143.i756, !llvm.loop !1795

bb.gd:                                            ; preds = %bb.fy
  br i1 %.not.i714, label %.preheader120.i732, label %.preheader123.i716

.preheader123.i716:                               ; preds = %bb.gd
  br i1 %.not163.i777, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader122.us.i720

.preheader122.us.i720:                            ; preds = %.preheader123.i716, %._crit_edge.us.i728
  %indvars.iv.i721 = phi i64 [ %indvars.iv.next.i729, %._crit_edge.us.i728 ], [ 0, %.preheader123.i716 ] ; 2 uses
  %.5111127.us.i722 = phi double [ %.7.us.i726, %._crit_edge.us.i728 ], [ %.01361538, %.preheader123.i716 ]
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gg, %.preheader122.us.i720
  %.3126.us.i723 = phi i64 [ 0, %.preheader122.us.i720 ], [ %i.aod, %bb.gg ] ; 3 uses
  %.6125.us.i724 = phi double [ %.5111127.us.i722, %.preheader122.us.i720 ], [ %.7.us.i726, %bb.gg ] ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.3126.us.i723
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !16
  %.not93.us.i725 = icmp eq i8 %i.anr, 0
  br i1 %.not93.us.i725, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.ans = mul i64 %.3126.us.i723, %i.fo
  %i.ant = add i64 %i.ans, %indvars.iv.i721       ; 2 uses
  %i.anu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ant
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !18
  %i.anw = sitofp i64 %i.anv to double
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ant
  %i.any = load i64, ptr %i.anx, align 8, !tbaa !18
  %i.anz = sitofp i64 %i.any to double
  %i.aoa = fsub double %i.anw, %i.anz
  %i.aob = call noundef double @llvm.fabs.f64(double %i.aoa)
  %i.aoc = fadd double %.6125.us.i724, %i.aob
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.7.us.i726 = phi double [ %.6125.us.i724, %bb.ge ], [ %i.aoc, %bb.gf ] ; 3 uses
  %i.aod = add nuw i64 %.3126.us.i723, 1          ; 2 uses
  %exitcond.not.i727 = icmp eq i64 %i.aod, %.0.i715
  br i1 %exitcond.not.i727, label %._crit_edge.us.i728, label %bb.ge, !llvm.loop !1796

._crit_edge.us.i728:                              ; preds = %bb.gg
  %indvars.iv.next.i729 = add nuw nsw i64 %indvars.iv.i721, 1 ; 2 uses
  %exitcond174.not.i730 = icmp eq i64 %indvars.iv.next.i729, %i.fo
  br i1 %exitcond174.not.i730, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader122.us.i720, !llvm.loop !1797

.preheader120.i732:                               ; preds = %bb.gd
  br i1 %.not163.i777, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i734.preheader

.lr.ph.i734.preheader:                            ; preds = %.preheader120.i732
  %xtraiter1657 = and i64 %.0.i715, 1
  %i.aoe = icmp eq i64 %.0.i715, 1
  br i1 %i.aoe, label %.lr.ph.i734.epil.preheader, label %.lr.ph.i734.preheader.new

.lr.ph.i734.preheader.new:                        ; preds = %.lr.ph.i734.preheader
  %unroll_iter1661 = and i64 %.0.i715, -2
  br label %.lr.ph.i734

.lr.ph.i734:                                      ; preds = %.lr.ph.i734, %.lr.ph.i734.preheader.new
  %.2131.i735 = phi i64 [ 0, %.lr.ph.i734.preheader.new ], [ %i.aoy, %.lr.ph.i734 ] ; 4 uses
  %.4110130.i736 = phi double [ %.01361538, %.lr.ph.i734.preheader.new ], [ %i.aox, %.lr.ph.i734 ]
  %niter1662 = phi i64 [ 0, %.lr.ph.i734.preheader.new ], [ %niter1662.next.1, %.lr.ph.i734 ]
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.2131.i735
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !18
  %i.aoh = sitofp i64 %i.aog to double
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.2131.i735
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !18
  %i.aok = sitofp i64 %i.aoj to double
  %i.aol = fsub double %i.aoh, %i.aok
  %i.aom = call noundef double @llvm.fabs.f64(double %i.aol)
  %i.aon = fadd double %.4110130.i736, %i.aom
  %i.aoo = or disjoint i64 %.2131.i735, 1         ; 2 uses
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.aoo
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !18
  %i.aor = sitofp i64 %i.aoq to double
  %i.aos = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.aoo
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !18
  %i.aou = sitofp i64 %i.aot to double
  %i.aov = fsub double %i.aor, %i.aou
  %i.aow = call noundef double @llvm.fabs.f64(double %i.aov)
  %i.aox = fadd double %i.aon, %i.aow             ; 3 uses
  %i.aoy = add nuw i64 %.2131.i735, 2             ; 2 uses
  %niter1662.next.1 = add i64 %niter1662, 2       ; 2 uses
  %niter1662.ncmp.1 = icmp eq i64 %niter1662.next.1, %unroll_iter1661
  br i1 %niter1662.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1598.unr-lcssa, label %.lr.ph.i734, !llvm.loop !1798

bb.gh:                                            ; preds = %bb.fy
  br i1 %.not.i714, label %.preheader.i776, label %.preheader113.i761

.preheader113.i761:                               ; preds = %bb.gh
  br i1 %.not163.i777, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader112.us.i765

.preheader112.us.i765:                            ; preds = %.preheader113.i761, %._crit_edge.us152.i773
  %indvars.iv184.i766 = phi i64 [ %indvars.iv.next185.i774, %._crit_edge.us152.i773 ], [ 0, %.preheader113.i761 ] ; 2 uses
  %.9149.us.i767 = phi double [ %.11.us.i771, %._crit_edge.us152.i773 ], [ %.01361538, %.preheader113.i761 ]
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gk, %.preheader112.us.i765
  %.5146.us.i768 = phi i64 [ 0, %.preheader112.us.i765 ], [ %i.apl, %bb.gk ] ; 3 uses
  %.10145.us.i769 = phi double [ %.9149.us.i767, %.preheader112.us.i765 ], [ %.11.us.i771, %bb.gk ] ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.5146.us.i768
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !16
  %.not92.us.i770 = icmp eq i8 %i.apa, 0
  br i1 %.not92.us.i770, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.apb = mul i64 %.5146.us.i768, %i.fo
  %i.apc = add i64 %i.apb, %indvars.iv184.i766    ; 2 uses
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.apc
  %i.ape = load i64, ptr %i.apd, align 8, !tbaa !18
  %i.apf = sitofp i64 %i.ape to double
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.apc
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !18
  %i.api = sitofp i64 %i.aph to double
  %i.apj = fsub double %i.apf, %i.api             ; 2 uses
  %i.apk = call double @llvm.fmuladd.f64(double %i.apj, double %i.apj, double %.10145.us.i769)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.11.us.i771 = phi double [ %.10145.us.i769, %bb.gi ], [ %i.apk, %bb.gj ] ; 3 uses
  %i.apl = add nuw i64 %.5146.us.i768, 1          ; 2 uses
  %exitcond183.not.i772 = icmp eq i64 %i.apl, %.0.i715
  br i1 %exitcond183.not.i772, label %._crit_edge.us152.i773, label %bb.gi, !llvm.loop !1799

._crit_edge.us152.i773:                           ; preds = %bb.gk
  %indvars.iv.next185.i774 = add nuw nsw i64 %indvars.iv184.i766, 1 ; 2 uses
  %exitcond188.not.i775 = icmp eq i64 %indvars.iv.next185.i774, %i.fo
  br i1 %exitcond188.not.i775, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader112.us.i765, !llvm.loop !1800

.preheader.i776:                                  ; preds = %bb.gh
  br i1 %.not163.i777, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph156.i778.preheader

.lr.ph156.i778.preheader:                         ; preds = %.preheader.i776
  %xtraiter1669 = and i64 %.0.i715, 1
  %i.apm = icmp eq i64 %.0.i715, 1
  br i1 %i.apm, label %.lr.ph156.i778.epil.preheader, label %.lr.ph156.i778.preheader.new

.lr.ph156.i778.preheader.new:                     ; preds = %.lr.ph156.i778.preheader
  %unroll_iter1673 = and i64 %.0.i715, -2
  br label %.lr.ph156.i778

.lr.ph156.i778:                                   ; preds = %.lr.ph156.i778, %.lr.ph156.i778.preheader.new
  %.4155.i779 = phi i64 [ 0, %.lr.ph156.i778.preheader.new ], [ %i.aqe, %.lr.ph156.i778 ] ; 4 uses
  %.8154.i780 = phi double [ %.01361538, %.lr.ph156.i778.preheader.new ], [ %i.aqd, %.lr.ph156.i778 ]
  %niter1674 = phi i64 [ 0, %.lr.ph156.i778.preheader.new ], [ %niter1674.next.1, %.lr.ph156.i778 ]
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.4155.i779
  %i.apo = load i64, ptr %i.apn, align 8, !tbaa !18
  %i.app = sitofp i64 %i.apo to double
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.4155.i779
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !18
  %i.aps = sitofp i64 %i.apr to double
  %i.apt = fsub double %i.app, %i.aps             ; 2 uses
  %i.apu = call double @llvm.fmuladd.f64(double %i.apt, double %i.apt, double %.8154.i780)
  %i.apv = or disjoint i64 %.4155.i779, 1         ; 2 uses
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.apv
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !18
  %i.apy = sitofp i64 %i.apx to double
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.apv
  %i.aqa = load i64, ptr %i.apz, align 8, !tbaa !18
  %i.aqb = sitofp i64 %i.aqa to double
  %i.aqc = fsub double %i.apy, %i.aqb             ; 2 uses
  %i.aqd = call double @llvm.fmuladd.f64(double %i.aqc, double %i.aqc, double %i.apu) ; 3 uses
  %i.aqe = add nuw i64 %.4155.i779, 2             ; 2 uses
  %niter1674.next.1 = add i64 %niter1674, 2       ; 2 uses
  %niter1674.ncmp.1 = icmp eq i64 %niter1674.next.1, %unroll_iter1673
  br i1 %niter1674.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1594.unr-lcssa, label %.lr.ph156.i778, !llvm.loop !1801

bb.gl:                                            ; preds = %.lr.ph
  %.not.i782 = icmp eq ptr %i.fs, null            ; 4 uses
  %i.aqf = select i1 %.not.i782, i64 %i.fo, i64 1
  %.0123.i = mul i64 %i.aqf, %i.fc                ; 12 uses
  switch i32 %i.ct, label %bb.hi [
    i32 1, label %bb.gm
    i32 2, label %bb.gt
    i32 4, label %bb.ha
  ]

bb.gm:                                            ; preds = %bb.gl
  %.not212.i = icmp eq i64 %.0123.i, 0            ; 2 uses
  br i1 %.not.i782, label %.preheader.i790, label %.preheader162.i

.preheader162.i:                                  ; preds = %bb.gm
  br i1 %.not212.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader161.us.i

.preheader161.us.i:                               ; preds = %.preheader162.i, %._crit_edge.us201.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %._crit_edge.us201.i ], [ 0, %.preheader162.i ] ; 2 uses
  %.2157198.us.i = phi double [ %.4159.us.i, %._crit_edge.us201.i ], [ %.01361538, %.preheader162.i ]
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gq, %.preheader161.us.i
  %.1195.us.i = phi i64 [ 0, %.preheader161.us.i ], [ %i.aqv, %bb.gq ] ; 3 uses
  %.3158194.us.i = phi double [ %.2157198.us.i, %.preheader161.us.i ], [ %.4159.us.i, %bb.gq ] ; 4 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.1195.us.i
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !16
  %.not143.us.i = icmp eq i8 %i.aqh, 0
  br i1 %.not143.us.i, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aqi = mul i64 %.1195.us.i, %i.fo
  %i.aqj = add i64 %i.aqi, %indvars.iv232.i       ; 2 uses
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.aqj
  %i.aql = load i32, ptr %i.aqk, align 4          ; 2 uses
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.aqj
  %i.aqn = load i32, ptr %i.aqm, align 4          ; 2 uses
  %.not144.us.i = icmp eq i32 %i.aql, %i.aqn
  br i1 %.not144.us.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aqo = bitcast i32 %i.aqn to float
  %i.aqp = bitcast i32 %i.aql to float
  %i.aqq = fpext float %i.aqp to double
  %i.aqr = fpext float %i.aqo to double
  %i.aqs = fsub double %i.aqq, %i.aqr
  %i.aqt = call noundef double @llvm.fabs.f64(double %i.aqs) ; 2 uses
  %i.aqu = fcmp olt double %.3158194.us.i, %i.aqt
  %.sroa.speculated.us.i789 = select i1 %i.aqu, double %i.aqt, double %.3158194.us.i
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %bb.gn
  %.4159.us.i = phi double [ %.3158194.us.i, %bb.gn ], [ %.3158194.us.i, %bb.go ], [ %.sroa.speculated.us.i789, %bb.gp ] ; 3 uses
  %i.aqv = add nuw i64 %.1195.us.i, 1             ; 2 uses
  %exitcond231.not.i = icmp eq i64 %i.aqv, %.0123.i
  br i1 %exitcond231.not.i, label %._crit_edge.us201.i, label %bb.gn, !llvm.loop !1802

._crit_edge.us201.i:                              ; preds = %bb.gq
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %i.fo
  br i1 %exitcond236.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader161.us.i, !llvm.loop !1803

.preheader.i790:                                  ; preds = %bb.gm
  br i1 %.not212.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph205.i

.lr.ph205.i:                                      ; preds = %.preheader.i790, %bb.gs
  %.0125204.i = phi i64 [ %i.arh, %bb.gs ], [ 0, %.preheader.i790 ] ; 3 uses
  %.0203.i = phi double [ %.1156.i, %bb.gs ], [ %.01361538, %.preheader.i790 ] ; 3 uses
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.0125204.i
  %i.aqx = load i32, ptr %i.aqw, align 4          ; 2 uses
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.0125204.i
  %i.aqz = load i32, ptr %i.aqy, align 4          ; 2 uses
  %.not142.i = icmp eq i32 %i.aqx, %i.aqz
  br i1 %.not142.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %.lr.ph205.i
  %i.ara = bitcast i32 %i.aqz to float
  %i.arb = bitcast i32 %i.aqx to float
  %i.arc = fpext float %i.arb to double
  %i.ard = fpext float %i.ara to double
  %i.are = fsub double %i.arc, %i.ard
  %i.arf = call noundef double @llvm.fabs.f64(double %i.are) ; 2 uses
  %i.arg = fcmp olt double %.0203.i, %i.arf
  %.sroa.speculated147.i = select i1 %i.arg, double %i.arf, double %.0203.i
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %.lr.ph205.i
  %.1156.i = phi double [ %.0203.i, %.lr.ph205.i ], [ %.sroa.speculated147.i, %bb.gr ] ; 2 uses
  %i.arh = add nuw i64 %.0125204.i, 1             ; 2 uses
  %exitcond237.not.i = icmp eq i64 %i.arh, %.0123.i
  br i1 %exitcond237.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph205.i, !llvm.loop !1804

bb.gt:                                            ; preds = %bb.gl
  %.not210.i = icmp eq i64 %.0123.i, 0            ; 2 uses
  br i1 %.not.i782, label %.preheader164.i, label %.preheader167.i

.preheader167.i:                                  ; preds = %bb.gt
  br i1 %.not210.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader166.us.i

.preheader166.us.i:                               ; preds = %.preheader167.i, %._crit_edge.us188.i
  %indvars.iv225.i = phi i64 [ %indvars.iv.next226.i, %._crit_edge.us188.i ], [ 0, %.preheader167.i ] ; 2 uses
  %.7185.us.i = phi double [ %.9.us.i, %._crit_edge.us188.i ], [ %.01361538, %.preheader167.i ]
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gx, %.preheader166.us.i
  %.3182.us.i = phi i64 [ 0, %.preheader166.us.i ], [ %i.arx, %bb.gx ] ; 3 uses
  %.8181.us.i = phi double [ %.7185.us.i, %.preheader166.us.i ], [ %.9.us.i, %bb.gx ] ; 3 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.3182.us.i
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !16
  %.not140.us.i = icmp eq i8 %i.arj, 0
  br i1 %.not140.us.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ark = mul i64 %.3182.us.i, %i.fo
  %i.arl = add i64 %i.ark, %indvars.iv225.i       ; 2 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.arl
  %i.arn = load i32, ptr %i.arm, align 4          ; 2 uses
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.arl
  %i.arp = load i32, ptr %i.aro, align 4          ; 2 uses
  %.not141.us.i = icmp eq i32 %i.arn, %i.arp
  br i1 %.not141.us.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.arq = bitcast i32 %i.arp to float
  %i.arr = bitcast i32 %i.arn to float
  %i.ars = fpext float %i.arr to double
  %i.art = fpext float %i.arq to double
  %i.aru = fsub double %i.ars, %i.art
  %i.arv = call noundef double @llvm.fabs.f64(double %i.aru)
  %i.arw = fadd double %.8181.us.i, %i.arv
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu
  %.9.us.i = phi double [ %.8181.us.i, %bb.gu ], [ %.8181.us.i, %bb.gv ], [ %i.arw, %bb.gw ] ; 3 uses
  %i.arx = add nuw i64 %.3182.us.i, 1             ; 2 uses
  %exitcond224.not.i = icmp eq i64 %i.arx, %.0123.i
  br i1 %exitcond224.not.i, label %._crit_edge.us188.i, label %bb.gu, !llvm.loop !1805

._crit_edge.us188.i:                              ; preds = %bb.gx
  %indvars.iv.next226.i = add nuw nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %i.fo
  br i1 %exitcond229.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader166.us.i, !llvm.loop !1806

.preheader164.i:                                  ; preds = %bb.gt
  br i1 %.not210.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.preheader164.i, %bb.gz
  %.2191.i = phi i64 [ %i.asj, %bb.gz ], [ 0, %.preheader164.i ] ; 3 uses
  %.5160190.i = phi double [ %.6.i, %bb.gz ], [ %.01361538, %.preheader164.i ] ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.2191.i
  %i.arz = load i32, ptr %i.ary, align 4          ; 2 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.2191.i
  %i.asb = load i32, ptr %i.asa, align 4          ; 2 uses
  %.not139.i = icmp eq i32 %i.arz, %i.asb
  br i1 %.not139.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph192.i
  %i.asc = bitcast i32 %i.asb to float
  %i.asd = bitcast i32 %i.arz to float
  %i.ase = fpext float %i.asd to double
  %i.asf = fpext float %i.asc to double
  %i.asg = fsub double %i.ase, %i.asf
  %i.ash = call noundef double @llvm.fabs.f64(double %i.asg)
  %i.asi = fadd double %.5160190.i, %i.ash
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.lr.ph192.i
  %.6.i = phi double [ %.5160190.i, %.lr.ph192.i ], [ %i.asi, %bb.gy ] ; 2 uses
  %i.asj = add nuw i64 %.2191.i, 1                ; 2 uses
  %exitcond230.not.i = icmp eq i64 %i.asj, %.0123.i
  br i1 %exitcond230.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph192.i, !llvm.loop !1807

bb.ha:                                            ; preds = %bb.gl
  %.not208.i = icmp eq i64 %.0123.i, 0            ; 2 uses
  br i1 %.not.i782, label %.preheader169.i, label %.preheader172.i

.preheader172.i:                                  ; preds = %bb.ha
  br i1 %.not208.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader171.us.i

.preheader171.us.i:                               ; preds = %.preheader172.i, %._crit_edge.us.i786
  %indvars.iv.i784 = phi i64 [ %indvars.iv.next.i787, %._crit_edge.us.i786 ], [ 0, %.preheader172.i ] ; 2 uses
  %.12176.us.i = phi double [ %.14.us.i, %._crit_edge.us.i786 ], [ %.01361538, %.preheader172.i ]
  br label %bb.hb

bb.hb:                                            ; preds = %bb.he, %.preheader171.us.i
  %.5175.us.i = phi i64 [ 0, %.preheader171.us.i ], [ %i.asy, %bb.he ] ; 3 uses
  %.13174.us.i = phi double [ %.12176.us.i, %.preheader171.us.i ], [ %.14.us.i, %bb.he ] ; 3 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.5175.us.i
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !16
  %.not137.us.i = icmp eq i8 %i.asl, 0
  br i1 %.not137.us.i, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.asm = mul i64 %.5175.us.i, %i.fo
  %i.asn = add i64 %i.asm, %indvars.iv.i784       ; 2 uses
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.asn
  %i.asp = load i32, ptr %i.aso, align 4          ; 2 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.asn
  %i.asr = load i32, ptr %i.asq, align 4          ; 2 uses
  %.not138.us.i = icmp eq i32 %i.asp, %i.asr
  br i1 %.not138.us.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ass = bitcast i32 %i.asr to float
  %i.ast = bitcast i32 %i.asp to float
  %i.asu = fpext float %i.ast to double
  %i.asv = fpext float %i.ass to double
  %i.asw = fsub double %i.asu, %i.asv             ; 2 uses
  %i.asx = call double @llvm.fmuladd.f64(double %i.asw, double %i.asw, double %.13174.us.i)
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %bb.hb
  %.14.us.i = phi double [ %.13174.us.i, %bb.hb ], [ %.13174.us.i, %bb.hc ], [ %i.asx, %bb.hd ] ; 3 uses
  %i.asy = add nuw i64 %.5175.us.i, 1             ; 2 uses
  %exitcond.not.i785 = icmp eq i64 %i.asy, %.0123.i
  br i1 %exitcond.not.i785, label %._crit_edge.us.i786, label %bb.hb, !llvm.loop !1808

._crit_edge.us.i786:                              ; preds = %bb.he
  %indvars.iv.next.i787 = add nuw nsw i64 %indvars.iv.i784, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next.i787, %i.fo
  br i1 %exitcond222.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader171.us.i, !llvm.loop !1809

.preheader169.i:                                  ; preds = %bb.ha
  br i1 %.not208.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i788.preheader

.lr.ph.i788.preheader:                            ; preds = %.preheader169.i
  %xtraiter1651 = and i64 %.0123.i, 1
  %i.asz = icmp eq i64 %.0123.i, 1
  br i1 %i.asz, label %.lr.ph.i788.epil.preheader, label %.lr.ph.i788.preheader.new

.lr.ph.i788.preheader.new:                        ; preds = %.lr.ph.i788.preheader
  %unroll_iter1655 = and i64 %.0123.i, -2
  br label %.lr.ph.i788

.lr.ph.i788:                                      ; preds = %bb.hh, %.lr.ph.i788.preheader.new
  %.4180.i = phi i64 [ 0, %.lr.ph.i788.preheader.new ], [ %i.atv, %bb.hh ] ; 4 uses
  %.10179.i = phi double [ %.01361538, %.lr.ph.i788.preheader.new ], [ %.11.i.1, %bb.hh ] ; 2 uses
  %niter1656 = phi i64 [ 0, %.lr.ph.i788.preheader.new ], [ %niter1656.next.1, %bb.hh ]
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.4180.i
  %i.atb = load i32, ptr %i.ata, align 4          ; 2 uses
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %.4180.i
  %i.atd = load i32, ptr %i.atc, align 4          ; 2 uses
  %.not136.i = icmp eq i32 %i.atb, %i.atd
  br i1 %.not136.i, label %.lr.ph.i788.1, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.i788
  %i.ate = bitcast i32 %i.atd to float
  %i.atf = bitcast i32 %i.atb to float
  %i.atg = fpext float %i.atf to double
  %i.ath = fpext float %i.ate to double
  %i.ati = fsub double %i.atg, %i.ath             ; 2 uses
  %i.atj = call double @llvm.fmuladd.f64(double %i.ati, double %i.ati, double %.10179.i)
  br label %.lr.ph.i788.1

.lr.ph.i788.1:                                    ; preds = %bb.hf, %.lr.ph.i788
  %.11.i = phi double [ %.10179.i, %.lr.ph.i788 ], [ %i.atj, %bb.hf ] ; 2 uses
  %i.atk = or disjoint i64 %.4180.i, 1            ; 2 uses
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.atk
  %i.atm = load i32, ptr %i.atl, align 4          ; 2 uses
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.atk
  %i.ato = load i32, ptr %i.atn, align 4          ; 2 uses
  %.not136.i.1 = icmp eq i32 %i.atm, %i.ato
  br i1 %.not136.i.1, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %.lr.ph.i788.1
  %i.atp = bitcast i32 %i.ato to float
  %i.atq = bitcast i32 %i.atm to float
  %i.atr = fpext float %i.atq to double
  %i.ats = fpext float %i.atp to double
  %i.att = fsub double %i.atr, %i.ats             ; 2 uses
  %i.atu = call double @llvm.fmuladd.f64(double %i.att, double %i.att, double %.11.i)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph.i788.1
  %.11.i.1 = phi double [ %.11.i, %.lr.ph.i788.1 ], [ %i.atu, %bb.hg ] ; 3 uses
  %i.atv = add nuw i64 %.4180.i, 2                ; 2 uses
  %niter1656.next.1 = add i64 %niter1656, 2       ; 2 uses
  %niter1656.ncmp.1 = icmp eq i64 %niter1656.next.1, %unroll_iter1655
  br i1 %niter1656.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1604.unr-lcssa, label %.lr.ph.i788, !llvm.loop !1810

bb.hi:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc791 unwind label %bb.bx

.noexc791:                                        ; preds = %bb.hi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN6cvtestL9norm_flt_IfiEEdPKT_S3_miidPKh, ptr noundef nonnull @.str.35, i32 noundef 1441) #31
          to label %bb.hj unwind label %bb.hk

bb.hj:                                            ; preds = %.noexc791
  unreachable

bb.hk:                                            ; preds = %.noexc791
  %i.atw = landingpad { ptr, i32 }
          cleanup
  %i.atx = load ptr, ptr %10, align 8, !tbaa !19  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.atz = icmp eq ptr %i.atx, %i.aty
  br i1 %i.atz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.hk
  %i.aua = load i64, ptr %i.aty, align 8, !tbaa !16
  %i.aub = add i64 %i.aua, 1
  call void @_ZdlPvm(ptr noundef %i.atx, i64 noundef %i.aub) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.body

bb.hl:                                            ; preds = %.lr.ph
  %.not.i792 = icmp eq ptr %i.fs, null            ; 4 uses
  %i.auc = select i1 %.not.i792, i64 %i.fo, i64 1
  %.0123.i793 = mul i64 %i.auc, %i.fc             ; 15 uses
  switch i32 %i.ct, label %bb.ij [
    i32 1, label %bb.hm
    i32 2, label %bb.ht
    i32 4, label %bb.ib
  ]

bb.hm:                                            ; preds = %bb.hl
  %.not212.i861 = icmp eq i64 %.0123.i793, 0      ; 2 uses
  br i1 %.not.i792, label %.preheader.i860, label %.preheader162.i843

.preheader162.i843:                               ; preds = %bb.hm
  br i1 %.not212.i861, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader161.us.i847

.preheader161.us.i847:                            ; preds = %.preheader162.i843, %._crit_edge.us201.i857
  %indvars.iv232.i848 = phi i64 [ %indvars.iv.next233.i858, %._crit_edge.us201.i857 ], [ 0, %.preheader162.i843 ] ; 2 uses
  %.2157198.us.i849 = phi double [ %.4159.us.i855, %._crit_edge.us201.i857 ], [ %.01361538, %.preheader162.i843 ]
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hq, %.preheader161.us.i847
  %.1195.us.i850 = phi i64 [ 0, %.preheader161.us.i847 ], [ %i.auq, %bb.hq ] ; 3 uses
  %.3158194.us.i851 = phi double [ %.2157198.us.i849, %.preheader161.us.i847 ], [ %.4159.us.i855, %bb.hq ] ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.1195.us.i850
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !16
  %.not143.us.i852 = icmp eq i8 %i.aue, 0
  br i1 %.not143.us.i852, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.auf = mul i64 %.1195.us.i850, %i.fo
  %i.aug = add i64 %i.auf, %indvars.iv232.i848    ; 2 uses
  %i.auh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.aug
  %i.aui = load i64, ptr %i.auh, align 8          ; 2 uses
  %i.auj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.aug
  %i.auk = load i64, ptr %i.auj, align 8          ; 2 uses
  %.not144.us.i853 = icmp eq i64 %i.aui, %i.auk
  br i1 %.not144.us.i853, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aul = bitcast i64 %i.auk to double
  %i.aum = bitcast i64 %i.aui to double
  %i.aun = fsub double %i.aum, %i.aul
  %i.auo = call noundef double @llvm.fabs.f64(double %i.aun) ; 2 uses
  %i.aup = fcmp olt double %.3158194.us.i851, %i.auo
  %.sroa.speculated.us.i854 = select i1 %i.aup, double %i.auo, double %.3158194.us.i851
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %bb.hn
  %.4159.us.i855 = phi double [ %.3158194.us.i851, %bb.hn ], [ %.3158194.us.i851, %bb.ho ], [ %.sroa.speculated.us.i854, %bb.hp ] ; 3 uses
  %i.auq = add nuw i64 %.1195.us.i850, 1          ; 2 uses
  %exitcond231.not.i856 = icmp eq i64 %i.auq, %.0123.i793
  br i1 %exitcond231.not.i856, label %._crit_edge.us201.i857, label %bb.hn, !llvm.loop !1811

._crit_edge.us201.i857:                           ; preds = %bb.hq
  %indvars.iv.next233.i858 = add nuw nsw i64 %indvars.iv232.i848, 1 ; 2 uses
  %exitcond236.not.i859 = icmp eq i64 %indvars.iv.next233.i858, %i.fo
  br i1 %exitcond236.not.i859, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader161.us.i847, !llvm.loop !1812

.preheader.i860:                                  ; preds = %bb.hm
  br i1 %.not212.i861, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph205.i862

.lr.ph205.i862:                                   ; preds = %.preheader.i860, %bb.hs
  %.0125204.i863 = phi i64 [ %i.ava, %bb.hs ], [ 0, %.preheader.i860 ] ; 3 uses
  %.0203.i864 = phi double [ %.1156.i867, %bb.hs ], [ %.01361538, %.preheader.i860 ] ; 3 uses
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.0125204.i863
  %i.aus = load i64, ptr %i.aur, align 8          ; 2 uses
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.0125204.i863
  %i.auu = load i64, ptr %i.aut, align 8          ; 2 uses
  %.not142.i865 = icmp eq i64 %i.aus, %i.auu
  br i1 %.not142.i865, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph205.i862
  %i.auv = bitcast i64 %i.auu to double
  %i.auw = bitcast i64 %i.aus to double
  %i.aux = fsub double %i.auw, %i.auv
  %i.auy = call noundef double @llvm.fabs.f64(double %i.aux) ; 2 uses
  %i.auz = fcmp olt double %.0203.i864, %i.auy
  %.sroa.speculated147.i866 = select i1 %i.auz, double %i.auy, double %.0203.i864
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %.lr.ph205.i862
  %.1156.i867 = phi double [ %.0203.i864, %.lr.ph205.i862 ], [ %.sroa.speculated147.i866, %bb.hr ] ; 2 uses
  %i.ava = add nuw i64 %.0125204.i863, 1          ; 2 uses
  %exitcond237.not.i868 = icmp eq i64 %i.ava, %.0123.i793
  br i1 %exitcond237.not.i868, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph205.i862, !llvm.loop !1813

bb.ht:                                            ; preds = %bb.hl
  %.not210.i836 = icmp eq i64 %.0123.i793, 0      ; 2 uses
  br i1 %.not.i792, label %.preheader164.i835, label %.preheader167.i819

.preheader167.i819:                               ; preds = %bb.ht
  br i1 %.not210.i836, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader166.us.i823

.preheader166.us.i823:                            ; preds = %.preheader167.i819, %._crit_edge.us188.i832
  %indvars.iv225.i824 = phi i64 [ %indvars.iv.next226.i833, %._crit_edge.us188.i832 ], [ 0, %.preheader167.i819 ] ; 2 uses
  %.7185.us.i825 = phi double [ %.9.us.i830, %._crit_edge.us188.i832 ], [ %.01361538, %.preheader167.i819 ]
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hx, %.preheader166.us.i823
  %.3182.us.i826 = phi i64 [ 0, %.preheader166.us.i823 ], [ %i.avo, %bb.hx ] ; 3 uses
  %.8181.us.i827 = phi double [ %.7185.us.i825, %.preheader166.us.i823 ], [ %.9.us.i830, %bb.hx ] ; 3 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.3182.us.i826
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !16
  %.not140.us.i828 = icmp eq i8 %i.avc, 0
  br i1 %.not140.us.i828, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.avd = mul i64 %.3182.us.i826, %i.fo
  %i.ave = add i64 %i.avd, %indvars.iv225.i824    ; 2 uses
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ave
  %i.avg = load i64, ptr %i.avf, align 8          ; 2 uses
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ave
  %i.avi = load i64, ptr %i.avh, align 8          ; 2 uses
  %.not141.us.i829 = icmp eq i64 %i.avg, %i.avi
  br i1 %.not141.us.i829, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.avj = bitcast i64 %i.avi to double
  %i.avk = bitcast i64 %i.avg to double
  %i.avl = fsub double %i.avk, %i.avj
  %i.avm = call noundef double @llvm.fabs.f64(double %i.avl)
  %i.avn = fadd double %.8181.us.i827, %i.avm
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hu
  %.9.us.i830 = phi double [ %.8181.us.i827, %bb.hu ], [ %.8181.us.i827, %bb.hv ], [ %i.avn, %bb.hw ] ; 3 uses
  %i.avo = add nuw i64 %.3182.us.i826, 1          ; 2 uses
  %exitcond224.not.i831 = icmp eq i64 %i.avo, %.0123.i793
  br i1 %exitcond224.not.i831, label %._crit_edge.us188.i832, label %bb.hu, !llvm.loop !1814

._crit_edge.us188.i832:                           ; preds = %bb.hx
  %indvars.iv.next226.i833 = add nuw nsw i64 %indvars.iv225.i824, 1 ; 2 uses
  %exitcond229.not.i834 = icmp eq i64 %indvars.iv.next226.i833, %i.fo
  br i1 %exitcond229.not.i834, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader166.us.i823, !llvm.loop !1815

.preheader164.i835:                               ; preds = %bb.ht
  br i1 %.not210.i836, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph192.i837.preheader

.lr.ph192.i837.preheader:                         ; preds = %.preheader164.i835
  %xtraiter1645 = and i64 %.0123.i793, 1
  %i.avp = icmp eq i64 %.0123.i793, 1
  br i1 %i.avp, label %.lr.ph192.i837.epil.preheader, label %.lr.ph192.i837.preheader.new

.lr.ph192.i837.preheader.new:                     ; preds = %.lr.ph192.i837.preheader
  %unroll_iter1649 = and i64 %.0123.i793, -2
  br label %.lr.ph192.i837

.lr.ph192.i837:                                   ; preds = %bb.ia, %.lr.ph192.i837.preheader.new
  %.2191.i838 = phi i64 [ 0, %.lr.ph192.i837.preheader.new ], [ %i.awj, %bb.ia ] ; 4 uses
  %.5160190.i839 = phi double [ %.01361538, %.lr.ph192.i837.preheader.new ], [ %.6.i841.1, %bb.ia ] ; 2 uses
  %niter1650 = phi i64 [ 0, %.lr.ph192.i837.preheader.new ], [ %niter1650.next.1, %bb.ia ]
  %i.avq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.2191.i838
  %i.avr = load i64, ptr %i.avq, align 8          ; 2 uses
  %i.avs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.2191.i838
  %i.avt = load i64, ptr %i.avs, align 8          ; 2 uses
  %.not139.i840 = icmp eq i64 %i.avr, %i.avt
  br i1 %.not139.i840, label %.lr.ph192.i837.1, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph192.i837
  %i.avu = bitcast i64 %i.avt to double
  %i.avv = bitcast i64 %i.avr to double
  %i.avw = fsub double %i.avv, %i.avu
  %i.avx = call noundef double @llvm.fabs.f64(double %i.avw)
  %i.avy = fadd double %.5160190.i839, %i.avx
  br label %.lr.ph192.i837.1

.lr.ph192.i837.1:                                 ; preds = %bb.hy, %.lr.ph192.i837
  %.6.i841 = phi double [ %.5160190.i839, %.lr.ph192.i837 ], [ %i.avy, %bb.hy ] ; 2 uses
  %i.avz = or disjoint i64 %.2191.i838, 1         ; 2 uses
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.avz
  %i.awb = load i64, ptr %i.awa, align 8          ; 2 uses
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.avz
  %i.awd = load i64, ptr %i.awc, align 8          ; 2 uses
  %.not139.i840.1 = icmp eq i64 %i.awb, %i.awd
  br i1 %.not139.i840.1, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %.lr.ph192.i837.1
  %i.awe = bitcast i64 %i.awd to double
  %i.awf = bitcast i64 %i.awb to double
  %i.awg = fsub double %i.awf, %i.awe
  %i.awh = call noundef double @llvm.fabs.f64(double %i.awg)
  %i.awi = fadd double %.6.i841, %i.awh
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.lr.ph192.i837.1
  %.6.i841.1 = phi double [ %.6.i841, %.lr.ph192.i837.1 ], [ %i.awi, %bb.hz ] ; 3 uses
  %i.awj = add nuw i64 %.2191.i838, 2             ; 2 uses
  %niter1650.next.1 = add i64 %niter1650, 2       ; 2 uses
  %niter1650.ncmp.1 = icmp eq i64 %niter1650.next.1, %unroll_iter1649
  br i1 %niter1650.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1608.unr-lcssa, label %.lr.ph192.i837, !llvm.loop !1816

bb.ib:                                            ; preds = %bb.hl
  %.not208.i812 = icmp eq i64 %.0123.i793, 0      ; 2 uses
  br i1 %.not.i792, label %.preheader169.i811, label %.preheader172.i794

.preheader172.i794:                               ; preds = %bb.ib
  br i1 %.not208.i812, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader171.us.i798

.preheader171.us.i798:                            ; preds = %.preheader172.i794, %._crit_edge.us.i807
  %indvars.iv.i799 = phi i64 [ %indvars.iv.next.i808, %._crit_edge.us.i807 ], [ 0, %.preheader172.i794 ] ; 2 uses
  %.12176.us.i800 = phi double [ %.14.us.i805, %._crit_edge.us.i807 ], [ %.01361538, %.preheader172.i794 ]
  br label %bb.ic

bb.ic:                                            ; preds = %bb.if, %.preheader171.us.i798
  %.5175.us.i801 = phi i64 [ 0, %.preheader171.us.i798 ], [ %i.aww, %bb.if ] ; 3 uses
  %.13174.us.i802 = phi double [ %.12176.us.i800, %.preheader171.us.i798 ], [ %.14.us.i805, %bb.if ] ; 3 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.5175.us.i801
  %i.awl = load i8, ptr %i.awk, align 1, !tbaa !16
  %.not137.us.i803 = icmp eq i8 %i.awl, 0
  br i1 %.not137.us.i803, label %bb.if, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.awm = mul i64 %.5175.us.i801, %i.fo
  %i.awn = add i64 %i.awm, %indvars.iv.i799       ; 2 uses
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.awn
  %i.awp = load i64, ptr %i.awo, align 8          ; 2 uses
  %i.awq = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.awn
  %i.awr = load i64, ptr %i.awq, align 8          ; 2 uses
  %.not138.us.i804 = icmp eq i64 %i.awp, %i.awr
  br i1 %.not138.us.i804, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aws = bitcast i64 %i.awr to double
  %i.awt = bitcast i64 %i.awp to double
  %i.awu = fsub double %i.awt, %i.aws             ; 2 uses
  %i.awv = call double @llvm.fmuladd.f64(double %i.awu, double %i.awu, double %.13174.us.i802)
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %bb.ic
  %.14.us.i805 = phi double [ %.13174.us.i802, %bb.ic ], [ %.13174.us.i802, %bb.id ], [ %i.awv, %bb.ie ] ; 3 uses
  %i.aww = add nuw i64 %.5175.us.i801, 1          ; 2 uses
  %exitcond.not.i806 = icmp eq i64 %i.aww, %.0123.i793
  br i1 %exitcond.not.i806, label %._crit_edge.us.i807, label %bb.ic, !llvm.loop !1817

._crit_edge.us.i807:                              ; preds = %bb.if
  %indvars.iv.next.i808 = add nuw nsw i64 %indvars.iv.i799, 1 ; 2 uses
  %exitcond222.not.i809 = icmp eq i64 %indvars.iv.next.i808, %i.fo
  br i1 %exitcond222.not.i809, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader171.us.i798, !llvm.loop !1818

.preheader169.i811:                               ; preds = %bb.ib
  br i1 %.not208.i812, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i813.preheader

.lr.ph.i813.preheader:                            ; preds = %.preheader169.i811
  %xtraiter = and i64 %.0123.i793, 1
  %i.awx = icmp eq i64 %.0123.i793, 1
  br i1 %i.awx, label %.lr.ph.i813.epil.preheader, label %.lr.ph.i813.preheader.new

.lr.ph.i813.preheader.new:                        ; preds = %.lr.ph.i813.preheader
  %unroll_iter = and i64 %.0123.i793, -2
  br label %.lr.ph.i813

.lr.ph.i813:                                      ; preds = %bb.ii, %.lr.ph.i813.preheader.new
  %.4180.i814 = phi i64 [ 0, %.lr.ph.i813.preheader.new ], [ %i.axp, %bb.ii ] ; 4 uses
  %.10179.i815 = phi double [ %.01361538, %.lr.ph.i813.preheader.new ], [ %.11.i817.1, %bb.ii ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i813.preheader.new ], [ %niter.next.1, %bb.ii ]
  %i.awy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.4180.i814
  %i.awz = load i64, ptr %i.awy, align 8          ; 2 uses
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.4180.i814
  %i.axb = load i64, ptr %i.axa, align 8          ; 2 uses
  %.not136.i816 = icmp eq i64 %i.awz, %i.axb
  br i1 %.not136.i816, label %.lr.ph.i813.1, label %bb.ig

bb.ig:                                            ; preds = %.lr.ph.i813
  %i.axc = bitcast i64 %i.axb to double
  %i.axd = bitcast i64 %i.awz to double
  %i.axe = fsub double %i.axd, %i.axc             ; 2 uses
  %i.axf = call double @llvm.fmuladd.f64(double %i.axe, double %i.axe, double %.10179.i815)
  br label %.lr.ph.i813.1

.lr.ph.i813.1:                                    ; preds = %bb.ig, %.lr.ph.i813
  %.11.i817 = phi double [ %.10179.i815, %.lr.ph.i813 ], [ %i.axf, %bb.ig ] ; 2 uses
  %i.axg = or disjoint i64 %.4180.i814, 1         ; 2 uses
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.axg
  %i.axi = load i64, ptr %i.axh, align 8          ; 2 uses
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.axg
  %i.axk = load i64, ptr %i.axj, align 8          ; 2 uses
  %.not136.i816.1 = icmp eq i64 %i.axi, %i.axk
  br i1 %.not136.i816.1, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph.i813.1
  %i.axl = bitcast i64 %i.axk to double
  %i.axm = bitcast i64 %i.axi to double
  %i.axn = fsub double %i.axm, %i.axl             ; 2 uses
  %i.axo = call double @llvm.fmuladd.f64(double %i.axn, double %i.axn, double %.11.i817)
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.lr.ph.i813.1
  %.11.i817.1 = phi double [ %.11.i817, %.lr.ph.i813.1 ], [ %i.axo, %bb.ih ] ; 3 uses
  %i.axp = add nuw i64 %.4180.i814, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1610.unr-lcssa, label %.lr.ph.i813, !llvm.loop !1819

bb.ij:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc872 unwind label %bb.bx

.noexc872:                                        ; preds = %bb.ij
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN6cvtestL9norm_flt_IfiEEdPKT_S3_miidPKh, ptr noundef nonnull @.str.35, i32 noundef 1441) #31
          to label %bb.ik unwind label %bb.il

bb.ik:                                            ; preds = %.noexc872
  unreachable

bb.il:                                            ; preds = %.noexc872
  %i.axq = landingpad { ptr, i32 }
          cleanup
  %i.axr = load ptr, ptr %8, align 8, !tbaa !19   ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.axt = icmp eq ptr %i.axr, %i.axs
  br i1 %i.axt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i870, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i869

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i869: ; preds = %bb.il
  %i.axu = load i64, ptr %i.axs, align 8, !tbaa !16
  %i.axv = add i64 %i.axu, 1
  call void @_ZdlPvm(ptr noundef %i.axr, i64 noundef %i.axv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i870

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i870: ; preds = %bb.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i869
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.im:                                            ; preds = %.lr.ph
  %.not.i875 = icmp eq ptr %i.fs, null            ; 4 uses
  %i.axw = select i1 %.not.i875, i64 %i.fo, i64 1
  %.0123.i876 = mul i64 %i.axw, %i.fc             ; 9 uses
  switch i32 %i.ct, label %bb.kg [
    i32 1, label %bb.in
    i32 2, label %bb.jc
    i32 4, label %bb.jr
  ]

bb.in:                                            ; preds = %bb.im
  %.not234.i = icmp eq i64 %.0123.i876, 0         ; 2 uses
  br i1 %.not.i875, label %.preheader.i897, label %.preheader184.i

.preheader184.i:                                  ; preds = %bb.in
  br i1 %.not234.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader183.us.i

.preheader183.us.i:                               ; preds = %.preheader184.i, %._crit_edge.us223.i
  %indvars.iv254.i = phi i64 [ %indvars.iv.next255.i, %._crit_edge.us223.i ], [ 0, %.preheader184.i ] ; 2 uses
  %.2179220.us.i = phi double [ %.4181.us.i, %._crit_edge.us223.i ], [ %.01361538, %.preheader184.i ]
  br label %bb.io

bb.io:                                            ; preds = %bb.iv, %.preheader183.us.i
  %.1217.us.i = phi i64 [ 0, %.preheader183.us.i ], [ %i.azm, %bb.iv ] ; 3 uses
  %.3180216.us.i = phi double [ %.2179220.us.i, %.preheader183.us.i ], [ %.4181.us.i, %bb.iv ] ; 4 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.1217.us.i
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !16
  %.not143.us.i894 = icmp eq i8 %i.axy, 0
  br i1 %.not143.us.i894, label %bb.iv, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.axz = mul i64 %.1217.us.i, %i.fo
  %i.aya = add i64 %i.axz, %indvars.iv254.i       ; 2 uses
  %i.ayb = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.aya
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !146 ; 3 uses
  %i.ayd = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.aya
  %i.aye = load i16, ptr %i.ayd, align 2, !tbaa !146 ; 3 uses
  %.not144.us.i895 = icmp eq i16 %i.ayc, %i.aye
  br i1 %.not144.us.i895, label %bb.iv, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.ayf = zext i16 %i.ayc to i32                 ; 2 uses
  %i.ayg = shl nuw nsw i32 %i.ayf, 13             ; 2 uses
  %i.ayh = and i32 %i.ayg, 268427264              ; 2 uses
  %i.ayi = add nuw nsw i32 %i.ayh, 939524096
  %i.ayj = and i32 %i.ayf, 31744
  switch i32 %i.ayj, label %_ZNK2cv6hfloatcvfEv.exit148.us.i [
    i32 31744, label %bb.is
    i32 0, label %bb.ir
  ]

bb.ir:                                            ; preds = %bb.iq
  %i.ayk = add nuw nsw i32 %i.ayh, 947912704
  %i.ayl = bitcast i32 %i.ayk to float
  %i.aym = fadd float %i.ayl, f0xB8800000
  %i.ayn = bitcast float %i.aym to i32
  br label %_ZNK2cv6hfloatcvfEv.exit148.us.i

bb.is:                                            ; preds = %bb.iq
  %i.ayo = or i32 %i.ayg, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit148.us.i

_ZNK2cv6hfloatcvfEv.exit148.us.i:                 ; preds = %bb.is, %bb.ir, %bb.iq
  %i.ayp = phi i32 [ %i.ayo, %bb.is ], [ %i.ayn, %bb.ir ], [ %i.ayi, %bb.iq ]
  %.signext.i147.us.i = sext i16 %i.ayc to i32
  %i.ayq = and i32 %.signext.i147.us.i, -2147483648
  %i.ayr = or i32 %i.ayp, %i.ayq
  %i.ays = bitcast i32 %i.ayr to float
  %i.ayt = fpext float %i.ays to double
  %i.ayu = zext i16 %i.aye to i32                 ; 2 uses
  %i.ayv = shl nuw nsw i32 %i.ayu, 13             ; 2 uses
  %i.ayw = and i32 %i.ayv, 268427264              ; 2 uses
  %i.ayx = add nuw nsw i32 %i.ayw, 939524096
  %i.ayy = and i32 %i.ayu, 31744
  switch i32 %i.ayy, label %_ZNK2cv6hfloatcvfEv.exit150.us.i [
    i32 31744, label %bb.iu
    i32 0, label %bb.it
  ]

bb.it:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit148.us.i
  %i.ayz = add nuw nsw i32 %i.ayw, 947912704
  %i.aza = bitcast i32 %i.ayz to float
  %i.azb = fadd float %i.aza, f0xB8800000
  %i.azc = bitcast float %i.azb to i32
  br label %_ZNK2cv6hfloatcvfEv.exit150.us.i

bb.iu:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit148.us.i
  %i.azd = or i32 %i.ayv, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit150.us.i

_ZNK2cv6hfloatcvfEv.exit150.us.i:                 ; preds = %bb.iu, %bb.it, %_ZNK2cv6hfloatcvfEv.exit148.us.i
  %i.aze = phi i32 [ %i.azd, %bb.iu ], [ %i.azc, %bb.it ], [ %i.ayx, %_ZNK2cv6hfloatcvfEv.exit148.us.i ]
  %.signext.i149.us.i = sext i16 %i.aye to i32
  %i.azf = and i32 %.signext.i149.us.i, -2147483648
  %i.azg = or i32 %i.aze, %i.azf
  %i.azh = bitcast i32 %i.azg to float
  %i.azi = fpext float %i.azh to double
  %i.azj = fsub double %i.ayt, %i.azi
  %i.azk = call noundef double @llvm.fabs.f64(double %i.azj) ; 2 uses
  %i.azl = fcmp olt double %.3180216.us.i, %i.azk
  %.sroa.speculated.us.i896 = select i1 %i.azl, double %i.azk, double %.3180216.us.i
  br label %bb.iv

bb.iv:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit150.us.i, %bb.ip, %bb.io
  %.4181.us.i = phi double [ %.3180216.us.i, %bb.io ], [ %.3180216.us.i, %bb.ip ], [ %.sroa.speculated.us.i896, %_ZNK2cv6hfloatcvfEv.exit150.us.i ] ; 3 uses
  %i.azm = add nuw i64 %.1217.us.i, 1             ; 2 uses
  %exitcond253.not.i = icmp eq i64 %i.azm, %.0123.i876
  br i1 %exitcond253.not.i, label %._crit_edge.us223.i, label %bb.io, !llvm.loop !1820

._crit_edge.us223.i:                              ; preds = %bb.iv
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %exitcond258.not.i = icmp eq i64 %indvars.iv.next255.i, %i.fo
  br i1 %exitcond258.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader183.us.i, !llvm.loop !1821

.preheader.i897:                                  ; preds = %bb.in
  br i1 %.not234.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.preheader.i897, %bb.jb
  %.0125226.i = phi i64 [ %i.bay, %bb.jb ], [ 0, %.preheader.i897 ] ; 3 uses
  %.0225.i = phi double [ %.1178.i, %bb.jb ], [ %.01361538, %.preheader.i897 ] ; 3 uses
  %i.azn = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.0125226.i
  %i.azo = load i16, ptr %i.azn, align 2, !tbaa !146 ; 3 uses
  %i.azp = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %.0125226.i
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !146 ; 3 uses
  %.not142.i898 = icmp eq i16 %i.azo, %i.azq
  br i1 %.not142.i898, label %bb.jb, label %bb.iw

bb.iw:                                            ; preds = %.lr.ph227.i
  %i.azr = zext i16 %i.azo to i32                 ; 2 uses
  %i.azs = shl nuw nsw i32 %i.azr, 13             ; 2 uses
  %i.azt = and i32 %i.azs, 268427264              ; 2 uses
  %i.azu = add nuw nsw i32 %i.azt, 939524096
  %i.azv = and i32 %i.azr, 31744
  switch i32 %i.azv, label %_ZNK2cv6hfloatcvfEv.exit.i [
    i32 31744, label %bb.ix
    i32 0, label %bb.iy
  ]

bb.ix:                                            ; preds = %bb.iw
  %i.azw = or i32 %i.azs, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i

bb.iy:                                            ; preds = %bb.iw
  %i.azx = add nuw nsw i32 %i.azt, 947912704
  %i.azy = bitcast i32 %i.azx to float
  %i.azz = fadd float %i.azy, f0xB8800000
  %i.baa = bitcast float %i.azz to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i

_ZNK2cv6hfloatcvfEv.exit.i:                       ; preds = %bb.iy, %bb.ix, %bb.iw
  %i.bab = phi i32 [ %i.azw, %bb.ix ], [ %i.baa, %bb.iy ], [ %i.azu, %bb.iw ]
  %.signext.i.i = sext i16 %i.azo to i32
  %i.bac = and i32 %.signext.i.i, -2147483648
  %i.bad = or i32 %i.bab, %i.bac
  %i.bae = bitcast i32 %i.bad to float
  %i.baf = fpext float %i.bae to double
  %i.bag = zext i16 %i.azq to i32                 ; 2 uses
  %i.bah = shl nuw nsw i32 %i.bag, 13             ; 2 uses
  %i.bai = and i32 %i.bah, 268427264              ; 2 uses
  %i.baj = add nuw nsw i32 %i.bai, 939524096
  %i.bak = and i32 %i.bag, 31744
  switch i32 %i.bak, label %_ZNK2cv6hfloatcvfEv.exit146.i [
    i32 31744, label %bb.iz
    i32 0, label %bb.ja
  ]

bb.iz:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bal = or i32 %i.bah, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit146.i

bb.ja:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit.i
  %i.bam = add nuw nsw i32 %i.bai, 947912704
  %i.ban = bitcast i32 %i.bam to float
  %i.bao = fadd float %i.ban, f0xB8800000
  %i.bap = bitcast float %i.bao to i32
  br label %_ZNK2cv6hfloatcvfEv.exit146.i

_ZNK2cv6hfloatcvfEv.exit146.i:                    ; preds = %bb.ja, %bb.iz, %_ZNK2cv6hfloatcvfEv.exit.i
  %i.baq = phi i32 [ %i.bal, %bb.iz ], [ %i.bap, %bb.ja ], [ %i.baj, %_ZNK2cv6hfloatcvfEv.exit.i ]
  %.signext.i145.i = sext i16 %i.azq to i32
  %i.bar = and i32 %.signext.i145.i, -2147483648
  %i.bas = or i32 %i.baq, %i.bar
  %i.bat = bitcast i32 %i.bas to float
  %i.bau = fpext float %i.bat to double
  %i.bav = fsub double %i.baf, %i.bau
  %i.baw = call noundef double @llvm.fabs.f64(double %i.bav) ; 2 uses
  %i.bax = fcmp olt double %.0225.i, %i.baw
  %.sroa.speculated169.i = select i1 %i.bax, double %i.baw, double %.0225.i
  br label %bb.jb

bb.jb:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit146.i, %.lr.ph227.i
  %.1178.i = phi double [ %.0225.i, %.lr.ph227.i ], [ %.sroa.speculated169.i, %_ZNK2cv6hfloatcvfEv.exit146.i ] ; 2 uses
  %i.bay = add nuw i64 %.0125226.i, 1             ; 2 uses
  %exitcond259.not.i = icmp eq i64 %i.bay, %.0123.i876
  br i1 %exitcond259.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph227.i, !llvm.loop !1822

bb.jc:                                            ; preds = %bb.im
  %.not232.i = icmp eq i64 %.0123.i876, 0         ; 2 uses
  br i1 %.not.i875, label %.preheader186.i, label %.preheader189.i

.preheader189.i:                                  ; preds = %bb.jc
  br i1 %.not232.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader188.us.i

.preheader188.us.i:                               ; preds = %.preheader189.i, %._crit_edge.us210.i
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i, %._crit_edge.us210.i ], [ 0, %.preheader189.i ] ; 2 uses
  %.7207.us.i = phi double [ %.9.us.i891, %._crit_edge.us210.i ], [ %.01361538, %.preheader189.i ]
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jk, %.preheader188.us.i
  %.3204.us.i = phi i64 [ 0, %.preheader188.us.i ], [ %i.bco, %bb.jk ] ; 3 uses
  %.8203.us.i = phi double [ %.7207.us.i, %.preheader188.us.i ], [ %.9.us.i891, %bb.jk ] ; 3 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.3204.us.i
  %i.bba = load i8, ptr %i.baz, align 1, !tbaa !16
  %.not140.us.i889 = icmp eq i8 %i.bba, 0
  br i1 %.not140.us.i889, label %bb.jk, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bbb = mul i64 %.3204.us.i, %i.fo
  %i.bbc = add i64 %i.bbb, %indvars.iv247.i       ; 2 uses
  %i.bbd = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.bbc
  %i.bbe = load i16, ptr %i.bbd, align 2, !tbaa !146 ; 3 uses
  %i.bbf = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.bbc
  %i.bbg = load i16, ptr %i.bbf, align 2, !tbaa !146 ; 3 uses
  %.not141.us.i890 = icmp eq i16 %i.bbe, %i.bbg
  br i1 %.not141.us.i890, label %bb.jk, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.bbh = zext i16 %i.bbe to i32                 ; 2 uses
  %i.bbi = shl nuw nsw i32 %i.bbh, 13             ; 2 uses
  %i.bbj = and i32 %i.bbi, 268427264              ; 2 uses
  %i.bbk = add nuw nsw i32 %i.bbj, 939524096
  %i.bbl = and i32 %i.bbh, 31744
  switch i32 %i.bbl, label %_ZNK2cv6hfloatcvfEv.exit157.us.i [
    i32 31744, label %bb.jh
    i32 0, label %bb.jg
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.bbm = add nuw nsw i32 %i.bbj, 947912704
  %i.bbn = bitcast i32 %i.bbm to float
  %i.bbo = fadd float %i.bbn, f0xB8800000
  %i.bbp = bitcast float %i.bbo to i32
  br label %_ZNK2cv6hfloatcvfEv.exit157.us.i

bb.jh:                                            ; preds = %bb.jf
  %i.bbq = or i32 %i.bbi, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit157.us.i

_ZNK2cv6hfloatcvfEv.exit157.us.i:                 ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.bbr = phi i32 [ %i.bbq, %bb.jh ], [ %i.bbp, %bb.jg ], [ %i.bbk, %bb.jf ]
  %.signext.i156.us.i = sext i16 %i.bbe to i32
  %i.bbs = and i32 %.signext.i156.us.i, -2147483648
  %i.bbt = or i32 %i.bbr, %i.bbs
  %i.bbu = bitcast i32 %i.bbt to float
  %i.bbv = fpext float %i.bbu to double
  %i.bbw = zext i16 %i.bbg to i32                 ; 2 uses
  %i.bbx = shl nuw nsw i32 %i.bbw, 13             ; 2 uses
  %i.bby = and i32 %i.bbx, 268427264              ; 2 uses
  %i.bbz = add nuw nsw i32 %i.bby, 939524096
  %i.bca = and i32 %i.bbw, 31744
  switch i32 %i.bca, label %_ZNK2cv6hfloatcvfEv.exit159.us.i [
    i32 31744, label %bb.jj
    i32 0, label %bb.ji
  ]

bb.ji:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit157.us.i
  %i.bcb = add nuw nsw i32 %i.bby, 947912704
  %i.bcc = bitcast i32 %i.bcb to float
  %i.bcd = fadd float %i.bcc, f0xB8800000
  %i.bce = bitcast float %i.bcd to i32
  br label %_ZNK2cv6hfloatcvfEv.exit159.us.i

bb.jj:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit157.us.i
  %i.bcf = or i32 %i.bbx, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit159.us.i

_ZNK2cv6hfloatcvfEv.exit159.us.i:                 ; preds = %bb.jj, %bb.ji, %_ZNK2cv6hfloatcvfEv.exit157.us.i
  %i.bcg = phi i32 [ %i.bcf, %bb.jj ], [ %i.bce, %bb.ji ], [ %i.bbz, %_ZNK2cv6hfloatcvfEv.exit157.us.i ]
  %.signext.i158.us.i = sext i16 %i.bbg to i32
  %i.bch = and i32 %.signext.i158.us.i, -2147483648
  %i.bci = or i32 %i.bcg, %i.bch
  %i.bcj = bitcast i32 %i.bci to float
  %i.bck = fpext float %i.bcj to double
  %i.bcl = fsub double %i.bbv, %i.bck
  %i.bcm = call noundef double @llvm.fabs.f64(double %i.bcl)
  %i.bcn = fadd double %.8203.us.i, %i.bcm
  br label %bb.jk

bb.jk:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit159.us.i, %bb.je, %bb.jd
  %.9.us.i891 = phi double [ %.8203.us.i, %bb.jd ], [ %.8203.us.i, %bb.je ], [ %i.bcn, %_ZNK2cv6hfloatcvfEv.exit159.us.i ] ; 3 uses
  %i.bco = add nuw i64 %.3204.us.i, 1             ; 2 uses
  %exitcond246.not.i = icmp eq i64 %i.bco, %.0123.i876
  br i1 %exitcond246.not.i, label %._crit_edge.us210.i, label %bb.jd, !llvm.loop !1823

._crit_edge.us210.i:                              ; preds = %bb.jk
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 1 ; 2 uses
  %exitcond251.not.i = icmp eq i64 %indvars.iv.next248.i, %i.fo
  br i1 %exitcond251.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader188.us.i, !llvm.loop !1824

.preheader186.i:                                  ; preds = %bb.jc
  br i1 %.not232.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %.preheader186.i, %bb.jq
  %.2213.i = phi i64 [ %i.bea, %bb.jq ], [ 0, %.preheader186.i ] ; 3 uses
  %.5182212.i = phi double [ %.6.i893, %bb.jq ], [ %.01361538, %.preheader186.i ] ; 2 uses
  %i.bcp = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.2213.i
  %i.bcq = load i16, ptr %i.bcp, align 2, !tbaa !146 ; 3 uses
  %i.bcr = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %.2213.i
  %i.bcs = load i16, ptr %i.bcr, align 2, !tbaa !146 ; 3 uses
  %.not139.i892 = icmp eq i16 %i.bcq, %i.bcs
  br i1 %.not139.i892, label %bb.jq, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph214.i
  %i.bct = zext i16 %i.bcq to i32                 ; 2 uses
  %i.bcu = shl nuw nsw i32 %i.bct, 13             ; 2 uses
  %i.bcv = and i32 %i.bcu, 268427264              ; 2 uses
  %i.bcw = add nuw nsw i32 %i.bcv, 939524096
  %i.bcx = and i32 %i.bct, 31744
  switch i32 %i.bcx, label %_ZNK2cv6hfloatcvfEv.exit153.i [
    i32 31744, label %bb.jm
    i32 0, label %bb.jn
  ]

bb.jm:                                            ; preds = %bb.jl
  %i.bcy = or i32 %i.bcu, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit153.i

bb.jn:                                            ; preds = %bb.jl
  %i.bcz = add nuw nsw i32 %i.bcv, 947912704
  %i.bda = bitcast i32 %i.bcz to float
  %i.bdb = fadd float %i.bda, f0xB8800000
  %i.bdc = bitcast float %i.bdb to i32
  br label %_ZNK2cv6hfloatcvfEv.exit153.i

_ZNK2cv6hfloatcvfEv.exit153.i:                    ; preds = %bb.jn, %bb.jm, %bb.jl
  %i.bdd = phi i32 [ %i.bcy, %bb.jm ], [ %i.bdc, %bb.jn ], [ %i.bcw, %bb.jl ]
  %.signext.i152.i = sext i16 %i.bcq to i32
  %i.bde = and i32 %.signext.i152.i, -2147483648
  %i.bdf = or i32 %i.bdd, %i.bde
  %i.bdg = bitcast i32 %i.bdf to float
  %i.bdh = fpext float %i.bdg to double
  %i.bdi = zext i16 %i.bcs to i32                 ; 2 uses
  %i.bdj = shl nuw nsw i32 %i.bdi, 13             ; 2 uses
  %i.bdk = and i32 %i.bdj, 268427264              ; 2 uses
  %i.bdl = add nuw nsw i32 %i.bdk, 939524096
  %i.bdm = and i32 %i.bdi, 31744
  switch i32 %i.bdm, label %_ZNK2cv6hfloatcvfEv.exit155.i [
    i32 31744, label %bb.jo
    i32 0, label %bb.jp
  ]

bb.jo:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit153.i
  %i.bdn = or i32 %i.bdj, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit155.i

bb.jp:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit153.i
  %i.bdo = add nuw nsw i32 %i.bdk, 947912704
  %i.bdp = bitcast i32 %i.bdo to float
  %i.bdq = fadd float %i.bdp, f0xB8800000
  %i.bdr = bitcast float %i.bdq to i32
  br label %_ZNK2cv6hfloatcvfEv.exit155.i

_ZNK2cv6hfloatcvfEv.exit155.i:                    ; preds = %bb.jp, %bb.jo, %_ZNK2cv6hfloatcvfEv.exit153.i
  %i.bds = phi i32 [ %i.bdn, %bb.jo ], [ %i.bdr, %bb.jp ], [ %i.bdl, %_ZNK2cv6hfloatcvfEv.exit153.i ]
  %.signext.i154.i = sext i16 %i.bcs to i32
  %i.bdt = and i32 %.signext.i154.i, -2147483648
  %i.bdu = or i32 %i.bds, %i.bdt
  %i.bdv = bitcast i32 %i.bdu to float
  %i.bdw = fpext float %i.bdv to double
  %i.bdx = fsub double %i.bdh, %i.bdw
  %i.bdy = call noundef double @llvm.fabs.f64(double %i.bdx)
  %i.bdz = fadd double %.5182212.i, %i.bdy
  br label %bb.jq

bb.jq:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit155.i, %.lr.ph214.i
  %.6.i893 = phi double [ %.5182212.i, %.lr.ph214.i ], [ %i.bdz, %_ZNK2cv6hfloatcvfEv.exit155.i ] ; 2 uses
  %i.bea = add nuw i64 %.2213.i, 1                ; 2 uses
  %exitcond252.not.i = icmp eq i64 %i.bea, %.0123.i876
  br i1 %exitcond252.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph214.i, !llvm.loop !1825

bb.jr:                                            ; preds = %bb.im
  %.not230.i = icmp eq i64 %.0123.i876, 0         ; 2 uses
  br i1 %.not.i875, label %.preheader191.i, label %.preheader194.i

.preheader194.i:                                  ; preds = %bb.jr
  br i1 %.not230.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader193.us.i

.preheader193.us.i:                               ; preds = %.preheader194.i, %._crit_edge.us.i883
  %indvars.iv.i878 = phi i64 [ %indvars.iv.next.i884, %._crit_edge.us.i883 ], [ 0, %.preheader194.i ] ; 2 uses
  %.12198.us.i = phi double [ %.14.us.i881, %._crit_edge.us.i883 ], [ %.01361538, %.preheader194.i ]
  br label %bb.js

bb.js:                                            ; preds = %bb.jz, %.preheader193.us.i
  %.5197.us.i = phi i64 [ 0, %.preheader193.us.i ], [ %i.bfp, %bb.jz ] ; 3 uses
  %.13196.us.i = phi double [ %.12198.us.i, %.preheader193.us.i ], [ %.14.us.i881, %bb.jz ] ; 3 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.5197.us.i
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !16
  %.not137.us.i879 = icmp eq i8 %i.bec, 0
  br i1 %.not137.us.i879, label %bb.jz, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bed = mul i64 %.5197.us.i, %i.fo
  %i.bee = add i64 %i.bed, %indvars.iv.i878       ; 2 uses
  %i.bef = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.bee
  %i.beg = load i16, ptr %i.bef, align 2, !tbaa !146 ; 3 uses
  %i.beh = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.bee
  %i.bei = load i16, ptr %i.beh, align 2, !tbaa !146 ; 3 uses
  %.not138.us.i880 = icmp eq i16 %i.beg, %i.bei
  br i1 %.not138.us.i880, label %bb.jz, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.bej = zext i16 %i.beg to i32                 ; 2 uses
  %i.bek = shl nuw nsw i32 %i.bej, 13             ; 2 uses
  %i.bel = and i32 %i.bek, 268427264              ; 2 uses
  %i.bem = add nuw nsw i32 %i.bel, 939524096
  %i.ben = and i32 %i.bej, 31744
  switch i32 %i.ben, label %_ZNK2cv6hfloatcvfEv.exit165.us.i [
    i32 31744, label %bb.jw
    i32 0, label %bb.jv
  ]

bb.jv:                                            ; preds = %bb.ju
  %i.beo = add nuw nsw i32 %i.bel, 947912704
  %i.bep = bitcast i32 %i.beo to float
  %i.beq = fadd float %i.bep, f0xB8800000
  %i.ber = bitcast float %i.beq to i32
  br label %_ZNK2cv6hfloatcvfEv.exit165.us.i

bb.jw:                                            ; preds = %bb.ju
  %i.bes = or i32 %i.bek, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit165.us.i

_ZNK2cv6hfloatcvfEv.exit165.us.i:                 ; preds = %bb.jw, %bb.jv, %bb.ju
  %i.bet = phi i32 [ %i.bes, %bb.jw ], [ %i.ber, %bb.jv ], [ %i.bem, %bb.ju ]
  %.signext.i164.us.i = sext i16 %i.beg to i32
  %i.beu = and i32 %.signext.i164.us.i, -2147483648
  %i.bev = or i32 %i.bet, %i.beu
  %i.bew = bitcast i32 %i.bev to float
  %i.bex = fpext float %i.bew to double
  %i.bey = zext i16 %i.bei to i32                 ; 2 uses
  %i.bez = shl nuw nsw i32 %i.bey, 13             ; 2 uses
  %i.bfa = and i32 %i.bez, 268427264              ; 2 uses
  %i.bfb = add nuw nsw i32 %i.bfa, 939524096
  %i.bfc = and i32 %i.bey, 31744
  switch i32 %i.bfc, label %_ZNK2cv6hfloatcvfEv.exit167.us.i [
    i32 31744, label %bb.jy
    i32 0, label %bb.jx
  ]

bb.jx:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit165.us.i
  %i.bfd = add nuw nsw i32 %i.bfa, 947912704
  %i.bfe = bitcast i32 %i.bfd to float
  %i.bff = fadd float %i.bfe, f0xB8800000
  %i.bfg = bitcast float %i.bff to i32
  br label %_ZNK2cv6hfloatcvfEv.exit167.us.i

bb.jy:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit165.us.i
  %i.bfh = or i32 %i.bez, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit167.us.i

_ZNK2cv6hfloatcvfEv.exit167.us.i:                 ; preds = %bb.jy, %bb.jx, %_ZNK2cv6hfloatcvfEv.exit165.us.i
  %i.bfi = phi i32 [ %i.bfh, %bb.jy ], [ %i.bfg, %bb.jx ], [ %i.bfb, %_ZNK2cv6hfloatcvfEv.exit165.us.i ]
  %.signext.i166.us.i = sext i16 %i.bei to i32
  %i.bfj = and i32 %.signext.i166.us.i, -2147483648
  %i.bfk = or i32 %i.bfi, %i.bfj
  %i.bfl = bitcast i32 %i.bfk to float
  %i.bfm = fpext float %i.bfl to double
  %i.bfn = fsub double %i.bex, %i.bfm             ; 2 uses
  %i.bfo = call double @llvm.fmuladd.f64(double %i.bfn, double %i.bfn, double %.13196.us.i)
  br label %bb.jz

bb.jz:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit167.us.i, %bb.jt, %bb.js
  %.14.us.i881 = phi double [ %.13196.us.i, %bb.js ], [ %.13196.us.i, %bb.jt ], [ %i.bfo, %_ZNK2cv6hfloatcvfEv.exit167.us.i ] ; 3 uses
  %i.bfp = add nuw i64 %.5197.us.i, 1             ; 2 uses
  %exitcond.not.i882 = icmp eq i64 %i.bfp, %.0123.i876
  br i1 %exitcond.not.i882, label %._crit_edge.us.i883, label %bb.js, !llvm.loop !1826

._crit_edge.us.i883:                              ; preds = %bb.jz
  %indvars.iv.next.i884 = add nuw nsw i64 %indvars.iv.i878, 1 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %indvars.iv.next.i884, %i.fo
  br i1 %exitcond244.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader193.us.i, !llvm.loop !1827

.preheader191.i:                                  ; preds = %bb.jr
  br i1 %.not230.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i886

.lr.ph.i886:                                      ; preds = %.preheader191.i, %bb.kf
  %.4202.i = phi i64 [ %i.bha, %bb.kf ], [ 0, %.preheader191.i ] ; 3 uses
  %.10201.i = phi double [ %.11.i888, %bb.kf ], [ %.01361538, %.preheader191.i ] ; 2 uses
  %i.bfq = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.4202.i
  %i.bfr = load i16, ptr %i.bfq, align 2, !tbaa !146 ; 3 uses
  %i.bfs = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %.4202.i
  %i.bft = load i16, ptr %i.bfs, align 2, !tbaa !146 ; 3 uses
  %.not136.i887 = icmp eq i16 %i.bfr, %i.bft
  br i1 %.not136.i887, label %bb.kf, label %bb.ka

bb.ka:                                            ; preds = %.lr.ph.i886
  %i.bfu = zext i16 %i.bfr to i32                 ; 2 uses
  %i.bfv = shl nuw nsw i32 %i.bfu, 13             ; 2 uses
  %i.bfw = and i32 %i.bfv, 268427264              ; 2 uses
  %i.bfx = add nuw nsw i32 %i.bfw, 939524096
  %i.bfy = and i32 %i.bfu, 31744
  switch i32 %i.bfy, label %_ZNK2cv6hfloatcvfEv.exit161.i [
    i32 31744, label %bb.kb
    i32 0, label %bb.kc
  ]

bb.kb:                                            ; preds = %bb.ka
  %i.bfz = or i32 %i.bfv, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit161.i

bb.kc:                                            ; preds = %bb.ka
  %i.bga = add nuw nsw i32 %i.bfw, 947912704
  %i.bgb = bitcast i32 %i.bga to float
  %i.bgc = fadd float %i.bgb, f0xB8800000
  %i.bgd = bitcast float %i.bgc to i32
  br label %_ZNK2cv6hfloatcvfEv.exit161.i

_ZNK2cv6hfloatcvfEv.exit161.i:                    ; preds = %bb.kc, %bb.kb, %bb.ka
  %i.bge = phi i32 [ %i.bfz, %bb.kb ], [ %i.bgd, %bb.kc ], [ %i.bfx, %bb.ka ]
  %.signext.i160.i = sext i16 %i.bfr to i32
  %i.bgf = and i32 %.signext.i160.i, -2147483648
  %i.bgg = or i32 %i.bge, %i.bgf
  %i.bgh = bitcast i32 %i.bgg to float
  %i.bgi = fpext float %i.bgh to double
  %i.bgj = zext i16 %i.bft to i32                 ; 2 uses
  %i.bgk = shl nuw nsw i32 %i.bgj, 13             ; 2 uses
  %i.bgl = and i32 %i.bgk, 268427264              ; 2 uses
  %i.bgm = add nuw nsw i32 %i.bgl, 939524096
  %i.bgn = and i32 %i.bgj, 31744
  switch i32 %i.bgn, label %_ZNK2cv6hfloatcvfEv.exit163.i [
    i32 31744, label %bb.kd
    i32 0, label %bb.ke
  ]

bb.kd:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit161.i
  %i.bgo = or i32 %i.bgk, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit163.i

bb.ke:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit161.i
  %i.bgp = add nuw nsw i32 %i.bgl, 947912704
  %i.bgq = bitcast i32 %i.bgp to float
  %i.bgr = fadd float %i.bgq, f0xB8800000
  %i.bgs = bitcast float %i.bgr to i32
  br label %_ZNK2cv6hfloatcvfEv.exit163.i

_ZNK2cv6hfloatcvfEv.exit163.i:                    ; preds = %bb.ke, %bb.kd, %_ZNK2cv6hfloatcvfEv.exit161.i
  %i.bgt = phi i32 [ %i.bgo, %bb.kd ], [ %i.bgs, %bb.ke ], [ %i.bgm, %_ZNK2cv6hfloatcvfEv.exit161.i ]
  %.signext.i162.i = sext i16 %i.bft to i32
  %i.bgu = and i32 %.signext.i162.i, -2147483648
  %i.bgv = or i32 %i.bgt, %i.bgu
  %i.bgw = bitcast i32 %i.bgv to float
  %i.bgx = fpext float %i.bgw to double
  %i.bgy = fsub double %i.bgi, %i.bgx             ; 2 uses
  %i.bgz = call double @llvm.fmuladd.f64(double %i.bgy, double %i.bgy, double %.10201.i)
  br label %bb.kf

bb.kf:                                            ; preds = %_ZNK2cv6hfloatcvfEv.exit163.i, %.lr.ph.i886
  %.11.i888 = phi double [ %.10201.i, %.lr.ph.i886 ], [ %i.bgz, %_ZNK2cv6hfloatcvfEv.exit163.i ] ; 2 uses
  %i.bha = add nuw i64 %.4202.i, 1                ; 2 uses
  %exitcond245.not.i = icmp eq i64 %i.bha, %.0123.i876
  br i1 %exitcond245.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i886, !llvm.loop !1828

bb.kg:                                            ; preds = %bb.im
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc902 unwind label %bb.bx

.noexc902:                                        ; preds = %bb.kg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN6cvtestL9norm_flt_IfiEEdPKT_S3_miidPKh, ptr noundef nonnull @.str.35, i32 noundef 1441) #31
          to label %bb.kh unwind label %bb.ki

bb.kh:                                            ; preds = %.noexc902
  unreachable

bb.ki:                                            ; preds = %.noexc902
  %i.bhb = landingpad { ptr, i32 }
          cleanup
  %i.bhc = load ptr, ptr %6, align 8, !tbaa !19   ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bhe = icmp eq ptr %i.bhc, %i.bhd
  br i1 %i.bhe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i900, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i899

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i899: ; preds = %bb.ki
  %i.bhf = load i64, ptr %i.bhd, align 8, !tbaa !16
  %i.bhg = add i64 %i.bhf, 1
  call void @_ZdlPvm(ptr noundef %i.bhc, i64 noundef %i.bhg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i900

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i900: ; preds = %bb.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i899
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.body

bb.kj:                                            ; preds = %.lr.ph
  %.not.i905 = icmp eq ptr %i.fs, null            ; 4 uses
  %i.bhh = select i1 %.not.i905, i64 %i.fo, i64 1
  %.0123.i906 = mul i64 %i.bhh, %i.fc             ; 9 uses
  switch i32 %i.ct, label %bb.lf [
    i32 1, label %bb.kk
    i32 2, label %bb.kr
    i32 4, label %bb.ky
  ]

bb.kk:                                            ; preds = %bb.kj
  %.not212.i974 = icmp eq i64 %.0123.i906, 0      ; 2 uses
  br i1 %.not.i905, label %.preheader.i973, label %.preheader162.i956

.preheader162.i956:                               ; preds = %bb.kk
  br i1 %.not212.i974, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader161.us.i960

.preheader161.us.i960:                            ; preds = %.preheader162.i956, %._crit_edge.us201.i970
  %indvars.iv232.i961 = phi i64 [ %indvars.iv.next233.i971, %._crit_edge.us201.i970 ], [ 0, %.preheader162.i956 ] ; 2 uses
  %.2157198.us.i962 = phi double [ %.4159.us.i968, %._crit_edge.us201.i970 ], [ %.01361538, %.preheader162.i956 ]
  br label %bb.kl

bb.kl:                                            ; preds = %bb.ko, %.preheader161.us.i960
  %.1195.us.i963 = phi i64 [ 0, %.preheader161.us.i960 ], [ %i.bib, %bb.ko ] ; 3 uses
  %.3158194.us.i964 = phi double [ %.2157198.us.i962, %.preheader161.us.i960 ], [ %.4159.us.i968, %bb.ko ] ; 4 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.1195.us.i963
  %i.bhj = load i8, ptr %i.bhi, align 1, !tbaa !16
  %.not143.us.i965 = icmp eq i8 %i.bhj, 0
  br i1 %.not143.us.i965, label %bb.ko, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.bhk = mul i64 %.1195.us.i963, %i.fo
  %i.bhl = add i64 %i.bhk, %indvars.iv232.i961    ; 2 uses
  %i.bhm = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.bhl
  %i.bhn = load i16, ptr %i.bhm, align 2, !tbaa !146 ; 2 uses
  %i.bho = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.bhl
  %i.bhp = load i16, ptr %i.bho, align 2, !tbaa !146 ; 2 uses
  %.not144.us.i966 = icmp eq i16 %i.bhn, %i.bhp
  br i1 %.not144.us.i966, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.bhq = zext i16 %i.bhn to i32
  %i.bhr = shl nuw i32 %i.bhq, 16
  %i.bhs = bitcast i32 %i.bhr to float
  %i.bht = fpext float %i.bhs to double
  %i.bhu = zext i16 %i.bhp to i32
  %i.bhv = shl nuw i32 %i.bhu, 16
  %i.bhw = bitcast i32 %i.bhv to float
  %i.bhx = fpext float %i.bhw to double
  %i.bhy = fsub double %i.bht, %i.bhx
  %i.bhz = call noundef double @llvm.fabs.f64(double %i.bhy) ; 2 uses
  %i.bia = fcmp olt double %.3158194.us.i964, %i.bhz
  %.sroa.speculated.us.i967 = select i1 %i.bia, double %i.bhz, double %.3158194.us.i964
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km, %bb.kl
  %.4159.us.i968 = phi double [ %.3158194.us.i964, %bb.kl ], [ %.3158194.us.i964, %bb.km ], [ %.sroa.speculated.us.i967, %bb.kn ] ; 3 uses
  %i.bib = add nuw i64 %.1195.us.i963, 1          ; 2 uses
  %exitcond231.not.i969 = icmp eq i64 %i.bib, %.0123.i906
  br i1 %exitcond231.not.i969, label %._crit_edge.us201.i970, label %bb.kl, !llvm.loop !1829

._crit_edge.us201.i970:                           ; preds = %bb.ko
  %indvars.iv.next233.i971 = add nuw nsw i64 %indvars.iv232.i961, 1 ; 2 uses
  %exitcond236.not.i972 = icmp eq i64 %indvars.iv.next233.i971, %i.fo
  br i1 %exitcond236.not.i972, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader161.us.i960, !llvm.loop !1830

.preheader.i973:                                  ; preds = %bb.kk
  br i1 %.not212.i974, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph205.i975

.lr.ph205.i975:                                   ; preds = %.preheader.i973, %bb.kq
  %.0125204.i976 = phi i64 [ %i.bir, %bb.kq ], [ 0, %.preheader.i973 ] ; 3 uses
  %.0203.i977 = phi double [ %.1156.i980, %bb.kq ], [ %.01361538, %.preheader.i973 ] ; 3 uses
  %i.bic = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.0125204.i976
  %i.bid = load i16, ptr %i.bic, align 2, !tbaa !146 ; 2 uses
  %i.bie = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %.0125204.i976
  %i.bif = load i16, ptr %i.bie, align 2, !tbaa !146 ; 2 uses
  %.not142.i978 = icmp eq i16 %i.bid, %i.bif
  br i1 %.not142.i978, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.lr.ph205.i975
  %i.big = zext i16 %i.bid to i32
  %i.bih = shl nuw i32 %i.big, 16
  %i.bii = bitcast i32 %i.bih to float
  %i.bij = fpext float %i.bii to double
  %i.bik = zext i16 %i.bif to i32
  %i.bil = shl nuw i32 %i.bik, 16
  %i.bim = bitcast i32 %i.bil to float
  %i.bin = fpext float %i.bim to double
  %i.bio = fsub double %i.bij, %i.bin
  %i.bip = call noundef double @llvm.fabs.f64(double %i.bio) ; 2 uses
  %i.biq = fcmp olt double %.0203.i977, %i.bip
  %.sroa.speculated147.i979 = select i1 %i.biq, double %i.bip, double %.0203.i977
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.lr.ph205.i975
  %.1156.i980 = phi double [ %.0203.i977, %.lr.ph205.i975 ], [ %.sroa.speculated147.i979, %bb.kp ] ; 2 uses
  %i.bir = add nuw i64 %.0125204.i976, 1          ; 2 uses
  %exitcond237.not.i981 = icmp eq i64 %i.bir, %.0123.i906
  br i1 %exitcond237.not.i981, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph205.i975, !llvm.loop !1831

bb.kr:                                            ; preds = %bb.kj
  %.not210.i949 = icmp eq i64 %.0123.i906, 0      ; 2 uses
  br i1 %.not.i905, label %.preheader164.i948, label %.preheader167.i932

.preheader167.i932:                               ; preds = %bb.kr
  br i1 %.not210.i949, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader166.us.i936

.preheader166.us.i936:                            ; preds = %.preheader167.i932, %._crit_edge.us188.i945
  %indvars.iv225.i937 = phi i64 [ %indvars.iv.next226.i946, %._crit_edge.us188.i945 ], [ 0, %.preheader167.i932 ] ; 2 uses
  %.7185.us.i938 = phi double [ %.9.us.i943, %._crit_edge.us188.i945 ], [ %.01361538, %.preheader167.i932 ]
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kv, %.preheader166.us.i936
  %.3182.us.i939 = phi i64 [ 0, %.preheader166.us.i936 ], [ %i.bjl, %bb.kv ] ; 3 uses
  %.8181.us.i940 = phi double [ %.7185.us.i938, %.preheader166.us.i936 ], [ %.9.us.i943, %bb.kv ] ; 3 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.3182.us.i939
  %i.bit = load i8, ptr %i.bis, align 1, !tbaa !16
  %.not140.us.i941 = icmp eq i8 %i.bit, 0
  br i1 %.not140.us.i941, label %bb.kv, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.biu = mul i64 %.3182.us.i939, %i.fo
  %i.biv = add i64 %i.biu, %indvars.iv225.i937    ; 2 uses
  %i.biw = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.biv
  %i.bix = load i16, ptr %i.biw, align 2, !tbaa !146 ; 2 uses
  %i.biy = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.biv
  %i.biz = load i16, ptr %i.biy, align 2, !tbaa !146 ; 2 uses
  %.not141.us.i942 = icmp eq i16 %i.bix, %i.biz
  br i1 %.not141.us.i942, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bja = zext i16 %i.bix to i32
  %i.bjb = shl nuw i32 %i.bja, 16
  %i.bjc = bitcast i32 %i.bjb to float
  %i.bjd = fpext float %i.bjc to double
  %i.bje = zext i16 %i.biz to i32
  %i.bjf = shl nuw i32 %i.bje, 16
  %i.bjg = bitcast i32 %i.bjf to float
  %i.bjh = fpext float %i.bjg to double
  %i.bji = fsub double %i.bjd, %i.bjh
  %i.bjj = call noundef double @llvm.fabs.f64(double %i.bji)
  %i.bjk = fadd double %.8181.us.i940, %i.bjj
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt, %bb.ks
  %.9.us.i943 = phi double [ %.8181.us.i940, %bb.ks ], [ %.8181.us.i940, %bb.kt ], [ %i.bjk, %bb.ku ] ; 3 uses
  %i.bjl = add nuw i64 %.3182.us.i939, 1          ; 2 uses
  %exitcond224.not.i944 = icmp eq i64 %i.bjl, %.0123.i906
  br i1 %exitcond224.not.i944, label %._crit_edge.us188.i945, label %bb.ks, !llvm.loop !1832

._crit_edge.us188.i945:                           ; preds = %bb.kv
  %indvars.iv.next226.i946 = add nuw nsw i64 %indvars.iv225.i937, 1 ; 2 uses
  %exitcond229.not.i947 = icmp eq i64 %indvars.iv.next226.i946, %i.fo
  br i1 %exitcond229.not.i947, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader166.us.i936, !llvm.loop !1833

.preheader164.i948:                               ; preds = %bb.kr
  br i1 %.not210.i949, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph192.i950

.lr.ph192.i950:                                   ; preds = %.preheader164.i948, %bb.kx
  %.2191.i951 = phi i64 [ %i.bkb, %bb.kx ], [ 0, %.preheader164.i948 ] ; 3 uses
  %.5160190.i952 = phi double [ %.6.i954, %bb.kx ], [ %.01361538, %.preheader164.i948 ] ; 2 uses
  %i.bjm = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.2191.i951
  %i.bjn = load i16, ptr %i.bjm, align 2, !tbaa !146 ; 2 uses
  %i.bjo = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %.2191.i951
  %i.bjp = load i16, ptr %i.bjo, align 2, !tbaa !146 ; 2 uses
  %.not139.i953 = icmp eq i16 %i.bjn, %i.bjp
  br i1 %.not139.i953, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph192.i950
  %i.bjq = zext i16 %i.bjn to i32
  %i.bjr = shl nuw i32 %i.bjq, 16
  %i.bjs = bitcast i32 %i.bjr to float
  %i.bjt = fpext float %i.bjs to double
  %i.bju = zext i16 %i.bjp to i32
  %i.bjv = shl nuw i32 %i.bju, 16
  %i.bjw = bitcast i32 %i.bjv to float
  %i.bjx = fpext float %i.bjw to double
  %i.bjy = fsub double %i.bjt, %i.bjx
  %i.bjz = call noundef double @llvm.fabs.f64(double %i.bjy)
  %i.bka = fadd double %.5160190.i952, %i.bjz
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %.lr.ph192.i950
  %.6.i954 = phi double [ %.5160190.i952, %.lr.ph192.i950 ], [ %i.bka, %bb.kw ] ; 2 uses
  %i.bkb = add nuw i64 %.2191.i951, 1             ; 2 uses
  %exitcond230.not.i955 = icmp eq i64 %i.bkb, %.0123.i906
  br i1 %exitcond230.not.i955, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph192.i950, !llvm.loop !1834

bb.ky:                                            ; preds = %bb.kj
  %.not208.i925 = icmp eq i64 %.0123.i906, 0      ; 2 uses
  br i1 %.not.i905, label %.preheader169.i924, label %.preheader172.i907

.preheader172.i907:                               ; preds = %bb.ky
  br i1 %.not208.i925, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader171.us.i911

.preheader171.us.i911:                            ; preds = %.preheader172.i907, %._crit_edge.us.i920
  %indvars.iv.i912 = phi i64 [ %indvars.iv.next.i921, %._crit_edge.us.i920 ], [ 0, %.preheader172.i907 ] ; 2 uses
  %.12176.us.i913 = phi double [ %.14.us.i918, %._crit_edge.us.i920 ], [ %.01361538, %.preheader172.i907 ]
  br label %bb.kz

bb.kz:                                            ; preds = %bb.lc, %.preheader171.us.i911
  %.5175.us.i914 = phi i64 [ 0, %.preheader171.us.i911 ], [ %i.bku, %bb.lc ] ; 3 uses
  %.13174.us.i915 = phi double [ %.12176.us.i913, %.preheader171.us.i911 ], [ %.14.us.i918, %bb.lc ] ; 3 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.5175.us.i914
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !16
  %.not137.us.i916 = icmp eq i8 %i.bkd, 0
  br i1 %.not137.us.i916, label %bb.lc, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bke = mul i64 %.5175.us.i914, %i.fo
  %i.bkf = add i64 %i.bke, %indvars.iv.i912       ; 2 uses
  %i.bkg = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.bkf
  %i.bkh = load i16, ptr %i.bkg, align 2, !tbaa !146 ; 2 uses
  %i.bki = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.bkf
  %i.bkj = load i16, ptr %i.bki, align 2, !tbaa !146 ; 2 uses
  %.not138.us.i917 = icmp eq i16 %i.bkh, %i.bkj
  br i1 %.not138.us.i917, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bkk = zext i16 %i.bkh to i32
  %i.bkl = shl nuw i32 %i.bkk, 16
  %i.bkm = bitcast i32 %i.bkl to float
  %i.bkn = fpext float %i.bkm to double
  %i.bko = zext i16 %i.bkj to i32
  %i.bkp = shl nuw i32 %i.bko, 16
  %i.bkq = bitcast i32 %i.bkp to float
  %i.bkr = fpext float %i.bkq to double
  %i.bks = fsub double %i.bkn, %i.bkr             ; 2 uses
  %i.bkt = call double @llvm.fmuladd.f64(double %i.bks, double %i.bks, double %.13174.us.i915)
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la, %bb.kz
  %.14.us.i918 = phi double [ %.13174.us.i915, %bb.kz ], [ %.13174.us.i915, %bb.la ], [ %i.bkt, %bb.lb ] ; 3 uses
  %i.bku = add nuw i64 %.5175.us.i914, 1          ; 2 uses
  %exitcond.not.i919 = icmp eq i64 %i.bku, %.0123.i906
  br i1 %exitcond.not.i919, label %._crit_edge.us.i920, label %bb.kz, !llvm.loop !1835

._crit_edge.us.i920:                              ; preds = %bb.lc
  %indvars.iv.next.i921 = add nuw nsw i64 %indvars.iv.i912, 1 ; 2 uses
  %exitcond222.not.i922 = icmp eq i64 %indvars.iv.next.i921, %i.fo
  br i1 %exitcond222.not.i922, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.preheader171.us.i911, !llvm.loop !1836

.preheader169.i924:                               ; preds = %bb.ky
  br i1 %.not208.i925, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i926

.lr.ph.i926:                                      ; preds = %.preheader169.i924, %bb.le
  %.4180.i927 = phi i64 [ %i.blj, %bb.le ], [ 0, %.preheader169.i924 ] ; 3 uses
  %.10179.i928 = phi double [ %.11.i930, %bb.le ], [ %.01361538, %.preheader169.i924 ] ; 2 uses
  %i.bkv = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %.4180.i927
  %i.bkw = load i16, ptr %i.bkv, align 2, !tbaa !146 ; 2 uses
  %i.bkx = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %.4180.i927
  %i.bky = load i16, ptr %i.bkx, align 2, !tbaa !146 ; 2 uses
  %.not136.i929 = icmp eq i16 %i.bkw, %i.bky
  br i1 %.not136.i929, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %.lr.ph.i926
  %i.bkz = zext i16 %i.bkw to i32
  %i.bla = shl nuw i32 %i.bkz, 16
  %i.blb = bitcast i32 %i.bla to float
  %i.blc = fpext float %i.blb to double
  %i.bld = zext i16 %i.bky to i32
  %i.ble = shl nuw i32 %i.bld, 16
  %i.blf = bitcast i32 %i.ble to float
  %i.blg = fpext float %i.blf to double
  %i.blh = fsub double %i.blc, %i.blg             ; 2 uses
  %i.bli = call double @llvm.fmuladd.f64(double %i.blh, double %i.blh, double %.10179.i928)
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %.lr.ph.i926
  %.11.i930 = phi double [ %.10179.i928, %.lr.ph.i926 ], [ %i.bli, %bb.ld ] ; 2 uses
  %i.blj = add nuw i64 %.4180.i927, 1             ; 2 uses
  %exitcond223.not.i931 = icmp eq i64 %i.blj, %.0123.i906
  br i1 %exitcond223.not.i931, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph.i926, !llvm.loop !1837

bb.lf:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc985 unwind label %bb.bx

.noexc985:                                        ; preds = %bb.lf
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN6cvtestL9norm_flt_IfiEEdPKT_S3_miidPKh, ptr noundef nonnull @.str.35, i32 noundef 1441) #31
          to label %bb.lg unwind label %bb.lh

bb.lg:                                            ; preds = %.noexc985
  unreachable

bb.lh:                                            ; preds = %.noexc985
  %i.blk = landingpad { ptr, i32 }
          cleanup
  %i.bll = load ptr, ptr %4, align 8, !tbaa !19   ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bln = icmp eq ptr %i.bll, %i.blm
  br i1 %i.bln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i983, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i982

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i982: ; preds = %bb.lh
  %i.blo = load i64, ptr %i.blm, align 8, !tbaa !16
  %i.blp = add i64 %i.blo, 1
  call void @_ZdlPvm(ptr noundef %i.bll, i64 noundef %i.blp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i983

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i983: ; preds = %bb.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i982
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.li:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.lj unwind label %bb.ll

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @__func__._ZN6cvtest4normERKN2cv11_InputArrayEiS3_, ptr noundef nonnull @.str.35, i32 noundef 1652) #31
          to label %bb.lk unwind label %bb.lm

bb.lk:                                            ; preds = %bb.lj
  unreachable

bb.ll:                                            ; preds = %bb.li
  %i.blq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990

bb.lm:                                            ; preds = %bb.lj
  %i.blr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bls = load ptr, ptr %39, align 8, !tbaa !19  ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.blu = icmp eq ptr %i.bls, %i.blt
  br i1 %i.blu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988: ; preds = %bb.lm
  %i.blv = load i64, ptr %i.blt, align 8, !tbaa !16
  %i.blw = add i64 %i.blv, 1
  call void @_ZdlPvm(ptr noundef %i.bls, i64 noundef %i.blw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit990: ; preds = %bb.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988, %bb.ll
  %.pn178 = phi { ptr, i32 } [ %i.blq, %bb.ll ], [ %i.blr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i988 ], [ %i.blr, %bb.lm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #30
  br label %.body

_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit.unr-lcssa: ; preds = %.lr.ph156.i
  %lcmp.mod1814.not = icmp eq i64 %xtraiter1813, 0
  br i1 %lcmp.mod1814.not, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph156.i.epil.preheader

.lr.ph156.i.epil.preheader:                       ; preds = %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit.unr-lcssa, %.lr.ph156.i.preheader
  %.4155.i.epil.init = phi i64 [ 0, %.lr.ph156.i.preheader ], [ %i.km, %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit.unr-lcssa ] ; 2 uses
  %.8154.i.epil.init = phi double [ %.01361538, %.lr.ph156.i.preheader ], [ %i.kl, %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit.unr-lcssa ]
  %lcmp.mod1816 = trunc i64 %.0.i to i1
  call void @llvm.assume(i1 %lcmp.mod1816)
  %i.blx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.4155.i.epil.init
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !313, !range !633, !noundef !634
  %i.blz = trunc nuw i8 %i.bly to i1
  %i.bma = uitofp i1 %i.blz to double
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.4155.i.epil.init
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !313, !range !633, !noundef !634
  %i.bmd = trunc nuw i8 %i.bmc to i1
  %i.bme = uitofp i1 %i.bmd to double
  %i.bmf = fsub double %i.bma, %i.bme             ; 2 uses
  %i.bmg = call double @llvm.fmuladd.f64(double %i.bmf, double %i.bmf, double %.8154.i.epil.init)
  br label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit

_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1548.unr-lcssa: ; preds = %.lr.ph143.i
  %lcmp.mod1808.not = icmp eq i64 %xtraiter1807, 0
  br i1 %lcmp.mod1808.not, label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit, label %.lr.ph143.i.epil.preheader

.lr.ph143.i.epil.preheader:                       ; preds = %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1548.unr-lcssa, %.lr.ph143.i.preheader
  %.082142.i.epil.init = phi i64 [ 0, %.lr.ph143.i.preheader ], [ %i.hl, %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1548.unr-lcssa ] ; 2 uses
  %.0106141.i.epil.init = phi double [ %.01361538, %.lr.ph143.i.preheader ], [ %.sroa.speculated97.i.1, %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1548.unr-lcssa ] ; 2 uses
  %lcmp.mod1810 = trunc i64 %.0.i to i1
  call void @llvm.assume(i1 %lcmp.mod1810)
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.082142.i.epil.init
  %i.bmi = load i8, ptr %i.bmh, align 1, !tbaa !313, !range !633, !noundef !634
  %i.bmj = trunc nuw i8 %i.bmi to i1
  %i.bmk = uitofp i1 %i.bmj to double
  %i.bml = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.082142.i.epil.init
  %i.bmm = load i8, ptr %i.bml, align 1, !tbaa !313, !range !633, !noundef !634
  %i.bmn = trunc nuw i8 %i.bmm to i1
  %i.bmo = uitofp i1 %i.bmn to double
  %i.bmp = fsub double %i.bmk, %i.bmo
  %i.bmq = call noundef double @llvm.fabs.f64(double %i.bmp) ; 2 uses
  %i.bmr = fcmp olt double %.0106141.i.epil.init, %i.bmq
  %.sroa.speculated97.i.epil = select i1 %i.bmr, double %i.bmq, double %.0106141.i.epil.init
  br label %_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit

_ZN6cvtestL5norm_IbEEdPKT_S3_miidPKh.exit.loopexit1550.unr-lcssa: ; preds = %.lr.ph.i237
end_hunk_2
