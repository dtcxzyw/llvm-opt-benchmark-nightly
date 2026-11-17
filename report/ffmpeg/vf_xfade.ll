Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_xfade?download=true
inline.NumInlined: 179
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 54
begin_hunk_0_@rectcrop16_transition:bb.a
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert142 = insertelement <4 x i16> poison, i16 %i.bz, i64 0
  %broadcast.splat143 = shufflevector <4 x i16> %broadcast.splatinsert142, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge77.split83:                            ; preds = %._crit_edge
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count129
  br i1 %exitcond110.not, label %._crit_edge87.split, label %.lr.ph76, !llvm.loop !214

.lr.ph:                                           ; preds = %.lr.ph76, %._crit_edge
  %indvars.iv101 = phi i64 [ %i.y, %.lr.ph76 ], [ %indvars.iv.next102, %._crit_edge ] ; 3 uses
  %.06172 = phi ptr [ %i.cg, %.lr.ph76 ], [ %i.dr, %._crit_edge ] ; 7 uses
  %i.co = mul nsw i64 %indvars.iv101, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.ci, i64 %i.co ; 3 uses
  %i.cq = trunc nsw i64 %indvars.iv101 to i32
  %i.cr = add i32 %.neg67, %i.cq
  %i.cs = tail call i32 @llvm.abs.i32(i32 %i.cr, i1 true)
  %i.ct = icmp slt i32 %i.cs, %i.k
  %cond.fr = freeze i1 %i.ct
  br i1 %cond.fr, label %.lr.ph.split.us.preheader, label %iter.check

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.aa, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us

iter.check:                                       ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.cu, align 2, !tbaa !59
  store <8 x i16> %broadcast.splat, ptr %i.cv, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %index144
  store <4 x i16> %broadcast.splat143, ptr %i.cx, align 2, !tbaa !59
  %index.next145 = add nuw i64 %index144, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next145, %n.vec141
  br i1 %i.cy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n146, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec141, %vec.epilog.middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.thread.us.1
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.thread.us.1 ], [ 0, %.lr.ph.split.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.thread.us.1 ], [ 0, %.lr.ph.split.us.preheader ]
  %i.cz = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.da = add i32 %.neg, %i.cz
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true)
  %i.dc = icmp slt i32 %i.db, %i.n
  br i1 %i.dc, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %.in.in.us = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv96
  %.in.us = load i16, ptr %.in.in.us, align 2, !tbaa !59
  br label %.thread.us

.thread.us:                                       ; preds = %.lr.ph.split.us, %bb.e
  %i.dd = phi i16 [ %.in.us, %bb.e ], [ %i.bz, %.lr.ph.split.us ]
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %indvars.iv96
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !59
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 3 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next97 to i32
  %i.dg = add i32 %.neg, %i.df
  %i.dh = tail call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = icmp slt i32 %i.dh, %i.n
  br i1 %i.di, label %bb.f, label %.thread.us.1

bb.f:                                             ; preds = %.thread.us
  %.in.in.us.1 = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.next97
  %.in.us.1 = load i16, ptr %.in.in.us.1, align 2, !tbaa !59
  br label %.thread.us.1

.thread.us.1:                                     ; preds = %bb.f, %.thread.us
  %i.dj = phi i16 [ %.in.us.1, %bb.f ], [ %i.bz, %.thread.us ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %indvars.iv.next97
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !59
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !212

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.thread.us.1
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv96.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next97.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.dl = trunc nuw nsw i64 %indvars.iv96.epil.init to i32
  %i.dm = add i32 %.neg, %i.dl
  %i.dn = tail call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.do = icmp slt i32 %i.dn, %i.n
  br i1 %i.do, label %bb.g, label %.thread.us.epil

bb.g:                                             ; preds = %.lr.ph.split.us.epil.preheader
  %.in.in.us.epil = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv96.epil.init
  %.in.us.epil = load i16, ptr %.in.in.us.epil, align 2, !tbaa !59
  br label %.thread.us.epil

.thread.us.epil:                                  ; preds = %bb.g, %.lr.ph.split.us.epil.preheader
  %i.dp = phi i16 [ %.in.us.epil, %bb.g ], [ %i.bz, %.lr.ph.split.us.epil.preheader ]
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %indvars.iv96.epil.init
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.thread.us.epil, %._crit_edge.loopexit.unr-lcssa, %middle.block, %vec.epilog.middle.block
  %i.dr = getelementptr inbounds [2 x i8], ptr %.06172, i64 %i.cm
  %indvars.iv.next102 = add nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count124
  br i1 %exitcond105.not, label %._crit_edge77.split83, label %.lr.ph, !llvm.loop !213

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %indvars.iv
  store i16 %i.bz, ptr %i.ds, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count114
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !217
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @distance8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = icmp slt i32 %5, %6
  br i1 %i.h, label %.preheader69.lr.ph, label %._crit_edge79.split

.preheader69.lr.ph:                               ; preds = %bb.a
  %i.i = icmp sgt i32 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = fsub nsz float 1.000000e+00, %4
  br i1 %i.i, label %.preheader69.preheader, label %._crit_edge79.split

.preheader69.preheader:                           ; preds = %.preheader69.lr.ph
  %.pre.pre = load i32, ptr %i.j, align 8, !tbaa !56
  %wide.trip.count87 = zext nneg i32 %i.d to i64
  %i.o = insertelement <2 x float> poison, float %i.g, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader69

.preheader69:                                     ; preds = %.preheader69.preheader, %._crit_edge77
  %.pre = phi i32 [ %.pre90, %._crit_edge77 ], [ %.pre.pre, %.preheader69.preheader ] ; 2 uses
  %.06578 = phi i32 [ %i.s, %._crit_edge77 ], [ %5, %.preheader69.preheader ] ; 6 uses
  br label %.preheader

._crit_edge79.split:                              ; preds = %._crit_edge77, %.preheader69.lr.ph, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader69, %._crit_edge75
  %.pre91 = phi i32 [ %.pre, %.preheader69 ], [ %.pre90, %._crit_edge75 ]
  %i.q = phi i32 [ %.pre, %.preheader69 ], [ %i.av, %._crit_edge75 ] ; 3 uses
  %indvars.iv84 = phi i64 [ 0, %.preheader69 ], [ %indvars.iv.next85, %._crit_edge75 ] ; 6 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge75

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %bb.b

._crit_edge77:                                    ; preds = %._crit_edge75
  %i.s = add nsw i32 %.06578, 1                   ; 2 uses
  %exitcond89.not = icmp eq i32 %i.s, %6
  br i1 %exitcond89.not, label %._crit_edge79.split, label %.preheader69, !llvm.loop !218

.lr.ph74:                                         ; preds = %bb.b
  %i.t = tail call nsz float @llvm.sqrt.f32(float %i.au)
  %i.u = fcmp nsz ole float %i.t, %4
  %i.v = uitofp i1 %i.u to float                  ; 2 uses
  %i.w = fsub nnan nsz float 1.000000e+00, %i.v
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.06770 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.au, %bb.b ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = mul nsw i32 %i.aa, %.06578
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29
  %i.ai = mul nsw i32 %i.ah, %.06578
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv84
  %i.am = load i8, ptr %i.al, align 1, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv84
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !65
  %i.ap = insertelement <2 x i8> poison, i8 %i.am, i64 0
  %i.aq = insertelement <2 x i8> %i.ap, i8 %i.ao, i64 1
  %i.ar = uitofp <2 x i8> %i.aq to <2 x float>
  %i.as = fdiv nsz <2 x float> %i.ar, %i.p        ; 2 uses
  %shift = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %i.as, %shift
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.au = tail call nsz float @llvm.fmuladd.f32(float %i.at, float %i.at, float %.06770) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph74, label %bb.b, !llvm.loop !219

._crit_edge75:                                    ; preds = %bb.c, %.preheader
  %.pre90 = phi i32 [ %.pre91, %.preheader ], [ %i.cd, %bb.c ] ; 2 uses
  %i.av = phi i32 [ %i.q, %.preheader ], [ %i.cd, %bb.c ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge77, label %.preheader, !llvm.loop !220

bb.c:                                             ; preds = %.lr.ph74, %bb.c
  %indvars.iv81 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next82, %bb.c ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv81
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv81
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.ba = mul nsw i32 %i.az, %.06578
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv81
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv81
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = mul nsw i32 %i.bg, %.06578
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv81
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv81
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bo = mul nsw i32 %i.bn, %.06578
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv84
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !65
  %i.bt = uitofp nsz i8 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv84
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !65
  %i.bw = uitofp nsz i8 %i.bv to float            ; 2 uses
  %i.bx = fmul nsz float %i.w, %i.bw
  %i.by = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bt, float %i.v, float %i.bx)
  %i.bz = fmul nsz float %i.n, %i.bw
  %i.ca = tail call nsz noundef float @llvm.fmuladd.f32(float %i.by, float %4, float %i.bz)
  %i.cb = fptoui float %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv84
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !65
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.cd = load i32, ptr %i.j, align 8, !tbaa !56  ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next82, %i.ce
  br i1 %i.cf, label %bb.c, label %._crit_edge75, !llvm.loop !221
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @distance16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = icmp slt i32 %5, %6
  br i1 %i.h, label %.preheader69.lr.ph, label %._crit_edge82

.preheader69.lr.ph:                               ; preds = %bb.a
  %i.i = icmp sgt i32 %i.d, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = fsub nsz float 1.000000e+00, %4
  br i1 %i.i, label %.preheader69.lr.ph.split.us, label %._crit_edge82

.preheader69.lr.ph.split.us:                      ; preds = %.preheader69.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader69.lr.ph.split.us.split.us, label %._crit_edge82

.preheader69.lr.ph.split.us.split.us:             ; preds = %.preheader69.lr.ph.split.us
  %wide.trip.count100 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.g, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader69.us.us.us

.preheader69.us.us.us:                            ; preds = %._crit_edge78.split.us.us.us.split.us.us, %.preheader69.lr.ph.split.us.split.us
  %.06579.us.us.us = phi i32 [ %5, %.preheader69.lr.ph.split.us.split.us ], [ %i.cb, %._crit_edge78.split.us.us.us.split.us.us ] ; 6 uses
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge76.us.us.us.us.us, %.preheader69.us.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %._crit_edge76.us.us.us.us.us ], [ 0, %.preheader69.us.us.us ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us.us.us.us ] ; 5 uses
  %.06770.us.us.us.us.us = phi float [ %i.ap, %bb.b ], [ 0.000000e+00, %.preheader.us.us.us.us.us ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = mul nsw i32 %i.v, %.06579.us.us.us
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %.06579.us.us.us
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv97
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !59
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv97
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !59
  %i.ak = insertelement <2 x i16> poison, i16 %i.ah, i64 0
  %i.al = insertelement <2 x i16> %i.ak, i16 %i.aj, i64 1
  %i.am = uitofp <2 x i16> %i.al to <2 x float>
  %i.an = fdiv nsz <2 x float> %i.am, %i.r        ; 2 uses
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x float> %i.an, %shift
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ap = tail call nsz float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %.06770.us.us.us.us.us) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us, label %bb.b, !llvm.loop !222

