Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3json__stringify_value_ex:bb.a

.lr.ph117.i:                                      ; preds = %.preheader109.i, %.lr.ph117.i
  %.190116.i = phi i32 [ %i.bz, %.lr.ph117.i ], [ %.089.lcssa.i, %.preheader109.i ]
  %.194115.i = phi x86_fp80 [ %i.by, %.lr.ph117.i ], [ %.093.lcssa.i, %.preheader109.i ]
  %i.by = fmul nnan x86_fp80 %.194115.i, 1.000000e-01 ; 3 uses
  %i.bz = add nuw nsw i32 %.190116.i, 1           ; 2 uses
  %i.ca = fcmp ult x86_fp80 %i.by, 1.000000e+01
  br i1 %i.ca, label %.preheader108.i, label %.lr.ph117.i, !llvm.loop !73

.preheader107.i:                                  ; preds = %.lr.ph122.i, %.preheader108.i
  %.295.lcssa.i = phi x86_fp80 [ %.194.lcssa.i, %.preheader108.i ], [ %i.gu, %.lr.ph122.i ] ; 2 uses
  %.291.lcssa.i = phi i32 [ %.190.lcssa.i, %.preheader108.i ], [ %i.gv, %.lr.ph122.i ] ; 17 uses
  %i.cb = fptosi x86_fp80 %.295.lcssa.i to i32
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %spec.store.select1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.i, i32 9) ; 2 uses
  %i.cc = trunc nuw nsw i32 %spec.store.select1.i to i8
  %i.cd = or disjoint i8 %i.cc, 48
  store i8 %i.cd, ptr %i.a, align 16, !tbaa !26
  %i.ce = uitofp nneg i32 %spec.store.select1.i to x86_fp80
  %i.cf = fsub x86_fp80 %.295.lcssa.i, %i.ce
  %i.cg = fmul x86_fp80 %i.cf, 1.000000e+01       ; 2 uses
  %i.ch = fptosi x86_fp80 %i.cg to i32
  %spec.store.select.1.i = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %spec.store.select1.1.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.1.i, i32 9) ; 2 uses
  %i.ci = trunc nuw nsw i32 %spec.store.select1.1.i to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !26
  %i.cl = uitofp nneg i32 %spec.store.select1.1.i to x86_fp80
  %i.cm = fsub x86_fp80 %i.cg, %i.cl
  %i.cn = fmul x86_fp80 %i.cm, 1.000000e+01       ; 2 uses
  %i.co = fptosi x86_fp80 %i.cn to i32
  %spec.store.select.2.i = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %spec.store.select1.2.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.2.i, i32 9) ; 2 uses
  %i.cp = trunc nuw nsw i32 %spec.store.select1.2.i to i8
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %i.cq, ptr %i.cr, align 2, !tbaa !26
  %i.cs = uitofp nneg i32 %spec.store.select1.2.i to x86_fp80
  %i.ct = fsub x86_fp80 %i.cn, %i.cs
  %i.cu = fmul x86_fp80 %i.ct, 1.000000e+01       ; 2 uses
  %i.cv = fptosi x86_fp80 %i.cu to i32
  %spec.store.select.3.i = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %spec.store.select1.3.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.3.i, i32 9) ; 2 uses
  %i.cw = trunc nuw nsw i32 %spec.store.select1.3.i to i8
  %i.cx = or disjoint i8 %i.cw, 48
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !26
  %i.cz = uitofp nneg i32 %spec.store.select1.3.i to x86_fp80
  %i.da = fsub x86_fp80 %i.cu, %i.cz
  %i.db = fmul x86_fp80 %i.da, 1.000000e+01       ; 2 uses
  %i.dc = fptosi x86_fp80 %i.db to i32
  %spec.store.select.4.i = tail call i32 @llvm.smax.i32(i32 %i.dc, i32 0)
  %spec.store.select1.4.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.4.i, i32 9) ; 2 uses
  %i.dd = trunc nuw nsw i32 %spec.store.select1.4.i to i8
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %i.de, ptr %i.df, align 4, !tbaa !26
  %i.dg = uitofp nneg i32 %spec.store.select1.4.i to x86_fp80
  %i.dh = fsub x86_fp80 %i.db, %i.dg
  %i.di = fmul x86_fp80 %i.dh, 1.000000e+01       ; 2 uses
  %i.dj = fptosi x86_fp80 %i.di to i32
  %spec.store.select.5.i = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 0)
  %spec.store.select1.5.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.5.i, i32 9) ; 2 uses
  %i.dk = trunc nuw nsw i32 %spec.store.select1.5.i to i8
  %i.dl = or disjoint i8 %i.dk, 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !26
  %i.dn = uitofp nneg i32 %spec.store.select1.5.i to x86_fp80
  %i.do = fsub x86_fp80 %i.di, %i.dn
  %i.dp = fmul x86_fp80 %i.do, 1.000000e+01       ; 2 uses
  %i.dq = fptosi x86_fp80 %i.dp to i32
  %spec.store.select.6.i = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0)
  %spec.store.select1.6.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.6.i, i32 9) ; 2 uses
  %i.dr = trunc nuw nsw i32 %spec.store.select1.6.i to i8
  %i.ds = or disjoint i8 %i.dr, 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %i.ds, ptr %i.dt, align 2, !tbaa !26
  %i.du = uitofp nneg i32 %spec.store.select1.6.i to x86_fp80
  %i.dv = fsub x86_fp80 %i.dp, %i.du
  %i.dw = fmul x86_fp80 %i.dv, 1.000000e+01       ; 2 uses
  %i.dx = fptosi x86_fp80 %i.dw to i32
  %spec.store.select.7.i = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %spec.store.select1.7.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.7.i, i32 9) ; 2 uses
  %i.dy = trunc nuw nsw i32 %spec.store.select1.7.i to i8
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !26
  %i.eb = uitofp nneg i32 %spec.store.select1.7.i to x86_fp80
  %i.ec = fsub x86_fp80 %i.dw, %i.eb
  %i.ed = fmul x86_fp80 %i.ec, 1.000000e+01       ; 2 uses
  %i.ee = fptosi x86_fp80 %i.ed to i32
  %spec.store.select.8.i = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %spec.store.select1.8.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.8.i, i32 9) ; 2 uses
  %i.ef = trunc nuw nsw i32 %spec.store.select1.8.i to i8
  %i.eg = or disjoint i8 %i.ef, 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 %i.eg, ptr %i.eh, align 8, !tbaa !26
  %i.ei = uitofp nneg i32 %spec.store.select1.8.i to x86_fp80
  %i.ej = fsub x86_fp80 %i.ed, %i.ei
  %i.ek = fmul x86_fp80 %i.ej, 1.000000e+01       ; 2 uses
  %i.el = fptosi x86_fp80 %i.ek to i32
  %spec.store.select.9.i = tail call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %spec.store.select1.9.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.9.i, i32 9) ; 2 uses
  %i.em = trunc nuw nsw i32 %spec.store.select1.9.i to i8
  %i.en = or disjoint i8 %i.em, 48
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !26
  %i.ep = uitofp nneg i32 %spec.store.select1.9.i to x86_fp80
  %i.eq = fsub x86_fp80 %i.ek, %i.ep
  %i.er = fmul x86_fp80 %i.eq, 1.000000e+01       ; 2 uses
  %i.es = fptosi x86_fp80 %i.er to i32
  %spec.store.select.10.i = tail call i32 @llvm.smax.i32(i32 %i.es, i32 0)
  %spec.store.select1.10.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.10.i, i32 9) ; 2 uses
  %i.et = trunc nuw nsw i32 %spec.store.select1.10.i to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 2, !tbaa !26
  %i.ew = uitofp nneg i32 %spec.store.select1.10.i to x86_fp80
  %i.ex = fsub x86_fp80 %i.er, %i.ew
  %i.ey = fmul x86_fp80 %i.ex, 1.000000e+01       ; 2 uses
  %i.ez = fptosi x86_fp80 %i.ey to i32
  %spec.store.select.11.i = tail call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %spec.store.select1.11.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.11.i, i32 9) ; 2 uses
  %i.fa = trunc nuw nsw i32 %spec.store.select1.11.i to i8
  %i.fb = or disjoint i8 %i.fa, 48
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !26
  %i.fd = uitofp nneg i32 %spec.store.select1.11.i to x86_fp80
  %i.fe = fsub x86_fp80 %i.ey, %i.fd
  %i.ff = fmul x86_fp80 %i.fe, 1.000000e+01       ; 2 uses
  %i.fg = fptosi x86_fp80 %i.ff to i32
  %spec.store.select.12.i = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %spec.store.select1.12.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.12.i, i32 9) ; 2 uses
  %i.fh = trunc nuw nsw i32 %spec.store.select1.12.i to i8
  %i.fi = or disjoint i8 %i.fh, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i8 %i.fi, ptr %i.fj, align 4, !tbaa !26
  %i.fk = uitofp nneg i32 %spec.store.select1.12.i to x86_fp80
  %i.fl = fsub x86_fp80 %i.ff, %i.fk
  %i.fm = fmul x86_fp80 %i.fl, 1.000000e+01       ; 2 uses
  %i.fn = fptosi x86_fp80 %i.fm to i32
  %spec.store.select.13.i = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %spec.store.select1.13.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.13.i, i32 9) ; 2 uses
  %i.fo = trunc nuw nsw i32 %spec.store.select1.13.i to i8
  %i.fp = or disjoint i8 %i.fo, 48
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !26
  %i.fr = uitofp nneg i32 %spec.store.select1.13.i to x86_fp80
  %i.fs = fsub x86_fp80 %i.fm, %i.fr
  %i.ft = fmul x86_fp80 %i.fs, 1.000000e+01       ; 2 uses
  %i.fu = fptosi x86_fp80 %i.ft to i32
  %spec.store.select.14.i = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %spec.store.select1.14.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.14.i, i32 9) ; 2 uses
  %i.fv = trunc nuw nsw i32 %spec.store.select1.14.i to i8
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  store i8 %i.fw, ptr %i.fx, align 2, !tbaa !26
  %i.fy = uitofp nneg i32 %spec.store.select1.14.i to x86_fp80
  %i.fz = fsub x86_fp80 %i.ft, %i.fy
  %i.ga = fmul x86_fp80 %i.fz, 1.000000e+01       ; 2 uses
  %i.gb = fptosi x86_fp80 %i.ga to i32
  %spec.store.select.15.i = tail call i32 @llvm.smax.i32(i32 %i.gb, i32 0)
  %spec.store.select1.15.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.15.i, i32 9) ; 2 uses
  %i.gc = trunc nuw nsw i32 %spec.store.select1.15.i to i8
  %i.gd = or disjoint i8 %i.gc, 48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !26
  %i.gf = uitofp nneg i32 %spec.store.select1.15.i to x86_fp80
  %i.gg = fsub x86_fp80 %i.ga, %i.gf
  %i.gh = fmul x86_fp80 %i.gg, 1.000000e+01       ; 2 uses
  %i.gi = fptosi x86_fp80 %i.gh to i32
  %spec.store.select.16.i = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %spec.store.select1.16.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.16.i, i32 9) ; 2 uses
  %i.gj = trunc nuw nsw i32 %spec.store.select1.16.i to i8
  %i.gk = or disjoint i8 %i.gj, 48                ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 %i.gk, ptr %i.gl, align 16, !tbaa !26
  %i.gm = uitofp nneg i32 %spec.store.select1.16.i to x86_fp80
  %i.gn = fsub x86_fp80 %i.gh, %i.gm
  %i.go = fmul x86_fp80 %i.gn, 1.000000e+01
  %i.gp = fptosi x86_fp80 %i.go to i32
  %spec.store.select.17.i = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 0)
  %spec.store.select1.17.i = tail call i32 @llvm.umin.i32(i32 %spec.store.select.17.i, i32 9)
  %i.gq = trunc nuw nsw i32 %spec.store.select1.17.i to i8
  %i.gr = or disjoint i8 %i.gq, 48                ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !26
  %i.gt = icmp samesign ugt i8 %i.gr, 52
  br i1 %i.gt, label %.preheader.i141, label %bb.u

.lr.ph122.i:                                      ; preds = %.preheader108.i, %.lr.ph122.i
  %.291121.i = phi i32 [ %i.gv, %.lr.ph122.i ], [ %.190.lcssa.i, %.preheader108.i ]
  %.295120.i = phi x86_fp80 [ %i.gu, %.lr.ph122.i ], [ %.194.lcssa.i, %.preheader108.i ]
  %i.gu = fmul nnan x86_fp80 %.295120.i, 1.000000e+01 ; 3 uses
  %i.gv = add nsw i32 %.291121.i, -1              ; 2 uses
  %i.gw = fcmp olt x86_fp80 %i.gu, 1.000000e+00
  br i1 %i.gw, label %.lr.ph122.i, label %.preheader107.i, !llvm.loop !74

.preheader.i141:                                  ; preds = %.preheader107.i, %.preheader.i141
  %indvars.iv.i142 = phi i64 [ %indvars.iv.next.i143, %.preheader.i141 ], [ 16, %.preheader107.i ] ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i142 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !26  ; 2 uses
  %i.gz = icmp eq i8 %i.gy, 57                    ; 3 uses
  %i.ha = add i8 %i.gy, 1
  %storemerge.i = select i1 %i.gz, i8 48, i8 %i.ha
  store i8 %storemerge.i, ptr %i.gx, align 1, !tbaa !26
  %indvars.iv.next.i143 = add nsw i64 %indvars.iv.i142, -1
  %i.hb = icmp ne i64 %indvars.iv.i142, 0
  %i.hc = and i1 %i.hb, %i.gz
  br i1 %i.hc, label %.preheader.i141, label %bb.t, !llvm.loop !75

bb.t:                                             ; preds = %.preheader.i141
  br i1 %i.gz, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load i8, ptr %i.gl, align 16, !tbaa !26
  br label %bb.u

.thread:                                          ; preds = %bb.t
  store i8 49, ptr %i.a, align 16, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, i8 48, i64 16, i1 false), !tbaa !26
  %i.hd = add nsw i32 %.291.lcssa.i, 1
  br label %.critedge.i

