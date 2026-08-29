Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorlevels?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@colorlevels_slice_8:bb.a
  %i.jb = sext i1 %isnotneg.i136.us.us to i8
  %i.jc = trunc nuw i32 %i.ja to i8
  %.0.i137.us.us = select i1 %.not.i135.us.us, i8 %i.jc, i8 %i.jb
  %i.jd = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %indvars.iv
  store i8 %.0.i137.us.us, ptr %i.jd, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cv ; 2 uses
  %i.je = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.je, label %vec.epilog.scalar.ph, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !114

..preheader_crit_edge.us.us.preheader:            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.e ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %i.jf = load i32, ptr %i.ct, align 4, !tbaa !47
  %i.jg = icmp eq i32 %i.jf, 4
  br i1 %i.jg, label %bb.e, label %.critedge.us.us

bb.e:                                             ; preds = %..preheader_crit_edge.us.us
  %i.jh = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %indvars.iv171
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !46
  %i.jj = zext i8 %i.ji to i32
  %i.jk = sub nsw i32 %i.jj, %i.ca
  %i.jl = sitofp nsz i32 %i.jk to float
  %i.jm = tail call nsz float @llvm.fmuladd.f32(float %i.jl, float %i.cj, float %i.cu)
  %i.jn = fptosi float %i.jm to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.jn, 256
  %isnotneg.i.us.us = icmp sgt i32 %i.jn, -1
  %i.jo = sext i1 %isnotneg.i.us.us to i8
  %i.jp = trunc nuw i32 %i.jn to i8
  %.0.i.us.us = select i1 %.not.i.us.us, i8 %i.jp, i8 %i.jo
  %i.jq = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %indvars.iv171
  store i8 %.0.i.us.us, ptr %i.jq, align 1, !tbaa !46
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, %i.cv ; 2 uses
  %i.jr = icmp slt i64 %indvars.iv.next172, %i.cw
  br i1 %i.jr, label %..preheader_crit_edge.us.us, label %.critedge.us.us, !llvm.loop !115

.critedge.us.us:                                  ; preds = %..preheader_crit_edge.us.us, %bb.e
  %i.js = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %i.v
  %i.jt = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %i.v
  %i.ju = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %i.v
  %i.jv = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %i.v
  %i.jw = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %i.y
  %i.jx = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %i.y
  %i.jy = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %i.y
  %i.jz = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %i.y
  %i.ka = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ka, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !116

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul nsw i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sitofp nsz i32 %i.cs to float
  br i1 %i.cv, label %.preheader184.us.preheader, label %._crit_edge

.preheader184.us.preheader:                       ; preds = %.preheader184.lr.ph
  %i.dc = sext i32 %i.f to i64                    ; 2 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 2 uses
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.preheader184.us.preheader, %.critedge.us
  %.0147197.us = phi i32 [ %i.ic, %.critedge.us ], [ %i.n, %.preheader184.us.preheader ]
  %.0148196.us = phi ptr [ %i.ib, %.critedge.us ], [ %i.ax, %.preheader184.us.preheader ] ; 2 uses
  %.0149195.us = phi ptr [ %i.ia, %.critedge.us ], [ %i.au, %.preheader184.us.preheader ] ; 2 uses
  %.0150194.us = phi ptr [ %i.hz, %.critedge.us ], [ %i.ar, %.preheader184.us.preheader ] ; 2 uses
  %.0151193.us = phi ptr [ %i.hy, %.critedge.us ], [ %i.ao, %.preheader184.us.preheader ] ; 2 uses
  %.0152192.us = phi ptr [ %i.hx, %.critedge.us ], [ %i.al, %.preheader184.us.preheader ] ; 2 uses
  %.0153191.us = phi ptr [ %i.hw, %.critedge.us ], [ %i.ai, %.preheader184.us.preheader ] ; 2 uses
  %.0154190.us = phi ptr [ %i.hv, %.critedge.us ], [ %i.af, %.preheader184.us.preheader ] ; 2 uses
  %.0155189.us = phi ptr [ %i.hu, %.critedge.us ], [ %i.ac, %.preheader184.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.de = getelementptr inbounds i8, ptr %.0155189.us, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !46  ; 5 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %.0154190.us, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !46  ; 5 uses
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds i8, ptr %.0153191.us, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !46  ; 5 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.do = icmp eq i32 %i.dn, 32
  br i1 %i.do, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.dq = sitofp nsz i32 %i.dp to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dr = phi nsz float [ %i.dq, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ds = sub nsw i32 %i.dg, %i.cj
  %i.dt = sitofp nsz i32 %i.ds to float
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.cm, float %i.cx)
  %i.dv = fptosi float %i.du to i32               ; 6 uses
  %i.dw = insertelement <2 x i32> poison, i32 %i.dj, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.dm, i64 1
  %i.dy = sub nsw <2 x i32> %i.dx, %i.ck
  %i.dz = sitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.co, <2 x float> %i.cy)
  %i.eb = fptosi <2 x float> %i.ea to <2 x i32>   ; 5 uses
  %i.ec = load i32, ptr %i.cz, align 8, !tbaa !84
  %i.ed = uitofp i8 %i.df to float                ; 4 uses
  %i.ee = uitofp i8 %i.di to float                ; 4 uses
  %i.ef = uitofp i8 %i.dl to float                ; 4 uses
  %i.eg = sitofp nsz i32 %i.dv to float           ; 5 uses
  %i.eh = sitofp <2 x i32> %i.eb to <2 x float>   ; 11 uses
  switch i32 %i.ec, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ei = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eg, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.em = fdiv nsz <2 x float> %i.ej, %i.el       ; 3 uses
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eo = insertelement <2 x float> %i.en, float %i.ee, i64 0
  %i.ep = fdiv nsz <2 x float> %i.eo, %i.el       ; 3 uses
  %i.eq = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.er = fdiv nsz <2 x float> %i.eq, %i.el       ; 3 uses
  %i.es = fmul nsz <2 x float> %i.em, %i.em
  %i.et = fmul nsz <2 x float> %i.ep, %i.ep
  %i.eu = fmul nsz <2 x float> %i.ep, %i.et
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.em, <2 x float> %i.eu)
  %i.ew = fmul nsz <2 x float> %i.er, %i.er
  %i.ex = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.er, <2 x float> %i.ev) ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = tail call nsz float @cbrtf(float noundef %i.ey) #9
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = tail call nsz float @cbrtf(float noundef %i.fa) #9
  %i.fc = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fb, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fe = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.eg, i64 1
  %i.fg = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fi = fdiv nsz <2 x float> %i.ff, %i.fh       ; 2 uses
  %i.fj = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fk = insertelement <2 x float> %i.fj, float %i.ee, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.fh       ; 2 uses
  %i.fm = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.fn = fdiv nsz <2 x float> %i.fm, %i.fh       ; 2 uses
  %i.fo = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fi, <2 x float> %i.fo)
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fn, <2 x float> %i.fp)
  %i.fr = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fq)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.fs = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.eg, i64 1
  %i.fu = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fv = insertelement <2 x float> %i.fu, float %i.ee, i64 0
  %i.fw = fadd nsz <2 x float> %i.ft, %i.fv
  %i.fx = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.fy = fadd nsz <2 x float> %i.fw, %i.fx
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.fz = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.eg, i64 1
  %i.gb = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.ee, i64 0
  %i.gd = fadd nsz <2 x float> %i.ga, %i.gc
  %i.ge = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.gf = fadd nsz <2 x float> %i.gd, %i.ge
  %i.gg = fadd nsz <2 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fdiv nsz <2 x float> %i.gg, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i8 @llvm.umax.i8(i8 %i.df, i8 %i.di)
  %.109.i184.us = tail call i8 @llvm.umax.i8(i8 %4, i8 %i.dl)
  %.109.i.us = uitofp i8 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.eb, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.eh, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i8 @llvm.umax.i8(i8 %i.df, i8 %i.di)
  %..i185.us = tail call i8 @llvm.umax.i8(i8 %13, i8 %i.dl)
  %..i.us = uitofp i8 %..i185.us to float
  %14 = tail call i8 @llvm.umin.i8(i8 %i.df, i8 %i.di)
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 %i.dl)
  %16 = uitofp i8 %15 to float
  %17 = extractelement <2 x i32> %i.eb, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.eh, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.gi = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.gj = phi <2 x float> [ %i.fd, %bb.h ], [ %i.gi, %bb.m ], [ %12, %bb.l ], [ %i.gh, %bb.k ], [ %i.fy, %bb.j ], [ %i.fr, %bb.i ] ; 2 uses
  %i.gk = extractelement <2 x float> %i.gj, i64 1 ; 2 uses
  %i.gl = fcmp nsz ogt float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.gm = extractelement <2 x float> %i.gj, i64 0
  %i.gn = fdiv nsz float %i.gm, %i.gk             ; 2 uses
  %i.go = fmul nsz float %i.gn, %i.eg
  %i.gp = fptosi float %i.go to i32
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul nsz <2 x float> %i.gr, %i.eh
  %i.gt = fptosi <2 x float> %i.gs to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.gp, %bb.n ], [ %i.dv, %preserve_color.exit.us ], [ %i.dv, %bb.g ] ; 3 uses
  %i.gu = phi <2 x i32> [ %i.gt, %bb.n ], [ %i.eb, %preserve_color.exit.us ], [ %i.eb, %bb.g ] ; 2 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 256
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.gv = sext i1 %isnotneg.i165.us to i8
  %i.gw = trunc nuw i32 %.0145.us to i8
  %.0.i166.us = select i1 %.not.i164.us, i8 %i.gw, i8 %i.gv
  %i.gx = getelementptr inbounds i8, ptr %.0151193.us, i64 %indvars.iv
  store i8 %.0.i166.us, ptr %i.gx, align 1, !tbaa !46
  %i.gy = extractelement <2 x i32> %i.gu, i64 0   ; 3 uses
  %.not.i161.us = icmp ult i32 %i.gy, 256
  %isnotneg.i162.us = icmp sgt i32 %i.gy, -1
  %i.gz = sext i1 %isnotneg.i162.us to i8
  %i.ha = trunc nuw i32 %i.gy to i8
  %.0.i163.us = select i1 %.not.i161.us, i8 %i.ha, i8 %i.gz
  %i.hb = getelementptr inbounds i8, ptr %.0150194.us, i64 %indvars.iv
  store i8 %.0.i163.us, ptr %i.hb, align 1, !tbaa !46
  %i.hc = extractelement <2 x i32> %i.gu, i64 1   ; 3 uses
  %.not.i158.us = icmp ult i32 %i.hc, 256
  %isnotneg.i159.us = icmp sgt i32 %i.hc, -1
  %i.hd = sext i1 %isnotneg.i159.us to i8
  %i.he = trunc nuw i32 %i.hc to i8
  %.0.i160.us = select i1 %.not.i158.us, i8 %i.he, i8 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %.0149195.us, i64 %indvars.iv
  store i8 %.0.i160.us, ptr %i.hf, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.hg, label %bb.e, label %.lr.ph187.us, !llvm.loop !117

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.o ], [ 0, %preserve_color.exit.thread.us ] ; 3 uses
  %i.hh = load i32, ptr %i.da, align 4, !tbaa !47
  %i.hi = icmp eq i32 %i.hh, 4
  br i1 %i.hi, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %.lr.ph187.us
  %i.hj = getelementptr inbounds i8, ptr %.0152192.us, i64 %indvars.iv199
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !46
  %i.hl = zext i8 %i.hk to i32
  %i.hm = sub nsw i32 %i.hl, %i.ci
  %i.hn = sitofp nsz i32 %i.hm to float
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.hn, float %i.cq, float %i.db)
  %i.hp = fptosi float %i.ho to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.hp, 256
  %isnotneg.i.us = icmp sgt i32 %i.hp, -1
  %i.hq = sext i1 %isnotneg.i.us to i8
  %i.hr = trunc nuw i32 %i.hp to i8
  %.0.i.us = select i1 %.not.i.us, i8 %i.hr, i8 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.0148196.us, i64 %indvars.iv199
  store i8 %.0.i.us, ptr %i.hs, align 1, !tbaa !46
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, %i.dc ; 2 uses
  %i.ht = icmp slt i64 %indvars.iv.next200, %i.dd
  br i1 %i.ht, label %.lr.ph187.us, label %.critedge.us, !llvm.loop !118

