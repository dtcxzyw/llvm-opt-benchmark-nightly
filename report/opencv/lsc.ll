Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lsc?download=true
inline.NumInlined: 2709
inline.NumDeleted: 902
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv8ximgproc17SuperpixelLSCImpl27PreEnforceLabelConnectivityEi:bb.a
  %.sink.idx.i84 = select i1 %i.be, i64 0, i64 %i.bh
  %.sink.i85 = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink.idx.i84
  %i.bi = getelementptr inbounds [4 x i8], ptr %.sink.i85, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !68 ; 2 uses
  %i.bk = add nsw i32 %i.as, -1                   ; 3 uses
  %i.bl = icmp sgt i32 %i.as, 0                   ; 2 uses
  br i1 %i.bl, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !60
  %i.bn = icmp sle i32 %i.as, %i.bm
  %i.bo = icmp sgt i32 %storemerge70195, -1
  %.not.not = icmp slt i32 %storemerge70195, %i.ar
  %i.bp = and i1 %i.bo, %.not.not
  %or.cond146 = and i1 %i.bn, %i.bp
  br i1 %or.cond146, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.m, %bb.l, %.thread268, %bb.i, %bb.f
  %.lcssa208 = phi i32 [ %i.bk, %bb.f ], [ %i.bk, %bb.i ], [ %i.as, %.thread268 ], [ %i.cm, %bb.l ], [ %i.cm, %bb.m ], [ %i.cm, %bb.n ], [ %i.as, %bb.p ], [ %i.bk, %bb.r ]
  %.lcssa = phi i32 [ %storemerge70195, %bb.f ], [ %i.bz, %bb.i ], [ %i.cf, %.thread268 ], [ %i.co, %bb.l ], [ %storemerge70195, %bb.m ], [ %i.cx, %bb.n ], [ %i.dc, %bb.p ], [ %i.dh, %bb.r ]
  %i.bq = zext nneg i32 %.lcssa to i64            ; 2 uses
  %i.br = mul i64 %i.aw, %i.bq
  %.sink.idx.i86 = select i1 %i.au, i64 0, i64 %i.br
  %.sink.i87 = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink.idx.i86
  %i.bs = zext nneg i32 %.lcssa208 to i64         ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink.i87, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !58
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %bb.h, label %.loopexit156

bb.h:                                             ; preds = %bb.g
  %i.bw = mul i64 %i.bg, %i.bq
  %.sink.idx.i88 = select i1 %i.be, i64 0, i64 %i.bw
  %.sink.i89 = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink.idx.i88
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i89, i64 %i.bs
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !68 ; 2 uses
  %.not = icmp eq i32 %i.by, %i.bj
  %spec.select = select i1 %.not, i32 %.1196, i32 %i.by
  br label %.loopexit156

bb.i:                                             ; preds = %bb.f
  %i.bz = add nsw i32 %storemerge70195, -1
  %i.ca = load i32, ptr %i.e, align 8, !tbaa !60
  %i.cb = icmp sle i32 %i.as, %i.ca
  %i.cc = icmp sgt i32 %storemerge70195, 0
  %.not.not.1 = icmp sle i32 %storemerge70195, %i.ar
  %i.cd = and i1 %i.cc, %.not.not.1
  %or.cond146.1 = and i1 %i.cb, %i.cd
  br i1 %or.cond146.1, label %bb.g, label %.thread268

bb.j:                                             ; preds = %bb.e
  %i.ce = icmp sgt i32 %i.as, -1
  br i1 %i.ce, label %.thread268, label %bb.k

.thread268:                                       ; preds = %bb.i, %bb.j
  %i.cf = add nsw i32 %storemerge70195, -1
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !60
  %i.ch = icmp slt i32 %i.as, %i.cg
  %i.ci = icmp sgt i32 %storemerge70195, 0
  %.not.not.2 = icmp sle i32 %storemerge70195, %i.ar
  %i.cj = and i1 %i.ci, %.not.not.2
  %or.cond146.2 = and i1 %i.ch, %i.cj
  br i1 %or.cond146.2, label %bb.g, label %.thread269

.thread269:                                       ; preds = %.thread268
  %i.ck = add nuw nsw i32 %i.as, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp eq i32 %i.as, -1
  br i1 %i.cl, label %bb.l, label %.loopexit156

bb.l:                                             ; preds = %.thread269, %bb.k
  %i.cm = phi i32 [ %i.ck, %.thread269 ], [ 0, %bb.k ] ; 6 uses
  %i.cn = phi i1 [ true, %.thread269 ], [ false, %bb.k ]
  %i.co = add nsw i32 %storemerge70195, -1
  %i.cp = load i32, ptr %i.e, align 8, !tbaa !60
  %i.cq = icmp slt i32 %i.cm, %i.cp
  %i.cr = icmp sgt i32 %storemerge70195, 0
  %.not.not.3 = icmp sle i32 %storemerge70195, %i.ar
  %i.cs = and i1 %i.cr, %.not.not.3
  %or.cond146.3 = and i1 %i.cq, %i.cs
  br i1 %or.cond146.3, label %bb.g, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.e, align 8, !tbaa !60
  %i.cu = icmp slt i32 %i.cm, %i.ct
  %i.cv = icmp sgt i32 %storemerge70195, -1
  %.not.not.4 = icmp slt i32 %storemerge70195, %i.ar
  %i.cw = and i1 %i.cv, %.not.not.4
  %or.cond146.4 = and i1 %i.cu, %i.cw
  br i1 %or.cond146.4, label %bb.g, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = add nsw i32 %storemerge70195, 1         ; 2 uses
  %i.cy = load i32, ptr %i.e, align 8, !tbaa !60
  %i.cz = icmp slt i32 %i.cm, %i.cy
  %i.da = icmp sgt i32 %storemerge70195, -2
  %.not.not.5 = icmp slt i32 %i.cx, %i.ar
  %i.db = and i1 %i.da, %.not.not.5
  %or.cond146.5 = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %or.cond146.5, label %bb.g, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = add nsw i32 %storemerge70195, 1         ; 2 uses
  %i.dd = load i32, ptr %i.e, align 8, !tbaa !60
  %i.de = icmp slt i32 %i.as, %i.dd
  %i.df = icmp sgt i32 %storemerge70195, -2
  %.not.not.6 = icmp slt i32 %i.dc, %i.ar
  %i.dg = and i1 %i.df, %.not.not.6
  %or.cond146.6 = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %or.cond146.6, label %bb.g, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.bl, label %bb.r, label %.loopexit156

bb.r:                                             ; preds = %bb.q
  %i.dh = add nsw i32 %storemerge70195, 1         ; 2 uses
  %i.di = load i32, ptr %i.e, align 8, !tbaa !60
  %i.dj = icmp sle i32 %i.as, %i.di
  %i.dk = icmp sgt i32 %storemerge70195, -2
  %.not.not.7 = icmp slt i32 %i.dh, %i.ar
  %i.dl = and i1 %i.dk, %.not.not.7
  %or.cond146.7 = select i1 %i.dj, i1 %i.dl, i1 false
  br i1 %or.cond146.7, label %bb.g, label %.loopexit156

.loopexit156:                                     ; preds = %bb.k, %bb.q, %bb.r, %bb.h, %bb.g
  %.5 = phi i32 [ %spec.select, %bb.h ], [ %.1196, %bb.g ], [ %.1196, %bb.r ], [ %.1196, %bb.q ], [ %.1196, %bb.k ] ; 5 uses
  store i8 1, ptr %i.ba, align 1, !tbaa !58
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !155
  %i.dn = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.dm, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %.loopexit156
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.dp = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.do, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.preheader155 unwind label %bb.u ; 0 uses

