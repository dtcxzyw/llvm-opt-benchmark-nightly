inline.NumInlined: 851
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp7Blender9DNAParser5ParseEv:bb.a
  %i.ac = load i8, ptr %i.ab, align 8, !range !5, !noundef !3
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = and i32 %i.aa, 255
  br label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit:  ; preds = %bb.m, %bb.n
  %.sroa.8.0.i.i = phi i32 [ %.sroa.8.0.extract.shift.i.i, %bb.m ], [ %.sroa.6.0.extract.shift.i.i, %bb.n ]
  %.sroa.6.0.in.i.i = phi i32 [ %.sroa.6.0.extract.shift.i.i, %bb.m ], [ %.sroa.8.0.extract.shift.i.i, %bb.n ]
  %.sroa.02.0.in.i.i = phi i32 [ %i.aa, %bb.m ], [ %.sroa.10.0.extract.shift.i.i, %bb.n ] ; 2 uses
  %.sroa.10.0.i.i = phi i32 [ %.sroa.10.0.extract.shift.i.i, %bb.m ], [ %i.ae, %bb.n ]
  store ptr %i.u, ptr %i.s, align 8
  %.sroa.10.0.insert.shift.i.i = shl nuw i32 %.sroa.10.0.i.i, 24 ; 3 uses
  %.sroa.8.0.insert.ext.i.i = shl i32 %.sroa.8.0.i.i, 16
  %.sroa.8.0.insert.shift.i.i = and i32 %.sroa.8.0.insert.ext.i.i, 16711680 ; 2 uses
  %.sroa.6.0.insert.ext.i.i = shl nuw i32 %.sroa.6.0.in.i.i, 8
  %.sroa.6.0.insert.shift.i.i = and i32 %.sroa.6.0.insert.ext.i.i, 65280 ; 2 uses
  %.sroa.02.0.insert.ext.i.i = and i32 %.sroa.02.0.in.i.i, 255 ; 2 uses
  %.sroa.8.0.insert.insert.i.i = or disjoint i32 %.sroa.02.0.insert.ext.i.i, %.sroa.8.0.insert.shift.i.i
  %i.af = or disjoint i32 %.sroa.8.0.insert.insert.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.02.0.insert.insert.i.i = or disjoint i32 %i.af, %.sroa.10.0.insert.shift.i.i ; 2 uses
  %i.ag = sext i32 %.sroa.02.0.insert.insert.i.i to i64 ; 4 uses
  %i.ah = icmp slt i32 %.sroa.10.0.insert.shift.i.i, 0
  br i1 %i.ah, label %bb.o, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.o:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #21
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI4Ev.exit
  %.not.i.i.i.i = icmp eq i32 %.sroa.02.0.insert.insert.i.i, 0
  br i1 %.not.i.i.i.i, label %.loopexit331.thread, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

.loopexit331.thread:                              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.preheader324

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.aj = shl nuw nsw i64 %i.ag, 5
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #22
          to label %.noexc137 unwind label %bb.p  ; 5 uses

