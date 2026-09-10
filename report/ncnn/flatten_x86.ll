Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn11Flatten_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4:bb.a
  br i1 %or.cond, label %.lr.ph49.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i32 %i.bk, 15
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bm, 12
  %n.vec = and i64 %i.bm, 8589934576              ; 5 uses
  %i.bp = trunc i64 %n.vec to i32
  %i.bq = add i32 %.028.lcssa, %i.bp
  %i.br = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.bs = getelementptr i8, ptr %.029.lcssa, i64 %i.br
  %i.bt = getelementptr i8, ptr %.031.lcssa, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.029.lcssa, i64 %i.bu ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.031.lcssa, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep83, align 2, !tbaa !48
  %wide.load84 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !48
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !48
  store <8 x i16> %wide.load84, ptr %i.bw, align 2, !tbaa !48
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.bm, 8589934588            ; 4 uses
  %i.by = trunc i64 %n.vec87 to i32
  %i.bz = add i32 %.028.lcssa, %i.by
  %i.ca = shl nuw nsw i64 %n.vec87, 1             ; 2 uses
  %i.cb = getelementptr i8, ptr %.029.lcssa, i64 %i.ca
  %i.cc = getelementptr i8, ptr %.031.lcssa, i64 %i.ca
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.cd = shl i64 %index88, 1                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.029.lcssa, i64 %i.cd
  %next.gep90 = getelementptr i8, ptr %.031.lcssa, i64 %i.cd
  %wide.load91 = load <4 x i16>, ptr %next.gep90, align 2, !tbaa !48
  store <4 x i16> %wide.load91, ptr %next.gep89, align 2, !tbaa !48
  %index.next92 = add nuw i64 %index88, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.bm, %n.vec87
  br i1 %cmp.n93, label %._crit_edge, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.148.ph = phi i32 [ %.028.lcssa, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ] ; 4 uses
  %.13047.ph = phi ptr [ %.029.lcssa, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 2 uses
  %.13246.ph = phi ptr [ %.031.lcssa, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %i.cf = sub i32 %i.bh, %.148.ph
  %xtraiter = and i32 %i.cf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol

.lr.ph49.prol:                                    ; preds = %.lr.ph49.preheader, %.lr.ph49.prol
  %.148.prol = phi i32 [ %i.cj, %.lr.ph49.prol ], [ %.148.ph, %.lr.ph49.preheader ]
  %.13047.prol = phi ptr [ %i.ci, %.lr.ph49.prol ], [ %.13047.ph, %.lr.ph49.preheader ] ; 2 uses
  %.13246.prol = phi ptr [ %i.cg, %.lr.ph49.prol ], [ %.13246.ph, %.lr.ph49.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph49.prol ], [ 0, %.lr.ph49.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.13246.prol, i64 2 ; 2 uses
  %i.ch = load i16, ptr %.13246.prol, align 2, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %.13047.prol, i64 2 ; 2 uses
  store i16 %i.ch, ptr %.13047.prol, align 2, !tbaa !48
  %i.cj = add nuw nsw i32 %.148.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.prol.loopexit, label %.lr.ph49.prol, !llvm.loop !124

.lr.ph49.prol.loopexit:                           ; preds = %.lr.ph49.prol, %.lr.ph49.preheader
  %.148.unr = phi i32 [ %.148.ph, %.lr.ph49.preheader ], [ %i.cj, %.lr.ph49.prol ]
  %.13047.unr = phi ptr [ %.13047.ph, %.lr.ph49.preheader ], [ %i.ci, %.lr.ph49.prol ]
  %.13246.unr = phi ptr [ %.13246.ph, %.lr.ph49.preheader ], [ %i.cg, %.lr.ph49.prol ]
  %i.ck = sub i32 %.148.ph, %i.bh
  %i.cl = icmp ugt i32 %i.ck, -8
  br i1 %i.cl, label %._crit_edge, label %.lr.ph49

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.02842 = phi i32 [ %i.cp, %.lr.ph ], [ 0, %.noexc ]
  %.02941 = phi ptr [ %i.co, %.lr.ph ], [ %i.bf, %.noexc ] ; 2 uses
  %.03140 = phi ptr [ %i.cn, %.lr.ph ], [ %i.bb, %.noexc ] ; 2 uses
  %i.cm = load <2 x i64>, ptr %.03140, align 1, !tbaa !39
  store <2 x i64> %i.cm, ptr %.02941, align 1, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.03140, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.02941, i64 16 ; 2 uses
  %i.cp = add nuw nsw i32 %.02842, 8              ; 3 uses
  %i.cq = or disjoint i32 %i.cp, 7
  %i.cr = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.preheader, !llvm.loop !125

.lr.ph49:                                         ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49
  %.148 = phi i32 [ %i.dr, %.lr.ph49 ], [ %.148.unr, %.lr.ph49.prol.loopexit ]
  %.13047 = phi ptr [ %i.dq, %.lr.ph49 ], [ %.13047.unr, %.lr.ph49.prol.loopexit ] ; 9 uses
  %.13246 = phi ptr [ %i.do, %.lr.ph49 ], [ %.13246.unr, %.lr.ph49.prol.loopexit ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.13246, i64 2
  %i.cu = load i16, ptr %.13246, align 2, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %.13047, i64 2
  store i16 %i.cu, ptr %.13047, align 2, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %.13246, i64 4
  %i.cx = load i16, ptr %i.ct, align 2, !tbaa !48
  %i.cy = getelementptr inbounds nuw i8, ptr %.13047, i64 4
  store i16 %i.cx, ptr %i.cv, align 2, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %.13246, i64 6
  %i.da = load i16, ptr %i.cw, align 2, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %.13047, i64 6
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %.13246, i64 8
  %i.dd = load i16, ptr %i.cz, align 2, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %.13047, i64 8
  store i16 %i.dd, ptr %i.db, align 2, !tbaa !48
  %i.df = getelementptr inbounds nuw i8, ptr %.13246, i64 10
  %i.dg = load i16, ptr %i.dc, align 2, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %.13047, i64 10
  store i16 %i.dg, ptr %i.de, align 2, !tbaa !48
  %i.di = getelementptr inbounds nuw i8, ptr %.13246, i64 12
  %i.dj = load i16, ptr %i.df, align 2, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %.13047, i64 12
  store i16 %i.dj, ptr %i.dh, align 2, !tbaa !48
  %i.dl = getelementptr inbounds nuw i8, ptr %.13246, i64 14
  %i.dm = load i16, ptr %i.di, align 2, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %.13047, i64 14
  store i16 %i.dm, ptr %i.dk, align 2, !tbaa !48
  %i.do = getelementptr inbounds nuw i8, ptr %.13246, i64 16
  %i.dp = load i16, ptr %i.dl, align 2, !tbaa !48
  %i.dq = getelementptr inbounds nuw i8, ptr %.13047, i64 16
  store i16 %i.dp, ptr %i.dn, align 2, !tbaa !48
  %i.dr = add nuw nsw i32 %.148, 8                ; 2 uses
  %exitcond60.not.7 = icmp eq i32 %i.dr, %i.bh
  br i1 %exitcond60.not.7, label %._crit_edge, label %.lr.ph49, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph49.prol.loopexit, %.lr.ph49, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %lftr.wideiv64 = trunc i64 %indvars.iv.next62 to i32
  %exitcond65.not = icmp eq i32 %i.q, %lftr.wideiv64
  br i1 %exitcond65.not, label %._crit_edge52, label %.noexc, !llvm.loop !127

._crit_edge52:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge52, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = sext i32 %i.k to i64
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %.lr.ph73.split

.lr.ph73.split:                                   ; preds = %.lr.ph73, %._crit_edge
  %i.n = phi i32 [ %i.j, %.lr.ph73 ], [ %i.cb, %._crit_edge ]
  %i.o = phi i32 [ %.pre, %.lr.ph73 ], [ %i.cc, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ %6, %.lr.ph73 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph73.split
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 8 uses
  %i.r = shl nsw i64 %indvars.iv, 3               ; 7 uses
  %i.s = or disjoint i64 %i.r, 7
  %i.t = zext nneg i32 %i.o to i64                ; 7 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  %i.w = or disjoint i64 %i.r, 6
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  %i.z = or disjoint i64 %i.r, 5
  %i.aa = mul nsw i64 %i.z, %i.t
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa
  %i.ac = or disjoint i64 %i.r, 4
  %i.ad = mul nsw i64 %i.ac, %i.t
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = or disjoint i64 %i.r, 3
  %i.ag = mul nsw i64 %i.af, %i.t
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %i.ag
  %i.ai = or disjoint i64 %i.r, 2
  %i.aj = mul nsw i64 %i.ai, %i.t
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 %i.aj
  %i.al = or disjoint i64 %i.r, 1
  %i.am = mul nsw i64 %i.al, %i.t
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.am
  %i.ao = trunc nsw i64 %indvars.iv to i32
  %i.ap = shl i32 %i.ao, 3
  %i.aq = mul i32 %i.ap, %i.o
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar
  %i.at = load ptr, ptr %3, align 8, !tbaa !20
  %i.au = load i32, ptr %i.l, align 4, !tbaa !27
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %indvars.iv, %i.av
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !16
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.069 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05068 = phi ptr [ %i.bw, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.05167 = phi ptr [ %i.bt, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.bn, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.bk, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.bh, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.be, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.bb, %.lr.ph ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.bx, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 9 uses
  %i.ba = load i8, ptr %.05860, align 1, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %.05761, i64 1
  store i8 %i.ba, ptr %.05761, align 1, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %.05860, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %.05662, i64 1
  store i8 %i.bd, ptr %.05662, align 1, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %.05563, i64 1
  store i8 %i.bg, ptr %.05563, align 1, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %.05860, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.05464, i64 1
  store i8 %i.bj, ptr %.05464, align 1, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.05860, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.05365, i64 1
  store i8 %i.bm, ptr %.05365, align 1, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %.05860, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %.05266, i64 1
  store i8 %i.bp, ptr %.05266, align 1, !tbaa !39
  %i.br = getelementptr inbounds nuw i8, ptr %.05860, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %.05167, i64 1
  store i8 %i.bs, ptr %.05167, align 1, !tbaa !39
  %i.bu = getelementptr inbounds nuw i8, ptr %.05860, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %.05068, i64 1
  store i8 %i.bv, ptr %.05068, align 1, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %.05860, i64 8
  %i.by = add nuw nsw i32 %.069, 1                ; 2 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph73.split
  %i.cb = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.n, %.lr.ph73.split ] ; 2 uses
  %i.cc = phi i32 [ %i.bz, %._crit_edge.loopexit ], [ %i.o, %.lr.ph73.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cd = sext i32 %i.cb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cd
  br i1 %.not.not, label %.lr.ph73.split, label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge74, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge79, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = sext i32 %i.k to i64
  %.pre = load i32, ptr %5, align 4, !tbaa !25
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.n = phi i32 [ %i.j, %.noexc.lr.ph ], [ %i.ca, %._crit_edge ]
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cb, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ %6, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 8 uses
  %i.r = shl nsw i64 %indvars.iv, 3               ; 7 uses
  %i.s = or disjoint i64 %i.r, 7
  %i.t = zext nneg i32 %i.o to i64                ; 7 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  %i.w = or disjoint i64 %i.r, 6
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  %i.z = or disjoint i64 %i.r, 5
  %i.aa = mul nsw i64 %i.z, %i.t
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa
  %i.ac = or disjoint i64 %i.r, 4
  %i.ad = mul nsw i64 %i.ac, %i.t
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = or disjoint i64 %i.r, 3
  %i.ag = mul nsw i64 %i.af, %i.t
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %i.ag
  %i.ai = or disjoint i64 %i.r, 2
  %i.aj = mul nsw i64 %i.ai, %i.t
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 %i.aj
  %i.al = or disjoint i64 %i.r, 1
  %i.am = mul nsw i64 %i.al, %i.t
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.am
  %i.ao = trunc nsw i64 %indvars.iv to i32
  %i.ap = shl i32 %i.ao, 3
  %i.aq = mul i32 %i.ap, %i.o
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar
  %i.at = load ptr, ptr %3, align 8, !tbaa !20, !noalias !134
  %i.au = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !134
  %i.av = mul i64 %i.au, %indvars.iv
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !134
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ax
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.076 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05075 = phi ptr [ %i.bv, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.05174 = phi ptr [ %i.bs, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.05273 = phi ptr [ %i.bp, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %.05372 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.05471 = phi ptr [ %i.bj, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.05570 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.05669 = phi ptr [ %i.bd, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.05768 = phi ptr [ %i.ba, %.lr.ph ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.05867 = phi ptr [ %i.bw, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ] ; 9 uses
  %i.az = load i8, ptr %.05867, align 1, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %.05768, i64 1
  store i8 %i.az, ptr %.05768, align 1, !tbaa !39
  %i.bb = getelementptr inbounds nuw i8, ptr %.05867, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %.05669, i64 1
  store i8 %i.bc, ptr %.05669, align 1, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %.05867, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %.05570, i64 1
  store i8 %i.bf, ptr %.05570, align 1, !tbaa !39
  %i.bh = getelementptr inbounds nuw i8, ptr %.05867, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.05471, i64 1
  store i8 %i.bi, ptr %.05471, align 1, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.05867, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %.05372, i64 1
  store i8 %i.bl, ptr %.05372, align 1, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %.05867, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %.05273, i64 1
  store i8 %i.bo, ptr %.05273, align 1, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %.05867, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !39
  %i.bs = getelementptr inbounds nuw i8, ptr %.05174, i64 1
  store i8 %i.br, ptr %.05174, align 1, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %.05867, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %.05075, i64 1
  store i8 %i.bu, ptr %.05075, align 1, !tbaa !39
  %i.bw = getelementptr inbounds nuw i8, ptr %.05867, i64 8
  %i.bx = add nuw nsw i32 %.076, 1                ; 2 uses
  %i.by = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !133

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.ca = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.n, %.noexc ] ; 2 uses
  %i.cb = phi i32 [ %i.by, %._crit_edge.loopexit ], [ %i.o, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cc = sext i32 %i.ca to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cc
  br i1 %.not.not, label %.noexc, label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge79, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x8612forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge36, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %5, align 4, !tbaa !25     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge36

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.q = phi i32 [ %i.j, %.noexc.preheader ], [ %i.aj, %._crit_edge ]
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %4, align 8, !tbaa !20
  %i.u = zext nneg i32 %i.r to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load ptr, ptr %3, align 8, !tbaa !20, !noalias !139
  %i.y = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !139
  %i.z = mul i64 %i.y, %indvars.iv
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !139
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02132 = phi ptr [ %i.af, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.02231 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02231, i64 1
  %i.ae = load i8, ptr %.02231, align 1, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %.02132, i64 1
  store i8 %i.ae, ptr %.02132, align 1, !tbaa !39
  %i.ag = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.ah = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !137

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %.noexc ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %._crit_edge.loopexit ], [ %i.r, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.al = sext i32 %i.aj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %.noexc, label %._crit_edge36, !llvm.loop !138

._crit_edge36:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge36, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !7, i64 24}
!16 = !{!14, !12, i64 16}
!17 = !{!14, !7, i64 40}
!18 = !{!14, !11, i64 8}
!19 = !{!14, !13, i64 32}
!20 = !{!14, !10, i64 0}
!21 = !{!"vtable pointer", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !12, i64 64}
!24 = !{!10, !10, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!14, !7, i64 56}
!27 = !{!14, !7, i64 44}
!28 = !{!14, !7, i64 48}
!29 = !{!14, !7, i64 52}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"_ZTSN4ncnn6OptionE", !30, i64 0, !30, i64 1, !30, i64 2, !30, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !30, i64 28, !30, i64 29, !30, i64 30, !30, i64 31, !30, i64 32, !30, i64 33, !30, i64 34, !30, i64 35, !30, i64 36, !30, i64 37, !30, i64 38, !30, i64 39, !7, i64 40, !30, i64 44, !30, i64 45, !30, i64 46, !30, i64 47, !6, i64 48, !30, i64 49, !30, i64 50, !30, i64 51, !30, i64 52, !30, i64 53, !30, i64 54, !30, i64 55, !30, i64 56, !30, i64 57, !30, i64 58, !30, i64 59, !30, i64 60, !30, i64 61, !30, i64 62, !30, i64 63}
!32 = !{!31, !30, i64 39}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!31, !13, i64 8}
!36 = !{!31, !7, i64 4}
!37 = !{!"float", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = !{i64 2, i64 -1, i64 -1, i1 true}
!43 = !{!42}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"short", !6, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 omnipotent char", !10, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !12, i64 8, !6, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIiSaIiEE", !54, i64 0}
!56 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSN4ncnn5LayerE", !30, i64 8, !30, i64 9, !30, i64 10, !30, i64 11, !30, i64 12, !30, i64 13, !30, i64 14, !30, i64 15, !30, i64 16, !30, i64 17, !30, i64 18, !30, i64 19, !30, i64 20, !30, i64 21, !30, i64 22, !30, i64 23, !30, i64 24, !30, i64 25, !30, i64 26, !30, i64 27, !7, i64 28, !10, i64 32, !7, i64 40, !51, i64 48, !51, i64 80, !55, i64 112, !55, i64 136, !60, i64 160, !60, i64 184}
!62 = !{!61, !30, i64 11}
!63 = !{!61, !30, i64 13}
!64 = !{!61, !30, i64 12}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !"_ZNK4ncnn3Mat7channelEi"}
!69 = distinct !{!69, !68, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !41}
!73 = !{!69}
!74 = distinct !{!74, !"_ZNK4ncnn3Mat7channelEi"}
!75 = distinct !{!75, !74, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !40, !44, !45}
!80 = distinct !{!80, !46}
!81 = distinct !{!81, !40, !44}
!82 = !{!75}
!83 = !{!77}
!84 = !{!78}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = distinct !{!89, !85}
!90 = distinct !{!90, !85}
!91 = distinct !{!91, !40, !44, !45}
!92 = distinct !{!92, !40, !44}
!93 = !{!86}
!94 = !{!87}
!95 = !{!90, !89, !88, !86}
!96 = !{!90}
!97 = !{!89, !88, !86}
!98 = !{!89}
!99 = !{!88, !86}
!100 = !{!88}
!101 = distinct !{!101, !"_ZNK4ncnn3Mat7channelEi"}
!102 = distinct !{!102, !101, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = distinct !{!107, !103}
!108 = distinct !{!108, !103}
!109 = distinct !{!109, !40, !44, !45}
!110 = distinct !{!110, !40, !44}
!111 = !{!102}
!112 = !{!104}
!113 = !{!105}
!114 = !{!108, !107, !106, !104}
!115 = !{!108}
!116 = !{!107, !106, !104}
!117 = !{!107}
!118 = !{!106, !104}
!119 = !{!106}
!120 = distinct !{!120, !"_ZNK4ncnn3Mat7channelEi"}
!121 = distinct !{!121, !120, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!122 = distinct !{!122, !40, !44, !45}
!123 = distinct !{!123, !40, !44, !45}
!124 = distinct !{!124, !46}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40, !44}
!127 = distinct !{!127, !41}
!128 = !{!121}
!129 = !{!"branch_weights", i32 4, i32 12}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !"_ZNK4ncnn3Mat7channelEi"}
!132 = distinct !{!132, !131, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!133 = distinct !{!133, !40}
!134 = !{!132}
!135 = distinct !{!135, !"_ZNK4ncnn3Mat7channelEi"}
!136 = distinct !{!136, !135, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!137 = distinct !{!137, !40}
!138 = distinct !{!138, !41}
!139 = !{!136}
end_hunk_0
