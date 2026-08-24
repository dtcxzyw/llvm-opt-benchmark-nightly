Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ExecGraph?download=true
inline.NumInlined: 4150
inline.NumDeleted: 1328
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11V3ExecGraph11PackThreads19selfTestNormalFirstEv:._crit_edge.i.i
  store i32 100, ptr %i.da, align 4, !tbaa !116
  store i32 100, ptr %i.cx, align 8, !tbaa !115
  %i.db = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.db, align 8, !tbaa !46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ab, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit unwind label %bb.ab

_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit: ; preds = %bb.o
  %i.dd = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.dd, align 8, !tbaa !46
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ao, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit397 unwind label %bb.ac

_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit397: ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit
  %i.df = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.df, align 8, !tbaa !46
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef %i.n, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.bb, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit399 unwind label %bb.ad

_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit399: ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit397
  %i.dh = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.dh, align 8, !tbaa !46
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, ptr noundef %i.n, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.bo, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit401 unwind label %bb.ae

_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit401: ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit399
  %i.dj = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.dj, align 8, !tbaa !46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noundef %i.n, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.cb, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit403 unwind label %bb.af

_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit403: ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit401
  %i.dl = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.dl, align 8, !tbaa !46
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.dl, ptr noundef %i.n, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.co, i32 noundef 1, i1 noundef zeroext false)
          to label %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit405 unwind label %bb.ag

_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit405: ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit403
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store <4 x i32> <i32 2, i32 6, i32 3, i32 10>, ptr %9, align 16, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN11V3ExecGraph11PackThreads4packER7V3Graph(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.195") align 8 %10, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !574
  %i.dp = load ptr, ptr %10, align 8, !tbaa !577  ; 8 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = sdiv exact i64 %i.ds, 96
  %.not = icmp eq i64 %i.ds, 288
  br i1 %.not, label %bb.ai, label %bb.p, !prof !166

bb.p:                                             ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit405
  %i.du = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 599)
          to label %bb.q unwind label %bb.ah      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.dv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.r unwind label %bb.ah      ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull @.str.192, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i64 noundef %i.dt)
          to label %_ZNSolsEm.exit unwind label %bb.ah ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409 unwind label %bb.ah ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409: ; preds = %_ZNSolsEm.exit
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, i64 noundef 3)
          to label %_ZNSolsEm.exit411 unwind label %bb.ah

_ZNSolsEm.exit411:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.dz) #26
          to label %bb.s unwind label %bb.ah

bb.s:                                             ; preds = %_ZNSolsEm.exit411
  unreachable

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.f
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %bb.t
  %i.ed = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 192) #28
  br label %bb.ng

bb.u:                                             ; preds = %.noexc363, %.noexc362, %.noexc361, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 152) #28
  br label %bb.nf

bb.v:                                             ; preds = %.noexc367, %.noexc366, %.noexc365, %bb.d, %bb.c
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 152) #28
  br label %bb.nf

bb.w:                                             ; preds = %.noexc372, %.noexc371, %.noexc370, %bb.f, %bb.e
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 152) #28
  br label %bb.nf

bb.x:                                             ; preds = %.noexc377, %.noexc376, %.noexc375, %bb.h, %bb.g
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 152) #28
  br label %bb.nf

bb.y:                                             ; preds = %.noexc382, %.noexc381, %.noexc380, %bb.j, %bb.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 152) #28
  br label %bb.nf

bb.z:                                             ; preds = %.noexc387, %.noexc386, %.noexc385, %bb.l, %bb.k
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 152) #28
  br label %bb.nf

bb.aa:                                            ; preds = %.noexc392, %.noexc391, %.noexc390, %bb.n, %bb.m
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef 152) #28
  br label %bb.nf

bb.ab:                                            ; preds = %bb.o
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 72) #28
  br label %bb.nf

bb.ac:                                            ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 72) #28
  br label %bb.nf

bb.ad:                                            ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit397
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 72) #28
  br label %bb.nf

bb.ae:                                            ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit399
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 72) #28
  br label %bb.nf

bb.af:                                            ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit401
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 72) #28
  br label %bb.nf

bb.ag:                                            ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit403
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 72) #28
  br label %bb.nf

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit409, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.r, %_ZNSolsEm.exit411, %bb.q, %bb.p
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.ai:                                            ; preds = %_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib.exit405
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !692
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !690 ; 5 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = sdiv i64 %i.ez, 24
  %.not241 = icmp eq i64 %i.ez, 48
  br i1 %.not241, label %bb.ao, label %bb.aj, !prof !166

bb.aj:                                            ; preds = %bb.ai
  %i.fb = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 600)
          to label %bb.ak unwind label %bb.an     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fc = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.al unwind label %bb.an     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.193, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit416 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit416: ; preds = %bb.al
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, i64 noundef %i.fa)
          to label %_ZNSolsEm.exit418 unwind label %bb.an ; 2 uses

_ZNSolsEm.exit418:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit416
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit420 unwind label %bb.an ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit420: ; preds = %_ZNSolsEm.exit418
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, i64 noundef 2)
          to label %_ZNSolsEm.exit422 unwind label %bb.an

_ZNSolsEm.exit422:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit420
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fg) #26
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %_ZNSolsEm.exit422
  unreachable

bb.an:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit420, %_ZNSolsEm.exit418, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit416, %bb.al, %_ZNSolsEm.exit422, %bb.ak, %bb.aj
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.ao:                                            ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !790
  %i.fk = load ptr, ptr %i.ew, align 8, !tbaa !693 ; 3 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = ashr exact i64 %i.fn, 3
  %.not242 = icmp eq i64 %i.fn, 16
  br i1 %.not242, label %.lr.ph.3, label %bb.ap, !prof !166

bb.ap:                                            ; preds = %bb.ao
  %i.fp = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 601)
          to label %bb.aq unwind label %bb.at     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fq = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.ar unwind label %bb.at     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.194, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424: ; preds = %bb.ar
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, i64 noundef %i.fo)
          to label %_ZNSolsEm.exit426 unwind label %bb.at ; 2 uses

_ZNSolsEm.exit426:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit428 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit428: ; preds = %_ZNSolsEm.exit426
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, i64 noundef 2)
          to label %_ZNSolsEm.exit430 unwind label %bb.at

_ZNSolsEm.exit430:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit428
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.fu) #26
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %_ZNSolsEm.exit430
  unreachable

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit428, %_ZNSolsEm.exit426, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit424, %bb.ar, %_ZNSolsEm.exit430, %bb.aq, %bb.ap
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

