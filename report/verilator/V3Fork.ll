Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Fork?download=true
inline.NumInlined: 2680
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17ForkDynScopeFrame9linkNodesER10VMemberMap:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  %i.bk = getelementptr inbounds nuw i8, ptr %i.al, i64 248 ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  store i64 0, ptr %i.bl, align 8, !tbaa !16
  store i8 0, ptr %i.bk, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 264
  store i8 0, ptr %i.bm, align 8, !tbaa !240
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 265
  store i8 0, ptr %i.bn, align 1, !tbaa !244
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  store i64 0, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ap
  br i1 %i.bq, label %._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.br = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #24
  br label %._crit_edge.i.i

bb.n:                                             ; preds = %.noexc.i.i223, %.critedge
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ap
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.n
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 288) #24
  br label %bb.bz

._crit_edge.i.i:                                  ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV6AstNew, i64 16), ptr %i.al, align 8, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 280
  store i8 0, ptr %i.by, align 8, !tbaa !245
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 281
  store i8 0, ptr %i.bz, align 1, !tbaa !247
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cb, ptr %4, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.cb, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, i64 3, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 3, ptr %i.cc, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.cd, align 1, !tbaa !17
  %i.ce = invoke noundef ptr @_ZN10VMemberMap10findMemberEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.v       ; 4 uses

bb.o:                                             ; preds = %._crit_edge.i.i
  %.not.i146 = icmp eq ptr %i.ce, null
  br i1 %.not.i146, label %_ZN7AstNode2asI12AstNodeFTaskS_EEPT_PT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i147 = load i16, ptr %i.cf, align 8, !tbaa !155
  %i.cg = add i16 %.sroa.0.0.copyload.i.i.i147, -376
  %spec.select.i.i = icmp ult i16 %i.cg, -5
  br i1 %spec.select.i.i, label %bb.q, label %_ZN7AstNode2asI12AstNodeFTaskS_EEPT_PT0_.exit, !prof !9

bb.q:                                             ; preds = %bb.p
  %i.ch = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063)
          to label %.noexc148 unwind label %bb.v  ; 0 uses

.noexc148:                                        ; preds = %bb.q
  %i.ci = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc149 unwind label %bb.v  ; 2 uses

.noexc149:                                        ; preds = %.noexc148
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.33, i64 noundef 55)
          to label %.noexc150 unwind label %bb.v  ; 0 uses

.noexc150:                                        ; preds = %.noexc149
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.cf, align 8, !tbaa !155
  %i.ck = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !248
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cm)
          to label %.noexc151 unwind label %bb.v  ; 2 uses

.noexc151:                                        ; preds = %.noexc150
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc152 unwind label %bb.v  ; 0 uses

.noexc152:                                        ; preds = %.noexc151
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ce, ptr noundef nonnull align 8 dereferenceable(112) %i.cn) #26
          to label %.noexc153 unwind label %bb.v

.noexc153:                                        ; preds = %.noexc152
  unreachable

_ZN7AstNode2asI12AstNodeFTaskS_EEPT_PT0_.exit:    ; preds = %bb.p, %bb.o
  store ptr %i.ce, ptr %i.as, align 8, !tbaa !249
  %i.cp = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cb
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7AstNode2asI12AstNodeFTaskS_EEPT_PT0_.exit
  %i.cr = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7AstNode2asI12AstNodeFTaskS_EEPT_PT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !250 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !236
  %.not.i154 = icmp eq ptr %i.cw, %i.cu
  br i1 %.not.i154, label %_ZN7AstNode6dtypepEP12AstNodeDType.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !236
  %i.cx = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  br label %_ZN7AstNode6dtypepEP12AstNodeDType.exit

_ZN7AstNode6dtypepEP12AstNodeDType.exit:          ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !251
  %i.db = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27 ; 11 uses
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 88
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !229
  %i.df = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.s unwind label %bb.w       ; 4 uses

bb.s:                                             ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !218
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !229
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i8 1, ptr %5, align 1, !tbaa !252
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.df, ptr noundef %i.di, ptr noundef %i.dj, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.db, i16 466, ptr noundef %i.de)
          to label %.noexc155 unwind label %.thread

.noexc155:                                        ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.db, align 8, !tbaa !67
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.db, ptr noundef nonnull %i.al)
          to label %.noexc156 unwind label %.thread

.noexc156:                                        ; preds = %.noexc155
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.db, ptr noundef nonnull %i.df)
          to label %.noexc157 unwind label %.thread

.noexc157:                                        ; preds = %.noexc156
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !236 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 72 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !236
  %.not.i.i8.i.i = icmp eq ptr %i.dn, %i.dl
  br i1 %.not.i.i8.i.i, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, label %bb.u

bb.u:                                             ; preds = %.noexc157
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !236
  %i.do = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit: ; preds = %.noexc157, %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.db, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !219, !noalias !253 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !219, !noalias !256 ; 2 uses
  %.not282395 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not282395, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !226, !noalias !253
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !227, !noalias !253
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.z

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit
  %.not111 = icmp eq ptr %.2100, null
  br i1 %.not111, label %._crit_edge.thread, label %bb.bu

bb.v:                                             ; preds = %.noexc149, %.noexc151, %.noexc152, %.noexc150, %.noexc148, %bb.q, %._crit_edge.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cb
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.v
  %i.ef = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bz

bb.w:                                             ; preds = %_ZN7AstNode6dtypepEP12AstNodeDType.exit
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.thread:                                          ; preds = %.noexc156, %bb.t, %.noexc155
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 232) #24
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.w, %bb.x
  %.pn109 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.x ], [ %lpad.thr_comm, %.thread ], [ %i.eh, %bb.w ]
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 152) #24
  br label %bb.bz

bb.z:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit
  %.072400 = phi ptr [ %i.z, %.lr.ph ], [ %.2, %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit ] ; 4 uses
  %.098399 = phi ptr [ null, %.lr.ph ], [ %.2100, %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit ] ; 3 uses
  %.sroa.14.0398 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit ] ; 2 uses
  %.sroa.11.0397 = phi ptr [ %i.dx, %.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit ] ; 2 uses
  %.sroa.0241.0396 = phi ptr [ %i.dr, %.lr.ph ], [ %.sroa.0241.1, %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit ] ; 2 uses
  %i.ei = load ptr, ptr %.sroa.0241.0396, align 8, !tbaa !167 ; 10 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 249 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.ej, align 1, !tbaa !230
  switch i8 %.sroa.0.0.copyload.i, label %_ZNK10VDirection11isNonOutputEv.exit [
    i8 0, label %bb.bs
    i8 1, label %bb.aa
    i8 3, label %bb.aa
    i8 4, label %bb.aa
    i8 5, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.ek = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 88 ; 4 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !229
  %i.en = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ab unwind label %bb.an     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !229
  %i.ep = load ptr, ptr %i.k, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i8 1, ptr %6, align 1, !tbaa !252
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.en, ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ac unwind label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  store ptr %i.dy, ptr %7, align 8, !tbaa !18, !alias.scope !259
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10, !noalias !259 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !16, !noalias !259 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23, !noalias !259
  store i64 %i.eu, ptr %i.c, align 8, !tbaa !215, !noalias !259
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ac
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc162 unwind label %bb.ao ; 2 uses

.noexc162:                                        ; preds = %.noexc.i.i
  store ptr %i.ew, ptr %7, align 8, !tbaa !10, !alias.scope !259
  %i.ex = load i64, ptr %i.c, align 8, !tbaa !215, !noalias !259
  store i64 %i.ex, ptr %i.dy, align 8, !tbaa !17, !alias.scope !259
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc162, %bb.ac
  %i.ey = phi ptr [ %i.ew, %.noexc162 ], [ %i.dy, %bb.ac ] ; 2 uses
  switch i64 %i.eu, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.ez = load i8, ptr %i.es, align 1, !tbaa !17
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !17
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.es, i64 %i.eu, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i
  %i.fa = load i64, ptr %i.c, align 8, !tbaa !215, !noalias !259 ; 2 uses
  store i64 %i.fa, ptr %i.dz, align 8, !tbaa !16, !alias.scope !259
  %i.fb = load ptr, ptr %7, align 8, !tbaa !10, !alias.scope !259
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa
  store i8 0, ptr %i.fc, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23, !noalias !259
  %i.fd = invoke noundef ptr @_ZN10VMemberMap10findMemberEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ag unwind label %.loopexit ; 5 uses

bb.ag:                                            ; preds = %bb.af
  %.not.i163 = icmp eq ptr %i.fd, null
  br i1 %.not.i163, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %.sroa.0.0.copyload.i.i.i164 = load i16, ptr %i.fe, align 8, !tbaa !155
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i164, 68
  br i1 %.not6.i, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit, label %bb.ai, !prof !237

bb.ai:                                            ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063)
          to label %.noexc166 unwind label %.loopexit.split-lp ; 0 uses

.noexc166:                                        ; preds = %bb.ai
  %i.fh = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc167 unwind label %.loopexit.split-lp ; 2 uses

.noexc167:                                        ; preds = %.noexc166
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull @.str.33, i64 noundef 55)
          to label %.noexc168 unwind label %.loopexit.split-lp ; 0 uses

.noexc168:                                        ; preds = %.noexc167
  %.sroa.0.0.copyload.i.i5.i165 = load i16, ptr %i.ff, align 8, !tbaa !155
  %i.fj = zext i16 %.sroa.0.0.copyload.i.i5.i165 to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !248
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %i.fl)
          to label %.noexc169 unwind label %.loopexit.split-lp ; 2 uses

.noexc169:                                        ; preds = %.noexc168
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc170 unwind label %.loopexit.split-lp ; 0 uses

.noexc170:                                        ; preds = %.noexc169
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.fd, ptr noundef nonnull align 8 dereferenceable(112) %i.fm) #26
          to label %.noexc171 unwind label %.loopexit.split-lp

.noexc171:                                        ; preds = %.noexc170
  unreachable

_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit:           ; preds = %bb.ah, %bb.ag
  invoke void @_ZN12AstMemberSelC1EP8FileLineP11AstNodeExprP6AstVar(ptr noundef nonnull align 8 dereferenceable(200) %i.ek, ptr noundef %i.em, ptr noundef nonnull %i.en, ptr noundef %i.fd)
          to label %bb.aj unwind label %.loopexit

bb.aj:                                            ; preds = %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit
  %i.fo = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dy
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.aj
  %i.fq = load i64, ptr %i.dy, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.fs = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27 ; 8 uses
  %i.ft = load ptr, ptr %i.el, align 8, !tbaa !229
  %i.fu = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ak unwind label %bb.as     ; 3 uses

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.fv = load ptr, ptr %i.el, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i8 0, ptr %8, align 1, !tbaa !252
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.fu, ptr noundef %i.fv, ptr noundef nonnull %i.ei, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.fs, i16 466, ptr noundef %i.ft)
          to label %.noexc179 unwind label %.thread266

.noexc179:                                        ; preds = %bb.al
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.fs, align 8, !tbaa !67
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.fs, ptr noundef nonnull %i.fu)
          to label %.noexc180 unwind label %.thread266

.noexc180:                                        ; preds = %.noexc179
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.fs, ptr noundef nonnull %i.ek)
          to label %.noexc181 unwind label %.thread266