.critedge.us:                                     ; preds = %.lr.ph187.us, %bb.o
  %i.hu = getelementptr inbounds i8, ptr %.0155189.us, i64 %i.v
  %i.hv = getelementptr inbounds i8, ptr %.0154190.us, i64 %i.v
  %i.hw = getelementptr inbounds i8, ptr %.0153191.us, i64 %i.v
  %i.hx = getelementptr inbounds i8, ptr %.0152192.us, i64 %i.v
  %i.hy = getelementptr inbounds i8, ptr %.0151193.us, i64 %i.y
  %i.hz = getelementptr inbounds i8, ptr %.0150194.us, i64 %i.y
  %i.ia = getelementptr inbounds i8, ptr %.0149195.us, i64 %i.y
  %i.ib = getelementptr inbounds i8, ptr %.0148196.us, i64 %i.y
  %i.ic = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ic, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !119

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi <2 x float> [ %i.be, %bb.b ], [ %i.bo, %bb.c ]
  %i.bx = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bq, %bb.c ]
  %i.by = phi <4 x float> [ %i.bj, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.bz = extractelement <4 x float> %i.by, i64 1
  %i.ca = fptosi float %i.bz to i32               ; 2 uses
  %i.cb = fptosi <2 x float> %i.bw to <2 x i32>   ; 3 uses
  %i.cc = extractelement <4 x float> %i.by, i64 0
  %i.cd = fptosi float %i.cc to i32               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cf = load <2 x float>, ptr %i.ce, align 8, !tbaa !60 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !60 ; 2 uses
  %i.ck = icmp slt i32 %i.n, %i.s
  br i1 %i.ck, label %.preheader156.lr.ph, label %._crit_edge

.preheader156.lr.ph:                              ; preds = %bb.d
  %i.cl = extractelement <4 x float> %i.by, i64 3
  %i.cm = fptosi float %i.cl to i32
  %i.cn = extractelement <4 x float> %i.by, i64 2
  %i.co = fptosi float %i.cn to i32
  %i.cp = fptosi <2 x float> %i.bx to <2 x i32>
end_hunk_0
begin_hunk_1_@colorlevels_slice_16:bb.a
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us.us, label %.lr.ph159.split.us.us.preheader320

.lr.ph159.split.us.us.preheader320:               ; preds = %.lr.ph159.split.us.us.preheader, %middle.block
  %indvars.iv190.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.us.preheader ]
  br label %.lr.ph159.split.us.us

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep225 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep225
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.iv, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.iu, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.it, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.is, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.ir, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.iq, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.ip, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.io, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.in, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 5 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 5 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 5 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 6 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 5 uses
  %i.ex = uitofp i16 %i.ed to float               ; 4 uses
  %i.ey = uitofp i16 %i.eg to float               ; 4 uses
  %i.ez = uitofp i16 %i.ei to float               ; 4 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 5 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 11 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %.109.i184.us = tail call i16 @llvm.umax.i16(i16 %4, i16 %i.ei)
  %.109.i.us = uitofp i16 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.ew, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.fb, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %..i185.us = tail call i16 @llvm.umax.i16(i16 %13, i16 %i.ei)
  %..i.us = uitofp i16 %..i185.us to float
  %14 = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 %i.eg)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %i.ei)
  %16 = uitofp i16 %15 to float
  %17 = extractelement <2 x i32> %i.ew, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.fb, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.hc = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hc, %bb.m ], [ %12, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.fa
  %i.hj = fptosi float %i.hi to i32
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul nsz <2 x float> %i.hl, %i.fb
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hj, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ] ; 3 uses
  %i.ho = phi <2 x i32> [ %i.hn, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 3 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 65536
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.hp = sext i1 %isnotneg.i165.us to i16
  %i.hq = trunc nuw i32 %.0145.us to i16
  %.0.i166.us = select i1 %.not.i164.us, i16 %i.hq, i16 %i.hp
  %i.hr = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %.0.i166.us, ptr %i.hr, align 2, !tbaa !63
  %i.hs = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  %i.ht = icmp ult <2 x i32> %i.ho, splat (i32 65536)
  %i.hu = icmp sgt <2 x i32> %i.ho, splat (i32 -1)
  %i.hv = sext <2 x i1> %i.hu to <2 x i16>
  %i.hw = trunc <2 x i32> %i.ho to <2 x i16>
  %i.hx = select <2 x i1> %i.ht, <2 x i16> %i.hw, <2 x i16> %i.hv ; 2 uses
  %i.hy = extractelement <2 x i16> %i.hx, i64 0
  store i16 %i.hy, ptr %i.hs, align 2, !tbaa !63
  %i.hz = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  %i.ia = extractelement <2 x i16> %i.hx, i64 1
  store i16 %i.ia, ptr %i.hz, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.ib, label %bb.e, label %.lr.ph187.us, !llvm.loop !146

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader231, %.lr.ph187.split.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph187.split.us ], [ %indvars.iv218.ph, %.lr.ph187.split.us.preheader231 ] ; 3 uses
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv218
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !63
  %i.ie = zext i16 %i.id to i32
  %i.if = sub nsw i32 %i.ie, %i.ci
  %i.ig = sitofp nsz i32 %i.if to float
  %i.ih = tail call nsz float @llvm.fmuladd.f32(float %i.ig, float %i.cq, float %i.cz)
  %i.ii = fptosi float %i.ih to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.ii, 65536
  %isnotneg.i.us = icmp sgt i32 %i.ii, -1
  %i.ij = sext i1 %isnotneg.i.us to i16
  %i.ik = trunc nuw i32 %i.ii to i16
  %.0.i.us = select i1 %.not.i.us, i16 %i.ik, i16 %i.ij
  %i.il = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv218
  store i16 %.0.i.us, ptr %i.il, align 2, !tbaa !63
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, %i.df ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next219, %i.dg
  br i1 %i.im, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !147

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.in = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.io = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.iq = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.is = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.it = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.iv = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.iv, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !148

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader231, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.iw = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.iw, align 2, !tbaa !63, !alias.scope !149
  %i.ix = zext <8 x i16> %wide.load to <8 x i32>
  %i.iy = sub nsw <8 x i32> %i.ix, %broadcast.splat
  %i.iz = sitofp nsz <8 x i32> %i.iy to <8 x float>
  %i.ja = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.iz, <8 x float> %broadcast.splat228, <8 x float> %broadcast.splat230)
  %i.jb = fptosi <8 x float> %i.ja to <8 x i32>   ; 3 uses
  %i.jc = icmp ult <8 x i32> %i.jb, splat (i32 65536)
  %i.jd = icmp sgt <8 x i32> %i.jb, splat (i32 -1)
  %i.je = sext <8 x i1> %i.jd to <8 x i16>
  %i.jf = trunc nuw <8 x i32> %i.jb to <8 x i16>
  %i.jg = select <8 x i1> %i.jc, <8 x i16> %i.jf, <8 x i16> %i.je
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.jg, ptr %i.jh, align 2, !tbaa !63, !alias.scope !152, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader231

.lr.ph187.split.us.preheader231:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_8_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 4 uses
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41   ; 4 uses
  %i.y = sext i32 %i.x to i64                     ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ab  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ab  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ab  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ab  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ab  ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d
