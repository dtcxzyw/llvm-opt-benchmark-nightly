inline.NumInlined: 25
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4ojph5local19avx512_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.cd = icmp ult i32 %i.bs, 32
  br i1 %i.cd, label %.preheader.i, label %.lr.ph.i99

.preheader.i:                                     ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99, %._crit_edge
  %.039.lcssa.i = phi i32 [ %4, %._crit_edge ], [ %.lcssa141.unr, %.lr.ph.i99.prol.loopexit ], [ %i.de, %.lr.ph.i99 ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.bq, %._crit_edge ], [ %.lcssa.unr, %.lr.ph.i99.prol.loopexit ], [ %i.dh, %.lr.ph.i99 ] ; 3 uses
  %.035.lcssa.i = phi ptr [ %i.bp, %._crit_edge ], [ %.lcssa139.unr, %.lr.ph.i99.prol.loopexit ], [ %i.dg, %.lr.ph.i99 ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.bo, %._crit_edge ], [ %.lcssa140.unr, %.lr.ph.i99.prol.loopexit ], [ %i.df, %.lr.ph.i99 ] ; 4 uses
  %i.ce = icmp sgt i32 %.039.lcssa.i, 0
  br i1 %i.ce, label %.lr.ph52.i.preheader, label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit

.lr.ph52.i.preheader:                             ; preds = %.preheader.i
  %i.cf = add nuw i32 %.039.lcssa.i, 31
  %i.cg = and i32 %i.cf, 16
  %lcmp.mod150.not.not = icmp eq i32 %i.cg, 0
  br i1 %lcmp.mod150.not.not, label %.lr.ph52.i.prol, label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol:                                  ; preds = %.lr.ph52.i.preheader
  %i.ch = load <8 x float>, ptr %.035.lcssa.i, align 32, !tbaa !8 ; 2 uses
  %i.ci = load <8 x float>, ptr %.037.lcssa.i, align 32, !tbaa !8 ; 2 uses
  %i.cj = shufflevector <8 x float> %i.ch, <8 x float> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ck = shufflevector <8 x float> %i.ch, <8 x float> %i.ci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.cj, ptr %.0.lcssa.i, align 32, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 32
  store <8 x float> %i.ck, ptr %i.cl, align 32, !tbaa !8
  %i.cm = add nsw i32 %.039.lcssa.i, -16
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.037.lcssa.i, i64 32
  br label %.lr.ph52.i.prol.loopexit