._crit_edge.us.us.us.us.us:                       ; preds = %bb.b
  %i.aq = tail call nsz float @llvm.sqrt.f32(float %i.ap)
  %i.ar = fcmp nsz ole float %i.aq, %4
  %i.as = uitofp i1 %i.ar to float                ; 2 uses
  %i.at = fsub nnan nsz float 1.000000e+00, %i.as
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge.us.us.us.us.us
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.c ], [ 0, %._crit_edge.us.us.us.us.us ] ; 7 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv92
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv92
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = mul nsw i32 %i.ax, %.06579.us.us.us
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv92
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv92
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = mul nsw i32 %i.be, %.06579.us.us.us
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv92
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29
  %i.bm = mul nsw i32 %i.bl, %.06579.us.us.us
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv97
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !59
  %i.br = uitofp nsz i16 %i.bq to float
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv97
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !59
  %i.bu = uitofp nsz i16 %i.bt to float           ; 2 uses
  %i.bv = fmul nsz float %i.at, %i.bu
  %i.bw = tail call nsz noundef float @llvm.fmuladd.f32(float %i.br, float %i.as, float %i.bv)
  %i.bx = fmul nsz float %i.m, %i.bu
  %i.by = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bw, float %4, float %i.bx)
  %i.bz = fptoui float %i.by to i16
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv97
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !59
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count
  br i1 %exitcond96.not, label %._crit_edge76.us.us.us.us.us, label %bb.c, !llvm.loop !223

._crit_edge76.us.us.us.us.us:                     ; preds = %bb.c
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge78.split.us.us.us.split.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !224

._crit_edge78.split.us.us.us.split.us.us:         ; preds = %._crit_edge76.us.us.us.us.us
  %i.cb = add nsw i32 %.06579.us.us.us, 1         ; 2 uses
  %exitcond102.not = icmp eq i32 %i.cb, %6
  br i1 %exitcond102.not, label %._crit_edge82, label %.preheader69.us.us.us, !llvm.loop !225

._crit_edge82:                                    ; preds = %._crit_edge78.split.us.us.us.split.us.us, %.preheader69.lr.ph, %.preheader69.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fadeblack8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge63.split

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.m = icmp slt i32 %i.c, 1
  %i.n = icmp slt i32 %i.e, 1
  %i.o = insertelement <2 x float> poison, float %4, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fadd nsz <2 x float> %i.p, <float -2.000000e-01, float -8.000000e-01>
  %i.r = fdiv nsz <2 x float> %i.q, <float 8.000000e-01, float f0x3E4CCCCC> ; 2 uses
  %i.s = fcmp nsz ogt <2 x float> %i.r, zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x float> %i.r, <2 x float> zeroinitializer ; 2 uses
  %i.u = fcmp nsz ogt <2 x float> %i.t, splat (float 1.000000e+00)
  %i.v = select <2 x i1> %i.u, <2 x float> splat (float 1.000000e+00), <2 x float> %i.t ; 3 uses
  %i.w = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 3.000000e+00)) ; 2 uses
  %i.x = fmul nsz <2 x float> %i.v, %i.v          ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.x, %i.w ; 3 uses
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.z = fsub nsz float 1.000000e+00, %i.y
  %foldExtExtBinop116 = fmul nsz <2 x float> %i.x, %i.w ; 3 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop116, i64 0 ; 2 uses
  %i.ab = fsub nsz float 1.000000e+00, %i.aa      ; 3 uses
  %i.ac = fsub nsz float 1.000000e+00, %4         ; 3 uses
  %brmerge = select i1 %i.m, i1 true, i1 %i.n
  br i1 %brmerge, label %._crit_edge63.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check81 = icmp ult i32 %i.e, 16
  %i.ad = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splat = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert84 = insertelement <16 x float> poison, float %i.ab, i64 0
  %broadcast.splat85 = shufflevector <16 x float> %broadcast.splatinsert84, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat89 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <16 x float> poison, float %i.ac, i64 0
  %broadcast.splat91 = shufflevector <16 x float> %broadcast.splatinsert90, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <16 x float> poison, float %4, i64 0
  %broadcast.splat93 = shufflevector <16 x float> %broadcast.splatinsert92, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec95 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splat97 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert100 = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat101 = shufflevector <4 x float> %broadcast.splatinsert100, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat105 = shufflevector <2 x float> %foldExtExtBinop116, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat107 = shufflevector <4 x float> %broadcast.splatinsert106, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat109 = shufflevector <4 x float> %broadcast.splatinsert108, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n114 = icmp eq i64 %n.vec95, %wide.trip.count
  br label %.preheader.lr.ph

._crit_edge63.split:                              ; preds = %._crit_edge60, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge60
  %indvars.iv68 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next69, %._crit_edge60 ] ; 8 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv68
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv68 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !29
  %i.ai = mul nsw i32 %i.ah, %5
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv68
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv68 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = mul nsw i32 %i.ao, %5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv68
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv68 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = mul nsw i32 %i.av, %5
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv68
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !59
  %i.bb = uitofp i16 %i.ba to float               ; 4 uses
  %i.bc = fmul nsz float %i.z, %i.bb              ; 3 uses
  %broadcast.splatinsert82 = insertelement <16 x float> poison, float %i.bc, i64 0
  %broadcast.splat83 = shufflevector <16 x float> %broadcast.splatinsert82, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <16 x float> poison, float %i.bb, i64 0
  %broadcast.splat87 = shufflevector <16 x float> %broadcast.splatinsert86, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert98 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat99 = shufflevector <4 x float> %broadcast.splatinsert98, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat103 = shufflevector <4 x float> %broadcast.splatinsert102, <4 x float> poison, <4 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04959 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cp, %._crit_edge ]
  %.05058 = phi ptr [ %i.ay, %.preheader.lr.ph ], [ %i.ci, %._crit_edge ] ; 5 uses
  %.05157 = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %i.co, %._crit_edge ] ; 5 uses
  %.05256 = phi ptr [ %i.ak, %.preheader.lr.ph ], [ %i.cl, %._crit_edge ] ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0505879 = ptrtoaddr ptr %.05058 to i64        ; 2 uses
  %.0525678 = ptrtoaddr ptr %.05256 to i64
  %.0515777 = ptrtoaddr ptr %.05157 to i64
  %i.bd = sub i64 %.0525678, %.0505879
  %diff.check = icmp ugt i64 %i.bd, -16
  %i.be = sub i64 %.0515777, %.0505879
  %diff.check80 = icmp ugt i64 %i.be, -16
  %conflict.rdx = or i1 %diff.check, %diff.check80
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05256, i64 %index
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !65
  %i.bg = uitofp <16 x i8> %wide.load to <16 x float>
  %i.bh = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.bg, <16 x float> %broadcast.splat, <16 x float> %broadcast.splat83)
  %i.bi = getelementptr inbounds nuw i8, ptr %.05157, i64 %index
  %wide.load94 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !65
  %i.bj = uitofp <16 x i8> %wide.load94 to <16 x float>
  %i.bk = fmul nsz <16 x float> %broadcast.splat85, %i.bj
  %i.bl = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %broadcast.splat87, <16 x float> %broadcast.splat89, <16 x float> %i.bk)
  %i.bm = fmul nsz <16 x float> %broadcast.splat91, %i.bl
  %i.bn = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.bh, <16 x float> %broadcast.splat93, <16 x float> %i.bm)
  %i.bo = fptoui <16 x float> %i.bn to <16 x i8>
  %i.bp = getelementptr inbounds nuw i8, ptr %.05058, i64 %index
  store <16 x i8> %i.bo, ptr %i.bp, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05256, i64 %index110
  %wide.load111 = load <4 x i8>, ptr %i.br, align 1, !tbaa !65
  %i.bs = uitofp <4 x i8> %wide.load111 to <4 x float>
  %i.bt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %broadcast.splat97, <4 x float> %broadcast.splat99)
  %i.bu = getelementptr inbounds nuw i8, ptr %.05157, i64 %index110
  %wide.load112 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !65
  %i.bv = uitofp <4 x i8> %wide.load112 to <4 x float>
  %i.bw = fmul nsz <4 x float> %broadcast.splat101, %i.bv
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat103, <4 x float> %broadcast.splat105, <4 x float> %i.bw)
  %i.by = fmul nsz <4 x float> %broadcast.splat107, %i.bx
  %i.bz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %broadcast.splat109, <4 x float> %i.by)
  %i.ca = fptoui <4 x float> %i.bz to <4 x i8>
  %i.cb = getelementptr inbounds nuw i8, ptr %.05058, i64 %index110
  store <4 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !65
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
end_hunk_0
begin_hunk_1_@diagbr8_transition:bb.a
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = mul nsw i32 %i.bc, %.04449
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv55
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !65
  %i.bi = uitofp nsz i8 %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv55
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !65
  %i.bl = uitofp nsz i8 %i.bk to float
  %i.bm = fmul nsz float %i.ak, %i.bl
  %i.bn = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bi, float %i.aj, float %i.bm)
  %i.bo = fptoui float %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv55
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !358
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @diagbr16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70
  %i.j = sitofp nsz i32 %i.i to float             ; 2 uses
  %i.k = icmp slt i32 %5, %6
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge51.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = icmp slt i32 %i.f, 1
  %i.m = fadd nnan nsz float %i.g, -1.000000e+00
  %i.n = fadd nnan nsz float %i.j, -1.000000e+00
  %i.o = fneg nsz float %4
  %i.p = icmp slt i32 %i.d, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.l, i1 true, i1 %i.p
  br i1 %brmerge, label %._crit_edge51.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count58 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge48
  %.04449 = phi i32 [ %i.v, %._crit_edge48 ], [ %5, %.preheader.preheader ] ; 5 uses
  %i.t = sitofp nsz i32 %.04449 to float
  %i.u = fsub nnan nsz float %i.n, %i.t
  br label %.lr.ph

