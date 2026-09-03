Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ts_func?download=true
inline.NumInlined: 3054
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 706
loop-unroll.NumUnrolled: 780
begin_hunk_0_@_ZN6cvtest4normERKN2cv11_InputArrayEiS3_:bb.a
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !26
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
  store ptr %3, ptr %i.a, align 16, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !44
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
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49 ; 3 uses
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
  %i.bj = add i64 %.0115.us1522, 1                ; 2 uses
  %exitcond1243.not = icmp eq i64 %i.bj, %i.bf
  br i1 %exitcond1243.not, label %.split1131.us, label %_ZN6cvtestL11normHammingEPKhmi.exit.us, !llvm.loop !1602

_ZN6cvtestL11normHammingEPKhmi.exit.us:           ; preds = %.split.us.preheader, %.split.us
  %.0115.us1522 = phi i64 [ %i.bj, %.split.us ], [ 0, %.split.us.preheader ]
  %i.bk = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %.split.us unwind label %.split1133.us, !llvm.loop !1602 ; 0 uses

.split1133.us:                                    ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.us
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.split:                                           ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit
  %i.bm = sitofp i32 %.1.lcssa.i.lcssa to double
  %i.bn = fadd double %.01141519, %i.bm           ; 2 uses
  %i.bo = add i64 %.01151518, 1                   ; 2 uses
  %exitcond1242.not = icmp eq i64 %i.bo, %i.bf
  br i1 %exitcond1242.not, label %.split1131.us, label %.lr.ph29.i.preheader, !llvm.loop !1602

