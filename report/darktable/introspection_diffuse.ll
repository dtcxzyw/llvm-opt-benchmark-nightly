Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_diffuse?download=true
inline.NumInlined: 77
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ad, i64 64), "align"(ptr %2, i64 64), "align"(ptr %3, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  %.not91 = icmp eq ptr %i.ad, null
  br i1 %.not91, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %i.i, i32 noundef 4, ptr noundef nonnull %i.j, i32 noundef 4, ptr noundef nonnull %i.k, i32 noundef 4, ptr noundef nonnull %i.l, i32 noundef 0, ptr noundef null) #20
  %.not92 = icmp eq i32 %i.ae, 0
  %i.af = zext i1 %.not92 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = phi i32 [ 1, %bb.c ], [ %i.af, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !41
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ai, %i.ak
  %i.am = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.al, float 1.000000e+00) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  %i.ar = add nsw i32 %i.aq, %i.ao
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.ar to float
  %i.at = fmul reassoc nnan nsz arcp contract afn float %i.as, 2.000000e+00
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %i.am ; 2 uses
  %i.av = load i32, ptr %i.s, align 4, !tbaa !17
  %spec.select = call i32 @llvm.smax.i32(i32 %i.av, i32 1) ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.au, f0x3F871634
  br i1 %i.aw, label %.lr.ph.i, label %num_steps_to_reach_equivalent_sigma.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.09.i = phi float [ %i.be, %.lr.ph.i ], [ f0x3F871634, %bb.e ] ; 2 uses
  %.078.i = phi i32 [ %i.ax, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %i.ax = add i32 %.078.i, 1                      ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %.09.i, %.09.i
  %i.az = shl nuw i32 1, %i.ax
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to float
  %i.bb = fmul reassoc nnan nsz arcp contract afn float %i.ba, f0x3F871634 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn float %i.bb, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ay
  %i.be = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bd) ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn olt float %i.be, %i.au
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bg = add i32 %.078.i, 2
  %i.bh = call i32 @llvm.smax.i32(i32 %i.bg, i32 1)
  %i.bi = call i32 @llvm.umin.i32(i32 %i.bh, i32 10)
  br label %num_steps_to_reach_equivalent_sigma.exit

num_steps_to_reach_equivalent_sigma.exit:         ; preds = %bb.e, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i32 [ 1, %bb.e ], [ %i.bi, %._crit_edge.loopexit.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  %i.bj = shl i64 %i.ac, 4
  %wide.trip.count = zext nneg i32 %.07.lcssa.i to i64 ; 4 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.i
  %.not93 = icmp eq i32 %spec.select97, 0
  br i1 %.not93, label %bb.k, label %bb.j

bb.g:                                             ; preds = %num_steps_to_reach_equivalent_sigma.exit, %bb.i
  %indvars.iv = phi i64 [ 0, %num_steps_to_reach_equivalent_sigma.exit ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.081126 = phi i32 [ %i.ag, %num_steps_to_reach_equivalent_sigma.exit ], [ %spec.select97, %bb.i ] ; 2 uses
  %.not95 = icmp eq i32 %.081126, 0
  br i1 %.not95, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = call ptr @dt_alloc_aligned(i64 noundef %i.bj) #20 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bk, i64 64) ]
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bl = phi ptr [ %i.bk, %bb.h ], [ null, %bb.g ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !110
  %.not96 = icmp eq ptr %i.bl, null
  %spec.select97 = select i1 %.not96, i32 1, i32 %.081126 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.g

bb.j:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !107
  %i.bp = sext i32 %i.bo to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.bp, ptr noundef %4, ptr noundef %5) #20
  %i.bq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #20
  call void (ptr, ...) @dt_control_log(ptr noundef %i.bq) #20
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.bs = load float, ptr %i.br, align 4, !tbaa !111 ; 5 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ule float %i.bs, 0.000000e+00 ; 2 uses
  br i1 %i.bt, label %inpaint_mask.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = load i32, ptr %i.t, align 4, !tbaa !109
  %i.bv = sext i32 %i.bu to i64
  %i.bw = load i32, ptr %i.u, align 4, !tbaa !108
  %i.bx = sext i32 %i.bw to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.by = shl nsw i64 %i.bv, 2
  %i.bz = mul i64 %i.by, %i.bx                    ; 3 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %build_mask.exit.thread, label %.lr.ph.i99.preheader

.lr.ph.i99.preheader:                             ; preds = %bb.l
  %i.ca = add i64 %i.bz, -4                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.ca, 32
  br i1 %min.iters.check, label %.lr.ph.i99.preheader374, label %vector.ph

.lr.ph.i99.preheader374:                          ; preds = %vector.body, %.lr.ph.i99.preheader
  %.015.i.ph = phi i64 [ 0, %.lr.ph.i99.preheader ], [ %i.cg, %vector.body ]
  br label %.lr.ph.i99

vector.ph:                                        ; preds = %.lr.ph.i99.preheader
  %i.cb = lshr exact i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %i.cd = and i64 %i.cc, 7                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 8, i64 %i.cd
  %n.vec = sub nsw i64 %i.cc, %i.cf               ; 2 uses
  %i.cg = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bs, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %2, <8 x i64> %vec.ind ; 3 uses
  %i.ch = extractelement <8 x ptr> %wide.gep, i64 0
  %wide.vec = load <32 x float>, ptr %i.ch, align 16, !tbaa !20, !alias.scope !112
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.ci = fcmp reassoc nsz arcp contract afn ule <8 x float> %strided.vec, %broadcast.splat ; 2 uses
  %wide.gep228 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep228, <8 x i1> %i.ci, <8 x float> poison), !tbaa !20, !alias.scope !112
  %i.cj = fcmp reassoc nsz arcp contract afn ule <8 x float> %wide.masked.gather, %broadcast.splat
  %i.ck = select <8 x i1> %i.ci, <8 x i1> %i.cj, <8 x i1> zeroinitializer ; 2 uses
  %wide.gep229 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather230 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep229, <8 x i1> %i.ck, <8 x float> poison), !tbaa !20, !alias.scope !112
  %i.cl = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.masked.gather230, %broadcast.splat
  %not. = xor <8 x i1> %i.ck, splat (i1 true)
  %narrow = select <8 x i1> %not., <8 x i1> splat (i1 true), <8 x i1> %i.cl
  %predphi = zext <8 x i1> %narrow to <8 x i8>
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index
  store <8 x i8> %predphi, ptr %i.cm, align 8, !tbaa !43, !alias.scope !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %.lr.ph.i99.preheader374, label %vector.body, !llvm.loop !63