._crit_edge51.split:                              ; preds = %._crit_edge48, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge48:                                    ; preds = %._crit_edge
  %i.v = add nsw i32 %.04449, 1                   ; 2 uses
  %exitcond60.not = icmp eq i32 %i.v, %6
  br i1 %exitcond60.not, label %._crit_edge51.split, label %.preheader, !llvm.loop !359

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv55 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next56, %._crit_edge ] ; 5 uses
  %i.w = trunc nuw nsw i64 %indvars.iv55 to i32
  %i.x = uitofp nsz nneg i32 %i.w to float
  %i.y = fsub nnan nsz float %i.m, %i.x
  %i.z = fdiv nsz float %i.y, %i.g
  %i.aa = fmul nsz float %i.u, %i.z
  %i.ab = fdiv nsz float %i.aa, %i.j
  %i.ac = fadd nsz float %i.ab, 1.000000e+00
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float %i.ac) ; 2 uses
  %i.ae = fcmp nsz ogt float %i.ad, 0.000000e+00
  %i.af = select nsz i1 %i.ae, float %i.ad, float 0.000000e+00 ; 2 uses
  %i.ag = fcmp nsz ogt float %i.af, 1.000000e+00
  %..i.i = select nsz i1 %i.ag, float 1.000000e+00, float %i.af ; 3 uses
  %i.ah = fmul nsz float %..i.i, %..i.i
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.aj = fmul nsz float %i.ah, %i.ai             ; 2 uses
  %i.ak = fsub nsz float 1.000000e+00, %i.aj
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge48, label %.lr.ph, !llvm.loop !360

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = mul nsw i32 %i.ao, %.04449
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = mul nsw i32 %i.av, %.04449
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = mul nsw i32 %i.bc, %.04449
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %indvars.iv55
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !59
  %i.bi = uitofp nsz i16 %i.bh to float
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv55
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !59
  %i.bl = uitofp nsz i16 %i.bk to float
  %i.bm = fmul nsz float %i.ak, %i.bl
  %i.bn = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bi, float %i.aj, float %i.bm)
  %i.bo = fptoui float %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv55
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !361
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @hlslice8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = icmp slt i32 %5, %6
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge49.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = icmp slt i32 %i.f, 1
  %i.j = fneg nsz float %4
  %i.k = icmp slt i32 %i.d, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.i, i1 true, i1 %i.k
  br i1 %brmerge, label %._crit_edge49.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count56 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.o = insertelement <2 x float> poison, float %i.g, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge46
  %.04247 = phi i32 [ %i.q, %._crit_edge46 ], [ %5, %.preheader.preheader ] ; 4 uses
  br label %.lr.ph

._crit_edge49.split:                              ; preds = %._crit_edge46, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge46:                                    ; preds = %._crit_edge
  %i.q = add nsw i32 %.04247, 1                   ; 2 uses
  %exitcond58.not = icmp eq i32 %i.q, %6
  br i1 %exitcond58.not, label %._crit_edge49.split, label %.preheader, !llvm.loop !362

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next54, %._crit_edge ] ; 5 uses
  %i.r = trunc nuw nsw i64 %indvars.iv53 to i32
  %i.s = uitofp nsz nneg i32 %i.r to float
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul nnan nsz <2 x float> %i.u, <float 1.000000e+00, float 1.000000e+01>
  %i.w = fdiv nsz <2 x float> %i.v, %i.p          ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.j, float 1.500000e+00, float %i.x)
  %i.z = fadd nsz float %i.y, 5.000000e-01
  %i.aa = fmul nsz float %i.z, 2.000000e+00       ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nsz float %..i.i, %..i.i
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af
  %i.ah = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ai = tail call nsz float @llvm.floor.f32(float %i.ah)
  %i.aj = fsub nsz float %i.ah, %i.ai
  %i.ak = fcmp nsz ole float %i.ag, %i.aj
  %i.al = select nsz i1 %i.ak, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.am = fsub nnan nsz float 1.000000e+00, %i.al
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !363

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %.04247
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = mul nsw i32 %i.ax, %.04247
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = mul nsw i32 %i.be, %.04247
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv53
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !65
  %i.bk = uitofp nsz i8 %i.bj to float
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv53
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !65
  %i.bn = uitofp nsz i8 %i.bm to float
  %i.bo = fmul nsz float %i.am, %i.bn
  %i.bp = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bk, float %i.al, float %i.bo)
  %i.bq = fptoui float %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv53
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !364
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @hlslice16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float
  %i.h = icmp slt i32 %5, %6
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge49.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = icmp slt i32 %i.f, 1
  %i.j = fneg nsz float %4
  %i.k = icmp slt i32 %i.d, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.i, i1 true, i1 %i.k
  br i1 %brmerge, label %._crit_edge49.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count56 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.o = insertelement <2 x float> poison, float %i.g, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge46
  %.04247 = phi i32 [ %i.q, %._crit_edge46 ], [ %5, %.preheader.preheader ] ; 4 uses
  br label %.lr.ph

._crit_edge49.split:                              ; preds = %._crit_edge46, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge46:                                    ; preds = %._crit_edge
  %i.q = add nsw i32 %.04247, 1                   ; 2 uses
  %exitcond58.not = icmp eq i32 %i.q, %6
  br i1 %exitcond58.not, label %._crit_edge49.split, label %.preheader, !llvm.loop !365

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next54, %._crit_edge ] ; 5 uses
  %i.r = trunc nuw nsw i64 %indvars.iv53 to i32
  %i.s = uitofp nsz nneg i32 %i.r to float
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul nnan nsz <2 x float> %i.u, <float 1.000000e+00, float 1.000000e+01>
  %i.w = fdiv nsz <2 x float> %i.v, %i.p          ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.j, float 1.500000e+00, float %i.x)
  %i.z = fadd nsz float %i.y, 5.000000e-01
  %i.aa = fmul nsz float %i.z, 2.000000e+00       ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nsz float %..i.i, %..i.i
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af
  %i.ah = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ai = tail call nsz float @llvm.floor.f32(float %i.ah)
  %i.aj = fsub nsz float %i.ah, %i.ai
  %i.ak = fcmp nsz ole float %i.ag, %i.aj
  %i.al = select nsz i1 %i.ak, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.am = fsub nnan nsz float 1.000000e+00, %i.al
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !366

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %.04247
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ay = mul nsw i32 %i.ax, %.04247
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = mul nsw i32 %i.be, %.04247
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv53
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !59
  %i.bk = uitofp nsz i16 %i.bj to float
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv53
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !59
  %i.bn = uitofp nsz i16 %i.bm to float
  %i.bo = fmul nsz float %i.am, %i.bn
  %i.bp = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bk, float %i.al, float %i.bo)
  %i.bq = fptoui float %i.bp to i16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv53
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !367
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @hrslice8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float             ; 2 uses
  %i.h = icmp slt i32 %5, %6
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = icmp slt i32 %i.f, 1
  %i.j = fadd nsz float %i.g, -1.000000e+00
  %i.k = fneg nsz float %4
  %i.l = icmp slt i32 %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.i, i1 true, i1 %i.l
  br i1 %brmerge, label %._crit_edge50.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count57 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge47
  %.04348 = phi i32 [ %i.p, %._crit_edge47 ], [ %5, %.preheader.preheader ] ; 4 uses
  br label %.lr.ph