.preheader155:                                    ; preds = %bb.s
  %i.dq = load ptr, ptr %i.o, align 8, !tbaa !125 ; 2 uses
  %i.dr = load ptr, ptr %2, align 8, !tbaa !121   ; 2 uses
  %.not207 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not207, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader155
  %.pre = load ptr, ptr %3, align 8, !tbaa !121
  br label %.lr.ph

.loopexit152.loopexit:                            ; preds = %._crit_edge
  %.pre226 = load ptr, ptr %i.o, align 8, !tbaa !125
  %.pre227.a = load ptr, ptr %2, align 8, !tbaa !121
  br label %.loopexit152

.loopexit152:                                     ; preds = %.loopexit152.loopexit, %.lr.ph
  %i.ds = phi ptr [ %.pre227.a, %.loopexit152.loopexit ], [ %i.ea, %.lr.ph ] ; 8 uses
  %i.dt = phi ptr [ %.pre226, %.loopexit152.loopexit ], [ %i.eb, %.lr.ph ] ; 4 uses
  %i.du = phi ptr [ %i.hp, %.loopexit152.loopexit ], [ %i.ec, %.lr.ph ]
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = ashr exact i64 %i.dx, 2                 ; 3 uses
  %i.dz = icmp ult i64 %i.eh, %i.dy
  br i1 %i.dz, label %.lr.ph, label %._crit_edge189, !llvm.loop !156

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit152
  %i.ea = phi ptr [ %i.ds, %.loopexit152 ], [ %i.dr, %.lr.ph.preheader ] ; 2 uses
  %i.eb = phi ptr [ %i.dt, %.loopexit152 ], [ %i.dq, %.lr.ph.preheader ]
  %i.ec = phi ptr [ %i.du, %.loopexit152 ], [ %.pre, %.lr.ph.preheader ] ; 3 uses
  %.054188 = phi i64 [ %i.eh, %.loopexit152 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.054188
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !68 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.054188
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !68 ; 2 uses
  %i.eh = add nuw i64 %.054188, 1                 ; 3 uses
  %i.ei = call i32 @llvm.smax.i32(i32 %i.ee, i32 1) ; 2 uses
  %i.ej = add nsw i32 %i.ei, -1
  %i.ek = call i32 @llvm.smax.i32(i32 %i.eg, i32 1) ; 2 uses
  %i.el = add nsw i32 %i.ek, -1
  %i.em = add nsw i32 %i.ee, 1
  %i.en = load i32, ptr %i.e, align 8, !tbaa !60
  %i.eo = add nsw i32 %i.en, -1
  %. = call i32 @llvm.smin.i32(i32 %i.em, i32 %i.eo) ; 2 uses
  %i.ep = add i32 %i.eg, 1
  %i.eq = load i32, ptr %i.c, align 4, !tbaa !61
  %i.er = add i32 %i.eq, -1
  %i.es = call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.er) ; 2 uses
  %.not74186 = icmp sgt i32 %i.ej, %.
  %.not76184 = icmp sgt i32 %i.el, %i.es
  %or.cond = select i1 %.not74186, i1 true, i1 %.not76184
  br i1 %or.cond, label %.loopexit152, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  %i.et = zext nneg i32 %i.ek to i64
  %i.eu = add nsw i64 %i.et, -1
  %i.ev = add nuw i32 %i.es, 1
  %i.ew = zext nneg i32 %i.ei to i64
  %i.ex = add nsw i64 %i.ew, -1
  %6 = add nuw nsw i32 %., 1
  %i.ey = zext nneg i32 %6 to i64
  %wide.trip.count = zext i32 %i.ev to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ez = phi ptr [ %i.ec, %.preheader.preheader ], [ %i.hp, %._crit_edge ]
  %indvars.iv221 = phi i64 [ %i.ex, %.preheader.preheader ], [ %indvars.iv.next222, %._crit_edge ] ; 5 uses
  %i.fa = trunc nuw nsw i64 %indvars.iv221 to i32
  %i.fb = trunc nuw nsw i64 %indvars.iv221 to i32
  br label %bb.v

bb.t:                                             ; preds = %.loopexit156
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.u:                                             ; preds = %bb.s
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %i.ey
  br i1 %exitcond225.not, label %.loopexit152.loopexit, label %.preheader, !llvm.loop !157

bb.v:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114
  %i.fe = phi ptr [ %i.ez, %.preheader ], [ %i.hp, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.eu, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114 ] ; 5 uses
  %i.ff = load i32, ptr %i.i, align 4, !tbaa !151
  %i.fg = icmp slt i32 %i.ff, 2
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !152
  %i.fi = load i64, ptr %i.k, align 8
  %i.fj = mul i64 %i.fi, %indvars.iv
  %.sink.idx.i94 = select i1 %i.fg, i64 0, i64 %i.fj
  %.sink.i95 = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sink.idx.i94
  %i.fk = getelementptr inbounds i8, ptr %.sink.i95, i64 %indvars.iv221 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !58
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.w, label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114

bb.w:                                             ; preds = %bb.v
  %i.fn = load i32, ptr %i.l, align 4, !tbaa !151
  %i.fo = icmp slt i32 %i.fn, 2
  %i.fp = load ptr, ptr %i.m, align 8, !tbaa !152
  %i.fq = load i64, ptr %i.n, align 8
  %i.fr = mul i64 %i.fq, %indvars.iv
  %.sink.idx.i96 = select i1 %i.fo, i64 0, i64 %i.fr
  %.sink.i97 = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sink.idx.i96
  %i.fs = getelementptr inbounds [4 x i8], ptr %.sink.i97, i64 %indvars.iv221
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !68
  %i.fu = icmp eq i32 %i.ft, %i.bj
  br i1 %i.fu, label %bb.x, label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.fk, align 1, !tbaa !58
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !155 ; 5 uses
  %i.fw = load ptr, ptr %2, align 8, !tbaa !155   ; 4 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 5 uses
  %i.ga = load ptr, ptr %i.q, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.fv, %i.ga
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fv) ]
  store i32 %i.fa, ptr %i.fv, align 4, !tbaa !68
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store ptr %i.gb, ptr %i.o, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

bb.z:                                             ; preds = %bb.x
  %i.gc = icmp eq i64 %i.fz, 9223372036854775804
  br i1 %i.gc, label %bb.aa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.gd = ashr exact i64 %i.fz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = call i64 @llvm.umin.i64(i64 %i.ge, i64 2305843009213693951)
  %i.gh = select i1 %i.gf, i64 2305843009213693951, i64 %i.gg ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.gh, 0
  call void @llvm.assume(i1 %.not.i.i.i100)
  %i.gi = shl nuw nsw i64 %i.gh, 2
  %i.gj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #21
          to label %.noexc101 unwind label %.loopexit ; 4 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.fz ; 2 uses
  store i32 %i.fb, ptr %i.gk, align 4, !tbaa !68
  %i.gl = icmp sgt i64 %i.fz, 0
  br i1 %i.gl, label %bb.ab, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %.noexc101
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gj, ptr align 4 %i.fw, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %.noexc101, %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.gn = load ptr, ptr %i.q, align 8, !tbaa !124
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gp) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.gj, ptr %2, align 8, !tbaa !121
  store ptr %i.gm, ptr %i.o, align 8, !tbaa !125
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.gq, ptr %i.q, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.y
  %i.gr = load ptr, ptr %i.p, align 8, !tbaa !155 ; 5 uses
  %i.gs = load ptr, ptr %3, align 8, !tbaa !155   ; 5 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 5 uses
  %i.gw = load ptr, ptr %i.r, align 8, !tbaa !124
  %.not.i102 = icmp eq ptr %i.gr, %i.gw
  br i1 %.not.i102, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gr) ]
  %i.gx = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gx, ptr %i.gr, align 4, !tbaa !68
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store ptr %i.gy, ptr %i.p, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  %i.gz = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gz, label %bb.af, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc112 unwind label %.loopexit.split-lp148

