Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_abf?download=true
inline.NumInlined: 3756
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZN11UIestimator11UIestimator15read_inputfilesESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i110
  %i.ds = load ptr, ptr %i.dg, align 8, !tbaa !154
  %i.dt = getelementptr i8, ptr %i.ds, i64 -24
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds i8, ptr %i.dg, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !293
  %i.dy = and i32 %i.dx, 5
  %.not285 = icmp eq i32 %i.dy, 0
  br i1 %.not285, label %bb.n, label %.critedge71

_ZNSt6vectorIdSaIdEED2Ev.exit250.thread:          ; preds = %bb.b, %bb.c
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNSt6vectorIdSaIdEED2Ev.exit236.thread:          ; preds = %bb.d, %bb.e
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit103
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %4, align 8, !tbaa !207   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.ar
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.l
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !209
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.m:                                             ; preds = %.noexc107
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !207   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.at
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.m
  %i.ej = load i64, ptr %i.at, align 8, !tbaa !209
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSirsERd.exit128, %_ZNSirsERd.exit126, %_ZNSirsERd.exit124, %bb.t, %bb.s, %_ZNSirsERd.exit, %bb.r, %_ZNSirsERd.exit122, %_ZNSirsERd.exit120, %.lr.ph, %.lr.ph440, %_ZNSirsERd.exit132, %.lr.ph442, %._crit_edge, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.n, %bb.o, %bb.p, %bb.q, %._crit_edge447, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.noexc.i.i
  %lpad.loopexit.split-lp738 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.n:                                             ; preds = %bb.k
  %i.el = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.em = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.en = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.eo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.preheader300 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader300:                                    ; preds = %bb.q
  %i.ep = load i32, ptr %i.i, align 8, !tbaa !268
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph, label %.critedge.preheader.lr.ph

.preheader292:                                    ; preds = %_ZNSirsERd.exit130
  %i.er = icmp sgt i32 %i.fe, 0
  br i1 %i.er, label %.critedge.preheader.lr.ph, label %._crit_edge447