.noexc137:                                        ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.ak, ptr %4, align 8
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.al, ptr %i.am, align 8
  %i.an = or disjoint i32 %.sroa.10.0.insert.shift.i.i, %.sroa.8.0.insert.shift.i.i
  %i.ao = or disjoint i32 %i.an, %.sroa.6.0.insert.shift.i.i
  %i.ap = or disjoint i32 %i.ao, %.sroa.02.0.insert.ext.i.i
  %i.aq = and i32 %.sroa.02.0.in.i.i, 3           ; 2 uses
  %xtraiter = zext nneg i32 %i.aq to i64
  %lcmp.mod.not = icmp eq i32 %i.aq, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc137, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %i.ak, %.noexc137 ] ; 5 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %i.ag, %.noexc137 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc137 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.ar, ptr %.08.i.i.i.i.i.prol, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 8
  %i.at = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !6

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc137
  %.08.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.noexc137 ], [ %.08.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa662.unr.a = phi ptr [ poison, %.noexc137 ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ak, %.noexc137 ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.ag, %.noexc137 ], [ %i.at, %.lr.ph.i.i.i.i.i.prol ]
  %i.av = add nsw i32 %i.ap, -1
  %i.aw = icmp ult i32 %i.av, 3
  br i1 %i.aw, label %.preheader325.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 14 uses
  %.057.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ax, ptr %.08.i.i.i.i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ay, align 8
  store i8 0, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.bb, align 8
  store i8 0, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.bh, align 8
  store i8 0, ptr %i.bg, align 8
  %i.bi = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.preheader325.preheader.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

.preheader325.preheader.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  br label %.preheader325.preheader

.preheader325.preheader:                          ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.preheader325.preheader.unr-lcssa
  %.08.i.i.i.i.i.lcssa = phi ptr [ %.08.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bk, %.preheader325.preheader.unr-lcssa ]
  %.lcssa662.a = phi ptr [ %.lcssa662.unr.a, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.preheader325.preheader.unr-lcssa ]
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.lcssa662.a, ptr %i.bl, align 8
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325.preheader, %._crit_edge
  %i.bm = phi ptr [ %.lcssa599, %._crit_edge ], [ %i.w, %.preheader325.preheader ] ; 2 uses
  %i.bn = phi ptr [ %.lcssa596, %._crit_edge ], [ %i.u, %.preheader325.preheader ] ; 2 uses
  %.sroa.0288.0353 = phi ptr [ %i.cu, %._crit_edge ], [ %i.ak, %.preheader325.preheader ] ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  %i.bp = icmp ugt ptr %i.bo, %i.bm
  br i1 %i.bp, label %.preheader325._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader325
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0288.0353, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0288.0353, i64 16 ; 2 uses
  %i.bs = load i8, ptr %i.bn, align 1             ; 2 uses
  store ptr %i.bo, ptr %i.s, align 8
  %.not131603 = icmp eq i8 %i.bs, 0
  br i1 %.not131603, label %._crit_edge, label %.lr.ph604

.preheader324:                                    ; preds = %._crit_edge, %.loopexit331.thread
  %i.bt = phi ptr [ %i.ai, %.loopexit331.thread ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.bu = phi ptr [ %i.w, %.loopexit331.thread ], [ %.lcssa599, %._crit_edge ] ; 3 uses
  %.promoted = phi ptr [ %i.u, %.loopexit331.thread ], [ %.lcssa596, %._crit_edge ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %.promoted to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 3 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, 3
  %.not354 = icmp eq i64 %i.ca, 0
  br i1 %.not354, label %._crit_edge356, label %.lr.ph355

bb.p:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.preheader325._crit_edge:                         ; preds = %.preheader325, %bb.v
  %i.cc = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull @.str.29)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.preheader325._crit_edge
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.noexc138 unwind label %.loopexit.split-lp327

.noexc138:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.preheader325._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cc) #20
  br label %.body

bb.s:                                             ; preds = %bb.v
  %i.ce = load i8, ptr %i.cq, align 1             ; 2 uses
  store ptr %i.cr, ptr %i.s, align 8
  %.not131 = icmp eq i8 %i.ce, 0
  br i1 %.not131, label %._crit_edge, label %.lr.ph604

.loopexit326:                                     ; preds = %bb.u
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp327:                            ; preds = %bb.q
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph604:                                        ; preds = %.lr.ph, %bb.s
  %i.cf = phi i8 [ %i.ce, %bb.s ], [ %i.bs, %.lr.ph ]
  %i.cg = load i64, ptr %i.bq, align 8            ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %.sroa.0288.0353, align 8 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.br                ; 2 uses
  br i1 %i.cj, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.t:                                             ; preds = %.lr.ph604
  %i.ck = icmp ult i64 %i.cg, 16
  tail call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.t, %.lr.ph604
  %9 = load i64, ptr %i.br, align 8
  %10 = select i1 %i.cj, i64 15, i64 %9
  %i.cl = icmp ugt i64 %i.ch, %10
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0288.0353, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc139 unwind label %.loopexit326

.noexc139:                                        ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %.sroa.0288.0353, align 8
  br label %bb.v

bb.v:                                             ; preds = %.noexc139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cm = phi ptr [ %.pre.i.i, %.noexc139 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cg
  store i8 %i.cf, ptr %i.cn, align 1
  store i64 %i.ch, ptr %i.bq, align 8
  %i.co = load ptr, ptr %.sroa.0288.0353, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ch
  store i8 0, ptr %i.cp, align 1
  %i.cq = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cs = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ct = icmp ugt ptr %i.cr, %i.cs
  br i1 %i.ct, label %.preheader325._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %bb.s, %.lr.ph
  %.lcssa599 = phi ptr [ %i.bm, %.lr.ph ], [ %i.cs, %bb.s ] ; 2 uses
  %.lcssa596 = phi ptr [ %i.bo, %.lr.ph ], [ %i.cr, %bb.s ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0288.0353, i64 32
  %.not301 = icmp eq ptr %.sroa.0288.0353, %.08.i.i.i.i.i.lcssa
  br i1 %.not301, label %.preheader324, label %.preheader325

.lr.ph355:                                        ; preds = %.preheader324
  %i.cv = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 3 uses
  %i.cw = icmp ugt ptr %i.cv, %i.bu
  br i1 %i.cw, label %bb.w, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143

bb.w:                                             ; preds = %.lr.ph355.2, %.lr.ph355.1, %.lr.ph355
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.29)
          to label %.invoke unwind label %bb.x

.invoke:                                          ; preds = %bb.w, %bb.aa
  %i.cy = phi ptr [ %i.dm, %bb.aa ], [ %i.cx, %bb.w ]
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.cont unwind label %bb.y

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cx) #20
  br label %.body

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143: ; preds = %.lr.ph355
  store ptr %i.cv, ptr %i.s, align 8
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = sub i64 %i.da, %i.by
  %i.dc = and i64 %i.db, 3
  %.not = icmp eq i64 %i.dc, 0
  br i1 %.not, label %._crit_edge356, label %.lr.ph355.1

.lr.ph355.1:                                      ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143
  %i.dd = getelementptr inbounds nuw i8, ptr %.promoted, i64 2 ; 3 uses
  %i.de = icmp ugt ptr %i.dd, %i.bu
  br i1 %i.de, label %bb.w, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.1

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.1: ; preds = %.lr.ph355.1
  store ptr %i.dd, ptr %i.s, align 8
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.df, %i.by
  %i.dh = and i64 %i.dg, 3
  %.not.1 = icmp eq i64 %i.dh, 0
  br i1 %.not.1, label %._crit_edge356, label %.lr.ph355.2

.lr.ph355.2:                                      ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.1
  %i.di = getelementptr inbounds nuw i8, ptr %.promoted, i64 3 ; 2 uses
  %i.dj = icmp ugt ptr %i.di, %i.bu
  br i1 %i.dj, label %bb.w, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.2

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.2: ; preds = %.lr.ph355.2
  store ptr %i.di, ptr %i.s, align 8
  br label %._crit_edge356

bb.y:                                             ; preds = %.invoke, %._crit_edge356
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge356:                                   ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.1, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit143.2, %.preheader324
  %i.dl = invoke fastcc noundef zeroext i1 @_ZL6match4RN6Assimp12StreamReaderILb1ELb1EEEPKc(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull @.str.4)
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %._crit_edge356
  br i1 %i.dl, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dm) #20
  br label %.body

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.do = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 4 uses
  %i.dq = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.dr = icmp ugt ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ds = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull @.str.29)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.ds, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.noexc160 unwind label %bb.ak

