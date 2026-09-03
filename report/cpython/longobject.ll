Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 52
begin_hunk_0_@long_true_divide:bb.a

.preheader:                                       ; preds = %bb.o
  %.not247 = icmp ult i64 %i.cs, 30
  br i1 %.not247, label %.lr.ph.i.preheader, label %.lr.ph238

.lr.ph238:                                        ; preds = %.preheader
  %i.cz = getelementptr i8, ptr %i.cx, i64 24
  %i.da = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cz, i8 0, i64 %i.da, i1 false), !tbaa !26
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader, %.lr.ph238
  %i.db = getelementptr i8, ptr %i.cx, i64 24     ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.ct ; 3 uses
  %i.dd = icmp eq i64 %i.i, 1
  br i1 %i.dd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter284 = and i64 %i.i, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dx, %.lr.ph.i ] ; 4 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dw, %.lr.ph.i ]
  %niter285 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter285.next.1, %.lr.ph.i ]
  %i.de = getelementptr [4 x i8], ptr %i.bx, i64 %.013.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !26
  %i.dg = zext i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, %i.cu
  %i.di = or i64 %i.dh, %.01112.i                 ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 1073741823
  %i.dl = getelementptr [4 x i8], ptr %i.dc, i64 %.013.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !26
  %i.dm = lshr i64 %i.di, 30
  %i.dn = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.bx, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !26
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, %i.cu
  %i.ds = or i64 %i.dr, %i.dm                     ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 1073741823
  %i.dv = getelementptr [4 x i8], ptr %i.dc, i64 %i.dn
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !26
  %i.dw = lshr i64 %i.ds, 30                      ; 3 uses
  %i.dx = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter285.next.1 = add i64 %niter285, 2         ; 2 uses
  %niter285.ncmp.1 = icmp eq i64 %niter285.next.1, %unroll_iter284
  br i1 %niter285.ncmp.1, label %.thread206.unr-lcssa, label %.lr.ph.i, !llvm.loop !4

.thread206.unr-lcssa:                             ; preds = %.lr.ph.i
  %i.dy = and i64 %.val191, 8
  %lcmp.mod281.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod281.not, label %.thread206, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread206.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dx, %.thread206.unr-lcssa ] ; 2 uses
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dw, %.thread206.unr-lcssa ]
  %lcmp.mod283 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.dz = getelementptr [4 x i8], ptr %i.bx, i64 %.013.i.epil.init
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !26
  %i.eb = zext i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, %i.cu
  %i.ed = or i64 %i.ec, %.01112.i.epil.init       ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 1073741823
  %i.eg = getelementptr [4 x i8], ptr %i.dc, i64 %.013.i.epil.init
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !26
  %i.eh = lshr i64 %i.ed, 30
  br label %.thread206

.thread206:                                       ; preds = %.thread206.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa274 = phi i64 [ %i.dw, %.thread206.unr-lcssa ], [ %i.eh, %.lr.ph.i.epil.preheader ]
  %i.ei = trunc nuw nsw i64 %.lcssa274 to i32
  %i.ej = getelementptr [4 x i8], ptr %i.db, i64 %i.cv
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !26
  br label %.thread212

bb.p:                                             ; preds = %bb.n
  %i.ek = udiv i64 %i.cq, 30                      ; 4 uses
  %i.el = urem i64 %i.cq, 30                      ; 4 uses
  %i.em = sub nsw i64 %i.i, %i.ek                 ; 7 uses
  %i.en = tail call fastcc ptr @long_alloc(i64 noundef %i.em) ; 5 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.am, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = getelementptr i8, ptr %i.en, i64 24     ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %i.bx, i64 %i.ek ; 3 uses
  %i.er = trunc nuw nsw i64 %i.el to i32
  %notmask.i = shl nsw i32 -1, %i.er
  %i.es = xor i32 %notmask.i, -1                  ; 3 uses
  %i.et = icmp sgt i64 %i.em, 0
  br i1 %i.et, label %.lr.ph.i200.preheader, label %bb.r

.lr.ph.i200.preheader:                            ; preds = %bb.q
  %.neg289 = add nuw nsw i64 %i.ek, 1
  %xtraiter276 = and i64 %i.em, 1
  %i.eu = icmp eq i64 %i.i, %.neg289
  br i1 %i.eu, label %.lr.ph.i200.epil.preheader, label %.lr.ph.i200.preheader.new