._crit_edge50.split:                              ; preds = %._crit_edge47, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge47:                                    ; preds = %._crit_edge
  %i.p = add nsw i32 %.04348, 1                   ; 2 uses
  %exitcond59.not = icmp eq i32 %i.p, %6
  br i1 %exitcond59.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !368

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 5 uses
  %i.q = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.r = uitofp nsz nneg i32 %i.q to float
  %i.s = fsub nsz float %i.j, %i.r
  %i.t = fdiv nsz float %i.s, %i.g                ; 2 uses
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.k, float 1.500000e+00, float %i.t)
  %i.v = fadd nsz float %i.u, 5.000000e-01
  %i.w = fmul nsz float %i.v, 2.000000e+00        ; 2 uses
  %i.x = fcmp nsz ogt float %i.w, 0.000000e+00
  %i.y = select nsz i1 %i.x, float %i.w, float 0.000000e+00 ; 2 uses
  %i.z = fcmp nsz ogt float %i.y, 1.000000e+00
  %..i.i = select nsz i1 %i.z, float 1.000000e+00, float %i.y ; 3 uses
  %i.aa = fmul nsz float %..i.i, %..i.i
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ac = fmul nsz float %i.aa, %i.ab
  %i.ad = fmul nsz float %i.t, 1.000000e+01       ; 2 uses
  %i.ae = tail call nsz float @llvm.floor.f32(float %i.ad)
  %i.af = fsub nsz float %i.ad, %i.ae
  %i.ag = fcmp nsz ole float %i.ac, %i.af
  %i.ah = select nsz i1 %i.ag, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ai = fsub nnan nsz float 1.000000e+00, %i.ah
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge47, label %.lr.ph, !llvm.loop !369

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = mul nsw i32 %i.am, %.04348
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  %i.au = mul nsw i32 %i.at, %.04348
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !29
  %i.bb = mul nsw i32 %i.ba, %.04348
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv54
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !65
  %i.bg = uitofp nsz i8 %i.bf to float
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv54
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !65
  %i.bj = uitofp nsz i8 %i.bi to float
  %i.bk = fmul nsz float %i.ai, %i.bj
  %i.bl = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ah, float %i.bk)
  %i.bm = fptoui float %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv54
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !370
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @hrslice16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to float             ; 2 uses
  %i.h = icmp slt i32 %5, %6
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge50.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = icmp slt i32 %i.f, 1
  %i.j = fadd nsz float %i.g, -1.000000e+00
  %i.k = fneg nsz float %4
  %i.l = icmp slt i32 %i.d, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.i, i1 true, i1 %i.l
  br i1 %brmerge, label %._crit_edge50.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count57 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge47
  %.04348 = phi i32 [ %i.p, %._crit_edge47 ], [ %5, %.preheader.preheader ] ; 4 uses
  br label %.lr.ph

._crit_edge50.split:                              ; preds = %._crit_edge47, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge47:                                    ; preds = %._crit_edge
  %i.p = add nsw i32 %.04348, 1                   ; 2 uses
  %exitcond59.not = icmp eq i32 %i.p, %6
  br i1 %exitcond59.not, label %._crit_edge50.split, label %.preheader, !llvm.loop !371

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 5 uses
  %i.q = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.r = uitofp nsz nneg i32 %i.q to float
  %i.s = fsub nsz float %i.j, %i.r
  %i.t = fdiv nsz float %i.s, %i.g                ; 2 uses
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.k, float 1.500000e+00, float %i.t)
  %i.v = fadd nsz float %i.u, 5.000000e-01
  %i.w = fmul nsz float %i.v, 2.000000e+00        ; 2 uses
  %i.x = fcmp nsz ogt float %i.w, 0.000000e+00
  %i.y = select nsz i1 %i.x, float %i.w, float 0.000000e+00 ; 2 uses
  %i.z = fcmp nsz ogt float %i.y, 1.000000e+00
  %..i.i = select nsz i1 %i.z, float 1.000000e+00, float %i.y ; 3 uses
  %i.aa = fmul nsz float %..i.i, %..i.i
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ac = fmul nsz float %i.aa, %i.ab
  %i.ad = fmul nsz float %i.t, 1.000000e+01       ; 2 uses
  %i.ae = tail call nsz float @llvm.floor.f32(float %i.ad)
  %i.af = fsub nsz float %i.ad, %i.ae
  %i.ag = fcmp nsz ole float %i.ac, %i.af
  %i.ah = select nsz i1 %i.ag, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ai = fsub nnan nsz float 1.000000e+00, %i.ah
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge47, label %.lr.ph, !llvm.loop !372

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = mul nsw i32 %i.am, %.04348
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  %i.au = mul nsw i32 %i.at, %.04348
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !29
  %i.bb = mul nsw i32 %i.ba, %.04348
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv54
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !59
  %i.bg = uitofp nsz i16 %i.bf to float
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv54
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !59
  %i.bj = uitofp nsz i16 %i.bi to float
  %i.bk = fmul nsz float %i.ai, %i.bj
  %i.bl = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bg, float %i.ah, float %i.bk)
  %i.bm = fptoui float %i.bl to i16
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv54
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !373
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vuslice8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = sitofp nsz i32 %i.h to float
  %i.j = icmp slt i32 %5, %6
  br i1 %i.j, label %.lr.ph, label %._crit_edge49.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = fneg nsz float %4
  %i.l = icmp slt i32 %i.f, 1
  %i.m = icmp slt i32 %i.d, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.l, i1 true, i1 %i.m
  br i1 %brmerge, label %._crit_edge49.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count56 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.q = insertelement <2 x float> poison, float %i.i, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.lr.ph

._crit_edge49.split:                              ; preds = %._crit_edge45, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge45
  %.04246 = phi i32 [ %i.an, %._crit_edge45 ], [ %5, %.preheader.lr.ph.preheader ] ; 5 uses
  %i.s = sitofp nsz i32 %.04246 to float
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul nnan nsz <2 x float> %i.u, <float 1.000000e+00, float 1.000000e+01>
  %i.w = fdiv nsz <2 x float> %i.v, %i.r          ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.k, float 1.500000e+00, float %i.x)
  %i.z = fadd nsz float %i.y, 5.000000e-01
  %i.aa = fmul nsz float %i.z, 2.000000e+00       ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nsz float %..i.i, %..i.i
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af
  %i.ah = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ai = tail call nsz float @llvm.floor.f32(float %i.ah)
  %i.aj = fsub nsz float %i.ah, %i.ai
  %i.ak = fcmp nsz ole float %i.ag, %i.aj
  %i.al = select nsz i1 %i.ak, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.am = fsub nnan nsz float 1.000000e+00, %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next54, %._crit_edge ] ; 4 uses
  br label %bb.b

._crit_edge45:                                    ; preds = %._crit_edge
  %i.an = add nsw i32 %.04246, 1                  ; 2 uses
  %exitcond58.not = icmp eq i32 %i.an, %6
  br i1 %exitcond58.not, label %._crit_edge49.split, label %.preheader.lr.ph, !llvm.loop !374

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge45, label %.preheader, !llvm.loop !375

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.as = mul nsw i32 %i.ar, %.04246
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = mul nsw i32 %i.ay, %.04246
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = mul nsw i32 %i.bf, %.04246
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv53
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !65
  %i.bl = uitofp nsz i8 %i.bk to float
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv53
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !65
  %i.bo = uitofp nsz i8 %i.bn to float
  %i.bp = fmul nsz float %i.am, %i.bo
  %i.bq = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bl, float %i.al, float %i.bp)
  %i.br = fptoui float %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv53
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !376
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vuslice16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = sitofp nsz i32 %i.h to float
  %i.j = icmp slt i32 %5, %6
  br i1 %i.j, label %.lr.ph, label %._crit_edge49.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = fneg nsz float %4
  %i.l = icmp slt i32 %i.f, 1
  %i.m = icmp slt i32 %i.d, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.l, i1 true, i1 %i.m
  br i1 %brmerge, label %._crit_edge49.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count56 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  %i.q = insertelement <2 x float> poison, float %i.i, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.lr.ph

._crit_edge49.split:                              ; preds = %._crit_edge45, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge45
  %.04246 = phi i32 [ %i.an, %._crit_edge45 ], [ %5, %.preheader.lr.ph.preheader ] ; 5 uses
  %i.s = sitofp nsz i32 %.04246 to float
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul nnan nsz <2 x float> %i.u, <float 1.000000e+00, float 1.000000e+01>
  %i.w = fdiv nsz <2 x float> %i.v, %i.r          ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.k, float 1.500000e+00, float %i.x)
  %i.z = fadd nsz float %i.y, 5.000000e-01
  %i.aa = fmul nsz float %i.z, 2.000000e+00       ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nsz float %..i.i, %..i.i
  %i.af = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af
  %i.ah = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.ai = tail call nsz float @llvm.floor.f32(float %i.ah)
  %i.aj = fsub nsz float %i.ah, %i.ai
  %i.ak = fcmp nsz ole float %i.ag, %i.aj
  %i.al = select nsz i1 %i.ak, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.am = fsub nnan nsz float 1.000000e+00, %i.al
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next54, %._crit_edge ] ; 4 uses
  br label %bb.b

._crit_edge45:                                    ; preds = %._crit_edge
  %i.an = add nsw i32 %.04246, 1                  ; 2 uses
  %exitcond58.not = icmp eq i32 %i.an, %6
  br i1 %exitcond58.not, label %._crit_edge49.split, label %.preheader.lr.ph, !llvm.loop !377

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge45, label %.preheader, !llvm.loop !378

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.as = mul nsw i32 %i.ar, %.04246
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = mul nsw i32 %i.ay, %.04246
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = mul nsw i32 %i.bf, %.04246
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv53
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !59
  %i.bl = uitofp nsz i16 %i.bk to float
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv53
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !59
  %i.bo = uitofp nsz i16 %i.bn to float
  %i.bp = fmul nsz float %i.am, %i.bo
  %i.bq = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bl, float %i.al, float %i.bp)
  %i.br = fptoui float %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv53
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !379
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vdslice8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = sitofp nsz i32 %i.h to float             ; 2 uses
  %i.j = icmp slt i32 %5, %6
  br i1 %i.j, label %.lr.ph, label %._crit_edge50.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = fadd nsz float %i.i, -1.000000e+00
  %i.l = fneg nsz float %4
  %i.m = icmp slt i32 %i.f, 1
  %i.n = icmp slt i32 %i.d, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.m, i1 true, i1 %i.n
  br i1 %brmerge, label %._crit_edge50.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count57 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge50.split:                              ; preds = %._crit_edge46, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge46
  %.04347 = phi i32 [ %i.aj, %._crit_edge46 ], [ %5, %.preheader.lr.ph.preheader ] ; 5 uses
  %i.r = sitofp nsz i32 %.04347 to float
  %i.s = fsub nsz float %i.k, %i.r
  %i.t = fdiv nsz float %i.s, %i.i                ; 2 uses
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 1.500000e+00, float %i.t)
  %i.v = fadd nsz float %i.u, 5.000000e-01
  %i.w = fmul nsz float %i.v, 2.000000e+00        ; 2 uses
  %i.x = fcmp nsz ogt float %i.w, 0.000000e+00
  %i.y = select nsz i1 %i.x, float %i.w, float 0.000000e+00 ; 2 uses
  %i.z = fcmp nsz ogt float %i.y, 1.000000e+00
  %..i.i = select nsz i1 %i.z, float 1.000000e+00, float %i.y ; 3 uses
  %i.aa = fmul nsz float %..i.i, %..i.i
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ac = fmul nsz float %i.aa, %i.ab
  %i.ad = fmul nsz float %i.t, 1.000000e+01       ; 2 uses
  %i.ae = tail call nsz float @llvm.floor.f32(float %i.ad)
  %i.af = fsub nsz float %i.ad, %i.ae
  %i.ag = fcmp nsz ole float %i.ac, %i.af
  %i.ah = select nsz i1 %i.ag, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ai = fsub nnan nsz float 1.000000e+00, %i.ah
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next55, %._crit_edge ] ; 4 uses
  br label %bb.b

