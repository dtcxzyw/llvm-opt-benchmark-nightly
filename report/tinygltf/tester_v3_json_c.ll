Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_json_c?download=true
inline.NumInlined: 131
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tg3json__stringify_value_ex:bb.a

iter.check:                                       ; preds = %.preheader28.i
  %i.y = trunc i64 %indvars.iv35.i to i32         ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.y, i32 1)
  %i.z = sub i32 %i.y, %smin                      ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.z, 7
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check335 = icmp ult i32 %i.z, 31
  br i1 %min.iters.check335, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 8589934560              ; 5 uses
  %i.ad = sub i64 %indvars.iv35.i, %n.vec
  %i.ae = getelementptr i8, ptr %.02342.i, i64 %n.vec ; 2 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.02342.i, i64 %index ; 2 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr i8, ptr %i.af, i64 %i.ag  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -15
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !26
  %wide.load336 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !26
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse337 = shufflevector <16 x i8> %wide.load336, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %reverse337, ptr %i.ak, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec339 = and i64 %i.ab, 8589934584           ; 4 uses
  %i.am = sub i64 %indvars.iv35.i, %n.vec339
  %i.an = getelementptr i8, ptr %.02342.i, i64 %n.vec339 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.e, i64 %indvars.iv35.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index340 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next344, %vec.epilog.vector.body ] ; 3 uses
  %next.gep341 = getelementptr i8, ptr %.02342.i, i64 %index340
  %i.ap = xor i64 %index340, -1
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  %wide.load342 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !26
  %reverse343 = shufflevector <8 x i8> %wide.load342, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse343, ptr %next.gep341, align 1, !tbaa !26
  %index.next344 = add nuw i64 %index340, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next344, %n.vec339
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n345 = icmp eq i64 %i.ab, %n.vec339
  br i1 %cmp.n345, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv37.i.ph = phi i64 [ %indvars.iv35.i, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.12431.i.ph = phi ptr [ %.02342.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.preheader.i ], [ %indvars.iv37.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.12431.i = phi ptr [ %i.av, %.preheader.i ], [ %.12431.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, -1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next38.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %.12431.i, i64 1 ; 2 uses
  store i8 %i.au, ptr %.12431.i, align 1, !tbaa !26
  %i.aw = trunc nuw i64 %indvars.iv37.i to i32
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %.preheader.i, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.an, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %i.av, %.preheader.i ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !26
  br label %tg3json__itoa.exit

tg3json__itoa.exit:                               ; preds = %bb.h, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23
  %i.az = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.ay)
  br label %tg3json__indent.exit.thread

bb.i:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !26 ; 4 uses
  %i.bc = bitcast double %i.bb to i64             ; 5 uses
  %i.bd = lshr i64 %i.bc, 63
  %i.be = trunc nuw nsw i64 %i.bd to i32          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.bf = fcmp ord double %i.bb, 0.000000e+00
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.k:                                             ; preds = %bb.i
  %i.bh = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bi = bitcast double %i.bh to i64
  switch i64 %i.bi, label %bb.p [
    i64 9218868437227405312, label %bb.l
    i64 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %.not102.i = icmp sgt i64 %i.bc, -1
  br i1 %.not102.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1718511917, ptr %i.f, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %tg3json__dtoa_c.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.42, i64 3, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  br label %tg3json__dtoa_c.exit

bb.o:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !26
  br label %tg3json__dtoa_c.exit

bb.p:                                             ; preds = %bb.k
  switch i64 %i.bc, label %bb.s [
    i64 4607182418800017408, label %bb.q
    i64 -4616189618054758400, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 49, ptr %i.f, align 16, !tbaa !26
  br label %tg3json__dtoa_c.exit

bb.r:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 49, ptr %i.bn, align 1, !tbaa !26
  br label %tg3json__dtoa_c.exit

bb.s:                                             ; preds = %bb.p
  %i.bp = fpext double %i.bb to x86_fp80          ; 2 uses
  %i.bq = fneg x86_fp80 %i.bp
  %.not99105.i = icmp slt i64 %i.bc, 0
  %i.br = select i1 %.not99105.i, x86_fp80 %i.bq, x86_fp80 %i.bp ; 3 uses
  %i.bs = fcmp ult x86_fp80 %i.br, 1.000000e+16
  br i1 %i.bs, label %.preheader109.i, label %.lr.ph.i

.preheader109.i:                                  ; preds = %.lr.ph.i, %bb.s
  %.093.lcssa.i = phi x86_fp80 [ %i.br, %bb.s ], [ %i.bu, %.lr.ph.i ] ; 3 uses
  %.089.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.bv, %.lr.ph.i ] ; 2 uses
  %i.bt = fcmp ult x86_fp80 %.093.lcssa.i, 1.000000e+01
  br i1 %i.bt, label %.preheader108.i, label %.lr.ph117.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.089113.i = phi i32 [ %i.bv, %.lr.ph.i ], [ 0, %bb.s ]
  %.093112.i = phi x86_fp80 [ %i.bu, %.lr.ph.i ], [ %i.br, %bb.s ]
  %i.bu = fmul nnan x86_fp80 %.093112.i, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.bv = add nuw nsw i32 %.089113.i, 16          ; 2 uses
  %i.bw = fcmp ult x86_fp80 %i.bu, 1.000000e+16
  br i1 %i.bw, label %.preheader109.i, label %.lr.ph.i, !llvm.loop !72

.preheader108.i:                                  ; preds = %.lr.ph117.i, %.preheader109.i
  %.194.lcssa.i = phi x86_fp80 [ %.093.lcssa.i, %.preheader109.i ], [ %i.by, %.lr.ph117.i ] ; 3 uses
  %.190.lcssa.i = phi i32 [ %.089.lcssa.i, %.preheader109.i ], [ %i.bz, %.lr.ph117.i ] ; 2 uses
  %i.bx = fcmp olt x86_fp80 %.194.lcssa.i, 1.000000e+00
  br i1 %i.bx, label %.lr.ph122.i, label %.preheader107.i

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
  %.186127.i = phi i32 [ %i.hc, %.preheader.i141 ], [ 16, %.preheader107.i ] ; 3 uses
  %i.gx = zext nneg i32 %.186127.i to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gx ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !26  ; 2 uses
  %i.ha = icmp eq i8 %i.gz, 57                    ; 3 uses
  %i.hb = add i8 %i.gz, 1
  %storemerge.i = select i1 %i.ha, i8 48, i8 %i.hb
  store i8 %storemerge.i, ptr %i.gy, align 1, !tbaa !26
  %i.hc = add nsw i32 %.186127.i, -1
  %i.hd = icmp ne i32 %.186127.i, 0
  %i.he = and i1 %i.hd, %i.ha
  br i1 %i.he, label %.preheader.i141, label %bb.t, !llvm.loop !75

bb.t:                                             ; preds = %.preheader.i141
  br i1 %i.ha, label %.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load i8, ptr %i.gl, align 16, !tbaa !26
  br label %bb.u

.thread:                                          ; preds = %bb.t
  store i8 49, ptr %i.a, align 16, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ck, i8 48, i64 16, i1 false), !tbaa !26
  %i.hf = add nsw i32 %.291.lcssa.i, 1
  br label %.critedge.i

bb.u:                                             ; preds = %._crit_edge.i, %.preheader107.i
  %i.hg = phi i8 [ %i.gk, %.preheader107.i ], [ %.pre.i, %._crit_edge.i ]
  %i.hh = icmp eq i8 %i.hg, 48
  br i1 %i.hh, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %.pr = load i8, ptr %i.ge, align 1, !tbaa !26
  %i.hi = icmp eq i8 %.pr, 48
  br i1 %i.hi, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %.pr159 = load i8, ptr %i.fx, align 2, !tbaa !26
  %i.hj = icmp eq i8 %.pr159, 48
  br i1 %i.hj, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %.pr164 = load i8, ptr %i.fq, align 1, !tbaa !26
  %i.hk = icmp eq i8 %.pr164, 48
  br i1 %i.hk, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %.pr169 = load i8, ptr %i.fj, align 4, !tbaa !26
  %i.hl = icmp eq i8 %.pr169, 48
  br i1 %i.hl, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %.pr181 = load i8, ptr %i.fc, align 1, !tbaa !26
  %i.hm = icmp eq i8 %.pr181, 48
  br i1 %i.hm, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %.pr186 = load i8, ptr %i.ev, align 2, !tbaa !26
  %i.hn = icmp eq i8 %.pr186, 48
  br i1 %i.hn, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %.pr191 = load i8, ptr %i.eo, align 1, !tbaa !26
  %i.ho = icmp eq i8 %.pr191, 48
  br i1 %i.ho, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %.pr196 = load i8, ptr %i.eh, align 8, !tbaa !26
  %i.hp = icmp eq i8 %.pr196, 48
  br i1 %i.hp, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %.pr201 = load i8, ptr %i.ea, align 1, !tbaa !26
  %i.hq = icmp eq i8 %.pr201, 48
  br i1 %i.hq, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %.pr206 = load i8, ptr %i.dt, align 2, !tbaa !26
  %i.hr = icmp eq i8 %.pr206, 48
  br i1 %i.hr, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %.pr211 = load i8, ptr %i.dm, align 1, !tbaa !26
  %i.hs = icmp eq i8 %.pr211, 48
  br i1 %i.hs, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %.pr216 = load i8, ptr %i.df, align 4, !tbaa !26
  %i.ht = icmp eq i8 %.pr216, 48
  br i1 %i.ht, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag
  %.pr221 = load i8, ptr %i.cy, align 1, !tbaa !26
  %i.hu = icmp eq i8 %.pr221, 48
  br i1 %i.hu, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %.pr226 = load i8, ptr %i.cr, align 2, !tbaa !26
  %i.hv = icmp eq i8 %.pr226, 48
  br i1 %i.hv, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %.pre = load i8, ptr %i.ck, align 1, !tbaa !26
  %.pre.fr = freeze i8 %.pre
  %5 = icmp ne i8 %.pre.fr, 48                    ; 2 uses
  %spec.select = select i1 %5, i32 2, i32 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.aj, %.thread, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.4152.i = phi i32 [ %.291.lcssa.i, %bb.ac ], [ %.291.lcssa.i, %bb.u ], [ %.291.lcssa.i, %bb.v ], [ %.291.lcssa.i, %bb.ag ], [ %.291.lcssa.i, %bb.w ], [ %.291.lcssa.i, %bb.ae ], [ %.291.lcssa.i, %bb.x ], [ %.291.lcssa.i, %bb.ai ], [ %.291.lcssa.i, %bb.y ], [ %.291.lcssa.i, %bb.ad ], [ %.291.lcssa.i, %bb.z ], [ %.291.lcssa.i, %bb.ah ], [ %.291.lcssa.i, %bb.aa ], [ %.291.lcssa.i, %bb.af ], [ %.291.lcssa.i, %bb.ab ], [ %i.hf, %.thread ], [ %.291.lcssa.i, %bb.aj ] ; 2 uses
  %6 = phi i1 [ true, %bb.ac ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.ag ], [ true, %bb.w ], [ true, %bb.ae ], [ true, %bb.x ], [ true, %bb.ai ], [ true, %bb.y ], [ true, %bb.ad ], [ true, %bb.z ], [ true, %bb.ah ], [ true, %bb.aa ], [ true, %bb.af ], [ true, %bb.ab ], [ false, %.thread ], [ %5, %bb.aj ]
  %.088.lcssa.i = phi i32 [ 9, %bb.ac ], [ 17, %bb.u ], [ 16, %bb.v ], [ 5, %bb.ag ], [ 15, %bb.w ], [ 7, %bb.ae ], [ 14, %bb.x ], [ 3, %bb.ai ], [ 13, %bb.y ], [ 8, %bb.ad ], [ 12, %bb.z ], [ 4, %bb.ah ], [ 11, %bb.aa ], [ 6, %bb.af ], [ 10, %bb.ab ], [ 1, %.thread ], [ %spec.select, %bb.aj ] ; 3 uses
  %i.hw = add i32 %.4152.i, 1
  %i.hx = sub i32 %i.hw, %.088.lcssa.i
  %i.hy = call fastcc ptr @tg3json__format_decimal_digits(ptr noundef %i.b, ptr noundef %i.a, i32 noundef %.088.lcssa.i, i32 noundef %i.hx, i32 noundef %i.be) ; 2 uses
  store i8 0, ptr %i.hy, align 1, !tbaa !26
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.b to i64
  %i.ib = sub i64 %i.hz, %i.ia                    ; 2 uses
  br i1 %6, label %.lr.ph133.i, label %.loopexit.i

.lr.ph133.i:                                      ; preds = %.critedge.i
  %i.ic = ptrtoint ptr %i.c to i64
  %i.id = add i32 %.4152.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph133.i
  %.3132.in.i = phi i32 [ %.088.lcssa.i, %.lr.ph133.i ], [ %.3132.i, %bb.al ] ; 3 uses
  %.083131.i = phi i64 [ %i.ib, %.lr.ph133.i ], [ %i.ij, %bb.al ]
  %.3132.i = add nsw i32 %.3132.in.i, -1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.ak
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ii, %i.ic                    ; 3 uses
  %i.ik = add i64 %i.ij, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.c, i64 %i.ik, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.il = icmp samesign ugt i32 %.3132.in.i, 2
  br i1 %i.il, label %bb.ak, label %.loopexit.i, !llvm.loop !78

.loopexit.i:                                      ; preds = %bb.al, %.thread.i140, %.critedge.i
  %.083111.i = phi i64 [ %.083131.i, %.thread.i140 ], [ %i.ib, %.critedge.i ], [ %i.ij, %bb.al ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 16 %i.b, i64 %.083111.i, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.f, i64 %.083111.i
  br label %tg3json__dtoa_c.exit

tg3json__dtoa_c.exit:                             ; preds = %bb.j, %bb.m, %bb.n, %bb.o, %bb.q, %bb.r, %.loopexit.i
  %.0.i = phi ptr [ %i.bg, %bb.j ], [ %i.bj, %bb.m ], [ %i.bk, %bb.n ], [ %i.bl, %bb.o ], [ %i.bm, %bb.q ], [ %i.bo, %bb.r ], [ %i.im, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
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
  %i.ir = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23
  %i.is = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef %i.ir)
  br label %tg3json__indent.exit.thread

bb.ao:                                            ; preds = %bb.a
  %i.it = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 34)
  %.not126 = icmp eq i32 %i.it, 0
  br i1 %.not126, label %tg3json__indent.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !26
  %.not262 = icmp eq i64 %i.iv, 0
  br i1 %.not262, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph258, %.critedge
  %.096257 = phi i64 [ 0, %.lr.ph258 ], [ %i.jw, %.critedge ] ; 2 uses
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.096257
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !26  ; 4 uses
  %i.jd = zext i8 %i.jc to i32                    ; 2 uses
  switch i8 %i.jc, label %bb.ax [
    i8 34, label %bb.aq
    i8 92, label %bb.ar
    i8 8, label %bb.as
    i8 12, label %bb.at
    i8 10, label %bb.au
    i8 13, label %bb.av
    i8 9, label %bb.aw
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.je = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 2)
  %.not133 = icmp eq i32 %i.je, 0
  br i1 %.not133, label %tg3json__indent.exit.thread, label %.critedge

bb.ar:                                            ; preds = %bb.ap
  %i.jf = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 2)
  %.not132 = icmp eq i32 %i.jf, 0
  br i1 %.not132, label %tg3json__indent.exit.thread, label %.critedge

bb.as:                                            ; preds = %bb.ap
  %i.jg = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef 2)
  %.not131 = icmp eq i32 %i.jg, 0
  br i1 %.not131, label %tg3json__indent.exit.thread, label %.critedge

