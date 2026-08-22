Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@HUF_readCTable:bb.a

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph68
  %lcmp.mod103.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.preheader, label %.lr.ph68.epil.preheader

.lr.ph68.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph68.preheader
  %indvars.iv85.epil.init = phi i64 [ %i.bx, %.lr.ph68.preheader ], [ %indvars.iv.next86.1, %.preheader.loopexit.unr-lcssa ]
  %.04465.epil.init = phi i16 [ 0, %.lr.ph68.preheader ], [ %i.cl, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod104 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv85.epil.init
  store i16 %.04465.epil.init, ptr %i.cb, align 2, !tbaa !34
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph68.epil.preheader, %.preheader.loopexit.unr-lcssa, %._crit_edge63
  br i1 %.not, label %._crit_edge71, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %.preheader
  %wide.trip.count90 = zext i32 %i.o to i64
  br label %.lr.ph70

.lr.ph68:                                         ; preds = %.lr.ph68, %.lr.ph68.preheader.new
  %indvars.iv85 = phi i64 [ %i.bx, %.lr.ph68.preheader.new ], [ %indvars.iv.next86.1, %.lr.ph68 ] ; 4 uses
  %.04465 = phi i16 [ 0, %.lr.ph68.preheader.new ], [ %i.cl, %.lr.ph68 ] ; 2 uses
  %niter106 = phi i32 [ 0, %.lr.ph68.preheader.new ], [ %niter106.next.1, %.lr.ph68 ]
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv85
  store i16 %.04465, ptr %i.cc, align 2, !tbaa !34
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv85
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !34
  %i.cf = add i16 %i.ce, %.04465
  %i.cg = lshr i16 %i.cf, 1                       ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next86
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !34
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next86
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !34
  %i.ck = add i16 %i.cj, %i.cg
  %i.cl = lshr i16 %i.ck, 1                       ; 2 uses
  %indvars.iv.next86.1 = add nsw i64 %indvars.iv85, -2 ; 2 uses
  %niter106.next.1 = add nuw i32 %niter106, 2     ; 2 uses
  %niter106.ncmp.1 = icmp eq i32 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !37

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %HUF_setValue.exit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next88, %HUF_setValue.exit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv87 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !16 ; 2 uses
  %i.co = and i64 %i.cn, 255                      ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.co ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !34 ; 2 uses
  %i.cr = add i16 %i.cq, 1
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !34
  %.not.i = icmp eq i64 %i.co, 0
  br i1 %.not.i, label %HUF_setValue.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph70
  %i.cs = zext i16 %i.cq to i64
  %i.ct = sub nsw i64 64, %i.co
  %i.cu = shl i64 %i.cs, %i.ct
  %i.cv = or i64 %i.cu, %i.cn
  store i64 %i.cv, ptr %i.cm, align 8, !tbaa !16
  br label %HUF_setValue.exit

HUF_setValue.exit:                                ; preds = %.lr.ph70, %bb.e
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !38

._crit_edge71:                                    ; preds = %HUF_setValue.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge71
  %.046 = phi i64 [ %i.h, %._crit_edge71 ], [ %i.h, %bb.a ], [ -44, %bb.b ], [ -48, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.046
}

declare i64 @HUF_readStats(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 256) i32 @HUF_getNbBitsFromCTable(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.a = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 255
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -66, 13) i64 @HUF_buildCTable_wksp(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [13 x i16], align 16              ; 13 uses
  %i.b = alloca [13 x i16], align 16              ; 9 uses
  %i.c = alloca [14 x i32], align 16              ; 11 uses
  %i.d = ptrtoint ptr %4 to i64
  %i.e = sub i64 0, %i.d
  %i.f = and i64 %i.e, 3                          ; 3 uses
  %.not.i = icmp ult i64 %5, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %i.f ; 7 uses
  %storemerge.i = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %i.f)
  %.0.i = select i1 %.not.i, ptr null, ptr %i.g   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 57 uses
  %i.i = icmp ult i64 %storemerge.i, 4864
  br i1 %i.i, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i32 %2, 255
  br i1 %i.j, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.g, i8 0, i64 4096, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4096 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(768) %i.k, i8 0, i64 768, i1 false)
  %i.l = add nuw nsw i32 %2, 1                    ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 7 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %2, 0
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21   ; 3 uses
  %i.p = icmp ult i32 %i.o, 165
  %i.q = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.r = sub nuw nsw i32 189, %i.q
  %i.s = select i1 %i.p, i32 %i.o, i32 %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !39
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !39
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21   ; 3 uses
  %i.aa = icmp ult i32 %i.z, 165
  %i.ab = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ac = sub nuw nsw i32 189, %i.ab
  %i.ad = select i1 %i.aa, i32 %i.z, i32 %i.ac
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !39
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader49.preheader.i.unr-lcssa, label %bb.d, !llvm.loop !41

