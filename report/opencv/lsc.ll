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
  %i.du = phi ptr [ %i.hj, %.loopexit152.loopexit ], [ %i.ec, %.lr.ph ]
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
  %i.ey = zext nneg i32 %. to i64
  %wide.trip.count = zext i32 %i.ev to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ez = phi ptr [ %i.ec, %.preheader.preheader ], [ %i.hj, %._crit_edge ]
  %indvars.iv221 = phi i64 [ %i.ex, %.preheader.preheader ], [ %indvars.iv.next222, %._crit_edge ] ; 6 uses
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
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1
  %.not74.not = icmp slt i64 %indvars.iv221, %i.ey
  br i1 %.not74.not, label %.preheader, label %.loopexit152.loopexit, !llvm.loop !157

bb.v:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114
  %i.fe = phi ptr [ %i.ez, %.preheader ], [ %i.hj, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114 ] ; 2 uses
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
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 6 uses
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
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fz) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.gj, ptr %2, align 8, !tbaa !121
  store ptr %i.gm, ptr %i.o, align 8, !tbaa !125
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.gn, ptr %i.q, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.y
  %i.go = load ptr, ptr %i.p, align 8, !tbaa !155 ; 5 uses
  %i.gp = load ptr, ptr %3, align 8, !tbaa !155   ; 5 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 6 uses
  %i.gt = load ptr, ptr %i.r, align 8, !tbaa !124
  %.not.i102 = icmp eq ptr %i.go, %i.gt
  br i1 %.not.i102, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.go) ]
  %i.gu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gu, ptr %i.go, align 4, !tbaa !68
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.gv, ptr %i.p, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit114

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  %i.gw = icmp eq i64 %i.gs, 9223372036854775804
  br i1 %i.gw, label %bb.af, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc112 unwind label %.loopexit.split-lp148

.noexc112:                                        ; preds = %bb.af
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105: ; preds = %bb.ae
  %i.gx = ashr exact i64 %i.gs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i106, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #21
          to label %.noexc113 unwind label %.loopexit147 ; 5 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gs ; 2 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !68
  %i.hg = icmp sgt i64 %i.gs, 0
  br i1 %i.hg, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109