.lr.ph52.i.prol.loopexit:                         ; preds = %.lr.ph52.i.prol, %.lr.ph52.i.preheader
  %.151.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph52.i.preheader ], [ %i.cn, %.lr.ph52.i.prol ]
  %.13650.i.unr = phi ptr [ %.035.lcssa.i, %.lr.ph52.i.preheader ], [ %i.co, %.lr.ph52.i.prol ]
  %.13849.i.unr = phi ptr [ %.037.lcssa.i, %.lr.ph52.i.preheader ], [ %i.cp, %.lr.ph52.i.prol ]
  %.14048.i.unr = phi i32 [ %.039.lcssa.i, %.lr.ph52.i.preheader ], [ %i.cm, %.lr.ph52.i.prol ]
  %i.cq = icmp ult i32 %.039.lcssa.i, 17
  br i1 %i.cq, label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit, label %.lr.ph52.i

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99
  %.044.i = phi ptr [ %i.df, %.lr.ph.i99 ], [ %.044.i.unr, %.lr.ph.i99.prol.loopexit ] ; 5 uses
  %.03543.i = phi ptr [ %i.dg, %.lr.ph.i99 ], [ %.03543.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.03742.i = phi ptr [ %i.dh, %.lr.ph.i99 ], [ %.03742.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.03941.i = phi i32 [ %i.de, %.lr.ph.i99 ], [ %.03941.i.unr, %.lr.ph.i99.prol.loopexit ] ; 2 uses
  %i.cr = load <16 x float>, ptr %.03543.i, align 64, !tbaa !8 ; 2 uses
  %i.cs = load <16 x float>, ptr %.03742.i, align 64, !tbaa !8 ; 2 uses
  %i.ct = shufflevector <16 x float> %i.cr, <16 x float> %i.cs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cu = shufflevector <16 x float> %i.cr, <16 x float> %i.cs, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.ct, ptr %.044.i, align 64, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %.044.i, i64 64
  store <16 x float> %i.cu, ptr %i.cv, align 64, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %.044.i, i64 128
  %i.cx = getelementptr inbounds nuw i8, ptr %.03543.i, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %.03742.i, i64 64
  %i.cz = load <16 x float>, ptr %i.cx, align 64, !tbaa !8 ; 2 uses
  %i.da = load <16 x float>, ptr %i.cy, align 64, !tbaa !8 ; 2 uses
  %i.db = shufflevector <16 x float> %i.cz, <16 x float> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dc = shufflevector <16 x float> %i.cz, <16 x float> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x float> %i.db, ptr %i.cw, align 64, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.044.i, i64 192
  store <16 x float> %i.dc, ptr %i.dd, align 64, !tbaa !8
  %i.de = add nsw i32 %.03941.i, -64              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.044.i, i64 256 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.03543.i, i64 128 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03742.i, i64 128 ; 2 uses
  %i.di = icmp sgt i32 %.03941.i, 80
  br i1 %i.di, label %.lr.ph.i99, label %.preheader.i, !llvm.loop !33

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i
  %.151.i = phi ptr [ %i.dx, %.lr.ph52.i ], [ %.151.i.unr, %.lr.ph52.i.prol.loopexit ] ; 5 uses
  %.13650.i = phi ptr [ %i.dy, %.lr.ph52.i ], [ %.13650.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.13849.i = phi ptr [ %i.dz, %.lr.ph52.i ], [ %.13849.i.unr, %.lr.ph52.i.prol.loopexit ] ; 3 uses
  %.14048.i = phi i32 [ %i.dw, %.lr.ph52.i ], [ %.14048.i.unr, %.lr.ph52.i.prol.loopexit ] ; 2 uses
  %i.dj = load <8 x float>, ptr %.13650.i, align 32, !tbaa !8 ; 2 uses
  %i.dk = load <8 x float>, ptr %.13849.i, align 32, !tbaa !8 ; 2 uses
  %i.dl = shufflevector <8 x float> %i.dj, <8 x float> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dm = shufflevector <8 x float> %i.dj, <8 x float> %i.dk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.dl, ptr %.151.i, align 32, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %.151.i, i64 32
  store <8 x float> %i.dm, ptr %i.dn, align 32, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %.151.i, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %.13650.i, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %.13849.i, i64 32
  %i.dr = load <8 x float>, ptr %i.dp, align 32, !tbaa !8 ; 2 uses
  %i.ds = load <8 x float>, ptr %i.dq, align 32, !tbaa !8 ; 2 uses
  %i.dt = shufflevector <8 x float> %i.dr, <8 x float> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.du = shufflevector <8 x float> %i.dr, <8 x float> %i.ds, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x float> %i.dt, ptr %i.do, align 32, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %.151.i, i64 96
  store <8 x float> %i.du, ptr %i.dv, align 32, !tbaa !8
  %i.dw = add nsw i32 %.14048.i, -32
  %i.dx = getelementptr inbounds nuw i8, ptr %.151.i, i64 128
  %i.dy = getelementptr inbounds nuw i8, ptr %.13650.i, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %.13849.i, i64 64
  %i.ea = icmp sgt i32 %.14048.i, 32
  br i1 %i.ea, label %.lr.ph52.i, label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit, !llvm.loop !34

bb.c:                                             ; preds = %.lr.ph119, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0.in118 = phi i1 [ %5, %.lr.ph119 ], [ %i.fk, %.loopexit ] ; 2 uses
  %.083117 = phi ptr [ %i.c, %.lr.ph119 ], [ %.084116, %.loopexit ] ; 7 uses
  %.084116 = phi ptr [ %i.e, %.lr.ph119 ], [ %.083117, %.loopexit ] ; 3 uses
  %.085115 = phi i32 [ %i.h, %.lr.ph119 ], [ %.086114, %.loopexit ] ; 4 uses
  %.086114 = phi i32 [ %i.k, %.lr.ph119 ], [ %.085115, %.loopexit ] ; 3 uses
  %i.eb = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !8
  %i.ee = load float, ptr %.083117, align 4, !tbaa !27
  %i.ef = getelementptr inbounds i8, ptr %.083117, i64 -4
  store float %i.ee, ptr %i.ef, align 4, !tbaa !27
  %i.eg = add nsw i32 %.086114, -1
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.083117, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !27
  %i.ek = zext nneg i32 %.086114 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.083117, i64 %i.ek
  store float %i.ej, ptr %i.el, align 4, !tbaa !27
  %i.em = insertelement <16 x float> poison, float %i.ed, i64 0
  %i.en = shufflevector <16 x float> %i.em, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %.not122 = icmp eq i32 %.085115, 0              ; 2 uses
  br i1 %.0.in118, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.c
  br i1 %.not122, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not122, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.preheader, %.lr.ph112
  %.088111 = phi ptr [ %i.ew, %.lr.ph112 ], [ %.083117, %.preheader ] ; 3 uses
  %.089110 = phi ptr [ %i.ex, %.lr.ph112 ], [ %.084116, %.preheader ] ; 3 uses
  %.091109 = phi i32 [ %i.ev, %.lr.ph112 ], [ %.085115, %.preheader ] ; 2 uses
  %i.eo = load <16 x float>, ptr %.088111, align 64, !tbaa !8
  %i.ep = getelementptr inbounds i8, ptr %.088111, i64 -4
  %i.eq = load <16 x float>, ptr %i.ep, align 4, !tbaa !8
  %i.er = load <16 x float>, ptr %.089110, align 64, !tbaa !8
  %i.es = fadd <16 x float> %i.eo, %i.eq
  %i.et = fmul <16 x float> %i.en, %i.es
  %i.eu = fsub <16 x float> %i.er, %i.et
  store <16 x float> %i.eu, ptr %.089110, align 64, !tbaa !8
  %i.ev = add nsw i32 %.091109, -16
  %i.ew = getelementptr inbounds nuw i8, ptr %.088111, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.089110, i64 64
  %i.ey = icmp sgt i32 %.091109, 16
  br i1 %i.ey, label %.lr.ph112, label %.loopexit, !llvm.loop !35

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.1108 = phi ptr [ %i.fh, %.lr.ph ], [ %.083117, %.preheader101 ] ; 3 uses
  %.190107 = phi ptr [ %i.fi, %.lr.ph ], [ %.084116, %.preheader101 ] ; 3 uses
  %.192106 = phi i32 [ %i.fg, %.lr.ph ], [ %.085115, %.preheader101 ] ; 2 uses
  %i.ez = load <16 x float>, ptr %.1108, align 64, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %.1108, i64 4
  %i.fb = load <16 x float>, ptr %i.fa, align 4, !tbaa !8
  %i.fc = load <16 x float>, ptr %.190107, align 64, !tbaa !8
  %i.fd = fadd <16 x float> %i.ez, %i.fb
  %i.fe = fmul <16 x float> %i.en, %i.fd
  %i.ff = fsub <16 x float> %i.fc, %i.fe
  store <16 x float> %i.ff, ptr %.190107, align 64, !tbaa !8
  %i.fg = add nsw i32 %.192106, -16
  %i.fh = getelementptr inbounds nuw i8, ptr %.1108, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %.190107, i64 64
  %i.fj = icmp sgt i32 %.192106, 16
  br i1 %i.fj, label %.lr.ph, label %.loopexit, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph112, %.preheader101, %.preheader
  %i.fk = xor i1 %.0.in118, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !37

bb.d:                                             ; preds = %bb.a
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !27
  br label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !27
  %i.fr = fmul float %i.fq, 5.000000e-01
  br label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split

_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split: ; preds = %bb.f, %bb.e
  %.sink = phi float [ %i.fn, %bb.e ], [ %i.fr, %bb.f ]
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !8
  store float %.sink, ptr %i.ft, align 4, !tbaa !27
  br label %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit

_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit: ; preds = %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %_ZN4ojph5localL19avx512_interleave32EPfS1_S1_i.exit.sink.split, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local22avx512_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %6 = load <2 x i16>, ptr %i.a, align 2, !tbaa !8 ; 3 uses
  %7 = sext <2 x i16> %6 to <2 x i32>             ; 2 uses
  %i.b = load i8, ptr %0, align 4, !tbaa !8       ; 4 uses
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 6 uses
  %i.c = shufflevector <2 x i32> %7, <2 x i32> poison, <16 x i32> zeroinitializer ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 32 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 24 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 24 uses
  %9 = extractelement <2 x i16> %6, i64 1         ; 2 uses
  %i.j = icmp eq i16 %9, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %5, label %.preheader, label %.preheader199

.preheader199:                                    ; preds = %bb.b
  br i1 %i.k, label %.lr.ph246, label %.loopexit

.lr.ph246:                                        ; preds = %.preheader199
  %i.l = zext i8 %i.b to i32                      ; 3 uses
  %i.m = add nsw i32 %4, -1                       ; 2 uses
  %i.n = and i32 %i.m, 16
  %lcmp.mod292.not.not = icmp eq i32 %i.n, 0
  br i1 %lcmp.mod292.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph246
  %i.o = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.p = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.q = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.r = add <16 x i32> %i.o, %i.c
  %i.s = add <16 x i32> %i.r, %i.p
  %i.t = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.s, i32 range(i32 0, 256) %i.l)
  %i.u = add <16 x i32> %i.t, %i.q
  store <16 x i32> %i.u, ptr %i.e, align 64, !tbaa !8
  %i.v = add nsw i32 %4, -16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph246
  %.1245.unr = phi ptr [ %i.e, %.lr.ph246 ], [ %i.w, %.prol.loopexit.unr-lcssa ]
  %.1169244.unr = phi ptr [ %i.g, %.lr.ph246 ], [ %i.x, %.prol.loopexit.unr-lcssa ]
  %.1177243.unr = phi ptr [ %i.i, %.lr.ph246 ], [ %i.y, %.prol.loopexit.unr-lcssa ]
  %.1185242.unr = phi i32 [ %4, %.lr.ph246 ], [ %i.v, %.prol.loopexit.unr-lcssa ]
  %i.z = icmp ult i32 %i.m, 16
  br i1 %i.z, label %.loopexit, label %.lr.ph246.new

.preheader:                                       ; preds = %bb.b
  br i1 %i.k, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %.preheader
  %i.aa = zext i8 %i.b to i32                     ; 3 uses
  %i.ab = add nsw i32 %4, -1                      ; 2 uses
  %i.ac = and i32 %i.ab, 16
  %lcmp.mod296.not.not = icmp eq i32 %i.ac, 0
  br i1 %lcmp.mod296.not.not, label %.prol.loopexit294.unr-lcssa, label %.prol.loopexit294

.prol.loopexit294.unr-lcssa:                      ; preds = %.lr.ph251
  %i.ad = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.ae = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.af = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.ag = add <16 x i32> %i.ad, %i.c
  %i.ah = add <16 x i32> %i.ag, %i.ae
  %i.ai = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.ah, i32 range(i32 0, 256) %i.aa)
  %i.aj = sub <16 x i32> %i.af, %i.ai
  store <16 x i32> %i.aj, ptr %i.e, align 64, !tbaa !8
  %i.ak = add nsw i32 %4, -16
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.prol.loopexit294

.prol.loopexit294:                                ; preds = %.prol.loopexit294.unr-lcssa, %.lr.ph251
  %.0250.unr = phi ptr [ %i.e, %.lr.ph251 ], [ %i.al, %.prol.loopexit294.unr-lcssa ]
  %.0168249.unr = phi ptr [ %i.g, %.lr.ph251 ], [ %i.am, %.prol.loopexit294.unr-lcssa ]
  %.0176248.unr = phi ptr [ %i.i, %.lr.ph251 ], [ %i.an, %.prol.loopexit294.unr-lcssa ]
  %.0184247.unr = phi i32 [ %4, %.lr.ph251 ], [ %i.ak, %.prol.loopexit294.unr-lcssa ]
  %i.ao = icmp ult i32 %i.ab, 16
  br i1 %i.ao, label %.loopexit, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.prol.loopexit294, %.lr.ph251.new
  %.0250 = phi ptr [ %i.bh, %.lr.ph251.new ], [ %.0250.unr, %.prol.loopexit294 ] ; 4 uses
  %.0168249 = phi ptr [ %i.bi, %.lr.ph251.new ], [ %.0168249.unr, %.prol.loopexit294 ] ; 3 uses
  %.0176248 = phi ptr [ %i.bj, %.lr.ph251.new ], [ %.0176248.unr, %.prol.loopexit294 ] ; 3 uses
  %.0184247 = phi i32 [ %i.bg, %.lr.ph251.new ], [ %.0184247.unr, %.prol.loopexit294 ] ; 2 uses
  %i.ap = load <16 x i32>, ptr %.0168249, align 64, !tbaa !8
  %i.aq = load <16 x i32>, ptr %.0176248, align 64, !tbaa !8
  %i.ar = load <16 x i32>, ptr %.0250, align 64, !tbaa !8
  %i.as = add <16 x i32> %i.ap, %i.c
  %i.at = add <16 x i32> %i.as, %i.aq
  %i.au = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.at, i32 range(i32 0, 256) %i.aa)
  %i.av = sub <16 x i32> %i.ar, %i.au
  store <16 x i32> %i.av, ptr %.0250, align 64, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0250, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0168249, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.0176248, i64 64
  %i.az = load <16 x i32>, ptr %i.ax, align 64, !tbaa !8
  %i.ba = load <16 x i32>, ptr %i.ay, align 64, !tbaa !8
  %i.bb = load <16 x i32>, ptr %i.aw, align 64, !tbaa !8
  %i.bc = add <16 x i32> %i.az, %i.c
  %i.bd = add <16 x i32> %i.bc, %i.ba
  %i.be = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.bd, i32 range(i32 0, 256) %i.aa)
  %i.bf = sub <16 x i32> %i.bb, %i.be
  store <16 x i32> %i.bf, ptr %i.aw, align 64, !tbaa !8
  %i.bg = add nsw i32 %.0184247, -32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0250, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %.0168249, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %.0176248, i64 128
  %i.bk = icmp sgt i32 %.0184247, 32
  br i1 %i.bk, label %.lr.ph251.new, label %.loopexit, !llvm.loop !38