.noexc181:                                        ; preds = %.noexc180
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !236 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 72 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !236
  %.not.i.i8.i.i175 = icmp eq ptr %i.fz, %i.fx
  br i1 %.not.i.i8.i.i175, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit182, label %bb.am

bb.am:                                            ; preds = %.noexc181
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !236
  %i.ga = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  %i.gb = add i64 %i.ga, 1
  store i64 %i.gb, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit182

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit182: ; preds = %.noexc181, %bb.am
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.fs, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.gc = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef %.098399, ptr noundef nonnull %i.fs)
  br label %_ZNK10VDirection11isNonOutputEv.exit

bb.an:                                            ; preds = %bb.aa
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %.noexc.i.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i184

.loopexit:                                        ; preds = %bb.af, %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.ai, %.noexc166, %.noexc168, %.noexc170, %.noexc169, %.noexc167
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.gf = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.dy
  br i1 %i.gg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.ap
  %i.gh = load i64, ptr %i.dy, align 8, !tbaa !17
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i184: ; preds = %bb.ap, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  %.pn113 = phi { ptr, i32 } [ %i.ge, %bb.ao ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %lpad.phi, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ab
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 232) #24
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i184, %bb.an, %bb.aq
  %.pn113.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.aq ], [ %.pn113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i184 ], [ %i.gd, %bb.an ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 200) #24
  br label %bb.bz

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.thread266:                                       ; preds = %.noexc180, %bb.al, %.noexc179
  %lpad.thr_comm264 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.au

bb.at:                                            ; preds = %bb.ak
  %lpad.thr_comm.split-lp265 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef 232) #24
  br label %bb.au

bb.au:                                            ; preds = %.thread266, %bb.as, %bb.at
  %.pn117 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp265, %bb.at ], [ %lpad.thr_comm264, %.thread266 ], [ %i.gk, %bb.as ]
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 152) #24
  br label %bb.bz

_ZNK10VDirection11isNonOutputEv.exit:             ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit182, %bb.z
  %.1 = phi ptr [ %i.gc, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit182 ], [ %.098399, %bb.z ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !236
  %i.gn = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.gm, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 3 uses
  %.not.i187 = icmp eq ptr %i.gn, null
  br i1 %.not.i187, label %.critedge141, label %bb.av

bb.av:                                            ; preds = %_ZNK10VDirection11isNonOutputEv.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %.sroa.0.0.copyload.i.i.i188 = load i16, ptr %i.go, align 8, !tbaa !155
  %i.gp = icmp eq i16 %.sroa.0.0.copyload.i.i.i188, 74
  br i1 %i.gp, label %bb.aw, label %.critedge141

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 42), align 2, !tbaa !262
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 164
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.gq, align 4, !tbaa !263
  %i.gr = icmp eq i8 %.sroa.0.0.copyload.i.i, 5
  br i1 %i.gr, label %bb.bs, label %.critedge141

.critedge141:                                     ; preds = %bb.av, %_ZNK10VDirection11isNonOutputEv.exit, %bb.aw
  %.sroa.0.0.copyload.i190 = load i8, ptr %i.ej, align 1, !tbaa !230
  %.off.i = add i8 %.sroa.0.0.copyload.i190, -2
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %bb.ax, label %bb.bs

bb.ax:                                            ; preds = %.critedge141
  %i.gs = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ei, i64 88 ; 4 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !229
  %i.gv = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ay unwind label %bb.bk     ; 3 uses

bb.ay:                                            ; preds = %bb.ax
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !229
  %i.gx = load ptr, ptr %i.k, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i8 0, ptr %9, align 1, !tbaa !252
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.gv, ptr noundef %i.gw, ptr noundef %i.gx, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.az unwind label %bb.bn

bb.az:                                            ; preds = %bb.ay
  %i.gy = load ptr, ptr %i.d, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ei, i64 152
  store ptr %i.ea, ptr %10, align 8, !tbaa !18, !alias.scope !265
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !10, !noalias !265 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !16, !noalias !265 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !265
  store i64 %i.hc, ptr %i.b, align 8, !tbaa !215, !noalias !265
  %i.hd = icmp ugt i64 %i.hc, 15
  br i1 %i.hd, label %.noexc.i.i192, label %._crit_edge.i.i.i191

.noexc.i.i192:                                    ; preds = %bb.az
  %i.he = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc193 unwind label %bb.bl ; 2 uses

.noexc193:                                        ; preds = %.noexc.i.i192
  store ptr %i.he, ptr %10, align 8, !tbaa !10, !alias.scope !265
  %i.hf = load i64, ptr %i.b, align 8, !tbaa !215, !noalias !265
  store i64 %i.hf, ptr %i.ea, align 8, !tbaa !17, !alias.scope !265
  br label %._crit_edge.i.i.i191

._crit_edge.i.i.i191:                             ; preds = %.noexc193, %bb.az
  %i.hg = phi ptr [ %i.he, %.noexc193 ], [ %i.ea, %bb.az ] ; 2 uses
  switch i64 %i.hc, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i191
  %i.hh = load i8, ptr %i.ha, align 1, !tbaa !17
  store i8 %i.hh, ptr %i.hg, align 1, !tbaa !17
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i.i191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr align 1 %i.ha, i64 %i.hc, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i191
  %i.hi = load i64, ptr %i.b, align 8, !tbaa !215, !noalias !265 ; 2 uses
  store i64 %i.hi, ptr %i.eb, align 8, !tbaa !16, !alias.scope !265
  %i.hj = load ptr, ptr %10, align 8, !tbaa !10, !alias.scope !265
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !265
  %i.hl = invoke noundef ptr @_ZN10VMemberMap10findMemberEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.bd unwind label %.loopexit283 ; 5 uses

bb.bd:                                            ; preds = %bb.bc
  %.not.i195 = icmp eq ptr %i.hl, null
  br i1 %.not.i195, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit205, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  %.sroa.0.0.copyload.i.i.i196 = load i16, ptr %i.hm, align 8, !tbaa !155
  %.not6.i197 = icmp eq i16 %.sroa.0.0.copyload.i.i.i196, 68
  br i1 %.not6.i197, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit205, label %bb.bf, !prof !237

bb.bf:                                            ; preds = %bb.be
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  %i.ho = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063)
          to label %.noexc199 unwind label %.loopexit.split-lp284 ; 0 uses

.noexc199:                                        ; preds = %bb.bf
  %i.hp = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc200 unwind label %.loopexit.split-lp284 ; 2 uses

.noexc200:                                        ; preds = %.noexc199
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull @.str.33, i64 noundef 55)
          to label %.noexc201 unwind label %.loopexit.split-lp284 ; 0 uses

.noexc201:                                        ; preds = %.noexc200
  %.sroa.0.0.copyload.i.i5.i198 = load i16, ptr %i.hn, align 8, !tbaa !155
  %i.hr = zext i16 %.sroa.0.0.copyload.i.i5.i198 to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !248
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.ht)
          to label %.noexc202 unwind label %.loopexit.split-lp284 ; 2 uses

.noexc202:                                        ; preds = %.noexc201
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc203 unwind label %.loopexit.split-lp284 ; 0 uses

.noexc203:                                        ; preds = %.noexc202
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.hl, ptr noundef nonnull align 8 dereferenceable(112) %i.hu) #26
          to label %.noexc204 unwind label %.loopexit.split-lp284

.noexc204:                                        ; preds = %.noexc203
  unreachable

_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit205:        ; preds = %bb.be, %bb.bd
  invoke void @_ZN12AstMemberSelC1EP8FileLineP11AstNodeExprP6AstVar(ptr noundef nonnull align 8 dereferenceable(200) %i.gs, ptr noundef %i.gu, ptr noundef nonnull %i.gv, ptr noundef %i.hl)
          to label %bb.bg unwind label %.loopexit283

bb.bg:                                            ; preds = %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit205
  %i.hw = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.ea
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.bg
  %i.hy = load i64, ptr %i.ea, align 8, !tbaa !17
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ia = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27 ; 8 uses
  %i.ib = load ptr, ptr %i.gt, align 8, !tbaa !229
  %i.ic = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.bh unwind label %bb.bp     ; 4 uses

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.id = load ptr, ptr %i.gt, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i8 1, ptr %11, align 1, !tbaa !252
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.ic, ptr noundef %i.id, ptr noundef nonnull %i.ei, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.bi unwind label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ia, i16 466, ptr noundef %i.ib)
          to label %.noexc213 unwind label %.thread278

.noexc213:                                        ; preds = %bb.bi
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.ia, align 8, !tbaa !67
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ia, ptr noundef nonnull %i.gs)
          to label %.noexc214 unwind label %.thread278

.noexc214:                                        ; preds = %.noexc213
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ia, ptr noundef nonnull %i.ic)
          to label %.noexc215 unwind label %.thread278

.noexc215:                                        ; preds = %.noexc214
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !236 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 72 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !236
  %.not.i.i8.i.i209 = icmp eq ptr %i.ih, %i.if
  br i1 %.not.i.i8.i.i209, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit216, label %bb.bj

bb.bj:                                            ; preds = %.noexc215
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !236
  %i.ii = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  %i.ij = add i64 %i.ii, 1
  store i64 %i.ij, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit216

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit216: ; preds = %.noexc215, %bb.bj
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.ia, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ik = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef %.072400, ptr noundef nonnull %i.ia)
  br label %bb.bs

bb.bk:                                            ; preds = %bb.ax
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bl:                                            ; preds = %.noexc.i.i192
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218

.loopexit283:                                     ; preds = %bb.bc, %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit205
  %lpad.loopexit285 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp284:                            ; preds = %bb.bf, %.noexc199, %.noexc201, %.noexc203, %.noexc202, %.noexc200
  %lpad.loopexit.split-lp286 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit.split-lp284, %.loopexit283
  %lpad.phi287 = phi { ptr, i32 } [ %lpad.loopexit285, %.loopexit283 ], [ %lpad.loopexit.split-lp286, %.loopexit.split-lp284 ] ; 2 uses
  %i.in = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ea
  br i1 %i.io, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.bm
  %i.ip = load i64, ptr %i.ea, align 8, !tbaa !17
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218: ; preds = %bb.bm, %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  %.pn123 = phi { ptr, i32 } [ %i.im, %bb.bl ], [ %lpad.phi287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ], [ %lpad.phi287, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bo

bb.bn:                                            ; preds = %bb.ay
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef 232) #24
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218, %bb.bk, %bb.bn
  %.pn123.pn.pn = phi { ptr, i32 } [ %i.ir, %bb.bn ], [ %.pn123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i218 ], [ %i.il, %bb.bk ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 200) #24
  br label %bb.bz

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.thread278:                                       ; preds = %.noexc214, %bb.bi, %.noexc213
  %lpad.thr_comm276 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.br

bb.bq:                                            ; preds = %bb.bh
  %lpad.thr_comm.split-lp277 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 232) #24
  br label %bb.br

bb.br:                                            ; preds = %.thread278, %bb.bp, %bb.bq
  %.pn127 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp277, %bb.bq ], [ %lpad.thr_comm276, %.thread278 ], [ %i.is, %bb.bp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef 152) #24
  br label %bb.bz