bb.ag:                                            ; preds = %.noexc113
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gp, i64 %i.gs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109: ; preds = %.noexc113, %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.not.i17.i.i110 = icmp eq ptr %i.gp, null
  br i1 %.not.i17.i.i110, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gs) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i109
  store ptr %i.hd, ptr %3, align 8, !tbaa !121
  store ptr %i.hh, ptr %i.p, align 8, !tbaa !125
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hi, ptr %i.r, align 8, !tbaa !124
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
  %i.hj = phi ptr [ %i.gp, %bb.ad ], [ %i.hd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i111 ], [ %i.fe, %bb.v ], [ %i.fe, %bb.w ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !158

._crit_edge189:                                   ; preds = %.loopexit152
  %i.hk = icmp eq ptr %i.dt, %i.ds
  %i.hl = icmp ult i64 %i.eh, %i.s
  %i.hm = icmp ne ptr %i.dt, %i.ds
  %or.cond206 = and i1 %i.hl, %i.hm
  br i1 %or.cond206, label %.lr.ph194, label %.loopexit154

.lr.ph194:                                        ; preds = %._crit_edge189
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc17SuperpixelLSCImpl28PostEnforceLabelConnectivityEi:bb.a
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.gy ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !113
  %i.lp = fadd float %i.lf, %i.lo
  store float %i.lp, ptr %i.ln, align 4, !tbaa !113
  %indvars.iv.next1286 = add nuw nsw i64 %indvars.iv1285, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1286, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge1134, label %bb.ad, !llvm.loop !166

._crit_edge1134:                                  ; preds = %bb.aq, %bb.w
  %i.lq = phi ptr [ %i.do, %bb.w ], [ %i.hi, %bb.aq ] ; 2 uses
  %i.lr = phi ptr [ %i.dp, %bb.w ], [ %i.hh, %bb.aq ] ; 2 uses
  %i.ls = sitofp i32 %i.go to float
  %i.lt = load i32, ptr %i.ba, align 8, !tbaa !89
  %i.lu = sitofp i32 %i.lt to float
  %i.lv = fdiv float %i.ls, %i.lu
  %i.lw = fmul float %i.lv, f0x3FC90FDB           ; 2 uses
  %i.lx = load float, ptr %i.bb, align 4, !tbaa !76 ; 4 uses
  %i.ly = call noundef float @cosf(float noundef %i.lw) #23
  %i.lz = fmul float %i.lx, %i.ly
  %i.ma = call noundef float @sinf(float noundef %i.lw) #23
  %i.mb = fmul float %i.lx, %i.ma
  %i.mc = sitofp i32 %i.gn to float
  %i.md = load i32, ptr %i.bc, align 4, !tbaa !90
  %i.me = sitofp i32 %i.md to float
  %i.mf = fdiv float %i.mc, %i.me
  %i.mg = fmul float %i.mf, f0x3FC90FDB           ; 2 uses
  %i.mh = call noundef float @cosf(float noundef %i.mg) #23
  %i.mi = fmul float %i.lx, %i.mh
  %i.mj = call noundef float @sinf(float noundef %i.mg) #23
  %i.mk = fmul float %i.lx, %i.mj
  %i.ml = load ptr, ptr %5, align 8, !tbaa !69
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.gy ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !113
  %i.mo = fadd float %i.lz, %i.mn
  store float %i.mo, ptr %i.mm, align 4, !tbaa !113
  %i.mp = load ptr, ptr %6, align 8, !tbaa !69
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.gy ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !113
  %i.ms = fadd float %i.mb, %i.mr
  store float %i.ms, ptr %i.mq, align 4, !tbaa !113
  %i.mt = load ptr, ptr %7, align 8, !tbaa !69
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.gy ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !113
  %i.mw = fadd float %i.mi, %i.mv
  store float %i.mw, ptr %i.mu, align 4, !tbaa !113
  %i.mx = load ptr, ptr %8, align 8, !tbaa !69
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.gy ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !113
  %i.na = fadd float %i.mk, %i.mz
  store float %i.na, ptr %i.my, align 4, !tbaa !113
  %i.nb = load i32, ptr %i.bd, align 4, !tbaa !151
  %i.nc = icmp slt i32 %i.nb, 2
  %i.nd = load ptr, ptr %i.be, align 8, !tbaa !152
  %i.ne = load i64, ptr %i.bf, align 8
  %i.nf = mul i64 %i.ne, %i.gt
  %.sink.idx.i405 = select i1 %i.nc, i64 0, i64 %i.nf
  %.sink.i406 = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sink.idx.i405
  %i.ng = getelementptr inbounds [4 x i8], ptr %.sink.i406, i64 %i.gv ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !68
  store i32 %i.ea, ptr %i.ng, align 4, !tbaa !68
  %i.ni = load i32, ptr %i.c, align 4, !tbaa !68
  %i.nj = load i32, ptr %i.b, align 4, !tbaa !68
  %i.nk = load i32, ptr %i.ak, align 4, !tbaa !151
  %i.nl = icmp slt i32 %i.nk, 2
  %i.nm = load ptr, ptr %i.al, align 8, !tbaa !152
  %i.nn = load i64, ptr %i.am, align 8
  %i.no = sext i32 %i.ni to i64
  %i.np = mul i64 %i.nn, %i.no
  %.sink.idx.i423 = select i1 %i.nl, i64 0, i64 %i.np
  %.sink.i424 = getelementptr inbounds nuw i8, ptr %i.nm, i64 %.sink.idx.i423
  %i.nq = sext i32 %i.nj to i64
  %i.nr = getelementptr inbounds i8, ptr %.sink.i424, i64 %i.nq
  store i8 1, ptr %i.nr, align 1, !tbaa !58
  %i.ns = load ptr, ptr %i.bg, align 8, !tbaa !167 ; 3 uses
  %i.nt = load ptr, ptr %i.bh, align 8, !tbaa !172
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -4
  %.not.i.i = icmp eq ptr %i.ns, %i.nu
  br i1 %.not.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge1134
  %i.nv = load i32, ptr %i.b, align 4, !tbaa !68
  store i32 %i.nv, ptr %i.ns, align 4, !tbaa !68
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store ptr %i.nw, ptr %i.bg, align 8, !tbaa !167
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.as:                                            ; preds = %._crit_edge1134
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit unwind label %bb.az

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit:     ; preds = %bb.ar, %bb.as
  %i.nx = load ptr, ptr %i.bi, align 8, !tbaa !167 ; 3 uses
  %i.ny = load ptr, ptr %i.bj, align 8, !tbaa !172
  %i.nz = getelementptr inbounds i8, ptr %i.ny, i64 -4
  %.not.i.i426 = icmp eq ptr %i.nx, %i.nz
  br i1 %.not.i.i426, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %i.oa = load i32, ptr %i.c, align 4, !tbaa !68
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !68
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  store ptr %i.ob, ptr %i.bi, align 8, !tbaa !167
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428

bb.au:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  invoke void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 unwind label %bb.az

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428:  ; preds = %bb.au, %bb.at
  %i.oc = load ptr, ptr %i.bg, align 8, !tbaa !173
  %i.od = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %._crit_edge1147, label %.lr.ph1146

.loopexit1055:                                    ; preds = %._crit_edge1143, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432
  %i.of = phi ptr [ %i.ok, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432 ], [ %i.aek, %._crit_edge1143 ] ; 2 uses
  %i.og = phi ptr [ %i.ol, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432 ], [ %i.ael, %._crit_edge1143 ] ; 2 uses
  %i.oh = load ptr, ptr %i.bg, align 8, !tbaa !173
  %i.oi = load ptr, ptr %i.bk, align 8, !tbaa !173 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %._crit_edge1147, label %.lr.ph1146, !llvm.loop !174

.lr.ph1146:                                       ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428, %.loopexit1055
  %i.ok = phi ptr [ %i.of, %.loopexit1055 ], [ %i.lq, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 ] ; 2 uses
  %i.ol = phi ptr [ %i.og, %.loopexit1055 ], [ %i.lr, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 ] ; 2 uses
  %i.om = phi ptr [ %i.oi, %.loopexit1055 ], [ %i.od, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit428 ] ; 3 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !68 ; 2 uses
  %i.oo = load ptr, ptr %i.bl, align 8, !tbaa !175
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 -4
  %.not.i.i429 = icmp eq ptr %i.om, %i.op
  br i1 %.not.i.i429, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph1146
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

bb.aw:                                            ; preds = %.lr.ph1146
  %i.or = load ptr, ptr %i.bm, align 8, !tbaa !176
  call void @_ZdlPvm(ptr noundef %i.or, i64 noundef 512) #22
  %i.os = load ptr, ptr %i.bn, align 8, !tbaa !177
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  store ptr %i.ot, ptr %i.bn, align 8, !tbaa !178
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !155 ; 3 uses
  store ptr %i.ou, ptr %i.bm, align 8, !tbaa !179
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 512
  store ptr %i.ov, ptr %i.bl, align 8, !tbaa !180
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit:        ; preds = %bb.av, %bb.aw
  %storemerge.i.i = phi ptr [ %i.oq, %bb.av ], [ %i.ou, %bb.aw ]
  store ptr %storemerge.i.i, ptr %i.bk, align 8, !tbaa !181
  %i.ow = load ptr, ptr %i.bo, align 8, !tbaa !173, !noalias !182 ; 3 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !68 ; 2 uses
  %i.oy = load ptr, ptr %i.bp, align 8, !tbaa !175
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -4
  %.not.i.i430 = icmp eq ptr %i.ow, %i.oz
  br i1 %.not.i.i430, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432

bb.ay:                                            ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit
  %i.pb = load ptr, ptr %i.bq, align 8, !tbaa !176
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef 512) #22
  %i.pc = load ptr, ptr %i.br, align 8, !tbaa !177
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  store ptr %i.pd, ptr %i.br, align 8, !tbaa !178
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !155 ; 3 uses
  store ptr %i.pe, ptr %i.bq, align 8, !tbaa !179
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 512
  store ptr %i.pf, ptr %i.bp, align 8, !tbaa !180
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432:     ; preds = %bb.ax, %bb.ay
  %storemerge.i.i431 = phi ptr [ %i.pa, %bb.ax ], [ %i.pe, %bb.ay ]
  store ptr %storemerge.i.i431, ptr %i.bo, align 8, !tbaa !181
  %i.pg = call i32 @llvm.smax.i32(i32 %i.on, i32 1) ; 2 uses
  %i.ph = add nsw i32 %i.pg, -1
  %i.pi = call i32 @llvm.smax.i32(i32 %i.ox, i32 1) ; 2 uses
  %i.pj = add nsw i32 %i.pi, -1
  %i.pk = add nsw i32 %i.on, 1
  %i.pl = load i32, ptr %i.ag, align 8, !tbaa !60
  %i.pm = add nsw i32 %i.pl, -1
  %. = call i32 @llvm.smin.i32(i32 %i.pk, i32 %i.pm) ; 2 uses
  %i.pn = add i32 %i.ox, 1
  %i.po = load i32, ptr %i.ae, align 4, !tbaa !61
  %i.pp = add i32 %i.po, -1
  %i.pq = call i32 @llvm.smin.i32(i32 %i.pn, i32 %i.pp) ; 2 uses
  %.not3541144 = icmp sgt i32 %i.ph, %.
  %.not3561139 = icmp sgt i32 %i.pj, %i.pq
  %or.cond1250 = select i1 %.not3541144, i1 true, i1 %.not3561139
  br i1 %or.cond1250, label %.loopexit1055, label %.preheader1049.preheader

