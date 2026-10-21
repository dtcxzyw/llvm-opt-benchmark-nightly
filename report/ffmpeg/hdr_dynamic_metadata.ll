Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hdr_dynamic_metadata?download=true
inline.NumInlined: 165
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 15
begin_hunk_0_@av_dynamic_hdr_smpte2094_app5_from_t35:bb.a
  %i.pz = shl i32 %i.px, %i.py
  %.not226 = icmp ult i32 %i.pz, 1073741824
  br i1 %.not226, label %.preheader449, label %.thread435

.preheader449:                                    ; preds = %bb.bf
  %i.qa = add nuw i32 %i.pf, 3
  %i.qb = getelementptr inbounds nuw [64 x i8], ptr %i.gj, i64 %indvars.iv537
  %i.qc = zext nneg i32 %i.pd to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.preheader449, %bb.bh
  %indvars.iv528 = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next529, %bb.bh ] ; 3 uses
  %.sroa.29.8478 = phi i32 [ %i.qa, %.preheader449 ], [ %i.qn, %bb.bh ] ; 4 uses
  %i.qd = icmp sgt i32 %.sroa.29.8478, %invariant.op
  br i1 %i.qd, label %.thread435, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qe = lshr i32 %.sroa.29.8478, 3
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 1, !tbaa !21
  %i.qi = tail call i32 @llvm.bswap.i32(i32 %i.qh)
  %i.qj = and i32 %.sroa.29.8478, 7
  %i.qk = shl i32 %i.qi, %i.qj
  %i.ql = lshr i32 %i.qk, 16
  %i.qm = add nsw i32 %.sroa.29.8478, 16
  %i.qn = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.qm) ; 2 uses
  %i.qo = trunc nuw i32 %i.ql to i16
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %indvars.iv528
  store i16 %i.qo, ptr %i.qp, align 2, !tbaa !66
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1
  %.not227.not = icmp samesign ult i64 %indvars.iv528, %i.qc
  br i1 %.not227.not, label %bb.bg, label %.thread425, !llvm.loop !115

iter.check:                                       ; preds = %.thread418
  %i.qq = load i8, ptr %i.gh, align 2, !tbaa !21  ; 5 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv537
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !21
  %i.qs = load i8, ptr %i.gi, align 2, !tbaa !21  ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv537
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !21
  %i.qu = getelementptr inbounds nuw [64 x i8], ptr %i.gj, i64 %indvars.iv537 ; 3 uses
  %i.qv = zext i8 %i.qq to i64                    ; 2 uses
  %i.qw = add nuw nsw i64 %i.qv, 1                ; 5 uses
  %min.iters.check = icmp ult i8 %i.qq, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check588 = icmp ult i8 %i.qq, 15
  br i1 %min.iters.check588, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.qx = and i64 %i.qw, 12
  %n.vec = and i64 %i.qw, 496                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %index ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %wide.load = load <8 x i16>, ptr %i.qy, align 2, !tbaa !66
  %wide.load589 = load <8 x i16>, ptr %i.qz, align 2, !tbaa !66
  %i.ra = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %index ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store <8 x i16> %wide.load, ptr %i.ra, align 2, !tbaa !66
  store <8 x i16> %wide.load589, ptr %i.rb, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rc = icmp eq i64 %index.next, %n.vec
  br i1 %i.rc, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qw, %n.vec
  br i1 %cmp.n, label %.thread425.loopexit513, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.qx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !124

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec590 = and i64 %i.qw, 508                  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index591 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next593, %vec.epilog.vector.body ] ; 3 uses
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %index591
  %wide.load592 = load <4 x i16>, ptr %i.rd, align 2, !tbaa !66
  %i.re = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %index591
  store <4 x i16> %wide.load592, ptr %i.re, align 2, !tbaa !66
  %index.next593 = add nuw i64 %index591, 4       ; 2 uses
  %i.rf = icmp eq i64 %index.next593, %n.vec590
  br i1 %i.rf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n594 = icmp eq i64 %i.qw, %n.vec590
  br i1 %cmp.n594, label %.thread425.loopexit513, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec590, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %indvars.iv
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !66
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %i.qu, i64 %indvars.iv
  store i16 %i.rh, ptr %i.ri, align 2, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not228.not = icmp samesign ult i64 %indvars.iv, %i.qv
  br i1 %.not228.not, label %vec.epilog.scalar.ph, label %.thread425.loopexit513, !llvm.loop !118

