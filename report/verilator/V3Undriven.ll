Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Undriven?download=true
inline.NumInlined: 1854
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN16UndrivenVarEntry8bitNamesB5cxx11ENS_13BitNamesWhichE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.bt
  %.pre367.a = load ptr, ptr %3, align 8, !tbaa !10, !noalias !496
  %.pre368.a = load i64, ptr %i.g, align 8, !tbaa !16, !noalias !496
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ap = phi i64 [ %.pre368.a, %._crit_edge.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.aq = phi ptr [ %.pre367.a, %._crit_edge.loopexit ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ar, ptr %13, align 8, !tbaa !77, !alias.scope !499
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.as, align 8, !tbaa !16, !alias.scope !499
  store i8 0, ptr %i.ar, align 8, !tbaa !17, !alias.scope !499
  %i.at = add i64 %i.ap, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.at)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.au = load i64, ptr %i.as, align 8, !tbaa !16, !alias.scope !499
  %i.av = icmp eq i64 %i.au, 4611686018427387903
  br i1 %i.av, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.75, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !16, !alias.scope !499
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.ap
  br i1 %i.az, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.aq, i64 noundef %i.ap)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %13, align 8, !tbaa !10, !alias.scope !499 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %.lr.ph, %bb.bt
  %.045.in365 = phi i32 [ %i.u, %.lr.ph ], [ %.045366, %bb.bt ] ; 6 uses
  %.046364 = phi i32 [ 0, %.lr.ph ], [ %.147, %bb.bt ] ; 7 uses
  %.048363 = phi i8 [ 0, %.lr.ph ], [ %.149, %bb.bt ] ; 2 uses
  %.045366 = add i32 %.045.in365, -1              ; 11 uses
  %i.be = icmp sgt i32 %.045366, -1
  br i1 %i.be, label %bb.e, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

bb.e:                                             ; preds = %bb.d
  switch i8 %2, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !106 ; 2 uses
  %i.bh = and i64 %i.bg, 1
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit:           ; preds = %bb.f
  %i.bi = shl nsw i32 %.045366, 2                 ; 2 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.bk = lshr i32 %.045366, 4
  %.sext.i = zext nneg i32 %i.bk to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sext.i
  %i.bm = and i32 %i.bi, 60                       ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 1, %i.bn
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !106
  %i.bq = and i64 %i.bp, %i.bo
  %.not278.a = icmp eq i64 %i.bq, 0
  br i1 %.not278.a, label %bb.g, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

bb.g:                                             ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit
  %i.br = and i64 %i.bg, 2
  %.not.i70 = icmp eq i64 %i.br, 0
  br i1 %.not.i70, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread

_ZNK16UndrivenVarEntry10drivenFlagEi.exit:        ; preds = %bb.g
  %i.bs = lshr i32 %i.bi, 6
  %.sext.i71 = zext nneg i32 %i.bs to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sext.i71
  %i.bu = or disjoint i32 %i.bm, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 1, %i.bv
  %i.bx = load i64, ptr %i.bt, align 8, !tbaa !106
  %i.by = and i64 %i.bx, %i.bw
  %.not279 = icmp eq i64 %i.by, 0
  br i1 %.not279, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.bz = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !106 ; 3 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i74 = icmp eq i64 %i.cb, 0
  br i1 %.not.i74, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit78, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit78:         ; preds = %bb.h
  %i.cc = shl nsw i32 %.045366, 2                 ; 2 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.ce = lshr i32 %.045366, 4
  %.sext.i75 = zext nneg i32 %i.ce to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sext.i75
  %i.cg = and i32 %i.cc, 60                       ; 2 uses
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 1, %i.ch
  %i.cj = load i64, ptr %i.cf, align 8, !tbaa !106
  %i.ck = and i64 %i.cj, %i.ci
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = and i64 %i.ca, 2
  %.not.i79 = icmp eq i64 %i.cm, 0
  %or.cond = and i1 %.not.i79, %i.cl
  br i1 %or.cond, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread:  ; preds = %bb.h
  %.old = and i64 %i.ca, 2
  %.not.i79.old = icmp eq i64 %.old, 0
  br i1 %.not.i79.old, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge: ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !100
  %.pre369.a = shl nsw i32 %.045366, 2            ; 2 uses
  %.pre370 = and i32 %.pre369.a, 60
  br label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83

