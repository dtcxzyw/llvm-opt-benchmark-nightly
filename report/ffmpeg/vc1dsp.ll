Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1dsp?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 115
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 119
begin_hunk_0_@avg_no_rnd_vc1_chroma_mc4_c:bb.a
  %i.dn = mul nsw i32 %i.c, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.06364, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.d, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.06364, i64 %2 ; 6 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.e, %i.du
  %i.dw = getelementptr i8, ptr %i.ds, i64 1      ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nsw i32 %i.f, %i.dy
  %i.ea = add i32 %i.dn, 28
  %i.eb = add i32 %i.ea, %i.dr
  %i.ec = add i32 %i.eb, %i.dv
  %i.ed = add i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = add nuw nsw i32 %i.dk, 1
  %i.eg = add nuw nsw i32 %i.ef, %i.ee
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %.06265, align 1, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.06265, i64 1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !28
  %i.el = zext i8 %i.ek to i32
  %i.em = load i8, ptr %i.do, align 1, !tbaa !28
  %i.en = zext i8 %i.em to i32
  %i.eo = mul nsw i32 %i.c, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.06364, i64 2 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !28
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nsw i32 %i.d, %i.er
  %i.et = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nsw i32 %i.e, %i.eu
  %i.ew = getelementptr i8, ptr %i.ds, i64 2      ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !28
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nsw i32 %i.f, %i.ey
  %i.fa = add i32 %i.eo, 28
  %i.fb = add i32 %i.fa, %i.es
  %i.fc = add i32 %i.fb, %i.ev
  %i.fd = add i32 %i.fc, %i.ez
  %i.fe = lshr i32 %i.fd, 6
  %i.ff = add nuw nsw i32 %i.el, 1
  %i.fg = add nuw nsw i32 %i.ff, %i.fe
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.ej, align 1, !tbaa !28
  %i.fj = getelementptr inbounds nuw i8, ptr %.06265, i64 2
  %i.fk = zext i8 %store_forwarded to i32
  %i.fl = load i8, ptr %i.ep, align 1, !tbaa !28
  %i.fm = zext i8 %i.fl to i32
  %i.fn = mul nsw i32 %i.c, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.06364, i64 3 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.d, %i.fq
  %i.fs = load i8, ptr %i.ew, align 1, !tbaa !28
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nsw i32 %i.e, %i.ft
  %i.fv = getelementptr i8, ptr %i.ds, i64 3      ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nsw i32 %i.f, %i.fx
  %i.fz = add i32 %i.fn, 28
  %i.ga = add i32 %i.fz, %i.fr
  %i.gb = add i32 %i.ga, %i.fu
  %i.gc = add i32 %i.gb, %i.fy
  %i.gd = lshr i32 %i.gc, 6
  %i.ge = add nuw nsw i32 %i.fk, 1
  %i.gf = add nuw nsw i32 %i.ge, %i.gd
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = trunc i32 %i.gg to i8
  store i8 %i.gh, ptr %i.fj, align 1, !tbaa !28
  %i.gi = getelementptr inbounds nuw i8, ptr %.06265, i64 3 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !28
  %i.gk = zext i8 %i.gj to i32
  %i.gl = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.gm = zext i8 %i.gl to i32
  %i.gn = mul nsw i32 %i.c, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.06364, i64 4
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !28
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nsw i32 %i.d, %i.gq
  %i.gs = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nsw i32 %i.e, %i.gt
  %i.gv = getelementptr i8, ptr %i.ds, i64 4
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !28
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nsw i32 %i.f, %i.gx
  %i.gz = add i32 %i.gn, 28
  %i.ha = add i32 %i.gz, %i.gr
  %i.hb = add i32 %i.ha, %i.gu
  %i.hc = add i32 %i.hb, %i.gy
  %i.hd = lshr i32 %i.hc, 6
  %i.he = add nuw nsw i32 %i.gk, 1
  %i.hf = add nuw nsw i32 %i.he, %i.hd
  %i.hg = lshr i32 %i.hf, 1
  %i.hh = trunc i32 %i.hg to i8                   ; 2 uses
  store i8 %i.hh, ptr %i.gi, align 1, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %.06265, i64 %2
  %i.hj = add nuw nsw i32 %.066, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hj, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph.lver.orig, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_h_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %.not13 = icmp eq i32 %4, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.a = add nsw i32 %4, -1
  %i.b = ashr i32 %2, 16
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = sub nsw i32 %i.i, %i.f
  %i.k = and i32 %2, 65535
  %i.l = mul nsw i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 16
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.e, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.o, ptr %0, align 1, !tbaa !28
  %i.q = add nsw i32 %2, %3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.016.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.01115.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01214.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.a, %.lr.ph.prol ]
  %i.r = icmp eq i32 %4, 1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.016 = phi ptr [ %i.ax, %.lr.ph ], [ %.016.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01115 = phi i32 [ %i.ay, %.lr.ph ], [ %.01115.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01214 = phi i32 [ %i.ai, %.lr.ph ], [ %.01214.unr, %.lr.ph.prol.loopexit ]
  %i.s = ashr i32 %.01115, 16
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28    ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr i8, ptr %i.u, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i32
  %i.aa = sub nsw i32 %i.z, %i.w
  %i.ab = and i32 %.01115, 65535
  %i.ac = mul nsw i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc i32 %i.ad to i8
  %i.af = add i8 %i.v, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.016, i64 1
  store i8 %i.af, ptr %.016, align 1, !tbaa !28
  %i.ah = add nsw i32 %.01115, %3                 ; 3 uses
  %i.ai = add nsw i32 %.01214, -2                 ; 2 uses
  %i.aj = ashr i32 %i.ah, 16
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28  ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.al, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.aq, %i.an
  %i.as = and i32 %i.ah, 65535
  %i.at = mul nsw i32 %i.ar, %i.as
  %i.au = lshr i32 %i.at, 16
  %i.av = trunc i32 %i.au to i8
  %i.aw = add i8 %i.am, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.016, i64 2
  store i8 %i.aw, ptr %i.ag, align 1, !tbaa !28
  %i.ay = add nsw i32 %i.ah, %3
  %.not.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_single_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %.not.i4 = icmp eq i32 %4, 0
  br i1 %.not.i4, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = zext i32 %4 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.c, %i.a
  %diff.check10 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i32 %4, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 4294967280               ; 7 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %4, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %n.vec
  %i.k = getelementptr i8, ptr %1, i64 %n.vec
  %i.l = getelementptr i8, ptr %2, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep12 = getelementptr i8, ptr %1, i64 %index
  %next.gep13 = getelementptr i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !28 ; 2 uses
  %i.m = zext <16 x i8> %wide.load to <16 x i32>
  %wide.load14 = load <16 x i8>, ptr %next.gep13, align 1, !tbaa !28
  %i.n = zext <16 x i8> %wide.load14 to <16 x i32>
  %i.o = sub nsw <16 x i32> %i.n, %i.m
  %i.p = mul nsw <16 x i32> %i.o, %broadcast.splat
  %i.q = lshr <16 x i32> %i.p, splat (i32 16)
  %i.r = trunc <16 x i32> %i.q to <16 x i8>
  %i.s = add <16 x i8> %wide.load, %i.r
  store <16 x i8> %i.s, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.d, 4294967292             ; 6 uses
  %i.u = trunc nuw i64 %n.vec15 to i32
  %i.v = sub i32 %4, %i.u
  %i.w = getelementptr i8, ptr %0, i64 %n.vec15
  %i.x = getelementptr i8, ptr %1, i64 %n.vec15
  %i.y = getelementptr i8, ptr %2, i64 %n.vec15
  %broadcast.splatinsert16 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat17 = shufflevector <4 x i32> %broadcast.splatinsert16, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 4 uses
  %next.gep19 = getelementptr i8, ptr %0, i64 %index18
  %next.gep20 = getelementptr i8, ptr %1, i64 %index18
  %next.gep21 = getelementptr i8, ptr %2, i64 %index18
  %wide.load22 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !28 ; 2 uses
  %i.z = zext <4 x i8> %wide.load22 to <4 x i32>
  %wide.load23 = load <4 x i8>, ptr %next.gep21, align 1, !tbaa !28
  %i.aa = zext <4 x i8> %wide.load23 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.aa, %i.z
  %i.ac = mul nsw <4 x i32> %i.ab, %broadcast.splat17
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 16)
  %i.ae = trunc <4 x i32> %i.ad to <4 x i8>
  %i.af = add <4 x i8> %wide.load22, %i.ae
  store <4 x i8> %i.af, ptr %next.gep19, align 1, !tbaa !28
  %index.next24 = add nuw i64 %index18, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next24, %n.vec15
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec15, %i.d
  br i1 %cmp.n25, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i8.ph = phi i32 [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 4 uses
  %.023.i7.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.024.i6.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %.025.i5.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.022.i8.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = add nsw i32 %.022.i8.ph, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i6.ph, i64 1
  %i.aj = load i8, ptr %.024.i6.ph, align 1, !tbaa !28 ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.025.i5.ph, i64 1
  %i.am = load i8, ptr %.025.i5.ph, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %i.an, %i.ak
  %i.ap = mul nsw i32 %i.ao, %3
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = add i8 %i.aj, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.023.i7.ph, i64 1
  store i8 %i.as, ptr %.023.i7.ph, align 1, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.i8.unr = phi i32 [ %.022.i8.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.023.i7.unr = phi ptr [ %.023.i7.ph, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.024.i6.unr = phi ptr [ %.024.i6.ph, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.025.i5.unr = phi ptr [ %.025.i5.ph, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %i.au = icmp eq i32 %.022.i8.ph, 1
  br i1 %i.au, label %sprite_v_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022.i8 = phi i32 [ %i.bh, %.lr.ph ], [ %.022.i8.unr, %.lr.ph.prol.loopexit ]
  %.023.i7 = phi ptr [ %i.bt, %.lr.ph ], [ %.023.i7.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.024.i6 = phi ptr [ %i.bi, %.lr.ph ], [ %.024.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.025.i5 = phi ptr [ %i.bl, %.lr.ph ], [ %.025.i5.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i6, i64 1
  %i.aw = load i8, ptr %.024.i6, align 1, !tbaa !28 ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.i5, i64 1
  %i.az = load i8, ptr %.025.i5, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %i.bc = mul nsw i32 %i.bb, %3
  %i.bd = lshr i32 %i.bc, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = add i8 %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.023.i7, i64 1
  store i8 %i.bf, ptr %.023.i7, align 1, !tbaa !28
  %i.bh = add nsw i32 %.022.i8, -2                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i6, i64 2
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !28  ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.025.i5, i64 2
  %i.bm = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bk
  %i.bp = mul nsw i32 %i.bo, %3
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = add i8 %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.023.i7, i64 2
  store i8 %i.bs, ptr %i.bg, align 1, !tbaa !28
  %.not.i.1 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.1, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !123

sprite_v_template.exit:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_double_noscale_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %.not.i4 = icmp eq i32 %4, 0
  br i1 %.not.i4, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = zext i32 %4 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.c, %i.a
  %diff.check10 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i32 %4, 16
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 4294967280               ; 7 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %4, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %n.vec
  %i.k = getelementptr i8, ptr %1, i64 %n.vec
  %i.l = getelementptr i8, ptr %2, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep12 = getelementptr i8, ptr %1, i64 %index
  %next.gep13 = getelementptr i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !28 ; 2 uses
  %i.m = zext <16 x i8> %wide.load to <16 x i32>
  %wide.load14 = load <16 x i8>, ptr %next.gep13, align 1, !tbaa !28
  %i.n = zext <16 x i8> %wide.load14 to <16 x i32>
  %i.o = sub nsw <16 x i32> %i.n, %i.m
  %i.p = mul nsw <16 x i32> %i.o, %broadcast.splat
  %i.q = lshr <16 x i32> %i.p, splat (i32 16)
  %i.r = trunc <16 x i32> %i.q to <16 x i8>
  %i.s = add <16 x i8> %wide.load, %i.r
  store <16 x i8> %i.s, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.d, 4294967292             ; 6 uses
  %i.u = trunc nuw i64 %n.vec15 to i32
  %i.v = sub i32 %4, %i.u
  %i.w = getelementptr i8, ptr %0, i64 %n.vec15
  %i.x = getelementptr i8, ptr %1, i64 %n.vec15
  %i.y = getelementptr i8, ptr %2, i64 %n.vec15
  %broadcast.splatinsert16 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat17 = shufflevector <4 x i32> %broadcast.splatinsert16, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 4 uses
  %next.gep19 = getelementptr i8, ptr %0, i64 %index18
  %next.gep20 = getelementptr i8, ptr %1, i64 %index18
  %next.gep21 = getelementptr i8, ptr %2, i64 %index18
  %wide.load22 = load <4 x i8>, ptr %next.gep20, align 1, !tbaa !28 ; 2 uses
  %i.z = zext <4 x i8> %wide.load22 to <4 x i32>
  %wide.load23 = load <4 x i8>, ptr %next.gep21, align 1, !tbaa !28
  %i.aa = zext <4 x i8> %wide.load23 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.aa, %i.z
  %i.ac = mul nsw <4 x i32> %i.ab, %broadcast.splat17
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 16)
  %i.ae = trunc <4 x i32> %i.ad to <4 x i8>
  %i.af = add <4 x i8> %wide.load22, %i.ae
  store <4 x i8> %i.af, ptr %next.gep19, align 1, !tbaa !28
  %index.next24 = add nuw i64 %index18, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next24, %n.vec15
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec15, %i.d
  br i1 %cmp.n25, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i8.ph = phi i32 [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 4 uses
  %.023.i7.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.024.i6.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %.029.i5.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.022.i8.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = add nsw i32 %.022.i8.ph, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i6.ph, i64 1
  %i.aj = load i8, ptr %.024.i6.ph, align 1, !tbaa !28 ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.029.i5.ph, i64 1
  %i.am = load i8, ptr %.029.i5.ph, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %i.an, %i.ak
  %i.ap = mul nsw i32 %i.ao, %3
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = add i8 %i.aj, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.023.i7.ph, i64 1
  store i8 %i.as, ptr %.023.i7.ph, align 1, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.i8.unr = phi i32 [ %.022.i8.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.023.i7.unr = phi ptr [ %.023.i7.ph, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.024.i6.unr = phi ptr [ %.024.i6.ph, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.029.i5.unr = phi ptr [ %.029.i5.ph, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %i.au = icmp eq i32 %.022.i8.ph, 1
  br i1 %i.au, label %sprite_v_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022.i8 = phi i32 [ %i.bh, %.lr.ph ], [ %.022.i8.unr, %.lr.ph.prol.loopexit ]
  %.023.i7 = phi ptr [ %i.bt, %.lr.ph ], [ %.023.i7.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.024.i6 = phi ptr [ %i.bi, %.lr.ph ], [ %.024.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.029.i5 = phi ptr [ %i.bl, %.lr.ph ], [ %.029.i5.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i6, i64 1
  %i.aw = load i8, ptr %.024.i6, align 1, !tbaa !28 ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.029.i5, i64 1
  %i.az = load i8, ptr %.029.i5, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %i.bc = mul nsw i32 %i.bb, %3
  %i.bd = lshr i32 %i.bc, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = add i8 %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.023.i7, i64 1
  store i8 %i.bf, ptr %.023.i7, align 1, !tbaa !28
  %i.bh = add nsw i32 %.022.i8, -2                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i6, i64 2
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !28  ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.029.i5, i64 2
  %i.bm = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bk
  %i.bp = mul nsw i32 %i.bo, %3
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = add i8 %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.023.i7, i64 2
  store i8 %i.bs, ptr %i.bg, align 1, !tbaa !28
  %.not.i.1 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.1, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !126

sprite_v_template.exit:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_double_onescale_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = ptrtoaddr ptr %4 to i64
  %.not.i6 = icmp eq i32 %6, 0
  br i1 %.not.i6, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = zext i32 %6 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.c, %i.a
  %diff.check15 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check15
  %i.h = sub i64 %i.d, %i.a
  %diff.check16 = icmp ugt i64 %i.h, -16
  %conflict.rdx17 = or i1 %conflict.rdx, %diff.check16
  br i1 %conflict.rdx17, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i32 %6, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 4294967280               ; 8 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %6, %i.j
  %i.l = getelementptr i8, ptr %0, i64 %n.vec
  %i.m = getelementptr i8, ptr %1, i64 %n.vec
  %i.n = getelementptr i8, ptr %2, i64 %n.vec
  %i.o = getelementptr i8, ptr %4, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert19 = insertelement <16 x i32> poison, i32 %5, i64 0
  %broadcast.splat20 = shufflevector <16 x i32> %broadcast.splatinsert19, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep21 = getelementptr i8, ptr %1, i64 %index
  %next.gep22 = getelementptr i8, ptr %2, i64 %index
  %next.gep23 = getelementptr i8, ptr %4, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep21, align 1, !tbaa !28
  %i.p = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %wide.load24 = load <16 x i8>, ptr %next.gep22, align 1, !tbaa !28
  %i.q = zext <16 x i8> %wide.load24 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.q, %i.p
  %i.s = mul nsw <16 x i32> %i.r, %broadcast.splat
  %i.t = ashr <16 x i32> %i.s, splat (i32 16)
  %i.u = add nsw <16 x i32> %i.t, %i.p            ; 2 uses
  %wide.load25 = load <16 x i8>, ptr %next.gep23, align 1, !tbaa !28
  %i.v = zext <16 x i8> %wide.load25 to <16 x i32>
  %i.w = sub nsw <16 x i32> %i.v, %i.u
  %i.x = mul nsw <16 x i32> %i.w, %broadcast.splat20
  %i.y = lshr <16 x i32> %i.x, splat (i32 16)
  %i.z = add nsw <16 x i32> %i.y, %i.u
  %i.aa = trunc <16 x i32> %i.z to <16 x i8>
  store <16 x i8> %i.aa, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.e, 4294967292             ; 7 uses
  %i.ac = trunc nuw i64 %n.vec26 to i32
  %i.ad = sub i32 %6, %i.ac
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec26
  %i.af = getelementptr i8, ptr %1, i64 %n.vec26
  %i.ag = getelementptr i8, ptr %2, i64 %n.vec26
  %i.ah = getelementptr i8, ptr %4, i64 %n.vec26
  %broadcast.splatinsert27 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat28 = shufflevector <4 x i32> %broadcast.splatinsert27, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat30 = shufflevector <4 x i32> %broadcast.splatinsert29, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 5 uses
  %next.gep32 = getelementptr i8, ptr %0, i64 %index31
  %next.gep33 = getelementptr i8, ptr %1, i64 %index31
  %next.gep34 = getelementptr i8, ptr %2, i64 %index31
  %next.gep35 = getelementptr i8, ptr %4, i64 %index31
  %wide.load36 = load <4 x i8>, ptr %next.gep33, align 1, !tbaa !28
  %i.ai = zext <4 x i8> %wide.load36 to <4 x i32> ; 2 uses
  %wide.load37 = load <4 x i8>, ptr %next.gep34, align 1, !tbaa !28
  %i.aj = zext <4 x i8> %wide.load37 to <4 x i32>
  %i.ak = sub nsw <4 x i32> %i.aj, %i.ai
  %i.al = mul nsw <4 x i32> %i.ak, %broadcast.splat28
  %i.am = ashr <4 x i32> %i.al, splat (i32 16)
  %i.an = add nsw <4 x i32> %i.am, %i.ai          ; 2 uses
  %wide.load38 = load <4 x i8>, ptr %next.gep35, align 1, !tbaa !28
  %i.ao = zext <4 x i8> %wide.load38 to <4 x i32>
  %i.ap = sub nsw <4 x i32> %i.ao, %i.an
  %i.aq = mul nsw <4 x i32> %i.ap, %broadcast.splat30
  %i.ar = lshr <4 x i32> %i.aq, splat (i32 16)
  %i.as = add nsw <4 x i32> %i.ar, %i.an
  %i.at = trunc <4 x i32> %i.as to <4 x i8>
  store <4 x i8> %i.at, ptr %next.gep32, align 1, !tbaa !28
  %index.next39 = add nuw i64 %index31, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next39, %n.vec26
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.vec26, %i.e
  br i1 %cmp.n40, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i11.ph = phi i32 [ %6, %iter.check ], [ %6, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 4 uses
  %.023.i10.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 3 uses
  %.024.i9.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 3 uses
  %.025.i8.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ] ; 3 uses
  %.029.i7.ph = phi ptr [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.022.i11.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.av = add nsw i32 %.022.i11.ph, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %.024.i9.ph, i64 1
  %i.ax = load i8, ptr %.024.i9.ph, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i8.ph, i64 1
  %i.ba = load i8, ptr %.025.i8.ph, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.bb, %i.ay
  %i.bd = mul nsw i32 %i.bc, %3
  %i.be = ashr i32 %i.bd, 16
  %i.bf = add nsw i32 %i.be, %i.ay                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.029.i7.ph, i64 1
  %i.bh = load i8, ptr %.029.i7.ph, align 1, !tbaa !28
  %i.bi = zext i8 %i.bh to i32
  %i.bj = sub nsw i32 %i.bi, %i.bf
  %i.bk = mul nsw i32 %i.bj, %5
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = add nsw i32 %i.bl, %i.bf
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.023.i10.ph, i64 1
  store i8 %i.bn, ptr %.023.i10.ph, align 1, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.i11.unr = phi i32 [ %.022.i11.ph, %.lr.ph.preheader ], [ %i.av, %.lr.ph.prol ]
  %.023.i10.unr = phi ptr [ %.023.i10.ph, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %.024.i9.unr = phi ptr [ %.024.i9.ph, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.025.i8.unr = phi ptr [ %.025.i8.ph, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.029.i7.unr = phi ptr [ %.029.i7.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bp = icmp eq i32 %.022.i11.ph, 1
  br i1 %i.bp, label %sprite_v_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022.i11 = phi i32 [ %i.cj, %.lr.ph ], [ %.022.i11.unr, %.lr.ph.prol.loopexit ]
  %.023.i10 = phi ptr [ %i.dc, %.lr.ph ], [ %.023.i10.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.024.i9 = phi ptr [ %i.ck, %.lr.ph ], [ %.024.i9.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.025.i8 = phi ptr [ %i.cn, %.lr.ph ], [ %.025.i8.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.029.i7 = phi ptr [ %i.cu, %.lr.ph ], [ %.029.i7.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i9, i64 1
  %i.br = load i8, ptr %.024.i9, align 1, !tbaa !28
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.025.i8, i64 1
  %i.bu = load i8, ptr %.025.i8, align 1, !tbaa !28
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %i.bx = mul nsw i32 %i.bw, %3
  %i.by = ashr i32 %i.bx, 16
  %i.bz = add nsw i32 %i.by, %i.bs                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.029.i7, i64 1
  %i.cb = load i8, ptr %.029.i7, align 1, !tbaa !28
  %i.cc = zext i8 %i.cb to i32
  %i.cd = sub nsw i32 %i.cc, %i.bz
  %i.ce = mul nsw i32 %i.cd, %5
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = add nsw i32 %i.cf, %i.bz
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.023.i10, i64 1
  store i8 %i.ch, ptr %.023.i10, align 1, !tbaa !28
  %i.cj = add nsw i32 %.022.i11, -2               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.024.i9, i64 2
  %i.cl = load i8, ptr %i.bq, align 1, !tbaa !28
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.025.i8, i64 2
  %i.co = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = sub nsw i32 %i.cp, %i.cm
  %i.cr = mul nsw i32 %i.cq, %3
  %i.cs = ashr i32 %i.cr, 16
  %i.ct = add nsw i32 %i.cs, %i.cm                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.029.i7, i64 2
  %i.cv = load i8, ptr %i.ca, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 %i.cw, %i.ct
  %i.cy = mul nsw i32 %i.cx, %5
  %i.cz = lshr i32 %i.cy, 16
  %i.da = add nsw i32 %i.cz, %i.ct
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.023.i10, i64 2
  store i8 %i.db, ptr %i.ci, align 1, !tbaa !28
  %.not.i.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.1, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !129

sprite_v_template.exit:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_double_twoscale_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = ptrtoaddr ptr %4 to i64
  %i.e = ptrtoaddr ptr %5 to i64
  %.not.i8 = icmp eq i32 %8, 0
  br i1 %.not.i8, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = zext i32 %8 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %8, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.g = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.g, -16
  %i.h = sub i64 %i.c, %i.a
  %diff.check20 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check20
  %i.i = sub i64 %i.d, %i.a
  %diff.check21 = icmp ugt i64 %i.i, -16
  %conflict.rdx22 = or i1 %conflict.rdx, %diff.check21
  %i.j = sub i64 %i.e, %i.a
  %diff.check23 = icmp ugt i64 %i.j, -16
  %conflict.rdx24 = or i1 %conflict.rdx22, %diff.check23
  br i1 %conflict.rdx24, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check25 = icmp ult i32 %8, 16
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.f, 12
  %n.vec = and i64 %i.f, 4294967280               ; 9 uses
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %8, %i.l
  %i.n = getelementptr i8, ptr %0, i64 %n.vec
  %i.o = getelementptr i8, ptr %1, i64 %n.vec
  %i.p = getelementptr i8, ptr %2, i64 %n.vec
  %i.q = getelementptr i8, ptr %5, i64 %n.vec
  %i.r = getelementptr i8, ptr %4, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <16 x i32> poison, i32 %6, i64 0
  %broadcast.splat27 = shufflevector <16 x i32> %broadcast.splatinsert26, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <16 x i32> poison, i32 %7, i64 0
  %broadcast.splat29 = shufflevector <16 x i32> %broadcast.splatinsert28, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep30 = getelementptr i8, ptr %1, i64 %index
  %next.gep31 = getelementptr i8, ptr %2, i64 %index
  %next.gep32 = getelementptr i8, ptr %5, i64 %index
  %next.gep33 = getelementptr i8, ptr %4, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep30, align 1, !tbaa !28
  %i.s = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %wide.load34 = load <16 x i8>, ptr %next.gep31, align 1, !tbaa !28
  %i.t = zext <16 x i8> %wide.load34 to <16 x i32>
  %i.u = sub nsw <16 x i32> %i.t, %i.s
  %i.v = mul nsw <16 x i32> %i.u, %broadcast.splat
  %i.w = ashr <16 x i32> %i.v, splat (i32 16)
  %i.x = add nsw <16 x i32> %i.w, %i.s            ; 2 uses
  %wide.load35 = load <16 x i8>, ptr %next.gep33, align 1, !tbaa !28
  %i.y = zext <16 x i8> %wide.load35 to <16 x i32> ; 2 uses
  %wide.load36 = load <16 x i8>, ptr %next.gep32, align 1, !tbaa !28
  %i.z = zext <16 x i8> %wide.load36 to <16 x i32>
  %i.aa = sub nsw <16 x i32> %i.z, %i.y
  %i.ab = mul nsw <16 x i32> %i.aa, %broadcast.splat27
  %i.ac = ashr <16 x i32> %i.ab, splat (i32 16)
  %i.ad = sub nsw <16 x i32> %i.y, %i.x
  %i.ae = add nsw <16 x i32> %i.ad, %i.ac
  %i.af = mul nsw <16 x i32> %i.ae, %broadcast.splat29
  %i.ag = lshr <16 x i32> %i.af, splat (i32 16)
  %i.ah = add nsw <16 x i32> %i.ag, %i.x
  %i.ai = trunc <16 x i32> %i.ah to <16 x i8>
  store <16 x i8> %i.ai, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.f, 4294967292             ; 8 uses
  %i.ak = trunc nuw i64 %n.vec37 to i32
  %i.al = sub i32 %8, %i.ak
  %i.am = getelementptr i8, ptr %0, i64 %n.vec37
  %i.an = getelementptr i8, ptr %1, i64 %n.vec37
  %i.ao = getelementptr i8, ptr %2, i64 %n.vec37
  %i.ap = getelementptr i8, ptr %5, i64 %n.vec37
  %i.aq = getelementptr i8, ptr %4, i64 %n.vec37
  %broadcast.splatinsert38 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat39 = shufflevector <4 x i32> %broadcast.splatinsert38, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 6 uses
  %next.gep45 = getelementptr i8, ptr %0, i64 %index44
  %next.gep46 = getelementptr i8, ptr %1, i64 %index44
  %next.gep47 = getelementptr i8, ptr %2, i64 %index44
  %next.gep48 = getelementptr i8, ptr %5, i64 %index44
  %next.gep49 = getelementptr i8, ptr %4, i64 %index44
  %wide.load50 = load <4 x i8>, ptr %next.gep46, align 1, !tbaa !28
  %i.ar = zext <4 x i8> %wide.load50 to <4 x i32> ; 2 uses
  %wide.load51 = load <4 x i8>, ptr %next.gep47, align 1, !tbaa !28
  %i.as = zext <4 x i8> %wide.load51 to <4 x i32>
  %i.at = sub nsw <4 x i32> %i.as, %i.ar
  %i.au = mul nsw <4 x i32> %i.at, %broadcast.splat39
  %i.av = ashr <4 x i32> %i.au, splat (i32 16)
  %i.aw = add nsw <4 x i32> %i.av, %i.ar          ; 2 uses
  %wide.load52 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !28
  %i.ax = zext <4 x i8> %wide.load52 to <4 x i32> ; 2 uses
  %wide.load53 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !28
  %i.ay = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.az = sub nsw <4 x i32> %i.ay, %i.ax
  %i.ba = mul nsw <4 x i32> %i.az, %broadcast.splat41
  %i.bb = ashr <4 x i32> %i.ba, splat (i32 16)
  %i.bc = sub nsw <4 x i32> %i.ax, %i.aw
  %i.bd = add nsw <4 x i32> %i.bc, %i.bb
  %i.be = mul nsw <4 x i32> %i.bd, %broadcast.splat43
  %i.bf = lshr <4 x i32> %i.be, splat (i32 16)
  %i.bg = add nsw <4 x i32> %i.bf, %i.aw
  %i.bh = trunc <4 x i32> %i.bg to <4 x i8>
  store <4 x i8> %i.bh, ptr %next.gep45, align 1, !tbaa !28
  %index.next54 = add nuw i64 %index44, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next54, %n.vec37
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %n.vec37, %i.f
  br i1 %cmp.n55, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i14.ph = phi i32 [ %8, %iter.check ], [ %8, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.023.i13.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.024.i12.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.025.i11.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.027.i10.ph = phi ptr [ %5, %iter.check ], [ %5, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.029.i9.ph = phi ptr [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022.i14 = phi i32 [ %i.bj, %.lr.ph ], [ %.022.i14.ph, %.lr.ph.preheader ]
  %.023.i13 = phi ptr [ %i.cj, %.lr.ph ], [ %.023.i13.ph, %.lr.ph.preheader ] ; 2 uses
  %.024.i12 = phi ptr [ %i.bk, %.lr.ph ], [ %.024.i12.ph, %.lr.ph.preheader ] ; 2 uses
  %.025.i11 = phi ptr [ %i.bn, %.lr.ph ], [ %.025.i11.ph, %.lr.ph.preheader ] ; 2 uses
  %.027.i10 = phi ptr [ %i.bx, %.lr.ph ], [ %.027.i10.ph, %.lr.ph.preheader ] ; 2 uses
  %.029.i9 = phi ptr [ %i.bu, %.lr.ph ], [ %.029.i9.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bj = add nsw i32 %.022.i14, -1               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i12, i64 1
  %i.bl = load i8, ptr %.024.i12, align 1, !tbaa !28
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.i11, i64 1
  %i.bo = load i8, ptr %.025.i11, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub nsw i32 %i.bp, %i.bm
  %i.br = mul nsw i32 %i.bq, %3
  %i.bs = ashr i32 %i.br, 16
  %i.bt = add nsw i32 %i.bs, %i.bm                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.029.i9, i64 1
  %i.bv = load i8, ptr %.029.i9, align 1, !tbaa !28
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.027.i10, i64 1
  %i.by = load i8, ptr %.027.i10, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %i.ca = sub nsw i32 %i.bz, %i.bw
  %i.cb = mul nsw i32 %i.ca, %6
  %i.cc = ashr i32 %i.cb, 16
  %i.cd = sub nsw i32 %i.bw, %i.bt
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = mul nsw i32 %i.ce, %7
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = add nsw i32 %i.cg, %i.bt
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.023.i13, i64 1
  store i8 %i.ci, ptr %.023.i13, align 1, !tbaa !28
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !132

sprite_v_template.exit:                           ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

declare i32 @ff_startcode_find_candidate_c(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @vc1_unescape_buffer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #5 {
bb.a:
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %.preheader, label %.preheader40

.preheader40:                                     ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.d, ptr %2, align 1, !tbaa !28
  %exitcond.not = icmp eq i32 %1, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.g, ptr %i.e, align 1, !tbaa !28
end_hunk_0