bb.bs:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit216, %bb.z, %.critedge141, %bb.aw
  %.2100 = phi ptr [ %.098399, %bb.z ], [ %.1, %bb.aw ], [ %.1, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit216 ], [ %.1, %.critedge141 ] ; 3 uses
  %.2 = phi ptr [ %.072400, %bb.z ], [ %.072400, %bb.aw ], [ %i.ik, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit216 ], [ %.072400, %.critedge141 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0241.0396, i64 8 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %.sroa.11.0397
  br i1 %i.iu, label %bb.bt, label %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit

bb.bt:                                            ; preds = %bb.bs
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.14.0398, i64 8 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !212 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 512
  br label %_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit

_ZNSt15_Deque_iteratorIP6AstVarRS1_PS1_EppEv.exit: ; preds = %bb.bs, %bb.bt
  %.sroa.0241.1 = phi ptr [ %i.iw, %bb.bt ], [ %i.it, %bb.bs ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.ix, %bb.bt ], [ %.sroa.11.0397, %bb.bs ]
  %.sroa.14.1 = phi ptr [ %i.iv, %bb.bt ], [ %.sroa.14.0398, %bb.bs ]
  %.not282 = icmp eq ptr %.sroa.0241.1, %i.dt
  br i1 %.not282, label %._crit_edge, label %bb.z

bb.bu:                                            ; preds = %._crit_edge
  %i.iy = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull %i.db, ptr noundef nonnull %.2100) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, %bb.bu, %._crit_edge
  %.098.lcssa483 = phi ptr [ %.2, %._crit_edge ], [ %.2, %bb.bu ], [ %i.z, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit ] ; 2 uses
  %.not112 = icmp eq ptr %.074392, %.098.lcssa483
  br i1 %.not112, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.thread
  call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.074392, ptr noundef nonnull %i.db)
  br label %_ZN10VNRelinker6relinkEP7AstNode.exit

bb.bw:                                            ; preds = %._crit_edge.thread
  %i.iz = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef nonnull %i.db, ptr noundef nonnull %.074392) ; 0 uses
  br label %_ZN10VNRelinker6relinkEP7AstNode.exit

_ZN10VNRelinker6relinkEP7AstNode.exit:            ; preds = %bb.bv, %bb.bw
  %.3101 = phi ptr [ %.098.lcssa483, %bb.bv ], [ %i.db, %bb.bw ]
  %i.ja = load ptr, ptr %i.k, align 8, !tbaa !132
  %i.jb = call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef %i.ja, ptr noundef %.3101) ; 0 uses
  %i.jc = load ptr, ptr %i.k, align 8, !tbaa !132
  call void @_ZN7AstNode6relinkEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.jc, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.jd = load ptr, ptr %i.d, align 8, !tbaa !228 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i.i, label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit
  %i.je = load ptr, ptr %0, align 8, !tbaa !268
  call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %i.je, ptr noundef nonnull %i.jd)
  br label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit

_ZN13AstNodeModule9addStmtspEP7AstNode.exit:      ; preds = %bb.bx, %_ZN10VNRelinker6relinkEP7AstNode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.by

bb.by:                                            ; preds = %bb.f, %_ZN13AstNodeModule9addStmtspEP7AstNode.exit
  ret void

bb.bz:                                            ; preds = %bb.au, %bb.ar, %bb.br, %bb.bo, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %.pn136.pn = phi { ptr, i32 } [ %.pn127, %bb.br ], [ %.pn113.pn.pn, %bb.ar ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %.pn123.pn.pn, %bb.bo ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn117, %bb.au ], [ %.pn109, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn136.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode4castI9AstVarRefS_EEPT_PT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !155
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 369
  %spec.select = select i1 %i.b, ptr %0, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13AstNodeVarRef4varpEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15DynScopeVisitor20replaceWithMemberSelEP9AstVarRefRK20ForkDynScopeInstance(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN9AstVarRef12unlinkFrBackEP10VNRelinker.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.VNRelinker, align 8          ; 6 uses
  %4 = alloca %class.VAccess, align 1             ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 25, i1 false)
  %i.b = call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull %3) ; 0 uses
  %i.c = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.f = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.a unwind label %bb.k       ; 3 uses

bb.a:                                             ; preds = %_ZN9AstVarRef12unlinkFrBackEP10VNRelinker.exit
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i = load i8, ptr %i.j, align 8, !tbaa !270
  store i8 %.sroa.0.0.copyload.i, ptr %4, align 1
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.f, ptr noundef %i.g, ptr noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156
  invoke void @_ZN12AstMemberSelC1EP8FileLineP11AstNodeExprP6AstVar(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef %i.e, ptr noundef nonnull %i.f, ptr noundef %i.l)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !156  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 249
  %.sroa.0.0.copyload.i29 = load i8, ptr %i.n, align 1, !tbaa !230
  %.not = icmp eq i8 %.sroa.0.0.copyload.i29, 0
  br i1 %.not, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %2, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !18, !alias.scope !271
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !10, !noalias !271 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16, !noalias !271 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !271
  store i64 %i.t, ptr %i.a, align 8, !tbaa !215, !noalias !271
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.v, ptr %5, align 8, !tbaa !10, !alias.scope !271
  %i.w = load i64, ptr %i.a, align 8, !tbaa !215, !noalias !271
  store i64 %i.w, ptr %i.q, align 8, !tbaa !17, !alias.scope !271
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !17
  store i8 %i.y, ptr %i.x, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !215, !noalias !271 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !16, !alias.scope !271
  %i.ab = load ptr, ptr %5, align 8, !tbaa !10, !alias.scope !271
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !271
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = invoke noundef ptr @_ZN10VMemberMap10findMemberEPK7AstNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.p       ; 4 uses

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.af, align 8, !tbaa !155
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 68
  br i1 %.not6.i, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit, label %bb.j, !prof !237

bb.j:                                             ; preds = %bb.i
  %i.ag = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063)
          to label %.noexc30 unwind label %bb.p   ; 0 uses

.noexc30:                                         ; preds = %bb.j
  %i.ah = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc31 unwind label %bb.p   ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.33, i64 noundef 55)
          to label %.noexc32 unwind label %bb.p   ; 0 uses

.noexc32:                                         ; preds = %.noexc31
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.af, align 8, !tbaa !155
  %i.aj = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !248
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.al)
          to label %.noexc33 unwind label %bb.p   ; 2 uses

.noexc33:                                         ; preds = %.noexc32
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc34 unwind label %bb.p   ; 0 uses

.noexc34:                                         ; preds = %.noexc33
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ae, ptr noundef nonnull align 8 dereferenceable(112) %i.am) #26
          to label %.noexc35 unwind label %bb.p

.noexc35:                                         ; preds = %.noexc34
  unreachable

end_hunk_0
begin_hunk_1_@_ZN17ForkDynScopeFrame15linkNodesOfForkER10VMemberMapP7AstFork:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !18, !alias.scope !389
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10, !noalias !389 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16, !noalias !389 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !389
  store i64 %i.g, ptr %i.b, align 8, !tbaa !215, !noalias !389
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !10, !alias.scope !389
  %i.j = load i64, ptr %i.b, align 8, !tbaa !215, !noalias !389
  store i64 %i.j, ptr %i.d, align 8, !tbaa !17, !alias.scope !389
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !17
  store i8 %i.l, ptr %i.k, align 1, !tbaa !17
  br label %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit

_ZNK12AstNodeBlock4nameB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.b, align 8, !tbaa !215, !noalias !389 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16, !alias.scope !389
  %i.o = load ptr, ptr %6, align 8, !tbaa !10, !alias.scope !389
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !389
  %i.q = load i64, ptr %i.n, align 8, !tbaa !16
  %.not144 = icmp eq i64 %i.q, 0                  ; 4 uses
  br i1 %.not144, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !16
  store i8 0, ptr %i.r, align 8, !tbaa !17
  br label %bb.j

bb.d:                                             ; preds = %_ZNK12AstNodeBlock4nameB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !18, !alias.scope !392
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !10, !noalias !392 ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !16, !noalias !392 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !392
  store i64 %i.v, ptr %i.a, align 8, !tbaa !215, !noalias !392
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i57, label %._crit_edge.i.i.i56

.noexc.i.i57:                                     ; preds = %bb.d
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc58 unwind label %.split.thread ; 2 uses

.noexc58:                                         ; preds = %.noexc.i.i57
  store ptr %i.x, ptr %7, align 8, !tbaa !10, !alias.scope !392
  %i.y = load i64, ptr %i.a, align 8, !tbaa !215, !noalias !392
  store i64 %i.y, ptr %i.t, align 8, !tbaa !17, !alias.scope !392
  br label %._crit_edge.i.i.i56

._crit_edge.i.i.i56:                              ; preds = %.noexc58, %bb.d
  %i.z = phi ptr [ %i.x, %.noexc58 ], [ %i.t, %bb.d ] ; 2 uses
  switch i64 %i.v, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i56
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !17
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !17
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i56
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !215, !noalias !392 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16, !alias.scope !392
  %i.ad = load ptr, ptr %7, align 8, !tbaa !10, !alias.scope !392
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !392
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !16, !noalias !395
  %i.ag = icmp eq i64 %i.af, 4611686018427387903
  br i1 %i.ag, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #26
          to label %.noexc60 unwind label %.thread

.noexc60:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.g
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.31, i64 noundef 1)
          to label %.noexc61 unwind label %.thread ; 6 uses

.noexc61:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !18, !alias.scope !395
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc61
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !16 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc61
  store ptr %i.aj, ptr %5, align 8, !tbaa !10, !alias.scope !395
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !17
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !17, !alias.scope !395
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = phi i64 [ %i.an, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !16, !alias.scope !395
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !10
  store i64 0, ptr %i.as, align 8, !tbaa !16
  store i8 0, ptr %i.ak, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %._crit_edge.i.i
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.30, i64 noundef 10)
          to label %.noexc65 unwind label %bb.aj  ; 6 uses

.noexc65:                                         ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !18, !alias.scope !398
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !10 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

bb.k:                                             ; preds = %.noexc65
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.noexc65
  store ptr %i.aw, ptr %4, align 8, !tbaa !10, !alias.scope !398
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !17
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !17, !alias.scope !398
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.pre.i64 = load i64, ptr %.phi.trans.insert.i63, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.k
  %i.be = phi i64 [ %i.ba, %bb.k ], [ %.pre.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !16, !alias.scope !398
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !10
  store i64 0, ptr %i.bf, align 8, !tbaa !16
  store i8 0, ptr %i.ax, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !401 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.bj = icmp ult i64 %i.bi, 10
  br i1 %i.bj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %bb.r
  %.02229.i.i = phi i64 [ %i.bq, %bb.r ], [ %i.bi, %bb.l ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.br, %bb.r ], [ 1, %bb.l ] ; 4 uses
  %i.bk = icmp ult i64 %.02229.i.i, 100
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bl = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bm = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bo = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bq = udiv i64 %.02229.i.i, 10000
  %i.br = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.bs = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.bs, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !405

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l
  %.022.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.bl, %bb.m ], [ %i.bn, %bb.o ], [ 1, %bb.l ], [ %i.br, %bb.r ]
  %i.bt = zext i32 %.022.i.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bu, ptr %8, align 8, !tbaa !18, !alias.scope !402
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bt, i8 noundef signext 0)
          to label %.noexc67 unwind label %bb.ak

.noexc67:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bv = load ptr, ptr %8, align 8, !tbaa !10, !alias.scope !402 ; 4 uses
  %i.bw = icmp ugt i64 %i.bi, 99
  br i1 %i.bw, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i66

