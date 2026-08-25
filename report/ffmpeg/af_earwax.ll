Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_earwax?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@filter_frame:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv.i
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !41
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.i
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !41
  %i.er = tail call i16 @llvm.sadd.sat.i16(i16 %i.eo, i16 %i.eq)
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.i
  store i16 %i.er, ptr %i.es, align 2, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %indvars.iv.next.i
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !41
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next.i
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !41
  %i.ex = tail call i16 @llvm.sadd.sat.i16(i16 %i.eu, i16 %i.ew)
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv.next.i
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !41
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %iter.check98, label %.lr.ph.i, !llvm.loop !49

iter.check98:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.ez = load ptr, ptr %.val35.val, align 8, !tbaa !40 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val35.val36, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !40 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40 ; 6 uses
  %min.iters.check83 = icmp ult i32 %i.dm, 4
  br i1 %min.iters.check83, label %.lr.ph.i49.preheader, label %vector.memcheck79

vector.memcheck79:                                ; preds = %iter.check98
  %i.fe = ptrtoaddr ptr %i.fd to i64              ; 2 uses
  %i.ff = ptrtoaddr ptr %i.fb to i64
  %i.fg = ptrtoaddr ptr %i.ez to i64
  %i.fh = sub i64 %i.fg, %i.fe
  %diff.check80 = icmp ugt i64 %i.fh, -32
  %i.fi = sub i64 %i.ff, %i.fe
  %diff.check81 = icmp ugt i64 %i.fi, -32
  %conflict.rdx82 = or i1 %diff.check80, %diff.check81
  br i1 %conflict.rdx82, label %.lr.ph.i49.preheader, label %vector.main.loop.iter.check84

vector.main.loop.iter.check84:                    ; preds = %vector.memcheck79
  %min.iters.check85 = icmp ult i32 %i.dm, 16
  br i1 %min.iters.check85, label %vec.epilog.ph102, label %vector.ph86

vector.ph86:                                      ; preds = %vector.main.loop.iter.check84
  %i.fj = and i64 %wide.trip.count.i, 12
  %n.vec87 = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %index89 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load90 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !41
  %wide.load91 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !41
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %index89 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load92 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !41
  %wide.load93 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !41
  %i.fo = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %wide.load90, <8 x i16> %wide.load92)
  %i.fp = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %wide.load91, <8 x i16> %wide.load93)
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %index89 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <8 x i16> %i.fo, ptr %i.fq, align 2, !tbaa !41
  store <8 x i16> %i.fp, ptr %i.fr, align 2, !tbaa !41
  %index.next94 = add nuw i64 %index89, 16        ; 2 uses
  %i.fs = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.fs, label %middle.block95, label %vector.body88, !llvm.loop !50

middle.block95:                                   ; preds = %vector.body88
  %cmp.n96 = icmp eq i64 %n.vec87, %wide.trip.count.i
  br i1 %cmp.n96, label %mix.exit53, label %vec.epilog.iter.check100

