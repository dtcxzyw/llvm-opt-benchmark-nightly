Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Reverse?download=true
inline.NumInlined: 7939
inline.NumDeleted: 2416
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNK8facebook5velox9functions15ReverseFunction12applyVarcharERKNS0_17SelectivityVectorERSt10shared_ptrINS0_10BaseVectorEEbRNS0_4exec7EvalCtxES9_:bb.a
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -15
  %wide.load254 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !95, !alias.scope !775
  %reverse255 = shufflevector <16 x i8> %wide.load254, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 %index253
  store <16 x i8> %reverse255, ptr %i.by, align 1, !tbaa !95, !alias.scope !776, !noalias !775
  %index.next256 = add nuw i64 %index253, 16      ; 2 uses
  %i.bz = icmp eq i64 %index.next256, %n.vec252
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !757

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n257 = icmp eq i64 %i.aq, %n.vec252
  br i1 %cmp.n257, label %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit.loopexit, label %.lr.ph174.preheader

.lr.ph174.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i173.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec252, %vec.epilog.middle.block ] ; 3 uses
  %.08.in.i172.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph174.prol.loopexit, label %.lr.ph174.prol

.lr.ph174.prol:                                   ; preds = %.lr.ph174.preheader, %.lr.ph174.prol
  %.0.i173.prol = phi i64 [ %i.cd, %.lr.ph174.prol ], [ %.0.i173.ph, %.lr.ph174.preheader ] ; 2 uses
  %.08.in.i172.prol = phi i64 [ %.08.i.prol, %.lr.ph174.prol ], [ %.08.in.i172.ph, %.lr.ph174.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph174.prol ], [ 0, %.lr.ph174.preheader ]
  %.08.i.prol = add i64 %.08.in.i172.prol, -1     ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.08.i.prol
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !95
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i173.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !95
  %i.cd = add nuw i64 %.0.i173.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph174.prol.loopexit, label %.lr.ph174.prol, !llvm.loop !758