bb.u:                                             ; preds = %._crit_edge.i, %.preheader107.i
  %i.he = phi i8 [ %i.gk, %.preheader107.i ], [ %.pre.i, %._crit_edge.i ]
  %i.hf = icmp eq i8 %i.he, 48
  br i1 %i.hf, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %.pr = load i8, ptr %i.ge, align 1, !tbaa !26
  %i.hg = icmp eq i8 %.pr, 48
  br i1 %i.hg, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %.pr159 = load i8, ptr %i.fx, align 2, !tbaa !26
  %i.hh = icmp eq i8 %.pr159, 48
  br i1 %i.hh, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %.pr164 = load i8, ptr %i.fq, align 1, !tbaa !26
  %i.hi = icmp eq i8 %.pr164, 48
  br i1 %i.hi, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %.pr169 = load i8, ptr %i.fj, align 4, !tbaa !26
  %i.hj = icmp eq i8 %.pr169, 48
  br i1 %i.hj, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %.pr181 = load i8, ptr %i.fc, align 1, !tbaa !26
  %i.hk = icmp eq i8 %.pr181, 48
  br i1 %i.hk, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %.pr186 = load i8, ptr %i.ev, align 2, !tbaa !26
  %i.hl = icmp eq i8 %.pr186, 48
  br i1 %i.hl, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %.pr191 = load i8, ptr %i.eo, align 1, !tbaa !26
  %i.hm = icmp eq i8 %.pr191, 48
  br i1 %i.hm, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %.pr196 = load i8, ptr %i.eh, align 8, !tbaa !26
  %i.hn = icmp eq i8 %.pr196, 48
  br i1 %i.hn, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %.pr201 = load i8, ptr %i.ea, align 1, !tbaa !26
  %i.ho = icmp eq i8 %.pr201, 48
  br i1 %i.ho, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %.pr206 = load i8, ptr %i.dt, align 2, !tbaa !26
  %i.hp = icmp eq i8 %.pr206, 48
  br i1 %i.hp, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %.pr211 = load i8, ptr %i.dm, align 1, !tbaa !26
  %i.hq = icmp eq i8 %.pr211, 48
  br i1 %i.hq, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %.pr216 = load i8, ptr %i.df, align 4, !tbaa !26
  %i.hr = icmp eq i8 %.pr216, 48
  br i1 %i.hr, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag
  %.pr221 = load i8, ptr %i.cy, align 1, !tbaa !26
  %i.hs = icmp eq i8 %.pr221, 48
  br i1 %i.hs, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %.pr226 = load i8, ptr %i.cr, align 2, !tbaa !26
  %i.ht = icmp eq i8 %.pr226, 48
  br i1 %i.ht, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %.pre = load i8, ptr %i.ck, align 1, !tbaa !26
  %.pre.fr = freeze i8 %.pre
  %i.hu = icmp ne i8 %.pre.fr, 48                 ; 2 uses
  %spec.select = select i1 %i.hu, i32 2, i32 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.aj, %.thread, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.4152.i = phi i32 [ %.291.lcssa.i, %bb.ac ], [ %.291.lcssa.i, %bb.u ], [ %.291.lcssa.i, %bb.v ], [ %.291.lcssa.i, %bb.ag ], [ %.291.lcssa.i, %bb.w ], [ %.291.lcssa.i, %bb.ae ], [ %.291.lcssa.i, %bb.x ], [ %.291.lcssa.i, %bb.ai ], [ %.291.lcssa.i, %bb.y ], [ %.291.lcssa.i, %bb.ad ], [ %.291.lcssa.i, %bb.z ], [ %.291.lcssa.i, %bb.ah ], [ %.291.lcssa.i, %bb.aa ], [ %.291.lcssa.i, %bb.af ], [ %.291.lcssa.i, %bb.ab ], [ %i.hd, %.thread ], [ %.291.lcssa.i, %bb.aj ] ; 2 uses
  %i.hv = phi i1 [ true, %bb.ac ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.ag ], [ true, %bb.w ], [ true, %bb.ae ], [ true, %bb.x ], [ true, %bb.ai ], [ true, %bb.y ], [ true, %bb.ad ], [ true, %bb.z ], [ true, %bb.ah ], [ true, %bb.aa ], [ true, %bb.af ], [ true, %bb.ab ], [ false, %.thread ], [ %i.hu, %bb.aj ]
  %.088.lcssa.i = phi i32 [ 9, %bb.ac ], [ 17, %bb.u ], [ 16, %bb.v ], [ 5, %bb.ag ], [ 15, %bb.w ], [ 7, %bb.ae ], [ 14, %bb.x ], [ 3, %bb.ai ], [ 13, %bb.y ], [ 8, %bb.ad ], [ 12, %bb.z ], [ 4, %bb.ah ], [ 11, %bb.aa ], [ 6, %bb.af ], [ 10, %bb.ab ], [ 1, %.thread ], [ %spec.select, %bb.aj ] ; 3 uses
  %i.hw = add i32 %.4152.i, 1
  %i.hx = sub i32 %i.hw, %.088.lcssa.i
  %i.hy = call fastcc ptr @tg3json__format_decimal_digits(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %.088.lcssa.i, i32 noundef %i.hx, i32 noundef %i.be) ; 2 uses
  store i8 0, ptr %i.hy, align 1, !tbaa !26
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.b to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 2 uses
  br i1 %i.hv, label %.lr.ph133.i, label %.loopexit.i

.lr.ph133.i:                                      ; preds = %.critedge.i
  %i.ic = ptrtoint ptr %i.c to i64
  %i.id = add i32 %.4152.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph133.i
  %.3132.in.i = phi i32 [ %.088.lcssa.i, %.lr.ph133.i ], [ %.3132.i, %bb.al ] ; 3 uses
  %.083131.i = phi i64 [ %i.ib, %.lr.ph133.i ], [ %i.ij, %bb.al ]
  %.3132.i = add nsw i32 %.3132.in.i, -1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !76
  %i.ie = sub i32 %i.id, %.3132.in.i
  %i.if = call fastcc ptr @tg3json__format_decimal_digits(ptr noundef %i.c, ptr noundef %i.a, i32 noundef %.3132.i, i32 noundef %i.ie, i32 noundef %i.be) ; 3 uses
  store i8 0, ptr %i.if, align 1, !tbaa !26
  %i.ig = call fastcc i32 @tg3json__parse_f64_c(ptr noundef nonnull %i.c, ptr noundef nonnull %i.if, ptr noundef %i.d)
  %.not100.i = icmp ne i32 %i.ig, 0
  %i.ih = load i64, ptr %i.d, align 8
  %.not106.i = icmp eq i64 %i.ih, %i.bc
  %or.cond.i = select i1 %.not100.i, i1 %.not106.i, i1 false
  br i1 %or.cond.i, label %bb.al, label %.thread.i140

.thread.i140:                                     ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.ak
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ii, %i.ic                    ; 3 uses
  %i.ik = add i64 %i.ij, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.c, i64 %i.ik, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.il = icmp samesign ugt i32 %.3132.in.i, 2
  br i1 %i.il, label %bb.ak, label %.loopexit.i, !llvm.loop !78

.loopexit.i:                                      ; preds = %bb.al, %.thread.i140, %.critedge.i
  %.083111.i = phi i64 [ %.083131.i, %.thread.i140 ], [ %i.ib, %.critedge.i ], [ %i.ij, %bb.al ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.b, i64 %.083111.i, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 %.083111.i
  br label %tg3json__dtoa_c.exit

tg3json__dtoa_c.exit:                             ; preds = %bb.j, %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %.loopexit.i
  %.0.i = phi ptr [ %i.bg, %bb.j ], [ %i.bj, %bb.m ], [ %i.bk, %bb.n ], [ %i.bl, %bb.o ], [ %i.bm, %bb.q ], [ %i.bo, %bb.r ], [ %i.im, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %.0.i, align 1, !tbaa !26
  %i.in = load i8, ptr %i.f, align 16, !tbaa !26
  %i.io = icmp eq i8 %i.in, 45
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.io to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx
  %i.ip = load i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !26
  switch i8 %i.ip, label %bb.an [
    i8 110, label %bb.am
    i8 78, label %bb.am
    i8 105, label %bb.am
    i8 73, label %bb.am
  ]

bb.am:                                            ; preds = %tg3json__dtoa_c.exit, %tg3json__dtoa_c.exit, %tg3json__dtoa_c.exit, %tg3json__dtoa_c.exit
  %i.iq = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 4)
  br label %tg3json__indent.exit.thread

bb.an:                                            ; preds = %tg3json__dtoa_c.exit
  %i.ir = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #31
  %i.is = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.ir)
  br label %tg3json__indent.exit.thread

bb.ao:                                            ; preds = %bb.a
  %i.it = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 34)
  %.not126 = icmp eq i32 %i.it, 0
  br i1 %.not126, label %tg3json__indent.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !26
  %.not262.a = icmp eq i64 %i.iv, 0
  br i1 %.not262.a, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph258, %.critedge
  %.096257 = phi i64 [ 0, %.lr.ph258 ], [ %i.jw, %.critedge ] ; 2 uses
end_hunk_0
begin_hunk_1_@tg3json__stringify_value_ex:bb.a
  store i64 0, ptr %4, align 8
  store i32 4, ptr %4, align 8, !tbaa !28
  %i.ln = load ptr, ptr %i.kx, align 8, !tbaa !26
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %.298252 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !40
  store ptr %i.lp, ptr %i.le, align 8, !tbaa !26
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !43
  store i64 %i.lr, ptr %i.lf, align 8, !tbaa !26
  %i.ls = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef %i.lb)
  %.not115 = icmp eq i32 %i.ls, 0
  br i1 %.not115, label %.critedge138, label %bb.bp

bb.bp:                                            ; preds = %tg3json__indent.exit154
  %i.lt = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 58)
  %.not116 = icmp eq i32 %i.lt, 0
  br i1 %.not116, label %.critedge138, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.la, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lu = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 32)
  %.not117 = icmp eq i32 %i.lu, 0
  br i1 %.not117, label %.critedge138, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.lv = load ptr, ptr %i.kx, align 8, !tbaa !26
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %i.lv, i64 %.298252
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !44
  %i.lz = tail call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %0, ptr noundef %i.ly, i32 noundef %2, i32 noundef %i.lb)
  %.not118.not = icmp eq i32 %i.lz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.not118.not, label %tg3json__indent.exit.thread, label %bb.bj

._crit_edge:                                      ; preds = %bb.bj
  %i.ma = icmp eq i64 %i.lh, 0
  %i.mb = icmp slt i32 %2, 1
  %or.cond139 = or i1 %i.mb, %i.ma
  br i1 %or.cond139, label %._crit_edge.thread, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge
  %i.mc = tail call fastcc i32 @tg3json__indent(ptr noundef %0, i32 noundef %2, i32 noundef %3)
  %.not111 = icmp eq i32 %i.mc, 0
  br i1 %.not111, label %tg3json__indent.exit.thread, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader233, %bb.bt, %._crit_edge
  %i.md = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 125)
  br label %tg3json__indent.exit.thread

.critedge138:                                     ; preds = %bb.bn, %bb.bl, %tg3json__indent.exit154, %bb.bp, %bb.br, %.lr.ph.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3json__indent.exit.thread