._crit_edge46:                                    ; preds = %._crit_edge
  %i.aj = add nsw i32 %.04347, 1                  ; 2 uses
  %exitcond59.not = icmp eq i32 %i.aj, %6
  br i1 %exitcond59.not, label %._crit_edge50.split, label %.preheader.lr.ph, !llvm.loop !380

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge46, label %.preheader, !llvm.loop !381

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  %i.ao = mul nsw i32 %i.an, %.04347
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = mul nsw i32 %i.au, %.04347
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = mul nsw i32 %i.bb, %.04347
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv54
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !65
  %i.bh = uitofp nsz i8 %i.bg to float
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv54
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !65
  %i.bk = uitofp nsz i8 %i.bj to float
  %i.bl = fmul nsz float %i.ai, %i.bk
  %i.bm = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bh, float %i.ah, float %i.bl)
  %i.bn = fptoui float %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv54
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !382
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @vdslice16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = sitofp nsz i32 %i.h to float             ; 2 uses
  %i.j = icmp slt i32 %5, %6
  br i1 %i.j, label %.lr.ph, label %._crit_edge50.split

.lr.ph:                                           ; preds = %bb.a
  %i.k = fadd nsz float %i.i, -1.000000e+00
  %i.l = fneg nsz float %4
  %i.m = icmp slt i32 %i.f, 1
  %i.n = icmp slt i32 %i.d, 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %brmerge = select i1 %i.m, i1 true, i1 %i.n
  br i1 %brmerge, label %._crit_edge50.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count57 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge50.split:                              ; preds = %._crit_edge46, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge46
  %.04347 = phi i32 [ %i.aj, %._crit_edge46 ], [ %5, %.preheader.lr.ph.preheader ] ; 5 uses
  %i.r = sitofp nsz i32 %.04347 to float
  %i.s = fsub nsz float %i.k, %i.r
  %i.t = fdiv nsz float %i.s, %i.i                ; 2 uses
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.l, float 1.500000e+00, float %i.t)
  %i.v = fadd nsz float %i.u, 5.000000e-01
  %i.w = fmul nsz float %i.v, 2.000000e+00        ; 2 uses
  %i.x = fcmp nsz ogt float %i.w, 0.000000e+00
  %i.y = select nsz i1 %i.x, float %i.w, float 0.000000e+00 ; 2 uses
  %i.z = fcmp nsz ogt float %i.y, 1.000000e+00
  %..i.i = select nsz i1 %i.z, float 1.000000e+00, float %i.y ; 3 uses
  %i.aa = fmul nsz float %..i.i, %..i.i
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.ac = fmul nsz float %i.aa, %i.ab
  %i.ad = fmul nsz float %i.t, 1.000000e+01       ; 2 uses
  %i.ae = tail call nsz float @llvm.floor.f32(float %i.ad)
  %i.af = fsub nsz float %i.ad, %i.ae
  %i.ag = fcmp nsz ole float %i.ac, %i.af
  %i.ah = select nsz i1 %i.ag, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ai = fsub nnan nsz float 1.000000e+00, %i.ah
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next55, %._crit_edge ] ; 4 uses
  br label %bb.b

._crit_edge46:                                    ; preds = %._crit_edge
  %i.aj = add nsw i32 %.04347, 1                  ; 2 uses
  %exitcond59.not = icmp eq i32 %i.aj, %6
  br i1 %exitcond59.not, label %._crit_edge50.split, label %.preheader.lr.ph, !llvm.loop !383

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge46, label %.preheader, !llvm.loop !384

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  %i.ao = mul nsw i32 %i.an, %.04347
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = mul nsw i32 %i.au, %.04347
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = mul nsw i32 %i.bb, %.04347
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv54
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !59
  %i.bh = uitofp nsz i16 %i.bg to float
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv54
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !59
  %i.bk = uitofp nsz i16 %i.bj to float
  %i.bl = fmul nsz float %i.ai, %i.bk
  %i.bm = tail call nsz noundef float @llvm.fmuladd.f32(float %i.bh, float %i.ah, float %i.bl)
  %i.bn = fptoui float %i.bm to i16
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv54
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !385
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @hblur8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 4 uses
  %i.g = fcmp nsz ugt float %4, 5.000000e-01
  %i.h = fsub nsz float 1.000000e+00, %4          ; 2 uses
  %.in = select i1 %i.g, float %i.h, float %4
  %i.i = fmul nsz float %.in, 2.000000e+00
  %i.j = sdiv i32 %i.f, 2
  %i.k = sitofp nsz i32 %i.j to float
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.k, float %i.i, float 1.000000e+00)
  %i.m = fptosi float %i.l to i32                 ; 6 uses
  %i.n = icmp slt i32 %5, %6
  br i1 %i.n, label %.preheader85.lr.ph, label %._crit_edge

.preheader85.lr.ph:                               ; preds = %bb.a
  %i.o = icmp sgt i32 %i.d, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = sitofp nsz i32 %i.m to float
  %i.t = icmp sgt i32 %i.m, 0
  %i.u = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.o, i1 %i.u, i1 false
  br i1 %or.cond, label %.preheader85.us.us.preheader, label %._crit_edge

.preheader85.us.us.preheader:                     ; preds = %.preheader85.lr.ph
  %i.v = sext i32 %i.m to i64
  %i.w = zext nneg i32 %i.f to i64
  %wide.trip.count121 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.m to i64         ; 2 uses
  %wide.trip.count116 = zext nneg i32 %i.f to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.x = icmp eq i32 %i.m, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod133 = trunc i32 %i.m to i1
  br label %.preheader85.us.us

