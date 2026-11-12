Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DiagSarif?download=true
inline.NumInlined: 1581
inline.NumDeleted: 623
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK14V3DiagSarifImp11putLocationER13V3OutJsonFilePK8FileLine:.noexc.i
  %.pn51.pn = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.by, %bb.l ] ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !tbaa !70    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.as, %bb.e ], [ %i.ce, %bb.n ]
  %.pn51.pn.pn.ph = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %.pn51.pn, %bb.n ]
  %i.cg = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ch) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.e
  %.pn51.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %.pn51.pn, %bb.n ], [ %.pn51.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ci = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ab
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %.body
  %i.ck = load i64, ptr %i.ab, align 8, !tbaa !72
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ar

._crit_edge.i.i116:                               ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cm, ptr %9, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cm, ptr noundef nonnull align 1 dereferenceable(3) @.str.208, i64 3, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.cn, align 8, !tbaa !71
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 19
  store i8 0, ptr %i.co, align 1, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.cp = load ptr, ptr %3, align 8, !tbaa !70, !noalias !456
  %i.cq = load i64, ptr %i.aa, align 8, !tbaa !71, !noalias !456 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.cr, ptr %10, align 8, !tbaa !86, !alias.scope !457
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !71, !alias.scope !457
  store i8 0, ptr %i.cr, align 8, !tbaa !72, !alias.scope !457
  %i.ct = add i64 %i.cq, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ct)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i116
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !71, !alias.scope !457
  %i.cv = add i64 %i.cu, -4611686018427387897
  %i.cw = icmp ult i64 %i.cv, 7
  br i1 %i.cw, label %.invoke.i.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i123: ; preds = %bb.o
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.212, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i124 unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i124: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i123
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !71, !alias.scope !457
  %i.cz = sub i64 4611686018427387903, %i.cy
  %i.da = icmp ult i64 %i.cz, %i.cq
  br i1 %i.da, label %.invoke.i.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i125

.invoke.i.i126:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i124, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #25
          to label %.cont.i.i127 unwind label %bb.p

.cont.i.i127:                                     ; preds = %.invoke.i.i126
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i124
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.cp, i64 noundef %i.cq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit130 unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i125, %.invoke.i.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i123, %._crit_edge.i.i116
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %10, align 8, !tbaa !70, !alias.scope !457 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cr
  br i1 %i.de, label %.body128, label %.body128.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i125
  %i.df = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile8putNamedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_b(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext true)
          to label %_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit132 unwind label %bb.q ; 0 uses

_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit132: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit130
  %i.dg = load ptr, ptr %10, align 8, !tbaa !70   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cr
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit132
  %i.di = load i64, ptr %i.cr, align 8, !tbaa !72
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.dk = load ptr, ptr %9, align 8, !tbaa !70    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cm
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.dm = load i64, ptr %i.cm, align 8, !tbaa !72
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.r

bb.q:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit130
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %10, align 8, !tbaa !70   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cr
  br i1 %i.dq, label %.body128, label %.body128.sink.split

.body128.sink.split:                              ; preds = %bb.q, %bb.p
  %.sink328 = phi ptr [ %i.dd, %bb.p ], [ %i.dp, %bb.q ]
  %.pn48.ph = phi { ptr, i32 } [ %i.dc, %bb.p ], [ %i.do, %bb.q ]
  %i.dr = load i64, ptr %i.cr, align 8, !tbaa !72
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %.sink328, i64 noundef %i.ds) #22
  br label %.body128

.body128:                                         ; preds = %.body128.sink.split, %bb.q, %bb.p
  %.pn48 = phi { ptr, i32 } [ %i.dc, %bb.p ], [ %i.do, %bb.q ], [ %.pn48.ph, %.body128.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.dt = load ptr, ptr %9, align 8, !tbaa !70    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cm
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %.body128
  %i.dv = load i64, ptr %i.cm, align 8, !tbaa !72
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %.body128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ar

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.dx = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3endEv(ptr noundef nonnull align 8 dereferenceable(320) %1)
          to label %._crit_edge.i.i145 unwind label %bb.k

._crit_edge.i.i145:                               ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.dy, ptr %11, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dy, ptr noundef nonnull align 1 dereferenceable(6) @.str.213, i64 6, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 6, ptr %i.dz, align 8, !tbaa !71
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 22
  store i8 0, ptr %i.ea, align 2, !tbaa !72
  %i.eb = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile5beginERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(320) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %11, i8 noundef signext 123)
          to label %._crit_edge.i.i149 unwind label %bb.u