.preheader1049.preheader:                         ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit432
  %i.pr = zext nneg i32 %i.pi to i64
  %i.ps = add nsw i64 %i.pr, -1
  %i.pt = add nuw i32 %i.pq, 1
  %i.pu = zext nneg i32 %i.pg to i64
  %i.pv = add nsw i64 %i.pu, -1
  %i.pw = zext nneg i32 %. to i64
  %wide.trip.count1296 = zext i32 %i.pt to i64
  br label %.preheader1049

.preheader1049:                                   ; preds = %.preheader1049.preheader, %._crit_edge1143
  %i.px = phi ptr [ %i.ok, %.preheader1049.preheader ], [ %i.aek, %._crit_edge1143 ]
  %i.py = phi ptr [ %i.ol, %.preheader1049.preheader ], [ %i.ael, %._crit_edge1143 ]
  %indvars.iv1298 = phi i64 [ %i.pv, %.preheader1049.preheader ], [ %indvars.iv.next1299, %._crit_edge1143 ] ; 8 uses
  %i.pz = trunc nuw nsw i64 %indvars.iv1298 to i32 ; 3 uses
  %i.qa = sitofp i32 %i.pz to float
  br label %bb.ba

bb.az:                                            ; preds = %bb.au, %bb.as
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

._crit_edge1143:                                  ; preds = %bb.da
  %indvars.iv.next1299 = add nuw nsw i64 %indvars.iv1298, 1
  %.not354.not = icmp slt i64 %indvars.iv1298, %i.pw
  br i1 %.not354.not, label %.preheader1049, label %.loopexit1055, !llvm.loop !185

bb.ba:                                            ; preds = %.preheader1049, %bb.da
  %i.qc = phi ptr [ %i.px, %.preheader1049 ], [ %i.aek, %bb.da ] ; 3 uses
  %i.qd = phi ptr [ %i.py, %.preheader1049 ], [ %i.ael, %bb.da ] ; 3 uses
  %indvars.iv1293 = phi i64 [ %i.ps, %.preheader1049 ], [ %indvars.iv.next1294, %bb.da ] ; 9 uses
  %i.qe = load i32, ptr %i.ak, align 4, !tbaa !151
  %i.qf = icmp slt i32 %i.qe, 2
  %i.qg = load ptr, ptr %i.al, align 8, !tbaa !152
  %i.qh = load i64, ptr %i.am, align 8
  %i.qi = mul i64 %i.qh, %indvars.iv1293
  %.sink.idx.i433 = select i1 %i.qf, i64 0, i64 %i.qi
  %.sink.i434 = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.sink.idx.i433
  %i.qj = getelementptr inbounds i8, ptr %.sink.i434, i64 %indvars.iv1298
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !58
  %i.ql = icmp eq i8 %i.qk, 0
  br i1 %i.ql, label %bb.bb, label %bb.da

bb.bb:                                            ; preds = %bb.ba
  %i.qm = load i32, ptr %i.bd, align 4, !tbaa !151
  %i.qn = icmp slt i32 %i.qm, 2
  %i.qo = load ptr, ptr %i.be, align 8, !tbaa !152
  %i.qp = load i64, ptr %i.bf, align 8
  %i.qq = mul i64 %i.qp, %indvars.iv1293
  %.sink.idx.i435 = select i1 %i.qn, i64 0, i64 %i.qq
  %.sink.i436 = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.sink.idx.i435
  %i.qr = getelementptr inbounds [4 x i8], ptr %.sink.i436, i64 %indvars.iv1298
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !68
  %i.qt = icmp eq i32 %i.qs, %i.nh
  br i1 %i.qt, label %bb.bc, label %bb.da

bb.bc:                                            ; preds = %bb.bb
  %i.qu = load i32, ptr %i.d, align 4, !tbaa !68
  %i.qv = add nsw i32 %i.qu, 1
  store i32 %i.qv, ptr %i.d, align 4, !tbaa !68
  %i.qw = load ptr, ptr %i.bg, align 8, !tbaa !167 ; 4 uses
  %i.qx = load ptr, ptr %i.bh, align 8, !tbaa !172
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 -4
  %.not.i.i437 = icmp eq ptr %i.qw, %i.qy
  br i1 %.not.i.i437, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.pz, ptr %i.qw, align 4, !tbaa !68
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit439