end_hunk_1
begin_hunk_2_@colorlevels_slice_8_planar:bb.a
  %i.jb = sext i1 %isnotneg.i136.us.us to i8
  %i.jc = trunc nuw i32 %i.ja to i8
  %.0.i137.us.us = select i1 %.not.i135.us.us, i8 %i.jc, i8 %i.jb
  %i.jd = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %indvars.iv
  store i8 %.0.i137.us.us, ptr %i.jd, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cv ; 2 uses
  %i.je = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.je, label %vec.epilog.scalar.ph, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !173

..preheader_crit_edge.us.us.preheader:            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %bb.e
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.e ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %i.jf = load i32, ptr %i.ct, align 4, !tbaa !47
  %i.jg = icmp eq i32 %i.jf, 4
  br i1 %i.jg, label %bb.e, label %.critedge.us.us

bb.e:                                             ; preds = %..preheader_crit_edge.us.us
  %i.jh = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %indvars.iv171
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !46
  %i.jj = zext i8 %i.ji to i32
  %i.jk = sub nsw i32 %i.jj, %i.ca
  %i.jl = sitofp nsz i32 %i.jk to float
  %i.jm = tail call nsz float @llvm.fmuladd.f32(float %i.jl, float %i.cj, float %i.cu)
  %i.jn = fptosi float %i.jm to i32               ; 3 uses
  %.not.i.us.us = icmp ult i32 %i.jn, 256
  %isnotneg.i.us.us = icmp sgt i32 %i.jn, -1
  %i.jo = sext i1 %isnotneg.i.us.us to i8
  %i.jp = trunc nuw i32 %i.jn to i8
  %.0.i.us.us = select i1 %.not.i.us.us, i8 %i.jp, i8 %i.jo
  %i.jq = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %indvars.iv171
  store i8 %.0.i.us.us, ptr %i.jq, align 1, !tbaa !46
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, %i.cv ; 2 uses
  %i.jr = icmp slt i64 %indvars.iv.next172, %i.cw
  br i1 %i.jr, label %..preheader_crit_edge.us.us, label %.critedge.us.us, !llvm.loop !174

.critedge.us.us:                                  ; preds = %..preheader_crit_edge.us.us, %bb.e
  %i.js = getelementptr inbounds i8, ptr %.0133161.us.us, i64 %i.v
  %i.jt = getelementptr inbounds i8, ptr %.0132162.us.us, i64 %i.v
  %i.ju = getelementptr inbounds i8, ptr %.0131163.us.us, i64 %i.v
  %i.jv = getelementptr inbounds i8, ptr %.0130164.us.us, i64 %i.v
  %i.jw = getelementptr inbounds i8, ptr %.0129165.us.us, i64 %i.y
  %i.jx = getelementptr inbounds i8, ptr %.0128166.us.us, i64 %i.y
  %i.jy = getelementptr inbounds i8, ptr %.0127167.us.us, i64 %i.y
  %i.jz = getelementptr inbounds i8, ptr %.0126168.us.us, i64 %i.y
  %i.ka = add nsw i32 %.0125169.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.ka, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %iter.check, !llvm.loop !175

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_8_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = sext i32 %i.x to i64                     ; 4 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul nsw i32 %i.u, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ab
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.db = sitofp nsz i32 %i.cs to float
  br i1 %i.cv, label %.preheader184.us.preheader, label %._crit_edge

.preheader184.us.preheader:                       ; preds = %.preheader184.lr.ph
  %i.dc = sext i32 %i.f to i64                    ; 2 uses
  %i.dd = zext nneg i32 %i.d to i64               ; 2 uses
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.preheader184.us.preheader, %.critedge.us
  %.0147197.us = phi i32 [ %i.ic, %.critedge.us ], [ %i.n, %.preheader184.us.preheader ]
  %.0148196.us = phi ptr [ %i.ib, %.critedge.us ], [ %i.ax, %.preheader184.us.preheader ] ; 2 uses
  %.0149195.us = phi ptr [ %i.ia, %.critedge.us ], [ %i.au, %.preheader184.us.preheader ] ; 2 uses
  %.0150194.us = phi ptr [ %i.hz, %.critedge.us ], [ %i.ar, %.preheader184.us.preheader ] ; 2 uses
  %.0151193.us = phi ptr [ %i.hy, %.critedge.us ], [ %i.ao, %.preheader184.us.preheader ] ; 2 uses
  %.0152192.us = phi ptr [ %i.hx, %.critedge.us ], [ %i.al, %.preheader184.us.preheader ] ; 2 uses
  %.0153191.us = phi ptr [ %i.hw, %.critedge.us ], [ %i.ai, %.preheader184.us.preheader ] ; 2 uses
  %.0154190.us = phi ptr [ %i.hv, %.critedge.us ], [ %i.af, %.preheader184.us.preheader ] ; 2 uses
  %.0155189.us = phi ptr [ %i.hu, %.critedge.us ], [ %i.ac, %.preheader184.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.de = getelementptr inbounds i8, ptr %.0155189.us, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !46  ; 5 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %.0154190.us, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !46  ; 5 uses
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds i8, ptr %.0153191.us, i64 %indvars.iv
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !46  ; 5 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.do = icmp eq i32 %i.dn, 32
  br i1 %i.do, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.dq = sitofp nsz i32 %i.dp to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dr = phi nsz float [ %i.dq, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ds = sub nsw i32 %i.dg, %i.cj
  %i.dt = sitofp nsz i32 %i.ds to float
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.cm, float %i.cx)
  %i.dv = fptosi float %i.du to i32               ; 6 uses
  %i.dw = insertelement <2 x i32> poison, i32 %i.dj, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.dm, i64 1
  %i.dy = sub nsw <2 x i32> %i.dx, %i.ck
  %i.dz = sitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.co, <2 x float> %i.cy)
  %i.eb = fptosi <2 x float> %i.ea to <2 x i32>   ; 5 uses
  %i.ec = load i32, ptr %i.cz, align 8, !tbaa !84
  %i.ed = uitofp i8 %i.df to float                ; 4 uses
  %i.ee = uitofp i8 %i.di to float                ; 4 uses
  %i.ef = uitofp i8 %i.dl to float                ; 4 uses
  %i.eg = sitofp nsz i32 %i.dv to float           ; 5 uses
  %i.eh = sitofp <2 x i32> %i.eb to <2 x float>   ; 11 uses
  switch i32 %i.ec, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ei = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %i.eg, i64 1
  %i.ek = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.em = fdiv nsz <2 x float> %i.ej, %i.el       ; 3 uses
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eo = insertelement <2 x float> %i.en, float %i.ee, i64 0
  %i.ep = fdiv nsz <2 x float> %i.eo, %i.el       ; 3 uses
  %i.eq = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.er = fdiv nsz <2 x float> %i.eq, %i.el       ; 3 uses
  %i.es = fmul nsz <2 x float> %i.em, %i.em
  %i.et = fmul nsz <2 x float> %i.ep, %i.ep
  %i.eu = fmul nsz <2 x float> %i.ep, %i.et
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.em, <2 x float> %i.eu)
  %i.ew = fmul nsz <2 x float> %i.er, %i.er
  %i.ex = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.er, <2 x float> %i.ev) ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = tail call nsz float @cbrtf(float noundef %i.ey) #9
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = tail call nsz float @cbrtf(float noundef %i.fa) #9
  %i.fc = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fb, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fe = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.eg, i64 1
  %i.fg = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fi = fdiv nsz <2 x float> %i.ff, %i.fh       ; 2 uses
  %i.fj = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fk = insertelement <2 x float> %i.fj, float %i.ee, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.fh       ; 2 uses
  %i.fm = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.fn = fdiv nsz <2 x float> %i.fm, %i.fh       ; 2 uses
  %i.fo = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fi, <2 x float> %i.fo)
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fn, <2 x float> %i.fp)
  %i.fr = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fq)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.fs = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.eg, i64 1
  %i.fu = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fv = insertelement <2 x float> %i.fu, float %i.ee, i64 0
  %i.fw = fadd nsz <2 x float> %i.ft, %i.fv
  %i.fx = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.fy = fadd nsz <2 x float> %i.fw, %i.fx
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.fz = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.ga = insertelement <2 x float> %i.fz, float %i.eg, i64 1
  %i.gb = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.ee, i64 0
  %i.gd = fadd nsz <2 x float> %i.ga, %i.gc
  %i.ge = insertelement <2 x float> %i.eh, float %i.ef, i64 0
  %i.gf = fadd nsz <2 x float> %i.gd, %i.ge
  %i.gg = fadd nsz <2 x float> %i.gf, splat (float 1.000000e+00)
  %i.gh = fdiv nsz <2 x float> %i.gg, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i8 @llvm.umax.i8(i8 %i.df, i8 %i.di)
  %.109.i184.us = tail call i8 @llvm.umax.i8(i8 %4, i8 %i.dl)
  %.109.i.us = uitofp i8 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.eb, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.eh, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i8 @llvm.umax.i8(i8 %i.df, i8 %i.di)
  %..i185.us = tail call i8 @llvm.umax.i8(i8 %13, i8 %i.dl)
  %..i.us = uitofp i8 %..i185.us to float
  %14 = tail call i8 @llvm.umin.i8(i8 %i.df, i8 %i.di)
  %15 = tail call i8 @llvm.umin.i8(i8 %14, i8 %i.dl)
  %16 = uitofp i8 %15 to float
  %17 = extractelement <2 x i32> %i.eb, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.eh, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.gi = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.gj = phi <2 x float> [ %i.fd, %bb.h ], [ %i.gi, %bb.m ], [ %12, %bb.l ], [ %i.gh, %bb.k ], [ %i.fy, %bb.j ], [ %i.fr, %bb.i ] ; 2 uses
  %i.gk = extractelement <2 x float> %i.gj, i64 1 ; 2 uses
  %i.gl = fcmp nsz ogt float %i.gk, 0.000000e+00
  br i1 %i.gl, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.gm = extractelement <2 x float> %i.gj, i64 0
  %i.gn = fdiv nsz float %i.gm, %i.gk             ; 2 uses
  %i.go = fmul nsz float %i.gn, %i.eg
  %i.gp = fptosi float %i.go to i32
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul nsz <2 x float> %i.gr, %i.eh
  %i.gt = fptosi <2 x float> %i.gs to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.gp, %bb.n ], [ %i.dv, %preserve_color.exit.us ], [ %i.dv, %bb.g ] ; 3 uses
  %i.gu = phi <2 x i32> [ %i.gt, %bb.n ], [ %i.eb, %preserve_color.exit.us ], [ %i.eb, %bb.g ] ; 2 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 256
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.gv = sext i1 %isnotneg.i165.us to i8
  %i.gw = trunc nuw i32 %.0145.us to i8
  %.0.i166.us = select i1 %.not.i164.us, i8 %i.gw, i8 %i.gv
  %i.gx = getelementptr inbounds i8, ptr %.0151193.us, i64 %indvars.iv
  store i8 %.0.i166.us, ptr %i.gx, align 1, !tbaa !46
  %i.gy = extractelement <2 x i32> %i.gu, i64 0   ; 3 uses
  %.not.i161.us = icmp ult i32 %i.gy, 256
  %isnotneg.i162.us = icmp sgt i32 %i.gy, -1
  %i.gz = sext i1 %isnotneg.i162.us to i8
  %i.ha = trunc nuw i32 %i.gy to i8
  %.0.i163.us = select i1 %.not.i161.us, i8 %i.ha, i8 %i.gz
  %i.hb = getelementptr inbounds i8, ptr %.0150194.us, i64 %indvars.iv
  store i8 %.0.i163.us, ptr %i.hb, align 1, !tbaa !46
  %i.hc = extractelement <2 x i32> %i.gu, i64 1   ; 3 uses
  %.not.i158.us = icmp ult i32 %i.hc, 256
  %isnotneg.i159.us = icmp sgt i32 %i.hc, -1
  %i.hd = sext i1 %isnotneg.i159.us to i8
  %i.he = trunc nuw i32 %i.hc to i8
  %.0.i160.us = select i1 %.not.i158.us, i8 %i.he, i8 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %.0149195.us, i64 %indvars.iv
  store i8 %.0.i160.us, ptr %i.hf, align 1, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.dc ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.hg, label %bb.e, label %.lr.ph187.us, !llvm.loop !176

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us, %bb.o
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.o ], [ 0, %preserve_color.exit.thread.us ] ; 3 uses
  %i.hh = load i32, ptr %i.da, align 4, !tbaa !47
  %i.hi = icmp eq i32 %i.hh, 4
  br i1 %i.hi, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %.lr.ph187.us
  %i.hj = getelementptr inbounds i8, ptr %.0152192.us, i64 %indvars.iv199
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !46
  %i.hl = zext i8 %i.hk to i32
  %i.hm = sub nsw i32 %i.hl, %i.ci
  %i.hn = sitofp nsz i32 %i.hm to float
  %i.ho = tail call nsz float @llvm.fmuladd.f32(float %i.hn, float %i.cq, float %i.db)
  %i.hp = fptosi float %i.ho to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.hp, 256
  %isnotneg.i.us = icmp sgt i32 %i.hp, -1
  %i.hq = sext i1 %isnotneg.i.us to i8
  %i.hr = trunc nuw i32 %i.hp to i8
  %.0.i.us = select i1 %.not.i.us, i8 %i.hr, i8 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.0148196.us, i64 %indvars.iv199
  store i8 %.0.i.us, ptr %i.hs, align 1, !tbaa !46
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, %i.dc ; 2 uses
  %i.ht = icmp slt i64 %indvars.iv.next200, %i.dd
  br i1 %i.ht, label %.lr.ph187.us, label %.critedge.us, !llvm.loop !177

