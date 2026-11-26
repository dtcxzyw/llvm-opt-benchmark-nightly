Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileRules?download=true
inline.NumInlined: 5824
inline.NumDeleted: 2065
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_126ConvertToRegularExpressionB5cxx11EPKcb:bb.a

bb.p:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.ca = and i64 %i.bz, -2
  %i.cb = icmp eq i64 %i.ca, 4611686018427387902
  br i1 %i.cb, label %.invoke433, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.q:                                             ; preds = %bb.j
  %i.cc = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.cd = and i64 %i.cc, -2
  %i.ce = icmp eq i64 %i.cd, 4611686018427387902
  br i1 %i.ce, label %.invoke433, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.r:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.cg = and i64 %i.cf, -2
  %i.ch = icmp eq i64 %i.cg, 4611686018427387902
  br i1 %i.ch, label %.invoke433, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.s:                                             ; preds = %bb.j
  %i.ci = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.cj = and i64 %i.ci, -2
  %i.ck = icmp eq i64 %i.cj, 4611686018427387902
  br i1 %i.ck, label %.invoke433, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

bb.t:                                             ; preds = %bb.j
  %i.cl = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.cm = and i64 %i.cl, -2
  %i.cn = icmp eq i64 %i.cm, 4611686018427387902
  br i1 %i.cn, label %.invoke433, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke

.invoke433:                                       ; preds = %bb.k, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #31
          to label %.cont unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke433
  unreachable

bb.u:                                             ; preds = %bb.j
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.228)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130 unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.080292
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117ThrowInvalidRegexEPKcS2_(ptr noundef %1, ptr noundef nonnull %i.cp)
          to label %.unreachable202 unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.unreachable202:                                  ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.217, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.be
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !62  ; 3 uses
  %i.ct = icmp ne i8 %i.cs, 93
  %i.cu = icmp ult i64 %i.be, %.pr                ; 2 uses
  %i.cv = and i1 %i.cu, %i.ct
  br i1 %i.cv, label %.lr.ph288, label %._crit_edge

.lr.ph288:                                        ; preds = %bb.x, %bb.ai
  %i.cw = phi i8 [ %i.ep, %bb.ai ], [ %i.cs, %bb.x ] ; 2 uses
  %i.cx = phi ptr [ %i.en, %bb.ai ], [ %i.cq, %bb.x ] ; 3 uses
  %.0287 = phi i64 [ %i.em, %bb.ai ], [ %i.be, %bb.x ] ; 3 uses
  switch i8 %i.cw, label %.invoke434 [
    i8 33, label %bb.y
    i8 43, label %bb.ab
    i8 94, label %bb.ab
    i8 36, label %bb.ab
    i8 123, label %bb.ab
    i8 125, label %bb.ab
    i8 40, label %bb.ab
    i8 41, label %bb.ab
    i8 124, label %bb.ab
    i8 92, label %bb.ae
    i8 46, label %bb.af
    i8 63, label %bb.af
    i8 42, label %bb.af
    i8 91, label %bb.ah
  ]

bb.y:                                             ; preds = %.lr.ph288
  %i.cy = load i64, ptr %i.bc, align 8, !tbaa !96 ; 4 uses
  %i.cz = add i64 %i.cy, 1                        ; 2 uses
  %i.da = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bd
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170: ; preds = %bb.y
  %i.dc = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167: ; preds = %bb.y
  %i.dd = load i64, ptr %i.bd, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i170 ]
  %i.df = icmp ugt i64 %i.cz, %i.de
  br i1 %i.df, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cy, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc171:                                        ; preds = %bb.z
  %.pre.i.i169 = load ptr, ptr %5, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168, %.noexc171
  %i.dg = phi ptr [ %.pre.i.i169, %.noexc171 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i168 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store i8 94, ptr %i.dh, align 1, !tbaa !62
  br label %.sink.split

bb.aa:                                            ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176, %bb.z, %bb.ae, %.invoke434, %bb.aq, %bb.ao, %bb.am, %bb.aj, %.invoke435, %bb.ac
  %lpad.loopexit.split-lp484 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bd
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dl = load i64, ptr %i.bd, align 8, !tbaa !62
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.ab:                                            ; preds = %.lr.ph288, %.lr.ph288, %.lr.ph288, %.lr.ph288, %.lr.ph288, %.lr.ph288, %.lr.ph288, %.lr.ph288
  %i.dn = load i64, ptr %i.bc, align 8, !tbaa !96
  %i.do = icmp eq i64 %i.dn, 4611686018427387903
  br i1 %i.do, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.216) #31
          to label %.noexc177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc177:                                        ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176: ; preds = %bb.ab
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.229, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i176
  %i.dq = load ptr, ptr %3, align 8, !tbaa !97
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.0287
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !62
  %i.dt = load i64, ptr %i.bc, align 8, !tbaa !96 ; 4 uses
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %i.dv = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.bd
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179
  %i.dx = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit179
  %i.dy = load i64, ptr %i.bd, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183
  %i.dz = phi i64 [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i180 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i183 ]
  %i.ea = icmp ugt i64 %i.du, %i.dz
  br i1 %i.ea, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.dt, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc184 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc184:                                        ; preds = %bb.ad
  %.pre.i.i182 = load ptr, ptr %5, align 8, !tbaa !97
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181, %.noexc184
  %i.eb = phi ptr [ %.pre.i.i182, %.noexc184 ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i181 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  store i8 %i.ds, ptr %i.ec, align 1, !tbaa !62
  br label %.sink.split

bb.ae:                                            ; preds = %.lr.ph288
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.230)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.af:                                            ; preds = %.lr.ph288, %.lr.ph288, %.lr.ph288
  %i.ee = getelementptr i8, ptr %i.cx, i64 %.0287 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !62
  %.not98 = icmp eq i8 %i.eg, 92
  br i1 %.not98, label %7, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.080292
  br label %.invoke435