.noexc112:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105: ; preds = %bb.ae
  %i.ha = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.ha, i64 1)
  %i.hb = add nsw i64 %.sroa.speculated.i.i.i106, %i.ha ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.ha
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hb, i64 2305843009213693951)
  %i.he = select i1 %i.hc, i64 2305843009213693951, i64 %i.hd ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.hf = shl nuw nsw i64 %i.he, 2
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #21
          to label %.noexc113 unwind label %.loopexit147 ; 5 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %i.gv ; 2 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !68
  %i.hj = icmp sgt i64 %i.gv, 0
  br i1 %i.hj, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109

bb.ag:                                            ; preds = %.noexc113
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hg, ptr align 4 %i.gs, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109: ; preds = %.noexc113, %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %.not.i17.i.i110 = icmp eq ptr %i.gs, null
  br i1 %.not.i17.i.i110, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109
  %i.hl = load ptr, ptr %i.r, align 8, !tbaa !124
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hn) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109
  store ptr %i.hg, ptr %3, align 8, !tbaa !121
  store ptr %i.hk, ptr %i.p, align 8, !tbaa !125
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.ho, ptr %i.r, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit147:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp148:                            ; preds = %bb.af
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114: ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111, %bb.v, %bb.w
  %i.hp = phi ptr [ %i.gs, %bb.ad ], [ %i.hg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111 ], [ %i.fe, %bb.v ], [ %i.fe, %bb.w ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !158

._crit_edge189:                                   ; preds = %.loopexit152
  %i.hq = icmp eq ptr %i.dt, %i.ds
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc17SuperpixelLSCImpl28PostEnforceLabelConnectivityEi:bb.a
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.hk ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !113
  %i.mb = fadd float %i.lr, %i.ma
  store float %i.mb, ptr %i.lz, align 4, !tbaa !113
  %indvars.iv.next1284 = add nuw nsw i64 %indvars.iv1283, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1284, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge1132, label %bb.af, !llvm.loop !166

._crit_edge1132:                                  ; preds = %bb.as, %bb.y
  %i.mc = phi ptr [ %i.du, %bb.y ], [ %i.hu, %bb.as ] ; 2 uses
  %i.md = phi ptr [ %i.dv, %bb.y ], [ %i.ht, %bb.as ] ; 2 uses
  %i.me = sitofp i32 %i.ha to float
  %i.mf = load i32, ptr %i.bg, align 8, !tbaa !89
  %i.mg = sitofp i32 %i.mf to float
  %i.mh = fdiv float %i.me, %i.mg
  %i.mi = fmul float %i.mh, f0x3FC90FDB           ; 2 uses
  %i.mj = load float, ptr %i.bh, align 4, !tbaa !76 ; 4 uses
  %i.mk = call noundef float @cosf(float noundef %i.mi) #23
  %i.ml = fmul float %i.mj, %i.mk
  %i.mm = call noundef float @sinf(float noundef %i.mi) #23
  %i.mn = fmul float %i.mj, %i.mm
  %i.mo = sitofp i32 %i.gz to float
  %i.mp = load i32, ptr %i.bi, align 4, !tbaa !90
  %i.mq = sitofp i32 %i.mp to float
  %i.mr = fdiv float %i.mo, %i.mq
  %i.ms = fmul float %i.mr, f0x3FC90FDB           ; 2 uses
  %i.mt = call noundef float @cosf(float noundef %i.ms) #23
  %i.mu = fmul float %i.mj, %i.mt
  %i.mv = call noundef float @sinf(float noundef %i.ms) #23
  %i.mw = fmul float %i.mj, %i.mv
  %i.mx = load ptr, ptr %5, align 8, !tbaa !69
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.hk ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !113
  %i.na = fadd float %i.ml, %i.mz
  store float %i.na, ptr %i.my, align 4, !tbaa !113
  %i.nb = load ptr, ptr %6, align 8, !tbaa !69
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.hk ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !113
  %i.ne = fadd float %i.mn, %i.nd
  store float %i.ne, ptr %i.nc, align 4, !tbaa !113
  %i.nf = load ptr, ptr %7, align 8, !tbaa !69
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.hk ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !113
  %i.ni = fadd float %i.mu, %i.nh
  store float %i.ni, ptr %i.ng, align 4, !tbaa !113
  %i.nj = load ptr, ptr %8, align 8, !tbaa !69
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.hk ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !113
  %i.nm = fadd float %i.mw, %i.nl
  store float %i.nm, ptr %i.nk, align 4, !tbaa !113
  %i.nn = load i32, ptr %i.bj, align 4, !tbaa !151
  %i.no = icmp slt i32 %i.nn, 2
  %i.np = load ptr, ptr %i.bk, align 8, !tbaa !152
  %i.nq = load i64, ptr %i.bl, align 8
  %i.nr = mul i64 %i.nq, %i.hf
  %.sink.idx.i405 = select i1 %i.no, i64 0, i64 %i.nr
  %.sink.i406 = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sink.idx.i405
  %i.ns = getelementptr inbounds [4 x i8], ptr %.sink.i406, i64 %i.hh ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !68
  store i32 %i.eg, ptr %i.ns, align 4, !tbaa !68
  %i.nu = load i32, ptr %i.c, align 4, !tbaa !68
  %i.nv = load i32, ptr %i.b, align 4, !tbaa !68
  %i.nw = load i32, ptr %i.aq, align 4, !tbaa !151
  %i.nx = icmp slt i32 %i.nw, 2
  %i.ny = load ptr, ptr %i.ar, align 8, !tbaa !152
  %i.nz = load i64, ptr %i.as, align 8
  %i.oa = sext i32 %i.nu to i64
  %i.ob = mul i64 %i.nz, %i.oa
  %.sink.idx.i423 = select i1 %i.nx, i64 0, i64 %i.ob
  %.sink.i424 = getelementptr inbounds nuw i8, ptr %i.ny, i64 %.sink.idx.i423
  %i.oc = sext i32 %i.nv to i64
  %i.od = getelementptr inbounds i8, ptr %.sink.i424, i64 %i.oc
  store i8 1, ptr %i.od, align 1, !tbaa !58
  %i.oe = load ptr, ptr %i.bm, align 8, !tbaa !167 ; 3 uses
  %i.of = load ptr, ptr %i.bn, align 8, !tbaa !172
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -4
  %.not.i.i = icmp eq ptr %i.oe, %i.og
  br i1 %.not.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge1132
  %i.oh = load i32, ptr %i.b, align 4, !tbaa !68
  store i32 %i.oh, ptr %i.oe, align 4, !tbaa !68
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  store ptr %i.oi, ptr %i.bm, align 8, !tbaa !167
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.au:                                            ; preds = %._crit_edge1132
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit unwind label %bb.bb

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit:     ; preds = %bb.at, %bb.au
  %i.oj = load ptr, ptr %i.bo, align 8, !tbaa !167 ; 3 uses
  %i.ok = load ptr, ptr %i.bp, align 8, !tbaa !172
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 -4
  %.not.i.i426 = icmp eq ptr %i.oj, %i.ol
  br i1 %.not.i.i426, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %i.om = load i32, ptr %i.c, align 4, !tbaa !68
  store i32 %i.om, ptr %i.oj, align 4, !tbaa !68
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store ptr %i.on, ptr %i.bo, align 8, !tbaa !167
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428

bb.aw:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 unwind label %bb.bb

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428:  ; preds = %bb.aw, %bb.av
  %i.oo = load ptr, ptr %i.bm, align 8, !tbaa !173
  %i.op = load ptr, ptr %i.bq, align 8, !tbaa !173 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %._crit_edge1145, label %.lr.ph1144

.loopexit1053:                                    ; preds = %._crit_edge1141, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432
  %i.or = phi ptr [ %i.ow, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432 ], [ %i.afg, %._crit_edge1141 ] ; 2 uses
  %i.os = phi ptr [ %i.ox, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432 ], [ %i.afh, %._crit_edge1141 ] ; 2 uses
  %i.ot = load ptr, ptr %i.bm, align 8, !tbaa !173
  %i.ou = load ptr, ptr %i.bq, align 8, !tbaa !173 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %._crit_edge1145, label %.lr.ph1144, !llvm.loop !174

.lr.ph1144:                                       ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428, %.loopexit1053
  %i.ow = phi ptr [ %i.or, %.loopexit1053 ], [ %i.mc, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 ] ; 2 uses
  %i.ox = phi ptr [ %i.os, %.loopexit1053 ], [ %i.md, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 ] ; 2 uses
  %i.oy = phi ptr [ %i.ou, %.loopexit1053 ], [ %i.op, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 ] ; 3 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !68 ; 2 uses
  %i.pa = load ptr, ptr %i.br, align 8, !tbaa !175
  %i.pb = getelementptr inbounds i8, ptr %i.pa, i64 -4
  %.not.i.i429 = icmp eq ptr %i.oy, %i.pb
  br i1 %.not.i.i429, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1144
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

bb.ay:                                            ; preds = %.lr.ph1144
  %i.pd = load ptr, ptr %i.bs, align 8, !tbaa !176
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef 512) #22
  %i.pe = load ptr, ptr %i.bt, align 8, !tbaa !177
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  store ptr %i.pf, ptr %i.bt, align 8, !tbaa !178
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !155 ; 3 uses
  store ptr %i.pg, ptr %i.bs, align 8, !tbaa !179
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 512
  store ptr %i.ph, ptr %i.br, align 8, !tbaa !180
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit:        ; preds = %bb.ax, %bb.ay
  %storemerge.i.i = phi ptr [ %i.pc, %bb.ax ], [ %i.pg, %bb.ay ]
  store ptr %storemerge.i.i, ptr %i.bq, align 8, !tbaa !181
  %i.pi = load ptr, ptr %i.bu, align 8, !tbaa !173, !noalias !182 ; 3 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !68 ; 2 uses
  %i.pk = load ptr, ptr %i.bv, align 8, !tbaa !175
  %i.pl = getelementptr inbounds i8, ptr %i.pk, i64 -4
  %.not.i.i430 = icmp eq ptr %i.pi, %i.pl
  br i1 %.not.i.i430, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432