.critedge.us:                                     ; preds = %.lr.ph187.us, %bb.o
  %i.hu = getelementptr inbounds i8, ptr %.0155189.us, i64 %i.v
  %i.hv = getelementptr inbounds i8, ptr %.0154190.us, i64 %i.v
  %i.hw = getelementptr inbounds i8, ptr %.0153191.us, i64 %i.v
  %i.hx = getelementptr inbounds i8, ptr %.0152192.us, i64 %i.v
  %i.hy = getelementptr inbounds i8, ptr %.0151193.us, i64 %i.y
  %i.hz = getelementptr inbounds i8, ptr %.0150194.us, i64 %i.y
  %i.ia = getelementptr inbounds i8, ptr %.0149195.us, i64 %i.y
  %i.ib = getelementptr inbounds i8, ptr %.0148196.us, i64 %i.y
  %i.ic = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ic, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !178

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_9_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in150 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in152 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in154 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in154 to i32             ; 2 uses
  %i.cj = fptosi float %.in152 to i32             ; 2 uses
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>   ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
end_hunk_2
begin_hunk_3_@colorlevels_slice_9_planar:bb.a
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_9_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.iy, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.ix, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.iw, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.iv, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.iu, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.it, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.is, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.ir, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.iq, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 5 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 5 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 5 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 6 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 5 uses
  %i.ex = uitofp i16 %i.ed to float               ; 4 uses
  %i.ey = uitofp i16 %i.eg to float               ; 4 uses
  %i.ez = uitofp i16 %i.ei to float               ; 4 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 5 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 11 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %.109.i184.us = tail call i16 @llvm.umax.i16(i16 %4, i16 %i.ei)
  %.109.i.us = uitofp i16 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.ew, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.fb, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %..i185.us = tail call i16 @llvm.umax.i16(i16 %13, i16 %i.ei)
  %..i.us = uitofp i16 %..i185.us to float
  %14 = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 %i.eg)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %i.ei)
  %16 = uitofp i16 %15 to float
  %17 = extractelement <2 x i32> %i.ew, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.fb, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.hc = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hc, %bb.m ], [ %12, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.fa
  %i.hj = fptosi float %i.hi to i32
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul nsz <2 x float> %i.hl, %i.fb
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hj, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ho = phi <2 x i32> [ %i.hn, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.hp = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 511)
  %i.hr = trunc nuw nsw i32 %i.hq to i16
  %i.hs = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !63
  %i.ht = extractelement <2 x i32> %i.ho, i64 0
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 511)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !63
  %i.hy = extractelement <2 x i32> %i.ho, i64 1
  %i.hz = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 511)
  %i.ib = trunc nuw nsw i32 %i.ia to i16
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.id = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.id, label %bb.e, label %.lr.ph187.us, !llvm.loop !205

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.ie = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !63
  %i.ig = zext i16 %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.ci
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.cq, float %i.cz)
  %i.ik = fptosi float %i.ij to i32
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.il, i32 511)
  %i.in = trunc nuw nsw i32 %i.im to i16
  %i.io = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.in, ptr %i.io, align 2, !tbaa !63
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.ip, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !206

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.iq = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.is = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.it = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.iv = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.iw = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.iy = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.iy, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !207

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.iz, align 2, !tbaa !63, !alias.scope !208
  %i.ja = zext <8 x i16> %wide.load to <8 x i32>
  %i.jb = sub nsw <8 x i32> %i.ja, %broadcast.splat
  %i.jc = sitofp nsz <8 x i32> %i.jb to <8 x float>
  %i.jd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jc, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.je = fptosi <8 x float> %i.jd to <8 x i32>
  %i.jf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.je, <8 x i32> zeroinitializer)
  %i.jg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jf, <8 x i32> splat (i32 511))
  %i.jh = trunc nuw nsw <8 x i32> %i.jg to <8 x i16>
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.jh, ptr %i.ji, align 2, !tbaa !63, !alias.scope !211, !noalias !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_10_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
end_hunk_3
begin_hunk_4_@colorlevels_slice_10_planar:bb.a
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_10_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.iy, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.ix, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.iw, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.iv, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.iu, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.it, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.is, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.ir, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.iq, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 5 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 5 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 5 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 6 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 5 uses
  %i.ex = uitofp i16 %i.ed to float               ; 4 uses
  %i.ey = uitofp i16 %i.eg to float               ; 4 uses
  %i.ez = uitofp i16 %i.ei to float               ; 4 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 5 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 11 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %.109.i184.us = tail call i16 @llvm.umax.i16(i16 %4, i16 %i.ei)
  %.109.i.us = uitofp i16 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.ew, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.fb, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %..i185.us = tail call i16 @llvm.umax.i16(i16 %13, i16 %i.ei)
  %..i.us = uitofp i16 %..i185.us to float
  %14 = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 %i.eg)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %i.ei)
  %16 = uitofp i16 %15 to float
  %17 = extractelement <2 x i32> %i.ew, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.fb, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.hc = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hc, %bb.m ], [ %12, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.fa
  %i.hj = fptosi float %i.hi to i32
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul nsz <2 x float> %i.hl, %i.fb
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hj, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ho = phi <2 x i32> [ %i.hn, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.hp = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 1023)
  %i.hr = trunc nuw nsw i32 %i.hq to i16
  %i.hs = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !63
  %i.ht = extractelement <2 x i32> %i.ho, i64 0
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 1023)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !63
  %i.hy = extractelement <2 x i32> %i.ho, i64 1
  %i.hz = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 1023)
  %i.ib = trunc nuw nsw i32 %i.ia to i16
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.id = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.id, label %bb.e, label %.lr.ph187.us, !llvm.loop !240

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.ie = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !63
  %i.ig = zext i16 %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.ci
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.cq, float %i.cz)
  %i.ik = fptosi float %i.ij to i32
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.il, i32 1023)
  %i.in = trunc nuw nsw i32 %i.im to i16
  %i.io = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.in, ptr %i.io, align 2, !tbaa !63
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.ip, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !241

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.iq = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.is = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.it = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.iv = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.iw = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.iy = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.iy, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !242

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.iz, align 2, !tbaa !63, !alias.scope !243
  %i.ja = zext <8 x i16> %wide.load to <8 x i32>
  %i.jb = sub nsw <8 x i32> %i.ja, %broadcast.splat
  %i.jc = sitofp nsz <8 x i32> %i.jb to <8 x float>
  %i.jd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jc, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.je = fptosi <8 x float> %i.jd to <8 x i32>
  %i.jf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.je, <8 x i32> zeroinitializer)
  %i.jg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jf, <8 x i32> splat (i32 1023))
  %i.jh = trunc nuw nsw <8 x i32> %i.jg to <8 x i16>
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.jh, ptr %i.ji, align 2, !tbaa !63, !alias.scope !246, !noalias !243
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_12_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
end_hunk_4
begin_hunk_5_@colorlevels_slice_12_planar:bb.a
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_12_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.iy, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.ix, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.iw, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.iv, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.iu, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.it, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.is, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.ir, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.iq, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 5 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 5 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 5 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 6 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 5 uses
  %i.ex = uitofp i16 %i.ed to float               ; 4 uses
  %i.ey = uitofp i16 %i.eg to float               ; 4 uses
  %i.ez = uitofp i16 %i.ei to float               ; 4 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 5 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 11 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %.109.i184.us = tail call i16 @llvm.umax.i16(i16 %4, i16 %i.ei)
  %.109.i.us = uitofp i16 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.ew, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.fb, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %..i185.us = tail call i16 @llvm.umax.i16(i16 %13, i16 %i.ei)
  %..i.us = uitofp i16 %..i185.us to float
  %14 = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 %i.eg)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %i.ei)
  %16 = uitofp i16 %15 to float
  %17 = extractelement <2 x i32> %i.ew, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.fb, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.hc = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hc, %bb.m ], [ %12, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.fa
  %i.hj = fptosi float %i.hi to i32
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul nsz <2 x float> %i.hl, %i.fb
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hj, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ho = phi <2 x i32> [ %i.hn, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.hp = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 4095)
  %i.hr = trunc nuw nsw i32 %i.hq to i16
  %i.hs = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !63
  %i.ht = extractelement <2 x i32> %i.ho, i64 0
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 4095)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !63
  %i.hy = extractelement <2 x i32> %i.ho, i64 1
  %i.hz = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 4095)
  %i.ib = trunc nuw nsw i32 %i.ia to i16
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.id = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.id, label %bb.e, label %.lr.ph187.us, !llvm.loop !275

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.ie = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !63
  %i.ig = zext i16 %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.ci
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.cq, float %i.cz)
  %i.ik = fptosi float %i.ij to i32
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.il, i32 4095)
  %i.in = trunc nuw nsw i32 %i.im to i16
  %i.io = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.in, ptr %i.io, align 2, !tbaa !63
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.ip, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !276

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.iq = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.is = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.it = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.iv = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.iw = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.iy = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.iy, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !277

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.iz, align 2, !tbaa !63, !alias.scope !278
  %i.ja = zext <8 x i16> %wide.load to <8 x i32>
  %i.jb = sub nsw <8 x i32> %i.ja, %broadcast.splat
  %i.jc = sitofp nsz <8 x i32> %i.jb to <8 x float>
  %i.jd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jc, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.je = fptosi <8 x float> %i.jd to <8 x i32>
  %i.jf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.je, <8 x i32> zeroinitializer)
  %i.jg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jf, <8 x i32> splat (i32 4095))
  %i.jh = trunc nuw nsw <8 x i32> %i.jg to <8 x i16>
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.jh, ptr %i.ji, align 2, !tbaa !63, !alias.scope !281, !noalias !278
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_14_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
end_hunk_5
begin_hunk_6_@colorlevels_slice_14_planar:bb.a
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph159.split.us.preheader318

