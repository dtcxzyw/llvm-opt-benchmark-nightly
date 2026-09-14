Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/apprentice?download=true
inline.NumInlined: 57
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@apprentice_load:bb.a

.preheader.i105:                                  ; preds = %.preheader.i105, %.preheader.i105.preheader.new
  %indvars.iv73.i = phi i64 [ 0, %.preheader.i105.preheader.new ], [ %indvars.iv.next74.i.1, %.preheader.i105 ] ; 3 uses
  %.170.i = phi i32 [ 0, %.preheader.i105.preheader.new ], [ %i.iq, %.preheader.i105 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i105.preheader.new ], [ %niter.next.1, %.preheader.i105 ]
  %i.hw = zext i32 %.170.i to i64
  %i.hx = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %i.hw
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !69
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !72
  %i.ic = zext i32 %i.ib to i64
  %i.id = mul nuw nsw i64 %i.ic, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr align 8 %i.hz, i64 %i.id, i1 false)
  %i.ie = load i32, ptr %i.ia, align 8, !tbaa !72
  %i.if = add i32 %i.ie, %.170.i                  ; 2 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !69
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !72
  %i.in = zext i32 %i.im to i64
  %i.io = mul nuw nsw i64 %i.in, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 8 %i.ik, i64 %i.io, i1 false)
  %i.ip = load i32, ptr %i.il, align 8, !tbaa !72
  %i.iq = add i32 %i.ip, %i.if                    ; 3 uses
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i105, !llvm.loop !107

.unr-lcssa:                                       ; preds = %.preheader.i105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.at, label %.preheader.i105.epil.preheader

.preheader.i105.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader.i105.preheader
  %indvars.iv73.i.epil.init = phi i64 [ 0, %.preheader.i105.preheader ], [ %indvars.iv.next74.i.1, %.unr-lcssa ]
  %.170.i.epil.init = phi i32 [ 0, %.preheader.i105.preheader ], [ %i.iq, %.unr-lcssa ] ; 2 uses
  %lcmp.mod282 = trunc i32 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.ir = zext i32 %.170.i.epil.init to i64
  %i.is = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %i.ir
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i.epil.init ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !69
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !72
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.ix, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.is, ptr align 8 %i.iu, i64 %i.iy, i1 false)
  %i.iz = load i32, ptr %i.iv, align 8, !tbaa !72
  %i.ja = add i32 %i.iz, %.170.i.epil.init
  br label %bb.at

bb.at:                                            ; preds = %.unr-lcssa, %.preheader.i105.epil.preheader
  %.lcssa268 = phi i32 [ %i.iq, %.unr-lcssa ], [ %i.ja, %.preheader.i105.epil.preheader ]
  store i32 %.lcssa268, ptr %i.hp, align 4, !tbaa !32
  br label %set_last_default.exit.thread

bb.au:                                            ; preds = %bb.as
  call void @file_oomem(ptr noundef %0, i64 noundef %i.hs) #28
  br label %.loopexit

set_last_default.exit.thread:                     ; preds = %._crit_edge158, %.thread219, %bb.at, %bb.ar
  br i1 %i.bl, label %.preheader124, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %set_last_default.exit.thread, %.thread118, %bb.p, %bb.q, %bb.au
  %.not99 = phi i1 [ false, %bb.au ], [ %i.bg, %.thread118 ], [ false, %bb.p ], [ false, %bb.q ], [ true, %set_last_default.exit.thread ]
  %i.jb = load ptr, ptr %4, align 16, !tbaa !67   ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !66 ; 2 uses
  %i.je = icmp eq ptr %i.jb, null
  br i1 %i.je, label %magic_entry_free.exit, label %.preheader.i106