.thread425.loopexit513:                           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.rj = zext i8 %i.qq to i32
  br label %.thread425

.thread425:                                       ; preds = %bb.bh, %.thread425.loopexit513
  %i.rk = phi i8 [ %i.qs, %.thread425.loopexit513 ], [ %i.pq, %bb.bh ]
  %i.rl = phi i32 [ %i.rj, %.thread425.loopexit513 ], [ %i.pd, %bb.bh ]
  %.sroa.29.9 = phi i32 [ %.sroa.29.7421, %.thread425.loopexit513 ], [ %i.qn, %bb.bh ]
  %i.rm = getelementptr inbounds nuw [64 x i8], ptr %i.gk, i64 %indvars.iv537
  %i.rn = zext nneg i32 %i.rl to i64              ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.thread425, %bb.bj
  %indvars.iv531 = phi i64 [ 0, %.thread425 ], [ %indvars.iv.next532, %bb.bj ] ; 3 uses
  %.sroa.29.10482 = phi i32 [ %.sroa.29.9, %.thread425 ], [ %i.ry, %bb.bj ] ; 4 uses
  %i.ro = icmp sgt i32 %.sroa.29.10482, %invariant.op
  br i1 %i.ro, label %.thread435, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.rp = lshr i32 %.sroa.29.10482, 3
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 1, !tbaa !21
  %i.rt = tail call i32 @llvm.bswap.i32(i32 %i.rs)
  %i.ru = and i32 %.sroa.29.10482, 7
  %i.rv = shl i32 %i.rt, %i.ru
  %i.rw = lshr i32 %i.rv, 16
  %i.rx = add nsw i32 %.sroa.29.10482, 16
  %i.ry = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.rx) ; 3 uses
  %i.rz = trunc nuw i32 %i.rw to i16
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.rm, i64 %indvars.iv531
  store i16 %i.rz, ptr %i.sa, align 2, !tbaa !66
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1
  %.not229.not = icmp samesign ult i64 %indvars.iv531, %i.rn
  br i1 %.not229.not, label %bb.bi, label %bb.bk, !llvm.loop !119

bb.bk:                                            ; preds = %bb.bj
  %.not230 = icmp eq i8 %i.rk, 0
  br i1 %.not230, label %.preheader, label %.thread432

.preheader:                                       ; preds = %bb.bk
  %i.sb = getelementptr inbounds nuw [64 x i8], ptr %i.gl, i64 %indvars.iv537
  br label %bb.bl

bb.bl:                                            ; preds = %.preheader, %bb.bm
  %indvars.iv534 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next535, %bb.bm ] ; 3 uses
  %.sroa.29.11485 = phi i32 [ %i.ry, %.preheader ], [ %i.sm, %bb.bm ] ; 4 uses
  %i.sc = icmp sgt i32 %.sroa.29.11485, %invariant.op
  br i1 %i.sc, label %.thread435, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sd = lshr i32 %.sroa.29.11485, 3
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 1, !tbaa !21
  %i.sh = tail call i32 @llvm.bswap.i32(i32 %i.sg)
  %i.si = and i32 %.sroa.29.11485, 7
  %i.sj = shl i32 %i.sh, %i.si
  %i.sk = lshr i32 %i.sj, 16
  %i.sl = add nsw i32 %.sroa.29.11485, 16
  %i.sm = tail call i32 @llvm.umin.i32(i32 %i.f, i32 %i.sl) ; 2 uses
  %i.sn = trunc nuw i32 %i.sk to i16
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %indvars.iv534
  store i16 %i.sn, ptr %i.so, align 2, !tbaa !66
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1
  %.not231.not = icmp samesign ult i64 %indvars.iv534, %i.rn
  br i1 %.not231.not, label %bb.bl, label %.thread432, !llvm.loop !120

.thread432:                                       ; preds = %bb.bm, %bb.bk
  %.sroa.29.12 = phi i32 [ %i.ry, %bb.bk ], [ %i.sm, %bb.bm ]
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count
  br i1 %exitcond.not, label %.thread435, label %bb.z, !llvm.loop !121