.lr.ph.2:                                         ; preds = %.lr.ph.3
  %i.fw = load ptr, ptr %i.fk, align 8, !tbaa !300 ; 2 uses
  %.not349.2 = icmp eq ptr %i.fw, %i.o
  br i1 %.not349.2, label %bb.bd, label %bb.ay, !prof !166

.lr.ph.3:                                         ; preds = %bb.ao
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !790 ; 2 uses
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !693 ; 2 uses
  %.not349.3 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not349.3, label %.lr.ph.2, label %.loopexit, !prof !166

.loopexit:                                        ; preds = %.lr.ph.3
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 603)
          to label %bb.au unwind label %bb.ax     ; 0 uses

bb.au:                                            ; preds = %.loopexit
  %i.gg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.av unwind label %bb.ax     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef nonnull @.str.180, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432: ; preds = %bb.av
  %i.gi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, i64 noundef %i.ge)
          to label %_ZNSolsEm.exit434 unwind label %bb.ax ; 2 uses

_ZNSolsEm.exit434:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436: ; preds = %_ZNSolsEm.exit434
  %i.gk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, i64 noundef 0)
          to label %_ZNSolsEm.exit438 unwind label %bb.ax

_ZNSolsEm.exit438:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.gk) #26
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %_ZNSolsEm.exit438
  unreachable

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436, %_ZNSolsEm.exit434, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432, %bb.av, %_ZNSolsEm.exit438, %bb.au, %.loopexit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.ay:                                            ; preds = %.lr.ph.2
  %i.gm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 605)
          to label %bb.az unwind label %bb.bc     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.gn = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.ba unwind label %bb.bc     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.go = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.181, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit440 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit440: ; preds = %bb.ba
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef %i.fw)
          to label %_ZNSolsEPKv.exit unwind label %bb.bc ; 2 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit440
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit443 unwind label %bb.bc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit443: ; preds = %_ZNSolsEPKv.exit
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull %i.o)
          to label %_ZNSolsEPKv.exit445 unwind label %bb.bc

_ZNSolsEPKv.exit445:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit443
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.gr) #26
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %_ZNSolsEPKv.exit445
  unreachable

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit443, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit440, %bb.ba, %_ZNSolsEPKv.exit445, %bb.az, %bb.ay
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.bd:                                            ; preds = %.lr.ph.2
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !300 ; 2 uses
  %.not244 = icmp eq ptr %i.gu, %i.ab
  br i1 %.not244, label %bb.bj, label %bb.be, !prof !166

bb.be:                                            ; preds = %bb.bd
  %i.gv = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 606)
          to label %bb.bf unwind label %bb.bi     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.gw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.bg unwind label %bb.bi     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.195, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit447 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit447: ; preds = %bb.bg
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gu)
          to label %_ZNSolsEPKv.exit449 unwind label %bb.bi ; 2 uses

_ZNSolsEPKv.exit449:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit447
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit451 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit451: ; preds = %_ZNSolsEPKv.exit449
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull %i.ab)
          to label %_ZNSolsEPKv.exit453 unwind label %bb.bi

_ZNSolsEPKv.exit453:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit451
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ha) #26
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %_ZNSolsEPKv.exit453
  unreachable

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit451, %_ZNSolsEPKv.exit449, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit447, %bb.bg, %_ZNSolsEPKv.exit453, %bb.bf, %bb.be
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.bj:                                            ; preds = %bb.bd
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dp, i64 168
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dp, i64 176
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !692
  %i.hf = load ptr, ptr %i.hc, align 8, !tbaa !690 ; 3 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = sdiv exact i64 %i.hi, 24
  %.not245 = icmp eq i64 %i.hi, 48
  br i1 %.not245, label %bb.bp, label %bb.bk, !prof !166

bb.bk:                                            ; preds = %bb.bj
  %i.hk = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 608)
          to label %bb.bl unwind label %bb.bo     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hl = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.bm unwind label %bb.bo     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str.196, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit455 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit455: ; preds = %bb.bm
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, i64 noundef %i.hj)
          to label %_ZNSolsEm.exit457 unwind label %bb.bo ; 2 uses

_ZNSolsEm.exit457:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit455
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit459 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit459: ; preds = %_ZNSolsEm.exit457
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, i64 noundef 2)
          to label %_ZNSolsEm.exit461 unwind label %bb.bo

_ZNSolsEm.exit461:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit459
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.hp) #26
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %_ZNSolsEm.exit461
  unreachable

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit459, %_ZNSolsEm.exit457, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit455, %bb.bm, %_ZNSolsEm.exit461, %bb.bl, %bb.bk
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.bp:                                            ; preds = %bb.bj
  %i.hr = load ptr, ptr %i.hf, align 8, !tbaa !693 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !300 ; 2 uses
  %.not246 = icmp eq ptr %i.hs, %i.ao
  br i1 %.not246, label %bb.bv, label %bb.bq, !prof !166

bb.bq:                                            ; preds = %bb.bp
  %i.ht = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 609)
          to label %bb.br unwind label %bb.bu     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.hu = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.bs unwind label %bb.bu     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.197, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463 unwind label %bb.bu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463: ; preds = %bb.bs
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef %i.hs)
          to label %_ZNSolsEPKv.exit465 unwind label %bb.bu ; 2 uses

_ZNSolsEPKv.exit465:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit467 unwind label %bb.bu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit467: ; preds = %_ZNSolsEPKv.exit465
  %i.hy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull %i.ao)
          to label %_ZNSolsEPKv.exit469 unwind label %bb.bu

_ZNSolsEPKv.exit469:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit467
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.hy) #26
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %_ZNSolsEPKv.exit469
  unreachable

bb.bu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit467, %_ZNSolsEPKv.exit465, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit463, %bb.bs, %_ZNSolsEPKv.exit469, %bb.br, %bb.bq
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.bv:                                            ; preds = %bb.bp
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !300 ; 2 uses
  %.not247 = icmp eq ptr %i.ib, %i.bb
  br i1 %.not247, label %bb.cb, label %bb.bw, !prof !166

bb.bw:                                            ; preds = %bb.bv
  %i.ic = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 610)
          to label %bb.bx unwind label %bb.ca     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.id = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.by unwind label %bb.ca     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull @.str.198, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471: ; preds = %bb.by
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef %i.ib)
          to label %_ZNSolsEPKv.exit473 unwind label %bb.ca ; 2 uses

_ZNSolsEPKv.exit473:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit475 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit475: ; preds = %_ZNSolsEPKv.exit473
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull %i.bb)
          to label %_ZNSolsEPKv.exit477 unwind label %bb.ca