.preheader.i106:                                  ; preds = %.loopexit
  %.not.i107 = icmp eq i32 %i.jd, 0
  br i1 %.not.i107, label %._crit_edge.i114, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %.preheader.i106
  %wide.trip.count.i109 = zext i32 %i.jd to i64
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %.lr.ph.i110, %.lr.ph.preheader.i108
  %indvars.iv.i111 = phi i64 [ 0, %.lr.ph.preheader.i108 ], [ %indvars.iv.next.i112, %.lr.ph.i110 ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.i111
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !69
  call void @_efree(ptr noundef %i.jg) #28
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i109
  br i1 %exitcond.not.i113, label %._crit_edge.i114, label %.lr.ph.i110, !llvm.loop !109

._crit_edge.i114:                                 ; preds = %.lr.ph.i110, %.preheader.i106
  call void @_efree(ptr noundef nonnull %i.jb) #28
  br label %magic_entry_free.exit

magic_entry_free.exit:                            ; preds = %.loopexit, %._crit_edge.i114
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ji = load ptr, ptr %i.jh, align 16, !tbaa !67 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !66 ; 2 uses
  %i.jl = icmp eq ptr %i.ji, null
  br i1 %i.jl, label %magic_entry_free.exit.1, label %.preheader.i106.1

.preheader.i106.1:                                ; preds = %magic_entry_free.exit
  %.not.i107.1 = icmp eq i32 %i.jk, 0
  br i1 %.not.i107.1, label %._crit_edge.i114.1, label %.lr.ph.preheader.i108.1

.lr.ph.preheader.i108.1:                          ; preds = %.preheader.i106.1
  %wide.trip.count.i109.1 = zext i32 %i.jk to i64
  br label %.lr.ph.i110.1

.lr.ph.i110.1:                                    ; preds = %.lr.ph.i110.1, %.lr.ph.preheader.i108.1
  %indvars.iv.i111.1 = phi i64 [ 0, %.lr.ph.preheader.i108.1 ], [ %indvars.iv.next.i112.1, %.lr.ph.i110.1 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %indvars.iv.i111.1
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !69
  call void @_efree(ptr noundef %i.jn) #28
  %indvars.iv.next.i112.1 = add nuw nsw i64 %indvars.iv.i111.1, 1 ; 2 uses
  %exitcond.not.i113.1 = icmp eq i64 %indvars.iv.next.i112.1, %wide.trip.count.i109.1
  br i1 %exitcond.not.i113.1, label %._crit_edge.i114.1, label %.lr.ph.i110.1, !llvm.loop !109

._crit_edge.i114.1:                               ; preds = %.lr.ph.i110.1, %.preheader.i106.1
  call void @_efree(ptr noundef nonnull %i.ji) #28
  br label %magic_entry_free.exit.1

magic_entry_free.exit.1:                          ; preds = %._crit_edge.i114.1, %magic_entry_free.exit
  br i1 %.not99, label %bb.az, label %bb.av

bb.av:                                            ; preds = %magic_entry_free.exit.1
  %i.jo = load ptr, ptr %i.f, align 8, !tbaa !29  ; 3 uses
  %.not.i115 = icmp eq ptr %i.jo, @php_magic_database
  br i1 %.not.i115, label %apprentice_unmap.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %.preheader.i116, label %.loopexit.sink.split.i

.preheader.i116:                                  ; preds = %bb.aw
  %i.jq = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !30 ; 2 uses
  %.not13.i = icmp eq ptr %i.jr, null
  br i1 %.not13.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.preheader.i116
  call void @_efree(ptr noundef nonnull %i.jr) #28
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.preheader.i116
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !30 ; 2 uses
  %.not13.1.i = icmp eq ptr %i.jt, null
  br i1 %.not13.1.i, label %apprentice_unmap.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.ay, %bb.aw
  %.sink.i = phi ptr [ %i.jt, %bb.ay ], [ %i.jo, %bb.aw ]
  call void @_efree(ptr noundef nonnull %.sink.i) #28
  br label %apprentice_unmap.exit

apprentice_unmap.exit:                            ; preds = %bb.av, %bb.ay, %.loopexit.sink.split.i
  call void @_efree(ptr noundef nonnull %i.f) #28
  br label %bb.az

bb.az:                                            ; preds = %magic_entry_free.exit.1, %apprentice_unmap.exit, %bb.b
  %.084 = phi ptr [ null, %bb.b ], [ null, %apprentice_unmap.exit ], [ %i.f, %magic_entry_free.exit.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %.084
}

declare hidden void @file_oomem(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @apprentice_list(ptr nofree noundef readonly captures(address) %0, i32 noundef range(i32 32, 65) %1) unnamed_addr #0 {
bb.a:
  %.0.in71 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.072 = load ptr, ptr %.0.in71, align 8, !tbaa !26 ; 2 uses
  %.not73 = icmp eq ptr %.072, %0
  br i1 %.not73, label %._crit_edge, label %.preheader59

.loopexit:                                        ; preds = %.critedge, %.preheader59
  %.0.in = getelementptr inbounds nuw i8, ptr %.074, i64 24
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !26  ; 2 uses
  %.not = icmp eq ptr %.0, %0
  br i1 %.not, label %._crit_edge, label %.preheader59, !llvm.loop !113

.preheader59:                                     ; preds = %bb.a, %.loopexit
  %.074 = phi ptr [ %.0, %.loopexit ], [ %.072, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.074, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not75 = icmp eq i64 %i.b, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader59, %.critedge
  %i.c = phi i64 [ %i.ax, %.critedge ], [ %i.b, %.preheader59 ] ; 5 uses
  %i.d = phi i64 [ %.pre-phi78, %.critedge ], [ 0, %.preheader59 ] ; 2 uses
  %.04769 = phi i32 [ %.pre-phi, %.critedge ], [ 0, %.preheader59 ] ; 6 uses
  %i.e = load ptr, ptr %.074, align 8, !tbaa !54  ; 5 uses
  %i.f = getelementptr inbounds nuw [432 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i8, ptr %i.g, align 2, !tbaa !62
  %i.i = zext i8 %i.h to i32
  %i.j = and i32 %1, %i.i
  %.not52 = icmp eq i32 %i.j, %1
  br i1 %.not52, label %.preheader, label %.preheader58

.preheader:                                       ; preds = %.lr.ph70
  %i.k = add i32 %.04769, 1                       ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = icmp ugt i64 %i.c, %i.l
  br i1 %i.m, label %.lr.ph, label %.critedge2

.preheader58:                                     ; preds = %.lr.ph70, %bb.b
  %.148 = phi i32 [ %i.n, %bb.b ], [ %.04769, %.lr.ph70 ]
  %i.n = add i32 %.148, 1                         ; 4 uses
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  %i.p = icmp ugt i64 %i.c, %i.o
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader58
  %i.q = getelementptr inbounds nuw [432 x i8], ptr %i.e, i64 %i.o
  %i.r = load i16, ptr %i.q, align 8, !tbaa !48
  %.not56 = icmp eq i16 %i.r, 0
  br i1 %.not56, label %.critedge, label %.preheader58, !llvm.loop !114

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %2 = phi i64 [ %i.aj, %bb.f ], [ %i.l, %.preheader ]
  %3 = phi i32 [ %i.ai, %bb.f ], [ %i.k, %.preheader ] ; 5 uses
  %.04462 = phi i32 [ %.1, %bb.f ], [ %.04769, %.preheader ] ; 4 uses
  %.04561 = phi i32 [ %.146, %bb.f ], [ %.04769, %.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [432 x i8], ptr %i.e, i64 %2 ; 3 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !48
  %.not53 = icmp eq i16 %i.t, 0
  br i1 %.not53, label %.lr.ph..critedge2.loopexit_crit_edge, label %.lr.ph111

.lr.ph..critedge2.loopexit_crit_edge:             ; preds = %.lr.ph
  %.pre82 = zext i32 %3 to i64
  br label %.critedge2

.lr.ph111:                                        ; preds = %.lr.ph
  %i.u = zext i32 %.04561 to i64
  %i.v = getelementptr inbounds nuw [432 x i8], ptr %i.e, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.x = load i8, ptr %i.w, align 8, !tbaa !43
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph111
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !43
  %.not54 = icmp eq i8 %i.aa, 0
  %spec.select = select i1 %.not54, i32 %.04561, i32 %3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph111
  %.146 = phi i32 [ %.04561, %.lr.ph111 ], [ %spec.select, %bb.c ] ; 2 uses
  %i.ab = zext i32 %.04462 to i64
  %i.ac = getelementptr inbounds nuw [432 x i8], ptr %i.e, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !43
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !43
  %.not55 = icmp eq i8 %i.ah, 0
  %spec.select57 = select i1 %.not55, i32 %.04462, i32 %3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %.04462, %bb.d ], [ %spec.select57, %bb.e ] ; 2 uses
  %i.ai = add i32 %3, 1                           ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp ugt i64 %i.c, %i.aj
  br i1 %i.ak, label %.lr.ph, label %.critedge2, !llvm.loop !115

.critedge2:                                       ; preds = %bb.f, %.lr.ph..critedge2.loopexit_crit_edge, %.preheader
  %.pre77.pre-phi.a = phi i64 [ %i.l, %.preheader ], [ %.pre82, %.lr.ph..critedge2.loopexit_crit_edge ], [ %i.aj, %bb.f ]
  %.pre76.pre-phi = phi i32 [ %i.k, %.preheader ], [ %3, %.lr.ph..critedge2.loopexit_crit_edge ], [ %i.ai, %bb.f ]
  %.045.lcssa = phi i32 [ %.04769, %.preheader ], [ %.04561, %.lr.ph..critedge2.loopexit_crit_edge ], [ %.146, %bb.f ]
  %.044.lcssa = phi i32 [ %.04769, %.preheader ], [ %.04462, %.lr.ph..critedge2.loopexit_crit_edge ], [ %.1, %bb.f ]
  %i.al = tail call i64 @file_magic_strength(ptr noundef nonnull %i.f, i64 poison)
  %i.am = load ptr, ptr %.074, align 8, !tbaa !54 ; 3 uses
  %i.an = getelementptr inbounds nuw [432 x i8], ptr %i.am, i64 %i.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51
  %i.aq = zext i32 %.045.lcssa to i64
  %i.ar = getelementptr inbounds nuw [432 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 160
  %i.at = zext i32 %.044.lcssa to i64
  %i.au = getelementptr inbounds nuw [432 x i8], ptr %i.am, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, i64 noundef %i.al, i32 noundef %i.ap, ptr noundef nonnull %i.as, ptr noundef nonnull %i.av) ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.preheader58, %.critedge2
  %.pre-phi78 = phi i64 [ %.pre77.pre-phi.a, %.critedge2 ], [ %i.o, %.preheader58 ], [ %i.o, %bb.b ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre76.pre-phi, %.critedge2 ], [ %i.n, %.preheader58 ], [ %i.n, %bb.b ]
  %i.ax = phi i64 [ %.pre, %.critedge2 ], [ %i.c, %.preheader58 ], [ %i.c, %bb.b ] ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, %.pre-phi78
  br i1 %i.ay, label %.lr.ph70, label %.loopexit, !llvm.loop !116

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @_php_stream_opendir(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_php_stream_readdir(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ap_php_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @_php_stream_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #14

declare noalias ptr @_estrndup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @cmpstrp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = load ptr, ptr %1, align 8, !tbaa !40
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #31
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc void @load_1(ptr noundef initializes((80, 88)) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 51 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca [8193 x i8], align 16             ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.magic_entry, align 8        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.h, align 8, !tbaa !33
  %i.i = tail call ptr @_php_stream_open_wrapper_ex(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 8, ptr noundef null, ptr noundef null) #28 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__errno_location() #30
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32   ; 2 uses
  %.not59 = icmp eq i32 %i.l, 2
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @file_error(ptr noundef nonnull %0, i32 noundef %i.l, ptr noundef nonnull @.str.16, ptr noundef %2) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load i32, ptr %3, align 4, !tbaa !32
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %3, align 4, !tbaa !32
  br label %bb.lj

bb.e:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i64 1, ptr %i.o, align 8, !tbaa !34
  %i.p = call ptr @_php_stream_get_line(ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, i64 noundef 8192, ptr noundef nonnull %i.g) #28 ; 2 uses
  %.not220 = icmp eq ptr %i.p, null
  br i1 %.not220, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = icmp eq i32 %1, 2
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %1, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.ld
  %i.z = phi ptr [ %i.p, %.lr.ph ], [ %i.akl, %bb.ld ] ; 10 uses
  %.047221 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.ld ] ; 3 uses
  %i.aa = load i16, ptr %i.q, align 4, !tbaa !35
  %i.ab = load i16, ptr %i.r, align 4, !tbaa !37
  %.not55 = icmp ult i16 %i.aa, %i.ab
  br i1 %.not55, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !63  ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.ld, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.z, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -1     ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %i.ah = icmp eq i8 %i.ag, 10
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = add i32 %.047221, 1
  store i8 0, ptr %i.af, align 1, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %i.ai, %bb.i ], [ %.047221, %bb.h ] ; 9 uses
  %i.aj = load i8, ptr %i.z, align 1, !tbaa !43
  switch i8 %i.aj, label %addentry.exit.preheader [
    i8 0, label %bb.ld
    i8 35, label %bb.ld
    i8 33, label %bb.k
  ]

addentry.exit.preheader:                          ; preds = %bb.k, %bb.j
  br label %addentry.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !43
  %i.am = icmp eq i8 %i.al, 58
  br i1 %i.am, label %.preheader124, label %addentry.exit.preheader

.preheader124:                                    ; preds = %bb.k
  %i.an = load i64, ptr %i.g, align 8, !tbaa !63  ; 2 uses
  %i.ao = add i64 %i.an, -2                       ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 10 uses
  %i.aq = icmp ugt i64 %i.ao, 4
  br i1 %i.aq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.preheader124
  %i.ar = load i32, ptr %i.ap, align 1
  %i.as = icmp ne i32 1701669229, %i.ar
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not466 = icmp eq i64 %i.ao, 5
  br i1 %.not466, label %.thread377.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i32, ptr %i.ap, align 1
  %i.aw = xor i32 1819308129, %i.av
  %i.ax = getelementptr i8, ptr %i.ap, i64 4
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = xor i32 101, %i.az
  %i.bb = or i32 %i.aw, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.r, label %.thread377

bb.o:                                             ; preds = %.preheader124
  %i.bf = icmp eq i64 %i.ao, 4
  br i1 %i.bf, label %.thread379, label %.thread378

.thread377:                                       ; preds = %bb.n
  %i.bg = load i16, ptr %i.ap, align 1
  %i.bh = xor i16 30821, %i.bg
  %i.bi = getelementptr i8, ptr %i.ap, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
end_hunk_0