.lr.ph.i200.preheader.new:                        ; preds = %.lr.ph.i200.preheader
  %unroll_iter = and i64 %i.em, 9223372036854775806
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200, %.lr.ph.i200.preheader.new
  %.014.i = phi i64 [ %i.em, %.lr.ph.i200.preheader.new ], [ %i.fh, %.lr.ph.i200 ] ; 2 uses
  %.01213.i = phi i32 [ 0, %.lr.ph.i200.preheader.new ], [ %.fr.1, %.lr.ph.i200 ]
  %niter = phi i64 [ 0, %.lr.ph.i200.preheader.new ], [ %niter.next.1, %.lr.ph.i200 ]
  %i.ev = add nsw i64 %.014.i, -1                 ; 2 uses
  %i.ew = zext nneg i32 %.01213.i to i64
  %i.ex = shl nuw nsw i64 %i.ew, 30
  %i.ey = getelementptr [4 x i8], ptr %i.eq, i64 %i.ev
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !26
  %i.fa = zext i32 %i.ez to i64
  %i.fb = or i64 %i.ex, %i.fa                     ; 2 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = and i32 %i.fc, %i.es
  %.fr = freeze i32 %i.fd
  %i.fe = lshr i64 %i.fb, %i.el
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr [4 x i8], ptr %i.ep, i64 %i.ev
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !26
  %i.fh = add nsw i64 %.014.i, -2                 ; 4 uses
  %i.fi = zext nneg i32 %.fr to i64
  %i.fj = shl nuw nsw i64 %i.fi, 30
  %i.fk = getelementptr [4 x i8], ptr %i.eq, i64 %i.fh
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !26
  %i.fm = zext i32 %i.fl to i64
  %i.fn = or i64 %i.fj, %i.fm                     ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = and i32 %i.fo, %i.es
  %.fr.1 = freeze i32 %i.fp                       ; 3 uses
  %i.fq = lshr i64 %i.fn, %i.el
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr [4 x i8], ptr %i.ep, i64 %i.fh
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !26
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %v_rshift.exit.unr-lcssa, label %.lr.ph.i200, !llvm.loop !5

v_rshift.exit.unr-lcssa:                          ; preds = %.lr.ph.i200
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %v_rshift.exit, label %.lr.ph.i200.epil.preheader

.lr.ph.i200.epil.preheader:                       ; preds = %v_rshift.exit.unr-lcssa, %.lr.ph.i200.preheader
  %.014.i.epil.init = phi i64 [ %i.em, %.lr.ph.i200.preheader ], [ %i.fh, %v_rshift.exit.unr-lcssa ]
  %.01213.i.epil.init = phi i32 [ 0, %.lr.ph.i200.preheader ], [ %.fr.1, %v_rshift.exit.unr-lcssa ]
  %lcmp.mod279 = trunc i64 %i.em to i1
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.ft = add nsw i64 %.014.i.epil.init, -1       ; 2 uses
  %i.fu = zext nneg i32 %.01213.i.epil.init to i64
  %i.fv = shl nuw nsw i64 %i.fu, 30
  %i.fw = getelementptr [4 x i8], ptr %i.eq, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !26
  %i.fy = zext i32 %i.fx to i64
  %i.fz = or i64 %i.fv, %i.fy                     ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, %i.es
  %.fr.epil = freeze i32 %i.gb
  %i.gc = lshr i64 %i.fz, %i.el
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr [4 x i8], ptr %i.ep, i64 %i.ft
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !26
  br label %v_rshift.exit

v_rshift.exit:                                    ; preds = %v_rshift.exit.unr-lcssa, %.lr.ph.i200.epil.preheader
  %.fr.lcssa = phi i32 [ %.fr.1, %v_rshift.exit.unr-lcssa ], [ %.fr.epil, %.lr.ph.i200.epil.preheader ]
  %.not171 = icmp eq i32 %.fr.lcssa, 0
  br i1 %.not171, label %bb.r, label %.thread212

bb.r:                                             ; preds = %v_rshift.exit, %bb.q
  %i.gf = icmp ugt i64 %i.cq, 29
  br i1 %i.gf, label %.lr.ph235, label %.thread212

