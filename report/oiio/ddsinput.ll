inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@bcdec_bc6h_float:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.fy = or i32 %i.fs, 947912704
  %i.fz = bitcast i32 %i.fy to float
  %i.ga = fadd float %i.fz, f0xB8800000
  %i.gb = bitcast float %i.ga to i32
  br label %_Z26bcdec__half_to_float_quickt.exit22.3

bb.ah:                                            ; preds = %_Z26bcdec__half_to_float_quickt.exit.3
  %i.gc = or i32 %i.fs, 1879048192
  br label %_Z26bcdec__half_to_float_quickt.exit22.3

_Z26bcdec__half_to_float_quickt.exit22.3:         ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.0.0.i20.3 = phi i32 [ %i.gc, %bb.ah ], [ %i.gb, %bb.ag ], [ %i.fw, %bb.af ]
  %.signext.i21.3 = sext i16 %i.fq to i32
  %i.gd = and i32 %.signext.i21.3, -2147483648
  %i.ge = or i32 %.sroa.0.0.i20.3, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %.01928, i64 40
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %.01829, i64 24
  %i.gh = load i16, ptr %i.fp, align 2, !tbaa !7  ; 2 uses
  %i.gi = zext i16 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, 13               ; 4 uses
  %i.gk = and i32 %i.gj, 260046848                ; 2 uses
  %i.gl = icmp eq i32 %i.gk, 260046848
  br i1 %i.gl, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_Z26bcdec__half_to_float_quickt.exit22.3
  %i.gm = and i32 %i.gj, 268427264
  %i.gn = add nuw nsw i32 %i.gm, 939524096
  %i.go = icmp eq i32 %i.gk, 0
  br i1 %i.go, label %bb.aj, label %_Z26bcdec__half_to_float_quickt.exit25.3

bb.aj:                                            ; preds = %bb.ai
  %i.gp = or i32 %i.gj, 947912704
  %i.gq = bitcast i32 %i.gp to float
  %i.gr = fadd float %i.gq, f0xB8800000
  %i.gs = bitcast float %i.gr to i32
  br label %_Z26bcdec__half_to_float_quickt.exit25.3

bb.ak:                                            ; preds = %_Z26bcdec__half_to_float_quickt.exit22.3
  %i.gt = or i32 %i.gj, 1879048192
  br label %_Z26bcdec__half_to_float_quickt.exit25.3

_Z26bcdec__half_to_float_quickt.exit25.3:         ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.0.0.i23.3 = phi i32 [ %i.gt, %bb.ak ], [ %i.gs, %bb.aj ], [ %i.gn, %bb.ai ]
  %.signext.i24.3 = sext i16 %i.gh to i32
  %i.gu = and i32 %.signext.i24.3, -2147483648
  %i.gv = or i32 %.sroa.0.0.i23.3, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %.01928, i64 44
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !21
  %i.gx = getelementptr inbounds [4 x i8], ptr %.01928, i64 %i.b
  %i.gy = add nuw nsw i32 %.01730, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, 4
  br i1 %exitcond.not, label %bb.al, label %.preheader, !llvm.loop !23

bb.al:                                            ; preds = %_Z26bcdec__half_to_float_quickt.exit25.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z18bcdec__swap_valuesPiS_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %0, align 4, !tbaa !3
  %i.c = xor i32 %i.b, %i.a                       ; 2 uses
  store i32 %i.c, ptr %0, align 4, !tbaa !3
  %i.d = load i32, ptr %1, align 4, !tbaa !3
  %i.e = xor i32 %i.d, %i.c                       ; 2 uses
  store i32 %i.e, ptr %1, align 4, !tbaa !3
  %i.f = load i32, ptr %0, align 4, !tbaa !3
  %i.g = xor i32 %i.f, %i.e
  store i32 %i.g, ptr %0, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @bcdec_bc7(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [6 x [4 x i32]], align 16         ; 47 uses
  %i.b = alloca [4 x [4 x i8]], align 16          ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.c = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10   ; 12 uses
  %i.f = tail call i64 @llvm.fshl.i64(i64 %i.e, i64 %i.c, i64 63) ; 3 uses
  %i.g = lshr i64 %i.e, 1                         ; 2 uses
  %i.h = trunc i64 %i.c to i1
  br i1 %i.h, label %.thread530, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.g, i64 %i.f, i64 63) ; 3 uses
  %i.j = lshr i64 %i.e, 2                         ; 2 uses
  %i.k = and i64 %i.f, 1
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %.thread530

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.i, i64 63) ; 3 uses
  %i.n = lshr i64 %i.e, 3                         ; 2 uses
  %i.o = and i64 %i.i, 1
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %.thread530

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.m, i64 63) ; 3 uses
  %i.r = lshr i64 %i.e, 4                         ; 2 uses
  %i.s = and i64 %i.m, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %.thread530

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.q, i64 63) ; 4 uses
  %i.v = lshr i64 %i.e, 5                         ; 2 uses
  %i.w = and i64 %i.q, 1
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.u, i64 63) ; 4 uses
  %i.z = lshr i64 %i.e, 6                         ; 2 uses
  %i.aa = and i64 %i.u, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.y, i64 63) ; 3 uses
  %i.ad = lshr i64 %i.e, 7                        ; 2 uses
  %i.ae = and i64 %i.y, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %.preheader328

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ac, i64 63)
  %i.ah = lshr i64 %i.e, 8
  %i.ai = and i64 %i.ac, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge.preheader, label %.thread530

.critedge.preheader:                              ; preds = %bb.h
  %i.ak = sext i32 %2 to i64                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 0, i64 16, i1 false), !tbaa !9
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !tbaa !9
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ak ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !tbaa !9
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !tbaa !9
  br label %.loopexit

.thread530:                                       ; preds = %bb.b, %bb.d, %bb.h, %bb.c, %bb.a
  %i.ao = phi i32 [ 4, %bb.a ], [ 6, %bb.c ], [ 6, %bb.b ], [ 6, %bb.d ], [ 6, %bb.h ] ; 3 uses
  %.lcssa402.ph541 = phi i64 [ %i.g, %bb.a ], [ %i.n, %bb.c ], [ %i.j, %bb.b ], [ %i.r, %bb.d ], [ %i.ah, %bb.h ] ; 2 uses
  %.lcssa404.ph540 = phi i64 [ %i.f, %bb.a ], [ %i.m, %bb.c ], [ %i.i, %bb.b ], [ %i.q, %bb.d ], [ %i.ag, %bb.h ] ; 2 uses
  %.0254337.lcssa.ph539 = phi i32 [ 0, %bb.a ], [ 2, %bb.c ], [ 1, %bb.b ], [ 3, %bb.d ], [ 7, %bb.h ] ; 2 uses
  %or.cond.ph538 = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.h ]
  %.ph537 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.h ]
  %i.ap = phi i32 [ 3, %bb.a ], [ 3, %bb.c ], [ 2, %bb.b ], [ 2, %bb.d ], [ 2, %bb.h ] ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.ao
  %i.aq = xor i32 %notmask.i, -1                  ; 2 uses
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = trunc i64 %.lcssa404.ph540 to i32
  %i.at = and i32 %i.aq, %i.as
  %i.au = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.av = lshr i64 %.lcssa404.ph540, %i.au
  %i.aw = and i64 %.lcssa402.ph541, %i.ar
  %narrow = sub nuw nsw i32 64, %i.ao
  %i.ax = zext nneg i32 %narrow to i64
  %i.ay = shl i64 %i.aw, %i.ax
  %i.az = or i64 %i.ay, %i.av
  %i.ba = lshr i64 %.lcssa402.ph541, %i.au
  %i.bb = zext nneg i32 %i.at to i64
  %i.bc = shl nuw nsw i32 %i.ap, 1
  %i.bd = and i32 %.0254337.lcssa.ph539, 6
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = icmp eq i32 %i.bd, 6
  br label %.preheader328

bb.i:                                             ; preds = %bb.f
  %i.bg = trunc i64 %i.y to i32
  %i.bh = and i32 %i.bg, 3
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.y, i64 62)
  %i.bj = lshr i64 %i.e, 8
  br label %.preheader328

bb.j:                                             ; preds = %bb.e
  %i.bk = trunc i64 %i.u to i32
  %i.bl = and i32 %i.bk, 3
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.u, i64 62) ; 2 uses
  %i.bn = lshr i64 %i.e, 7
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bm, i64 63)
  %i.bp = lshr i64 %i.e, 8
  %i.bq = and i64 %i.bm, 1
  %i.br = icmp eq i64 %i.bq, 0
  br label %.preheader328

