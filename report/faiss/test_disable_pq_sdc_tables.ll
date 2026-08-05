begin_hunk_0_@_ZN68IO_TestReadHNSWPQ_whenSDCDisabledFlagPassed_thenDisableSDCTable_Test8TestBodyEv:bb.a
  %i.bo = phi ptr [ %i.bj, %bb.q ], [ %i.bn, %bb.s ], [ %i.bj, %bb.r ]
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bi, ptr %i.bp, align 8, !tbaa !14, !alias.scope !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bi
  store i8 0, ptr %i.bq, align 1, !tbaa !17
  %i.br = zext nneg i32 %.lobit.i to i64
  %i.bs = load ptr, ptr %5, align 8, !tbaa !18, !alias.scope !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br ; 4 uses
  %i.bu = icmp ugt i32 %i.aw, 99
  br i1 %i.bu, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.bv = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.by, %.lr.ph.i11.i ], [ %i.aw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cj, %.lr.ph.i11.i ], [ %i.bv, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bw = urem i32 %.020.i.i, 100
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17, !noalias !25
  %i.cd = zext i32 %.01819.i.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !17
  %i.cf = load i8, ptr %i.ca, align 2, !tbaa !17, !noalias !25
  %i.cg = add i32 %.01819.i.i, -1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !17
  %i.cj = add i32 %.01819.i.i, -2
  %i.ck = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ck, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !29

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %bb.t
  %.0.lcssa.i.i = phi i32 [ %i.aw, %bb.t ], [ %i.by, %.lr.ph.i11.i ] ; 3 uses
  %i.cl = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.cm = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17, !noalias !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !17
  %i.cs = load i8, ptr %i.co, align 2, !tbaa !17, !noalias !25
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.ct = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.cu = or disjoint i8 %i.ct, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.w:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #24
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.u, %bb.v
  %storemerge.i.i = phi i8 [ %i.cu, %bb.v ], [ %i.cs, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.bt, align 1, !tbaa !17
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 25)
          to label %.noexc65 unwind label %bb.aj  ; 6 uses

.noexc65:                                         ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cy, ptr %4, align 8, !tbaa !10, !alias.scope !30
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !18 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 5 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.x:                                             ; preds = %.noexc65
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !14 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cy, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.df, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc65
  store ptr %i.cz, ptr %4, align 8, !tbaa !18, !alias.scope !30
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !17
  store i64 %i.dg, ptr %i.cy, align 8, !tbaa !17, !alias.scope !30
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %i.dh = phi i64 [ %i.dd, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !14, !alias.scope !30
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !18
  store i64 0, ptr %i.di, align 8, !tbaa !14
  store i8 0, ptr %i.da, align 8, !tbaa !17
  %i.dk = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bj
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.y
  %i.dm = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.do, ptr %7, align 8, !tbaa !10
  %i.dp = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.dq = load i64, ptr %i.dj, align 8, !tbaa !14 ; 8 uses
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %bb.z, label %._crit_edge.i.i67

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = icmp slt i64 %i.dq, 0
  br i1 %i.ds, label %.noexc.i68, label %bb.aa

.noexc.i68:                                       ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
          to label %.noexc69 unwind label %bb.ak

.noexc69:                                         ; preds = %.noexc.i68
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dt = add nuw i64 %i.dq, 1                    ; 2 uses
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !33

.noexc6.i:                                        ; preds = %bb.aa
  invoke void @_ZSt17__throw_bad_allocv() #25
          to label %.noexc70 unwind label %bb.ak

.noexc70:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.aa
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #23
          to label %.noexc71 unwind label %bb.ak  ; 2 uses

.noexc71:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.dv, ptr %7, align 8, !tbaa !18
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !17
  br label %._crit_edge.i.i67

._crit_edge.i.i67:                                ; preds = %.noexc71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dw = phi ptr [ %i.dv, %.noexc71 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  switch i64 %i.dq, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i67
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !17
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !17
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr align 1 %i.dp, i64 %i.dq, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i67
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dq, ptr %i.dy, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dq
  store i8 0, ptr %i.dz, align 1, !tbaa !17
  invoke void @_ZN12TempfilenameC2EP15pthread_mutex_tNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull @temp_file_mutex, ptr noundef nonnull align 8 %7)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.do
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.ae
  %i.ec = load i64, ptr %i.do, align 8, !tbaa !17
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %i.ee = invoke noalias noundef nonnull dereferenceable(32768) ptr @_Znwm(i64 noundef 32768) #23
          to label %bb.af unwind label %bb.am     ; 6 uses

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ef = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.eg = fdiv x86_fp80 %i.ef, %i.ai
  %i.eh = fptoui x86_fp80 %i.eg to i64            ; 2 uses
  %i.ei = add i64 %i.eh, 23
  %i.ej = udiv i64 %i.ei, %i.eh                   ; 2 uses
  %spec.select.i.i.i.i82 = call i64 @llvm.umax.i64(i64 %i.ej, i64 1) ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.ee, i8 0, i64 32768, i1 false)
  %xtraiter = and i64 %spec.select.i.i.i.i82, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %14 = add nsw i64 %spec.select.i.i.i.i82, -1
  %15 = icmp ult i64 %i.ej, 2
  br label %16

bb.ag:                                            ; preds = %bb.ao
  %i.ek = invoke noundef ptr @_ZN5faiss13index_factoryEiPKcNS_10MetricTypeEb(i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.ap unwind label %bb.au     ; 9 uses

bb.ah:                                            ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ai:                                            ; preds = %select.unfold.i.i.i.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.aj:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.bj
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.aj
  %i.eq = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.em, %bb.ai ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.en, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i68
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.al:                                            ; preds = %bb.ad
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.do
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.al
  %i.ew = load i64, ptr %i.do, align 8, !tbaa !17
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

16:                                               ; preds = %bb.af, %bb.ao
  %indvars.iv = phi i64 [ 0, %bb.af ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.sroa.0160.0182 = phi i64 [ 123, %bb.af ], [ %.lcssa257, %bb.ao ] ; 2 uses
  br i1 %lcmp.mod.not, label %select.unfold.i.i.i.i83.prol.loopexit, label %select.unfold.i.i.i.i83.prol

select.unfold.i.i.i.i83.prol:                     ; preds = %16
  %17 = mul nuw nsw i64 %.sroa.0160.0182, 16807
  %18 = urem i64 %17, 2147483647                  ; 3 uses
  %19 = add nsw i64 %18, -1
  %20 = uitofp i64 %19 to float                   ; 2 uses
  br label %select.unfold.i.i.i.i83.prol.loopexit

select.unfold.i.i.i.i83.prol.loopexit:            ; preds = %select.unfold.i.i.i.i83.prol, %16
  %.lcssa257.unr = phi i64 [ poison, %16 ], [ %18, %select.unfold.i.i.i.i83.prol ]
  %.lcssa256.unr = phi float [ poison, %16 ], [ %20, %select.unfold.i.i.i.i83.prol ]
  %.023.i.i.i.i84.unr = phi i64 [ %spec.select.i.i.i.i82, %16 ], [ %14, %select.unfold.i.i.i.i83.prol ]
  %.01422.i.i.i.i85.unr = phi float [ 1.000000e+00, %16 ], [ f0x4F000000, %select.unfold.i.i.i.i83.prol ]
  %.01521.i.i.i.i86.unr = phi float [ 0.000000e+00, %16 ], [ %20, %select.unfold.i.i.i.i83.prol ]
  %.unr = phi i64 [ %.sroa.0160.0182, %16 ], [ %18, %select.unfold.i.i.i.i83.prol ]
  br i1 %15, label %.unr-lcssa, label %select.unfold.i.i.i.i83

.unr-lcssa:                                       ; preds = %select.unfold.i.i.i.i83, %select.unfold.i.i.i.i83.prol.loopexit
  %.lcssa257 = phi i64 [ %.lcssa257.unr, %select.unfold.i.i.i.i83.prol.loopexit ], [ %i.fd, %select.unfold.i.i.i.i83 ]
  %.lcssa256 = phi float [ %.lcssa256.unr, %select.unfold.i.i.i.i83.prol.loopexit ], [ %i.fg, %select.unfold.i.i.i.i83 ]
  %.lcssa = phi float [ f0x4F000000, %select.unfold.i.i.i.i83.prol.loopexit ], [ %i.fj, %select.unfold.i.i.i.i83 ]
  %i.ez = fdiv float %.lcssa256, %.lcssa          ; 2 uses
  %i.fa = fcmp ult float %i.ez, 1.000000e+00
  br i1 %i.fa, label %bb.ao, label %bb.an, !prof !22

select.unfold.i.i.i.i83:                          ; preds = %select.unfold.i.i.i.i83.prol.loopexit, %select.unfold.i.i.i.i83
  %.023.i.i.i.i84 = phi i64 [ %i.fk, %select.unfold.i.i.i.i83 ], [ %.023.i.i.i.i84.unr, %select.unfold.i.i.i.i83.prol.loopexit ]
  %.01422.i.i.i.i85 = phi float [ %i.fj, %select.unfold.i.i.i.i83 ], [ %.01422.i.i.i.i85.unr, %select.unfold.i.i.i.i83.prol.loopexit ] ; 2 uses
  %.01521.i.i.i.i86 = phi float [ %i.fg, %select.unfold.i.i.i.i83 ], [ %.01521.i.i.i.i86.unr, %select.unfold.i.i.i.i83.prol.loopexit ]
  %i.fb = phi i64 [ %i.fd, %select.unfold.i.i.i.i83 ], [ %.unr, %select.unfold.i.i.i.i83.prol.loopexit ]
  %21 = mul nuw nsw i64 %i.fb, 16807
  %22 = urem i64 %21, 2147483647                  ; 2 uses
  %23 = add nsw i64 %22, -1
  %24 = uitofp i64 %23 to float
  %25 = call float @llvm.fmuladd.f32(float %24, float %.01422.i.i.i.i85, float %.01521.i.i.i.i86)
  %26 = fpext float %.01422.i.i.i.i85 to x86_fp80
  %27 = fmul x86_fp80 %26, f0x401DFFFFFFFC00000000
  %28 = fptrunc x86_fp80 %27 to float             ; 2 uses
  %i.fc = mul nuw nsw i64 %22, 16807
  %i.fd = urem i64 %i.fc, 2147483647              ; 3 uses
  %i.fe = add nsw i64 %i.fd, -1
  %i.ff = uitofp i64 %i.fe to float
  %i.fg = call float @llvm.fmuladd.f32(float %i.ff, float %28, float %25) ; 2 uses
  %i.fh = fpext float %28 to x86_fp80
  %i.fi = fmul x86_fp80 %i.fh, f0x401DFFFFFFFC00000000
  %i.fj = fptrunc x86_fp80 %i.fi to float         ; 2 uses
  %i.fk = add i64 %.023.i.i.i.i84, -2             ; 2 uses
  %.not.i.i.i.i87.1 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i87.1, label %.unr-lcssa, label %select.unfold.i.i.i.i83, !llvm.loop !34

bb.an:                                            ; preds = %.unr-lcssa
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.unr-lcssa
  %.016.i.i.i.i88 = phi float [ f0x3F7FFFFF, %bb.an ], [ %i.ez, %.unr-lcssa ]
  %i.fl = call noundef float @llvm.fmuladd.f32(float %.016.i.i.i.i88, float 1.000000e+02, float 0.000000e+00)
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  store float %i.fl, ptr %i.fm, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192
  br i1 %exitcond.not, label %bb.ag, label %16, !llvm.loop !37

bb.ap:                                            ; preds = %bb.ag
  %i.fn = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(36) %i.ek, i64 noundef 256, ptr noundef nonnull %i.ee)
          to label %bb.aq unwind label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit91

bb.aq:                                            ; preds = %bb.ap
  %i.fq = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(36) %i.ek, i64 noundef 256, ptr noundef nonnull %i.ee)
          to label %bb.ar unwind label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit91

bb.ar:                                            ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !18
  invoke void @_ZN5faiss11write_indexEPKNS_5IndexEPKci(ptr noundef nonnull %i.ek, ptr noundef %i.fu, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit91

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ar
  %i.fv = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(36) %i.ek) #21, !inline_history !40
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !18
  %i.fz = invoke noundef ptr @_ZN5faiss10read_indexEPKci(ptr noundef %i.fy, i32 noundef 0)
          to label %bb.as unwind label %bb.av     ; 2 uses

bb.as:                                            ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gb = call ptr @__dynamic_cast(ptr nonnull %i.fz, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11IndexHNSWPQE, i64 0) #21
  br label %bb.aw

bb.au:                                            ; preds = %bb.ag
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit91: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(36) %i.ek) #21, !inline_history !40
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137