bb.ba:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit
  %i.pn = load ptr, ptr %i.bw, align 8, !tbaa !176
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef 512) #22
  %i.po = load ptr, ptr %i.bx, align 8, !tbaa !177
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  store ptr %i.pp, ptr %i.bx, align 8, !tbaa !178
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !155 ; 3 uses
  store ptr %i.pq, ptr %i.bw, align 8, !tbaa !179
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 512
  store ptr %i.pr, ptr %i.bv, align 8, !tbaa !180
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432:     ; preds = %bb.az, %bb.ba
  %storemerge.i.i431 = phi ptr [ %i.pm, %bb.az ], [ %i.pq, %bb.ba ]
  store ptr %storemerge.i.i431, ptr %i.bu, align 8, !tbaa !181
  %i.ps = call i32 @llvm.smax.i32(i32 %i.oz, i32 1) ; 2 uses
  %i.pt = add nsw i32 %i.ps, -1
  %i.pu = call i32 @llvm.smax.i32(i32 %i.pj, i32 1) ; 2 uses
  %i.pv = add nsw i32 %i.pu, -1
  %i.pw = add nsw i32 %i.oz, 1
  %i.px = load i32, ptr %i.am, align 8, !tbaa !60
  %i.py = add nsw i32 %i.px, -1
  %. = call i32 @llvm.smin.i32(i32 %i.pw, i32 %i.py) ; 2 uses
  %i.pz = add i32 %i.pj, 1
  %i.qa = load i32, ptr %i.ak, align 4, !tbaa !61
  %i.qb = add i32 %i.qa, -1
  %i.qc = call i32 @llvm.smin.i32(i32 %i.pz, i32 %i.qb) ; 2 uses
  %.not3541142 = icmp sgt i32 %i.pt, %.
  %.not3561137 = icmp sgt i32 %i.pv, %i.qc
  %or.cond1248 = select i1 %.not3541142, i1 true, i1 %.not3561137
  br i1 %or.cond1248, label %.loopexit1053, label %.preheader1047.preheader

.preheader1047.preheader:                         ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432
  %i.qd = zext nneg i32 %i.pu to i64
  %i.qe = add nsw i64 %i.qd, -1
  %i.qf = add nuw i32 %i.qc, 1
  %i.qg = zext nneg i32 %i.ps to i64
  %i.qh = add nsw i64 %i.qg, -1
  %21 = add nuw nsw i32 %., 1
  %i.qi = zext nneg i32 %21 to i64
  %wide.trip.count1294 = zext i32 %i.qf to i64
  br label %.preheader1047

.preheader1047:                                   ; preds = %.preheader1047.preheader, %._crit_edge1141
  %i.qj = phi ptr [ %i.ow, %.preheader1047.preheader ], [ %i.afg, %._crit_edge1141 ]
  %i.qk = phi ptr [ %i.ox, %.preheader1047.preheader ], [ %i.afh, %._crit_edge1141 ]
  %indvars.iv1296 = phi i64 [ %i.qh, %.preheader1047.preheader ], [ %indvars.iv.next1297, %._crit_edge1141 ] ; 7 uses
  %i.ql = trunc nuw nsw i64 %indvars.iv1296 to i32 ; 3 uses
  %i.qm = sitofp i32 %i.ql to float
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aw, %bb.au
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

._crit_edge1141:                                  ; preds = %bb.dc
  %indvars.iv.next1297 = add nuw nsw i64 %indvars.iv1296, 1 ; 2 uses
  %exitcond1300.not = icmp eq i64 %indvars.iv.next1297, %i.qi
  br i1 %exitcond1300.not, label %.loopexit1053, label %.preheader1047, !llvm.loop !185

bb.bc:                                            ; preds = %.preheader1047, %bb.dc
  %i.qo = phi ptr [ %i.qj, %.preheader1047 ], [ %i.afg, %bb.dc ] ; 3 uses
  %i.qp = phi ptr [ %i.qk, %.preheader1047 ], [ %i.afh, %bb.dc ] ; 3 uses
  %indvars.iv1291 = phi i64 [ %i.qe, %.preheader1047 ], [ %indvars.iv.next1292, %bb.dc ] ; 9 uses
  %i.qq = load i32, ptr %i.aq, align 4, !tbaa !151
  %i.qr = icmp slt i32 %i.qq, 2
  %i.qs = load ptr, ptr %i.ar, align 8, !tbaa !152
  %i.qt = load i64, ptr %i.as, align 8
  %i.qu = mul i64 %i.qt, %indvars.iv1291
  %.sink.idx.i433 = select i1 %i.qr, i64 0, i64 %i.qu
  %.sink.i434 = getelementptr inbounds nuw i8, ptr %i.qs, i64 %.sink.idx.i433
  %i.qv = getelementptr inbounds i8, ptr %.sink.i434, i64 %indvars.iv1296
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !58
  %i.qx = icmp eq i8 %i.qw, 0
  br i1 %i.qx, label %bb.bd, label %bb.dc

bb.bd:                                            ; preds = %bb.bc
  %i.qy = load i32, ptr %i.bj, align 4, !tbaa !151
  %i.qz = icmp slt i32 %i.qy, 2
  %i.ra = load ptr, ptr %i.bk, align 8, !tbaa !152
  %i.rb = load i64, ptr %i.bl, align 8
  %i.rc = mul i64 %i.rb, %indvars.iv1291
  %.sink.idx.i435 = select i1 %i.qz, i64 0, i64 %i.rc
  %.sink.i436 = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.sink.idx.i435
  %i.rd = getelementptr inbounds [4 x i8], ptr %.sink.i436, i64 %indvars.iv1296
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !68
  %i.rf = icmp eq i32 %i.re, %i.nt
  br i1 %i.rf, label %bb.be, label %bb.dc