.preheader328:                                    ; preds = %.thread530, %bb.g, %bb.i, %bb.j
  %i.bs = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ %i.bf, %.thread530 ], [ true, %bb.g ]
  %wide.trip.count = phi i64 [ 2, %bb.j ], [ 2, %bb.i ], [ %i.be, %.thread530 ], [ 2, %bb.g ] ; 21 uses
  %.0252560 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ %i.ap, %.thread530 ], [ 1, %bb.g ] ; 2 uses
  %.0253558 = phi i64 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.bb, %.thread530 ], [ 0, %bb.g ]
  %i.bt = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ %.ph537, %.thread530 ], [ false, %bb.g ]
  %or.cond522554 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ %or.cond.ph538, %.thread530 ], [ false, %bb.g ] ; 2 uses
  %i.bu = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %.thread530 ], [ false, %bb.g ]
  %i.bv = phi i1 [ false, %bb.j ], [ true, %bb.i ], [ false, %.thread530 ], [ false, %bb.g ] ; 2 uses
  %i.bw = phi i32 [ 2, %bb.j ], [ 2, %bb.i ], [ 2, %.thread530 ], [ 4, %bb.g ]
  %.0254337.lcssa524552 = phi i32 [ 4, %bb.j ], [ 5, %bb.i ], [ %.0254337.lcssa.ph539, %.thread530 ], [ 6, %bb.g ] ; 4 uses
  %.sroa.25.3 = phi i64 [ %i.bp, %bb.j ], [ %i.bj, %bb.i ], [ %i.ba, %.thread530 ], [ %i.ad, %bb.g ] ; 2 uses
  %.sroa.0.3 = phi i64 [ %i.bo, %bb.j ], [ %i.bi, %bb.i ], [ %i.az, %.thread530 ], [ %i.ac, %bb.g ] ; 2 uses
  %.0239 = phi i32 [ %i.bl, %bb.j ], [ %i.bh, %bb.i ], [ 0, %.thread530 ], [ 0, %bb.g ] ; 9 uses
  %.0238 = phi i1 [ %i.br, %bb.j ], [ true, %bb.i ], [ true, %.thread530 ], [ true, %bb.g ]
  %i.bx = zext nneg i32 %.0254337.lcssa524552 to i64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr @_ZZ9bcdec_bc7E17actual_bits_count, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9   ; 2 uses
  %i.ca = sext i8 %i.bz to i32                    ; 3 uses
  %notmask.i265 = shl nsw i32 -1, %i.ca
  %i.cb = xor i32 %notmask.i265, -1               ; 10 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 9 uses
  %i.cd = zext i32 %i.ca to i64                   ; 18 uses
  %i.ce = sext i8 %i.bz to i64
  %i.cf = sub nsw i64 64, %i.ce                   ; 9 uses
  %i.cg = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.epil.preheader, label %.preheader328.new

.preheader328.new:                                ; preds = %.preheader328
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader328.new
  %indvars.iv = phi i64 [ 0, %.preheader328.new ], [ %indvars.iv.next.1651, %bb.k ] ; 3 uses
  %.sroa.0.5342 = phi i64 [ %.sroa.0.3, %.preheader328.new ], [ %i.cu, %bb.k ] ; 2 uses
  %.sroa.25.5341 = phi i64 [ %.sroa.25.3, %.preheader328.new ], [ %i.cv, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader328.new ], [ %niter.next.1, %bb.k ]
  %i.ci = trunc i64 %.sroa.0.5342 to i32
  %i.cj = and i32 %i.cb, %i.ci
  %i.ck = lshr i64 %.sroa.0.5342, %i.cd
  %i.cl = and i64 %.sroa.25.5341, %i.cc
  %i.cm = shl i64 %i.cl, %i.cf
  %i.cn = or i64 %i.cm, %i.ck                     ; 2 uses
  %i.co = lshr i64 %.sroa.25.5341, %i.cd          ; 2 uses
  %gep = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.cj, ptr %gep, align 16, !tbaa !3
  %i.cp = trunc i64 %i.cn to i32
  %i.cq = and i32 %i.cb, %i.cp
  %i.cr = lshr i64 %i.cn, %i.cd
  %i.cs = and i64 %i.co, %i.cc
  %i.ct = shl i64 %i.cs, %i.cf
  %i.cu = or i64 %i.ct, %i.cr                     ; 3 uses
  %i.cv = lshr i64 %i.co, %i.cd                   ; 3 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv
  %gep.1650 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i32 %i.cq, ptr %gep.1650, align 16, !tbaa !3
  %indvars.iv.next.1651 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader328.1.unr-lcssa, label %bb.k, !llvm.loop !24

.preheader328.1.unr-lcssa:                        ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader328.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader328.1.unr-lcssa, %.preheader328
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader328 ], [ %indvars.iv.next.1651, %.preheader328.1.unr-lcssa ]
  %.sroa.0.5342.epil.init = phi i64 [ %.sroa.0.3, %.preheader328 ], [ %i.cu, %.preheader328.1.unr-lcssa ] ; 2 uses
  %.sroa.25.5341.epil.init = phi i64 [ %.sroa.25.3, %.preheader328 ], [ %i.cv, %.preheader328.1.unr-lcssa ] ; 2 uses
  %lcmp.mod646 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod646)
  %i.cx = trunc i64 %.sroa.0.5342.epil.init to i32
  %i.cy = and i32 %i.cb, %i.cx
  %i.cz = lshr i64 %.sroa.0.5342.epil.init, %i.cd
  %i.da = and i64 %.sroa.25.5341.epil.init, %i.cc
  %i.db = shl i64 %i.da, %i.cf
  %i.dc = or i64 %i.db, %i.cz
  %i.dd = lshr i64 %.sroa.25.5341.epil.init, %i.cd
  %gep.epil = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  store i32 %i.cy, ptr %gep.epil, align 16, !tbaa !3
  br label %.preheader328.1

.preheader328.1:                                  ; preds = %.preheader328.1.unr-lcssa, %.epil.preheader
  %.lcssa643 = phi i64 [ %i.cu, %.preheader328.1.unr-lcssa ], [ %i.dc, %.epil.preheader ] ; 2 uses
  %.lcssa642 = phi i64 [ %i.cv, %.preheader328.1.unr-lcssa ], [ %i.dd, %.epil.preheader ] ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %xtraiter653 = and i64 %wide.trip.count, 1
  %i.de = icmp eq i64 %i.cg, 0
  br i1 %i.de, label %.epil.preheader652, label %.preheader328.1.new

.preheader328.1.new:                              ; preds = %.preheader328.1
  %unroll_iter658 = and i64 %wide.trip.count, 2147483646
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader328.1.new
  %indvars.iv.1 = phi i64 [ 0, %.preheader328.1.new ], [ %indvars.iv.next.1.1, %bb.l ] ; 3 uses
  %.sroa.0.5342.1 = phi i64 [ %.lcssa643, %.preheader328.1.new ], [ %i.dr, %bb.l ] ; 2 uses
  %.sroa.25.5341.1 = phi i64 [ %.lcssa642, %.preheader328.1.new ], [ %i.ds, %bb.l ] ; 2 uses
  %niter659 = phi i64 [ 0, %.preheader328.1.new ], [ %niter659.next.1, %bb.l ]
  %i.df = trunc i64 %.sroa.0.5342.1 to i32
  %i.dg = and i32 %i.cb, %i.df
  %i.dh = lshr i64 %.sroa.0.5342.1, %i.cd
  %i.di = and i64 %.sroa.25.5341.1, %i.cc
  %i.dj = shl i64 %i.di, %i.cf
  %i.dk = or i64 %i.dj, %i.dh                     ; 2 uses
  %i.dl = lshr i64 %.sroa.25.5341.1, %i.cd        ; 2 uses
  %gep.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  store i32 %i.dg, ptr %gep.1, align 4, !tbaa !3
  %i.dm = trunc i64 %i.dk to i32
  %i.dn = and i32 %i.cb, %i.dm
  %i.do = lshr i64 %i.dk, %i.cd
  %i.dp = and i64 %i.dl, %i.cc
  %i.dq = shl i64 %i.dp, %i.cf
  %i.dr = or i64 %i.dq, %i.do                     ; 3 uses
  %i.ds = lshr i64 %i.dl, %i.cd                   ; 3 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 %i.dn, ptr %gep.1.1, align 4, !tbaa !3
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter659.next.1 = add i64 %niter659, 2         ; 2 uses
  %niter659.ncmp.1 = icmp eq i64 %niter659.next.1, %unroll_iter658
  br i1 %niter659.ncmp.1, label %.preheader328.2.unr-lcssa, label %bb.l, !llvm.loop !24

.preheader328.2.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  br i1 %lcmp.mod654.not, label %.preheader328.2, label %.epil.preheader652

.epil.preheader652:                               ; preds = %.preheader328.2.unr-lcssa, %.preheader328.1
  %indvars.iv.1.epil.init = phi i64 [ 0, %.preheader328.1 ], [ %indvars.iv.next.1.1, %.preheader328.2.unr-lcssa ]
  %.sroa.0.5342.1.epil.init = phi i64 [ %.lcssa643, %.preheader328.1 ], [ %i.dr, %.preheader328.2.unr-lcssa ] ; 2 uses
  %.sroa.25.5341.1.epil.init = phi i64 [ %.lcssa642, %.preheader328.1 ], [ %i.ds, %.preheader328.2.unr-lcssa ] ; 2 uses
  %lcmp.mod657 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod657)
  %i.du = trunc i64 %.sroa.0.5342.1.epil.init to i32
  %i.dv = and i32 %i.cb, %i.du
  %i.dw = lshr i64 %.sroa.0.5342.1.epil.init, %i.cd
  %i.dx = and i64 %.sroa.25.5341.1.epil.init, %i.cc
  %i.dy = shl i64 %i.dx, %i.cf
  %i.dz = or i64 %i.dy, %i.dw
  %i.ea = lshr i64 %.sroa.25.5341.1.epil.init, %i.cd
  %gep.1.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.1, i64 %indvars.iv.1.epil.init
  store i32 %i.dv, ptr %gep.1.epil, align 4, !tbaa !3
  br label %.preheader328.2