bb.at:                                            ; preds = %bb.ap
  %i.jh = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef 2)
  %.not130 = icmp eq i32 %i.jh, 0
  br i1 %.not130, label %tg3json__indent.exit.thread, label %.critedge

bb.au:                                            ; preds = %bb.ap
  %i.ji = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef 2)
  %.not129 = icmp eq i32 %i.ji, 0
  br i1 %.not129, label %tg3json__indent.exit.thread, label %.critedge

bb.av:                                            ; preds = %bb.ap
  %i.jj = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef 2)
  %.not128 = icmp eq i32 %i.jj, 0
  br i1 %.not128, label %tg3json__indent.exit.thread, label %.critedge

bb.aw:                                            ; preds = %bb.ap
  %i.jk = tail call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef 2)
  %.not127 = icmp eq i32 %i.jk, 0
  br i1 %.not127, label %tg3json__indent.exit.thread, label %.critedge

bb.ax:                                            ; preds = %bb.ap
  %i.jl = icmp ult i8 %i.jc, 32
  br i1 %i.jl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.f, align 16, !tbaa !26
  %i.jm = lshr i32 %i.jd, 4
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr @.str.39, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !26
  store i8 %i.jp, ptr %i.ix, align 4, !tbaa !26
  %i.jq = and i32 %i.jd, 15
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr @.str.39, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !26
  store i8 %i.jt, ptr %i.iy, align 1, !tbaa !26
  store i8 0, ptr %i.iz, align 2, !tbaa !26
  %i.ju = call fastcc i32 @tg3json__buf_append(ptr noundef %0, ptr noundef nonnull %i.f, i64 noundef 6)
  %.not135 = icmp eq i32 %i.ju, 0
  br i1 %.not135, label %tg3json__indent.exit.thread, label %.critedge