bb.be:                                            ; preds = %bb.bd
  %i.rg = load i32, ptr %i.d, align 4, !tbaa !68
  %i.rh = add nsw i32 %i.rg, 1
  store i32 %i.rh, ptr %i.d, align 4, !tbaa !68
  %i.ri = load ptr, ptr %i.bm, align 8, !tbaa !167 ; 4 uses
  %i.rj = load ptr, ptr %i.bn, align 8, !tbaa !172
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 -4
  %.not.i.i437 = icmp eq ptr %i.ri, %i.rk
  br i1 %.not.i.i437, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.ql, ptr %i.ri, align 4, !tbaa !68
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit439

bb.bg:                                            ; preds = %bb.be
  %i.rm = load ptr, ptr %i.by, align 8, !tbaa !178 ; 3 uses
  %i.rn = load ptr, ptr %i.bt, align 8, !tbaa !178 ; 6 uses
  %i.ro = ptrtoint ptr %i.rm to i64               ; 2 uses
  %i.rp = ptrtoint ptr %i.rn to i64               ; 3 uses
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = ashr exact i64 %i.rq, 3                 ; 3 uses
  %i.rs = icmp ne ptr %i.rm, null
  %.neg.i.i.i = sext i1 %i.rs to i64
  %i.rt = add nsw i64 %i.rr, %.neg.i.i.i
  %i.ru = shl nsw i64 %i.rt, 7
  %i.rv = load ptr, ptr %i.bz, align 8, !tbaa !179
  %i.rw = ptrtoint ptr %i.ri to i64
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = sub i64 %i.rw, %i.rx
  %i.rz = ashr exact i64 %i.ry, 2
  %i.sa = add nsw i64 %i.ru, %i.rz
  %i.sb = load ptr, ptr %i.br, align 8, !tbaa !180
  %i.sc = load ptr, ptr %i.bq, align 8, !tbaa !173
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = ashr exact i64 %i.sf, 2
  %i.sh = add nsw i64 %i.sa, %i.sg
  %i.si = icmp eq i64 %i.sh, 2305843009213693951
  br i1 %i.si, label %.invoke, label %bb.bh

.invoke:                                          ; preds = %bb.by, %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
          to label %.cont unwind label %.loopexit.split-lp1049

.cont:                                            ; preds = %.invoke
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.sj = load i64, ptr %i.ca, align 8, !tbaa !186 ; 5 uses
  %i.sk = load ptr, ptr %3, align 8, !tbaa !187   ; 2 uses
  %i.sl = ptrtoint ptr %i.sk to i64
  %i.sm = sub i64 %i.ro, %i.sl
  %i.sn = ashr exact i64 %i.sm, 3
  %i.so = sub i64 %i.sj, %i.sn
  %i.sp = icmp ult i64 %i.so, 2
  br i1 %i.sp, label %bb.bi, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.sq = add nsw i64 %i.rr, 1                    ; 2 uses
  %i.sr = add nsw i64 %i.rr, 2                    ; 3 uses
  %i.ss = shl nsw i64 %i.sr, 1
  %i.st = icmp ugt i64 %i.sj, %i.ss
  br i1 %i.st, label %bb.bj, label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.su = sub i64 %i.sj, %i.sr
  %i.sv = lshr i64 %i.su, 1
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sv ; 10 uses
  %i.sx = icmp ult ptr %i.sw, %i.rn
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 2 uses
  br i1 %i.sx, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = sub i64 %i.sz, %i.rp                    ; 3 uses
  %i.tb = icmp sgt i64 %i.ta, 8
  br i1 %i.tb, label %bb.bl, label %bb.bm, !prof !188

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.sw, ptr nonnull align 8 %i.rn, i64 %i.ta, i1 false)
  br label %.noexc776

bb.bm:                                            ; preds = %bb.bk
  %i.tc = icmp eq i64 %i.ta, 8
  br i1 %i.tc, label %bb.bn, label %.noexc776

bb.bn:                                            ; preds = %bb.bm
  %i.td = load ptr, ptr %i.rn, align 8, !tbaa !155
  store ptr %i.td, ptr %i.sw, align 8, !tbaa !155
  br label %.noexc776

bb.bo:                                            ; preds = %bb.bj
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.sq ; 2 uses
  %i.tf = ptrtoint ptr %i.sy to i64
  %i.tg = sub i64 %i.tf, %i.rp                    ; 3 uses
  %i.th = ashr exact i64 %i.tg, 3                 ; 2 uses
  %i.ti = icmp sgt i64 %i.th, 1
  br i1 %i.ti, label %bb.bp, label %bb.bq, !prof !188

bb.bp:                                            ; preds = %bb.bo
  %i.tj = sub nsw i64 0, %i.th
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.tj
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tk, ptr align 8 %i.rn, i64 %i.tg, i1 false)
  br label %.noexc776

bb.bq:                                            ; preds = %bb.bo
  %i.tl = icmp eq i64 %i.tg, 8
  br i1 %i.tl, label %bb.br, label %.noexc776

bb.br:                                            ; preds = %bb.bq
  %i.tm = getelementptr inbounds i8, ptr %i.te, i64 -8
  %i.tn = load ptr, ptr %i.rn, align 8, !tbaa !155
  store ptr %i.tn, ptr %i.tm, align 8, !tbaa !155
  br label %.noexc776

bb.bs:                                            ; preds = %bb.bi
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.sj, i64 1)
  %i.to = add i64 %i.sj, 2
  %i.tp = add i64 %i.to, %.sroa.speculated.i      ; 5 uses
  %i.tq = icmp ugt i64 %i.tp, 1152921504606846975
  br i1 %i.tq, label %bb.bt, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i, !prof !189

bb.bt:                                            ; preds = %bb.bs
  %i.tr = icmp ugt i64 %i.tp, 2305843009213693951
  br i1 %i.tr, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

.noexc.i.i.invoke:                                ; preds = %bb.cl, %bb.bt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i.cont unwind label %.loopexit.split-lp1049

.noexc.i.i.cont:                                  ; preds = %.noexc.i.i.invoke
  unreachable

.noexc3.i.i.invoke:                               ; preds = %bb.cl, %bb.bt
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i.cont unwind label %.loopexit.split-lp1049

.noexc3.i.i.cont:                                 ; preds = %.noexc3.i.i.invoke
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i: ; preds = %bb.bs
  %i.ts = shl nuw nsw i64 %i.tp, 3
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #21
          to label %.noexc786 unwind label %.loopexit1048 ; 2 uses

.noexc786:                                        ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i
  %i.tu = sub nsw i64 %i.tp, %i.sr
  %i.tv = lshr i64 %i.tu, 1
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tv ; 3 uses
  %i.tx = load ptr, ptr %i.bt, align 8, !tbaa !177 ; 3 uses
  %i.ty = load ptr, ptr %i.by, align 8, !tbaa !190
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub                    ; 3 uses
  %i.ud = icmp sgt i64 %i.uc, 8
  br i1 %i.ud, label %bb.bu, label %bb.bv, !prof !188

bb.bu:                                            ; preds = %.noexc786
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tw, ptr align 8 %i.tx, i64 %i.uc, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.bv:                                            ; preds = %.noexc786
  %i.ue = icmp eq i64 %i.uc, 8
  br i1 %i.ue, label %bb.bw, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.bw:                                            ; preds = %bb.bv
  %i.uf = load ptr, ptr %i.tx, align 8, !tbaa !155
