Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkMulti?download=true
inline.NumInlined: 31
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Lpk_MapTreeMulti:.preheader165
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ay = shl i32 8, %i.u
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.az
  store ptr %i.ba, ptr %i.ax, align 16, !tbaa !86
  %i.bb = shl i32 9, %i.u
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !86
  %i.bf = shl i32 10, %i.u
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.bh, ptr %i.bi, align 16, !tbaa !86
  %i.bj = shl i32 11, %i.u
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !86
  %i.bn = shl i32 12, %i.u
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.bp, ptr %i.bq, align 16, !tbaa !86
  %i.br = shl i32 13, %i.u
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !86
  %i.bv = shl i32 14, %i.u
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.bx, ptr %i.by, align 16, !tbaa !86
  %i.bz = shl i32 15, %i.u
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !86
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.ce = shl i32 16, %i.u
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cf
  store ptr %i.cg, ptr %i.cd, align 16, !tbaa !86
  %i.ch = shl i32 17, %i.u
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !86
  %i.cl = shl i32 18, %i.u
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr %i.cn, ptr %i.co, align 16, !tbaa !86
  %i.cp = shl i32 19, %i.u
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !86
  %i.ct = shl i32 20, %i.u
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store ptr %i.cv, ptr %i.cw, align 16, !tbaa !86
  %i.cx = shl i32 21, %i.u
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !86
  %i.db = shl i32 22, %i.u
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store ptr %i.dd, ptr %i.de, align 16, !tbaa !86
  %i.df = shl i32 23, %i.u
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !86
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.dk = shl i32 24, %i.u
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dl
  store ptr %i.dm, ptr %i.dj, align 16, !tbaa !86
  %i.dn = shl i32 25, %i.u
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !86
  %i.dr = shl i32 26, %i.u
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store ptr %i.dt, ptr %i.du, align 16, !tbaa !86
  %i.dv = shl i32 27, %i.u
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !86
  %i.dz = shl i32 28, %i.u
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store ptr %i.eb, ptr %i.ec, align 16, !tbaa !86
  %i.ed = shl i32 29, %i.u
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !86
  %i.eh = shl i32 30, %i.u
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  store ptr %i.ej, ptr %i.ek, align 16, !tbaa !86
  %i.el = shl i32 31, %i.u
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !86
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !87
  %i.er = call i32 @Kit_DsdCofactoring(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %i.eq, i32 noundef 0) #12 ; 12 uses
  %i.es = icmp sgt i32 %i.p, 0
  br i1 %i.es, label %select.unfold.preheader.i, label %Kit_TruthCopy.exit

select.unfold.preheader.i:                        ; preds = %.preheader165
  %i.et = zext nneg i32 %i.p to i64               ; 3 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %select.unfold.i, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.et, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = xor i64 %index, -1
  %i.ev = add i64 %i.eu, %i.et                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -12
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ex, align 4, !tbaa !20
  %wide.load319 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !20
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ev ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -12
  %i.fb = getelementptr inbounds i8, ptr %i.ez, i64 -28
  store <4 x i32> %wide.load, ptr %i.fa, align 4, !tbaa !20
  store <4 x i32> %wide.load319, ptr %i.fb, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %Kit_TruthCopy.exit, label %vector.body, !llvm.loop !88