build_mask.exit.thread:                           ; preds = %bb.l
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !110
  br label %inpaint_mask.exit

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.preheader374, %bb.o
  %.015.i = phi i64 [ %i.dc, %bb.o ], [ %.015.i.ph, %.lr.ph.i99.preheader374 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015.i ; 3 uses
  %i.cq = load float, ptr %i.cp, align 16, !tbaa !20, !alias.scope !112
  %i.cr = fcmp reassoc nsz arcp contract afn ogt float %i.cq, %i.bs
  br i1 %i.cr, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i99
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !20, !alias.scope !112
  %i.cu = fcmp reassoc nsz arcp contract afn ogt float %i.ct, %i.bs
  br i1 %i.cu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !20, !alias.scope !112
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %i.cw, %i.bs
  %i.cy = zext i1 %i.cx to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i99
  %i.cz = phi i8 [ 1, %bb.m ], [ 1, %.lr.ph.i99 ], [ %i.cy, %bb.n ]
  %i.da = lshr exact i64 %.015.i, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.da
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !43, !alias.scope !113
  %i.dc = add nuw i64 %.015.i, 4                  ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.bz
  br i1 %i.dd, label %.lr.ph.i99, label %build_mask.exit, !llvm.loop !64

build_mask.exit:                                  ; preds = %bb.o
  %.pre = load i32, ptr %i.t, align 4, !tbaa !109
  %.pre157 = load i32, ptr %i.u, align 4, !tbaa !108
  %.pre158 = sext i32 %.pre to i64                ; 2 uses
  %.pre159 = sext i32 %.pre157 to i64
  %.pre161 = shl nsw i64 %.pre158, 2
  %.pre163 = mul i64 %.pre161, %.pre159           ; 2 uses
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !110 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %.not59.i = icmp eq i64 %.pre163, 0
  br i1 %.not59.i, label %inpaint_mask.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %build_mask.exit
  %i.df = add i64 %.pre163, -4
  %i.dg = lshr exact i64 %i.df, 2
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %indvar.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvar.next.i, %.loopexit.i ] ; 3 uses
  %.03458.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.hf, %.loopexit.i ] ; 9 uses
  %i.dh = lshr exact i64 %.03458.i, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !43, !alias.scope !118
  %.not.i101 = icmp eq i8 %i.dj, 0
  br i1 %.not.i101, label %.preheader.preheader.i, label %gaussian_noise.exit.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i100
  %i.dk = shl i64 %indvar.i, 4                    ; 2 uses
  %scevgep61.i = getelementptr i8, ptr %2, i64 %i.dk
  %scevgep.i = getelementptr i8, ptr %i.de, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %scevgep61.i, i64 16, i1 false), !tbaa !20, !alias.scope !119
  br label %.loopexit.i