.lr.ph159.split.us.preheader318:                  ; preds = %.lr.ph159.split.us.preheader, %middle.block
  %indvars.iv188.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.preheader ]
  br label %.lr.ph159.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_14_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep223 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep223
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.iy, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.ix, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.iw, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.iv, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.iu, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.it, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.is, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.ir, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.iq, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 5 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 5 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 5 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 6 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 5 uses
  %i.ex = uitofp i16 %i.ed to float               ; 4 uses
  %i.ey = uitofp i16 %i.eg to float               ; 4 uses
  %i.ez = uitofp i16 %i.ei to float               ; 4 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 5 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 11 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %.109.i184.us = tail call i16 @llvm.umax.i16(i16 %4, i16 %i.ei)
  %.109.i.us = uitofp i16 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.ew, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.fb, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %..i185.us = tail call i16 @llvm.umax.i16(i16 %13, i16 %i.ei)
  %..i.us = uitofp i16 %..i185.us to float
  %14 = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 %i.eg)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %i.ei)
  %16 = uitofp i16 %15 to float
  %17 = extractelement <2 x i32> %i.ew, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.fb, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.hc = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hc, %bb.m ], [ %12, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.fa
  %i.hj = fptosi float %i.hi to i32
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul nsz <2 x float> %i.hl, %i.fb
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hj, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ]
  %i.ho = phi <2 x i32> [ %i.hn, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 2 uses
  %i.hp = tail call i32 @llvm.smax.i32(i32 %.0145.us, i32 0)
  %i.hq = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 16383)
  %i.hr = trunc nuw nsw i32 %i.hq to i16
  %i.hs = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !63
  %i.ht = extractelement <2 x i32> %i.ho, i64 0
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 16383)
  %i.hw = trunc nuw nsw i32 %i.hv to i16
  %i.hx = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !63
  %i.hy = extractelement <2 x i32> %i.ho, i64 1
  %i.hz = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 0)
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 16383)
  %i.ib = trunc nuw nsw i32 %i.ia to i16
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.id = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.id, label %bb.e, label %.lr.ph187.us, !llvm.loop !310

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader229, %.lr.ph187.split.us
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph187.split.us ], [ %indvars.iv216.ph, %.lr.ph187.split.us.preheader229 ] ; 3 uses
  %i.ie = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv216
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !63
  %i.ig = zext i16 %i.if to i32
  %i.ih = sub nsw i32 %i.ig, %i.ci
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.cq, float %i.cz)
  %i.ik = fptosi float %i.ij to i32
  %i.il = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %i.im = tail call i32 @llvm.umin.i32(i32 %i.il, i32 16383)
  %i.in = trunc nuw nsw i32 %i.im to i16
  %i.io = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv216
  store i16 %i.in, ptr %i.io, align 2, !tbaa !63
  %indvars.iv.next217 = add nsw i64 %indvars.iv216, %i.df ; 2 uses
  %i.ip = icmp slt i64 %indvars.iv.next217, %i.dg
  br i1 %i.ip, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !311

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.iq = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.is = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.it = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.iv = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.iw = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.ix = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.iy = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.iy, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !312

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader229, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.iz = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.iz, align 2, !tbaa !63, !alias.scope !313
  %i.ja = zext <8 x i16> %wide.load to <8 x i32>
  %i.jb = sub nsw <8 x i32> %i.ja, %broadcast.splat
  %i.jc = sitofp nsz <8 x i32> %i.jb to <8 x float>
  %i.jd = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.jc, <8 x float> %broadcast.splat226, <8 x float> %broadcast.splat228)
  %i.je = fptosi <8 x float> %i.jd to <8 x i32>
  %i.jf = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.je, <8 x i32> zeroinitializer)
  %i.jg = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.jf, <8 x i32> splat (i32 16383))
  %i.jh = trunc nuw nsw <8 x i32> %i.jg to <8 x i16>
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.jh, ptr %i.ji, align 2, !tbaa !63, !alias.scope !316, !noalias !313
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader229