_ZNSolsEPKv.exit477:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit475
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ih) #26
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %_ZNSolsEPKv.exit477
  unreachable

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit475, %_ZNSolsEPKv.exit473, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit471, %bb.by, %_ZNSolsEPKv.exit477, %bb.bx, %bb.bw
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.cb:                                            ; preds = %bb.bv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !693
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !300 ; 2 uses
  %.not248 = icmp eq ptr %i.il, %i.bo
  br i1 %.not248, label %bb.ch, label %bb.cc, !prof !166

bb.cc:                                            ; preds = %bb.cb
  %i.im = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.8, i32 noundef 611)
          to label %bb.cd unwind label %bb.cg     ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.in = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef nonnull @.str.199, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit479 unwind label %bb.cg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit479: ; preds = %bb.ce
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef %i.il)
          to label %_ZNSolsEPKv.exit481 unwind label %bb.cg ; 2 uses

_ZNSolsEPKv.exit481:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit479
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit483 unwind label %bb.cg ; 0 uses

end_hunk_0
begin_hunk_1_@_ZN11V3ExecGraph11PackThreads19selfTestNormalFirstEv:._crit_edge.i.i
  %i.abs = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.mp unwind label %bb.ms     ; 2 uses

bb.mp:                                            ; preds = %bb.mo
  %i.abt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abs, ptr noundef nonnull @.str.231, i64 noundef 72)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842 unwind label %bb.ms ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842: ; preds = %bb.mp
  %i.abu = zext i32 %i.abq to i64
  %i.abv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.abs, i64 noundef %i.abu)
          to label %_ZNSolsEj.exit844 unwind label %bb.ms ; 2 uses

_ZNSolsEj.exit844:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842
  %i.abw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abv, ptr noundef nonnull @.str.84, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846 unwind label %bb.ms ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846: ; preds = %_ZNSolsEj.exit844
  %i.abx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.abv, i64 noundef 1360)
          to label %_ZNSolsEj.exit848 unwind label %bb.ms

_ZNSolsEj.exit848:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.abx) #26
          to label %bb.mq unwind label %bb.ms

bb.mq:                                            ; preds = %_ZNSolsEj.exit848
  unreachable

bb.mr:                                            ; preds = %bb.ml
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.ms:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit846, %_ZNSolsEj.exit844, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit842, %bb.mp, %_ZNSolsEj.exit848, %bb.mo, %bb.mn
  %i.abz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.mt:                                            ; preds = %bb.mm
  %i.aca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit, %bb.mt
  %.sroa.0859.0.in = phi ptr [ %i.aca, %bb.mt ], [ %i.acb, %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit ]
  %.sroa.0859.0 = load ptr, ptr %.sroa.0859.0.in, align 8, !tbaa !172 ; 7 uses
  %.not917 = icmp eq ptr %.sroa.0859.0, null
  br i1 %.not917, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  invoke void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %bb.my unwind label %bb.nb

bb.mv:                                            ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %i.acb = getelementptr inbounds nuw i8, ptr %.sroa.0859.0, i64 8 ; 2 uses
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !164 ; 2 uses
  %.not.i = icmp eq ptr %i.acc, null
  %i.acd = select i1 %.not.i, ptr %.sroa.0859.0, ptr %i.acc
  call void @llvm.prefetch.p0(ptr nonnull %i.acd, i32 1, i32 3, i32 1)
  %i.ace = load ptr, ptr %.sroa.0859.0, align 8, !tbaa !46
  %i.acf = load ptr, ptr %i.ace, align 8
  %i.acg = invoke noundef zeroext i1 %i.acf(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0859.0, i64 noundef ptrtoint (ptr @_ZZN9ExecMTask13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc849 unwind label %bb.mx, !inline_history !173

.noexc849:                                        ; preds = %bb.mv
  br i1 %i.acg, label %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit, label %bb.mw, !prof !166

bb.mw:                                            ; preds = %.noexc849
  %i.ach = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.138, i32 noundef 249)
          to label %.noexc850 unwind label %bb.mx ; 0 uses

.noexc850:                                        ; preds = %bb.mw
  %i.aci = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc851 unwind label %bb.mx ; 2 uses

.noexc851:                                        ; preds = %.noexc850
  %i.acj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aci, ptr noundef nonnull @.str.139, i64 noundef 37)
          to label %.noexc852 unwind label %bb.mx ; 0 uses

.noexc852:                                        ; preds = %.noexc851
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0859.0, ptr noundef nonnull align 8 dereferenceable(112) %i.aci)
          to label %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit unwind label %bb.mx

_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit:      ; preds = %.noexc849, %.noexc852
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.0859.0, i64 88
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !113
  invoke void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.acl)
          to label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit unwind label %bb.mx

bb.mx:                                            ; preds = %.noexc852, %.noexc851, %.noexc850, %bb.mw, %bb.mv, %_ZN13V3GraphVertex2asI9ExecMTaskEEPT_v.exit
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.my:                                            ; preds = %bb.mu
  %i.acn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 16), align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.acn, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIPK9ExecMTaskN11V3ExecGraph14ThreadSchedule10MTaskStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.my, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aco, %.lr.ph.i.i.i ], [ %i.acn, %bb.my ] ; 2 uses
  %i.aco = load ptr, ptr %.06.i.i.i, align 8, !tbaa !150 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #28
  %.not.i.i.i854 = icmp eq ptr %i.aco, null
  br i1 %.not.i.i.i854, label %_ZNSt13unordered_mapIPK9ExecMTaskN11V3ExecGraph14ThreadSchedule10MTaskStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !151

_ZNSt13unordered_mapIPK9ExecMTaskN11V3ExecGraph14ThreadSchedule10MTaskStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.my
  %i.acp = load ptr, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, align 8, !tbaa !152
  %i.acq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 8), align 8, !tbaa !153
  %i.acr = shl i64 %i.acq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.acp, i8 0, i64 %i.acr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 16), i8 0, i64 16, i1 false)
  %i.acs = load ptr, ptr %10, align 8, !tbaa !577
  %i.act = load ptr, ptr %i.dn, align 8, !tbaa !574
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN11V3ExecGraph14ThreadScheduleEEEvT_S5_(ptr noundef %i.acs, ptr noundef %i.act)
          to label %_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.na