._crit_edge.i.i149:                               ; preds = %._crit_edge.i.i145
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ec, ptr %12, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ec, ptr noundef nonnull align 1 dereferenceable(14) @.str.214, i64 14, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 14, ptr %i.ed, align 8, !tbaa !71
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 30
  store i8 0, ptr %i.ee, align 2, !tbaa !72
  %i.ef = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(320) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.215)
          to label %._crit_edge.i.i153 unwind label %bb.v

._crit_edge.i.i153:                               ; preds = %._crit_edge.i.i149
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.eg, ptr %13, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.eg, ptr noundef nonnull align 1 dereferenceable(9) @.str.216, i64 9, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 9, ptr %i.eh, align 8, !tbaa !71
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 25
  store i8 0, ptr %i.ei, align 1, !tbaa !72
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !196
  %i.el = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(320) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.ek)
          to label %._crit_edge.i.i157 unwind label %bb.w

._crit_edge.i.i157:                               ; preds = %._crit_edge.i.i153
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.em, ptr %14, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.em, ptr noundef nonnull align 1 dereferenceable(11) @.str.217, i64 11, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.en, align 8, !tbaa !71
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 27
  store i8 0, ptr %i.eo, align 1, !tbaa !72
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = trunc i64 %i.eq to i32
  %i.es = and i32 %i.er, 16777215
  %i.et = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(320) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.es)
          to label %bb.s unwind label %bb.x       ; 0 uses

bb.s:                                             ; preds = %._crit_edge.i.i157
  %i.eu = load ptr, ptr %14, align 8, !tbaa !70   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.em
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.s
  %i.ew = load i64, ptr %i.em, align 8, !tbaa !72
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ey = load ptr, ptr %13, align 8, !tbaa !70   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eg
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.fa = load i64, ptr %i.eg, align 8, !tbaa !72
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.fc = load ptr, ptr %12, align 8, !tbaa !70   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ec
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.fe = load i64, ptr %i.ec, align 8, !tbaa !72
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.fg = load ptr, ptr %11, align 8, !tbaa !70   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dy
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.fi = load i64, ptr %i.dy, align 8, !tbaa !72
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fl = load i16, ptr %i.fk, align 8, !tbaa !197 ; 2 uses
  %.not = icmp eq i16 %i.fl, 0
  br i1 %.not, label %._crit_edge.i.i195, label %._crit_edge.i.i173

._crit_edge.i.i173:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fm, ptr %15, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.fm, ptr noundef nonnull align 1 dereferenceable(7) @.str.218, i64 7, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.fn, align 8, !tbaa !71
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 23
  store i8 0, ptr %i.fo, align 1, !tbaa !72
  %i.fp = load i32, ptr %i.ej, align 4, !tbaa !196
  %i.fq = zext i16 %i.fl to i32
  %i.fr = add nsw i32 %i.fp, %i.fq
  %i.fs = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %i.fr)
          to label %bb.t unwind label %bb.ab      ; 0 uses

bb.t:                                             ; preds = %._crit_edge.i.i173
  %i.ft = load ptr, ptr %15, align 8, !tbaa !70   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.fm
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %bb.t
  %i.fv = load i64, ptr %i.fm, align 8, !tbaa !72
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %._crit_edge.i.i195

bb.u:                                             ; preds = %._crit_edge.i.i145
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %._crit_edge.i.i149
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %._crit_edge.i.i153
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i157
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %14, align 8, !tbaa !70   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.em
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.x
  %i.gd = load i64, ptr %i.em, align 8, !tbaa !72
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.w
  %.pn56.pn = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.fz, %bb.w ]
  %i.gf = load ptr, ptr %13, align 8, !tbaa !70   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.eg
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.y
  %i.gh = load i64, ptr %i.eg, align 8, !tbaa !72
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, %bb.v
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %i.fy, %bb.v ]
  %i.gj = load ptr, ptr %12, align 8, !tbaa !70   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.ec
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.z
  %i.gl = load i64, ptr %i.ec, align 8, !tbaa !72
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.u
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.fx, %bb.u ]
  %i.gn = load ptr, ptr %11, align 8, !tbaa !70   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.dy
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.aa
  %i.gp = load i64, ptr %i.dy, align 8, !tbaa !72
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ar