.lr.ph187.split.us.preheader229:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv216.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_16_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [2 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [2 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [2 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [2 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [2 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !60
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bh = load <2 x float>, ptr %i.bc, align 4, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 4, !tbaa !60
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load <2 x i32>, ptr %i.bk, align 4, !tbaa !40
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>
  %i.bp = load <2 x i32>, ptr %i.bm, align 4, !tbaa !40
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.bs = load <2 x i32>, ptr %i.bl, align 4, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.br, align 4, !tbaa !40
  %i.bu = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = sitofp <4 x i32> %i.bu to <4 x float>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bw = phi <2 x float> [ %i.be, %bb.b ], [ %i.bo, %bb.c ]
  %i.bx = phi <2 x float> [ %i.bf, %bb.b ], [ %i.bq, %bb.c ]
  %i.by = phi <4 x float> [ %i.bj, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
end_hunk_6
begin_hunk_7_@colorlevels_slice_16_planar:bb.a
  br i1 %i.jz, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us.us, label %.lr.ph159.split.us.us.preheader320

.lr.ph159.split.us.us.preheader320:               ; preds = %.lr.ph159.split.us.us.preheader, %middle.block
  %indvars.iv190.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph159.split.us.us.preheader ]
  br label %.lr.ph159.split.us.us

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader156.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_16_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 1                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !60
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !40
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !40
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !40
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in178 = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %.in180 = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %.in182 = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ]
  %i.cf = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ]
  %i.cg = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ch = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.ci = fptosi float %.in182 to i32             ; 2 uses
  %i.cj = fptosi float %.in180 to i32
  %i.ck = fptosi <2 x float> %i.cg to <2 x i32>
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !60 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader184.lr.ph, label %._crit_edge

.preheader184.lr.ph:                              ; preds = %bb.d
  %i.cs = fptosi float %i.cf to i32
  %i.ct = fptosi <2 x float> %i.ch to <2 x i32>
  %i.cu = fptosi float %.in178 to i32
  %i.cv = icmp sgt i32 %i.d, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cx = sitofp nsz i32 %i.cu to float
  %i.cy = sitofp <2 x i32> %i.ct to <2 x float>
  %i.cz = sitofp nsz i32 %i.cs to float           ; 2 uses
  %i.da = sext i32 %i.v to i64                    ; 5 uses
  %i.db = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cv, label %.preheader184.lr.ph.split.us, label %._crit_edge

.preheader184.lr.ph.split.us:                     ; preds = %.preheader184.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !84
  %i.df = sext i32 %i.f to i64                    ; 3 uses
  %i.dg = zext nneg i32 %i.d to i64               ; 5 uses
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !47
  %i.di = icmp eq i32 %i.dh, 4
  %i.dj = xor i64 %i.m, -1
  %i.dk = add i64 %i.r, %i.dj
  %i.dl = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.db
  %i.dn = shl i64 %i.dm, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.dg)
  %i.do = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.dp = mul nsw i64 %i.dl, %i.da
  %i.dq = shl i64 %i.dp, 1
  %min.iters.check = icmp ugt i32 %i.d, 7
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dr = shl nuw nsw i64 %smax, 1
  %i.ds = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %i.aw, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.do
  %scevgep = getelementptr i8, ptr %i.dv, i64 2
  %i.dw = getelementptr i8, ptr %i.ak, i64 %i.dq
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.do
  %scevgep225 = getelementptr i8, ptr %i.dy, i64 2
  %bound0 = icmp ult ptr %i.ax, %scevgep225
  %bound1 = icmp ult ptr %i.al, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i32 %i.v, %i.y
  %i.ea = icmp slt i32 %i.dz, 0
  %i.eb = or i1 %found.conflict, %i.ea
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.cq, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  br label %.preheader184.us

.preheader184.us:                                 ; preds = %.critedge.us, %.preheader184.lr.ph.split.us
  %.0147197.us = phi i32 [ %i.n, %.preheader184.lr.ph.split.us ], [ %i.iv, %.critedge.us ]
  %.0148196.us = phi ptr [ %i.ax, %.preheader184.lr.ph.split.us ], [ %i.iu, %.critedge.us ] ; 3 uses
  %.0149195.us = phi ptr [ %i.au, %.preheader184.lr.ph.split.us ], [ %i.it, %.critedge.us ] ; 2 uses
  %.0150194.us = phi ptr [ %i.ar, %.preheader184.lr.ph.split.us ], [ %i.is, %.critedge.us ] ; 2 uses
  %.0151193.us = phi ptr [ %i.ao, %.preheader184.lr.ph.split.us ], [ %i.ir, %.critedge.us ] ; 2 uses
  %.0152192.us = phi ptr [ %i.al, %.preheader184.lr.ph.split.us ], [ %i.iq, %.critedge.us ] ; 3 uses
  %.0153191.us = phi ptr [ %i.ai, %.preheader184.lr.ph.split.us ], [ %i.ip, %.critedge.us ] ; 2 uses
  %.0154190.us = phi ptr [ %i.af, %.preheader184.lr.ph.split.us ], [ %i.io, %.critedge.us ] ; 2 uses
  %.0155189.us = phi ptr [ %i.ac, %.preheader184.lr.ph.split.us ], [ %i.in, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader184.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader184.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ec = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %indvars.iv
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !63 ; 5 uses
  %i.ee = zext i16 %i.ed to i32
  %i.ef = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63 ; 5 uses
  %i.eh = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %indvars.iv
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !63 ; 5 uses
  %i.ej = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ek = insertelement <2 x i16> %i.ej, i16 %i.ei, i64 1
  %i.el = zext <2 x i16> %i.ek to <2 x i32>
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = load i32, ptr %i.cw, align 4, !tbaa !94
  %i.en = sitofp nsz i32 %i.em to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.eo = phi nsz float [ %i.en, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ep = sub nsw i32 %i.ee, %i.cj
  %i.eq = sitofp nsz i32 %i.ep to float
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.cm, float %i.cx)
  %i.es = fptosi float %i.er to i32               ; 6 uses
  %i.et = sub nsw <2 x i32> %i.el, %i.ck
  %i.eu = sitofp <2 x i32> %i.et to <2 x float>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.co, <2 x float> %i.cy)
  %i.ew = fptosi <2 x float> %i.ev to <2 x i32>   ; 5 uses
  %i.ex = uitofp i16 %i.ed to float               ; 4 uses
  %i.ey = uitofp i16 %i.eg to float               ; 4 uses
  %i.ez = uitofp i16 %i.ei to float               ; 4 uses
  %i.fa = sitofp nsz i32 %i.es to float           ; 5 uses
  %i.fb = sitofp <2 x i32> %i.ew to <2 x float>   ; 11 uses
  switch i32 %i.de, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.fc = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.fa, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fg = fdiv nsz <2 x float> %i.fd, %i.ff       ; 3 uses
  %i.fh = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fi = insertelement <2 x float> %i.fh, float %i.ey, i64 0
  %i.fj = fdiv nsz <2 x float> %i.fi, %i.ff       ; 3 uses
  %i.fk = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.fl = fdiv nsz <2 x float> %i.fk, %i.ff       ; 3 uses
  %i.fm = fmul nsz <2 x float> %i.fg, %i.fg
  %i.fn = fmul nsz <2 x float> %i.fj, %i.fj
  %i.fo = fmul nsz <2 x float> %i.fj, %i.fn
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fg, <2 x float> %i.fo)
  %i.fq = fmul nsz <2 x float> %i.fl, %i.fl
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.fl, <2 x float> %i.fp) ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = tail call nsz float @cbrtf(float noundef %i.fs) #9
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = tail call nsz float @cbrtf(float noundef %i.fu) #9
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.fv, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fy = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fa, i64 1
  %i.ga = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gc = fdiv nsz <2 x float> %i.fz, %i.gb       ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ge = insertelement <2 x float> %i.gd, float %i.ey, i64 0
  %i.gf = fdiv nsz <2 x float> %i.ge, %i.gb       ; 2 uses
  %i.gg = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gh = fdiv nsz <2 x float> %i.gg, %i.gb       ; 2 uses
  %i.gi = fmul nsz <2 x float> %i.gf, %i.gf
  %i.gj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.gc, <2 x float> %i.gi)
  %i.gk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gh, <2 x float> %i.gj)
  %i.gl = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gk)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.gm = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.fa, i64 1
  %i.go = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gp = insertelement <2 x float> %i.go, float %i.ey, i64 0
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gt = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.fa, i64 1
  %i.gv = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gw = insertelement <2 x float> %i.gv, float %i.ey, i64 0
  %i.gx = fadd nsz <2 x float> %i.gu, %i.gw
  %i.gy = insertelement <2 x float> %i.fb, float %i.ez, i64 0
  %i.gz = fadd nsz <2 x float> %i.gx, %i.gy
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 1.000000e+00)
  %i.hb = fdiv nsz <2 x float> %i.ha, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %4 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %.109.i184.us = tail call i16 @llvm.umax.i16(i16 %4, i16 %i.ei)
  %.109.i.us = uitofp i16 %.109.i184.us to float
  %5 = extractelement <2 x i32> %i.ew, i64 0
  %6 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %5)
  %7 = sitofp i32 %6 to float                     ; 2 uses
  %8 = extractelement <2 x float> %i.fb, i64 1    ; 2 uses
  %9 = fcmp nsz olt float %8, %7
  %10 = select nsz i1 %9, float %7, float %8
  %11 = insertelement <2 x float> poison, float %.109.i.us, i64 0
  %12 = insertelement <2 x float> %11, float %10, i64 1
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %13 = tail call i16 @llvm.umax.i16(i16 %i.ed, i16 %i.eg)
  %..i185.us = tail call i16 @llvm.umax.i16(i16 %13, i16 %i.ei)
  %..i.us = uitofp i16 %..i185.us to float
  %14 = tail call i16 @llvm.umin.i16(i16 %i.ed, i16 %i.eg)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 %i.ei)
  %16 = uitofp i16 %15 to float
  %17 = extractelement <2 x i32> %i.ew, i64 0     ; 2 uses
  %18 = tail call i32 @llvm.smax.i32(i32 %i.es, i32 %17)
  %19 = sitofp i32 %18 to float                   ; 2 uses
  %20 = extractelement <2 x float> %i.fb, i64 1   ; 4 uses
  %21 = fcmp nsz olt float %20, %19
  %22 = select nsz i1 %21, float %19, float %20
  %23 = tail call i32 @llvm.smin.i32(i32 %i.es, i32 %17)
  %24 = sitofp i32 %23 to float                   ; 2 uses
  %25 = fcmp nsz olt float %20, %24
  %26 = select nsz i1 %25, float %20, float %24
  %27 = insertelement <2 x float> poison, float %..i.us, i64 0
  %28 = insertelement <2 x float> %27, float %22, i64 1
  %29 = insertelement <2 x float> poison, float %16, i64 0
  %30 = insertelement <2 x float> %29, float %26, i64 1
  %i.hc = fadd nsz <2 x float> %28, %30
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fx, %bb.h ], [ %i.hc, %bb.m ], [ %12, %bb.l ], [ %i.hb, %bb.k ], [ %i.gs, %bb.j ], [ %i.gl, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.hh, %i.fa
  %i.hj = fptosi float %i.hi to i32
  %i.hk = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul nsz <2 x float> %i.hl, %i.fb
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi i32 [ %i.hj, %bb.n ], [ %i.es, %preserve_color.exit.us ], [ %i.es, %bb.g ] ; 3 uses
  %i.ho = phi <2 x i32> [ %i.hn, %bb.n ], [ %i.ew, %preserve_color.exit.us ], [ %i.ew, %bb.g ] ; 3 uses
  %.not.i164.us = icmp ult i32 %.0145.us, 65536
  %isnotneg.i165.us = icmp sgt i32 %.0145.us, -1
  %i.hp = sext i1 %isnotneg.i165.us to i16
  %i.hq = trunc nuw i32 %.0145.us to i16
  %.0.i166.us = select i1 %.not.i164.us, i16 %i.hq, i16 %i.hp
  %i.hr = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %indvars.iv
  store i16 %.0.i166.us, ptr %i.hr, align 2, !tbaa !63
  %i.hs = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %indvars.iv
  %i.ht = icmp ult <2 x i32> %i.ho, splat (i32 65536)
  %i.hu = icmp sgt <2 x i32> %i.ho, splat (i32 -1)
  %i.hv = sext <2 x i1> %i.hu to <2 x i16>
  %i.hw = trunc <2 x i32> %i.ho to <2 x i16>
  %i.hx = select <2 x i1> %i.ht, <2 x i16> %i.hw, <2 x i16> %i.hv ; 2 uses
  %i.hy = extractelement <2 x i16> %i.hx, i64 0
  store i16 %i.hy, ptr %i.hs, align 2, !tbaa !63
  %i.hz = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %indvars.iv
  %i.ia = extractelement <2 x i16> %i.hx, i64 1
  store i16 %i.ia, ptr %i.hz, align 2, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.df ; 2 uses
  %i.ib = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.ib, label %bb.e, label %.lr.ph187.us, !llvm.loop !345

.lr.ph187.split.us:                               ; preds = %.lr.ph187.split.us.preheader231, %.lr.ph187.split.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph187.split.us ], [ %indvars.iv218.ph, %.lr.ph187.split.us.preheader231 ] ; 3 uses
  %i.ic = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %indvars.iv218
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !63
  %i.ie = zext i16 %i.id to i32
  %i.if = sub nsw i32 %i.ie, %i.ci
  %i.ig = sitofp nsz i32 %i.if to float
  %i.ih = tail call nsz float @llvm.fmuladd.f32(float %i.ig, float %i.cq, float %i.cz)
  %i.ii = fptosi float %i.ih to i32               ; 3 uses
  %.not.i.us = icmp ult i32 %i.ii, 65536
  %isnotneg.i.us = icmp sgt i32 %i.ii, -1
  %i.ij = sext i1 %isnotneg.i.us to i16
  %i.ik = trunc nuw i32 %i.ii to i16
  %.0.i.us = select i1 %.not.i.us, i16 %i.ik, i16 %i.ij
  %i.il = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %indvars.iv218
  store i16 %.0.i.us, ptr %i.il, align 2, !tbaa !63
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, %i.df ; 2 uses
  %i.im = icmp slt i64 %indvars.iv.next219, %i.dg
  br i1 %i.im, label %.lr.ph187.split.us, label %.critedge.us, !llvm.loop !346

