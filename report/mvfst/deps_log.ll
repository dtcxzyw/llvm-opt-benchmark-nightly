inline.NumInlined: 281
inline.NumDeleted: 141
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7DepsLog4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP5StatePS5_:bb.a
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0                    ; 2 uses
  %i.ah = zext i1 %i.ag to i32                    ; 0 uses
  %i.ai = load i32, ptr %i.b, align 4             ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 4
  %or.cond = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond, label %.critedge108, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ak = call i64 @ftell(ptr noundef nonnull %i.o) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.al = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.o)
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = load i32, ptr %i.c, align 4, !tbaa !78  ; 2 uses
  %i.av = and i32 %i.au, 2147483647               ; 2 uses
  %i.aw = icmp samesign ugt i32 %i.av, 524287
  br i1 %i.aw, label %.sink.split, label %.lr.ph191

.critedge108thread-pre-split:                     ; preds = %bb.h
  %.pr = load i32, ptr %i.b, align 4, !tbaa !78
  br label %.critedge108

.critedge108:                                     ; preds = %.critedge108thread-pre-split, %bb.i
  %i.ax = phi i32 [ %.pr, %.critedge108thread-pre-split ], [ %i.ai, %bb.i ]
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.j, label %.critedge108.thread

bb.j:                                             ; preds = %.critedge108
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !46
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.ba, ptr noundef nonnull @.str.2, i64 noundef 35) #18 ; 0 uses
  br label %bb.k

.critedge108.thread:                              ; preds = %bb.g, %.critedge108
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.bd, ptr noundef nonnull @.str.3, i64 noundef 48) #18 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge108.thread, %bb.j
  %i.bf = call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !34
  %i.bh = call i32 @unlink(ptr noundef %i.bg) #18 ; 0 uses
  br label %bb.am

bb.l:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !78  ; 2 uses
  %i.bj = and i32 %i.bi, 2147483647               ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.bj, 524287
  br i1 %i.bk, label %.sink.split, label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph152, %bb.l
  %i.bl = phi i32 [ %i.bj, %bb.l ], [ %i.av, %.lr.ph152 ] ; 6 uses
  %.not101190.in = phi i32 [ %i.bi, %bb.l ], [ %i.au, %.lr.ph152 ]
  %.088150189 = phi i32 [ %.391, %bb.l ], [ 0, %.lr.ph152 ] ; 3 uses
  %.083151188 = phi i32 [ %.487, %bb.l ], [ 0, %.lr.ph152 ] ; 3 uses
  %i.bm = phi i64 [ %i.fy, %bb.l ], [ %i.ak, %.lr.ph152 ] ; 2 uses
  %i.bn = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bo = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef %i.bn, i64 noundef 1, ptr noundef nonnull %i.o)
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %.lr.ph191
  %.not101190 = icmp sgt i32 %.not101190.in, -1
  br i1 %.not101190, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %i.a, align 16, !tbaa !78 ; 3 uses
  %i.br = load i64, ptr %i.an, align 4
  %i.bs = lshr i32 %i.bl, 2                       ; 2 uses
  %i.bt = add nsw i32 %i.bs, -3                   ; 2 uses
  %i.bu = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 4 uses
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.bt, ptr %i.bv, align 8, !tbaa !73
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = zext i32 %i.bt to i64                   ; 3 uses
  %i.by = icmp samesign ult i32 %i.bl, 12
  %i.bz = shl nuw nsw i64 %i.bx, 3
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  %i.cb = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ca) #21 ; 6 uses
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !74
  %i.cc = icmp samesign ugt i32 %i.bl, 15
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 5 uses
  %xtraiter = and i64 %i.bx, 3                    ; 3 uses
  %i.ce = add nsw i32 %i.bs, -4
  %i.cf = icmp ult i32 %i.ce, 3
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bx, 4294967292
  br label %bb.w

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod197 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod197)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.o ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.epil
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !78
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.epil
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !55
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !83

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.o, %bb.n
  %i.cm = add nsw i32 %.088150189, 1
  %i.cn = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.co = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 6 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3                 ; 4 uses
  %i.ct = trunc i64 %i.cs to i32
  %.not.i = icmp slt i32 %i.bq, %i.ct
  br i1 %.not.i, label %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cu = add nsw i32 %i.bq, 1
  %i.cv = sext i32 %i.cu to i64                   ; 4 uses
  %i.cw = icmp ult i64 %i.cs, %i.cv
  br i1 %i.cw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cx = sub nuw nsw i64 %i.cv, %i.cs
  call void @_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 noundef %i.cx)
  %.pre.i = load ptr, ptr %i.aq, align 8, !tbaa !32
  br label %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cy = icmp ugt i64 %i.cs, %i.cv
  br i1 %i.cy, label %bb.s, label %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cv ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cn, %i.cz
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.cz, ptr %i.ar, align 8, !tbaa !54
  br label %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %._crit_edge
  %i.da = phi ptr [ %i.co, %bb.t ], [ %i.co, %bb.s ], [ %i.co, %bb.r ], [ %.pre.i, %bb.q ], [ %i.co, %._crit_edge ] ; 2 uses
  %i.db = sext i32 %i.bq to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !68 ; 3 uses
  %.not139 = icmp eq ptr %i.dd, null              ; 2 uses
  br i1 %.not139, label %_ZN7DepsLog10UpdateDepsEiPNS_4DepsE.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !74 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN7DepsLog4DepsD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.df) #17
  br label %_ZN7DepsLog4DepsD2Ev.exit.i