.lr.ph235:                                        ; preds = %bb.r, %.lr.ph235
  %.0121233 = phi i64 [ %i.gg, %.lr.ph235 ], [ %i.ek, %bb.r ] ; 2 uses
  %i.gg = add nsw i64 %.0121233, -1               ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %i.bx, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !26
  %.not173 = icmp ne i32 %i.gi, 0                 ; 2 uses
  %i.gj = icmp samesign ult i64 %.0121233, 2
  %.not270 = or i1 %i.gj, %.not173
  br i1 %.not270, label %.thread212.loopexit, label %.lr.ph235, !llvm.loop !329

.thread212.loopexit:                              ; preds = %.lr.ph235
  %spec.select179 = zext i1 %.not173 to i32
  br label %.thread212

.thread212:                                       ; preds = %.thread212.loopexit, %v_rshift.exit, %bb.r, %.thread206
  %.1156 = phi ptr [ %i.cx, %.thread206 ], [ %i.en, %bb.r ], [ %i.en, %v_rshift.exit ], [ %i.en, %.thread212.loopexit ] ; 11 uses
  %.4 = phi i32 [ 0, %.thread206 ], [ 0, %bb.r ], [ 1, %v_rshift.exit ], [ %spec.select179, %.thread212.loopexit ] ; 2 uses
  %i.gk = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  %i.gl = getelementptr i8, ptr %.1156, i64 16
  %.1156.val = load i64, ptr %i.gl, align 8, !tbaa !43 ; 2 uses
  %i.gm = and i64 %.1156.val, 3
  %i.gn = sub nsw i64 1, %i.gm
  %i.go = lshr i64 %.1156.val, 3
  %i.gp = mul i64 %i.gn, %i.go                    ; 7 uses
  %i.gq = icmp eq i64 %i.k, 1
  br i1 %i.gq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.thread212
  %i.gr = getelementptr i8, ptr %.1156, i64 24    ; 3 uses
  %i.gs = icmp sgt i64 %i.gp, 0
  br i1 %i.gs, label %.lr.ph.i202, label %inplace_divrem1.exit.thread

inplace_divrem1.exit.thread:                      ; preds = %bb.s
  %i.gt = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  br label %bb.u

.lr.ph.i202:                                      ; preds = %bb.s
  %i.gu = load i32, ptr %i.cf, align 8, !tbaa !26
  %i.gv = zext i32 %i.gu to i64                   ; 6 uses
  %xtraiter286 = and i64 %i.gp, 1
  %2 = icmp eq i64 %i.gp, 1
  br i1 %2, label %.epil.preheader, label %.lr.ph.i202.new

.lr.ph.i202.new:                                  ; preds = %.lr.ph.i202
  %unroll_iter290 = and i64 %i.gp, 9223372036854775806
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i202.new
  %.014.i203 = phi i64 [ %i.gp, %.lr.ph.i202.new ], [ %i.gw, %bb.t ] ; 2 uses
  %.014.i203.a = phi i64 [ 0, %.lr.ph.i202.new ], [ %.fr221.a, %bb.t ]
  %.01113.i = phi i64 [ 0, %.lr.ph.i202.new ], [ %niter291.next.1, %bb.t ]
  %3 = shl nuw nsw i64 %.014.i203.a, 30
  %4 = getelementptr [4 x i8], ptr %i.gr, i64 %.014.i203
  %5 = getelementptr i8, ptr %4, i64 -4           ; 2 uses
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = zext i32 %6 to i64
  %8 = or i64 %3, %7                              ; 2 uses
  %9 = udiv i64 %8, %i.gv
  %10 = trunc i64 %9 to i32
  %11 = urem i64 %8, %i.gv
  %.fr221 = freeze i64 %11
  store i32 %10, ptr %5, align 4, !tbaa !26
  %i.gw = add nsw i64 %.014.i203, -2              ; 3 uses
  %i.gx = shl nuw nsw i64 %.fr221, 30
  %i.gy = getelementptr [4 x i8], ptr %i.gr, i64 %i.gw ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !26
  %i.ha = zext i32 %i.gz to i64
  %i.hb = or i64 %i.gx, %i.ha                     ; 2 uses
  %i.hc = udiv i64 %i.hb, %i.gv
  %i.hd = trunc i64 %i.hc to i32
  %i.he = urem i64 %i.hb, %i.gv
  %.fr221.a = freeze i64 %i.he                    ; 3 uses
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !26
  %niter291.next.1 = add i64 %.01113.i, 2         ; 2 uses
  %niter291.ncmp.1.not = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1.not, label %inplace_divrem1.exit.unr-lcssa, label %bb.t, !llvm.loop !10