_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZNSt13unordered_mapIPK9ExecMTaskN11V3ExecGraph14ThreadSchedule10MTaskStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE5clearEv.exit
  %i.acu = load ptr, ptr %10, align 8, !tbaa !577 ; 3 uses
  %.not.i.i.i855 = icmp eq ptr %i.acu, null
  br i1 %.not.i.i.i855, label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit, label %bb.mz

bb.mz:                                            ; preds = %_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i
  %i.acv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !579
  %i.acx = ptrtoint ptr %i.acw to i64
  %i.acy = ptrtoint ptr %i.acu to i64
  %i.acz = sub i64 %i.acx, %i.acy
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef %i.acz) #28
  br label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit

bb.na:                                            ; preds = %_ZNSt13unordered_mapIPK9ExecMTaskN11V3ExecGraph14ThreadSchedule10MTaskStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE5clearEv.exit
  %i.ada = landingpad { ptr, i32 }
          catch ptr null
  %i.adb = extractvalue { ptr, i32 } %i.ada, 0
  call void @__clang_call_terminate(ptr %i.adb) #27
  unreachable

_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.nb:                                            ; preds = %bb.mu
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.nc:                                            ; preds = %bb.mx, %bb.mr, %bb.ms, %bb.mj, %bb.mk, %bb.mb, %bb.mc, %bb.lt, %bb.lu, %bb.ll, %bb.lm, %bb.ld, %bb.le, %bb.kv, %bb.kw, %bb.kn, %bb.ko, %bb.kf, %bb.kg, %bb.jx, %bb.jy, %bb.jp, %bb.jq, %bb.jh, %bb.ji, %bb.iz, %bb.ja, %bb.ir, %bb.is, %bb.ij, %bb.ik, %bb.ib, %bb.ic, %bb.ht, %bb.hu, %bb.hl, %bb.hm, %bb.hd, %bb.he, %bb.gv, %bb.gw, %bb.gn, %bb.go, %bb.gf, %bb.gg, %bb.fx, %bb.fy, %bb.fp, %bb.fq, %bb.fi, %bb.fa, %bb.es, %bb.ek, %bb.ec, %bb.du, %bb.dm, %bb.nb, %bb.de, %bb.cy, %bb.cs, %bb.cm, %bb.cg, %bb.ca, %bb.bu, %bb.bo, %bb.bi, %bb.bc, %bb.ax, %bb.at, %bb.an, %bb.ah
  %.pn350 = phi { ptr, i32 } [ %i.es, %bb.ah ], [ %i.fh, %bb.an ], [ %i.fv, %bb.at ], [ %i.gl, %bb.ax ], [ %i.gs, %bb.bc ], [ %i.hb, %bb.bi ], [ %i.hq, %bb.bo ], [ %i.hz, %bb.bu ], [ %i.ii, %bb.ca ], [ %i.is, %bb.cg ], [ %i.jh, %bb.cm ], [ %i.jq, %bb.cs ], [ %i.ka, %bb.cy ], [ %i.ki, %bb.de ], [ %i.adc, %bb.nb ], [ %i.acm, %bb.mx ], [ %i.zr, %bb.le ], [ %i.aad, %bb.lm ], [ %i.abz, %bb.ms ], [ %i.abn, %bb.mk ], [ %i.abb, %bb.mc ], [ %i.aap, %bb.lu ], [ %i.rm, %bb.fp ], [ %i.rx, %bb.fx ], [ %i.si, %bb.gf ], [ %i.st, %bb.gn ], [ %i.te, %bb.gv ], [ %i.tq, %bb.hd ], [ %i.uc, %bb.hl ], [ %i.uo, %bb.ht ], [ %i.va, %bb.ib ], [ %i.vm, %bb.ij ], [ %i.vy, %bb.ir ], [ %i.wk, %bb.iz ], [ %i.ww, %bb.jh ], [ %i.xi, %bb.jp ], [ %i.xu, %bb.jx ], [ %i.yg, %bb.kf ], [ %i.ys, %bb.kn ], [ %i.ze, %bb.kv ], [ %i.zq, %bb.ld ], [ %i.aac, %bb.ll ], [ %i.aao, %bb.lt ], [ %i.aba, %bb.mb ], [ %i.abm, %bb.mj ], [ %i.aby, %bb.mr ], [ %i.lj, %bb.dm ], [ %i.mi, %bb.du ], [ %i.nh, %bb.ec ], [ %i.og, %bb.ek ], [ %i.pf, %bb.es ], [ %i.qe, %bb.fa ], [ %i.rd, %bb.fi ], [ %i.rn, %bb.fq ], [ %i.ry, %bb.fy ], [ %i.sj, %bb.gg ], [ %i.su, %bb.go ], [ %i.tf, %bb.gw ], [ %i.tr, %bb.he ], [ %i.ud, %bb.hm ], [ %i.up, %bb.hu ], [ %i.vb, %bb.ic ], [ %i.vn, %bb.ik ], [ %i.vz, %bb.is ], [ %i.wl, %bb.ja ], [ %i.wx, %bb.ji ], [ %i.xj, %bb.jq ], [ %i.xv, %bb.jy ], [ %i.yh, %bb.kg ], [ %i.yt, %bb.ko ], [ %i.zf, %bb.kw ]
  %i.add = load ptr, ptr %10, align 8, !tbaa !577
  %i.ade = load ptr, ptr %i.dn, align 8, !tbaa !574
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN11V3ExecGraph14ThreadScheduleEEEvT_S5_(ptr noundef %i.add, ptr noundef %i.ade)
          to label %_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i856 unwind label %bb.ne

_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i856: ; preds = %bb.nc
  %i.adf = load ptr, ptr %10, align 8, !tbaa !577 ; 3 uses
  %.not.i.i.i857 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i.i857, label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit858, label %bb.nd

bb.nd:                                            ; preds = %_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i856
  %i.adg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !579
  %i.adi = ptrtoint ptr %i.adh to i64
  %i.adj = ptrtoint ptr %i.adf to i64
  %i.adk = sub i64 %i.adi, %i.adj
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef %i.adk) #28
  br label %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit858

bb.ne:                                            ; preds = %bb.nc
  %i.adl = landingpad { ptr, i32 }
          catch ptr null
  %i.adm = extractvalue { ptr, i32 } %i.adl, 0
  call void @__clang_call_terminate(ptr %i.adm) #27
  unreachable

_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit858: ; preds = %_ZSt8_DestroyIPN11V3ExecGraph14ThreadScheduleES1_EvT_S3_RSaIT0_E.exit.i856, %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.nf