bb.az:                                            ; preds = %bb.ax
  %i.jv = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext %i.jc)
  %.not134 = icmp eq i32 %i.jv, 0
  br i1 %.not134, label %tg3json__indent.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.ay, %bb.az, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.jw = add nuw i64 %.096257, 1                 ; 2 uses
  %i.jx = load i64, ptr %i.iu, align 8, !tbaa !26
  %i.jy = icmp ult i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.ap, label %._crit_edge259, !llvm.loop !79

._crit_edge259:                                   ; preds = %.critedge, %.preheader
  %i.jz = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 34)
  br label %tg3json__indent.exit.thread

bb.ba:                                            ; preds = %bb.a
  %i.ka = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 91)
  %.not119 = icmp eq i32 %i.ka, 0
  br i1 %.not119, label %tg3json__indent.exit.thread, label %.preheader231

.preheader231:                                    ; preds = %bb.ba
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !26
  %.not261 = icmp eq i64 %i.kd, 0
  br i1 %.not261, label %._crit_edge255.thread, label %.lr.ph254

.lr.ph254:                                        ; preds = %.preheader231
  %i.ke = icmp sgt i32 %2, 0
  %i.kf = add nsw i32 %3, 1                       ; 2 uses
  %i.kg = mul nsw i32 %i.kf, %2                   ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br label %bb.bc