.thread435:                                       ; preds = %.thread432, %bb.ae, %bb.bc, %bb.bd, %bb.be, %bb.z, %bb.ab, %bb.ad, %bb.bf, %.preheader454, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.aw, %bb.az, %bb.bg, %bb.bi, %bb.bl, %.preheader459, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %.thread, %bb.q, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.n
  %.12 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.h ], [ -1094995529, %bb.w ], [ -1094995529, %bb.q ], [ -1094995529, %bb.v ], [ -1094995529, %bb.d ], [ -1094995529, %bb.u ], [ -1094995529, %bb.e ], [ -1094995529, %bb.f ], [ -1094995529, %bb.bi ], [ 0, %bb.j ], [ -1094995529, %bb.k ], [ -1094995529, %bb.l ], [ %i.bb, %bb.n ], [ -1094995529, %bb.t ], [ 0, %.thread ], [ -1094995529, %bb.o ], [ -1094995529, %.preheader459 ], [ -1094995529, %bb.p ], [ -1094995529, %bb.bg ], [ -1094995529, %bb.s ], [ -1094995529, %bb.bl ], [ -1094995529, %bb.y ], [ -1094995529, %bb.x ], [ -1094995529, %bb.bd ], [ -1094995529, %bb.bc ], [ -1094995529, %bb.ae ], [ 0, %.thread432 ], [ -1094995529, %bb.ab ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.be ], [ -1094995529, %bb.z ], [ -1094995529, %bb.af ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.ai ], [ -1094995529, %bb.aj ], [ -1094995529, %bb.an ], [ -1094995529, %bb.aq ], [ -1094995529, %bb.at ], [ -1094995529, %bb.aw ], [ -1094995529, %bb.az ], [ -1094995529, %bb.bf ], [ -1094995529, %.preheader454 ], [ -1094995529, %bb.ak ]
  tail call void @av_free(ptr noundef nonnull %i.b) #10
  br label %bb.bn