.preheader49.preheader.i.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader49.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader49.preheader.i.unr-lcssa, %bb.c
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.1, %.preheader49.preheader.i.unr-lcssa ]
  %lcmp.mod100 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21 ; 3 uses
  %i.ak = icmp ult i32 %i.aj, 165
  %i.al = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aj, i1 true)
  %i.am = sub nuw nsw i32 189, %i.al
  %i.an = select i1 %i.ak, i32 %i.aj, i32 %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = add i16 %i.aq, 1
  store i16 %i.ar, ptr %i.ap, align 2, !tbaa !39
  br label %.preheader49.preheader.i

.preheader49.preheader.i:                         ; preds = %.preheader49.preheader.i.unr-lcssa, %.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4860
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !39
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %.preheader49.i.3, %.preheader49.preheader.i
  %i.as = phi i16 [ %.pre.i, %.preheader49.preheader.i ], [ %i.bj, %.preheader49.i.3 ]
  %indvars.iv55.i = phi i64 [ 191, %.preheader49.preheader.i ], [ %indvars.iv.next56.i.3, %.preheader49.i.3 ] ; 4 uses
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = add i16 %i.av, %i.as                    ; 3 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !39
  %i.ax = getelementptr i8, ptr %i.at, i64 -2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !42
  %i.ay = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv55.i ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !39
  %i.bb = add i16 %i.ba, %i.aw                    ; 3 uses
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !39
  %i.bc = getelementptr i8, ptr %i.ay, i64 -6
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !42
  %indvars.iv.next56.i.2 = add nsw i64 %indvars.iv55.i, -3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.2 ; 3 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !39
  %i.bf = add i16 %i.be, %i.bb                    ; 3 uses
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !42
  %.not46.i.2 = icmp eq i64 %indvars.iv.next56.i.2, 0
  br i1 %.not46.i.2, label %.preheader48.i.preheader, label %.preheader49.i.3

.preheader49.i.3:                                 ; preds = %.preheader49.i
  %indvars.iv.next56.i.3 = add nsw i64 %indvars.iv55.i, -4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next56.i.3 ; 3 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !39
  %i.bj = add i16 %i.bi, %i.bf                    ; 3 uses
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !42
  br label %.preheader49.i

.preheader48.i.preheader:                         ; preds = %.preheader49.i
  %xtraiter101 = and i64 %wide.trip.count.i, 1
  %i.bl = icmp eq i32 %2, 0
  br i1 %i.bl, label %.preheader48.i.epil.preheader, label %.preheader48.i.preheader.new

.preheader48.i.preheader.new:                     ; preds = %.preheader48.i.preheader
  %unroll_iter104 = and i64 %wide.trip.count.i, 510
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %.preheader48.i, %.preheader48.i.preheader.new
  %indvars.iv58.i = phi i64 [ 0, %.preheader48.i.preheader.new ], [ %indvars.iv.next59.i.1, %.preheader48.i ] ; 4 uses
  %niter105 = phi i64 [ 0, %.preheader48.i.preheader.new ], [ %niter105.next.1, %.preheader48.i ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21 ; 4 uses
  %i.bo = icmp ult i32 %i.bn, 165
  %i.bp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bn, i1 true)
  %i.bq = sub nuw nsw i32 189, %i.bp
  %i.br = select i1 %i.bo, i32 %i.bn, i32 %i.bq
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 6 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !42 ; 2 uses
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !42
  %i.bx = zext i16 %i.bv to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bx ; 2 uses
  store i32 %i.bn, ptr %i.by, align 4, !tbaa !43
  %i.bz = trunc i64 %indvars.iv58.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store i8 %i.bz, ptr %i.ca, align 2, !tbaa !45
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next59.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !21 ; 4 uses
  %i.cd = icmp ult i32 %i.cc, 165
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cc, i1 true)
  %i.cf = sub nuw nsw i32 189, %i.ce
  %i.cg = select i1 %i.cd, i32 %i.cc, i32 %i.cf
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !42 ; 2 uses
  %i.cl = add i16 %i.ck, 1
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !42
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cm ; 2 uses
  store i32 %i.cc, ptr %i.cn, align 4, !tbaa !43
  %i.co = trunc i64 %indvars.iv.next59.i to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  store i8 %i.co, ptr %i.cp, align 2, !tbaa !45
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %.preheader48.i, !llvm.loop !46

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader48.i
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.preheader.i.preheader, label %.preheader48.i.epil.preheader