end_hunk_1
begin_hunk_2_@_ZN2cv8ximgproc17SuperpixelLSCImpl28PostEnforceLabelConnectivityEi:bb.a
  %i.afr = phi ptr [ %i.afi, %.preheader1054 ], [ %i.afq, %bb.de ]
  %i.afs = phi ptr [ %i.afj, %.preheader1054 ], [ %i.afp, %bb.de ]
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.pre1328, i64 %i.hk ; 4 uses
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !113
  %i.afv = load ptr, ptr %5, align 8, !tbaa !69
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.hk ; 2 uses
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !113
  %i.afy = fdiv float %i.afx, %i.afu
  store float %i.afy, ptr %i.afw, align 4, !tbaa !113
  %i.afz = load float, ptr %i.aft, align 4, !tbaa !113
  %i.aga = load ptr, ptr %6, align 8, !tbaa !69
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %i.hk ; 2 uses
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !113
  %i.agd = fdiv float %i.agc, %i.afz
  store float %i.agd, ptr %i.agb, align 4, !tbaa !113
  %i.age = load float, ptr %i.aft, align 4, !tbaa !113
  %i.agf = load ptr, ptr %7, align 8, !tbaa !69
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.hk ; 2 uses
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !113
  %i.agi = fdiv float %i.agh, %i.age
  store float %i.agi, ptr %i.agg, align 4, !tbaa !113
  %i.agj = load float, ptr %i.aft, align 4, !tbaa !113
  %i.agk = load ptr, ptr %8, align 8, !tbaa !69
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.hk ; 2 uses
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !113
  %i.agn = fdiv float %i.agm, %i.agj
  store float %i.agn, ptr %i.agl, align 4, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.pre1329 = load i32, ptr %i.c, align 4, !tbaa !68
  %.pre1330 = load i32, ptr %i.ak, align 4, !tbaa !61
  %.pre1347.a = load i32, ptr %i.b, align 4, !tbaa !68
  br label %bb.dg

bb.dd:                                            ; preds = %._crit_edge1145
  %i.ago = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %.lr.ph1147, %bb.de
  %indvars.iv1299 = phi i64 [ 0, %.lr.ph1147 ], [ %indvars.iv.next1300, %bb.de ] ; 3 uses
  %i.agp = load float, ptr %i.afo, align 4, !tbaa !113
  %i.agq = getelementptr inbounds nuw [24 x i8], ptr %i.afp, i64 %indvars.iv1299
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !69
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %i.hk ; 2 uses
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !113
  %i.agu = fdiv float %i.agt, %i.agp
  store float %i.agu, ptr %i.ags, align 4, !tbaa !113
  %i.agv = load float, ptr %i.afo, align 4, !tbaa !113
  %i.agw = getelementptr inbounds nuw [24 x i8], ptr %i.afq, i64 %indvars.iv1299
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !69
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.hk ; 2 uses
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !113
  %i.aha = fdiv float %i.agz, %i.agv
  store float %i.aha, ptr %i.agy, align 4, !tbaa !113
  %indvars.iv.next1300 = add nuw nsw i64 %indvars.iv1299, 1 ; 2 uses
  %exitcond1303.not = icmp eq i64 %indvars.iv.next1300, %wide.trip.count1302
  br i1 %exitcond1303.not, label %._crit_edge1148, label %bb.de, !llvm.loop !193

bb.df:                                            ; preds = %.loopexit1048, %.loopexit.split-lp1049, %.loopexit1060, %.loopexit.split-lp1061, %.loopexit1055, %.loopexit.split-lp1056, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.dd, %bb.bb, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.m
  %.pn366.pn = phi { ptr, i32 } [ %i.en, %bb.m ], [ %i.ago, %bb.dd ], [ %i.ia, %bb.ae ], [ %i.hz, %bb.ad ], [ %i.hy, %bb.ac ], [ %i.hx, %bb.ab ], [ %i.hw, %bb.aa ], [ %i.hv, %bb.z ], [ %lpad.loopexit.split-lp1058, %.loopexit.split-lp1056 ], [ %lpad.loopexit.split-lp1063, %.loopexit.split-lp1061 ], [ %.pn357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %.pn362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.qn, %bb.bb ], [ %lpad.loopexit1057, %.loopexit1055 ], [ %lpad.loopexit1062, %.loopexit1060 ], [ %lpad.loopexit1050, %.loopexit1048 ], [ %lpad.loopexit.split-lp1051, %.loopexit.split-lp1049 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.jv

bb.dg:                                            ; preds = %.lr.ph1152, %._crit_edge1148
  %.pre1331 = phi i32 [ %.pre1347.a, %._crit_edge1148 ], [ %i.ds, %.lr.ph1152 ] ; 2 uses
  %i.ahb = phi i32 [ %.pre1330, %._crit_edge1148 ], [ %i.dt, %.lr.ph1152 ] ; 4 uses
  %i.ahc = phi i32 [ %.pre1329, %._crit_edge1148 ], [ %storemerge3501149, %.lr.ph1152 ]
  %i.ahd = phi ptr [ %i.afr, %._crit_edge1148 ], [ %i.du, %.lr.ph1152 ] ; 2 uses
  %i.ahe = phi ptr [ %i.afs, %._crit_edge1148 ], [ %i.dv, %.lr.ph1152 ] ; 2 uses
  %.2303 = phi i32 [ %i.eg, %._crit_edge1148 ], [ %.13021150, %.lr.ph1152 ] ; 2 uses
  %i.ahf = add nsw i32 %i.ahc, 1                  ; 3 uses
  store i32 %i.ahf, ptr %i.c, align 4, !tbaa !68
  %i.ahg = icmp slt i32 %i.ahf, %i.ahb
  br i1 %i.ahg, label %.lr.ph1152, label %._crit_edge1153.loopexit, !llvm.loop !194

._crit_edge1182:                                  ; preds = %bb.fd
  %.pre1338.a = load ptr, ptr %19, align 8, !tbaa !195 ; 2 uses
  %.pre1339.a = load ptr, ptr %i.cx, align 8, !tbaa !195 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 19 uses
  %.not10241243 = icmp eq ptr %.pre1338.a, %.pre1339.a
  br i1 %.not10241243, label %._crit_edge1247, label %.lr.ph1246

.lr.ph1246:                                       ; preds = %._crit_edge1182
  %i.ahi = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  br label %bb.fe

bb.dh:                                            ; preds = %.lr.ph1181, %bb.fd
  %indvars.iv1312 = phi i64 [ 0, %.lr.ph1181 ], [ %indvars.iv.next1313, %bb.fd ] ; 5 uses
  %i.ahl = load ptr, ptr %11, align 8, !tbaa !121
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv1312
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !68
  %i.aho = icmp slt i32 %i.ahn, %1
  br i1 %i.aho, label %bb.di, label %bb.fd

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.ahp = load ptr, ptr %9, align 8, !tbaa !121
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %indvars.iv1312
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !68 ; 2 uses
  store i32 %i.ahr, ptr %i.j, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.ahs = load ptr, ptr %10, align 8, !tbaa !121
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %indvars.iv1312
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !68 ; 2 uses
  store i32 %i.ahu, ptr %i.k, align 4, !tbaa !68
  %i.ahv = load i32, ptr %i.ch, align 4, !tbaa !151
  %i.ahw = icmp slt i32 %i.ahv, 2
  %i.ahx = load ptr, ptr %i.ci, align 8, !tbaa !152
  %i.ahy = load i64, ptr %i.cj, align 8
  %i.ahz = sext i32 %i.ahu to i64                 ; 2 uses
  %i.aia = mul i64 %i.ahy, %i.ahz
  %.sink.idx.i467 = select i1 %i.ahw, i64 0, i64 %i.aia
  %.sink.i468 = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %.sink.idx.i467
  %i.aib = sext i32 %i.ahr to i64                 ; 2 uses
  %i.aic = getelementptr inbounds [4 x i8], ptr %.sink.i468, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !68 ; 3 uses
  %i.aie = load i32, ptr %i.ck, align 4, !tbaa !151
  %i.aif = icmp slt i32 %i.aie, 2
  %i.aig = load ptr, ptr %i.cl, align 8, !tbaa !152
  %i.aih = load i64, ptr %i.cm, align 8
  %i.aii = mul i64 %i.aih, %i.ahz
  %.sink.idx.i469 = select i1 %i.aif, i64 0, i64 %i.aii
  %.sink.i470 = getelementptr inbounds nuw i8, ptr %i.aig, i64 %.sink.idx.i469
  %i.aij = getelementptr inbounds i8, ptr %.sink.i470, i64 %i.aib
  store i8 0, ptr %i.aij, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.aik = load ptr, ptr %11, align 8, !tbaa !121
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %indvars.iv1312
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !68
  store i32 %i.aid, ptr %20, align 8, !tbaa !197
  store i32 %i.aim, ptr %i.cn, align 4, !tbaa !199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.co, i8 0, i64 72, i1 false)
  %i.ain = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.dj unwind label %bb.dk     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  %i.aio = load ptr, ptr %i.cs, align 8, !tbaa !155
  %i.aip = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr %i.aio, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %.preheader1046 unwind label %bb.dl ; 0 uses