.noexc160:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dt = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ds) #20
  br label %.body161

bb.ag:                                            ; preds = %bb.ac
  %i.du = load i32, ptr %i.do, align 1            ; 5 uses
  %.sroa.6.0.extract.shift.i.i144 = lshr i32 %i.du, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i.i145 = lshr i32 %i.du, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i.i146 = lshr i32 %i.du, 24 ; 2 uses
  %i.dv = load i8, ptr %i.ab, align 8, !range !5, !noundef !3
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = and i32 %i.du, 255
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.8.0.i.i147 = phi i32 [ %.sroa.8.0.extract.shift.i.i145, %bb.ag ], [ %.sroa.6.0.extract.shift.i.i144, %bb.ah ]
  %.sroa.6.0.in.i.i148 = phi i32 [ %.sroa.6.0.extract.shift.i.i144, %bb.ag ], [ %.sroa.8.0.extract.shift.i.i145, %bb.ah ]
  %.sroa.02.0.in.i.i149 = phi i32 [ %i.du, %bb.ag ], [ %.sroa.10.0.extract.shift.i.i146, %bb.ah ] ; 2 uses
  %.sroa.10.0.i.i150 = phi i32 [ %.sroa.10.0.extract.shift.i.i146, %bb.ag ], [ %i.dx, %bb.ah ]
  store ptr %i.dp, ptr %i.s, align 8
  %.sroa.10.0.insert.shift.i.i151 = shl nuw i32 %.sroa.10.0.i.i150, 24 ; 3 uses
  %.sroa.8.0.insert.ext.i.i152 = shl i32 %.sroa.8.0.i.i147, 16
  %.sroa.8.0.insert.shift.i.i153 = and i32 %.sroa.8.0.insert.ext.i.i152, 16711680 ; 2 uses
  %.sroa.6.0.insert.ext.i.i155 = shl nuw i32 %.sroa.6.0.in.i.i148, 8
  %.sroa.6.0.insert.shift.i.i156 = and i32 %.sroa.6.0.insert.ext.i.i155, 65280 ; 2 uses
  %.sroa.02.0.insert.ext.i.i158 = and i32 %.sroa.02.0.in.i.i149, 255 ; 2 uses
  %.sroa.8.0.insert.insert.i.i154 = or disjoint i32 %.sroa.02.0.insert.ext.i.i158, %.sroa.8.0.insert.shift.i.i153
  %i.dy = or disjoint i32 %.sroa.8.0.insert.insert.i.i154, %.sroa.6.0.insert.shift.i.i156
  %.sroa.02.0.insert.insert.i.i159 = or disjoint i32 %i.dy, %.sroa.10.0.insert.shift.i.i151 ; 2 uses
  %i.dz = sext i32 %.sroa.02.0.insert.insert.i.i159 to i64 ; 4 uses
  %i.ea = icmp slt i32 %.sroa.10.0.insert.shift.i.i151, 0
  br i1 %i.ea, label %bb.aj, label %_ZNSt6vectorI4TypeSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #21
          to label %.noexc170 unwind label %bb.al