bb.bb:                                            ; preds = %tg3json__indent.exit
  %i.ki = add nuw i64 %.197253, 1                 ; 2 uses
  %i.kj = load i64, ptr %i.kc, align 8, !tbaa !26 ; 2 uses
  %i.kk = icmp ult i64 %i.ki, %i.kj
  br i1 %i.kk, label %bb.bc, label %._crit_edge255, !llvm.loop !80

end_hunk_0
begin_hunk_1_@tg3json__parse_f64_c:bb.a
  %scevgep206.a = getelementptr i8, ptr %.2128, i64 %i.am
  %i.an = xor i64 %.2128205, -1
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.an
  %scevgep207 = getelementptr i8, ptr %i.ao, i64 %i.a
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.preheader, %bb.u
  %i.ap = phi i8 [ %i.bg, %bb.u ], [ %i.af, %.preheader193.preheader ]
  %.1152 = phi i32 [ %.2153, %bb.u ], [ %.0151, %.preheader193.preheader ] ; 2 uses
  %.3147 = phi i32 [ %.4148, %bb.u ], [ %.2146, %.preheader193.preheader ]
  %.3141 = phi i64 [ %.4142, %bb.u ], [ %.2140, %.preheader193.preheader ] ; 4 uses
  %.3135 = phi i32 [ %.4136, %bb.u ], [ %.2134, %.preheader193.preheader ] ; 5 uses
  %.3129 = phi ptr [ %i.bf, %bb.u ], [ %i.ae, %.preheader193.preheader ] ; 2 uses
  %.3123 = phi x86_fp80 [ %.4124, %bb.u ], [ %.2122, %.preheader193.preheader ] ; 4 uses
  %.3 = phi i32 [ %.4, %bb.u ], [ %.2119, %.preheader193.preheader ] ; 5 uses
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 4 uses
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = icmp ne i32 %.1152, 0
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.preheader193
  %i.au = or i32 %i.ar, %.1152
  %i.av = icmp ne i32 %i.au, 0                    ; 3 uses
  %i.aw = icmp slt i32 %.3135, 19
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = mul i64 %.3141, 10
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = add nsw i32 %.3135, 1
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bb = icmp slt i32 %.3, 64
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = uitofp nneg i32 %i.ar to x86_fp80
  %i.bd = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.3123, x86_fp80 1.000000e+01, x86_fp80 %i.bc)
  %i.be = add nsw i32 %.3, 1
  br label %bb.t