select.unfold.i:                                  ; preds = %select.unfold.preheader.i, %select.unfold.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %select.unfold.i ], [ %i.et, %select.unfold.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !20
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !20
  %i.fg = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.fg, label %select.unfold.i, label %Kit_TruthCopy.exit, !llvm.loop !89

Kit_TruthCopy.exit:                               ; preds = %vector.body, %select.unfold.i, %.preheader165
  %i.fh = icmp sgt i32 %i.er, 0                   ; 2 uses
  br i1 %i.fh, label %.lr.ph172.preheader, label %.lr.ph176

.lr.ph172.preheader:                              ; preds = %Kit_TruthCopy.exit
  %wide.trip.count223 = zext nneg i32 %i.er to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %._crit_edge
  %indvars.iv220 = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next221, %._crit_edge ] ; 5 uses
  %.not207 = icmp eq i64 %indvars.iv220, 31
  br i1 %.not207, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph172
  %i.fi = trunc nuw nsw i64 %indvars.iv220 to i32
  %i.fj = shl nuw nsw i32 1, %i.fi
  %i.fk = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv220 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv220 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fj to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !86
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !86 ; 2 uses
  %i.fr = load i32, ptr %i.fm, align 4, !tbaa !20
  call void @Kit_TruthCofactor0New(ptr noundef %i.fo, ptr noundef %i.fq, i32 noundef %2, i32 noundef %i.fr) #12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !86
  %i.fu = load i32, ptr %i.fm, align 4, !tbaa !20
  call void @Kit_TruthCofactor1New(ptr noundef %i.ft, ptr noundef %i.fq, i32 noundef %2, i32 noundef %i.fu) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next, %wide.trip.count
  br i1 %4, label %bb.a, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %bb.a, %.lr.ph172
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge173, label %.lr.ph172, !llvm.loop !91

._crit_edge173:                                   ; preds = %._crit_edge
  %.not208 = icmp eq i32 %i.er, 31
  br i1 %.not208, label %._crit_edge185, label %.lr.ph176

.lr.ph176:                                        ; preds = %Kit_TruthCopy.exit, %._crit_edge173
  %i.fv = shl nuw i32 1, %i.er                    ; 4 uses
  %i.fw = sext i32 %i.er to i64
  %i.fx = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.fw
  %.not156 = icmp eq i32 %i.j, 0
  %smax228 = call i32 @llvm.smax.i32(i32 %i.fv, i32 1)
  %wide.trip.count229 = zext nneg i32 %smax228 to i64
  br label %bb.g

.lr.ph182:                                        ; preds = %bb.i
  %i.fy = sext i32 %i.er to i64
  %i.fz = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.fy ; 2 uses
  %i.ga = icmp sgt i32 %2, 0
  %smax245 = call i32 @llvm.smax.i32(i32 %i.fv, i32 1)
  %wide.trip.count246 = zext nneg i32 %smax245 to i64 ; 2 uses
  br i1 %i.ga, label %.lr.ph179.us.preheader, label %.lr.ph182.split

.lr.ph179.us.preheader:                           ; preds = %.lr.ph182
  %wide.trip.count240 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count240, 1
  %i.gb = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count240, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod337 = trunc i32 %2 to i1
  br label %.lr.ph179.us