inplace_divrem1.exit.unr-lcssa:                   ; preds = %bb.t
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %inplace_divrem1.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %inplace_divrem1.exit.unr-lcssa, %.lr.ph.i202
  %.014.i203.epil.init = phi i64 [ %i.gp, %.lr.ph.i202 ], [ %i.gw, %inplace_divrem1.exit.unr-lcssa ]
  %.01113.i.epil.init = phi i64 [ 0, %.lr.ph.i202 ], [ %.fr221.a, %inplace_divrem1.exit.unr-lcssa ]
  %lcmp.mod289 = trunc i64 %i.gp to i1
  tail call void @llvm.assume(i1 %lcmp.mod289)
  %12 = shl nuw nsw i64 %.01113.i.epil.init, 30
  %13 = getelementptr [4 x i8], ptr %i.gr, i64 %.014.i203.epil.init
  %14 = getelementptr i8, ptr %13, i64 -4         ; 2 uses
  %15 = load i32, ptr %14, align 4, !tbaa !26
  %16 = zext i32 %15 to i64
  %17 = or i64 %12, %16                           ; 2 uses
  %18 = udiv i64 %17, %i.gv
  %19 = trunc i64 %18 to i32
  %20 = urem i64 %17, %i.gv
  %.fr221.epil = freeze i64 %20
  store i32 %19, ptr %14, align 4, !tbaa !26
  br label %inplace_divrem1.exit

inplace_divrem1.exit:                             ; preds = %inplace_divrem1.exit.unr-lcssa, %.epil.preheader
  %.fr221.lcssa = phi i64 [ %.fr221.a, %inplace_divrem1.exit.unr-lcssa ], [ %.fr221.epil, %.epil.preheader ]
  %i.hf = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  %.not174 = icmp eq i64 %.fr221.lcssa, 0
  br i1 %.not174, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %inplace_divrem1.exit.thread, %inplace_divrem1.exit
  br label %bb.ab

bb.v:                                             ; preds = %.thread212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.hg = call fastcc ptr @x_divrem(ptr noundef nonnull %.1156, ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %i.hh = load i32, ptr %.1156, align 8, !tbaa !40 ; 2 uses
  %.not.i187 = icmp sgt i32 %i.hh, -1
  br i1 %.not.i187, label %bb.w, label %Py_DECREF.exit188

bb.w:                                             ; preds = %bb.v
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  store i32 %i.hi, ptr %.1156, align 8, !tbaa !40
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.x, label %Py_DECREF.exit188

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1156) #16
  br label %Py_DECREF.exit188

Py_DECREF.exit188:                                ; preds = %bb.v, %bb.w, %bb.x
  %i.hk = icmp eq ptr %i.hg, null
  br i1 %i.hk, label %Py_DECREF.exit186, label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit188
  %i.hl = load ptr, ptr %i.a, align 8, !tbaa !154 ; 4 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  %.val198 = load i64, ptr %i.hm, align 8, !tbaa !43
  %i.hn = and i64 %.val198, 3
  %i.ho = icmp eq i64 %i.hn, 1
  %spec.select182 = select i1 %i.ho, i32 %.4, i32 1
  %i.hp = load i32, ptr %i.hl, align 8, !tbaa !40 ; 2 uses
  %.not.i185 = icmp sgt i32 %i.hp, -1
  br i1 %.not.i185, label %bb.z, label %Py_DECREF.exit186.thread

bb.z:                                             ; preds = %bb.y
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  store i32 %i.hq, ptr %i.hl, align 8, !tbaa !40
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.aa, label %Py_DECREF.exit186.thread

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.hl) #16
  br label %Py_DECREF.exit186.thread

Py_DECREF.exit186.thread:                         ; preds = %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ab

Py_DECREF.exit186:                                ; preds = %Py_DECREF.exit188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.am