bb.ab:                                            ; preds = %._crit_edge.i.i173
  %i.gr = landingpad { ptr, i32 }
          cleanup
  %i.gs = load ptr, ptr %15, align 8, !tbaa !70   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fm
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.ab
  %i.gu = load i64, ptr %i.fm, align 8, !tbaa !72
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ar

._crit_edge.i.i195:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.gw, ptr %16, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gw, ptr noundef nonnull align 1 dereferenceable(9) @.str.219, i64 9, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 9, ptr %i.gx, align 8, !tbaa !71
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 25
  store i8 0, ptr %i.gy, align 1, !tbaa !72
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %22 = load i32, ptr %21, align 4
  %i.gz = and i32 %22, 16777215
  %i.ha = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3putERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %i.gz)
          to label %bb.ac unwind label %bb.al     ; 0 uses

bb.ac:                                            ; preds = %._crit_edge.i.i195
  %i.hb = load ptr, ptr %16, align 8, !tbaa !70   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gw
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.ac
  %i.hd = load i64, ptr %i.gw, align 8, !tbaa !72
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.hf, ptr %17, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.hf, ptr noundef nonnull align 1 dereferenceable(7) @.str.220, i64 7, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 7, ptr %i.hg, align 8, !tbaa !71
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 23
  store i8 0, ptr %i.hh, align 1, !tbaa !72
  %i.hi = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile5beginERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, i8 noundef signext 123)
          to label %bb.ad unwind label %bb.am     ; 0 uses

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.hj = load ptr, ptr %17, align 8, !tbaa !70   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.hf
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.ad
  %i.hl = load i64, ptr %i.hf, align 8, !tbaa !72
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZNK8FileLine12prettySourceB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.ae unwind label %bb.an

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN7V3Error13stripMetaTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK14V3DiagSarifImp7putTextER13V3OutJsonFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.hn = load ptr, ptr %19, align 8, !tbaa !70   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.ah
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !72
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  %i.hs = load ptr, ptr %20, align 8, !tbaa !70   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !72
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.hx = load ptr, ptr %18, align 8, !tbaa !70   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !72
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.ic = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3endEv(ptr noundef nonnull align 8 dereferenceable(320) %1)
          to label %bb.ai unwind label %bb.k      ; 0 uses

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %i.id = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3endEv(ptr noundef nonnull align 8 dereferenceable(320) %1)
          to label %bb.aj unwind label %bb.k      ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ie = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN13V3OutJsonFile3endEv(ptr noundef nonnull align 8 dereferenceable(320) %1)
          to label %bb.ak unwind label %bb.k      ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.if = load ptr, ptr %3, align 8, !tbaa !70    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %bb.ak
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !72
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.al:                                            ; preds = %._crit_edge.i.i195
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %16, align 8, !tbaa !70   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.gw
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.al
  %i.in = load i64, ptr %i.gw, align 8, !tbaa !72
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.ar

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %17, align 8, !tbaa !70   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.hf
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.am
  %i.is = load i64, ptr %i.hf, align 8, !tbaa !72
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.ar

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.ao:                                            ; preds = %bb.ae
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.ap:                                            ; preds = %bb.af
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

bb.aq:                                            ; preds = %bb.ag
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = load ptr, ptr %19, align 8, !tbaa !70   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.aq
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !72
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %bb.ap
  %.pn70 = phi { ptr, i32 } [ %i.iw, %bb.ap ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %i.ix, %bb.aq ] ; 2 uses
  %i.jd = load ptr, ptr %20, align 8, !tbaa !70   ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !72
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
end_hunk_0
begin_hunk_1_@_ZN10V3MutexImpISt15recursive_mutexE4lockEv:bb.a
  br i1 %.not.i.i4, label %.thread, label %bb.b, !prof !192

bb.b:                                             ; preds = %_ZN10V3MutexImpISt15recursive_mutexE8try_lockEv.exit5
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !193
  %i.g = add nuw nsw i32 %.037, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, 50000
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !4

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %.thread