.preheader328.2:                                  ; preds = %.preheader328.2.unr-lcssa, %.epil.preheader652
  %.lcssa641 = phi i64 [ %i.dr, %.preheader328.2.unr-lcssa ], [ %i.dz, %.epil.preheader652 ] ; 2 uses
  %.lcssa640 = phi i64 [ %i.ds, %.preheader328.2.unr-lcssa ], [ %i.ea, %.epil.preheader652 ] ; 2 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  %xtraiter661 = and i64 %wide.trip.count, 1
  %i.eb = icmp eq i64 %i.cg, 0
  br i1 %i.eb, label %.epil.preheader660, label %.preheader328.2.new

.preheader328.2.new:                              ; preds = %.preheader328.2
  %unroll_iter666 = and i64 %wide.trip.count, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader328.2.new
  %indvars.iv.2 = phi i64 [ 0, %.preheader328.2.new ], [ %indvars.iv.next.2.1, %bb.m ] ; 3 uses
  %.sroa.0.5342.2 = phi i64 [ %.lcssa641, %.preheader328.2.new ], [ %i.eo, %bb.m ] ; 2 uses
  %.sroa.25.5341.2 = phi i64 [ %.lcssa640, %.preheader328.2.new ], [ %i.ep, %bb.m ] ; 2 uses
  %niter667 = phi i64 [ 0, %.preheader328.2.new ], [ %niter667.next.1, %bb.m ]
  %i.ec = trunc i64 %.sroa.0.5342.2 to i32
  %i.ed = and i32 %i.cb, %i.ec
  %i.ee = lshr i64 %.sroa.0.5342.2, %i.cd
  %i.ef = and i64 %.sroa.25.5341.2, %i.cc
  %i.eg = shl i64 %i.ef, %i.cf
  %i.eh = or i64 %i.eg, %i.ee                     ; 2 uses
  %i.ei = lshr i64 %.sroa.25.5341.2, %i.cd        ; 2 uses
  %gep.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  store i32 %i.ed, ptr %gep.2, align 8, !tbaa !3
  %i.ej = trunc i64 %i.eh to i32
  %i.ek = and i32 %i.cb, %i.ej
  %i.el = lshr i64 %i.eh, %i.cd
  %i.em = and i64 %i.ei, %i.cc
  %i.en = shl i64 %i.em, %i.cf
  %i.eo = or i64 %i.en, %i.el                     ; 3 uses
  %i.ep = lshr i64 %i.ei, %i.cd                   ; 3 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %i.ek, ptr %gep.2.1, align 8, !tbaa !3
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter667.next.1 = add i64 %niter667, 2         ; 2 uses
  %niter667.ncmp.1 = icmp eq i64 %niter667.next.1, %unroll_iter666
  br i1 %niter667.ncmp.1, label %.unr-lcssa, label %bb.m, !llvm.loop !24

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %bb.n, label %.epil.preheader660

.epil.preheader660:                               ; preds = %.unr-lcssa, %.preheader328.2
  %indvars.iv.2.epil.init = phi i64 [ 0, %.preheader328.2 ], [ %indvars.iv.next.2.1, %.unr-lcssa ]
  %.sroa.0.5342.2.epil.init = phi i64 [ %.lcssa641, %.preheader328.2 ], [ %i.eo, %.unr-lcssa ] ; 2 uses
  %.sroa.25.5341.2.epil.init = phi i64 [ %.lcssa640, %.preheader328.2 ], [ %i.ep, %.unr-lcssa ] ; 2 uses
  %lcmp.mod665 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod665)
  %i.er = trunc i64 %.sroa.0.5342.2.epil.init to i32
  %i.es = and i32 %i.cb, %i.er
  %i.et = lshr i64 %.sroa.0.5342.2.epil.init, %i.cd
  %i.eu = and i64 %.sroa.25.5341.2.epil.init, %i.cc
  %i.ev = shl i64 %i.eu, %i.cf
  %i.ew = or i64 %i.ev, %i.et
  %i.ex = lshr i64 %.sroa.25.5341.2.epil.init, %i.cd
  %gep.2.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep.2, i64 %indvars.iv.2.epil.init
  store i32 %i.es, ptr %gep.2.epil, align 8, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.epil.preheader660
  %.lcssa639 = phi i64 [ %i.eo, %.unr-lcssa ], [ %i.ew, %.epil.preheader660 ] ; 3 uses
  %.lcssa638 = phi i64 [ %i.ep, %.unr-lcssa ], [ %i.ex, %.epil.preheader660 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZ9bcdec_bc7E17actual_bits_count, i64 8), i64 %i.bx
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9   ; 5 uses
  %i.fa = icmp sgt i8 %i.ez, 0
  br i1 %i.fa, label %.preheader326, label %.loopexit327

.preheader326:                                    ; preds = %bb.n
  %i.fb = zext nneg i8 %i.ez to i32
  %notmask.i266 = shl nsw i32 -1, %i.fb
  %i.fc = xor i32 %notmask.i266, -1               ; 4 uses
  %i.fd = zext nneg i32 %i.fc to i64              ; 3 uses
  %i.fe = zext nneg i8 %i.ez to i64               ; 7 uses
  %i.ff = sub nsw i64 64, %i.fe                   ; 3 uses
  %xtraiter669 = and i64 %wide.trip.count, 1
  %i.fg = icmp eq i64 %i.cg, 0
  br i1 %i.fg, label %.epil.preheader668, label %.preheader326.new

.preheader326.new:                                ; preds = %.preheader326
  %unroll_iter674 = and i64 %wide.trip.count, 2147483646
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader326.new
  %indvars.iv412 = phi i64 [ 0, %.preheader326.new ], [ %indvars.iv.next413.1, %bb.o ] ; 3 uses
  %.sroa.0.6348 = phi i64 [ %.lcssa639, %.preheader326.new ], [ %i.fv, %bb.o ] ; 2 uses
  %.sroa.25.6347 = phi i64 [ %.lcssa638, %.preheader326.new ], [ %i.fw, %bb.o ] ; 2 uses
  %niter675 = phi i64 [ 0, %.preheader326.new ], [ %niter675.next.1, %bb.o ]
  %i.fh = trunc i64 %.sroa.0.6348 to i32
  %i.fi = and i32 %i.fh, %i.fc
  %i.fj = lshr i64 %.sroa.0.6348, %i.fe
  %i.fk = and i64 %.sroa.25.6347, %i.fd
  %i.fl = shl i64 %i.fk, %i.ff
  %i.fm = or disjoint i64 %i.fl, %i.fj            ; 2 uses
  %i.fn = lshr i64 %.sroa.25.6347, %i.fe          ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv412
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store i32 %i.fi, ptr %i.fp, align 4, !tbaa !3
  %i.fq = trunc i64 %i.fm to i32
  %i.fr = and i32 %i.fq, %i.fc
  %i.fs = lshr i64 %i.fm, %i.fe
  %i.ft = and i64 %i.fn, %i.fd
  %i.fu = shl i64 %i.ft, %i.ff
  %i.fv = or disjoint i64 %i.fu, %i.fs            ; 3 uses
  %i.fw = lshr i64 %i.fn, %i.fe                   ; 3 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv412
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  store i32 %i.fr, ptr %i.fy, align 4, !tbaa !3
  %indvars.iv.next413.1 = add nuw nsw i64 %indvars.iv412, 2 ; 2 uses
  %niter675.next.1 = add i64 %niter675, 2         ; 2 uses
  %niter675.ncmp.1 = icmp eq i64 %niter675.next.1, %unroll_iter674
  br i1 %niter675.ncmp.1, label %.loopexit327.loopexit.unr-lcssa, label %bb.o, !llvm.loop !25

.loopexit327.loopexit.unr-lcssa:                  ; preds = %bb.o
  %lcmp.mod670.not = icmp eq i64 %xtraiter669, 0
  br i1 %lcmp.mod670.not, label %.loopexit327, label %.epil.preheader668