.preheader48.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %.preheader48.i.preheader ], [ %indvars.iv.next59.i.1, %.preheader.i.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i32 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !21 ; 4 uses
  %i.cs = icmp ult i32 %i.cr, 165
  %i.ct = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.cu = sub nuw nsw i32 189, %i.ct
  %i.cv = select i1 %i.cs, i32 %i.cr, i32 %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 6 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !42 ; 2 uses
  %i.da = add i16 %i.cz, 1
  store i16 %i.da, ptr %i.cy, align 2, !tbaa !42
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.db ; 2 uses
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !43
  %i.dd = trunc i64 %indvars.iv58.i.epil.init to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !45
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.i.preheader.unr-lcssa, %.preheader48.i.epil.preheader
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %bb.f ], [ 165, %.preheader.i.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv63.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !42
  %i.di = zext i16 %i.dh to i32
  %i.dj = load i16, ptr %i.df, align 2, !tbaa !39 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.di, %i.dk                ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.dn = zext i16 %i.dj to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dn
  %i.dp = add nsw i32 %i.dl, -1
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %i.do, i32 noundef 0, i32 noundef %i.dp)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader.i
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, 191
  br i1 %exitcond66.not.i, label %HUF_sort.exit, label %.preheader.i, !llvm.loop !47

HUF_sort.exit:                                    ; preds = %bb.f
  %i.dq = zext nneg i32 %2 to i64
  %i.dr = add nuw nsw i32 %2, 254
  %i.ds = add nuw nsw i32 %2, 255
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %HUF_sort.exit
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ %i.ds, %HUF_sort.exit ] ; 3 uses
  %indvars.iv120.i = phi i32 [ %indvars.iv.next121.i, %bb.g ], [ %i.l, %HUF_sort.exit ] ; 3 uses
  %indvars.iv112.i = phi i32 [ %indvars.iv.next113.i, %bb.g ], [ %i.dr, %HUF_sort.exit ] ; 2 uses
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i25, %bb.g ], [ %i.dq, %HUF_sort.exit ] ; 11 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !43 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i24, -1
  %indvars.iv.next113.i = add i32 %indvars.iv112.i, -1
  %indvars.iv.next121.i = add nsw i32 %indvars.iv120.i, -1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br i1 %i.dv, label %bb.g, label %bb.h, !llvm.loop !48

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv.i24 ; 4 uses
  %i.dx = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.dx, i32 11, i32 %3 ; 15 uses
  %i.dy = trunc nsw i64 %indvars.iv.i24 to i32    ; 3 uses
  %i.dz = add nsw i32 %i.dy, 255                  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dw, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !43
  %i.ec = add i32 %i.eb, %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 2056
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !43
  %i.ee = getelementptr i8, ptr %i.dw, i64 -4
  store i16 256, ptr %i.ee, align 4, !tbaa !49
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i16 256, ptr %i.ef, align 4, !tbaa !49
  %i.eg = add nsw i32 %i.dy, -2
  %.not88.i = icmp slt i64 %indvars.iv.i24, 2
  br i1 %.not88.i, label %.preheader.i28, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.eh = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 257) ; 2 uses
  %narrow = add nuw i32 %i.eh, 1
  %i.ei = zext i32 %narrow to i64
  %i.ej = zext nneg i32 %i.eh to i64              ; 2 uses
  %xtraiter106 = and i64 %i.ej, 7                 ; 3 uses
  %i.ek = icmp slt i32 %indvars.iv, 264
  br i1 %i.ek, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.el = and i64 %i.ej, 2147483640
  %i.em = add nsw i64 %i.el, -264
  br label %.lr.ph.i
end_hunk_0