.critedge.preheader.lr.ph:                        ; preds = %.preheader300, %.preheader292
  %.042.lcssa567 = phi i32 [ %i.fe, %.preheader292 ], [ 1, %.preheader300 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0551563, i64 %indvars.iv471
  br label %.critedge.preheader

.lr.ph:                                           ; preds = %.preheader300, %_ZNSirsERd.exit130
  %.042438 = phi i32 [ %i.fe, %_ZNSirsERd.exit130 ], [ 1, %.preheader300 ]
  %.056437 = phi i32 [ %i.ff, %_ZNSirsERd.exit130 ], [ 0, %.preheader300 ]
  %i.et = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %.lr.ph
  %i.eu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSirsERd.exit:                                  ; preds = %bb.r
  %i.ev = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSirsERd.exit120:                               ; preds = %_ZNSirsERd.exit
  %i.ew = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSirsERd.exit120
  %i.ex = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit122:                               ; preds = %bb.s
  %i.ey = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSirsERd.exit122
  %i.ez = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSirsERd.exit124:                               ; preds = %bb.t
  %i.fa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSirsERd.exit126:                               ; preds = %_ZNSirsERd.exit124
  %i.fb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit128 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSirsERd.exit128:                               ; preds = %_ZNSirsERd.exit126
  %i.fc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit130:                               ; preds = %_ZNSirsERd.exit128
  %i.fd = load i32, ptr %i.f, align 4, !tbaa !83
  %i.fe = mul nsw i32 %i.fd, %.042438             ; 3 uses
  %i.ff = add nuw nsw i32 %.056437, 1             ; 2 uses
  %i.fg = load i32, ptr %i.i, align 8, !tbaa !268
  %i.fh = icmp slt i32 %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph, label %.preheader292, !llvm.loop !587

.critedge.preheader:                              ; preds = %.critedge.preheader.lr.ph, %bb.bp
  %.157446 = phi i32 [ 0, %.critedge.preheader.lr.ph ], [ %i.ru, %bb.bp ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %i.fi = load i32, ptr %i.i, align 8, !tbaa !268
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph440, label %._crit_edge

.preheader:                                       ; preds = %_ZNSirsERd.exit134
  %i.fk = icmp sgt i32 %i.fo, 0
  br i1 %i.fk, label %.lr.ph442, label %._crit_edge

.lr.ph440:                                        ; preds = %.critedge, %_ZNSirsERd.exit134
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSirsERd.exit134 ], [ 0, %.critedge ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0551563, i64 %indvars.iv
  %i.fm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %_ZNSirsERd.exit132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit132:                               ; preds = %.lr.ph440
  %i.fn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERd.exit134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit134:                               ; preds = %_ZNSirsERd.exit132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fo = load i32, ptr %i.i, align 8, !tbaa !268 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next, %i.fp
  br i1 %i.fq, label %.lr.ph440, label %.preheader, !llvm.loop !588

.lr.ph442:                                        ; preds = %.preheader, %_ZNSirsERd.exit136
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %_ZNSirsERd.exit136 ], [ 0, %.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0257.0, i64 %indvars.iv465
  %i.fs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
          to label %_ZNSirsERd.exit136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSirsERd.exit136:                               ; preds = %.lr.ph442
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %i.ft = load i32, ptr %i.i, align 8, !tbaa !268
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next466, %i.fu
  br i1 %i.fv, label %.lr.ph442, label %._crit_edge, !llvm.loop !589

._crit_edge:                                      ; preds = %_ZNSirsERd.exit136, %.critedge, %.preheader
  %i.fw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %._crit_edge
  %i.fx = load double, ptr %i.es, align 8, !tbaa !82 ; 2 uses
  %i.fy = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv471
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !82
  %i.gb = fadd double %i.ga, f0xBEB0C6F7A0B5ED8D
  %i.gc = fcmp olt double %i.fx, %i.gb
  br i1 %i.gc, label %.critedge.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv471
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !82
  %i.gg = fadd double %i.gf, f0x3EB0C6F7A0B5ED8D
  %i.gh = fcmp ogt double %i.fx, %i.gg
  br i1 %i.gh, label %.critedge.backedge, label %bb.w

.critedge.backedge:                               ; preds = %bb.v, %bb.u
  br label %.critedge, !llvm.loop !590

bb.w:                                             ; preds = %bb.v
  %i.gi = load i32, ptr %i.e, align 4, !tbaa !83
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bp, label %.preheader289

.preheader289:                                    ; preds = %bb.w
  %i.gk = load i32, ptr %i.i, align 8, !tbaa !268
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph444, label %._crit_edge445

.lr.ph444:                                        ; preds = %.preheader289
  %i.gm = load ptr, ptr %i.bc, align 8, !tbaa !250
  %i.gn = load ptr, ptr %i.bi, align 8, !tbaa !60 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph444, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176
  %indvars.iv468 = phi i64 [ 0, %.lr.ph444 ], [ %indvars.iv.next469, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176 ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0257.0, i64 %indvars.iv468 ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !82 ; 2 uses
  %6 = load i32, ptr %i.e, align 4, !tbaa !83
  %i.gq = sitofp i32 %6 to double                 ; 2 uses
  %i.gr = load i32, ptr %i.ax, align 8, !tbaa !273
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.gt = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.gu = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.gv = load ptr, ptr %i.ba, align 8, !tbaa !60 ; 3 uses
  br label %bb.y

.preheader27.i.i:                                 ; preds = %bb.y
  %i.gw = icmp sgt i32 %i.hj, 0
  br i1 %i.gw, label %.lr.ph33.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

.lr.ph33.i.i:                                     ; preds = %.preheader27.i.i
  %i.gx = zext nneg i32 %i.hj to i64              ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.y ] ; 5 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0551563, i64 %indvars.iv.i.i
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !82
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.i.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !82
  %i.hc = fsub double %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i.i
  %i.he = load double, ptr %i.hd, align 8, !tbaa !82
  %i.hf = fdiv double %i.hc, %i.he
  %i.hg = fadd double %i.hf, f0x3EB0C6F7A0B5ED8D
  %i.hh = fptosi double %i.hg to i32
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.i.i
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !83
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.hj = load i32, ptr %i.ax, align 8, !tbaa !273 ; 3 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next.i.i, %i.hk
  br i1 %i.hl, label %bb.y, label %.preheader27.i.i, !llvm.loop !16

bb.z:                                             ; preds = %bb.ab, %.lr.ph33.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next44.i.i, %bb.ab ] ; 4 uses
  %indvars.iv38.i.i = phi i64 [ 1, %.lr.ph33.i.i ], [ %indvars.iv.next39.i.i, %bb.ab ] ; 4 uses
  %.02132.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.1.i.i, %bb.ab ]
  %i.hm = xor i64 %indvars.iv43.i.i, -1
  %i.hn = add nsw i64 %i.hm, %i.gx                ; 3 uses
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 3 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next44.i.i, %i.gx
  br i1 %i.ho, label %.preheader.i.i, label %bb.aa

.preheader.i.i:                                   ; preds = %bb.z
  %i.hp = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %min.iters.check692 = icmp ult i64 %i.hn, 8
  br i1 %min.iters.check692, label %scalar.ph691.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %.preheader.i.i
  %n.vec694 = and i64 %i.hn, -8                   ; 3 uses
  %i.hq = add i64 %indvars.iv38.i.i, %n.vec694
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv38.i.i
  br label %vector.body695