tg3json__indent.exit.thread:                      ; preds = %bb.bs, %bb.bf, %tg3json__indent.exit, %bb.bd, %.lr.ph.i145, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ay, %bb.az, %bb.am, %bb.a, %bb.bt, %.critedge138, %bb.bi, %bb.bh, %bb.ba, %bb.ao, %bb.d, %bb.e, %._crit_edge.thread, %._crit_edge255.thread, %._crit_edge259, %bb.an, %tg3json__itoa.exit, %bb.b
  %.5 = phi i32 [ 0, %bb.bt ], [ %i.h, %bb.b ], [ 0, %bb.bh ], [ %i.az, %tg3json__itoa.exit ], [ %i.is, %bb.an ], [ %i.iq, %bb.am ], [ 0, %bb.ao ], [ %i.jz, %._crit_edge259 ], [ %i.l, %bb.e ], [ 0, %bb.a ], [ 0, %bb.aq ], [ 0, %bb.ba ], [ %i.kv, %._crit_edge255.thread ], [ 0, %bb.bf ], [ 0, %bb.bi ], [ 0, %.lr.ph.i145 ], [ %i.md, %._crit_edge.thread ], [ 0, %.critedge138 ], [ %i.k, %bb.d ], [ 0, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %bb.bd ], [ 0, %tg3json__indent.exit ], [ 0, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  ret i32 %.5
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @tg3json_stringify_pretty(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %3, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0)
  %.not12 = icmp eq i32 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 3 uses
  br i1 %.not12, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.b = phi ptr [ null, %bb.a ], [ %.pre, %bb.b ]
  call void @free(ptr noundef %i.b) #28
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.i, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = call noalias dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.i, label %.sink.split

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.c, align 1, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.d = phi ptr [ %i.c, %bb.f ], [ %.pre, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %2, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %._crit_edge, %bb.h
  %.sink = phi i64 [ %i.f, %bb.h ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %bb.h ], [ null, %._crit_edge ], [ null, %bb.e ]
  store i64 %.sink, ptr %2, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %._crit_edge
  %.0 = phi ptr [ null, %bb.e ], [ null, %._crit_edge ], [ %i.d, %bb.g ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tg3_errors_has_error(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tg3_errors_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @tg3_errors_get(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  %.not7 = icmp ult i32 %1, %i.b
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !87
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tg3_error_stack_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @tg3_error_stack_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !87
  tail call void @free(ptr noundef %i.a) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tg3_parse_options_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.a, i8 0, i64 208, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1073741824, ptr %i.c, align 8, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 262144, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 1, ptr %i.f, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tg3_write_options_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(156) %i.a, i8 0, i64 156, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 1073741824, ptr %i.b, align 8, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 262144, ptr %i.c, align 8, !tbaa !104
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -1, 9) i32 @tg3_component_size(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %switch.tableidx = add i32 %0, -5120            ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 11
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tg3_component_size, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -1, 17) i32 @tg3_num_components(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 64
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tg3_num_components, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @tg3_accessor_byte_stride(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111
  switch i32 %i.d, label %bb.g [
    i32 5120, label %tg3_component_size.exit
    i32 5121, label %tg3_component_size.exit
    i32 5122, label %bb.d
    i32 5123, label %bb.d
    i32 5124, label %bb.e
    i32 5125, label %bb.e
    i32 5126, label %bb.e
    i32 5130, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %tg3_component_size.exit

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %tg3_component_size.exit

bb.f:                                             ; preds = %bb.c
  br label %tg3_component_size.exit

bb.g:                                             ; preds = %bb.c
  br label %tg3_component_size.exit

tg3_component_size.exit:                          ; preds = %bb.c, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.e = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.c ]
  %.0.i = phi i32 [ -1, %bb.g ], [ 8, %bb.f ], [ 2, %bb.d ], [ 4, %bb.e ], [ 1, %bb.c ], [ 1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117
  %i.h = tail call i32 @tg3_num_components(i32 noundef %i.g) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.i
  %i.j = mul nuw nsw i32 %i.h, %.0.i
  %spec.select = select i1 %or.cond, i32 -1, i32 %i.j
  br label %bb.h

bb.h:                                             ; preds = %tg3_component_size.exit, %bb.b
  %.0 = phi i32 [ %spec.select, %tg3_component_size.exit ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @tg3_str_equals(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.b)
  %i.c = icmp eq i32 %bcmp, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @tg3_str_equals_cstr(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #31
  %i.c = trunc i64 %i.b to i32
  %.not9 = icmp eq i32 %1, %i.c
  br i1 %.not9, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = zext i32 %1 to i64
  %bcmp = tail call i32 @bcmp(ptr %0, ptr nonnull %2, i64 %i.e)
  %i.f = icmp eq i32 %bcmp, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %.0.shrunk = phi i1 [ %i.a, %bb.b ], [ false, %bb.c ], [ %i.f, %bb.e ], [ true, %bb.d ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @tg3_is_data_uri(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
end_hunk_1
begin_hunk_2_@tg3__parse_from_json:bb.a
  %.not18.i.i.i.i.i = icmp eq i32 %i.acw, 6
  br i1 %.not18.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %tg3__parse_bool.exit.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fg
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i.i = icmp eq i64 %i.acy, 0
  br i1 %.not23.i.i.i.i.i, label %tg3__parse_bool.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !26
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fj, %.lr.ph.i.i.i.i.i
  %.01422.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.adq, %bb.fj ] ; 2 uses
  %i.adb = getelementptr inbounds nuw [24 x i8], ptr %i.ada, i64 %.01422.i.i.i.i.i ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !43
  %i.ade = icmp eq i64 %i.add, 10
  br i1 %i.ade, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.adf = load ptr, ptr %i.adb, align 8, !tbaa !40 ; 2 uses
  %i.adg = load i64, ptr %i.adf, align 1
  %i.adh = xor i64 %i.adg, 8820700510885670766
  %i.adi = getelementptr i8, ptr %i.adf, i64 8
  %i.adj = load i16, ptr %i.adi, align 1
  %i.adk = zext i16 %i.adj to i64
  %i.adl = xor i64 %i.adk, 25701
  %i.adm = or i64 %i.adh, %i.adl
  %i.adn = icmp ne i64 %i.adm, 0
  %i.ado = zext i1 %i.adn to i32
  %i.adp = icmp eq i32 %i.ado, 0
  br i1 %i.adp, label %tg3__json_get.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.adq = add nuw i64 %.01422.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.adq, %i.acy
  br i1 %exitcond.not.i.i.i.i.i, label %tg3__parse_bool.exit.i, label %bb.fh, !llvm.loop !59

tg3__json_get.exit.i.i:                           ; preds = %bb.fi
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !44 ; 3 uses
  %.not.i.i1016 = icmp eq ptr %i.ads, null
  br i1 %.not.i.i1016, label %tg3__parse_bool.exit.i, label %bb.fk

bb.fk:                                            ; preds = %tg3__json_get.exit.i.i
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !28
  %.not16.i.i = icmp eq i32 %i.adt, 1
  br i1 %.not16.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.adu = load ptr, ptr %i.acf, align 8, !tbaa !164
  %i.adv = load ptr, ptr %0, align 8, !tbaa !161
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.adu, ptr noundef %i.adv, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.89)
  br label %tg3__parse_bool.exit.i

bb.fm:                                            ; preds = %bb.fk
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !26
  %.not17.i.i = icmp ne i32 %i.adx, 0
  %i.ady = zext i1 %.not17.i.i to i32
  store i32 %i.ady, ptr %i.acv, align 8, !tbaa !36
  br label %tg3__parse_bool.exit.i

tg3__parse_bool.exit.i:                           ; preds = %bb.fj, %bb.fm, %bb.fl, %tg3__json_get.exit.i.i, %.preheader.i.i.i.i.i, %bb.fg
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ack, ptr noundef nonnull @.str.90, ptr noundef %i.acr, i32 noundef 1, ptr noundef nonnull @.str.87)
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ack, ptr noundef nonnull @.str.91, ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.87)
  %i.adz = load i64, ptr %i.d, align 8, !tbaa !19
  %i.aea = getelementptr inbounds nuw i8, ptr %i.acp, i64 40
  store i64 %i.adz, ptr %i.aea, align 8, !tbaa !228
  store ptr null, ptr %5, align 8, !tbaa !229
  store i32 0, ptr %i.acg, align 8, !tbaa !230
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ack, ptr noundef nonnull @.str.92, ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.87)
  %i.aeb = load ptr, ptr %5, align 8, !tbaa !229  ; 9 uses
  %.not.i1014 = icmp eq ptr %i.aeb, null
  br i1 %.not.i1014, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %tg3__parse_bool.exit.i
  %i.aec = load i32, ptr %i.acg, align 8, !tbaa !230
  switch i32 %i.aec, label %.critedge17.i.i [
    i32 6, label %bb.fo
    i32 4, label %bb.fp
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.aed = load i32, ptr %i.aeb, align 1
  %i.aee = xor i32 %i.aed, 1279345491
  %i.aef = getelementptr i8, ptr %i.aeb, i64 4
  %i.aeg = load i16, ptr %i.aef, align 1
  %i.aeh = zext i16 %i.aeg to i32
  %i.aei = xor i32 %i.aeh, 21057
  %i.aej = or i32 %i.aee, %i.aei
  %i.aek = icmp ne i32 %i.aej, 0
  %i.ael = zext i1 %i.aek to i32
  %i.aem = icmp eq i32 %i.ael, 0
  br i1 %i.aem, label %tg3__accessor_type_from_string.exit.i, label %.critedge17.i.i

bb.fp:                                            ; preds = %bb.fn
  %i.aen = load i32, ptr %i.aeb, align 1
  %i.aeo = icmp ne i32 %i.aen, 843269462
  %i.aep = zext i1 %i.aeo to i32
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %tg3__accessor_type_from_string.exit.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aer = load i32, ptr %i.aeb, align 1
  %i.aes = icmp ne i32 %i.aer, 860046678
  %i.aet = zext i1 %i.aes to i32
  %i.aeu = icmp eq i32 %i.aet, 0
  br i1 %i.aeu, label %tg3__accessor_type_from_string.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.fq
  %i.aev = load i32, ptr %i.aeb, align 1
  %i.aew = icmp ne i32 %i.aev, 876823894
  %i.aex = zext i1 %i.aew to i32
  %i.aey = icmp eq i32 %i.aex, 0
  br i1 %i.aey, label %tg3__accessor_type_from_string.exit.i, label %.critedge14.i.i

.critedge14.i.i:                                  ; preds = %.critedge.i.i
  %i.aez = load i32, ptr %i.aeb, align 1
  %i.afa = icmp ne i32 %i.aez, 844382541
  %i.afb = zext i1 %i.afa to i32
  %i.afc = icmp eq i32 %i.afb, 0
  br i1 %i.afc, label %tg3__accessor_type_from_string.exit.i, label %.critedge15.i.i

.critedge15.i.i:                                  ; preds = %.critedge14.i.i
  %i.afd = load i32, ptr %i.aeb, align 1
  %i.afe = icmp ne i32 %i.afd, 861159757
  %i.aff = zext i1 %i.afe to i32
  %i.afg = icmp eq i32 %i.aff, 0
  br i1 %i.afg, label %tg3__accessor_type_from_string.exit.i, label %.critedge16.i.i

.critedge16.i.i:                                  ; preds = %.critedge15.i.i
  %i.afh = load i32, ptr %i.aeb, align 1
  %i.afi = icmp ne i32 %i.afh, 877936973
  %i.afj = zext i1 %i.afi to i32
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %tg3__accessor_type_from_string.exit.i, label %.critedge17.i.i

.critedge17.i.i:                                  ; preds = %.critedge16.i.i, %bb.fo, %bb.fn
  br label %tg3__accessor_type_from_string.exit.i

tg3__accessor_type_from_string.exit.i:            ; preds = %.critedge17.i.i, %.critedge16.i.i, %.critedge15.i.i, %.critedge14.i.i, %.critedge.i.i, %bb.fq, %bb.fp, %bb.fo
  %.0.i39.i = phi i32 [ -1, %.critedge17.i.i ], [ 65, %bb.fo ], [ 2, %bb.fp ], [ 3, %bb.fq ], [ 4, %.critedge.i.i ], [ 34, %.critedge14.i.i ], [ 35, %.critedge15.i.i ], [ 36, %.critedge16.i.i ]
  store i32 %.0.i39.i, ptr %i.acs, align 8, !tbaa !117
  br label %bb.fr

bb.fr:                                            ; preds = %tg3__accessor_type_from_string.exit.i, %tg3__parse_bool.exit.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.acp, i64 56
  %i.afm = getelementptr inbounds nuw i8, ptr %i.acp, i64 64
  call fastcc void @tg3__parse_number_array(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ack, ptr noundef nonnull @.str.93, ptr noundef %i.afl, ptr noundef %i.afm, ptr noundef nonnull @.str.87)
  %i.afn = getelementptr inbounds nuw i8, ptr %i.acp, i64 72
  %i.afo = getelementptr inbounds nuw i8, ptr %i.acp, i64 80
  call fastcc void @tg3__parse_number_array(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ack, ptr noundef nonnull @.str.94, ptr noundef %i.afn, ptr noundef %i.afo, ptr noundef nonnull @.str.87)
  %i.afp = getelementptr inbounds nuw i8, ptr %i.acp, i64 88 ; 3 uses
  %i.afq = load i32, ptr %i.ack, align 8, !tbaa !28
  %.not18.i.i.i.i41.i = icmp eq i32 %i.afq, 6
  br i1 %.not18.i.i.i.i41.i, label %.preheader.i.i.i.i43.i, label %tg3__json_get.exit.thread.i.i

.preheader.i.i.i.i43.i:                           ; preds = %bb.fr
  %i.afr = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i44.i = icmp eq i64 %i.afs, 0
  br i1 %.not23.i.i.i.i44.i, label %tg3__json_get.exit.thread.i.i, label %.lr.ph.i.i.i.i45.i

.lr.ph.i.i.i.i45.i:                               ; preds = %.preheader.i.i.i.i43.i
  %i.aft = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !26
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %.lr.ph.i.i.i.i45.i
  %.01422.i.i.i.i46.i = phi i64 [ 0, %.lr.ph.i.i.i.i45.i ], [ %i.agk, %bb.fu ] ; 2 uses
  %i.afv = getelementptr inbounds nuw [24 x i8], ptr %i.afu, i64 %.01422.i.i.i.i46.i ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !43
  %i.afy = icmp eq i64 %i.afx, 6
  br i1 %i.afy, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.afz = load ptr, ptr %i.afv, align 8, !tbaa !40 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 1
  %i.agb = xor i32 %i.aga, 1918988403
  %i.agc = getelementptr i8, ptr %i.afz, i64 4
  %i.agd = load i16, ptr %i.agc, align 1
  %i.age = zext i16 %i.agd to i32
  %i.agf = xor i32 %i.age, 25971
  %i.agg = or i32 %i.agb, %i.agf
  %i.agh = icmp ne i32 %i.agg, 0
  %i.agi = zext i1 %i.agh to i32
  %i.agj = icmp eq i32 %i.agi, 0
  br i1 %i.agj, label %tg3__json_get.exit.i49.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.agk = add nuw i64 %.01422.i.i.i.i46.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i47.i = icmp eq i64 %i.agk, %i.afs
  br i1 %exitcond.not.i.i.i.i47.i, label %tg3__json_get.exit.thread.i.i, label %bb.fs, !llvm.loop !59

tg3__json_get.exit.thread.i.i:                    ; preds = %bb.fu, %.preheader.i.i.i.i43.i, %bb.fr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.afp, i8 0, i64 208, i1 false)
  %i.agl = getelementptr inbounds nuw i8, ptr %i.acp, i64 104
  store i32 -1, ptr %i.agl, align 8, !tbaa !231
  %i.agm = getelementptr inbounds nuw i8, ptr %i.acp, i64 168
  store i32 -1, ptr %i.agm, align 8, !tbaa !232
  br label %tg3__parse_accessor.exit

tg3__json_get.exit.i49.i:                         ; preds = %bb.ft
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !44 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.afp, i8 0, i64 208, i1 false)
  %i.agp = getelementptr inbounds nuw i8, ptr %i.acp, i64 96
  %i.agq = getelementptr inbounds nuw i8, ptr %i.acp, i64 104 ; 2 uses
  store i32 -1, ptr %i.agq, align 8, !tbaa !231
  %i.agr = getelementptr inbounds nuw i8, ptr %i.acp, i64 168 ; 2 uses
  store i32 -1, ptr %i.agr, align 8, !tbaa !232
  %.not.i50.i = icmp eq ptr %i.ago, null
  br i1 %.not.i50.i, label %tg3__parse_accessor.exit, label %tg3__json_is_object.exit.i.i

tg3__json_is_object.exit.i.i:                     ; preds = %tg3__json_get.exit.i49.i
  %i.ags = load i32, ptr %i.ago, align 8, !tbaa !28
  %.not79.i.i = icmp eq i32 %i.ags, 6
  br i1 %.not79.i.i, label %bb.fv, label %tg3__parse_accessor.exit

bb.fv:                                            ; preds = %tg3__json_is_object.exit.i.i
  %i.agt = getelementptr inbounds nuw i8, ptr %i.acp, i64 92
  store i32 1, ptr %i.agt, align 4, !tbaa !233
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.ago, ptr noundef nonnull @.str.91, ptr noundef nonnull %i.afp, i32 noundef 1, ptr noundef nonnull @.str.106)
  %i.agu = load i32, ptr %i.ago, align 8, !tbaa !28
  %.not18.i.i.i43.i.i = icmp eq i32 %i.agu, 6
  br i1 %.not18.i.i.i43.i.i, label %.preheader.i.i.i45.i.i, label %tg3__json_is_object.exit65.thread.i.i

.preheader.i.i.i45.i.i:                           ; preds = %bb.fv
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ago, i64 16 ; 2 uses
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !26 ; 5 uses
  %.not23.i.i.i46.i.i = icmp eq i64 %i.agw, 0
  br i1 %.not23.i.i.i46.i.i, label %tg3__json_is_object.exit65.thread.i.i, label %.lr.ph.i.i.i47.i.i

.lr.ph.i.i.i47.i.i:                               ; preds = %.preheader.i.i.i45.i.i
  %i.agx = getelementptr inbounds nuw i8, ptr %i.ago, i64 8 ; 2 uses
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !26 ; 2 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fy, %.lr.ph.i.i.i47.i.i
  %.01422.i.i.i48.i.i = phi i64 [ 0, %.lr.ph.i.i.i47.i.i ], [ %i.ahn, %bb.fy ] ; 2 uses
  %i.agz = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.01422.i.i.i48.i.i ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahb = load i64, ptr %i.aha, align 8, !tbaa !43
  %i.ahc = icmp eq i64 %i.ahb, 7
  br i1 %i.ahc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ahd = load ptr, ptr %i.agz, align 8, !tbaa !40 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 1
  %i.ahf = xor i32 %i.ahe, 1768189545
  %i.ahg = getelementptr i8, ptr %i.ahd, i64 3
  %i.ahh = load i32, ptr %i.ahg, align 1
  %i.ahi = xor i32 %i.ahh, 1936024425
  %i.ahj = or i32 %i.ahf, %i.ahi
  %i.ahk = icmp ne i32 %i.ahj, 0
  %i.ahl = zext i1 %i.ahk to i32
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %tg3__json_get.exit51.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ahn = add nuw i64 %.01422.i.i.i48.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i49.i.i = icmp eq i64 %i.ahn, %i.agw
  br i1 %exitcond.not.i.i.i49.i.i, label %.lr.ph.i.i.i59.i.i, label %bb.fw, !llvm.loop !59

tg3__json_get.exit51.i.i:                         ; preds = %bb.fx
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !44 ; 6 uses
  %.not.i52.i.i = icmp eq ptr %i.ahp, null
  br i1 %.not.i52.i.i, label %.preheader.i.i.i57.i.i, label %tg3__json_is_object.exit53.i.i

tg3__json_is_object.exit53.i.i:                   ; preds = %tg3__json_get.exit51.i.i
  %i.ahq = load i32, ptr %i.ahp, align 8, !tbaa !28
  %.not80.i.i = icmp eq i32 %i.ahq, 6
  br i1 %.not80.i.i, label %tg3__json_is_object.exit53.thread.i.i, label %.preheader.i.i.i57.i.i

tg3__json_is_object.exit53.thread.i.i:            ; preds = %tg3__json_is_object.exit53.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !tbaa !19
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.ahp, ptr noundef nonnull @.str.88, ptr noundef %i.agq, i32 noundef 1, ptr noundef nonnull @.str.108)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.acp, i64 108
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.ahp, ptr noundef nonnull @.str.90, ptr noundef %i.ahr, i32 noundef 1, ptr noundef nonnull @.str.108)
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.ahp, ptr noundef nonnull @.str.83, ptr noundef %i.a, i32 noundef 0, ptr noundef nonnull @.str.108)
  %i.ahs = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.ahs, ptr %i.agp, align 8, !tbaa !234
  %i.aht = getelementptr inbounds nuw i8, ptr %i.acp, i64 112
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.ahp, ptr noundef %i.aht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.pr.pre.i.i = load i32, ptr %i.ago, align 8, !tbaa !28
  %i.ahu = icmp eq i32 %.pr.pre.i.i, 6
  br i1 %i.ahu, label %tg3__json_is_object.exit53.thread.i..preheader.i.i.i57.i_crit_edge.i, label %tg3__json_is_object.exit65.thread.i.i

tg3__json_is_object.exit53.thread.i..preheader.i.i.i57.i_crit_edge.i: ; preds = %tg3__json_is_object.exit53.thread.i.i
  %.pr.i.pre.i = load i64, ptr %i.agv, align 8, !tbaa !26
  br label %.preheader.i.i.i57.i.i

.preheader.i.i.i57.i.i:                           ; preds = %tg3__json_is_object.exit53.thread.i..preheader.i.i.i57.i_crit_edge.i, %tg3__json_is_object.exit53.i.i, %tg3__json_get.exit51.i.i
  %.pr.i.i = phi i64 [ %.pr.i.pre.i, %tg3__json_is_object.exit53.thread.i..preheader.i.i.i57.i_crit_edge.i ], [ %i.agw, %tg3__json_get.exit51.i.i ], [ %i.agw, %tg3__json_is_object.exit53.i.i ] ; 2 uses
  %.not23.i.i.i58.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not23.i.i.i58.i.i, label %tg3__json_is_object.exit65.thread.i.i, label %.preheader.i.i.i57.i.i..lr.ph.i.i.i59.i.i_crit_edge

.preheader.i.i.i57.i.i..lr.ph.i.i.i59.i.i_crit_edge: ; preds = %.preheader.i.i.i57.i.i
  %.pre = load ptr, ptr %i.agx, align 8, !tbaa !26
  br label %.lr.ph.i.i.i59.i.i

.lr.ph.i.i.i59.i.i:                               ; preds = %bb.fy, %.preheader.i.i.i57.i.i..lr.ph.i.i.i59.i.i_crit_edge
  %i.ahv = phi ptr [ %.pre, %.preheader.i.i.i57.i.i..lr.ph.i.i.i59.i.i_crit_edge ], [ %i.agy, %bb.fy ]
  %.pr.i80.i = phi i64 [ %.pr.i.i, %.preheader.i.i.i57.i.i..lr.ph.i.i.i59.i.i_crit_edge ], [ %i.agw, %bb.fy ]
  br label %bb.fz

bb.fz:                                            ; preds = %bb.gb, %.lr.ph.i.i.i59.i.i
  %.01422.i.i.i60.i.i = phi i64 [ 0, %.lr.ph.i.i.i59.i.i ], [ %i.ail, %bb.gb ] ; 2 uses
  %i.ahw = getelementptr inbounds nuw [24 x i8], ptr %i.ahv, i64 %.01422.i.i.i60.i.i ; 3 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.ahy = load i64, ptr %i.ahx, align 8, !tbaa !43
  %i.ahz = icmp eq i64 %i.ahy, 6
  br i1 %i.ahz, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.aia = load ptr, ptr %i.ahw, align 8, !tbaa !40 ; 2 uses
  %i.aib = load i32, ptr %i.aia, align 1
  %i.aic = xor i32 %i.aib, 1970037110
  %i.aid = getelementptr i8, ptr %i.aia, i64 4
  %i.aie = load i16, ptr %i.aid, align 1
  %i.aif = zext i16 %i.aie to i32
  %i.aig = xor i32 %i.aif, 29541
  %i.aih = or i32 %i.aic, %i.aig
  %i.aii = icmp ne i32 %i.aih, 0
  %i.aij = zext i1 %i.aii to i32
  %i.aik = icmp eq i32 %i.aij, 0
  br i1 %i.aik, label %tg3__json_get.exit63.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.ail = add nuw i64 %.01422.i.i.i60.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i61.i.i = icmp eq i64 %i.ail, %.pr.i80.i
  br i1 %exitcond.not.i.i.i61.i.i, label %tg3__json_is_object.exit65.thread.i.i, label %bb.fz, !llvm.loop !59

tg3__json_get.exit63.i.i:                         ; preds = %bb.ga
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !44 ; 5 uses
  %.not.i64.i.i = icmp eq ptr %i.ain, null
  br i1 %.not.i64.i.i, label %tg3__json_is_object.exit65.thread.i.i, label %tg3__json_is_object.exit65.i.i

tg3__json_is_object.exit65.i.i:                   ; preds = %tg3__json_get.exit63.i.i
  %i.aio = load i32, ptr %i.ain, align 8, !tbaa !28
  %.not81.i.i = icmp eq i32 %i.aio, 6
  br i1 %.not81.i.i, label %bb.gc, label %tg3__json_is_object.exit65.thread.i.i

bb.gc:                                            ; preds = %tg3__json_is_object.exit65.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !19
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.ain, ptr noundef nonnull @.str.88, ptr noundef %i.agr, i32 noundef 1, ptr noundef nonnull @.str.110)
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull %i.ain, ptr noundef nonnull @.str.83, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull @.str.110)
  %i.aip = load i64, ptr %i.b, align 8, !tbaa !19
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.acp, i64 176
  store i64 %i.aip, ptr %i.aiq, align 8, !tbaa !235
  %i.air = getelementptr inbounds nuw i8, ptr %i.acp, i64 184
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.ain, ptr noundef %i.air)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %tg3__json_is_object.exit65.thread.i.i