bb.ab:                                            ; preds = %Py_DECREF.exit186.thread, %bb.u, %inplace_divrem1.exit
  %.2157 = phi ptr [ %i.hg, %Py_DECREF.exit186.thread ], [ %.1156, %inplace_divrem1.exit ], [ %.1156, %bb.u ] ; 5 uses
  %.8 = phi i32 [ %spec.select182, %Py_DECREF.exit186.thread ], [ 1, %inplace_divrem1.exit ], [ %.4, %bb.u ]
  %i.hs = getelementptr i8, ptr %.2157, i64 16
  %.2157.val = load i64, ptr %i.hs, align 8, !tbaa !43 ; 2 uses
  %i.ht = lshr i64 %.2157.val, 3                  ; 3 uses
  %i.hu = add nsw i64 %i.ht, -1                   ; 5 uses
  %i.hv = mul i64 %i.hu, 30
  %i.hw = getelementptr i8, ptr %.2157, i64 24    ; 8 uses
  %i.hx = getelementptr [4 x i8], ptr %i.hw, i64 %i.hu ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !26
  %i.hz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hy, i1 false)
  %i.ia = sub nuw nsw i32 32, %i.hz
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = add i64 %i.hv, %i.ib                    ; 3 uses
  %i.id = sub nsw i64 -966, %i.cp
  %i.ie = tail call i64 @llvm.smax.i64(i64 %i.ic, i64 %i.id)
  %i.if = trunc i64 %i.ie to i32
  %i.ig = add i32 %i.if, -54                      ; 3 uses
  %i.ih = shl nuw i32 1, %i.ig                    ; 2 uses
  %i.ii = load i32, ptr %i.hw, align 8, !tbaa !26
  %i.ij = or i32 %i.ii, %.8                       ; 4 uses
  %i.ik = and i32 %i.ih, %i.ij
  %.not175 = icmp eq i32 %i.ik, 0
  br i1 %.not175, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.il = shl i32 3, %i.ig
  %i.im = add i32 %i.il, -1
  %i.in = and i32 %i.im, %i.ij
  %.not176 = icmp eq i32 %i.in, 0
  %i.io = select i1 %.not176, i32 0, i32 %i.ih
  %spec.select184 = add i32 %i.io, %i.ij
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0131 = phi i32 [ %i.ij, %bb.ab ], [ %spec.select184, %bb.ac ]
  %.neg = shl i32 -2, %i.ig
  %i.ip = and i32 %.0131, %.neg
  store i32 %i.ip, ptr %i.hw, align 8, !tbaa !26
  %i.iq = load i32, ptr %i.hx, align 4, !tbaa !26
  %i.ir = uitofp i32 %i.iq to double              ; 3 uses
  %i.is = icmp ugt i64 %.2157.val, 15
  br i1 %i.is, label %.lr.ph243.preheader, label %._crit_edge244

.lr.ph243.preheader:                              ; preds = %bb.ad
  %smin = tail call i64 @llvm.smin.i64(i64 %i.hu, i64 1) ; 2 uses
  %i.it = sub i64 %i.ht, %smin
  %xtraiter286.a = and i64 %i.it, 3               ; 2 uses
  %lcmp.mod287.not.a = icmp eq i64 %xtraiter286.a, 0
  br i1 %lcmp.mod287.not.a, label %.lr.ph243.prol.loopexit, label %.lr.ph243.prol

.lr.ph243.prol:                                   ; preds = %.lr.ph243.preheader, %.lr.ph243.prol
  %.0127241.prol = phi double [ %i.iy, %.lr.ph243.prol ], [ %i.ir, %.lr.ph243.preheader ]
  %.0132240.prol = phi i64 [ %i.iu, %.lr.ph243.prol ], [ %i.hu, %.lr.ph243.preheader ]
  %prol.iter288 = phi i64 [ %prol.iter288.next, %.lr.ph243.prol ], [ 0, %.lr.ph243.preheader ]
  %i.iu = add nsw i64 %.0132240.prol, -1          ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %i.hw, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !26
  %i.ix = uitofp i32 %i.iw to double
  %i.iy = tail call double @llvm.fmuladd.f64(double %.0127241.prol, double f0x41D0000000000000, double %i.ix) ; 3 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286.a
  br i1 %prol.iter288.cmp.not, label %.lr.ph243.prol.loopexit, label %.lr.ph243.prol, !llvm.loop !330