vector.body695:                                   ; preds = %vector.body695, %vector.ph693
  %index696 = phi i64 [ 0, %vector.ph693 ], [ %index.next701, %vector.body695 ] ; 2 uses
  %vec.phi697 = phi <4 x i32> [ splat (i32 1), %vector.ph693 ], [ %i.hu, %vector.body695 ]
  %vec.phi698 = phi <4 x i32> [ splat (i32 1), %vector.ph693 ], [ %i.hv, %vector.body695 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %index696 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load699 = load <4 x i32>, ptr %i.hs, align 4, !tbaa !83
  %wide.load700 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !83
  %i.hu = mul <4 x i32> %wide.load699, %vec.phi697 ; 2 uses
  %i.hv = mul <4 x i32> %wide.load700, %vec.phi698 ; 2 uses
  %index.next701 = add nuw i64 %index696, 8       ; 2 uses
  %i.hw = icmp eq i64 %index.next701, %n.vec694
  br i1 %i.hw, label %middle.block702, label %vector.body695, !llvm.loop !591

middle.block702:                                  ; preds = %vector.body695
  %bin.rdx703 = mul <4 x i32> %i.hv, %i.hu
  %i.hx = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx703) ; 2 uses
  %cmp.n704 = icmp eq i64 %i.hn, %n.vec694
  br i1 %cmp.n704, label %.loopexit708, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %.preheader.i.i, %middle.block702
  %indvars.iv40.i.i.ph = phi i64 [ %indvars.iv38.i.i, %.preheader.i.i ], [ %i.hq, %middle.block702 ]
  %.030.i.i.ph = phi i32 [ 1, %.preheader.i.i ], [ %i.hx, %middle.block702 ]
  br label %scalar.ph691