.preheader1046:                                   ; preds = %bb.dj
  %i.aiq = load ptr, ptr %i.cq, align 8, !tbaa !125 ; 2 uses
  %i.air = load ptr, ptr %i.cp, align 8, !tbaa !121 ; 2 uses
  %.not1250 = icmp eq ptr %i.aiq, %i.air
  br i1 %.not1250, label %._crit_edge1177, label %.lr.ph1176

.loopexit1045.loopexit:                           ; preds = %._crit_edge1172
  %.pre1336 = load ptr, ptr %i.cq, align 8, !tbaa !125
  %.pre1337.a = load ptr, ptr %i.cp, align 8, !tbaa !121
  br label %.loopexit1045

.loopexit1045:                                    ; preds = %.loopexit1045.loopexit, %.lr.ph1176
  %i.ais = phi ptr [ %.pre1337.a, %.loopexit1045.loopexit ], [ %i.aiz, %.lr.ph1176 ] ; 2 uses
  %i.ait = phi ptr [ %.pre1336, %.loopexit1045.loopexit ], [ %i.aja, %.lr.ph1176 ] ; 2 uses
  %i.aiu = ptrtoint ptr %i.ait to i64
  %i.aiv = ptrtoint ptr %i.ais to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv
  %i.aix = ashr exact i64 %i.aiw, 2
  %i.aiy = icmp ult i64 %i.ajg, %i.aix
  br i1 %i.aiy, label %.lr.ph1176, label %._crit_edge1177, !llvm.loop !200

.lr.ph1176:                                       ; preds = %.preheader1046, %.loopexit1045
  %i.aiz = phi ptr [ %i.ais, %.loopexit1045 ], [ %i.air, %.preheader1046 ] ; 2 uses
  %i.aja = phi ptr [ %i.ait, %.loopexit1045 ], [ %i.aiq, %.preheader1046 ]
  %.03121175 = phi i64 [ %i.ajg, %.loopexit1045 ], [ 0, %.preheader1046 ] ; 3 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %.03121175
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !68 ; 3 uses
  store i32 %i.ajc, ptr %i.j, align 4, !tbaa !68
  %i.ajd = load ptr, ptr %i.cr, align 8, !tbaa !121
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %.03121175
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !68 ; 3 uses
  store i32 %i.ajf, ptr %i.k, align 4, !tbaa !68
  %i.ajg = add nuw i64 %.03121175, 1              ; 2 uses
  %i.ajh = call i32 @llvm.smax.i32(i32 %i.ajc, i32 1) ; 2 uses
  %i.aji = add nsw i32 %i.ajh, -1
  %i.ajj = call i32 @llvm.smax.i32(i32 %i.ajf, i32 1) ; 2 uses
  %i.ajk = add nsw i32 %i.ajj, -1
  %i.ajl = add nsw i32 %i.ajc, 1
  %i.ajm = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ajn = add nsw i32 %i.ajm, -1
  %.376 = call i32 @llvm.smin.i32(i32 %i.ajl, i32 %i.ajn) ; 2 uses
  %i.ajo = add i32 %i.ajf, 1
  %i.ajp = load i32, ptr %i.ak, align 4, !tbaa !61
  %i.ajq = add i32 %i.ajp, -1
  %i.ajr = call i32 @llvm.smin.i32(i32 %i.ajo, i32 %i.ajq) ; 2 uses
  %.not3391173 = icmp sgt i32 %i.aji, %.376
  %.not3411168 = icmp sgt i32 %i.ajk, %i.ajr
  %or.cond1249 = select i1 %.not3391173, i1 true, i1 %.not3411168
  br i1 %or.cond1249, label %.loopexit1045, label %.preheader1033.preheader

.preheader1033.preheader:                         ; preds = %.lr.ph1176
  %i.ajs = zext nneg i32 %i.ajj to i64
  %i.ajt = add nsw i64 %i.ajs, -1
  %i.aju = add nuw i32 %i.ajr, 1
  %i.ajv = zext nneg i32 %i.ajh to i64
  %i.ajw = add nsw i64 %i.ajv, -1
  %22 = add nuw nsw i32 %.376, 1
  %i.ajx = zext nneg i32 %22 to i64
  %wide.trip.count1307 = zext i32 %i.aju to i64
  br label %.preheader1033

.preheader1033:                                   ; preds = %.preheader1033.preheader, %._crit_edge1172
  %indvars.iv1309 = phi i64 [ %i.ajw, %.preheader1033.preheader ], [ %indvars.iv.next1310, %._crit_edge1172 ] ; 6 uses
  %i.ajy = trunc nuw nsw i64 %indvars.iv1309 to i32
  %i.ajz = trunc nuw nsw i64 %indvars.iv1309 to i32
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.dl:                                            ; preds = %bb.dj
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

._crit_edge1172:                                  ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491
  %indvars.iv.next1310 = add nuw nsw i64 %indvars.iv1309, 1 ; 2 uses
  %exitcond1315.not = icmp eq i64 %indvars.iv.next1310, %i.ajx
  br i1 %exitcond1315.not, label %.loopexit1045.loopexit, label %.preheader1033, !llvm.loop !201

bb.dm:                                            ; preds = %.preheader1033, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491
  %indvars.iv1304 = phi i64 [ %i.ajt, %.preheader1033 ], [ %indvars.iv.next1305, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491 ] ; 6 uses
  %i.akc = load i32, ptr %i.ck, align 4, !tbaa !151
  %i.akd = icmp slt i32 %i.akc, 2
  %i.ake = load ptr, ptr %i.cl, align 8, !tbaa !152
  %i.akf = load i64, ptr %i.cm, align 8
  %i.akg = mul i64 %i.akf, %indvars.iv1304
  %.sink.idx.i471 = select i1 %i.akd, i64 0, i64 %i.akg
  %.sink.i472 = getelementptr inbounds nuw i8, ptr %i.ake, i64 %.sink.idx.i471
  %i.akh = getelementptr inbounds i8, ptr %.sink.i472, i64 %indvars.iv1309 ; 2 uses
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !58
  %i.akj = icmp eq i8 %i.aki, 1
  %.pre1333 = load i32, ptr %i.ch, align 4, !tbaa !151 ; 2 uses
  %.pre1334 = load ptr, ptr %i.ci, align 8, !tbaa !152 ; 2 uses
  %.pre1335 = load i64, ptr %i.cj, align 8        ; 2 uses
  br i1 %i.akj, label %bb.dn, label %._crit_edge1350

._crit_edge1350:                                  ; preds = %bb.dm
  %.pre1355.a = mul i64 %.pre1335, %indvars.iv1304
  br label %bb.dz