bb.bn:                                            ; preds = %.thread435, %bb.b, %bb.a
  %.1208 = phi i32 [ -22, %bb.a ], [ %.12, %.thread435 ], [ -12, %bb.b ]
  ret i32 %.1208
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1397118274, 1) i32 @av_dynamic_hdr_smpte2094_app5_to_t35(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.PutBitContext, align 8      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit276, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not191 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not191, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp ne ptr %2, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.e, label %.loopexit276

bb.d:                                             ; preds = %bb.b
  %.old1.not = icmp eq ptr %2, null
  br i1 %.old1.not, label %.loopexit276, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = load i8, ptr %0, align 2, !tbaa !55      ; 2 uses
  %i.e = icmp ugt i8 %i.d, 7
  br i1 %i.e, label %.loopexit276, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56    ; 2 uses
  %i.h = icmp ugt i8 %i.g, 2
  br i1 %i.h, label %.loopexit276, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !tbaa !57    ; 2 uses
  %.not192 = icmp eq i8 %i.j, 0
  %spec.select = select i1 %.not192, i64 16, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !58    ; 2 uses
  %.not193 = icmp eq i8 %i.l, 0
  br i1 %.not193, label %.thread264, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 2, !tbaa !61
  %.not194 = icmp eq i8 %i.n, 0
  br i1 %.not194, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw nsw i64 %spec.select, 24
  br label %.thread264

bb.j:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.q = load i8, ptr %i.p, align 2, !tbaa !63
  %i.r = icmp eq i8 %i.q, 3
  %spec.select218.v = select i1 %i.r, i64 152, i64 24
  %spec.select218 = add nuw nsw i64 %spec.select218.v, %spec.select ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !62    ; 4 uses
  %i.u = icmp ugt i8 %i.t, 4
  br i1 %i.u, label %.loopexit276, label %.preheader275

.preheader275:                                    ; preds = %bb.j
  %.not200280.not = icmp eq i8 %i.t, 0
  br i1 %.not200280.not, label %.thread264, label %bb.k

bb.k:                                             ; preds = %.preheader275
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %wide.trip.count = zext nneg i8 %i.t to i64
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !21
  %.not197.peel = icmp eq i8 %i.ab, 3
  br i1 %.not197.peel, label %.loopexit274.loopexit.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nuw nsw i64 %spec.select218, 24
  br label %.loopexit274.peel

.loopexit274.loopexit.peel:                       ; preds = %bb.k
  %i.ad = load <4 x i8>, ptr %i.x, align 2, !tbaa !21
  %i.ae = icmp eq <4 x i8> %i.ad, zeroinitializer ; 4 uses
  %i.af = extractelement <4 x i1> %i.ae, i64 0
  %spec.select219.peel.v = select i1 %i.af, i64 24, i64 40
  %spec.select219.peel = add nuw nsw i64 %spec.select218, %spec.select219.peel.v ; 2 uses
  %i.ag = add nuw nsw i64 %spec.select219.peel, 16
  %i.ah = extractelement <4 x i1> %i.ae, i64 1
  %spec.select219.1.peel = select i1 %i.ah, i64 %spec.select219.peel, i64 %i.ag ; 2 uses
  %i.ai = add nuw nsw i64 %spec.select219.1.peel, 16
  %i.aj = extractelement <4 x i1> %i.ae, i64 2
  %spec.select219.2.peel = select i1 %i.aj, i64 %spec.select219.1.peel, i64 %i.ai ; 2 uses
  %i.ak = add nuw nsw i64 %spec.select219.2.peel, 16
  %i.al = extractelement <4 x i1> %i.ae, i64 3
  %spec.select219.3.peel = select i1 %i.al, i64 %spec.select219.2.peel, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.an = load i8, ptr %i.am, align 2, !tbaa !21
  %.not198.4.peel = icmp eq i8 %i.an, 0
  %i.ao = add nuw nsw i64 %spec.select219.3.peel, 16
  %spec.select219.4.peel = select i1 %.not198.4.peel, i64 %spec.select219.3.peel, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21
  %.not198.5.peel = icmp eq i8 %i.aq, 0
  %i.ar = add nuw nsw i64 %spec.select219.4.peel, 16
  %spec.select219.5.peel = select i1 %.not198.5.peel, i64 %spec.select219.4.peel, i64 %i.ar
  br label %.loopexit274.peel

.loopexit274.peel:                                ; preds = %bb.l, %.loopexit274.loopexit.peel
  %.5.peel = phi i64 [ %i.ac, %bb.l ], [ %spec.select219.5.peel, %.loopexit274.loopexit.peel ]
  %i.as = load i8, ptr %i.z, align 2, !tbaa !21   ; 3 uses
  %i.at = icmp ugt i8 %i.as, 31
  br i1 %i.at, label %.loopexit276, label %bb.m

bb.m:                                             ; preds = %.loopexit274.peel
  %i.au = add nuw nsw i64 %.5.peel, 8
  %narrow.peel = add nuw nsw i8 %i.as, 1
  %i.av = zext nneg i8 %narrow.peel to i64
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = add nuw nsw i64 %i.au, %i.aw
  %i.ay = zext nneg i8 %i.as to i64
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.az, 16               ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  %i.bc = load i8, ptr %i.aa, align 2, !tbaa !21
  %.not201.peel = icmp eq i8 %i.bc, 0
  %i.bd = select i1 %.not201.peel, i64 %i.ba, i64 0
  %spec.select220.peel = add nuw nsw i64 %i.bb, %i.bd ; 2 uses
  %exitcond.peel.not = icmp eq i8 %i.t, 1
  br i1 %exitcond.peel.not, label %.thread264, label %.peel.next

.peel.next:                                       ; preds = %bb.m
  %i.be = load i8, ptr %i.v, align 1, !tbaa !64
  %.not196 = icmp eq i8 %i.be, 0
  %i.bf = load i8, ptr %i.y, align 2, !tbaa !65
  %.not199 = icmp eq i8 %i.bf, 0
  br label %bb.n

bb.n:                                             ; preds = %.thread._crit_edge, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %.thread._crit_edge ] ; 5 uses
  %.2281 = phi i64 [ %spec.select220.peel, %.peel.next ], [ %spec.select220, %.thread._crit_edge ] ; 3 uses
  %i.bg = add i64 %.2281, 16
  br i1 %.not196, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !21
  %.not197 = icmp eq i8 %i.bi, 3
  br i1 %.not197, label %.loopexit274.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = add i64 %.2281, 24
  br label %.thread