bb.av:                                            ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit137

bb.aw:                                            ; preds = %bb.as, %bb.at
  %i.gi = phi ptr [ %i.gb, %bb.at ], [ null, %bb.as ] ; 6 uses
  %i.gj = load ptr, ptr %i.ft, align 8, !tbaa !18
  %i.gk = invoke noundef ptr @_ZN5faiss10read_indexEPKci(ptr noundef %i.gj, i32 noundef 32)
          to label %bb.ax unwind label %_ZNSt10unique_ptrIN5faiss11IndexHNSWPQESt14default_deleteIS1_EED2Ev.exit132 ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gm = call ptr @__dynamic_cast(ptr nonnull %i.gk, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss11IndexHNSWPQE, i64 0) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gn = phi ptr [ %i.gm, %bb.ay ], [ null, %bb.ax ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 5256
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !41, !nonnull !76, !noundef !76
  %i.gq = call ptr @__dynamic_cast(ptr nonnull %i.gp, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss7IndexPQE, i64 0) #21 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 328
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 336
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !77 ; 2 uses
  %i.gu = load ptr, ptr %i.gr, align 8, !tbaa !80 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 2
  store i64 %i.gy, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !81
  %.not.i92 = icmp eq ptr %i.gt, %i.gu
  br i1 %.not.i92, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal11CmpHelperNEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.bc

bb.bb:                                            ; preds = %bb.az
  invoke void @_ZN7testing8internal18CmpHelperOpFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.20)
          to label %_ZN7testing8internal11CmpHelperNEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit unwind label %bb.bc

_ZN7testing8internal11CmpHelperNEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.gz = load i8, ptr %8, align 8, !tbaa !82, !range !91, !noundef !76
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %.critedge, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ch

bb.bd:                                            ; preds = %_ZN7testing8internal11CmpHelperNEImiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !92 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.bf, %bb.be
  %i.hf = phi ptr [ %i.he, %bb.bf ], [ @.str.28, %bb.be ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 62, ptr noundef %i.hf)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.hg = load ptr, ptr %9, align 8, !tbaa !93    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i95, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bh
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !38
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #21, !inline_history !95
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.hk = load ptr, ptr %i.hc, align 8, !tbaa !92 ; 4 uses
  %.not.i.i96 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i96, label %bb.cd, label %bb.bi

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !18 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bi
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !17
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 32) #22
  br label %bb.cd

bb.bj:                                            ; preds = %bb.bd
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit99

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn45 = phi { ptr, i32 } [ %i.hs, %bb.bl ], [ %i.hr, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.ht = load ptr, ptr %9, align 8, !tbaa !93    ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.bm
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !38
end_hunk_0