.critedge.us:                                     ; preds = %.lr.ph187.split.us, %middle.block, %.lr.ph187.us
  %i.in = getelementptr inbounds [2 x i8], ptr %.0155189.us, i64 %i.da
  %i.io = getelementptr inbounds [2 x i8], ptr %.0154190.us, i64 %i.da
  %i.ip = getelementptr inbounds [2 x i8], ptr %.0153191.us, i64 %i.da
  %i.iq = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %i.da
  %i.ir = getelementptr inbounds [2 x i8], ptr %.0151193.us, i64 %i.db
  %i.is = getelementptr inbounds [2 x i8], ptr %.0150194.us, i64 %i.db
  %i.it = getelementptr inbounds [2 x i8], ptr %.0149195.us, i64 %i.db
  %i.iu = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %i.db
  %i.iv = add nsw i32 %.0147197.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.iv, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader184.us, !llvm.loop !347

.lr.ph187.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.di, label %.lr.ph187.split.us.preheader, label %.critedge.us

.lr.ph187.split.us.preheader:                     ; preds = %.lr.ph187.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.eb
  br i1 %brmerge, label %.lr.ph187.split.us.preheader231, label %vector.body

vector.body:                                      ; preds = %.lr.ph187.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph187.split.us.preheader ] ; 3 uses
  %i.iw = getelementptr inbounds [2 x i8], ptr %.0152192.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.iw, align 2, !tbaa !63, !alias.scope !348
  %i.ix = zext <8 x i16> %wide.load to <8 x i32>
  %i.iy = sub nsw <8 x i32> %i.ix, %broadcast.splat
  %i.iz = sitofp nsz <8 x i32> %i.iy to <8 x float>
  %i.ja = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.iz, <8 x float> %broadcast.splat228, <8 x float> %broadcast.splat230)
  %i.jb = fptosi <8 x float> %i.ja to <8 x i32>   ; 3 uses
  %i.jc = icmp ult <8 x i32> %i.jb, splat (i32 65536)
  %i.jd = icmp sgt <8 x i32> %i.jb, splat (i32 -1)
  %i.je = sext <8 x i1> %i.jd to <8 x i16>
  %i.jf = trunc nuw <8 x i32> %i.jb to <8 x i16>
  %i.jg = select <8 x i1> %i.jc, <8 x i16> %i.jf, <8 x i16> %i.je
  %i.jh = getelementptr inbounds [2 x i8], ptr %.0148196.us, i64 %index
  store <8 x i16> %i.jg, ptr %i.jh, align 2, !tbaa !63, !alias.scope !351, !noalias !348
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !353

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph187.split.us.preheader231

.lr.ph187.split.us.preheader231:                  ; preds = %.lr.ph187.split.us.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph187.split.us.preheader ]
  br label %.lr.ph187.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader184.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_slice_32_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42
  %i.v = ashr i32 %i.u, 2                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %i.y = ashr i32 %i.x, 2                         ; 5 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr [4 x i8], ptr %i.z, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.ab ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.ab ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44 ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %i.ab ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44 ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.ab ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !93
  %i.ba = icmp eq i32 %i.az, 32
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load <2 x float>, ptr %i.be, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load <2 x float>, ptr %i.bd, align 8, !tbaa !60
  %i.bi = load <2 x float>, ptr %i.bg, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !60
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float %i.bc, i64 0
  %i.bn = insertelement <4 x float> %i.bm, float %i.bk, i64 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load <2 x i32>, ptr %i.br, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load <2 x i32>, ptr %i.bq, align 8, !tbaa !40
  %i.bv = sitofp <2 x i32> %i.bu to <2 x float>
  %i.bw = load <2 x i32>, ptr %i.bt, align 8, !tbaa !40
end_hunk_7
begin_hunk_8_@colorlevels_preserve_slice_32_planar:bb.a
  %i.eh = fsub nsz float %i.dz, %i.cg
  %i.ei = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.eh, i64 1
  %i.ej = insertelement <2 x float> %i.dm, float %i.dz, i64 0
  %i.ek = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.dl, <2 x float> %i.ej) ; 10 uses
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ed, i64 1
  %i.en = fsub nsz <2 x float> %i.em, %i.cj
  %i.eo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.co, <2 x float> %i.ck) ; 15 uses
  %i.ep = extractelement <2 x float> %i.ek, i64 1 ; 3 uses
  switch i32 %i.cy, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.eq = insertelement <2 x float> %i.ek, float %i.dz, i64 0
  %i.er = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.et = fdiv nsz <2 x float> %i.eq, %i.es       ; 3 uses
  %i.eu = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ev = insertelement <2 x float> %i.eu, float %i.eb, i64 0
  %i.ew = fdiv nsz <2 x float> %i.ev, %i.es       ; 3 uses
  %i.ex = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.ey = fdiv nsz <2 x float> %i.ex, %i.es       ; 3 uses
  %i.ez = fmul nsz <2 x float> %i.et, %i.et
  %i.fa = fmul nsz <2 x float> %i.ew, %i.ew
  %i.fb = fmul nsz <2 x float> %i.ew, %i.fa
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.et, <2 x float> %i.fb)
  %i.fd = fmul nsz <2 x float> %i.ey, %i.ey
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ey, <2 x float> %i.fc) ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = tail call nsz float @cbrtf(float noundef %i.ff) #9
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = tail call nsz float @cbrtf(float noundef %i.fh) #9
  %i.fj = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.fi, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fl = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fn = fdiv nsz <2 x float> %i.ek, %i.fm       ; 2 uses
  %i.fo = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fp = insertelement <2 x float> %i.fo, float %i.eb, i64 0
  %i.fq = fdiv nsz <2 x float> %i.fp, %i.fm       ; 2 uses
  %i.fr = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.fs = fdiv nsz <2 x float> %i.fr, %i.fm       ; 2 uses
  %i.ft = fmul nsz <2 x float> %i.fq, %i.fq
  %i.fu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fn, <2 x float> %i.ft)
  %i.fv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fs, <2 x float> %i.fu)
  %i.fw = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fv)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.fx = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x float> %i.fx, float %i.eb, i64 0
  %i.fz = fadd nsz <2 x float> %i.ek, %i.fy
  %i.ga = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.gb = fadd nsz <2 x float> %i.fz, %i.ga
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.gc = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gd = insertelement <2 x float> %i.gc, float %i.eb, i64 0
  %i.ge = fadd nsz <2 x float> %i.ek, %i.gd
  %i.gf = insertelement <2 x float> %i.eo, float %i.ed, i64 0
  %i.gg = fadd nsz <2 x float> %i.ge, %i.gf
  %i.gh = fadd nsz <2 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fdiv nsz <2 x float> %i.gh, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %i.gj = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gk = insertelement <2 x float> %i.gj, float %i.eb, i64 0 ; 2 uses
  %i.gl = fcmp nsz ogt <2 x float> %i.ek, %i.gk
  %i.gm = select <2 x i1> %i.gl, <2 x float> %i.ek, <2 x float> %i.gk ; 2 uses
  %i.gn = insertelement <2 x float> %i.eo, float %i.ed, i64 0 ; 2 uses
  %i.go = fcmp nsz ogt <2 x float> %i.gm, %i.gn
  %i.gp = select <2 x i1> %i.go, <2 x float> %i.gm, <2 x float> %i.gn
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %i.gq = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gr = insertelement <2 x float> %i.gq, float %i.eb, i64 0 ; 3 uses
  %i.gs = fcmp nsz ogt <2 x float> %i.ek, %i.gr   ; 2 uses
  %i.gt = select <2 x i1> %i.gs, <2 x float> %i.ek, <2 x float> %i.gr ; 2 uses
  %i.gu = insertelement <2 x float> %i.eo, float %i.ed, i64 0 ; 4 uses
  %i.gv = fcmp nsz ogt <2 x float> %i.gt, %i.gu
  %i.gw = select <2 x i1> %i.gv, <2 x float> %i.gt, <2 x float> %i.gu
  %i.gx = select <2 x i1> %i.gs, <2 x float> %i.gr, <2 x float> %i.ek ; 2 uses
  %i.gy = fcmp nsz ogt <2 x float> %i.gx, %i.gu
  %i.gz = select <2 x i1> %i.gy, <2 x float> %i.gu, <2 x float> %i.gx
  %i.ha = fadd nsz <2 x float> %i.gw, %i.gz
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hb = phi <2 x float> [ %i.fk, %bb.h ], [ %i.ha, %bb.m ], [ %i.gp, %bb.l ], [ %i.gi, %bb.k ], [ %i.gb, %bb.j ], [ %i.fw, %bb.i ] ; 2 uses
  %i.hc = extractelement <2 x float> %i.hb, i64 1 ; 2 uses
  %i.hd = fcmp nsz ogt float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.he = extractelement <2 x float> %i.hb, i64 0
  %i.hf = fdiv nsz float %i.he, %i.hc             ; 2 uses
  %i.hg = fmul nsz float %i.ep, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.eo, %i.hi
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi nsz float [ %i.hg, %bb.n ], [ %i.ep, %preserve_color.exit.us ], [ %i.ep, %bb.g ]
  %i.hk = phi <2 x float> [ %i.hj, %bb.n ], [ %i.eo, %preserve_color.exit.us ], [ %i.eo, %bb.g ] ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0151178.us, i64 %indvars.iv
  store float %.0145.us, ptr %i.hl, align 4, !tbaa !60
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %indvars.iv
  %i.hn = extractelement <2 x float> %i.hk, i64 0
  store float %i.hn, ptr %i.hm, align 4, !tbaa !60
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %indvars.iv
  %i.hp = extractelement <2 x float> %i.hk, i64 1
  store float %i.hp, ptr %i.ho, align 4, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cz ; 2 uses
  %i.hq = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.hq, label %bb.e, label %.lr.ph172.us, !llvm.loop !380