_ZN7DepsLog4DepsD2Ev.exit.i:                      ; preds = %bb.v, %bb.u
  call void @_ZdlPv(ptr noundef nonnull %i.dd) #17
  %.pre9.i = load ptr, ptr %i.aq, align 8, !tbaa !32
  br label %_ZN7DepsLog10UpdateDepsEiPNS_4DepsE.exit

_ZN7DepsLog10UpdateDepsEiPNS_4DepsE.exit:         ; preds = %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i, %_ZN7DepsLog4DepsD2Ev.exit.i
  %i.dh = phi ptr [ %.pre9.i, %_ZN7DepsLog4DepsD2Ev.exit.i ], [ %i.da, %_ZNSt6vectorIPN7DepsLog4DepsESaIS2_EE6resizeEm.exit.i ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.db
  store ptr %i.bu, ptr %i.di, align 8, !tbaa !68
  %i.dj = zext i1 %.not139 to i32
  %spec.select109 = add nsw i32 %.083151188, %i.dj
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.w, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.w ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.w ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !78
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !55
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !55
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dq = load i32, ptr %8, align 16, !tbaa !78
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %9 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dt, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = load i32, ptr %11, align 4, !tbaa !78
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %12 = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.dy, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ea = load i32, ptr %14, align 8, !tbaa !78
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !55
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %15 = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store ptr %i.ed, ptr %15, align 8, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.w, !llvm.loop !85

bb.x:                                             ; preds = %bb.m
  %i.ef = add nsw i32 %i.bl, -4
  %i.eg = add nsw i32 %i.bl, -5                   ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.a, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !51
  %i.ek = icmp eq i8 %i.ej, 0
  %spec.select110 = select i1 %i.ek, i32 %i.eg, i32 %i.ef ; 2 uses
  %i.el = sext i32 %spec.select110 to i64
  %i.em = getelementptr i8, ptr %i.a, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !51
  %i.ep = icmp eq i8 %i.eo, 0
  %i.eq = sext i1 %i.ep to i32
  %.177 = add nsw i32 %spec.select110, %i.eq      ; 2 uses
  %i.er = sext i32 %.177 to i64
  %i.es = getelementptr i8, ptr %i.a, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !51
  %i.ev = icmp eq i8 %i.eu, 0
  %i.ew = sext i1 %i.ev to i32
  %.278 = add nsw i32 %.177, %i.ew
  %i.ex = sext i32 %.278 to i64
  %i.ey = call noundef ptr @_ZN5State7GetNodeE11StringPiecem(ptr noundef nonnull align 8 dereferenceable(264) %2, ptr nonnull %i.a, i64 %i.ex, i64 noundef 0) #18 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -4
  %i.fb = load i32, ptr %i.fa, align 1, !tbaa !78
  %i.fc = load ptr, ptr %i.as, align 8, !tbaa !79 ; 4 uses
  %i.fd = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 5 uses
  %i.fh = ashr exact i64 %i.fg, 3                 ; 4 uses
  %i.fi = trunc i64 %i.fh to i32                  ; 2 uses
  %i.fj = xor i32 %i.fb, %i.fi
  %.not102 = icmp eq i32 %i.fj, -1
  br i1 %.not102, label %bb.y, label %.sink.split

bb.y:                                             ; preds = %bb.x
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 112
  store i32 %i.fi, ptr %i.fk, align 8, !tbaa !57
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !86
  %.not.i114 = icmp eq ptr %i.fc, %i.fl
  br i1 %.not.i114, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ey, ptr %i.fc, align 8, !tbaa !55
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fm, ptr %i.as, align 8, !tbaa !79
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fn = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fn, label %bb.ab, label %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #19
  unreachable

_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fh
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 1152921504606846975)
  %i.fr = select i1 %i.fp, i64 1152921504606846975, i64 %i.fq ; 3 uses
  %.not.i.i.i115 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i115)
  %i.fs = shl nuw nsw i64 %i.fr, 3
  %i.ft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #21 ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.fg ; 2 uses
  store ptr %i.ey, ptr %i.fu, align 8, !tbaa !55
  %i.fv = icmp sgt i64 %i.fg, 0
  br i1 %i.fv, label %bb.ac, label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr align 8 %i.fd, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ac, %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #17
  br label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ft, ptr %i.ap, align 8, !tbaa !33
  store ptr %i.fw, ptr %i.as, align 8, !tbaa !79
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.fx, ptr %i.at, align 8, !tbaa !86
  br label %_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.z, %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZN7DepsLog10UpdateDepsEiPNS_4DepsE.exit
  %.391 = phi i32 [ %.088150189, %bb.z ], [ %i.cm, %_ZN7DepsLog10UpdateDepsEiPNS_4DepsE.exit ], [ %.088150189, %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %.487 = phi i32 [ %.083151188, %bb.z ], [ %spec.select109, %_ZN7DepsLog10UpdateDepsEiPNS_4DepsE.exit ], [ %.083151188, %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.fy = call i64 @ftell(ptr noundef nonnull %i.o) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.fz = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %i.o)
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %._crit_edge153.loopexit, label %bb.l

._crit_edge153.loopexit:                          ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_.exit
  %i.gb = mul nsw i32 %.487, 3
  %i.gc = icmp sgt i32 %.391, %i.gb
  %i.gd = icmp sgt i32 %.391, 1000
  %i.ge = select i1 %i.gd, i1 %i.gc, i1 false
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %._crit_edge153.loopexit, %.preheader
  %.088.lcssa = phi i1 [ false, %.preheader ], [ %i.ge, %._crit_edge153.loopexit ]
  %.lcssa = phi i64 [ %i.ak, %.preheader ], [ %i.fy, %._crit_edge153.loopexit ]
  %i.gf = call i32 @feof(ptr noundef nonnull %i.o) #18
  %.not103 = icmp eq i32 %i.gf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %.not103, label %bb.ae, label %bb.ak

.sink.split:                                      ; preds = %bb.x, %.lr.ph191, %bb.l, %.lr.ph152
  %.lcssa183 = phi i64 [ %i.ak, %.lr.ph152 ], [ %i.bm, %bb.x ], [ %i.bm, %.lr.ph191 ], [ %i.fy, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %._crit_edge153
  %i.gg = phi i64 [ %.lcssa, %._crit_edge153 ], [ %.lcssa183, %.sink.split ]
  %i.gh = call i32 @ferror(ptr noundef nonnull %i.o) #18 ; 2 uses
  %.not104 = icmp eq i32 %i.gh, 0
  br i1 %.not104, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gi = call ptr @strerror(i32 noundef %i.gh) #18 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !46
  %i.gl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gi) #18
  %i.gm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.gk, ptr noundef nonnull %i.gi, i64 noundef %i.gl) #18 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !46
  %i.gp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.go, ptr noundef nonnull @.str.4, i64 noundef 21) #18 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gq = call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  %i.gr = call noundef zeroext i1 @_Z8TruncateRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmPS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gg, ptr noundef nonnull %3) #18
  br i1 %i.gr, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !46
  %i.gu = add i64 %i.gt, -4611686018427387892
  %i.gv = icmp ult i64 %i.gu, 12
  br i1 %i.gv, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.ai
  %i.gw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.5, i64 noundef 12) #18 ; 0 uses
  br label %bb.am

bb.ak:                                            ; preds = %._crit_edge153
  %i.gx = call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  br i1 %.088.lcssa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %0, align 8, !tbaa !35
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.ah, %bb.al, %bb.ak, %bb.k
  %.1 = phi i32 [ 1, %bb.k ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ 0, %bb.ah ], [ 1, %bb.al ], [ 1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.e, %bb.am, %bb.f
  %.2 = phi i32 [ %.1, %bb.am ], [ 0, %bb.f ], [ 2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN12ScopedMetricD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

declare noundef ptr @_ZN7Metrics9NewMetricERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6
end_hunk_0