.lr.ph246.new:                                    ; preds = %.prol.loopexit, %.lr.ph246.new
  %.1245 = phi ptr [ %i.cd, %.lr.ph246.new ], [ %.1245.unr, %.prol.loopexit ] ; 4 uses
  %.1169244 = phi ptr [ %i.ce, %.lr.ph246.new ], [ %.1169244.unr, %.prol.loopexit ] ; 3 uses
  %.1177243 = phi ptr [ %i.cf, %.lr.ph246.new ], [ %.1177243.unr, %.prol.loopexit ] ; 3 uses
  %.1185242 = phi i32 [ %i.cc, %.lr.ph246.new ], [ %.1185242.unr, %.prol.loopexit ] ; 2 uses
  %i.bl = load <16 x i32>, ptr %.1169244, align 64, !tbaa !8
  %i.bm = load <16 x i32>, ptr %.1177243, align 64, !tbaa !8
  %i.bn = load <16 x i32>, ptr %.1245, align 64, !tbaa !8
  %i.bo = add <16 x i32> %i.bl, %i.c
  %i.bp = add <16 x i32> %i.bo, %i.bm
  %i.bq = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.bp, i32 range(i32 0, 256) %i.l)
  %i.br = add <16 x i32> %i.bq, %i.bn
  store <16 x i32> %i.br, ptr %.1245, align 64, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %.1245, i64 64 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1169244, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %.1177243, i64 64
  %i.bv = load <16 x i32>, ptr %i.bt, align 64, !tbaa !8
  %i.bw = load <16 x i32>, ptr %i.bu, align 64, !tbaa !8
  %i.bx = load <16 x i32>, ptr %i.bs, align 64, !tbaa !8
  %i.by = add <16 x i32> %i.bv, %i.c
  %i.bz = add <16 x i32> %i.by, %i.bw
  %i.ca = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.bz, i32 range(i32 0, 256) %i.l)
  %i.cb = add <16 x i32> %i.ca, %i.bx
  store <16 x i32> %i.cb, ptr %i.bs, align 64, !tbaa !8
  %i.cc = add nsw i32 %.1185242, -32
  %i.cd = getelementptr inbounds nuw i8, ptr %.1245, i64 128
  %i.ce = getelementptr inbounds nuw i8, ptr %.1169244, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %.1177243, i64 128
  %i.cg = icmp sgt i32 %.1185242, 32
  br i1 %i.cg, label %.lr.ph246.new, label %.loopexit, !llvm.loop !39

bb.c:                                             ; preds = %bb.a
  %i.ch = icmp eq i16 %9, -1                      ; 2 uses
  %10 = extractelement <2 x i16> %6, i64 0
  %i.ci = icmp eq i16 %10, 1
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = zext i8 %i.b to i32                     ; 12 uses
  %i.ck = icmp eq i8 %i.b, 1
  %or.cond4 = select i1 %or.cond, i1 %i.ck, i1 false
  %i.cl = icmp sgt i32 %4, 0                      ; 6 uses
  br i1 %or.cond4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %5, label %.preheader201, label %.preheader203

.preheader203:                                    ; preds = %bb.d
  br i1 %i.cl, label %.lr.ph236.preheader, label %.loopexit

.lr.ph236.preheader:                              ; preds = %.preheader203
  %i.cm = add nsw i32 %4, -1                      ; 2 uses
  %i.cn = and i32 %i.cm, 16
  %lcmp.mod288.not.not = icmp eq i32 %i.cn, 0
  br i1 %lcmp.mod288.not.not, label %.lr.ph236.prol, label %.lr.ph236.prol.loopexit