scalar.ph691:                                     ; preds = %scalar.ph691.preheader, %scalar.ph691
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %scalar.ph691 ], [ %indvars.iv40.i.i.ph, %scalar.ph691.preheader ] ; 2 uses
  %.030.i.i = phi i32 [ %i.ia, %scalar.ph691 ], [ %.030.i.i.ph, %scalar.ph691.preheader ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv40.i.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !83
  %i.ia = mul nsw i32 %i.hz, %.030.i.i            ; 2 uses
  %indvars.iv.next41.i.i = add nuw nsw i64 %indvars.iv40.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next41.i.i, %i.gx
  br i1 %exitcond.not.i.i, label %.loopexit708, label %scalar.ph691, !llvm.loop !592

.loopexit708:                                     ; preds = %scalar.ph691, %middle.block702
  %.lcssa628 = phi i32 [ %i.hx, %middle.block702 ], [ %i.ia, %scalar.ph691 ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv43.i.i
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !83
  %i.id = mul nsw i32 %i.ic, %.lcssa628
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv43.i.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !83
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit708
  %.pn.i.i = phi i32 [ %i.id, %.loopexit708 ], [ %i.if, %bb.aa ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.02132.i.i     ; 2 uses
  %indvars.iv.next39.i.i = add nuw nsw i64 %indvars.iv38.i.i, 1
  %exitcond47.not.i.i = icmp eq i64 %indvars.iv.next44.i.i, %i.gx
  br i1 %exitcond47.not.i.i, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i, label %bb.z, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i: ; preds = %bb.ab
  %i.ig = sext i32 %.1.i.i to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit: ; preds = %bb.x, %.preheader27.i.i, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i
  %.021.lcssa.i.i = phi i64 [ 0, %.preheader27.i.i ], [ 0, %bb.x ], [ %i.ig, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i ]
  %i.ih = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %.021.lcssa.i.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !57
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv468
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !82 ; 2 uses
  %i.il = load i32, ptr %i.be, align 8, !tbaa !274
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph.i.i138, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread

.lr.ph.i.i138:                                    ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %i.in = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.io = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.ip = load ptr, ptr %i.bg, align 8, !tbaa !60 ; 3 uses
  br label %bb.ac

.preheader27.i.i141:                              ; preds = %bb.ac
  %i.iq = icmp sgt i32 %i.jd, 0
  br i1 %i.iq, label %.lr.ph33.i.i142, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread

.lr.ph33.i.i142:                                  ; preds = %.preheader27.i.i141
  %i.ir = zext nneg i32 %i.jd to i64              ; 4 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i138
  %indvars.iv.i.i139 = phi i64 [ 0, %.lr.ph.i.i138 ], [ %indvars.iv.next.i.i140, %bb.ac ] ; 5 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0551563, i64 %indvars.iv.i.i139
  %i.it = load double, ptr %i.is, align 8, !tbaa !82
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.i.i139
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !82
  %i.iw = fsub double %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.i.i139
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !82
  %i.iz = fdiv double %i.iw, %i.iy
  %i.ja = fadd double %i.iz, f0x3EB0C6F7A0B5ED8D
  %i.jb = fptosi double %i.ja to i32
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i.i139
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !83
  %indvars.iv.next.i.i140 = add nuw nsw i64 %indvars.iv.i.i139, 1 ; 2 uses
  %i.jd = load i32, ptr %i.be, align 8, !tbaa !274 ; 3 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next.i.i140, %i.je
  br i1 %i.jf, label %bb.ac, label %.preheader27.i.i141, !llvm.loop !18

bb.ad:                                            ; preds = %bb.af, %.lr.ph33.i.i142
  %indvars.iv43.i.i143 = phi i64 [ 0, %.lr.ph33.i.i142 ], [ %indvars.iv.next44.i.i146, %bb.af ] ; 4 uses
  %indvars.iv38.i.i144 = phi i64 [ 1, %.lr.ph33.i.i142 ], [ %indvars.iv.next39.i.i149, %bb.af ] ; 4 uses
  %.02132.i.i145 = phi i32 [ 0, %.lr.ph33.i.i142 ], [ %.1.i.i148, %bb.af ]
  %i.jg = xor i64 %indvars.iv43.i.i143, -1
  %i.jh = add nsw i64 %i.jg, %i.ir                ; 3 uses
  %indvars.iv.next44.i.i146 = add nuw nsw i64 %indvars.iv43.i.i143, 1 ; 3 uses
  %i.ji = icmp samesign ult i64 %indvars.iv.next44.i.i146, %i.ir
  br i1 %i.ji, label %.preheader.i.i151, label %bb.ae

.preheader.i.i151:                                ; preds = %bb.ad
  %i.jj = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %min.iters.check676 = icmp ult i64 %i.jh, 8
  br i1 %min.iters.check676, label %scalar.ph675.preheader, label %vector.ph677

vector.ph677:                                     ; preds = %.preheader.i.i151
  %n.vec678 = and i64 %i.jh, -8                   ; 3 uses
  %i.jk = add i64 %indvars.iv38.i.i144, %n.vec678
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv38.i.i144
  br label %vector.body679

vector.body679:                                   ; preds = %vector.body679, %vector.ph677
  %index680 = phi i64 [ 0, %vector.ph677 ], [ %index.next685, %vector.body679 ] ; 2 uses
  %vec.phi681 = phi <4 x i32> [ splat (i32 1), %vector.ph677 ], [ %i.jo, %vector.body679 ]
  %vec.phi682 = phi <4 x i32> [ splat (i32 1), %vector.ph677 ], [ %i.jp, %vector.body679 ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %index680 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load683 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !83
  %wide.load684 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !83
  %i.jo = mul <4 x i32> %wide.load683, %vec.phi681 ; 2 uses
  %i.jp = mul <4 x i32> %wide.load684, %vec.phi682 ; 2 uses
  %index.next685 = add nuw i64 %index680, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next685, %n.vec678
  br i1 %i.jq, label %middle.block686, label %vector.body679, !llvm.loop !593

middle.block686:                                  ; preds = %vector.body679
  %bin.rdx687 = mul <4 x i32> %i.jp, %i.jo
  %i.jr = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx687) ; 2 uses
  %cmp.n688 = icmp eq i64 %i.jh, %n.vec678
  br i1 %cmp.n688, label %.loopexit707, label %scalar.ph675.preheader

scalar.ph675.preheader:                           ; preds = %.preheader.i.i151, %middle.block686
  %indvars.iv40.i.i152.ph = phi i64 [ %indvars.iv38.i.i144, %.preheader.i.i151 ], [ %i.jk, %middle.block686 ]
  %.030.i.i153.ph = phi i32 [ 1, %.preheader.i.i151 ], [ %i.jr, %middle.block686 ]
  br label %scalar.ph675

scalar.ph675:                                     ; preds = %scalar.ph675.preheader, %scalar.ph675
  %indvars.iv40.i.i152 = phi i64 [ %indvars.iv.next41.i.i154, %scalar.ph675 ], [ %indvars.iv40.i.i152.ph, %scalar.ph675.preheader ] ; 2 uses
  %.030.i.i153 = phi i32 [ %i.ju, %scalar.ph675 ], [ %.030.i.i153.ph, %scalar.ph675.preheader ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv40.i.i152
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !83
  %i.ju = mul nsw i32 %i.jt, %.030.i.i153         ; 2 uses
  %indvars.iv.next41.i.i154 = add nuw nsw i64 %indvars.iv40.i.i152, 1 ; 2 uses
  %exitcond.not.i.i155 = icmp eq i64 %indvars.iv.next41.i.i154, %i.ir
  br i1 %exitcond.not.i.i155, label %.loopexit707, label %scalar.ph675, !llvm.loop !594

.loopexit707:                                     ; preds = %scalar.ph675, %middle.block686
  %.lcssa630 = phi i32 [ %i.jr, %middle.block686 ], [ %i.ju, %scalar.ph675 ]
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv43.i.i143
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !83
  %i.jx = mul nsw i32 %i.jw, %.lcssa630
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv43.i.i143
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !83
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.loopexit707
  %.pn.i.i147 = phi i32 [ %i.jx, %.loopexit707 ], [ %i.jz, %bb.ae ]
  %.1.i.i148 = add nsw i32 %.pn.i.i147, %.02132.i.i145 ; 2 uses
  %indvars.iv.next39.i.i149 = add nuw nsw i64 %indvars.iv38.i.i144, 1
  %exitcond47.not.i.i150 = icmp eq i64 %indvars.iv.next44.i.i146, %i.ir
  br i1 %exitcond47.not.i.i150, label %.lr.ph.i.i157, label %bb.ad, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread: ; preds = %.preheader27.i.i141, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9get_valueERKS3_.exit
  %i.ka = load i32, ptr %i.gn, align 4, !tbaa !83
  %i.kb = sitofp i32 %i.ka to double
  %i.kc = fmul double %i.ik, %i.kb
  %i.kd = call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %i.kc)
  %i.ke = load i32, ptr %i.e, align 4, !tbaa !83
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176

.lr.ph.i.i157:                                    ; preds = %bb.af
  %i.kf = sext i32 %.1.i.i148 to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !83
  %i.ki = sitofp i32 %i.kh to double
  %i.kj = fmul double %i.ik, %i.ki
  %i.kk = call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %i.kj) ; 2 uses
  %i.kl = load i32, ptr %i.e, align 4, !tbaa !83  ; 2 uses
  %i.km = load ptr, ptr %i.bd, align 8, !tbaa !57
  %i.kn = load ptr, ptr %i.bf, align 8, !tbaa !57
  %i.ko = load ptr, ptr %i.bg, align 8, !tbaa !60 ; 3 uses
  br label %bb.ag

.preheader27.i.i160:                              ; preds = %bb.ag
  %i.kp = icmp sgt i32 %i.lc, 0
  br i1 %i.kp, label %.lr.ph33.i.i161, label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176

.lr.ph33.i.i161:                                  ; preds = %.preheader27.i.i160
  %i.kq = zext nneg i32 %i.lc to i64              ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.i157
  %indvars.iv.i.i158 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i159, %bb.ag ] ; 5 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0551563, i64 %indvars.iv.i.i158
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !82
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.i.i158
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !82
  %i.kv = fsub double %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i.i158
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !82
  %i.ky = fdiv double %i.kv, %i.kx
  %i.kz = fadd double %i.ky, f0x3EB0C6F7A0B5ED8D
  %i.la = fptosi double %i.kz to i32
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.i.i158
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !83
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %i.lc = load i32, ptr %i.be, align 8, !tbaa !274 ; 3 uses
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next.i.i159, %i.ld
  br i1 %i.le, label %bb.ag, label %.preheader27.i.i160, !llvm.loop !18

bb.ah:                                            ; preds = %bb.aj, %.lr.ph33.i.i161
  %indvars.iv43.i.i162 = phi i64 [ 0, %.lr.ph33.i.i161 ], [ %indvars.iv.next44.i.i165, %bb.aj ] ; 4 uses
  %indvars.iv38.i.i163 = phi i64 [ 1, %.lr.ph33.i.i161 ], [ %indvars.iv.next39.i.i168, %bb.aj ] ; 4 uses
  %.02132.i.i164 = phi i32 [ 0, %.lr.ph33.i.i161 ], [ %.1.i.i167, %bb.aj ]
  %i.lf = xor i64 %indvars.iv43.i.i162, -1
  %i.lg = add nsw i64 %i.lf, %i.kq                ; 3 uses
  %indvars.iv.next44.i.i165 = add nuw nsw i64 %indvars.iv43.i.i162, 1 ; 3 uses
  %i.lh = icmp samesign ult i64 %indvars.iv.next44.i.i165, %i.kq
  br i1 %i.lh, label %.preheader.i.i171, label %bb.ai

.preheader.i.i171:                                ; preds = %bb.ah
  %i.li = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %min.iters.check660 = icmp ult i64 %i.lg, 8
  br i1 %min.iters.check660, label %scalar.ph659.preheader, label %vector.ph661

vector.ph661:                                     ; preds = %.preheader.i.i171
  %n.vec662 = and i64 %i.lg, -8                   ; 3 uses
  %i.lj = add i64 %indvars.iv38.i.i163, %n.vec662
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv38.i.i163
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph661
  %index664 = phi i64 [ 0, %vector.ph661 ], [ %index.next669, %vector.body663 ] ; 2 uses
  %vec.phi665 = phi <4 x i32> [ splat (i32 1), %vector.ph661 ], [ %i.ln, %vector.body663 ]
  %vec.phi666 = phi <4 x i32> [ splat (i32 1), %vector.ph661 ], [ %i.lo, %vector.body663 ]
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %index664 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load667 = load <4 x i32>, ptr %i.ll, align 4, !tbaa !83
  %wide.load668 = load <4 x i32>, ptr %i.lm, align 4, !tbaa !83
  %i.ln = mul <4 x i32> %wide.load667, %vec.phi665 ; 2 uses
  %i.lo = mul <4 x i32> %wide.load668, %vec.phi666 ; 2 uses
  %index.next669 = add nuw i64 %index664, 8       ; 2 uses
  %i.lp = icmp eq i64 %index.next669, %n.vec662
  br i1 %i.lp, label %middle.block670, label %vector.body663, !llvm.loop !595

middle.block670:                                  ; preds = %vector.body663
  %bin.rdx671 = mul <4 x i32> %i.lo, %i.ln
  %i.lq = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx671) ; 2 uses
  %cmp.n672 = icmp eq i64 %i.lg, %n.vec662
  br i1 %cmp.n672, label %.loopexit, label %scalar.ph659.preheader

