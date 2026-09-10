Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/deflate_compress?download=true
inline.NumInlined: 48
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 50
begin_hunk_0_@llvm.sadd.sat.v8i16
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @do_end_block_check(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !171  ; 6 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre60 = load i32, ptr %.phi.trans.insert59, align 4, !tbaa !22
  %.phi.trans.insert64 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre65 = load i32, ptr %.phi.trans.insert64, align 4, !tbaa !22
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre67 = load i32, ptr %.phi.trans.insert66, align 4, !tbaa !22
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.pre72 = load i32, ptr %.phi.trans.insert71, align 4, !tbaa !22
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre74 = load i32, ptr %.phi.trans.insert73, align 4, !tbaa !22
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !22
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !22
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.pre86 = load i32, ptr %.phi.trans.insert85, align 4, !tbaa !22
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre88 = load i32, ptr %.phi.trans.insert87, align 4, !tbaa !22
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre93 = load i32, ptr %.phi.trans.insert92, align 4, !tbaa !22
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre95 = load i32, ptr %.phi.trans.insert94, align 4, !tbaa !22
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre100 = load i32, ptr %.phi.trans.insert99, align 4, !tbaa !22
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 3 uses
  %i.f = load <8 x i32>, ptr %i.c, align 4, !tbaa !22 ; 5 uses
  %i.g = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %i.h = shufflevector <8 x i32> %i.g, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.i = mul <8 x i32> %i.h, %i.f                 ; 3 uses
  %i.j = load <8 x i32>, ptr %0, align 4, !tbaa !22 ; 5 uses
  %i.k = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.l = shufflevector <8 x i32> %i.k, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.m = mul <8 x i32> %i.j, %i.l                 ; 3 uses
  %i.n = icmp ugt <8 x i32> %i.m, %i.i
  %i.o = sub nuw <8 x i32> %i.m, %i.i
  %i.p = sub nuw <8 x i32> %i.i, %i.m
  %i.q = select <8 x i1> %i.n, <8 x i32> %i.o, <8 x i32> %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22   ; 2 uses
  %i.t = mul i32 %i.e, %i.s                       ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22   ; 2 uses
  %i.w = mul i32 %i.v, %i.b                       ; 3 uses
  %i.x = icmp ugt i32 %i.w, %i.t
  %i.y = sub nuw i32 %i.w, %i.t
  %i.z = sub nuw i32 %i.t, %i.w
  %i.aa = select i1 %i.x, i32 %i.y, i32 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22 ; 2 uses
  %i.ad = mul i32 %i.e, %i.ac                     ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22 ; 2 uses
  %i.ag = mul i32 %i.af, %i.b                     ; 3 uses
  %i.ah = icmp ugt i32 %i.ag, %i.ad
  %i.ai = sub nuw i32 %i.ag, %i.ad
  %i.aj = sub nuw i32 %i.ad, %i.ag
  %i.ak = select i1 %i.ah, i32 %i.ai, i32 %i.aj
  %i.al = lshr i32 %1, 12
  %i.am = mul i32 %i.b, %i.al
  %i.an = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.q)
  %op.rdx = add i32 %i.an, %i.aa
  %op.rdx101 = add i32 %i.ak, %i.am
  %op.rdx102 = add i32 %op.rdx, %op.rdx101
  %i.ao = mul i32 %i.b, 200
  %.not42 = icmp ult i32 %op.rdx102, %i.ao
  br i1 %.not42, label %.preheader._crit_edge, label %bb.c

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre = load i32, ptr %i.a, align 4, !tbaa !171
  %i.ap = extractelement <8 x i32> %i.j, i64 4
  %i.aq = extractelement <8 x i32> %i.j, i64 5
  %i.ar = extractelement <8 x i32> %i.j, i64 6
  %i.as = extractelement <8 x i32> %i.j, i64 7
  %i.at = extractelement <8 x i32> %i.f, i64 4
  %i.au = extractelement <8 x i32> %i.f, i64 5
  %i.av = extractelement <8 x i32> %i.f, i64 6
  %i.aw = extractelement <8 x i32> %i.f, i64 7
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.preheader._crit_edge
  %i.ax = phi i32 [ %i.ac, %.preheader._crit_edge ], [ %.pre100, %._crit_edge ]
  %i.ay = phi i32 [ %i.af, %.preheader._crit_edge ], [ %.pre95, %._crit_edge ] ; 2 uses
  %i.az = phi i32 [ %i.s, %.preheader._crit_edge ], [ %.pre93, %._crit_edge ]
  %i.ba = phi i32 [ %i.v, %.preheader._crit_edge ], [ %.pre88, %._crit_edge ] ; 2 uses
  %i.bb = phi i32 [ %i.aw, %.preheader._crit_edge ], [ %.pre86, %._crit_edge ]
  %i.bc = phi i32 [ %i.as, %.preheader._crit_edge ], [ %.pre81, %._crit_edge ] ; 2 uses
  %i.bd = phi i32 [ %i.av, %.preheader._crit_edge ], [ %.pre79, %._crit_edge ]
  %i.be = phi i32 [ %i.ar, %.preheader._crit_edge ], [ %.pre74, %._crit_edge ] ; 2 uses
  %i.bf = phi i32 [ %i.au, %.preheader._crit_edge ], [ %.pre72, %._crit_edge ]
  %i.bg = phi i32 [ %i.aq, %.preheader._crit_edge ], [ %.pre67, %._crit_edge ] ; 2 uses
  %i.bh = phi i32 [ %i.at, %.preheader._crit_edge ], [ %.pre65, %._crit_edge ]
  %i.bi = phi i32 [ %i.ap, %.preheader._crit_edge ], [ %.pre60, %._crit_edge ] ; 2 uses
  %i.bj = phi i32 [ %.pre, %.preheader._crit_edge ], [ 0, %._crit_edge ]
  %.in105 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i32, ptr %.in105, align 4, !tbaa !22 ; 2 uses
  %.in104 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load i32, ptr %.in104, align 4, !tbaa !22
  %.in103 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %.in103, align 4, !tbaa !22 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bn = load i32, ptr %.in, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = load <2 x i32>, ptr %0, align 4, !tbaa !22 ; 3 uses
  %i.bq = extractelement <2 x i32> %i.bp, i64 0
  %i.br = add i32 %i.bj, %i.bq
  %i.bs = extractelement <2 x i32> %i.bp, i64 1
  %i.bt = add i32 %i.br, %i.bs
  %i.bu = load <2 x i32>, ptr %i.bo, align 4, !tbaa !22
  %i.bv = add <2 x i32> %i.bu, %i.bp
  store <2 x i32> %i.bv, ptr %i.bo, align 4, !tbaa !22
  %i.bw = add i32 %i.bt, %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = add i32 %i.bl, %i.bk
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !22
  %i.bz = add i32 %i.bw, %i.bm
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = add i32 %i.bn, %i.bm
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !22
  store <4 x i32> zeroinitializer, ptr %0, align 4, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = add i32 %i.bz, %i.bi
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = add i32 %i.bh, %i.bi
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !22
  %i.cg = add i32 %i.cd, %i.bg
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ci = add i32 %i.bf, %i.bg
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !22
  %i.cj = add i32 %i.cg, %i.be
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cl = add i32 %i.bd, %i.be
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !22
  %i.cm = add i32 %i.cj, %i.bc
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.co = add i32 %i.bb, %i.bc
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !22
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = add i32 %i.cm, %i.ba
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cs = add i32 %i.az, %i.ba
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !22
  store i32 0, ptr %i.cp, align 4, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cu = add i32 %i.cq, %i.ay
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !171
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cw = add i32 %i.ax, %i.ay
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !22
  store i32 0, ptr %i.ct, align 4, !tbaa !22
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.cx, align 4, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.137 = phi i1 [ false, %bb.b ], [ true, %.preheader ]
  ret i1 %.137
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @deflate_make_huffman_code(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 7, 16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !201
  %i.d = add nuw nsw i32 %0, 3
  %i.e = and i32 %i.d, 1020                       ; 4 uses
  %i.f = shl nuw nsw i32 %i.e, 2
  %i.g = zext nneg i32 %i.f to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 0, i64 %i.g, i1 false), !noalias !201
  %i.h = add nsw i32 %i.e, -1                     ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %0 to i64  ; 10 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.b

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa
  %lcmp.mod65 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.i.1
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22, !alias.scope !202, !noalias !203
  %..i.i.epil = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.h)
  %i.k = zext nneg i32 %..i.i.epil to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22, !noalias !201
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !22, !noalias !201
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %wide.trip.count68.i.i = zext nneg i32 %i.e to i64 ; 2 uses
  %i.o = icmp eq i32 %i.e, 4
  br i1 %i.o, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %i.p = add nsw i64 %wide.trip.count68.i.i, -8
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %bb.a ], [ %niter.next.1, %bb.b ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22, !alias.scope !202, !noalias !203
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.h)
  %i.s = zext nneg i32 %..i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !22, !noalias !201
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !22, !noalias !201
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22, !alias.scope !202, !noalias !203
  %..i.i.1 = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.h)
  %i.z = zext nneg i32 %..i.i.1 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22, !noalias !201
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !22, !noalias !201
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv65.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next66.i.i.3, %.lr.ph.i.i ] ; 5 uses
  %.03855.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ar, %.lr.ph.i.i ] ; 2 uses
  %niter71 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter71.next.3, %.lr.ph.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22, !noalias !201
  store i32 %.03855.i.i, ptr %i.ad, align 4, !tbaa !22, !noalias !201
  %i.af = add i32 %i.ae, %.03855.i.i              ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22, !noalias !201
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !22, !noalias !201
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22, !noalias !201
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !22, !noalias !201
  %i.an = add i32 %i.am, %i.aj                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !201
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !22, !noalias !201
  %i.ar = add i32 %i.aq, %i.an                    ; 2 uses
  %indvars.iv.next66.i.i.3 = add nuw nsw i64 %indvars.iv65.i.i, 4 ; 2 uses
  %niter71.next.3 = add nuw nsw i64 %niter71, 4
  %niter71.ncmp.3 = icmp eq i64 %niter71, %i.p
  br i1 %niter71.ncmp.3, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv65.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next66.i.i.3, %.lr.ph.i.i ]
  %.03855.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i ]
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv65.i.i.epil = phi i64 [ %indvars.iv65.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next66.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %.03855.i.i.epil = phi i32 [ %.03855.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.au, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.i.epil ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22, !noalias !201
  store i32 %.03855.i.i.epil, ptr %i.as, align 4, !tbaa !22, !noalias !201
  %i.au = add i32 %i.at, %.03855.i.i.epil         ; 7 uses
  %indvars.iv.next66.i.i.epil = add nuw nsw i64 %indvars.iv65.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.preheader.i.i, label %.lr.ph.i.i.epil, !llvm.loop !180

.preheader.i.i:                                   ; preds = %.lr.ph.i.i.epil, %bb.e
  %indvars.iv70.i.i = phi i64 [ %indvars.iv.next71.i.i, %bb.e ], [ 0, %.lr.ph.i.i.epil ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv70.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22, !alias.scope !202, !noalias !203 ; 3 uses
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.ax = shl i32 %i.aw, 10
  %i.ay = trunc nuw nsw i64 %indvars.iv70.i.i to i32
  %i.az = or i32 %i.ax, %i.ay
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.h)
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22, !noalias !201 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !22, !noalias !201
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bf
  store i32 %i.az, ptr %i.bg, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv70.i.i
  store i8 0, ptr %i.bh, align 1, !tbaa !21, !alias.scope !206, !noalias !207
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next71.i.i = add nuw nsw i64 %indvars.iv70.i.i, 1 ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %indvars.iv.next71.i.i, %wide.trip.count.i.i
  br i1 %exitcond74.not.i.i, label %bb.f, label %.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count68.i.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !22, !noalias !201 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bl ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bi, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22, !noalias !201
  %i.bp = sub i32 %i.bo, %i.bk                    ; 6 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 12 uses
  %i.br = lshr i32 %i.bp, 1                       ; 2 uses
  %.not7.i.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not7.i.i.i.i, label %heapify_array.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %i.bs = zext i32 %i.bp to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %heapify_subtree.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.bt, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %heapify_subtree.exit.i.i.i.i ] ; 5 uses
  %.08.i.i.i.i = phi i32 [ %i.br, %.lr.ph.preheader.i.i.i.i ], [ %i.cp, %heapify_subtree.exit.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22, !alias.scope !204, !noalias !205 ; 2 uses
  %i.bw = shl nuw nsw i64 %indvars.iv.i.i.i.i, 1  ; 2 uses
  %.not27.i.i.i.i.i = icmp samesign ugt i64 %i.bw, %i.bs
  br i1 %.not27.i.i.i.i.i, label %heapify_subtree.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i.i
  %i.bz = phi i32 [ %i.cn, %bb.i ], [ %i.bx, %.lr.ph.i.preheader.i.i.i.i ] ; 6 uses
  %.02228.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.i ], [ %i.by, %.lr.ph.i.preheader.i.i.i.i ]
  %i.ca = icmp ult i32 %i.bz, %i.bp
  br i1 %i.ca, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i.i

.lr.ph._crit_edge.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = zext i32 %i.bz to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.phi.trans.insert.i.i.i.i.i
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i.i, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cb = or disjoint i32 %i.bz, 1                ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22, !alias.scope !204, !noalias !205 ; 2 uses
  %i.cf = zext i32 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !22, !alias.scope !204, !noalias !205 ; 2 uses
  %i.ci = icmp ugt i32 %i.ce, %i.ch
  %spec.select.i.i.i.i.i = select i1 %i.ci, i32 %i.cb, i32 %i.bz ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.ch)
  %.pre33.i.i.i.i.i = zext i32 %spec.select.i.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i.i
  %.pre-phi34.i.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i.i ], [ %.pre33.i.i.i.i.i, %bb.g ]
  %i.ck = phi i32 [ %.pre.i.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i.i ], [ %i.cj, %bb.g ] ; 2 uses
  %.0.i.i.i.i.i = phi i32 [ %i.bz, %.lr.ph._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i.i = icmp ult i32 %i.bv, %i.ck
  %i.cl = zext i32 %.02228.i.i.i.i.i to i64       ; 2 uses
  br i1 %.not26.i.i.i.i.i, label %bb.i, label %heapify_subtree.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  %i.cn = shl i32 %.0.i.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.cn, %i.bp
  br i1 %.not.i.i.i.i.i, label %heapify_subtree.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

heapify_subtree.exit.i.i.i.i:                     ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pre-phi34.i.i.i.i.i, %bb.i ], [ %i.cl, %bb.h ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.pre-phi.i.i.i.i.i
  store i32 %i.bv, ptr %i.co, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  %i.cp = add nsw i32 %.08.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cp, 0
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %heapify_array.exit.i.i.i, label %.lr.ph.i.i.i.i

heapify_array.exit.i.i.i:                         ; preds = %heapify_subtree.exit.i.i.i.i, %bb.f
  %i.cq = icmp ugt i32 %i.bp, 1
  br i1 %i.cq, label %.lr.ph.preheader.i.i.i, label %sort_symbols.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %heapify_array.exit.i.i.i
  %i.cr = zext i32 %i.bp to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %heapify_subtree.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.cr, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %heapify_subtree.exit.i.i.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !22, !alias.scope !204, !noalias !205 ; 3 uses
  %i.cu = load i32, ptr %i.bm, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  store i32 %i.ct, ptr %i.bm, align 4, !tbaa !22, !alias.scope !204, !noalias !205
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %indvars.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32 ; 3 uses
end_hunk_0
begin_hunk_1_@deflate_make_huffman_code:bb.a
.lr.ph..loopexit_crit_edge.i.i:                   ; preds = %.lr.ph.i30.i
  %.phi.trans.insert.i.i = zext nneg i32 %i.ga to i64 ; 2 uses
  %.phi.trans.insert41.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i.i
  %.pre.i.i = load i32, ptr %.phi.trans.insert41.i.i, align 4, !tbaa !22, !alias.scope !213, !noalias !214
  %i.ge = add nuw nsw i32 %i.fz, 2
  br label %.loopexit.i.i

.preheader.i32.i:                                 ; preds = %.lr.ph.i30.i, %.preheader.i32.i
  %.0.i33.i = phi i32 [ %i.gf, %.preheader.i32.i ], [ %1, %.lr.ph.i30.i ] ; 2 uses
  %i.gf = add i32 %.0.i33.i, -1                   ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !22, !alias.scope !213, !noalias !214 ; 2 uses
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %.preheader.i32.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i32.i, %.lr.ph..loopexit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.phi.trans.insert.i.i, %.lr.ph..loopexit_crit_edge.i.i ], [ %i.gg, %.preheader.i32.i ]
  %i.gk = phi i32 [ %.pre.i.i, %.lr.ph..loopexit_crit_edge.i.i ], [ %i.gi, %.preheader.i32.i ]
  %.1.i34.i = phi i32 [ %i.ge, %.lr.ph..loopexit_crit_edge.i.i ], [ %.0.i33.i, %.preheader.i32.i ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i.i
  %i.gm = add i32 %i.gk, -1
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !22, !alias.scope !213, !noalias !214
  %i.gn = zext i32 %.1.i34.i to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !22, !alias.scope !213, !noalias !214
  %i.gq = add i32 %i.gp, 2
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !22, !alias.scope !213, !noalias !214
  %indvars.iv.next.i35.i = add nsw i64 %indvars.iv.i31.i, -1
  %i.gr = icmp sgt i64 %indvars.iv.i31.i, 0
  br i1 %i.gr, label %.lr.ph.i30.i, label %compute_length_counts.exit.i

compute_length_counts.exit.i:                     ; preds = %.loopexit.i.i, %build_tree.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !220
  %i.gs = zext nneg i32 %1 to i64                 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i, %compute_length_counts.exit.i
  %indvars.iv.i36.i = phi i64 [ %i.gs, %compute_length_counts.exit.i ], [ %indvars.iv.next.i38.i, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi i32 [ 0, %compute_length_counts.exit.i ], [ %.126.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i36.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !22, !alias.scope !219, !noalias !221 ; 5 uses
  %.not2829.i.i = icmp eq i32 %i.gu, 0
  br i1 %.not2829.i.i, label %._crit_edge.i.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.z
  %i.gv = trunc i64 %indvars.iv.i36.i to i8       ; 5 uses
  %xtraiter72 = and i32 %i.gu, 3                  ; 2 uses
  %lcmp.mod73.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i37.i, %.prol.preheader
  %.031.i.i.prol = phi i32 [ %i.gw, %.prol.preheader ], [ %i.gu, %.lr.ph.i37.i ]
  %.12630.i.i.prol = phi i32 [ %i.gx, %.prol.preheader ], [ %.02532.i.i, %.lr.ph.i37.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i37.i ]
  %i.gw = add i32 %.031.i.i.prol, -1              ; 2 uses
  %i.gx = add i32 %.12630.i.i.prol, 1             ; 3 uses
  %i.gy = zext i32 %.12630.i.i.prol to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %i.hb = and i32 %i.ha, 1023
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %i.hc
  store i8 %i.gv, ptr %i.hd, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter72
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !188

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i37.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i37.i ], [ %i.gx, %.prol.preheader ]
  %.031.i.i.unr = phi i32 [ %i.gu, %.lr.ph.i37.i ], [ %i.gw, %.prol.preheader ]
  %.12630.i.i.unr = phi i32 [ %.02532.i.i, %.lr.ph.i37.i ], [ %i.gx, %.prol.preheader ]
  %i.he = icmp ult i32 %i.gu, 4
  br i1 %i.he, label %._crit_edge.i.i, label %.lr.ph.i37.i.new

.lr.ph.i37.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i37.i.new
  %.031.i.i = phi i32 [ %i.ia, %.lr.ph.i37.i.new ], [ %.031.i.i.unr, %.prol.loopexit ]
  %.12630.i.i = phi i32 [ %i.ib, %.lr.ph.i37.i.new ], [ %.12630.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hf = add i32 %.12630.i.i, 1
  %i.hg = zext i32 %.12630.i.i to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %i.hj = and i32 %i.hi, 1023
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 %i.hk
  store i8 %i.gv, ptr %i.hl, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %i.hm = add i32 %.12630.i.i, 2
  %i.hn = zext i32 %i.hf to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %i.hq = and i32 %i.hp, 1023
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 %i.hr
  store i8 %i.gv, ptr %i.hs, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %i.ht = add i32 %.12630.i.i, 3
  %i.hu = zext i32 %i.hm to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %i.hx = and i32 %i.hw, 1023
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 %i.hy
  store i8 %i.gv, ptr %i.hz, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %i.ia = add i32 %.031.i.i, -4                   ; 2 uses
  %i.ib = add i32 %.12630.i.i, 4                  ; 2 uses
  %i.ic = zext i32 %i.ht to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %i.if = and i32 %i.ie, 1023
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 %i.ig
  store i8 %i.gv, ptr %i.ih, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %.not28.i.i.3 = icmp eq i32 %i.ia, 0
  br i1 %.not28.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i37.i.new

._crit_edge.i.i:                                  ; preds = %.prol.loopexit, %.lr.ph.i37.i.new, %bb.z
  %.126.lcssa.i.i = phi i32 [ %.02532.i.i, %bb.z ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ib, %.lr.ph.i37.i.new ]
  %indvars.iv.next.i38.i = add nsw i64 %indvars.iv.i36.i, -1 ; 2 uses
  %i.ii = and i64 %indvars.iv.next.i38.i, 4294967295
  %.not.i39.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i39.i, label %.new74, label %bb.z

.new74:                                           ; preds = %._crit_edge.i.i
  store i32 0, ptr %i.a, align 16, !tbaa !22, !noalias !220
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ij, align 4, !tbaa !22, !noalias !220
  %i.ik = add nsw i64 %i.gs, -1                   ; 2 uses
  %xtraiter76 = and i64 %i.ik, 3                  ; 3 uses
  %unroll_iter80 = and i64 %i.ik, -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.new74
  %i.il = phi i32 [ 0, %.new74 ], [ %i.ji, %bb.aa ]
  %indvars.iv37.i.i = phi i64 [ 2, %.new74 ], [ %indvars.iv.next38.i.i.3, %bb.aa ] ; 6 uses
  %niter81 = phi i64 [ 0, %.new74 ], [ %niter81.next.3, %bb.aa ]
  %i.im = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.i
  %i.in = getelementptr i8, ptr %i.im, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !22, !alias.scope !219, !noalias !221
  %i.ip = add i32 %i.io, %i.il
  %i.iq = shl i32 %i.ip, 1                        ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.i
  store i32 %i.iq, ptr %i.ir, align 8, !tbaa !22, !noalias !220
  %indvars.iv.next38.i.i = or disjoint i64 %indvars.iv37.i.i, 1 ; 2 uses
  %i.is = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.i
  %i.it = getelementptr i8, ptr %i.is, i64 -4
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !22, !alias.scope !219, !noalias !221
  %i.iv = add i32 %i.iu, %i.iq
  %i.iw = shl i32 %i.iv, 1                        ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !22, !noalias !220
  %indvars.iv.next38.i.i.1 = add nuw nsw i64 %indvars.iv37.i.i, 2 ; 2 uses
  %i.iy = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.i.1
  %i.iz = getelementptr i8, ptr %i.iy, i64 -4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !22, !alias.scope !219, !noalias !221
  %i.jb = add i32 %i.ja, %i.iw
  %i.jc = shl i32 %i.jb, 1                        ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.i.1
  store i32 %i.jc, ptr %i.jd, align 8, !tbaa !22, !noalias !220
  %indvars.iv.next38.i.i.2 = add nuw nsw i64 %indvars.iv37.i.i, 3 ; 2 uses
  %i.je = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next38.i.i.2
  %i.jf = getelementptr i8, ptr %i.je, i64 -4
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !22, !alias.scope !219, !noalias !221
  %i.jh = add i32 %i.jg, %i.jc
  %i.ji = shl i32 %i.jh, 1                        ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next38.i.i.2
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !22, !noalias !220
  %indvars.iv.next38.i.i.3 = add nuw nsw i64 %indvars.iv37.i.i, 4 ; 2 uses
  %niter81.next.3 = add nuw i64 %niter81, 4       ; 2 uses
  %niter81.ncmp.3 = icmp eq i64 %niter81.next.3, %unroll_iter80
  br i1 %niter81.ncmp.3, label %.preheader.i42.i.preheader.unr-lcssa, label %bb.aa

.preheader.i42.i.preheader.unr-lcssa:             ; preds = %bb.aa
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %.preheader.i42.i.preheader, label %.epil.preheader75

.epil.preheader75:                                ; preds = %.preheader.i42.i.preheader.unr-lcssa
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader75
  %i.jk = phi i32 [ %i.ji, %.epil.preheader75 ], [ %i.jp, %bb.ab ]
  %indvars.iv37.i.i.epil = phi i64 [ %indvars.iv.next38.i.i.3, %.epil.preheader75 ], [ %indvars.iv.next38.i.i.epil, %bb.ab ] ; 3 uses
  %epil.iter77 = phi i64 [ 0, %.epil.preheader75 ], [ %epil.iter77.next, %bb.ab ]
  %i.jl = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv37.i.i.epil
  %i.jm = getelementptr i8, ptr %i.jl, i64 -4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !22, !alias.scope !219, !noalias !221
  %i.jo = add i32 %i.jn, %i.jk
  %i.jp = shl i32 %i.jo, 1                        ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37.i.i.epil
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !22, !noalias !220
  %indvars.iv.next38.i.i.epil = add nuw nsw i64 %indvars.iv37.i.i.epil, 1
  %epil.iter77.next = add i64 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i64 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %.preheader.i42.i.preheader, label %bb.ab, !llvm.loop !189

.preheader.i42.i.preheader:                       ; preds = %bb.ab, %.preheader.i42.i.preheader.unr-lcssa
  %xtraiter82 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter86 = and i64 %wide.trip.count.i.i, 510
  br label %.preheader.i42.i

.preheader.i42.i:                                 ; preds = %.preheader.i42.i, %.preheader.i42.i.preheader
  %indvars.iv41.i.i = phi i64 [ 0, %.preheader.i42.i.preheader ], [ %indvars.iv.next42.i.i.1, %.preheader.i42.i ] ; 4 uses
  %niter87 = phi i64 [ 0, %.preheader.i42.i.preheader ], [ %niter87.next.1, %.preheader.i42.i ]
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv41.i.i
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !22, !noalias !220 ; 2 uses
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !22, !noalias !220
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv41.i.i
  store i32 %i.jv, ptr %i.jx, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %indvars.iv.next42.i.i = or disjoint i64 %indvars.iv41.i.i, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next42.i.i
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !22, !noalias !220 ; 2 uses
  %i.kd = add i32 %i.kc, 1
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !22, !noalias !220
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next42.i.i
  store i32 %i.kc, ptr %i.ke, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  %indvars.iv.next42.i.i.1 = add nuw nsw i64 %indvars.iv41.i.i, 2 ; 3 uses
  %niter87.next.1 = add nuw nsw i64 %niter87, 2   ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %gen_codewords.exit.i.unr-lcssa, label %.preheader.i42.i

gen_codewords.exit.i.unr-lcssa:                   ; preds = %.preheader.i42.i
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod84.not, label %gen_codewords.exit.i, label %.preheader.i42.i.epil.preheader

.preheader.i42.i.epil.preheader:                  ; preds = %gen_codewords.exit.i.unr-lcssa
  %lcmp.mod85 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next42.i.i.1
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !21, !alias.scope !224, !noalias !225
  %i.kh = zext i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kh ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !22, !noalias !220 ; 2 uses
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !22, !noalias !220
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next42.i.i.1
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !22, !alias.scope !222, !noalias !223
  br label %gen_codewords.exit.i

gen_codewords.exit.i:                             ; preds = %gen_codewords.exit.i.unr-lcssa, %.preheader.i42.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !211
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %gen_codewords.exit.i, %bb.m, %sort_symbols.exit.i
  %i.km = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.km
  %scevgep60 = getelementptr i8, ptr %3, i64 %wide.trip.count.i.i
  %bound0 = icmp ult ptr %4, %scevgep60
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 508      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.kn, align 4, !tbaa !22, !alias.scope !226, !noalias !227
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load61 = load <4 x i8>, ptr %i.ko, align 1, !tbaa !21, !alias.scope !227
  %i.kp = trunc <4 x i32> %wide.load to <4 x i16>
  %i.kq = tail call <4 x i16> @llvm.bitreverse.v4i16(<4 x i16> %i.kp)
  %i.kr = zext <4 x i16> %i.kq to <4 x i32>
  %i.ks = zext <4 x i8> %wide.load61 to <4 x i32>
  %i.kt = sub nsw <4 x i32> splat (i32 16), %i.ks
  %i.ku = lshr <4 x i32> %i.kr, %i.kt
  store <4 x i32> %i.ku, ptr %i.kn, align 4, !tbaa !22, !alias.scope !226, !noalias !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !22
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !21
  %trunc.i = trunc i32 %i.kx to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i)
  %i.la = zext i16 %rev.i to i32
  %i.lb = zext i8 %i.kz to i32
  %i.lc = sub nsw i32 16, %i.lb
  %i.ld = lshr i32 %i.la, %i.lc
  store i32 %i.ld, ptr %i.kw, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i.i
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !194

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bitreverse.v4i16(<4 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"deflate_freqs", !5, i64 0, !5, i64 1152}
!11 = !{!"deflate_codewords", !5, i64 0, !5, i64 1152}
!12 = !{!"deflate_lens", !5, i64 0, !5, i64 288}
!13 = !{!"deflate_codes", !11, i64 0, !12, i64 1280}
!14 = !{!"block_split_stats", !5, i64 0, !5, i64 40, !6, i64 80, !6, i64 84}
!15 = !{!"libdeflate_compressor", !9, i64 0, !10, i64 8, !13, i64 1288, !13, i64 2888, !14, i64 4488, !5, i64 4576, !6, i64 37348, !6, i64 37352, !6, i64 37356, !6, i64 37360, !5, i64 37364, !5, i64 37440, !5, i64 37460, !5, i64 37536, !6, i64 38816, !6, i64 38820, !6, i64 38824, !6, i64 38828, !5, i64 38848}
!16 = !{!15, !6, i64 37356}
!17 = !{!15, !6, i64 37360}
!18 = !{!15, !9, i64 0}
!19 = !{!15, !6, i64 37352}
!20 = !{!15, !6, i64 37348}
!21 = !{!5, !5, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"long", !5, i64 0}
!27 = !{!"p1 omnipotent char", !9, i64 0}
!28 = !{!"deflate_output_bitstream", !26, i64 0, !6, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!29 = !{!28, !26, i64 0}
!30 = !{!28, !6, i64 8}
!31 = !{!28, !27, i64 16}
!32 = !{!28, !27, i64 24}
!33 = !{!28, !27, i64 32}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!"deflate_sequence", !6, i64 0, !35, i64 4, !5, i64 6, !5, i64 7}
!39 = !{!38, !6, i64 0}
!40 = !{!38, !35, i64 4}
!41 = !{!38, !5, i64 7}
!42 = !{!38, !5, i64 6}
!43 = !{!14, !6, i64 80}
!44 = !{!"deflate_optimum_node", !6, i64 0, !6, i64 4}
!45 = !{!44, !6, i64 4}
!46 = distinct !{!46, !23}
!47 = distinct !{!47, !24, !25}
!48 = distinct !{!48, !24, !25}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !"hc_matchfinder_longest_match"}
!51 = distinct !{!51, !50, !"hc_matchfinder_longest_match: argument 4"}
!52 = distinct !{!52, !50, !"hc_matchfinder_longest_match: argument 3"}
!53 = distinct !{!53, !50, !"hc_matchfinder_longest_match: argument 1"}
!54 = distinct !{!54, !50, !"hc_matchfinder_longest_match: argument 0"}
!55 = distinct !{!55, !50, !"hc_matchfinder_longest_match: argument 2"}
!56 = distinct !{!56, !"hc_matchfinder_skip_positions"}
!57 = distinct !{!57, !56, !"hc_matchfinder_skip_positions: argument 2"}
!58 = distinct !{!58, !56, !"hc_matchfinder_skip_positions: argument 1"}
!59 = distinct !{!59, !56, !"hc_matchfinder_skip_positions: argument 0"}
!60 = distinct !{!60, !23}
!61 = !{!53, !52, !51}
!62 = !{!54}
!63 = !{!53, !55, !52, !51}
!64 = !{!58, !57}
!65 = !{!59}
!66 = distinct !{!66, !"hc_matchfinder_longest_match"}
!67 = distinct !{!67, !66, !"hc_matchfinder_longest_match: argument 4"}
!68 = distinct !{!68, !66, !"hc_matchfinder_longest_match: argument 3"}
!69 = distinct !{!69, !66, !"hc_matchfinder_longest_match: argument 1"}
!70 = distinct !{!70, !66, !"hc_matchfinder_longest_match: argument 0"}
!71 = distinct !{!71, !66, !"hc_matchfinder_longest_match: argument 2"}
!72 = distinct !{!72, !"hc_matchfinder_skip_positions"}
!73 = distinct !{!73, !72, !"hc_matchfinder_skip_positions: argument 2"}
end_hunk_1