.noexc170:                                        ; preds = %bb.aj
  unreachable

_ZNSt6vectorI4TypeSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.ai
  %.not.i.i.i.i164 = icmp eq i32 %.sroa.02.0.insert.insert.i.i159, 0 ; 2 uses
  br i1 %.not.i.i.i.i164, label %.loopexit323.thread, label %_ZNSt12_Vector_baseI4TypeSaIS0_EEC2EmRKS1_.exit.i

.loopexit323.thread:                              ; preds = %_ZNSt6vectorI4TypeSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.preheader316

_ZNSt12_Vector_baseI4TypeSaIS0_EEC2EmRKS1_.exit.i: ; preds = %_ZNSt6vectorI4TypeSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.ec = mul nuw nsw i64 %i.dz, 40
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #22
          to label %.noexc171 unwind label %bb.al ; 6 uses

.noexc171:                                        ; preds = %_ZNSt12_Vector_baseI4TypeSaIS0_EEC2EmRKS1_.exit.i
  store ptr %i.ed, ptr %5, align 8
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ee, ptr %i.ef, align 8
  %i.eg = or disjoint i32 %.sroa.10.0.insert.shift.i.i151, %.sroa.8.0.insert.shift.i.i153
  %i.eh = or disjoint i32 %i.eg, %.sroa.6.0.insert.shift.i.i156
  %i.ei = or disjoint i32 %i.eh, %.sroa.02.0.insert.ext.i.i158
  %i.ej = and i32 %.sroa.02.0.in.i.i149, 7        ; 2 uses
  %xtraiter663 = zext nneg i32 %i.ej to i64
  %lcmp.mod664.not = icmp eq i32 %i.ej, 0
  br i1 %lcmp.mod664.not, label %.lr.ph.i.i.i.i.i165.prol.loopexit, label %.lr.ph.i.i.i.i.i165.prol