_ZNK16UndrivenVarEntry10drivenFlagEi.exit83:      ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78
  %.pre-phi371 = phi i32 [ %.pre370, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge ], [ %i.cg, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78 ]
  %.pre-phi = phi i32 [ %.pre369.a, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge ], [ %i.cc, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78 ]
  %i.cn = phi ptr [ %.pre, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread._ZNK16UndrivenVarEntry10drivenFlagEi.exit83_crit_edge ], [ %i.cd, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78 ]
  %i.co = lshr i32 %.pre-phi, 6
  %.sext.i80 = zext nneg i32 %i.co to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sext.i80
  %i.cq = or disjoint i32 %.pre-phi371, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 1, %i.cr
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !106
  %i.cu = and i64 %i.ct, %i.cs
  %.not277 = icmp eq i64 %i.cu, 0
  br i1 %.not277, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !106 ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %.not.i84 = icmp eq i64 %i.cx, 0
  br i1 %.not.i84, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit88, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry8usedFlagEi.exit88:         ; preds = %bb.i
  %i.cy = shl nsw i32 %.045366, 2                 ; 2 uses
  %i.cz = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.da = lshr i32 %.045366, 4
  %.sext.i85 = zext nneg i32 %i.da to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sext.i85
  %i.dc = and i32 %i.cy, 60                       ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw nsw i64 1, %i.dd
  %i.df = load i64, ptr %i.db, align 8, !tbaa !106
  %i.dg = and i64 %i.df, %i.de
  %i.dh = and i64 %i.cw, 2
  %i.di = or disjoint i64 %i.dg, %i.dh
  %or.cond276 = icmp eq i64 %i.di, 0
  br i1 %or.cond276, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit93, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry10drivenFlagEi.exit93:      ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit88
  %i.dj = lshr i32 %i.cy, 6
  %.sext.i90 = zext nneg i32 %i.dj to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sext.i90
  %i.dl = or disjoint i32 %i.dc, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 1, %i.dm
  %i.do = load i64, ptr %i.dk, align 8, !tbaa !106
  %i.dp = and i64 %i.do, %i.dn
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread, label %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread

_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread: ; preds = %bb.g, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit93, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit
  %i.dq = trunc nuw i8 %.048363 to i1
  %spec.select69 = select i1 %i.dq, i32 %.046364, i32 %.045366
  br label %bb.bt

_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread:    ; preds = %bb.i, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78.thread, %bb.f, %_ZNK16UndrivenVarEntry8usedFlagEi.exit78, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit83, %_ZNK16UndrivenVarEntry8usedFlagEi.exit, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit, %bb.e, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit93, %_ZNK16UndrivenVarEntry8usedFlagEi.exit88, %bb.d
  %i.dr = trunc nuw i8 %.048363 to i1
  br i1 %i.dr, label %bb.j, label %bb.bt

bb.j:                                             ; preds = %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread
  %i.ds = load ptr, ptr %1, align 8, !tbaa !282   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !179 ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = select i1 %.not.i.i, ptr %i.dw, ptr %i.du ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 352
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = invoke noundef ptr %i.ea(ptr noundef nonnull align 8 dereferenceable(162) %i.dx)
          to label %_ZNK6AstVar6basicpEv.exit unwind label %bb.l, !inline_history !502 ; 14 uses

_ZNK6AstVar6basicpEv.exit:                        ; preds = %bb.j
  %i.ec = load i64, ptr %i.g, align 8, !tbaa !16
  switch i64 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
    i64 4611686018427387903, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNK6AstVar6basicpEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNK6AstVar6basicpEv.exit
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.74, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit ; 0 uses