vec.epilog.iter.check100:                         ; preds = %middle.block95
  %min.epilog.iters.check101 = icmp eq i64 %i.fj, 0
  br i1 %min.epilog.iters.check101, label %.lr.ph.i49.preheader, label %vec.epilog.ph102, !prof !47

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check84, %vec.epilog.iter.check100
  %vec.epilog.resume.val97 = phi i64 [ %n.vec87, %vec.epilog.iter.check100 ], [ 0, %vector.main.loop.iter.check84 ]
  %n.vec103 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph102
  %index105 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph102 ], [ %index.next108, %vec.epilog.vector.body104 ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %index105
  %wide.load106 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !41
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %index105
  %wide.load107 = load <4 x i16>, ptr %i.fu, align 2, !tbaa !41
  %i.fv = tail call <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16> %wide.load106, <4 x i16> %wide.load107)
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %index105
  store <4 x i16> %i.fv, ptr %i.fw, align 2, !tbaa !41
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.fx, label %vec.epilog.middle.block109, label %vec.epilog.vector.body104, !llvm.loop !51

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body104
  %cmp.n110 = icmp eq i64 %n.vec103, %wide.trip.count.i
  br i1 %cmp.n110, label %mix.exit53, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %vector.memcheck79, %iter.check98, %vec.epilog.iter.check100, %vec.epilog.middle.block109
  %indvars.iv.i50.ph = phi i64 [ 0, %iter.check98 ], [ 0, %vector.memcheck79 ], [ %n.vec87, %vec.epilog.iter.check100 ], [ %n.vec103, %vec.epilog.middle.block109 ] ; 6 uses
  %xtraiter112 = and i64 %wide.trip.count.i, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv.i50.ph
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !41
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv.i50.ph
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !41
  %i.gc = tail call i16 @llvm.sadd.sat.i16(i16 %i.fz, i16 %i.gb)
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.i50.ph
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !41
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
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !41
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv.i50
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !41
  %i.gk = tail call i16 @llvm.sadd.sat.i16(i16 %i.gh, i16 %i.gj)
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.i50
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !41
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 3 uses
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv.next.i51
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !41
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.fb, i64 %indvars.iv.next.i51
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !41
  %i.gq = tail call i16 @llvm.sadd.sat.i16(i16 %i.gn, i16 %i.gp)
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv.next.i51
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !41
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %exitcond.not.i52.1 = icmp eq i64 %indvars.iv.next.i51.1, %wide.trip.count.i
  br i1 %exitcond.not.i52.1, label %mix.exit53, label %.lr.ph.i49, !llvm.loop !52