.epil.preheader668:                               ; preds = %.loopexit327.loopexit.unr-lcssa, %.preheader326
  %indvars.iv412.epil.init = phi i64 [ 0, %.preheader326 ], [ %indvars.iv.next413.1, %.loopexit327.loopexit.unr-lcssa ]
  %.sroa.0.6348.epil.init = phi i64 [ %.lcssa639, %.preheader326 ], [ %i.fv, %.loopexit327.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.25.6347.epil.init = phi i64 [ %.lcssa638, %.preheader326 ], [ %i.fw, %.loopexit327.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod673 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod673)
  %i.fz = trunc i64 %.sroa.0.6348.epil.init to i32
  %i.ga = and i32 %i.fz, %i.fc
  %i.gb = lshr i64 %.sroa.0.6348.epil.init, %i.fe
  %i.gc = and i64 %.sroa.25.6347.epil.init, %i.fd
  %i.gd = shl i64 %i.gc, %i.ff
  %i.ge = or disjoint i64 %i.gd, %i.gb
  %i.gf = lshr i64 %.sroa.25.6347.epil.init, %i.fe
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv412.epil.init
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 %i.ga, ptr %i.gh, align 4, !tbaa !3
  br label %.loopexit327

.loopexit327:                                     ; preds = %.epil.preheader668, %.loopexit327.loopexit.unr-lcssa, %bb.n
  %.sroa.25.7 = phi i64 [ %.lcssa638, %bb.n ], [ %i.fw, %.loopexit327.loopexit.unr-lcssa ], [ %i.gf, %.epil.preheader668 ] ; 7 uses
  %.sroa.0.7 = phi i64 [ %.lcssa639, %bb.n ], [ %i.fv, %.loopexit327.loopexit.unr-lcssa ], [ %i.ge, %.epil.preheader668 ] ; 6 uses
  br i1 %i.bs, label %.preheader325.preheader, label %switch.early.test

switch.early.test:                                ; preds = %.loopexit327
  switch i32 %.0254337.lcssa524552, label %.loopexit322 [
    i32 3, label %.preheader325.preheader
    i32 1, label %.preheader325.preheader
    i32 0, label %.preheader325.preheader
  ]

.preheader325.preheader:                          ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %.loopexit327
  %xtraiter677 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.gi = icmp ult i64 %i.cg, 3
  br i1 %i.gi, label %.preheader325.epil.preheader, label %.preheader325.preheader.new

.preheader325.preheader.new:                      ; preds = %.preheader325.preheader
  %unroll_iter681 = and i64 %wide.trip.count, 2147483644
  br label %.preheader325

.preheader325:                                    ; preds = %.preheader325, %.preheader325.preheader.new
  %indvars.iv421 = phi i64 [ 0, %.preheader325.preheader.new ], [ %indvars.iv.next422.3, %.preheader325 ] ; 5 uses
  %niter682 = phi i64 [ 0, %.preheader325.preheader.new ], [ %niter682.next.3, %.preheader325 ]
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv421 ; 2 uses
  %i.gk = load <4 x i32>, ptr %i.gj, align 16, !tbaa !3
  %i.gl = shl <4 x i32> %i.gk, splat (i32 1)
  store <4 x i32> %i.gl, ptr %i.gj, align 16, !tbaa !3
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv421
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.go = load <4 x i32>, ptr %i.gn, align 16, !tbaa !3
  %i.gp = shl <4 x i32> %i.go, splat (i32 1)
  store <4 x i32> %i.gp, ptr %i.gn, align 16, !tbaa !3
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv421
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32 ; 2 uses
  %i.gs = load <4 x i32>, ptr %i.gr, align 16, !tbaa !3
  %i.gt = shl <4 x i32> %i.gs, splat (i32 1)
  store <4 x i32> %i.gt, ptr %i.gr, align 16, !tbaa !3
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv421
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48 ; 2 uses
  %i.gw = load <4 x i32>, ptr %i.gv, align 16, !tbaa !3
  %i.gx = shl <4 x i32> %i.gw, splat (i32 1)
  store <4 x i32> %i.gx, ptr %i.gv, align 16, !tbaa !3
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %niter682.next.3 = add i64 %niter682, 4         ; 2 uses
  %niter682.ncmp.3 = icmp eq i64 %niter682.next.3, %unroll_iter681
  br i1 %niter682.ncmp.3, label %.unr-lcssa676, label %.preheader325, !llvm.loop !26

.unr-lcssa676:                                    ; preds = %.preheader325
  %lcmp.mod678.not = icmp eq i64 %xtraiter677, 0
  br i1 %lcmp.mod678.not, label %.epilog-lcssa679, label %.preheader325.epil.preheader

.preheader325.epil.preheader:                     ; preds = %.unr-lcssa676, %.preheader325.preheader
  %indvars.iv421.epil.init = phi i64 [ 0, %.preheader325.preheader ], [ %indvars.iv.next422.3, %.unr-lcssa676 ]
  %lcmp.mod680 = icmp ne i64 %xtraiter677, 0
  tail call void @llvm.assume(i1 %lcmp.mod680)
  br label %.preheader325.epil

.preheader325.epil:                               ; preds = %.preheader325.epil, %.preheader325.epil.preheader
  %indvars.iv421.epil = phi i64 [ %indvars.iv.next422.epil, %.preheader325.epil ], [ %indvars.iv421.epil.init, %.preheader325.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader325.epil ], [ 0, %.preheader325.epil.preheader ]
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv421.epil ; 2 uses
  %i.gz = load <4 x i32>, ptr %i.gy, align 16, !tbaa !3
  %i.ha = shl <4 x i32> %i.gz, splat (i32 1)
  store <4 x i32> %i.ha, ptr %i.gy, align 16, !tbaa !3
  %indvars.iv.next422.epil = add nuw nsw i64 %indvars.iv421.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter677
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa679, label %.preheader325.epil, !llvm.loop !27

.epilog-lcssa679:                                 ; preds = %.preheader325.epil, %.unr-lcssa676
  br i1 %i.bt, label %.loopexit322.loopexit, label %bb.p

.loopexit322.loopexit:                            ; preds = %.epilog-lcssa679
  %i.hb = trunc i64 %.sroa.0.7 to i32
  %i.hc = and i32 %i.hb, 1                        ; 3 uses
  %i.hd = tail call i64 @llvm.fshl.i64(i64 %.sroa.25.7, i64 %.sroa.0.7, i64 63) ; 2 uses
  %i.he = trunc i64 %i.hd to i32
  %i.hf = and i32 %i.he, 1                        ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.hj = load <2 x i32>, ptr %i.a, align 16, !tbaa !3
  %i.hk = insertelement <2 x i32> poison, i32 %i.hc, i64 0
  %i.hl = shufflevector <2 x i32> %i.hk, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = or <2 x i32> %i.hj, %i.hl
  store <2 x i32> %i.hm, ptr %i.a, align 16, !tbaa !3
  %i.hn = load <2 x i32>, ptr %i.hg, align 16, !tbaa !3
  %i.ho = or <2 x i32> %i.hn, %i.hl
  store <2 x i32> %i.ho, ptr %i.hg, align 16, !tbaa !3
  %i.hp = load <2 x i32>, ptr %i.hh, align 16, !tbaa !3
  %i.hq = insertelement <2 x i32> poison, i32 %i.hf, i64 0
  %i.hr = shufflevector <2 x i32> %i.hq, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hs = or <2 x i32> %i.hp, %i.hr
  store <2 x i32> %i.hs, ptr %i.hh, align 16, !tbaa !3
  %i.ht = load <2 x i32>, ptr %i.hi, align 16, !tbaa !3
  %i.hu = or <2 x i32> %i.ht, %i.hr
  store <2 x i32> %i.hu, ptr %i.hi, align 16, !tbaa !3
  %i.hv = load i32, ptr %invariant.gep.2, align 8, !tbaa !3
  %i.hw = or i32 %i.hv, %i.hc
  store i32 %i.hw, ptr %invariant.gep.2, align 8, !tbaa !3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !3
  %i.hz = or i32 %i.hy, %i.hc
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !3
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !3
  %i.ic = or i32 %i.ib, %i.hf
  store i32 %i.ic, ptr %i.ia, align 8, !tbaa !3
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !3
  %i.if = or i32 %i.ie, %i.hf
  store i32 %i.if, ptr %i.id, align 8, !tbaa !3
  %i.ig = lshr i64 %.sroa.25.7, 1
  %i.ih = tail call i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.hd, i64 63)
  %i.ii = lshr i64 %.sroa.25.7, 2
  br label %.loopexit322

bb.p:                                             ; preds = %.epilog-lcssa679
  %i.ij = shl nuw nsw i32 1, %.0254337.lcssa524552
  %i.ik = and i32 %i.ij, 203
  %.not = icmp eq i32 %i.ik, 0
  br i1 %.not, label %.loopexit322, label %.preheader323.preheader

.preheader323.preheader:                          ; preds = %bb.p
  %xtraiter683 = and i64 %wide.trip.count, 1
  %i.il = icmp eq i64 %i.cg, 0
  br i1 %i.il, label %.preheader323.epil.preheader, label %.preheader323.preheader.new

.preheader323.preheader.new:                      ; preds = %.preheader323.preheader
  %unroll_iter689 = and i64 %wide.trip.count, 2147483646
  br label %.preheader323