.loopexit274.loopexit:                            ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %indvars.iv ; 3 uses
  %i.bl = load <4 x i8>, ptr %i.bk, align 1, !tbaa !21
  %i.bm = icmp eq <4 x i8> %i.bl, zeroinitializer ; 4 uses
  %i.bn = extractelement <4 x i1> %i.bm, i64 0
  %spec.select219.v = select i1 %i.bn, i64 24, i64 40
  %spec.select219 = add i64 %.2281, %spec.select219.v ; 2 uses
  %i.bo = add i64 %spec.select219, 16
  %i.bp = extractelement <4 x i1> %i.bm, i64 1
  %spec.select219.1 = select i1 %i.bp, i64 %spec.select219, i64 %i.bo ; 2 uses
  %i.bq = add i64 %spec.select219.1, 16
  %i.br = extractelement <4 x i1> %i.bm, i64 2
  %spec.select219.2 = select i1 %i.br, i64 %spec.select219.1, i64 %i.bq ; 2 uses
  %i.bs = add i64 %spec.select219.2, 16
  %i.bt = extractelement <4 x i1> %i.bm, i64 3
  %spec.select219.3 = select i1 %i.bt, i64 %spec.select219.2, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %.not198.4 = icmp eq i8 %i.bv, 0
  %i.bw = add i64 %spec.select219.3, 16
  %spec.select219.4 = select i1 %.not198.4, i64 %spec.select219.3, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %.not198.5 = icmp eq i8 %i.by, 0
  %i.bz = add i64 %spec.select219.4, 16
  %spec.select219.5 = select i1 %.not198.5, i64 %spec.select219.4, i64 %i.bz
  br label %.thread