bb.be:                                            ; preds = %bb.bc
  %i.ra = load ptr, ptr %i.bs, align 8, !tbaa !178 ; 5 uses
  %i.rb = load ptr, ptr %i.bn, align 8, !tbaa !178 ; 8 uses
  %i.rc = ptrtoint ptr %i.ra to i64               ; 2 uses
  %i.rd = ptrtoint ptr %i.rb to i64               ; 4 uses
  %i.re = sub i64 %i.rc, %i.rd
  %i.rf = ashr exact i64 %i.re, 3                 ; 3 uses
  %i.rg = icmp ne ptr %i.ra, null
  %.neg.i.i.i = sext i1 %i.rg to i64
  %i.rh = add nsw i64 %i.rf, %.neg.i.i.i
  %i.ri = shl nsw i64 %i.rh, 7
  %i.rj = load ptr, ptr %i.bt, align 8, !tbaa !179
  %i.rk = ptrtoint ptr %i.qw to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = ashr exact i64 %i.rm, 2
  %i.ro = add nsw i64 %i.ri, %i.rn
  %i.rp = load ptr, ptr %i.bl, align 8, !tbaa !180
  %i.rq = load ptr, ptr %i.bk, align 8, !tbaa !173
  %i.rr = ptrtoint ptr %i.rp to i64
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = sub i64 %i.rr, %i.rs
  %i.ru = ashr exact i64 %i.rt, 2
  %i.rv = add nsw i64 %i.ro, %i.ru
  %i.rw = icmp eq i64 %i.rv, 2305843009213693951
  br i1 %i.rw, label %.invoke, label %bb.bf

.invoke:                                          ; preds = %bb.bw, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
          to label %.cont unwind label %.loopexit.split-lp1051

.cont:                                            ; preds = %.invoke
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.rx = load i64, ptr %i.bu, align 8, !tbaa !186 ; 6 uses
  %i.ry = load ptr, ptr %3, align 8, !tbaa !187   ; 3 uses
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = sub i64 %i.rc, %i.rz
  %i.sb = ashr exact i64 %i.sa, 3
  %i.sc = sub i64 %i.rx, %i.sb
  %i.sd = icmp ult i64 %i.sc, 2
  br i1 %i.sd, label %bb.bg, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.se = add nsw i64 %i.rf, 1                    ; 2 uses
  %i.sf = add nsw i64 %i.rf, 2                    ; 3 uses
  %i.sg = shl nsw i64 %i.sf, 1
  %i.sh = icmp ugt i64 %i.rx, %i.sg
  br i1 %i.sh, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.si = sub i64 %i.rx, %i.sf
  %i.sj = lshr i64 %i.si, 1
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.sj ; 10 uses
  %i.sl = icmp ult ptr %i.sk, %i.rb
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ra, i64 8 ; 2 uses
  br i1 %i.sl, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = sub i64 %i.sn, %i.rd                    ; 3 uses
  %i.sp = icmp sgt i64 %i.so, 8
  br i1 %i.sp, label %bb.bj, label %bb.bk, !prof !188

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.sk, ptr nonnull align 8 %i.rb, i64 %i.so, i1 false)
  br label %.noexc776

bb.bk:                                            ; preds = %bb.bi
  %i.sq = icmp eq i64 %i.so, 8
  br i1 %i.sq, label %bb.bl, label %.noexc776

bb.bl:                                            ; preds = %bb.bk
  %i.sr = load ptr, ptr %i.rb, align 8, !tbaa !155
  store ptr %i.sr, ptr %i.sk, align 8, !tbaa !155
  br label %.noexc776

bb.bm:                                            ; preds = %bb.bh
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.se ; 2 uses
  %i.st = ptrtoint ptr %i.sm to i64
  %i.su = sub i64 %i.st, %i.rd                    ; 3 uses
  %i.sv = ashr exact i64 %i.su, 3                 ; 2 uses
  %i.sw = icmp sgt i64 %i.sv, 1
  br i1 %i.sw, label %bb.bn, label %bb.bo, !prof !188

bb.bn:                                            ; preds = %bb.bm
  %i.sx = sub nsw i64 0, %i.sv
  %i.sy = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.sx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sy, ptr align 8 %i.rb, i64 %i.su, i1 false)
  br label %.noexc776

bb.bo:                                            ; preds = %bb.bm
  %i.sz = icmp eq i64 %i.su, 8
  br i1 %i.sz, label %bb.bp, label %.noexc776

bb.bp:                                            ; preds = %bb.bo
  %i.ta = getelementptr inbounds i8, ptr %i.ss, i64 -8
  %i.tb = load ptr, ptr %i.rb, align 8, !tbaa !155
  store ptr %i.tb, ptr %i.ta, align 8, !tbaa !155
  br label %.noexc776

bb.bq:                                            ; preds = %bb.bg
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.rx, i64 1)
  %i.tc = add i64 %i.rx, 2
  %i.td = add i64 %i.tc, %.sroa.speculated.i      ; 5 uses
  %i.te = icmp ugt i64 %i.td, 1152921504606846975
  br i1 %i.te, label %bb.br, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i, !prof !189

bb.br:                                            ; preds = %bb.bq
  %i.tf = icmp ugt i64 %i.td, 2305843009213693951
  br i1 %i.tf, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

.noexc.i.i.invoke:                                ; preds = %bb.cj, %bb.br
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i.cont unwind label %.loopexit.split-lp1051

.noexc.i.i.cont:                                  ; preds = %.noexc.i.i.invoke
  unreachable

.noexc3.i.i.invoke:                               ; preds = %bb.cj, %bb.br
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i.cont unwind label %.loopexit.split-lp1051

.noexc3.i.i.cont:                                 ; preds = %.noexc3.i.i.invoke
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i: ; preds = %bb.bq
  %i.tg = shl nuw nsw i64 %i.td, 3
  %i.th = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tg) #21
          to label %.noexc786 unwind label %.loopexit1050 ; 2 uses

.noexc786:                                        ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i
  %i.ti = sub nsw i64 %i.td, %i.sf
  %i.tj = lshr i64 %i.ti, 1
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tj ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = sub i64 %i.tm, %i.rd                    ; 3 uses
  %i.to = icmp sgt i64 %i.tn, 8
  br i1 %i.to, label %bb.bs, label %bb.bt, !prof !188