.lr.ph29.i.preheader:                             ; preds = %.lr.ph29.i.preheader.preheader, %.split
  %.01141519 = phi double [ %i.bn, %.split ], [ 0.000000e+00, %.lr.ph29.i.preheader.preheader ]
  %.01151518 = phi i64 [ %i.bo, %.split ], [ 0, %.lr.ph29.i.preheader.preheader ]
  %i.bp = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 3 uses
  br i1 %i.bi, label %.lr.ph29.i.epil.preheader, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %.lr.ph29.i.preheader, %._crit_edge.i.1
  %.01727.i = phi i64 [ %i.ch, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ] ; 3 uses
  %.02026.i = phi i32 [ %.1.lcssa.i.1, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ] ; 2 uses
  %niter2115 = phi i64 [ %niter2115.next.1, %._crit_edge.i.1 ], [ 0, %.lr.ph29.i.preheader ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01727.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !26  ; 2 uses
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
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph29.i
  %.1.lcssa.i = phi i32 [ %.02026.i, %.lr.ph29.i ], [ %i.bw, %.lr.ph.i ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01727.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26  ; 2 uses
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
  br i1 %.not.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1, !llvm.loop !1

._crit_edge.i.1:                                  ; preds = %.lr.ph.i.1, %._crit_edge.i
  %.1.lcssa.i.1 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.cf, %.lr.ph.i.1 ] ; 3 uses
  %i.ch = add nuw i64 %.01727.i, 2                ; 2 uses
  %niter2115.next.1 = add nuw i64 %niter2115, 2   ; 2 uses
  %niter2115.ncmp.1 = icmp eq i64 %niter2115.next.1, %unroll_iter2114
  br i1 %niter2115.ncmp.1, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa, label %.lr.ph29.i, !llvm.loop !2

_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.1
  br i1 %lcmp.mod2111.not, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph29.i.epil.preheader

.lr.ph29.i.epil.preheader:                        ; preds = %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa, %.lr.ph29.i.preheader
  %.01727.i.epil.init = phi i64 [ 0, %.lr.ph29.i.preheader ], [ %i.ch, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ]
  %.02026.i.epil.init = phi i32 [ 0, %.lr.ph29.i.preheader ], [ %.1.lcssa.i.1, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2113)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.01727.i.epil.init
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !26  ; 2 uses
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
  br i1 %.not.i.epil, label %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !1

_ZN6cvtestL11normHammingEPKhmi.exit.loopexit:     ; preds = %.lr.ph29.i.epil.preheader, %.lr.ph.i.epil, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa
  %.1.lcssa.i.lcssa = phi i32 [ %.1.lcssa.i.1, %_ZN6cvtestL11normHammingEPKhmi.exit.loopexit.unr-lcssa ], [ %.02026.i.epil.init, %.lr.ph29.i.epil.preheader ], [ %i.co, %.lr.ph.i.epil ]
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %.split unwind label %.split1133, !llvm.loop !1602 ; 0 uses

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
  %.us-phi = phi double [ 0.000000e+00, %.split.us.preheader ], [ 0.000000e+00, %.split.us ], [ 0.000000e+00, %.split.preheader ], [ %i.bn, %.split ]
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
  %i.cy = load i32, ptr %4, align 8, !tbaa !56
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
  %i.dd = load ptr, ptr %19, align 8, !tbaa !29   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.at
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !26
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %bb.as
  %.pn = phi { ptr, i32 } [ %i.db, %bb.as ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %i.dc, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.kx

bb.au:                                            ; preds = %bb.an, %bb.an, %bb.ak
  switch i32 %1, label %bb.av [
    i32 4, label %bb.ba
    i32 2, label %bb.ba
    i32 1, label %bb.ba
    i32 5, label %bb.ba
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
  %i.dk = load ptr, ptr %21, align 8, !tbaa !29   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.az
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.ay
  %.pn145 = phi { ptr, i32 } [ %i.di, %bb.ay ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.dj, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.kx

bb.ba:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr %3, ptr %i.b, align 16, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.dp, align 8, !tbaa !44
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.dq, align 16, !tbaa !44
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
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !49 ; 2 uses
  %i.du = load i32, ptr %3, align 8, !tbaa !56
  %i.dv = and i32 %i.du, 31
  %i.dw = load i32, ptr %23, align 16, !tbaa !56
  %i.dx = lshr i32 %i.dw, 5
  %i.dy = and i32 %i.dx, 127
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %23, i64 232
  %i.ec = zext nneg i32 %i.dz to i64              ; 151 uses
  %exitcond.not1514 = icmp eq i64 %i.dt, 0
  br i1 %exitcond.not1514, label %._crit_edge, label %.lr.ph

bb.bd:                                            ; preds = %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit
  %i.ed = add i64 %.01131515, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %i.dt
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1603

.lr.ph:                                           ; preds = %bb.bc, %bb.bd
  %.01516 = phi double [ %.1, %bb.bd ], [ 0.000000e+00, %bb.bc ] ; 192 uses
  %.01131515 = phi i64 [ %i.ed, %bb.bd ], [ 0, %bb.bc ]
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !58 ; 194 uses
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !58 ; 112 uses
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
  %.189118.us.i = phi double [ %.391.us.i.lcssa, %._crit_edge.us123.i ], [ %.01516, %.preheader99.us.i.preheader ] ; 2 uses
  %invariant.gep.us122.i = getelementptr i8, ptr %i.ee, i64 %indvars.iv163.i ; 3 uses
  br i1 %i.ej, label %.epil.preheader2079, label %.preheader99.us.i.new

.preheader99.us.i.new:                            ; preds = %.preheader99.us.i, %bb.bl
  %.1115.us.i = phi i64 [ %i.ez, %bb.bl ], [ 0, %.preheader99.us.i ] ; 4 uses
  %.290114.us.i = phi double [ %.391.us.i.1, %bb.bl ], [ %.189118.us.i, %.preheader99.us.i ] ; 3 uses
  %niter2086 = phi i64 [ %niter2086.next.1, %bb.bl ], [ 0, %.preheader99.us.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.1115.us.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !26
  %.not76.us.i = icmp eq i8 %i.el, 0
  br i1 %.not76.us.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.preheader99.us.i.new
  %i.em = mul i64 %.1115.us.i, %i.ec
  %gep.us121.i = getelementptr i8, ptr %invariant.gep.us122.i, i64 %i.em
  %i.en = load i8, ptr %gep.us121.i, align 1, !tbaa !72, !range !74, !noundef !75
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = uitofp i1 %i.eo to double               ; 2 uses
  %i.eq = fcmp olt double %.290114.us.i, %i.ep
  %.sroa.speculated.us.i = select i1 %i.eq, double %i.ep, double %.290114.us.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.preheader99.us.i.new
  %.391.us.i = phi double [ %.290114.us.i, %.preheader99.us.i.new ], [ %.sroa.speculated.us.i, %bb.bi ] ; 3 uses
  %i.er = or disjoint i64 %.1115.us.i, 1          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !26
  %.not76.us.i.1 = icmp eq i8 %i.et, 0
  br i1 %.not76.us.i.1, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eu = mul i64 %i.er, %i.ec
  %gep.us121.i.1 = getelementptr i8, ptr %invariant.gep.us122.i, i64 %i.eu
  %i.ev = load i8, ptr %gep.us121.i.1, align 1, !tbaa !72, !range !74, !noundef !75
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
  br i1 %niter2086.ncmp.1, label %._crit_edge.us123.i.unr-lcssa, label %.preheader99.us.i.new, !llvm.loop !1604

._crit_edge.us123.i.unr-lcssa:                    ; preds = %bb.bl
  br i1 %lcmp.mod2082.not, label %._crit_edge.us123.i, label %.epil.preheader2079

.epil.preheader2079:                              ; preds = %._crit_edge.us123.i.unr-lcssa, %.preheader99.us.i
  %.1115.us.i.epil.init = phi i64 [ 0, %.preheader99.us.i ], [ %i.ez, %._crit_edge.us123.i.unr-lcssa ] ; 2 uses
  %.290114.us.i.epil.init = phi double [ %.189118.us.i, %.preheader99.us.i ], [ %.391.us.i.1, %._crit_edge.us123.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod2084)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.1115.us.i.epil.init
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !26
  %.not76.us.i.epil = icmp eq i8 %i.fb, 0
  br i1 %.not76.us.i.epil, label %._crit_edge.us123.i, label %bb.bm

bb.bm:                                            ; preds = %.epil.preheader2079
  %i.fc = mul i64 %.1115.us.i.epil.init, %i.ec
  %gep.us121.i.epil = getelementptr i8, ptr %invariant.gep.us122.i, i64 %i.fc
  %i.fd = load i8, ptr %gep.us121.i.epil, align 1, !tbaa !72, !range !74, !noundef !75
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = uitofp i1 %i.fe to double               ; 2 uses
  %i.fg = fcmp olt double %.290114.us.i.epil.init, %i.ff
  %.sroa.speculated.us.i.epil = select i1 %i.fg, double %i.ff, double %.290114.us.i.epil.init
  br label %._crit_edge.us123.i

._crit_edge.us123.i:                              ; preds = %.epil.preheader2079, %bb.bm, %._crit_edge.us123.i.unr-lcssa
  %.391.us.i.lcssa = phi double [ %.391.us.i.1, %._crit_edge.us123.i.unr-lcssa ], [ %.290114.us.i.epil.init, %.epil.preheader2079 ], [ %.sroa.speculated.us.i.epil, %bb.bm ] ; 2 uses
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %i.ec
  br i1 %exitcond167.not.i, label %_ZN6cvtestL5norm_IbEEdPKT_miidPKh.exit, label %.preheader99.us.i, !llvm.loop !1605

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
  %.088125.i = phi double [ %.01516, %.lr.ph127.i.preheader.new ], [ %.sroa.speculated79.i.1, %.lr.ph127.i ] ; 2 uses
  %niter2093 = phi i64 [ 0, %.lr.ph127.i.preheader.new ], [ %niter2093.next.1, %.lr.ph127.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.064126.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !72, !range !74, !noundef !75
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = uitofp i1 %i.fk to double               ; 2 uses
  %i.fm = fcmp olt double %.088125.i, %i.fl
  %.sroa.speculated79.i = select i1 %i.fm, double %i.fl, double %.088125.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.064126.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !72, !range !74, !noundef !75
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = uitofp i1 %i.fq to double               ; 2 uses
  %i.fs = fcmp olt double %.sroa.speculated79.i, %i.fr
  %.sroa.speculated79.i.1 = select i1 %i.fs, double %i.fr, double %.sroa.speculated79.i ; 3 uses
end_hunk_0
