Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_split?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK9seq_split16split_membershipEP4exprS1_jR6vectorI10split_pairLb1EjE:bb.a
  store i32 %i.ov, ptr %i.ot, align 4, !tbaa !87
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !87
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !87
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !87
  store i32 %i.pb, ptr %i.oz, align 4, !tbaa !87
  %indvars.iv.next.i.i.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv.next.i.i.i.i.i.i.i.2
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.i.2
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !87
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !87
  %indvars.iv.next.i.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.3, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !333

_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i.i.i: ; preds = %.noexc242, %._crit_edge.i.i.i.i.i.i.i
  %.pre2.i.i.i.i.i.i = phi i32 [ %i.of, %._crit_edge.i.i.i.i.i.i.i ], [ %.pre2.pre.i.i.i.i.i.i, %.noexc242 ]
  store ptr %i.oe, ptr %12, align 8, !tbaa !93
  store i32 %i.ob, ptr %i.mk, align 4, !tbaa !95
  br label %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i.i.i.i

_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i.i.i.i: ; preds = %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.pf = phi i32 [ %i.nz, %._crit_edge.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i.i.i ]
  %i.pg = phi ptr [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.oe, %_ZN6bufferIjLb1ELj16EE6expandEv.exit.i.i.i.i.i.i ]
  %i.ph = zext i32 %i.pf to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.ph
  %i.pj = load i32, ptr %.sroa.04.09.i.i.i.i.i, align 4, !tbaa !87
  store i32 %i.pj, ptr %i.pi, align 4, !tbaa !87
  %i.pk = load i32, ptr %i.mj, align 8, !tbaa !94
  %i.pl = add i32 %i.pk, 1                        ; 2 uses
  store i32 %i.pl, ptr %i.mj, align 8, !tbaa !94
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 4 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.nx
  br i1 %i.pn, label %_ZN7zstringaSEOS_.exit.loopexit, label %.lr.ph.i.i.i.i.i

_ZN7zstringaSEOS_.exit.loopexit:                  ; preds = %_ZN6bufferIjLb1ELj16EE9push_backERKj.exit.i.i.i.i.i
  %.pre586 = load ptr, ptr %13, align 8, !tbaa !93
  br label %_ZN7zstringaSEOS_.exit

_ZN7zstringaSEOS_.exit:                           ; preds = %_ZN7zstringaSEOS_.exit.loopexit, %bb.cb
  %i.po = phi ptr [ %.pre586, %_ZN7zstringaSEOS_.exit.loopexit ], [ %i.nv, %bb.cb ] ; 3 uses
  %.not.i.i.i.i243 = icmp eq ptr %i.po, %i.mm
  %i.pp = icmp eq ptr %i.po, null
  %or.cond.i.i.i.i244 = or i1 %.not.i.i.i.i243, %i.pp
  br i1 %or.cond.i.i.i.i244, label %_ZN7zstringD2Ev.exit245, label %bb.ce

bb.ce:                                            ; preds = %_ZN7zstringaSEOS_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.po)
          to label %_ZN7zstringD2Ev.exit245 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pq = landingpad { ptr, i32 }
          catch ptr null
  %i.pr = extractvalue { ptr, i32 } %i.pq, 0
  call void @__clang_call_terminate(ptr %i.pr) #22
  unreachable

_ZN7zstringD2Ev.exit245:                          ; preds = %_ZN7zstringaSEOS_.exit, %bb.ce
  %i.ps = load ptr, ptr %14, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i246 = icmp eq ptr %i.ps, %i.mn
  %i.pt = icmp eq ptr %i.ps, null
  %or.cond.i.i.i.i247 = or i1 %.not.i.i.i.i246, %i.pt
  br i1 %or.cond.i.i.i.i247, label %_ZN7zstringD2Ev.exit248, label %bb.cg

bb.cg:                                            ; preds = %_ZN7zstringD2Ev.exit245
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ps)
          to label %_ZN7zstringD2Ev.exit248 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pu = landingpad { ptr, i32 }
          catch ptr null
  %i.pv = extractvalue { ptr, i32 } %i.pu, 0
  call void @__clang_call_terminate(ptr %i.pv) #22
  unreachable

_ZN7zstringD2Ev.exit248:                          ; preds = %_ZN7zstringD2Ev.exit245, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %._crit_edge497, label %bb.bp, !llvm.loop !334

