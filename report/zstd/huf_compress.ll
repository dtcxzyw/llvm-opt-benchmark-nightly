Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@HUF_readCTable:bb.a
  br i1 %niter.ncmp.1, label %.preheader54.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv75
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv75
  %i.bb = sub i8 %i.y, %i.az
  %.not53 = icmp eq i8 %i.az, 0
  %narrow = select i1 %.not53, i8 0, i8 %i.bb
  %i.bc = zext i8 %narrow to i64
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !16
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.lr.ph62.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph62.preheader:                               ; preds = %scalar.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  %xtraiter97 = and i64 %wide.trip.count78, 1
  %i.bd = icmp eq i32 %i.o, 1
  br i1 %i.bd, label %.lr.ph62.epil.preheader, label %.lr.ph62.preheader.new

.lr.ph62.preheader.new:                           ; preds = %.lr.ph62.preheader
  %unroll_iter100 = and i64 %wide.trip.count78, 4294967294
  br label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph62, %.lr.ph62.preheader.new
  %indvars.iv80 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %indvars.iv.next81.1, %.lr.ph62 ] ; 3 uses
  %niter101 = phi i64 [ 0, %.lr.ph62.preheader.new ], [ %niter101.next.1, %.lr.ph62 ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bg = and i64 %i.bf, 255
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !34
  %i.bj = add i16 %i.bi, 1
  store i16 %i.bj, ptr %i.bh, align 2, !tbaa !34
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bn = and i64 %i.bm, 255
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !34
  %i.bq = add i16 %i.bp, 1
  store i16 %i.bq, ptr %i.bo, align 2, !tbaa !34
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter101.next.1 = add i64 %niter101, 2         ; 2 uses
  %niter101.ncmp.1 = icmp eq i64 %niter101.next.1, %unroll_iter100
  br i1 %niter101.ncmp.1, label %._crit_edge63.loopexit.unr-lcssa, label %.lr.ph62, !llvm.loop !36

._crit_edge63.loopexit.unr-lcssa:                 ; preds = %.lr.ph62
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %._crit_edge63, label %.lr.ph62.epil.preheader

.lr.ph62.epil.preheader:                          ; preds = %._crit_edge63.loopexit.unr-lcssa, %.lr.ph62.preheader
  %indvars.iv80.epil.init = phi i64 [ 0, %.lr.ph62.preheader ], [ %indvars.iv.next81.1, %._crit_edge63.loopexit.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod99)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv80.epil.init
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bt = and i64 %i.bs, 255
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bt ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !34
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !34
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.lr.ph62.epil.preheader, %._crit_edge63.loopexit.unr-lcssa, %._crit_edge.thread
  %i.bx = zext nneg i32 %i.m to i64               ; 3 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i16 0, ptr %i.bz, align 2, !tbaa !34
  br i1 %.not5155, label %.preheader, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %._crit_edge63
  %xtraiter102 = and i32 %i.m, 1
  %i.ca = icmp eq i32 %i.m, 1
  br i1 %i.ca, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter105 = and i32 %i.m, 14
  br label %.lr.ph68

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
  %6 = zext i32 %narrow to i64
  %i.ei = zext nneg i32 %i.eh to i64              ; 2 uses
  %xtraiter106 = and i64 %i.ei, 7                 ; 3 uses
  %7 = icmp slt i32 %indvars.iv, 264
  br i1 %7, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %i.ej = and i64 %i.ei, 2147483640
  %i.ek = add nsw i64 %i.ej, -264
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv106.i = phi i64 [ 257, %.lr.ph.preheader.i.new ], [ %indvars.iv.next107.i.7, %.lr.ph.i ] ; 9 uses
  %niter110 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter110.next.7, %.lr.ph.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  store i32 1073741824, ptr %i.el, align 4, !tbaa !43
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 1073741824, ptr %i.en, align 4, !tbaa !43
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i32 1073741824, ptr %i.ep, align 4, !tbaa !43
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i32 1073741824, ptr %i.er, align 4, !tbaa !43
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i32 1073741824, ptr %i.et, align 4, !tbaa !43
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i32 1073741824, ptr %i.ev, align 4, !tbaa !43
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  store i32 1073741824, ptr %i.ex, align 4, !tbaa !43
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  store i32 1073741824, ptr %i.ez, align 4, !tbaa !43
  %indvars.iv.next107.i.7 = add nuw nsw i64 %indvars.iv106.i, 8 ; 2 uses
  %niter110.next.7 = add i64 %niter110, 8
  %niter110.ncmp.7 = icmp eq i64 %niter110, %i.ek
  br i1 %niter110.ncmp.7, label %.lr.ph95.preheader.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !50

.lr.ph95.preheader.i.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph95.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph95.preheader.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv106.i.epil.init = phi i64 [ 257, %.lr.ph.preheader.i ], [ %indvars.iv.next107.i.7, %.lr.ph95.preheader.i.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter106, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv106.i.epil = phi i64 [ %indvars.iv106.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next107.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv106.i.epil
  store i32 1073741824, ptr %i.fa, align 4, !tbaa !43
  %indvars.iv.next107.i.epil = add nuw nsw i64 %indvars.iv106.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.lr.ph95.preheader.i, label %.lr.ph.i.epil, !llvm.loop !51

.lr.ph95.preheader.i:                             ; preds = %.lr.ph.i.epil, %.lr.ph95.preheader.i.unr-lcssa
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !43
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %.lr.ph95.i, %.lr.ph95.preheader.i
  %indvars.iv109.i = phi i64 [ 257, %.lr.ph95.preheader.i ], [ %indvars.iv.next110.i, %.lr.ph95.i ] ; 3 uses
  %.07492.i = phi i32 [ 256, %.lr.ph95.preheader.i ], [ %.276.i, %.lr.ph95.i ] ; 3 uses
  %.07791.i = phi i32 [ %i.eg, %.lr.ph95.preheader.i ], [ %.279.i, %.lr.ph95.i ] ; 3 uses
  %i.fb = sext i32 %.07791.i to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !43
  %i.fe = sext i32 %.07492.i to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !43
  %i.fh = icmp ult i32 %i.fd, %i.fg               ; 3 uses
  %i.fi = sext i1 %i.fh to i32
  %.178.i = add nsw i32 %.07791.i, %i.fi          ; 3 uses
  %not..i = xor i1 %i.fh, true
  %i.fj = zext i1 %not..i to i32
  %.175.i = add nsw i32 %.07492.i, %i.fj          ; 3 uses
  %i.fk = select i1 %i.fh, i32 %.07791.i, i32 %.07492.i
  %i.fl = sext i32 %.178.i to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !43
  %i.fo = sext i32 %.175.i to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !43
  %i.fr = icmp ult i32 %i.fn, %i.fq               ; 3 uses
  %i.fs = sext i1 %i.fr to i32
  %.279.i = add nsw i32 %.178.i, %i.fs
  %not.85.i = xor i1 %i.fr, true
  %i.ft = zext i1 %not.85.i to i32
  %.276.i = add nsw i32 %.175.i, %i.ft
  %i.fu = select i1 %i.fr, i32 %.178.i, i32 %.175.i
  %i.fv = sext i32 %i.fk to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !43
  %i.fy = sext i32 %i.fu to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !43
  %i.gb = add i32 %i.ga, %i.fx
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv109.i
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !43
  %i.gd = trunc i64 %indvars.iv109.i to i16       ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store i16 %i.gd, ptr %i.ge, align 4, !tbaa !49
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i16 %i.gd, ptr %i.gf, align 4, !tbaa !49
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next110.i, %6
  br i1 %exitcond62.not, label %.lr.ph99.preheader.i, label %.lr.ph95.i, !llvm.loop !52

.lr.ph99.preheader.i:                             ; preds = %.lr.ph95.i
  %8 = sext i32 %i.dz to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 7
  store i8 0, ptr %i.gh, align 1, !tbaa !53
  %i.gi = zext i32 %indvars.iv112.i to i64
  br label %.lr.ph99.i

.preheader.i28:                                   ; preds = %bb.h
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !43
  %.pre.i29 = sext i32 %i.dz to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre.i29
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 7
  store i8 0, ptr %i.gk, align 1, !tbaa !53
  %.not84100.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not84100.i, label %HUF_buildTree.exit, label %.lr.ph102.preheader.i

.lr.ph102.preheader.i:                            ; preds = %.lr.ph99.i, %.preheader.i28
  %wide.trip.count.i26 = zext i32 %indvars.iv120.i to i64 ; 2 uses
  %xtraiter111 = and i64 %wide.trip.count.i26, 3  ; 3 uses
  %i.gl = add i32 %indvars.iv120.i, -1
  %i.gm = icmp ult i32 %i.gl, 3
  br i1 %i.gm, label %.lr.ph102.i.epil.preheader, label %.lr.ph102.preheader.i.new

.lr.ph102.preheader.i.new:                        ; preds = %.lr.ph102.preheader.i
  %unroll_iter115 = and i64 %wide.trip.count.i26, 4294967292
  br label %.lr.ph102.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i
  %indvars.iv114.i = phi i64 [ %i.gi, %.lr.ph99.preheader.i ], [ %indvars.iv.next115.i, %.lr.ph99.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv114.i ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gp = load i16, ptr %i.go, align 4, !tbaa !49
  %i.gq = zext i16 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 7
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !53
  %i.gu = add i8 %i.gt, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 7
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !53
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1
  %i.gw = icmp samesign ugt i64 %indvars.iv114.i, 256
  br i1 %i.gw, label %.lr.ph99.i, label %.lr.ph102.preheader.i, !llvm.loop !54

.lr.ph102.i:                                      ; preds = %.lr.ph102.i, %.lr.ph102.preheader.i.new
  %indvars.iv117.i = phi i64 [ 0, %.lr.ph102.preheader.i.new ], [ %indvars.iv.next118.i.3, %.lr.ph102.i ] ; 5 uses
  %niter116 = phi i64 [ 0, %.lr.ph102.preheader.i.new ], [ %niter116.next.3, %.lr.ph102.i ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i16, ptr %i.gy, align 4, !tbaa !49
  %i.ha = zext i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 7
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !53
  %i.he = add i8 %i.hd, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 7
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !53
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !49
  %i.hj = zext i16 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 7
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !53
  %i.hn = add i8 %i.hm, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 15
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !53
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  %i.hr = load i16, ptr %i.hq, align 4, !tbaa !49
  %i.hs = zext i16 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 7
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !53
  %i.hw = add i8 %i.hv, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 23
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !53
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 28
  %i.ia = load i16, ptr %i.hz, align 4, !tbaa !49
  %i.ib = zext i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 7
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !53
  %i.if = add i8 %i.ie, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 31
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !53
  %indvars.iv.next118.i.3 = add nuw nsw i64 %indvars.iv117.i, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %HUF_buildTree.exit.loopexit.unr-lcssa, label %.lr.ph102.i, !llvm.loop !55

HUF_buildTree.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph102.i
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %HUF_buildTree.exit, label %.lr.ph102.i.epil.preheader

.lr.ph102.i.epil.preheader:                       ; preds = %HUF_buildTree.exit.loopexit.unr-lcssa, %.lr.ph102.preheader.i
  %indvars.iv117.i.epil.init = phi i64 [ 0, %.lr.ph102.preheader.i ], [ %indvars.iv.next118.i.3, %HUF_buildTree.exit.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph102.i.epil

.lr.ph102.i.epil:                                 ; preds = %.lr.ph102.i.epil, %.lr.ph102.i.epil.preheader
  %indvars.iv117.i.epil = phi i64 [ %indvars.iv117.i.epil.init, %.lr.ph102.i.epil.preheader ], [ %indvars.iv.next118.i.epil, %.lr.ph102.i.epil ] ; 2 uses
  %epil.iter112 = phi i64 [ 0, %.lr.ph102.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph102.i.epil ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv117.i.epil ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i16, ptr %i.ii, align 4, !tbaa !49
  %i.ik = zext i16 %i.ij to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 7
  %i.in = load i8, ptr %i.im, align 1, !tbaa !53
  %i.io = add i8 %i.in, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 7
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !53
  %indvars.iv.next118.i.epil = add nuw nsw i64 %indvars.iv117.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %HUF_buildTree.exit, label %.lr.ph102.i.epil, !llvm.loop !56

HUF_buildTree.exit:                               ; preds = %HUF_buildTree.exit.loopexit.unr-lcssa, %.lr.ph102.i.epil, %.preheader.i28
  %i.iq = and i64 %indvars.iv.i24, 4294967295
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 7
  %i.it = load i8, ptr %i.is, align 1, !tbaa !53
  %i.iu = zext i8 %i.it to i32                    ; 4 uses
  %.not.i30 = icmp ult i32 %spec.store.select, %i.iu
  br i1 %.not.i30, label %bb.i, label %HUF_setMaxHeight.exit

bb.i:                                             ; preds = %HUF_buildTree.exit
  %i.iv = sub nuw nsw i32 %i.iu, %spec.store.select ; 2 uses
  %i.iw = shl nuw i32 1, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.dw, i64 7 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !53
  %i.iz = zext i8 %i.iy to i32                    ; 2 uses
  %i.ja = icmp samesign ult i32 %spec.store.select, %i.iz
  br i1 %i.ja, label %.lr.ph.i34, label %.preheader113.i

.lr.ph.i34:                                       ; preds = %bb.i
  %i.jb = trunc nuw i32 %spec.store.select to i8
  br label %bb.j

.preheader113.loopexit.i:                         ; preds = %bb.j
  %i.jc = trunc nsw i64 %indvars.iv.next.i36 to i32
  br label %.preheader113.i

.preheader113.i:                                  ; preds = %.preheader113.loopexit.i, %bb.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next.i36, %.preheader113.loopexit.i ], [ %indvars.iv.i24, %bb.i ]
  %.090.lcssa.i = phi i32 [ %i.jh, %.preheader113.loopexit.i ], [ 0, %bb.i ]
  %.088.lcssa.i = phi i32 [ %i.jc, %.preheader113.loopexit.i ], [ %i.dy, %bb.i ]
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ %indvars.iv.i24, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.j ] ; 2 uses
  %i.jd = phi i32 [ %i.iz, %.lr.ph.i34 ], [ %i.jl, %bb.j ]
  %i.je = phi ptr [ %i.ix, %.lr.ph.i34 ], [ %i.jj, %bb.j ]
  %.090115.i = phi i32 [ 0, %.lr.ph.i34 ], [ %i.jh, %bb.j ]
  %i.jf = sub nsw i32 %i.iu, %i.jd
  %.neg108.i = shl nsw i32 -1, %i.jf
  %i.jg = add i32 %.090115.i, %i.iw
  %i.jh = add i32 %i.jg, %.neg108.i               ; 2 uses
  store i8 %i.jb, ptr %i.je, align 1, !tbaa !53
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i35, -1 ; 3 uses
  %i.ji = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv.i35
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 7 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !53
  %i.jl = zext i8 %i.jk to i32                    ; 2 uses
  %i.jm = icmp samesign ult i32 %spec.store.select, %i.jl
  br i1 %i.jm, label %bb.j, label %.preheader113.loopexit.i, !llvm.loop !57

bb.k:                                             ; preds = %bb.k, %.preheader113.i
  %indvars.iv155.i = phi i32 [ %indvars.iv.next156.i, %bb.k ], [ %.088.lcssa.i, %.preheader113.i ] ; 4 uses
  %indvars.iv152.i = phi i64 [ %indvars.iv.next153.i, %bb.k ], [ %.pre-phi.i, %.preheader113.i ] ; 4 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv152.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 7
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !53
  %i.jq = zext i8 %i.jp to i32
  %i.jr = icmp eq i32 %spec.store.select, %i.jq
  %indvars.iv.next153.i = add nsw i64 %indvars.iv152.i, -1
  %indvars.iv.next156.i = add i32 %indvars.iv155.i, -1
  br i1 %i.jr, label %bb.k, label %bb.l, !llvm.loop !58

bb.l:                                             ; preds = %bb.k
  %i.js = ashr i32 %.090.lcssa.i, %i.iv           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, i8 -16, i64 56, i1 false)
  %i.jt = icmp sgt i64 %indvars.iv152.i, -1
  br i1 %i.jt, label %.lr.ph120.preheader.i, label %.preheader112.i

.lr.ph120.preheader.i:                            ; preds = %bb.l
  %i.ju = zext i32 %indvars.iv155.i to i64        ; 4 uses
  %i.jv = and i64 %i.ju, 1
  %lcmp.mod118.not.not = icmp eq i64 %i.jv, 0
  br i1 %lcmp.mod118.not.not, label %.lr.ph120.i.prol, label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol:                                 ; preds = %.lr.ph120.preheader.i
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 7
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !53
  %i.jz = zext i8 %i.jy to i32                    ; 3 uses
  %.not107.i.prol = icmp ugt i32 %spec.store.select, %i.jz
  br i1 %.not107.i.prol, label %bb.m, label %.lr.ph120.i.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %.lr.ph120.i.prol
  %i.ka = sub nuw nsw i32 %spec.store.select, %i.jz
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kb
  store i32 %indvars.iv155.i, ptr %i.kc, align 4, !tbaa !21
  br label %.lr.ph120.i.prol.loopexit.unr-lcssa

.lr.ph120.i.prol.loopexit.unr-lcssa:              ; preds = %bb.m, %.lr.ph120.i.prol
  %.187.i.prol = phi i32 [ %spec.store.select, %.lr.ph120.i.prol ], [ %i.jz, %bb.m ]
  %indvars.iv.next158.i.prol = add nsw i64 %i.ju, -1
  br label %.lr.ph120.i.prol.loopexit

.lr.ph120.i.prol.loopexit:                        ; preds = %.lr.ph120.i.prol.loopexit.unr-lcssa, %.lr.ph120.preheader.i
  %indvars.iv157.i.unr = phi i64 [ %i.ju, %.lr.ph120.preheader.i ], [ %indvars.iv.next158.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %.086118.i.unr = phi i32 [ %spec.store.select, %.lr.ph120.preheader.i ], [ %.187.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %i.kd = icmp eq i32 %indvars.iv155.i, 0
  br i1 %i.kd, label %.preheader112.i, label %.lr.ph120.i

.preheader112.i:                                  ; preds = %.lr.ph120.i.prol.loopexit, %bb.p, %bb.l
  %i.ke = icmp sgt i32 %i.js, 0
  br i1 %i.ke, label %.lr.ph134.i, label %.preheader111.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.prol.loopexit, %bb.p
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i.1, %bb.p ], [ %indvars.iv157.i.unr, %.lr.ph120.i.prol.loopexit ] ; 6 uses
  %.086118.i = phi i32 [ %.187.i.1, %bb.p ], [ %.086118.i.unr, %.lr.ph120.i.prol.loopexit ] ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv157.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 7
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !53
  %i.ki = zext i8 %i.kh to i32                    ; 3 uses
  %.not107.i = icmp ugt i32 %.086118.i, %i.ki
  br i1 %.not107.i, label %bb.n, label %.lr.ph120.i.1

bb.n:                                             ; preds = %.lr.ph120.i
  %i.kj = sub nsw i32 %spec.store.select, %i.ki
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kk
  %i.km = trunc nuw nsw i64 %indvars.iv157.i to i32
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !21
  br label %.lr.ph120.i.1

.lr.ph120.i.1:                                    ; preds = %bb.n, %.lr.ph120.i
  %.187.i = phi i32 [ %.086118.i, %.lr.ph120.i ], [ %i.ki, %bb.n ] ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv157.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 7
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !53
  %i.kq = zext i8 %i.kp to i32                    ; 3 uses
  %.not107.i.1 = icmp ugt i32 %.187.i, %i.kq
  br i1 %.not107.i.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph120.i.1
  %i.kr = sub nsw i32 %spec.store.select, %i.kq
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks
  %i.ku = trunc i64 %indvars.iv157.i to i32
  %i.kv = add i32 %i.ku, -1
  store i32 %i.kv, ptr %i.kt, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph120.i.1
  %.187.i.1 = phi i32 [ %.187.i, %.lr.ph120.i.1 ], [ %i.kq, %bb.o ]
  %indvars.iv.next158.i.1 = add nsw i64 %indvars.iv157.i, -2
  %i.kw = icmp sgt i64 %indvars.iv157.i, 1
  br i1 %i.kw, label %.lr.ph120.i, label %.preheader112.i, !llvm.loop !59

.preheader111.i:                                  ; preds = %bb.u, %.preheader112.i
  %.191.lcssa.i = phi i32 [ %i.js, %.preheader112.i ], [ %i.lv, %bb.u ] ; 2 uses
  %i.kx = icmp slt i32 %.191.lcssa.i, 0
  br i1 %i.kx, label %.lr.ph137.lr.ph.i, label %.outer._crit_edge.i

.lr.ph137.lr.ph.i:                                ; preds = %.preheader111.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.promoted143.i = load i32, ptr %i.ky, align 4
  br label %.lr.ph137.i

.lr.ph134.i:                                      ; preds = %.preheader112.i, %bb.u
  %.191133.i = phi i32 [ %i.lv, %bb.u ], [ %i.js, %.preheader112.i ] ; 2 uses
  %i.kz = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.191133.i, i1 true) ; 2 uses
  %.not145.i = icmp eq i32 %i.kz, 31
  br i1 %.not145.i, label %.lr.ph129.i.preheader, label %.lr.ph122.preheader.i

.lr.ph122.preheader.i:                            ; preds = %.lr.ph134.i
  %narrow.i = sub nuw nsw i32 32, %i.kz
  %i.la = zext nneg i32 %narrow.i to i64
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %select.unfold.i, %.lr.ph122.preheader.i
  %indvars.iv160.i = phi i64 [ %i.la, %.lr.ph122.preheader.i ], [ %indvars.iv.next161.i, %select.unfold.i ] ; 5 uses
  %i.lb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv160.i ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !21 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lb, i64 -4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !21 ; 2 uses
  %i.lf = icmp eq i32 %i.lc, -252645136
  br i1 %i.lf, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph122.i
  %i.lg = icmp eq i32 %i.le, -252645136
  br i1 %i.lg, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lh = zext i32 %i.lc to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !43
  %i.lk = zext i32 %i.le to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !43
  %i.ln = shl i32 %i.lm, 1
  %.not105.i = icmp ugt i32 %i.lj, %i.ln
  br i1 %.not105.i, label %select.unfold.i, label %.thread.i

select.unfold.i:                                  ; preds = %bb.r, %.lr.ph122.i
  %indvars.iv.next161.i = add nsw i64 %indvars.iv160.i, -1 ; 2 uses
  %9 = icmp ugt i64 %indvars.iv.next161.i, 1
  br i1 %9, label %.lr.ph122.i, label %.lr.ph129.i.preheader, !llvm.loop !60

.thread.i:                                        ; preds = %bb.r, %bb.q
  %i.lo = trunc nuw nsw i64 %indvars.iv160.i to i32
  %i.lp = icmp ult i64 %indvars.iv160.i, 13
  br i1 %i.lp, label %.lr.ph129.i.preheader, label %.critedge.i

.lr.ph129.i.preheader:                            ; preds = %select.unfold.i, %.thread.i, %.lr.ph134.i
  %indvars.iv163.i.ph = phi i64 [ %indvars.iv160.i, %.thread.i ], [ 1, %.lr.ph134.i ], [ 1, %select.unfold.i ]
  br label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.s
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.s ], [ %indvars.iv163.i.ph, %.lr.ph129.i.preheader ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv163.i
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !21
  %i.ls = icmp eq i32 %i.lr, -252645136
  br i1 %i.ls, label %bb.s, label %.critedge.loopexit.split.loop.exit188.i

bb.s:                                             ; preds = %.lr.ph129.i
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next164.i, 13
  br i1 %exitcond.not.i33, label %.critedge.i, label %.lr.ph129.i, !llvm.loop !61

.critedge.loopexit.split.loop.exit188.i:          ; preds = %.lr.ph129.i
  %i.lt = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.critedge.loopexit.split.loop.exit188.i, %.thread.i
  %.1.lcssa.i = phi i32 [ %i.lo, %.thread.i ], [ %i.lt, %.critedge.loopexit.split.loop.exit188.i ], [ 13, %bb.s ] ; 3 uses
  %i.lu = add nsw i32 %.1.lcssa.i, -1             ; 2 uses
  %.neg.i = shl nsw i32 -1, %i.lu
  %i.lv = add nsw i32 %.neg.i, %.191133.i         ; 3 uses
  %i.lw = zext nneg i32 %.1.lcssa.i to i64
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lw ; 2 uses
  %10 = load i32, ptr %i.lx, align 4, !tbaa !21   ; 4 uses
  %i.ly = zext i32 %10 to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 7 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !53
  %i.mc = add i8 %i.mb, 1
  store i8 %i.mc, ptr %i.ma, align 1, !tbaa !53
  %i.md = zext nneg i32 %i.lu to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !21 ; 2 uses
  %i.mg = icmp eq i32 %i.mf, -252645136
  %spec.store.select110.i = select i1 %i.mg, i32 %10, i32 %i.mf
  store i32 %spec.store.select110.i, ptr %i.me, align 4
  %i.mh = icmp eq i32 %10, 0
  br i1 %i.mh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.mi = add i32 %10, -1                         ; 2 uses
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 7
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !53
  %i.mn = zext i8 %i.mm to i32
  %i.mo = sub nsw i32 %spec.store.select, %.1.lcssa.i
  %.not106.i = icmp eq i32 %i.mo, %i.mn
  %spec.store.select.i = select i1 %.not106.i, i32 %i.mi, i32 -252645136
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge.i
  %storemerge.i32 = phi i32 [ %spec.store.select.i, %bb.t ], [ -252645136, %.critedge.i ]
  store i32 %storemerge.i32, ptr %i.lx, align 4
  %i.mp = icmp sgt i32 %i.lv, 0
  br i1 %i.mp, label %.lr.ph134.i, label %.preheader111.i, !llvm.loop !62

bb.v:                                             ; preds = %bb.w, %.lr.ph137.i
  %i.mq = phi i32 [ %i.ng, %.lr.ph137.i ], [ %i.nh, %bb.w ] ; 2 uses
  %.292136.i = phi i32 [ %.292.ph141.i, %.lr.ph137.i ], [ %i.nn, %bb.w ] ; 4 uses
  %i.mr = icmp eq i32 %i.mq, -252645136
  br i1 %i.mr, label %.preheader.i31, label %bb.w

.preheader.i31:                                   ; preds = %bb.v, %.preheader.i31
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i, %.preheader.i31 ], [ %.2.ph142.i, %bb.v ] ; 4 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv167.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 7
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !53
  %i.mv = zext i8 %i.mu to i32
  %i.mw = icmp eq i32 %spec.store.select, %i.mv
  %indvars.iv.next168.i = add nsw i64 %indvars.iv167.i, -1
  br i1 %i.mw, label %.preheader.i31, label %.outer.i, !llvm.loop !63

.outer.i:                                         ; preds = %.preheader.i31
  %i.mx = trunc nsw i64 %indvars.iv167.i to i32
  %i.my = add nsw i32 %i.mx, 1                    ; 2 uses
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 7 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !53
  %i.nd = add i8 %i.nc, -1
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !53
  %i.ne = add nuw nsw i32 %.292136.i, 1
  %i.nf = icmp slt i32 %.292136.i, -1
  br i1 %i.nf, label %.lr.ph137.i, label %.outer._crit_edge.i, !llvm.loop !64

.lr.ph137.i:                                      ; preds = %.outer.i, %.lr.ph137.lr.ph.i
  %i.ng = phi i32 [ %.promoted143.i, %.lr.ph137.lr.ph.i ], [ %i.my, %.outer.i ]
  %.2.ph142.i = phi i64 [ %indvars.iv152.i, %.lr.ph137.lr.ph.i ], [ %indvars.iv167.i, %.outer.i ]
  %.292.ph141.i = phi i32 [ %.191.lcssa.i, %.lr.ph137.lr.ph.i ], [ %i.ne, %.outer.i ]
  br label %bb.v

bb.w:                                             ; preds = %bb.v
  %i.nh = add i32 %i.mq, 1                        ; 2 uses
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 7 ; 2 uses
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !53
  %i.nm = add i8 %i.nl, -1
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !53
  %i.nn = add nuw nsw i32 %.292136.i, 1
  %exitcond166.not.i = icmp eq i32 %.292136.i, -1
  br i1 %exitcond166.not.i, label %.outer._crit_edge.i, label %bb.v, !llvm.loop !64

.outer._crit_edge.i:                              ; preds = %.outer.i, %bb.w, %.preheader111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %HUF_setMaxHeight.exit

HUF_setMaxHeight.exit:                            ; preds = %HUF_buildTree.exit, %.outer._crit_edge.i
  %.095.i = phi i32 [ %spec.store.select, %.outer._crit_edge.i ], [ %i.iu, %HUF_buildTree.exit ] ; 6 uses
  %i.no = icmp samesign ugt i32 %.095.i, 12
  br i1 %i.no, label %bb.z, label %bb.x

bb.x:                                             ; preds = %HUF_setMaxHeight.exit
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  %.not38.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not38.i, label %.preheader37.i, label %.lr.ph.preheader.i37

.lr.ph.preheader.i37:                             ; preds = %bb.x
  %i.nq = add nuw i64 %indvars.iv.i24, 1          ; 3 uses
  %wide.trip.count.i38 = and i64 %i.nq, 4294967295
  %i.nr = add nsw i64 %wide.trip.count.i38, -1
  %xtraiter119 = and i64 %i.nq, 3                 ; 3 uses
  %i.ns = icmp ult i64 %i.nr, 3
  br i1 %i.ns, label %.lr.ph.i39.epil.preheader, label %.lr.ph.preheader.i37.new

.lr.ph.preheader.i37.new:                         ; preds = %.lr.ph.preheader.i37
  %unroll_iter123 = and i64 %i.nq, 4294967292
  br label %.lr.ph.i39

.preheader37.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i39
  %lcmp.mod121.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %.preheader37.i, label %.lr.ph.i39.epil.preheader

.lr.ph.i39.epil.preheader:                        ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.preheader.i37
  %indvars.iv.i40.epil.init = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %indvars.iv.next.i41.3, %.preheader37.i.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i39.epil

.lr.ph.i39.epil:                                  ; preds = %.lr.ph.i39.epil, %.lr.ph.i39.epil.preheader
  %indvars.iv.i40.epil = phi i64 [ %indvars.iv.i40.epil.init, %.lr.ph.i39.epil.preheader ], [ %indvars.iv.next.i41.epil, %.lr.ph.i39.epil ] ; 2 uses
  %epil.iter120 = phi i64 [ 0, %.lr.ph.i39.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i39.epil ]
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40.epil
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 7
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !53
  %i.nw = zext i8 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.nw ; 2 uses
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !34
  %i.nz = add i16 %i.ny, 1
  store i16 %i.nz, ptr %i.nx, align 2, !tbaa !34
  %indvars.iv.next.i41.epil = add nuw nsw i64 %indvars.iv.i40.epil, 1
  %epil.iter120.next = add i64 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i64 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %.preheader37.i, label %.lr.ph.i39.epil, !llvm.loop !65

.preheader37.i:                                   ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.i39.epil, %bb.x
  %.not.i43 = icmp eq i32 %.095.i, 0
  br i1 %.not.i43, label %.preheader36.i.preheader, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader37.i
  %i.oa = zext nneg i32 %.095.i to i64            ; 4 uses
  %xtraiter125 = and i64 %i.oa, 3                 ; 3 uses
  %i.ob = icmp ult i32 %.095.i, 4
  br i1 %i.ob, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.preheader.i.new

.lr.ph42.preheader.i.new:                         ; preds = %.lr.ph42.preheader.i
  %unroll_iter129 = and i64 %i.oa, 12
  br label %.lr.ph42.i

.lr.ph.i39:                                       ; preds = %.lr.ph.i39, %.lr.ph.preheader.i37.new
  %indvars.iv.i40 = phi i64 [ 0, %.lr.ph.preheader.i37.new ], [ %indvars.iv.next.i41.3, %.lr.ph.i39 ] ; 5 uses
  %niter124 = phi i64 [ 0, %.lr.ph.preheader.i37.new ], [ %niter124.next.3, %.lr.ph.i39 ]
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 7
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !53
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.of ; 2 uses
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !34
  %i.oi = add i16 %i.oh, 1
  store i16 %i.oi, ptr %i.og, align 2, !tbaa !34
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 15
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !53
  %i.om = zext i8 %i.ol to i64
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.om ; 2 uses
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !34
  %i.op = add i16 %i.oo, 1
  store i16 %i.op, ptr %i.on, align 2, !tbaa !34
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 23
  %i.os = load i8, ptr %i.or, align 1, !tbaa !53
  %i.ot = zext i8 %i.os to i64
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ot ; 2 uses
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !34
  %i.ow = add i16 %i.ov, 1
  store i16 %i.ow, ptr %i.ou, align 2, !tbaa !34
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i40
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 31
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !53
  %i.pa = zext i8 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pa ; 2 uses
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !34
  %i.pd = add i16 %i.pc, 1
  store i16 %i.pd, ptr %i.pb, align 2, !tbaa !34
  %indvars.iv.next.i41.3 = add nuw nsw i64 %indvars.iv.i40, 4 ; 2 uses
  %niter124.next.3 = add i64 %niter124, 4         ; 2 uses
  %niter124.ncmp.3 = icmp eq i64 %niter124.next.3, %unroll_iter123
  br i1 %niter124.ncmp.3, label %.preheader37.i.loopexit.unr-lcssa, label %.lr.ph.i39, !llvm.loop !66

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.preheader.i.new
  %indvars.iv46.i = phi i64 [ %i.oa, %.lr.ph42.preheader.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph42.i ] ; 6 uses
  %.041.i = phi i16 [ 0, %.lr.ph42.preheader.i.new ], [ %i.px, %.lr.ph42.i ] ; 2 uses
  %niter130 = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %niter130.next.3, %.lr.ph42.i ]
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i16 %.041.i, ptr %i.pe, align 2, !tbaa !34
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !34
  %i.ph = add i16 %i.pg, %.041.i
  %i.pi = lshr i16 %i.ph, 1                       ; 2 uses
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 2 uses
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i16 %i.pi, ptr %i.pj, align 2, !tbaa !34
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !34
  %i.pm = add i16 %i.pl, %i.pi
  %i.pn = lshr i16 %i.pm, 1                       ; 2 uses
  %indvars.iv.next47.i.1 = add nsw i64 %indvars.iv46.i, -2 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !34
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.1
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !34
  %i.pr = add i16 %i.pq, %i.pn
  %i.ps = lshr i16 %i.pr, 1                       ; 2 uses
  %indvars.iv.next47.i.2 = add nsw i64 %indvars.iv46.i, -3 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i16 %i.ps, ptr %i.pt, align 2, !tbaa !34
end_hunk_0
begin_hunk_1_@HUF_compress1X_usingCTable_internal_bmi2:bb.a
  %i.bmz = getelementptr i8, ptr %i.bmy, i64 -9
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !8
  %i.bnb = zext i8 %i.bna to i64
  %i.bnc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bnb
  %i.bnd = load i64, ptr %i.bnc, align 8, !tbaa !16 ; 3 uses
  %i.bne = and i64 %i.bnd, 255
  %i.bnf = lshr i64 %i.bmw, %i.bne
  %i.bng = or i64 %i.bnf, %i.bnd                  ; 2 uses
  %i.bnh = add i64 %i.bnd, %i.bmx                 ; 2 uses
  %i.bni = and i64 %i.bnh, 255                    ; 2 uses
  %i.bnj = sub nsw i64 64, %i.bni
  %i.bnk = lshr i64 %i.bng, %i.bnj
  store i64 %i.bnk, ptr %.sroa.458.6721, align 1, !tbaa !16
  %i.bnl = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bnm = getelementptr i8, ptr %i.bnl, i64 -10
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !8
  %i.bno = zext i8 %i.bnn to i64
  %i.bnp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bno
  %i.bnq = load i64, ptr %i.bnp, align 8, !tbaa !16 ; 2 uses
  %i.bnr = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bns = getelementptr i8, ptr %i.bnr, i64 -11
  %i.bnt = load i8, ptr %i.bns, align 1, !tbaa !8
  %i.bnu = zext i8 %i.bnt to i64
  %i.bnv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bnu
  %i.bnw = load i64, ptr %i.bnv, align 8, !tbaa !16 ; 3 uses
  %i.bnx = and i64 %i.bnw, 255
  %i.bny = lshr i64 %i.bnq, %i.bnx
  %i.bnz = or i64 %i.bny, %i.bnw
  %i.boa = add i64 %i.bnw, %i.bnq
  %i.bob = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.boc = getelementptr i8, ptr %i.bob, i64 -12
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !8
  %i.boe = zext i8 %i.bod to i64
  %i.bof = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.boe
  %i.bog = load i64, ptr %i.bof, align 8, !tbaa !16 ; 3 uses
  %i.boh = and i64 %i.bog, 255
  %i.boi = lshr i64 %i.bnz, %i.boh
  %i.boj = or i64 %i.boi, %i.bog
  %i.bok = add i64 %i.bog, %i.boa
  %i.bol = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bom = getelementptr i8, ptr %i.bol, i64 -13
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !8
  %i.boo = zext i8 %i.bon to i64
  %i.bop = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.boo
  %i.boq = load i64, ptr %i.bop, align 8, !tbaa !16 ; 3 uses
  %i.bor = and i64 %i.boq, 255
  %i.bos = lshr i64 %i.boj, %i.bor
  %i.bot = or i64 %i.bos, %i.boq
  %i.bou = add i64 %i.boq, %i.bok
  %i.bov = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bow = getelementptr i8, ptr %i.bov, i64 -14
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !8
  %i.boy = zext i8 %i.box to i64
  %i.boz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.boy
  %i.bpa = load i64, ptr %i.boz, align 8, !tbaa !16 ; 3 uses
  %i.bpb = and i64 %i.bpa, 255
  %i.bpc = lshr i64 %i.bot, %i.bpb
  %i.bpd = or i64 %i.bpc, %i.bpa
  %i.bpe = add i64 %i.bpa, %i.bou
  %i.bpf = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bpg = getelementptr i8, ptr %i.bpf, i64 -15
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !8
  %i.bpi = zext i8 %i.bph to i64
  %i.bpj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bpi
  %i.bpk = load i64, ptr %i.bpj, align 8, !tbaa !16 ; 3 uses
  %i.bpl = and i64 %i.bpk, 255
  %i.bpm = lshr i64 %i.bpd, %i.bpl
  %i.bpn = or i64 %i.bpm, %i.bpk
  %i.bpo = add i64 %i.bpk, %i.bpe
  %i.bpp = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bpq = getelementptr i8, ptr %i.bpp, i64 -16
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !8
  %i.bps = zext i8 %i.bpr to i64
  %i.bpt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bps
  %i.bpu = load i64, ptr %i.bpt, align 8, !tbaa !16 ; 3 uses
  %i.bpv = and i64 %i.bpu, 255
  %i.bpw = lshr i64 %i.bpn, %i.bpv
  %i.bpx = or i64 %i.bpw, %i.bpu
  %i.bpy = add i64 %i.bpu, %i.bpo
  %i.bpz = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 -17
  %i.bqb = load i8, ptr %i.bqa, align 1, !tbaa !8
  %i.bqc = zext i8 %i.bqb to i64
  %i.bqd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bqc
  %i.bqe = load i64, ptr %i.bqd, align 8, !tbaa !16 ; 3 uses
  %i.bqf = and i64 %i.bqe, 255
  %i.bqg = lshr i64 %i.bpx, %i.bqf
  %i.bqh = or i64 %i.bqg, %i.bqe
  %i.bqi = add i64 %i.bqe, %i.bpy
  %i.bqj = lshr i64 %i.bni, 3
  %i.bqk = and i64 %i.bnh, 7
  %i.bql = getelementptr inbounds nuw i8, ptr %.sroa.458.6721, i64 %i.bqj ; 2 uses
  %i.bqm = getelementptr i8, ptr %2, i64 %indvars.iv919
  %i.bqn = getelementptr i8, ptr %i.bqm, i64 -18
  %i.bqo = load i8, ptr %i.bqn, align 1, !tbaa !8
  %i.bqp = zext i8 %i.bqo to i64
  %i.bqq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bqp
  %i.bqr = load i64, ptr %i.bqq, align 8, !tbaa !16 ; 3 uses
  %i.bqs = and i64 %i.bqr, 255
  %i.bqt = lshr i64 %i.bqh, %i.bqs
  %i.bqu = add i64 %i.bqr, %i.bqi                 ; 2 uses
  %i.bqv = and i64 %i.bqu, 255
  %i.bqw = lshr i64 %i.bng, %i.bqv
  %i.bqx = or i64 %i.bqt, %i.bqw
  %i.bqy = or i64 %i.bqx, %i.bqr                  ; 3 uses
  %i.bqz = add i64 %i.bqu, %i.bqk                 ; 2 uses
  %i.bra = and i64 %i.bqz, 255                    ; 2 uses
  %i.brb = lshr i64 %i.bra, 3
  %i.brc = sub nsw i64 64, %i.bra
  %i.brd = lshr i64 %i.bqy, %i.brc
  %i.bre = and i64 %i.bqz, 7                      ; 2 uses
  store i64 %i.brd, ptr %i.bql, align 1, !tbaa !16
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bql, i64 %i.brb ; 2 uses
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, -18
  %i.brg = icmp samesign ugt i64 %indvars.iv919, 18
  br i1 %i.brg, label %.preheader583, label %HUF_compress1X_usingCTable_internal_body_loop.exit, !llvm.loop !77

HUF_compress1X_usingCTable_internal_body_loop.exit: ; preds = %.preheader603, %.preheader599, %.preheader595, %.preheader591, %.preheader587, %.preheader583, %.preheader, %bb.z, %bb.v, %bb.r, %bb.n, %bb.j, %bb.ad, %HUF_flushBits.exit68
  %.sroa.0.0 = phi i64 [ %i.bqy, %.preheader583 ], [ %i.pd, %.preheader587 ], [ %i.xn, %.preheader591 ], [ %i.ahe, %.preheader595 ], [ %i.arz, %.preheader599 ], [ %i.gp, %.preheader ], [ %.sroa.0.3, %HUF_flushBits.exit68 ], [ %.sroa.0.9, %bb.ad ], [ %.sroa.0.15, %bb.j ], [ %.sroa.0.21, %bb.n ], [ %.sroa.0.27, %bb.r ], [ %.sroa.0.33, %bb.v ], [ %.sroa.0.39, %bb.z ], [ %i.bdy, %.preheader603 ]
  %.sroa.264.0 = phi i64 [ %i.bre, %.preheader583 ], [ %i.pj, %.preheader587 ], [ %i.xt, %.preheader591 ], [ %i.ahk, %.preheader595 ], [ %i.asf, %.preheader599 ], [ %i.gv, %.preheader ], [ %.sroa.264.3, %HUF_flushBits.exit68 ], [ %.sroa.264.9, %bb.ad ], [ %.sroa.264.15, %bb.j ], [ %.sroa.264.21, %bb.n ], [ %.sroa.264.27, %bb.r ], [ %.sroa.264.33, %bb.v ], [ %.sroa.264.39, %bb.z ], [ %i.bee, %.preheader603 ]
  %.sroa.458.0 = phi ptr [ %i.brf, %.preheader583 ], [ %i.pk, %.preheader587 ], [ %i.xu, %.preheader591 ], [ %i.ahl, %.preheader595 ], [ %i.asg, %.preheader599 ], [ %spec.select580, %.preheader ], [ %.sroa.458.2, %HUF_flushBits.exit68 ], [ %.sroa.458.5, %bb.ad ], [ %.sroa.458.8, %bb.j ], [ %.sroa.458.11, %bb.n ], [ %.sroa.458.14, %bb.r ], [ %.sroa.458.17, %bb.v ], [ %.sroa.458.20, %bb.z ], [ %i.bef, %.preheader603 ] ; 2 uses
  %i.brh = lshr i64 %.sroa.0.0, 1
  %i.bri = or disjoint i64 %i.brh, -9223372036854775808
  %i.brj = add nuw nsw i64 %.sroa.264.0, -9223372036854775807 ; 2 uses
  %i.brk = and i64 %i.brj, 255                    ; 2 uses
  %i.brl = lshr i64 %i.brk, 3
  %i.brm = sub nuw nsw i64 64, %i.brk
  %i.brn = lshr i64 %i.bri, %i.brm
  store i64 %i.brn, ptr %.sroa.458.0, align 1, !tbaa !16
  %i.bro = getelementptr inbounds nuw i8, ptr %.sroa.458.0, i64 %i.brl ; 2 uses
  %i.brp = icmp ugt ptr %i.bro, %i.e
  %spec.store.select.i = select i1 %i.brp, ptr %i.e, ptr %i.bro ; 2 uses
  %.not.i69 = icmp ult ptr %spec.store.select.i, %i.e
  br i1 %.not.i69, label %bb.ae, label %HUF_compress1X_usingCTable_internal_body.exit

bb.ae:                                            ; preds = %HUF_compress1X_usingCTable_internal_body_loop.exit
  %i.brq = and i64 %i.brj, 7
  %i.brr = ptrtoint ptr %spec.store.select.i to i64
  %i.brs = ptrtoint ptr %0 to i64
  %i.brt = icmp ne i64 %i.brq, 0
  %i.bru = zext i1 %i.brt to i64
  %i.brv = sub i64 %i.bru, %i.brs
  %i.brw = add i64 %i.brv, %i.brr
  br label %HUF_compress1X_usingCTable_internal_body.exit

HUF_compress1X_usingCTable_internal_body.exit:    ; preds = %bb.ae, %HUF_compress1X_usingCTable_internal_body_loop.exit, %bb.a, %bb.b
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.brw, %bb.ae ], [ 0, %HUF_compress1X_usingCTable_internal_body_loop.exit ]
  ret i64 %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef range(i64 1, 131073) %4, i32 noundef range(i32 0, 2) %5, ptr noundef %6, i32 noundef %7) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @HUF_compress1X_usingCTable_internal(ptr noundef %1, i64 noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call fastcc i64 @HUF_compress4X_usingCTable_internal(ptr noundef %1, i64 noundef %i.d, ptr noundef %3, i64 noundef %4, ptr noundef %6, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 4 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add nsw i64 %4, -1
  %.not27 = icmp ult i64 %i.m, %i.n
  %. = select i1 %.not27, i64 %i.m, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ 0, %bb.e ], [ %i.g, %bb.d ], [ %., %bb.f ]
  ret i64 %.0
}