.lr.ph179.us:                                     ; preds = %.lr.ph179.us.preheader, %._crit_edge180.us
  %indvars.iv242 = phi i64 [ 0, %.lr.ph179.us.preheader ], [ %indvars.iv.next243, %._crit_edge180.us ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv242
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !86
  %i.ge = call i32 @Kit_TruthSupport(ptr noundef %i.gd, i32 noundef %2) #12 ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph179.us.new

.lr.ph179.us.new:                                 ; preds = %.lr.ph179.us, %bb.e
  %indvars.iv237 = phi i64 [ %indvars.iv.next238.1, %bb.e ], [ 0, %.lr.ph179.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph179.us ]
  %i.gf = trunc nuw nsw i64 %indvars.iv237 to i32
  %i.gg = shl nuw i32 1, %i.gf
  %i.gh = and i32 %i.gg, %i.ge
  %.not155.us = icmp eq i32 %i.gh, 0
  br i1 %.not155.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph179.us.new
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv237 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !20
  %i.gk = add nsw i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph179.us.new
  %indvars.iv.next238 = or disjoint i64 %indvars.iv237, 1 ; 2 uses
  %i.gl = trunc nuw nsw i64 %indvars.iv.next238 to i32
  %i.gm = shl nuw i32 1, %i.gl
  %i.gn = and i32 %i.gm, %i.ge
  %.not155.us.1 = icmp eq i32 %i.gn, 0
  br i1 %.not155.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next238 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !20
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next238.1 = add nuw nsw i64 %indvars.iv237, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge180.us.unr-lcssa, label %.lr.ph179.us.new, !llvm.loop !92

._crit_edge180.us.unr-lcssa:                      ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge180.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge180.us.unr-lcssa, %.lr.ph179.us
  %indvars.iv237.epil.init = phi i64 [ 0, %.lr.ph179.us ], [ %indvars.iv.next238.1, %._crit_edge180.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.gr = trunc nuw nsw i64 %indvars.iv237.epil.init to i32
  %i.gs = shl nuw i32 1, %i.gr
  %i.gt = and i32 %i.gs, %i.ge
  %.not155.us.epil = icmp eq i32 %i.gt, 0
  br i1 %.not155.us.epil, label %._crit_edge180.us, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv237.epil.init ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !20
  %i.gw = add nsw i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !20
  br label %._crit_edge180.us

._crit_edge180.us:                                ; preds = %.epil.preheader, %bb.f, %._crit_edge180.us.unr-lcssa
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count246
  br i1 %exitcond247.not, label %.lr.ph184.preheader, label %.lr.ph179.us, !llvm.loop !93

bb.g:                                             ; preds = %.lr.ph176, %bb.i
  %indvars.iv225 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next226, %bb.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv225
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !86
  %i.gz = call ptr @Kit_DsdDecompose(ptr noundef %i.gy, i32 noundef %2) #12 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv225
  %i.hb = call ptr @Kit_DsdExpand(ptr noundef %i.gz) #12 ; 2 uses
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !46
  call void @Kit_DsdNtkFree(ptr noundef %i.gz) #12
  br i1 %.not156, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hc = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.er, i32 noundef %i.hc) ; 0 uses
  %i.he = load ptr, ptr @stdout, align 8, !tbaa !94
  call void @Kit_DsdPrint(ptr noundef %i.he, ptr noundef %i.hb) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count229
  br i1 %exitcond230.not, label %.lr.ph182, label %bb.g, !llvm.loop !96

.lr.ph184.preheader:                              ; preds = %.lr.ph182.split, %._crit_edge180.us
  %smax251 = call i32 @llvm.smax.i32(i32 %i.fv, i32 1)
  %wide.trip.count252 = zext nneg i32 %smax251 to i64
  br label %.lr.ph184

.lr.ph182.split:                                  ; preds = %.lr.ph182, %.lr.ph182.split
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %.lr.ph182.split ], [ 0, %.lr.ph182 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv231
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !86
  %i.hh = call i32 @Kit_TruthSupport(ptr noundef %i.hg, i32 noundef %2) #12 ; 0 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count246
  br i1 %exitcond236.not, label %.lr.ph184.preheader, label %.lr.ph182.split, !llvm.loop !93

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %indvars.iv248 = phi i64 [ 0, %.lr.ph184.preheader ], [ %indvars.iv.next249, %.lr.ph184 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv248
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !46 ; 2 uses
  %i.hk = call i32 @Kit_DsdGetSupports(ptr noundef %i.hj) #12 ; 0 uses
  call void @Lpk_CreateVarOrder(ptr noundef %i.hj, ptr noundef nonnull %i.g)
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge185.loopexit, label %.lr.ph184, !llvm.loop !97

._crit_edge185.loopexit:                          ; preds = %.lr.ph184
  %i.hl = call i32 @llvm.smax.i32(i32 %i.fv, i32 1)
  %i.hm = zext nneg i32 %i.hl to i64
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %._crit_edge185.loopexit, %._crit_edge173
  %.not208307309311 = phi i1 [ true, %._crit_edge173 ], [ false, %._crit_edge185.loopexit ] ; 2 uses
  %smax275 = phi i64 [ 1, %._crit_edge173 ], [ %i.hm, %._crit_edge185.loopexit ] ; 3 uses
  call void @Lpk_CreateCommonOrder(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef %i.er, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef %i.j)
  %i.hn = icmp sgt i32 %2, 0
  br i1 %i.hn, label %.lr.ph188.preheader, label %._crit_edge189

.lr.ph188.preheader:                              ; preds = %._crit_edge185
  %wide.trip.count258 = zext nneg i32 %2 to i64   ; 3 uses
  %min.iters.check321 = icmp ult i32 %2, 8
  br i1 %min.iters.check321, label %.lr.ph188.preheader334, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph188.preheader
  %n.vec323 = and i64 %wide.trip.count258, 2147483640 ; 3 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph322 ], [ %vec.ind.next, %vector.body324 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index325 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load326 = load <4 x i32>, ptr %i.ho, align 16, !tbaa !20
  %wide.load327 = load <4 x i32>, ptr %i.hp, align 16, !tbaa !20
  %i.hq = shl nsw <4 x i32> %wide.load326, splat (i32 8)
  %i.hr = shl nsw <4 x i32> %wide.load327, splat (i32 8)
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index325 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load328 = load <4 x i32>, ptr %i.hs, align 16, !tbaa !20
  %wide.load329 = load <4 x i32>, ptr %i.ht, align 16, !tbaa !20
  %i.hu = add <4 x i32> %vec.ind, splat (i32 256)
  %i.hv = add <4 x i32> %vec.ind, splat (i32 260)
  %i.hw = add <4 x i32> %i.hu, %i.hq
  %i.hx = add <4 x i32> %i.hv, %i.hr
  %i.hy = shl <4 x i32> %wide.load328, splat (i32 4)
  %i.hz = shl <4 x i32> %wide.load329, splat (i32 4)
  %i.ia = sub <4 x i32> %i.hw, %i.hy
  %i.ib = sub <4 x i32> %i.hx, %i.hz
  store <4 x i32> %i.ia, ptr %i.ho, align 16, !tbaa !20
  store <4 x i32> %i.ib, ptr %i.hp, align 16, !tbaa !20
  %index.next330 = add nuw i64 %index325, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ic = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.ic, label %middle.block331, label %vector.body324, !llvm.loop !98

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %n.vec323, %wide.trip.count258
  br i1 %cmp.n332, label %._crit_edge189, label %.lr.ph188.preheader334

.lr.ph188.preheader334:                           ; preds = %.lr.ph188.preheader, %middle.block331
  %indvars.iv254.ph = phi i64 [ 0, %.lr.ph188.preheader ], [ %n.vec323, %middle.block331 ]
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.lr.ph188.preheader334, %.lr.ph188
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph188 ], [ %indvars.iv254.ph, %.lr.ph188.preheader334 ] ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv254 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !20
  %i.if = shl nsw i32 %i.ie, 8
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv254
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !20
  %i.ii = trunc i64 %indvars.iv254 to i32
  %i.ij = add i32 %i.ii, 256
  %i.ik = add i32 %i.ij, %i.if
  %i.il = shl i32 %i.ih, 4
  %i.im = sub i32 %i.ik, %i.il
  store i32 %i.im, ptr %i.id, align 4, !tbaa !20
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count258
  br i1 %exitcond259.not, label %._crit_edge189, label %.lr.ph188, !llvm.loop !99

._crit_edge189:                                   ; preds = %.lr.ph188, %middle.block331, %._crit_edge185
  %.not = icmp eq i32 %i.j, 0                     ; 3 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge189
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge189
  br i1 %.not208307309311, label %._crit_edge194, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.k, %bb.m
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %bb.m ], [ 0, %bb.k ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv260 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !46 ; 2 uses
  %i.ip = call ptr @Kit_DsdShrink(ptr noundef %i.io, ptr noundef nonnull %i.c) #12 ; 4 uses
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !46
  call void @Kit_DsdNtkFree(ptr noundef %i.io) #12
  %i.iq = call i32 @Kit_DsdGetSupports(ptr noundef %i.ip) #12 ; 0 uses
  call void @Kit_DsdRotate(ptr noundef %i.ip, ptr noundef nonnull %i.d) #12
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph192
  %i.ir = trunc nuw nsw i64 %indvars.iv260 to i32
  %i.is = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.er, i32 noundef %i.ir) ; 0 uses
  %i.it = load ptr, ptr @stdout, align 8, !tbaa !94
  call void @Kit_DsdPrint(ptr noundef %i.it, ptr noundef %i.ip) #12
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph192, %bb.l
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next261, %smax275
  br i1 %exitcond265.not, label %Kit_DsdNtkRoot.exit, label %.lr.ph192, !llvm.loop !100