.lr.ph243.prol.loopexit:                          ; preds = %.lr.ph243.prol, %.lr.ph243.preheader
  %.0127241.unr = phi double [ %i.ir, %.lr.ph243.preheader ], [ %i.iy, %.lr.ph243.prol ]
  %.0132240.unr = phi i64 [ %i.hu, %.lr.ph243.preheader ], [ %i.iu, %.lr.ph243.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph243.preheader ], [ %i.iy, %.lr.ph243.prol ]
  %i.iz = sub i64 %smin, %i.ht
  %i.ja = icmp ugt i64 %i.iz, -4
  br i1 %i.ja, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.prol.loopexit, %.lr.ph243
  %.0127241 = phi double [ %i.ju, %.lr.ph243 ], [ %.0127241.unr, %.lr.ph243.prol.loopexit ]
  %.0132240 = phi i64 [ %i.jq, %.lr.ph243 ], [ %.0132240.unr, %.lr.ph243.prol.loopexit ] ; 5 uses
  %i.jb = getelementptr [4 x i8], ptr %i.hw, i64 %.0132240
  %i.jc = getelementptr i8, ptr %i.jb, i64 -4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !26
  %i.je = uitofp i32 %i.jd to double
  %i.jf = tail call double @llvm.fmuladd.f64(double %.0127241, double f0x41D0000000000000, double %i.je)
  %i.jg = getelementptr [4 x i8], ptr %i.hw, i64 %.0132240
  %i.jh = getelementptr i8, ptr %i.jg, i64 -8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !26
  %i.jj = uitofp i32 %i.ji to double
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jf, double f0x41D0000000000000, double %i.jj)
  %i.jl = getelementptr [4 x i8], ptr %i.hw, i64 %.0132240
  %i.jm = getelementptr i8, ptr %i.jl, i64 -12
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !26
  %i.jo = uitofp i32 %i.jn to double
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jk, double f0x41D0000000000000, double %i.jo)
  %i.jq = add nsw i64 %.0132240, -4               ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %i.hw, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !26
  %i.jt = uitofp i32 %i.js to double
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jp, double f0x41D0000000000000, double %i.jt) ; 2 uses
  %i.jv = icmp sgt i64 %.0132240, 4
  br i1 %i.jv, label %.lr.ph243, label %._crit_edge244, !llvm.loop !331

._crit_edge244:                                   ; preds = %.lr.ph243.prol.loopexit, %.lr.ph243, %bb.ad
  %.0127.lcssa = phi double [ %i.ir, %bb.ad ], [ %.lcssa.unr, %.lr.ph243.prol.loopexit ], [ %i.ju, %.lr.ph243 ] ; 2 uses
  %i.jw = load i32, ptr %.2157, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp sgt i32 %i.jw, -1
  br i1 %.not.i, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %._crit_edge244
  %i.jx = add nsw i32 %i.jw, -1                   ; 2 uses
  store i32 %i.jx, ptr %.2157, align 8, !tbaa !40
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %bb.af, label %Py_DECREF.exit

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2157) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge244, %bb.ae, %bb.af
  %i.jz = add i64 %i.ic, %i.cq                    ; 2 uses
  %i.ka = icmp sgt i64 %i.jz, 1023
  br i1 %i.ka, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %Py_DECREF.exit
  %.not177 = icmp eq i64 %i.jz, 1024
  br i1 %.not177, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.kb = trunc i64 %i.ic to i32
  %i.kc = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.kb) #16, !tbaa !26
  %i.kd = fcmp oeq double %.0127.lcssa, %i.kc
  br i1 %i.kd, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %Py_DECREF.exit
  %i.ke = trunc nsw i64 %i.cq to i32
  %i.kf = tail call double @ldexp(double noundef %.0127.lcssa, i32 noundef %i.ke) #16, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge229, %bb.ai
  %.0126 = phi double [ %i.bs, %._crit_edge229 ], [ %i.kf, %bb.ai ] ; 2 uses
  %i.kg = fneg double %.0126
  %i.kh = select i1 %i.p, double %i.kg, double %.0126
  %i.ki = tail call ptr @PyFloat_FromDouble(double noundef %i.kh) #16
  br label %bb.am

bb.ak:                                            ; preds = %bb.e, %bb.m, %bb.k
  %i.kj = select i1 %i.p, double -0.000000e+00, double 0.000000e+00
  %i.kk = tail call ptr @PyFloat_FromDouble(double noundef %i.kj) #16
end_hunk_0
