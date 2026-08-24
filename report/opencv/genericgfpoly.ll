Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/genericgfpoly?download=true
inline.NumInlined: 338
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5zxing13GenericGFPoly13addOrSubtractENS_3RefIS0_EERNS_12ErrorHandlerE:bb.a
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #14
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit44

_ZN5zxing12ErrorHandlerD2Ev.exit44:               ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit80

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !30
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit, label %bb.f

_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit:  ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !8
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !8
  store ptr %i.c, ptr %0, align 8, !tbaa !33
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit74

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !8
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !8
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit74

bb.h:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !8
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !8, !noalias !56
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !8, !noalias !56
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !18
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.y to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ah to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp sgt i32 %i.az, %i.bg
  br i1 %i.bh, label %bb.i, label %_ZN5zxing8ArrayRefIiED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 10 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !8
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !8
  %i.bl = load i32, ptr %i.aq, align 8, !tbaa !8
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.aq, align 8, !tbaa !8
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bi, align 8, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 -559026175, ptr %i.bi, align 8, !tbaa !8
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(12) %i.w) #13, !inline_history !39
  %.pre = load i32, ptr %i.bi, align 8, !tbaa !8
  %i.bt = add i32 %.pre, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bu = phi i32 [ %i.bn, %bb.i ], [ %i.bt, %bb.j ]
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !8
  %i.bv = load i32, ptr %i.aq, align 8, !tbaa !8
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.aq, align 8, !tbaa !8
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.l, label %_ZN5zxing8ArrayRefIiEaSERKS1_.exit52

bb.l:                                             ; preds = %bb.k
  store i32 -559026175, ptr %i.aq, align 8, !tbaa !8
  %i.by = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #13, !inline_history !39
  br label %_ZN5zxing8ArrayRefIiEaSERKS1_.exit52

_ZN5zxing8ArrayRefIiEaSERKS1_.exit52:             ; preds = %bb.k, %bb.l
  %i.cb = load i32, ptr %i.bi, align 8, !tbaa !8
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.bi, align 8, !tbaa !8
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %_ZN5zxing8ArrayRefIiED2Ev.exit

bb.m:                                             ; preds = %_ZN5zxing8ArrayRefIiEaSERKS1_.exit52
  store i32 -559026175, ptr %i.bi, align 8, !tbaa !8
  %i.ce = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.w) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit

_ZN5zxing8ArrayRefIiED2Ev.exit:                   ; preds = %bb.m, %_ZN5zxing8ArrayRefIiEaSERKS1_.exit52, %bb.h
  %.sroa.798.0 = phi ptr [ %i.af, %bb.h ], [ %i.w, %_ZN5zxing8ArrayRefIiEaSERKS1_.exit52 ], [ %i.w, %bb.m ] ; 8 uses
  %.sroa.7111.0 = phi ptr [ %i.w, %bb.h ], [ %i.af, %_ZN5zxing8ArrayRefIiEaSERKS1_.exit52 ], [ %i.af, %bb.m ] ; 8 uses
  %i.ch = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15
          to label %bb.n unwind label %bb.p       ; 15 uses

bb.n:                                             ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.798.0, i64 16 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.798.0, i64 24 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !18
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !21
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 17 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIiEE, i64 16), ptr %i.ch, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %sext = shl i64 %i.co, 30
  %i.ct = ashr i64 %sext, 32                      ; 2 uses
  %i.cu = icmp slt i32 %i.cq, 0
  br i1 %i.cu, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.cv = shl nuw nsw i64 %i.ct, 2                ; 3 uses
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #15
          to label %.noexc55 unwind label %bb.q   ; 5 uses