.lr.ph.i.i.i.i.i165.prol:                         ; preds = %.noexc171, %.lr.ph.i.i.i.i.i165.prol
  %.08.i.i.i.i.i166.prol = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i165.prol ], [ %i.ed, %.noexc171 ] ; 5 uses
  %.057.i.i.i.i.i167.prol = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i165.prol ], [ %i.dz, %.noexc171 ]
  %prol.iter665 = phi i64 [ %prol.iter665.next, %.lr.ph.i.i.i.i.i165.prol ], [ 0, %.noexc171 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i.i.i166.prol, i8 0, i64 40, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166.prol, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166.prol, i64 24
  store ptr %i.el, ptr %i.ek, align 8
  %i.em = add i64 %.057.i.i.i.i.i167.prol, -1     ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166.prol, i64 40 ; 3 uses
  %prol.iter665.next = add i64 %prol.iter665, 1   ; 2 uses
  %prol.iter665.cmp.not = icmp eq i64 %prol.iter665.next, %xtraiter663
  br i1 %prol.iter665.cmp.not, label %.lr.ph.i.i.i.i.i165.prol.loopexit, label %.lr.ph.i.i.i.i.i165.prol, !llvm.loop !10

.lr.ph.i.i.i.i.i165.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i165.prol, %.noexc171
  %.08.i.i.i.i.i166.lcssa.unr = phi ptr [ poison, %.noexc171 ], [ %.08.i.i.i.i.i166.prol, %.lr.ph.i.i.i.i.i165.prol ]
  %.lcssa656.unr = phi ptr [ poison, %.noexc171 ], [ %i.en, %.lr.ph.i.i.i.i.i165.prol ]
  %.08.i.i.i.i.i166.unr = phi ptr [ %i.ed, %.noexc171 ], [ %i.en, %.lr.ph.i.i.i.i.i165.prol ]
  %.057.i.i.i.i.i167.unr = phi i64 [ %i.dz, %.noexc171 ], [ %i.em, %.lr.ph.i.i.i.i.i165.prol ]
  %i.eo = add nsw i32 %i.ei, -1
  %i.ep = icmp ult i32 %i.eo, 7
  br i1 %i.ep, label %.preheader317.preheader, label %.lr.ph.i.i.i.i.i165

.lr.ph.i.i.i.i.i165:                              ; preds = %.lr.ph.i.i.i.i.i165.prol.loopexit, %.lr.ph.i.i.i.i.i165
  %.08.i.i.i.i.i166 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i165 ], [ %.08.i.i.i.i.i166.unr, %.lr.ph.i.i.i.i.i165.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i167 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i165 ], [ %.057.i.i.i.i.i167.unr, %.lr.ph.i.i.i.i.i165.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i.i.i166, i8 0, i64 40, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 24
  store ptr %i.er, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.es, i8 0, i64 40, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 48
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 64
  store ptr %i.eu, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ev, i8 0, i64 40, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 88
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 104
  store ptr %i.ex, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, i8 0, i64 40, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 128
  %i.fa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 144
  store ptr %i.fa, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, i8 0, i64 40, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 168
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 184
  store ptr %i.fd, ptr %i.fc, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fe, i8 0, i64 40, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 208
  %i.fg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 224
  store ptr %i.fg, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fh, i8 0, i64 40, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 248
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 264
  store ptr %i.fj, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fk, i8 0, i64 40, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 288
  %i.fm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 304
  store ptr %i.fm, ptr %i.fl, align 8
  %i.fn = add i64 %.057.i.i.i.i.i167, -8          ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 320 ; 2 uses
  %.not.i.i.i.i.i168.7 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i.i.i168.7, label %.preheader317.preheader, label %.lr.ph.i.i.i.i.i165, !llvm.loop !11

.preheader317.preheader:                          ; preds = %.lr.ph.i.i.i.i.i165, %.lr.ph.i.i.i.i.i165.prol.loopexit
  %.08.i.i.i.i.i166.lcssa = phi ptr [ %.08.i.i.i.i.i166.lcssa.unr, %.lr.ph.i.i.i.i.i165.prol.loopexit ], [ %i.fk, %.lr.ph.i.i.i.i.i165 ]
  %.lcssa656 = phi ptr [ %.lcssa656.unr, %.lr.ph.i.i.i.i.i165.prol.loopexit ], [ %i.fo, %.lr.ph.i.i.i.i.i165 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.lcssa656, ptr %i.fp, align 8
  br label %.preheader317

.preheader317:                                    ; preds = %.preheader317.preheader, %._crit_edge608
  %i.fq = phi ptr [ %.lcssa592, %._crit_edge608 ], [ %i.dq, %.preheader317.preheader ] ; 2 uses
  %i.fr = phi ptr [ %.lcssa589, %._crit_edge608 ], [ %i.dp, %.preheader317.preheader ] ; 2 uses
  %.sroa.0283.0360 = phi ptr [ %i.hb, %._crit_edge608 ], [ %i.ed, %.preheader317.preheader ] ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 3 uses
  %i.ft = icmp ugt ptr %i.fs, %i.fq
  br i1 %i.ft, label %.preheader317._crit_edge, label %.lr.ph357

.lr.ph357:                                        ; preds = %.preheader317
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0283.0360, i64 8 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0283.0360, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0283.0360, i64 24 ; 2 uses
  %i.fx = load i8, ptr %i.fr, align 1             ; 2 uses
  store ptr %i.fs, ptr %i.s, align 8
  %.not127606 = icmp eq i8 %i.fx, 0
  br i1 %.not127606, label %._crit_edge608, label %.lr.ph607

.preheader316:                                    ; preds = %._crit_edge608, %.loopexit323.thread
  %i.fy = phi ptr [ %i.eb, %.loopexit323.thread ], [ %i.fp, %._crit_edge608 ] ; 3 uses
  %i.fz = phi ptr [ null, %.loopexit323.thread ], [ %.lcssa656, %._crit_edge608 ]
  %i.ga = phi ptr [ null, %.loopexit323.thread ], [ %i.ed, %._crit_edge608 ]
  %i.gb = phi ptr [ %i.dq, %.loopexit323.thread ], [ %.lcssa592, %._crit_edge608 ] ; 3 uses
  %.promoted361 = phi ptr [ %i.dp, %.loopexit323.thread ], [ %.lcssa589, %._crit_edge608 ] ; 4 uses
  %i.gc = load ptr, ptr %i.bv, align 8
  %i.gd = ptrtoint ptr %.promoted361 to i64
  %i.ge = ptrtoint ptr %i.gc to i64               ; 3 uses
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = and i64 %i.gf, 3
  %.not111362 = icmp eq i64 %i.gg, 0
  br i1 %.not111362, label %._crit_edge364, label %.lr.ph363

bb.ak:                                            ; preds = %bb.ae
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body161

bb.al:                                            ; preds = %_ZNSt12_Vector_baseI4TypeSaIS0_EEC2EmRKS1_.exit.i, %bb.aj
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body161

.preheader317._crit_edge:                         ; preds = %.preheader317, %bb.ar
  %i.gj = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull @.str.29)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %.preheader317._crit_edge
  invoke void @__cxa_throw(ptr nonnull %i.gj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.noexc172 unwind label %.loopexit.split-lp319

.noexc172:                                        ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %.preheader317._crit_edge
  %i.gk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.gj) #20
  br label %.body173

bb.ao:                                            ; preds = %bb.ar
  %i.gl = load i8, ptr %i.gx, align 1             ; 2 uses
  store ptr %i.gy, ptr %i.s, align 8
  %.not127 = icmp eq i8 %i.gl, 0
  br i1 %.not127, label %._crit_edge608, label %.lr.ph607

.loopexit318:                                     ; preds = %bb.aq
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %.body173

.loopexit.split-lp319:                            ; preds = %bb.am
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %.body173

.lr.ph607:                                        ; preds = %.lr.ph357, %bb.ao
  %i.gm = phi i8 [ %i.gl, %bb.ao ], [ %i.fx, %.lr.ph357 ]
  %i.gn = load i64, ptr %i.fv, align 8            ; 4 uses
  %i.go = add i64 %i.gn, 1                        ; 3 uses
  %i.gp = load ptr, ptr %i.fu, align 8            ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.fw                ; 2 uses
  br i1 %i.gq, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i176

bb.ap:                                            ; preds = %.lr.ph607
  %i.gr = icmp ult i64 %i.gn, 16
  tail call void @llvm.assume(i1 %i.gr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i176: ; preds = %bb.ap, %.lr.ph607
  %11 = load i64, ptr %i.fw, align 8
  %12 = select i1 %i.gq, i64 15, i64 %11
  %i.gs = icmp ugt i64 %i.go, %12
  br i1 %i.gs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, i64 noundef %i.gn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc178 unwind label %.loopexit318

.noexc178:                                        ; preds = %bb.aq
  %.pre.i.i177 = load ptr, ptr %i.fu, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i176
  %i.gt = phi ptr [ %.pre.i.i177, %.noexc178 ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i176 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gn
  store i8 %i.gm, ptr %i.gu, align 1
  store i64 %i.go, ptr %i.fv, align 8
  %i.gv = load ptr, ptr %i.fu, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.go
  store i8 0, ptr %i.gw, align 1
  %i.gx = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 1 ; 3 uses
  %i.gz = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ha = icmp ugt ptr %i.gy, %i.gz
  br i1 %i.ha, label %.preheader317._crit_edge, label %bb.ao

._crit_edge608:                                   ; preds = %bb.ao, %.lr.ph357
  %.lcssa592 = phi ptr [ %i.fq, %.lr.ph357 ], [ %i.gz, %bb.ao ] ; 2 uses
  %.lcssa589 = phi ptr [ %i.fs, %.lr.ph357 ], [ %i.gy, %bb.ao ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0283.0360, i64 40
  %.not302 = icmp eq ptr %.sroa.0283.0360, %.08.i.i.i.i.i166.lcssa
  br i1 %.not302, label %.preheader316, label %.preheader317

.lr.ph363:                                        ; preds = %.preheader316
  %i.hc = getelementptr inbounds nuw i8, ptr %.promoted361, i64 1 ; 3 uses
  %i.hd = icmp ugt ptr %i.hc, %i.gb
  br i1 %i.hd, label %bb.as, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183

bb.as:                                            ; preds = %.lr.ph363.2, %.lr.ph363.1, %.lr.ph363
  %i.he = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull @.str.29)
          to label %.invoke545 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.he) #20
  br label %.body173

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183: ; preds = %.lr.ph363
  store ptr %i.hc, ptr %i.s, align 8
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hg, %i.ge
  %i.hi = and i64 %i.hh, 3
  %.not111 = icmp eq i64 %i.hi, 0
  br i1 %.not111, label %._crit_edge364, label %.lr.ph363.1

.lr.ph363.1:                                      ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183
  %i.hj = getelementptr inbounds nuw i8, ptr %.promoted361, i64 2 ; 3 uses
  %i.hk = icmp ugt ptr %i.hj, %i.gb
  br i1 %i.hk, label %bb.as, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.1

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.1: ; preds = %.lr.ph363.1
  store ptr %i.hj, ptr %i.s, align 8
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hl, %i.ge
  %i.hn = and i64 %i.hm, 3
  %.not111.1 = icmp eq i64 %i.hn, 0
  br i1 %.not111.1, label %._crit_edge364, label %.lr.ph363.2

.lr.ph363.2:                                      ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.1
  %i.ho = getelementptr inbounds nuw i8, ptr %.promoted361, i64 3 ; 2 uses
  %i.hp = icmp ugt ptr %i.ho, %i.gb
  br i1 %i.hp, label %bb.as, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.2

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.2: ; preds = %.lr.ph363.2
  store ptr %i.ho, ptr %i.s, align 8
  br label %._crit_edge364

bb.au:                                            ; preds = %.invoke545, %._crit_edge372, %._crit_edge364
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body173

._crit_edge364:                                   ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.1, %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit183.2, %.preheader316
  %i.hr = invoke fastcc noundef zeroext i1 @_ZL6match4RN6Assimp12StreamReaderILb1ELb1EEEPKc(ptr noundef nonnull align 8 dereferenceable(49) %i.k, ptr noundef nonnull @.str.6)
          to label %bb.av unwind label %bb.au

bb.av:                                            ; preds = %._crit_edge364
  br i1 %i.hr, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull @.str.7)
          to label %.invoke545 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ht = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hs) #20
  br label %.body173