.lr.ph174.prol.loopexit:                          ; preds = %.lr.ph174.prol, %.lr.ph174.preheader
  %.0.i173.unr = phi i64 [ %.0.i173.ph, %.lr.ph174.preheader ], [ %i.cd, %.lr.ph174.prol ]
  %.08.in.i172.unr = phi i64 [ %.08.in.i172.ph, %.lr.ph174.preheader ], [ %.08.i.prol, %.lr.ph174.prol ]
  %i.ce = sub i64 %.0.i173.ph, %i.aq
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.prol.loopexit, %.lr.ph174
  %.0.i173 = phi i64 [ %i.cy, %.lr.ph174 ], [ %.0.i173.unr, %.lr.ph174.prol.loopexit ] ; 5 uses
  %.08.in.i172 = phi i64 [ %.08.i.3, %.lr.ph174 ], [ %.08.in.i172.unr, %.lr.ph174.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr i8, ptr %i.bd, i64 %.08.in.i172
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !95
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i173
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !95
  %i.ck = getelementptr i8, ptr %i.bd, i64 %.08.in.i172
  %i.cl = getelementptr i8, ptr %i.ck, i64 -2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !95
  %i.cn = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i173
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !95
  %i.cp = getelementptr i8, ptr %i.bd, i64 %.08.in.i172
  %i.cq = getelementptr i8, ptr %i.cp, i64 -3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !95
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i173
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !95
  %.08.i.3 = add i64 %.08.in.i172, -4             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.08.i.3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !95
  %i.cw = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.i173
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !95
  %i.cy = add nuw i64 %.0.i173, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cy, %i.aq
  br i1 %exitcond.not.3, label %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit.loopexit, label %.lr.ph174, !llvm.loop !759

_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit.loopexit: ; preds = %.lr.ph174.prol.loopexit, %.lr.ph174, %vec.epilog.middle.block, %middle.block
  %.pre183 = load ptr, ptr %20, align 8, !tbaa !120
  br label %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit

_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit: ; preds = %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit.loopexit, %_ZN8facebook5velox9functions10stringImpl7reverseILb1ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit
  %i.cz = phi ptr [ %.pre183, %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit.loopexit ], [ %i.bc, %_ZN8facebook5velox9functions10stringImpl7reverseILb1ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit ] ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ah
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !95
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN8facebook5velox9functions10stringCoreL12reverseAsciiEPcPKcm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.ag

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.j:                                             ; preds = %bb.h
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %20, align 8, !tbaa !120  ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ah
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.j
  %i.dh = load i64, ptr %i.ah, align 8, !tbaa !95
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.i
  %.pn27 = phi { ptr, i32 } [ %i.dd, %bb.i ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.de, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.av

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.dj = load i32, ptr %18, align 8, !tbaa !246, !noalias !777 ; 4 uses
  %i.dk = icmp ult i32 %i.dj, 13
  %i.dl = load ptr, ptr %i.ab, align 8, !noalias !777
  %i.dm = select i1 %i.dk, ptr %i.aa, ptr %i.dl   ; 2 uses
  %i.dn = zext i32 %i.dj to i64                   ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.do, ptr %21, align 8, !tbaa !116, !alias.scope !777
  %i.dp = icmp eq ptr %i.dm, null
  br i1 %i.dp, label %.noexc.i46, label %bb.l

.noexc.i46:                                       ; preds = %bb.k
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #36
          to label %.noexc47 unwind label %bb.ae

.noexc47:                                         ; preds = %.noexc.i46
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.dq = icmp ugt i32 %i.dj, 15
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45, label %._crit_edge.i.i.i.i.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45: ; preds = %bb.l
  %i.dr = add nuw nsw i64 %i.dn, 1
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #34
          to label %.noexc48 unwind label %bb.ae  ; 2 uses

.noexc48:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45
  store ptr %i.ds, ptr %21, align 8, !tbaa !120, !alias.scope !777
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !95, !alias.scope !777
  br label %._crit_edge.i.i.i.i.i44

._crit_edge.i.i.i.i.i44:                          ; preds = %.noexc48, %bb.l
  %i.dt = phi ptr [ %i.ds, %.noexc48 ], [ %i.do, %bb.l ] ; 3 uses
  switch i32 %i.dj, label %bb.n [
    i32 1, label %bb.m
    i32 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i44
  %i.du = load i8, ptr %i.aa, align 4, !tbaa !95, !noalias !777
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !95
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dt, ptr nonnull align 1 %i.dm, i64 %i.dn, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i.i44
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.dn, ptr %i.dv, align 8, !tbaa !118, !alias.scope !777
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dn
  store i8 0, ptr %i.dw, align 1, !tbaa !95
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !118 ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !247
  %i.ea = icmp ugt i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.p, label %.noexc

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %19, align 8, !tbaa !79
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(96) %19, i64 noundef %i.dx)
          to label %.noexc unwind label %bb.af, !inline_history !7

.noexc:                                           ; preds = %bb.o, %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %i.dx, ptr %i.ee, align 8, !tbaa !248
  %i.ef = load ptr, ptr %i.s, align 8, !tbaa !249
  %i.eg = load ptr, ptr %21, align 8, !tbaa !120  ; 2 uses
  %i.eh = icmp sgt i64 %i.dx, 0
  br i1 %i.eh, label %.lr.ph, label %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit

.lr.ph:                                           ; preds = %.noexc, %bb.ad
  %.011.i171 = phi i64 [ %i.gn, %bb.ad ], [ 0, %.noexc ] ; 3 uses
  %.0170 = phi i64 [ %i.ge, %bb.ad ], [ %i.dx, %.noexc ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.011.i171 ; 5 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !95  ; 6 uses
  %i.ek = zext i8 %i.ej to i32                    ; 3 uses
  %i.el = icmp sgt i8 %i.ej, -1
  br i1 %i.el, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread156, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %gepdiff = sub nsw i64 %i.dx, %.011.i171        ; 3 uses
  %23 = icmp slt i64 %gepdiff, 2
  br i1 %23, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !95  ; 4 uses
  %i.eo = and i8 %i.ej, -32
  %or.cond.i = icmp eq i8 %i.eo, -64
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ep = shl nuw nsw i32 %i.ek, 6
  %i.eq = zext i8 %i.en to i32
  %i.er = add nsw i32 %i.ep, -12416
  %i.es = add nsw i32 %i.er, %i.eq
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.t:                                             ; preds = %bb.r
  %i.et = icmp eq i8 %i.ej, -19
  %i.eu = and i8 %i.en, -96
  %i.ev = icmp eq i8 %i.eu, -96
  %or.cond46.i = select i1 %i.et, i1 %i.ev, i1 false
  %i.ew = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.ew, %or.cond46.i
  br i1 %or.cond47.i, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !95  ; 2 uses
  %i.ez = and i8 %i.ej, -16
  %or.cond5.i = icmp eq i8 %i.ez, -32
  br i1 %or.cond5.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fa = shl nuw nsw i32 %i.ek, 12
  %i.fb = zext i8 %i.en to i32
  %i.fc = shl nuw nsw i32 %i.fb, 6
  %i.fd = zext i8 %i.ey to i32
  %i.fe = add nsw i32 %i.fa, -925824
  %i.ff = add nsw i32 %i.fe, %i.fc
  %i.fg = add nsw i32 %i.ff, %i.fd
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.w:                                             ; preds = %bb.u
  %i.fh = icmp samesign ugt i64 %gepdiff, 3
  %i.fi = and i8 %i.ej, -8
  %or.cond8.i = icmp eq i8 %i.fi, -16
  %or.cond48.i = and i1 %i.fh, %or.cond8.i
  br i1 %or.cond48.i, label %bb.x, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !95
  %i.fl = shl nuw nsw i32 %i.ek, 18
  %i.fm = zext i8 %i.en to i32
  %i.fn = shl nuw nsw i32 %i.fm, 12
  %i.fo = zext i8 %i.ey to i32
  %i.fp = shl nuw nsw i32 %i.fo, 6
  %i.fq = zext i8 %i.fk to i32
  %i.fr = add nsw i32 %i.fl, -63447168
  %i.fs = add nsw i32 %i.fr, %i.fn
  %i.ft = add nsw i32 %i.fs, %i.fp
  %i.fu = add nsw i32 %i.ft, %i.fq
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.s, %bb.v, %bb.x
  %.1 = phi i32 [ 3, %bb.v ], [ 4, %bb.x ], [ 2, %bb.s ]
  %.3.i = phi i32 [ %i.fg, %bb.v ], [ %i.fu, %bb.x ], [ %i.es, %bb.s ]
  %i.fv = icmp eq i32 %.3.i, -1
  br i1 %i.fv, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread156

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread:      ; preds = %bb.t, %bb.q, %bb.w, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread156

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread156:   ; preds = %.lr.ph, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.0153 = phi i32 [ 1, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread ], [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.lr.ph ] ; 2 uses
  %i.fw = zext nneg i32 %.0153 to i64             ; 4 uses
  %.not.i = icmp slt i64 %.0170, %i.fw
  br i1 %.not.i, label %.noexc34, label %bb.aa, !prof !97

.noexc34:                                         ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread156
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !778
  store i64 %.0170, ptr %15, align 16, !tbaa !95, !noalias !778
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %.0153, ptr %i.fx, align 16, !tbaa !95, !alias.scope !779, !noalias !778
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.206, i64 31, i64 19, ptr nonnull %15)
          to label %.noexc35 unwind label %bb.af

.noexc35:                                         ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30, !noalias !778
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10stringCoreL14reverseUnicodeEPcPKclE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr nonnull @.str.206) #36
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc35
  unreachable

bb.z:                                             ; preds = %.noexc35
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %16, align 8, !tbaa !120  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.z
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !95
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.body

bb.aa:                                            ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread156
  %i.ge = sub nuw nsw i64 %.0170, %i.fw           ; 4 uses
  %.not12.i = icmp slt i64 %i.ge, %i.dx
  br i1 %.not12.i, label %bb.ad, label %.noexc36, !prof !123

.noexc36:                                         ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !780
  store i64 %i.ge, ptr %14, align 16, !tbaa !95, !alias.scope !781, !noalias !780
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.dx, ptr %i.gf, align 16, !tbaa !95, !alias.scope !781, !noalias !780
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.206, i64 31, i64 51, ptr nonnull %14)
          to label %.noexc37 unwind label %bb.af