bb.t:                                             ; preds = %.preheader193, %bb.r, %bb.q, %bb.s
  %.2153.shrunk = phi i1 [ %i.av, %bb.q ], [ %i.av, %bb.s ], [ %i.av, %bb.r ], [ false, %.preheader193 ]
  %.4142 = phi i64 [ %i.az, %bb.q ], [ %.3141, %bb.s ], [ %.3141, %bb.r ], [ %.3141, %.preheader193 ] ; 3 uses
  %.4136 = phi i32 [ %i.ba, %bb.q ], [ %.3135, %bb.s ], [ %.3135, %bb.r ], [ %.3135, %.preheader193 ] ; 3 uses
  %.4124 = phi x86_fp80 [ %.3123, %bb.q ], [ %i.bd, %bb.s ], [ %.3123, %bb.r ], [ %.3123, %.preheader193 ] ; 3 uses
  %.4 = phi i32 [ %.3, %bb.q ], [ %i.be, %bb.s ], [ %.3, %bb.r ], [ %.3, %.preheader193 ] ; 3 uses
  %.2153 = zext i1 %.2153.shrunk to i32           ; 3 uses
  %exitcond208.not = icmp eq ptr %.3129, %scevgep207
  br i1 %exitcond208.not, label %.critedge3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.3129, i64 1 ; 3 uses
  %.4148 = add nsw i32 %.3147, -1                 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !26  ; 2 uses
  %i.bh = add i8 %i.bg, -48
  %or.cond188 = icmp ult i8 %i.bh, 10
  br i1 %or.cond188, label %.preheader193, label %.critedge3, !llvm.loop !88