bb.ay:                                            ; preds = %bb.av
  %.promoted369.pre = load ptr, ptr %i.s, align 8 ; 2 uses
  br i1 %.not.i.i.i.i164, label %.preheader315, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %bb.ay
  %.pre397 = load ptr, ptr %i.v, align 8
  br label %.lr.ph368

.preheader315:                                    ; preds = %bb.bc, %bb.ay
  %.promoted369 = phi ptr [ %.promoted369.pre, %bb.ay ], [ %i.ic, %bb.bc ] ; 4 uses
  %i.hu = load ptr, ptr %i.bv, align 8
  %i.hv = ptrtoint ptr %.promoted369 to i64
  %i.hw = ptrtoint ptr %i.hu to i64               ; 3 uses
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = and i64 %i.hx, 3
  %.not112370 = icmp eq i64 %i.hy, 0
  br i1 %.not112370, label %._crit_edge372, label %.lr.ph371.preheader

.lr.ph371.preheader:                              ; preds = %.preheader315
  %.pre = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.promoted369, i64 1 ; 3 uses
  %i.ia = icmp ugt ptr %i.hz, %.pre
  br i1 %i.ia, label %bb.be, label %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit195

.lr.ph368:                                        ; preds = %.lr.ph368.preheader, %bb.bc
  %i.ib = phi ptr [ %i.ic, %bb.bc ], [ %.promoted369.pre, %.lr.ph368.preheader ] ; 2 uses
  %.sroa.0279.0366 = phi ptr [ %i.il, %bb.bc ], [ %i.ga, %.lr.ph368.preheader ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2 ; 4 uses
  %i.id = icmp ugt ptr %i.ic, %.pre397
  br i1 %i.id, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %.lr.ph368
  %i.ie = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull @.str.29)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @__cxa_throw(ptr nonnull %i.ie, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.noexc189 unwind label %bb.bd

.noexc189:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.if = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ie) #20
  br label %.body173