.thread:                                          ; preds = %bb.p, %.loopexit274.loopexit, %bb.n
  %.5262 = phi i64 [ %i.bg, %bb.n ], [ %i.bj, %bb.p ], [ %spec.select219.5, %.loopexit274.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21  ; 3 uses
  br i1 %.not199, label %bb.q, label %.thread._crit_edge

bb.q:                                             ; preds = %.thread
  %i.cc = icmp ugt i8 %i.cb, 31
  br i1 %i.cc, label %.loopexit276, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = add i64 %.5262, 8
  %narrow = add nuw nsw i8 %i.cb, 1
  %i.ce = zext nneg i8 %narrow to i64
  %i.cf = shl nuw nsw i64 %i.ce, 4
  %i.cg = add i64 %i.cd, %i.cf
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %bb.r
  %.6 = phi i64 [ %i.cg, %bb.r ], [ %.5262, %.thread ]
  %i.ch = zext i8 %i.cb to i64
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = add nuw nsw i64 %i.ci, 16               ; 2 uses
  %i.ck = add i64 %i.cj, %.6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %.not201 = icmp eq i8 %i.cm, 0
  %i.cn = select i1 %.not201, i64 %i.cj, i64 0
  %spec.select220 = add i64 %i.ck, %i.cn          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread264, label %bb.n, !llvm.loop !125

.thread264:                                       ; preds = %.thread._crit_edge, %bb.m, %.preheader275, %bb.i, %bb.g
  %.9 = phi i64 [ %i.o, %bb.i ], [ %spec.select, %bb.g ], [ %spec.select218, %.preheader275 ], [ %spec.select220.peel, %bb.m ], [ %spec.select220, %.thread._crit_edge ] ; 2 uses
  %i.co = and i64 %.9, 7
  %.not202 = icmp eq i64 %i.co, 0
  br i1 %.not202, label %bb.s, label %.loopexit276

bb.s:                                             ; preds = %.thread264
  %i.cp = lshr exact i64 %.9, 3                   ; 4 uses
  br i1 %.not191, label %.loopexit276.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %.not203 = icmp eq ptr %i.cq, null
  br i1 %.not203, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load i64, ptr %2, align 8, !tbaa !11
  %i.cs = icmp ult i64 %i.cr, %i.cp
  br i1 %i.cs, label %.loopexit276, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ct = tail call noalias ptr @av_malloc(i64 noundef %i.cp) #10 ; 2 uses
  %.not204 = icmp eq ptr %i.ct, null
  br i1 %.not204, label %.loopexit276, label %._crit_edge370

._crit_edge370:                                   ; preds = %bb.v
  %.pre371 = load i8, ptr %0, align 2, !tbaa !55
  %.pre387 = load i8, ptr %i.f, align 1, !tbaa !56
  %.pre388 = load i8, ptr %i.i, align 2, !tbaa !57
  %.pre389 = load i8, ptr %i.k, align 1, !tbaa !58
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge370, %bb.u
  %4 = phi i8 [ %.pre389, %._crit_edge370 ], [ %i.l, %bb.u ] ; 2 uses
  %5 = phi i8 [ %.pre388, %._crit_edge370 ], [ %i.j, %bb.u ] ; 2 uses
  %6 = phi i8 [ %.pre387, %._crit_edge370 ], [ %i.g, %bb.u ]
  %i.cu = phi i8 [ %.pre371, %._crit_edge370 ], [ %i.d, %bb.u ]
  %.0181 = phi ptr [ %i.ct, %._crit_edge370 ], [ %i.cq, %bb.u ] ; 4 uses
  %i.cv = trunc i64 %i.cp to i32                  ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %spec.select.i = select i1 %i.cw, ptr null, ptr %.0181 ; 3 uses
  %spec.select11.i = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 0)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select.i, ptr %i.cx, align 8, !tbaa !131
  %i.cy = zext nneg i32 %spec.select11.i to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 22 uses
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 21 uses
  store ptr %spec.select.i, ptr %i.db, align 8, !tbaa !53
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 12 uses
  %i.dd = zext i8 %i.cu to i32
  %7 = zext i8 %6 to i32
  %i.de = zext i8 %5 to i32
  %8 = shl nuw nsw i32 %i.dd, 6
  %9 = shl nuw nsw i32 %7, 3
  %10 = or i32 %8, %9
  %11 = or i32 %10, %i.de
  %12 = zext i8 %4 to i32
  %13 = shl nuw nsw i32 %11, 1
  %14 = or i32 %13, %12                           ; 2 uses
  %15 = shl nuw nsw i32 %14, 6
  store i32 %15, ptr %3, align 8, !tbaa !50
  store i32 16, ptr %i.dc, align 4, !tbaa !51
  %.not205 = icmp eq i8 %5, 0
  br i1 %.not205, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !59
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %16 = icmp sgt i32 %i.cv, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %bb.x
  %18 = shl i32 %14, 22
  %19 = or disjoint i32 %18, %i.dh
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  store i32 %20, ptr %.0181, align 1, !tbaa !21
  %21 = getelementptr inbounds nuw i8, ptr %.0181, i64 4
  store ptr %21, ptr %i.db, align 8, !tbaa !53
  br label %put_bits.exit232

22:                                               ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %put_bits.exit232

put_bits.exit232:                                 ; preds = %17, %22
  store i32 %i.dh, ptr %3, align 8, !tbaa !50
  store i32 32, ptr %i.dc, align 4, !tbaa !51
  %.pre390 = load i8, ptr %i.k, align 1, !tbaa !58
  br label %bb.y

bb.y:                                             ; preds = %put_bits.exit232, %bb.w
  %23 = phi i8 [ %.pre390, %put_bits.exit232 ], [ %4, %bb.w ]
  %.not206 = icmp eq i8 %23, 0
  br i1 %.not206, label %.loopexit271, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !60
  %i.dk = zext i16 %i.dj to i32
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 16, i32 noundef %i.dk)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !61
  %i.dn = zext i8 %i.dm to i32
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 1, i32 noundef %i.dn)
  %i.do = load i8, ptr %i.dl, align 2, !tbaa !61
  %.not207 = icmp eq i8 %i.do, 0
  br i1 %.not207, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 7, i32 noundef 0)
  br label %.loopexit271