scalar.ph659.preheader:                           ; preds = %.preheader.i.i171, %middle.block670
  %indvars.iv40.i.i172.ph = phi i64 [ %indvars.iv38.i.i163, %.preheader.i.i171 ], [ %i.lj, %middle.block670 ]
  %.030.i.i173.ph = phi i32 [ 1, %.preheader.i.i171 ], [ %i.lq, %middle.block670 ]
  br label %scalar.ph659

scalar.ph659:                                     ; preds = %scalar.ph659.preheader, %scalar.ph659
  %indvars.iv40.i.i172 = phi i64 [ %indvars.iv.next41.i.i174, %scalar.ph659 ], [ %indvars.iv40.i.i172.ph, %scalar.ph659.preheader ] ; 2 uses
  %.030.i.i173 = phi i32 [ %i.lt, %scalar.ph659 ], [ %.030.i.i173.ph, %scalar.ph659.preheader ]
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv40.i.i172
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !83
  %i.lt = mul nsw i32 %i.ls, %.030.i.i173         ; 2 uses
  %indvars.iv.next41.i.i174 = add nuw nsw i64 %indvars.iv40.i.i172, 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq i64 %indvars.iv.next41.i.i174, %i.kq
  br i1 %exitcond.not.i.i175, label %.loopexit, label %scalar.ph659, !llvm.loop !596