.lr.ph236.prol:                                   ; preds = %.lr.ph236.preheader
  %i.co = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.cp = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.cq = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.cr = add <16 x i32> %i.cp, %i.co
  %i.cs = ashr <16 x i32> %i.cr, splat (i32 1)
  %i.ct = sub <16 x i32> %i.cq, %i.cs
  store <16 x i32> %i.ct, ptr %i.e, align 64, !tbaa !8
  %i.cu = add nsw i32 %4, -16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.lr.ph236.prol.loopexit

.lr.ph236.prol.loopexit:                          ; preds = %.lr.ph236.prol, %.lr.ph236.preheader
  %.3235.unr = phi ptr [ %i.e, %.lr.ph236.preheader ], [ %i.cv, %.lr.ph236.prol ]
  %.3171234.unr = phi ptr [ %i.g, %.lr.ph236.preheader ], [ %i.cw, %.lr.ph236.prol ]
  %.3179233.unr = phi ptr [ %i.i, %.lr.ph236.preheader ], [ %i.cx, %.lr.ph236.prol ]
  %.1187232.unr = phi i32 [ %4, %.lr.ph236.preheader ], [ %i.cu, %.lr.ph236.prol ]
  %i.cy = icmp ult i32 %i.cm, 16
  br i1 %i.cy, label %.loopexit, label %.lr.ph236

.preheader201:                                    ; preds = %bb.d
  br i1 %i.cl, label %.lr.ph241.preheader, label %.loopexit

.lr.ph241.preheader:                              ; preds = %.preheader201
  %i.cz = add nsw i32 %4, -1                      ; 2 uses
  %i.da = and i32 %i.cz, 16
  %lcmp.mod290.not.not = icmp eq i32 %i.da, 0
  br i1 %lcmp.mod290.not.not, label %.lr.ph241.prol, label %.lr.ph241.prol.loopexit

.lr.ph241.prol:                                   ; preds = %.lr.ph241.preheader
  %i.db = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.dc = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.dd = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.de = add <16 x i32> %i.dc, %i.db
  %i.df = ashr <16 x i32> %i.de, splat (i32 1)
  %i.dg = add <16 x i32> %i.df, %i.dd
  store <16 x i32> %i.dg, ptr %i.e, align 64, !tbaa !8
  %i.dh = add nsw i32 %4, -16
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.lr.ph241.prol.loopexit

.lr.ph241.prol.loopexit:                          ; preds = %.lr.ph241.prol, %.lr.ph241.preheader
  %.2240.unr = phi ptr [ %i.e, %.lr.ph241.preheader ], [ %i.di, %.lr.ph241.prol ]
  %.2170239.unr = phi ptr [ %i.g, %.lr.ph241.preheader ], [ %i.dj, %.lr.ph241.prol ]
  %.2178238.unr = phi ptr [ %i.i, %.lr.ph241.preheader ], [ %i.dk, %.lr.ph241.prol ]
  %.0186237.unr = phi i32 [ %4, %.lr.ph241.preheader ], [ %i.dh, %.lr.ph241.prol ]
  %i.dl = icmp ult i32 %i.cz, 16
  br i1 %i.dl, label %.loopexit, label %.lr.ph241

.lr.ph241:                                        ; preds = %.lr.ph241.prol.loopexit, %.lr.ph241
  %.2240 = phi ptr [ %i.ec, %.lr.ph241 ], [ %.2240.unr, %.lr.ph241.prol.loopexit ] ; 4 uses
  %.2170239 = phi ptr [ %i.ed, %.lr.ph241 ], [ %.2170239.unr, %.lr.ph241.prol.loopexit ] ; 3 uses
  %.2178238 = phi ptr [ %i.ee, %.lr.ph241 ], [ %.2178238.unr, %.lr.ph241.prol.loopexit ] ; 3 uses
  %.0186237 = phi i32 [ %i.eb, %.lr.ph241 ], [ %.0186237.unr, %.lr.ph241.prol.loopexit ] ; 2 uses
  %i.dm = load <16 x i32>, ptr %.2170239, align 64, !tbaa !8
  %i.dn = load <16 x i32>, ptr %.2178238, align 64, !tbaa !8
  %i.do = load <16 x i32>, ptr %.2240, align 64, !tbaa !8
  %i.dp = add <16 x i32> %i.dn, %i.dm
  %i.dq = ashr <16 x i32> %i.dp, splat (i32 1)
  %i.dr = add <16 x i32> %i.dq, %i.do
  store <16 x i32> %i.dr, ptr %.2240, align 64, !tbaa !8
  %i.ds = getelementptr inbounds nuw i8, ptr %.2240, i64 64 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.2170239, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %.2178238, i64 64
  %i.dv = load <16 x i32>, ptr %i.dt, align 64, !tbaa !8
  %i.dw = load <16 x i32>, ptr %i.du, align 64, !tbaa !8
  %i.dx = load <16 x i32>, ptr %i.ds, align 64, !tbaa !8
  %i.dy = add <16 x i32> %i.dw, %i.dv
  %i.dz = ashr <16 x i32> %i.dy, splat (i32 1)
  %i.ea = add <16 x i32> %i.dz, %i.dx
  store <16 x i32> %i.ea, ptr %i.ds, align 64, !tbaa !8
  %i.eb = add nsw i32 %.0186237, -32
  %i.ec = getelementptr inbounds nuw i8, ptr %.2240, i64 128
  %i.ed = getelementptr inbounds nuw i8, ptr %.2170239, i64 128
  %i.ee = getelementptr inbounds nuw i8, ptr %.2178238, i64 128
  %i.ef = icmp sgt i32 %.0186237, 32
  br i1 %i.ef, label %.lr.ph241, label %.loopexit, !llvm.loop !40

.lr.ph236:                                        ; preds = %.lr.ph236.prol.loopexit, %.lr.ph236
  %.3235 = phi ptr [ %i.ew, %.lr.ph236 ], [ %.3235.unr, %.lr.ph236.prol.loopexit ] ; 4 uses
  %.3171234 = phi ptr [ %i.ex, %.lr.ph236 ], [ %.3171234.unr, %.lr.ph236.prol.loopexit ] ; 3 uses
  %.3179233 = phi ptr [ %i.ey, %.lr.ph236 ], [ %.3179233.unr, %.lr.ph236.prol.loopexit ] ; 3 uses
  %.1187232 = phi i32 [ %i.ev, %.lr.ph236 ], [ %.1187232.unr, %.lr.ph236.prol.loopexit ] ; 2 uses
  %i.eg = load <16 x i32>, ptr %.3171234, align 64, !tbaa !8
  %i.eh = load <16 x i32>, ptr %.3179233, align 64, !tbaa !8
  %i.ei = load <16 x i32>, ptr %.3235, align 64, !tbaa !8
  %i.ej = add <16 x i32> %i.eh, %i.eg
  %i.ek = ashr <16 x i32> %i.ej, splat (i32 1)
  %i.el = sub <16 x i32> %i.ei, %i.ek
  store <16 x i32> %i.el, ptr %.3235, align 64, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %.3235, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.3171234, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %.3179233, i64 64
  %i.ep = load <16 x i32>, ptr %i.en, align 64, !tbaa !8
  %i.eq = load <16 x i32>, ptr %i.eo, align 64, !tbaa !8
  %i.er = load <16 x i32>, ptr %i.em, align 64, !tbaa !8
  %i.es = add <16 x i32> %i.eq, %i.ep
  %i.et = ashr <16 x i32> %i.es, splat (i32 1)
  %i.eu = sub <16 x i32> %i.er, %i.et
  store <16 x i32> %i.eu, ptr %i.em, align 64, !tbaa !8
  %i.ev = add nsw i32 %.1187232, -32
  %i.ew = getelementptr inbounds nuw i8, ptr %.3235, i64 128
  %i.ex = getelementptr inbounds nuw i8, ptr %.3171234, i64 128
  %i.ey = getelementptr inbounds nuw i8, ptr %.3179233, i64 128
  %i.ez = icmp sgt i32 %.1187232, 32
  br i1 %i.ez, label %.lr.ph236, label %.loopexit, !llvm.loop !41