bb.bs:                                            ; preds = %.noexc786
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tk, ptr align 8 %i.rb, i64 %i.tn, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.bt:                                            ; preds = %.noexc786
  %i.tp = icmp eq i64 %i.tn, 8
  br i1 %i.tp, label %bb.bu, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.bu:                                            ; preds = %bb.bt
  %i.tq = load ptr, ptr %i.rb, align 8, !tbaa !155
  store ptr %i.tq, ptr %i.tk, align 8, !tbaa !155
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

end_hunk_1
begin_hunk_2_@_ZN2cv8ximgproc17SuperpixelLSCImpl28PostEnforceLabelConnectivityEi:bb.a
  %i.aev = phi ptr [ %i.aem, %.preheader1056 ], [ %i.aeu, %bb.dc ]
  %i.aew = phi ptr [ %i.aen, %.preheader1056 ], [ %i.aet, %bb.dc ]
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.gy ; 4 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !113
  %i.aez = load ptr, ptr %5, align 8, !tbaa !69
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aez, i64 %i.gy ; 2 uses
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !113
  %i.afc = fdiv float %i.afb, %i.aey
  store float %i.afc, ptr %i.afa, align 4, !tbaa !113
  %i.afd = load float, ptr %i.aex, align 4, !tbaa !113
  %i.afe = load ptr, ptr %6, align 8, !tbaa !69
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %i.gy ; 2 uses
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !113
  %i.afh = fdiv float %i.afg, %i.afd
  store float %i.afh, ptr %i.aff, align 4, !tbaa !113
  %i.afi = load float, ptr %i.aex, align 4, !tbaa !113
  %i.afj = load ptr, ptr %7, align 8, !tbaa !69
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %i.gy ; 2 uses
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !113
  %i.afm = fdiv float %i.afl, %i.afi
  store float %i.afm, ptr %i.afk, align 4, !tbaa !113
  %i.afn = load float, ptr %i.aex, align 4, !tbaa !113
  %i.afo = load ptr, ptr %8, align 8, !tbaa !69
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %i.gy ; 2 uses
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !113
  %i.afr = fdiv float %i.afq, %i.afn
  store float %i.afr, ptr %i.afp, align 4, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.pre1330 = load i32, ptr %i.c, align 4, !tbaa !68
  %.pre1331 = load i32, ptr %i.ae, align 4, !tbaa !61
  %.pre1348.a = load i32, ptr %i.b, align 4, !tbaa !68
  br label %bb.de

bb.db:                                            ; preds = %._crit_edge1147
  %i.afs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %.lr.ph1149, %bb.dc
  %indvars.iv1301 = phi i64 [ 0, %.lr.ph1149 ], [ %indvars.iv.next1302, %bb.dc ] ; 3 uses
  %i.aft = load float, ptr %i.aes, align 4, !tbaa !113
  %i.afu = getelementptr inbounds nuw [24 x i8], ptr %i.aet, i64 %indvars.iv1301
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !69
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.gy ; 2 uses
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !113
  %i.afy = fdiv float %i.afx, %i.aft
  store float %i.afy, ptr %i.afw, align 4, !tbaa !113
  %i.afz = load float, ptr %i.aes, align 4, !tbaa !113
  %i.aga = getelementptr inbounds nuw [24 x i8], ptr %i.aeu, i64 %indvars.iv1301
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !69
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %i.gy ; 2 uses
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !113
  %i.age = fdiv float %i.agd, %i.afz
  store float %i.age, ptr %i.agc, align 4, !tbaa !113
  %indvars.iv.next1302 = add nuw nsw i64 %indvars.iv1301, 1 ; 2 uses
  %exitcond1305.not = icmp eq i64 %indvars.iv.next1302, %wide.trip.count1304
  br i1 %exitcond1305.not, label %._crit_edge1150, label %bb.dc, !llvm.loop !192