.noexc37:                                         ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30, !noalias !780
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10stringCoreL14reverseUnicodeEPcPKclE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr nonnull @.str.206) #36
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %.noexc37
  unreachable

bb.ac:                                            ; preds = %.noexc37
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %17, align 8, !tbaa !120  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ac
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !95
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %.body

bb.ad:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %i.ei, i64 %i.fw, i1 false)
  %i.gn = add nuw nsw i64 %.011.i171, %i.fw       ; 2 uses
  %i.go = icmp slt i64 %i.gn, %i.dx
  br i1 %i.go, label %.lr.ph, label %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit, !llvm.loop !8

_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit: ; preds = %bb.ad
  %.pre182 = load ptr, ptr %21, align 8, !tbaa !120
  br label %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit

_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit: ; preds = %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit, %.noexc
  %i.gp = phi ptr [ %.pre182, %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit ], [ %i.eg, %.noexc ] ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.do
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit
  %i.gr = load i64, ptr %i.do, align 8, !tbaa !95
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i45, %.noexc.i46
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.af:                                            ; preds = %.noexc36, %.noexc34, %bb.p
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.gu, %bb.af ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %i.gv = load ptr, ptr %21, align 8, !tbaa !120  ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.do
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %.body
  %i.gx = load i64, ptr %i.do, align 8, !tbaa !95
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #35
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSD_EUliE_EEvPKmiibT_EUlimE_ZNS3_ISH_EEvSJ_iibSK_EUliE_EEviiSK_T0_:bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bv = shl nsw i32 %i.bk, 6                    ; 2 uses
  %i.bw = add nuw i32 %i.bv, 64
  %i.bx = sext i32 %i.bw to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.by = sext i32 %i.bv to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.by, %.lr.ph21.i ], [ %i.ca, %bb.j ] ; 2 uses
  %i.bz = trunc i64 %.020.i to i32
  call void @_ZZN8facebook5velox9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.bz)
  %i.ca = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bx
  br i1 %i.cb, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1905

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %i.cg, %bb.k ] ; 3 uses
  %i.cc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = or disjoint i32 %i.bu, %i.cd
  call void @_ZZN8facebook5velox9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.ce)
  %i.cf = add i64 %.01519.i, -1
  %i.cg = and i64 %i.cf, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.cg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1906

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ch = add nsw i32 %i.bj, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ch, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1907