.preheader323:                                    ; preds = %.preheader323, %.preheader323.preheader.new
  %indvars.iv430 = phi i64 [ 0, %.preheader323.preheader.new ], [ %indvars.iv.next431.1, %.preheader323 ] ; 3 uses
  %.sroa.0.8354 = phi i64 [ %.sroa.0.7, %.preheader323.preheader.new ], [ %i.jd, %.preheader323 ] ; 2 uses
  %.sroa.25.8353 = phi i64 [ %.sroa.25.7, %.preheader323.preheader.new ], [ %i.je, %.preheader323 ] ; 3 uses
  %niter690 = phi i64 [ 0, %.preheader323.preheader.new ], [ %niter690.next.1, %.preheader323 ]
  %i.im = trunc i64 %.sroa.0.8354 to i32
  %i.in = and i32 %i.im, 1
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv430 ; 2 uses
  %i.ip = load <4 x i32>, ptr %i.io, align 16, !tbaa !3
  %i.iq = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %i.ir = shufflevector <4 x i32> %i.iq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.is = or <4 x i32> %i.ip, %i.ir
  store <4 x i32> %i.is, ptr %i.io, align 16, !tbaa !3
  %i.it = tail call i64 @llvm.fshl.i64(i64 %.sroa.25.8353, i64 %.sroa.0.8354, i64 63) ; 2 uses
  %i.iu = lshr i64 %.sroa.25.8353, 1
  %i.iv = trunc i64 %i.it to i32
  %i.iw = and i32 %i.iv, 1
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv430
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %i.iz = load <4 x i32>, ptr %i.iy, align 16, !tbaa !3
  %i.ja = insertelement <4 x i32> poison, i32 %i.iw, i64 0
  %i.jb = shufflevector <4 x i32> %i.ja, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jc = or <4 x i32> %i.iz, %i.jb
  store <4 x i32> %i.jc, ptr %i.iy, align 16, !tbaa !3
  %i.jd = tail call i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.it, i64 63) ; 3 uses
  %i.je = lshr i64 %.sroa.25.8353, 2              ; 3 uses
  %indvars.iv.next431.1 = add nuw nsw i64 %indvars.iv430, 2 ; 2 uses
  %niter690.next.1 = add i64 %niter690, 2         ; 2 uses
  %niter690.ncmp.1 = icmp eq i64 %niter690.next.1, %unroll_iter689
  br i1 %niter690.ncmp.1, label %.loopexit322.loopexit634.unr-lcssa, label %.preheader323, !llvm.loop !28

.loopexit322.loopexit634.unr-lcssa:               ; preds = %.preheader323
  %lcmp.mod685.not = icmp eq i64 %xtraiter683, 0
  br i1 %lcmp.mod685.not, label %.loopexit322, label %.preheader323.epil.preheader

.preheader323.epil.preheader:                     ; preds = %.loopexit322.loopexit634.unr-lcssa, %.preheader323.preheader
  %indvars.iv430.epil.init = phi i64 [ 0, %.preheader323.preheader ], [ %indvars.iv.next431.1, %.loopexit322.loopexit634.unr-lcssa ]
  %.sroa.0.8354.epil.init = phi i64 [ %.sroa.0.7, %.preheader323.preheader ], [ %i.jd, %.loopexit322.loopexit634.unr-lcssa ] ; 2 uses
  %.sroa.25.8353.epil.init = phi i64 [ %.sroa.25.7, %.preheader323.preheader ], [ %i.je, %.loopexit322.loopexit634.unr-lcssa ] ; 2 uses
  %lcmp.mod688 = trunc i64 %wide.trip.count to i1
  tail call void @llvm.assume(i1 %lcmp.mod688)
  %i.jf = trunc i64 %.sroa.0.8354.epil.init to i32
  %i.jg = and i32 %i.jf, 1
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv430.epil.init ; 2 uses
  %i.ji = load <4 x i32>, ptr %i.jh, align 16, !tbaa !3
  %i.jj = insertelement <4 x i32> poison, i32 %i.jg, i64 0
  %i.jk = shufflevector <4 x i32> %i.jj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.jl = or <4 x i32> %i.ji, %i.jk
  store <4 x i32> %i.jl, ptr %i.jh, align 16, !tbaa !3
  %i.jm = tail call i64 @llvm.fshl.i64(i64 %.sroa.25.8353.epil.init, i64 %.sroa.0.8354.epil.init, i64 63)
  %i.jn = lshr i64 %.sroa.25.8353.epil.init, 1
  br label %.loopexit322