bb.ab:                                            ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !62
  %i.dr = zext i8 %i.dq to i32
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 3, i32 noundef %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 2, !tbaa !63
  %i.du = zext i8 %i.dt to i32
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 2, i32 noundef %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !64
  %i.dx = zext i8 %i.dw to i32
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 1, i32 noundef %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !65
  %i.ea = zext i8 %i.dz to i32
  call fastcc void @put_bits(ptr noundef %3, i32 noundef 1, i32 noundef %i.ea)
  %i.eb = load i8, ptr %i.ds, align 2, !tbaa !63
  %i.ec = icmp eq i8 %i.eb, 3
  br i1 %i.ec, label %.preheader272, label %bb.bi

.preheader272:                                    ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.promoted = load i32, ptr %3, align 8, !tbaa !50 ; 2 uses
  %.promoted284 = load i32, ptr %i.dc, align 4, !tbaa !51 ; 4 uses
  %.promoted286 = load ptr, ptr %i.db, align 8    ; 5 uses
  %i.ee = load ptr, ptr %i.da, align 8
  %i.ef = ptrtoint ptr %i.ee to i64               ; 8 uses
  %i.eg = load i16, ptr %i.ed, align 2, !tbaa !66
  %i.eh = zext i16 %i.eg to i32                   ; 4 uses
  %i.ei = icmp sgt i32 %.promoted284, 16
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader272
  %i.ej = shl i32 %.promoted, 16
  %i.ek = or disjoint i32 %i.ej, %i.eh
  br label %put_bits.exit

bb.ad:                                            ; preds = %.preheader272
  %i.el = ptrtoint ptr %.promoted286 to i64
  %i.em = sub i64 %i.ef, %i.el
  %i.en = icmp ugt i64 %i.em, 3
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = shl i32 %.promoted, %.promoted284
  %i.ep = sub nsw i32 16, %.promoted284
  %i.eq = lshr i32 %i.eh, %i.ep
  %i.er = or i32 %i.eq, %i.eo
  %i.es = tail call i32 @llvm.bswap.i32(i32 %i.er)
  store i32 %i.es, ptr %.promoted286, align 1, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %.promoted286, i64 4
  br label %put_bits.exit

bb.af:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.ae, %bb.af, %bb.ac
  %.sink = phi i32 [ -16, %bb.ac ], [ 16, %bb.af ], [ 16, %bb.ae ]
  %i.eu = phi ptr [ %.promoted286, %bb.ac ], [ %.promoted286, %bb.af ], [ %i.et, %bb.ae ] ; 5 uses
  %.026.i.i = phi i32 [ %i.ek, %bb.ac ], [ %i.eh, %bb.af ], [ %i.eh, %bb.ae ] ; 2 uses
  %i.ev = add nsw i32 %.promoted284, %.sink       ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !66
  %i.ey = zext i16 %i.ex to i32                   ; 4 uses
  %i.ez = icmp sgt i32 %i.ev, 16
  br i1 %i.ez, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %put_bits.exit
  %i.fa = ptrtoint ptr %i.eu to i64
  %i.fb = sub i64 %i.ef, %i.fa
  %i.fc = icmp ugt i64 %i.fb, 3
  br i1 %i.fc, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %put_bits.exit.1

bb.ai:                                            ; preds = %bb.ag
  %i.fd = shl i32 %.026.i.i, %i.ev
  %i.fe = sub nsw i32 16, %i.ev
  %i.ff = lshr i32 %i.ey, %i.fe
  %i.fg = or i32 %i.ff, %i.fd
  %i.fh = tail call i32 @llvm.bswap.i32(i32 %i.fg)
  store i32 %i.fh, ptr %i.eu, align 1, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  br label %put_bits.exit.1

bb.aj:                                            ; preds = %put_bits.exit
  %i.fj = shl i32 %.026.i.i, 16
  %i.fk = or disjoint i32 %i.fj, %i.ey
  br label %put_bits.exit.1

put_bits.exit.1:                                  ; preds = %bb.ah, %bb.ai, %bb.aj
  %.sink422 = phi i32 [ -16, %bb.aj ], [ 16, %bb.ai ], [ 16, %bb.ah ]
  %i.fl = phi ptr [ %i.eu, %bb.aj ], [ %i.fi, %bb.ai ], [ %i.eu, %bb.ah ] ; 5 uses
  %.026.i.i.1 = phi i32 [ %i.fk, %bb.aj ], [ %i.ey, %bb.ai ], [ %i.ey, %bb.ah ] ; 2 uses
  %i.fm = add nsw i32 %i.ev, %.sink422            ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !66
  %i.fp = zext i16 %i.fo to i32                   ; 4 uses
  %i.fq = icmp sgt i32 %i.fm, 16
  br i1 %i.fq, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %put_bits.exit.1
  %i.fr = ptrtoint ptr %i.fl to i64
  %i.fs = sub i64 %i.ef, %i.fr
  %i.ft = icmp ugt i64 %i.fs, 3
  br i1 %i.ft, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %put_bits.exit.2