Kit_DsdNtkRoot.exit:                              ; preds = %bb.m, %bb.q
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %bb.q ], [ 0, %bb.m ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv266
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !46 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 6
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !101 ; 4 uses
  %i.iy = lshr i16 %i.ix, 1                       ; 2 uses
  %i.iz = load i16, ptr %i.iv, align 8, !tbaa !18 ; 2 uses
  %i.ja = icmp uge i16 %i.iy, %i.iz
  call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !15
  %narrow.i = sub nuw nsw i16 %i.iy, %i.iz
  %i.jd = zext nneg i16 %narrow.i to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !16 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = lshr i32 %i.jg, 6
  %i.ji = and i32 %i.jh, 7
  switch i32 %i.ji, label %bb.p [
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.jj = and i16 %i.ix, 1
  %.not154 = icmp eq i16 %i.jj, 0
  %i.jk = select i1 %.not154, i32 -1, i32 -2
  br label %bb.q

bb.o:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jm = load i16, ptr %i.jl, align 4, !tbaa !19
  %i.jn = and i16 %i.ix, 1
  %i.jo = xor i16 %i.jm, %i.jn
  %i.jp = zext i16 %i.jo to i32
  br label %bb.q

bb.p:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.jq = zext i16 %i.ix to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %.sink = phi i32 [ %i.jk, %bb.n ], [ %i.jq, %bb.p ], [ %i.jp, %bb.o ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv266
  store i32 %.sink, ptr %i.jr, align 4, !tbaa !20
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next267, %smax275
  br i1 %exitcond271.not, label %._crit_edge194, label %Kit_DsdNtkRoot.exit, !llvm.loop !102

._crit_edge194:                                   ; preds = %bb.q, %bb.k
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8240072 ; 2 uses
  store i32 1, ptr %i.js, align 8, !tbaa !103
  %i.jt = call ptr @Lpk_MapTreeMulti_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i32 noundef %i.er, ptr noundef %3, i32 noundef %2, ptr noundef nonnull %i.c)
  store i32 0, ptr %i.js, align 8, !tbaa !103
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge194
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge194
  br i1 %.not208307309311, label %.preheader, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.s
  %i.ju = sext i32 %i.er to i64
  %i.jv = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.ju
  br label %bb.t

.preheader:                                       ; preds = %bb.t, %bb.s
  br i1 %i.fh, label %.lr.ph204.preheader, label %._crit_edge205

.lr.ph204.preheader:                              ; preds = %.preheader
  %i.jw = zext nneg i32 %i.er to i64
  br label %.lr.ph204

bb.t:                                             ; preds = %.lr.ph197, %bb.t
  %indvars.iv272 = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next273, %bb.t ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv272
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !46
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv272
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !86
  call void @Kit_DsdTruth(ptr noundef %i.jy, ptr noundef %i.ka) #12
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next273, %smax275
  br i1 %exitcond277.not, label %.preheader, label %bb.t, !llvm.loop !104

.loopexit:                                        ; preds = %bb.u, %.lr.ph204
  %i.kb = icmp samesign ugt i64 %indvars.iv284, 1
  br i1 %i.kb, label %.lr.ph204, label %._crit_edge205, !llvm.loop !105

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.loopexit
  %indvars.iv284 = phi i64 [ %i.jw, %.lr.ph204.preheader ], [ %indvars.iv.next285, %.loopexit ] ; 3 uses
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, -1 ; 5 uses
  %.not215 = icmp eq i64 %indvars.iv.next285, 31
  br i1 %.not215, label %.loopexit, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph204
  %i.kc = trunc nuw nsw i64 %indvars.iv.next285 to i32
  %i.kd = shl nuw i32 1, %i.kc
  %i.ke = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv.next285
  %i.kf = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv284
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next285
  %5 = sext i32 %i.kd to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph200, %bb.u
  %indvars.iv278 = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next279, %bb.u ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv278
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !86
  %.idx304 = shl nuw nsw i64 %indvars.iv278, 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx304 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !86
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !86
  %i.kn = load i32, ptr %i.kg, align 4, !tbaa !20
  call void @Kit_TruthMuxVar(ptr noundef %i.ki, ptr noundef %i.kk, ptr noundef %i.km, i32 noundef %2, i32 noundef %i.kn) #12
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next279, %5
  br i1 %6, label %bb.u, label %.loopexit, !llvm.loop !106

._crit_edge205:                                   ; preds = %.loopexit, %.preheader
  %i.ko = icmp sgt i32 %i.p, 0
  br i1 %i.ko, label %.lr.ph318, label %Extra_TruthIsEqual.exit

.lr.ph318:                                        ; preds = %._crit_edge205
  %i.kp = zext nneg i32 %i.p to i64
  br label %bb.v

select.unfold.i158:                               ; preds = %bb.v
  %i.kq = trunc nuw i64 %i.ks to i32
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %bb.v, label %Extra_TruthIsEqual.exit, !llvm.loop !107

bb.v:                                             ; preds = %.lr.ph318, %select.unfold.i158
  %indvars.iv.i159317 = phi i64 [ %i.kp, %.lr.ph318 ], [ %i.ks, %select.unfold.i158 ]
  %i.ks = add nsw i64 %indvars.iv.i159317, -1     ; 4 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !20
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ks
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !20
  %.not.i = icmp eq i32 %i.ku, %i.kw
  br i1 %.not.i, label %select.unfold.i158, label %bb.w, !llvm.loop !107

bb.w:                                             ; preds = %bb.v
  %puts151 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %Extra_TruthIsEqual.exit

Extra_TruthIsEqual.exit:                          ; preds = %select.unfold.i158, %._crit_edge205, %bb.w
  %i.kx = load ptr, ptr %i.a, align 16, !tbaa !46 ; 2 uses
  %.not153 = icmp eq ptr %i.kx, null
  br i1 %.not153, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Extra_TruthIsEqual.exit
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.kx) #12
  br label %bb.y

bb.y:                                             ; preds = %Extra_TruthIsEqual.exit, %bb.x
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !46 ; 2 uses
  %.not153.1 = icmp eq ptr %i.kz, null
  br i1 %.not153.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.kz) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lb = load ptr, ptr %i.la, align 16, !tbaa !46 ; 2 uses
  %.not153.2 = icmp eq ptr %i.lb, null
  br i1 %.not153.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lb) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !46 ; 2 uses
  %.not153.3 = icmp eq ptr %i.ld, null
  br i1 %.not153.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.ld) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.lf = load ptr, ptr %i.le, align 16, !tbaa !46 ; 2 uses
  %.not153.4 = icmp eq ptr %i.lf, null
  br i1 %.not153.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lf) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !46 ; 2 uses
  %.not153.5 = icmp eq ptr %i.lh, null
  br i1 %.not153.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lh) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.lj = load ptr, ptr %i.li, align 16, !tbaa !46 ; 2 uses
  %.not153.6 = icmp eq ptr %i.lj, null
  br i1 %.not153.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.lj) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !46 ; 2 uses
  %.not153.7 = icmp eq ptr %i.ll, null
  br i1 %.not153.7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @Kit_DsdNtkFree(ptr noundef nonnull %i.ll) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not152 = icmp eq ptr %i.t, null
  br i1 %.not152, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.t) #12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.jt
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare i32 @Kit_DsdCofactoring(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @Kit_TruthCofactor0New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @Kit_TruthCofactor1New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @Kit_DsdDecompose(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @Kit_DsdExpand(ptr noundef) local_unnamed_addr #6

declare void @Kit_DsdNtkFree(ptr noundef) local_unnamed_addr #6

declare void @Kit_DsdPrint(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @Kit_TruthSupport(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @Kit_DsdGetSupports(ptr noundef) local_unnamed_addr #6

declare ptr @Kit_DsdShrink(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @Kit_DsdRotate(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @Kit_DsdTruth(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @Kit_TruthMuxVar(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
end_hunk_0
