Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidiwrt?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL14doWriteReversePKDsiPDsitP10UErrorCode:bb.a
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = and i64 %i.bs, 448
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %iter.check, label %bb.e, !llvm.loop !20

iter.check:                                       ; preds = %bb.h, %.thread
  %i.bu = phi i1 [ false, %bb.h ], [ true, %.thread ]
  %.5142174 = phi i32 [ %.5142, %bb.h ], [ %.5142175, %.thread ] ; 2 uses
  %i.bv = sext i32 %.5142174 to i64               ; 9 uses
  %i.bw = sext i32 %.2139 to i64                  ; 2 uses
  %i.bx = add nsw i64 %i.bv, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.bx, i64 %i.bw)
  %i.by = sub i64 %smax, %i.bv                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.by, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bz = shl nsw i64 %i.bv, 1
  %i.ca = add i64 %i.bz, %i.a
  %i.cb = sub i64 %i.ca, %.2131223
  %diff.check = icmp ugt i64 %i.cb, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check224 = icmp ult i64 %i.by, 16
  br i1 %min.iters.check224, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.by, 12
  %n.vec = and i64 %i.by, -16                     ; 5 uses
  %i.cd = add i64 %n.vec, %i.bv
  %i.ce = shl i64 %n.vec, 1
  %i.cf = getelementptr i8, ptr %.2131, i64 %i.ce ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2131, i64 %i.cg ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !11
  %wide.load225 = load <8 x i16>, ptr %i.ch, align 2, !tbaa !11
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !11
  store <8 x i16> %wide.load225, ptr %i.ci, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit316, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec226 = and i64 %i.by, -4                   ; 4 uses
  %i.ck = add i64 %n.vec226, %i.bv
  %i.cl = shl i64 %n.vec226, 1
  %i.cm = getelementptr i8, ptr %.2131, i64 %i.cl ; 2 uses
  %invariant.gep334 = getelementptr [2 x i8], ptr %0, i64 %i.bv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index227 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next230, %vec.epilog.vector.body ] ; 3 uses
  %i.cn = shl i64 %index227, 1
  %next.gep228 = getelementptr i8, ptr %.2131, i64 %i.cn
  %gep335 = getelementptr [2 x i8], ptr %invariant.gep334, i64 %index227
  %wide.load229 = load <4 x i16>, ptr %gep335, align 2, !tbaa !11
  store <4 x i16> %wide.load229, ptr %next.gep228, align 2, !tbaa !11
  %index.next230 = add nuw i64 %index227, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next230, %n.vec226
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n231 = icmp eq i64 %i.by, %n.vec226
  br i1 %cmp.n231, label %.loopexit316, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bv, %iter.check ], [ %i.bv, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  %.3132.ph = phi ptr [ %.2131, %iter.check ], [ %.2131, %vector.memcheck ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3132 = phi ptr [ %i.cr, %vec.epilog.scalar.ph ], [ %.3132.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cp = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %.3132, i64 2 ; 2 uses
  store i16 %i.cq, ptr %.3132, align 2, !tbaa !11
  %i.cs = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.cs, label %vec.epilog.scalar.ph, label %.loopexit316, !llvm.loop !23

.loopexit316:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa222 = phi ptr [ %i.cm, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %i.cr, %vec.epilog.scalar.ph ]
  br i1 %i.bu, label %.preheader190, label %.loopexit186, !llvm.loop !24

bb.i:                                             ; preds = %bb.a
  %i.ct = and i32 %i.b, 8
  %.not159 = icmp eq i32 %i.ct, 0                 ; 2 uses
  br i1 %.not159, label %bb.j, label %.preheader187.preheader

.preheader187.preheader:                          ; preds = %bb.i
  %i.cu = tail call i32 @llvm.smin.i32(i32 %1, i32 1)
  %i.cv = sub i32 %1, %i.cu                       ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check266 = icmp ult i32 %i.cv, 7
  br i1 %min.iters.check266, label %.preheader187.preheader317, label %vector.ph267

vector.ph267:                                     ; preds = %.preheader187.preheader
  %n.vec268 = and i64 %i.cx, 8589934584           ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec268, 1
  %i.cz = getelementptr i8, ptr %0, i64 %i.cy     ; 2 uses
  %i.da = trunc i64 %n.vec268 to i32
  %i.db = sub i32 %1, %i.da
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph267 ], [ %i.dw, %vector.body269 ]
  %vec.phi271 = phi <4 x i32> [ zeroinitializer, %vector.ph267 ], [ %i.dx, %vector.body269 ]
  %i.dc = shl i64 %index270, 1
  %next.gep272 = getelementptr i8, ptr %0, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep272, i64 8
  %wide.load273 = load <4 x i16>, ptr %next.gep272, align 2, !tbaa !11 ; 3 uses
  %wide.load274 = load <4 x i16>, ptr %i.dd, align 2, !tbaa !11 ; 3 uses
  %i.de = and <4 x i16> %wide.load273, splat (i16 -4)
  %i.df = and <4 x i16> %wide.load274, splat (i16 -4)
  %i.dg = icmp ne <4 x i16> %i.de, splat (i16 8204)
  %i.dh = icmp ne <4 x i16> %i.df, splat (i16 8204)
  %i.di = add <4 x i16> %wide.load273, splat (i16 -8239)
  %i.dj = add <4 x i16> %wide.load274, splat (i16 -8239)
  %i.dk = icmp ult <4 x i16> %i.di, splat (i16 -5)
  %i.dl = icmp ult <4 x i16> %i.dj, splat (i16 -5)
  %i.dm = and <4 x i1> %i.dg, %i.dk
  %i.dn = and <4 x i1> %i.dh, %i.dl
  %i.do = add <4 x i16> %wide.load273, splat (i16 -8298)
  %i.dp = add <4 x i16> %wide.load274, splat (i16 -8298)
  %i.dq = icmp ult <4 x i16> %i.do, splat (i16 -4)
  %i.dr = icmp ult <4 x i16> %i.dp, splat (i16 -4)
  %i.ds = and <4 x i1> %i.dq, %i.dm
  %i.dt = and <4 x i1> %i.dr, %i.dn
  %i.du = zext <4 x i1> %i.ds to <4 x i32>
  %i.dv = zext <4 x i1> %i.dt to <4 x i32>
  %i.dw = add <4 x i32> %vec.phi, %i.du           ; 2 uses
  %i.dx = add <4 x i32> %vec.phi271, %i.dv        ; 2 uses
  %index.next275 = add nuw i64 %index270, 8       ; 2 uses
  %i.dy = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.dy, label %middle.block276, label %vector.body269, !llvm.loop !25

middle.block276:                                  ; preds = %vector.body269
  %bin.rdx = add <4 x i32> %i.dx, %i.dw
  %i.dz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n277 = icmp eq i64 %i.cx, %n.vec268
  br i1 %cmp.n277, label %.loopexit314, label %.preheader187.preheader317

.preheader187.preheader317:                       ; preds = %.preheader187.preheader, %middle.block276
  %.0126.ph = phi ptr [ %0, %.preheader187.preheader ], [ %i.cz, %middle.block276 ]
  %.0122.ph = phi i32 [ 0, %.preheader187.preheader ], [ %i.dz, %middle.block276 ]
  %.0116.ph = phi i32 [ %1, %.preheader187.preheader ], [ %i.db, %middle.block276 ]
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.preheader317, %.preheader187
  %.0126 = phi ptr [ %i.ea, %.preheader187 ], [ %.0126.ph, %.preheader187.preheader317 ] ; 2 uses
  %.0122 = phi i32 [ %.1123, %.preheader187 ], [ %.0122.ph, %.preheader187.preheader317 ]
  %.0116 = phi i32 [ %i.ej, %.preheader187 ], [ %.0116.ph, %.preheader187.preheader317 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0126, i64 2 ; 2 uses
  %i.eb = load i16, ptr %.0126, align 2, !tbaa !11 ; 3 uses
  %i.ec = and i16 %i.eb, -4
  %i.ed = icmp ne i16 %i.ec, 8204
  %i.ee = add i16 %i.eb, -8239
  %i.ef = icmp ult i16 %i.ee, -5
  %or.cond163.not184 = and i1 %i.ed, %i.ef
  %i.eg = add i16 %i.eb, -8298
  %i.eh = icmp ult i16 %i.eg, -4
  %or.cond165.not = and i1 %i.eh, %or.cond163.not184
  %i.ei = zext i1 %or.cond165.not to i32
  %.1123 = add nuw nsw i32 %.0122, %i.ei          ; 2 uses
  %i.ej = add nsw i32 %.0116, -1
  %i.ek = icmp sgt i32 %.0116, 1
  br i1 %i.ek, label %.preheader187, label %.loopexit314, !llvm.loop !26

.loopexit314:                                     ; preds = %.preheader187, %middle.block276
  %.lcssa220 = phi ptr [ %i.cz, %middle.block276 ], [ %i.ea, %.preheader187 ]
  %.1123.lcssa = phi i32 [ %i.dz, %middle.block276 ], [ %.1123, %.preheader187 ]
  %i.el = sext i32 %1 to i64
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [2 x i8], ptr %.lcssa220, i64 %i.em
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit314
  %.1127 = phi ptr [ %i.en, %.loopexit314 ], [ %0, %bb.i ] ; 16 uses
  %.2124 = phi i32 [ %.1123.lcssa, %.loopexit314 ], [ %1, %bb.i ] ; 3 uses
  %.1127288 = ptrtoaddr ptr %.1127 to i64
  %i.eo = icmp slt i32 %3, %.2124
  br i1 %i.eo, label %.loopexit186.sink.split, label %.preheader185

.preheader185:                                    ; preds = %bb.j
  %i.ep = trunc i16 %4 to i1
  %i.eq = and i32 %i.b, 2
  %.not161 = icmp eq i32 %i.eq, 0
  br label %bb.k

bb.k:                                             ; preds = %.preheader185, %.loopexit
  %.6143 = phi i32 [ %.12, %.loopexit ], [ %1, %.preheader185 ] ; 6 uses
  %.4133 = phi ptr [ %.7136, %.loopexit ], [ %2, %.preheader185 ] ; 14 uses
  %i.er = add nsw i32 %.6143, -1                  ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [2 x i8], ptr %.1127, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !11
  %i.ev = zext i16 %i.eu to i32                   ; 4 uses
  %i.ew = and i32 %i.ev, 64512
  %i.ex = icmp eq i32 %i.ew, 56320
  %i.ey = icmp sgt i32 %.6143, 1
  %or.cond171 = and i1 %i.ey, %i.ex
  br i1 %or.cond171, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ez = zext nneg i32 %.6143 to i64
  %i.fa = getelementptr [2 x i8], ptr %.1127, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -4
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !11
  %i.fd = zext i16 %i.fc to i32                   ; 2 uses
  %i.fe = and i32 %i.fd, 64512
  %i.ff = icmp eq i32 %i.fe, 55296
  br i1 %i.ff, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fg = add nsw i32 %.6143, -2
  %i.fh = shl nuw nsw i32 %i.fd, 10
  %i.fi = add nuw nsw i32 %i.ev, -56613888
  %i.fj = add nsw i32 %i.fi, %i.fh
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.8 = phi i32 [ %i.er, %bb.k ], [ %i.fg, %bb.m ], [ %i.er, %bb.l ] ; 3 uses
  %.3 = phi i32 [ %i.ev, %bb.k ], [ %i.fj, %bb.m ], [ %i.ev, %bb.l ] ; 2 uses
  %i.fk = icmp sgt i32 %.8, 0
  %or.cond5 = select i1 %i.ep, i1 %i.fk, i1 false
  br i1 %or.cond5, label %.preheader, label %.critedge3

.preheader:                                       ; preds = %bb.n, %bb.s
  %.9 = phi i32 [ %.11, %bb.s ], [ %.8, %bb.n ]   ; 5 uses
  %.4 = phi i32 [ %.6, %bb.s ], [ %.3, %bb.n ]    ; 2 uses
  %i.fl = tail call signext i8 @u_charType_78(i32 noundef %.4)
  %i.fm = sext i8 %i.fl to i64
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, 448
  %.not160 = icmp eq i64 %i.fp, 0
  br i1 %.not160, label %.critedge3, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.fq = add nsw i32 %.9, -1                     ; 3 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.1127, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !11
  %i.fu = zext i16 %i.ft to i32                   ; 5 uses
  %i.fv = and i32 %i.fu, 64512
  %i.fw = icmp eq i32 %i.fv, 56320
  br i1 %i.fw, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.fx = icmp sgt i32 %.9, 1
  br i1 %i.fx, label %bb.q, label %.critedge3

bb.q:                                             ; preds = %bb.p
  %i.fy = zext nneg i32 %.9 to i64
  %i.fz = getelementptr [2 x i8], ptr %.1127, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 -4
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !11
  %i.gc = zext i16 %i.gb to i32                   ; 2 uses
  %i.gd = and i32 %i.gc, 64512
  %i.ge = icmp eq i32 %i.gd, 55296
  br i1 %i.ge, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gf = add nsw i32 %.9, -2
  %i.gg = shl nuw nsw i32 %i.gc, 10
  %i.gh = add nuw nsw i32 %i.fu, -56613888
  %i.gi = add nsw i32 %i.gh, %i.gg
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.11 = phi i32 [ %i.fq, %bb.o ], [ %i.gf, %bb.r ], [ %i.fq, %bb.q ] ; 2 uses
  %.6 = phi i32 [ %i.fu, %bb.o ], [ %i.gi, %bb.r ], [ %i.fu, %bb.q ] ; 2 uses
  %.old4 = icmp sgt i32 %.11, 0
  br i1 %.old4, label %.preheader, label %.critedge3

.critedge3:                                       ; preds = %bb.p, %.preheader, %bb.s, %bb.n
  %.12 = phi i32 [ %.8, %bb.n ], [ 0, %bb.p ], [ %.9, %.preheader ], [ 0, %bb.s ] ; 4 uses
  %.7 = phi i32 [ %.3, %bb.n ], [ %i.fu, %bb.p ], [ %.4, %.preheader ], [ %.6, %bb.s ]
  %.7.fr = freeze i32 %.7                         ; 3 uses
  br i1 %.not159, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge3
  %i.gj = and i32 %.7.fr, -4
  %i.gk = icmp eq i32 %i.gj, 8204
  br i1 %i.gk, label %.loopexit, label %switch.early.test

switch.early.test:                                ; preds = %bb.t
  switch i32 %.7.fr, label %bb.u [
    i32 8297, label %.loopexit
    i32 8296, label %.loopexit
    i32 8295, label %.loopexit
    i32 8294, label %.loopexit
    i32 8238, label %.loopexit
    i32 8237, label %.loopexit
    i32 8236, label %.loopexit
    i32 8235, label %.loopexit
    i32 8234, label %.loopexit
  ]

bb.u:                                             ; preds = %switch.early.test, %.critedge3
  br i1 %.not161, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gl = tail call i32 @u_charMirror_78(i32 noundef %.7.fr) ; 4 uses
  %i.gm = icmp ult i32 %i.gl, 65536
  br i1 %i.gm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gn = trunc nuw i32 %i.gl to i16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.go = lshr i32 %i.gl, 10
  %i.gp = trunc i32 %i.go to i16
  %i.gq = add i16 %i.gp, -10304
  %i.gr = trunc i32 %i.gl to i16
  %i.gs = and i16 %i.gr, 1023
  %i.gt = or disjoint i16 %i.gs, -9216
  %i.gu = getelementptr inbounds nuw i8, ptr %.4133, i64 2
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi i16 [ %i.gn, %bb.w ], [ %i.gq, %bb.x ]
  %.0 = phi i32 [ 1, %bb.w ], [ 2, %bb.x ]        ; 2 uses
  store i16 %.sink, ptr %.4133, align 2, !tbaa !11
  %i.gv = zext nneg i32 %.0 to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.4133, i64 %i.gv
  %i.gx = add nsw i32 %.0, %.12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %.5134 = phi ptr [ %i.gw, %bb.y ], [ %.4133, %bb.u ] ; 8 uses
  %.2120 = phi i32 [ %i.gx, %bb.y ], [ %.12, %bb.u ] ; 2 uses
  %.5134282 = ptrtoaddr ptr %.5134 to i64
  %i.gy = icmp slt i32 %.2120, %.6143
  br i1 %i.gy, label %iter.check298, label %.loopexit

iter.check298:                                    ; preds = %bb.z
  %i.gz = sext i32 %.2120 to i64                  ; 8 uses
  %wide.trip.count = sext i32 %.6143 to i64       ; 4 uses
  %i.ha = sub nsw i64 %wide.trip.count, %i.gz     ; 7 uses
  %min.iters.check285 = icmp ult i64 %i.ha, 4
  br i1 %min.iters.check285, label %.lr.ph.preheader, label %vector.memcheck280

vector.memcheck280:                               ; preds = %iter.check298
  %i.hb = shl nsw i64 %i.gz, 1
  %i.hc = add i64 %i.hb, %.1127288
  %i.hd = sub i64 %i.hc, %.5134282
  %diff.check283 = icmp ugt i64 %i.hd, -32
  br i1 %diff.check283, label %.lr.ph.preheader, label %vector.main.loop.iter.check286

vector.main.loop.iter.check286:                   ; preds = %vector.memcheck280
  %min.iters.check287 = icmp ult i64 %i.ha, 16
  br i1 %min.iters.check287, label %vec.epilog.ph302, label %vector.ph288

vector.ph288:                                     ; preds = %vector.main.loop.iter.check286
  %i.he = and i64 %i.ha, 12
  %n.vec289 = and i64 %i.ha, -16                  ; 5 uses
  %i.hf = add nsw i64 %n.vec289, %i.gz
  %i.hg = shl nsw i64 %n.vec289, 1
  %i.hh = getelementptr i8, ptr %.5134, i64 %i.hg ; 2 uses
  %invariant.gep336 = getelementptr [2 x i8], ptr %.1127, i64 %i.gz
  br label %vector.body290

vector.body290:                                   ; preds = %vector.ph288, %vector.body290
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next295, %vector.body290 ] ; 3 uses
  %i.hi = shl i64 %index291, 1
  %next.gep292 = getelementptr i8, ptr %.5134, i64 %i.hi ; 2 uses
  %gep337 = getelementptr [2 x i8], ptr %invariant.gep336, i64 %index291 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %gep337, i64 16
  %wide.load293 = load <8 x i16>, ptr %gep337, align 2, !tbaa !11
  %wide.load294 = load <8 x i16>, ptr %i.hj, align 2, !tbaa !11
  %i.hk = getelementptr i8, ptr %next.gep292, i64 16
  store <8 x i16> %wide.load293, ptr %next.gep292, align 2, !tbaa !11
  store <8 x i16> %wide.load294, ptr %i.hk, align 2, !tbaa !11
  %index.next295 = add nuw i64 %index291, 16      ; 2 uses
  %i.hl = icmp eq i64 %index.next295, %n.vec289
  br i1 %i.hl, label %middle.block296, label %vector.body290, !llvm.loop !27

middle.block296:                                  ; preds = %vector.body290
  %cmp.n297 = icmp eq i64 %i.ha, %n.vec289
  br i1 %cmp.n297, label %.loopexit, label %vec.epilog.iter.check299

vec.epilog.iter.check299:                         ; preds = %middle.block296
  %min.epilog.iters.check301 = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check301, label %.lr.ph.preheader, label %vec.epilog.ph302, !prof !15

vec.epilog.ph302:                                 ; preds = %vector.main.loop.iter.check286, %vec.epilog.iter.check299
  %vec.epilog.resume.val303 = phi i64 [ %n.vec289, %vec.epilog.iter.check299 ], [ 0, %vector.main.loop.iter.check286 ]
  %n.vec304 = and i64 %i.ha, -4                   ; 4 uses
  %i.hm = add nsw i64 %n.vec304, %i.gz
  %i.hn = shl nsw i64 %n.vec304, 1
  %i.ho = getelementptr i8, ptr %.5134, i64 %i.hn ; 2 uses
  %invariant.gep338 = getelementptr [2 x i8], ptr %.1127, i64 %i.gz
  br label %vec.epilog.vector.body305

vec.epilog.vector.body305:                        ; preds = %vec.epilog.vector.body305, %vec.epilog.ph302
  %index306 = phi i64 [ %vec.epilog.resume.val303, %vec.epilog.ph302 ], [ %index.next309, %vec.epilog.vector.body305 ] ; 3 uses
  %i.hp = shl i64 %index306, 1
  %next.gep307 = getelementptr i8, ptr %.5134, i64 %i.hp
  %gep339 = getelementptr [2 x i8], ptr %invariant.gep338, i64 %index306
  %wide.load308 = load <4 x i16>, ptr %gep339, align 2, !tbaa !11
  store <4 x i16> %wide.load308, ptr %next.gep307, align 2, !tbaa !11
  %index.next309 = add nuw i64 %index306, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next309, %n.vec304
  br i1 %i.hq, label %vec.epilog.middle.block310, label %vec.epilog.vector.body305, !llvm.loop !28

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body305
  %cmp.n311 = icmp eq i64 %i.ha, %n.vec304
  br i1 %cmp.n311, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check298, %vector.memcheck280, %vec.epilog.iter.check299, %vec.epilog.middle.block310
  %indvars.iv205.ph = phi i64 [ %i.gz, %iter.check298 ], [ %i.gz, %vector.memcheck280 ], [ %i.hf, %vec.epilog.iter.check299 ], [ %i.hm, %vec.epilog.middle.block310 ] ; 4 uses
  %.6135194.ph = phi ptr [ %.5134, %iter.check298 ], [ %.5134, %vector.memcheck280 ], [ %i.hh, %vec.epilog.iter.check299 ], [ %i.ho, %vec.epilog.middle.block310 ] ; 2 uses
  %i.hr = sub nsw i64 %wide.trip.count, %indvars.iv205.ph
  %xtraiter = and i64 %i.hr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv205.prol = phi i64 [ %indvars.iv.next206.prol, %.lr.ph.prol ], [ %indvars.iv205.ph, %.lr.ph.preheader ] ; 2 uses
  %.6135194.prol = phi ptr [ %i.hu, %.lr.ph.prol ], [ %.6135194.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next206.prol = add nsw i64 %indvars.iv205.prol, 1 ; 2 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %.1127, i64 %indvars.iv205.prol
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !11
  %i.hu = getelementptr inbounds nuw i8, ptr %.6135194.prol, i64 2 ; 3 uses
  store i16 %i.ht, ptr %.6135194.prol, align 2, !tbaa !11
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.hu, %.lr.ph.prol ]
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %.lr.ph.preheader ], [ %indvars.iv.next206.prol, %.lr.ph.prol ]
  %.6135194.unr = phi ptr [ %.6135194.ph, %.lr.ph.preheader ], [ %i.hu, %.lr.ph.prol ]
  %i.hv = sub nsw i64 %indvars.iv205.ph, %wide.trip.count
  %i.hw = icmp ugt i64 %i.hv, -8
  br i1 %i.hw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.7, %.lr.ph ], [ %indvars.iv205.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.6135194 = phi ptr [ %i.jb, %.lr.ph ], [ %.6135194.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.hx = getelementptr inbounds [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !11
  %i.hz = getelementptr inbounds nuw i8, ptr %.6135194, i64 2
  store i16 %i.hy, ptr %.6135194, align 2, !tbaa !11
  %i.ia = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.ib = getelementptr i8, ptr %i.ia, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !11
  %i.id = getelementptr inbounds nuw i8, ptr %.6135194, i64 4
  store i16 %i.ic, ptr %i.hz, align 2, !tbaa !11
  %i.ie = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.if = getelementptr i8, ptr %i.ie, i64 4
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !11
  %i.ih = getelementptr inbounds nuw i8, ptr %.6135194, i64 6
  store i16 %i.ig, ptr %i.id, align 2, !tbaa !11
  %i.ii = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.ij = getelementptr i8, ptr %i.ii, i64 6
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !11
  %i.il = getelementptr inbounds nuw i8, ptr %.6135194, i64 8
  store i16 %i.ik, ptr %i.ih, align 2, !tbaa !11
  %i.im = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %i.io = load i16, ptr %i.in, align 2, !tbaa !11
  %i.ip = getelementptr inbounds nuw i8, ptr %.6135194, i64 10
  store i16 %i.io, ptr %i.il, align 2, !tbaa !11
  %i.iq = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.ir = getelementptr i8, ptr %i.iq, i64 10
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !11
  %i.it = getelementptr inbounds nuw i8, ptr %.6135194, i64 12
  store i16 %i.is, ptr %i.ip, align 2, !tbaa !11
  %i.iu = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.iv = getelementptr i8, ptr %i.iu, i64 12
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !11
  %i.ix = getelementptr inbounds nuw i8, ptr %.6135194, i64 14
  store i16 %i.iw, ptr %i.it, align 2, !tbaa !11
  %indvars.iv.next206.7 = add nsw i64 %indvars.iv205, 8 ; 2 uses
  %i.iy = getelementptr [2 x i8], ptr %.1127, i64 %indvars.iv205
  %i.iz = getelementptr i8, ptr %i.iy, i64 14
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !11
  %i.jb = getelementptr inbounds nuw i8, ptr %.6135194, i64 16 ; 2 uses
  store i16 %i.ja, ptr %i.ix, align 2, !tbaa !11
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next206.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block296, %vec.epilog.middle.block310, %bb.z, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.t
  %.7136 = phi ptr [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.4133, %bb.t ], [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.4133, %switch.early.test ], [ %.5134, %bb.z ], [ %i.ho, %vec.epilog.middle.block310 ], [ %i.hh, %middle.block296 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.jb, %.lr.ph ]
  %i.jc = icmp sgt i32 %.12, 0
  br i1 %i.jc, label %bb.k, label %.loopexit186, !llvm.loop !31

.loopexit186.sink.split:                          ; preds = %bb.j, %bb.d, %bb.b
  %.0125.ph = phi i32 [ %1, %bb.d ], [ %1, %bb.b ], [ %.2124, %bb.j ]
  store i32 15, ptr %5, align 4, !tbaa !9
  br label %.loopexit186

.loopexit186:                                     ; preds = %.loopexit316, %.loopexit315, %.loopexit, %.loopexit186.sink.split
  %.0125 = phi i32 [ %.0125.ph, %.loopexit186.sink.split ], [ %1, %.loopexit315 ], [ %.2124, %.loopexit ], [ %1, %.loopexit316 ]
  ret i32 %.0125
}

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i32 @ubidi_writeReordered_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = icmp eq ptr %4, null
  br i1 %i.c, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !9
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.bv

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52   ; 2 uses
  %i.l = or i32 %i.k, %2
  %or.cond.not = icmp sgt i32 %i.l, -1
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %2, 0
  %i.n = icmp eq ptr %1, null                     ; 2 uses
  %or.cond3 = and i1 %i.n, %i.m
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !9
  br label %bb.bv
end_hunk_0