gaussian_noise.exit.i:                            ; preds = %.lr.ph.i100
  %i.dl = udiv i64 %.03458.i, %.pre158            ; 3 uses
  %i.dm = sub nuw i64 %.03458.i, %i.dl            ; 2 uses
  %i.dn = add i64 %i.dm, 1
  %i.do = and i64 %i.dn, 4294967295               ; 2 uses
  %i.dp = mul i64 %i.do, 7109453100751455733      ; 2 uses
  %i.dq = lshr i64 %i.dp, 28
  %i.dr = xor i64 %i.dq, %i.dp
  %i.ds = mul i64 %i.dr, -3808689974395783757
  %i.dt = lshr i64 %i.ds, 32
  %i.du = trunc nuw i64 %i.dt to i32              ; 2 uses
  %i.dv = add nuw i64 %i.dl, 3
  %i.dw = and i64 %i.dv, 4294967295
  %i.dx = mul nuw i64 %i.do, %i.dw                ; 2 uses
  %i.dy = lshr i64 %i.dx, 33
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = mul i64 %i.dz, 7109453100751455733      ; 2 uses
  %i.eb = lshr i64 %i.ea, 28
  %i.ec = xor i64 %i.eb, %i.ea
  %i.ed = mul i64 %i.ec, -3808689974395783757
  %i.ee = lshr i64 %i.ed, 32
  %i.ef = trunc nuw i64 %i.ee to i32              ; 3 uses
  %i.eg = shl i32 %i.ef, 9
  %i.eh = xor i32 %i.du, 635086878                ; 2 uses
  %i.ei = xor i32 %i.ef, -1171427716              ; 3 uses
  %i.ej = xor i32 %i.eh, %i.ef                    ; 3 uses
  %i.ek = xor i32 %i.ei, %i.du                    ; 2 uses
  %i.el = xor i32 %i.eg, %i.eh
  %i.em = call noundef i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 11)
  %i.en = shl i32 %i.ej, 9
  %i.eo = xor i32 %i.el, %i.ek                    ; 2 uses
  %i.ep = xor i32 %i.em, %i.ej                    ; 3 uses
  %i.eq = xor i32 %i.eo, %i.ej                    ; 3 uses
  %i.er = xor i32 %i.ep, %i.ek                    ; 2 uses
  %i.es = xor i32 %i.eo, %i.en
  %i.et = call noundef i32 @llvm.fshl.i32(i32 %i.ep, i32 %i.ep, i32 11)
  %i.eu = shl i32 %i.eq, 9
  %i.ev = xor i32 %i.es, %i.er                    ; 2 uses
  %i.ew = xor i32 %i.eq, %i.et                    ; 3 uses
  %i.ex = xor i32 %i.ev, %i.eq                    ; 3 uses
  %i.ey = xor i32 %i.ew, %i.er                    ; 2 uses
  %i.ez = xor i32 %i.ev, %i.eu
  %i.fa = call noundef i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ew, i32 11)
  %i.fb = shl i32 %i.ex, 9
  %i.fc = xor i32 %i.ez, %i.ey                    ; 2 uses
  %i.fd = xor i32 %i.ex, %i.fa                    ; 3 uses
  %i.fe = xor i32 %i.fc, %i.ex                    ; 3 uses
  %i.ff = xor i32 %i.fc, %i.fb
  %i.fg = or i64 %i.dm, %i.dl
  %i.fh = and i64 %i.fg, 1
  %.not.i.i = icmp eq i64 %i.fh, 0                ; 4 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03458.i
  %6 = load float, ptr %i.fi, align 16, !tbaa !20, !alias.scope !117 ; 2 uses
  %i.fj = shl i32 %i.fe, 9
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.03458.i
  %8 = or disjoint i64 %.03458.i, 1               ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !20, !alias.scope !117 ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %8
  %12 = or disjoint i64 %.03458.i, 2              ; 2 uses
  %13 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %12
  %14 = load float, ptr %13, align 8, !tbaa !20, !alias.scope !117 ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %12
  %15 = or disjoint i64 %.03458.i, 3              ; 2 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !20, !alias.scope !117 ; 2 uses
  %i.fl = xor i32 %i.fd, %i.ey                    ; 3 uses
  %i.fm = call noundef i32 @llvm.fshl.i32(i32 %i.fd, i32 %i.fd, i32 11) ; 2 uses
  %18 = xor i32 %i.ff, %i.fl                      ; 2 uses
  %i.fn = xor i32 %i.fe, %i.fm                    ; 3 uses
  %i.fo = xor i32 %18, %i.fe                      ; 3 uses
  %i.fp = xor i32 %i.fn, %i.fl                    ; 3 uses
  %i.fq = xor i32 %18, %i.fj
  %19 = call noundef i32 @llvm.fshl.i32(i32 %i.fn, i32 %i.fn, i32 11) ; 2 uses
  %20 = add i32 %19, %i.fp
  %i.fr = shl i32 %i.fo, 9
  %i.fs = xor i32 %i.fq, %i.fp                    ; 2 uses
  %i.ft = xor i32 %i.fo, %19                      ; 3 uses
  %i.fu = xor i32 %i.fs, %i.fo                    ; 3 uses
  %i.fv = xor i32 %i.ft, %i.fp                    ; 3 uses
  %i.fw = xor i32 %i.fs, %i.fr
  %i.fx = call noundef i32 @llvm.fshl.i32(i32 %i.ft, i32 %i.ft, i32 11) ; 2 uses
  %21 = lshr i32 %20, 8
  %22 = uitofp reassoc nsz arcp contract afn nneg i32 %21 to float
  %23 = fmul reassoc nnan nsz arcp contract afn float %22, f0x34C90FDB
  %sincos.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %23) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %.sink.i.i = select i1 %.not.i.i, float %sin.i.i, float %cos.i.i
  %i.fy = add i32 %i.fl, %i.fm
  %i.fz = shl i32 %i.fu, 9
  %i.ga = xor i32 %i.fw, %i.fv                    ; 2 uses
  %i.gb = xor i32 %i.fu, %i.fx                    ; 3 uses
  %i.gc = xor i32 %i.ga, %i.fu                    ; 3 uses
  %i.gd = xor i32 %i.gb, %i.fv                    ; 3 uses
  %i.ge = xor i32 %i.ga, %i.fz
  %i.gf = call noundef i32 @llvm.fshl.i32(i32 %i.gb, i32 %i.gb, i32 11) ; 2 uses
  %i.gg = shl i32 %i.gc, 9
  %i.gh = xor i32 %i.ge, %i.gd                    ; 2 uses
  %i.gi = xor i32 %i.gc, %i.gf                    ; 3 uses
  %i.gj = xor i32 %i.gh, %i.gc                    ; 3 uses
  %i.gk = xor i32 %i.gi, %i.gd                    ; 3 uses
  %i.gl = xor i32 %i.gh, %i.gg
  %i.gm = call noundef i32 @llvm.fshl.i32(i32 %i.gi, i32 %i.gi, i32 11) ; 2 uses
  %i.gn = add i32 %i.fv, %i.fx
  %i.go = xor i32 %i.gl, %i.gk                    ; 2 uses
  %i.gp = xor i32 %i.gj, %i.gm                    ; 3 uses
  %i.gq = xor i32 %i.go, %i.gj                    ; 2 uses
  %i.gr = xor i32 %i.gp, %i.gk                    ; 3 uses
  %i.gs = call noundef i32 @llvm.fshl.i32(i32 %i.gp, i32 %i.gp, i32 11) ; 2 uses
  %i.gt = xor i32 %i.gq, %i.gs                    ; 3 uses
  %i.gu = xor i32 %i.gt, %i.gr                    ; 2 uses
  %i.gv = call noundef i32 @llvm.fshl.i32(i32 %i.gt, i32 %i.gt, i32 11) ; 2 uses
  %24 = add i32 %i.gk, %i.gm
  %i.gw = add i32 %i.gu, %i.gv
  %i.gx = insertelement <4 x i32> poison, i32 %i.fy, i64 0
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gn, i64 1
  %i.gz = insertelement <4 x i32> %i.gy, i32 %24, i64 2
  %i.ha = insertelement <4 x i32> %i.gz, i32 %i.gw, i64 3
  %i.hb = lshr <4 x i32> %i.ha, splat (i32 8)
  %i.hc = uitofp reassoc nsz arcp contract afn nneg <4 x i32> %i.hb to <4 x float>
  %i.hd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.hc, splat (float f0x33800000)
  %25 = call reassoc nnan nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.hd, <4 x float> splat (float f0x00800000))
  %26 = add i32 %i.gf, %i.gd
  %27 = lshr i32 %26, 8
  %28 = uitofp reassoc nsz arcp contract afn nneg i32 %27 to float
  %29 = fmul reassoc nnan nsz arcp contract afn float %28, f0x34C90FDB
  %sincos.i.1.i.a = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %29) ; 2 uses
  %sin.i.1.i.a = extractvalue { float, float } %sincos.i.1.i.a, 0
  %cos.i.1.i.a = extractvalue { float, float } %sincos.i.1.i.a, 1
  %.sink.i.1.i.a = select i1 %.not.i.i, float %sin.i.1.i.a, float %cos.i.1.i.a
  %30 = shl i32 %i.gj, 9
  %31 = xor i32 %i.go, %30
  %32 = add i32 %i.gs, %i.gr
  %33 = xor i32 %31, %i.gr
  %34 = xor i32 %33, %i.gq
  %35 = lshr i32 %32, 8
  %36 = uitofp reassoc nsz arcp contract afn nneg i32 %35 to float
  %37 = fmul reassoc nnan nsz arcp contract afn float %36, f0x34C90FDB
  %sincos.i.2.i.a = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %37) ; 2 uses
  %sin.i.2.i.a = extractvalue { float, float } %sincos.i.2.i.a, 0
  %cos.i.2.i.a = extractvalue { float, float } %sincos.i.2.i.a, 1
  %.sink.i.2.i.a = select i1 %.not.i.i, float %sin.i.2.i.a, float %cos.i.2.i.a
  %38 = xor i32 %34, %i.gv                        ; 3 uses
  %39 = xor i32 %38, %i.gu
  %40 = call noundef i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 11)
  %i.he = add i32 %40, %39
  %41 = lshr i32 %i.he, 8
  %42 = uitofp reassoc nsz arcp contract afn nneg i32 %41 to float
  %43 = fmul reassoc nnan nsz arcp contract afn float %42, f0x34C90FDB
  %sincos.i.3.i.a = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %43) ; 2 uses
  %sin.i.3.i.a = extractvalue { float, float } %sincos.i.3.i.a, 0
  %cos.i.3.i.a = extractvalue { float, float } %sincos.i.3.i.a, 1
  %.sink.i.3.i.a = select i1 %.not.i.i, float %sin.i.3.i.a, float %cos.i.3.i.a
  %44 = call fast <4 x float> @llvm.log.v4f32(<4 x float> %25)
  %45 = fmul reassoc nnan nsz arcp contract afn <4 x float> %44, splat (float -2.000000e+00)
  %46 = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %45) ; 4 uses
  %47 = extractelement <4 x float> %46, i64 0
  %48 = fmul reassoc nsz arcp contract afn float %47, %6
  %49 = fmul reassoc nsz arcp contract afn float %48, %.sink.i.i
  %50 = fadd reassoc nsz arcp contract afn float %49, %6
  %51 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %50)
  store float %51, ptr %7, align 4, !tbaa !20, !alias.scope !116
  %52 = extractelement <4 x float> %46, i64 1
  %53 = fmul reassoc nsz arcp contract afn float %52, %10
  %54 = fmul reassoc nsz arcp contract afn float %53, %.sink.i.1.i.a
  %55 = fadd reassoc nsz arcp contract afn float %54, %10
  %56 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %55)
  store float %56, ptr %11, align 4, !tbaa !20, !alias.scope !116
  %57 = extractelement <4 x float> %46, i64 2
  %58 = fmul reassoc nsz arcp contract afn float %57, %14
  %59 = fmul reassoc nsz arcp contract afn float %58, %.sink.i.2.i.a
  %60 = fadd reassoc nsz arcp contract afn float %59, %14
  %61 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %60)
  store float %61, ptr %i.fk, align 4, !tbaa !20, !alias.scope !116
  %62 = extractelement <4 x float> %46, i64 3
  %63 = fmul reassoc nsz arcp contract afn float %62, %17
  %64 = fmul reassoc nsz arcp contract afn float %63, %.sink.i.3.i.a
  %65 = fadd reassoc nsz arcp contract afn float %64, %17
  %66 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %65)
  %67 = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %15
  store float %66, ptr %67, align 4, !tbaa !20, !alias.scope !116
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %gaussian_noise.exit.i, %.preheader.preheader.i
  %i.hf = add nuw i64 %.03458.i, 4
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond.not.i = icmp eq i64 %indvar.i, %i.dg
  br i1 %exitcond.not.i, label %inpaint_mask.exit, label %.lr.ph.i100