.loopexit322:                                     ; preds = %.preheader323.epil.preheader, %.loopexit322.loopexit634.unr-lcssa, %.loopexit322.loopexit, %switch.early.test, %bb.p
  %.sroa.25.9 = phi i64 [ %.sroa.25.7, %switch.early.test ], [ %.sroa.25.7, %bb.p ], [ %i.ii, %.loopexit322.loopexit ], [ %i.je, %.loopexit322.loopexit634.unr-lcssa ], [ %i.jn, %.preheader323.epil.preheader ] ; 4 uses
  %.sroa.0.9 = phi i64 [ %.sroa.0.7, %switch.early.test ], [ %.sroa.0.7, %bb.p ], [ %i.ih, %.loopexit322.loopexit ], [ %i.jd, %.loopexit322.loopexit634.unr-lcssa ], [ %i.jm, %.preheader323.epil.preheader ] ; 4 uses
  %i.jo = lshr i32 203, %.0254337.lcssa524552
  %i.jp = and i32 %i.jo, 1                        ; 2 uses
  %i.jq = add nsw i32 %i.jp, %i.ca                ; 3 uses
  %i.jr = sub nsw i32 8, %i.jq                    ; 2 uses
  %i.js = sext i8 %i.ez to i32
  %i.jt = add nsw i32 %i.jp, %i.js                ; 2 uses
  %i.ju = sub nsw i32 8, %i.jt
  %i.jv = insertelement <2 x i32> poison, i32 %i.jr, i64 0
  %i.jw = shufflevector <2 x i32> %i.jv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jx = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.jy = shufflevector <2 x i32> %i.jx, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %.loopexit322, %bb.q
  %indvars.iv443 = phi i64 [ 0, %.loopexit322 ], [ %indvars.iv.next444, %bb.q ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv443 ; 4 uses
  %i.ka = load <2 x i32>, ptr %i.jz, align 16, !tbaa !3
  %i.kb = shl <2 x i32> %i.ka, %i.jw              ; 2 uses
  %i.kc = ashr <2 x i32> %i.kb, %i.jy
  %i.kd = or <2 x i32> %i.kc, %i.kb
  store <2 x i32> %i.kd, ptr %i.jz, align 16, !tbaa !3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !3
  %i.kg = shl i32 %i.kf, %i.jr                    ; 2 uses
  %i.kh = ashr i32 %i.kg, %i.jq
  %i.ki = or i32 %i.kh, %i.kg
  store i32 %i.ki, ptr %i.ke, align 8, !tbaa !3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 12 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !3
  %i.kl = shl i32 %i.kk, %i.ju                    ; 2 uses
  %i.km = ashr i32 %i.kl, %i.jt
  %i.kn = or i32 %i.km, %i.kl
  store i32 %i.kn, ptr %i.kj, align 4, !tbaa !3
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count
  br i1 %exitcond447.not, label %bb.r, label %bb.q, !llvm.loop !29

bb.r:                                             ; preds = %bb.q
  %.not258 = icmp eq i8 %i.ez, 0
  br i1 %.not258, label %.preheader320.preheader, label %.loopexit321

.preheader320.preheader:                          ; preds = %bb.r
  %xtraiter691 = and i64 %wide.trip.count, 7      ; 3 uses
  %i.ko = icmp ult i64 %i.cg, 7
  br i1 %i.ko, label %.preheader320.epil.preheader, label %.preheader320.preheader.new

.preheader320.preheader.new:                      ; preds = %.preheader320.preheader
  %unroll_iter695 = and i64 %wide.trip.count, 2147483640
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader320, %.preheader320.preheader.new
  %indvars.iv448 = phi i64 [ 0, %.preheader320.preheader.new ], [ %indvars.iv.next449.7, %.preheader320 ] ; 9 uses
  %niter696 = phi i64 [ 0, %.preheader320.preheader.new ], [ %niter696.next.7, %.preheader320 ]
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store i32 255, ptr %i.kq, align 4, !tbaa !3
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 28
  store i32 255, ptr %i.ks, align 4, !tbaa !3
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 44
  store i32 255, ptr %i.ku, align 4, !tbaa !3
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 60
  store i32 255, ptr %i.kw, align 4, !tbaa !3
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 76
  store i32 255, ptr %i.ky, align 4, !tbaa !3
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 92
  store i32 255, ptr %i.la, align 4, !tbaa !3
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 108
  store i32 255, ptr %i.lc, align 4, !tbaa !3
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 124
  store i32 255, ptr %i.le, align 4, !tbaa !3
  %indvars.iv.next449.7 = add nuw nsw i64 %indvars.iv448, 8 ; 2 uses
  %niter696.next.7 = add i64 %niter696, 8         ; 2 uses
  %niter696.ncmp.7 = icmp eq i64 %niter696.next.7, %unroll_iter695
  br i1 %niter696.ncmp.7, label %.loopexit321.loopexit.unr-lcssa, label %.preheader320, !llvm.loop !30

.loopexit321.loopexit.unr-lcssa:                  ; preds = %.preheader320
  %lcmp.mod693.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod693.not, label %.loopexit321, label %.preheader320.epil.preheader

.preheader320.epil.preheader:                     ; preds = %.loopexit321.loopexit.unr-lcssa, %.preheader320.preheader
  %indvars.iv448.epil.init = phi i64 [ 0, %.preheader320.preheader ], [ %indvars.iv.next449.7, %.loopexit321.loopexit.unr-lcssa ]
  %lcmp.mod694 = icmp ne i64 %xtraiter691, 0
  tail call void @llvm.assume(i1 %lcmp.mod694)
  br label %.preheader320.epil

.preheader320.epil:                               ; preds = %.preheader320.epil, %.preheader320.epil.preheader
  %indvars.iv448.epil = phi i64 [ %indvars.iv.next449.epil, %.preheader320.epil ], [ %indvars.iv448.epil.init, %.preheader320.epil.preheader ] ; 2 uses
  %epil.iter692 = phi i64 [ %epil.iter692.next, %.preheader320.epil ], [ 0, %.preheader320.epil.preheader ]
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv448.epil
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 255, ptr %i.lg, align 4, !tbaa !3
  %indvars.iv.next449.epil = add nuw nsw i64 %indvars.iv448.epil, 1
  %epil.iter692.next = add i64 %epil.iter692, 1   ; 2 uses
  %epil.iter692.cmp.not = icmp eq i64 %epil.iter692.next, %xtraiter691
  br i1 %epil.iter692.cmp.not, label %.loopexit321, label %.preheader320.epil, !llvm.loop !31

.loopexit321:                                     ; preds = %.loopexit321.loopexit.unr-lcssa, %.preheader320.epil, %bb.r
  %i.lh = select i1 %or.cond522554, i32 3, i32 %i.bw ; 22 uses
  %i.li = select i1 %i.bv, i32 2, i32 0
  %i.lj = select i1 %i.bu, i32 3, i32 %i.li       ; 2 uses
  %i.lk = icmp eq i32 %i.lh, 2
  %i.ll = select i1 %or.cond522554, ptr @_ZZ9bcdec_bc7E8aWeight3, ptr @_ZZ9bcdec_bc7E8aWeight4
  %i.lm = select i1 %i.lk, ptr @_ZZ9bcdec_bc7E8aWeight2, ptr %i.ll ; 10 uses
  %i.ln = select i1 %i.bv, ptr @_ZZ9bcdec_bc7E8aWeight2, ptr @_ZZ9bcdec_bc7E8aWeight3 ; 2 uses
  %i.lo = icmp eq i32 %.0252560, 1                ; 3 uses
  %i.lp = zext nneg i32 %.0252560 to i64
  %i.lq = getelementptr [1024 x i8], ptr @_ZZ9bcdec_bc7E14partition_sets, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -2048
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.lr, i64 %.0253558 ; 7 uses
  br i1 %i.lo, label %.preheader319.us.preheader, label %.preheader319.preheader

.preheader319.preheader:                          ; preds = %.loopexit321
  %i.lt = load i8, ptr %i.ls, align 16, !tbaa !9
  %.lobit = ashr i8 %i.lt, 7
  %i.lu = sext i8 %.lobit to i32
  %spec.select = add nsw i32 %i.lh, %i.lu         ; 3 uses
  %notmask.i267 = shl nsw i32 -1, %spec.select
  %i.lv = xor i32 %notmask.i267, -1               ; 2 uses
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = trunc i64 %.sroa.0.9 to i32
  %i.ly = and i32 %i.lv, %i.lx
  %i.lz = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.ma = lshr i64 %.sroa.0.9, %i.lz
  %i.mb = and i64 %.sroa.25.9, %i.lw
  %narrow317 = sub nuw nsw i32 64, %spec.select
  %i.mc = zext nneg i32 %narrow317 to i64
  %i.md = shl i64 %i.mb, %i.mc
  %i.me = or i64 %i.md, %i.ma                     ; 2 uses
  %i.mf = lshr i64 %.sroa.25.9, %i.lz             ; 2 uses
  %i.mg = trunc nuw nsw i32 %i.ly to i8
  store i8 %i.mg, ptr %i.b, align 16, !tbaa !9
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !9
  %.lobit.1 = ashr i8 %i.mi, 7
  %i.mj = sext i8 %.lobit.1 to i32
  %spec.select.1 = add nsw i32 %i.lh, %i.mj       ; 3 uses
  %notmask.i267.1 = shl nsw i32 -1, %spec.select.1
  %i.mk = xor i32 %notmask.i267.1, -1             ; 2 uses
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = trunc i64 %i.me to i32
  %i.mn = and i32 %i.mk, %i.mm
  %i.mo = zext nneg i32 %spec.select.1 to i64     ; 2 uses
  %i.mp = lshr i64 %i.me, %i.mo
  %i.mq = and i64 %i.mf, %i.ml
  %narrow317.1 = sub nuw nsw i32 64, %spec.select.1
  %i.mr = zext nneg i32 %narrow317.1 to i64
  %i.ms = shl i64 %i.mq, %i.mr
  %i.mt = or i64 %i.ms, %i.mp                     ; 2 uses
  %i.mu = lshr i64 %i.mf, %i.mo                   ; 2 uses
  %i.mv = trunc nuw nsw i32 %i.mn to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !9
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  %i.my = trunc i64 %i.mt to i32
  %i.mz = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.nb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.nd = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ne = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.nf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.nk = load <12 x i8>, ptr %i.mx, align 2, !tbaa !9
  %i.nl = icmp slt <12 x i8> %i.nk, zeroinitializer ; 12 uses
  %i.nm = extractelement <12 x i1> %i.nl, i64 0
  %i.nn = sext i1 %i.nm to i32
  %spec.select.2 = add nsw i32 %i.lh, %i.nn       ; 3 uses
  %notmask.i267.2 = shl nsw i32 -1, %spec.select.2
  %i.no = xor i32 %notmask.i267.2, -1             ; 2 uses
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = and i32 %i.no, %i.my
  %i.nr = zext nneg i32 %spec.select.2 to i64     ; 2 uses
  %i.ns = lshr i64 %i.mt, %i.nr
  %i.nt = and i64 %i.mu, %i.np
  %narrow317.2 = sub nuw nsw i32 64, %spec.select.2
  %i.nu = zext nneg i32 %narrow317.2 to i64
  %i.nv = shl i64 %i.nt, %i.nu
  %i.nw = or i64 %i.nv, %i.ns                     ; 2 uses
  %i.nx = lshr i64 %i.mu, %i.nr                   ; 2 uses
  %i.ny = trunc nuw nsw i32 %i.nq to i8
  store i8 %i.ny, ptr %i.mz, align 2, !tbaa !9
  %i.nz = extractelement <12 x i1> %i.nl, i64 1
  %i.oa = sext i1 %i.nz to i32
  %spec.select.3 = add nsw i32 %i.lh, %i.oa       ; 3 uses
  %notmask.i267.3 = shl nsw i32 -1, %spec.select.3
  %i.ob = xor i32 %notmask.i267.3, -1             ; 2 uses
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = trunc i64 %i.nw to i32
  %i.oe = and i32 %i.ob, %i.od
  %i.of = zext nneg i32 %spec.select.3 to i64     ; 2 uses
  %i.og = lshr i64 %i.nw, %i.of
  %i.oh = and i64 %i.nx, %i.oc
  %narrow317.3 = sub nuw nsw i32 64, %spec.select.3
  %i.oi = zext nneg i32 %narrow317.3 to i64
  %i.oj = shl i64 %i.oh, %i.oi
  %i.ok = or i64 %i.oj, %i.og                     ; 2 uses
  %i.ol = lshr i64 %i.nx, %i.of                   ; 2 uses
  %i.om = trunc nuw nsw i32 %i.oe to i8
  store i8 %i.om, ptr %i.na, align 1, !tbaa !9
  %i.on = extractelement <12 x i1> %i.nl, i64 2
  %i.oo = sext i1 %i.on to i32
  %spec.select.1462 = add nsw i32 %i.lh, %i.oo    ; 3 uses
  %notmask.i267.1463 = shl nsw i32 -1, %spec.select.1462
  %i.op = xor i32 %notmask.i267.1463, -1          ; 2 uses
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = trunc i64 %i.ok to i32
  %i.os = and i32 %i.op, %i.or
  %i.ot = zext nneg i32 %spec.select.1462 to i64  ; 2 uses
  %i.ou = lshr i64 %i.ok, %i.ot
  %i.ov = and i64 %i.ol, %i.oq
  %narrow317.1464 = sub nuw nsw i32 64, %spec.select.1462
  %i.ow = zext nneg i32 %narrow317.1464 to i64
  %i.ox = shl i64 %i.ov, %i.ow
  %i.oy = or i64 %i.ox, %i.ou                     ; 2 uses
  %i.oz = lshr i64 %i.ol, %i.ot                   ; 2 uses
  %i.pa = trunc nuw nsw i32 %i.os to i8
  store i8 %i.pa, ptr %i.nb, align 4, !tbaa !9
  %i.pb = extractelement <12 x i1> %i.nl, i64 3
  %i.pc = sext i1 %i.pb to i32
  %spec.select.1.1 = add nsw i32 %i.lh, %i.pc     ; 3 uses
  %notmask.i267.1.1 = shl nsw i32 -1, %spec.select.1.1
  %i.pd = xor i32 %notmask.i267.1.1, -1           ; 2 uses
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = trunc i64 %i.oy to i32
  %i.pg = and i32 %i.pd, %i.pf
  %i.ph = zext nneg i32 %spec.select.1.1 to i64   ; 2 uses
  %i.pi = lshr i64 %i.oy, %i.ph
  %i.pj = and i64 %i.oz, %i.pe
  %narrow317.1.1 = sub nuw nsw i32 64, %spec.select.1.1
  %i.pk = zext nneg i32 %narrow317.1.1 to i64
  %i.pl = shl i64 %i.pj, %i.pk
  %i.pm = or i64 %i.pl, %i.pi                     ; 2 uses
  %i.pn = lshr i64 %i.oz, %i.ph                   ; 2 uses
  %i.po = trunc nuw nsw i32 %i.pg to i8
  store i8 %i.po, ptr %i.nc, align 1, !tbaa !9
  %i.pp = extractelement <12 x i1> %i.nl, i64 4
  %i.pq = sext i1 %i.pp to i32
  %spec.select.2.1 = add nsw i32 %i.lh, %i.pq     ; 3 uses
  %notmask.i267.2.1 = shl nsw i32 -1, %spec.select.2.1
  %i.pr = xor i32 %notmask.i267.2.1, -1           ; 2 uses
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = trunc i64 %i.pm to i32
  %i.pu = and i32 %i.pr, %i.pt
  %i.pv = zext nneg i32 %spec.select.2.1 to i64   ; 2 uses
  %i.pw = lshr i64 %i.pm, %i.pv
  %i.px = and i64 %i.pn, %i.ps
  %narrow317.2.1 = sub nuw nsw i32 64, %spec.select.2.1
  %i.py = zext nneg i32 %narrow317.2.1 to i64
  %i.pz = shl i64 %i.px, %i.py
  %i.qa = or i64 %i.pz, %i.pw                     ; 2 uses
  %i.qb = lshr i64 %i.pn, %i.pv                   ; 2 uses
  %i.qc = trunc nuw nsw i32 %i.pu to i8
  store i8 %i.qc, ptr %i.nd, align 2, !tbaa !9
  %i.qd = extractelement <12 x i1> %i.nl, i64 5
  %i.qe = sext i1 %i.qd to i32
  %spec.select.3.1 = add nsw i32 %i.lh, %i.qe     ; 3 uses
  %notmask.i267.3.1 = shl nsw i32 -1, %spec.select.3.1
  %i.qf = xor i32 %notmask.i267.3.1, -1           ; 2 uses
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = trunc i64 %i.qa to i32
  %i.qi = and i32 %i.qf, %i.qh
  %i.qj = zext nneg i32 %spec.select.3.1 to i64   ; 2 uses
  %i.qk = lshr i64 %i.qa, %i.qj
  %i.ql = and i64 %i.qb, %i.qg
  %narrow317.3.1 = sub nuw nsw i32 64, %spec.select.3.1
  %i.qm = zext nneg i32 %narrow317.3.1 to i64
  %i.qn = shl i64 %i.ql, %i.qm
  %i.qo = or i64 %i.qn, %i.qk                     ; 2 uses
  %i.qp = lshr i64 %i.qb, %i.qj                   ; 2 uses
  %i.qq = trunc nuw nsw i32 %i.qi to i8
  store i8 %i.qq, ptr %i.ne, align 1, !tbaa !9
  %i.qr = extractelement <12 x i1> %i.nl, i64 6
  %i.qs = sext i1 %i.qr to i32
  %spec.select.2466 = add nsw i32 %i.lh, %i.qs    ; 3 uses
  %notmask.i267.2467 = shl nsw i32 -1, %spec.select.2466
  %i.qt = xor i32 %notmask.i267.2467, -1          ; 2 uses
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = trunc i64 %i.qo to i32
  %i.qw = and i32 %i.qt, %i.qv
  %i.qx = zext nneg i32 %spec.select.2466 to i64  ; 2 uses
  %i.qy = lshr i64 %i.qo, %i.qx
  %i.qz = and i64 %i.qp, %i.qu
  %narrow317.2468 = sub nuw nsw i32 64, %spec.select.2466
  %i.ra = zext nneg i32 %narrow317.2468 to i64
  %i.rb = shl i64 %i.qz, %i.ra
  %i.rc = or i64 %i.rb, %i.qy                     ; 2 uses
  %i.rd = lshr i64 %i.qp, %i.qx                   ; 2 uses
  %i.re = trunc nuw nsw i32 %i.qw to i8
  store i8 %i.re, ptr %i.nf, align 8, !tbaa !9
  %i.rf = extractelement <12 x i1> %i.nl, i64 7
  %i.rg = sext i1 %i.rf to i32
  %spec.select.1.2 = add nsw i32 %i.lh, %i.rg     ; 3 uses
  %notmask.i267.1.2 = shl nsw i32 -1, %spec.select.1.2
  %i.rh = xor i32 %notmask.i267.1.2, -1           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !121
  %.not.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.x, ptr %i.y, align 8, !tbaa !121
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.ac = and i32 %i.ab, -2
  %or.cond.i = icmp eq i32 %i.ac, 8               ; 2 uses
  %..i = select i1 %or.cond.i, i32 10, i32 2      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !99
  %i.af = and i32 %i.ae, 512
  %.not42 = icmp eq i32 %i.af, 0
  br i1 %.not42, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !100 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !101 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !102 ; 3 uses
  %i.am = icmp samesign ugt i32 %2, 1
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.an = add nsw i32 %2, -1                      ; 3 uses
  %xtraiter = and i32 %i.an, 1
  %i.ao = icmp eq i32 %2, 2
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.an, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %spec.store.select116123.epil.init = phi i32 [ %i.ah, %.lr.ph.preheader ], [ %spec.store.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %spec.store.select5118122.epil.init = phi i32 [ %i.aj, %.lr.ph.preheader ], [ %spec.store.select5.1, %._crit_edge.loopexit.unr-lcssa ]
  %spec.store.select2120121.epil.init = phi i32 [ %i.al, %.lr.ph.preheader ], [ %spec.store.select2.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod178 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.ap = lshr i32 %spec.store.select116123.epil.init, 1
  %spec.store.select.epil = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 1)
  %i.aq = lshr i32 %spec.store.select5118122.epil.init, 1
  %spec.store.select5.epil = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 1)
  %i.ar = lshr i32 %spec.store.select2120121.epil.init, 1
  %spec.store.select2.epil = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.j
  %i.as = phi i32 [ %i.al, %bb.j ], [ %spec.store.select2.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.store.select2.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %spec.store.select5118.lcssa = phi i32 [ %i.aj, %bb.j ], [ %spec.store.select5.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.store.select5.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %spec.store.select116.lcssa = phi i32 [ %i.ah, %bb.j ], [ %spec.store.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.store.select.epil, %.lr.ph.epil.preheader ] ; 4 uses
  store i32 %spec.store.select116.lcssa, ptr %i.b, align 4
  store i32 %spec.store.select5118.lcssa, ptr %i.c, align 4
  store i32 %i.as, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.at = mul i32 %spec.store.select5118.lcssa, 6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.av = load i32, ptr %i.au, align 8, !tbaa !106
  %i.aw = or disjoint i32 %..i, 256
  %.sroa.097.0.insert.insert = zext nneg i32 %i.aw to i64
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %4, i32 noundef %spec.store.select116.lcssa, i32 noundef %i.at, i32 noundef %i.av, i64 %.sroa.097.0.insert.insert) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.ax, ptr noundef nonnull align 8 dereferenceable(160) %4) #34 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !122 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %i.ba, %._crit_edge ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #34
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !124

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.az, align 8, !tbaa !122
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.be = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ba, %._crit_edge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !125
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #35
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.k, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !126 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.bt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bl, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !87 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !9
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.bt, %i.bn
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !128

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.bk, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.bu = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bl, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !129
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !131
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #35
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.as, ptr %i.ch, align 4, !tbaa !132
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.store.select116.lcssa, ptr %i.ci, align 4, !tbaa !133
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %spec.store.select116.lcssa, ptr %i.cj, align 8, !tbaa !134
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %spec.store.select5118.lcssa, ptr %i.ck, align 8, !tbaa !135
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %spec.store.select5118.lcssa, ptr %i.cl, align 4, !tbaa !136
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.as, ptr %i.cm, align 4, !tbaa !137
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.as, ptr %i.cn, align 8, !tbaa !138
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %spec.store.select116123 = phi i32 [ %i.ah, %.lr.ph.preheader.new ], [ %spec.store.select.1, %.lr.ph ]
  %spec.store.select5118122 = phi i32 [ %i.aj, %.lr.ph.preheader.new ], [ %spec.store.select5.1, %.lr.ph ]
  %spec.store.select2120121 = phi i32 [ %i.al, %.lr.ph.preheader.new ], [ %spec.store.select2.1, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.co = lshr i32 %spec.store.select116123, 2
  %spec.store.select.1 = tail call i32 @llvm.umax.i32(i32 %i.co, i32 1) ; 3 uses
  %i.cp = lshr i32 %spec.store.select5118122, 2
  %spec.store.select5.1 = tail call i32 @llvm.umax.i32(i32 %i.cp, i32 1) ; 3 uses
  %i.cq = lshr i32 %spec.store.select2120121, 2
  %spec.store.select2.1 = tail call i32 @llvm.umax.i32(i32 %i.cq, i32 1) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !139

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  call void @_ZN11OpenImageIO4v3_18DDSInput22internal_seek_subimageEiiRjS2_S2_(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !3
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !106
  %i.cv = or disjoint i32 %..i, 256
  %.sroa.095.0.insert.insert = zext nneg i32 %i.cv to i64
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.cu, i64 %.sroa.095.0.insert.insert) #34
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.cw, ptr noundef nonnull align 8 dereferenceable(160) %5) #34 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !122 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !123 ; 2 uses
  %.not4.i.i.i.i69 = icmp eq ptr %i.cz, %i.db
  br i1 %.not4.i.i.i.i69, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75, label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i70
  %.05.i.i.i.i71 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i70 ], [ %i.cz, %bb.n ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i71) #34
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i71, i64 40 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.dc, %i.db
  br i1 %.not.i.i.i.i72, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73, label %.lr.ph.i.i.i.i70, !llvm.loop !124

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73: ; preds = %.lr.ph.i.i.i.i70
  %.pr.i.i74 = load ptr, ptr %i.cy, align 8, !tbaa !122
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73, %bb.n
  %i.dd = phi ptr [ %.pr.i.i74, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i73 ], [ %i.cz, %bb.n ] ; 3 uses
  %.not.i.i1.i.i76 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i1.i.i76, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !125
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #35
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77: ; preds = %bb.o, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i75
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !126 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i1.i78 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not4.i.i.i1.i78, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86, label %.lr.ph.i.i.i2.i79