tg3__json_is_object.exit65.thread.i.i:            ; preds = %bb.gb, %bb.gc, %tg3__json_is_object.exit65.i.i, %tg3__json_get.exit63.i.i, %.preheader.i.i.i57.i.i, %tg3__json_is_object.exit53.thread.i.i, %.preheader.i.i.i45.i.i, %bb.fv
  %i.ais = getelementptr inbounds nuw i8, ptr %i.acp, i64 240
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.ago, ptr noundef %i.ais)
  br label %tg3__parse_accessor.exit

tg3__parse_accessor.exit:                         ; preds = %tg3__json_get.exit.thread.i.i, %tg3__json_get.exit.i49.i, %tg3__json_is_object.exit.i.i, %tg3__json_is_object.exit65.thread.i.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.acp, i64 296
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ack, ptr noundef %i.ait)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.gd

bb.gd:                                            ; preds = %tg3__parse_accessor.exit, %tg3__json_is_object.exit1013.thread
  %i.aiu = add nuw i64 %.06642353, 1              ; 2 uses
  %exitcond2550.not = icmp eq i64 %i.aiu, %i.aao
  br i1 %exitcond2550.not, label %bb.ge, label %bb.fe, !llvm.loop !236

bb.ge:                                            ; preds = %bb.gd
  %i.aiv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.acd, ptr %i.aiv, align 8, !tbaa !237
  %i.aiw = trunc i64 %i.aao to i32
  %i.aix = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.aiw, ptr %i.aix, align 8, !tbaa !238
  br label %tg3__json_is_array.exit986.thread

tg3__json_is_array.exit986.thread:                ; preds = %bb.ew, %bb.fd, %bb.fb, %bb.fc, %bb.ex, %bb.ey, %.critedge882, %.preheader.i.i978, %tg3json_object_get.exit984, %tg3json_array_size.exit990, %bb.ge, %tg3__arena_alloc.exit1006, %tg3__json_is_array.exit986
  %i.aiy = load ptr, ptr %i.bk, align 8, !tbaa !174 ; 2 uses
  %.not770 = icmp eq ptr %i.aiy, null
  br i1 %.not770, label %.critedge884, label %bb.gf

bb.gf:                                            ; preds = %tg3__json_is_array.exit986.thread
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 24
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !239
  %.not771 = icmp eq ptr %i.aja, null
  br i1 %.not771, label %.critedge884, label %.preheader2226

.preheader2226:                                   ; preds = %bb.gf
  %i.ajb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !238
  %.not7732355.not = icmp eq i32 %i.ajc, 0
  br i1 %.not7732355.not, label %.critedge884, label %.lr.ph2357

.lr.ph2357:                                       ; preds = %.preheader2226
  %i.ajd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.gh
end_hunk_2
begin_hunk_3_@tg3__parse_from_json:bb.a
  %i.boe = call i32 %i.bny(ptr noundef %i.boa, i32 noundef %i.bod, ptr noundef %i.boc) #28
  %.not786 = icmp eq i32 %i.boe, 1
  br i1 %.not786, label %.critedge908, label %bb.ln

.critedge888:                                     ; preds = %bb.ln, %.preheader2220, %tg3__json_is_array.exit1099.thread, %bb.lm
  %i.bof = load i32, ptr %1, align 8, !tbaa !28
  %.not18.i.i1145 = icmp eq i32 %i.bof, 6
  br i1 %.not18.i.i1145, label %.preheader.i.i1147, label %tg3__json_is_array.exit1155.thread

.preheader.i.i1147:                               ; preds = %.critedge888
  %i.bog = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.boh = load i64, ptr %i.bog, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i1148 = icmp eq i64 %i.boh, 0
  br i1 %.not23.i.i1148, label %tg3__json_is_array.exit1155.thread, label %.lr.ph.i.i1149

.lr.ph.i.i1149:                                   ; preds = %.preheader.i.i1147
  %i.boi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !26
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lr, %.lr.ph.i.i1149
  %.01422.i.i1150 = phi i64 [ 0, %.lr.ph.i.i1149 ], [ %i.boz, %bb.lr ] ; 2 uses
  %i.bok = getelementptr inbounds nuw [24 x i8], ptr %i.boj, i64 %.01422.i.i1150 ; 3 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  %i.bom = load i64, ptr %i.bol, align 8, !tbaa !43
  %i.bon = icmp eq i64 %i.bom, 9
  br i1 %i.bon, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.boo = load ptr, ptr %i.bok, align 8, !tbaa !40 ; 2 uses
  %i.bop = load i64, ptr %i.boo, align 1
  %i.boq = xor i64 %i.bop, 7809639168886464877
  %i.bor = getelementptr i8, ptr %i.boo, i64 8
  %i.bos = load i8, ptr %i.bor, align 1
  %i.bot = zext i8 %i.bos to i64
  %i.bou = xor i64 %i.bot, 115
  %i.bov = or i64 %i.boq, %i.bou
  %i.bow = icmp ne i64 %i.bov, 0
  %i.box = zext i1 %i.bow to i32
  %i.boy = icmp eq i32 %i.box, 0
  br i1 %i.boy, label %tg3json_object_get.exit1153, label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %i.boz = add nuw i64 %.01422.i.i1150, 1         ; 2 uses
  %exitcond.not.i.i1151 = icmp eq i64 %i.boz, %i.boh
  br i1 %exitcond.not.i.i1151, label %tg3__json_is_array.exit1155.thread, label %bb.lp, !llvm.loop !59

tg3json_object_get.exit1153:                      ; preds = %bb.lq
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bok, i64 16
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !44 ; 5 uses
  %.not.i1154 = icmp eq ptr %i.bpb, null
  br i1 %.not.i1154, label %tg3__json_is_array.exit1155.thread, label %tg3__json_is_array.exit1155

tg3__json_is_array.exit1155:                      ; preds = %tg3json_object_get.exit1153
  %i.bpc = load i32, ptr %i.bpb, align 8, !tbaa !28
  %.not2162 = icmp eq i32 %i.bpc, 5
  br i1 %.not2162, label %tg3json_array_size.exit1159, label %tg3__json_is_array.exit1155.thread

tg3json_array_size.exit1159:                      ; preds = %tg3__json_is_array.exit1155
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpb, i64 16 ; 2 uses
  %i.bpe = load i64, ptr %i.bpd, align 8, !tbaa !26 ; 4 uses
  %.not789 = icmp eq i64 %i.bpe, 0
  br i1 %.not789, label %tg3__json_is_array.exit1155.thread, label %bb.ls

bb.ls:                                            ; preds = %tg3json_array_size.exit1159
  %i.bpf = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.bpg = mul i64 %i.bpe, 584                    ; 6 uses
  %i.bph = icmp eq ptr %i.bpf, null
  %i.bpi = icmp eq i64 %i.bpg, 0
  %or.cond.i1160 = or i1 %i.bpi, %i.bph
  br i1 %or.cond.i1160, label %tg3__json_is_array.exit1155.thread, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpf, i64 32
  %i.bpk = load i64, ptr %i.bpj, align 8, !tbaa !155 ; 3 uses
  %.not.i1161 = icmp ne i64 %i.bpk, 0             ; 2 uses
  %i.bpl = icmp ugt i64 %i.bpg, %i.bpk
  %or.cond28.i1162 = and i1 %.not.i1161, %i.bpl
  br i1 %or.cond28.i1162, label %tg3__json_is_array.exit1155.thread, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8 ; 3 uses
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !178 ; 5 uses
  %.not26.i1163 = icmp eq ptr %i.bpn, null
  br i1 %.not26.i1163, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 16
  %i.bpp = load i64, ptr %i.bpo, align 8, !tbaa !179 ; 3 uses
  %i.bpq = add i64 %i.bpp, %i.bpg
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpn, i64 24
  %i.bps = load i64, ptr %i.bpr, align 8, !tbaa !181
  %i.bpt = icmp ugt i64 %i.bpq, %i.bps
  br i1 %i.bpt, label %bb.lw, label %tg3__arena_alloc.exit1175

bb.lw:                                            ; preds = %bb.lv, %bb.lu
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpf, i64 40
  %i.bpv = load i64, ptr %i.bpu, align 8, !tbaa !151
  %spec.select.i.i1169 = call i64 @llvm.umax.i64(i64 %i.bpv, i64 range(i64 0, -7) %i.bpg) ; 3 uses
  %i.bpw = icmp ugt i64 %spec.select.i.i1169, %i.bpk
  %or.cond.i.i1170 = select i1 %.not.i1161, i1 %i.bpw, i1 false
  br i1 %or.cond.i.i1170, label %tg3__json_is_array.exit1155.thread, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpf, i64 16 ; 3 uses
  %i.bpy = load i64, ptr %i.bpx, align 8, !tbaa !182
  %i.bpz = add i64 %spec.select.i.i1169, 32       ; 3 uses
  %i.bqa = add i64 %i.bpy, %i.bpz
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpf, i64 24
  %i.bqc = load i64, ptr %i.bqb, align 8, !tbaa !154
  %i.bqd = icmp ugt i64 %i.bqa, %i.bqc
  br i1 %i.bqd, label %tg3__json_is_array.exit1155.thread, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpf, i64 48
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !183
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 72
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !184
  %i.bqi = call ptr %i.bqf(i64 noundef %i.bpz, ptr noundef %i.bqh) #28, !inline_history !185 ; 8 uses
  %.not37.i.i1171 = icmp eq ptr %i.bqi, null
  br i1 %.not37.i.i1171, label %tg3__json_is_array.exit1155.thread, label %tg3__arena_alloc.exit1175.thread

tg3__arena_alloc.exit1175.thread:                 ; preds = %bb.ly
  store ptr null, ptr %i.bqi, align 8, !tbaa !186
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 32 ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8
  store ptr %i.bqj, ptr %i.bqk, align 8, !tbaa !187
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqi, i64 24
  store i64 %spec.select.i.i1169, ptr %i.bql, align 8, !tbaa !181
  %i.bqm = load i64, ptr %i.bpx, align 8, !tbaa !182
  %i.bqn = add i64 %i.bqm, %i.bpz
  store i64 %i.bqn, ptr %i.bpx, align 8, !tbaa !182
  %i.bqo = load ptr, ptr %i.bpm, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i1173 = icmp eq ptr %i.bqo, null
  %..i.i1174 = select i1 %.not38.i.i1173, ptr %i.bpf, ptr %i.bqo
  store ptr %i.bqi, ptr %..i.i1174, align 8, !tbaa !188
  store ptr %i.bqi, ptr %i.bpm, align 8, !tbaa !178
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqi, i64 16
  store i64 %i.bpg, ptr %i.bqp, align 8, !tbaa !179
  br label %.preheader2219

tg3__arena_alloc.exit1175:                        ; preds = %bb.lv
  %.phi.trans.insert.i1165 = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %.pre.i1166 = load ptr, ptr %.phi.trans.insert.i1165, align 8, !tbaa !187 ; 2 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bpn, i64 16
  %i.bqr = getelementptr inbounds nuw i8, ptr %.pre.i1166, i64 %i.bpp
  %i.bqs = add i64 %i.bpp, %i.bpg
  store i64 %i.bqs, ptr %i.bqq, align 8, !tbaa !179
  %.not790 = icmp eq ptr %.pre.i1166, null
  br i1 %.not790, label %tg3__json_is_array.exit1155.thread, label %.preheader2219

.preheader2219:                                   ; preds = %tg3__arena_alloc.exit1175.thread, %tg3__arena_alloc.exit1175
  %i.bqt = phi ptr [ %i.bqj, %tg3__arena_alloc.exit1175.thread ], [ %i.bqr, %tg3__arena_alloc.exit1175 ] ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bpb, i64 8
  %i.bqv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.lz

bb.lz:                                            ; preds = %.preheader2219, %bb.nw
  %.06582368 = phi i64 [ 0, %.preheader2219 ], [ %i.cax, %bb.nw ] ; 5 uses
  %i.bqx = load i32, ptr %i.bpb, align 8, !tbaa !28
  %.not8.i1177 = icmp eq i32 %i.bqx, 5
  br i1 %.not8.i1177, label %bb.ma, label %tg3__json_is_object.exit1182.thread

bb.ma:                                            ; preds = %bb.lz
  %i.bqy = load i64, ptr %i.bpd, align 8, !tbaa !26
  %.not9.i1179 = icmp ult i64 %.06582368, %i.bqy
  br i1 %.not9.i1179, label %tg3json_array_get.exit1180, label %tg3__json_is_object.exit1182.thread

tg3json_array_get.exit1180:                       ; preds = %bb.ma
  %i.bqz = load ptr, ptr %i.bqu, align 8, !tbaa !26 ; 2 uses
  %i.bra = getelementptr inbounds nuw [24 x i8], ptr %i.bqz, i64 %.06582368 ; 19 uses
  %.not.i1181 = icmp eq ptr %i.bqz, null
  br i1 %.not.i1181, label %tg3__json_is_object.exit1182.thread, label %tg3__json_is_object.exit1182

tg3__json_is_object.exit1182:                     ; preds = %tg3json_array_get.exit1180
  %i.brb = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not2163 = icmp eq i32 %i.brb, 6
  br i1 %.not2163, label %bb.mb, label %tg3__json_is_object.exit1182.thread

tg3__json_is_object.exit1182.thread:              ; preds = %bb.lz, %bb.ma, %tg3json_array_get.exit1180, %tg3__json_is_object.exit1182
  %i.brc = load ptr, ptr %i.bqw, align 8, !tbaa !164
  %i.brd = load ptr, ptr %0, align 8, !tbaa !161
  %i.bre = trunc i64 %.06582368 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.brc, ptr noundef %i.brd, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.50, i32 noundef %i.bre)
  br label %bb.nw