.preheader85.us.us:                               ; preds = %.preheader85.us.us.preheader, %._crit_edge97.split.us.us.us
  %.07998.us.us = phi i32 [ %i.dj, %._crit_edge97.split.us.us.us ], [ %5, %.preheader85.us.us.preheader ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.us.us.us, %.preheader85.us.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %._crit_edge.us.us.us ], [ 0, %.preheader85.us.us ] ; 7 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv118
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv118
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = mul nsw i32 %i.ab, %.07998.us.us
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv118
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv118
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = mul nsw i32 %i.ai, %.07998.us.us
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv118
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv118
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = mul nsw i32 %i.ap, %.07998.us.us
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 %i.ar
  br i1 %i.t, label %.lr.ph.us.us.us.preheader, label %.preheader.us.us.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %bb.b
  br i1 %i.x, label %.lr.ph.us.us.us.epil.preheader, label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us ], [ 0, %.lr.ph.us.us.us.preheader ] ; 4 uses
  %i.at = phi <2 x float> [ %i.bj, %.lr.ph.us.us.us ], [ zeroinitializer, %.lr.ph.us.us.us.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us ], [ 0, %.lr.ph.us.us.us.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !65
  %i.ay = insertelement <2 x i8> poison, i8 %i.ax, i64 0
  %i.az = insertelement <2 x i8> %i.ay, i8 %i.av, i64 1
  %i.ba = uitofp <2 x i8> %i.az to <2 x float>
  %i.bb = fadd nsz <2 x float> %i.at, %i.ba
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !65
  %i.bg = insertelement <2 x i8> poison, i8 %i.bf, i64 0
  %i.bh = insertelement <2 x i8> %i.bg, i8 %i.bd, i64 1
  %i.bi = uitofp <2 x i8> %i.bh to <2 x float>
  %i.bj = fadd nsz <2 x float> %i.bb, %i.bi       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.us.us.us.preheader.loopexit.unr-lcssa, label %.lr.ph.us.us.us, !llvm.loop !386

.preheader.us.us.us.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.us.us.us
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %lcmp.mod.not, label %.preheader.us.us.us.preheader, label %.lr.ph.us.us.us.epil.preheader

.lr.ph.us.us.us.epil.preheader:                   ; preds = %.preheader.us.us.us.preheader.loopexit.unr-lcssa, %.lr.ph.us.us.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.preheader ], [ %indvars.iv.next.1, %.preheader.us.us.us.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.us.us.us.preheader ], [ %i.bj, %.preheader.us.us.us.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.epil.init
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.epil.init
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !65
  %i.bp = insertelement <2 x i8> poison, i8 %i.bo, i64 0
  %i.bq = insertelement <2 x i8> %i.bp, i8 %i.bm, i64 1
  %i.br = uitofp <2 x i8> %i.bq to <2 x float>
  %i.bs = fadd nsz <2 x float> %.epil.init, %i.br
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.preheader.us.us.us.preheader

.preheader.us.us.us.preheader:                    ; preds = %.lr.ph.us.us.us.epil.preheader, %.preheader.us.us.us.preheader.loopexit.unr-lcssa, %bb.b
  %.ph = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.bk, %.preheader.us.us.us.preheader.loopexit.unr-lcssa ], [ %i.bt, %.lr.ph.us.us.us.epil.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %bb.e
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %bb.e ], [ 0, %.preheader.us.us.us.preheader ] ; 7 uses
  %.07292.us.us.us = phi float [ %.1.us.us.us, %bb.e ], [ %i.s, %.preheader.us.us.us.preheader ] ; 3 uses
  %i.bu = phi <2 x float> [ %i.di, %bb.e ], [ %.ph, %.preheader.us.us.us.preheader ] ; 3 uses
  %i.bv = insertelement <2 x float> poison, float %.07292.us.us.us, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv nsz <2 x float> %i.bu, %i.bw       ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1
  %i.bz = fmul nsz float %i.h, %i.by
  %i.ca = extractelement <2 x float> %i.bx, i64 0
  %i.cb = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ca, float %4, float %i.bz)
  %i.cc = fptoui float %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv113
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !65
  %i.ce = add nsw i64 %indvars.iv113, %i.v        ; 3 uses
  %i.cf = icmp slt i64 %i.ce, %i.w
  br i1 %i.cf, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.us.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv113
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !65
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv113
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !65
  %i.ck = uitofp i8 %i.ch to float
  %i.cl = uitofp i8 %i.cj to float
  %i.cm = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 1
  %i.co = fsub nsz <2 x float> %i.bu, %i.cn
  %i.cp = fadd nsz float %.07292.us.us.us, -1.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %.preheader.us.us.us
  %i.cq = getelementptr inbounds i8, ptr %i.ae, i64 %i.ce
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv113
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !65
  %i.cu = getelementptr inbounds i8, ptr %i.al, i64 %i.ce
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !65
  %i.cw = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv113
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !65
  %i.cy = zext i8 %i.cr to i16
  %i.cz = zext i8 %i.ct to i16
  %i.da = sub nsw i16 %i.cy, %i.cz
  %i.db = zext i8 %i.cv to i16
  %i.dc = zext i8 %i.cx to i16
  %i.dd = sub nsw i16 %i.db, %i.dc
  %i.de = insertelement <2 x i16> poison, i16 %i.da, i64 0
  %i.df = insertelement <2 x i16> %i.de, i16 %i.dd, i64 1
  %i.dg = sitofp nsz <2 x i16> %i.df to <2 x float>
  %i.dh = fadd nsz <2 x float> %i.bu, %i.dg
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us.us.us = phi nsz float [ %.07292.us.us.us, %bb.d ], [ %i.cp, %bb.c ]
  %i.di = phi <2 x float> [ %i.dh, %bb.d ], [ %i.co, %bb.c ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge.us.us.us, label %.preheader.us.us.us, !llvm.loop !387

._crit_edge.us.us.us:                             ; preds = %bb.e
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge97.split.us.us.us, label %bb.b, !llvm.loop !388

._crit_edge97.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.dj = add nsw i32 %.07998.us.us, 1            ; 2 uses
end_hunk_1
begin_hunk_2_@squeezeh16_transition:bb.a
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %index147
  store <4 x i16> %wide.load148, ptr %i.bq, align 2, !tbaa !59, !alias.scope !511, !noalias !510
  %index.next149 = add nuw i64 %index147, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next149, %n.vec146
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !501

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n150, label %..loopexit60_crit_edge.us.us.us.us, label %.preheader.us.us.us.us.preheader

.preheader.us.us.us.us.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv117.ph = phi i64 [ 0, %iter.check ], [ %n.vec146, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod181.not, label %.preheader.us.us.us.us.prol.loopexit, label %.preheader.us.us.us.us.prol

.preheader.us.us.us.us.prol:                      ; preds = %.preheader.us.us.us.us.preheader, %.preheader.us.us.us.us.prol
  %indvars.iv117.prol = phi i64 [ %indvars.iv.next118.prol, %.preheader.us.us.us.us.prol ], [ %indvars.iv117.ph, %.preheader.us.us.us.us.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.preheader.us.us.us.us.prol ], [ 0, %.preheader.us.us.us.us.preheader ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.05764.us.us.us.us, i64 %indvars.iv117.prol
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !59
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv117.prol
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !59
  %indvars.iv.next118.prol = add nuw nsw i64 %indvars.iv117.prol, 1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.preheader.us.us.us.us.prol.loopexit, label %.preheader.us.us.us.us.prol, !llvm.loop !502

.preheader.us.us.us.us.prol.loopexit:             ; preds = %.preheader.us.us.us.us.prol, %.preheader.us.us.us.us.preheader
  %indvars.iv117.unr = phi i64 [ %indvars.iv117.ph, %.preheader.us.us.us.us.preheader ], [ %indvars.iv.next118.prol, %.preheader.us.us.us.us.prol ]
  %i.bv = sub nsw i64 %indvars.iv117.ph, %wide.trip.count115
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %..loopexit60_crit_edge.us.us.us.us, label %.preheader.us.us.us.us

iter.check165:                                    ; preds = %bb.b
  %i.bx = fmul nsz float %i.o, %i.bh
  %i.by = tail call i64 @llvm.lrint.i64.f32(float %i.bx)
  %i.bz = trunc i64 %i.by to i32
  %i.ca = load ptr, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.cb = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.cc = mul nsw i32 %i.cb, %i.bz
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 7 uses
  br i1 %min.iters.check152, label %vec.epilog.scalar.ph167.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %iter.check165
  %i.cf = ptrtoaddr ptr %i.ca to i64
  %i.cg = mul i64 %indvar, %i.ay
  %i.ch = add i64 %i.az, %i.cg
  %i.ci = add i64 %i.cf, %i.cd
  %i.cj = sub i64 %i.ci, %i.ch
  %diff.check = icmp ugt i64 %i.cj, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check154

vector.main.loop.iter.check154:                   ; preds = %vector.memcheck153
  br i1 %min.iters.check155, label %vec.epilog.ph169, label %vector.body158

vector.body158:                                   ; preds = %vector.main.loop.iter.check154, %vector.body158
  %index159 = phi i64 [ %index.next162, %vector.body158 ], [ 0, %vector.main.loop.iter.check154 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %index159 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load160 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !59
  %wide.load161 = load <8 x i16>, ptr %i.cl, align 2, !tbaa !59
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %index159 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <8 x i16> %wide.load160, ptr %i.cm, align 2, !tbaa !59
  store <8 x i16> %wide.load161, ptr %i.cn, align 2, !tbaa !59
  %index.next162 = add nuw i64 %index159, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.co, label %middle.block163, label %vector.body158, !llvm.loop !503

middle.block163:                                  ; preds = %vector.body158
  br i1 %cmp.n164, label %..loopexit60_crit_edge.us.us.us.us, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph169, !prof !68

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check154, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec157, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check154 ]
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %index173
  %wide.load174 = load <4 x i16>, ptr %i.cp, align 2, !tbaa !59
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %index173
  store <4 x i16> %wide.load174, ptr %i.cq, align 2, !tbaa !59
  %index.next175 = add nuw i64 %index173, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.cr, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !504

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  br i1 %cmp.n177, label %..loopexit60_crit_edge.us.us.us.us, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check165, %vector.memcheck153, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %indvars.iv112.ph = phi i64 [ 0, %iter.check165 ], [ 0, %vector.memcheck153 ], [ %n.vec157, %vec.epilog.iter.check166 ], [ %n.vec171, %vec.epilog.middle.block176 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol

vec.epilog.scalar.ph167.prol:                     ; preds = %vec.epilog.scalar.ph167.preheader, %vec.epilog.scalar.ph167.prol
  %indvars.iv112.prol = phi i64 [ %indvars.iv.next113.prol, %vec.epilog.scalar.ph167.prol ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph167.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph167.prol ], [ 0, %vec.epilog.scalar.ph167.preheader ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv112.prol
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !59
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv112.prol
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !59
  %indvars.iv.next113.prol = add nuw nsw i64 %indvars.iv112.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol, !llvm.loop !505

vec.epilog.scalar.ph167.prol.loopexit:            ; preds = %vec.epilog.scalar.ph167.prol, %vec.epilog.scalar.ph167.preheader
  %indvars.iv112.unr = phi i64 [ %indvars.iv112.ph, %vec.epilog.scalar.ph167.preheader ], [ %indvars.iv.next113.prol, %vec.epilog.scalar.ph167.prol ]
  %i.cv = sub nsw i64 %indvars.iv112.ph, %wide.trip.count115
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %..loopexit60_crit_edge.us.us.us.us, label %vec.epilog.scalar.ph167

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167
  %indvars.iv112 = phi i64 [ %indvars.iv.next113.3, %vec.epilog.scalar.ph167 ], [ %indvars.iv112.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv112
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !59
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv112
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !59
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.next113
  %i.db = load i16, ptr %i.da, align 2, !tbaa !59
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv.next113
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !59
  %indvars.iv.next113.1 = add nuw nsw i64 %indvars.iv112, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.next113.1
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !59
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv.next113.1
  store i16 %i.de, ptr %i.df, align 2, !tbaa !59
  %indvars.iv.next113.2 = add nuw nsw i64 %indvars.iv112, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.next113.2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !59
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv.next113.2
  store i16 %i.dh, ptr %i.di, align 2, !tbaa !59
  %indvars.iv.next113.3 = add nuw nsw i64 %indvars.iv112, 4 ; 2 uses
  %exitcond116.not.3 = icmp eq i64 %indvars.iv.next113.3, %wide.trip.count115
  br i1 %exitcond116.not.3, label %..loopexit60_crit_edge.us.us.us.us, label %vec.epilog.scalar.ph167, !llvm.loop !506

.preheader.us.us.us.us:                           ; preds = %.preheader.us.us.us.us.prol.loopexit, %.preheader.us.us.us.us
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.3, %.preheader.us.us.us.us ], [ %indvars.iv117.unr, %.preheader.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.05764.us.us.us.us, i64 %indvars.iv117
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !59
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv117
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !59
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.05764.us.us.us.us, i64 %indvars.iv.next118
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !59
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv.next118
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !59
  %indvars.iv.next118.1 = add nuw nsw i64 %indvars.iv117, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.05764.us.us.us.us, i64 %indvars.iv.next118.1
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !59
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv.next118.1
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !59
  %indvars.iv.next118.2 = add nuw nsw i64 %indvars.iv117, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.05764.us.us.us.us, i64 %indvars.iv.next118.2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !59
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.05666.us.us.us.us, i64 %indvars.iv.next118.2
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !59
  %indvars.iv.next118.3 = add nuw nsw i64 %indvars.iv117, 4 ; 2 uses
  %exitcond121.not.3 = icmp eq i64 %indvars.iv.next118.3, %wide.trip.count120
  br i1 %exitcond121.not.3, label %..loopexit60_crit_edge.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !507

..loopexit60_crit_edge.us.us.us.us:               ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167, %.preheader.us.us.us.us.prol.loopexit, %.preheader.us.us.us.us, %middle.block163, %vec.epilog.middle.block176, %middle.block, %vec.epilog.middle.block
  %i.dv = getelementptr inbounds [2 x i8], ptr %.05666.us.us.us.us, i64 %i.ar
  %i.dw = getelementptr inbounds [2 x i8], ptr %.05764.us.us.us.us, i64 %i.at
  %i.dx = add nuw nsw i32 %.05568.us.us.us.us, 1  ; 2 uses
  %exitcond122.not = icmp eq i32 %i.dx, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond122.not, label %._crit_edge.split.us.us.split.us.us, label %bb.b, !llvm.loop !508

._crit_edge.split.us.us.split.us.us:              ; preds = %..loopexit60_crit_edge.us.us.us.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge83.split, label %.lr.ph69.us.us, !llvm.loop !509

._crit_edge83.split:                              ; preds = %._crit_edge.split.us.us.split.us.us, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @squeezev8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.e = sitofp nsz i32 %i.d to float             ; 2 uses
  %i.f = sub i32 %6, %5                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = icmp slt i32 %i.f, 1
  %i.n = icmp slt i32 %i.d, 1
  %i.o = fadd nnan nsz float %i.e, -1.000000e+00
  %brmerge = select i1 %i.m, i1 true, i1 %i.n
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv72 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next73, %._crit_edge64 ] ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv72 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = mul nsw i32 %i.s, %5
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv72 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = mul nsw i32 %i.z, %5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv72 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = mul nsw i32 %i.ag, %5
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05363 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.aw, %._crit_edge ]
  %.05462 = phi ptr [ %i.aj, %.preheader.lr.ph ], [ %i.ap, %._crit_edge ] ; 2 uses
  %.05561 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %i.av, %._crit_edge ] ; 2 uses
  %.05660 = phi ptr [ %i.v, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !56
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next73, %i.al
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge67.split, !llvm.loop !512

._crit_edge:                                      ; preds = %bb.b
  %i.an = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %.05462, i64 %i.ao
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !29
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.05660, i64 %i.ar
  %i.at = load i32, ptr %i.y, align 4, !tbaa !29
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.05561, i64 %i.au
  %i.aw = add nuw nsw i32 %.05363, 1              ; 2 uses
  %exitcond71.not = icmp eq i32 %i.aw, %i.f
  br i1 %exitcond71.not, label %._crit_edge64, label %.preheader, !llvm.loop !513

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = uitofp nsz nneg i32 %i.ax to float
  %i.az = fdiv nsz float %i.ay, %i.e
  %i.ba = fadd nsz float %i.az, -5.000000e-01
  %i.bb = fdiv nsz float %i.ba, %4
  %i.bc = fadd nsz float %i.bb, 5.000000e-01      ; 3 uses
  %i.bd = fcmp nsz olt float %i.bc, 0.000000e+00
  %i.be = fcmp nsz ogt float %i.bc, 1.000000e+00
  %or.cond = or i1 %i.bd, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %.05561, i64 %indvars.iv
  %i.bg = fmul nsz float %i.o, %i.bc
  %i.bh = tail call i64 @llvm.lrint.i64.f32(float %i.bg)
  %i.bi = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %i.bi, 32
  %i.bk = getelementptr inbounds i8, ptr %.05660, i64 %i.bj
  %.sink.in = select i1 %or.cond, ptr %i.bf, ptr %i.bk
  %.sink = load i8, ptr %.sink.in, align 1, !tbaa !65
  %i.bl = getelementptr inbounds nuw i8, ptr %.05462, i64 %indvars.iv
  store i8 %.sink, ptr %i.bl, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !514
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @squeezev16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.e = sitofp nsz i32 %i.d to float             ; 2 uses
  %i.f = sub i32 %6, %5                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge67.split

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = icmp slt i32 %i.f, 1
  %i.n = icmp slt i32 %i.d, 1
  %i.o = fadd nnan nsz float %i.e, -1.000000e+00
  %brmerge = select i1 %i.m, i1 true, i1 %i.n
  br i1 %brmerge, label %._crit_edge67.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count75 = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge67.split:                              ; preds = %._crit_edge64, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge64
  %indvars.iv72 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next73, %._crit_edge64 ] ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv72
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29   ; 2 uses
  %i.t = mul nsw i32 %i.s, %5
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv72
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29   ; 2 uses
  %i.aa = mul nsw i32 %i.z, %5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv72
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29 ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %5
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  %i.ak = sdiv i32 %i.ag, 2
  %i.al = sext i32 %i.ak to i64
  %i.am = sdiv i32 %i.s, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = sdiv i32 %i.z, 2
  %i.ap = sext i32 %i.ao to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05363 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.at, %._crit_edge ]
  %.05462 = phi ptr [ %i.aj, %.preheader.lr.ph ], [ %i.aq, %._crit_edge ] ; 2 uses
  %.05561 = phi ptr [ %i.ac, %.preheader.lr.ph ], [ %i.as, %._crit_edge ] ; 2 uses
  %.05660 = phi ptr [ %i.v, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  br label %bb.b

._crit_edge64:                                    ; preds = %._crit_edge
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %._crit_edge67.split, label %.preheader.lr.ph, !llvm.loop !515

._crit_edge:                                      ; preds = %bb.b
  %i.aq = getelementptr inbounds [2 x i8], ptr %.05462, i64 %i.al
  %i.ar = getelementptr inbounds [2 x i8], ptr %.05660, i64 %i.an
  %i.as = getelementptr inbounds [2 x i8], ptr %.05561, i64 %i.ap
  %i.at = add nuw nsw i32 %.05363, 1              ; 2 uses
  %exitcond71.not = icmp eq i32 %i.at, %i.f
  br i1 %exitcond71.not, label %._crit_edge64, label %.preheader, !llvm.loop !516

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = uitofp nsz nneg i32 %i.au to float
  %i.aw = fdiv nsz float %i.av, %i.e
  %i.ax = fadd nsz float %i.aw, -5.000000e-01
  %i.ay = fdiv nsz float %i.ax, %4
  %i.az = fadd nsz float %i.ay, 5.000000e-01      ; 3 uses
  %i.ba = fcmp nsz olt float %i.az, 0.000000e+00
  %i.bb = fcmp nsz ogt float %i.az, 1.000000e+00
  %or.cond = or i1 %i.ba, %i.bb
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.05561, i64 %indvars.iv
  %i.bd = fmul nsz float %i.o, %i.az
  %i.be = tail call i64 @llvm.lrint.i64.f32(float %i.bd)
  %i.bf = shl i64 %i.be, 32
  %i.bg = ashr exact i64 %i.bf, 31
  %i.bh = getelementptr inbounds i8, ptr %.05660, i64 %i.bg
  %.sink.in = select i1 %or.cond, ptr %i.bc, ptr %i.bh
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !59
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.05462, i64 %indvars.iv
  store i16 %.sink, ptr %i.bi, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !517
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @zoomin8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.e = sitofp nsz i32 %i.d to float             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = sitofp nsz i32 %i.g to float             ; 2 uses
  %i.i = fadd nsz float %4, -5.000000e-01
  %i.j = fmul nsz float %i.i, 2.000000e+00        ; 2 uses
  %i.k = fcmp nsz ogt float %i.j, 0.000000e+00
  %i.l = select nsz i1 %i.k, float %i.j, float 0.000000e+00 ; 2 uses
  %i.m = fcmp nsz ogt float %i.l, 1.000000e+00
  %..i.i = select nsz i1 %i.m, float 1.000000e+00, float %i.l ; 3 uses
  %i.n = fmul nsz float %..i.i, %..i.i
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.p = fmul nsz float %i.n, %i.o                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !56
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge65.split

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = icmp sge i32 %5, %6
  %i.w = icmp slt i32 %i.d, 1
  %i.x = fadd nnan nsz float %i.e, -1.000000e+00
  %i.y = fadd nnan nsz float %i.h, -1.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = fmul nsz float %4, 2.000000e+00         ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i54 = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nnan nsz float %..i.i54, %..i.i54
  %i.af = tail call nnan nsz float @llvm.fmuladd.f32(float %..i.i54, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af             ; 2 uses
  %i.ah = fsub nsz float 1.000000e+00, %i.ag
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  br i1 %brmerge, label %._crit_edge65.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge65.split:                              ; preds = %._crit_edge62, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge62
  %indvars.iv70 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next71, %._crit_edge62 ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv70
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv70 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  %i.ao = mul nsw i32 %i.an, %5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv70 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = mul nsw i32 %i.au, %5
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv70
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05061 = phi i32 [ %5, %.preheader.lr.ph ], [ %i.bp, %._crit_edge ] ; 2 uses
  %.05160 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.05259 = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.bo, %._crit_edge ] ; 2 uses
  %i.az = sitofp nsz i32 %.05061 to float
  %i.ba = fdiv nsz float %i.az, %i.h
  %i.bb = fadd nsz float %i.ba, -5.000000e-01
  %i.bc = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.p, float 5.000000e-01)
  %i.bd = fmul nsz float %i.y, %i.bc
  %i.be = tail call nsz float @llvm.ceil.f32(float %i.bd)
  %i.bf = fptosi float %i.be to i32
  br label %bb.b

._crit_edge62:                                    ; preds = %._crit_edge
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.bg = load i32, ptr %i.q, align 8, !tbaa !56
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next71, %i.bh
  br i1 %i.bi, label %.preheader.lr.ph, label %._crit_edge65.split, !llvm.loop !518

._crit_edge:                                      ; preds = %bb.b
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !29
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %.05160, i64 %i.bk
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !29
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.05259, i64 %i.bn
  %i.bp = add nsw i32 %.05061, 1                  ; 2 uses
  %exitcond69.not = icmp eq i32 %i.bp, %6
  br i1 %exitcond69.not, label %._crit_edge62, label %.preheader, !llvm.loop !519

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = uitofp nsz nneg i32 %i.bq to float
  %i.bs = fdiv nsz float %i.br, %i.e
  %i.bt = fadd nsz float %i.bs, -5.000000e-01
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.p, float 5.000000e-01)
  %i.bv = fmul nsz float %i.x, %i.bu
  %i.bw = tail call nsz float @llvm.ceil.f32(float %i.bv)
  %i.bx = fptosi float %i.bw to i32
  %i.by = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.bz = mul nsw i32 %i.by, %i.bf
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %i.aj, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !65
  %i.ce = uitofp nsz i8 %i.cd to float
  %i.cf = getelementptr inbounds nuw i8, ptr %.05259, i64 %indvars.iv
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !65
  %i.ch = uitofp nsz i8 %i.cg to float
  %i.ci = fmul nsz float %i.ah, %i.ch
  %i.cj = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ce, float %i.ag, float %i.ci)
  %i.ck = fptoui float %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.05160, i64 %indvars.iv
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !520
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @zoomin16_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %i.e = sitofp nsz i32 %i.d to float             ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = sitofp nsz i32 %i.g to float             ; 2 uses
  %i.i = fadd nsz float %4, -5.000000e-01
  %i.j = fmul nsz float %i.i, 2.000000e+00        ; 2 uses
  %i.k = fcmp nsz ogt float %i.j, 0.000000e+00
  %i.l = select nsz i1 %i.k, float %i.j, float 0.000000e+00 ; 2 uses
  %i.m = fcmp nsz ogt float %i.l, 1.000000e+00
  %..i.i = select nsz i1 %i.m, float 1.000000e+00, float %i.l ; 3 uses
  %i.n = fmul nsz float %..i.i, %..i.i
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %..i.i, float -2.000000e+00, float 3.000000e+00)
  %i.p = fmul nsz float %i.n, %i.o                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge65.split

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = icmp sge i32 %5, %6
  %i.w = icmp slt i32 %i.d, 1
  %i.x = fadd nnan nsz float %i.e, -1.000000e+00
  %i.y = fadd nnan nsz float %i.h, -1.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = fmul nsz float %4, 2.000000e+00         ; 2 uses
  %i.ab = fcmp nsz ogt float %i.aa, 0.000000e+00
  %i.ac = select nsz i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 1.000000e+00
  %..i.i54 = select nsz i1 %i.ad, float 1.000000e+00, float %i.ac ; 3 uses
  %i.ae = fmul nnan nsz float %..i.i54, %..i.i54
  %i.af = tail call nnan nsz float @llvm.fmuladd.f32(float %..i.i54, float -2.000000e+00, float 3.000000e+00)
  %i.ag = fmul nsz float %i.ae, %i.af             ; 2 uses
  %i.ah = fsub nsz float 1.000000e+00, %i.ag
  %brmerge = select i1 %i.v, i1 true, i1 %i.w
  br i1 %brmerge, label %._crit_edge65.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count73 = zext nneg i32 %i.r to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader.lr.ph