.loopexit:                                        ; preds = %scalar.ph659, %middle.block670
  %.lcssa632 = phi i32 [ %i.lq, %middle.block670 ], [ %i.lt, %scalar.ph659 ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv43.i.i162
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !83
  %i.lw = mul nsw i32 %i.lv, %.lcssa632
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv43.i.i162
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !83
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  %.pn.i.i166 = phi i32 [ %i.lw, %.loopexit ], [ %i.ly, %bb.ai ]
  %.1.i.i167 = add nsw i32 %.pn.i.i166, %.02132.i.i164 ; 2 uses
  %indvars.iv.next39.i.i168 = add nuw nsw i64 %indvars.iv38.i.i163, 1
  %exitcond47.not.i.i169 = icmp eq i64 %indvars.iv.next44.i.i165, %i.kq
  br i1 %exitcond47.not.i.i169, label %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170, label %bb.ah, !llvm.loop !19

_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170: ; preds = %bb.aj
  %i.lz = sext i32 %.1.i.i167 to i64
  br label %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176

_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176: ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread, %.preheader27.i.i160, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170
  %i.ma = phi i32 [ %i.kl, %.preheader27.i.i160 ], [ %i.ke, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ], [ %i.kl, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170 ]
  %i.mb = phi double [ %i.kk, %.preheader27.i.i160 ], [ %i.kd, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ], [ %i.kk, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170 ]
  %.021.lcssa.i.i156 = phi i64 [ 0, %.preheader27.i.i160 ], [ 0, %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit.thread ], [ %i.lz, %_ZN11UIestimator8n_vectorIiE9convert_xERKSt6vectorIdSaIdEE.exit.loopexit.i170 ]
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.021.lcssa.i.i156
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !83
  %i.me = add nsw i32 %i.md, %i.ma
  %i.mf = sitofp i32 %i.me to double
  %i.mg = fdiv double %i.mb, %i.mf
  store double %i.mg, ptr %i.go, align 8, !tbaa !82
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %i.mh = load i32, ptr %i.i, align 8, !tbaa !268
  %i.mi = sext i32 %i.mh to i64
  %i.mj = icmp slt i64 %indvars.iv.next469, %i.mi
  br i1 %i.mj, label %bb.x, label %._crit_edge445, !llvm.loop !597

._crit_edge445:                                   ; preds = %_ZN11UIestimator8n_vectorIiE9get_valueERKSt6vectorIdSaIdEE.exit176, %.preheader289
  br i1 %.not.i.i.i.i177, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge445
  br i1 %i.bm, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !213

.noexc.i.i:                                       ; preds = %bb.ak
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ak
  %i.mk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #27
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc179:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.bl ; 3 uses
  br i1 %i.bn, label %bb.al, label %bb.am, !prof !214

bb.al:                                            ; preds = %.noexc179
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.mk, ptr align 8 %.sroa.0257.0, i64 %i.bl, i1 false)
  br label %.thread

