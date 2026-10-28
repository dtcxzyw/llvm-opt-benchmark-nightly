Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_earwax?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@filter_frame:bb.a
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.i
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !30
  %i.er = tail call i16 @llvm.sadd.sat.i16(i16 %i.eo, i16 %i.eq)
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.i
  store i16 %i.er, ptr %i.es, align 2, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv.next.i
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !30
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !30
  %i.ex = tail call i16 @llvm.sadd.sat.i16(i16 %i.eu, i16 %i.ew)
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next.i
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !30
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %iter.check102, label %.lr.ph.i, !llvm.loop !36

iter.check102:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.ez = load ptr, ptr %.val35.val, align 8, !tbaa !51 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val35.val36, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !51 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !51 ; 6 uses
  %min.iters.check84 = icmp ult i32 %i.dm, 4
  br i1 %min.iters.check84, label %.lr.ph.i49.preheader, label %vector.memcheck85

vector.memcheck85:                                ; preds = %iter.check102
  %i.fe = ptrtoaddr ptr %i.fd to i64              ; 2 uses
  %i.ff = ptrtoaddr ptr %i.fb to i64
  %i.fg = ptrtoaddr ptr %i.ez to i64
  %i.fh = sub i64 %i.fg, %i.fe
  %diff.check86 = icmp ugt i64 %i.fh, -32
  %i.fi = sub i64 %i.ff, %i.fe
  %diff.check87 = icmp ugt i64 %i.fi, -32
  %conflict.rdx88 = or i1 %diff.check86, %diff.check87
  br i1 %conflict.rdx88, label %.lr.ph.i49.preheader, label %vector.main.loop.iter.check89

vector.main.loop.iter.check89:                    ; preds = %vector.memcheck85
  %min.iters.check90 = icmp ult i32 %i.dm, 16
  br i1 %min.iters.check90, label %vec.epilog.ph106, label %vector.ph91

vector.ph91:                                      ; preds = %vector.main.loop.iter.check89
  %i.fj = and i64 %wide.trip.count.i, 12
  %n.vec92 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.ph91, %vector.body93
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next99, %vector.body93 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %index94 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load95 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !30
  %wide.load96 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !30
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %index94 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load97 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !30
  %wide.load98 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !30
  %i.fo = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %wide.load95, <8 x i16> %wide.load97)
  %i.fp = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %wide.load96, <8 x i16> %wide.load98)
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %index94 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <8 x i16> %i.fo, ptr %i.fq, align 2, !tbaa !30
  store <8 x i16> %i.fp, ptr %i.fr, align 2, !tbaa !30
  %index.next99 = add nuw i64 %index94, 16        ; 2 uses
  %i.fs = icmp eq i64 %index.next99, %n.vec92
  br i1 %i.fs, label %middle.block100, label %vector.body93, !llvm.loop !37

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %n.vec92, %wide.trip.count.i
  br i1 %cmp.n101, label %mix.exit53, label %vec.epilog.iter.check103

vec.epilog.iter.check103:                         ; preds = %middle.block100
  %min.epilog.iters.check105 = icmp eq i64 %i.fj, 0
  br i1 %min.epilog.iters.check105, label %.lr.ph.i49.preheader, label %vec.epilog.ph106, !prof !52

vec.epilog.ph106:                                 ; preds = %vector.main.loop.iter.check89, %vec.epilog.iter.check103
  %vec.epilog.resume.val107 = phi i64 [ %n.vec92, %vec.epilog.iter.check103 ], [ 0, %vector.main.loop.iter.check89 ]
  %n.vec108 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph106
  %index110 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph106 ], [ %index.next113, %vec.epilog.vector.body109 ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %index110
  %wide.load111 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !30
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %index110
  %wide.load112 = load <4 x i16>, ptr %i.fu, align 2, !tbaa !30
  %i.fv = tail call <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16> %wide.load111, <4 x i16> %wide.load112)
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %index110
  store <4 x i16> %i.fv, ptr %i.fw, align 2, !tbaa !30
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next113, %n.vec108
  br i1 %i.fx, label %vec.epilog.middle.block114, label %vec.epilog.vector.body109, !llvm.loop !38