mix.exit53:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %middle.block95, %vec.epilog.middle.block109, %convolve.exit46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store <8 x i16> <i16 4, i16 4, i16 -1, i16 3, i16 -2, i16 -5, i16 9, i16 6>, ptr %i.d, align 2, !tbaa !41
  store <8 x i16> <i16 -6, i16 -11, i16 -5, i16 3, i16 5, i16 0, i16 1, i16 3>, ptr %i.e, align 2, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store <8 x i16> <i16 -4, i16 -5, i16 -2, i16 -7, i16 6, i16 30, i16 12, i16 -11>, ptr %i.f, align 2, !tbaa !41
  store <8 x i16> <i16 -1, i16 -3, i16 -5, i16 1, i16 -7, i16 -29, i16 -3, i16 4>, ptr %i.g, align 2, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <8 x i16> <i16 -3, i16 -20, i16 2, i16 1, i16 -14, i16 15, i16 6, i16 15>, ptr %i.h, align 2, !tbaa !41
  store <8 x i16> <i16 7, i16 23, i16 0, i16 -6, i16 -5, i16 -18, i16 7, i16 -10>, ptr %i.i, align 2, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store <8 x i16> <i16 -14, i16 -7, i16 -4, i16 6, i16 6, i16 0, i16 0, i16 4>, ptr %i.j, align 2, !tbaa !41
  store <8 x i16> <i16 22, i16 -2, i16 9, i16 -12, i16 -6, i16 -11, i16 -5, i16 0>, ptr %i.k, align 2, !tbaa !41
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp ult ptr %0, %1
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
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
  %4 = add i64 %i.a, 2
  %5 = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %4)
  %i.ai = xor i64 %i.a, -1
  %i.aj = add i64 %5, %i.ai                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 14
  br i1 %min.iters.check, label %.preheader.preheader123, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %6 = add i64 %i.a, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %6)
  %i.am = xor i64 %i.a, -1
  %i.an = add i64 %umax, %i.am
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  %i.ap = getelementptr i8, ptr %3, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 2   ; 2 uses
  %i.aq = getelementptr i8, ptr %0, i64 %i.ao
  %scevgep23 = getelementptr i8, ptr %i.aq, i64 64
  %scevgep24 = getelementptr i8, ptr %2, i64 64
  %bound0 = icmp ult ptr %3, %scevgep23
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %3, %scevgep24
  %bound126 = icmp ult ptr %2, %scevgep
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  br i1 %conflict.rdx, label %.preheader.preheader123, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.ar = shl i64 %n.vec, 1                       ; 2 uses
  %i.as = getelementptr i8, ptr %3, i64 %i.ar     ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 %i.ar
  %i.au = load i16, ptr %2, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.av = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.aw = load i16, ptr %i.d, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert28 = insertelement <8 x i16> poison, i16 %i.aw, i64 0
  %broadcast.splat29 = shufflevector <8 x i16> %broadcast.splatinsert28, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ax = sext <8 x i16> %broadcast.splat29 to <8 x i32>
  %i.ay = load i16, ptr %i.e, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert30 = insertelement <8 x i16> poison, i16 %i.ay, i64 0
  %broadcast.splat31 = shufflevector <8 x i16> %broadcast.splatinsert30, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.az = sext <8 x i16> %broadcast.splat31 to <8 x i32>
  %i.ba = load i16, ptr %i.f, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert32 = insertelement <8 x i16> poison, i16 %i.ba, i64 0
  %broadcast.splat33 = shufflevector <8 x i16> %broadcast.splatinsert32, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bb = sext <8 x i16> %broadcast.splat33 to <8 x i32>
  %i.bc = load i16, ptr %i.g, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert34 = insertelement <8 x i16> poison, i16 %i.bc, i64 0
  %broadcast.splat35 = shufflevector <8 x i16> %broadcast.splatinsert34, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bd = sext <8 x i16> %broadcast.splat35 to <8 x i32>
  %i.be = load i16, ptr %i.h, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert36 = insertelement <8 x i16> poison, i16 %i.be, i64 0
  %broadcast.splat37 = shufflevector <8 x i16> %broadcast.splatinsert36, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bf = sext <8 x i16> %broadcast.splat37 to <8 x i32>
  %i.bg = load i16, ptr %i.i, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert38 = insertelement <8 x i16> poison, i16 %i.bg, i64 0
  %broadcast.splat39 = shufflevector <8 x i16> %broadcast.splatinsert38, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bh = sext <8 x i16> %broadcast.splat39 to <8 x i32>
  %i.bi = load i16, ptr %i.j, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert40 = insertelement <8 x i16> poison, i16 %i.bi, i64 0
  %broadcast.splat41 = shufflevector <8 x i16> %broadcast.splatinsert40, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bj = sext <8 x i16> %broadcast.splat41 to <8 x i32>
  %i.bk = load i16, ptr %i.k, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert42 = insertelement <8 x i16> poison, i16 %i.bk, i64 0
  %broadcast.splat43 = shufflevector <8 x i16> %broadcast.splatinsert42, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bl = sext <8 x i16> %broadcast.splat43 to <8 x i32>
  %i.bm = load i16, ptr %i.l, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert44 = insertelement <8 x i16> poison, i16 %i.bm, i64 0
  %broadcast.splat45 = shufflevector <8 x i16> %broadcast.splatinsert44, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bn = sext <8 x i16> %broadcast.splat45 to <8 x i32>
  %i.bo = load i16, ptr %i.m, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert46 = insertelement <8 x i16> poison, i16 %i.bo, i64 0
  %broadcast.splat47 = shufflevector <8 x i16> %broadcast.splatinsert46, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bp = sext <8 x i16> %broadcast.splat47 to <8 x i32>
  %i.bq = load i16, ptr %i.n, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert48 = insertelement <8 x i16> poison, i16 %i.bq, i64 0
  %broadcast.splat49 = shufflevector <8 x i16> %broadcast.splatinsert48, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.br = sext <8 x i16> %broadcast.splat49 to <8 x i32>
  %i.bs = load i16, ptr %i.o, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert50 = insertelement <8 x i16> poison, i16 %i.bs, i64 0
  %broadcast.splat51 = shufflevector <8 x i16> %broadcast.splatinsert50, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bt = sext <8 x i16> %broadcast.splat51 to <8 x i32>
  %i.bu = load i16, ptr %i.p, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert52 = insertelement <8 x i16> poison, i16 %i.bu, i64 0
  %broadcast.splat53 = shufflevector <8 x i16> %broadcast.splatinsert52, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bv = sext <8 x i16> %broadcast.splat53 to <8 x i32>
  %i.bw = load i16, ptr %i.q, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert54 = insertelement <8 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat55 = shufflevector <8 x i16> %broadcast.splatinsert54, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bx = sext <8 x i16> %broadcast.splat55 to <8 x i32>
  %i.by = load i16, ptr %i.r, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert56 = insertelement <8 x i16> poison, i16 %i.by, i64 0
  %broadcast.splat57 = shufflevector <8 x i16> %broadcast.splatinsert56, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bz = sext <8 x i16> %broadcast.splat57 to <8 x i32>
  %i.ca = load i16, ptr %i.s, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert58 = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat59 = shufflevector <8 x i16> %broadcast.splatinsert58, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cb = sext <8 x i16> %broadcast.splat59 to <8 x i32>
  %i.cc = load i16, ptr %i.t, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert60 = insertelement <8 x i16> poison, i16 %i.cc, i64 0
  %broadcast.splat61 = shufflevector <8 x i16> %broadcast.splatinsert60, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cd = sext <8 x i16> %broadcast.splat61 to <8 x i32>
  %i.ce = load i16, ptr %i.u, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert62 = insertelement <8 x i16> poison, i16 %i.ce, i64 0
  %broadcast.splat63 = shufflevector <8 x i16> %broadcast.splatinsert62, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cf = sext <8 x i16> %broadcast.splat63 to <8 x i32>
  %i.cg = load i16, ptr %i.v, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert64 = insertelement <8 x i16> poison, i16 %i.cg, i64 0
  %broadcast.splat65 = shufflevector <8 x i16> %broadcast.splatinsert64, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ch = sext <8 x i16> %broadcast.splat65 to <8 x i32>
  %i.ci = load i16, ptr %i.w, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert66 = insertelement <8 x i16> poison, i16 %i.ci, i64 0
  %broadcast.splat67 = shufflevector <8 x i16> %broadcast.splatinsert66, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cj = sext <8 x i16> %broadcast.splat67 to <8 x i32>
  %i.ck = load i16, ptr %i.x, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert68 = insertelement <8 x i16> poison, i16 %i.ck, i64 0
  %broadcast.splat69 = shufflevector <8 x i16> %broadcast.splatinsert68, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cl = sext <8 x i16> %broadcast.splat69 to <8 x i32>
  %i.cm = load i16, ptr %i.y, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert70 = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %broadcast.splat71 = shufflevector <8 x i16> %broadcast.splatinsert70, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cn = sext <8 x i16> %broadcast.splat71 to <8 x i32>
  %i.co = load i16, ptr %i.z, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert72 = insertelement <8 x i16> poison, i16 %i.co, i64 0
  %broadcast.splat73 = shufflevector <8 x i16> %broadcast.splatinsert72, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cp = sext <8 x i16> %broadcast.splat73 to <8 x i32>
  %i.cq = load i16, ptr %i.aa, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert74 = insertelement <8 x i16> poison, i16 %i.cq, i64 0
  %broadcast.splat75 = shufflevector <8 x i16> %broadcast.splatinsert74, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cr = sext <8 x i16> %broadcast.splat75 to <8 x i32>
  %i.cs = load i16, ptr %i.ab, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert76 = insertelement <8 x i16> poison, i16 %i.cs, i64 0
  %broadcast.splat77 = shufflevector <8 x i16> %broadcast.splatinsert76, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ct = sext <8 x i16> %broadcast.splat77 to <8 x i32>
  %i.cu = load i16, ptr %i.ac, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert78 = insertelement <8 x i16> poison, i16 %i.cu, i64 0
  %broadcast.splat79 = shufflevector <8 x i16> %broadcast.splatinsert78, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cv = sext <8 x i16> %broadcast.splat79 to <8 x i32>
  %i.cw = load i16, ptr %i.ad, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert80 = insertelement <8 x i16> poison, i16 %i.cw, i64 0
  %broadcast.splat81 = shufflevector <8 x i16> %broadcast.splatinsert80, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cx = sext <8 x i16> %broadcast.splat81 to <8 x i32>
  %i.cy = load i16, ptr %i.ae, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert82 = insertelement <8 x i16> poison, i16 %i.cy, i64 0
  %broadcast.splat83 = shufflevector <8 x i16> %broadcast.splatinsert82, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cz = sext <8 x i16> %broadcast.splat83 to <8 x i32>
  %i.da = load i16, ptr %i.af, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert84 = insertelement <8 x i16> poison, i16 %i.da, i64 0
  %broadcast.splat85 = shufflevector <8 x i16> %broadcast.splatinsert84, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.db = sext <8 x i16> %broadcast.splat85 to <8 x i32>
  %i.dc = load i16, ptr %i.ag, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert86 = insertelement <8 x i16> poison, i16 %i.dc, i64 0
  %broadcast.splat87 = shufflevector <8 x i16> %broadcast.splatinsert86, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dd = sext <8 x i16> %broadcast.splat87 to <8 x i32>
  %i.de = load i16, ptr %i.ah, align 2, !tbaa !41, !alias.scope !53
  %broadcast.splatinsert88 = insertelement <8 x i16> poison, i16 %i.de, i64 0
  %broadcast.splat89 = shufflevector <8 x i16> %broadcast.splatinsert88, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.df = sext <8 x i16> %broadcast.splat89 to <8 x i32>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.dg
  %next.gep90 = getelementptr i8, ptr %0, i64 %i.dg ; 32 uses
  %wide.load = load <8 x i16>, ptr %next.gep90, align 2, !tbaa !41, !alias.scope !56
  %i.dh = sext <8 x i16> %wide.load to <8 x i32>
  %i.di = mul nsw <8 x i32> %i.av, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %next.gep90, i64 2
  %wide.load91 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !41, !alias.scope !56
  %i.dk = sext <8 x i16> %wide.load91 to <8 x i32>
  %i.dl = mul nsw <8 x i32> %i.ax, %i.dk
  %i.dm = add nsw <8 x i32> %i.dl, %i.di
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep90, i64 4
  %wide.load92 = load <8 x i16>, ptr %i.dn, align 2, !tbaa !41, !alias.scope !56
  %i.do = sext <8 x i16> %wide.load92 to <8 x i32>
  %i.dp = mul nsw <8 x i32> %i.az, %i.do
  %i.dq = add nsw <8 x i32> %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep90, i64 6
  %wide.load93 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !41, !alias.scope !56
  %i.ds = sext <8 x i16> %wide.load93 to <8 x i32>
  %i.dt = mul nsw <8 x i32> %i.bb, %i.ds
  %i.du = add nsw <8 x i32> %i.dt, %i.dq
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep90, i64 8
  %wide.load94 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !41, !alias.scope !56
  %i.dw = sext <8 x i16> %wide.load94 to <8 x i32>
  %i.dx = mul nsw <8 x i32> %i.bd, %i.dw
  %i.dy = add nsw <8 x i32> %i.dx, %i.du
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep90, i64 10
  %wide.load95 = load <8 x i16>, ptr %i.dz, align 2, !tbaa !41, !alias.scope !56
  %i.ea = sext <8 x i16> %wide.load95 to <8 x i32>
  %i.eb = mul nsw <8 x i32> %i.bf, %i.ea
  %i.ec = add nsw <8 x i32> %i.eb, %i.dy
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep90, i64 12
  %wide.load96 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !41, !alias.scope !56
  %i.ee = sext <8 x i16> %wide.load96 to <8 x i32>
  %i.ef = mul nsw <8 x i32> %i.bh, %i.ee
  %i.eg = add nsw <8 x i32> %i.ef, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep90, i64 14
  %wide.load97 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !41, !alias.scope !56
  %i.ei = sext <8 x i16> %wide.load97 to <8 x i32>
  %i.ej = mul nsw <8 x i32> %i.bj, %i.ei
  %i.ek = add nsw <8 x i32> %i.ej, %i.eg
  %i.el = getelementptr inbounds nuw i8, ptr %next.gep90, i64 16
  %wide.load98 = load <8 x i16>, ptr %i.el, align 2, !tbaa !41, !alias.scope !56
  %i.em = sext <8 x i16> %wide.load98 to <8 x i32>
  %i.en = mul nsw <8 x i32> %i.bl, %i.em
  %i.eo = add nsw <8 x i32> %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %next.gep90, i64 18
  %wide.load99 = load <8 x i16>, ptr %i.ep, align 2, !tbaa !41, !alias.scope !56
  %i.eq = sext <8 x i16> %wide.load99 to <8 x i32>
  %i.er = mul nsw <8 x i32> %i.bn, %i.eq
  %i.es = add nsw <8 x i32> %i.er, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %next.gep90, i64 20
  %wide.load100 = load <8 x i16>, ptr %i.et, align 2, !tbaa !41, !alias.scope !56
  %i.eu = sext <8 x i16> %wide.load100 to <8 x i32>
  %i.ev = mul nsw <8 x i32> %i.bp, %i.eu
  %i.ew = add nsw <8 x i32> %i.ev, %i.es
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep90, i64 22
  %wide.load101 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !41, !alias.scope !56
  %i.ey = sext <8 x i16> %wide.load101 to <8 x i32>
  %i.ez = mul nsw <8 x i32> %i.br, %i.ey
  %i.fa = add nsw <8 x i32> %i.ez, %i.ew
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep90, i64 24
  %wide.load102 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !41, !alias.scope !56
  %i.fc = sext <8 x i16> %wide.load102 to <8 x i32>
  %i.fd = mul nsw <8 x i32> %i.bt, %i.fc
  %i.fe = add nsw <8 x i32> %i.fd, %i.fa
  %i.ff = getelementptr inbounds nuw i8, ptr %next.gep90, i64 26
  %wide.load103 = load <8 x i16>, ptr %i.ff, align 2, !tbaa !41, !alias.scope !56
  %i.fg = sext <8 x i16> %wide.load103 to <8 x i32>
  %i.fh = mul nsw <8 x i32> %i.bv, %i.fg
  %i.fi = add nsw <8 x i32> %i.fh, %i.fe
  %i.fj = getelementptr inbounds nuw i8, ptr %next.gep90, i64 28
  %wide.load104 = load <8 x i16>, ptr %i.fj, align 2, !tbaa !41, !alias.scope !56
  %i.fk = sext <8 x i16> %wide.load104 to <8 x i32>
  %i.fl = mul nsw <8 x i32> %i.bx, %i.fk
  %i.fm = add nsw <8 x i32> %i.fl, %i.fi
  %i.fn = getelementptr inbounds nuw i8, ptr %next.gep90, i64 30
  %wide.load105 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !41, !alias.scope !56
  %i.fo = sext <8 x i16> %wide.load105 to <8 x i32>
  %i.fp = mul nsw <8 x i32> %i.bz, %i.fo
  %i.fq = add nsw <8 x i32> %i.fp, %i.fm
  %i.fr = getelementptr inbounds nuw i8, ptr %next.gep90, i64 32
  %wide.load106 = load <8 x i16>, ptr %i.fr, align 2, !tbaa !41, !alias.scope !56
  %i.fs = sext <8 x i16> %wide.load106 to <8 x i32>
  %i.ft = mul nsw <8 x i32> %i.cb, %i.fs
  %i.fu = add nsw <8 x i32> %i.ft, %i.fq
  %i.fv = getelementptr inbounds nuw i8, ptr %next.gep90, i64 34
  %wide.load107 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !41, !alias.scope !56
  %i.fw = sext <8 x i16> %wide.load107 to <8 x i32>
  %i.fx = mul nsw <8 x i32> %i.cd, %i.fw
  %i.fy = add nsw <8 x i32> %i.fx, %i.fu
  %i.fz = getelementptr inbounds nuw i8, ptr %next.gep90, i64 36
  %wide.load108 = load <8 x i16>, ptr %i.fz, align 2, !tbaa !41, !alias.scope !56
  %i.ga = sext <8 x i16> %wide.load108 to <8 x i32>
  %i.gb = mul nsw <8 x i32> %i.cf, %i.ga
  %i.gc = add nsw <8 x i32> %i.gb, %i.fy
  %i.gd = getelementptr inbounds nuw i8, ptr %next.gep90, i64 38
  %wide.load109 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !41, !alias.scope !56
  %i.ge = sext <8 x i16> %wide.load109 to <8 x i32>
  %i.gf = mul nsw <8 x i32> %i.ch, %i.ge
  %i.gg = add nsw <8 x i32> %i.gf, %i.gc
  %i.gh = getelementptr inbounds nuw i8, ptr %next.gep90, i64 40
  %wide.load110 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !41, !alias.scope !56
  %i.gi = sext <8 x i16> %wide.load110 to <8 x i32>
  %i.gj = mul nsw <8 x i32> %i.cj, %i.gi
  %i.gk = add nsw <8 x i32> %i.gj, %i.gg
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep90, i64 42
  %wide.load111 = load <8 x i16>, ptr %i.gl, align 2, !tbaa !41, !alias.scope !56
  %i.gm = sext <8 x i16> %wide.load111 to <8 x i32>
  %i.gn = mul nsw <8 x i32> %i.cl, %i.gm
  %i.go = add nsw <8 x i32> %i.gn, %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %next.gep90, i64 44
  %wide.load112 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !41, !alias.scope !56
  %i.gq = sext <8 x i16> %wide.load112 to <8 x i32>
  %i.gr = mul nsw <8 x i32> %i.cn, %i.gq
  %i.gs = add nsw <8 x i32> %i.gr, %i.go
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep90, i64 46
  %wide.load113 = load <8 x i16>, ptr %i.gt, align 2, !tbaa !41, !alias.scope !56
  %i.gu = sext <8 x i16> %wide.load113 to <8 x i32>
  %i.gv = mul nsw <8 x i32> %i.cp, %i.gu
  %i.gw = add nsw <8 x i32> %i.gv, %i.gs
  %i.gx = getelementptr inbounds nuw i8, ptr %next.gep90, i64 48
  %wide.load114 = load <8 x i16>, ptr %i.gx, align 2, !tbaa !41, !alias.scope !56
  %i.gy = sext <8 x i16> %wide.load114 to <8 x i32>
  %i.gz = mul nsw <8 x i32> %i.cr, %i.gy
  %i.ha = add nsw <8 x i32> %i.gz, %i.gw
  %i.hb = getelementptr inbounds nuw i8, ptr %next.gep90, i64 50
  %wide.load115 = load <8 x i16>, ptr %i.hb, align 2, !tbaa !41, !alias.scope !56
  %i.hc = sext <8 x i16> %wide.load115 to <8 x i32>
  %i.hd = mul nsw <8 x i32> %i.ct, %i.hc
  %i.he = add nsw <8 x i32> %i.hd, %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep90, i64 52
  %wide.load116 = load <8 x i16>, ptr %i.hf, align 2, !tbaa !41, !alias.scope !56
  %i.hg = sext <8 x i16> %wide.load116 to <8 x i32>
  %i.hh = mul nsw <8 x i32> %i.cv, %i.hg
  %i.hi = add nsw <8 x i32> %i.hh, %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %next.gep90, i64 54
  %wide.load117 = load <8 x i16>, ptr %i.hj, align 2, !tbaa !41, !alias.scope !56
  %i.hk = sext <8 x i16> %wide.load117 to <8 x i32>
  %i.hl = mul nsw <8 x i32> %i.cx, %i.hk
  %i.hm = add nsw <8 x i32> %i.hl, %i.hi
  %i.hn = getelementptr inbounds nuw i8, ptr %next.gep90, i64 56
  %wide.load118 = load <8 x i16>, ptr %i.hn, align 2, !tbaa !41, !alias.scope !56
  %i.ho = sext <8 x i16> %wide.load118 to <8 x i32>
  %i.hp = mul nsw <8 x i32> %i.cz, %i.ho
  %i.hq = add nsw <8 x i32> %i.hp, %i.hm
  %i.hr = getelementptr inbounds nuw i8, ptr %next.gep90, i64 58
  %wide.load119 = load <8 x i16>, ptr %i.hr, align 2, !tbaa !41, !alias.scope !56
  %i.hs = sext <8 x i16> %wide.load119 to <8 x i32>
  %i.ht = mul nsw <8 x i32> %i.db, %i.hs
  %i.hu = add nsw <8 x i32> %i.ht, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %next.gep90, i64 60
  %wide.load120 = load <8 x i16>, ptr %i.hv, align 2, !tbaa !41, !alias.scope !56
  %i.hw = sext <8 x i16> %wide.load120 to <8 x i32>
  %i.hx = mul nsw <8 x i32> %i.dd, %i.hw
  %i.hy = add nsw <8 x i32> %i.hx, %i.hu
  %i.hz = getelementptr inbounds nuw i8, ptr %next.gep90, i64 62
  %wide.load121 = load <8 x i16>, ptr %i.hz, align 2, !tbaa !41, !alias.scope !56
  %i.ia = sext <8 x i16> %wide.load121 to <8 x i32>
  %i.ib = mul nsw <8 x i32> %i.df, %i.ia
  %i.ic = add nsw <8 x i32> %i.ib, %i.hy
  %i.id = ashr <8 x i32> %i.ic, splat (i32 7)
  %i.ie = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.id, <8 x i32> splat (i32 -32768))
  %i.if = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ie, <8 x i32> splat (i32 32767))
  %i.ig = trunc nsw <8 x i32> %i.if to <8 x i16>
  store <8 x i16> %i.ig, ptr %next.gep, align 2, !tbaa !41, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader123