bb.ci:                                            ; preds = %bb.bz
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cj:                                            ; preds = %bb.ca
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cd, %bb.cc
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %13) #20
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn145 = phi { ptr, i32 } [ %i.py, %bb.ck ], [ %i.px, %bb.cj ]
  call void @_ZN7zstringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #20
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ci
  %.pn145.pn = phi { ptr, i32 } [ %.pn145, %bb.cl ], [ %i.pw, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bu
  %.pn145.pn.pn = phi { ptr, i32 } [ %.pn145.pn, %bb.cm ], [ %i.nq, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.du

._crit_edge497:                                   ; preds = %_ZN7zstringD2Ev.exit248
  %.pre587 = load i32, ptr %i.mj, align 8, !tbaa !94
  %i.pz = icmp eq i32 %.pre587, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  br i1 %i.pz, label %bb.co, label %"_ZNSt8functionIFbP4exprS1_EEaSIZNK9seq_split16split_membershipES1_S1_jR6vectorI10split_pairLb1EjEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS3_E4typeEOSC_.exit"

"_ZNSt8functionIFbP4exprS1_EEaSIZNK9seq_split16split_membershipES1_S1_jR6vectorI10split_pairLb1EjEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS3_E4typeEOSC_.exit": ; preds = %._crit_edge497
  store ptr %1, ptr %15, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %12, ptr %.sroa.4.0..sroa_idx, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @"_ZNSt17_Function_handlerIFbP4exprS1_EZNK9seq_split16split_membershipES1_S1_jR6vectorI10split_pairLb1EjEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.qa, align 8, !tbaa !60
  %i.qb = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr @"_ZNSt17_Function_handlerIFbP4exprS1_EZNK9seq_split16split_membershipES1_S1_jR6vectorI10split_pairLb1EjEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SD_", ptr %i.qb, align 8, !tbaa !60
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge497.thread, %"_ZNSt8functionIFbP4exprS1_EEaSIZNK9seq_split16split_membershipES1_S1_jR6vectorI10split_pairLb1EjEE3$_0EENSt9enable_ifIXsr9_CallableIT_EE5valueERS3_E4typeEOSC_.exit", %._crit_edge497
  %i.qc = load ptr, ptr %i.la, align 8, !tbaa !47, !nonnull !31, !align !32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 152
  %i.qe = invoke noundef zeroext i1 @_ZN9seq_split7computeEP4exprR6vectorI10split_pairLb1EjEj10split_modeRKSt8functionIFbS1_S1_EE(ptr noundef nonnull align 8 dereferenceable(192) %i.qd, ptr noundef %.0132422, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN12seq_rewriter5splitEP4exprR6vectorI10split_pairLb1EjEj10split_modeRKSt8functionIFbS1_S1_EE.exit unwind label %bb.cv

_ZN12seq_rewriter5splitEP4exprR6vectorI10split_pairLb1EjEj10split_modeRKSt8functionIFbS1_S1_EE.exit: ; preds = %bb.co
  br i1 %i.qe, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %_ZN12seq_rewriter5splitEP4exprR6vectorI10split_pairLb1EjEj10split_modeRKSt8functionIFbS1_S1_EE.exit
  %i.qf = load ptr, ptr %5, align 8, !tbaa !86
  %.not.i.i251 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i251, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit256, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN6vectorI10split_pairLb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc252 unwind label %bb.cv

.noexc252:                                        ; preds = %bb.cq
  %i.qg = load ptr, ptr %5, align 8, !tbaa !86
  %i.qh = getelementptr inbounds i8, ptr %i.qg, i64 -4
  store i32 0, ptr %i.qh, align 4, !tbaa !87
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit256

_ZN7obj_refI4expr11ast_managerED2Ev.exit256:      ; preds = %.noexc252, %bb.cp
  %i.qi = load ptr, ptr %1, align 8, !tbaa !55, !nonnull !31, !align !32
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit275

bb.cr:                                            ; preds = %_ZN12seq_rewriter5splitEP4exprR6vectorI10split_pairLb1EjEj10split_modeRKSt8functionIFbS1_S1_EE.exit
  invoke void @_ZNK9seq_split8simplifyER6vectorI10split_pairLb1EjE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.qj = load i32, ptr %i.mj, align 8, !tbaa !94
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.dm, label %.preheader

.preheader:                                       ; preds = %bb.cs
  %i.ql = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %.critedge359, label %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit.lr.ph: ; preds = %.preheader
  %i.qn = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit

_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit:       ; preds = %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit.lr.ph, %bb.dl
  %indvars.iv575 = phi i64 [ 0, %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next576, %bb.dl ] ; 4 uses
  %i.qo = phi ptr [ %i.ql, %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit.lr.ph ], [ %i.tx, %bb.dl ] ; 2 uses
  %.091509 = phi i32 [ 0, %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit.lr.ph ], [ %.1, %bb.dl ] ; 4 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qo, i64 -4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !87
  %i.qr = zext i32 %i.qq to i64
  %i.qs = icmp samesign ult i64 %indvars.iv575, %i.qr
  br i1 %i.qs, label %bb.ct, label %.critedge359

bb.ct:                                            ; preds = %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit
  %i.qt = getelementptr inbounds nuw [32 x i8], ptr %i.qo, i64 %indvars.iv575
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !41, !nonnull !31, !noundef !31
  br label %.lr.ph503

.lr.ph503:                                        ; preds = %bb.ct, %_ZN7obj_refI4expr11ast_managerED2Ev.exit260
  %.0500 = phi i32 [ %18, %_ZN7obj_refI4expr11ast_managerED2Ev.exit260 ], [ 0, %bb.ct ] ; 4 uses
  %.090499 = phi ptr [ %i.rs, %_ZN7obj_refI4expr11ast_managerED2Ev.exit260 ], [ %i.qv, %bb.ct ] ; 7 uses
  %i.qw = load ptr, ptr %i.la, align 8, !tbaa !47, !nonnull !31, !align !32 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !54
  %i.qz = getelementptr inbounds nuw i8, ptr %.090499, i64 4
  %i.ra = load i32, ptr %i.qz, align 4
  %i.rb = and i32 %i.ra, 65535
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %bb.cu, label %.lr.ph503._ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread_crit_edge

.lr.ph503._ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread_crit_edge: ; preds = %.lr.ph503
  %.old.pre = load i32, ptr %i.mj, align 8, !tbaa !94
  br label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread

bb.cu:                                            ; preds = %.lr.ph503
  %i.rd = getelementptr inbounds nuw i8, ptr %.090499, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !64
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i258 = icmp eq ptr %i.rg, null
  %.old.pre588 = load i32, ptr %i.mj, align 8     ; 2 uses
  br i1 %.not.i.i.i.i258, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit

_ZNK8seq_util3rex8is_emptyEPK4expr.exit:          ; preds = %bb.cu
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !73
  %i.ri = icmp ne i32 %i.rh, %i.qy
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.rk = load i32, ptr %i.rj, align 4
  %i.rl = icmp ne i32 %i.rk, 36
  %.not358 = select i1 %i.ri, i1 true, i1 %i.rl
  %i.rm = icmp ult i32 %.0500, %.old.pre588
  %or.cond = select i1 %.not358, i1 %i.rm, i1 false
  br i1 %or.cond, label %bb.cw, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread._crit_edge

_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread:   ; preds = %.lr.ph503._ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread_crit_edge, %bb.cu
  %.old = phi i32 [ %.old.pre, %.lr.ph503._ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread_crit_edge ], [ %.old.pre588, %bb.cu ]
  %.old355 = icmp ult i32 %.0500, %.old
  br i1 %.old355, label %bb.cw, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread._crit_edge

bb.cv:                                            ; preds = %bb.cq, %bb.co, %bb.cr
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.cw:                                            ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ro = load ptr, ptr %12, align 8, !tbaa !93
  %17 = zext i32 %.0500 to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %17
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !87
  %i.rr = invoke noundef ptr @_ZNK8seq_util7mk_charEj(ptr noundef nonnull align 8 dereferenceable(144) %i.qw, i32 noundef %i.rq)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN12seq_rewriter13mk_derivativeEP4exprS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.1) align 8 %16, ptr noundef nonnull align 8 dereferenceable(1800) %i.qw, ptr noundef %i.rr, ptr noundef nonnull %.090499)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.rs = load ptr, ptr %16, align 8, !tbaa !41, !nonnull !31, !noundef !31 ; 3 uses
  %i.rt = load ptr, ptr %i.qn, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !57
  %i.rw = add i32 %i.rv, -1                       ; 2 uses
  store i32 %i.rw, ptr %i.ru, align 4, !tbaa !57
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.cz, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit260

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rt, ptr noundef nonnull %i.rs)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit260 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  %i.rz = extractvalue { ptr, i32 } %i.ry, 0
  call void @__clang_call_terminate(ptr %i.rz) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit260:      ; preds = %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %18 = add nuw i32 %.0500, 1
  br label %.lr.ph503, !llvm.loop !335