bb.e:                                             ; preds = %bb.c
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %5, label %.preheader205, label %.preheader207

.preheader207:                                    ; preds = %bb.f
  br i1 %i.cl, label %.lr.ph226.preheader, label %.loopexit

.lr.ph226.preheader:                              ; preds = %.preheader207
  %i.fa = add nsw i32 %4, -1                      ; 2 uses
  %i.fb = and i32 %i.fa, 16
  %lcmp.mod284.not.not = icmp eq i32 %i.fb, 0
  br i1 %lcmp.mod284.not.not, label %.lr.ph226.prol, label %.lr.ph226.prol.loopexit

.lr.ph226.prol:                                   ; preds = %.lr.ph226.preheader
  %i.fc = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.fd = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.fe = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.ff = add <16 x i32> %i.fc, %i.fd
  %i.fg = sub <16 x i32> %i.c, %i.ff
  %i.fh = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.fg, i32 range(i32 0, 256) %i.cj)
  %i.fi = add <16 x i32> %i.fh, %i.fe
  store <16 x i32> %i.fi, ptr %i.e, align 64, !tbaa !8
  %i.fj = add nsw i32 %4, -16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.lr.ph226.prol.loopexit

.lr.ph226.prol.loopexit:                          ; preds = %.lr.ph226.prol, %.lr.ph226.preheader
  %.5225.unr = phi ptr [ %i.e, %.lr.ph226.preheader ], [ %i.fk, %.lr.ph226.prol ]
  %.5173224.unr = phi ptr [ %i.g, %.lr.ph226.preheader ], [ %i.fl, %.lr.ph226.prol ]
  %.5181223.unr = phi ptr [ %i.i, %.lr.ph226.preheader ], [ %i.fm, %.lr.ph226.prol ]
  %.1189222.unr = phi i32 [ %4, %.lr.ph226.preheader ], [ %i.fj, %.lr.ph226.prol ]
  %i.fn = icmp ult i32 %i.fa, 16
  br i1 %i.fn, label %.loopexit, label %.lr.ph226

.preheader205:                                    ; preds = %bb.f
  br i1 %i.cl, label %.lr.ph231.preheader, label %.loopexit

.lr.ph231.preheader:                              ; preds = %.preheader205
  %i.fo = add nsw i32 %4, -1                      ; 2 uses
  %i.fp = and i32 %i.fo, 16
  %lcmp.mod286.not.not = icmp eq i32 %i.fp, 0
  br i1 %lcmp.mod286.not.not, label %.lr.ph231.prol, label %.lr.ph231.prol.loopexit

.lr.ph231.prol:                                   ; preds = %.lr.ph231.preheader
  %i.fq = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.fr = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.fs = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.ft = add <16 x i32> %i.fq, %i.fr
  %i.fu = sub <16 x i32> %i.c, %i.ft
  %i.fv = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.fu, i32 range(i32 0, 256) %i.cj)
  %i.fw = sub <16 x i32> %i.fs, %i.fv
  store <16 x i32> %i.fw, ptr %i.e, align 64, !tbaa !8
  %i.fx = add nsw i32 %4, -16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.lr.ph231.prol.loopexit

.lr.ph231.prol.loopexit:                          ; preds = %.lr.ph231.prol, %.lr.ph231.preheader
  %.4230.unr = phi ptr [ %i.e, %.lr.ph231.preheader ], [ %i.fy, %.lr.ph231.prol ]
  %.4172229.unr = phi ptr [ %i.g, %.lr.ph231.preheader ], [ %i.fz, %.lr.ph231.prol ]
  %.4180228.unr = phi ptr [ %i.i, %.lr.ph231.preheader ], [ %i.ga, %.lr.ph231.prol ]
  %.0188227.unr = phi i32 [ %4, %.lr.ph231.preheader ], [ %i.fx, %.lr.ph231.prol ]
  %i.gb = icmp ult i32 %i.fo, 16
  br i1 %i.gb, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %.lr.ph231.prol.loopexit, %.lr.ph231
  %.4230 = phi ptr [ %i.gu, %.lr.ph231 ], [ %.4230.unr, %.lr.ph231.prol.loopexit ] ; 4 uses
  %.4172229 = phi ptr [ %i.gv, %.lr.ph231 ], [ %.4172229.unr, %.lr.ph231.prol.loopexit ] ; 3 uses
  %.4180228 = phi ptr [ %i.gw, %.lr.ph231 ], [ %.4180228.unr, %.lr.ph231.prol.loopexit ] ; 3 uses
  %.0188227 = phi i32 [ %i.gt, %.lr.ph231 ], [ %.0188227.unr, %.lr.ph231.prol.loopexit ] ; 2 uses
  %i.gc = load <16 x i32>, ptr %.4172229, align 64, !tbaa !8
  %i.gd = load <16 x i32>, ptr %.4180228, align 64, !tbaa !8
  %i.ge = load <16 x i32>, ptr %.4230, align 64, !tbaa !8
  %i.gf = add <16 x i32> %i.gc, %i.gd
  %i.gg = sub <16 x i32> %i.c, %i.gf
  %i.gh = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.gg, i32 range(i32 0, 256) %i.cj)
  %i.gi = sub <16 x i32> %i.ge, %i.gh
  store <16 x i32> %i.gi, ptr %.4230, align 64, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %.4230, i64 64 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.4172229, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %.4180228, i64 64
  %i.gm = load <16 x i32>, ptr %i.gk, align 64, !tbaa !8
  %i.gn = load <16 x i32>, ptr %i.gl, align 64, !tbaa !8
  %i.go = load <16 x i32>, ptr %i.gj, align 64, !tbaa !8
  %i.gp = add <16 x i32> %i.gm, %i.gn
  %i.gq = sub <16 x i32> %i.c, %i.gp
  %i.gr = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.gq, i32 range(i32 0, 256) %i.cj)
  %i.gs = sub <16 x i32> %i.go, %i.gr
  store <16 x i32> %i.gs, ptr %i.gj, align 64, !tbaa !8
  %i.gt = add nsw i32 %.0188227, -32
  %i.gu = getelementptr inbounds nuw i8, ptr %.4230, i64 128
  %i.gv = getelementptr inbounds nuw i8, ptr %.4172229, i64 128
  %i.gw = getelementptr inbounds nuw i8, ptr %.4180228, i64 128
  %i.gx = icmp sgt i32 %.0188227, 32
  br i1 %i.gx, label %.lr.ph231, label %.loopexit, !llvm.loop !42

