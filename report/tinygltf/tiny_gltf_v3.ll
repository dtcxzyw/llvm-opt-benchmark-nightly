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
  %.186127.i = phi i32 [ %6, %.preheader.i141 ], [ 16, %.preheader107.i ] ; 3 uses
  %5 = zext nneg i32 %.186127.i to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 %5 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !26  ; 2 uses
  %i.gz = icmp eq i8 %i.gy, 57                    ; 3 uses
  %i.ha = add i8 %i.gy, 1
  %storemerge.i = select i1 %i.gz, i8 48, i8 %i.ha
  store i8 %storemerge.i, ptr %i.gx, align 1, !tbaa !26
  %6 = add nsw i32 %.186127.i, -1
  %i.hb = icmp ne i32 %.186127.i, 0
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