bb.dd:                                            ; preds = %.loopexit1050, %.loopexit.split-lp1051, %.loopexit1062, %.loopexit.split-lp1063, %.loopexit1057, %.loopexit.split-lp1058, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.db, %bb.az, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.k
  %.pn366.pn = phi { ptr, i32 } [ %i.eh, %bb.k ], [ %i.afs, %bb.db ], [ %i.ho, %bb.ac ], [ %i.hn, %bb.ab ], [ %i.hm, %bb.aa ], [ %i.hl, %bb.z ], [ %i.hk, %bb.y ], [ %i.hj, %bb.x ], [ %lpad.loopexit.split-lp1060, %.loopexit.split-lp1058 ], [ %lpad.loopexit.split-lp1065, %.loopexit.split-lp1063 ], [ %.pn357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466 ], [ %.pn362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.qb, %bb.az ], [ %lpad.loopexit1059, %.loopexit1057 ], [ %lpad.loopexit1064, %.loopexit1062 ], [ %lpad.loopexit1052, %.loopexit1050 ], [ %lpad.loopexit.split-lp1053, %.loopexit.split-lp1051 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.jt

bb.de:                                            ; preds = %.lr.ph1154, %._crit_edge1150
  %.pre1332 = phi i32 [ %.pre1348.a, %._crit_edge1150 ], [ %i.dm, %.lr.ph1154 ] ; 2 uses
  %i.agf = phi i32 [ %.pre1331, %._crit_edge1150 ], [ %i.dn, %.lr.ph1154 ] ; 4 uses
  %i.agg = phi i32 [ %.pre1330, %._crit_edge1150 ], [ %storemerge3501151, %.lr.ph1154 ]
  %i.agh = phi ptr [ %i.aev, %._crit_edge1150 ], [ %i.do, %.lr.ph1154 ] ; 2 uses
  %i.agi = phi ptr [ %i.aew, %._crit_edge1150 ], [ %i.dp, %.lr.ph1154 ] ; 2 uses
  %.2303 = phi i32 [ %i.ea, %._crit_edge1150 ], [ %.13021152, %.lr.ph1154 ] ; 2 uses
  %i.agj = add nsw i32 %i.agg, 1                  ; 3 uses
  store i32 %i.agj, ptr %i.c, align 4, !tbaa !68
  %i.agk = icmp slt i32 %i.agj, %i.agf
  br i1 %i.agk, label %.lr.ph1154, label %._crit_edge1155.loopexit, !llvm.loop !193

._crit_edge1184:                                  ; preds = %bb.fb
  %.pre1339.a = load ptr, ptr %19, align 8, !tbaa !194 ; 2 uses
  %.pre1340.a = load ptr, ptr %i.cr, align 8, !tbaa !194 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 19 uses
  %.not10261245 = icmp eq ptr %.pre1339.a, %.pre1340.a
  br i1 %.not10261245, label %._crit_edge1249, label %.lr.ph1248

.lr.ph1248:                                       ; preds = %._crit_edge1184
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  br label %bb.fc

bb.df:                                            ; preds = %.lr.ph1183, %bb.fb
  %indvars.iv1314 = phi i64 [ 0, %.lr.ph1183 ], [ %indvars.iv.next1315, %bb.fb ] ; 5 uses
  %i.agp = load ptr, ptr %11, align 8, !tbaa !121
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %indvars.iv1314
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !68
  %i.ags = icmp slt i32 %i.agr, %1
  br i1 %i.ags, label %bb.dg, label %bb.fb

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.agt = load ptr, ptr %9, align 8, !tbaa !121
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %indvars.iv1314
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !68 ; 2 uses
  store i32 %i.agv, ptr %i.j, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.agw = load ptr, ptr %10, align 8, !tbaa !121
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %indvars.iv1314
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !68 ; 2 uses
  store i32 %i.agy, ptr %i.k, align 4, !tbaa !68
  %i.agz = load i32, ptr %i.cb, align 4, !tbaa !151
  %i.aha = icmp slt i32 %i.agz, 2
  %i.ahb = load ptr, ptr %i.cc, align 8, !tbaa !152
  %i.ahc = load i64, ptr %i.cd, align 8
  %i.ahd = sext i32 %i.agy to i64                 ; 2 uses
  %i.ahe = mul i64 %i.ahc, %i.ahd
  %.sink.idx.i467 = select i1 %i.aha, i64 0, i64 %i.ahe
  %.sink.i468 = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.sink.idx.i467
  %i.ahf = sext i32 %i.agv to i64                 ; 2 uses
  %i.ahg = getelementptr inbounds [4 x i8], ptr %.sink.i468, i64 %i.ahf
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !68 ; 3 uses
  %i.ahi = load i32, ptr %i.ce, align 4, !tbaa !151
  %i.ahj = icmp slt i32 %i.ahi, 2
  %i.ahk = load ptr, ptr %i.cf, align 8, !tbaa !152
  %i.ahl = load i64, ptr %i.cg, align 8
  %i.ahm = mul i64 %i.ahl, %i.ahd
  %.sink.idx.i469 = select i1 %i.ahj, i64 0, i64 %i.ahm
  %.sink.i470 = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %.sink.idx.i469
  %i.ahn = getelementptr inbounds i8, ptr %.sink.i470, i64 %i.ahf
  store i8 0, ptr %i.ahn, align 1, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.aho = load ptr, ptr %11, align 8, !tbaa !121
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %indvars.iv1314
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !68
  store i32 %i.ahh, ptr %20, align 8, !tbaa !196
  store i32 %i.ahq, ptr %i.ch, align 4, !tbaa !198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, i8 0, i64 72, i1 false)
  %i.ahr = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.dh unwind label %bb.di     ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.ahs = load ptr, ptr %i.cm, align 8, !tbaa !155
  %i.aht = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr %i.ahs, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %.preheader1048 unwind label %bb.dj ; 0 uses

.preheader1048:                                   ; preds = %bb.dh
  %i.ahu = load ptr, ptr %i.ck, align 8, !tbaa !125 ; 2 uses
  %i.ahv = load ptr, ptr %i.cj, align 8, !tbaa !121 ; 2 uses
  %.not1252 = icmp eq ptr %i.ahu, %i.ahv
  br i1 %.not1252, label %._crit_edge1179, label %.lr.ph1178

.loopexit1047.loopexit:                           ; preds = %._crit_edge1174
  %.pre1337 = load ptr, ptr %i.ck, align 8, !tbaa !125
  %.pre1338.a = load ptr, ptr %i.cj, align 8, !tbaa !121
  br label %.loopexit1047

.loopexit1047:                                    ; preds = %.loopexit1047.loopexit, %.lr.ph1178
  %i.ahw = phi ptr [ %.pre1338.a, %.loopexit1047.loopexit ], [ %i.aid, %.lr.ph1178 ] ; 2 uses
  %i.ahx = phi ptr [ %.pre1337, %.loopexit1047.loopexit ], [ %i.aie, %.lr.ph1178 ] ; 2 uses
  %i.ahy = ptrtoint ptr %i.ahx to i64
  %i.ahz = ptrtoint ptr %i.ahw to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %i.aib = ashr exact i64 %i.aia, 2
  %i.aic = icmp ult i64 %i.aik, %i.aib
  br i1 %i.aic, label %.lr.ph1178, label %._crit_edge1179, !llvm.loop !199