bb.db:                                            ; preds = %bb.cx, %bb.cw
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.dr

_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread._crit_edge: ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread
  %i.sb = load ptr, ptr %i.la, align 8, !tbaa !47, !nonnull !31, !align !32
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 72
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !54
  %i.se = getelementptr inbounds nuw i8, ptr %.090499, i64 4
  %i.sf = load i32, ptr %i.se, align 4
  %i.sg = and i32 %i.sf, 65535
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %bb.dc, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262.thread

bb.dc:                                            ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread._crit_edge
  %i.si = getelementptr inbounds nuw i8, ptr %.090499, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i261 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i261, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262.thread, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262

_ZNK8seq_util3rex8is_emptyEPK4expr.exit262:       ; preds = %bb.dc
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !73
  %i.sn = icmp eq i32 %i.sm, %i.sd
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sp = load i32, ptr %i.so, align 4
  %i.sq = icmp eq i32 %i.sp, 36
  %i.sr = select i1 %i.sn, i1 %i.sq, i1 false
  br i1 %i.sr, label %bb.dl, label %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262.thread

_ZNK8seq_util3rex8is_emptyEPK4expr.exit262.thread: ; preds = %bb.dc, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit.thread._crit_edge, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262
  %i.ss = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.st = getelementptr inbounds nuw [32 x i8], ptr %i.ss, i64 %indvars.iv575
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i, label %bb.dd, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262.thread
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !57
  %i.sx = add i32 %i.sw, 1
  store i32 %i.sx, ptr %i.sv, align 4, !tbaa !57
  br label %bb.dd