.thread:                                          ; preds = %.preheader, %_ZN10V3MutexImpISt15recursive_mutexE8try_lockEv.exit5, %_ZN10V3MutexImpISt15recursive_mutexE8try_lockEv.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(2) ptr @_ZN13V3MutexConfig1sEv() #1 comdat align 2 {
bb.a:
  ret ptr @_ZZN13V3MutexConfig1sEvE1s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK13V3MutexConfig6enableEv(ptr noundef nonnull align 1 dereferenceable(2) %0) #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !191, !range !66, !noundef !67
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10V3MutexImpISt15recursive_mutexE8try_lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !191, !range !66, !noundef !67
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %0) #21
  %.not.i = icmp eq i32 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i1 [ %.not.i, %bb.b ], [ true, %bb.a ]
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt15recursive_mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull %0) #21 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10V3MutexImpISt15recursive_mutexE6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !191, !range !66, !noundef !67
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #14

declare void @_ZN7VString14trimWhitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4V3Os16filenameRealPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine9singletonEv.exit, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8FileLine9singletonEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #21
  br label %_ZN8FileLine9singletonEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #21
  resume { ptr, i32 } %i.e

_ZN8FileLine9singletonEv.exit:                    ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !199
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 104), align 8, !tbaa !202, !noalias !472 ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 112), align 8, !tbaa !203, !noalias !472
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8FileLine9singletonEvE1s, i64 128), align 8, !tbaa !204, !noalias !472
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 5
  %i.p = add nsw i64 %i.o, %i.h                   ; 5 uses
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN8FileLine9singletonEv.exit
  %i.r = icmp samesign ult i64 %i.p, 16
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.h
  br label %_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit

bb.h:                                             ; preds = %bb.f
  %i.t = lshr i64 %i.p, 4
  br label %bb.j

bb.i:                                             ; preds = %_ZN8FileLine9singletonEv.exit
  %i.u = ashr i64 %i.p, 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i64 [ %i.t, %bb.h ], [ %i.u, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !205, !noalias !472
  %i.y = shl nsw i64 %i.v, 4
  %i.z = sub nsw i64 %i.p, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.x, i64 %i.z
  br label %_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit

_ZNK17FileLineSingleton12numberToNameB5cxx11Et.exit: ; preds = %bb.g, %bb.j
  %storemerge.i.i.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %i.s, %bb.g ]
  ret ptr %storemerge.i.i.i.i.i
}

declare noundef zeroext i1 @_ZN4V3Os13filenameIsRelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine11firstLinenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !196
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine11firstColumnEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 16777215
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10lastLinenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !197
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10lastColumnEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %1 = load i32, ptr %i.a, align 4
  %i.b = and i32 %1, 16777215
  ret i32 %i.b
}

declare void @_ZNK8FileLine12prettySourceB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %_ZN7V3Error1sEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #21
  br label %common.resume

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 200), ptr nonnull @.str.186, ptr nonnull @.str.187, i32 468, ptr null)
  store i8 1, ptr %i.f, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNK8FileLine11warnContextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNK8FileLine17warnContextParentB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN7V3Error1sEv.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.l = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !72
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.h:                                             ; preds = %_ZN7V3Error1sEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !70     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !72
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.r, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.x = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !72
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(336) ptr @_ZN8FileLine9singletonEv() #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #21
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN8FileLine9singletonEvE1s

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #21
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17FileLineSingleton12numberToNameB5cxx11Et(ptr noundef nonnull align 8 dereferenceable(336) %0, i16 noundef zeroext %1) #1 comdat align 2 {
bb.a:
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !202, !noalias !475 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203, !noalias !475
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204, !noalias !475
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  %i.l = add nsw i64 %i.k, %i.a                   ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i64 %i.l, 16
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.a
  br label %_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = ashr i64 %i.l, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i64 [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !205, !noalias !475
  %i.u = shl nsw i64 %i.r, 4
  %i.v = sub nsw i64 %i.l, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.v
  br label %_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit: ; preds = %bb.c, %bb.f
  %storemerge.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.o, %bb.c ]
  ret ptr %storemerge.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10filenamenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
bb.a:
end_hunk_1