bb.l:                                             ; preds = %._crit_edge
  %i.ci = ashr i32 %1, 6
  %i.cj = and i32 %1, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %notmask.i42 = shl nsw i64 -1, %i.ck
  %i.cl = xor i64 %notmask.i42, -1
  %i.cm = load i8, ptr %2, align 8, !tbaa !272, !range !124, !noundef !125
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !273
  %i.cp = sext i32 %i.ci to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !157
  %i.cs = xor i8 %i.cm, 1
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = xor i64 %i.cr, %i.cu
  %i.cw = and i64 %i.cv, %i.cl                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.cw, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.cw, %.preheader.i44 ], [ %i.dc, %bb.m ] ; 3 uses
  %i.cy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = or disjoint i32 %i.d, %i.cz
  call void @_ZZN8facebook5velox9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i32 noundef %i.da)
  %i.db = add nsw i64 %.011.i45, -1
  %i.dc = and i64 %i.db, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.dc, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1904

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions15ReverseFunction20ApplyVarcharInternalILb1EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSC_EUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox9functions15ReverseFunction20ApplyVarcharInternalILb0EE5applyERKNS0_17SelectivityVectorEPKNS0_10FlatVectorINS0_10StringViewEEEPSA_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.575", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.574", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.facebook::velox::exec::StringWriter", align 8 ; 19 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = load ptr, ptr %0, align 8, !tbaa !1918, !nonnull !125, !align !206
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %6, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 0, ptr %i.d, align 8, !tbaa !241
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.b, ptr %i.f, align 8, !tbaa !243
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 %1, ptr %i.g, align 8, !tbaa !244
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 6 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.j, align 8, !tbaa !118
  store i8 0, ptr %i.i, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1919, !nonnull !125, !align !206
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !440
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.r = load i32, ptr %i.q, align 8, !tbaa !246, !noalias !1920 ; 4 uses
  %i.s = icmp ult i32 %i.r, 13
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !1920
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 2 uses
  %i.x = zext i32 %i.r to i64                     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !116, !alias.scope !1920
  %i.z = icmp eq ptr %i.w, null
  br i1 %i.z, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #36
          to label %.noexc14 unwind label %bb.v

