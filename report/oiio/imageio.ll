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
define noundef zeroext i1 @_ZN11OpenImageIO4v3_110copy_imageERKNS0_10image_spanISt4byteLm4EEERKNS1_IKS2_Lm4EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 !guid !650 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !275  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !322  ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !275  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = mul nuw i64 %i.b, %i.k
  %i.m = icmp eq i64 %i.h, %i.l
  br i1 %i.m, label %bb.b, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

bb.b:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !275  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.h, %i.r
  %i.t = icmp eq i64 %i.o, %i.s
  br i1 %i.t, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !275  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !50
  %i.y = zext i32 %i.x to i64
  %i.z = mul i64 %i.o, %i.y
  %i.aa = icmp eq i64 %i.v, %i.z
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !275 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !326
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !275 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.ac, %i.al
  %i.an = icmp eq i64 %i.ai, %i.am
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !275 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !50
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.ai, %i.as
  %i.au = icmp eq i64 %i.ap, %i.at
  br i1 %i.au, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit, label %bb.f

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !275
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !50
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.ap, %i.az
  %i.bb = icmp eq i64 %i.aw, %i.ba
  br i1 %i.bb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !325
  %i.bd = load ptr, ptr %1, align 8, !tbaa !323
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !50
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul i64 %i.v, %i.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bd, i64 %i.bh, i1 false)
  br label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit

bb.f:                                             ; preds = %bb.b, %bb.c, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit.i, %bb.d, %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE13is_contiguousEv.exit, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE13is_contiguousEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !275 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !326
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i64 %i.bj, %i.bm
  br i1 %i.bn, label %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit: ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !275
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !50
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw nsw i64 %i.bj, %i.bs
  %i.bu = icmp eq i64 %i.bp, %i.bt
  br i1 %i.bu, label %bb.g, label %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit
  %i.bv = mul i32 %i.j, %i.d
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !50
  %i.bz = zext i32 %i.by to i64
  %i.ca = mul nuw i64 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50 ; 2 uses
  %.not167 = icmp eq i32 %i.cc, 0
  br i1 %.not167, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load i32, ptr %i.cd, align 8, !tbaa !50
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
  %.pre191.a = load i32, ptr %i.cb, align 4, !tbaa !50
  br label %._crit_edge155

._crit_edge155:                                   ; preds = %._crit_edge155.loopexit, %.preheader
  %i.cm = phi i32 [ %.pre191.a, %._crit_edge155.loopexit ], [ %i.cj, %.preheader ] ; 2 uses
  %i.cn = phi i32 [ %i.dg, %._crit_edge155.loopexit ], [ 0, %.preheader ]
  %i.co = add nuw i32 %.0108156, 1                ; 2 uses
  %i.cp = icmp ult i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !622

bb.h:                                             ; preds = %.lr.ph154, %bb.h
  %.0107153 = phi i32 [ 0, %.lr.ph154 ], [ %i.df, %bb.h ] ; 2 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !325
  %i.cr = sext i32 %.0107153 to i64               ; 2 uses
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !275
  %i.ct = mul nsw i64 %i.cs, %i.cr
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  %i.cv = load i64, ptr %i.cf, align 8, !tbaa !275
  %i.cw = mul nsw i64 %i.cv, %i.cl
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw
  %i.cy = load ptr, ptr %1, align 8, !tbaa !323
  %i.cz = load i64, ptr %i.cg, align 8, !tbaa !275
  %i.da = mul nsw i64 %i.cz, %i.cr
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  %i.dc = load i64, ptr %i.ch, align 8, !tbaa !275
  %i.dd = mul nsw i64 %i.dc, %i.cl
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.de, i64 %i.ca, i1 false)
  %i.df = add nuw i32 %.0107153, 1                ; 2 uses
  %i.dg = load i32, ptr %i.cd, align 8, !tbaa !50 ; 2 uses
  %i.dh = icmp ult i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.h, label %._crit_edge155.loopexit, !llvm.loop !623

_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.i, %bb.f, %bb.a, %_ZNK11OpenImageIO4v3_110image_spanISt4byteLm4EE22is_contiguous_scanlineEv.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !275
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !326
  %i.dm = zext i32 %i.dl to i64
  %i.dn = icmp eq i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.i, label %.preheader132

.preheader132:                                    ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !50 ; 2 uses
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
  %i.dz = load i32, ptr %i.dq, align 8, !tbaa !50 ; 3 uses
  %.not157 = icmp eq i32 %i.dz, 0
  br i1 %.not157, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.preheader131