bb.am:                                            ; preds = %.noexc179
  br i1 %i.bo, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.mm = load double, ptr %.sroa.0257.0, align 8, !tbaa !82
  store double %i.mm, ptr %i.mk, align 8, !tbaa !82
  br label %.thread

.thread:                                          ; preds = %._crit_edge445, %bb.an, %bb.am, %bb.al
  %i.mn = phi ptr [ %i.ml, %bb.al ], [ %i.ml, %bb.am ], [ %i.ml, %bb.an ], [ %i.bp, %._crit_edge445 ]
  %i.mo = phi ptr [ %i.mk, %bb.al ], [ %i.mk, %bb.am ], [ %i.mk, %bb.an ], [ null, %._crit_edge445 ] ; 12 uses
  %i.mp = load i32, ptr %i.ax, align 8, !tbaa !273
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %.lr.ph.i.i181, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph.i.i181:                                    ; preds = %.thread
  %i.mr = load ptr, ptr %i.ay, align 8, !tbaa !57
  %i.ms = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.mt = load ptr, ptr %i.ba, align 8, !tbaa !60 ; 3 uses
  br label %bb.ao

.preheader27.i.i184:                              ; preds = %bb.ao
  %i.mu = icmp sgt i32 %i.nh, 0
  br i1 %i.mu, label %.lr.ph33.i.i185, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

.lr.ph33.i.i185:                                  ; preds = %.preheader27.i.i184
  %i.mv = zext nneg i32 %i.nh to i64              ; 4 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i181
  %indvars.iv.i.i182 = phi i64 [ 0, %.lr.ph.i.i181 ], [ %indvars.iv.next.i.i183, %bb.ao ] ; 5 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0268.0551563, i64 %indvars.iv.i.i182
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !82
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv.i.i182
  %i.mz = load double, ptr %i.my, align 8, !tbaa !82
  %i.na = fsub double %i.mx, %i.mz
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.i.i182
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !82
  %i.nd = fdiv double %i.na, %i.nc
  %i.ne = fadd double %i.nd, f0x3EB0C6F7A0B5ED8D
  %i.nf = fptosi double %i.ne to i32
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv.i.i182
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !83
  %indvars.iv.next.i.i183 = add nuw nsw i64 %indvars.iv.i.i182, 1 ; 2 uses
  %i.nh = load i32, ptr %i.ax, align 8, !tbaa !273 ; 3 uses
  %i.ni = sext i32 %i.nh to i64
  %i.nj = icmp slt i64 %indvars.iv.next.i.i183, %i.ni
  br i1 %i.nj, label %bb.ao, label %.preheader27.i.i184, !llvm.loop !16

bb.ap:                                            ; preds = %bb.ar, %.lr.ph33.i.i185
  %indvars.iv43.i.i186 = phi i64 [ 0, %.lr.ph33.i.i185 ], [ %indvars.iv.next44.i.i189, %bb.ar ] ; 4 uses
  %indvars.iv38.i.i187 = phi i64 [ 1, %.lr.ph33.i.i185 ], [ %indvars.iv.next39.i.i192, %bb.ar ] ; 4 uses
  %.02132.i.i188 = phi i32 [ 0, %.lr.ph33.i.i185 ], [ %.1.i.i191, %bb.ar ]
  %i.nk = xor i64 %indvars.iv43.i.i186, -1
  %i.nl = add nsw i64 %i.nk, %i.mv                ; 3 uses
  %indvars.iv.next44.i.i189 = add nuw nsw i64 %indvars.iv43.i.i186, 1 ; 3 uses
  %i.nm = icmp samesign ult i64 %indvars.iv.next44.i.i189, %i.mv
  br i1 %i.nm, label %.preheader.i.i195, label %bb.aq

.preheader.i.i195:                                ; preds = %bb.ap
  %i.nn = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %min.iters.check644 = icmp ult i64 %i.nl, 8
  br i1 %min.iters.check644, label %scalar.ph643.preheader, label %vector.ph645

vector.ph645:                                     ; preds = %.preheader.i.i195
  %n.vec646 = and i64 %i.nl, -8                   ; 3 uses
  %i.no = add i64 %indvars.iv38.i.i187, %n.vec646
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv38.i.i187
  br label %vector.body647