inpaint_mask.exit:                                ; preds = %.loopexit.i, %build_mask.exit.thread, %build_mask.exit, %bb.k
  %.085 = phi ptr [ %2, %bb.k ], [ %i.de, %build_mask.exit ], [ %i.co, %build_mask.exit.thread ], [ %i.de, %.loopexit.i ]
  %i.hg = add nsw i32 %spec.select, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.hi = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %exitcond176.peel.not.i = icmp eq i32 %.07.lcssa.i, 1
  %i.hk = and i32 %.07.lcssa.i, 1
  %.not102.us.us.le.not.i = icmp eq i32 %i.hk, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.hm = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.ho = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.jh = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.kf = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.kg = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.kh = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ki = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.kj = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.kk = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.kl = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.km = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.kn = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.li = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.lj = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.lk = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.lm = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.lo = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.lp = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.f, i64 52 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.mj = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.mk = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.ml = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.mm = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.mn = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.mp = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.mq = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.my = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %wide.gep255 = getelementptr inbounds nuw [16 x i8], ptr %i.c, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep256 = getelementptr inbounds nuw [16 x i8], ptr %i.b, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep257 = getelementptr inbounds nuw [16 x i8], ptr %i.d, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep258 = getelementptr inbounds nuw [16 x i8], ptr %i.e, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep259 = getelementptr inbounds nuw [16 x i8], ptr %i.a, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep260 = getelementptr inbounds nuw [16 x i8], ptr %i.f, <4 x i64> <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %wide.gep267 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 4
  %wide.gep269 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 4
  %wide.gep271 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257, i64 4
  %wide.gep273 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258, i64 4
  %wide.gep275 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259, i64 4
  %wide.gep277 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260, i64 4
  %wide.gep279 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 8
  %wide.gep281 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 8
  %wide.gep283 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257, i64 8
  %wide.gep285 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258, i64 8
  %wide.gep287 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259, i64 8
  %wide.gep289 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260, i64 8
  %wide.gep291 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 12
  %wide.gep293 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 12
  %wide.gep295 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257, i64 12
  %wide.gep297 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258, i64 12
  %wide.gep299 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259, i64 12
  %wide.gep301 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260, i64 12
  %wide.gep255.1 = getelementptr inbounds nuw [16 x i8], ptr %i.c, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep256.1 = getelementptr inbounds nuw [16 x i8], ptr %i.b, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep257.1 = getelementptr inbounds nuw [16 x i8], ptr %i.d, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep258.1 = getelementptr inbounds nuw [16 x i8], ptr %i.e, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep259.1 = getelementptr inbounds nuw [16 x i8], ptr %i.a, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep260.1 = getelementptr inbounds nuw [16 x i8], ptr %i.f, <4 x i64> <i64 4, i64 5, i64 6, i64 7> ; 4 uses
  %wide.gep267.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.1, i64 4
  %wide.gep269.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.1, i64 4
  %wide.gep271.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.1, i64 4
  %wide.gep273.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep258.1, i64 4
  %wide.gep275.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep259.1, i64 4
  %wide.gep277.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep260.1, i64 4
  %wide.gep279.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255.1, i64 8
  %wide.gep281.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256.1, i64 8
  %wide.gep283.1 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep257.1, i64 8