.preheader.preheader123:                          ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.01419.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.preheader.preheader ], [ %i.as, %middle.block ]
  %.01518.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.preheader.preheader ], [ %i.at, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader123, %.preheader
  %.01419 = phi ptr [ %i.is, %.preheader ], [ %.01419.ph, %.preheader.preheader123 ] ; 2 uses
  %.01518 = phi ptr [ %i.ii, %.preheader ], [ %.01518.ph, %.preheader.preheader123 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.01518, i64 2 ; 2 uses
  %i.ij = load <32 x i16>, ptr %.01518, align 2, !tbaa !41
  %i.ik = sext <32 x i16> %i.ij to <32 x i32>
  %i.il = load <32 x i16>, ptr %2, align 2, !tbaa !41
  %i.im = sext <32 x i16> %i.il to <32 x i32>
  %i.in = mul nsw <32 x i32> %i.im, %i.ik
  %i.io = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.in)
  %i.ip = ashr i32 %i.io, 7
  %i.iq = tail call i32 @llvm.smax.i32(i32 %i.ip, i32 -32768)
  %i.ir = tail call i32 @llvm.smin.i32(i32 %i.iq, i32 32767)
  %.0.i = trunc nsw i32 %i.ir to i16
  store i16 %.0.i, ptr %.01419, align 2, !tbaa !41
  %i.is = getelementptr inbounds nuw i8, ptr %.01419, i64 2 ; 2 uses
  %i.it = icmp ult ptr %i.ii, %1
  br i1 %i.it, label %.preheader, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.preheader, %middle.block, %bb.a
  %.014.lcssa = phi ptr [ %3, %bb.a ], [ %i.as, %middle.block ], [ %i.is, %.preheader ]
  ret ptr %.014.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16>, <4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!22 = !{!23, !24, i64 16}
!23 = !{!"AVFilterLink", !24, i64 0, !15, i64 8, !24, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !25, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !26, i64 72, !25, i64 96, !27, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!24 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!25 = !{!"AVRational", !6, i64 0, !6, i64 4}
!26 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!27 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!28 = !{!"AVFilterFormatsConfig", !29, i64 0, !29, i64 8, !30, i64 16, !29, i64 24, !29, i64 32, !29, i64 40}
!29 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!30 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!31 = !{!10, !16, i64 56}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!34 = !{!35, !6, i64 112}
!35 = !{!"AVFrame", !7, i64 0, !7, i64 64, !36, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !25, i64 124, !37, i64 136, !37, i64 144, !25, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !38, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !37, i64 304, !39, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !12, i64 376, !26, i64 384, !37, i64 408, !6, i64 416}
!36 = !{!"p2 omnipotent char", !17, i64 0}
!37 = !{!"long", !7, i64 0}
!38 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!39 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!40 = !{!14, !14, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !7, i64 0}
!43 = distinct !{!43, !44, !45, !46}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 12}
!48 = distinct !{!48, !44, !45, !46}
!49 = distinct !{!49, !44, !45}
!50 = distinct !{!50, !44, !45, !46}
!51 = distinct !{!51, !44, !45, !46}
!52 = distinct !{!52, !44, !45}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = !{!59}
!59 = distinct !{!59, !55}
!60 = !{!57, !54}
!61 = distinct !{!61, !44, !45, !46}
!62 = distinct !{!62, !44, !45}
end_hunk_0