.lr.ph.preheader.i.i:                             ; preds = %.noexc67
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16, !alias.scope !402
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i32 %i.bz, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.cd, %.lr.ph.i4.i ], [ %i.bi, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cn, %.lr.ph.i4.i ], [ %i.ca, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cb = urem i64 %.020.i.i, 100
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17, !noalias !402
  %i.ch = zext i32 %.01819.i.i to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !17
  %i.cj = load i8, ptr %i.ce, align 2, !tbaa !17, !noalias !402
  %i.ck = add i32 %.01819.i.i, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cl
  store i8 %i.cj, ptr %i.cm, align 1, !tbaa !17
  %i.cn = add i32 %.01819.i.i, -2
  %i.co = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.co, label %.lr.ph.i4.i, label %._crit_edge.i.i66, !llvm.loop !406

._crit_edge.i.i66:                                ; preds = %.lr.ph.i4.i, %.noexc67
  %.0.lcssa.i.i = phi i64 [ %i.bi, %.noexc67 ], [ %i.cd, %.lr.ph.i4.i ] ; 3 uses
  %i.cp = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i66
  %i.cq = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17, !noalias !402
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !17
  %i.cv = load i8, ptr %i.cr, align 2, !tbaa !17, !noalias !402
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i66
  %i.cw = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cx = or disjoint i8 %i.cw, 48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi i8 [ %i.cx, %bb.t ], [ %i.cv, %bb.s ]
  store i8 %storemerge.i.i, ptr %i.bv, align 1, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.cy = load i64, ptr %i.bg, align 8, !tbaa !16, !noalias !407 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16, !noalias !407 ; 4 uses
  %i.db = add i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !10, !noalias !407 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.av
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.u
  %i.de = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.de)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.u
  %i.df = load i64, ptr %i.av, align 8, !tbaa !17, !noalias !407
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.dg = phi i64 [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.dh = icmp ugt i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.di = load ptr, ptr %8, align 8, !tbaa !10, !noalias !407
  %i.dj = icmp eq ptr %i.di, %i.bu
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.v
  %i.dk = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.dk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.v
  %i.dl = load i64, ptr %i.bu, align 8, !tbaa !17, !noalias !407
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.dm = phi i64 [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.db, %i.dm
  br i1 %.not.i, label %bb.x, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.dc, i64 noundef %i.cy)
          to label %.noexc69 unwind label %bb.al  ; 5 uses

.noexc69:                                         ; preds = %.critedge.i
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.do, ptr %3, align 8, !tbaa !18, !alias.scope !407
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !10 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 5 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.w:                                             ; preds = %.noexc69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nuw nsw i64 %i.dt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.dv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc69
  store ptr %i.dp, ptr %3, align 8, !tbaa !10, !alias.scope !407
  %i.dw = load i64, ptr %i.dq, align 8, !tbaa !17
  store i64 %i.dw, ptr %i.do, align 8, !tbaa !17, !alias.scope !407
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !16, !alias.scope !407
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !10
  store i64 0, ptr %i.dx, align 8, !tbaa !16
  store i8 0, ptr %i.dq, align 8, !tbaa !17
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ea = sub i64 4611686018427387903, %i.cy
  %i.eb = icmp ult i64 %i.ea, %i.da
  br i1 %i.eb, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #26
          to label %.noexc70 unwind label %bb.al

.noexc70:                                         ; preds = %bb.y
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.x
  %i.ec = load ptr, ptr %8, align 8, !tbaa !10, !noalias !407
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ec, i64 noundef %i.da)
          to label %.noexc71 unwind label %bb.al  ; 5 uses

.noexc71:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ee, ptr %3, align 8, !tbaa !18, !alias.scope !407
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 5 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.z:                                             ; preds = %.noexc71
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.eg, i64 %i.el, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc71
  store ptr %i.ef, ptr %3, align 8, !tbaa !10, !alias.scope !407
  %i.em = load i64, ptr %i.eg, align 8, !tbaa !17
  store i64 %i.em, ptr %i.ee, align 8, !tbaa !17, !alias.scope !407
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !16, !alias.scope !407
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !10
  store i64 0, ptr %i.en, align 8, !tbaa !16
  store i8 0, ptr %i.eg, align 8, !tbaa !17
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.eq = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.bu
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

