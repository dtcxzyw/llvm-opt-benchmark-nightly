Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileRules?download=true
inline.NumInlined: 5824
inline.NumDeleted: 2051
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_126ConvertToRegularExpressionB5cxx11EPKcb:bb.a
bb.v:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.cf = and i64 %i.ce, -2
  %i.cg = icmp eq i64 %i.cf, 4611686018427387902
  br i1 %i.cg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.w:                                             ; preds = %bb.o
  %i.ch = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.ci = and i64 %i.ch, -2
  %i.cj = icmp eq i64 %i.ci, 4611686018427387902
  br i1 %i.cj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.x:                                             ; preds = %bb.o
  %i.ck = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.cl = and i64 %i.ck, -2
  %i.cm = icmp eq i64 %i.cl, 4611686018427387902
  br i1 %i.cm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.y:                                             ; preds = %bb.o
  %i.cn = load i64, ptr %i.bd, align 8, !tbaa !97
  %i.co = and i64 %i.cn, -2
  %i.cp = icmp eq i64 %i.co, 4611686018427387902
  br i1 %i.cp, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.z:                                             ; preds = %bb.o
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.228)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130 unwind label %.loopexit203 ; 0 uses

bb.aa:                                            ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.080287
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117ThrowInvalidRegexEPKcS2_(ptr noundef %1, ptr noundef nonnull %i.cr)
          to label %.unreachable202 unwind label %.loopexit.split-lp204

.unreachable202:                                  ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.217, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cs = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.bg
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !63  ; 3 uses
  %i.cv = icmp ne i8 %i.cu, 93
  %i.cw = icmp ult i64 %i.bg, %.pr                ; 2 uses
  %i.cx = and i1 %i.cw, %i.cv
  br i1 %i.cx, label %.lr.ph283, label %._crit_edge

.lr.ph283:                                        ; preds = %bb.ac, %bb.an
  %i.cy = phi i8 [ %i.er, %bb.an ], [ %i.cu, %bb.ac ] ; 2 uses
  %i.cz = phi ptr [ %i.ep, %bb.an ], [ %i.cs, %bb.ac ] ; 3 uses
  %.0282 = phi i64 [ %i.eo, %bb.an ], [ %i.bg, %bb.ac ] ; 3 uses
  switch i8 %i.cy, label %.invoke418 [
    i8 33, label %bb.ad
    i8 43, label %bb.ag
    i8 94, label %bb.ag
    i8 36, label %bb.ag
    i8 123, label %bb.ag
    i8 125, label %bb.ag
    i8 40, label %bb.ag
    i8 41, label %bb.ag
    i8 124, label %bb.ag
    i8 92, label %bb.aj
    i8 46, label %bb.ak
    i8 63, label %bb.ak
    i8 42, label %bb.ak
    i8 91, label %bb.am
  ]

bb.ad:                                            ; preds = %.lr.ph283
  %i.da = load i64, ptr %i.be, align 8, !tbaa !97 ; 4 uses
  %i.db = add i64 %i.da, 1                        ; 2 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bf
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170: ; preds = %bb.ad
  %i.de = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.de)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167: ; preds = %bb.ad
  %i.df = load i64, ptr %i.bf, align 8, !tbaa !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170
  %i.dg = phi i64 [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170 ]
  %i.dh = icmp ugt i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.da, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc171 unwind label %.loopexit