._crit_edge65.split:                              ; preds = %._crit_edge62, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge62
  %indvars.iv70 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next71, %._crit_edge62 ] ; 7 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv70
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv70
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv70
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %5
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv70
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29 ; 2 uses
  %i.av = mul nsw i32 %i.au, %5
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv70
  %i.az = sdiv i32 %i.au, 2
  %i.ba = sext i32 %i.az to i64
  %i.bb = sdiv i32 %i.an, 2
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i32, ptr %i.ay, align 4, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05061 = phi i32 [ %5, %.preheader.lr.ph ], [ %i.bp, %._crit_edge ] ; 2 uses
  %.05160 = phi ptr [ %i.ax, %.preheader.lr.ph ], [ %i.bn, %._crit_edge ] ; 2 uses
  %.05259 = phi ptr [ %i.aq, %.preheader.lr.ph ], [ %i.bo, %._crit_edge ] ; 2 uses
  %i.be = sitofp nsz i32 %.05061 to float
  %i.bf = fdiv nsz float %i.be, %i.h
  %i.bg = fadd nsz float %i.bf, -5.000000e-01
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.p, float 5.000000e-01)
  %i.bi = fmul nsz float %i.y, %i.bh
  %i.bj = tail call nsz float @llvm.ceil.f32(float %i.bi)
  %i.bk = fptosi float %i.bj to i32
  %i.bl = mul nsw i32 %i.bd, %i.bk
  %i.bm = sdiv i32 %i.bl, 2
  br label %bb.b