bb.dd:                                            ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262.thread, %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %.090499, i64 8 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !57
  %i.ta = add i32 %i.sz, 1
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !57
  %i.tb = add i32 %.091509, 1
  %i.tc = zext i32 %.091509 to i64
  %i.td = getelementptr inbounds nuw [32 x i8], ptr %i.ss, i64 %i.tc ; 5 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i264 = icmp eq ptr %i.te, null
  br i1 %.not.i.i.i264, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !57
  %i.tj = add i32 %i.ti, -1                       ; 2 uses
  store i32 %i.tj, ptr %i.th, align 4, !tbaa !57
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.tg, ptr noundef nonnull %i.te)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tl = landingpad { ptr, i32 }
          catch ptr null
  %i.tm = extractvalue { ptr, i32 } %i.tl, 0
  call void @__clang_call_terminate(ptr %i.tm) #22
  unreachable

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.dd
  store ptr %i.su, ptr %i.td, align 8, !tbaa !41
  %i.tn = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !41 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.to, null
  br i1 %.not.i.i4.i, label %_ZN10split_pairD2Ev.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.tp = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !59, !nonnull !31, !align !32
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 8 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !57
  %i.tt = add i32 %i.ts, -1                       ; 2 uses
  store i32 %i.tt, ptr %i.tr, align 4, !tbaa !57
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %bb.dj, label %_ZN10split_pairD2Ev.exit

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.tq, ptr noundef nonnull %i.to)
          to label %_ZN10split_pairD2Ev.exit unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tv = landingpad { ptr, i32 }
          catch ptr null
  %i.tw = extractvalue { ptr, i32 } %i.tv, 0
  call void @__clang_call_terminate(ptr %i.tw) #22
  unreachable

_ZN10split_pairD2Ev.exit:                         ; preds = %bb.dj, %bb.di, %bb.dh
  store ptr %.090499, ptr %i.tn, align 8, !tbaa !41
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262, %_ZN10split_pairD2Ev.exit
  %.1 = phi i32 [ %i.tb, %_ZN10split_pairD2Ev.exit ], [ %.091509, %_ZNK8seq_util3rex8is_emptyEPK4expr.exit262 ] ; 2 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1
  %i.tx = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %.critedge359, label %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit, !llvm.loop !336