bb.nf:                                            ; preds = %bb.v, %bb.x, %bb.z, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit858, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.u
  %.pn350.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ef, %bb.u ], [ %i.eg, %bb.v ], [ %i.eh, %bb.w ], [ %i.ei, %bb.x ], [ %i.ej, %bb.y ], [ %i.ek, %bb.z ], [ %.pn350, %_ZNSt6vectorIN11V3ExecGraph14ThreadScheduleESaIS1_EED2Ev.exit858 ], [ %i.er, %bb.ag ], [ %i.eq, %bb.af ], [ %i.ep, %bb.ae ], [ %i.eo, %bb.ad ], [ %i.en, %bb.ac ], [ %i.em, %bb.ab ], [ %i.el, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ng

bb.ng:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, %bb.nf
  %.pn350.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn350.pn.pn.pn.pn.pn.pn.pn, %bb.nf ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  resume { ptr, i32 } %.pn350.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN12AstExecGraphC1EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZZN11V3ExecGraph11PackThreads17selfTestHierFirstEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !917, !nonnull !161, !align !689
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !915
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !19
  store i8 0, ptr %i.e, align 8, !tbaa !21
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(192) %i.b, i16 412, ptr noundef %i.d)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV10AstComment, i64 16), ptr %i.b, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !12
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.j, ptr %i.a, align 8, !tbaa !20
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc5
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.d    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !16
  %i.m = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.m, ptr %i.h, align 8, !tbaa !21
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %.noexc5
  %i.n = phi ptr [ %i.l, %.noexc6 ], [ %i.h, %.noexc5 ] ; 2 uses
  switch i64 %i.j, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.i, align 1, !tbaa !21
  store i8 %i.o, ptr %i.n, align 1, !tbaa !21
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 0, ptr %i.t, align 8, !tbaa !919
  %i.u = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.e, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret ptr %i.b

bb.d:                                             ; preds = %.noexc.i.i, %._crit_edge.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #28
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11V3GraphEdgeC2EP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  tail call void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5)
  ret void
}

declare void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZZN11V3ExecGraph11PackThreads19selfTestNormalFirstEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !921, !nonnull !161, !align !689
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !915
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !19
  store i8 0, ptr %i.e, align 8, !tbaa !21
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(192) %i.b, i16 412, ptr noundef %i.d)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV10AstComment, i64 16), ptr %i.b, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !12
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.j, ptr %i.a, align 8, !tbaa !20
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc5
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.d    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !16
  %i.m = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.m, ptr %i.h, align 8, !tbaa !21
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %.noexc5
  %i.n = phi ptr [ %i.l, %.noexc6 ], [ %i.h, %.noexc5 ] ; 2 uses
  switch i64 %i.j, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.i, align 1, !tbaa !21
  store i8 %i.o, ptr %i.n, align 1, !tbaa !21
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.p, ptr %i.q, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 0, ptr %i.t, align 8, !tbaa !919
  %i.u = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.e, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret ptr %i.b

bb.d:                                             ; preds = %.noexc.i.i, %._crit_edge.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.d
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !21
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #28
  resume { ptr, i32 } %i.y
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !755
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !923
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !755
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !170
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !180  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !150
  store ptr %i.w, ptr %3, align 8, !tbaa !150
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !180
  store ptr %3, ptr %i.x, align 8, !tbaa !150
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !186
  store ptr %i.z, ptr %3, align 8, !tbaa !150
  store ptr %3, ptr %i.y, align 8, !tbaa !186
  %i.aa = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !170
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !180
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !180
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !923
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !923
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !924
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !157

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !186
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !150 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !117
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !186
  store ptr %i.p, ptr %.02530, align 8, !tbaa !150
  store ptr %.02530, ptr %i.g, align 8, !tbaa !186
  store ptr %i.g, ptr %i.n, align 8, !tbaa !180
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !150
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !180
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !150
  store ptr %i.s, ptr %.02530, align 8, !tbaa !150
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !180
  store ptr %.02530, ptr %i.t, align 8, !tbaa !150
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !925

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !170
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #28
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !170
  store ptr %.0.i, ptr %0, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i64 0, 4294967296) i64 @"_ZNSt17_Function_handlerIFmPK13V3GraphVertexEZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !172   ; 4 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !46
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(80) %.val, i64 noundef ptrtoint (ptr @_ZZN9ExecMTask13v3RttiClassIdEvE15s_vlrttiClassId to i64)), !inline_history !926
  br i1 %i.c, label %"_ZSt10__invoke_rImRZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0JPK13V3GraphVertexEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.b, !prof !166

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.138, i32 noundef 254) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.139, i64 noundef 37) ; 0 uses
  tail call void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.val, ptr noundef nonnull align 8 dereferenceable(112) %i.e)
  br label %"_ZSt10__invoke_rImRZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0JPK13V3GraphVertexEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

"_ZSt10__invoke_rImRZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0JPK13V3GraphVertexEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 132
  %i.h = load i32, ptr %i.g, align 4, !tbaa !116
  %i.i = zext i32 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFmPK13V3GraphVertexEZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !337
  br label %"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN11V3ExecGraph13finalizeCostsEP7V3GraphE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode5nextpEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562
  ret ptr %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op4pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !560
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZeqRK6VNTypeNS_2enE(ptr noundef nonnull align 2 dereferenceable(2) %0, i16 noundef zeroext %1) #4 comdat {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !582
  %i.b = icmp eq i16 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i16 @_ZNK7AstNode4typeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload = load i16, ptr %i.a, align 8, !tbaa !557
  ret i16 %.sroa.0.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI12AstExecGraphS_EEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !557
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 425
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI11AstNodeStmtS_EEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !557
  %i.b = add i16 %.sroa.0.0.copyload.i.i, -405
  %spec.select.i = icmp ult i16 %i.b, 79
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNK6VNTypecvNS_2enEEv(ptr noundef nonnull align 2 dereferenceable(2) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !582
  ret i16 %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2IPKS3_EET_SK_mRKSA_RKS8_RKS4_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !170
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2EmRKSA_RKS8_RKS4_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !157

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !924
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !157

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29
          to label %.noexc10.i unwind label %bb.g ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.d ], [ %i.m, %.noexc10.i ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !168
  store i64 %i.f, ptr %i.b, align 8, !tbaa !170
  br label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2EmRKSA_RKS8_RKS4_.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #25
  br label %common.resume

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2EmRKSA_RKS8_RKS4_.exit: ; preds = %bb.b, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %0, ptr %7, align 8, !tbaa !927
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2EmRKSA_RKS8_RKS4_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2EmRKSA_RKS8_RKS4_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEES0_INS5_14_Node_iteratorIS3_Lb0ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !929

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEEC2EmRKSA_RKS8_RKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #25
  br label %common.resume
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEES0_INS5_14_Node_iteratorIS3_Lb0ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !923
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !117    ; 6 uses
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !168
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !150 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_find_node_trIjEEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !930

bb.e:                                             ; preds = %bb.c
  %i.p = zext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !170
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !150  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !117
  %i.w = icmp eq i32 %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_find_node_trIjEEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_find_node_trIjEEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !931

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !150 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !931

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !931

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = phi i32 [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !150
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.af, ptr %i.ai, align 8, !tbaa !182
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.ak = invoke ptr @_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.ah, i64 noundef 1)
          to label %_ZNKSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_find_node_trIjEEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 32) #28
  resume { ptr, i32 } %i.al