bb.i:                                             ; preds = %_ZNK11OpenImageIO4v3_110image_spanIKSt4byteLm4EE22is_contiguous_scanlineEv.exit.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !275 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !275 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !50
  %i.eg = mul i32 %i.ef, %i.d
  %.fr166 = freeze i32 %i.eg                      ; 8 uses
  %i.eh = zext i32 %.fr166 to i64                 ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !323   ; 5 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = load ptr, ptr %0, align 8, !tbaa !325   ; 5 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !275 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !275 ; 5 uses
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
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !275 ; 2 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !50 ; 2 uses
  %.not55.i = icmp eq i32 %i.fe, 0
  br i1 %.not55.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !275 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 8, !tbaa !50 ; 3 uses
  %.not57.i = icmp eq i32 %i.fj, 0
  %.not56.i = icmp eq i32 %i.ex, 0
  %or.cond = or i1 %.not57.i, %.not56.i
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.fk = and i64 %i.en, -4
  %i.fl = and i32 %.fr166, -4
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = and i64 %i.fb, -4
  %min.iters.check279 = icmp ult i32 %.fr166, 32
  %invariant.gep = getelementptr i8, ptr %i.ek, i64 %i.fm
  %invariant.gep317 = getelementptr i8, ptr %i.ei, i64 %i.fm
  %n.vec285 = and i64 %i.ey, 1073741816           ; 3 uses
  %cmp.n292 = icmp eq i64 %n.vec285, %i.ey
  %xtraiter305 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %._crit_edge50.i
  %i.fo = phi i32 [ %i.gg, %._crit_edge50.i ], [ %i.fe, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.fp = phi i32 [ %i.gh, %._crit_edge50.i ], [ %i.fj, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.fq = phi i32 [ %i.gi, %._crit_edge50.i ], [ %i.fj, %.lr.ph.split.i.preheader ] ; 2 uses
  %.04051.i = phi i32 [ %i.gj, %._crit_edge50.i ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %i.fr = sext i32 %.04051.i to i64               ; 2 uses
  %i.fs = mul i64 %i.ep, %i.fr
  %i.ft = mul i64 %i.fg, %i.fr
  %.not58.i = icmp eq i32 %i.fq, 0
  br i1 %.not58.i, label %._crit_edge50.i, label %.preheader41.lr.ph.i

.preheader41.lr.ph.i:                             ; preds = %.lr.ph.split.i
  %i.fu = load i32, ptr %i.fi, align 4, !tbaa !50
  %.not59.i = icmp eq i32 %i.fu, 0
  br i1 %.not59.i, label %._crit_edge50.i, label %.preheader41.preheader.i

.preheader41.preheader.i:                         ; preds = %.preheader41.lr.ph.i
  %i.fv = sext i32 %.04051.i to i64               ; 2 uses
  %i.fw = mul nsw i64 %i.ep, %i.fv
  %i.fx = getelementptr inbounds i8, ptr %i.ei, i64 %i.fw
  %i.fy = mul nsw i64 %i.fg, %i.fv
  %i.fz = getelementptr inbounds i8, ptr %i.ek, i64 %i.fy
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ft
  %gep318 = getelementptr i8, ptr %invariant.gep317, i64 %i.fs
  br label %.preheader41.i

.preheader41.i:                                   ; preds = %._crit_edge44.split.i, %.preheader41.preheader.i
  %indvar277 = phi i64 [ %indvar.next278, %._crit_edge44.split.i ], [ 0, %.preheader41.preheader.i ] ; 3 uses
  %i.ga = phi i32 [ %i.he, %._crit_edge44.split.i ], [ %i.fp, %.preheader41.preheader.i ]
  %i.gb = phi i32 [ %i.hf, %._crit_edge44.split.i ], [ 1, %.preheader41.preheader.i ]
  %.03749.i = phi i32 [ %i.hi, %._crit_edge44.split.i ], [ 0, %.preheader41.preheader.i ]
  %.03847.i = phi ptr [ %i.hg, %._crit_edge44.split.i ], [ %i.fx, %.preheader41.preheader.i ] ; 2 uses
  %.03945.i = phi ptr [ %i.hh, %._crit_edge44.split.i ], [ %i.fz, %.preheader41.preheader.i ] ; 2 uses
  %i.gc = mul i64 %i.eb, %indvar277
  %i.gd = mul i64 %i.ed, %indvar277
  %.not60.i = icmp eq i32 %i.gb, 0
  br i1 %.not60.i, label %._crit_edge44.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader41.i
  %i.ge = getelementptr i8, ptr %gep, i64 %i.gd
  %i.gf = getelementptr i8, ptr %gep318, i64 %i.gc
  br label %.preheader.i

._crit_edge50.loopexit61.i.split:                 ; preds = %._crit_edge44.split.i
  %.pre64.i = load i32, ptr %i.fd, align 4, !tbaa !50
  br label %._crit_edge50.i

._crit_edge50.i:                                  ; preds = %._crit_edge50.loopexit61.i.split, %.preheader41.lr.ph.i, %.lr.ph.split.i
  %i.gg = phi i32 [ %.pre64.i, %._crit_edge50.loopexit61.i.split ], [ %i.fo, %.lr.ph.split.i ], [ %i.fo, %.preheader41.lr.ph.i ] ; 2 uses
  %i.gh = phi i32 [ %i.he, %._crit_edge50.loopexit61.i.split ], [ %i.fp, %.lr.ph.split.i ], [ %i.fp, %.preheader41.lr.ph.i ]
  %i.gi = phi i32 [ %i.he, %._crit_edge50.loopexit61.i.split ], [ 0, %.lr.ph.split.i ], [ %i.fq, %.preheader41.lr.ph.i ]
  %i.gj = add nuw i32 %.04051.i, 1                ; 2 uses
  %i.gk = icmp ult i32 %i.gj, %i.gg
  br i1 %i.gk, label %.lr.ph.split.i, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !624

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.gl = mul i64 %indvars.iv.i, %i.ez
  %i.gm = getelementptr [4 x i8], ptr %.03847.i, i64 %i.gl ; 7 uses
  %i.gn = mul i64 %indvars.iv.i, %i.fc
  %i.go = getelementptr [4 x i8], ptr %.03945.i, i64 %i.gn ; 7 uses
  br i1 %min.iters.check279, label %scalar.ph.preheader, label %vector.memcheck280

vector.memcheck280:                               ; preds = %.preheader.i
  %i.gp = mul i64 %indvars.iv.i, %i.fn
  %i.gq = getelementptr i8, ptr %i.ge, i64 %i.gp
  %i.gr = mul i64 %indvars.iv.i, %i.fk
  %i.gs = getelementptr i8, ptr %i.gf, i64 %i.gr
  %bound0281 = icmp ult ptr %i.go, %i.gs
  %bound1282 = icmp ult ptr %i.gm, %i.gq
  %found.conflict283 = and i1 %bound0281, %bound1282
  br i1 %found.conflict283, label %scalar.ph.preheader, label %vector.body286

vector.body286:                                   ; preds = %vector.memcheck280, %vector.body286
  %index287 = phi i64 [ %index.next290, %vector.body286 ], [ 0, %vector.memcheck280 ] ; 3 uses
  %i.gt = getelementptr [4 x i8], ptr %i.gm, i64 %index287 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %wide.load288 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !50, !alias.scope !652
  %wide.load289 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !50, !alias.scope !652
  %i.gv = getelementptr [4 x i8], ptr %i.go, i64 %index287 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  store <4 x i32> %wide.load288, ptr %i.gv, align 4, !tbaa !50, !alias.scope !653, !noalias !652
  store <4 x i32> %wide.load289, ptr %i.gw, align 4, !tbaa !50, !alias.scope !653, !noalias !652
  %index.next290 = add nuw i64 %index287, 8       ; 2 uses
  %i.gx = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.gx, label %middle.block291, label %vector.body286, !llvm.loop !628

middle.block291:                                  ; preds = %vector.body286
  br i1 %cmp.n292, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck280, %.preheader.i, %middle.block291
  %.042.i.ph = phi i64 [ 0, %vector.memcheck280 ], [ 0, %.preheader.i ], [ %n.vec285, %middle.block291 ] ; 3 uses
  br i1 %lcmp.mod306.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.042.i.prol = phi i64 [ %i.hb, %scalar.ph.prol ], [ %.042.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gy = getelementptr [4 x i8], ptr %i.gm, i64 %.042.i.prol
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !50
  %i.ha = getelementptr [4 x i8], ptr %i.go, i64 %.042.i.prol
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !50
  %i.hb = add nuw nsw i64 %.042.i.prol, 1         ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !629

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.042.i.unr = phi i64 [ %.042.i.ph, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %i.hc = sub nsw i64 %.042.i.ph, %i.ey
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %._crit_edge.i, label %scalar.ph

._crit_edge44.split.loopexit.i:                   ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %i.fh, align 8, !tbaa !50
  br label %._crit_edge44.split.i

._crit_edge44.split.i:                            ; preds = %._crit_edge44.split.loopexit.i, %.preheader41.i
  %i.he = phi i32 [ %.pre.i, %._crit_edge44.split.loopexit.i ], [ %i.ga, %.preheader41.i ] ; 4 uses
  %i.hf = phi i32 [ %i.hk, %._crit_edge44.split.loopexit.i ], [ 0, %.preheader41.i ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.03847.i, i64 %i.eb
  %i.hh = getelementptr inbounds nuw i8, ptr %.03945.i, i64 %i.ed
  %i.hi = add nuw i32 %.03749.i, 1                ; 2 uses
  %i.hj = icmp ult i32 %i.hi, %i.he
  %indvar.next278 = add i64 %indvar277, 1
  br i1 %i.hj, label %.preheader41.i, label %._crit_edge50.loopexit61.i.split, !llvm.loop !630

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block291
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110copy_imageERKNS0_10image_spanISt4byteLm4EEERKNS1_IKS2_Lm4EEE:bb.a
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 3 uses
  %i.kl = getelementptr [2 x i8], ptr %i.kd, i64 %index265
  %wide.load266 = load <4 x i16>, ptr %i.kl, align 2, !tbaa !328, !alias.scope !654
  %i.km = getelementptr [2 x i8], ptr %i.kf, i64 %index265
  store <4 x i16> %wide.load266, ptr %i.km, align 2, !tbaa !328, !alias.scope !655, !noalias !654
  %index.next267 = add nuw i64 %index265, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next267, %n.vec264
  br i1 %i.kn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !638

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n268, label %._crit_edge.i121, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.042.i119.ph = phi i64 [ 0, %iter.check ], [ %n.vec264, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.042.i119.prol = phi i64 [ %i.kr, %vec.epilog.scalar.ph.prol ], [ %.042.i119.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ko = getelementptr [2 x i8], ptr %i.kd, i64 %.042.i119.prol
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !328
  %i.kq = getelementptr [2 x i8], ptr %i.kf, i64 %.042.i119.prol
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !328
  %i.kr = add nuw nsw i64 %.042.i119.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !639

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.042.i119.unr = phi i64 [ %.042.i119.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kr, %vec.epilog.scalar.ph.prol ]
  %i.ks = sub nsw i64 %.042.i119.ph, %i.in
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %._crit_edge.i121, label %vec.epilog.scalar.ph

._crit_edge44.i:                                  ; preds = %._crit_edge.i121
  %i.ku = getelementptr inbounds nuw i8, ptr %.03847.i115, i64 %i.eb
  %i.kv = getelementptr inbounds nuw i8, ptr %.03945.i116, i64 %i.ed
  %i.kw = add nuw i32 %.03749.i114, 1             ; 2 uses
  %exitcond66.not.i = icmp eq i32 %i.kw, %i.ix
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond66.not.i, label %._crit_edge50.i123, label %.preheader41.i113, !llvm.loop !640

._crit_edge.i121:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i
  br i1 %exitcond65.not.i, label %._crit_edge44.i, label %iter.check, !llvm.loop !641

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.042.i119 = phi i64 [ %i.lm, %vec.epilog.scalar.ph ], [ %.042.i119.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr [2 x i8], ptr %i.kd, i64 %.042.i119
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !328
  %i.kz = getelementptr [2 x i8], ptr %i.kf, i64 %.042.i119
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !328
  %i.la = add nuw nsw i64 %.042.i119, 1           ; 2 uses
  %i.lb = getelementptr [2 x i8], ptr %i.kd, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !328
  %i.ld = getelementptr [2 x i8], ptr %i.kf, i64 %i.la
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !328
  %i.le = add nuw nsw i64 %.042.i119, 2           ; 2 uses
  %i.lf = getelementptr [2 x i8], ptr %i.kd, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !328
  %i.lh = getelementptr [2 x i8], ptr %i.kf, i64 %i.le
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !328
  %i.li = add nuw nsw i64 %.042.i119, 3           ; 2 uses
  %i.lj = getelementptr [2 x i8], ptr %i.kd, i64 %i.li
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !328
  %i.ll = getelementptr [2 x i8], ptr %i.kf, i64 %i.li
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !328
  %i.lm = add nuw nsw i64 %.042.i119, 4           ; 2 uses
  %exitcond.not.i120.3 = icmp eq i64 %i.lm, %i.in
  br i1 %exitcond.not.i120.3, label %._crit_edge.i121, label %vec.epilog.scalar.ph, !llvm.loop !642

.lr.ph152.split:                                  ; preds = %.lr.ph152, %._crit_edge150
  %i.ln = phi i32 [ %i.mc, %._crit_edge150 ], [ %i.ig, %.lr.ph152 ] ; 2 uses
  %i.lo = phi i32 [ %i.md, %._crit_edge150 ], [ %i.il, %.lr.ph152 ] ; 3 uses
  %i.lp = phi i32 [ %i.me, %._crit_edge150 ], [ %i.il, %.lr.ph152 ] ; 2 uses
  %.0105151 = phi i32 [ %i.mf, %._crit_edge150 ], [ 0, %.lr.ph152 ] ; 2 uses
  %.not163 = icmp eq i32 %i.lp, 0
  br i1 %.not163, label %._crit_edge150, label %.preheader128.lr.ph

.preheader128.lr.ph:                              ; preds = %.lr.ph152.split
  %i.lq = load i32, ptr %i.ik, align 4, !tbaa !50
  %.not164 = icmp eq i32 %i.lq, 0
  br i1 %.not164, label %._crit_edge150, label %.preheader128.preheader

.preheader128.preheader:                          ; preds = %.preheader128.lr.ph
  %i.lr = load ptr, ptr %1, align 8, !tbaa !323
  %i.ls = load i64, ptr %i.eo, align 8, !tbaa !275
  %i.lt = sext i32 %.0105151 to i64               ; 2 uses
  %i.lu = mul nsw i64 %i.ls, %i.lt
  %i.lv = getelementptr inbounds i8, ptr %i.lr, i64 %i.lu
  %i.lw = load ptr, ptr %0, align 8, !tbaa !325
  %i.lx = load i64, ptr %i.ii, align 8, !tbaa !275
  %i.ly = mul nsw i64 %i.lx, %i.lt
  %i.lz = getelementptr inbounds i8, ptr %i.lw, i64 %i.ly
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader128.preheader, %._crit_edge146
  %i.ma = phi i32 [ %i.mh, %._crit_edge146 ], [ %i.lo, %.preheader128.preheader ]
  %i.mb = phi i32 [ %i.mi, %._crit_edge146 ], [ 1, %.preheader128.preheader ]
  %.0102149 = phi i32 [ %i.ml, %._crit_edge146 ], [ 0, %.preheader128.preheader ]
  %.0103148 = phi ptr [ %i.mj, %._crit_edge146 ], [ %i.lv, %.preheader128.preheader ] ; 2 uses
  %.0104147 = phi ptr [ %i.mk, %._crit_edge146 ], [ %i.lz, %.preheader128.preheader ] ; 2 uses
  %.not165 = icmp eq i32 %i.mb, 0
  br i1 %.not165, label %._crit_edge146, label %.lr.ph145

._crit_edge150.loopexit176:                       ; preds = %._crit_edge146
  %.pre190.a = load i32, ptr %i.if, align 4, !tbaa !50
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %.preheader128.lr.ph, %._crit_edge150.loopexit176, %.lr.ph152.split
  %i.mc = phi i32 [ %.pre190.a, %._crit_edge150.loopexit176 ], [ %i.ln, %.lr.ph152.split ], [ %i.ln, %.preheader128.lr.ph ] ; 2 uses
  %i.md = phi i32 [ %i.mh, %._crit_edge150.loopexit176 ], [ %i.lo, %.lr.ph152.split ], [ %i.lo, %.preheader128.lr.ph ]
  %i.me = phi i32 [ %i.mh, %._crit_edge150.loopexit176 ], [ 0, %.lr.ph152.split ], [ %i.lp, %.preheader128.lr.ph ]
  %i.mf = add nuw i32 %.0105151, 1                ; 2 uses
  %i.mg = icmp ult i32 %i.mf, %i.mc
  br i1 %i.mg, label %.lr.ph152.split, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !643

._crit_edge146.loopexit:                          ; preds = %.lr.ph145
  %.pre189.a = load i32, ptr %i.ij, align 8, !tbaa !50
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit, %.preheader128
  %i.mh = phi i32 [ %.pre189.a, %._crit_edge146.loopexit ], [ %i.ma, %.preheader128 ] ; 4 uses
  %i.mi = phi i32 [ %i.mt, %._crit_edge146.loopexit ], [ 0, %.preheader128 ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.0103148, i64 %i.eb
  %i.mk = getelementptr inbounds nuw i8, ptr %.0104147, i64 %i.ed
  %i.ml = add nuw i32 %.0102149, 1                ; 2 uses
  %i.mm = icmp ult i32 %i.ml, %i.mh
  br i1 %i.mm, label %.preheader128, label %._crit_edge150.loopexit176, !llvm.loop !644

.lr.ph145:                                        ; preds = %.preheader128, %.lr.ph145
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %.lr.ph145 ], [ 0, %.preheader128 ] ; 3 uses
  %i.mn = load i64, ptr %i.ih, align 8, !tbaa !275
  %i.mo = mul nsw i64 %i.mn, %indvars.iv183
  %i.mp = getelementptr inbounds i8, ptr %.0104147, i64 %i.mo
  %i.mq = load i64, ptr %i.em, align 8, !tbaa !275
  %i.mr = mul nsw i64 %i.mq, %indvars.iv183
  %i.ms = getelementptr inbounds i8, ptr %.0103148, i64 %i.mr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mp, ptr align 1 %i.ms, i64 %i.eh, i1 false)
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.mt = load i32, ptr %i.ik, align 4, !tbaa !50 ; 2 uses
  %i.mu = zext i32 %i.mt to i64
  %i.mv = icmp samesign ult i64 %indvars.iv.next184, %i.mu
  br i1 %i.mv, label %.lr.ph145, label %._crit_edge146.loopexit, !llvm.loop !645

.preheader131:                                    ; preds = %.preheader131.lr.ph, %._crit_edge142
  %i.mw = phi i32 [ %i.nb, %._crit_edge142 ], [ %i.dp, %.preheader131.lr.ph ] ; 2 uses
  %i.mx = phi i32 [ %i.nc, %._crit_edge142 ], [ %i.dz, %.preheader131.lr.ph ] ; 3 uses
  %i.my = phi i32 [ %i.nd, %._crit_edge142 ], [ %i.dz, %.preheader131.lr.ph ] ; 2 uses
  %.0100143 = phi i32 [ %i.ne, %._crit_edge142 ], [ 0, %.preheader131.lr.ph ] ; 2 uses
  %.not158 = icmp eq i32 %i.my, 0
  br i1 %.not158, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %.preheader131
  %i.mz = sext i32 %.0100143 to i64               ; 2 uses
  %i.na = load i32, ptr %i.dx, align 4, !tbaa !50 ; 2 uses
  %.not159 = icmp eq i32 %i.na, 0
  br i1 %.not159, label %._crit_edge142, label %.lr.ph141.split

._crit_edge142.loopexit179:                       ; preds = %._crit_edge139
  %.pre188.a = load i32, ptr %i.do, align 4, !tbaa !50
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %.lr.ph141, %._crit_edge142.loopexit179, %.preheader131
  %i.nb = phi i32 [ %.pre188.a, %._crit_edge142.loopexit179 ], [ %i.mw, %.preheader131 ], [ %i.mw, %.lr.ph141 ] ; 2 uses
  %i.nc = phi i32 [ %i.ny, %._crit_edge142.loopexit179 ], [ %i.mx, %.preheader131 ], [ %i.mx, %.lr.ph141 ]
  %i.nd = phi i32 [ %i.ny, %._crit_edge142.loopexit179 ], [ 0, %.preheader131 ], [ %i.my, %.lr.ph141 ]
  %i.ne = add nuw i32 %.0100143, 1                ; 2 uses
  %i.nf = icmp ult i32 %i.ne, %i.nb
  br i1 %i.nf, label %.preheader131, label %_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit, !llvm.loop !646

.lr.ph141.split:                                  ; preds = %.lr.ph141, %._crit_edge139
  %i.ng = phi i32 [ %i.ny, %._crit_edge139 ], [ %i.mx, %.lr.ph141 ]
  %i.nh = phi i32 [ %i.nz, %._crit_edge139 ], [ %i.na, %.lr.ph141 ] ; 2 uses
  %i.ni = phi i32 [ %i.oa, %._crit_edge139 ], [ 1, %.lr.ph141 ]
  %.099140 = phi i32 [ %i.ob, %._crit_edge139 ], [ 0, %.lr.ph141 ] ; 2 uses
  %i.nj = load ptr, ptr %0, align 8, !tbaa !325
  %i.nk = sext i32 %.099140 to i64                ; 2 uses
  %i.nl = load i64, ptr %i.ds, align 8, !tbaa !275
  %i.nm = mul nsw i64 %i.nl, %i.nk
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  %i.no = load i64, ptr %i.dt, align 8, !tbaa !275
  %i.np = mul nsw i64 %i.no, %i.mz
  %i.nq = getelementptr inbounds i8, ptr %i.nn, i64 %i.np
  %i.nr = load ptr, ptr %1, align 8, !tbaa !323
  %i.ns = load i64, ptr %i.dv, align 8, !tbaa !275
  %i.nt = mul nsw i64 %i.ns, %i.nk
  %i.nu = getelementptr inbounds i8, ptr %i.nr, i64 %i.nt
  %i.nv = load i64, ptr %i.dw, align 8, !tbaa !275
  %i.nw = mul nsw i64 %i.nv, %i.mz
  %i.nx = getelementptr inbounds i8, ptr %i.nu, i64 %i.nw
  %.not160 = icmp eq i32 %i.ni, 0
  br i1 %.not160, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.lr.ph141.split
  %.pre.a = load i32, ptr %i.dy, align 8, !tbaa !50
  br label %.lr.ph138

._crit_edge139.loopexit:                          ; preds = %._crit_edge
  %.pre187.a = load i32, ptr %i.dq, align 8, !tbaa !50
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.loopexit, %.lr.ph141.split
  %i.ny = phi i32 [ %.pre187.a, %._crit_edge139.loopexit ], [ %i.ng, %.lr.ph141.split ] ; 4 uses
  %i.nz = phi i32 [ %i.oj, %._crit_edge139.loopexit ], [ %i.nh, %.lr.ph141.split ]
  %i.oa = phi i32 [ %i.oj, %._crit_edge139.loopexit ], [ 0, %.lr.ph141.split ]
  %i.ob = add nuw i32 %.099140, 1                 ; 2 uses
  %i.oc = icmp ult i32 %i.ob, %i.ny
  br i1 %i.oc, label %.lr.ph141.split, label %._crit_edge142.loopexit179, !llvm.loop !647

.lr.ph138:                                        ; preds = %.lr.ph138.preheader, %._crit_edge
  %i.od = phi i32 [ %i.nh, %.lr.ph138.preheader ], [ %i.oj, %._crit_edge ]
  %i.oe = phi i32 [ %.pre.a, %.lr.ph138.preheader ], [ %i.ok, %._crit_edge ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph138.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %2 = load i64, ptr %i.dr, align 8, !tbaa !275
  %3 = mul nsw i64 %2, %indvars.iv.a
  %4 = getelementptr inbounds i8, ptr %i.nq, i64 %3
  %5 = load i64, ptr %i.du, align 8, !tbaa !275
  %i.of = mul nsw i64 %5, %indvars.iv.a
  %i.og = getelementptr inbounds i8, ptr %i.nx, i64 %i.of
  %i.oh = zext i32 %i.oe to i64
  %i.oi = icmp samesign ult i64 %indvars.iv.a, %i.oh
  br i1 %i.oi, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre186.a = load i32, ptr %i.dx, align 4, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph138
  %i.oj = phi i32 [ %.pre186.a, %._crit_edge.loopexit ], [ %i.od, %.lr.ph138 ] ; 4 uses
  %i.ok = phi i32 [ %i.ov, %._crit_edge.loopexit ], [ %i.oe, %.lr.ph138 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.ol = zext i32 %i.oj to i64
  %i.om = icmp samesign ult i64 %indvars.iv.next, %i.ol
  br i1 %i.om, label %.lr.ph138, label %._crit_edge139.loopexit, !llvm.loop !648

.lr.ph:                                           ; preds = %.lr.ph138, %.lr.ph
  %.0135 = phi i32 [ %i.ou, %.lr.ph ], [ 0, %.lr.ph138 ] ; 2 uses
  %i.on = zext i32 %.0135 to i64                  ; 2 uses
  %i.oo = load i64, ptr %i.di, align 8, !tbaa !275
  %i.op = mul nsw i64 %i.oo, %i.on
  %i.oq = getelementptr inbounds i8, ptr %4, i64 %i.op
  %i.or = load i64, ptr %i.a, align 8, !tbaa !275
  %i.os = mul nsw i64 %i.or, %i.on
  %i.ot = getelementptr inbounds i8, ptr %i.og, i64 %i.os
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oq, ptr align 1 %i.ot, i64 %i.e, i1 false)
  %i.ou = add i32 %.0135, 1
  %i.ov = load i32, ptr %i.dy, align 8, !tbaa !50 ; 2 uses
  %i.ow = zext i32 %i.ov to i64
  %i.ox = icmp samesign ult i64 %indvars.iv.a, %i.ow
  br i1 %i.ox, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !649

_ZN11OpenImageIO4v3_118aligned_copy_imageIjEEvRKNS0_10image_spanISt4byteLm4EEERKNS2_IKS3_Lm4EEE.exit: ; preds = %._crit_edge142, %._crit_edge150, %._crit_edge50.i123, %._crit_edge50.i, %._crit_edge155, %.lr.ph152, %.preheader131.lr.ph, %.preheader.lr.ph, %.preheader132, %.preheader129, %bb.g, %.lr.ph.i110, %bb.l, %.lr.ph.i, %bb.j, %bb.e
  ret i1 true
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef ptr @_ZN11OpenImageIO4v3_13pvt10contiguizeEPKvilllPviiiNS0_8TypeDescE(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(ret: address, provenance) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 %9) local_unnamed_addr #7 !guid !712 {
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
  %min.iters.check592 = icmp ult i32 %1, 8
  %n.vec596 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec596, 2
  %cmp.n604 = icmp eq i64 %n.vec596, %wide.trip.count.i
  %xtraiter677 = and i64 %wide.trip.count.i, 7    ; 2 uses
  %lcmp.mod678.not = icmp eq i64 %xtraiter677, 0
  br label %.preheader78.us.us.i

.preheader78.us.us.i:                             ; preds = %._crit_edge.split.us.split.us.us.us.i, %.preheader78.us.us.preheader.i
  %indvar587 = phi i64 [ %indvar.next588, %._crit_edge.split.us.split.us.us.us.i ], [ 0, %.preheader78.us.us.preheader.i ] ; 2 uses
  %.063103.us.us.i = phi i32 [ %i.bq, %._crit_edge.split.us.split.us.us.us.i ], [ 0, %.preheader78.us.us.preheader.i ]
  %.1100.us.us.i = phi ptr [ %i.br, %._crit_edge.split.us.split.us.us.us.i ], [ %0, %.preheader78.us.us.preheader.i ] ; 2 uses
  %.299.us.us.i = phi ptr [ %.lcssa401, %._crit_edge.split.us.split.us.us.us.i ], [ %5, %.preheader78.us.us.preheader.i ]
  %i.p = mul i64 %4, %indvar587
  %i.q = add i64 %i.p, %i.a
  br label %.preheader77.us.us.us.us.i

.preheader77.us.us.us.us.i:                       ; preds = %._crit_edge86.split.us.us.us.us.us.i, %.preheader78.us.us.i
  %indvar589 = phi i64 [ %indvar.next590, %._crit_edge86.split.us.us.us.us.us.i ], [ 0, %.preheader78.us.us.i ] ; 2 uses
  %.06191.us.us.us.us.i = phi i32 [ %i.bo, %._crit_edge86.split.us.us.us.us.us.i ], [ 0, %.preheader78.us.us.i ]
  %.06289.us.us.us.us.i = phi ptr [ %i.bp, %._crit_edge86.split.us.us.us.us.us.i ], [ %.1100.us.us.i, %.preheader78.us.us.i ] ; 2 uses
  %.388.us.us.us.us.i = phi ptr [ %.lcssa401, %._crit_edge86.split.us.us.us.us.us.i ], [ %.299.us.us.i, %.preheader78.us.us.i ]
  %i.r = mul i64 %3, %indvar589
  %i.s = add i64 %i.q, %i.r
  br label %.preheader76.us.us.us.us.us.i

.preheader76.us.us.us.us.us.i:                    ; preds = %._crit_edge.us.us.us.us.us.i, %.preheader77.us.us.us.us.i
  %indvar585 = phi i64 [ %indvar.next586, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader77.us.us.us.us.i ] ; 2 uses
  %.05985.us.us.us.us.us.i = phi i32 [ %i.bm, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader77.us.us.us.us.i ]
  %.06084.us.us.us.us.us.i = phi ptr [ %i.bn, %._crit_edge.us.us.us.us.us.i ], [ %.06289.us.us.us.us.i, %.preheader77.us.us.us.us.i ] ; 11 uses
  %.483.us.us.us.us.us.i = phi ptr [ %.lcssa401, %._crit_edge.us.us.us.us.us.i ], [ %.388.us.us.us.us.i, %.preheader77.us.us.us.us.i ] ; 5 uses
  br i1 %min.iters.check592, label %scalar.ph591.preheader, label %vector.memcheck593

vector.memcheck593:                               ; preds = %.preheader76.us.us.us.us.us.i
  %.483.us.us.us.us.us.i584 = ptrtoaddr ptr %.483.us.us.us.us.us.i to i64
  %i.t = mul i64 %2, %indvar585
  %i.u = add i64 %i.s, %i.t
  %i.v = sub i64 %i.u, %.483.us.us.us.us.us.i584
  %diff.check594 = icmp ugt i64 %i.v, -32
  br i1 %diff.check594, label %scalar.ph591.preheader, label %vector.ph595

vector.ph595:                                     ; preds = %vector.memcheck593
  %i.w = getelementptr i8, ptr %.483.us.us.us.us.us.i, i64 %i.o ; 2 uses
  br label %vector.body597

vector.body597:                                   ; preds = %vector.body597, %vector.ph595
  %index598 = phi i64 [ 0, %vector.ph595 ], [ %index.next602, %vector.body597 ] ; 3 uses
  %i.x = shl i64 %index598, 2
  %next.gep599 = getelementptr i8, ptr %.483.us.us.us.us.us.i, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %index598 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load600 = load <4 x float>, ptr %i.y, align 4, !tbaa !286
  %wide.load601 = load <4 x float>, ptr %i.z, align 4, !tbaa !286
  %i.aa = getelementptr i8, ptr %next.gep599, i64 16
  store <4 x float> %wide.load600, ptr %next.gep599, align 4, !tbaa !286
  store <4 x float> %wide.load601, ptr %i.aa, align 4, !tbaa !286
  %index.next602 = add nuw i64 %index598, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next602, %n.vec596
  br i1 %i.ab, label %middle.block603, label %vector.body597, !llvm.loop !656

middle.block603:                                  ; preds = %vector.body597
  br i1 %cmp.n604, label %._crit_edge.us.us.us.us.us.i, label %scalar.ph591.preheader

scalar.ph591.preheader:                           ; preds = %vector.memcheck593, %.preheader76.us.us.us.us.us.i, %middle.block603
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck593 ], [ 0, %.preheader76.us.us.us.us.us.i ], [ %n.vec596, %middle.block603 ] ; 3 uses
  %.581.us.us.us.us.us.i.ph = phi ptr [ %.483.us.us.us.us.us.i, %vector.memcheck593 ], [ %.483.us.us.us.us.us.i, %.preheader76.us.us.us.us.us.i ], [ %i.w, %middle.block603 ] ; 2 uses
  br i1 %lcmp.mod678.not, label %scalar.ph591.prol.loopexit, label %scalar.ph591.prol

scalar.ph591.prol:                                ; preds = %scalar.ph591.preheader, %scalar.ph591.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph591.prol ], [ %indvars.iv.i.ph, %scalar.ph591.preheader ] ; 2 uses
  %.581.us.us.us.us.us.i.prol = phi ptr [ %i.ae, %scalar.ph591.prol ], [ %.581.us.us.us.us.us.i.ph, %scalar.ph591.preheader ] ; 2 uses
  %prol.iter679 = phi i64 [ %prol.iter679.next, %scalar.ph591.prol ], [ 0, %scalar.ph591.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !286
  %i.ae = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i.prol, i64 4 ; 3 uses
  store float %i.ad, ptr %.581.us.us.us.us.us.i.prol, align 4, !tbaa !286
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter679.next = add i64 %prol.iter679, 1   ; 2 uses
  %prol.iter679.cmp.not = icmp eq i64 %prol.iter679.next, %xtraiter677
  br i1 %prol.iter679.cmp.not, label %scalar.ph591.prol.loopexit, label %scalar.ph591.prol, !llvm.loop !657

scalar.ph591.prol.loopexit:                       ; preds = %scalar.ph591.prol, %scalar.ph591.preheader
  %.lcssa608.unr = phi ptr [ poison, %scalar.ph591.preheader ], [ %i.ae, %scalar.ph591.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph591.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph591.prol ]
  %.581.us.us.us.us.us.i.unr = phi ptr [ %.581.us.us.us.us.us.i.ph, %scalar.ph591.preheader ], [ %i.ae, %scalar.ph591.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %._crit_edge.us.us.us.us.us.i, label %scalar.ph591

scalar.ph591:                                     ; preds = %scalar.ph591.prol.loopexit, %scalar.ph591
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %scalar.ph591 ], [ %indvars.iv.i.unr, %scalar.ph591.prol.loopexit ] ; 9 uses
  %.581.us.us.us.us.us.i = phi ptr [ %i.bl, %scalar.ph591 ], [ %.581.us.us.us.us.us.i.unr, %scalar.ph591.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !286
  %i.aj = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 4
  store float %i.ai, ptr %.581.us.us.us.us.us.i, align 4, !tbaa !286
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !286
  %i.an = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 8
  store float %i.am, ptr %i.aj, align 4, !tbaa !286
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !286
  %i.ar = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 12
  store float %i.aq, ptr %i.an, align 4, !tbaa !286
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !286
  %i.av = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 16
  store float %i.au, ptr %i.ar, align 4, !tbaa !286
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !286
  %i.az = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 20
  store float %i.ay, ptr %i.av, align 4, !tbaa !286
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !286
  %i.bd = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 24
  store float %i.bc, ptr %i.az, align 4, !tbaa !286
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !286
  %i.bh = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 28
  store float %i.bg, ptr %i.bd, align 4, !tbaa !286
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.06084.us.us.us.us.us.i, i64 %indvars.iv.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !286
  %i.bl = getelementptr inbounds nuw i8, ptr %.581.us.us.us.us.us.i, i64 32 ; 2 uses
  store float %i.bk, ptr %i.bh, align 4, !tbaa !286
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.us.us.us.us.us.i, label %scalar.ph591, !llvm.loop !658

._crit_edge.us.us.us.us.us.i:                     ; preds = %scalar.ph591.prol.loopexit, %scalar.ph591, %middle.block603
  %.lcssa401 = phi ptr [ %i.w, %middle.block603 ], [ %.lcssa608.unr, %scalar.ph591.prol.loopexit ], [ %i.bl, %scalar.ph591 ] ; 3 uses
  %i.bm = add nuw nsw i32 %.05985.us.us.us.us.us.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.06084.us.us.us.us.us.i, i64 %2
  %exitcond122.not.i = icmp eq i32 %i.bm, %6
  %indvar.next586 = add i64 %indvar585, 1
  br i1 %exitcond122.not.i, label %._crit_edge86.split.us.us.us.us.us.i, label %.preheader76.us.us.us.us.us.i, !llvm.loop !659

._crit_edge86.split.us.us.us.us.us.i:             ; preds = %._crit_edge.us.us.us.us.us.i
end_hunk_1