.critedge359:                                     ; preds = %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit, %bb.dl, %.preheader
  %.091.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %bb.dl ], [ %.091509, %_ZNK6vectorI10split_pairLb1EjE4sizeEv.exit ]
  call void @_ZN6vectorI10split_pairLb1EjE6shrinkEj(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %.091.lcssa)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.cs, %.critedge359
  %i.tz = load ptr, ptr %1, align 8, !tbaa !55, !nonnull !31, !align !32 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.094.lcssa, i64 8 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !57
  %i.uc = add i32 %i.ub, 1
  store i32 %i.uc, ptr %i.ua, align 4, !tbaa !57
  %.not.i.i269 = icmp eq ptr %.193, null
  br i1 %.not.i.i269, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit275, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i270

_ZN11ast_manager7inc_refEP3ast.exit.i.i270:       ; preds = %bb.dm
  %i.ud = getelementptr inbounds nuw i8, ptr %.193, i64 8 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !57
  %i.uf = add i32 %i.ue, 1
  store i32 %i.uf, ptr %i.ud, align 4, !tbaa !57
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit275

_ZN7obj_refI4expr11ast_managerED2Ev.exit275:      ; preds = %bb.dm, %_ZN11ast_manager7inc_refEP3ast.exit.i.i270, %_ZN7obj_refI4expr11ast_managerED2Ev.exit256
  %.094.lcssa.sink = phi ptr [ null, %_ZN7obj_refI4expr11ast_managerED2Ev.exit256 ], [ %.094.lcssa, %_ZN11ast_manager7inc_refEP3ast.exit.i.i270 ], [ %.094.lcssa, %bb.dm ]
  %.sink755 = phi ptr [ %i.qi, %_ZN7obj_refI4expr11ast_managerED2Ev.exit256 ], [ %i.tz, %_ZN11ast_manager7inc_refEP3ast.exit.i.i270 ], [ %i.tz, %bb.dm ] ; 2 uses
  %.193.sink = phi ptr [ null, %_ZN7obj_refI4expr11ast_managerED2Ev.exit256 ], [ %.193, %_ZN11ast_manager7inc_refEP3ast.exit.i.i270 ], [ %.193, %bb.dm ]
  store ptr %.094.lcssa.sink, ptr %0, align 8, !tbaa !41
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink755, ptr %i.ug, align 8, !tbaa !33
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.193.sink, ptr %i.uh, align 8, !tbaa !41
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink755, ptr %i.ui, align 8, !tbaa !33
  %i.uj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !81 ; 2 uses
  %.not.i = icmp eq ptr %i.uk, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit275
  %i.ul = invoke noundef zeroext i1 %i.uk(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.do ; 0 uses

bb.do:                                            ; preds = %bb.dn
  %i.um = landingpad { ptr, i32 }
          catch ptr null
  %i.un = extractvalue { ptr, i32 } %i.um, 0
  call void @__clang_call_terminate(ptr %i.un) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit275, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.uo = load ptr, ptr %12, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i.i276 = icmp eq ptr %i.uo, %i.mi
  %i.up = icmp eq ptr %i.uo, null
  %or.cond.i.i.i.i277 = or i1 %.not.i.i.i.i276, %i.up
  br i1 %or.cond.i.i.i.i277, label %_ZN7zstringD2Ev.exit278, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.uo)
          to label %_ZN7zstringD2Ev.exit278 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.uq = landingpad { ptr, i32 }
          catch ptr null
  %i.ur = extractvalue { ptr, i32 } %i.uq, 0
  call void @__clang_call_terminate(ptr %i.ur) #22
  unreachable

_ZN7zstringD2Ev.exit278:                          ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.dv

bb.dr:                                            ; preds = %bb.db, %bb.cv
  %.pn142.pn = phi { ptr, i32 } [ %i.sa, %bb.db ], [ %i.rn, %bb.cv ]
  %i.us = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !81 ; 2 uses
  %.not.i279 = icmp eq ptr %i.ut, null
  br i1 %.not.i279, label %_ZNSt14_Function_baseD2Ev.exit280, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
end_hunk_0