end_hunk_1
begin_hunk_2_@_ZN7AstNode2isI8AstConstS_EEbPKT0_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode2asI8AstConstS_EEPKT_PKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !155
  %.not6 = icmp eq i16 %.sroa.0.0.copyload.i.i, 121
  br i1 %.not6, label %.critedge, label %bb.c, !prof !237

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1075) ; 0 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.33)
  %.sroa.0.0.copyload.i.i5 = load i16, ptr %i.a, align 8, !tbaa !155
  %i.e = zext i16 %.sroa.0.0.copyload.i.i5 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !248
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.g)
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.34)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.i) #26
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNK8AstConst3numEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number6isNullEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode2isI16AstClassRefDType12AstNodeDTypeEEbPKT0_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.a, align 8, !tbaa !155
  %i.b = icmp eq i16 %.sroa.0.0.copyload.i.i, 77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %i.b, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI8AstConstS_EEPKT_PKT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12AstAssignDly4lhspEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user2uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !278
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !19
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplI9AstVarRefLb0EZN15DynScopeVisitor5visitEP12AstAssignDlyEUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.ptr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.0.idx.sroa.gep112 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr105, align 16, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.idx.sroa.phi = phi ptr [ %.ptr105, %bb.b ], [ %.0.idx.sroa.gep112, %bb.c ], [ %.ptr105, %bb.a ]
  %.0.idx = phi i64 [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !155
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 369
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.0.copyload.i.i24.i = load i8, ptr %i.h, align 8, !tbaa !270
  %i.i = add i8 %.sroa.0.0.copyload.i.i24.i, -1
  %spec.select.i.i.i = icmp ult i8 %i.i, 2
  br i1 %spec.select.i.i.i, label %.split, label %.preheader

.split:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 260
  %i.m = load i64, ptr %i.l, align 4
  %i.n = and i64 %i.m, 8192
  %.not92 = icmp eq i64 %i.n, 0
  br i1 %.not92, label %.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.p, ptr %.0.idx.sroa.phi, align 8, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4.idx = phi i64 [ %.0.idx, %bb.f ], [ %.0.add, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !420  ; 2 uses
  %.not21.i = icmp eq ptr %i.r, null
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.r, ptr %.4.ptr, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.5.idx = phi i64 [ %.4.idx, %bb.h ], [ %.4.add, %bb.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !277  ; 2 uses
  %.not22.i = icmp eq ptr %i.t, null
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.t, ptr %.5.ptr, align 8, !tbaa !119
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.6.idx = phi i64 [ %.5.idx, %bb.j ], [ %.5.add, %bb.k ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !285  ; 2 uses
  %.not23.i = icmp eq ptr %i.v, null
  br i1 %.not23.i, label %.preheader, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.l
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.v, ptr %.6.ptr, align 8, !tbaa !119
  br label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.e, %bb.l, %.split
  %.1.ph.idx = phi i64 [ %.0.idx, %.split ], [ %.6.idx, %bb.l ], [ %.0.idx, %bb.e ] ; 2 uses
  %i.w = icmp samesign ugt i64 %.1.ph.idx, 16
  br i1 %i.w, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, !prof !465

.lr.ph.preheader:                                 ; preds = %.preheader.thread, %.preheader
  %.1.ph.idx125 = phi i64 [ %.6.add, %.preheader.thread ], [ %.1.ph.idx, %.preheader ]
  %.1.ph.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.ph.idx125
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.backedge
  %.031101 = phi i64 [ %.132, %.backedge ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.037100 = phi ptr [ %.138, %.backedge ], [ %.ptr105, %.lr.ph.preheader ] ; 3 uses
  %.03599 = phi ptr [ %.136, %.backedge ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.sroa.070.098 = phi ptr [ %.sroa.070.1, %.backedge ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.197 = phi ptr [ %.1.be, %.backedge ], [ %.1.ph.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.197, i64 -8 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !119  ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %.197, i64 -24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !119 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.ac, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.x, %.03599
  br i1 %.not46, label %bb.p, label %bb.m, !prof !237

bb.m:                                             ; preds = %.lr.ph
  %i.ad = shl i64 %.031101, 1                     ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  %i.af = shl i64 %.031101, 4
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #27
          to label %bb.n unwind label %bb.o       ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %.037100 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.037100, i64 -16
  %i.am = add i64 %i.ak, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.al, i64 %i.am, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.070.098, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.098) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -40
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %.not.i60 = icmp eq ptr %.sroa.070.098, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit62, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i61

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, %.lr.ph
  %.286 = phi ptr [ %i.x, %.lr.ph ], [ %i.ao, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.sroa.070.1 = phi ptr [ %.sroa.070.098, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.136 = phi ptr [ %.03599, %.lr.ph ], [ %i.aq, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %.138 = phi ptr [ %.037100, %.lr.ph ], [ %i.an, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 2 uses
  %.132 = phi i64 [ %.031101, %.lr.ph ], [ %i.ad, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !238 ; 2 uses
  %.not47 = icmp eq ptr %i.at, null
  br i1 %.not47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.286, i64 8
  store ptr %i.at, ptr %.286, align 8, !tbaa !119
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi ptr [ %.286, %bb.p ], [ %i.au, %bb.q ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.av, align 8, !tbaa !155
  %i.aw = icmp eq i16 %.sroa.0.0.copyload.i.i.i50, 369
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %.sroa.0.0.copyload.i.i24.i56 = load i8, ptr %i.ax, align 8, !tbaa !270
  %i.ay = add i8 %.sroa.0.0.copyload.i.i24.i56, -1
  %spec.select.i.i.i57 = icmp ult i8 %i.ay, 2
  br i1 %spec.select.i.i.i57, label %.split87, label %.backedge

.split87:                                         ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !156
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 260
  %i.bc = load i64, ptr %i.bb, align 4
  %i.bd = and i64 %i.bc, 8192
  %.not93 = icmp eq i64 %i.bd, 0
  br i1 %.not93, label %.backedge, label %.split87._crit_edge

.backedge:                                        ; preds = %bb.s, %bb.z, %bb.aa, %.split87
  %.1.be = phi ptr [ %.3, %.split87 ], [ %i.bq, %bb.aa ], [ %.3, %bb.s ], [ %.10, %bb.z ] ; 2 uses
  %i.be = icmp ugt ptr %.1.be, %.138
  br i1 %i.be, label %.lr.ph, label %.split87._crit_edge, !prof !466, !llvm.loop !467

bb.t:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !464 ; 2 uses
  %.not.i51 = icmp eq ptr %i.bg, null
  br i1 %.not.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.bg, ptr %.3, align 8, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.8 = phi ptr [ %.3, %bb.t ], [ %i.bh, %bb.u ]  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !420 ; 2 uses
  %.not21.i52 = icmp eq ptr %i.bj, null
  br i1 %.not21.i52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.bj, ptr %.8, align 8, !tbaa !119
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9 = phi ptr [ %.8, %bb.v ], [ %i.bk, %bb.w ]  ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !277 ; 2 uses
  %.not22.i53 = icmp eq ptr %i.bm, null
  br i1 %.not22.i53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.bm, ptr %.9, align 8, !tbaa !119
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10 = phi ptr [ %.9, %bb.x ], [ %i.bn, %bb.y ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !285 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bp, null
  br i1 %.not23.i54, label %.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bp, ptr %.10, align 8, !tbaa !119
  br label %.backedge

.split87._crit_edge:                              ; preds = %.backedge, %.split87
  %.lcssa = phi i1 [ true, %.split87 ], [ false, %.backedge ] ; 2 uses
  %.not.i59 = icmp eq ptr %.sroa.070.1, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %.split87._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.1) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %.preheader, %.split, %.split87._crit_edge, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %.291 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i ], [ %.lcssa, %.split87._crit_edge ], [ true, %.split ], [ false, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.291

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i61: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.098) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit62

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit62: ; preds = %bb.o, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.ar
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstNode4op4pEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !464
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15DynScopeVisitor17pushDynScopeFrameEP7AstNode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !119
  %i.b = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #27 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !468  ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !468
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !294  ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !294
  store ptr %i.d, ptr %i.b, align 8, !tbaa !268
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.k, align 8, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIP6AstVarSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %i.n, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.m, ptr %i.o, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.m, ptr %i.p, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store i64 %i.f, ptr %i.r, align 8, !tbaa !469
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.i, ptr %i.s, align 8, !tbaa !401
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !103  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.v, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !119
  %i.z = icmp ult ptr %i.y, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.z, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIP7AstNodeP17ForkDynScopeFrameSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !121

_ZNSt3mapIP7AstNodeP17ForkDynScopeFrameSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i.i, %i.w
  br i1 %i.aa, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIP7AstNodeP17ForkDynScopeFrameSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !154
  %i.ad = icmp ult ptr %1, %i.ac
  br i1 %i.ad, label %.critedge.i, label %bb.h

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIP7AstNodeP17ForkDynScopeFrameSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i, %bb.b
  %.08.lcssa.i.i.i20.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIP7AstNodeP17ForkDynScopeFrameSt4lessIS1_ESaISt4pairIKS1_S3_EEE11lower_boundERS7_.exit.i ], [ %i.w, %bb.b ]
  %i.ae = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 3 uses
  store ptr %1, ptr %i.af, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !124
  %i.ah = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_P17ForkDynScopeFrameESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_P17ForkDynScopeFrameESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.ai = extractvalue { ptr, ptr } %i.ah, 1      ; 4 uses
  %.not.i3 = icmp eq ptr %i.ai, null
  br i1 %.not.i3, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = extractvalue { ptr, ptr } %i.ah, 0
  %.not.i.i.i = icmp ne ptr %i.aj, null
  %i.ak = icmp eq ptr %i.ai, %i.w
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !119
  %i.ao = icmp ult ptr %i.al, %i.an
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ap = phi i1 [ %i.ao, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ap, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !106
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !106
  br label %bb.j

common.resume:                                    ; preds = %bb.i, %_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_P17ForkDynScopeFrameESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_P17ForkDynScopeFrameESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i ], [ %i.ay, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_P17ForkDynScopeFrameESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 48) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 48) #24
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !293
  %i.av = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 308) ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.529)
  tail call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.au, ptr noundef nonnull align 8 dereferenceable(112) %i.ax) #26
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 184) #24
  br label %common.resume

bb.j:                                             ; preds = %.thread.i, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !322 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !470
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %.not.i = icmp eq ptr %i.ba, %i.bd
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %i.ba, align 8, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.be, ptr %i.az, align 8, !tbaa !322
  br label %_ZNSt5dequeIP7AstNodeSaIS1_EE9push_backERKS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZNSt5dequeIP7AstNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5dequeIP7AstNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt5dequeIP7AstNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.k, %bb.l
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.ptr110 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.0.idx.sroa.gep114 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr110, align 16, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.idx.sroa.phi = phi ptr [ %.ptr110, %bb.b ], [ %.0.idx.sroa.gep114, %bb.c ], [ %.ptr110, %bb.a ]
  %.0.idx = phi i64 [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !155
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 473
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 185
  %.sroa.0.0.copyload.i.i24.i = load i8, ptr %i.h, align 1, !tbaa !283
  %.not25.i = icmp eq i8 %.sroa.0.0.copyload.i.i24.i, 0
  br i1 %.not25.i, label %bb.f, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.j, ptr %.0.idx.sroa.phi, align 8, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4.idx = phi i64 [ %.0.idx, %bb.f ], [ %.0.add, %bb.g ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !420  ; 2 uses
  %.not21.i = icmp eq ptr %i.l, null
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.l, ptr %.4.ptr, align 8, !tbaa !119
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.5.idx = phi i64 [ %.4.idx, %bb.h ], [ %.4.add, %bb.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !277  ; 2 uses
  %.not22.i = icmp eq ptr %i.n, null
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.n, ptr %.5.ptr, align 8, !tbaa !119
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.6.idx = phi i64 [ %.5.idx, %bb.j ], [ %.5.add, %bb.k ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !285  ; 2 uses
  %.not23.i = icmp eq ptr %i.p, null
  br i1 %.not23.i, label %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, label %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread

_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread: ; preds = %bb.l
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.p, ptr %.6.ptr, align 8, !tbaa !119
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit: ; preds = %bb.l
  %i.q = icmp samesign ugt i64 %.6.idx, 16
  br i1 %i.q, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, !prof !471

.lr.ph.preheader:                                 ; preds = %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit
  %.7.idx127 = phi i64 [ %.6.add, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread ], [ %.6.idx, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit ]
  %.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.idx127
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58
  %.031102 = phi i64 [ %.132, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58 ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.037101 = phi ptr [ %.138, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58 ], [ %.ptr110, %.lr.ph.preheader ] ; 3 uses
  %.035100 = phi ptr [ %.136, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.sroa.070.099 = phi ptr [ %.sroa.070.1, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58 ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.198 = phi ptr [ %.11, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58 ], [ %.7.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.198, i64 -8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119  ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %.198, i64 -24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.v, i32 0, i32 3, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.w, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.r, %.035100
  br i1 %.not46, label %bb.p, label %bb.m, !prof !237

bb.m:                                             ; preds = %.lr.ph
  %i.x = shl i64 %.031102, 1                      ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2305843009213693951
  %i.z = shl i64 %.031102, 4
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #27
          to label %bb.n unwind label %bb.o       ; 4 uses

bb.n:                                             ; preds = %bb.m
  %i.ac = ptrtoint ptr %i.r to i64
  %i.ad = ptrtoint ptr %.037101 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.037101, i64 -16
  %i.ag = add i64 %i.ae, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.af, i64 %i.ag, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.070.099, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.099) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -40
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  %.not.i60 = icmp eq ptr %.sroa.070.099, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit62, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i61

bb.p:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, %.lr.ph
  %.286 = phi ptr [ %i.r, %.lr.ph ], [ %i.ai, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.sroa.070.1 = phi ptr [ %.sroa.070.099, %.lr.ph ], [ %i.ab, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.136 = phi ptr [ %.035100, %.lr.ph ], [ %i.ak, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %.138 = phi ptr [ %.037101, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 2 uses
  %.132 = phi i64 [ %.031102, %.lr.ph ], [ %i.x, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !238 ; 2 uses
  %.not47 = icmp eq ptr %i.an, null
  br i1 %.not47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %.286, i64 8
  store ptr %i.an, ptr %.286, align 8, !tbaa !119
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi ptr [ %.286, %bb.p ], [ %i.ao, %bb.q ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.ap, align 8, !tbaa !155
  %i.aq = icmp eq i16 %.sroa.0.0.copyload.i.i.i50, 473
  br i1 %i.aq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 185
  %.sroa.0.0.copyload.i.i24.i56 = load i8, ptr %i.ar, align 1, !tbaa !283
  %.not25.i57 = icmp eq i8 %.sroa.0.0.copyload.i.i24.i56, 0
  br i1 %.not25.i57, label %bb.t, label %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !464 ; 2 uses
  %.not.i51 = icmp eq ptr %i.at, null
  br i1 %.not.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.at, ptr %.3, align 8, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.8 = phi ptr [ %.3, %bb.t ], [ %i.au, %bb.u ]  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !420 ; 2 uses
  %.not21.i52 = icmp eq ptr %i.aw, null
  br i1 %.not21.i52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.aw, ptr %.8, align 8, !tbaa !119
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9 = phi ptr [ %.8, %bb.v ], [ %i.ax, %bb.w ]  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !277 ; 2 uses
  %.not22.i53 = icmp eq ptr %i.az, null
  br i1 %.not22.i53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.az, ptr %.9, align 8, !tbaa !119
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10 = phi ptr [ %.9, %bb.x ], [ %i.ba, %bb.y ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !285 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bc, null
  br i1 %.not23.i54, label %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.bc, ptr %.10, align 8, !tbaa !119
  br label %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58

_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58: ; preds = %bb.aa, %bb.z
  %.11 = phi ptr [ %.10, %bb.z ], [ %i.bd, %bb.aa ] ; 2 uses
  %i.be = icmp ugt ptr %.11, %.138
  br i1 %i.be, label %.lr.ph, label %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58.thread, !prof !466, !llvm.loop !472

_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58.thread: ; preds = %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58, %bb.s
  %.lcssa = phi i1 [ true, %bb.s ], [ false, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58 ] ; 2 uses
  %.not.i59 = icmp eq ptr %.sroa.070.1, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.1) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, %bb.e, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58.thread, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %.294 = phi i1 [ %.lcssa, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i ], [ %.lcssa, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit58.thread ], [ true, %bb.e ], [ false, %_ZZN7AstNode13predicateImplI7AstForkLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.294

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i61: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %.sroa.070.099) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit62

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit62: ; preds = %bb.o, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.al
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_b(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.ptr105 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.0.idx.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.a, align 16, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  br i1 %2, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238  ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %.ptr105, align 16, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.idx.sroa.phi = phi ptr [ %.ptr105, %bb.b ], [ %.0.idx.sroa.gep109, %bb.c ], [ %.ptr105, %bb.a ]
  %.0.idx = phi i64 [ 16, %bb.b ], [ 24, %bb.c ], [ 16, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.f, align 8, !tbaa !155
  %i.g = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 469
  br i1 %i.g, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !464  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.0.add = add nuw nsw i64 %.0.idx, 8
  store ptr %i.i, ptr %.0.idx.sroa.phi, align 8, !tbaa !119
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4.idx = phi i64 [ %.0.idx, %bb.e ], [ %.0.add, %bb.f ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !420  ; 2 uses
  %.not21.i = icmp eq ptr %i.k, null
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.4.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx
  %.4.add = add nuw nsw i64 %.4.idx, 8
  store ptr %i.k, ptr %.4.ptr, align 8, !tbaa !119
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.5.idx = phi i64 [ %.4.idx, %bb.g ], [ %.4.add, %bb.h ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !277  ; 2 uses
  %.not22.i = icmp eq ptr %i.m, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.5.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.5.idx
  %.5.add = add nuw nsw i64 %.5.idx, 8
  store ptr %i.m, ptr %.5.ptr, align 8, !tbaa !119
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6.idx = phi i64 [ %.5.idx, %bb.i ], [ %.5.add, %bb.j ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !285  ; 2 uses
  %.not23.i = icmp eq ptr %i.o, null
  br i1 %.not23.i, label %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, label %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread

_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread: ; preds = %bb.k
  %.6.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.6.idx
  %.6.add = add nuw nsw i64 %.6.idx, 8
  store ptr %i.o, ptr %.6.ptr, align 8, !tbaa !119
  br label %.lr.ph.preheader

_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit: ; preds = %bb.k
  %i.p = icmp samesign ugt i64 %.6.idx, 16
  br i1 %i.p, label %.lr.ph.preheader, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, !prof !471

.lr.ph.preheader:                                 ; preds = %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit
  %.7.idx122 = phi i64 [ %.6.add, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit.thread ], [ %.6.idx, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit ]
  %.7.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.idx122
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55
  %.03197 = phi i64 [ %.132, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55 ], [ 32, %.lr.ph.preheader ] ; 3 uses
  %.03796 = phi ptr [ %.138, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55 ], [ %.ptr105, %.lr.ph.preheader ] ; 3 uses
  %.03595 = phi ptr [ %.136, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.sroa.067.094 = phi ptr [ %.sroa.067.1, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55 ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.193 = phi ptr [ %.11, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55 ], [ %.7.ptr, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.193, i64 -8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !119  ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.193, i64 -24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  call void @llvm.prefetch.p0(ptr nonnull %i.v, i32 0, i32 3, i32 1)
  %.not46 = icmp ult ptr %i.q, %.03595
  br i1 %.not46, label %bb.o, label %bb.l, !prof !237

bb.l:                                             ; preds = %.lr.ph
  %i.w = shl i64 %.03197, 1                       ; 3 uses
  %i.x = icmp ugt i64 %i.w, 2305843009213693951
  %i.y = shl i64 %.03197, 4
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #27
          to label %bb.m unwind label %bb.n       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = ptrtoint ptr %.03796 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.03796, i64 -16
  %i.af = add i64 %i.ad, 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ae, i64 %i.af, i1 false)
  %.not.i.i = icmp eq ptr %.sroa.067.094, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.sroa.067.094) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ad
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.not.i57 = icmp eq ptr %.sroa.067.094, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit59, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i58

bb.o:                                             ; preds = %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit, %.lr.ph
  %.283 = phi ptr [ %i.q, %.lr.ph ], [ %i.ah, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.sroa.067.1 = phi ptr [ %.sroa.067.094, %.lr.ph ], [ %i.aa, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 3 uses
  %.136 = phi ptr [ %.03595, %.lr.ph ], [ %i.aj, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %.138 = phi ptr [ %.03796, %.lr.ph ], [ %i.ag, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ] ; 2 uses
  %.132 = phi i64 [ %.03197, %.lr.ph ], [ %i.w, %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EE5resetIPS1_vEEvT_.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !238 ; 2 uses
  %.not47 = icmp eq ptr %i.am, null
  br i1 %.not47, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.283, i64 8
  store ptr %i.am, ptr %.283, align 8, !tbaa !119
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.3 = phi ptr [ %.283, %bb.o ], [ %i.an, %bb.p ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.0.0.copyload.i.i.i50 = load i16, ptr %i.ao, align 8, !tbaa !155
  %i.ap = icmp eq i16 %.sroa.0.0.copyload.i.i.i50, 469 ; 3 uses
  br i1 %i.ap, label %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !464 ; 2 uses
  %.not.i51 = icmp eq ptr %i.ar, null
  br i1 %.not.i51, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr %i.ar, ptr %.3, align 8, !tbaa !119
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.8 = phi ptr [ %.3, %bb.r ], [ %i.as, %bb.s ]  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !420 ; 2 uses
  %.not21.i52 = icmp eq ptr %i.au, null
  br i1 %.not21.i52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.8, i64 8
  store ptr %i.au, ptr %.8, align 8, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.9 = phi ptr [ %.8, %bb.t ], [ %i.av, %bb.u ]  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !277 ; 2 uses
  %.not22.i53 = icmp eq ptr %i.ax, null
  br i1 %.not22.i53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %.9, i64 8
  store ptr %i.ax, ptr %.9, align 8, !tbaa !119
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.10 = phi ptr [ %.9, %bb.v ], [ %i.ay, %bb.w ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !285 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.ba, null
  br i1 %.not23.i54, label %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %.10, i64 8
  store ptr %i.ba, ptr %.10, align 8, !tbaa !119
  br label %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55

_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55: ; preds = %bb.y, %bb.x
  %.11 = phi ptr [ %i.bb, %bb.y ], [ %.10, %bb.x ] ; 2 uses
  %i.bc = icmp ugt ptr %.11, %.138
  br i1 %i.bc, label %.lr.ph, label %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55.thread, !prof !466, !llvm.loop !473

_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55.thread: ; preds = %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55, %bb.q
  %.not.i56 = icmp eq ptr %.sroa.067.1, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i: ; preds = %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55.thread
  call void @_ZdaPv(ptr noundef nonnull %.sroa.067.1) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit, %bb.d, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55.thread, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i
  %.289 = phi i1 [ %i.ap, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i ], [ %i.ap, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit55.thread ], [ true, %bb.d ], [ false, %_ZZN7AstNode13predicateImplI12AstAssignDlyLb0EZN15DynScopeVisitor12hasAsyncForkEPS_EUlPS1_E_EEbPNSt11conditionalIXsr3std8is_constIT_EE5valueEKS_S_E4typeERKT1_bENKUlS3_E_clES3_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.289

_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i58: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %.sroa.067.094) #24
  br label %_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit59

_ZNSt10unique_ptrIA_P7AstNodeSt14default_deleteIS2_EED2Ev.exit59: ; preds = %bb.n, %_ZNKSt14default_deleteIA_P7AstNodeEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP6AstVarSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIP6AstVarSaIS1_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !214
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !209
  %i.g = load i64, ptr %i.d, align 8, !tbaa !214
  %i.h = sub i64 %i.g, %i.b
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #27
          to label %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !212
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE15_M_create_nodesEPPS1_S5_.exit, !llvm.loop !474

bb.a:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #23 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !212
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i, !llvm.loop !213

_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #26
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #23 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !209
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !214
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ad

_ZNSt11_Deque_baseIP6AstVarSaIS1_EE15_M_create_nodesEPPS1_S5_.exit: ; preds = %_ZNSt11_Deque_baseIP6AstVarSaIS1_EE16_M_allocate_nodeEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.af, align 8, !tbaa !226
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !212 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !475
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !227
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.al, ptr %i.am, align 8, !tbaa !226
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !212 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !475
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !227
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !476
  %i.ar = and i64 %1, 63
end_hunk_2
begin_hunk_3_@_ZN11ForkVisitor5visitEP7AstFork:bb.a
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.r:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.r
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.q
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.q ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.bg, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.j
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.ah, %bb.j ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit93

bb.t:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !229 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !420 ; 2 uses
  %.not38141 = icmp eq ptr %i.bp, null
  br i1 %.not38141, label %.loopexit118, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.ab
  %.0142 = phi ptr [ %i.br, %bb.ab ], [ %i.bp, %bb.t ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0142, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !238 ; 5 uses
  %.not.i = icmp eq ptr %i.br, null               ; 2 uses
  br i1 %.not.i, label %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bs, align 8, !tbaa !155
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 472
  br i1 %.not6.i, label %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit, label %bb.v, !prof !237

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063) ; 0 uses
  %i.bv = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.33)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.bt, align 8, !tbaa !155
  %i.bx = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !248
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bz)
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.34)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.br, ptr noundef nonnull align 8 dereferenceable(112) %i.cb) #26
  unreachable

_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit:         ; preds = %.lr.ph, %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %.0142, i64 32 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !277
  %.not42 = icmp eq ptr %i.cd, null
  br i1 %.not42, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit
  %i.ce = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27 ; 7 uses
  %i.cf = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.x unwind label %bb.ac      ; 8 uses

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, i16 121, ptr noundef %i.bn)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.x
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.cf, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 152 ; 3 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(208) %i.cf, i32 noundef 64, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc67 unwind label %bb.ad

.noexc67:                                         ; preds = %.noexc
  %i.ch = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setQuadEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, i64 noundef -1)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %.noexc67
  %i.ci = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, i32 noundef 64, i32 noundef 64, i8 0)
          to label %.noexc.i unwind label %bb.aa  ; 2 uses

.noexc.i:                                         ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 72 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !236
  %.not.i.i.i = icmp eq ptr %i.ck, %i.ci
  br i1 %.not.i.i.i, label %_ZN8AstConstC2EP8FileLineNS_9Unsized64Em.exit, label %bb.z

bb.z:                                             ; preds = %.noexc.i
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !236
  %i.cl = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !215
  br label %_ZN8AstConstC2EP8FileLineNS_9Unsized64Em.exit

bb.aa:                                            ; preds = %bb.y, %.noexc67
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cg) #23
  br label %.body

_ZN8AstConstC2EP8FileLineNS_9Unsized64Em.exit:    ; preds = %bb.z, %.noexc.i
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.ce, i16 419, ptr noundef %i.bn)
          to label %.noexc68 unwind label %bb.ac

.noexc68:                                         ; preds = %_ZN8AstConstC2EP8FileLineNS_9Unsized64Em.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV8AstDelay, i64 16), ptr %i.ce, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 152
  store i8 18, ptr %i.co, align 8, !tbaa !520
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 153
  store i8 0, ptr %i.cp, align 1, !tbaa !526
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ce, ptr noundef nonnull %i.cf)
          to label %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit unwind label %bb.ac

_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit:    ; preds = %.noexc68
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !277
  call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.cq, ptr noundef nonnull %i.ce)
  call void @_ZN11ForkVisitor39moveForkSentinelAfterDisableQueuePushesEP8AstBegin(ptr noundef nonnull %.0142)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7AstNode2asI8AstBeginS_EEPT_PT0_.exit, %_ZN8AstDelayC2EP8FileLineP11AstNodeExprb.exit
  br i1 %.not.i, label %.loopexit118, label %.lr.ph, !llvm.loop !528

bb.ac:                                            ; preds = %.noexc68, %_ZN8AstConstC2EP8FileLineNS_9Unsized64Em.exit, %bb.w
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %.noexc, %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aa, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.cs, %bb.ad ], [ %i.cn, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 208) #24
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.ac
  %.pn43 = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %eh.lpad-body, %.body ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 160) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit93

.loopexit118:                                     ; preds = %bb.ab, %bb.t, %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !285 ; 2 uses
  %.not.i70 = icmp eq ptr %i.cu, null
  br i1 %.not.i70, label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit, label %bb.af, !prof !9

bb.af:                                            ; preds = %.loopexit118
  call void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit

_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit: ; preds = %.loopexit118, %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !277 ; 2 uses
  %.not.i71 = icmp eq ptr %i.cw, null
  br i1 %.not.i71, label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72, label %bb.ag, !prof !9

bb.ag:                                            ; preds = %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit
  call void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72

_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72: ; preds = %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit, %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !291, !range !65, !noundef !66 ; 3 uses
  store i8 1, ptr %i.cx, align 8, !tbaa !529
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !420 ; 2 uses
  %.not39144 = icmp eq ptr %i.da, null
  br i1 %.not39144, label %._crit_edge156.thread, label %.lr.ph149

._crit_edge156.thread:                            ; preds = %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !291
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !291
  %.not117152 = icmp eq ptr %.sroa.0106.2, %.sroa.13.2
  br i1 %.not117152, label %._crit_edge156, label %.lr.ph155

.loopexit:                                        ; preds = %.lr.ph149, %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.13.0145.lcssa = phi ptr [ %.sroa.9110.0145, %.lr.ph149 ], [ %.sroa.13.0146, %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.am, %bb.aq, %.noexc81, %.noexc83, %.noexc85, %.noexc84, %.noexc82
  %.sroa.13.1.ph = phi ptr [ %.sroa.9110.1.a, %bb.aq ], [ %.sroa.9110.1.a, %.noexc81 ], [ %.sroa.9110.1.a, %.noexc82 ], [ %.sroa.9110.1.a, %.noexc83 ], [ %.sroa.9110.1.a, %.noexc84 ], [ %.sroa.9110.1.a, %.noexc85 ], [ %.sroa.13.0146, %bb.am ]
  %.sroa.0106.1.ph = phi ptr [ %.sroa.0106.2, %bb.aq ], [ %.sroa.0106.2, %.noexc81 ], [ %.sroa.0106.2, %.noexc82 ], [ %.sroa.0106.2, %.noexc83 ], [ %.sroa.0106.2, %.noexc84 ], [ %.sroa.0106.2, %.noexc85 ], [ %.sroa.0106.0147, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.1 = phi ptr [ %.sroa.13.0145.lcssa, %.loopexit ], [ %.sroa.13.1.ph, %.loopexit.split-lp ]
  %.sroa.0106.1 = phi ptr [ %.sroa.0106.0147, %.loopexit ], [ %.sroa.0106.1.ph, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !291
  br label %bb.au

.lr.ph149:                                        ; preds = %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72, %bb.ap
  %storemerge148 = phi ptr [ %i.dt, %bb.ap ], [ %i.da, %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72 ] ; 4 uses
  %.sroa.0106.0147 = phi ptr [ %.sroa.0106.2, %bb.ap ], [ null, %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72 ] ; 8 uses
  %.sroa.13.0146 = phi ptr [ %.sroa.13.2, %bb.ap ], [ null, %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72 ] ; 7 uses
  %.sroa.9110.0145 = phi ptr [ %.sroa.9110.1.a, %bb.ap ], [ null, %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit72 ] ; 4 uses
  %i.db = invoke noundef zeroext i1 @_ZN11ForkVisitor7taskifyEP8AstBegin(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %storemerge148)
          to label %bb.ai unwind label %.loopexit

bb.ai:                                            ; preds = %.lr.ph149
  br i1 %i.db, label %bb.aj, label %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %.not.i73 = icmp eq ptr %.sroa.13.0146, %.sroa.9110.0145
  br i1 %.not.i73, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %storemerge148, ptr %.sroa.13.0146, align 8, !tbaa !533
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.13.0146, i64 8
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit

bb.al:                                            ; preds = %bb.aj
  %i.dd = ptrtoint ptr %.sroa.13.0146 to i64
  %i.de = ptrtoint ptr %.sroa.0106.0147 to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 6 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.am, label %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.526) #26
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i74)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #27
          to label %.noexc76 unwind label %.loopexit ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIP8AstBeginSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  store ptr %storemerge148, ptr %i.do, align 8, !tbaa !533
  %i.dp = icmp sgt i64 %i.df, 0
  br i1 %i.dp, label %bb.an, label %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.an:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %.sroa.0106.0147, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.an, %.noexc76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0106.0147, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.0147, i64 noundef %i.df) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorIP8AstBeginSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ak, %bb.ai
  %.sroa.9110.1.a = phi ptr [ %.sroa.9110.0145, %bb.ai ], [ %i.dr, %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9110.0145, %bb.ak ] ; 9 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.0146, %bb.ai ], [ %i.dq, %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dc, %bb.ak ] ; 3 uses
  %.sroa.0106.2 = phi ptr [ %.sroa.0106.0147, %bb.ai ], [ %i.dn, %_ZNSt6vectorIP8AstBeginSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0106.0147, %bb.ak ] ; 13 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge148, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !238 ; 5 uses
  %cond = icmp eq ptr %i.dt, null
  br i1 %cond, label %._crit_edge, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIP8AstBeginSaIS1_EE9push_backERKS1_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %.sroa.0.0.copyload.i.i.i78 = load i16, ptr %i.du, align 8, !tbaa !155
  %.not6.i79 = icmp eq i16 %.sroa.0.0.copyload.i.i.i78, 472
  br i1 %.not6.i79, label %.lr.ph149, label %bb.aq, !prof !237

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dw = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.9, i32 noundef 1063)
          to label %.noexc81 unwind label %.loopexit.split-lp ; 0 uses

.noexc81:                                         ; preds = %bb.aq
  %i.dx = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc82 unwind label %.loopexit.split-lp ; 2 uses

.noexc82:                                         ; preds = %.noexc81
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull @.str.33, i64 noundef 55)
          to label %.noexc83 unwind label %.loopexit.split-lp ; 0 uses

.noexc83:                                         ; preds = %.noexc82
  %.sroa.0.0.copyload.i.i5.i80 = load i16, ptr %i.dv, align 8, !tbaa !155
  %i.dz = zext i16 %.sroa.0.0.copyload.i.i5.i80 to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !248
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %i.eb)
          to label %.noexc84 unwind label %.loopexit.split-lp ; 2 uses

.noexc84:                                         ; preds = %.noexc83
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc85 unwind label %.loopexit.split-lp ; 0 uses

.noexc85:                                         ; preds = %.noexc84
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.dt, ptr noundef nonnull align 8 dereferenceable(112) %i.ec) #26
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %.noexc85
  unreachable

._crit_edge156:                                   ; preds = %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit91, %._crit_edge
  %.not.i.i.i88 = icmp eq ptr %.sroa.0106.2, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge156
  %i.ee = ptrtoint ptr %.sroa.9110.1.a to i64
  %i.ef = ptrtoint ptr %.sroa.0106.2 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.2, i64 noundef %i.eg) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit

.lr.ph155:                                        ; preds = %._crit_edge, %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit91
  %.sroa.098.0153 = phi ptr [ %i.ei, %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit91 ], [ %.sroa.0106.2, %._crit_edge ] ; 2 uses
  %i.eh = load ptr, ptr %.sroa.098.0153, align 8, !tbaa !533 ; 2 uses
  %.not.i89 = icmp eq ptr %i.eh, null
  br i1 %.not.i89, label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit91, label %bb.as, !prof !9

bb.as:                                            ; preds = %.lr.ph155
  invoke void @_ZN7AstNode14iterateAndNextER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit91 unwind label %bb.at

_ZN9VNVisitor18iterateAndNextNullEP7AstNode.exit91: ; preds = %.lr.ph155, %bb.as
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.098.0153, i64 8 ; 2 uses
  %.not117 = icmp eq ptr %i.ei, %.sroa.13.2
  br i1 %.not117, label %._crit_edge156, label %.lr.ph155

bb.at:                                            ; preds = %bb.as
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit:         ; preds = %._crit_edge156.thread, %bb.ar, %._crit_edge156, %bb.b
  ret void

bb.au:                                            ; preds = %bb.at, %bb.ah
  %.sroa.13.3 = phi ptr [ %.sroa.9110.1.a, %bb.at ], [ %.sroa.13.1, %bb.ah ]
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.2, %bb.at ], [ %.sroa.0106.1, %bb.ah ] ; 3 uses
  %.pn40 = phi { ptr, i32 } [ %i.ej, %bb.at ], [ %lpad.phi, %bb.ah ] ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %.sroa.0106.3, null
  br i1 %.not.i.i.i92, label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit93, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ek = ptrtoint ptr %.sroa.13.3 to i64
  %i.el = ptrtoint ptr %.sroa.0106.3 to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0106.3, i64 noundef %i.em) #24
  br label %_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit93

_ZNSt6vectorIP8AstBeginSaIS1_EED2Ev.exit93:       ; preds = %bb.av, %bb.au, %bb.ae, %bb.s
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.ae ], [ %.pn35.pn, %bb.s ], [ %.pn40, %bb.au ], [ %.pn40, %bb.av ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor5visitEP23AstInitialAutomaticStmt(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !291, !range !65, !noundef !66 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !535
  invoke void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN9VNVisitor15iterateChildrenEP7AstNode.exit unwind label %bb.b

_ZN9VNVisitor15iterateChildrenEP7AstNode.exit:    ; preds = %bb.a
  store i8 %i.b, ptr %i.a, align 1, !tbaa !291
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i8 %i.b, ptr %i.a, align 1, !tbaa !291
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor5visitEP20AstInitialStaticStmt(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !291, !range !65, !noundef !66 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !535
  invoke void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN9VNVisitor15iterateChildrenEP7AstNode.exit unwind label %bb.b

_ZN9VNVisitor15iterateChildrenEP7AstNode.exit:    ; preds = %bb.a
  store i8 %i.b, ptr %i.a, align 1, !tbaa !291
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i8 %i.b, ptr %i.a, align 1, !tbaa !291
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor5visitEP13AstNodeModule(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !215  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !415 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN9VNVisitor15iterateChildrenEP7AstNode.exit unwind label %bb.c

_ZN9VNVisitor15iterateChildrenEP7AstNode.exit:    ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !537  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit, label %bb.b

bb.b:                                             ; preds = %_ZN9VNVisitor15iterateChildrenEP7AstNode.exit
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(306) %1, ptr noundef nonnull %i.f)
          to label %_ZN13AstNodeModule9addStmtspEP7AstNode.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = extractelement <2 x ptr> %i.e, i64 1
  store ptr %i.h, ptr %i.d, align 8, !tbaa !538
  store i64 %i.c, ptr %i.b, align 8, !tbaa !215
  %i.i = extractelement <2 x ptr> %i.e, i64 0
  store ptr %i.i, ptr %i.a, align 8, !tbaa !292
  resume { ptr, i32 } %i.g

_ZN13AstNodeModule9addStmtspEP7AstNode.exit:      ; preds = %bb.b, %_ZN9VNVisitor15iterateChildrenEP7AstNode.exit
  store i64 %i.c, ptr %i.b, align 8, !tbaa !215
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !415
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor5visitEP10AstThisRef(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor5visitEP6AstVar(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !529, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !120 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167  ; 2 uses
  %i.h = icmp ult ptr %1, %i.g                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.h, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !120 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !523

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.h, label %._crit_edge.thread.i.i.i, label %bb.d

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = icmp eq ptr %.019.lcssa29.i.i.i, %i.j
  br i1 %i.k, label %select.unfold.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !167
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %i.m = phi ptr [ %.pre.i.i, %bb.c ], [ %i.g, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.c ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.n = icmp ult ptr %i.m, %1
  br i1 %i.n, label %select.unfold.i.i, label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

select.unfold.i.i:                                ; preds = %bb.d, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.d ] ; 3 uses
  %i.o = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.e
  br i1 %i.o, label %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !167
  %i.r = icmp ult ptr %1, %i.q
  br label %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.e, %select.unfold.i.i
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %select.unfold.i.i ]
  %i.t = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %1, ptr %i.u, align 8, !tbaa !167
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !106
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !106
  br label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE6insertERKS1_.exit

_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor5visitEP9AstVarRef(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !529, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13AstNodeVarRef4varpEP6AstVar.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !156  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  %i.g = load i64, ptr %i.f, align 4
  %i.h = and i64 %i.g, 8192
  %.not43 = icmp eq i64 %i.h, 0
  br i1 %.not43, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.i, align 8, !tbaa !232
  %i.j = icmp eq i8 %.sroa.0.0.copyload.i.i, 21
  br i1 %i.j, label %_ZN13AstNodeVarRef4varpEP6AstVar.exit, label %bb.d
end_hunk_3
begin_hunk_4_@_ZN7AstNode2asI8AstBeginS_EEPT_PT0_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ForkVisitor39moveForkSentinelAfterDisableQueuePushesEP8AstBegin(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 6 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8AstBegin9addStmtspEP7AstNode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.c, align 8, !tbaa !155
  %i.d = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 419
  br i1 %i.d, label %_ZN7AstNode4castI8AstDelayS_EEPKT_PKT0_.exit.i, label %_ZN8AstBegin9addStmtspEP7AstNode.exit

_ZN7AstNode4castI8AstDelayS_EEPKT_PKT0_.exit.i:   ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !285  ; 3 uses
  %.not.i9.i = icmp eq ptr %i.f, null
  br i1 %.not.i9.i, label %_ZN8AstBegin9addStmtspEP7AstNode.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7AstNode4castI8AstDelayS_EEPKT_PKT0_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.0.0.copyload.i.i.i10.i = load i16, ptr %i.g, align 8, !tbaa !155
  %i.h = icmp eq i16 %.sroa.0.0.copyload.i.i.i10.i, 121
  br i1 %i.h, label %_ZN11ForkVisitor27isForkJoinNoneSentinelDelayEPK7AstNode.exit, label %_ZN8AstBegin9addStmtspEP7AstNode.exit

_ZN11ForkVisitor27isForkJoinNoneSentinelDelayEPK7AstNode.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.j = tail call noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56) %i.i)
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.d, label %_ZN8AstBegin9addStmtspEP7AstNode.exit

bb.d:                                             ; preds = %_ZN11ForkVisitor27isForkJoinNoneSentinelDelayEPK7AstNode.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.017 = load ptr, ptr %i.l, align 8, !tbaa !238 ; 2 uses
  %.not18 = icmp eq ptr %.017, null
  br i1 %.not18, label %_ZN8AstBegin9addStmtspEP7AstNode.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.019 = phi ptr [ %.0, %bb.e ], [ %.017, %bb.d ] ; 4 uses
  %i.m = tail call noundef zeroext i1 @_ZN11ForkVisitor26isDisableQueuePushSelfStmtEPK7AstNode(ptr noundef nonnull %.019)
  br i1 %i.m, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %.0 = load ptr, ptr %i.n, align 8, !tbaa !238   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !542

.critedge:                                        ; preds = %bb.e
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !238
  %i.o = icmp eq ptr %.pre, null
  br i1 %i.o, label %_ZN8AstBegin9addStmtspEP7AstNode.exit, label %bb.g

.critedge.thread:                                 ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !238
  %i.q = icmp eq ptr %.019, %i.p
  br i1 %i.q, label %_ZN8AstBegin9addStmtspEP7AstNode.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.thread
  %i.r = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef null)
  tail call void @_ZN7AstNode17addHereThisAsNextEPS_(ptr noundef nonnull align 8 dereferenceable(152) %.019, ptr noundef %i.r)
  br label %_ZN8AstBegin9addStmtspEP7AstNode.exit

bb.g:                                             ; preds = %.critedge
  %i.s = tail call noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef null) ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i.i14, label %_ZN8AstBegin9addStmtspEP7AstNode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.s)
  br label %_ZN8AstBegin9addStmtspEP7AstNode.exit

_ZN8AstBegin9addStmtspEP7AstNode.exit:            ; preds = %bb.d, %bb.c, %_ZN7AstNode4castI8AstDelayS_EEPKT_PKT0_.exit.i, %bb.a, %bb.b, %bb.h, %bb.g, %.critedge.thread, %.critedge, %bb.f, %_ZN11ForkVisitor27isForkJoinNoneSentinelDelayEPK7AstNode.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11ForkVisitor7taskifyEP8AstBegin(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<AstVar *, AstVar *, std::_Identity<AstVar *>, std::less<AstVar *>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %class.VRestorer.232, align 8       ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !543
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN9VRestorerISt3setIP6AstVarSt4lessIS2_ESaIS2_EEEC2ERS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.i, ptr %2, align 8, !tbaa !545
  %i.j = call noundef ptr @_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_M_copyILb0ENS7_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS1_ESC_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i, %bb.b
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !379  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !547

_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !120
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378  ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.d, label %bb.c, !llvm.loop !548

bb.d:                                             ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.e, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !106
  store i64 %i.p, ptr %i.f, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr %i.j, ptr %i.c, align 8, !tbaa !120
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !103
  br label %_ZN9VRestorerISt3setIP6AstVarSt4lessIS2_ESaIS2_EEEC2ERS6_.exit

_ZN9VRestorerISt3setIP6AstVarSt4lessIS2_ESaIS2_EEEC2ERS6_.exit: ; preds = %bb.a, %bb.d
  %i.q = phi ptr [ null, %bb.a ], [ %.pre, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !167  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !549  ; 2 uses
  invoke void @_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.q)
          to label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE5clearEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN9VRestorerISt3setIP6AstVarSt4lessIS2_ESaIS2_EEEC2ERS6_.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE5clearEv.exit: ; preds = %_ZN9VRestorerISt3setIP6AstVarSt4lessIS2_ESaIS2_EEEC2ERS6_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.x, ptr %i.z, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN9VNVisitor7iterateEP7AstNode.exit unwind label %bb.g, !inline_history !289

_ZN9VNVisitor7iterateEP7AstNode.exit:             ; preds = %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE5clearEv.exit
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !106
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN9VNVisitor7iterateEP7AstNode.exit
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !550
  %.not = icmp ne ptr %i.ag, null
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1912), align 8, !range !65
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.ai
  br i1 %or.cond, label %bb.h, label %bb.ak

bb.g:                                             ; preds = %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE5clearEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.h:                                             ; preds = %bb.f, %_ZN9VNVisitor7iterateEP7AstNode.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !229 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !551 ; 6 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !551
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.ap = icmp ult i64 %i.an, 10
  br i1 %i.ap, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.n
  %.02229.i.i = phi i64 [ %i.aw, %bb.n ], [ %i.an, %bb.h ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.ax, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %i.aq = icmp ult i64 %.02229.i.i, 100
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %bb.j
  %i.au = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = udiv i64 %.02229.i.i, 10000
  %i.ax = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.ay = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.ay, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !405

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.022.i.i = phi i32 [ %i.av, %bb.m ], [ %i.ar, %bb.i ], [ %i.at, %bb.k ], [ 1, %bb.h ], [ %i.ax, %bb.n ]
  %i.az = zext i32 %.022.i.i to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !18, !alias.scope !552
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.az, i8 noundef signext 0)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bb = load ptr, ptr %5, align 8, !tbaa !10, !alias.scope !552 ; 4 uses
  %i.bc = icmp ugt i64 %i.an, 99
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16, !alias.scope !552
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.bf, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bj, %.lr.ph.i4.i ], [ %i.an, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bt, %.lr.ph.i4.i ], [ %i.bg, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bh = urem i64 %.020.i.i, 100
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17, !noalias !552
  %i.bn = zext i32 %.01819.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !17
  %i.bp = load i8, ptr %i.bk, align 2, !tbaa !17, !noalias !552
  %i.bq = add i32 %.01819.i.i, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.br
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !17
  %i.bt = add i32 %.01819.i.i, -2
  %i.bu = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bu, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !406

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %i.an, %.noexc ], [ %i.bj, %.lr.ph.i4.i ] ; 3 uses
  %i.bv = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17, !noalias !552
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !17
  %i.cb = load i8, ptr %i.bx, align 2, !tbaa !17, !noalias !552
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cc = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.cd = or disjoint i8 %i.cc, 48
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge.i.i = phi i8 [ %i.cd, %bb.p ], [ %i.cb, %bb.o ]
  store i8 %storemerge.i.i, ptr %i.bb, align 1, !tbaa !17
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.557, i64 noundef 12)
          to label %.noexc34 unwind label %bb.z   ; 6 uses

.noexc34:                                         ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cf, ptr %4, align 8, !tbaa !18, !alias.scope !555
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.r:                                             ; preds = %.noexc34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !16 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc34
  store ptr %i.cg, ptr %4, align 8, !tbaa !10, !alias.scope !555
  %i.cn = load i64, ptr %i.ch, align 8, !tbaa !17
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !17, !alias.scope !555
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %i.co = phi i64 [ %i.ck, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !16, !alias.scope !555
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !10
  store i64 0, ptr %i.cp, align 8, !tbaa !16
  store i8 0, ptr %i.ch, align 8, !tbaa !17
  %i.cr = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ba
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.s
  %i.ct = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cv = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #27
          to label %bb.t unwind label %bb.aa      ; 7 uses

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load ptr, ptr %i.r, align 8, !tbaa !550
  invoke void @_ZN12AstNodeFTaskC2E6VNTypeP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7AstNode(ptr noundef nonnull align 8 dereferenceable(272) %i.cv, i16 375, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cw)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV7AstTask, i64 16), ptr %i.cv, align 8, !tbaa !67
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !537
  %i.cz = invoke noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef %i.cy, ptr noundef nonnull %i.cv)
          to label %_ZN7AstNode7addNextI7AstTaskS1_EEPT_S3_PT0_.exit unwind label %bb.aa

_ZN7AstNode7addNextI7AstTaskS1_EEPT_S3_PT0_.exit: ; preds = %bb.u
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !537
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !285 ; 2 uses
  %.not27 = icmp eq ptr %i.db, null
  br i1 %.not27, label %_ZN7AstTask9addStmtspEP7AstNode.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7AstNode7addNextI7AstTaskS1_EEPT_S3_PT0_.exit
  %i.dc = invoke noundef ptr @_ZN7AstNode20unlinkFrBackWithNextEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.db, ptr noundef null)
          to label %bb.w unwind label %bb.aa      ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZN7AstTask9addStmtspEP7AstNode.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN7AstNode7addOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(272) %i.cv, ptr noundef nonnull %i.dc)
          to label %_ZN7AstTask9addStmtspEP7AstNode.exit unwind label %bb.aa

bb.y:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

bb.z:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ba
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.z
  %i.dh = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.y ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %i.de, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.aa:                                            ; preds = %bb.ae, %bb.x, %bb.u, %bb.ac, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 272) #24
  br label %.body

_ZN7AstTask9addStmtspEP7AstNode.exit:             ; preds = %bb.w, %bb.x, %_ZN7AstNode7addNextI7AstTaskS1_EEPT_S3_PT0_.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !277 ; 2 uses
  %.not28 = icmp eq ptr %i.dm, null
  br i1 %.not28, label %_ZN7AstTask9addStmtspEP7AstNode.exit44, label %bb.ac

bb.ac:                                            ; preds = %_ZN7AstTask9addStmtspEP7AstNode.exit
  %i.dn = invoke noundef ptr @_ZN7AstNode20unlinkFrBackWithNextEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.dm, ptr noundef null)
          to label %bb.ad unwind label %bb.aa     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i42 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i42, label %_ZN7AstTask9addStmtspEP7AstNode.exit44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN7AstNode7addOp3pEPS_(ptr noundef nonnull align 8 dereferenceable(272) %i.cv, ptr noundef nonnull %i.dn)
          to label %_ZN7AstTask9addStmtspEP7AstNode.exit44 unwind label %bb.aa

end_hunk_4