end_hunk_0
begin_hunk_1_@get_p:bb.a
bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(19) @.str.61) #22
  %.not35 = icmp eq i32 %i.h, 0
  br i1 %.not35, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.48) #22
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.ac

bb.l:                                             ; preds = %bb.j
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.50) #22
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(17) @.str.52) #22
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(18) @.str.54) #22
  %.not39 = icmp eq i32 %i.p, 0
  br i1 %.not39, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.64) #22
  %.not40 = icmp eq i32 %i.r, 0
  br i1 %.not40, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.38) #22
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.41) #22
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.43) #22
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.45) #22
  %.not44 = icmp eq i32 %i.z, 0
  br i1 %.not44, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.32) #22
  %.not45 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %spec.select = select i1 %.not45, ptr %i.ac, ptr null
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.a, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.ab ], [ %i.aa, %bb.aa ], [ %i.y, %bb.y ], [ %i.w, %bb.w ], [ %i.u, %bb.u ], [ %i.s, %bb.s ], [ %i.q, %bb.q ], [ %i.o, %bb.o ], [ %i.m, %bb.m ], [ %i.k, %bb.k ], [ %i.i, %bb.i ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.57) #20
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.35) #20
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.59) #20
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.61) #20
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.48) #20
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.50) #20
  %.not21 = icmp eq i32 %i.g, 0
  br i1 %.not21, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.52) #20
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.54) #20
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.64) #20
  %.not24 = icmp eq i32 %i.j, 0
  br i1 %.not24, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.38) #20
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.41) #20
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.43) #20
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.45) #20
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.32) #20
  %.not29 = icmp eq i32 %i.o, 0
  %. = select i1 %.not29, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), ptr null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ %., %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare void @dt_dump_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(none) uwtable