vector.body647:                                   ; preds = %vector.body647, %vector.ph645
  %index648 = phi i64 [ 0, %vector.ph645 ], [ %index.next653, %vector.body647 ] ; 2 uses
  %vec.phi649 = phi <4 x i32> [ splat (i32 1), %vector.ph645 ], [ %i.ns, %vector.body647 ]
  %vec.phi650 = phi <4 x i32> [ splat (i32 1), %vector.ph645 ], [ %i.nt, %vector.body647 ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %index648 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %wide.load651 = load <4 x i32>, ptr %i.nq, align 4, !tbaa !83
  %wide.load652 = load <4 x i32>, ptr %i.nr, align 4, !tbaa !83
  %i.ns = mul <4 x i32> %wide.load651, %vec.phi649 ; 2 uses
  %i.nt = mul <4 x i32> %wide.load652, %vec.phi650 ; 2 uses
  %index.next653 = add nuw i64 %index648, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next653, %n.vec646
  br i1 %i.nu, label %middle.block654, label %vector.body647, !llvm.loop !598

middle.block654:                                  ; preds = %vector.body647
  %bin.rdx655 = mul <4 x i32> %i.nt, %i.ns
  %i.nv = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx655) ; 2 uses
  %cmp.n656 = icmp eq i64 %i.nl, %n.vec646
  br i1 %cmp.n656, label %.loopexit710, label %scalar.ph643.preheader

scalar.ph643.preheader:                           ; preds = %.preheader.i.i195, %middle.block654
  %indvars.iv40.i.i196.ph = phi i64 [ %indvars.iv38.i.i187, %.preheader.i.i195 ], [ %i.no, %middle.block654 ]
  %.030.i.i197.ph = phi i32 [ 1, %.preheader.i.i195 ], [ %i.nv, %middle.block654 ]
  br label %scalar.ph643

scalar.ph643:                                     ; preds = %scalar.ph643.preheader, %scalar.ph643
  %indvars.iv40.i.i196 = phi i64 [ %indvars.iv.next41.i.i198, %scalar.ph643 ], [ %indvars.iv40.i.i196.ph, %scalar.ph643.preheader ] ; 2 uses
  %.030.i.i197 = phi i32 [ %i.ny, %scalar.ph643 ], [ %.030.i.i197.ph, %scalar.ph643.preheader ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv40.i.i196
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !83
  %i.ny = mul nsw i32 %i.nx, %.030.i.i197         ; 2 uses
  %indvars.iv.next41.i.i198 = add nuw nsw i64 %indvars.iv40.i.i196, 1 ; 2 uses
  %exitcond.not.i.i199 = icmp eq i64 %indvars.iv.next41.i.i198, %i.mv
  br i1 %exitcond.not.i.i199, label %.loopexit710, label %scalar.ph643, !llvm.loop !599

.loopexit710:                                     ; preds = %scalar.ph643, %middle.block654
  %.lcssa634 = phi i32 [ %i.nv, %middle.block654 ], [ %i.ny, %scalar.ph643 ]
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv43.i.i186
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !83
  %i.ob = mul nsw i32 %i.oa, %.lcssa634
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv43.i.i186
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !83
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.loopexit710
  %.pn.i.i190 = phi i32 [ %i.ob, %.loopexit710 ], [ %i.od, %bb.aq ]
  %.1.i.i191 = add nsw i32 %.pn.i.i190, %.02132.i.i188 ; 2 uses
  %indvars.iv.next39.i.i192 = add nuw nsw i64 %indvars.iv38.i.i187, 1
  %exitcond47.not.i.i193 = icmp eq i64 %indvars.iv.next44.i.i189, %i.mv
  br i1 %exitcond47.not.i.i193, label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194, label %bb.ap, !llvm.loop !17

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194: ; preds = %bb.ar
  %i.oe = sext i32 %.1.i.i191 to i64
  br label %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i

_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i: ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194, %.preheader27.i.i184, %.thread
  %.021.lcssa.i.i180 = phi i64 [ 0, %.preheader27.i.i184 ], [ 0, %.thread ], [ %i.oe, %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.loopexit.i194 ]
  %i.of = load ptr, ptr %i.bc, align 8, !tbaa !250
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %.021.lcssa.i.i180 ; 10 uses
  %i.oh = ptrtoint ptr %i.mn to i64               ; 2 uses
  %i.oi = ptrtoint ptr %i.mo to i64
  %i.oj = sub i64 %i.oh, %i.oi                    ; 15 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 3 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !210
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !57 ; 5 uses
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64               ; 2 uses
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = icmp ugt i64 %i.oj, %i.op
  br i1 %i.oq, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %_ZN11UIestimator8n_vectorISt6vectorIdSaIdEEE9convert_xERKS3_.exit.i
  %i.or = icmp ugt i64 %i.oj, 9223372036854775800
  br i1 %i.or, label %bb.at, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, !prof !213

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc253 unwind label %.loopexit.split-lp297.loopexit.split-lp

.noexc253:                                        ; preds = %bb.at
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %bb.as
  %i.os = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oj) #27
          to label %.noexc254 unwind label %.loopexit.split-lp297.loopexit.split-lp ; 4 uses

.noexc254:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.ot = icmp samesign ugt i64 %i.oj, 8
  br i1 %i.ot, label %bb.au, label %bb.av, !prof !272
end_hunk_0