.critedge3:                                       ; preds = %bb.t, %bb.u, %.critedge, %bb.m
  %.3154 = phi i32 [ %.0151, %.critedge ], [ %.0151, %bb.m ], [ %.2153, %bb.u ], [ %.2153, %bb.t ]
  %.5149 = phi i32 [ %.2146, %.critedge ], [ %.2146, %bb.m ], [ %i.al, %bb.t ], [ %.4148, %bb.u ] ; 3 uses
  %.5143 = phi i64 [ %.2140, %.critedge ], [ %.2140, %bb.m ], [ %.4142, %bb.u ], [ %.4142, %bb.t ]
  %.5137 = phi i32 [ %.2134, %.critedge ], [ %.2134, %bb.m ], [ %.4136, %bb.u ], [ %.4136, %bb.t ]
  %.4130 = phi ptr [ %.2128, %.critedge ], [ %.2128, %bb.m ], [ %scevgep206.a, %bb.t ], [ %i.bf, %bb.u ] ; 6 uses
  %.5125 = phi x86_fp80 [ %.2122, %.critedge ], [ %.2122, %bb.m ], [ %.4124, %bb.u ], [ %.4124, %bb.t ]
  %.5 = phi i32 [ %.2119, %.critedge ], [ %.2119, %bb.m ], [ %.4, %bb.u ], [ %.4, %bb.t ] ; 2 uses
  %i.bi = icmp ult ptr %.4130, %1
  br i1 %i.bi, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %.critedge3
  %i.bj = load i8, ptr %.4130, align 1, !tbaa !26
  switch i8 %i.bj, label %bb.ac [
    i8 101, label %bb.w
    i8 69, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %.4130, i64 1 ; 4 uses
  %i.bl = icmp ult ptr %i.bk, %1
  br i1 %i.bl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !26  ; 2 uses
  switch i8 %i.bm, label %bb.z [
    i8 43, label %bb.y
    i8 45, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.bn = icmp eq i8 %i.bm, 45
  %i.bo = select i1 %i.bn, i32 -1, i32 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.4130, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.5131 = phi ptr [ %i.bp, %bb.y ], [ %i.bk, %bb.x ], [ %i.bk, %bb.w ] ; 5 uses
  %.0116 = phi i32 [ %i.bo, %bb.y ], [ 1, %bb.x ], [ 1, %bb.w ]
  %.5131209 = ptrtoaddr ptr %.5131 to i64
  %.not177 = icmp ult ptr %.5131, %1
  br i1 %.not177, label %bb.aa, label %bb.an

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i8, ptr %.5131, align 1, !tbaa !26
  %i.br = add i8 %i.bq, -58
  %or.cond189 = icmp ult i8 %i.br, -10
  br i1 %or.cond189, label %bb.an, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.bs = sub i64 %i.a, %.5131209
  %scevgep210 = getelementptr i8, ptr %.5131, i64 %i.bs
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %.0114197 = phi i32 [ %.1115, %bb.ab ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.6196 = phi ptr [ %i.bz, %bb.ab ], [ %.5131, %.lr.ph.preheader ] ; 3 uses
  %i.bt = load i8, ptr %.6196, align 1, !tbaa !26
  %i.bu = add i8 %i.bt, -48                       ; 2 uses
  %or.cond190 = icmp ult i8 %i.bu, 10
  br i1 %or.cond190, label %bb.ab, label %.critedge5

bb.ab:                                            ; preds = %.lr.ph
  %i.bv = icmp slt i32 %.0114197, 10000
  %i.bw = mul nsw i32 %.0114197, 10
  %i.bx = zext nneg i8 %i.bu to i32
  %i.by = add nsw i32 %i.bw, %i.bx
  %.1115 = select i1 %i.bv, i32 %i.by, i32 %.0114197 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.6196, i64 1 ; 2 uses
  %exitcond211.not = icmp eq ptr %i.bz, %1
  br i1 %exitcond211.not, label %.critedge5, label %.lr.ph, !llvm.loop !89

.critedge5:                                       ; preds = %bb.ab, %.lr.ph
  %.6.lcssa.ph = phi ptr [ %scevgep210, %bb.ab ], [ %.6196, %.lr.ph ]
  %.0114.lcssa.ph = phi i32 [ %.1115, %bb.ab ], [ %.0114197, %.lr.ph ]
  %i.ca = mul nsw i32 %.0114.lcssa.ph, %.0116
  %i.cb = add nsw i32 %i.ca, %.5149
  br label %bb.ac

bb.ac:                                            ; preds = %bb.v, %.critedge5, %.critedge3
  %.6150 = phi i32 [ %i.cb, %.critedge5 ], [ %.5149, %bb.v ], [ %.5149, %.critedge3 ] ; 4 uses
  %.7 = phi ptr [ %.6.lcssa.ph, %.critedge5 ], [ %.4130, %bb.v ], [ %.4130, %.critedge3 ]
  %.not178 = icmp eq ptr %.7, %1
  br i1 %.not178, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.cc = icmp eq i32 %.3154, 0
  %i.cd = icmp eq i32 %.5137, 0
  %or.cond7 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ce = select i1 %.not180, double 0.000000e+00, double -0.000000e+00
  store double %i.ce, ptr %2, align 8, !tbaa !76
  br label %bb.an

bb.af:                                            ; preds = %bb.ad
  %i.cf = icmp sgt i32 %.6150, 309
  br i1 %i.cf, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = icmp slt i32 %.6150, -4000
  br i1 %i.cg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ch = select i1 %.not180, double 0.000000e+00, double -0.000000e+00
  store double %i.ch, ptr %2, align 8, !tbaa !76
  br label %bb.an

bb.ai:                                            ; preds = %bb.ag
  %i.ci = uitofp i64 %.5143 to x86_fp80           ; 2 uses
  %i.cj = icmp sgt i32 %.5, 0
  br i1 %i.cj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ck = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.5)
  %i.cl = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %i.ci, x86_fp80 %i.ck, x86_fp80 %.5125)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0 = phi x86_fp80 [ %i.cl, %bb.aj ], [ %i.ci, %bb.ai ] ; 2 uses
  %.not179 = icmp eq i32 %.6150, 0
  br i1 %.not179, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = tail call fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef %.6150)
  %i.cn = fmul x86_fp80 %.0, %i.cm
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1 = phi x86_fp80 [ %i.cn, %bb.al ], [ %.0, %bb.ak ] ; 2 uses
  %i.co = fneg x86_fp80 %.1
  %spec.select191 = select i1 %.not180, x86_fp80 %.1, x86_fp80 %i.co
  %i.cp = fptrunc x86_fp80 %spec.select191 to double ; 2 uses
  store double %i.cp, ptr %2, align 8, !tbaa !76
  %i.cq = tail call double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp une double %i.cq, +inf
  %spec.select192 = zext i1 %i.cr to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af, %bb.ac, %bb.z, %bb.aa, %bb.n, %bb.o, %bb.f, %bb.c, %bb.ah, %bb.ae
  %.0113 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.z ], [ 1, %bb.ae ], [ 0, %bb.ac ], [ 1, %bb.ah ], [ 0, %bb.af ], [ %spec.select192, %bb.am ], [ 0, %bb.o ], [ 0, %bb.aa ]
  ret i32 %.0113
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #14

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc x86_fp80 @tg3json__pow10_ld(i32 noundef range(i32 -4000, -2147483648) %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader20

.preheader20:                                     ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %0, 15
  br i1 %i.b, label %.lr.ph, label %.preheader18

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %0                        ; 3 uses
  %i.d = icmp samesign ugt i32 %i.c, 15
  br i1 %i.d, label %.lr.ph30, label %.lr.ph35.preheader

.preheader:                                       ; preds = %.lr.ph30
  %.not55 = icmp eq i32 %i.f, 0
  br i1 %.not55, label %.loopexit, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %bb.b, %.preheader
  %.134.ph = phi x86_fp80 [ 1.000000e+00, %bb.b ], [ %i.e, %.preheader ]
  %.11333.ph = phi i32 [ %i.c, %bb.b ], [ %i.f, %.preheader ]
  br label %.lr.ph35

.lr.ph30:                                         ; preds = %bb.b, %.lr.ph30
  %.029 = phi x86_fp80 [ %i.e, %.lr.ph30 ], [ 1.000000e+00, %bb.b ]
  %.01228 = phi i32 [ %i.f, %.lr.ph30 ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = fmul x86_fp80 %.029, f0x3FC9E69594BEC44DE15B ; 3 uses
  %i.f = add nsw i32 %.01228, -16                 ; 3 uses
  %i.g = icmp samesign ugt i32 %.01228, 31
  br i1 %i.g, label %.lr.ph30, label %.preheader, !llvm.loop !90

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %.134 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %.134.ph, %.lr.ph35.preheader ]
  %.11333 = phi i32 [ %i.h, %.lr.ph35 ], [ %.11333.ph, %.lr.ph35.preheader ] ; 2 uses
  %i.h = add nsw i32 %.11333, -1
  %i.i = fmul x86_fp80 %.134, 1.000000e-01        ; 2 uses
  %i.j = icmp samesign ugt i32 %.11333, 1
  br i1 %i.j, label %.lr.ph35, label %.loopexit, !llvm.loop !91

.preheader18:                                     ; preds = %.lr.ph, %.preheader20
  %.214.lcssa = phi i32 [ %0, %.preheader20 ], [ %i.o, %.lr.ph ] ; 5 uses
  %.2.lcssa = phi x86_fp80 [ 1.000000e+00, %.preheader20 ], [ %i.n, %.lr.ph ] ; 3 uses
  %.not = icmp eq i32 %.214.lcssa, 0
  br i1 %.not, label %.loopexit, label %.lr.ph26.preheader

.lr.ph26.preheader:                               ; preds = %.preheader18
  %xtraiter = and i32 %.214.lcssa, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol

.lr.ph26.prol:                                    ; preds = %.lr.ph26.preheader, %.lr.ph26.prol
  %.325.prol = phi x86_fp80 [ %i.l, %.lr.ph26.prol ], [ %.2.lcssa, %.lr.ph26.preheader ]
  %.31524.prol = phi i32 [ %i.k, %.lr.ph26.prol ], [ %.214.lcssa, %.lr.ph26.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph26.prol ], [ 0, %.lr.ph26.preheader ]
  %i.k = add nsw i32 %.31524.prol, -1             ; 2 uses
  %i.l = fmul x86_fp80 %.325.prol, 1.000000e+01   ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol, !llvm.loop !92

.lr.ph26.prol.loopexit:                           ; preds = %.lr.ph26.prol, %.lr.ph26.preheader
  %.325.unr = phi x86_fp80 [ %.2.lcssa, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %.31524.unr = phi i32 [ %.214.lcssa, %.lr.ph26.preheader ], [ %i.k, %.lr.ph26.prol ]
  %.lcssa65.unr = phi x86_fp80 [ poison, %.lr.ph26.preheader ], [ %i.l, %.lr.ph26.prol ]
  %i.m = icmp ult i32 %.214.lcssa, 8
  br i1 %i.m, label %.loopexit, label %.lr.ph26

.lr.ph:                                           ; preds = %.preheader20, %.lr.ph
  %.222 = phi x86_fp80 [ %i.n, %.lr.ph ], [ 1.000000e+00, %.preheader20 ]
  %.21421 = phi i32 [ %i.o, %.lr.ph ], [ %0, %.preheader20 ] ; 2 uses
  %i.n = fmul x86_fp80 %.222, 1.000000e+16        ; 2 uses
  %i.o = add nsw i32 %.21421, -16                 ; 2 uses
  %i.p = icmp samesign ugt i32 %.21421, 31
  br i1 %i.p, label %.lr.ph, label %.preheader18, !llvm.loop !94

.lr.ph26:                                         ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26
  %.325 = phi x86_fp80 [ %i.y, %.lr.ph26 ], [ %.325.unr, %.lr.ph26.prol.loopexit ]
  %.31524 = phi i32 [ %i.x, %.lr.ph26 ], [ %.31524.unr, %.lr.ph26.prol.loopexit ] ; 2 uses
  %i.q = fmul x86_fp80 %.325, 1.000000e+01
  %i.r = fmul x86_fp80 %i.q, 1.000000e+01
  %i.s = fmul x86_fp80 %i.r, 1.000000e+01
  %i.t = fmul x86_fp80 %i.s, 1.000000e+01
  %i.u = fmul x86_fp80 %i.t, 1.000000e+01
  %i.v = fmul x86_fp80 %i.u, 1.000000e+01
  %i.w = fmul x86_fp80 %i.v, 1.000000e+01
  %i.x = add nsw i32 %.31524, -8
  %i.y = fmul x86_fp80 %i.w, 1.000000e+01         ; 2 uses
  %i.z = icmp sgt i32 %.31524, 8
  br i1 %i.z, label %.lr.ph26, label %.loopexit, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26, %.lr.ph35, %.preheader18, %.preheader
  %.4 = phi x86_fp80 [ %i.i, %.lr.ph35 ], [ %i.e, %.preheader ], [ %.2.lcssa, %.preheader18 ], [ %.lcssa65.unr, %.lr.ph26.prol.loopexit ], [ %i.y, %.lr.ph26 ]
  ret x86_fp80 %.4
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @tg3json__indent(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 10)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = mul nsw i32 %2, %1                       ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i32 %.010, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !81

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.010 = phi i32 [ %i.d, %bb.b ], [ 0, %.preheader ]
  %i.e = tail call fastcc i32 @tg3json__buf_putc(ptr noundef %0, i8 noundef signext 32)
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @tg3json__format_decimal_digits(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = add i32 %3, %2                           ; 11 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 19 uses
  %.064174 = ptrtoaddr ptr %.064 to i64           ; 3 uses
  %i.g = add i32 %i.d, -17
  %or.cond = icmp ult i32 %i.g, -20
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 1, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  store i8 %i.h, ptr %.064, align 1, !tbaa !26
  %i.j = icmp sgt i32 %2, 1
  br i1 %i.j, label %iter.check291, label %.loopexit

iter.check291:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 5 uses
  store i8 46, ptr %i.i, align 1, !tbaa !26
  %wide.trip.count142 = zext nneg i32 %2 to i64   ; 4 uses
  %i.l = add nsw i64 %wide.trip.count142, -1      ; 5 uses
  %min.iters.check276 = icmp ult i32 %2, 9
  %i.m = sub i64 %.064174, %i.a
  %diff.check275 = icmp ult i64 %i.m, 31
  %or.cond336 = select i1 %min.iters.check276, i1 true, i1 %diff.check275
  br i1 %or.cond336, label %vec.epilog.scalar.ph292.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %iter.check291
  %min.iters.check278 = icmp ult i32 %2, 33
  br i1 %min.iters.check278, label %vec.epilog.ph295, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %i.n = and i64 %i.l, 24
  %n.vec280 = and i64 %i.l, -32                   ; 5 uses
  %i.o = or disjoint i64 %n.vec280, 1
  %i.p = getelementptr i8, ptr %i.k, i64 %n.vec280 ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body281 ] ; 3 uses
  %next.gep283 = getelementptr i8, ptr %i.k, i64 %index282 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index282 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %wide.load284 = load <16 x i8>, ptr %i.r, align 1, !tbaa !26
  %wide.load285 = load <16 x i8>, ptr %i.s, align 1, !tbaa !26
  %i.t = getelementptr i8, ptr %next.gep283, i64 16
  store <16 x i8> %wide.load284, ptr %next.gep283, align 1, !tbaa !26
  store <16 x i8> %wide.load285, ptr %i.t, align 1, !tbaa !26
  %index.next286 = add nuw i64 %index282, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.u, label %middle.block287, label %vector.body281, !llvm.loop !96

middle.block287:                                  ; preds = %vector.body281
  %cmp.n288 = icmp eq i64 %i.l, %n.vec280
  br i1 %cmp.n288, label %.loopexit, label %vec.epilog.iter.check293
end_hunk_1