.lr.ph.i.i.i2.i79:                                ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82
  %.05.i.i.i3.i80 = phi ptr [ %i.ds, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82 ], [ %i.dk, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77 ] ; 3 uses
  %i.dn = load ptr, ptr %.05.i.i.i3.i80, align 8, !tbaa !87 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i80, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i81: ; preds = %.lr.ph.i.i.i2.i79
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !9
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82: ; preds = %.lr.ph.i.i.i2.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i81
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i80, i64 32 ; 2 uses
  %.not.i.i.i4.i83 = icmp eq ptr %i.ds, %i.dm
  br i1 %.not.i.i.i4.i83, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84, label %.lr.ph.i.i.i2.i79, !llvm.loop !128

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i82
  %.pr.i5.i85 = load ptr, ptr %i.dj, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77
  %i.dt = phi ptr [ %.pr.i5.i85, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i84 ], [ %i.dk, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i77 ] ; 3 uses
  %.not.i.i1.i6.i87 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i1.i6.i87, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !129
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88: ; preds = %bb.p, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i86
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i7.i89 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i7.i89, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !131
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #35
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91:       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i88, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !3
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit91, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %i.ei = load i32, ptr %i.aa, align 4, !tbaa !43
  %switch.tableidx = add i32 %i.ei, -1            ; 2 uses
  %i.ej = icmp ult i32 %switch.tableidx, 10
  br i1 %i.ej, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.r
  %i.ek = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii, i64 %i.ek
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.16, ptr %6, align 8, !tbaa !91
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.em, align 8, !tbaa !93
  store ptr %switch.load, ptr %7, align 8, !tbaa !91
  %i.en = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #34
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.el, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %switch.lookup
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !109 ; 2 uses
  %.not45 = icmp eq i32 %i.eq, 0
  br i1 %.not45, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.es = load i32, ptr %i.er, align 8, !tbaa !103
  %i.et = and i32 %i.es, 131650
  %.not46 = icmp eq i32 %i.et, 0
  br i1 %.not46, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %switch.tableidx169 = add i32 %i.eq, -8         ; 3 uses
  %i.eu = icmp ult i32 %switch.tableidx169, 25
  %switch.shifted = lshr i32 16843009, %switch.tableidx169
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond174 = select i1 %i.eu, i1 %switch.lobit, i1 false
  br i1 %or.cond174, label %switch.lookup171, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.ep)
  br label %bb.be