bb.l:                                             ; preds = %bb.j
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i107, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i3.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNK6AstVar6basicpEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ef = icmp eq i32 %.045.in365, %.046364
  br i1 %i.ef, label %bb.m, label %bb.v

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !116 ; 3 uses
  %.not.i95 = icmp eq ptr %i.eh, null
  br i1 %.not.i95, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ek, align 8, !tbaa !154
  %i.el = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.el, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 152
  %i.en = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.em)
          to label %_ZNK8AstRange9leftConstEv.exit.i.i unwind label %bb.t

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.o, %bb.n
  %i.eo = phi i32 [ 0, %bb.o ], [ 0, %bb.n ], [ %i.en, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !126 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i4.i.i, label %_ZNK8AstRange7loConstEv.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load i16, ptr %i.er, align 8, !tbaa !154
  %i.es = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i, 121
  br i1 %i.es, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, label %_ZNK8AstRange7loConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i: ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 152
  %i.eu = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.et)
          to label %_ZNK8AstRange7loConstEv.exit.i unwind label %bb.t

_ZNK8AstRange7loConstEv.exit.i:                   ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %bb.p, %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.ev = phi i32 [ 0, %bb.p ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i ], [ %i.eu, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ]
  %i.ew = call noundef i32 @llvm.smin.i32(i32 %i.eo, i32 %i.ev)
  br label %_ZNK13AstBasicDType2loEv.exit

bb.q:                                             ; preds = %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 168
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !503
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 172
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !505
  %..i.i = call noundef i32 @llvm.smin.i32(i32 %i.ey, i32 %i.fa)
  br label %_ZNK13AstBasicDType2loEv.exit

_ZNK13AstBasicDType2loEv.exit:                    ; preds = %bb.q, %_ZNK8AstRange7loConstEv.exit.i
  %i.fb = phi i32 [ %i.ew, %_ZNK8AstRange7loConstEv.exit.i ], [ %..i.i, %bb.q ]
  %i.fc = add nsw i32 %i.fb, %.045.in365
  store i32 %i.fc, ptr %i.a, align 4, !tbaa !91
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %_ZNK13AstBasicDType2loEv.exit
  %i.fd = load i64, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.fe = load i64, ptr %i.g, align 8, !tbaa !16
  %i.ff = sub i64 4611686018427387903, %i.fe
  %i.fg = icmp ult i64 %i.ff, %i.fd
  br i1 %i.fg, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.noexc98 unwind label %.loopexit.split-lp311

.noexc98:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r
  %i.fh = load ptr, ptr %4, align 8, !tbaa !10
  %i.fi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.fh, i64 noundef %i.fd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit310 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fj = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ao
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fl = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bt

bb.t:                                             ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %_ZNK13AstBasicDType2loEv.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