.noexc55:                                         ; preds = %.noexc3.i
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.cv, i1 false), !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  %.pre129 = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.da = add i32 %.pre129, 1
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc55
  %i.db = phi ptr [ %i.cw, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  %i.dc = phi i32 [ %i.da, %.noexc55 ], [ 1, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.noexc55 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.dd, align 8, !tbaa !18
  store i32 %i.dc, ptr %i.cr, align 8, !tbaa !8
  %i.de = load ptr, ptr %i.cj, align 8, !tbaa !18
  %i.df = load ptr, ptr %i.ci, align 8, !tbaa !21 ; 8 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = lshr exact i64 %i.di, 2
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.7111.0, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.7111.0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !18
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !21
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = sub nsw i32 %i.dk, %i.dt                ; 4 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.o
  %i.dw = ptrtoaddr ptr %i.db to i64
  %wide.trip.count = zext nneg i32 %i.du to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.du, 8
  %i.dx = sub i64 %i.dh, %i.dw
  %diff.check = icmp ugt i64 %i.dx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load = load <4 x i32>, ptr %i.dy, align 4, !tbaa !30
  %wide.load139 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !30
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <4 x i32> %wide.load, ptr %i.ea, align 4, !tbaa !30
  store <4 x i32> %wide.load139, ptr %i.eb, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.prol
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.prol
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !30
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !60

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %.preheader, label %scalar.ph

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.o
  %i.ei = icmp sgt i32 %i.dt, 0
  br i1 %i.ei, label %.lr.ph124.preheader, label %._crit_edge

.lr.ph124.preheader:                              ; preds = %.preheader
  %i.ej = sext i32 %i.du to i64                   ; 2 uses
  br label %.lr.ph124

bb.p:                                             ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit76.thread

bb.q:                                             ; preds = %.noexc3.i, %.noexc.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 40) #14
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit76.thread

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4, !tbaa !30
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !30
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.1
  %i.et = load i32, ptr %i.es, align 4, !tbaa !30
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.1
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !30
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !30
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.2
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !30
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %scalar.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.s, %.preheader
  %i.ey = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
          to label %bb.t unwind label %bb.x       ; 8 uses

bb.r:                                             ; preds = %.lr.ph124
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.s
  %indvars.iv126 = phi i64 [ %i.ej, %.lr.ph124.preheader ], [ %indvars.iv.next127, %bb.s ] ; 4 uses
  %i.fa = phi ptr [ %i.df, %.lr.ph124.preheader ], [ %i.fk, %bb.s ]
  %6 = sub nsw i64 %indvars.iv126, %i.ej
  %i.fb = load ptr, ptr %i.dl, align 8, !tbaa !21
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %6
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !30
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv126
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !30
  %i.fg = invoke noundef i32 @_ZN5zxing9GenericGF13addOrSubtractEii(i32 noundef %i.fd, i32 noundef %i.ff)
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %.lr.ph124
  %i.fh = load ptr, ptr %i.cs, align 8, !tbaa !21
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv126
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !30
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 2 uses
  %i.fj = load ptr, ptr %i.cj, align 8, !tbaa !18
  %i.fk = load ptr, ptr %i.ci, align 8, !tbaa !21 ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %sext138 = shl i64 %i.fn, 30
  %i.fo = ashr i64 %sext138, 32
  %i.fp = icmp slt i64 %indvars.iv.next127, %i.fo
  br i1 %i.fp, label %.lr.ph124, label %._crit_edge, !llvm.loop !62

bb.t:                                             ; preds = %._crit_edge
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !53, !align !54
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.fr, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %5, align 8, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ft = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.cr, align 8, !tbaa !8
  store ptr %i.ch, ptr %i.fs, align 8, !tbaa !15
  invoke void @_ZN5zxing13GenericGFPolyC2ERNS_9GenericGFENS_8ArrayRefIiEERNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.ey, ptr noundef nonnull align 8 dereferenceable(92) %i.fq, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 9 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !8
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !8
  %i.fy = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.fz = add i32 %i.fy, -1                       ; 2 uses
  store i32 %i.fz, ptr %i.cr, align 8, !tbaa !8
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.v, label %_ZN5zxing8ArrayRefIiED2Ev.exit61

bb.v:                                             ; preds = %bb.u
  store i32 -559026175, ptr %i.cr, align 8, !tbaa !8
  %i.gb = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  tail call void %i.gd(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit61

_ZN5zxing8ArrayRefIiED2Ev.exit61:                 ; preds = %bb.u, %bb.v
  %i.ge = load ptr, ptr %3, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = invoke noundef i32 %i.gg(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit61
  %.not = icmp eq i32 %i.gh, 0
  %.pre130 = load i32, ptr %i.fv, align 8, !tbaa !8 ; 2 uses
  br i1 %.not, label %_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit66, label %bb.ac

bb.x:                                             ; preds = %._crit_edge
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

bb.y:                                             ; preds = %bb.t
  %i.gj = landingpad { ptr, i32 }
          cleanup
  %i.gk = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.gl = add i32 %i.gk, -1                       ; 2 uses
  store i32 %i.gl, ptr %i.cr, align 8, !tbaa !8
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.z, label %_ZN5zxing8ArrayRefIiED2Ev.exit63

bb.z:                                             ; preds = %bb.y
  store i32 -559026175, ptr %i.cr, align 8, !tbaa !8
  %i.gn = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  tail call void %i.gp(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit63

_ZN5zxing8ArrayRefIiED2Ev.exit63:                 ; preds = %bb.y, %bb.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 48) #14
  br label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

bb.aa:                                            ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit61
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load i32, ptr %i.fv, align 8, !tbaa !8
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  store i32 %i.gs, ptr %i.fv, align 8, !tbaa !8
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ab, label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  store i32 -559026175, ptr %i.fv, align 8, !tbaa !8
  %i.gu = load ptr, ptr %i.ey, align 8, !tbaa !10
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(12) %i.ey) #13, !inline_history !41
  br label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit

_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit66: ; preds = %bb.w
  %i.gx = add i32 %.pre130, 1                     ; 2 uses
  store i32 %i.gx, ptr %i.fv, align 8, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit66
  %i.gy = phi i32 [ %i.gx, %_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit66 ], [ %.pre130, %bb.w ]
  %storemerge = phi ptr [ %i.ey, %_ZN5zxing3RefINS_13GenericGFPolyEEC2ERKS2_.exit66 ], [ null, %bb.w ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !33
  %i.gz = add i32 %i.gy, -1                       ; 2 uses
  store i32 %i.gz, ptr %i.fv, align 8, !tbaa !8
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.ad, label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit68

bb.ad:                                            ; preds = %bb.ac
  store i32 -559026175, ptr %i.fv, align 8, !tbaa !8
  %i.hb = load ptr, ptr %i.ey, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  tail call void %i.hd(ptr noundef nonnull align 8 dereferenceable(12) %i.ey) #13, !inline_history !41
  br label %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit68

_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit68:    ; preds = %bb.ad, %bb.ac
  %i.he = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.hf = add i32 %i.he, -1                       ; 2 uses
  store i32 %i.hf, ptr %i.cr, align 8, !tbaa !8
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.ae, label %_ZN5zxing8ArrayRefIiED2Ev.exit70

bb.ae:                                            ; preds = %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit68
  store i32 -559026175, ptr %i.cr, align 8, !tbaa !8
  %i.hh = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  tail call void %i.hj(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit70

_ZN5zxing8ArrayRefIiED2Ev.exit70:                 ; preds = %bb.ae, %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit68
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.798.0, i64 8 ; 3 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !8
  %i.hm = add i32 %i.hl, -1                       ; 2 uses
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !8
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.af, label %_ZN5zxing8ArrayRefIiED2Ev.exit72

bb.af:                                            ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit70
  store i32 -559026175, ptr %i.hk, align 8, !tbaa !8
  %i.ho = load ptr, ptr %.sroa.798.0, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.798.0) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit72

_ZN5zxing8ArrayRefIiED2Ev.exit72:                 ; preds = %bb.af, %_ZN5zxing8ArrayRefIiED2Ev.exit70
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.7111.0, i64 8 ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !8
  %i.ht = add i32 %i.hs, -1                       ; 2 uses
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !8
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.ag, label %_ZN5zxing8ArrayRefIiED2Ev.exit74

bb.ag:                                            ; preds = %_ZN5zxing8ArrayRefIiED2Ev.exit72
  store i32 -559026175, ptr %i.hr, align 8, !tbaa !8
  %i.hv = load ptr, ptr %.sroa.7111.0, align 8, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8
  tail call void %i.hx(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7111.0) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit74

_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit:      ; preds = %bb.r, %bb.ab, %bb.aa, %_ZN5zxing8ArrayRefIiED2Ev.exit63, %bb.x
  %.pn36 = phi { ptr, i32 } [ %i.gq, %bb.ab ], [ %i.ez, %bb.r ], [ %i.gi, %bb.x ], [ %i.gj, %_ZN5zxing8ArrayRefIiED2Ev.exit63 ], [ %i.gq, %bb.aa ] ; 2 uses
  %i.hy = load i32, ptr %i.cr, align 8, !tbaa !8
  %i.hz = add i32 %i.hy, -1                       ; 2 uses
  store i32 %i.hz, ptr %i.cr, align 8, !tbaa !8
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.ah, label %_ZN5zxing8ArrayRefIiED2Ev.exit76.thread

bb.ah:                                            ; preds = %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit
  store i32 -559026175, ptr %i.cr, align 8, !tbaa !8
  %i.ib = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  tail call void %i.id(ptr noundef nonnull align 8 dereferenceable(12) %i.ch) #13, !inline_history !40
  br label %_ZN5zxing8ArrayRefIiED2Ev.exit76.thread

_ZN5zxing8ArrayRefIiED2Ev.exit76.thread:          ; preds = %bb.ah, %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit, %bb.q, %bb.p
  %.pn36.pn.pn120 = phi { ptr, i32 } [ %i.el, %bb.q ], [ %.pn36, %bb.ah ], [ %.pn36, %_ZN5zxing3RefINS_13GenericGFPolyEED2Ev.exit ], [ %i.ek, %bb.p ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.798.0, i64 8 ; 3 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !8
  %i.ig = add i32 %i.if, -1                       ; 2 uses
  store i32 %i.ig, ptr %i.ie, align 8, !tbaa !8
  %i.ih = icmp eq i32 %i.ig, 0
end_hunk_0