.noexc14:                                         ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp ugt i32 %i.r, 15
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.ab = add nuw nsw i64 %i.x, 1
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #34
          to label %.noexc15 unwind label %bb.v   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.ac, ptr %7, align 8, !tbaa !120, !alias.scope !1920
  store i64 %i.x, ptr %i.y, align 8, !tbaa !95, !alias.scope !1920
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc15, %bb.b
  %i.ad = phi ptr [ %i.ac, %.noexc15 ], [ %i.y, %bb.b ] ; 3 uses
  switch i32 %i.r, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ae = load i8, ptr %i.t, align 4, !tbaa !95, !noalias !1920
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !95
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.af, align 8, !tbaa !118, !alias.scope !1920
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !95
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !118 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !247
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %.noexc

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %6, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(96) %6, i64 noundef %i.ah)
          to label %.noexc unwind label %bb.w, !inline_history !7

.noexc:                                           ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ah, ptr %i.ao, align 8, !tbaa !248
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !249
  %i.aq = load ptr, ptr %7, align 8, !tbaa !120   ; 2 uses
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %.lr.ph, label %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit

.lr.ph:                                           ; preds = %.noexc, %bb.t
  %.011.i54 = phi i64 [ %i.cx, %bb.t ], [ 0, %.noexc ] ; 3 uses
  %.04453 = phi i64 [ %i.co, %bb.t ], [ %i.ah, %.noexc ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.011.i54 ; 5 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !95  ; 6 uses
  %i.au = zext i8 %i.at to i32                    ; 3 uses
  %i.av = icmp sgt i8 %i.at, -1
  br i1 %i.av, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread47, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %gepdiff = sub nsw i64 %i.ah, %.011.i54         ; 3 uses
  %8 = icmp slt i64 %gepdiff, 2
  br i1 %8, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !95  ; 4 uses
  %i.ay = and i8 %i.at, -32
  %or.cond.i = icmp eq i8 %i.ay, -64
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = shl nuw nsw i32 %i.au, 6
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nsw i32 %i.az, -12416
  %i.bc = add nsw i32 %i.bb, %i.ba
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp eq i8 %i.at, -19
  %i.be = and i8 %i.ax, -96
  %i.bf = icmp eq i8 %i.be, -96
  %or.cond46.i = select i1 %i.bd, i1 %i.bf, i1 false
  %i.bg = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.bg, %or.cond46.i
  br i1 %or.cond47.i, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !95  ; 2 uses
  %i.bj = and i8 %i.at, -16
  %or.cond5.i = icmp eq i8 %i.bj, -32
  br i1 %or.cond5.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = shl nuw nsw i32 %i.au, 12
  %i.bl = zext i8 %i.ax to i32
  %i.bm = shl nuw nsw i32 %i.bl, 6
  %i.bn = zext i8 %i.bi to i32
  %i.bo = add nsw i32 %i.bk, -925824
  %i.bp = add nsw i32 %i.bo, %i.bm
  %i.bq = add nsw i32 %i.bp, %i.bn
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.m:                                             ; preds = %bb.k
  %i.br = icmp samesign ugt i64 %gepdiff, 3
  %i.bs = and i8 %i.at, -8
  %or.cond8.i = icmp eq i8 %i.bs, -16
  %or.cond48.i = and i1 %i.br, %or.cond8.i
  br i1 %or.cond48.i, label %bb.n, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !95
  %i.bv = shl nuw nsw i32 %i.au, 18
  %i.bw = zext i8 %i.ax to i32
  %i.bx = shl nuw nsw i32 %i.bw, 12
  %i.by = zext i8 %i.bi to i32
  %i.bz = shl nuw nsw i32 %i.by, 6
  %i.ca = zext i8 %i.bu to i32
  %i.cb = add nsw i32 %i.bv, -63447168
  %i.cc = add nsw i32 %i.cb, %i.bx
  %i.cd = add nsw i32 %i.cc, %i.bz
  %i.ce = add nsw i32 %i.cd, %i.ca
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.i, %bb.l, %bb.n
  %.1 = phi i32 [ 3, %bb.l ], [ 4, %bb.n ], [ 2, %bb.i ]
  %.3.i = phi i32 [ %i.bq, %bb.l ], [ %i.ce, %bb.n ], [ %i.bc, %bb.i ]
  %i.cf = icmp eq i32 %.3.i, -1
  br i1 %i.cf, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread47

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread:      ; preds = %bb.j, %bb.g, %bb.m, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread47

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread47:    ; preds = %.lr.ph, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.0 = phi i32 [ 1, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread ], [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %.lr.ph ] ; 2 uses
  %i.cg = zext nneg i32 %.0 to i64                ; 4 uses
  %.not.i = icmp slt i64 %.04453, %i.cg
  br i1 %.not.i, label %.noexc10, label %bb.q, !prof !97

.noexc10:                                         ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !1921
  store i64 %.04453, ptr %3, align 16, !tbaa !95, !noalias !1921
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0, ptr %i.ch, align 16, !tbaa !95, !alias.scope !1922, !noalias !1921
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.206, i64 31, i64 19, ptr nonnull %3)
          to label %.noexc11 unwind label %bb.w

