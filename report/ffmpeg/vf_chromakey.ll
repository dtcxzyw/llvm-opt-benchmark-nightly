Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_chromakey?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@do_chromakey16_slice:.preheader48
  %i.dt = getelementptr inbounds i8, ptr %i.do, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 1, !tbaa !46
  br label %.split.us

.split.us:                                        ; preds = %get_pixel16_uv.exit.1, %bb.b, %.preheader
  %.sroa.870.2 = phi i16 [ %.sroa.870.1, %.preheader ], [ %i.dn, %bb.b ], [ %.sroa.870.1, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.569.2 = phi i16 [ %.sroa.569.1, %.preheader ], [ %i.cu, %bb.b ], [ %i.cu, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.068.3 = phi i16 [ %.sroa.068.1, %.preheader ], [ %.sroa.068.2, %bb.b ], [ %.sroa.068.2, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.8.2 = phi i16 [ %.sroa.8.1, %.preheader ], [ %i.du, %bb.b ], [ %.sroa.8.1, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.5.2 = phi i16 [ %.sroa.5.1, %.preheader ], [ %i.db, %bb.b ], [ %i.db, %get_pixel16_uv.exit.1 ] ; 3 uses
  %.sroa.0.3 = phi i16 [ %.sroa.0.1, %.preheader ], [ %.sroa.0.2, %bb.b ], [ %.sroa.0.2, %get_pixel16_uv.exit.1 ] ; 3 uses
  br i1 %i.bm, label %.preheader.split.preheader.1, label %.split.us.1

.preheader.split.preheader.1:                     ; preds = %.split.us
  %.not93 = icmp eq i64 %indvars.iv, 0
  br i1 %.not93, label %get_pixel16_uv.exit.1.1, label %bb.c

bb.c:                                             ; preds = %.preheader.split.preheader.1
  %i.dv = trunc i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, -1
  %i.dx = lshr i32 %i.dw, %i.ak
  %i.dy = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.dz = load i32, ptr %i.y, align 4, !tbaa !47
  %i.ea = mul nsw i32 %i.dz, %i.bl
  %i.eb = shl nuw nsw i32 %i.dx, 1                ; 2 uses
  %i.ec = add nsw i32 %i.ea, %i.eb
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.dy, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !46
  %i.eg = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.eh = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ei = mul nsw i32 %i.eh, %i.bl
  %i.ej = add nsw i32 %i.ei, %i.eb
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 1, !tbaa !46
  br label %get_pixel16_uv.exit.1.1

get_pixel16_uv.exit.1.1:                          ; preds = %bb.c, %.preheader.split.preheader.1
  %.sroa.1171.2 = phi i16 [ %i.ef, %bb.c ], [ %.sroa.1171.1, %.preheader.split.preheader.1 ] ; 2 uses
  %.sroa.11.2 = phi i16 [ %i.em, %bb.c ], [ %.sroa.11.1, %.preheader.split.preheader.1 ] ; 2 uses
  %i.en = trunc nuw nsw i64 %indvars.iv to i32
  %i.eo = lshr i32 %i.en, %i.ak
  %i.ep = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.eq = load i32, ptr %i.y, align 4, !tbaa !47
  %i.er = mul nsw i32 %i.eq, %i.bl
  %i.es = shl nuw nsw i32 %i.eo, 1                ; 2 uses
  %i.et = add nsw i32 %i.er, %i.es
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %i.ep, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 1, !tbaa !46 ; 2 uses
  %i.ex = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ey = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ez = mul nsw i32 %i.ey, %i.bl
  %i.fa = add nsw i32 %i.ez, %i.es
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 1, !tbaa !46 ; 2 uses
  %i.fe = add nuw nsw i64 %indvars.iv, 2
  %.not94 = icmp samesign ugt i64 %i.fe, %i.av
  br i1 %.not94, label %.split.us.1, label %bb.d

bb.d:                                             ; preds = %get_pixel16_uv.exit.1.1
  %i.ff = trunc i64 %indvars.iv to i32
  %i.fg = add i32 %i.ff, 1
  %i.fh = lshr i32 %i.fg, %i.ak
  %i.fi = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.fj = load i32, ptr %i.y, align 4, !tbaa !47
  %i.fk = mul nsw i32 %i.fj, %i.bl
  %i.fl = shl nuw nsw i32 %i.fh, 1                ; 2 uses
  %i.fm = add nsw i32 %i.fk, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fi, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 1, !tbaa !46
  %i.fq = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.fr = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.fs = mul nsw i32 %i.fr, %i.bl
  %i.ft = add nsw i32 %i.fs, %i.fl
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fq, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 1, !tbaa !46
  br label %.split.us.1

.split.us.1:                                      ; preds = %get_pixel16_uv.exit.1.1, %bb.d, %.split.us
  %.sroa.1773.3 = phi i16 [ %.sroa.1773.1, %.split.us ], [ %i.fp, %bb.d ], [ %.sroa.1773.1, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.1472.3 = phi i16 [ %.sroa.1472.1, %.split.us ], [ %i.ew, %bb.d ], [ %i.ew, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.1171.3 = phi i16 [ %.sroa.1171.1, %.split.us ], [ %.sroa.1171.2, %bb.d ], [ %.sroa.1171.2, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.17.3 = phi i16 [ %.sroa.17.1, %.split.us ], [ %i.fw, %bb.d ], [ %.sroa.17.1, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.14.3 = phi i16 [ %.sroa.14.1, %.split.us ], [ %i.fd, %bb.d ], [ %i.fd, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  %.sroa.11.3 = phi i16 [ %.sroa.11.1, %.split.us ], [ %.sroa.11.2, %bb.d ], [ %.sroa.11.2, %get_pixel16_uv.exit.1.1 ] ; 3 uses
  br i1 %i.bs, label %.preheader.split.preheader.2, label %.split.us.2

.preheader.split.preheader.2:                     ; preds = %.split.us.1
  %.not99 = icmp eq i64 %indvars.iv, 0
  br i1 %.not99, label %get_pixel16_uv.exit.1.2, label %bb.e

bb.e:                                             ; preds = %.preheader.split.preheader.2
  %i.fx = trunc i64 %indvars.iv to i32
  %i.fy = add i32 %i.fx, -1
  %i.fz = lshr i32 %i.fy, %i.ak
  %i.ga = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.gb = load i32, ptr %i.y, align 4, !tbaa !47
  %i.gc = mul nsw i32 %i.gb, %i.br
  %i.gd = shl nuw nsw i32 %i.fz, 1                ; 2 uses
  %i.ge = add nsw i32 %i.gc, %i.gd
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %i.ga, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 1, !tbaa !46
  %i.gi = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.gj = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.gk = mul nsw i32 %i.gj, %i.br
  %i.gl = add nsw i32 %i.gk, %i.gd
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gi, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 1, !tbaa !46
  br label %get_pixel16_uv.exit.1.2

get_pixel16_uv.exit.1.2:                          ; preds = %bb.e, %.preheader.split.preheader.2
  %.sroa.2074.2 = phi i16 [ %i.gh, %bb.e ], [ %.sroa.2074.1, %.preheader.split.preheader.2 ] ; 2 uses
  %.sroa.20.2 = phi i16 [ %i.go, %bb.e ], [ %.sroa.20.1, %.preheader.split.preheader.2 ] ; 2 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv to i32
  %i.gq = lshr i32 %i.gp, %i.ak
  %i.gr = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.gs = load i32, ptr %i.y, align 4, !tbaa !47
  %i.gt = mul nsw i32 %i.gs, %i.br
  %i.gu = shl nuw nsw i32 %i.gq, 1                ; 2 uses
  %i.gv = add nsw i32 %i.gt, %i.gu
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gr, i64 %i.gw
  %i.gy = load i16, ptr %i.gx, align 1, !tbaa !46 ; 2 uses
  %i.gz = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ha = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.hb = mul nsw i32 %i.ha, %i.br
  %i.hc = add nsw i32 %i.hb, %i.gu
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.gz, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 1, !tbaa !46 ; 2 uses
  %i.hg = add nuw nsw i64 %indvars.iv, 2
  %.not100 = icmp samesign ugt i64 %i.hg, %i.av
  br i1 %.not100, label %.split.us.2, label %bb.f

bb.f:                                             ; preds = %get_pixel16_uv.exit.1.2
  %i.hh = trunc i64 %indvars.iv to i32
  %i.hi = add i32 %i.hh, 1
  %i.hj = lshr i32 %i.hi, %i.ak
  %i.hk = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.hl = load i32, ptr %i.y, align 4, !tbaa !47
  %i.hm = mul nsw i32 %i.hl, %i.br
  %i.hn = shl nuw nsw i32 %i.hj, 1                ; 2 uses
  %i.ho = add nsw i32 %i.hm, %i.hn
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hk, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !46
  %i.hs = load ptr, ptr %i.z, align 8, !tbaa !55
  %i.ht = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.hu = mul nsw i32 %i.ht, %i.br
  %i.hv = add nsw i32 %i.hu, %i.hn
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hs, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 1, !tbaa !46
  br label %.split.us.2

.split.us.2:                                      ; preds = %get_pixel16_uv.exit.1.2, %bb.f, %.split.us.1
  %.sroa.2676.3 = phi i16 [ %.sroa.2676.1, %.split.us.1 ], [ %i.hr, %bb.f ], [ %.sroa.2676.1, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.2375.3 = phi i16 [ %.sroa.2375.1, %.split.us.1 ], [ %i.gy, %bb.f ], [ %i.gy, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.2074.3 = phi i16 [ %.sroa.2074.1, %.split.us.1 ], [ %.sroa.2074.2, %bb.f ], [ %.sroa.2074.2, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.26.3 = phi i16 [ %.sroa.26.1, %.split.us.1 ], [ %i.hy, %bb.f ], [ %.sroa.26.1, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.23.3 = phi i16 [ %.sroa.23.1, %.split.us.1 ], [ %i.hf, %bb.f ], [ %i.hf, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %.sroa.20.3 = phi i16 [ %.sroa.20.1, %.split.us.1 ], [ %.sroa.20.2, %bb.f ], [ %.sroa.20.2, %get_pixel16_uv.exit.1.2 ] ; 3 uses
  %i.hz = insertelement <8 x i16> poison, i16 %.sroa.068.3, i64 0
  %i.ia = insertelement <8 x i16> %i.hz, i16 %.sroa.569.2, i64 1
  %i.ib = insertelement <8 x i16> %i.ia, i16 %.sroa.870.2, i64 2
  %i.ic = insertelement <8 x i16> %i.ib, i16 %.sroa.1171.3, i64 3
  %i.id = insertelement <8 x i16> %i.ic, i16 %.sroa.1472.3, i64 4
  %i.ie = insertelement <8 x i16> %i.id, i16 %.sroa.1773.3, i64 5
  %i.if = insertelement <8 x i16> %i.ie, i16 %.sroa.2074.3, i64 6
  %i.ig = insertelement <8 x i16> %i.if, i16 %.sroa.2375.3, i64 7
  %i.ih = zext <8 x i16> %i.ig to <8 x i32>
  %i.ii = insertelement <8 x i16> poison, i16 %.sroa.0.3, i64 0
  %i.ij = insertelement <8 x i16> %i.ii, i16 %.sroa.5.2, i64 1
  %i.ik = insertelement <8 x i16> %i.ij, i16 %.sroa.8.2, i64 2
  %i.il = insertelement <8 x i16> %i.ik, i16 %.sroa.11.3, i64 3
  %i.im = insertelement <8 x i16> %i.il, i16 %.sroa.14.3, i64 4
  %i.in = insertelement <8 x i16> %i.im, i16 %.sroa.17.3, i64 5
  %i.io = insertelement <8 x i16> %i.in, i16 %.sroa.20.3, i64 6
  %i.ip = insertelement <8 x i16> %i.io, i16 %.sroa.23.3, i64 7
  %i.iq = zext <8 x i16> %i.ip to <8 x i32>
  %i.ir = load i16, ptr %i.e, align 4, !tbaa !51
  %i.is = zext i16 %i.ir to i32                   ; 2 uses
  %i.it = load i16, ptr %i.g, align 2, !tbaa !51
  %i.iu = zext i16 %i.it to i32                   ; 2 uses
  %i.iv = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %i.iw = shufflevector <8 x i32> %i.iv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ix = sub nsw <8 x i32> %i.ih, %i.iw          ; 2 uses
  %i.iy = insertelement <8 x i32> poison, i32 %i.iu, i64 0
  %i.iz = shufflevector <8 x i32> %i.iy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ja = sub nsw <8 x i32> %i.iq, %i.iz          ; 2 uses
  %i.jb = mul nsw <8 x i32> %i.ix, %i.ix
  %i.jc = mul nsw <8 x i32> %i.ja, %i.ja
  %i.jd = add nuw nsw <8 x i32> %i.jc, %i.jb
  %i.je = uitofp nneg <8 x i32> %i.jd to <8 x double>
  %i.jf = fdiv nsz <8 x double> %i.je, %i.az      ; 4 uses
  %i.jg = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.jf) ; 2 uses
  %i.jh = shufflevector <8 x double> %i.jg, <8 x double> poison, <2 x i32> <i32 0, i32 poison>
  %shift = shufflevector <8 x double> %i.jg, <8 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x double> %i.jh, %shift
  %i.ji = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.jf) ; 2 uses
  %i.jj = shufflevector <8 x double> %i.ji, <8 x double> poison, <2 x i32> <i32 2, i32 poison>
  %foldExtExtBinop102 = fadd nsz <2 x double> %foldExtExtBinop, %i.jj
  %shift104 = shufflevector <8 x double> %i.ji, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %foldExtExtBinop105 = fadd nsz <2 x double> %foldExtExtBinop102, %shift104
  %i.jk = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.jf) ; 2 uses
  %i.jl = shufflevector <8 x double> %i.jk, <8 x double> poison, <2 x i32> <i32 4, i32 poison>
  %foldExtExtBinop107 = fadd nsz <2 x double> %foldExtExtBinop105, %i.jl
  %shift109 = shufflevector <8 x double> %i.jk, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %foldExtExtBinop110 = fadd nsz <2 x double> %foldExtExtBinop107, %shift109
  %i.jm = tail call nsz <8 x double> @llvm.sqrt.v8f64(<8 x double> %i.jf) ; 2 uses
  %i.jn = shufflevector <8 x double> %i.jm, <8 x double> poison, <2 x i32> <i32 6, i32 poison>
  %foldExtExtBinop112 = fadd nsz <2 x double> %foldExtExtBinop110, %i.jn
  %shift114 = shufflevector <8 x double> %i.jm, <8 x double> poison, <2 x i32> <i32 7, i32 poison>
  %foldExtExtBinop115 = fadd nsz <2 x double> %foldExtExtBinop112, %shift114
  %i.jo = extractelement <2 x double> %foldExtExtBinop115, i64 0
  %i.jp = zext i16 %.sroa.2676.3 to i32
  %i.jq = sub nsw i32 %i.jp, %i.is                ; 2 uses
  %i.jr = zext i16 %.sroa.26.3 to i32
  %i.js = sub nsw i32 %i.jr, %i.iu                ; 2 uses
  %i.jt = mul nsw i32 %i.jq, %i.jq
  %i.ju = mul nsw i32 %i.js, %i.js
  %i.jv = add nuw nsw i32 %i.ju, %i.jt
  %i.jw = uitofp nsz nneg i32 %i.jv to double
  %i.jx = fdiv nsz double %i.jw, %i.ap
  %i.jy = tail call nsz double @llvm.sqrt.f64(double %i.jx)
  %i.jz = fadd nsz double %i.jo, %i.jy
  %i.ka = fdiv nsz double %i.jz, 9.000000e+00     ; 2 uses
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.us.2
  %i.kb = fsub nsz double %i.ka, %i.au
  %i.kc = fdiv nsz double %i.kb, %i.ar            ; 2 uses
  %i.kd = fcmp nsz ogt double %i.kc, 0.000000e+00
  %i.ke = select nsz i1 %i.kd, double %i.kc, double 0.000000e+00 ; 2 uses
  %i.kf = fcmp nsz ogt double %i.ke, 1.000000e+00
  %..i.i = select nsz i1 %i.kf, double 1.000000e+00, double %i.ke
  %i.kg = fmul nsz double %..i.i, %i.an
  br label %do_chromakey_pixel16.exit

bb.h:                                             ; preds = %.split.us.2
  %i.kh = fcmp nsz ogt double %i.ka, %i.au
  %i.ki = select nsz i1 %i.kh, double %i.an, double 0.000000e+00
  br label %do_chromakey_pixel16.exit

do_chromakey_pixel16.exit:                        ; preds = %bb.g, %bb.h
  %.026.in.i = phi double [ %i.kg, %bb.g ], [ %i.ki, %bb.h ]
  %.026.i = fptoui double %.026.in.i to i16
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  store i16 %.026.i, ptr %i.kj, align 2, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !68

._crit_edge:                                      ; preds = %do_chromakey_pixel16.exit
  %exitcond67.not = icmp eq i64 %i.bh, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge54.split, label %.preheader47, !llvm.loop !69

._crit_edge54.split:                              ; preds = %._crit_edge, %.preheader47.lr.ph, %.preheader48
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_chromahold_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = ashr i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = sdiv i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.h, %i.o
  %i.q = sdiv i64 %i.p, %i.k
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = icmp slt i32 %i.m, %i.r
  br i1 %i.s, label %.preheader.lr.ph, label %._crit_edge64

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre = load i32, ptr %i.t, align 8, !tbaa !52
  %.pre65 = load i32, ptr %i.u, align 8, !tbaa !53
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ad = phi i32 [ %.pre65, %.preheader.lr.ph ], [ %i.cu, %._crit_edge ] ; 2 uses
  %i.ae = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.cv, %._crit_edge ] ; 2 uses
  %.063 = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.cw, %._crit_edge ] ; 4 uses
  %i.af = ashr i32 %i.ae, %i.ad
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.06062 = phi i32 [ %i.cp, %bb.e ], [ 0, %.preheader ] ; 4 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !47
  %i.aj = mul nsw i32 %i.ai, %.063
  %i.ak = add nsw i32 %i.aj, %.06062
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !46  ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !47
  %i.aq = mul nsw i32 %i.ap, %.063
  %i.ar = add nsw i32 %i.aq, %.06062
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !46  ; 2 uses
  %i.av = zext i8 %i.an to i32
  %i.aw = zext i8 %i.au to i32
  %i.ax = load i16, ptr %i.z, align 4, !tbaa !51
  %i.ay = zext i16 %i.ax to i32
  %i.az = sub nsw i32 %i.av, %i.ay                ; 2 uses
  %i.ba = load i16, ptr %i.aa, align 2, !tbaa !51
  %i.bb = zext i16 %i.ba to i32
  %i.bc = sub nsw i32 %i.aw, %i.bb                ; 2 uses
  %i.bd = mul nsw i32 %i.az, %i.az
  %i.be = mul nsw i32 %i.bc, %i.bc
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = uitofp nsz nneg i32 %i.bf to double
  %i.bh = fdiv nsz double %i.bg, 1.300500e+05
  %i.bi = tail call nsz double @llvm.sqrt.f64(double %i.bh) ; 2 uses
  %i.bj = load float, ptr %i.ab, align 8, !tbaa !57
  %i.bk = fpext nsz float %i.bj to double         ; 2 uses
  %i.bl = load float, ptr %i.ac, align 4, !tbaa !56
  %i.bm = fpext nsz float %i.bl to double         ; 2 uses
  %i.bn = fcmp nsz ogt double %i.bm, 1.000000e-04
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.bo = fsub nsz double %i.bi, %i.bk
  %i.bp = fdiv nsz double %i.bo, %i.bm            ; 2 uses
  %i.bq = fcmp nsz ogt double %i.bp, 0.000000e+00
  %i.br = select nsz i1 %i.bq, double %i.bp, double 0.000000e+00 ; 2 uses
  %i.bs = fcmp nsz ogt double %i.br, 1.000000e+00
  %..i = select nsz i1 %i.bs, double 1.000000e+00, double %i.br
  %i.bt = fsub nsz double 1.000000e+00, %..i
  %i.bu = zext i8 %i.an to i16
  %i.bv = add nsw i16 %i.bu, -128
  %i.bw = insertelement <2 x i16> poison, i16 %i.bv, i64 0
  %i.bx = zext i8 %i.au to i16
  %i.by = add nsw i16 %i.bx, -128
  %i.bz = insertelement <2 x i16> %i.bw, i16 %i.by, i64 1
  %i.ca = sitofp <2 x i16> %i.bz to <2 x double>
  %i.cb = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> splat (double 1.280000e+02)) ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = fptoui double %i.ce to i8
  store i8 %i.cf, ptr %i.am, align 1, !tbaa !46
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = fptoui double %i.cg to i8
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.ci = fcmp nsz ogt double %i.bi, %i.bk
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 -128, ptr %i.am, align 1, !tbaa !46
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i8 [ -128, %bb.d ], [ %i.ch, %bb.b ]
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.ck = load i32, ptr %i.y, align 8, !tbaa !47
  %i.cl = mul nsw i32 %i.ck, %.063
  %i.cm = add nsw i32 %i.cl, %.06062
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.cn
  store i8 %.sink, ptr %i.co, align 1, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.cp = add nuw nsw i32 %.06062, 1              ; 2 uses
  %i.cq = load i32, ptr %i.t, align 8, !tbaa !52  ; 2 uses
  %i.cr = load i32, ptr %i.u, align 8, !tbaa !53  ; 2 uses
  %i.cs = ashr i32 %i.cq, %i.cr
  %i.ct = icmp slt i32 %i.cp, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.cu = phi i32 [ %i.ad, %.preheader ], [ %i.cr, %bb.e ]
  %i.cv = phi i32 [ %i.ae, %.preheader ], [ %i.cq, %bb.e ]
  %i.cw = add nsw i32 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, %i.r
  br i1 %exitcond.not, label %._crit_edge64, label %.preheader, !llvm.loop !71

._crit_edge64:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_chromahold16_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %i.g = ashr i32 %i.d, %i.f
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = sdiv i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.h, %i.o
  %i.q = sdiv i64 %i.p, %i.k
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !48   ; 3 uses
  %i.u = icmp slt i32 %i.m, %i.r
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge74

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !49
  %i.x = sitofp nsz i32 %i.w to double            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.ag = fmul nnan nsz double %i.x, %i.x
  %i.ah = fmul nnan nsz double %i.ag, 2.000000e+00
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ak = trunc i32 %i.t to i16                   ; 2 uses
  %i.al = sitofp nsz i32 %i.t to double
  %.pre = load i32, ptr %i.y, align 8, !tbaa !52
  %.pre75 = load i32, ptr %i.z, align 8, !tbaa !53
  %i.am = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.aq = phi i32 [ %.pre75, %.preheader.lr.ph ], [ %i.dg, %._crit_edge ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.dh, %._crit_edge ] ; 2 uses
  %.073 = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.di, %._crit_edge ] ; 4 uses
  %i.as = ashr i32 %i.ar, %i.aq
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.07072 = phi i32 [ %i.db, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.av = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.aw = mul nsw i32 %i.av, %.073
  %i.ax = shl nuw nsw i32 %.07072, 1              ; 3 uses
  %i.ay = add nsw i32 %i.aw, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.au, i64 %i.az ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !46 ; 2 uses
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.bd = load i32, ptr %i.ad, align 8, !tbaa !47
  %i.be = mul nsw i32 %i.bd, %.073
  %i.bf = add nsw i32 %i.be, %i.ax
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !46 ; 2 uses
  %i.bj = zext i16 %i.bi to i32
  %i.bk = zext i16 %i.bb to i32
  %i.bl = load i16, ptr %i.ae, align 4, !tbaa !51
  %i.bm = zext i16 %i.bl to i32
  %i.bn = sub nsw i32 %i.bk, %i.bm                ; 2 uses
  %i.bo = load i16, ptr %i.af, align 2, !tbaa !51
  %i.bp = zext i16 %i.bo to i32
  %i.bq = sub nsw i32 %i.bj, %i.bp                ; 2 uses
  %i.br = mul nsw i32 %i.bn, %i.bn
  %i.bs = mul nsw i32 %i.bq, %i.bq
  %i.bt = add nuw nsw i32 %i.bs, %i.br
  %i.bu = uitofp nsz nneg i32 %i.bt to double
  %i.bv = fdiv nsz double %i.bu, %i.ah
  %i.bw = tail call nsz double @llvm.sqrt.f64(double %i.bv) ; 2 uses
  %i.bx = load float, ptr %i.ai, align 8, !tbaa !57
  %i.by = fpext nsz float %i.bx to double         ; 2 uses
  %i.bz = load float, ptr %i.aj, align 4, !tbaa !56
  %i.ca = fpext nsz float %i.bz to double         ; 2 uses
  %i.cb = fcmp nsz ogt double %i.ca, 1.000000e-04
  br i1 %i.cb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.cc = insertelement <2 x i16> poison, i16 %i.bb, i64 0
  %i.cd = insertelement <2 x i16> %i.cc, i16 %i.bi, i64 1
  %i.ce = zext <2 x i16> %i.cd to <2 x i32>
  %i.cf = fsub nsz double %i.bw, %i.by
  %i.cg = fdiv nsz double %i.cf, %i.ca            ; 2 uses
  %i.ch = fcmp nsz ogt double %i.cg, 0.000000e+00
  %i.ci = select nsz i1 %i.ch, double %i.cg, double 0.000000e+00 ; 2 uses
  %i.cj = fcmp nsz ogt double %i.ci, 1.000000e+00
  %..i = select nsz i1 %i.cj, double 1.000000e+00, double %i.ci
  %i.ck = fsub nsz double 1.000000e+00, %..i
  %i.cl = sub nsw <2 x i32> %i.ce, %i.an
  %i.cm = sitofp <2 x i32> %i.cl to <2 x double>
  %i.cn = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.co, <2 x double> %i.ap) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = fptoui double %i.cq to i16
  store i16 %i.cr, ptr %i.ba, align 1, !tbaa !46
  %i.cs = extractelement <2 x double> %i.cp, i64 1
  %i.ct = fptoui double %i.cs to i16
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.cu = fcmp nsz ogt double %i.bw, %i.by
  br i1 %i.cu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 %i.ak, ptr %i.ba, align 1, !tbaa !46
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i16 [ %i.ak, %bb.d ], [ %i.ct, %bb.b ]
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.cw = load i32, ptr %i.ad, align 8, !tbaa !47
  %i.cx = mul nsw i32 %i.cw, %.073
  %i.cy = add nsw i32 %i.cx, %i.ax
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.cv, i64 %i.cz
  store i16 %.sink, ptr %i.da, align 1, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %i.db = add nuw nsw i32 %.07072, 1              ; 2 uses
  %i.dc = load i32, ptr %i.y, align 8, !tbaa !52  ; 2 uses
  %i.dd = load i32, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.de = ashr i32 %i.dc, %i.dd
  %i.df = icmp slt i32 %i.db, %i.de
  br i1 %i.df, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.dg = phi i32 [ %i.aq, %.preheader ], [ %i.dd, %bb.e ]
  %i.dh = phi i32 [ %i.ar, %.preheader ], [ %i.dc, %bb.e ]
  %i.di = add nsw i32 %.073, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, %i.r
  br i1 %exitcond.not, label %._crit_edge74, label %.preheader, !llvm.loop !73

._crit_edge74:                                    ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.sqrt.v8f64(<8 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !15, i64 56}
!20 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!25 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!26 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!27 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!28 = !{!"AVFilterFormatsConfig", !26, i64 0, !26, i64 8, !27, i64 16, !26, i64 24, !26, i64 32, !26, i64 40}
!29 = !{!"AVFilterLink", !22, i64 0, !13, i64 8, !22, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !24, i64 72, !23, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!30 = !{!29, !22, i64 16}
!31 = !{!18, !9, i64 72}
!32 = !{!"float", !5, i64 0}
!33 = !{!"ChromakeyContext", !10, i64 0, !5, i64 8, !5, i64 12, !32, i64 16, !32, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !9, i64 48}
!34 = !{!33, !9, i64 48}
!35 = !{!"p2 omnipotent char", !14, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!38 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!39 = !{!"AVFrame", !5, i64 0, !5, i64 64, !35, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 124, !36, i64 136, !36, i64 144, !23, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !37, i64 248, !6, i64 256, !25, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !36, i64 304, !38, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !9, i64 376, !24, i64 384, !36, i64 408, !6, i64 416}
!40 = !{!39, !6, i64 108}
!41 = !{!18, !11, i64 8}
!42 = !{!"AVFilter", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !6, i64 40}
!43 = !{!42, !12, i64 0}
!44 = !{!29, !6, i64 116}
!45 = !{!29, !6, i64 36}
!46 = !{!5, !5, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!33, !6, i64 32}
!49 = !{!33, !6, i64 36}
!50 = !{!"short", !5, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!39, !6, i64 104}
!53 = !{!33, !6, i64 40}
!54 = !{!33, !6, i64 44}
!55 = !{!12, !12, i64 0}
!56 = !{!33, !32, i64 20}
!57 = !{!33, !32, i64 16}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!39, !6, i64 416}
!60 = !{!29, !22, i64 0}
!61 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!62 = !{!61, !6, i64 16}
!63 = !{!33, !6, i64 28}
!64 = !{!33, !6, i64 24}
!65 = distinct !{!65, !58}
!66 = distinct !{!66, !58, !67}
!67 = !{!"llvm.loop.unswitch.partial.disable"}
!68 = distinct !{!68, !58}
!69 = distinct !{!69, !58}
!70 = distinct !{!70, !58}
!71 = distinct !{!71, !58}
!72 = distinct !{!72, !58}
!73 = distinct !{!73, !58}
end_hunk_0