bb.mb:                                            ; preds = %tg3__json_is_object.exit1182
  %i.brf = getelementptr inbounds nuw [584 x i8], ptr %i.bqt, i64 %.06582368 ; 29 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 88 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brf, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(584) %i.brf, i8 0, i64 584, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.brg, align 8, !tbaa !76
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brf, i64 104
  store <2 x double> splat (double 1.000000e+00), ptr %i.bri, align 8, !tbaa !76
  %i.brj = getelementptr inbounds nuw i8, ptr %i.brf, i64 184 ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brf, i64 192
  store <2 x double> splat (double 1.000000e+00), ptr %i.brj, align 8, !tbaa !76
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brf, i64 120 ; 2 uses
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brf, i64 124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.brm, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.brl, align 8, !tbaa !278
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brf, i64 200 ; 2 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brf, i64 204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.bro, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.brn, align 8, !tbaa !278
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brf, i64 320 ; 4 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brf, i64 324 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brq, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brp, align 8, !tbaa !280
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brf, i64 328 ; 4 uses
  store double 1.000000e+00, ptr %i.brr, align 8, !tbaa !282
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brf, i64 392 ; 4 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.brf, i64 396 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brt, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brs, align 8, !tbaa !283
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brf, i64 400 ; 4 uses
  store double 1.000000e+00, ptr %i.bru, align 8, !tbaa !285
  %i.brv = getelementptr inbounds nuw i8, ptr %i.brf, i64 464 ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brf, i64 468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.brw, i8 0, i64 60, i1 false)
  store i32 -1, ptr %i.brv, align 8, !tbaa !278
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brf, i64 56 ; 2 uses
  store double 5.000000e-01, ptr %i.brx, align 8, !tbaa !286
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.brf, i32 noundef 0, ptr noundef nonnull @.str.141)
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brf, i64 16
  call fastcc void @tg3__parse_number_to_fixed(ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.142, ptr noundef %i.bry, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !229
  store i32 0, ptr %i.bqv, align 8, !tbaa !230
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.143, ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.141)
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brf, i64 40 ; 2 uses
  %i.bsa = load i32, ptr %i.bqv, align 8, !tbaa !230
  %.not.i1183 = icmp eq i32 %i.bsa, 0
  br i1 %.not.i1183, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.brz, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !289
  br label %bb.ml

bb.md:                                            ; preds = %bb.mb
  %i.bsb = load ptr, ptr %0, align 8, !tbaa !161  ; 9 uses
  %i.bsc = icmp eq ptr %i.bsb, null
  br i1 %i.bsc, label %tg3__arena_str.exit.i, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsb, i64 32
  %i.bse = load i64, ptr %i.bsd, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i.i1214 = icmp ne i64 %i.bse, 0
  %i.bsf = add i64 %i.bse, -1
  %or.cond28.i.i.i.i1215 = icmp ult i64 %i.bsf, 6
  br i1 %or.cond28.i.i.i.i1215, label %tg3__arena_str.exit.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsb, i64 8 ; 3 uses
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !178 ; 4 uses
  %.not26.i.i.i.i1216 = icmp eq ptr %i.bsh, null
  br i1 %.not26.i.i.i.i1216, label %bb.mh, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 16 ; 2 uses
  %i.bsj = load i64, ptr %i.bsi, align 8, !tbaa !179 ; 2 uses
  %i.bsk = add i64 %i.bsj, 8                      ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsh, i64 24
  %i.bsm = load i64, ptr %i.bsl, align 8, !tbaa !181
  %i.bsn = icmp ugt i64 %i.bsk, %i.bsm
  br i1 %i.bsn, label %bb.mh, label %tg3__arena_alloc.exit.i.i.i1217

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsb, i64 40
  %i.bsp = load i64, ptr %i.bso, align 8, !tbaa !151
  %spec.select.i.i.i.i.i1222 = call i64 @llvm.umax.i64(i64 %i.bsp, i64 range(i64 0, -7) 8) ; 3 uses
  %i.bsq = icmp ugt i64 %spec.select.i.i.i.i.i1222, %i.bse
  %or.cond.i.i.i.i.i1223 = select i1 %.not.i.i.i.i1214, i1 %i.bsq, i1 false
  br i1 %or.cond.i.i.i.i.i1223, label %tg3__arena_str.exit.i, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsb, i64 16 ; 3 uses
  %i.bss = load i64, ptr %i.bsr, align 8, !tbaa !182
  %i.bst = add i64 %spec.select.i.i.i.i.i1222, 32 ; 3 uses
  %i.bsu = add i64 %i.bss, %i.bst
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsb, i64 24
  %i.bsw = load i64, ptr %i.bsv, align 8, !tbaa !154
  %i.bsx = icmp ugt i64 %i.bsu, %i.bsw
  br i1 %i.bsx, label %tg3__arena_str.exit.i, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsb, i64 48
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !183
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsb, i64 72
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !184
  %i.btc = call ptr %i.bsz(i64 noundef %i.bst, ptr noundef %i.btb) #28, !inline_history !290 ; 8 uses
  %.not37.i.i.i.i.i1224 = icmp eq ptr %i.btc, null
  br i1 %.not37.i.i.i.i.i1224, label %tg3__arena_str.exit.i, label %tg3__arena_alloc.exit.thread24.i.i.i

tg3__arena_alloc.exit.thread24.i.i.i:             ; preds = %bb.mj
  store ptr null, ptr %i.btc, align 8, !tbaa !186
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 32 ; 2 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  store ptr %i.btd, ptr %i.bte, align 8, !tbaa !187
  %i.btf = getelementptr inbounds nuw i8, ptr %i.btc, i64 24
  store i64 %spec.select.i.i.i.i.i1222, ptr %i.btf, align 8, !tbaa !181
  %i.btg = load i64, ptr %i.bsr, align 8, !tbaa !182
  %i.bth = add i64 %i.btg, %i.bst
  store i64 %i.bth, ptr %i.bsr, align 8, !tbaa !182
  %i.bti = load ptr, ptr %i.bsg, align 8, !tbaa !178 ; 2 uses
  %.not38.i.i.i.i.i1225 = icmp eq ptr %i.bti, null
  %..i.i.i.i.i1226 = select i1 %.not38.i.i.i.i.i1225, ptr %i.bsb, ptr %i.bti
  store ptr %i.btc, ptr %..i.i.i.i.i1226, align 8, !tbaa !188
  store ptr %i.btc, ptr %i.bsg, align 8, !tbaa !178
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btc, i64 16
  store i64 8, ptr %i.btj, align 8, !tbaa !179
  br label %bb.mk

tg3__arena_alloc.exit.i.i.i1217:                  ; preds = %bb.mg
  %.phi.trans.insert.i.i.i.i1218 = getelementptr inbounds nuw i8, ptr %i.bsh, i64 8
  %.pre.i.i.i.i1219 = load ptr, ptr %.phi.trans.insert.i.i.i.i1218, align 8, !tbaa !187 ; 2 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i1219, i64 %i.bsj
  store i64 %i.bsk, ptr %i.bsi, align 8, !tbaa !179
  %.not14.i.i.i = icmp eq ptr %.pre.i.i.i.i1219, null
  br i1 %.not14.i.i.i, label %tg3__arena_str.exit.i, label %bb.mk

bb.mk:                                            ; preds = %tg3__arena_alloc.exit.i.i.i1217, %tg3__arena_alloc.exit.thread24.i.i.i
  %i.btl = phi ptr [ %i.btd, %tg3__arena_alloc.exit.thread24.i.i.i ], [ %i.btk, %tg3__arena_alloc.exit.i.i.i1217 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.btl, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.144, i64 range(i64 -2147483648, 4294967296) 6, i1 false)
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 6
  store i8 0, ptr %i.btm, align 1, !tbaa !26
  br label %tg3__arena_str.exit.i

tg3__arena_str.exit.i:                            ; preds = %bb.mk, %tg3__arena_alloc.exit.i.i.i1217, %bb.mj, %bb.mi, %bb.mh, %bb.me, %bb.md
  %.0.i.i.i1220 = phi ptr [ %i.btl, %bb.mk ], [ null, %bb.md ], [ null, %tg3__arena_alloc.exit.i.i.i1217 ], [ null, %bb.me ], [ null, %bb.mj ], [ null, %bb.mi ], [ null, %bb.mh ] ; 2 uses
  %.not.i.i1221 = icmp eq ptr %.0.i.i.i1220, null
  %i.btn = select i1 %.not.i.i1221, i32 0, i32 6
  store ptr %.0.i.i.i1220, ptr %i.brz, align 8, !tbaa !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.brf, i64 48
  store i32 %i.btn, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !36
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mc, %tg3__arena_str.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.145, ptr noundef %i.brx, i32 noundef 0, ptr noundef nonnull @.str.141)
  %i.bto = getelementptr inbounds nuw i8, ptr %i.brf, i64 64
  %i.btp = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not18.i.i.i.i.i1185 = icmp eq i32 %i.btp, 6
  br i1 %.not18.i.i.i.i.i1185, label %.preheader.i.i.i.i.i1193, label %tg3__json_get.exit.thread.i.i1186

.preheader.i.i.i.i.i1193:                         ; preds = %bb.ml
  %i.btq = getelementptr inbounds nuw i8, ptr %i.bra, i64 16 ; 3 uses
  %i.btr = load i64, ptr %i.btq, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i.i1194 = icmp eq i64 %i.btr, 0
  br i1 %.not23.i.i.i.i.i1194, label %tg3__parse_bool.exit.thread.i, label %.lr.ph.i.i.i.i.i1195

.lr.ph.i.i.i.i.i1195:                             ; preds = %.preheader.i.i.i.i.i1193
  %i.bts = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !26
  br label %bb.mm

bb.mm:                                            ; preds = %bb.mo, %.lr.ph.i.i.i.i.i1195
  %.01422.i.i.i.i.i1196 = phi i64 [ 0, %.lr.ph.i.i.i.i.i1195 ], [ %i.bui, %bb.mo ] ; 2 uses
  %i.btu = getelementptr inbounds nuw [24 x i8], ptr %i.btt, i64 %.01422.i.i.i.i.i1196 ; 3 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.btu, i64 8
  %i.btw = load i64, ptr %i.btv, align 8, !tbaa !43
  %i.btx = icmp eq i64 %i.btw, 11
  br i1 %i.btx, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.bty = load ptr, ptr %i.btu, align 8, !tbaa !40 ; 2 uses
  %i.btz = load i64, ptr %i.bty, align 1
  %i.bua = xor i64 %i.btz, 7589521313232154468
  %i.bub = getelementptr i8, ptr %i.bty, i64 3
  %i.buc = load i64, ptr %i.bub, align 1
  %i.bud = xor i64 %i.buc, 7234298779974069346
  %i.bue = or i64 %i.bua, %i.bud
  %i.buf = icmp ne i64 %i.bue, 0
  %i.bug = zext i1 %i.buf to i32
  %i.buh = icmp eq i32 %i.bug, 0
  br i1 %i.buh, label %tg3__json_get.exit.i.i1211, label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.bui = add nuw i64 %.01422.i.i.i.i.i1196, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i1197 = icmp eq i64 %i.bui, %i.btr
  br i1 %exitcond.not.i.i.i.i.i1197, label %tg3__parse_bool.exit.thread.i, label %bb.mm, !llvm.loop !59

tg3__json_get.exit.i.i1211:                       ; preds = %bb.mn
  %i.buj = getelementptr inbounds nuw i8, ptr %i.btu, i64 16
  %i.buk = load ptr, ptr %i.buj, align 8, !tbaa !44 ; 3 uses
  %.not.i63.i = icmp eq ptr %i.buk, null
  br i1 %.not.i63.i, label %tg3__parse_bool.exit.thread.i, label %bb.mp

bb.mp:                                            ; preds = %tg3__json_get.exit.i.i1211
  %i.bul = load i32, ptr %i.buk, align 8, !tbaa !28
  %.not16.i.i1212 = icmp eq i32 %i.bul, 1
  br i1 %.not16.i.i1212, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bum = load ptr, ptr %i.bqw, align 8, !tbaa !164
  %i.bun = load ptr, ptr %0, align 8, !tbaa !161
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.bum, ptr noundef %i.bun, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.146)
  br label %tg3__parse_bool.exit.thread.i

bb.mr:                                            ; preds = %bb.mp
  %i.buo = getelementptr inbounds nuw i8, ptr %i.buk, i64 8
  %i.bup = load i32, ptr %i.buo, align 8, !tbaa !26
  %.not17.i.i1213 = icmp ne i32 %i.bup, 0
  %i.buq = zext i1 %.not17.i.i1213 to i32
  store i32 %i.buq, ptr %i.bto, align 8, !tbaa !36
  br label %tg3__parse_bool.exit.thread.i

tg3__parse_bool.exit.thread.i:                    ; preds = %bb.mo, %bb.mr, %bb.mq, %tg3__json_get.exit.i.i1211, %.preheader.i.i.i.i.i1193
  %.pr205.i = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not18.i.i.i.i1198 = icmp eq i32 %.pr205.i, 6
  br i1 %.not18.i.i.i.i1198, label %.preheader.i.i.i.i1199, label %tg3__json_get.exit.thread.i.i1186

.preheader.i.i.i.i1199:                           ; preds = %tg3__parse_bool.exit.thread.i
  %i.bur = load i64, ptr %i.btq, align 8, !tbaa !26 ; 5 uses
  %.not23.i.i.i.i1200 = icmp eq i64 %i.bur, 0
  br i1 %.not23.i.i.i.i1200, label %tg3__json_get.exit.thread.i.i1186, label %.lr.ph.i.i.i.i1201

.lr.ph.i.i.i.i1201:                               ; preds = %.preheader.i.i.i.i1199
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bra, i64 8 ; 2 uses
  %i.but = load ptr, ptr %i.bus, align 8, !tbaa !26
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mu, %.lr.ph.i.i.i.i1201
  %.01422.i.i.i.i1202 = phi i64 [ 0, %.lr.ph.i.i.i.i1201 ], [ %i.bvj, %bb.mu ] ; 2 uses
  %i.buu = getelementptr inbounds nuw [24 x i8], ptr %i.but, i64 %.01422.i.i.i.i1202 ; 3 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 8
  %i.buw = load i64, ptr %i.buv, align 8, !tbaa !43
  %i.bux = icmp eq i64 %i.buw, 20
  br i1 %i.bux, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.buy = load ptr, ptr %i.buu, align 8, !tbaa !40 ; 2 uses
  %i.buz = load i128, ptr %i.buy, align 1
  %i.bva = xor i128 %i.buz, 138776899999807956666546506507228439152
  %i.bvb = getelementptr i8, ptr %i.buy, i64 16
  %i.bvc = load i32, ptr %i.bvb, align 1
  %i.bvd = zext i32 %i.bvc to i128
  %i.bve = xor i128 %i.bvd, 1936942446
  %i.bvf = or i128 %i.bva, %i.bve
  %i.bvg = icmp ne i128 %i.bvf, 0
  %i.bvh = zext i1 %i.bvg to i32
  %i.bvi = icmp eq i32 %i.bvh, 0
  br i1 %i.bvi, label %tg3__json_get.exit.i1207, label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.bvj = add nuw i64 %.01422.i.i.i.i1202, 1     ; 2 uses
  %exitcond.not.i.i.i.i1203 = icmp eq i64 %i.bvj, %i.bur
  br i1 %exitcond.not.i.i.i.i1203, label %.lr.ph.i.i.i.i72.i, label %bb.ms, !llvm.loop !59

tg3__json_get.exit.i1207:                         ; preds = %bb.mt
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.buu, i64 16
  %i.bvl = load ptr, ptr %i.bvk, align 8, !tbaa !44 ; 8 uses
  %.not.i66.i = icmp eq ptr %i.bvl, null
  br i1 %.not.i66.i, label %.preheader.i.i.i.i70.i, label %tg3__json_is_object.exit.i1208

tg3__json_is_object.exit.i1208:                   ; preds = %tg3__json_get.exit.i1207
  %i.bvm = load i32, ptr %i.bvl, align 8, !tbaa !28
  %.not141.i = icmp eq i32 %i.bvm, 6
  br i1 %.not141.i, label %tg3__json_is_object.exit.thread.thread139.i, label %.preheader.i.i.i.i70.i

tg3__json_is_object.exit.thread.thread139.i:      ; preds = %tg3__json_is_object.exit.i1208
  call fastcc void @tg3__parse_number_to_fixed(ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.148, ptr noundef %i.brg, i32 noundef 4)
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.149, ptr noundef %i.brj, i32 noundef 0, ptr noundef nonnull @.str.150)
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.151, ptr noundef %i.brk, i32 noundef 0, ptr noundef nonnull @.str.150)
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.152, ptr noundef %i.brl)
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef nonnull @.str.153, ptr noundef %i.brn)
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.bvl, ptr noundef %i.brh)
  %.pr.pre.i1209 = load i32, ptr %i.bra, align 8, !tbaa !28
  %i.bvn = icmp eq i32 %.pr.pre.i1209, 6
  br i1 %i.bvn, label %tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge, label %tg3__json_get.exit.thread.i.i1186

tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge: ; preds = %tg3__json_is_object.exit.thread.thread139.i
  %.pr.i.pre = load i64, ptr %i.btq, align 8, !tbaa !26
  br label %.preheader.i.i.i.i70.i

.preheader.i.i.i.i70.i:                           ; preds = %tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge, %tg3__json_is_object.exit.i1208, %tg3__json_get.exit.i1207
  %.pr.i = phi i64 [ %.pr.i.pre, %tg3__json_is_object.exit.thread.thread139.i..preheader.i.i.i.i70.i_crit_edge ], [ %i.bur, %tg3__json_get.exit.i1207 ], [ %i.bur, %tg3__json_is_object.exit.i1208 ] ; 2 uses
  %.not23.i.i.i.i71.i = icmp eq i64 %.pr.i, 0
  br i1 %.not23.i.i.i.i71.i, label %tg3__json_get.exit.thread.i.i1186, label %.lr.ph.i.i.i.i72.i

.lr.ph.i.i.i.i72.i:                               ; preds = %bb.mu, %.preheader.i.i.i.i70.i
  %.pr.i3085 = phi i64 [ %.pr.i, %.preheader.i.i.i.i70.i ], [ %i.bur, %bb.mu ]
  %i.bvo = load ptr, ptr %i.bus, align 8, !tbaa !26
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mx, %.lr.ph.i.i.i.i72.i
  %.01422.i.i.i.i73.i = phi i64 [ 0, %.lr.ph.i.i.i.i72.i ], [ %i.bwd, %bb.mx ] ; 2 uses
  %i.bvp = getelementptr inbounds nuw [24 x i8], ptr %i.bvo, i64 %.01422.i.i.i.i73.i ; 3 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 8
  %i.bvr = load i64, ptr %i.bvq, align 8, !tbaa !43
  %i.bvs = icmp eq i64 %i.bvr, 13
  br i1 %i.bvs, label %bb.mw, label %bb.mx

bb.mw:                                            ; preds = %bb.mv
  %i.bvt = load ptr, ptr %i.bvp, align 8, !tbaa !40 ; 2 uses
  %i.bvu = load i64, ptr %i.bvt, align 1
  %i.bvv = xor i64 %i.bvu, 7301580061578260334
  %i.bvw = getelementptr i8, ptr %i.bvt, i64 5
  %i.bvx = load i64, ptr %i.bvw, align 1
  %i.bvy = xor i64 %i.bvx, 7310034288272299116
  %i.bvz = or i64 %i.bvv, %i.bvy
  %i.bwa = icmp ne i64 %i.bvz, 0
  %i.bwb = zext i1 %i.bwa to i32
  %i.bwc = icmp eq i32 %i.bwb, 0
  br i1 %i.bwc, label %tg3__json_get.exit.i76.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw, %bb.mv
  %i.bwd = add nuw i64 %.01422.i.i.i.i73.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i74.i = icmp eq i64 %i.bwd, %.pr.i3085
  br i1 %exitcond.not.i.i.i.i74.i, label %tg3__json_get.exit.thread.i.i1186, label %bb.mv, !llvm.loop !59

tg3__json_get.exit.thread.i.i1186:                ; preds = %bb.mx, %.preheader.i.i.i.i70.i, %tg3__json_is_object.exit.thread.thread139.i, %.preheader.i.i.i.i1199, %tg3__parse_bool.exit.thread.i, %bb.ml
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brq, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brp, align 8, !tbaa !280
  store double 1.000000e+00, ptr %i.brr, align 8, !tbaa !282
  br label %tg3__parse_normal_texture_info.exit.i

tg3__json_get.exit.i76.i:                         ; preds = %bb.mw
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvp, i64 16
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !44 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brq, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brp, align 8, !tbaa !280
  store double 1.000000e+00, ptr %i.brr, align 8, !tbaa !282
  %.not.i77.i = icmp eq ptr %i.bwf, null
  br i1 %.not.i77.i, label %tg3__parse_normal_texture_info.exit.i, label %tg3__json_is_object.exit.i.i1204

tg3__json_is_object.exit.i.i1204:                 ; preds = %tg3__json_get.exit.i76.i
  %i.bwg = load i32, ptr %i.bwf, align 8, !tbaa !28
  %.not3.i.i = icmp eq i32 %i.bwg, 6
  br i1 %.not3.i.i, label %bb.my, label %tg3__parse_normal_texture_info.exit.i

bb.my:                                            ; preds = %tg3__json_is_object.exit.i.i1204
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.bwf, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.brp, i32 noundef 0, ptr noundef nonnull @.str.154)
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.bwf, ptr noundef nonnull @.str.159, ptr noundef %i.brq, i32 noundef 0, ptr noundef nonnull @.str.154)
  %i.bwh = load i32, ptr %i.bwf, align 8, !tbaa !28
  %.not18.i.i.i.i.i.i = icmp eq i32 %i.bwh, 6
  br i1 %.not18.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %tg3__parse_double.exit.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.my
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16
  %i.bwj = load i64, ptr %i.bwi, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i64 %i.bwj, 0
  br i1 %.not23.i.i.i.i.i.i, label %tg3__parse_double.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwf, i64 8
  %i.bwl = load ptr, ptr %i.bwk, align 8, !tbaa !26
  br label %bb.mz

bb.mz:                                            ; preds = %bb.nb, %.lr.ph.i.i.i.i.i.i
  %.01422.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.bxb, %bb.nb ] ; 2 uses
  %i.bwm = getelementptr inbounds nuw [24 x i8], ptr %i.bwl, i64 %.01422.i.i.i.i.i.i ; 3 uses
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 8
  %i.bwo = load i64, ptr %i.bwn, align 8, !tbaa !43
  %i.bwp = icmp eq i64 %i.bwo, 5
  br i1 %i.bwp, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.bwq = load ptr, ptr %i.bwm, align 8, !tbaa !40 ; 2 uses
  %i.bwr = load i32, ptr %i.bwq, align 1
  %i.bws = xor i32 %i.bwr, 1818321779
  %i.bwt = getelementptr i8, ptr %i.bwq, i64 4
  %i.bwu = load i8, ptr %i.bwt, align 1
  %i.bwv = zext i8 %i.bwu to i32
  %i.bww = xor i32 %i.bwv, 101
  %i.bwx = or i32 %i.bws, %i.bww
  %i.bwy = icmp ne i32 %i.bwx, 0
  %i.bwz = zext i1 %i.bwy to i32
  %i.bxa = icmp eq i32 %i.bwz, 0
  br i1 %i.bxa, label %tg3__json_get.exit.i.i.i, label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %i.bxb = add nuw i64 %.01422.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bxb, %i.bwj
  br i1 %exitcond.not.i.i.i.i.i.i, label %tg3__parse_double.exit.i.i, label %bb.mz, !llvm.loop !59

tg3__json_get.exit.i.i.i:                         ; preds = %bb.na
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bwm, i64 16
  %i.bxd = load ptr, ptr %i.bxc, align 8, !tbaa !44 ; 4 uses
  %.not.i22.i.i = icmp eq ptr %i.bxd, null
  br i1 %.not.i22.i.i, label %tg3__parse_double.exit.i.i, label %bb.nc

bb.nc:                                            ; preds = %tg3__json_get.exit.i.i.i
  %i.bxe = load i32, ptr %i.bxd, align 8, !tbaa !28
  switch i32 %i.bxe, label %bb.nd [
    i32 2, label %.thread.i.i.i1205
    i32 3, label %bb.ne
  ]

bb.nd:                                            ; preds = %bb.nc
  %i.bxf = load ptr, ptr %i.bqw, align 8, !tbaa !164
  %i.bxg = load ptr, ptr %0, align 8, !tbaa !161
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.bxf, ptr noundef %i.bxg, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.131)
  br label %tg3__parse_double.exit.i.i

.thread.i.i.i1205:                                ; preds = %bb.nc
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxd, i64 8
  %i.bxi = load i64, ptr %i.bxh, align 8, !tbaa !26
  %i.bxj = sitofp i64 %i.bxi to double
  br label %tg3__json_number_to_double.exit.i.i.i

bb.ne:                                            ; preds = %bb.nc
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxd, i64 8
  %i.bxl = load double, ptr %i.bxk, align 8, !tbaa !26
  br label %tg3__json_number_to_double.exit.i.i.i

tg3__json_number_to_double.exit.i.i.i:            ; preds = %bb.ne, %.thread.i.i.i1205
  %.0.i.i23.i.i = phi double [ %i.bxj, %.thread.i.i.i1205 ], [ %i.bxl, %bb.ne ]
  store double %.0.i.i23.i.i, ptr %i.brr, align 8, !tbaa !76
  br label %tg3__parse_double.exit.i.i

tg3__parse_double.exit.i.i:                       ; preds = %bb.nb, %tg3__json_number_to_double.exit.i.i.i, %bb.nd, %tg3__json_get.exit.i.i.i, %.preheader.i.i.i.i.i.i, %bb.my
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.brf, i64 336
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.bwf, ptr noundef %i.bxm)
  br label %tg3__parse_normal_texture_info.exit.i

tg3__parse_normal_texture_info.exit.i:            ; preds = %tg3__json_get.exit.thread.i.i1186, %tg3__json_get.exit.i76.i, %tg3__json_is_object.exit.i.i1204, %tg3__parse_double.exit.i.i
  %i.bxn = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not18.i.i.i.i79.i = icmp eq i32 %i.bxn, 6
  br i1 %.not18.i.i.i.i79.i, label %.preheader.i.i.i.i82.i, label %tg3__json_get.exit.thread.i80.i

.preheader.i.i.i.i82.i:                           ; preds = %tg3__parse_normal_texture_info.exit.i
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bra, i64 16
  %i.bxp = load i64, ptr %i.bxo, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i83.i = icmp eq i64 %i.bxp, 0
  br i1 %.not23.i.i.i.i83.i, label %tg3__json_get.exit.thread.i80.i, label %.lr.ph.i.i.i.i84.i

.lr.ph.i.i.i.i84.i:                               ; preds = %.preheader.i.i.i.i82.i
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !26
  br label %bb.nf

bb.nf:                                            ; preds = %bb.nh, %.lr.ph.i.i.i.i84.i
  %.01422.i.i.i.i85.i = phi i64 [ 0, %.lr.ph.i.i.i.i84.i ], [ %i.byb, %bb.nh ] ; 2 uses
  %i.bxs = getelementptr inbounds nuw [24 x i8], ptr %i.bxr, i64 %.01422.i.i.i.i85.i ; 3 uses
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxs, i64 8
  %i.bxu = load i64, ptr %i.bxt, align 8, !tbaa !43
  %i.bxv = icmp eq i64 %i.bxu, 16
  br i1 %i.bxv, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.bxw = load ptr, ptr %i.bxs, align 8, !tbaa !40
  %i.bxx = load i128, ptr %i.bxw, align 1
  %i.bxy = icmp ne i128 %i.bxx, 134846331685800653815336722060143715183
  %i.bxz = zext i1 %i.bxy to i32
  %i.bya = icmp eq i32 %i.bxz, 0
  br i1 %i.bya, label %tg3__json_get.exit.i88.i, label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %i.byb = add nuw i64 %.01422.i.i.i.i85.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i86.i = icmp eq i64 %i.byb, %i.bxp
  br i1 %exitcond.not.i.i.i.i86.i, label %tg3__json_get.exit.thread.i80.i, label %bb.nf, !llvm.loop !59

tg3__json_get.exit.thread.i80.i:                  ; preds = %bb.nh, %.preheader.i.i.i.i82.i, %tg3__parse_normal_texture_info.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brt, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brs, align 8, !tbaa !283
  store double 1.000000e+00, ptr %i.bru, align 8, !tbaa !285
  br label %tg3__parse_occlusion_texture_info.exit.i

tg3__json_get.exit.i88.i:                         ; preds = %bb.ng
  %i.byc = getelementptr inbounds nuw i8, ptr %i.bxs, i64 16
  %i.byd = load ptr, ptr %i.byc, align 8, !tbaa !44 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.brt, i8 0, i64 68, i1 false)
  store i32 -1, ptr %i.brs, align 8, !tbaa !283
  store double 1.000000e+00, ptr %i.bru, align 8, !tbaa !285
  %.not.i89.i = icmp eq ptr %i.byd, null
  br i1 %.not.i89.i, label %tg3__parse_occlusion_texture_info.exit.i, label %tg3__json_is_object.exit.i90.i

tg3__json_is_object.exit.i90.i:                   ; preds = %tg3__json_get.exit.i88.i
  %i.bye = load i32, ptr %i.byd, align 8, !tbaa !28
  %.not3.i91.i = icmp eq i32 %i.bye, 6
  br i1 %.not3.i91.i, label %bb.ni, label %tg3__parse_occlusion_texture_info.exit.i

bb.ni:                                            ; preds = %tg3__json_is_object.exit.i90.i
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.byd, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.brs, i32 noundef 0, ptr noundef nonnull @.str.155)
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef nonnull %i.byd, ptr noundef nonnull @.str.159, ptr noundef %i.brt, i32 noundef 0, ptr noundef nonnull @.str.155)
  %i.byf = load i32, ptr %i.byd, align 8, !tbaa !28
  %.not18.i.i.i.i.i92.i = icmp eq i32 %i.byf, 6
  br i1 %.not18.i.i.i.i.i92.i, label %.preheader.i.i.i.i.i94.i, label %tg3__parse_double.exit.i93.i

.preheader.i.i.i.i.i94.i:                         ; preds = %bb.ni
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byd, i64 16
  %i.byh = load i64, ptr %i.byg, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i.i.i95.i = icmp eq i64 %i.byh, 0
  br i1 %.not23.i.i.i.i.i95.i, label %tg3__parse_double.exit.i93.i, label %.lr.ph.i.i.i.i.i96.i

.lr.ph.i.i.i.i.i96.i:                             ; preds = %.preheader.i.i.i.i.i94.i
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byd, i64 8
  %i.byj = load ptr, ptr %i.byi, align 8, !tbaa !26
  br label %bb.nj

bb.nj:                                            ; preds = %bb.nl, %.lr.ph.i.i.i.i.i96.i
  %.01422.i.i.i.i.i97.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i96.i ], [ %i.byt, %bb.nl ] ; 2 uses
  %i.byk = getelementptr inbounds nuw [24 x i8], ptr %i.byj, i64 %.01422.i.i.i.i.i97.i ; 3 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byk, i64 8
  %i.bym = load i64, ptr %i.byl, align 8, !tbaa !43
  %i.byn = icmp eq i64 %i.bym, 8
  br i1 %i.byn, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.byo = load ptr, ptr %i.byk, align 8, !tbaa !40
  %i.byp = load i64, ptr %i.byo, align 1
  %i.byq = icmp ne i64 %i.byp, 7526754601089004659
  %i.byr = zext i1 %i.byq to i32
  %i.bys = icmp eq i32 %i.byr, 0
  br i1 %i.bys, label %tg3__json_get.exit.i.i100.i, label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %i.byt = add nuw i64 %.01422.i.i.i.i.i97.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i98.i = icmp eq i64 %i.byt, %i.byh
  br i1 %exitcond.not.i.i.i.i.i98.i, label %tg3__parse_double.exit.i93.i, label %bb.nj, !llvm.loop !59

tg3__json_get.exit.i.i100.i:                      ; preds = %bb.nk
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byk, i64 16
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !44 ; 4 uses
  %.not.i22.i101.i = icmp eq ptr %i.byv, null
  br i1 %.not.i22.i101.i, label %tg3__parse_double.exit.i93.i, label %bb.nm

bb.nm:                                            ; preds = %tg3__json_get.exit.i.i100.i
  %i.byw = load i32, ptr %i.byv, align 8, !tbaa !28
  switch i32 %i.byw, label %bb.nn [
    i32 2, label %.thread.i.i104.i
    i32 3, label %bb.no
  ]

bb.nn:                                            ; preds = %bb.nm
  %i.byx = load ptr, ptr %i.bqw, align 8, !tbaa !164
  %i.byy = load ptr, ptr %0, align 8, !tbaa !161
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.byx, ptr noundef %i.byy, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.160)
  br label %tg3__parse_double.exit.i93.i

.thread.i.i104.i:                                 ; preds = %bb.nm
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byv, i64 8
  %i.bza = load i64, ptr %i.byz, align 8, !tbaa !26
  %i.bzb = sitofp i64 %i.bza to double
  br label %tg3__json_number_to_double.exit.i.i102.i

bb.no:                                            ; preds = %bb.nm
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.byv, i64 8
  %i.bzd = load double, ptr %i.bzc, align 8, !tbaa !26
  br label %tg3__json_number_to_double.exit.i.i102.i