7:                                                ; preds = %bb.af
  %8 = load i8, ptr %i.ee, align 1, !tbaa !62
  br label %.invoke434

.invoke434:                                       ; preds = %.lr.ph288, %7
  %9 = phi i8 [ %8, %7 ], [ %i.cw, %.lr.ph288 ]
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext %9)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ah:                                            ; preds = %.lr.ph288
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.080292
  br label %.invoke435

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185
  %.sink = phi i64 [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit185 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit172 ] ; 2 uses
  store i64 %.sink, ptr %i.bc, align 8, !tbaa !96
  %i.ek = load ptr, ptr %5, align 8, !tbaa !97
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sink
  store i8 0, ptr %i.el, align 1, !tbaa !62
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %.invoke434, %bb.ae
  %i.em = add nuw i64 %.0287, 1                   ; 4 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !62  ; 3 uses
  %i.eq = icmp ne i8 %i.ep, 93
  %i.er = icmp ult i64 %i.em, %.pr                ; 2 uses
  %i.es = and i1 %i.er, %i.eq
  br i1 %i.es, label %.lr.ph288, label %._crit_edge, !llvm.loop !982

._crit_edge:                                      ; preds = %bb.ai, %bb.x
  %.0.lcssa = phi i64 [ %i.be, %bb.x ], [ %i.em, %bb.ai ]
  %.lcssa224 = phi i8 [ %i.cs, %bb.x ], [ %i.ep, %bb.ai ]
  %.lcssa = phi i1 [ %i.cu, %bb.x ], [ %i.er, %bb.ai ]
  %i.et = icmp eq i8 %.lcssa224, 93
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 93)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  br i1 %.lcssa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = load ptr, ptr %3, align 8, !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.080292
  br label %.invoke435

bb.am:                                            ; preds = %bb.ak
  %i.ex = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.231)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  br i1 %i.ex, label %.invoke435, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.232)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ey, label %.invoke435, label %bb.aq

.invoke435:                                       ; preds = %bb.ap, %bb.an, %bb.ag, %bb.ah, %bb.al
  %i.ez = phi ptr [ %i.ej, %bb.ah ], [ %i.eh, %bb.ag ], [ %i.ew, %bb.al ], [ @.str.231, %bb.an ], [ @.str.233, %bb.ap ]
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_117ThrowInvalidRegexEPKcS2_(ptr noundef %1, ptr noundef nonnull %i.ez)
          to label %.cont436 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont436:                                         ; preds = %.invoke435
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fb = add nuw i64 %.0.lcssa, 1
  %i.fc = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.bd
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.ar
  %i.fe = load i64, ptr %i.bd, align 8, !tbaa !62
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.aa
  %.pn99 = phi { ptr, i32 } [ %i.di, %bb.aa ], [ %lpad.loopexit.split-lp484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %lpad.loopexit.split-lp484, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit.split-lp204

bb.as:                                            ; preds = %bb.j
  %i.fg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %i.bh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130 unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke, %bb.as, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %.081 = phi i64 [ %i.be, %bb.as ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i127.invoke ], [ %i.be, %bb.u ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ] ; 2 uses
  %i.fh = icmp ult i64 %.081, %.pr
  br i1 %i.fh, label %bb.j, label %._crit_edge294, !llvm.loop !983

.loopexit.split-lp204:                            ; preds = %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %.pn101 = phi { ptr, i32 } [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %lpad.loopexit.split-lp487, %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ba
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %.loopexit.split-lp204
  %i.fk = load i64, ptr %i.ba, align 8, !tbaa !62
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

._crit_edge294:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit130, %.critedge.thread, %.critedge
  %i.fm = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.a
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %._crit_edge294
  %i.fo = load i64, ptr %i.a, align 8, !tbaa !62
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %._crit_edge294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %.loopexit.split-lp204, %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %lpad.loopexit.split-lp521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %lpad.loopexit.split-lp524, %.loopexit.split-lp216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn101, %.loopexit.split-lp204 ]
  %i.fq = load ptr, ptr %3, align 8, !tbaa !97    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.a
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.fs = load i64, ptr %i.a, align 8, !tbaa !62
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #29
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
  store ptr %i.d, ptr %3, align 8, !tbaa !108
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.e, ptr %i.b, align 8, !tbaa !98
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %3, align 8, !tbaa !97
  %i.h = load i64, ptr %i.b, align 8, !tbaa !98
  store i64 %i.h, ptr %i.d, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !62
end_hunk_0