._crit_edge62:                                    ; preds = %._crit_edge
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge65.split, label %.preheader.lr.ph, !llvm.loop !521

._crit_edge:                                      ; preds = %bb.b
  %i.bn = getelementptr inbounds [2 x i8], ptr %.05160, i64 %i.ba
  %i.bo = getelementptr inbounds [2 x i8], ptr %.05259, i64 %i.bc
  %i.bp = add nsw i32 %.05061, 1                  ; 2 uses
  %exitcond69.not = icmp eq i32 %i.bp, %6
  br i1 %exitcond69.not, label %._crit_edge62, label %.preheader, !llvm.loop !522

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = uitofp nsz nneg i32 %i.bq to float
  %i.bs = fdiv nsz float %i.br, %i.e
  %i.bt = fadd nsz float %i.bs, -5.000000e-01
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.p, float 5.000000e-01)
  %i.bv = fmul nsz float %i.x, %i.bu
  %i.bw = tail call nsz float @llvm.ceil.f32(float %i.bv)
  %i.bx = fptosi float %i.bw to i32
  %i.by = add nsw i32 %i.bm, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !59
  %i.cc = uitofp nsz i16 %i.cb to float
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.05259, i64 %indvars.iv
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !59
  %i.cf = uitofp nsz i16 %i.ce to float
  %i.cg = fmul nsz float %i.ah, %i.cf
  %i.ch = tail call nsz noundef float @llvm.fmuladd.f32(float %i.cc, float %i.ag, float %i.cg)
  %i.ci = fptoui float %i.ch to i16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.05160, i64 %indvars.iv
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !523
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fadefast8_transition(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, i32 noundef %5, i32 noundef %6, i32 %7) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = sub i32 %6, %5                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57
  %i.h = sitofp nsz i32 %i.g to float
  %i.i = fdiv nsz float 1.000000e+00, %i.h        ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge71.split

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = icmp slt i32 %i.c, 1
  %i.q = icmp slt i32 %i.e, 1
  %brmerge = select i1 %i.p, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge71.split, label %.preheader.lr.ph.preheader

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %min.iters.check89 = icmp ult i32 %i.e, 16
  %i.r = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %i.s = insertelement <8 x float> poison, float %4, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer
  %i.u = insertelement <4 x float> poison, float %4, i64 0 ; 2 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = shufflevector <4 x float> %i.u, <4 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  %n.vec91 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = insertelement <2 x float> poison, float %4, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> zeroinitializer
  %cmp.n98 = icmp eq i64 %n.vec91, %wide.trip.count
  br label %.preheader.lr.ph

._crit_edge71.split:                              ; preds = %._crit_edge68, %.lr.ph, %bb.a
  ret void

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge68
  %indvars.iv76 = phi i64 [ 0, %.preheader.lr.ph.preheader ], [ %indvars.iv.next77, %._crit_edge68 ] ; 7 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv76
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv76 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = mul nsw i32 %i.ac, %5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv76 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %5
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv76
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv76 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.ao, i64 %i.as
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.05767 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dc, %._crit_edge ]
  %.05866 = phi ptr [ %i.at, %.preheader.lr.ph ], [ %i.cv, %._crit_edge ] ; 5 uses
  %.05965 = phi ptr [ %i.am, %.preheader.lr.ph ], [ %i.db, %._crit_edge ] ; 5 uses
  %.06064 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %i.cy, %._crit_edge ] ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.0586687 = ptrtoaddr ptr %.05866 to i64        ; 2 uses
  %.0606486 = ptrtoaddr ptr %.06064 to i64
  %.0596585 = ptrtoaddr ptr %.05965 to i64
  %i.au = sub i64 %.0606486, %.0586687
  %diff.check = icmp ugt i64 %i.au, -16
  %i.av = sub i64 %.0596585, %.0586687
  %diff.check88 = icmp ugt i64 %i.av, -16
  %conflict.rdx = or i1 %diff.check, %diff.check88
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.body
end_hunk_2