declare i64 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"branch_weights", i32 4, i32 12}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !12, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!5, !5, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !10, !11, !12}
!28 = !{!"branch_weights", i32 8, i32 8}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11, !12}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10, !12, !11}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !6, i64 0}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10}
!39 = !{!40, !35, i64 0}
!40 = !{!"", !35, i64 0, !35, i64 2}
!41 = distinct !{!41, !10}
!42 = !{!40, !35, i64 2}
!43 = !{!44, !5, i64 0}
!44 = !{!"nodeElt_s", !5, i64 0, !35, i64 4, !6, i64 6, !6, i64 7}
!45 = !{!44, !6, i64 6}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = !{!44, !35, i64 4}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !10}
!53 = !{!44, !6, i64 7}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10, !11, !12}
!73 = distinct !{!73, !10, !12, !11}
!74 = distinct !{!74, !10, !11, !12}
!75 = distinct !{!75, !10, !12, !11}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10, !11, !12}
!79 = distinct !{!79, !10, !12, !11}
!80 = distinct !{!80, !10, !11, !12}
!81 = distinct !{!81, !10, !12, !11}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10, !11, !12}
!84 = distinct !{!84, !10, !12, !11}
!85 = distinct !{!85, !10, !11, !12}
!86 = distinct !{!86, !10, !12, !11}
!87 = distinct !{!87, !10, !11, !12}
!88 = distinct !{!88, !10, !12, !11}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
end_hunk_1