bb.bc:                                            ; preds = %.lr.ph368
  %i.ig = load i16, ptr %i.ib, align 1            ; 2 uses
  %.sroa.6.0.extract.shift.i.i184 = lshr i16 %i.ig, 8 ; 2 uses
  %i.ih = load i8, ptr %i.ab, align 8, !range !5, !noundef !3
  %i.ii = trunc nuw i8 %i.ih to i1                ; 2 uses
  store ptr %i.ic, ptr %i.s, align 8
  %i.ij = and i16 %i.ig, 255                      ; 2 uses
  %.sroa.6.0.insert.ext.i.i185 = select i1 %i.ii, i16 %.sroa.6.0.extract.shift.i.i184, i16 %i.ij
  %.sroa.6.0.insert.shift.i.i186 = shl nuw i16 %.sroa.6.0.insert.ext.i.i185, 8
  %.sroa.02.0.insert.ext.i.i187 = select i1 %i.ii, i16 %i.ij, i16 %.sroa.6.0.extract.shift.i.i184
  %.sroa.02.0.insert.insert.i.i188 = or disjoint i16 %.sroa.6.0.insert.shift.i.i186, %.sroa.02.0.insert.ext.i.i187
  %i.ik = sext i16 %.sroa.02.0.insert.insert.i.i188 to i64
  store i64 %i.ik, ptr %.sroa.0279.0366, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0279.0366, i64 40 ; 2 uses
  %.not303 = icmp eq ptr %i.il, %i.fz
  br i1 %.not303, label %.preheader315, label %.lr.ph368

bb.bd:                                            ; preds = %bb.ba
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body173

bb.be:                                            ; preds = %.lr.ph371.2, %.lr.ph371.1, %.lr.ph371.preheader
  %i.in = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull @.str.29)
          to label %.invoke545 unwind label %bb.bf

.invoke545:                                       ; preds = %bb.as, %bb.bh, %bb.be, %bb.aw
  %i.io = phi ptr [ %i.hs, %bb.aw ], [ %i.jb, %bb.bh ], [ %i.in, %bb.be ], [ %i.he, %bb.as ]
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.cont546 unwind label %bb.au

.cont546:                                         ; preds = %.invoke545
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.ip = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.in) #20
  br label %.body173

_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit195: ; preds = %.lr.ph371.preheader
  store ptr %i.hz, ptr %i.s, align 8
  %i.iq = ptrtoint ptr %i.hz to i64
  %i.ir = sub i64 %i.iq, %i.hw
  %i.is = and i64 %i.ir, 3
  %.not112 = icmp eq i64 %i.is, 0
  br i1 %.not112, label %._crit_edge372, label %.lr.ph371.1

.lr.ph371.1:                                      ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE5GetI1Ev.exit195
end_hunk_0