vec.epilog.middle.block114:                       ; preds = %vec.epilog.vector.body109
  %cmp.n115 = icmp eq i64 %n.vec108, %wide.trip.count.i
  br i1 %cmp.n115, label %mix.exit53, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %iter.check102, %vector.memcheck85, %vec.epilog.iter.check103, %vec.epilog.middle.block114
  %indvars.iv.i50.ph = phi i64 [ 0, %iter.check102 ], [ 0, %vector.memcheck85 ], [ %n.vec92, %vec.epilog.iter.check103 ], [ %n.vec108, %vec.epilog.middle.block114 ] ; 6 uses
  %xtraiter117 = and i64 %wide.trip.count.i, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv.i50.ph
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !30
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv.i50.ph
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !30
  %i.gc = tail call i16 @llvm.sadd.sat.i16(i16 %i.fz, i16 %i.gb)
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.i50.ph
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !30
  %indvars.iv.next.i51.prol = or disjoint i64 %indvars.iv.i50.ph, 1
  br label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader
  %indvars.iv.i50.unr = phi i64 [ %indvars.iv.i50.ph, %.lr.ph.i49.preheader ], [ %indvars.iv.next.i51.prol, %.lr.ph.i49.prol ]
  %i.ge = add nsw i64 %wide.trip.count.i, -1
  %i.gf = icmp eq i64 %indvars.iv.i50.ph, %i.ge
  br i1 %i.gf, label %mix.exit53, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51.1, %.lr.ph.i49 ], [ %indvars.iv.i50.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv.i50
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !30
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv.i50
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !30
  %i.gk = tail call i16 @llvm.sadd.sat.i16(i16 %i.gh, i16 %i.gj)
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.i50
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !30
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv.next.i51
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !30
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv.next.i51
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !30
  %i.gq = tail call i16 @llvm.sadd.sat.i16(i16 %i.gn, i16 %i.gp)
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.next.i51
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !30
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %exitcond.not.i52.1 = icmp eq i64 %indvars.iv.next.i51.1, %wide.trip.count.i
  br i1 %exitcond.not.i52.1, label %mix.exit53, label %.lr.ph.i49, !llvm.loop !39

mix.exit53:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %middle.block100, %vec.epilog.middle.block114, %convolve.exit46
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  %i.gs = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef nonnull %i.l) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %mix.exit53, %bb.h
  %.1 = phi i32 [ %i.gs, %mix.exit53 ], [ -12, %bb.h ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <8 x i16> <i16 4, i16 4, i16 -1, i16 3, i16 -2, i16 -5, i16 9, i16 6>, ptr %i.d, align 2, !tbaa !30
  store <8 x i16> <i16 -6, i16 -11, i16 -5, i16 3, i16 5, i16 0, i16 1, i16 3>, ptr %i.e, align 2, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <8 x i16> <i16 -4, i16 -5, i16 -2, i16 -7, i16 6, i16 30, i16 12, i16 -11>, ptr %i.f, align 2, !tbaa !30
  store <8 x i16> <i16 -1, i16 -3, i16 -5, i16 1, i16 -7, i16 -29, i16 -3, i16 4>, ptr %i.g, align 2, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <8 x i16> <i16 -3, i16 -20, i16 2, i16 1, i16 -14, i16 15, i16 6, i16 15>, ptr %i.h, align 2, !tbaa !30
  store <8 x i16> <i16 7, i16 23, i16 0, i16 -6, i16 -5, i16 -18, i16 7, i16 -10>, ptr %i.i, align 2, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <8 x i16> <i16 -14, i16 -7, i16 -4, i16 6, i16 6, i16 0, i16 0, i16 4>, ptr %i.j, align 2, !tbaa !30
  store <8 x i16> <i16 22, i16 -2, i16 9, i16 -12, i16 -6, i16 -11, i16 -5, i16 0>, ptr %i.k, align 2, !tbaa !30
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc ptr @scalarproduct(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(ret: address, provenance) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 50
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.ai = xor i64 %i.b, -1
  %i.aj = add i64 %i.ai, %i.c                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 14
  br i1 %min.iters.check, label %.preheader.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.am = and i64 %i.aj, -2                       ; 2 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 2      ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 64
  %i.ar = getelementptr i8, ptr %2, i64 64
  %bound0 = icmp ult ptr %3, %i.aq
  %bound1 = icmp ult ptr %0, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  %bound028 = icmp ult ptr %3, %i.ar
  %bound129 = icmp ult ptr %2, %i.ao
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx = or i1 %found.conflict, %found.conflict30
  br i1 %conflict.rdx, label %.preheader.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.as = shl i64 %n.vec, 1                       ; 2 uses
  %i.at = getelementptr i8, ptr %3, i64 %i.as     ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 %i.as
  %i.av = load i16, ptr %2, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.av, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aw = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.ax = load i16, ptr %i.d, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert31 = insertelement <8 x i16> poison, i16 %i.ax, i64 0
  %broadcast.splat32 = shufflevector <8 x i16> %broadcast.splatinsert31, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ay = sext <8 x i16> %broadcast.splat32 to <8 x i32>
  %i.az = load i16, ptr %i.e, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert33 = insertelement <8 x i16> poison, i16 %i.az, i64 0
  %broadcast.splat34 = shufflevector <8 x i16> %broadcast.splatinsert33, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ba = sext <8 x i16> %broadcast.splat34 to <8 x i32>
  %i.bb = load i16, ptr %i.f, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert35 = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %broadcast.splat36 = shufflevector <8 x i16> %broadcast.splatinsert35, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bc = sext <8 x i16> %broadcast.splat36 to <8 x i32>
  %i.bd = load i16, ptr %i.g, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert37 = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat38 = shufflevector <8 x i16> %broadcast.splatinsert37, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.be = sext <8 x i16> %broadcast.splat38 to <8 x i32>
  %i.bf = load i16, ptr %i.h, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert39 = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %broadcast.splat40 = shufflevector <8 x i16> %broadcast.splatinsert39, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bg = sext <8 x i16> %broadcast.splat40 to <8 x i32>
  %i.bh = load i16, ptr %i.i, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert41 = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %broadcast.splat42 = shufflevector <8 x i16> %broadcast.splatinsert41, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bi = sext <8 x i16> %broadcast.splat42 to <8 x i32>
  %i.bj = load i16, ptr %i.j, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bk = sext <8 x i16> %broadcast.splat44 to <8 x i32>
  %i.bl = load i16, ptr %i.k, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %i.bl, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bm = sext <8 x i16> %broadcast.splat46 to <8 x i32>
  %i.bn = load i16, ptr %i.l, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bo = sext <8 x i16> %broadcast.splat48 to <8 x i32>
  %i.bp = load i16, ptr %i.m, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert49 = insertelement <8 x i16> poison, i16 %i.bp, i64 0
  %broadcast.splat50 = shufflevector <8 x i16> %broadcast.splatinsert49, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bq = sext <8 x i16> %broadcast.splat50 to <8 x i32>
  %i.br = load i16, ptr %i.n, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert51 = insertelement <8 x i16> poison, i16 %i.br, i64 0
  %broadcast.splat52 = shufflevector <8 x i16> %broadcast.splatinsert51, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bs = sext <8 x i16> %broadcast.splat52 to <8 x i32>
  %i.bt = load i16, ptr %i.o, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert53 = insertelement <8 x i16> poison, i16 %i.bt, i64 0
  %broadcast.splat54 = shufflevector <8 x i16> %broadcast.splatinsert53, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bu = sext <8 x i16> %broadcast.splat54 to <8 x i32>
  %i.bv = load i16, ptr %i.p, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert55 = insertelement <8 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat56 = shufflevector <8 x i16> %broadcast.splatinsert55, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bw = sext <8 x i16> %broadcast.splat56 to <8 x i32>
  %i.bx = load i16, ptr %i.q, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert57 = insertelement <8 x i16> poison, i16 %i.bx, i64 0
  %broadcast.splat58 = shufflevector <8 x i16> %broadcast.splatinsert57, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.by = sext <8 x i16> %broadcast.splat58 to <8 x i32>
  %i.bz = load i16, ptr %i.r, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert59 = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %broadcast.splat60 = shufflevector <8 x i16> %broadcast.splatinsert59, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ca = sext <8 x i16> %broadcast.splat60 to <8 x i32>
  %i.cb = load i16, ptr %i.s, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert61 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat62 = shufflevector <8 x i16> %broadcast.splatinsert61, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = sext <8 x i16> %broadcast.splat62 to <8 x i32>
  %i.cd = load i16, ptr %i.t, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert63 = insertelement <8 x i16> poison, i16 %i.cd, i64 0
  %broadcast.splat64 = shufflevector <8 x i16> %broadcast.splatinsert63, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ce = sext <8 x i16> %broadcast.splat64 to <8 x i32>
  %i.cf = load i16, ptr %i.u, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert65 = insertelement <8 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat66 = shufflevector <8 x i16> %broadcast.splatinsert65, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cg = sext <8 x i16> %broadcast.splat66 to <8 x i32>
  %i.ch = load i16, ptr %i.v, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert67 = insertelement <8 x i16> poison, i16 %i.ch, i64 0
  %broadcast.splat68 = shufflevector <8 x i16> %broadcast.splatinsert67, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ci = sext <8 x i16> %broadcast.splat68 to <8 x i32>
  %i.cj = load i16, ptr %i.w, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert69 = insertelement <8 x i16> poison, i16 %i.cj, i64 0
  %broadcast.splat70 = shufflevector <8 x i16> %broadcast.splatinsert69, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ck = sext <8 x i16> %broadcast.splat70 to <8 x i32>
  %i.cl = load i16, ptr %i.x, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert71 = insertelement <8 x i16> poison, i16 %i.cl, i64 0
  %broadcast.splat72 = shufflevector <8 x i16> %broadcast.splatinsert71, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cm = sext <8 x i16> %broadcast.splat72 to <8 x i32>
  %i.cn = load i16, ptr %i.y, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert73 = insertelement <8 x i16> poison, i16 %i.cn, i64 0
  %broadcast.splat74 = shufflevector <8 x i16> %broadcast.splatinsert73, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.co = sext <8 x i16> %broadcast.splat74 to <8 x i32>
  %i.cp = load i16, ptr %i.z, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert75 = insertelement <8 x i16> poison, i16 %i.cp, i64 0
  %broadcast.splat76 = shufflevector <8 x i16> %broadcast.splatinsert75, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cq = sext <8 x i16> %broadcast.splat76 to <8 x i32>
  %i.cr = load i16, ptr %i.aa, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert77 = insertelement <8 x i16> poison, i16 %i.cr, i64 0
  %broadcast.splat78 = shufflevector <8 x i16> %broadcast.splatinsert77, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cs = sext <8 x i16> %broadcast.splat78 to <8 x i32>
  %i.ct = load i16, ptr %i.ab, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert79 = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %broadcast.splat80 = shufflevector <8 x i16> %broadcast.splatinsert79, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cu = sext <8 x i16> %broadcast.splat80 to <8 x i32>
  %i.cv = load i16, ptr %i.ac, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert81 = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %broadcast.splat82 = shufflevector <8 x i16> %broadcast.splatinsert81, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cw = sext <8 x i16> %broadcast.splat82 to <8 x i32>
  %i.cx = load i16, ptr %i.ad, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert83 = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %broadcast.splat84 = shufflevector <8 x i16> %broadcast.splatinsert83, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cy = sext <8 x i16> %broadcast.splat84 to <8 x i32>
  %i.cz = load i16, ptr %i.ae, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert85 = insertelement <8 x i16> poison, i16 %i.cz, i64 0
  %broadcast.splat86 = shufflevector <8 x i16> %broadcast.splatinsert85, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.da = sext <8 x i16> %broadcast.splat86 to <8 x i32>
  %i.db = load i16, ptr %i.af, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert87 = insertelement <8 x i16> poison, i16 %i.db, i64 0
  %broadcast.splat88 = shufflevector <8 x i16> %broadcast.splatinsert87, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dc = sext <8 x i16> %broadcast.splat88 to <8 x i32>
  %i.dd = load i16, ptr %i.ag, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert89 = insertelement <8 x i16> poison, i16 %i.dd, i64 0
  %broadcast.splat90 = shufflevector <8 x i16> %broadcast.splatinsert89, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.de = sext <8 x i16> %broadcast.splat90 to <8 x i32>
  %i.df = load i16, ptr %i.ah, align 2, !tbaa !30, !alias.scope !59
  %broadcast.splatinsert91 = insertelement <8 x i16> poison, i16 %i.df, i64 0
  %broadcast.splat92 = shufflevector <8 x i16> %broadcast.splatinsert91, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dg = sext <8 x i16> %broadcast.splat92 to <8 x i32>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.dh
  %next.gep93 = getelementptr i8, ptr %0, i64 %i.dh ; 32 uses
  %wide.load = load <8 x i16>, ptr %next.gep93, align 2, !tbaa !30, !alias.scope !60
  %i.di = sext <8 x i16> %wide.load to <8 x i32>
  %i.dj = mul nsw <8 x i32> %i.aw, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep93, i64 2
  %wide.load94 = load <8 x i16>, ptr %i.dk, align 2, !tbaa !30, !alias.scope !60
  %i.dl = sext <8 x i16> %wide.load94 to <8 x i32>
  %i.dm = mul nsw <8 x i32> %i.ay, %i.dl
  %i.dn = add nsw <8 x i32> %i.dm, %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep93, i64 4
  %wide.load95 = load <8 x i16>, ptr %i.do, align 2, !tbaa !30, !alias.scope !60
  %i.dp = sext <8 x i16> %wide.load95 to <8 x i32>
  %i.dq = mul nsw <8 x i32> %i.ba, %i.dp
  %i.dr = add nsw <8 x i32> %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %next.gep93, i64 6
  %wide.load96 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !30, !alias.scope !60
  %i.dt = sext <8 x i16> %wide.load96 to <8 x i32>
  %i.du = mul nsw <8 x i32> %i.bc, %i.dt
  %i.dv = add nsw <8 x i32> %i.du, %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %next.gep93, i64 8
  %wide.load97 = load <8 x i16>, ptr %i.dw, align 2, !tbaa !30, !alias.scope !60
  %i.dx = sext <8 x i16> %wide.load97 to <8 x i32>
  %i.dy = mul nsw <8 x i32> %i.be, %i.dx
  %i.dz = add nsw <8 x i32> %i.dy, %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep93, i64 10
  %wide.load98 = load <8 x i16>, ptr %i.ea, align 2, !tbaa !30, !alias.scope !60
  %i.eb = sext <8 x i16> %wide.load98 to <8 x i32>
  %i.ec = mul nsw <8 x i32> %i.bg, %i.eb
  %i.ed = add nsw <8 x i32> %i.ec, %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep93, i64 12
  %wide.load99 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !30, !alias.scope !60
  %i.ef = sext <8 x i16> %wide.load99 to <8 x i32>
  %i.eg = mul nsw <8 x i32> %i.bi, %i.ef
  %i.eh = add nsw <8 x i32> %i.eg, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep93, i64 14
  %wide.load100 = load <8 x i16>, ptr %i.ei, align 2, !tbaa !30, !alias.scope !60
  %i.ej = sext <8 x i16> %wide.load100 to <8 x i32>
  %i.ek = mul nsw <8 x i32> %i.bk, %i.ej
  %i.el = add nsw <8 x i32> %i.ek, %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %next.gep93, i64 16
end_hunk_0