tg3__json_number_to_double.exit.i.i102.i:         ; preds = %bb.no, %.thread.i.i104.i
  %.0.i.i23.i103.i = phi double [ %i.bzb, %.thread.i.i104.i ], [ %i.bzd, %bb.no ]
  store double %.0.i.i23.i103.i, ptr %i.bru, align 8, !tbaa !76
  br label %tg3__parse_double.exit.i93.i

tg3__parse_double.exit.i93.i:                     ; preds = %bb.nl, %tg3__json_number_to_double.exit.i.i102.i, %bb.nn, %tg3__json_get.exit.i.i100.i, %.preheader.i.i.i.i.i94.i, %bb.ni
  %i.bze = getelementptr inbounds nuw i8, ptr %i.brf, i64 408
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.byd, ptr noundef %i.bze)
  br label %tg3__parse_occlusion_texture_info.exit.i

tg3__parse_occlusion_texture_info.exit.i:         ; preds = %tg3__parse_double.exit.i93.i, %tg3__json_is_object.exit.i90.i, %tg3__json_get.exit.i88.i, %tg3__json_get.exit.thread.i80.i
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef nonnull @.str.156, ptr noundef %i.brv)
  %i.bzf = load i32, ptr %i.bra, align 8, !tbaa !28
  %.not18.i.i.i106.i = icmp eq i32 %i.bzf, 6
  br i1 %.not18.i.i.i106.i, label %.preheader.i.i.i108.i, label %tg3__parse_material.exit

.preheader.i.i.i108.i:                            ; preds = %tg3__parse_occlusion_texture_info.exit.i
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bra, i64 16
  %i.bzh = load i64, ptr %i.bzg, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i109.i = icmp eq i64 %i.bzh, 0
  br i1 %.not23.i.i.i109.i, label %tg3__parse_material.exit, label %.lr.ph.i.i.i110.i

.lr.ph.i.i.i110.i:                                ; preds = %.preheader.i.i.i108.i
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !26
  br label %bb.np

bb.np:                                            ; preds = %bb.nr, %.lr.ph.i.i.i110.i
  %.01422.i.i.i111.i = phi i64 [ 0, %.lr.ph.i.i.i110.i ], [ %i.bzz, %bb.nr ] ; 2 uses
  %i.bzk = getelementptr inbounds nuw [24 x i8], ptr %i.bzj, i64 %.01422.i.i.i111.i ; 3 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 8
  %i.bzm = load i64, ptr %i.bzl, align 8, !tbaa !43
  %i.bzn = icmp eq i64 %i.bzm, 10
  br i1 %i.bzn, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  %i.bzo = load ptr, ptr %i.bzk, align 8, !tbaa !40 ; 2 uses
  %i.bzp = load i64, ptr %i.bzo, align 1
  %i.bzq = xor i64 %i.bzp, 8028074728750348389
  %i.bzr = getelementptr i8, ptr %i.bzo, i64 8
  %i.bzs = load i16, ptr %i.bzr, align 1
  %i.bzt = zext i16 %i.bzs to i64
  %i.bzu = xor i64 %i.bzt, 29550
  %i.bzv = or i64 %i.bzq, %i.bzu
  %i.bzw = icmp ne i64 %i.bzv, 0
  %i.bzx = zext i1 %i.bzw to i32
  %i.bzy = icmp eq i32 %i.bzx, 0
  br i1 %i.bzy, label %tg3__json_get.exit114.i, label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %bb.np
  %i.bzz = add nuw i64 %.01422.i.i.i111.i, 1      ; 2 uses
  %exitcond.not.i.i.i112.i = icmp eq i64 %i.bzz, %i.bzh
  br i1 %exitcond.not.i.i.i112.i, label %tg3__parse_material.exit, label %bb.np, !llvm.loop !59

tg3__json_get.exit114.i:                          ; preds = %bb.nq
  %i.caa = getelementptr inbounds nuw i8, ptr %i.bzk, i64 16
  %i.cab = load ptr, ptr %i.caa, align 8, !tbaa !44 ; 4 uses
  %.not.i115.i = icmp eq ptr %i.cab, null
  br i1 %.not.i115.i, label %tg3__parse_material.exit, label %tg3__json_is_object.exit116.i

tg3__json_is_object.exit116.i:                    ; preds = %tg3__json_get.exit114.i
  %i.cac = load i32, ptr %i.cab, align 8, !tbaa !28
  %.not142.i = icmp eq i32 %i.cac, 6
  br i1 %.not142.i, label %.preheader.i.i.i1187, label %tg3__parse_material.exit

.preheader.i.i.i1187:                             ; preds = %tg3__json_is_object.exit116.i
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cab, i64 16
  %i.cae = load i64, ptr %i.cad, align 8, !tbaa !26 ; 2 uses
  %.not23.i.i.i1188 = icmp eq i64 %i.cae, 0
  br i1 %.not23.i.i.i1188, label %tg3__parse_material.exit, label %.lr.ph.i.i.i1189

.lr.ph.i.i.i1189:                                 ; preds = %.preheader.i.i.i1187
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cab, i64 8
  %i.cag = load ptr, ptr %i.caf, align 8, !tbaa !26
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nu, %.lr.ph.i.i.i1189
  %.01422.i.i.i1190 = phi i64 [ 0, %.lr.ph.i.i.i1189 ], [ %i.caq, %bb.nu ] ; 2 uses
  %i.cah = getelementptr inbounds nuw [24 x i8], ptr %i.cag, i64 %.01422.i.i.i1190 ; 3 uses
  %i.cai = getelementptr inbounds nuw i8, ptr %i.cah, i64 8
  %i.caj = load i64, ptr %i.cai, align 8, !tbaa !43
  %i.cak = icmp eq i64 %i.caj, 8
  br i1 %i.cak, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  %i.cal = load ptr, ptr %i.cah, align 8, !tbaa !40
  %i.cam = load i64, ptr %i.cal, align 1
  %i.can = icmp ne i64 %i.cam, 7237122282899264333
  %i.cao = zext i1 %i.can to i32
  %i.cap = icmp eq i32 %i.cao, 0
  br i1 %i.cap, label %tg3json_object_get.exit.i, label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  %i.caq = add nuw i64 %.01422.i.i.i1190, 1       ; 2 uses
  %exitcond.not.i.i.i1191 = icmp eq i64 %i.caq, %i.cae
  br i1 %exitcond.not.i.i.i1191, label %tg3__parse_material.exit, label %bb.ns, !llvm.loop !59

tg3json_object_get.exit.i:                        ; preds = %bb.nt
  %i.car = getelementptr inbounds nuw i8, ptr %i.cah, i64 16
  %i.cas = load ptr, ptr %i.car, align 8, !tbaa !44 ; 3 uses
  %.not.i118.i = icmp eq ptr %i.cas, null
  br i1 %.not.i118.i, label %tg3__parse_material.exit, label %tg3__json_is_object.exit119.i

tg3__json_is_object.exit119.i:                    ; preds = %tg3json_object_get.exit.i
  %i.cat = load i32, ptr %i.cas, align 8, !tbaa !28
  %.not143.i = icmp eq i32 %i.cat, 6
  br i1 %.not143.i, label %bb.nv, label %tg3__parse_material.exit

bb.nv:                                            ; preds = %tg3__json_is_object.exit119.i
  %i.cau = getelementptr inbounds nuw i8, ptr %i.brf, i64 72
  %i.cav = getelementptr inbounds nuw i8, ptr %i.brf, i64 80
  call fastcc void @tg3__parse_int_array(ptr noundef nonnull %0, ptr noundef nonnull %i.cas, ptr noundef nonnull @.str.137, ptr noundef %i.cau, ptr noundef %i.cav, i32 noundef 0, ptr noundef nonnull @.str.157)
  br label %tg3__parse_material.exit

tg3__parse_material.exit:                         ; preds = %bb.nr, %bb.nu, %tg3__parse_occlusion_texture_info.exit.i, %.preheader.i.i.i108.i, %tg3__json_get.exit114.i, %tg3__json_is_object.exit116.i, %.preheader.i.i.i1187, %tg3json_object_get.exit.i, %tg3__json_is_object.exit119.i, %bb.nv
  %i.caw = getelementptr inbounds nuw i8, ptr %i.brf, i64 528
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bra, ptr noundef %i.caw)
  br label %bb.nw

bb.nw:                                            ; preds = %tg3__parse_material.exit, %tg3__json_is_object.exit1182.thread
  %i.cax = add nuw i64 %.06582368, 1              ; 2 uses
end_hunk_3
begin_hunk_4_@tg3_parse_file:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.aj = phi i32 [ %.pre30.i46, %bb.j ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ak = phi ptr [ %i.ai, %bb.j ], [ %.pre.i42, %bb.h ]
  %i.al = add i32 %i.aj, 1
  store i32 %i.al, ptr %i.ab, align 8, !tbaa !86
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.am ; 5 uses
  store i32 2, ptr %i.an, align 8, !tbaa !142
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @.str.6, ptr %i.ap, align 8, !tbaa !145
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !146
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 -1, ptr %i.ar, align 8, !tbaa !147
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.as, align 8, !tbaa !83
  br label %tg3__error_push.exit

bb.l:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.c, i8 0, i64 4096, i1 false)
  %.not54 = icmp eq i32 %3, 0
  br i1 %.not54, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext i32 %3 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi83, %vector.body ]
  %vec.phi80 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi81 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %wide.load = load <4 x i8>, ptr %i.at, align 1, !tbaa !26 ; 2 uses
  %wide.load82 = load <4 x i8>, ptr %i.au, align 1, !tbaa !26 ; 2 uses
  %i.av = icmp eq <4 x i8> %wide.load, splat (i8 47)
  %i.aw = icmp eq <4 x i8> %wide.load82, splat (i8 47)
  %i.ax = icmp eq <4 x i8> %wide.load, splat (i8 92)
  %i.ay = icmp eq <4 x i8> %wide.load82, splat (i8 92)
  %i.az = or <4 x i1> %i.av, %i.ax                ; 2 uses
  %i.ba = or <4 x i1> %i.aw, %i.ay                ; 2 uses
  %i.bb = or <4 x i1> %vec.phi80, %i.az           ; 2 uses
  %i.bc = or <4 x i1> %vec.phi81, %i.ba           ; 2 uses
  %predphi = select <4 x i1> %i.az, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %predphi83 = select <4 x i1> %i.ba, <4 x i32> %step.add, <4 x i32> %vec.phi79 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %predphi, <4 x i32> %predphi83)
  %i.be = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  %bin.rdx = or <4 x i1> %i.bc, %i.bb
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.bf = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not84 = icmp eq i4 %i.bf, 0
  %rdx.select = select i1 %.not84, i32 0, i32 %i.be ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader85