bb.v:                                             ; preds = %bb.s, %.critedge
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !104
  %i.ex = icmp eq i32 %i.ew, 808540228
  br i1 %i.ex, label %bb.w, label %.thread.thread168

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !105
  %i.fa = call fastcc noundef i32 @_ZN11OpenImageIO4v3_1L25GetDxgiFormatBitsPerPixelEj(i32 noundef %i.ez) ; 2 uses
  %.not51 = icmp eq i32 %i.fa, 0
  br i1 %.not51, label %.thread.thread, label %.thread

switch.lookup171:                                 ; preds = %bb.t
  %i.fb = zext nneg i32 %switch.tableidx169 to i64
  %switch.gep172 = getelementptr inbounds nuw i8, ptr @switch.table._ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii.7, i64 %i.fb
  %switch.load173 = load i8, ptr %switch.gep172, align 1
  %switch.ext = zext i8 %switch.load173 to i32
  br label %.thread

.thread:                                          ; preds = %switch.lookup171, %bb.w
  %.032107 = phi i32 [ %i.fa, %bb.w ], [ %switch.ext, %switch.lookup171 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %.032107, ptr %i.a, align 4, !tbaa !3
  store ptr @.str.18, ptr %3, align 8, !tbaa !91
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 18, ptr %i.fd, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.fc, ptr noundef nonnull dead_on_return %3, i64 262, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 380
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !104
  %i.fe = icmp eq i32 %.pre, 808540228
  br i1 %i.fe, label %.thread.thread, label %.thread.thread168

.thread.thread:                                   ; preds = %bb.w, %.thread
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !105
  switch i32 %i.fg, label %.thread.thread168 [
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !498
  store i64 %i.i, ptr %i.e, align 8, !tbaa !499
  store ptr %i.j, ptr %0, align 8, !tbaa !498
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.o = icmp ugt i64 %i.b, %i.i
  br i1 %i.o, label %bb.d, label %.noexc.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 3 uses
  %i.u = shl i64 %.0.i, 2
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #40 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.v, null
  br i1 %.not.i.i112, label %bb.h, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !34
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
          to label %.noexc113 unwind label %bb.j

.noexc113:                                        ; preds = %bb.h
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.g
  store ptr %i.v, ptr %1, align 8, !tbaa !498
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !499
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.x
  br i1 %.not.i, label %.noexc.i, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %i.m) #34
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !499
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !499
  br label %.noexc.i

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #36
  unreachable

.noexc.i:                                         ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !508
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !496
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.l, !inline_history !555

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !499
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %.noexc.i, %.noexc
  %i.ai = phi i64 [ %i.aa, %.noexc.i ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !508
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !498   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bf, %bb.m ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bf, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod151 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.147.epil.init, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa148 = phi i128 [ %i.bz, %.unr-lcssa ], [ %i.bc, %.epil.preheader ] ; 2 uses
  %i.bd = trunc i128 %.lcssa148 to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %i.bf = lshr i128 %.lcssa148, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !556

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bz, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.147, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !557

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cb = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph143, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph143
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph143, label %.critedge.i, !llvm.loop !552

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.o
  %i.cg = phi i32 [ %i.ce, %bb.o ], [ %i.cc, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.ch, %bb.o ], [ %i.aj, %._crit_edge59 ]
  %i.ch = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !552

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !552

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ai, %i.cl
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !496
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cl)
          to label %.noexc43 unwind label %bb.t, !inline_history !558

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !499
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.de, %._crit_edge ] ; 3 uses
  %i.cp = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cq = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cr = sub i32 %indvar, %i.c
  %i.cs = and i32 %i.cr, 1
  %lcmp.mod153.not.not = icmp eq i32 %i.cs, 0
  br i1 %lcmp.mod153.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cq, 1
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.as, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cv
  %i.cz = zext i64 %i.cy to i128
  %i.da = add nsw i128 %.256, %i.cz               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa147.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %i.db = icmp eq i32 %i.ar, %indvar
  br i1 %i.db, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa147.unr, %.lr.ph.prol.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.dc = trunc i128 %.3.lcssa to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !559

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dy, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw i64 %i.dl, %i.dh
  %i.dn = zext i64 %i.dm to i128
  %i.do = add i128 %.352, %i.dn
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.ds
  %i.dx = zext i64 %i.dw to i128
  %i.dy = add i128 %i.do, %i.dx                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !560

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.dz = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ea = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.dz)
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !508
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !500
  %i.ed = shl nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !500
  %i.ee = load ptr, ptr %1, align 8, !tbaa !498   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ee) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.t:                                             ; preds = %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.at, %bb.l ]
  %i.eh = load ptr, ptr %1, align 8, !tbaa !498   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eh) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %7 = alloca %class.anon.77, align 8             ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !255    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #34
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #34
  %i.d = load ptr, ptr %6, align 8, !tbaa !289
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !296  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

end_hunk_2