.lr.ph172.split.us:                               ; preds = %.lr.ph172.split.us.preheader214, %.lr.ph172.split.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.lr.ph172.split.us ], [ %indvars.iv200.ph, %.lr.ph172.split.us.preheader214 ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %indvars.iv200
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !60
  %i.ht = fsub nsz float %i.hs, %i.ch
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.cq, float %i.ci)
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %indvars.iv200
  store float %i.hu, ptr %i.hv, align 4, !tbaa !60
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, %i.cz ; 2 uses
  %i.hw = icmp slt i64 %indvars.iv.next201, %i.da
  br i1 %i.hw, label %.lr.ph172.split.us, label %.critedge.us, !llvm.loop !381

.critedge.us:                                     ; preds = %.lr.ph172.split.us, %middle.block, %.lr.ph172.us
  %i.hx = getelementptr inbounds [4 x i8], ptr %.0155174.us, i64 %i.cu
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0154175.us, i64 %i.cu
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0153176.us, i64 %i.cu
  %i.ia = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %i.cu
  %i.ib = getelementptr inbounds [4 x i8], ptr %.0151178.us, i64 %i.cv
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %i.cv
  %i.id = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %i.cv
  %i.ie = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %i.cv
  %i.if = add nsw i32 %.0147182.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.if, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader169.us, !llvm.loop !382

.lr.ph172.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.dc, label %.lr.ph172.split.us.preheader, label %.critedge.us

.lr.ph172.split.us.preheader:                     ; preds = %.lr.ph172.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.dx
  br i1 %brmerge, label %.lr.ph172.split.us.preheader214, label %vector.body

vector.body:                                      ; preds = %.lr.ph172.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph172.split.us.preheader ] ; 3 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <4 x float>, ptr %i.ig, align 4, !tbaa !60, !alias.scope !383
  %wide.load213 = load <4 x float>, ptr %i.ih, align 4, !tbaa !60, !alias.scope !383
  %i.ii = fsub nsz <4 x float> %wide.load, %broadcast.splat
  %i.ij = fsub nsz <4 x float> %wide.load213, %broadcast.splat
  %i.ik = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> %broadcast.splat210, <4 x float> %broadcast.splat212)
  %i.il = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %broadcast.splat210, <4 x float> %broadcast.splat212)
  %i.im = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %index ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store <4 x float> %i.ik, ptr %i.im, align 4, !tbaa !60, !alias.scope !386, !noalias !383
  store <4 x float> %i.il, ptr %i.in, align 4, !tbaa !60, !alias.scope !386, !noalias !383
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !388

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph172.split.us.preheader214

.lr.ph172.split.us.preheader214:                  ; preds = %.lr.ph172.split.us.preheader, %middle.block
  %indvars.iv200.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph172.split.us.preheader ]
  br label %.lr.ph172.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader169.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #6

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS7AVFrame", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 16}
!13 = !{!"AVFilterLink", !14, i64 0, !15, i64 8, !14, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !17, i64 72, !16, i64 96, !18, i64 104, !6, i64 112, !6, i64 116, !20, i64 120, !20, i64 168}
!14 = !{!"p1 _ZTS15AVFilterContext", !11, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !11, i64 0}
!16 = !{!"AVRational", !6, i64 0, !6, i64 4}
!17 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !11, i64 16}
!18 = !{!"p2 _ZTS15AVFrameSideData", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"AVFilterFormatsConfig", !21, i64 0, !21, i64 8, !22, i64 16, !21, i64 24, !21, i64 32, !21, i64 40}
!21 = !{!"p1 _ZTS15AVFilterFormats", !11, i64 0}
!22 = !{!"p1 _ZTS22AVFilterChannelLayouts", !11, i64 0}
!23 = !{!24, !11, i64 72}
!24 = !{!"AVFilterContext", !25, i64 0, !26, i64 8, !27, i64 16, !15, i64 24, !28, i64 32, !6, i64 40, !15, i64 48, !28, i64 56, !6, i64 64, !11, i64 72, !29, i64 80, !6, i64 88, !6, i64 92, !27, i64 96, !6, i64 104, !30, i64 112, !6, i64 120}
!25 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!26 = !{!"p1 _ZTS8AVFilter", !11, i64 0}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!"p2 _ZTS12AVFilterLink", !19, i64 0}
!29 = !{!"p1 _ZTS13AVFilterGraph", !11, i64 0}
!30 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!31 = !{!24, !28, i64 56}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS12AVFilterLink", !11, i64 0}
!34 = !{!35, !6, i64 160}
!35 = !{!"ColorLevelsContext", !25, i64 0, !7, i64 8, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 164, !6, i64 168, !7, i64 176}
!36 = !{!13, !6, i64 40}
!37 = !{!13, !6, i64 44}
!38 = !{!39, !6, i64 88}
!39 = !{!"ThreadData", !7, i64 0, !7, i64 32, !6, i64 64, !6, i64 68, !7, i64 72, !6, i64 88, !7, i64 92, !7, i64 108, !7, i64 124, !7, i64 140}
!40 = !{!6, !6, i64 0}
!41 = !{!39, !6, i64 64}
!42 = !{!39, !6, i64 68}
!43 = !{!35, !6, i64 152}
!44 = !{!27, !27, i64 0}
!45 = !{!35, !6, i64 156}
!46 = !{!7, !7, i64 0}
!47 = !{!35, !6, i64 140}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !7, i64 0}
!50 = !{!35, !6, i64 168}
!51 = distinct !{!51, !52, !53, !54}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !52, !53}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52, !53, !54}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !7, i64 0}
!62 = distinct !{!62, !52}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !7, i64 0}
!65 = distinct !{!65, !52, !53, !54}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52}
!68 = distinct !{!68, !52, !53, !54}
!69 = distinct !{!69, !52, !53}
!70 = distinct !{!70, !52}
!71 = distinct !{!71, !52}
!72 = !{!73, !49, i64 0}
!73 = !{!"Range", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!74 = !{!73, !49, i64 8}
!75 = !{!73, !49, i64 16}
!76 = !{!73, !49, i64 24}
!77 = distinct !{!77, !52, !53, !54}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52, !53, !54}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52}
!83 = distinct !{!83, !52}
!84 = !{!35, !6, i64 136}
!85 = !{!11, !11, i64 0}
!86 = !{!13, !6, i64 36}
!87 = !{!88, !7, i64 8}
!88 = !{!"AVPixFmtDescriptor", !27, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !89, i64 16, !7, i64 24, !27, i64 104}
!89 = !{!"long", !7, i64 0}
!90 = !{!88, !89, i64 16}
!91 = !{!92, !6, i64 16}
!92 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!93 = !{!35, !6, i64 144}
!94 = !{!35, !6, i64 148}
!95 = !{!96}
!96 = distinct !{!96, !97}
!97 = distinct !{!97, !"LVerDomain"}
!98 = !{!99}
!99 = distinct !{!99, !97}
!100 = !{!101}
!101 = distinct !{!101, !97}
!102 = !{!103}
!103 = distinct !{!103, !97}
!104 = !{!105, !106, !96, !99, !101}
!105 = distinct !{!105, !97}
!106 = distinct !{!106, !97}
!107 = !{!105}
!108 = !{!106, !96, !99, !101}
!109 = !{!106}
!110 = !{!96, !99, !101}
!111 = distinct !{!111, !52, !53, !54}
!112 = !{!"branch_weights", i32 4, i32 12}
!113 = distinct !{!113, !52, !53, !54}
!114 = distinct !{!114, !52, !53}
!115 = distinct !{!115, !52}
!116 = distinct !{!116, !52}
!117 = distinct !{!117, !52}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, !52}
!120 = !{!121}
!121 = distinct !{!121, !122}
!122 = distinct !{!122, !"LVerDomain"}
!123 = !{!124}
!124 = distinct !{!124, !122}
!125 = !{!126}
!126 = distinct !{!126, !122}
!127 = !{!128}
!128 = distinct !{!128, !122}
end_hunk_8