.noexc171:                                        ; preds = %bb.ae
  %.pre.i.i169 = load ptr, ptr %5, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168, %.noexc171
  %i.di = phi ptr [ %.pre.i.i169, %.noexc171 ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  store i8 94, ptr %i.dj, align 1, !tbaa !63
  br label %.sink.split

bb.af:                                            ; preds = %bb.ab
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit:                                        ; preds = %.invoke418, %bb.aj, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.av, %bb.at, %bb.ar, %bb.ao
  %lpad.loopexit208 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke419, %bb.ah
  %lpad.loopexit.split-lp209 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit208, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp209, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.dl = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bf
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %.loopexit.split-lp
  %i.dn = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.ag:                                            ; preds = %.lr.ph283, %.lr.ph283, %.lr.ph283, %.lr.ph283, %.lr.ph283, %.lr.ph283, %.lr.ph283, %.lr.ph283
  %i.dp = load i64, ptr %i.be, align 8, !tbaa !97
  %i.dq = icmp eq i64 %i.dp, 4611686018427387903
  br i1 %i.dq, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #31
          to label %.noexc177 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc177:                                        ; preds = %bb.ah
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176: ; preds = %bb.ag
  %i.dr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.229, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176
  %i.ds = load ptr, ptr %3, align 8, !tbaa !98
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.0282
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !63
  %i.dv = load i64, ptr %i.be, align 8, !tbaa !97 ; 4 uses
  %i.dw = add i64 %i.dv, 1                        ; 2 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.bf
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179
  %i.dz = icmp ult i64 %i.dv, 16
  call void @llvm.assume(i1 %i.dz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179
  %i.ea = load i64, ptr %i.bf, align 8, !tbaa !63
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183
  %i.eb = phi i64 [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183 ]
  %i.ec = icmp ugt i64 %i.dw, %i.eb
  br i1 %i.ec, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.dv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc184 unwind label %.loopexit

.noexc184:                                        ; preds = %bb.ai
  %.pre.i.i182 = load ptr, ptr %5, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181, %.noexc184
  %i.ed = phi ptr [ %.pre.i.i182, %.noexc184 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  store i8 %i.du, ptr %i.ee, align 1, !tbaa !63
  br label %.sink.split

bb.aj:                                            ; preds = %.lr.ph283
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.230)
          to label %bb.an unwind label %.loopexit ; 0 uses

bb.ak:                                            ; preds = %.lr.ph283, %.lr.ph283, %.lr.ph283
  %i.eg = getelementptr i8, ptr %i.cz, i64 %.0282 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !63
  %.not98 = icmp eq i8 %i.ei, 92
  br i1 %.not98, label %7, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.080287
  br label %.invoke419

7:                                                ; preds = %bb.ak
  %8 = load i8, ptr %i.eg, align 1, !tbaa !63
  br label %.invoke418

.invoke418:                                       ; preds = %.lr.ph283, %7
  %9 = phi i8 [ %8, %7 ], [ %i.cy, %.lr.ph283 ]
  %i.ek = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext %9)
          to label %bb.an unwind label %.loopexit ; 0 uses

bb.am:                                            ; preds = %.lr.ph283
  %i.el = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.080287
  br label %.invoke419

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185
  %.sink = phi i64 [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172 ] ; 2 uses
  store i64 %.sink, ptr %i.be, align 8, !tbaa !97
  %i.em = load ptr, ptr %5, align 8, !tbaa !98
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.sink
  store i8 0, ptr %i.en, align 1, !tbaa !63
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %.invoke418, %bb.aj
  %i.eo = add nuw i64 %.0282, 1                   ; 4 uses
  %i.ep = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !63  ; 3 uses
  %i.es = icmp ne i8 %i.er, 93
  %i.et = icmp ult i64 %i.eo, %.pr                ; 2 uses
  %i.eu = and i1 %i.et, %i.es
  br i1 %i.eu, label %.lr.ph283, label %._crit_edge, !llvm.loop !964

._crit_edge:                                      ; preds = %bb.an, %bb.ac
  %.0.lcssa = phi i64 [ %i.bg, %bb.ac ], [ %i.eo, %bb.an ]
  %.lcssa219 = phi i8 [ %i.cu, %bb.ac ], [ %i.er, %bb.an ]
  %.lcssa = phi i1 [ %i.cw, %bb.ac ], [ %i.et, %bb.an ]
  %i.ev = icmp eq i8 %.lcssa219, 93
  br i1 %i.ev, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 93)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.ap:                                            ; preds = %bb.ao, %._crit_edge
  br i1 %.lcssa, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ex = load ptr, ptr %3, align 8, !tbaa !98
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %.080287
  br label %.invoke419

bb.ar:                                            ; preds = %bb.ap
  %i.ez = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.231)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ez, label %.invoke419, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.232)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.at
  br i1 %i.fa, label %.invoke419, label %bb.av

.invoke419:                                       ; preds = %bb.au, %bb.as, %bb.al, %bb.am, %bb.aq
  %i.fb = phi ptr [ %i.el, %bb.am ], [ %i.ej, %bb.al ], [ %i.ey, %bb.aq ], [ @.str.231, %bb.as ], [ @.str.233, %bb.au ]
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117ThrowInvalidRegexEPKcS2_(ptr noundef %1, ptr noundef nonnull %i.fb)
          to label %.cont420 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont420:                                         ; preds = %.invoke419
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.fc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.fd = add i64 %.0.lcssa, 1
  %i.fe = load ptr, ptr %5, align 8, !tbaa !98    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.bf
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.aw
  %i.fg = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.af
  %.pn99 = phi { ptr, i32 } [ %i.dk, %bb.af ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %lpad.phi, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ay

bb.ax:                                            ; preds = %bb.o
  %i.fi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130 unwind label %.loopexit203 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke, %bb.ax, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %.081 = phi i64 [ %i.bg, %bb.ax ], [ %i.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke ], [ %i.bg, %bb.z ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ] ; 2 uses
  %i.fj = icmp ult i64 %.081, %.pr
  br i1 %i.fj, label %bb.o, label %._crit_edge289, !llvm.loop !965

bb.ay:                                            ; preds = %.loopexit203, %.loopexit.split-lp204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %.pn101 = phi { ptr, i32 } [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %lpad.loopexit205, %.loopexit203 ], [ %lpad.loopexit.split-lp206, %.loopexit.split-lp204 ] ; 2 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !98    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.bc
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.ay
  %i.fm = load i64, ptr %i.bc, align 8, !tbaa !63
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

._crit_edge289:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130, %.critedge.thread, %.critedge
  %i.fo = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.a
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %._crit_edge289
  %i.fq = load i64, ptr %i.a, align 8, !tbaa !63
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %._crit_edge289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.l, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %bb.n
  %.pn101.pn = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.bb, %bb.n ], [ %i.az, %bb.l ], [ %lpad.phi214, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %.pn101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %.pn101, %bb.ay ]
  %i.fs = load ptr, ptr %3, align 8, !tbaa !98    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.a
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.fu = load i64, ptr %i.a, align 8, !tbaa !63
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn101.pn
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117ThrowInvalidRegexEPKcS2_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #24 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.212, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !109
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.e, ptr %i.b, align 8, !tbaa !99
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %3, align 8, !tbaa !98
  %i.h = load i64, ptr %i.b, align 8, !tbaa !99
  store i64 %i.h, ptr %i.d, align 8, !tbaa !63
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !63
end_hunk_0