.lr.ph1178:                                       ; preds = %.preheader1048, %.loopexit1047
  %i.aid = phi ptr [ %i.ahw, %.loopexit1047 ], [ %i.ahv, %.preheader1048 ] ; 2 uses
  %i.aie = phi ptr [ %i.ahx, %.loopexit1047 ], [ %i.ahu, %.preheader1048 ]
  %.03121177 = phi i64 [ %i.aik, %.loopexit1047 ], [ 0, %.preheader1048 ] ; 3 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %.03121177
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !68 ; 3 uses
  store i32 %i.aig, ptr %i.j, align 4, !tbaa !68
  %i.aih = load ptr, ptr %i.cl, align 8, !tbaa !121
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %.03121177
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !68 ; 3 uses
  store i32 %i.aij, ptr %i.k, align 4, !tbaa !68
  %i.aik = add nuw i64 %.03121177, 1              ; 2 uses
  %i.ail = call i32 @llvm.smax.i32(i32 %i.aig, i32 1) ; 2 uses
  %i.aim = add nsw i32 %i.ail, -1
  %i.ain = call i32 @llvm.smax.i32(i32 %i.aij, i32 1) ; 2 uses
  %i.aio = add nsw i32 %i.ain, -1
  %i.aip = add nsw i32 %i.aig, 1
  %i.aiq = load i32, ptr %i.ag, align 8, !tbaa !60
  %i.air = add nsw i32 %i.aiq, -1
  %.376 = call i32 @llvm.smin.i32(i32 %i.aip, i32 %i.air) ; 2 uses
  %i.ais = add i32 %i.aij, 1
  %i.ait = load i32, ptr %i.ae, align 4, !tbaa !61
  %i.aiu = add i32 %i.ait, -1
  %i.aiv = call i32 @llvm.smin.i32(i32 %i.ais, i32 %i.aiu) ; 2 uses
  %.not3391175 = icmp sgt i32 %i.aim, %.376
  %.not3411170 = icmp sgt i32 %i.aio, %i.aiv
  %or.cond1251 = select i1 %.not3391175, i1 true, i1 %.not3411170
  br i1 %or.cond1251, label %.loopexit1047, label %.preheader1035.preheader

.preheader1035.preheader:                         ; preds = %.lr.ph1178
  %i.aiw = zext nneg i32 %i.ain to i64
  %i.aix = add nsw i64 %i.aiw, -1
  %i.aiy = add nuw i32 %i.aiv, 1
  %i.aiz = zext nneg i32 %i.ail to i64
  %i.aja = add nsw i64 %i.aiz, -1
  %i.ajb = zext nneg i32 %.376 to i64
  %wide.trip.count1309 = zext i32 %i.aiy to i64
  br label %.preheader1035

.preheader1035:                                   ; preds = %.preheader1035.preheader, %._crit_edge1174
  %indvars.iv1311 = phi i64 [ %i.aja, %.preheader1035.preheader ], [ %indvars.iv.next1312, %._crit_edge1174 ] ; 7 uses
  %i.ajc = trunc nuw nsw i64 %indvars.iv1311 to i32
  %i.ajd = trunc nuw nsw i64 %indvars.iv1311 to i32
  br label %bb.dk

bb.di:                                            ; preds = %bb.dg
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.dj:                                            ; preds = %bb.dh
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

._crit_edge1174:                                  ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491
  %indvars.iv.next1312 = add nuw nsw i64 %indvars.iv1311, 1
  %.not339.not = icmp slt i64 %indvars.iv1311, %i.ajb
  br i1 %.not339.not, label %.preheader1035, label %.loopexit1047.loopexit, !llvm.loop !200

bb.dk:                                            ; preds = %.preheader1035, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491
  %indvars.iv1306 = phi i64 [ %i.aix, %.preheader1035 ], [ %indvars.iv.next1307, %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491 ] ; 6 uses
  %i.ajg = load i32, ptr %i.ce, align 4, !tbaa !151
  %i.ajh = icmp slt i32 %i.ajg, 2
  %i.aji = load ptr, ptr %i.cf, align 8, !tbaa !152
  %i.ajj = load i64, ptr %i.cg, align 8
  %i.ajk = mul i64 %i.ajj, %indvars.iv1306
  %.sink.idx.i471 = select i1 %i.ajh, i64 0, i64 %i.ajk
  %.sink.i472 = getelementptr inbounds nuw i8, ptr %i.aji, i64 %.sink.idx.i471
  %i.ajl = getelementptr inbounds i8, ptr %.sink.i472, i64 %indvars.iv1311 ; 2 uses
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !58
  %i.ajn = icmp eq i8 %i.ajm, 1
  %.pre1334 = load i32, ptr %i.cb, align 4, !tbaa !151 ; 2 uses
  %.pre1335 = load ptr, ptr %i.cc, align 8, !tbaa !152 ; 2 uses
  %.pre1336 = load i64, ptr %i.cd, align 8        ; 2 uses
  br i1 %i.ajn, label %bb.dl, label %._crit_edge1351

._crit_edge1351:                                  ; preds = %bb.dk
  %.pre1356.a = mul i64 %.pre1336, %indvars.iv1306
  br label %bb.dx

bb.dl:                                            ; preds = %bb.dk
  %i.ajo = icmp slt i32 %.pre1334, 2
  %i.ajp = mul i64 %.pre1336, %indvars.iv1306     ; 2 uses
  %.sink.idx.i473 = select i1 %i.ajo, i64 0, i64 %i.ajp
  %.sink.i474 = getelementptr inbounds nuw i8, ptr %.pre1335, i64 %.sink.idx.i473
  %i.ajq = getelementptr inbounds [4 x i8], ptr %.sink.i474, i64 %indvars.iv1311
  %i.ajr = load i32, ptr %i.ajq, align 4, !tbaa !68
  %i.ajs = icmp eq i32 %i.ajr, %i.ahh
  br i1 %i.ajs, label %bb.dm, label %bb.dx

bb.dm:                                            ; preds = %bb.dl
  store i8 0, ptr %i.ajl, align 1, !tbaa !58
  %i.ajt = load ptr, ptr %i.ck, align 8, !tbaa !155 ; 5 uses
  %i.aju = load ptr, ptr %i.cj, align 8, !tbaa !155 ; 4 uses
  %i.ajv = ptrtoint ptr %i.ajt to i64
  %i.ajw = ptrtoint ptr %i.aju to i64
  %i.ajx = sub i64 %i.ajv, %i.ajw                 ; 6 uses
  %i.ajy = load ptr, ptr %i.cp, align 8, !tbaa !124
  %.not.i = icmp eq ptr %i.ajt, %i.ajy
  br i1 %.not.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajt) ]
  store i32 %i.ajc, ptr %i.ajt, align 4, !tbaa !68
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  store ptr %i.ajz, ptr %i.ck, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