.noexc11:                                         ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !1921
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10stringCoreL14reverseUnicodeEPcPKclE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.206) #36
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc11
  unreachable

bb.p:                                             ; preds = %.noexc11
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !95
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.q:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread47
  %i.co = sub nuw nsw i64 %.04453, %i.cg          ; 4 uses
  %.not12.i = icmp slt i64 %i.co, %i.ah
  br i1 %.not12.i, label %bb.t, label %.noexc12, !prof !123

.noexc12:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1923
  store i64 %i.co, ptr %2, align 16, !tbaa !95, !alias.scope !1924, !noalias !1923
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ah, ptr %i.cp, align 16, !tbaa !95, !alias.scope !1924, !noalias !1923
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.206, i64 31, i64 51, ptr nonnull %2)
          to label %.noexc13 unwind label %bb.w

.noexc13:                                         ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1923
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10stringCoreL14reverseUnicodeEPcPKclE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.206) #36
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc13
  unreachable

bb.s:                                             ; preds = %.noexc13
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.s
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !95
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cw, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i64 %i.cg, i1 false)
  %i.cx = add nuw nsw i64 %.011.i54, %i.cg        ; 2 uses
  %i.cy = icmp slt i64 %i.cx, %i.ah
  br i1 %i.cy, label %.lr.ph, label %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit, !llvm.loop !8

_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit: ; preds = %bb.t
  %.pre = load ptr, ptr %7, align 8, !tbaa !120
  br label %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit

_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit: ; preds = %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit, %.noexc
  %i.cz = phi ptr [ %.pre, %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit.loopexit ], [ %i.aq, %.noexc ] ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.y
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit
  %i.db = load i64, ptr %i.y, align 8, !tbaa !95
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZN8facebook5velox9functions10stringImpl7reverseILb0ENS0_4exec12StringWriterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT0_RKT1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  invoke void @_ZN8facebook5velox4exec12StringWriter8finalizeEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox4exec12StringWriterE, i64 16), ptr %6, align 8, !tbaa !79
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !120 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.i
  br i1 %i.de, label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.df = load i64, ptr %i.i, align 8, !tbaa !95
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #35, !inline_history !265
  br label %_ZN8facebook5velox4exec12StringWriterD2Ev.exit

_ZN8facebook5velox4exec12StringWriterD2Ev.exit:   ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
end_hunk_1