.lr.ph226:                                        ; preds = %.lr.ph226.prol.loopexit, %.lr.ph226
  %.5225 = phi ptr [ %i.hq, %.lr.ph226 ], [ %.5225.unr, %.lr.ph226.prol.loopexit ] ; 4 uses
  %.5173224 = phi ptr [ %i.hr, %.lr.ph226 ], [ %.5173224.unr, %.lr.ph226.prol.loopexit ] ; 3 uses
  %.5181223 = phi ptr [ %i.hs, %.lr.ph226 ], [ %.5181223.unr, %.lr.ph226.prol.loopexit ] ; 3 uses
  %.1189222 = phi i32 [ %i.hp, %.lr.ph226 ], [ %.1189222.unr, %.lr.ph226.prol.loopexit ] ; 2 uses
  %i.gy = load <16 x i32>, ptr %.5173224, align 64, !tbaa !8
  %i.gz = load <16 x i32>, ptr %.5181223, align 64, !tbaa !8
  %i.ha = load <16 x i32>, ptr %.5225, align 64, !tbaa !8
  %i.hb = add <16 x i32> %i.gy, %i.gz
  %i.hc = sub <16 x i32> %i.c, %i.hb
  %i.hd = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.hc, i32 range(i32 0, 256) %i.cj)
  %i.he = add <16 x i32> %i.hd, %i.ha
  store <16 x i32> %i.he, ptr %.5225, align 64, !tbaa !8
  %i.hf = getelementptr inbounds nuw i8, ptr %.5225, i64 64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.5173224, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %.5181223, i64 64
  %i.hi = load <16 x i32>, ptr %i.hg, align 64, !tbaa !8
  %i.hj = load <16 x i32>, ptr %i.hh, align 64, !tbaa !8
  %i.hk = load <16 x i32>, ptr %i.hf, align 64, !tbaa !8
  %i.hl = add <16 x i32> %i.hi, %i.hj
  %i.hm = sub <16 x i32> %i.c, %i.hl
  %i.hn = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.hm, i32 range(i32 0, 256) %i.cj)
  %i.ho = add <16 x i32> %i.hn, %i.hk
  store <16 x i32> %i.ho, ptr %i.hf, align 64, !tbaa !8
  %i.hp = add nsw i32 %.1189222, -32
  %i.hq = getelementptr inbounds nuw i8, ptr %.5225, i64 128
  %i.hr = getelementptr inbounds nuw i8, ptr %.5173224, i64 128
  %i.hs = getelementptr inbounds nuw i8, ptr %.5181223, i64 128
  %i.ht = icmp sgt i32 %.1189222, 32
  br i1 %i.ht, label %.lr.ph226, label %.loopexit, !llvm.loop !43

bb.g:                                             ; preds = %bb.e
  br i1 %5, label %.preheader209, label %.preheader211

.preheader211:                                    ; preds = %bb.g
  br i1 %i.cl, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader211
  %i.hu = add nsw i32 %4, -1                      ; 2 uses
  %i.hv = and i32 %i.hu, 16
  %lcmp.mod.not.not = icmp eq i32 %i.hv, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.hw = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.hx = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.hy = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.hz = add <16 x i32> %i.hx, %i.hw
  %i.ia = mul <16 x i32> %i.hz, %8
  %i.ib = add <16 x i32> %i.ia, %i.c
  %i.ic = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.ib, i32 range(i32 0, 256) %i.cj)
  %i.id = add <16 x i32> %i.ic, %i.hy
  store <16 x i32> %i.id, ptr %i.e, align 64, !tbaa !8
  %i.ie = add nsw i32 %4, -16
  %i.if = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.7216.unr = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.if, %.lr.ph.prol ]
  %.7175215.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.ig, %.lr.ph.prol ]
  %.7183214.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.ih, %.lr.ph.prol ]
  %.1191213.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.ie, %.lr.ph.prol ]
  %i.ii = icmp ult i32 %i.hu, 16
  br i1 %i.ii, label %.loopexit, label %.lr.ph

.preheader209:                                    ; preds = %bb.g
  br i1 %i.cl, label %.lr.ph221.preheader, label %.loopexit

.lr.ph221.preheader:                              ; preds = %.preheader209
  %i.ij = add nsw i32 %4, -1                      ; 2 uses
  %i.ik = and i32 %i.ij, 16
  %lcmp.mod282.not.not = icmp eq i32 %i.ik, 0
  br i1 %lcmp.mod282.not.not, label %.lr.ph221.prol, label %.lr.ph221.prol.loopexit

.lr.ph221.prol:                                   ; preds = %.lr.ph221.preheader
  %i.il = load <16 x i32>, ptr %i.g, align 64, !tbaa !8
  %i.im = load <16 x i32>, ptr %i.i, align 64, !tbaa !8
  %i.in = load <16 x i32>, ptr %i.e, align 64, !tbaa !8
  %i.io = add <16 x i32> %i.im, %i.il
  %i.ip = mul <16 x i32> %i.io, %8
  %i.iq = add <16 x i32> %i.ip, %i.c
  %i.ir = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.iq, i32 range(i32 0, 256) %i.cj)
  %i.is = sub <16 x i32> %i.in, %i.ir
  store <16 x i32> %i.is, ptr %i.e, align 64, !tbaa !8
  %i.it = add nsw i32 %4, -16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  br label %.lr.ph221.prol.loopexit

