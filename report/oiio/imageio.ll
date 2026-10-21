Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imageio?download=true
inline.NumInlined: 4864
inline.NumDeleted: 1339
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN11OpenImageIO4v3_13pvt10contiguizeERKNS0_10image_spanIKSt4byteLm4EEENS0_4spanIS3_Lm18446744073709551615EEE:bb.a
  %.pn16 = phi ptr [ %i.ab, %bb.c ], [ %1, %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit.thread ]
  %.pn14 = phi i64 [ %i.af, %bb.c ], [ %i.bp, %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit.thread ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i64 } poison, ptr %.pn16, 0
  %.pn = insertvalue { ptr, i64 } %.fca.0.insert.i.pn, i64 %.pn14, 1
  ret { ptr, i64 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_110copy_imageERKNS0_10image_spanISt4byteLm4EEERKNS1_IKS2_Lm4EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.b, %i.k
  %i.m = icmp eq i64 %i.h, %i.l
  br i1 %i.m, label %bb.b, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

bb.b:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.h, %i.r
  %i.t = icmp eq i64 %i.o, %i.s
  br i1 %i.t, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !83   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !51
  %i.y = zext i32 %i.x to i64
  %i.z = mul i64 %i.o, %i.y
  %i.aa = icmp eq i64 %i.v, %i.z
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !134
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.ac, %i.al
  %i.an = icmp eq i64 %i.ai, %i.am
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.ai, %i.as
  %i.au = icmp eq i64 %i.ap, %i.at
  br i1 %i.au, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !51
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.ap, %i.az
  %i.bb = icmp eq i64 %i.aw, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !133
  %i.bd = load ptr, ptr %1, align 8, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !51
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul i64 %i.v, %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit

bb.f:                                             ; preds = %bb.b, %bb.c, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i, %bb.d, %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !134
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit: ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !51
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bj, %i.bs
  %i.bu = icmp eq i64 %i.bp, %i.bt
  br i1 %i.bu, label %bb.g, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit
  %i.bv = mul i32 %i.j, %i.d
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !51
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !51 ; 2 uses
  %.not167 = icmp eq i32 %i.cc, 0
  br i1 %.not167, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i32, ptr %i.cd, align 8, !tbaa !51
  %.not168 = icmp eq i32 %i.ci, 0
  br i1 %.not168, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge155
  %i.cj = phi i32 [ %i.cm, %._crit_edge155 ], [ %i.cc, %.preheader.lr.ph ]
  %i.ck = phi i32 [ %i.cn, %._crit_edge155 ], [ 1, %.preheader.lr.ph ]
  %.0108156 = phi i32 [ %i.co, %._crit_edge155 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not169 = icmp eq i32 %i.ck, 0
  br i1 %.not169, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader
  %i.cl = sext i32 %.0108156 to i64               ; 2 uses
  br label %bb.h

._crit_edge155.loopexit:                          ; preds = %bb.h
  %.pre191.a = load i32, ptr %i.cb, align 4, !tbaa !51
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %.preheader
  %i.cm = phi i32 [ %.pre191.a, %._crit_edge155.loopexit ], [ %i.cj, %.preheader ] ; 2 uses
  %i.cn = phi i32 [ %i.dg, %._crit_edge155.loopexit ], [ 0, %.preheader ]
  %i.co = add nuw i32 %.0108156, 1                ; 2 uses
  %i.cp = icmp ult i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !402

bb.h:                                             ; preds = %.lr.ph154, %bb.h
  %.0107153 = phi i32 [ 0, %.lr.ph154 ], [ %i.df, %bb.h ] ; 2 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !133
  %i.cr = sext i32 %.0107153 to i64               ; 2 uses
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !83
  %i.ct = mul nsw i64 %i.cs, %i.cr
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  %i.cv = load i64, ptr %i.cf, align 8, !tbaa !83
  %i.cw = mul nsw i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw
  %i.cy = load ptr, ptr %1, align 8, !tbaa !131
  %i.cz = load i64, ptr %i.cg, align 8, !tbaa !83
  %i.da = mul nsw i64 %i.cz, %i.cr
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  %i.dc = load i64, ptr %i.ch, align 8, !tbaa !83
  %i.dd = mul nsw i64 %i.dc, %i.cl
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.de, i64 %i.ca, i1 false)
  %i.df = add nuw i32 %.0107153, 1                ; 2 uses
  %i.dg = load i32, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.dh = icmp ult i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.h, label %._crit_edge155.loopexit, !llvm.loop !403

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i, %bb.f, %bb.a, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !134
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp eq i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.i, label %.preheader132

.preheader132:                                    ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51 ; 2 uses
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader131.lr.ph

.preheader131.lr.ph:                              ; preds = %.preheader132
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 8, !tbaa !51 ; 3 uses
  %.not157 = icmp eq i32 %i.dz, 0
  br i1 %.not157, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader131

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !83 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !83 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !51
  %i.eg = mul i32 %i.ef, %i.d
  %.fr166 = freeze i32 %i.eg                      ; 8 uses
  %i.eh = zext i32 %.fr166 to i64                 ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !131   ; 5 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = load ptr, ptr %0, align 8, !tbaa !133   ; 5 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !83 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !83 ; 5 uses
  %i.eq = or i64 %i.ej, %i.el
  %i.er = or i64 %i.eq, %i.eb
  %i.es = or i64 %i.er, %i.eh
  %i.et = or i64 %i.es, %i.en
  %i.eu = or i64 %i.et, %i.ep                     ; 2 uses
  %i.ev = and i64 %i.eu, 3
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ex = lshr i32 %.fr166, 2                     ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64              ; 5 uses
  %i.ez = lshr i64 %i.en, 2
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !83 ; 2 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !51 ; 2 uses
  %.not55.i = icmp eq i32 %i.fe, 0
  br i1 %.not55.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !83 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 8, !tbaa !51 ; 3 uses
  %.not57.i = icmp eq i32 %i.fj, 0
  %.not56.i = icmp eq i32 %i.ex, 0
  %or.cond = or i1 %.not57.i, %.not56.i
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.fk = and i32 %.fr166, -4
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = and i64 %i.fb, -4
  %i.fn = and i64 %i.en, -4
  %min.iters.check275 = icmp ult i32 %.fr166, 32
  %invariant.gep = getelementptr i8, ptr %i.ei, i64 %i.fl
  %invariant.gep309 = getelementptr i8, ptr %i.ek, i64 %i.fl
  %n.vec277 = and i64 %i.ey, 1073741816           ; 3 uses
  %cmp.n284 = icmp eq i64 %n.vec277, %i.ey
  %xtraiter297 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %._crit_edge50.i
  %i.fo = phi i32 [ %i.gg, %._crit_edge50.i ], [ %i.fe, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.fp = phi i32 [ %i.gh, %._crit_edge50.i ], [ %i.fj, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.fq = phi i32 [ %i.gi, %._crit_edge50.i ], [ %i.fj, %.lr.ph.split.i.preheader ] ; 2 uses
  %.04051.i = phi i32 [ %i.gj, %._crit_edge50.i ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.fr = sext i32 %.04051.i to i64               ; 2 uses
  %i.fs = mul i64 %i.fg, %i.fr
  %i.ft = mul i64 %i.ep, %i.fr
  %.not58.i = icmp eq i32 %i.fq, 0
  br i1 %.not58.i, label %._crit_edge50.i, label %.preheader41.lr.ph.i

.preheader41.lr.ph.i:                             ; preds = %.lr.ph.split.i
  %i.fu = load i32, ptr %i.fi, align 4, !tbaa !51
  %.not59.i = icmp eq i32 %i.fu, 0
  br i1 %.not59.i, label %._crit_edge50.i, label %.preheader41.preheader.i

.preheader41.preheader.i:                         ; preds = %.preheader41.lr.ph.i
  %i.fv = sext i32 %.04051.i to i64               ; 2 uses
  %i.fw = mul nsw i64 %i.ep, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.ei, i64 %i.fw
  %i.fy = mul nsw i64 %i.fg, %i.fv
  %i.fz = getelementptr inbounds i8, ptr %i.ek, i64 %i.fy
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ft
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %i.fs
  br label %.preheader41.i

.preheader41.i:                                   ; preds = %._crit_edge44.split.i, %.preheader41.preheader.i
  %indvar268 = phi i64 [ %indvar.next269, %._crit_edge44.split.i ], [ 0, %.preheader41.preheader.i ] ; 3 uses
  %i.ga = phi i32 [ %i.hc, %._crit_edge44.split.i ], [ %i.fp, %.preheader41.preheader.i ]
  %i.gb = phi i32 [ %i.hd, %._crit_edge44.split.i ], [ 1, %.preheader41.preheader.i ]
  %.03749.i = phi i32 [ %i.hg, %._crit_edge44.split.i ], [ 0, %.preheader41.preheader.i ]
  %.03847.i = phi ptr [ %i.he, %._crit_edge44.split.i ], [ %i.fx, %.preheader41.preheader.i ] ; 2 uses
  %.03945.i = phi ptr [ %i.hf, %._crit_edge44.split.i ], [ %i.fz, %.preheader41.preheader.i ] ; 2 uses
  %i.gc = mul i64 %i.ed, %indvar268
  %i.gd = mul i64 %i.eb, %indvar268
  %.not60.i = icmp eq i32 %i.gb, 0
  br i1 %.not60.i, label %._crit_edge44.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader41.i
  %i.ge = getelementptr i8, ptr %gep, i64 %i.gd
  %i.gf = getelementptr i8, ptr %gep310, i64 %i.gc
  br label %.preheader.i

._crit_edge50.loopexit61.i.split:                 ; preds = %._crit_edge44.split.i
  %.pre64.i = load i32, ptr %i.fd, align 4, !tbaa !51
  br label %._crit_edge50.i

._crit_edge50.i:                                  ; preds = %._crit_edge50.loopexit61.i.split, %.preheader41.lr.ph.i, %.lr.ph.split.i
  %i.gg = phi i32 [ %.pre64.i, %._crit_edge50.loopexit61.i.split ], [ %i.fo, %.lr.ph.split.i ], [ %i.fo, %.preheader41.lr.ph.i ] ; 2 uses
  %i.gh = phi i32 [ %i.hc, %._crit_edge50.loopexit61.i.split ], [ %i.fp, %.lr.ph.split.i ], [ %i.fp, %.preheader41.lr.ph.i ]
  %i.gi = phi i32 [ %i.hc, %._crit_edge50.loopexit61.i.split ], [ 0, %.lr.ph.split.i ], [ %i.fq, %.preheader41.lr.ph.i ]
  %i.gj = add nuw i32 %.04051.i, 1                ; 2 uses
  %i.gk = icmp ult i32 %i.gj, %i.gg
  br i1 %i.gk, label %.lr.ph.split.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !404

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.gl = mul i64 %indvars.iv.i, %i.ez
  %i.gm = getelementptr [4 x i8], ptr %.03847.i, i64 %i.gl ; 7 uses
  %i.gn = mul i64 %indvars.iv.i, %i.fc
  %i.go = getelementptr [4 x i8], ptr %.03945.i, i64 %i.gn ; 7 uses
  br i1 %min.iters.check275, label %scalar.ph.preheader, label %vector.memcheck267

vector.memcheck267:                               ; preds = %.preheader.i
  %i.gp = mul i64 %i.fn, %indvars.iv.i
  %scevgep271 = getelementptr i8, ptr %i.ge, i64 %i.gp
  %i.gq = mul i64 %i.fm, %indvars.iv.i
  %scevgep270 = getelementptr i8, ptr %i.gf, i64 %i.gq
  %bound0272 = icmp ult ptr %i.go, %scevgep271
  %bound1273 = icmp ult ptr %i.gm, %scevgep270
  %found.conflict274 = and i1 %bound0272, %bound1273
  br i1 %found.conflict274, label %scalar.ph.preheader, label %vector.body278

vector.body278:                                   ; preds = %vector.memcheck267, %vector.body278
  %index279 = phi i64 [ %index.next282, %vector.body278 ], [ 0, %vector.memcheck267 ] ; 3 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gm, i64 %index279 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %wide.load280 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !51, !alias.scope !431
  %wide.load281 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !51, !alias.scope !431
  %i.gt = getelementptr [4 x i8], ptr %i.go, i64 %index279 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store <4 x i32> %wide.load280, ptr %i.gt, align 4, !tbaa !51, !alias.scope !432, !noalias !431
  store <4 x i32> %wide.load281, ptr %i.gu, align 4, !tbaa !51, !alias.scope !432, !noalias !431
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.gv, label %middle.block283, label %vector.body278, !llvm.loop !408

middle.block283:                                  ; preds = %vector.body278
  br i1 %cmp.n284, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck267, %.preheader.i, %middle.block283
  %.042.i.ph = phi i64 [ 0, %vector.memcheck267 ], [ 0, %.preheader.i ], [ %n.vec277, %middle.block283 ] ; 3 uses
  br i1 %lcmp.mod298.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.042.i.prol = phi i64 [ %i.gz, %scalar.ph.prol ], [ %.042.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter299 = phi i64 [ %prol.iter299.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gw = getelementptr [4 x i8], ptr %i.gm, i64 %.042.i.prol
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !51
  %i.gy = getelementptr [4 x i8], ptr %i.go, i64 %.042.i.prol
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !51
  %i.gz = add nuw nsw i64 %.042.i.prol, 1         ; 2 uses
  %prol.iter299.next = add i64 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i64 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !409

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.042.i.unr = phi i64 [ %.042.i.ph, %scalar.ph.preheader ], [ %i.gz, %scalar.ph.prol ]
  %i.ha = sub nsw i64 %.042.i.ph, %i.ey
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %._crit_edge.i, label %scalar.ph

._crit_edge44.split.loopexit.i:                   ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %i.fh, align 8, !tbaa !51
  br label %._crit_edge44.split.i

._crit_edge44.split.i:                            ; preds = %._crit_edge44.split.loopexit.i, %.preheader41.i
  %i.hc = phi i32 [ %.pre.i, %._crit_edge44.split.loopexit.i ], [ %i.ga, %.preheader41.i ] ; 4 uses
  %i.hd = phi i32 [ %i.hi, %._crit_edge44.split.loopexit.i ], [ 0, %.preheader41.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.03847.i, i64 %i.eb
  %i.hf = getelementptr inbounds nuw i8, ptr %.03945.i, i64 %i.ed
  %i.hg = add nuw i32 %.03749.i, 1                ; 2 uses
  %i.hh = icmp ult i32 %i.hg, %i.hc
  %indvar.next269 = add i64 %indvar268, 1
  br i1 %i.hh, label %.preheader41.i, label %._crit_edge50.loopexit61.i.split, !llvm.loop !410

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block283
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110copy_imageERKNS0_10image_spanISt4byteLm4EEERKNS1_IKS2_Lm4EEE:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next265, %vec.epilog.vector.body ] ; 3 uses
  %i.kj = getelementptr [2 x i8], ptr %i.kb, i64 %index263
  %wide.load264 = load <4 x i16>, ptr %i.kj, align 2, !tbaa !136, !alias.scope !433
  %i.kk = getelementptr [2 x i8], ptr %i.kd, i64 %index263
  store <4 x i16> %wide.load264, ptr %i.kk, align 2, !tbaa !136, !alias.scope !434, !noalias !433
  %index.next265 = add nuw i64 %index263, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next265, %n.vec262
  br i1 %i.kl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !418

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n266, label %._crit_edge.i121, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.042.i119.ph = phi i64 [ 0, %iter.check ], [ %n.vec262, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.042.i119.prol = phi i64 [ %i.kp, %vec.epilog.scalar.ph.prol ], [ %.042.i119.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.km = getelementptr [2 x i8], ptr %i.kb, i64 %.042.i119.prol
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !136
  %i.ko = getelementptr [2 x i8], ptr %i.kd, i64 %.042.i119.prol
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !136
  %i.kp = add nuw nsw i64 %.042.i119.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !419

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.042.i119.unr = phi i64 [ %.042.i119.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kp, %vec.epilog.scalar.ph.prol ]
  %i.kq = sub nsw i64 %.042.i119.ph, %i.il
  %i.kr = icmp ugt i64 %i.kq, -4
  br i1 %i.kr, label %._crit_edge.i121, label %vec.epilog.scalar.ph

._crit_edge44.i:                                  ; preds = %._crit_edge.i121
  %i.ks = getelementptr inbounds nuw i8, ptr %.03847.i115, i64 %i.eb
  %i.kt = getelementptr inbounds nuw i8, ptr %.03945.i116, i64 %i.ed
  %i.ku = add nuw i32 %.03749.i114, 1             ; 2 uses
  %exitcond66.not.i = icmp eq i32 %i.ku, %i.iv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond66.not.i, label %._crit_edge50.i123, label %.preheader41.i113, !llvm.loop !420

._crit_edge.i121:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i
  br i1 %exitcond65.not.i, label %._crit_edge44.i, label %iter.check, !llvm.loop !421

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.042.i119 = phi i64 [ %i.lk, %vec.epilog.scalar.ph ], [ %.042.i119.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.kv = getelementptr [2 x i8], ptr %i.kb, i64 %.042.i119
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !136
  %i.kx = getelementptr [2 x i8], ptr %i.kd, i64 %.042.i119
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !136
  %i.ky = add nuw nsw i64 %.042.i119, 1           ; 2 uses
  %i.kz = getelementptr [2 x i8], ptr %i.kb, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !136
  %i.lb = getelementptr [2 x i8], ptr %i.kd, i64 %i.ky
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !136
  %i.lc = add nuw nsw i64 %.042.i119, 2           ; 2 uses
  %i.ld = getelementptr [2 x i8], ptr %i.kb, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !136
  %i.lf = getelementptr [2 x i8], ptr %i.kd, i64 %i.lc
  store i16 %i.le, ptr %i.lf, align 2, !tbaa !136
  %i.lg = add nuw nsw i64 %.042.i119, 3           ; 2 uses
  %i.lh = getelementptr [2 x i8], ptr %i.kb, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !136
  %i.lj = getelementptr [2 x i8], ptr %i.kd, i64 %i.lg
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !136
  %i.lk = add nuw nsw i64 %.042.i119, 4           ; 2 uses
  %exitcond.not.i120.3 = icmp eq i64 %i.lk, %i.il
  br i1 %exitcond.not.i120.3, label %._crit_edge.i121, label %vec.epilog.scalar.ph, !llvm.loop !422

.lr.ph152.split:                                  ; preds = %.lr.ph152, %._crit_edge150
  %i.ll = phi i32 [ %i.ma, %._crit_edge150 ], [ %i.ie, %.lr.ph152 ] ; 2 uses
  %i.lm = phi i32 [ %i.mb, %._crit_edge150 ], [ %i.ij, %.lr.ph152 ] ; 3 uses
  %i.ln = phi i32 [ %i.mc, %._crit_edge150 ], [ %i.ij, %.lr.ph152 ] ; 2 uses
  %.0105151 = phi i32 [ %i.md, %._crit_edge150 ], [ 0, %.lr.ph152 ] ; 2 uses
  %.not163 = icmp eq i32 %i.ln, 0
  br i1 %.not163, label %._crit_edge150, label %.preheader128.lr.ph

.preheader128.lr.ph:                              ; preds = %.lr.ph152.split
  %i.lo = load i32, ptr %i.ii, align 4, !tbaa !51
  %.not164 = icmp eq i32 %i.lo, 0
  br i1 %.not164, label %._crit_edge150, label %.preheader128.preheader

.preheader128.preheader:                          ; preds = %.preheader128.lr.ph
  %i.lp = load ptr, ptr %1, align 8, !tbaa !131
  %i.lq = load i64, ptr %i.eo, align 8, !tbaa !83
  %i.lr = sext i32 %.0105151 to i64               ; 2 uses
  %i.ls = mul nsw i64 %i.lq, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.lp, i64 %i.ls
  %i.lu = load ptr, ptr %0, align 8, !tbaa !133
  %i.lv = load i64, ptr %i.ig, align 8, !tbaa !83
  %i.lw = mul nsw i64 %i.lv, %i.lr
  %i.lx = getelementptr inbounds i8, ptr %i.lu, i64 %i.lw
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader128.preheader, %._crit_edge146
  %i.ly = phi i32 [ %i.mf, %._crit_edge146 ], [ %i.lm, %.preheader128.preheader ]
  %i.lz = phi i32 [ %i.mg, %._crit_edge146 ], [ 1, %.preheader128.preheader ]
  %.0102149 = phi i32 [ %i.mj, %._crit_edge146 ], [ 0, %.preheader128.preheader ]
  %.0103148 = phi ptr [ %i.mh, %._crit_edge146 ], [ %i.lt, %.preheader128.preheader ] ; 2 uses
  %.0104147 = phi ptr [ %i.mi, %._crit_edge146 ], [ %i.lx, %.preheader128.preheader ] ; 2 uses
  %.not165 = icmp eq i32 %i.lz, 0
  br i1 %.not165, label %._crit_edge146, label %.lr.ph145

._crit_edge150.loopexit176:                       ; preds = %._crit_edge146
  %.pre190.a = load i32, ptr %i.id, align 4, !tbaa !51
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %.preheader128.lr.ph, %._crit_edge150.loopexit176, %.lr.ph152.split
  %i.ma = phi i32 [ %.pre190.a, %._crit_edge150.loopexit176 ], [ %i.ll, %.lr.ph152.split ], [ %i.ll, %.preheader128.lr.ph ] ; 2 uses
  %i.mb = phi i32 [ %i.mf, %._crit_edge150.loopexit176 ], [ %i.lm, %.lr.ph152.split ], [ %i.lm, %.preheader128.lr.ph ]
  %i.mc = phi i32 [ %i.mf, %._crit_edge150.loopexit176 ], [ 0, %.lr.ph152.split ], [ %i.ln, %.preheader128.lr.ph ]
  %i.md = add nuw i32 %.0105151, 1                ; 2 uses
  %i.me = icmp ult i32 %i.md, %i.ma
  br i1 %i.me, label %.lr.ph152.split, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !423

._crit_edge146.loopexit:                          ; preds = %.lr.ph145
  %.pre189.a = load i32, ptr %i.ih, align 8, !tbaa !51
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit, %.preheader128
  %i.mf = phi i32 [ %.pre189.a, %._crit_edge146.loopexit ], [ %i.ly, %.preheader128 ] ; 4 uses
  %i.mg = phi i32 [ %i.mr, %._crit_edge146.loopexit ], [ 0, %.preheader128 ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.0103148, i64 %i.eb
  %i.mi = getelementptr inbounds nuw i8, ptr %.0104147, i64 %i.ed
  %i.mj = add nuw i32 %.0102149, 1                ; 2 uses
  %i.mk = icmp ult i32 %i.mj, %i.mf
  br i1 %i.mk, label %.preheader128, label %._crit_edge150.loopexit176, !llvm.loop !424

.lr.ph145:                                        ; preds = %.preheader128, %.lr.ph145
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %.lr.ph145 ], [ 0, %.preheader128 ] ; 3 uses
  %i.ml = load i64, ptr %i.if, align 8, !tbaa !83
  %i.mm = mul nsw i64 %i.ml, %indvars.iv183
  %i.mn = getelementptr inbounds i8, ptr %.0104147, i64 %i.mm
  %i.mo = load i64, ptr %i.em, align 8, !tbaa !83
  %i.mp = mul nsw i64 %i.mo, %indvars.iv183
  %i.mq = getelementptr inbounds i8, ptr %.0103148, i64 %i.mp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mn, ptr align 1 %i.mq, i64 %i.eh, i1 false)
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.mr = load i32, ptr %i.ii, align 4, !tbaa !51 ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = icmp samesign ult i64 %indvars.iv.next184, %i.ms
  br i1 %i.mt, label %.lr.ph145, label %._crit_edge146.loopexit, !llvm.loop !425

.preheader131:                                    ; preds = %.preheader131.lr.ph, %._crit_edge142
  %i.mu = phi i32 [ %i.mz, %._crit_edge142 ], [ %i.dp, %.preheader131.lr.ph ] ; 2 uses
  %i.mv = phi i32 [ %i.na, %._crit_edge142 ], [ %i.dz, %.preheader131.lr.ph ] ; 3 uses
  %i.mw = phi i32 [ %i.nb, %._crit_edge142 ], [ %i.dz, %.preheader131.lr.ph ] ; 2 uses
  %.0100143 = phi i32 [ %i.nc, %._crit_edge142 ], [ 0, %.preheader131.lr.ph ] ; 2 uses
  %.not158 = icmp eq i32 %i.mw, 0
  br i1 %.not158, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %.preheader131
  %i.mx = sext i32 %.0100143 to i64               ; 2 uses
  %i.my = load i32, ptr %i.dx, align 4, !tbaa !51 ; 2 uses
  %.not159 = icmp eq i32 %i.my, 0
  br i1 %.not159, label %._crit_edge142, label %.lr.ph141.split

._crit_edge142.loopexit179:                       ; preds = %._crit_edge139
  %.pre188.a = load i32, ptr %i.do, align 4, !tbaa !51
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %.lr.ph141, %._crit_edge142.loopexit179, %.preheader131
  %i.mz = phi i32 [ %.pre188.a, %._crit_edge142.loopexit179 ], [ %i.mu, %.preheader131 ], [ %i.mu, %.lr.ph141 ] ; 2 uses
  %i.na = phi i32 [ %i.nw, %._crit_edge142.loopexit179 ], [ %i.mv, %.preheader131 ], [ %i.mv, %.lr.ph141 ]
  %i.nb = phi i32 [ %i.nw, %._crit_edge142.loopexit179 ], [ 0, %.preheader131 ], [ %i.mw, %.lr.ph141 ]
  %i.nc = add nuw i32 %.0100143, 1                ; 2 uses
  %i.nd = icmp ult i32 %i.nc, %i.mz
  br i1 %i.nd, label %.preheader131, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !426

.lr.ph141.split:                                  ; preds = %.lr.ph141, %._crit_edge139
  %i.ne = phi i32 [ %i.nw, %._crit_edge139 ], [ %i.mv, %.lr.ph141 ]
  %i.nf = phi i32 [ %i.nx, %._crit_edge139 ], [ %i.my, %.lr.ph141 ] ; 2 uses
  %i.ng = phi i32 [ %i.ny, %._crit_edge139 ], [ 1, %.lr.ph141 ]
  %.099140 = phi i32 [ %i.nz, %._crit_edge139 ], [ 0, %.lr.ph141 ] ; 2 uses
  %i.nh = load ptr, ptr %0, align 8, !tbaa !133
  %i.ni = sext i32 %.099140 to i64                ; 2 uses
  %i.nj = load i64, ptr %i.ds, align 8, !tbaa !83
  %i.nk = mul nsw i64 %i.nj, %i.ni
  %i.nl = getelementptr inbounds i8, ptr %i.nh, i64 %i.nk
  %i.nm = load i64, ptr %i.dt, align 8, !tbaa !83
  %i.nn = mul nsw i64 %i.nm, %i.mx
  %i.no = getelementptr inbounds i8, ptr %i.nl, i64 %i.nn
  %i.np = load ptr, ptr %1, align 8, !tbaa !131
  %i.nq = load i64, ptr %i.dv, align 8, !tbaa !83
  %i.nr = mul nsw i64 %i.nq, %i.ni
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.nr
  %i.nt = load i64, ptr %i.dw, align 8, !tbaa !83
  %i.nu = mul nsw i64 %i.nt, %i.mx
  %i.nv = getelementptr inbounds i8, ptr %i.ns, i64 %i.nu
  %.not160 = icmp eq i32 %i.ng, 0
  br i1 %.not160, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.lr.ph141.split
  %.pre.a = load i32, ptr %i.dy, align 8, !tbaa !51
  br label %.lr.ph138

._crit_edge139.loopexit:                          ; preds = %._crit_edge
  %.pre187.a = load i32, ptr %i.dq, align 8, !tbaa !51
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.loopexit, %.lr.ph141.split
  %i.nw = phi i32 [ %.pre187.a, %._crit_edge139.loopexit ], [ %i.ne, %.lr.ph141.split ] ; 4 uses
  %i.nx = phi i32 [ %i.oh, %._crit_edge139.loopexit ], [ %i.nf, %.lr.ph141.split ]
  %i.ny = phi i32 [ %i.oh, %._crit_edge139.loopexit ], [ 0, %.lr.ph141.split ]
  %i.nz = add nuw i32 %.099140, 1                 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, %i.nw
  br i1 %i.oa, label %.lr.ph141.split, label %._crit_edge142.loopexit179, !llvm.loop !427

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %._crit_edge
  %i.ob = phi i32 [ %i.nf, %.lr.ph138.preheader ], [ %i.oh, %._crit_edge ]
  %i.oc = phi i32 [ %.pre.a, %.lr.ph138.preheader ], [ %i.oi, %._crit_edge ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %2 = load i64, ptr %i.dr, align 8, !tbaa !83
  %3 = mul nsw i64 %2, %indvars.iv.a
  %4 = getelementptr inbounds i8, ptr %i.no, i64 %3
  %5 = load i64, ptr %i.du, align 8, !tbaa !83
  %i.od = mul nsw i64 %5, %indvars.iv.a
  %i.oe = getelementptr inbounds i8, ptr %i.nv, i64 %i.od
  %i.of = zext i32 %i.oc to i64
  %i.og = icmp samesign ult i64 %indvars.iv.a, %i.of
  br i1 %i.og, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre186.a = load i32, ptr %i.dx, align 4, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph138
  %i.oh = phi i32 [ %.pre186.a, %._crit_edge.loopexit ], [ %i.ob, %.lr.ph138 ] ; 4 uses
  %i.oi = phi i32 [ %i.ot, %._crit_edge.loopexit ], [ %i.oc, %.lr.ph138 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.oj = zext i32 %i.oh to i64
  %i.ok = icmp samesign ult i64 %indvars.iv.next, %i.oj
  br i1 %i.ok, label %.lr.ph138, label %._crit_edge139.loopexit, !llvm.loop !428

.lr.ph:                                           ; preds = %.lr.ph138, %.lr.ph
  %.0135 = phi i32 [ %i.os, %.lr.ph ], [ 0, %.lr.ph138 ] ; 2 uses
  %i.ol = zext i32 %.0135 to i64                  ; 2 uses
  %i.om = load i64, ptr %i.di, align 8, !tbaa !83
  %i.on = mul nsw i64 %i.om, %i.ol
  %i.oo = getelementptr inbounds i8, ptr %4, i64 %i.on
  %i.op = load i64, ptr %i.a, align 8, !tbaa !83
  %i.oq = mul nsw i64 %i.op, %i.ol
  %i.or = getelementptr inbounds i8, ptr %i.oe, i64 %i.oq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %i.or, i64 %i.e, i1 false)
  %i.os = add i32 %.0135, 1
  %i.ot = load i32, ptr %i.dy, align 8, !tbaa !51 ; 2 uses
  %i.ou = zext i32 %i.ot to i64
  %i.ov = icmp samesign ult i64 %indvars.iv.a, %i.ou
  br i1 %i.ov, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !429

_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit: ; preds = %._crit_edge142, %._crit_edge150, %._crit_edge50.i123, %._crit_edge50.i, %._crit_edge155, %.lr.ph152, %.preheader131.lr.ph, %.preheader.lr.ph, %.preheader132, %.preheader129, %bb.g, %.lr.ph.i110, %bb.l, %.lr.ph.i, %bb.j, %bb.e
  ret i1 true
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef ptr @_ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(ret: address, provenance) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 %9) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i64 %9 to i8
  switch i8 %.sroa.0.0.extract.trunc, label %bb.z [
    i8 11, label %bb.b
    i8 3, label %bb.f
    i8 2, label %bb.f
    i8 10, label %bb.j
    i8 5, label %bb.j
    i8 4, label %bb.j
    i8 7, label %bb.n
    i8 6, label %bb.n
    i8 9, label %bb.r
    i8 8, label %bb.r
    i8 12, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = shl nsw i32 %1, 2
  %i.c = sext i32 %i.b to i64
  %i.d = icmp eq i64 %2, %i.c
  br i1 %i.d, label %bb.c, label %.preheader79.i

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %6 to i64
  %i.f = mul nsw i64 %2, %i.e                     ; 6 uses
  %i.g = icmp eq i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %.preheader75.i

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %7 to i64
  %i.i = mul nsw i64 %3, %i.h
  %i.j = icmp ne i64 %4, %i.i
  %i.k = icmp ne i64 %4, 0
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %.preheader75.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit

.preheader79.i:                                   ; preds = %bb.b
  %i.l = icmp slt i32 %7, 1
  %i.m = icmp slt i32 %1, 1
  %i.n = icmp slt i32 %6, 1
  %or.cond139.not142.i = or i1 %i.n, %i.l
  %brmerge.i = or i1 %i.m, %or.cond139.not142.i
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_111_contiguizeIfEEPKT_S5_illlPS3_iii.exit, label %.preheader78.us.us.preheader.i

.preheader78.us.us.preheader.i:                   ; preds = %.preheader79.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 5 uses
  %min.iters.check546 = icmp ult i32 %1, 8
  %n.vec548 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec548, 2
  %cmp.n556 = icmp eq i64 %n.vec548, %wide.trip.count.i
  %xtraiter629 = and i64 %wide.trip.count.i, 7    ; 2 uses
  %lcmp.mod630.not = icmp eq i64 %xtraiter629, 0
  br label %.preheader78.us.us.i

.preheader78.us.us.i:                             ; preds = %._crit_edge.split.us.split.us.us.us.i, %.preheader78.us.us.preheader.i
  %indvar538 = phi i64 [ %indvar.next539, %._crit_edge.split.us.split.us.us.us.i ], [ 0, %.preheader78.us.us.preheader.i ] ; 2 uses
  %.063103.us.us.i = phi i32 [ %i.bq, %._crit_edge.split.us.split.us.us.us.i ], [ 0, %.preheader78.us.us.preheader.i ]
  %.1100.us.us.i = phi ptr [ %i.br, %._crit_edge.split.us.split.us.us.us.i ], [ %0, %.preheader78.us.us.preheader.i ] ; 2 uses
  %.299.us.us.i = phi ptr [ %.lcssa401, %._crit_edge.split.us.split.us.us.us.i ], [ %5, %.preheader78.us.us.preheader.i ]
  %i.p = mul i64 %4, %indvar538
  %i.q = add i64 %i.p, %i.a
  br label %.preheader77.us.us.us.us.i

.preheader77.us.us.us.us.i:                       ; preds = %._crit_edge86.split.us.us.us.us.us.i, %.preheader78.us.us.i
  %indvar540 = phi i64 [ %indvar.next541, %._crit_edge86.split.us.us.us.us.us.i ], [ 0, %.preheader78.us.us.i ] ; 2 uses
  %.06191.us.us.us.us.i = phi i32 [ %i.bo, %._crit_edge86.split.us.us.us.us.us.i ], [ 0, %.preheader78.us.us.i ]
  %.06289.us.us.us.us.i = phi ptr [ %i.bp, %._crit_edge86.split.us.us.us.us.us.i ], [ %.1100.us.us.i, %.preheader78.us.us.i ] ; 2 uses
  %.388.us.us.us.us.i = phi ptr [ %.lcssa401, %._crit_edge86.split.us.us.us.us.us.i ], [ %.299.us.us.i, %.preheader78.us.us.i ]
  %i.r = mul i64 %3, %indvar540
  %i.s = add i64 %i.q, %i.r
  br label %.preheader76.us.us.us.us.us.i

.preheader76.us.us.us.us.us.i:                    ; preds = %._crit_edge.us.us.us.us.us.i, %.preheader77.us.us.us.us.i
  %indvar542 = phi i64 [ %indvar.next543, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader77.us.us.us.us.i ] ; 2 uses
  %.05985.us.us.us.us.us.i = phi i32 [ %i.bm, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader77.us.us.us.us.i ]
  %.06084.us.us.us.us.us.i = phi ptr [ %i.bn, %._crit_edge.us.us.us.us.us.i ], [ %.06289.us.us.us.us.i, %.preheader77.us.us.us.us.i ] ; 11 uses
  %.483.us.us.us.us.us.i = phi ptr [ %.lcssa401, %._crit_edge.us.us.us.us.us.i ], [ %.388.us.us.us.us.i, %.preheader77.us.us.us.us.i ] ; 5 uses
  br i1 %min.iters.check546, label %scalar.ph545.preheader, label %vector.memcheck536

vector.memcheck536:                               ; preds = %.preheader76.us.us.us.us.us.i
  %i.t = mul i64 %2, %indvar542
  %i.u = add i64 %i.s, %i.t
  %.483.us.us.us.us.us.i537 = ptrtoaddr ptr %.483.us.us.us.us.us.i to i64
  %i.v = sub i64 %i.u, %.483.us.us.us.us.us.i537
  %diff.check544 = icmp ugt i64 %i.v, -32
  br i1 %diff.check544, label %scalar.ph545.preheader, label %vector.ph547

vector.ph547:                                     ; preds = %vector.memcheck536
  %i.w = getelementptr i8, ptr %.483.us.us.us.us.us.i, i64 %i.o ; 2 uses
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next554, %vector.body549 ] ; 3 uses
  %i.x = shl i64 %index550, 2
  %next.gep551 = getelementptr i8, ptr %.483.us.us.us.us.us.i, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %index550 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load552 = load <4 x float>, ptr %i.y, align 4, !tbaa !94
  %wide.load553 = load <4 x float>, ptr %i.z, align 4, !tbaa !94
  %i.aa = getelementptr i8, ptr %next.gep551, i64 16
  store <4 x float> %wide.load552, ptr %next.gep551, align 4, !tbaa !94
  store <4 x float> %wide.load553, ptr %i.aa, align 4, !tbaa !94
  %index.next554 = add nuw i64 %index550, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next554, %n.vec548
  br i1 %i.ab, label %middle.block555, label %vector.body549, !llvm.loop !435

middle.block555:                                  ; preds = %vector.body549
  br i1 %cmp.n556, label %._crit_edge.us.us.us.us.us.i, label %scalar.ph545.preheader

scalar.ph545.preheader:                           ; preds = %vector.memcheck536, %.preheader76.us.us.us.us.us.i, %middle.block555
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck536 ], [ 0, %.preheader76.us.us.us.us.us.i ], [ %n.vec548, %middle.block555 ] ; 3 uses
  %.581.us.us.us.us.us.i.ph = phi ptr [ %.483.us.us.us.us.us.i, %vector.memcheck536 ], [ %.483.us.us.us.us.us.i, %.preheader76.us.us.us.us.us.i ], [ %i.w, %middle.block555 ] ; 2 uses
  br i1 %lcmp.mod630.not, label %scalar.ph545.prol.loopexit, label %scalar.ph545.prol

scalar.ph545.prol:                                ; preds = %scalar.ph545.preheader, %scalar.ph545.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph545.prol ], [ %indvars.iv.i.ph, %scalar.ph545.preheader ] ; 2 uses
  %.581.us.us.us.us.us.i.prol = phi ptr [ %i.ae, %scalar.ph545.prol ], [ %.581.us.us.us.us.us.i.ph, %scalar.ph545.preheader ] ; 2 uses
  %prol.iter631 = phi i64 [ %prol.iter631.next, %scalar.ph545.prol ], [ 0, %scalar.ph545.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i.prol, i64 4 ; 3 uses
  store float %i.ad, ptr %.581.us.us.us.us.us.i.prol, align 4, !tbaa !94
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter631.next = add i64 %prol.iter631, 1   ; 2 uses
  %prol.iter631.cmp.not = icmp eq i64 %prol.iter631.next, %xtraiter629
  br i1 %prol.iter631.cmp.not, label %scalar.ph545.prol.loopexit, label %scalar.ph545.prol, !llvm.loop !436

scalar.ph545.prol.loopexit:                       ; preds = %scalar.ph545.prol, %scalar.ph545.preheader
  %.lcssa560.unr = phi ptr [ poison, %scalar.ph545.preheader ], [ %i.ae, %scalar.ph545.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph545.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph545.prol ]
  %.581.us.us.us.us.us.i.unr = phi ptr [ %.581.us.us.us.us.us.i.ph, %scalar.ph545.preheader ], [ %i.ae, %scalar.ph545.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %._crit_edge.us.us.us.us.us.i, label %scalar.ph545

scalar.ph545:                                     ; preds = %scalar.ph545.prol.loopexit, %scalar.ph545
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %scalar.ph545 ], [ %indvars.iv.i.unr, %scalar.ph545.prol.loopexit ] ; 9 uses
  %.581.us.us.us.us.us.i = phi ptr [ %i.bl, %scalar.ph545 ], [ %.581.us.us.us.us.us.i.unr, %scalar.ph545.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 4
  store float %i.ai, ptr %.581.us.us.us.us.us.i, align 4, !tbaa !94
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 8
  store float %i.am, ptr %i.aj, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !94
  %i.ar = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 12
  store float %i.aq, ptr %i.an, align 4, !tbaa !94
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 16
  store float %i.au, ptr %i.ar, align 4, !tbaa !94
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 20
  store float %i.ay, ptr %i.av, align 4, !tbaa !94
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 24
  store float %i.bc, ptr %i.az, align 4, !tbaa !94
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !94
  %i.bh = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 28
  store float %i.bg, ptr %i.bd, align 4, !tbaa !94
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 32 ; 2 uses
  store float %i.bk, ptr %i.bh, align 4, !tbaa !94
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.us.us.us.us.us.i, label %scalar.ph545, !llvm.loop !437

._crit_edge.us.us.us.us.us.i:                     ; preds = %scalar.ph545.prol.loopexit, %scalar.ph545, %middle.block555
  %.lcssa401 = phi ptr [ %i.w, %middle.block555 ], [ %.lcssa560.unr, %scalar.ph545.prol.loopexit ], [ %i.bl, %scalar.ph545 ] ; 3 uses
  %i.bm = add nuw nsw i32 %.05985.us.us.us.us.us.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.06084.us.us.us.us.us.i, i64 %2
  %exitcond122.not.i = icmp eq i32 %i.bm, %6
  %indvar.next543 = add i64 %indvar542, 1
  br i1 %exitcond122.not.i, label %._crit_edge86.split.us.us.us.us.us.i, label %.preheader76.us.us.us.us.us.i, !llvm.loop !438

._crit_edge86.split.us.us.us.us.us.i:             ; preds = %._crit_edge.us.us.us.us.us.i
end_hunk_1