define internal fastcc float @equivalent_sigma_at_step(i32 noundef range(i32 0, -2147483648) %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %common.ret1, label %bb.b

common.ret1:                                      ; preds = %bb.a, %bb.b
  %common.ret1.op = phi float [ %i.j, %bb.b ], [ f0x3F871634, %bb.a ]
  ret float %common.ret1.op

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  %i.c = tail call fastcc float @equivalent_sigma_at_step(i32 noundef %i.b) ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = uitofp reassoc nsz arcp contract afn nneg i32 %0 to float
  %i.f = tail call reassoc nnan nsz arcp contract afn float @llvm.exp2.f32(float %i.e)
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.f, f0x3F871634 ; 2 uses
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.i = fadd reassoc nsz arcp contract afn float %i.d, %i.h
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.i)
  br label %common.ret1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { inlinehint nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS8_GModule", !12, i64 0}
!16 = !{!"dt_iop_diffuse_params_t", !8, i64 0, !11, i64 4, !8, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !8, i64 56}
!17 = !{!16, !8, i64 0}
!18 = !{!16, !11, i64 4}
!19 = !{!16, !8, i64 8}
!20 = !{!11, !11, i64 0}
!21 = !{!16, !11, i64 52}
!22 = !{!16, !8, i64 56}
!23 = !{!"p1 _ZTS15dt_iop_module_t", !12, i64 0}
!24 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !12, i64 0}
!25 = !{!"p1 _ZTS18dt_histogram_roi_t", !12, i64 0}
!26 = !{!"dt_dev_histogram_collection_params_t", !25, i64 0, !8, i64 8}
!27 = !{!"p1 int", !12, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !28, i64 8, !8, i64 16, !8, i64 20}
!30 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!31 = !{!"short", !7, i64 0}
!32 = !{!"", !31, i64 0, !31, i64 2}
!33 = !{!"", !8, i64 0, !7, i64 16}
!34 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !32, i64 48, !33, i64 64, !7, i64 96, !8, i64 112}
!35 = !{!"p1 _ZTS11_GHashTable", !12, i64 0}
!36 = !{!"p1 float", !12, i64 0}
!37 = !{!"dt_dev_distorted_mask_cache_t", !36, i64 0, !30, i64 8, !28, i64 32, !28, i64 40}
!38 = !{!"dt_dev_pixelpipe_iop_t", !23, i64 0, !24, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !8, i64 36, !26, i64 40, !27, i64 56, !29, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !28, i64 120, !8, i64 128, !8, i64 132, !30, i64 136, !30, i64 156, !30, i64 176, !30, i64 196, !8, i64 216, !8, i64 220, !34, i64 224, !34, i64 352, !7, i64 480, !8, i64 516, !35, i64 520, !37, i64 528, !37, i64 576}
!39 = !{!38, !12, i64 16}
!40 = !{!38, !11, i64 104}
!41 = !{!30, !11, i64 16}
!42 = !{!"dt_pthread_mutex_t", !7, i64 0}
!43 = !{!7, !7, i64 0}
!44 = !{!"p1 _ZTS12dt_develop_t", !12, i64 0}
!45 = !{!"p1 _ZTS10_GtkWidget", !12, i64 0}
!46 = !{!"dt_iop_diffuse_params_v2_t", !8, i64 0, !11, i64 4, !8, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !8, i64 56}
!47 = !{!46, !8, i64 56}
!48 = !{!8, !8, i64 0}
!49 = !{!"p1 _ZTS11dt_action_t", !12, i64 0}
!50 = !{!"dt_action_t", !8, i64 0, !14, i64 8, !14, i64 16, !12, i64 24, !49, i64 32, !49, i64 40}
!51 = !{!"dt_iop_module_so_t", !50, i64 0, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !12, i64 480, !15, i64 488, !7, i64 496, !12, i64 520, !8, i64 528, !12, i64 536, !8, i64 544, !8, i64 548}
!52 = !{!51, !12, i64 48}
!53 = !{!16, !11, i64 28}
!54 = !{!"dt_develop_tiling_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!55 = !{!54, !11, i64 0}
!56 = !{!54, !11, i64 4}
!57 = !{!54, !8, i64 16}
!58 = !{!54, !8, i64 20}
!59 = !{!54, !8, i64 24}
!60 = distinct !{!60, i1 true, !"build_mask"}
!61 = distinct !{!61, !60, !"build_mask: argument 0"}
!62 = distinct !{!62, !60, !"build_mask: argument 1"}
!63 = distinct !{!63, !114, !115}
!64 = distinct !{!64, !115, !114}
!65 = distinct !{!65, i1 true, !"inpaint_mask"}
!66 = distinct !{!66, !65, !"inpaint_mask: argument 0"}
!67 = distinct !{!67, !65, !"inpaint_mask: argument 1"}
!68 = distinct !{!68, !65, !"inpaint_mask: argument 2"}
!69 = distinct !{!69, i1 true, !"wavelets_process"}
!70 = distinct !{!70, !69, !"wavelets_process: argument 0"}
!71 = distinct !{!71, !69, !"wavelets_process: argument 1"}
!72 = distinct !{!72, !69, !"wavelets_process: argument 2"}
!73 = distinct !{!73, !69, !"wavelets_process: argument 3"}
!74 = distinct !{!74, !69, !"wavelets_process: argument 4"}
!75 = distinct !{!75, i1 true, !"decompose_2D_Bspline"}
!76 = distinct !{!76, !75, !"decompose_2D_Bspline: argument 0"}
!77 = distinct !{!77, !167, !168}
!78 = distinct !{!78, i1 true, !"_bspline_vertical_pass"}
!79 = distinct !{!79, !78, !"_bspline_vertical_pass: argument 0"}
!80 = distinct !{!80, !78, !"_bspline_vertical_pass: argument 1"}
!81 = distinct !{!81, !114, !115}
!82 = distinct !{!82, !115, !114}
!83 = distinct !{!83, i1 true, !"_bspline_horizontal"}
!84 = distinct !{!84, !83, !"_bspline_horizontal: argument 0"}
!85 = distinct !{!85, !83, !"_bspline_horizontal: argument 1"}
!86 = distinct !{!86, i1 true, !"heat_PDE_diffusion"}
!87 = distinct !{!87, !86, !"heat_PDE_diffusion: argument 0"}
!88 = distinct !{!88, !86, !"heat_PDE_diffusion: argument 1"}
!89 = distinct !{!89, !86, !"heat_PDE_diffusion: argument 2"}
!90 = distinct !{!90, !86, !"heat_PDE_diffusion: argument 3"}
!91 = !{!38, !24, i64 8}
!92 = !{!"any p2 pointer", !12, i64 0}
!93 = !{!"p1 long", !12, i64 0}
!94 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !12, i64 0}
!95 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !28, i64 8, !28, i64 16, !92, i64 24, !93, i64 32, !94, i64 40, !93, i64 48, !27, i64 56, !27, i64 64, !28, i64 72, !8, i64 80, !28, i64 88, !28, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!96 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !12, i64 0}
!97 = !{!"p1 _ZTS6_GList", !12, i64 0}
!98 = !{!"dt_dev_detail_mask_t", !30, i64 0, !28, i64 24, !36, i64 32}
!99 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!100 = !{!"double", !7, i64 0}
!101 = !{!"dt_image_geoloc_t", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!103 = !{!"p1 _ZTS16dt_cache_entry_t", !12, i64 0}
!104 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !28, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !28, i64 1448, !28, i64 1456, !28, i64 1464, !28, i64 1472, !8, i64 1480, !34, i64 1488, !7, i64 1616, !14, i64 1656, !8, i64 1664, !8, i64 1668, !99, i64 1672, !101, i64 1680, !102, i64 1704, !31, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !97, i64 1856, !103, i64 1864, !8, i64 1872, !8, i64 1876}
!105 = !{!"dt_dev_pixelpipe_t", !95, i64 0, !8, i64 120, !28, i64 128, !36, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !34, i64 176, !96, i64 304, !96, i64 312, !96, i64 320, !96, i64 328, !97, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !14, i64 360, !28, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !28, i64 416, !42, i64 424, !42, i64 464, !42, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !98, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !104, i64 656, !8, i64 2544, !14, i64 2552, !8, i64 2560, !97, i64 2568, !97, i64 2576, !97, i64 2584, !8, i64 2592, !36, i64 2600, !28, i64 2608, !7, i64 2616, !7, i64 2632}
!106 = !{!105, !8, i64 644}
!107 = !{!38, !8, i64 132}
!108 = !{!30, !8, i64 12}
!109 = !{!30, !8, i64 8}
!110 = !{!36, !36, i64 0}
!111 = !{!16, !11, i64 36}
!112 = !{!61}
!113 = !{!62}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{!66}
!117 = !{!67}
!118 = !{!68}
!119 = !{!66, !67}
!120 = !{!70}
!121 = !{!71}
!122 = !{!72}
!123 = !{!73}
!124 = !{!74}
!125 = !{!70, !71, !72, !73, !74}
!126 = !{!16, !11, i64 12}
!127 = !{!16, !11, i64 16}
!128 = !{!"dt_codepath_t", !8, i64 0}
!129 = !{!"p1 _ZTS11_JsonParser", !12, i64 0}
!130 = !{!"p1 _ZTS9dt_conf_t", !12, i64 0}
!131 = !{!"p1 _ZTS8dt_lib_t", !12, i64 0}
!132 = !{!"p1 _ZTS17dt_view_manager_t", !12, i64 0}
!133 = !{!"p1 _ZTS12dt_control_t", !12, i64 0}
!134 = !{!"p1 _ZTS19dt_control_signal_t", !12, i64 0}
!135 = !{!"p1 _ZTS12dt_gui_gtk_t", !12, i64 0}
!136 = !{!"p1 _ZTS17dt_mipmap_cache_t", !12, i64 0}
!137 = !{!"p1 _ZTS16dt_image_cache_t", !12, i64 0}
!138 = !{!"p1 _ZTS12dt_bauhaus_t", !12, i64 0}
!139 = !{!"p1 _ZTS13dt_database_t", !12, i64 0}
!140 = !{!"p1 _ZTS14dt_pwstorage_t", !12, i64 0}
!141 = !{!"p1 _ZTS11dt_camctl_t", !12, i64 0}
!142 = !{!"p1 _ZTS15dt_collection_t", !12, i64 0}
!143 = !{!"p1 _ZTS14dt_selection_t", !12, i64 0}
!144 = !{!"p1 _ZTS11dt_points_t", !12, i64 0}
!145 = !{!"p1 _ZTS12dt_imageio_t", !12, i64 0}
!146 = !{!"p1 _ZTS11dt_opencl_t", !12, i64 0}
!147 = !{!"p1 _ZTS9dt_dbus_t", !12, i64 0}
!148 = !{!"p1 _ZTS9dt_undo_t", !12, i64 0}
!149 = !{!"p1 _ZTS16dt_colorspaces_t", !12, i64 0}
!150 = !{!"p1 _ZTS9dt_l10n_t", !12, i64 0}
!151 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!152 = !{!"_Bool", !7, i64 0}
!153 = !{!"p1 _ZTS10_GMainLoop", !12, i64 0}
!154 = !{!"p1 _ZTS13_GMainContext", !12, i64 0}
!155 = !{!"p1 _ZTS12_GThreadPool", !12, i64 0}
!156 = !{!"p1 _ZTS12_GAsyncQueue", !12, i64 0}
!157 = !{!"", !151, i64 0, !42, i64 8, !7, i64 48, !152, i64 96, !152, i64 97, !153, i64 104, !154, i64 112, !155, i64 120, !156, i64 128, !156, i64 136, !156, i64 144}
!158 = !{!"p1 _ZTS10_GTimeZone", !12, i64 0}
!159 = !{!"p1 _ZTS10_GDateTime", !12, i64 0}
!160 = !{!"dt_sys_resources_t", !28, i64 0, !28, i64 8, !27, i64 16, !27, i64 24, !8, i64 32}
!161 = !{!"dt_backthumb_t", !100, i64 0, !100, i64 8, !8, i64 16, !8, i64 20}
!162 = !{!"dt_gimp_t", !8, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28}
!163 = !{!"dt_splash_t", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !8, i64 32}
!164 = !{!"darktable_t", !128, i64 0, !8, i64 4, !8, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !129, i64 48, !130, i64 56, !44, i64 64, !131, i64 72, !132, i64 80, !133, i64 88, !134, i64 96, !135, i64 104, !136, i64 112, !137, i64 120, !138, i64 128, !139, i64 136, !140, i64 144, !141, i64 152, !142, i64 160, !143, i64 168, !144, i64 176, !145, i64 184, !146, i64 192, !147, i64 200, !148, i64 208, !149, i64 216, !150, i64 224, !7, i64 232, !42, i64 2792, !42, i64 2832, !42, i64 2872, !42, i64 2912, !42, i64 2952, !42, i64 2992, !14, i64 3032, !14, i64 3040, !14, i64 3048, !14, i64 3056, !14, i64 3064, !14, i64 3072, !14, i64 3080, !14, i64 3088, !14, i64 3096, !14, i64 3104, !14, i64 3112, !14, i64 3120, !14, i64 3128, !157, i64 3136, !97, i64 3288, !100, i64 3296, !97, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !158, i64 3520, !159, i64 3528, !160, i64 3536, !161, i64 3576, !162, i64 3600, !163, i64 3632, !8, i64 3672}
!165 = !{!164, !14, i64 3096}
!166 = !{!76}
!167 = !{!"llvm.loop.unswitch.partial.disable"}
!168 = !{!"llvm.loop.peeled.count", i32 1}
!169 = !{!79}
!170 = !{!80}
!171 = !{!79, !70, !73, !74}
end_hunk_1