.lr.ph.preheader85:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02652.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader85, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %indvars.iv.ph, %.lr.ph.preheader85 ] ; 3 uses
  %.02652 = phi i32 [ %.1, %bb.n ], [ %.02652.ph, %.lr.ph.preheader85 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !26
  switch i8 %i.bh, label %bb.n [
    i8 47, label %bb.m
    i8 92, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.bi = trunc nuw i64 %indvars.iv to i32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.1 = phi i32 [ %i.bi, %bb.m ], [ %.02652, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !443

._crit_edge:                                      ; preds = %bb.n, %middle.block
  %.1.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.1, %bb.n ] ; 3 uses
  %.not37 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not37, label %._crit_edge.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bj = zext i32 %.1.lcssa to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull readonly align 1 %2, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !26
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l, %bb.o, %._crit_edge
  %.026.lcssa78 = phi i32 [ 0, %._crit_edge ], [ %.1.lcssa, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !19  ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 3
  br i1 %i.bm, label %bb.p, label %bb.u

bb.p:                                             ; preds = %._crit_edge.thread
  %i.bn = load i8, ptr %i.z, align 1, !tbaa !26
  %i.bo = icmp eq i8 %i.bn, 103
  br i1 %i.bo, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !26
  %i.br = icmp eq i8 %i.bq, 108
  br i1 %i.br, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !26
  %i.bu = icmp eq i8 %i.bt, 84
  br i1 %i.bu, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26
  %i.bx = icmp eq i8 %i.bw, 70
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = call i32 @tg3_parse_glb(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.z, i64 noundef %i.bl, ptr noundef nonnull %i.c, i32 noundef %.026.lcssa78, ptr noundef nonnull readonly %5)
  br label %tg3_parse_auto.exit

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %._crit_edge.thread
  %i.bz = call i32 @tg3_parse(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.z, i64 noundef %i.bl, ptr noundef nonnull %i.c, i32 noundef %.026.lcssa78, ptr noundef nonnull readonly %5)
  br label %tg3_parse_auto.exit

tg3_parse_auto.exit:                              ; preds = %bb.u, %bb.t
  %.0.i = phi i32 [ %i.bz, %bb.u ], [ %i.by, %bb.t ]
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !19
  %i.cc = extractelement <2 x ptr> %i.t, i64 0
  call void %i.cc(ptr noundef %i.ca, i64 noundef %i.cb, ptr noundef %i.v) #28
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.k, %bb.i, %bb.g, %tg3_parse_auto.exit, %bb.b, %bb.a
  %.027 = phi i32 [ 1, %bb.b ], [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.a ], [ %.0.i, %tg3_parse_auto.exit ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define dso_local void @tg3_model_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !156    ; 5 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !55 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !55 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444  ; 2 uses
  %.not12.i = icmp eq ptr %i.b, null
  br i1 %.not12.i, label %tg3__arena_destroy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.013.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.c ] ; 3 uses
  %i.c = load ptr, ptr %.013.i, align 8, !tbaa !186 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !181
  %i.f = add i64 %i.e, 32
  tail call void %.sroa.3.0.copyload.i(ptr noundef nonnull %.013.i, i64 noundef %i.f, ptr noundef %.sroa.5.0.copyload.i) #28, !inline_history !445
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %tg3__arena_destroy.exit, label %.lr.ph.i, !llvm.loop !446

tg3__arena_destroy.exit:                          ; preds = %.lr.ph.i, %bb.c
  tail call void %.sroa.3.0.copyload.i(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef %.sroa.5.0.copyload.i) #28, !inline_history !445
  br label %bb.d

bb.d:                                             ; preds = %tg3__arena_destroy.exit, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %0, i8 0, i64 472, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.g, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 81) i32 @tg3_write_to_memory(ptr nofree noundef readonly %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  %6 = alloca %struct.tg3json__buffer, align 8    ; 6 uses
  %7 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %8 = alloca %struct.tg3json_value, align 8      ; 6 uses
  %9 = alloca %struct.tg3json_value, align 8      ; 99 uses
  %10 = alloca %struct.tg3json_value, align 8     ; 63 uses
  %11 = alloca %struct.tg3json_value, align 8     ; 9 uses
  %12 = alloca %struct.tg3json_value, align 8     ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.0 = alloca i32, align 8                  ; 4 uses
  %.sroa.4 = alloca i32, align 4                  ; 4 uses
  %13 = alloca %struct.tg3json_value, align 8     ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.b = icmp ne ptr %2, null                     ; 2 uses
  %.074.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.074.sroa.gep81 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.074.sroa.gep87 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not169 = icmp eq ptr %3, null
  br i1 %.not169, label %tg3__error_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %3, align 8, !tbaa !19
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.e, label %tg3__error_push.exit

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.f, label %._crit_edge175

._crit_edge175:                                   ; preds = %bb.e
  %.pre = load i32, ptr %.074.sroa.gep, align 8, !tbaa !447
  %.pre177 = load i32, ptr %.074.sroa.gep81, align 4, !tbaa !448
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %.sroa.4, align 4
  store i32 1, ptr %.sroa.0, align 8, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge175, %bb.f
  %i.d = phi i32 [ %.pre177, %._crit_edge175 ], [ 0, %bb.f ]
  %i.e = phi i32 [ %.pre, %._crit_edge175 ], [ 0, %bb.f ] ; 7 uses
  %.074.sroa.phi83 = phi ptr [ %4, %._crit_edge175 ], [ %.sroa.0, %bb.f ]
  %.074.sroa.phi86 = phi ptr [ %.074.sroa.gep87, %._crit_edge175 ], [ %.sroa.4, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 6, ptr %13, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = call fastcc i32 @tg3__serialize_asset(ptr noundef readonly %i.f, ptr noundef %8)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.en, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.14, i64 noundef 5, ptr noundef nonnull %8)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %tg3__json_set_take.exit.thread.i, label %tg3__json_set_take.exit.i

tg3__json_set_take.exit.thread.i:                 ; preds = %bb.h
  call void @tg3json_value_free(ptr noundef nonnull %8)
  br label %bb.en

tg3__json_set_take.exit.i:                        ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118  ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %tg3__json_set_take.exit.i
  %i.l = zext nneg i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 2, ptr %7, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !26
  %i.n = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %13, ptr noundef nonnull readonly @.str.49, i64 noundef 5, ptr noundef nonnull %7)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %tg3__json_set_int.exit.thread.i, label %tg3__json_set_int.exit.i

tg3__json_set_int.exit.thread.i:                  ; preds = %bb.i
  call void @tg3json_value_free(ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.en

tg3__json_set_int.exit.i:                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.j

bb.j:                                             ; preds = %tg3__json_set_int.exit.i, %tg3__json_set_take.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !449
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load i32, ptr %i.q, align 8, !tbaa !450
  %i.s = call fastcc i32 @tg3__serialize_string_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.47, ptr noundef %i.p, i32 noundef %i.r)
  %.not148.i = icmp eq i32 %i.s, 0
  br i1 %.not148.i, label %bb.en, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !451
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i32, ptr %i.v, align 8, !tbaa !452
  %i.x = call fastcc i32 @tg3__serialize_string_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.48, ptr noundef %i.u, i32 noundef %i.w)
  %.not149.i = icmp eq i32 %i.x, 0
  br i1 %.not149.i, label %bb.en, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !214
  %.not150.i = icmp eq ptr %i.z, null
  br i1 %.not150.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !215
  %.not151.i = icmp eq i32 %i.ab, 0
  br i1 %.not151.i, label %bb.w, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i32 5, ptr %9, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !214
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = call fastcc i32 @tg3__serialize_buffer(ptr noundef %i.af, i32 noundef %i.d, ptr noundef %10)
  %.not221.i = icmp eq i32 %i.ag, 0
  br i1 %.not221.i, label %.loopexit394.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %9, align 8, !tbaa !28
  %i.ai = icmp eq i32 %i.ah, 5
  br i1 %i.ai, label %bb.p, label %tg3__json_push_take.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !26 ; 4 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.not.i.i.i, label %.tg3json__init_value.exit_crit_edge.i.i.i, label %bb.q

.tg3json__init_value.exit_crit_edge.i.i.i:        ; preds = %bb.p
  %.pre.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !26
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %.not25.i.i.i.i = icmp eq i64 %i.aj, 0
  %spec.select.i.i.i.i = select i1 %.not25.i.i.i.i, i64 8, i64 %i.aj ; 3 uses
  %i.al = icmp ult i64 %spec.select.i.i.i.i, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q, %bb.r
  %.027.i.i.i.i = phi i64 [ %i.an, %bb.r ], [ %spec.select.i.i.i.i, %bb.q ] ; 2 uses
  %i.am = icmp slt i64 %.027.i.i.i.i, 0
  br i1 %i.am, label %._crit_edge.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = shl nuw i64 %.027.i.i.i.i, 1            ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !54

._crit_edge.i.i.i.i:                              ; preds = %bb.r, %.lr.ph.i.i.i.i, %bb.q
  %.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.q ], [ %i.an, %bb.r ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = icmp ugt i64 %.1.i.i.i.i, 768614336404564650
  br i1 %i.ap, label %tg3__json_push_take.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ar = mul nuw i64 %.1.i.i.i.i, 24
  %i.as = call ptr @realloc(ptr noundef %i.aq, i64 noundef %i.ar) #29 ; 3 uses
  %.not26.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not26.i.i.i.i, label %tg3__json_push_take.exit.thread.i, label %bb.t
end_hunk_4
begin_hunk_5_@tg3_write_to_memory:bb.a
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !141 ; 3 uses
  %.not27.i140 = icmp ult i32 %i.sj, %i.sl
  %.pre.i141 = load ptr, ptr %1, align 8, !tbaa !87 ; 2 uses
  br i1 %.not27.i140, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not28.i142 = icmp eq i32 %i.sl, 0
  %i.sm = shl i32 %i.sl, 1
  %spec.select.i143 = select i1 %.not28.i142, i32 16, i32 %i.sm ; 2 uses
  %i.sn = zext i32 %spec.select.i143 to i64
  %i.so = shl nuw nsw i64 %i.sn, 5
  %i.sp = call ptr @realloc(ptr noundef %.pre.i141, i64 noundef %i.so) #29 ; 3 uses
  %.not29.i144 = icmp eq ptr %i.sp, null
  br i1 %.not29.i144, label %tg3__error_push.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  store ptr %i.sp, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i143, ptr %i.sk, align 4, !tbaa !141
  %.pre30.i145 = load i32, ptr %i.si, align 8, !tbaa !86
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy
  %i.sq = phi i32 [ %.pre30.i145, %bb.ga ], [ %i.sj, %bb.fy ] ; 2 uses
  %i.sr = phi ptr [ %i.sp, %bb.ga ], [ %.pre.i141, %bb.fy ]
  %i.ss = add i32 %i.sq, 1
  store i32 %i.ss, ptr %i.si, align 8, !tbaa !86
  %i.st = zext i32 %i.sq to i64
  %i.su = getelementptr inbounds nuw [32 x i8], ptr %i.sr, i64 %i.st ; 5 uses
  store i32 2, ptr %i.su, align 8, !tbaa !142
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store i32 50, ptr %i.sv, align 4, !tbaa !144
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store ptr @.str.11, ptr %i.sw, align 8, !tbaa !145
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  store ptr null, ptr %i.sx, align 8, !tbaa !146
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  store i64 -1, ptr %i.sy, align 8, !tbaa !147
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.sz, align 8, !tbaa !83
  br label %tg3__error_push.exit

bb.gc:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sh, ptr nonnull readonly align 1 %i.np, i64 %.0164, i1 false)
  call void @free(ptr noundef nonnull %i.np) #28
  store ptr %i.sh, ptr %2, align 8, !tbaa !10
  store i64 %.0164, ptr %3, align 8, !tbaa !19
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.c, %bb.gb, %bb.fz, %bb.fx, %.loopexit, %bb.fp, %bb.fr, %bb.ft, %bb.fi, %bb.fg, %bb.fe, %bb.er, %bb.ep, %bb.en, %bb.gc, %bb.d
  %.2 = phi i32 [ 50, %bb.fi ], [ 80, %bb.d ], [ 50, %bb.er ], [ 50, %bb.gb ], [ 0, %bb.gc ], [ 50, %bb.ft ], [ 50, %bb.en ], [ 50, %bb.ep ], [ 50, %bb.fe ], [ 50, %bb.fg ], [ 0, %.loopexit ], [ 50, %bb.fp ], [ 50, %bb.fr ], [ 50, %bb.fx ], [ 50, %bb.fz ], [ 80, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 81) i32 @tg3_write_to_file(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #12 {
bb.a:
  %5 = alloca %struct.tg3_write_options, align 8  ; 13 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !19
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(160) %4, i64 160, i1 false), !tbaa.struct !474
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = load <2 x ptr>, ptr %.phi.trans.insert30, align 8, !tbaa !55
  %i.d = load <2 x ptr>, ptr %.phi.trans.insert28, align 8, !tbaa !55
  br label %tg3__set_default_fs.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %i.e, i8 0, i64 156, i1 false)
  store i32 1, ptr %5, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 1073741824, ptr %i.f, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i32 262144, ptr %i.g, align 8, !tbaa !104
  br label %tg3__set_default_fs.exit

tg3__set_default_fs.exit:                         ; preds = %bb.c, %bb.b
  %i.h = phi <2 x ptr> [ splat (ptr null), %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = phi <2 x ptr> [ splat (ptr null), %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = icmp eq <2 x ptr> %i.h, splat (ptr null)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.m = icmp eq <2 x ptr> %i.i, splat (ptr null)
  %i.n = select <2 x i1> %i.k, <2 x ptr> <ptr @tg3__fs_file_exists, ptr @tg3__fs_read_file>, <2 x ptr> %i.h
  store <2 x ptr> %i.n, ptr %i.j, align 8
  %i.o = select <2 x i1> %i.m, <2 x ptr> <ptr @tg3__fs_free_file, ptr @tg3__fs_write_file>, <2 x ptr> %i.i ; 2 uses
  store <2 x ptr> %i.o, ptr %i.l, align 8
  %i.p = call i32 @tg3_write_to_memory(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %5) ; 2 uses
  %.not14 = icmp eq i32 %i.p, 0
  br i1 %.not14, label %bb.d, label %tg3__error_push.exit

bb.d:                                             ; preds = %tg3__set_default_fs.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !475
  %i.u = extractelement <2 x ptr> %i.o, i64 1
  %i.v = call i32 %i.u(ptr noundef %2, i32 noundef %3, ptr noundef %i.q, i64 noundef %i.r, ptr noundef %i.t) #28
  call void @free(ptr noundef %i.q) #28
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.e, label %tg3__error_push.exit

bb.e:                                             ; preds = %bb.d
  %.not.i17 = icmp eq ptr %1, null
  br i1 %.not.i17, label %tg3__error_push.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !86   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !141  ; 3 uses
  %.not27.i18 = icmp ult i32 %i.x, %i.z
  %.pre.i19 = load ptr, ptr %1, align 8, !tbaa !87 ; 2 uses
  br i1 %.not27.i18, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not28.i20 = icmp eq i32 %i.z, 0
  %i.aa = shl i32 %i.z, 1
  %spec.select.i21 = select i1 %.not28.i20, i32 16, i32 %i.aa ; 2 uses
  %i.ab = zext i32 %spec.select.i21 to i64
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = call ptr @realloc(ptr noundef %.pre.i19, i64 noundef %i.ac) #29 ; 3 uses
  %.not29.i22 = icmp eq ptr %i.ad, null
  br i1 %.not29.i22, label %tg3__error_push.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ad, ptr %1, align 8, !tbaa !87
  store i32 %spec.select.i21, ptr %i.y, align 4, !tbaa !141
  %.pre30.i23 = load i32, ptr %i.w, align 8, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ae = phi i32 [ %.pre30.i23, %bb.h ], [ %i.x, %bb.f ] ; 2 uses
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %.pre.i19, %bb.f ]
  %i.ag = add i32 %i.ae, 1
  store i32 %i.ag, ptr %i.w, align 8, !tbaa !86
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ah ; 5 uses
  store i32 2, ptr %i.ai, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 3, ptr %i.aj, align 4, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @.str.13, ptr %i.ak, align 8, !tbaa !145
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !146
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 -1, ptr %i.am, align 8, !tbaa !147
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.an, align 8, !tbaa !83
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.i, %bb.g, %bb.e, %bb.d, %tg3__set_default_fs.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %tg3__set_default_fs.exit ], [ 3, %bb.e ], [ 3, %bb.i ], [ 3, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @tg3_write_free(ptr noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #13 {
bb.a:
  tail call void @free(ptr noundef %0) #28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @tg3_writer_create(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %calloc = tail call dereferenceable_or_null(208) ptr @calloc(i64 1, i64 208) ; 9 uses
  %.not = icmp eq ptr %calloc, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %calloc, align 8, !tbaa !476
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !478
  %.not15 = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %calloc, i64 16 ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %2, i64 160, i1 false), !tbaa.struct !474
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %calloc, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(156) %i.c, i8 0, i64 156, i1 false)
  store i32 1, ptr %i.b, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 120
  store i64 1073741824, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 136
  store i32 262144, ptr %i.e, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i32 6, ptr %i.f, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret ptr %calloc
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 81) i32 @tg3_writer_begin(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @tg3__serialize_asset(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %i.d, ptr noundef nonnull readonly @.str.14, i64 noundef 5, ptr noundef nonnull %2)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3__json_set_take.exit

tg3__json_set_take.exit.thread:                   ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %tg3__json_set_take.exit.thread, %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %2)
  br label %bb.e

tg3__json_set_take.exit:                          ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 1, ptr %i.f, align 8, !tbaa !479
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %tg3__json_set_take.exit, %bb.d
  %.0 = phi i32 [ 0, %tg3__json_set_take.exit ], [ 50, %bb.d ], [ 80, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_asset(ptr nofree noundef nonnull readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store i32 6, ptr %1, align 8, !tbaa !28
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, null
  %i.e = icmp eq i32 %i.c, 0
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond.i, label %tg3__serialize_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i64 4, ptr %5, align 8
  %i.g = add nuw nsw i64 %i.f, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #30 ; 4 uses
  %.not.i13.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i13.i.i.i, label %tg3__serialize_str.exit.thread42, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.a, i64 %i.f, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.f, ptr %i.k, align 8, !tbaa !26
  %i.l = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull readonly @.str.56, i64 noundef 7, ptr noundef nonnull %5)
  %.not.i4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i4.i.i, label %tg3json_object_set_take.exit.thread.i.i.i, label %tg3__serialize_str.exit

tg3json_object_set_take.exit.thread.i.i.i:        ; preds = %bb.c
  call void @tg3json_value_free(ptr noundef nonnull %5)
  br label %tg3__serialize_str.exit.thread42

tg3__serialize_str.exit.thread42:                 ; preds = %tg3json_object_set_take.exit.thread.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.j

tg3__serialize_str.exit:                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %tg3__serialize_str.exit.thread

tg3__serialize_str.exit.thread:                   ; preds = %bb.a, %tg3__serialize_str.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, null
  %i.r = icmp eq i32 %i.p, 0
  %or.cond.i16 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i16, label %tg3__serialize_str.exit23.thread, label %bb.d

bb.d:                                             ; preds = %tg3__serialize_str.exit.thread
  %i.s = zext i32 %i.p to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i64 4, ptr %4, align 8
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = call noalias ptr @malloc(i64 noundef %i.t) #30 ; 4 uses
  %.not.i13.i.i.i17 = icmp eq ptr %i.u, null
  br i1 %.not.i13.i.i.i17, label %tg3__serialize_str.exit23.thread47, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %i.n, i64 %i.s, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.u, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.s, ptr %i.x, align 8, !tbaa !26
  %i.y = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull readonly @.str.58, i64 noundef 9, ptr noundef nonnull %4)
  %.not.i4.i.i18 = icmp eq i32 %i.y, 0
  br i1 %.not.i4.i.i18, label %tg3json_object_set_take.exit.thread.i.i.i22, label %tg3__serialize_str.exit23

tg3json_object_set_take.exit.thread.i.i.i22:      ; preds = %bb.e
  call void @tg3json_value_free(ptr noundef nonnull %4)
  br label %tg3__serialize_str.exit23.thread47

tg3__serialize_str.exit23.thread47:               ; preds = %tg3json_object_set_take.exit.thread.i.i.i22, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.j

tg3__serialize_str.exit23:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %tg3__serialize_str.exit23.thread

tg3__serialize_str.exit23.thread:                 ; preds = %tg3__serialize_str.exit.thread, %tg3__serialize_str.exit23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.aa, null
  %i.ae = icmp eq i32 %i.ac, 0
  %or.cond.i24 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i24, label %tg3__serialize_str.exit31.thread, label %bb.f

bb.f:                                             ; preds = %tg3__serialize_str.exit23.thread
  %i.af = zext i32 %i.ac to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 4, ptr %3, align 8
  %i.ag = add nuw nsw i64 %i.af, 1
  %i.ah = call noalias ptr @malloc(i64 noundef %i.ag) #30 ; 4 uses
  %.not.i13.i.i.i25 = icmp eq ptr %i.ah, null
  br i1 %.not.i13.i.i.i25, label %tg3__serialize_str.exit31.thread52, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.aa, i64 %i.af, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !26
  %i.al = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull readonly @.str.59, i64 noundef 10, ptr noundef nonnull %3)
  %.not.i4.i.i26 = icmp eq i32 %i.al, 0
  br i1 %.not.i4.i.i26, label %tg3json_object_set_take.exit.thread.i.i.i30, label %tg3__serialize_str.exit31

tg3json_object_set_take.exit.thread.i.i.i30:      ; preds = %bb.g
  call void @tg3json_value_free(ptr noundef nonnull %3)
  br label %tg3__serialize_str.exit31.thread52

tg3__serialize_str.exit31.thread52:               ; preds = %tg3json_object_set_take.exit.thread.i.i.i30, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.j

tg3__serialize_str.exit31:                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %tg3__serialize_str.exit31.thread

tg3__serialize_str.exit31.thread:                 ; preds = %tg3__serialize_str.exit23.thread, %tg3__serialize_str.exit31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq ptr %i.an, null
  %i.ar = icmp eq i32 %i.ap, 0
end_hunk_5