.loopexit310:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit312 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp311:                            ; preds = %bb.s
  %lpad.loopexit.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp311, %.loopexit310
  %lpad.phi314 = phi { ptr, i32 } [ %lpad.loopexit312, %.loopexit310 ], [ %lpad.loopexit.split-lp313, %.loopexit.split-lp311 ] ; 2 uses
  %i.fo = load ptr, ptr %4, align 8, !tbaa !10    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ao
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.u
  %i.fq = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.t
  %.pn63 = phi { ptr, i32 } [ %i.fn, %bb.t ], [ %lpad.phi314, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %lpad.phi314, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.by

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 5 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !116 ; 3 uses
  %.not.i103 = icmp eq ptr %i.ft, null
  br i1 %.not.i103, label %_ZNK13AstBasicDType9ascendingEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i104, label %_ZNK8AstRange9leftConstEv.exit.i.i106, label %bb.x

end_hunk_0
begin_hunk_1_@_ZN16UndrivenVarEntry8bitNamesB5cxx11ENS_13BitNamesWhichE:bb.a
  store ptr %i.ac, ptr %9, align 8, !tbaa !77, !alias.scope !515
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !10 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 5 uses
  %i.pe = icmp eq ptr %i.pc, %i.pd
  br i1 %i.pe, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i212

bb.bo:                                            ; preds = %.noexc224
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !16 ; 2 uses
  %i.ph = icmp ult i64 %i.pg, 16
  call void @llvm.assume(i1 %i.ph)
  %i.pi = add nuw nsw i64 %i.pg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.pd, i64 %i.pi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i212: ; preds = %.noexc224
  store ptr %i.pc, ptr %9, align 8, !tbaa !10, !alias.scope !515
  %i.pj = load i64, ptr %i.pd, align 8, !tbaa !17
  store i64 %i.pj, ptr %i.ac, align 8, !tbaa !17, !alias.scope !515
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i213: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i212, %bb.bo
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !16
  store i64 %i.pl, ptr %i.ad, align 8, !tbaa !16, !alias.scope !515
  store ptr %i.pd, ptr %i.pb, align 8, !tbaa !10
  store i64 0, ptr %i.pk, align 8, !tbaa !16
  store i8 0, ptr %i.pd, align 8, !tbaa !17
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit225

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i219
  %i.pm = load i64, ptr %i.ad, align 8, !tbaa !16 ; 2 uses
  %i.pn = load i64, ptr %i.g, align 8, !tbaa !16
  %i.po = sub i64 4611686018427387903, %i.pn
  %i.pp = icmp ult i64 %i.po, %i.pm
  br i1 %i.pp, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i226

bb.bp:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit225
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.noexc227 unwind label %.loopexit.split-lp291

.noexc227:                                        ; preds = %bb.bp
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i226: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit225
  %i.pq = load ptr, ptr %9, align 8, !tbaa !10
  %i.pr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.pq, i64 noundef %i.pm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit229 unwind label %.loopexit290 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i226
  %i.ps = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.ac
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit229
  %i.pu = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  %i.pw = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.ab
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.py = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.qa = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.y
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.qc = load i64, ptr %i.y, align 8, !tbaa !17
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  %i.qe = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.ae
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.qg = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.qh = add i64 %i.qg, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bt

bb.bq:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i182, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i183, %_ZNK13AstBasicDType2loEv.exit187
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

.loopexit280:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i188
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

.loopexit.split-lp281:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.br:                                            ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i203, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i204, %_ZNK13AstBasicDType2loEv.exit208
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

.loopexit285:                                     ; preds = %.critedge.i217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i211
  %lpad.loopexit287 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

.loopexit.split-lp286:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

.loopexit290:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i226
  %lpad.loopexit292 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp291:                            ; preds = %bb.bp
  %lpad.loopexit.split-lp293 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp291, %.loopexit290
  %lpad.phi294 = phi { ptr, i32 } [ %lpad.loopexit292, %.loopexit290 ], [ %lpad.loopexit.split-lp293, %.loopexit.split-lp291 ] ; 2 uses
  %i.qk = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.ac
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.bs
  %i.qm = load i64, ptr %i.ac, align 8, !tbaa !17
  %i.qn = add i64 %i.qm, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.bs, %.loopexit285, %.loopexit.split-lp286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242
  %.pn53 = phi { ptr, i32 } [ %lpad.phi294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %lpad.loopexit.split-lp288, %.loopexit.split-lp286 ], [ %lpad.loopexit287, %.loopexit285 ], [ %lpad.phi294, %bb.bs ] ; 2 uses
  %i.qo = load ptr, ptr %12, align 8, !tbaa !10   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.ab
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.qq = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.br
  %.pn53.pn = phi { ptr, i32 } [ %i.qj, %bb.br ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.qs = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.y
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.qu = load i64, ptr %i.y, align 8, !tbaa !17
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %.loopexit280, %.loopexit.split-lp281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp281 ], [ %lpad.loopexit282, %.loopexit280 ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %i.qw = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.ae
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.qy = load i64, ptr %i.ae, align 8, !tbaa !17
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.bq
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %i.qi, %bb.bq ], [ %.pn53.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn53.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.by

bb.bt:                                            ; preds = %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread
  %.149 = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread ], [ 1, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ]
  %.147 = phi i32 [ %.045.in365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.046364, %_ZNK16UndrivenVarEntry8usedFlagEi.exit.thread ], [ %spec.select69, %_ZNK16UndrivenVarEntry10drivenFlagEi.exit.thread ], [ %.046364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.046364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ]
  %i.ra = icmp ult i32 %.045366, -2147483647
  br i1 %i.ra, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !518

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.rb = load i64, ptr %i.as, align 8, !tbaa !16, !noalias !519
  %i.rc = icmp eq i64 %i.rb, 4611686018427387903
  br i1 %i.rc, label %bb.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254

bb.bu:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
          to label %.noexc259.a unwind label %bb.bx

.noexc259.a:                                      ; preds = %bb.bu
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.rd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.76, i64 noundef 1)
          to label %.noexc260 unwind label %bb.bx ; 6 uses