_ZNKSt10_HashtableIjSt4pairIKjS0_ImmEESaIS3_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE15_M_find_node_trIjEEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ak, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6V3Rtti8internal12matchClassIdI9ExecMTaskEEbm(i64 noundef %0) #2 comdat {
bb.a:
  %i.a = icmp eq i64 %0, ptrtoint (ptr @_ZZN9ExecMTask13v3RttiClassIdEvE15s_vlrttiClassId to i64)
  %i.b = icmp eq i64 %0, ptrtoint (ptr @_ZZN13V3GraphVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64)
  %spec.select = or i1 %i.a, %i.b
  ret i1 %spec.select
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6V3Rtti8internal12matchClassIdI13V3GraphVertexEEbm(i64 noundef %0) #2 comdat {
bb.a:
  %i.a = icmp eq i64 %0, ptrtoint (ptr @_ZZN13V3GraphVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN13V3GraphVertex13v3RttiClassIdEv() #4 comdat align 2 {
bb.a:
  ret i64 ptrtoint (ptr @_ZZN13V3GraphVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64)
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6V3Rtti8internal12matchClassIdIvEEbm(i64 noundef %0) #8 comdat {
bb.a:
  ret i1 false
}

declare void @_ZN13V3GraphVertexC1EP7V3GraphRKS_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_V3ExecGraph.cpp() #22 section ".text.startup" {
bb.a:
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 32), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 48), ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, align 8, !tbaa !152
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 8), align 8, !tbaa !153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 32), align 8, !tbaa !171
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, i64 40), i8 0, i64 16, i1 false)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapIPK9ExecMTaskN11V3ExecGraph14ThreadSchedule10MTaskStateESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev, ptr nonnull @_ZN11V3ExecGraph14ThreadSchedule12s_mtaskStateE, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNK12AstExecGraph4nameB5cxx11Ev: argument 0"}
!11 = distinct !{!11, !"_ZNK12AstExecGraph4nameB5cxx11Ev"}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !14, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !18, i64 8, !7, i64 16}
!18 = !{!"long", !7, i64 0}
!19 = !{!17, !18, i64 8}
!20 = !{!18, !18, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!24 = distinct !{!24, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!27 = distinct !{!27, !"_ZNSt7__cxx119to_stringEj"}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!33 = distinct !{!33, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!34 = !{!35, !44, i64 88}
!35 = !{!"_ZTS7AstNode", !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 64, !41, i64 66, !7, i64 67, !6, i64 68, !43, i64 72, !36, i64 80, !44, i64 88, !36, i64 96, !45, i64 104, !6, i64 112, !6, i64 116, !45, i64 120, !45, i64 128, !6, i64 136, !6, i64 140, !45, i64 144}
!36 = !{!"p1 _ZTS7AstNode", !15, i64 0}
!37 = !{!"p2 _ZTS7AstNode", !38, i64 0}
!38 = !{!"any p2 pointer", !15, i64 0}
!39 = !{!"_ZTS6VNType", !40, i64 0}
!40 = !{!"_ZTSN6VNType2enE", !7, i64 0}
!41 = !{!"_ZTSN7AstNodeUt_E", !42, i64 0, !42, i64 0, !42, i64 0, !7, i64 0}
!42 = !{!"bool", !7, i64 0}
!43 = !{!"p1 _ZTS12AstNodeDType", !15, i64 0}
!44 = !{!"p1 _ZTS8FileLine", !15, i64 0}
!45 = !{!"_ZTS6VNUser", !7, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !8, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"_ZTSN14VBoolOrUnknown2enE", !7, i64 0}
!50 = !{!51, !53, i64 320}
!51 = !{!"_ZTS8AstCFunc", !35, i64 0, !17, i64 152, !17, i64 184, !17, i64 216, !17, i64 248, !17, i64 280, !52, i64 312, !42, i64 313, !42, i64 313, !42, i64 313, !42, i64 313, !42, i64 313, !42, i64 313, !42, i64 313, !42, i64 313, !42, i64 314, !42, i64 314, !42, i64 314, !42, i64 314, !42, i64 314, !42, i64 314, !42, i64 314, !42, i64 314, !42, i64 315, !42, i64 315, !42, i64 315, !42, i64 315, !42, i64 315, !42, i64 315, !42, i64 315, !6, i64 316, !53, i64 320}
!52 = !{!"_ZTS14VBoolOrUnknown", !49, i64 0}
!53 = !{!"p1 _ZTS8AstScope", !15, i64 0}
!54 = !{!55, !6, i64 912}
!55 = !{!"_ZTS9V3Options", !56, i64 0, !57, i64 8, !66, i64 56, !66, i64 80, !66, i64 104, !57, i64 128, !57, i64 176, !57, i64 224, !57, i64 272, !71, i64 320, !76, i64 368, !71, i64 392, !57, i64 440, !66, i64 488, !81, i64 512, !81, i64 560, !86, i64 608, !89, i64 656, !57, i64 704, !42, i64 752, !42, i64 753, !42, i64 754, !42, i64 755, !42, i64 756, !42, i64 757, !42, i64 758, !42, i64 759, !42, i64 760, !42, i64 761, !42, i64 762, !42, i64 763, !42, i64 764, !42, i64 765, !42, i64 766, !42, i64 767, !42, i64 768, !42, i64 769, !42, i64 770, !42, i64 771, !42, i64 772, !42, i64 773, !42, i64 774, !42, i64 775, !42, i64 776, !42, i64 777, !42, i64 778, !42, i64 779, !42, i64 780, !42, i64 781, !42, i64 782, !42, i64 783, !6, i64 784, !42, i64 788, !42, i64 789, !42, i64 790, !42, i64 791, !42, i64 792, !42, i64 793, !42, i64 794, !42, i64 795, !42, i64 796, !42, i64 797, !42, i64 798, !42, i64 799, !42, i64 800, !42, i64 801, !42, i64 802, !42, i64 803, !42, i64 804, !42, i64 805, !42, i64 806, !42, i64 807, !42, i64 808, !42, i64 809, !42, i64 810, !42, i64 811, !42, i64 812, !42, i64 813, !42, i64 814, !42, i64 815, !42, i64 816, !42, i64 817, !42, i64 818, !42, i64 819, !42, i64 820, !42, i64 821, !42, i64 822, !42, i64 823, !42, i64 824, !42, i64 825, !42, i64 826, !42, i64 827, !92, i64 828, !42, i64 829, !42, i64 830, !42, i64 831, !42, i64 832, !42, i64 833, !42, i64 834, !42, i64 835, !42, i64 836, !42, i64 837, !92, i64 838, !42, i64 839, !42, i64 840, !42, i64 841, !42, i64 842, !42, i64 843, !42, i64 844, !42, i64 845, !42, i64 846, !42, i64 847, !42, i64 848, !42, i64 849, !42, i64 850, !42, i64 851, !42, i64 852, !6, i64 856, !6, i64 860, !6, i64 864, !6, i64 868, !6, i64 872, !6, i64 876, !6, i64 880, !6, i64 884, !6, i64 888, !6, i64 892, !6, i64 896, !6, i64 900, !6, i64 904, !6, i64 908, !6, i64 912, !42, i64 916, !42, i64 917, !6, i64 920, !92, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !6, i64 940, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !6, i64 964, !6, i64 968, !6, i64 972, !92, i64 976, !42, i64 977, !6, i64 980, !6, i64 984, !94, i64 988, !94, i64 989, !94, i64 990, !94, i64 991, !6, i64 992, !6, i64 996, !6, i64 1000, !6, i64 1004, !6, i64 1008, !6, i64 1012, !6, i64 1016, !6, i64 1020, !6, i64 1024, !6, i64 1028, !6, i64 1032, !17, i64 1040, !17, i64 1072, !17, i64 1104, !76, i64 1136, !17, i64 1160, !17, i64 1192, !17, i64 1224, !17, i64 1256, !17, i64 1288, !17, i64 1320, !17, i64 1352, !17, i64 1384, !17, i64 1416, !17, i64 1448, !17, i64 1480, !17, i64 1512, !17, i64 1544, !17, i64 1576, !17, i64 1608, !17, i64 1640, !96, i64 1672, !42, i64 1673, !42, i64 1674, !42, i64 1675, !42, i64 1676, !42, i64 1677, !42, i64 1678, !42, i64 1679, !42, i64 1680, !42, i64 1681, !42, i64 1682, !42, i64 1683, !42, i64 1684, !42, i64 1685, !42, i64 1686, !42, i64 1687, !42, i64 1688, !42, i64 1689, !42, i64 1690, !42, i64 1691, !42, i64 1692, !42, i64 1693, !42, i64 1694, !42, i64 1695, !92, i64 1696, !42, i64 1697, !42, i64 1698, !42, i64 1699, !42, i64 1700, !42, i64 1701, !42, i64 1702, !42, i64 1703, !42, i64 1704, !42, i64 1705, !42, i64 1706, !42, i64 1707, !42, i64 1708, !42, i64 1709, !42, i64 1710, !6, i64 1712, !42, i64 1716, !42, i64 1717, !42, i64 1718, !42, i64 1719, !42, i64 1720, !42, i64 1721, !42, i64 1722}
!56 = !{!"p1 _ZTS12V3OptionsImp", !15, i64 0}
!57 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !58, i64 0}
!58 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !59, i64 0}
!59 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !60, i64 0, !62, i64 8}
!60 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !61, i64 0}
!61 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!62 = !{!"_ZTSSt15_Rb_tree_header", !63, i64 0, !18, i64 32}
!63 = !{!"_ZTSSt18_Rb_tree_node_base", !64, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!64 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!65 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!66 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !67, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
end_hunk_1
begin_hunk_2_@llvm.smax.i32
!717 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !718, i64 24, !719, i64 28, !719, i64 32, !720, i64 40, !721, i64 48, !7, i64 64, !6, i64 192, !722, i64 200, !133, i64 208}
!718 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!719 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!720 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!721 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !18, i64 8}
!722 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!725 = distinct !{!725, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!728 = distinct !{!728, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!729 = !{!727, !724}
!730 = !{!731}
!731 = distinct !{!731, !732, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!732 = distinct !{!732, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!733 = !{!734}
!734 = distinct !{!734, !735, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!735 = distinct !{!735, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!736 = !{!734, !731}
!737 = !{!738}
!738 = distinct !{!738, !739, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!739 = distinct !{!739, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!740 = !{!741}
!741 = distinct !{!741, !742, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!742 = distinct !{!742, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!743 = !{!741, !738}
!744 = !{!745}
!745 = distinct !{!745, !746, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!746 = distinct !{!746, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!749 = distinct !{!749, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!750 = !{!748, !745}
!751 = distinct !{!751, !29}
!752 = !{i64 0, i64 4, !753, i64 8, i64 8, !20}
!753 = !{!149, !149, i64 0}
!754 = !{!308, !147, i64 48}
!755 = !{!148, !18, i64 8}
!756 = distinct !{!756, !29, !663, !664}
!757 = distinct !{!757, !29, !664, !663}
!758 = distinct !{!758, !29, !663, !664}
!759 = distinct !{!759, !29, !664, !663}
!760 = !{!"branch_weights", !"expected", i32 2144864917, i32 2618731}
!761 = distinct !{!761, !29}
!762 = !{!"branch_weights", !"expected", i32 2144736243, i32 2747405}
!763 = !{ptr @_ZN11V3ExecGraph11PackThreads7isReadyERNS_14ThreadScheduleEPK9ExecMTask}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!766 = distinct !{!766, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!769 = distinct !{!769, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!770 = !{!768, !765}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!773 = distinct !{!773, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!776 = distinct !{!776, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!777 = !{!775, !772}
!778 = !{!779}
!779 = distinct !{!779, !780, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!780 = distinct !{!780, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!783 = distinct !{!783, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!784 = !{!782, !779}
!785 = distinct !{null, null, null}
!786 = !{!306, !6, i64 4}
!787 = !{!306, !6, i64 0}
!788 = !{!306, !301, i64 8}
!789 = !{!305, !301, i64 0}
!790 = !{!694, !355, i64 8}
!791 = !{!792}
!792 = distinct !{!792, !793, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!793 = distinct !{!793, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZSt19__relocate_object_aIN11V3ExecGraph14ThreadScheduleES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!796 = distinct !{!796, !"_ZSt19__relocate_object_aIN11V3ExecGraph14ThreadScheduleES1_SaIS1_EEvPT_PT0_RT1_"}
!797 = !{!798}
!798 = distinct !{!798, !796, !"_ZSt19__relocate_object_aIN11V3ExecGraph14ThreadScheduleES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!799 = !{!795, !798}
!800 = distinct !{!800, !29}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_ZSt19__relocate_object_aIN11V3ExecGraph14ThreadScheduleES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!803 = distinct !{!803, !"_ZSt19__relocate_object_aIN11V3ExecGraph14ThreadScheduleES1_SaIS1_EEvPT_PT0_RT1_"}
!804 = !{!805}
!805 = distinct !{!805, !803, !"_ZSt19__relocate_object_aIN11V3ExecGraph14ThreadScheduleES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!806 = !{!802, !805}
!807 = distinct !{!807, !29}
!808 = distinct !{!808, !29}
!809 = distinct !{!809, !29}
!810 = !{!144, !147, i64 48}
!811 = distinct !{!811, !29}
!812 = distinct !{!812, !29}
!813 = distinct !{!813, !29}
!814 = distinct !{!814, !29}
!815 = distinct !{!815, !29}
!816 = !{!817, !817, i64 0}
!817 = !{!"p1 _ZTSSt14basic_ofstreamIcSt11char_traitsIcEE", !15, i64 0}
!818 = !{!717, !719, i64 32}
!819 = !{!820}
!820 = distinct !{!820, !821, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!821 = distinct !{!821, !"_ZNSt7__cxx119to_stringEj"}
!822 = !{!823}
!823 = distinct !{!823, !824, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!824 = distinct !{!824, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!825 = !{!826}
!826 = distinct !{!826, !827, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!827 = distinct !{!827, !"_ZNSt7__cxx119to_stringEj"}
!828 = !{!829}
!829 = distinct !{!829, !830, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!830 = distinct !{!830, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!831 = distinct !{!831, !29}
!832 = !{!833, !834, i64 0}
!833 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !834, i64 0, !834, i64 8, !834, i64 16}
!834 = !{!"p1 double", !15, i64 0}
!835 = !{!833, !834, i64 16}
!836 = !{!111, !111, i64 0}
!837 = !{!833, !834, i64 8}
!838 = distinct !{!838, !29}
!839 = distinct !{!839, !29}
!840 = distinct !{!840, !29}
!841 = !{!834, !834, i64 0}
!842 = distinct !{!842, !29, !663, !664}
!843 = distinct !{!843, !29, !664, !663}
!844 = distinct !{!844, !29}
!845 = distinct !{null}
!846 = distinct !{null, null}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!849 = distinct !{!849, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!850 = !{!851}
!851 = distinct !{!851, !852, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!852 = distinct !{!852, !"_ZNSt7__cxx119to_stringEi"}
!853 = !{!854}
!854 = distinct !{!854, !855, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!855 = distinct !{!855, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!856 = !{!857}
!857 = distinct !{!857, !858, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!858 = distinct !{!858, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!861 = distinct !{!861, !"_ZNSt7__cxx119to_stringEj"}
!862 = !{!863}
!863 = distinct !{!863, !864, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!864 = distinct !{!864, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!865 = !{!866}
!866 = distinct !{!866, !867, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!867 = distinct !{!867, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!868 = !{!869}
!869 = distinct !{!869, !870, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!870 = distinct !{!870, !"_ZNSt7__cxx119to_stringEj"}
!871 = !{!872}
!872 = distinct !{!872, !873, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!873 = distinct !{!873, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!874 = !{!875}
!875 = distinct !{!875, !876, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_: argument 0"}
!876 = distinct !{!876, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_"}
!877 = !{!878}
!878 = distinct !{!878, !879, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!879 = distinct !{!879, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!882 = distinct !{!882, !"_ZNSt7__cxx119to_stringEj"}
!883 = !{!884}
!884 = distinct !{!884, !885, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!885 = distinct !{!885, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!886 = !{!887}
!887 = distinct !{!887, !888, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!888 = distinct !{!888, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!891 = distinct !{!891, !"_ZNSt7__cxx119to_stringEj"}
!892 = !{!893}
!893 = distinct !{!893, !894, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!894 = distinct !{!894, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!895 = distinct !{!895, !29}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!898 = distinct !{!898, !"_ZNSt7__cxx119to_stringEi"}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!901 = distinct !{!901, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!902 = distinct !{!902, !29}
!903 = distinct !{!903, !29}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_ZSt19__relocate_object_aISt6vectorIPK9ExecMTaskSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!906 = distinct !{!906, !"_ZSt19__relocate_object_aISt6vectorIPK9ExecMTaskSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!907 = !{!908}
!908 = distinct !{!908, !906, !"_ZSt19__relocate_object_aISt6vectorIPK9ExecMTaskSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!909 = distinct !{!909, !29}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_ZSt19__relocate_object_aISt6vectorIPK9ExecMTaskSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!912 = distinct !{!912, !"_ZSt19__relocate_object_aISt6vectorIPK9ExecMTaskSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!913 = !{!914}
!914 = distinct !{!914, !912, !"_ZSt19__relocate_object_aISt6vectorIPK9ExecMTaskSaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!915 = !{!44, !44, i64 0}
!916 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!917 = !{!918, !595, i64 0}
!918 = !{!"_ZTSZN11V3ExecGraph11PackThreads17selfTestHierFirstEvEUlvE_", !595, i64 0}
!919 = !{!920, !42, i64 184}
!920 = !{!"_ZTS10AstComment", !101, i64 0, !17, i64 152, !42, i64 184}
!921 = !{!922, !595, i64 0}
!922 = !{!"_ZTSZN11V3ExecGraph11PackThreads19selfTestNormalFirstEvEUlvE_", !595, i64 0}
!923 = !{!169, !18, i64 24}
!924 = !{!169, !147, i64 48}
!925 = distinct !{!925, !29}
!926 = distinct !{null, null, null, null, null, null}
!927 = !{!928, !928, i64 0}
!928 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjS2_ImmEELb0EEEEEE", !15, i64 0}
!929 = distinct !{!929, !29}
!930 = distinct !{!930, !29}
!931 = distinct !{!931, !29}
end_hunk_2