.lr.ph221.prol.loopexit:                          ; preds = %.lr.ph221.prol, %.lr.ph221.preheader
  %.6220.unr = phi ptr [ %i.e, %.lr.ph221.preheader ], [ %i.iu, %.lr.ph221.prol ]
  %.6174219.unr = phi ptr [ %i.g, %.lr.ph221.preheader ], [ %i.iv, %.lr.ph221.prol ]
  %.6182218.unr = phi ptr [ %i.i, %.lr.ph221.preheader ], [ %i.iw, %.lr.ph221.prol ]
  %.0190217.unr = phi i32 [ %4, %.lr.ph221.preheader ], [ %i.it, %.lr.ph221.prol ]
  %i.ix = icmp ult i32 %i.ij, 16
  br i1 %i.ix, label %.loopexit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221.prol.loopexit, %.lr.ph221
  %.6220 = phi ptr [ %i.js, %.lr.ph221 ], [ %.6220.unr, %.lr.ph221.prol.loopexit ] ; 4 uses
  %.6174219 = phi ptr [ %i.jt, %.lr.ph221 ], [ %.6174219.unr, %.lr.ph221.prol.loopexit ] ; 3 uses
  %.6182218 = phi ptr [ %i.ju, %.lr.ph221 ], [ %.6182218.unr, %.lr.ph221.prol.loopexit ] ; 3 uses
  %.0190217 = phi i32 [ %i.jr, %.lr.ph221 ], [ %.0190217.unr, %.lr.ph221.prol.loopexit ] ; 2 uses
  %i.iy = load <16 x i32>, ptr %.6174219, align 64, !tbaa !8
  %i.iz = load <16 x i32>, ptr %.6182218, align 64, !tbaa !8
  %i.ja = load <16 x i32>, ptr %.6220, align 64, !tbaa !8
  %i.jb = add <16 x i32> %i.iz, %i.iy
  %i.jc = mul <16 x i32> %i.jb, %8
  %i.jd = add <16 x i32> %i.jc, %i.c
  %i.je = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.jd, i32 range(i32 0, 256) %i.cj)
  %i.jf = sub <16 x i32> %i.ja, %i.je
  store <16 x i32> %i.jf, ptr %.6220, align 64, !tbaa !8
  %i.jg = getelementptr inbounds nuw i8, ptr %.6220, i64 64 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.6174219, i64 64
  %i.ji = getelementptr inbounds nuw i8, ptr %.6182218, i64 64
  %i.jj = load <16 x i32>, ptr %i.jh, align 64, !tbaa !8
  %i.jk = load <16 x i32>, ptr %i.ji, align 64, !tbaa !8
  %i.jl = load <16 x i32>, ptr %i.jg, align 64, !tbaa !8
  %i.jm = add <16 x i32> %i.jk, %i.jj
  %i.jn = mul <16 x i32> %i.jm, %8
  %i.jo = add <16 x i32> %i.jn, %i.c
  %i.jp = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.jo, i32 range(i32 0, 256) %i.cj)
  %i.jq = sub <16 x i32> %i.jl, %i.jp
  store <16 x i32> %i.jq, ptr %i.jg, align 64, !tbaa !8
  %i.jr = add nsw i32 %.0190217, -32
  %i.js = getelementptr inbounds nuw i8, ptr %.6220, i64 128
  %i.jt = getelementptr inbounds nuw i8, ptr %.6174219, i64 128
  %i.ju = getelementptr inbounds nuw i8, ptr %.6182218, i64 128
  %i.jv = icmp sgt i32 %.0190217, 32
  br i1 %i.jv, label %.lr.ph221, label %.loopexit, !llvm.loop !44

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7216 = phi ptr [ %i.kq, %.lr.ph ], [ %.7216.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.7175215 = phi ptr [ %i.kr, %.lr.ph ], [ %.7175215.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.7183214 = phi ptr [ %i.ks, %.lr.ph ], [ %.7183214.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.1191213 = phi i32 [ %i.kp, %.lr.ph ], [ %.1191213.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.jw = load <16 x i32>, ptr %.7175215, align 64, !tbaa !8
  %i.jx = load <16 x i32>, ptr %.7183214, align 64, !tbaa !8
  %i.jy = load <16 x i32>, ptr %.7216, align 64, !tbaa !8
  %i.jz = add <16 x i32> %i.jx, %i.jw
  %i.ka = mul <16 x i32> %i.jz, %8
  %i.kb = add <16 x i32> %i.ka, %i.c
  %i.kc = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.kb, i32 range(i32 0, 256) %i.cj)
  %i.kd = add <16 x i32> %i.kc, %i.jy
  store <16 x i32> %i.kd, ptr %.7216, align 64, !tbaa !8
  %i.ke = getelementptr inbounds nuw i8, ptr %.7216, i64 64 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.7175215, i64 64
  %i.kg = getelementptr inbounds nuw i8, ptr %.7183214, i64 64
  %i.kh = load <16 x i32>, ptr %i.kf, align 64, !tbaa !8
  %i.ki = load <16 x i32>, ptr %i.kg, align 64, !tbaa !8
  %i.kj = load <16 x i32>, ptr %i.ke, align 64, !tbaa !8
  %i.kk = add <16 x i32> %i.ki, %i.kh
  %i.kl = mul <16 x i32> %i.kk, %8
  %i.km = add <16 x i32> %i.kl, %i.c
  %i.kn = tail call <16 x i32> @llvm.x86.avx512.psrai.d.512(<16 x i32> %i.km, i32 range(i32 0, 256) %i.cj)
  %i.ko = add <16 x i32> %i.kn, %i.kj
  store <16 x i32> %i.ko, ptr %i.ke, align 64, !tbaa !8
  %i.kp = add nsw i32 %.1191213, -32
  %i.kq = getelementptr inbounds nuw i8, ptr %.7216, i64 128
  %i.kr = getelementptr inbounds nuw i8, ptr %.7175215, i64 128
  %i.ks = getelementptr inbounds nuw i8, ptr %.7183214, i64 128
  %i.kt = icmp sgt i32 %.1191213, 32
  br i1 %i.kt, label %.lr.ph, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph221.prol.loopexit, %.lr.ph221, %.lr.ph226.prol.loopexit, %.lr.ph226, %.lr.ph231.prol.loopexit, %.lr.ph231, %.lr.ph236.prol.loopexit, %.lr.ph236, %.lr.ph241.prol.loopexit, %.lr.ph241, %.prol.loopexit, %.lr.ph246.new, %.prol.loopexit294, %.lr.ph251.new, %.preheader211, %.preheader209, %.preheader207, %.preheader205, %.preheader203, %.preheader201, %.preheader199, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local22avx512_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !8    ; 2 uses
  %i.e = load i8, ptr %0, align 4, !tbaa !8       ; 6 uses
  %i.f = sext i16 %i.d to i64                     ; 11 uses
  %i.g = insertelement <8 x i64> poison, i64 %i.f, i64 0
  %i.h = shufflevector <8 x i64> %i.g, <8 x i64> poison, <8 x i32> zeroinitializer ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 42 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 34 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 34 uses
  %i.o = icmp eq i16 %i.b, 1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %5, label %.preheader, label %.preheader176

.preheader176:                                    ; preds = %bb.b
  br i1 %i.p, label %.lr.ph225, label %.loopexit

.lr.ph225:                                        ; preds = %.preheader176
  %i.q = zext i8 %i.e to i32                      ; 3 uses
  %i.r = add nsw i32 %4, -1                       ; 2 uses
  %i.s = and i32 %i.r, 8
  %lcmp.mod381.not.not = icmp eq i32 %i.s, 0
  br i1 %lcmp.mod381.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph225
  %i.t = load <8 x i64>, ptr %i.l, align 64, !tbaa !8
  %i.u = load <8 x i64>, ptr %i.n, align 64, !tbaa !8
  %i.v = load <8 x i64>, ptr %i.j, align 64, !tbaa !8
  %i.w = add <8 x i64> %i.t, %i.h
  %i.x = add <8 x i64> %i.w, %i.u
  %i.y = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.x, i32 range(i32 0, 256) %i.q)
  %i.z = add <8 x i64> %i.y, %i.v
  store <8 x i64> %i.z, ptr %i.j, align 64, !tbaa !8
  %i.aa = add nsw i32 %4, -8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph225
  %.1224.unr = phi ptr [ %i.j, %.lr.ph225 ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %.1147223.unr = phi ptr [ %i.l, %.lr.ph225 ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.1155222.unr = phi ptr [ %i.n, %.lr.ph225 ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.1163221.unr = phi i32 [ %4, %.lr.ph225 ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %i.ae = icmp ult i32 %i.r, 8
  br i1 %i.ae, label %.loopexit, label %.lr.ph225.new

.preheader:                                       ; preds = %bb.b
  br i1 %i.p, label %.lr.ph230, label %.loopexit

.lr.ph230:                                        ; preds = %.preheader
  %i.af = zext i8 %i.e to i32                     ; 3 uses
  %i.ag = add nsw i32 %4, -1                      ; 2 uses
  %i.ah = and i32 %i.ag, 8
  %lcmp.mod385.not.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod385.not.not, label %.prol.loopexit383.unr-lcssa, label %.prol.loopexit383

.prol.loopexit383.unr-lcssa:                      ; preds = %.lr.ph230
  %i.ai = load <8 x i64>, ptr %i.l, align 64, !tbaa !8
  %i.aj = load <8 x i64>, ptr %i.n, align 64, !tbaa !8
  %i.ak = load <8 x i64>, ptr %i.j, align 64, !tbaa !8
  %i.al = add <8 x i64> %i.ai, %i.h
  %i.am = add <8 x i64> %i.al, %i.aj
  %i.an = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.am, i32 range(i32 0, 256) %i.af)
  %i.ao = sub <8 x i64> %i.ak, %i.an
  store <8 x i64> %i.ao, ptr %i.j, align 64, !tbaa !8
  %i.ap = add nsw i32 %4, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  br label %.prol.loopexit383

.prol.loopexit383:                                ; preds = %.prol.loopexit383.unr-lcssa, %.lr.ph230
  %.0145229.unr = phi ptr [ %i.j, %.lr.ph230 ], [ %i.aq, %.prol.loopexit383.unr-lcssa ]
  %.0146228.unr = phi ptr [ %i.l, %.lr.ph230 ], [ %i.ar, %.prol.loopexit383.unr-lcssa ]
  %.0154227.unr = phi ptr [ %i.n, %.lr.ph230 ], [ %i.as, %.prol.loopexit383.unr-lcssa ]
  %.0162226.unr = phi i32 [ %4, %.lr.ph230 ], [ %i.ap, %.prol.loopexit383.unr-lcssa ]
  %i.at = icmp ult i32 %i.ag, 8
  br i1 %i.at, label %.loopexit, label %.lr.ph230.new

.lr.ph230.new:                                    ; preds = %.prol.loopexit383, %.lr.ph230.new
  %.0145229 = phi ptr [ %i.bm, %.lr.ph230.new ], [ %.0145229.unr, %.prol.loopexit383 ] ; 4 uses
  %.0146228 = phi ptr [ %i.bn, %.lr.ph230.new ], [ %.0146228.unr, %.prol.loopexit383 ] ; 3 uses
  %.0154227 = phi ptr [ %i.bo, %.lr.ph230.new ], [ %.0154227.unr, %.prol.loopexit383 ] ; 3 uses
  %.0162226 = phi i32 [ %i.bl, %.lr.ph230.new ], [ %.0162226.unr, %.prol.loopexit383 ] ; 2 uses
  %i.au = load <8 x i64>, ptr %.0146228, align 64, !tbaa !8
  %i.av = load <8 x i64>, ptr %.0154227, align 64, !tbaa !8
  %i.aw = load <8 x i64>, ptr %.0145229, align 64, !tbaa !8
  %i.ax = add <8 x i64> %i.au, %i.h
  %i.ay = add <8 x i64> %i.ax, %i.av
  %i.az = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.ay, i32 range(i32 0, 256) %i.af)
  %i.ba = sub <8 x i64> %i.aw, %i.az
  store <8 x i64> %i.ba, ptr %.0145229, align 64, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0145229, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0146228, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0154227, i64 64
  %i.be = load <8 x i64>, ptr %i.bc, align 64, !tbaa !8
  %i.bf = load <8 x i64>, ptr %i.bd, align 64, !tbaa !8
  %i.bg = load <8 x i64>, ptr %i.bb, align 64, !tbaa !8
  %i.bh = add <8 x i64> %i.be, %i.h
  %i.bi = add <8 x i64> %i.bh, %i.bf
  %i.bj = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.bi, i32 range(i32 0, 256) %i.af)
  %i.bk = sub <8 x i64> %i.bg, %i.bj
  store <8 x i64> %i.bk, ptr %i.bb, align 64, !tbaa !8
  %i.bl = add nsw i32 %.0162226, -16
  %i.bm = getelementptr inbounds nuw i8, ptr %.0145229, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %.0146228, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %.0154227, i64 128
  %i.bp = icmp sgt i32 %.0162226, 16
  br i1 %i.bp, label %.lr.ph230.new, label %.loopexit, !llvm.loop !46

.lr.ph225.new:                                    ; preds = %.prol.loopexit, %.lr.ph225.new
  %.1224 = phi ptr [ %i.ci, %.lr.ph225.new ], [ %.1224.unr, %.prol.loopexit ] ; 4 uses
  %.1147223 = phi ptr [ %i.cj, %.lr.ph225.new ], [ %.1147223.unr, %.prol.loopexit ] ; 3 uses
  %.1155222 = phi ptr [ %i.ck, %.lr.ph225.new ], [ %.1155222.unr, %.prol.loopexit ] ; 3 uses
  %.1163221 = phi i32 [ %i.ch, %.lr.ph225.new ], [ %.1163221.unr, %.prol.loopexit ] ; 2 uses
  %i.bq = load <8 x i64>, ptr %.1147223, align 64, !tbaa !8
  %i.br = load <8 x i64>, ptr %.1155222, align 64, !tbaa !8
  %i.bs = load <8 x i64>, ptr %.1224, align 64, !tbaa !8
  %i.bt = add <8 x i64> %i.bq, %i.h
  %i.bu = add <8 x i64> %i.bt, %i.br
  %i.bv = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.bu, i32 range(i32 0, 256) %i.q)
  %i.bw = add <8 x i64> %i.bv, %i.bs
  store <8 x i64> %i.bw, ptr %.1224, align 64, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %.1224, i64 64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1147223, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %.1155222, i64 64
  %i.ca = load <8 x i64>, ptr %i.by, align 64, !tbaa !8
  %i.cb = load <8 x i64>, ptr %i.bz, align 64, !tbaa !8
  %i.cc = load <8 x i64>, ptr %i.bx, align 64, !tbaa !8
  %i.cd = add <8 x i64> %i.ca, %i.h
  %i.ce = add <8 x i64> %i.cd, %i.cb
  %i.cf = tail call noundef <8 x i64> @llvm.x86.avx512.psrai.q.512(<8 x i64> %i.ce, i32 range(i32 0, 256) %i.q)
  %i.cg = add <8 x i64> %i.cf, %i.cc
  store <8 x i64> %i.cg, ptr %i.bx, align 64, !tbaa !8
  %i.ch = add nsw i32 %.1163221, -16
  %i.ci = getelementptr inbounds nuw i8, ptr %.1224, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %.1147223, i64 128
  %i.ck = getelementptr inbounds nuw i8, ptr %.1155222, i64 128
  %i.cl = icmp sgt i32 %.1163221, 16
  br i1 %i.cl, label %.lr.ph225.new, label %.loopexit, !llvm.loop !47

bb.c:                                             ; preds = %bb.a
  %i.cm = icmp eq i16 %i.b, -1                    ; 2 uses
  %i.cn = icmp eq i16 %i.d, 1
  %or.cond = and i1 %i.cm, %i.cn
  %i.co = zext i8 %i.e to i32                     ; 6 uses
  %i.cp = icmp eq i8 %i.e, 1
  %or.cond4 = select i1 %or.cond, i1 %i.cp, i1 false
  br i1 %or.cond4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cq = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %5, label %.preheader178, label %.preheader180

.preheader180:                                    ; preds = %bb.d
  br i1 %i.cq, label %.lr.ph215.preheader, label %.loopexit

.lr.ph215.preheader:                              ; preds = %.preheader180
  %i.cr = add nsw i32 %4, -1                      ; 2 uses
  %i.cs = and i32 %i.cr, 8
  %lcmp.mod377.not.not = icmp eq i32 %i.cs, 0
  br i1 %lcmp.mod377.not.not, label %.lr.ph215.prol, label %.lr.ph215.prol.loopexit

.lr.ph215.prol:                                   ; preds = %.lr.ph215.preheader
  %i.ct = load <8 x i64>, ptr %i.l, align 64, !tbaa !8
  %i.cu = load <8 x i64>, ptr %i.n, align 64, !tbaa !8
  %i.cv = load <8 x i64>, ptr %i.j, align 64, !tbaa !8
  %i.cw = add <8 x i64> %i.cu, %i.ct
  %i.cx = ashr <8 x i64> %i.cw, splat (i64 1)
  %i.cy = sub <8 x i64> %i.cv, %i.cx
  store <8 x i64> %i.cy, ptr %i.j, align 64, !tbaa !8
  %i.cz = add nsw i32 %4, -8
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 64
end_hunk_0