.noexc260:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.re, ptr %0, align 8, !tbaa !77, !alias.scope !519
  %i.rf = load ptr, ptr %i.rd, align 8, !tbaa !10 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 16 ; 5 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

bb.bv:                                            ; preds = %.noexc260
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !16 ; 3 uses
  %i.rk = icmp ult i64 %i.rj, 16
  call void @llvm.assume(i1 %i.rk)
  %i.rl = add nuw nsw i64 %i.rj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.re, ptr noundef nonnull align 8 dereferenceable(1) %i.rg, i64 %i.rl, i1 false)
  br label %bb.bw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %.noexc260
  store ptr %i.rf, ptr %0, align 8, !tbaa !10, !alias.scope !519
  %i.rm = load i64, ptr %i.rg, align 8, !tbaa !17
  store i64 %i.rm, ptr %i.re, align 8, !tbaa !17, !alias.scope !519
  %.phi.trans.insert.i256 = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %.pre.i257 = load i64, ptr %.phi.trans.insert.i256, align 8, !tbaa !16
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255, %bb.bv
  %i.rn = phi i64 [ %i.rj, %bb.bv ], [ %.pre.i257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255 ]
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.rn, ptr %i.rp, align 8, !tbaa !16, !alias.scope !519
  store ptr %i.rg, ptr %i.rd, align 8, !tbaa !10
  store i64 0, ptr %i.ro, align 8, !tbaa !16
  store i8 0, ptr %i.rg, align 8, !tbaa !17
  %i.rq = load ptr, ptr %13, align 8, !tbaa !10   ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.ar
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %bb.bw
  %i.rs = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ru = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.f
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %i.rw = load i64, ptr %i.f, align 8, !tbaa !17
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i254, %bb.bu
  %i.ry = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rz = load ptr, ptr %13, align 8, !tbaa !10   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.ar
  br i1 %i.sa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bx, %bb.c
  %.sink = phi ptr [ %i.bc, %bb.c ], [ %i.rz, %bb.bx ]
  %.pn.ph = phi { ptr, i32 } [ %i.bb, %bb.c ], [ %i.ry, %bb.bx ]
  %i.sb = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.sc) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bx, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.c ], [ %i.ry, %bb.bx ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.by

bb.by:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.l, %.body
  %.pn63.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn53.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %i.ee, %bb.l ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %.pn58.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sd = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.f
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271: ; preds = %bb.by
  %i.sf = load i64, ptr %i.f, align 8, !tbaa !17
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit273: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn63.pn.pn.pn.pn
}

declare void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #3

declare noundef zeroext i1 @_ZN7VString9wildmatchEPKcS1_(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6AstVar6basicpEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i, ptr %i.d, ptr %i.b    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(162) %i.e)
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6AstVar9subDTypepEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not, ptr %i.d, ptr %i.b
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6AstVar11childDTypepEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7AstNode15unsafePrivateAsI12AstNodeDTypeS_EEPT_PT0_(ptr noundef %0) #4 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13AstBasicDType6rangepEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8AstRange7loConstEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK8AstRange9leftConstEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.c, align 8, !tbaa !154
  %i.d = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 121
  br i1 %i.d, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i, label %_ZNK8AstRange9leftConstEv.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = tail call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  br label %_ZNK8AstRange9leftConstEv.exit

_ZNK8AstRange9leftConstEv.exit:                   ; preds = %bb.a, %bb.b, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i
  %i.g = phi i32 [ %i.f, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126  ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.i, null
  br i1 %.not.i.i4, label %_ZNK8AstRange10rightConstEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i5 = load i16, ptr %i.j, align 8, !tbaa !154
  %i.k = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5, 121
end_hunk_1