bb.do:                                            ; preds = %bb.dm
  %i.aka = icmp eq i64 %i.ajx, 9223372036854775804
  br i1 %i.aka, label %bb.dp, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc477 unwind label %.loopexit.split-lp1038

.noexc477:                                        ; preds = %bb.dp
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.do
  %i.akb = ashr exact i64 %i.ajx, 2               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.akb, i64 1)
  %i.akc = add nsw i64 %.sroa.speculated.i.i.i, %i.akb ; 2 uses
  %i.akd = icmp ult i64 %i.akc, %i.akb
  %i.ake = call i64 @llvm.umin.i64(i64 %i.akc, i64 2305843009213693951)
  %i.akf = select i1 %i.akd, i64 2305843009213693951, i64 %i.ake ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.akf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.akg = shl nuw nsw i64 %i.akf, 2
  %i.akh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akg) #21
          to label %.noexc478 unwind label %.loopexit1037 ; 4 uses

.noexc478:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.aki = getelementptr inbounds i8, ptr %i.akh, i64 %i.ajx ; 2 uses
  store i32 %i.ajd, ptr %i.aki, align 4, !tbaa !68
  %i.akj = icmp sgt i64 %i.ajx, 0
  br i1 %i.akj, label %bb.dq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.dq:                                            ; preds = %.noexc478
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.akh, ptr align 4 %i.aju, i64 %i.ajx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %.noexc478, %bb.dq
  %i.akk = getelementptr inbounds nuw i8, ptr %i.aki, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aju, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aju, i64 noundef %i.ajx) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.dr, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.akh, ptr %i.cj, align 8, !tbaa !121
  store ptr %i.akk, ptr %i.ck, align 8, !tbaa !125
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.akh, i64 %i.akf
  store ptr %i.akl, ptr %i.cp, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.dn
  %i.akm = load ptr, ptr %i.cm, align 8, !tbaa !155 ; 5 uses
  %i.akn = load ptr, ptr %i.cl, align 8, !tbaa !155 ; 4 uses
  %i.ako = ptrtoint ptr %i.akm to i64
  %i.akp = ptrtoint ptr %i.akn to i64
  %i.akq = sub i64 %i.ako, %i.akp                 ; 6 uses
  %i.akr = load ptr, ptr %i.cq, align 8, !tbaa !124
  %.not.i479 = icmp eq ptr %i.akm, %i.akr
  br i1 %.not.i479, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.akm) ]
  %i.aks = trunc nuw nsw i64 %indvars.iv1306 to i32
  store i32 %i.aks, ptr %i.akm, align 4, !tbaa !68
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akm, i64 4
  store ptr %i.akt, ptr %i.cm, align 8, !tbaa !125
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit
  %i.aku = icmp eq i64 %i.akq, 9223372036854775804
  br i1 %i.aku, label %bb.du, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
          to label %.noexc489 unwind label %.loopexit.split-lp1043

.noexc489:                                        ; preds = %bb.du
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482: ; preds = %bb.dt
  %i.akv = ashr exact i64 %i.akq, 2               ; 3 uses
  %.sroa.speculated.i.i.i483 = call i64 @llvm.umax.i64(i64 %i.akv, i64 1)
  %i.akw = add nsw i64 %.sroa.speculated.i.i.i483, %i.akv ; 2 uses
  %i.akx = icmp ult i64 %i.akw, %i.akv
  %i.aky = call i64 @llvm.umin.i64(i64 %i.akw, i64 2305843009213693951)
  %i.akz = select i1 %i.akx, i64 2305843009213693951, i64 %i.aky ; 3 uses
  %.not.i.i.i484 = icmp ne i64 %i.akz, 0
  call void @llvm.assume(i1 %.not.i.i.i484)
  %i.ala = shl nuw nsw i64 %i.akz, 2
  %i.alb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ala) #21
          to label %.noexc490 unwind label %.loopexit1042 ; 4 uses

.noexc490:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482
  %i.alc = getelementptr inbounds i8, ptr %i.alb, i64 %i.akq ; 2 uses
  %i.ald = trunc nuw nsw i64 %indvars.iv1306 to i32
  store i32 %i.ald, ptr %i.alc, align 4, !tbaa !68
  %i.ale = icmp sgt i64 %i.akq, 0
  br i1 %i.ale, label %bb.dv, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486

bb.dv:                                            ; preds = %.noexc490
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.alb, ptr align 4 %i.akn, i64 %i.akq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486: ; preds = %.noexc490, %bb.dv
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 4
  %.not.i17.i.i487 = icmp eq ptr %i.akn, null
  br i1 %.not.i17.i.i487, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i488, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486
  call void @_ZdlPvm(ptr noundef nonnull %i.akn, i64 noundef %i.akq) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i488

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i488: ; preds = %bb.dw, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i486
  store ptr %i.alb, ptr %i.cl, align 8, !tbaa !121
  store ptr %i.alf, ptr %i.cm, align 8, !tbaa !125
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.akz
  store ptr %i.alg, ptr %i.cq, align 8, !tbaa !124
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491

.loopexit1037:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit1039 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

.loopexit.split-lp1038:                           ; preds = %bb.dp
  %lpad.loopexit.split-lp1040 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

.loopexit1042:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i482
  %lpad.loopexit1044 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

.loopexit.split-lp1043:                           ; preds = %bb.du
  %lpad.loopexit.split-lp1045 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.dx:                                            ; preds = %._crit_edge1351, %bb.dl
  %.pre-phi1357.a = phi i64 [ %.pre1356.a, %._crit_edge1351 ], [ %i.ajp, %bb.dl ]
  %i.alh = icmp slt i32 %.pre1334, 2
  %.sink.idx.i492 = select i1 %i.alh, i64 0, i64 %.pre-phi1357.a
  %.sink.i493 = getelementptr inbounds nuw i8, ptr %.pre1335, i64 %.sink.idx.i492
  %i.ali = getelementptr inbounds [4 x i8], ptr %.sink.i493, i64 %indvars.iv1311
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !68 ; 11 uses
  %.not342 = icmp eq i32 %i.alj, %i.ahh
  br i1 %.not342, label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_.exit491, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
end_hunk_2