bb.dn:                                            ; preds = %bb.dm
  %i.akk = icmp slt i32 %.pre1333, 2
  %i.akl = mul i64 %.pre1335, %indvars.iv1304     ; 2 uses
  %.sink.idx.i473 = select i1 %i.akk, i64 0, i64 %i.akl
  %.sink.i474 = getelementptr inbounds nuw i8, ptr %.pre1334, i64 %.sink.idx.i473
  %i.akm = getelementptr inbounds [4 x i8], ptr %.sink.i474, i64 %indvars.iv1309
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !68
  %i.ako = icmp eq i32 %i.akn, %i.aid
  br i1 %i.ako, label %bb.do, label %bb.dz

bb.do:                                            ; preds = %bb.dn
  store i8 0, ptr %i.akh, align 1, !tbaa !58
  %i.akp = load ptr, ptr %i.cq, align 8, !tbaa !155 ; 5 uses
  %i.akq = load ptr, ptr %i.cp, align 8, !tbaa !155 ; 4 uses
  %i.akr = ptrtoint ptr %i.akp to i64
  %i.aks = ptrtoint ptr %i.akq to i64             ; 2 uses
  %i.akt = sub i64 %i.akr, %i.aks                 ; 5 uses
  %i.aku = load ptr, ptr %i.cv, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.akp, %i.aku
  br i1 %.not.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akp) ]
  store i32 %i.ajy, ptr %i.akp, align 4, !tbaa !68
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akp, i64 4
  store ptr %i.akv, ptr %i.cq, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

bb.dq:                                            ; preds = %bb.do
  %i.akw = icmp eq i64 %i.akt, 9223372036854775804
  br i1 %i.akw, label %bb.dr, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc477 unwind label %.loopexit.split-lp1036

.noexc477:                                        ; preds = %bb.dr
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dq
  %i.akx = ashr exact i64 %i.akt, 2               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.akx, i64 1)
  %i.aky = add nsw i64 %.sroa.speculated.i.i.i, %i.akx ; 2 uses
  %i.akz = icmp ult i64 %i.aky, %i.akx
  %i.ala = call i64 @llvm.umin.i64(i64 %i.aky, i64 2305843009213693951)
  %i.alb = select i1 %i.akz, i64 2305843009213693951, i64 %i.ala ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.alb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.alc = shl nuw nsw i64 %i.alb, 2
  %i.ald = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alc) #21
          to label %.noexc478 unwind label %.loopexit1035 ; 4 uses

.noexc478:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ale = getelementptr inbounds i8, ptr %i.ald, i64 %i.akt ; 2 uses
  store i32 %i.ajz, ptr %i.ale, align 4, !tbaa !68
  %i.alf = icmp sgt i64 %i.akt, 0
  br i1 %i.alf, label %bb.ds, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ds:                                            ; preds = %.noexc478
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ald, ptr align 4 %i.akq, i64 %i.akt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %.noexc478, %bb.ds
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  %.not.i17.i.i = icmp eq ptr %i.akq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.alh = load ptr, ptr %i.cv, align 8, !tbaa !124
  %i.ali = ptrtoint ptr %i.alh to i64
  %i.alj = sub i64 %i.ali, %i.aks
  call void @_ZdlPvm(ptr noundef nonnull %i.akq, i64 noundef %i.alj) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dt, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ald, ptr %i.cp, align 8, !tbaa !121
  store ptr %i.alg, ptr %i.cq, align 8, !tbaa !125
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.ald, i64 %i.alb
  store ptr %i.alk, ptr %i.cv, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.dp
  %i.all = load ptr, ptr %i.cs, align 8, !tbaa !155 ; 5 uses
  %i.alm = load ptr, ptr %i.cr, align 8, !tbaa !155 ; 4 uses
  %i.aln = ptrtoint ptr %i.all to i64
  %i.alo = ptrtoint ptr %i.alm to i64             ; 2 uses
  %i.alp = sub i64 %i.aln, %i.alo                 ; 5 uses
  %i.alq = load ptr, ptr %i.cw, align 8, !tbaa !124
  %.not.i479 = icmp eq ptr %i.all, %i.alq
  br i1 %.not.i479, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.all) ]
  %i.alr = trunc nuw nsw i64 %indvars.iv1304 to i32
  store i32 %i.alr, ptr %i.all, align 4, !tbaa !68
  %i.als = getelementptr inbounds nuw i8, ptr %i.all, i64 4
  store ptr %i.als, ptr %i.cs, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491

bb.dv:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  %i.alt = icmp eq i64 %i.alp, 9223372036854775804
  br i1 %i.alt, label %bb.dw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc489 unwind label %.loopexit.split-lp1041

.noexc489:                                        ; preds = %bb.dw
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482: ; preds = %bb.dv
  %i.alu = ashr exact i64 %i.alp, 2               ; 3 uses
  %.sroa.speculated.i.i.i483 = call i64 @llvm.umax.i64(i64 %i.alu, i64 1)
  %i.alv = add nsw i64 %.sroa.speculated.i.i.i483, %i.alu ; 2 uses
  %i.alw = icmp ult i64 %i.alv, %i.alu
  %i.alx = call i64 @llvm.umin.i64(i64 %i.alv, i64 2305843009213693951)
  %i.aly = select i1 %i.alw, i64 2305843009213693951, i64 %i.alx ; 3 uses
  %.not.i.i.i484 = icmp ne i64 %i.aly, 0
  call void @llvm.assume(i1 %.not.i.i.i484)
  %i.alz = shl nuw nsw i64 %i.aly, 2
  %i.ama = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alz) #21
          to label %.noexc490 unwind label %.loopexit1040 ; 4 uses

.noexc490:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482
  %i.amb = getelementptr inbounds i8, ptr %i.ama, i64 %i.alp ; 2 uses
  %i.amc = trunc nuw nsw i64 %indvars.iv1304 to i32
  store i32 %i.amc, ptr %i.amb, align 4, !tbaa !68
  %i.amd = icmp sgt i64 %i.alp, 0
  br i1 %i.amd, label %bb.dx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486

bb.dx:                                            ; preds = %.noexc490
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ama, ptr align 4 %i.alm, i64 %i.alp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486: ; preds = %.noexc490, %bb.dx
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amb, i64 4
  %.not.i17.i.i487 = icmp eq ptr %i.alm, null
  br i1 %.not.i17.i.i487, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i488, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486
  %i.amf = load ptr, ptr %i.cw, align 8, !tbaa !124
  %i.amg = ptrtoint ptr %i.amf to i64
  %i.amh = sub i64 %i.amg, %i.alo
  call void @_ZdlPvm(ptr noundef nonnull %i.alm, i64 noundef %i.amh) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i488

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i488: ; preds = %bb.dy, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486
  store ptr %i.ama, ptr %i.cr, align 8, !tbaa !121
  store ptr %i.ame, ptr %i.cs, align 8, !tbaa !125
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.ama, i64 %i.aly
  store ptr %i.ami, ptr %i.cw, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491

.loopexit1035:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1037 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp1036:                           ; preds = %bb.dr
  %lpad.loopexit.split-lp1038 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit1040:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482
  %lpad.loopexit1042 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp1041:                           ; preds = %bb.dw
  %lpad.loopexit.split-lp1043 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.dz:                                            ; preds = %._crit_edge1350, %bb.dn
  %.pre-phi1356.a = phi i64 [ %.pre1355.a, %._crit_edge1350 ], [ %i.akl, %bb.dn ]
  %i.amj = icmp slt i32 %.pre1333, 2
  %.sink.idx.i492 = select i1 %i.amj, i64 0, i64 %.pre-phi1356.a
  %.sink.i493 = getelementptr inbounds nuw i8, ptr %.pre1334, i64 %.sink.idx.i492
end_hunk_2