bb.am:                                            ; preds = %bb.ak
  %i.fu = shl i32 %.026.i.i.1, %i.fm
  %i.fv = sub nsw i32 16, %i.fm
  %i.fw = lshr i32 %i.fp, %i.fv
  %i.fx = or i32 %i.fw, %i.fu
  %i.fy = tail call i32 @llvm.bswap.i32(i32 %i.fx)
  store i32 %i.fy, ptr %i.fl, align 1, !tbaa !21
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  br label %put_bits.exit.2

bb.an:                                            ; preds = %put_bits.exit.1
  %i.ga = shl i32 %.026.i.i.1, 16
  %i.gb = or disjoint i32 %i.ga, %i.fp
  br label %put_bits.exit.2

put_bits.exit.2:                                  ; preds = %bb.al, %bb.am, %bb.an
  %.sink423 = phi i32 [ -16, %bb.an ], [ 16, %bb.am ], [ 16, %bb.al ]
  %i.gc = phi ptr [ %i.fl, %bb.an ], [ %i.fz, %bb.am ], [ %i.fl, %bb.al ] ; 5 uses
  %.026.i.i.2 = phi i32 [ %i.gb, %bb.an ], [ %i.fp, %bb.am ], [ %i.fp, %bb.al ] ; 2 uses
  %i.gd = add nsw i32 %i.fm, %.sink423            ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !66
  %i.gg = zext i16 %i.gf to i32                   ; 4 uses
  %i.gh = icmp sgt i32 %i.gd, 16
  br i1 %i.gh, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %put_bits.exit.2
  %i.gi = ptrtoint ptr %i.gc to i64
  %i.gj = sub i64 %i.ef, %i.gi
  %i.gk = icmp ugt i64 %i.gj, 3
  br i1 %i.gk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #10
  br label %put_bits.exit.3

bb.aq:                                            ; preds = %bb.ao
  %i.gl = shl i32 %.026.i.i.2, %i.gd
  %i.gm = sub nsw i32 16, %i.gd
  %i.gn = lshr i32 %i.gg, %i.gm
  %i.go = or i32 %i.gn, %i.gl
  %i.gp = tail call i32 @llvm.bswap.i32(i32 %i.go)
  store i32 %i.gp, ptr %i.gc, align 1, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  br label %put_bits.exit.3

bb.ar:                                            ; preds = %put_bits.exit.2
  %i.gr = shl i32 %.026.i.i.2, 16
  %i.gs = or disjoint i32 %i.gr, %i.gg
  br label %put_bits.exit.3

put_bits.exit.3:                                  ; preds = %bb.ap, %bb.aq, %bb.ar
  %.sink424 = phi i32 [ -16, %bb.ar ], [ 16, %bb.aq ], [ 16, %bb.ap ]
  %i.gt = phi ptr [ %i.gc, %bb.ar ], [ %i.gq, %bb.aq ], [ %i.gc, %bb.ap ] ; 5 uses
  %.026.i.i.3 = phi i32 [ %i.gs, %bb.ar ], [ %i.gg, %bb.aq ], [ %i.gg, %bb.ap ] ; 2 uses
  %i.gu = add nsw i32 %i.gd, %.sink424            ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !66
  %i.gx = zext i16 %i.gw to i32                   ; 4 uses
  %i.gy = icmp sgt i32 %i.gu, 16
  br i1 %i.gy, label %bb.av, label %bb.as

bb.as:                                            ; preds = %put_bits.exit.3
  %i.gz = ptrtoint ptr %i.gt to i64
  %i.ha = sub i64 %i.ef, %i.gz
  %i.hb = icmp ugt i64 %i.ha, 3
end_hunk_0
