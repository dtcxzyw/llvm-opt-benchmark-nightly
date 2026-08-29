Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/Cr2sRawInterpolator?download=true
inline.NumInlined: 607
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN8rawspeed19Cr2sRawInterpolator15interpolate_420ILi2EEEvv:bb.a
  %i.iy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ix, <4 x i32> zeroinitializer)
  %i.iz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iy, <4 x i32> splat (i32 65535))
  %i.ja = trunc nuw <4 x i32> %i.iz to <4 x i16>
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.jc = ashr i32 %i.id, 1                       ; 3 uses
  %i.jd = mul nsw i32 %i.jc, -778
  %i.je = sub nsw i32 %i.jd, %i.iq
  %i.jf = ashr i32 %i.je, 12                      ; 2 uses
  %i.jg = insertelement <2 x i32> poison, i32 %i.jf, i64 0
  %i.jh = insertelement <2 x i32> %i.jg, i32 %i.jc, i64 1
  %i.ji = insertelement <2 x i32> poison, i32 %i.hz, i64 0
  %i.jj = shufflevector <2 x i32> %i.ji, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jk = add nsw <2 x i32> %i.jh, %i.jj
  %i.jl = mul nsw <2 x i32> %i.jk, %i.gi
  %i.jm = ashr <2 x i32> %i.jl, splat (i32 8)
  %i.jn = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jm, <2 x i32> zeroinitializer)
  %i.jo = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jn, <2 x i32> splat (i32 65535))
  %i.jp = trunc nuw <2 x i32> %i.jo to <2 x i16>
  store <2 x i16> %i.jp, ptr %i.ho, align 2, !tbaa !120
  %i.jq = add nsw i32 %i.jc, %i.hu
  %i.jr = add nsw i32 %i.jf, %i.hu
  %i.js = insertelement <2 x i32> poison, i32 %i.jr, i64 0
  %i.jt = insertelement <2 x i32> %i.js, i32 %i.jq, i64 1
  %i.ju = mul nsw <2 x i32> %i.jt, %i.gi
  store <4 x i16> %i.ja, ptr %i.hp, align 2, !tbaa !120
  %i.jv = ashr <2 x i32> %i.ju, splat (i32 8)
  %i.jw = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.jv, <2 x i32> zeroinitializer)
  %i.jx = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.jw, <2 x i32> splat (i32 65535))
  %i.jy = trunc nuw <2 x i32> %i.jx to <2 x i16>
  store <2 x i16> %i.jy, ptr %i.jb, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %.preheader215, !llvm.loop !143

._crit_edge231:                                   ; preds = %.preheader215
  %i.jz = zext nneg i32 %i.s to i64
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.al ; 5 uses
  %i.kb = mul nuw nsw i32 %i.ai, 6                ; 3 uses
  %i.kc = zext nneg i32 %i.kb to i64              ; 7 uses
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kc
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kc
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = add nuw nsw i64 %i.kc, 3                ; 2 uses
  %i.kj = icmp samesign ult i64 %i.ki, %i.jz
  tail call void @llvm.assume(i1 %i.kj), !noalias !144
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.ki
  %i.kl = add nuw nsw i32 %i.kb, 6
  %i.km = icmp samesign ule i32 %i.kl, %i.s
  tail call void @llvm.assume(i1 %i.km), !noalias !144
  %i.kn = zext nneg i32 %i.kb to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !120, !noalias !144
  %i.kr = zext i16 %i.kq to i32
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 10
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !120, !noalias !144
  %i.ku = zext i16 %i.kt to i32
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !118
  %i.kx = add i32 %i.kw, -16384                   ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kz = add nuw nsw i64 %i.kc, 3                ; 3 uses
  %i.la = icmp samesign ule i64 %i.kz, %i.aw
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bc ; 2 uses
  tail call void @llvm.assume(i1 %i.la)
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.kc
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lb, i64 %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.kc
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.lf, i64 %i.kz
  %i.li = load i16, ptr %i.kk, align 2, !tbaa !120, !noalias !144
  %i.lj = load <2 x i16>, ptr %i.kh, align 2, !tbaa !120, !noalias !144
  %i.lk = shufflevector <2 x i16> %i.lj, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ll = zext i16 %i.li to i32                   ; 2 uses
  %i.lm = zext <4 x i16> %i.lk to <4 x i32>
  %i.ln = load <3 x i32>, ptr %i.ky, align 8, !tbaa !119 ; 2 uses
  %i.lo = shufflevector <3 x i32> %i.ln, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.lp = load i32, ptr %i.ky, align 8, !tbaa !119
  %i.lq = load i16, ptr %i.kf, align 2, !tbaa !120, !noalias !144
  %i.lr = load <2 x i16>, ptr %i.kd, align 2, !tbaa !120, !noalias !144
  %i.ls = shufflevector <2 x i16> %i.lr, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lt = zext i16 %i.lq to i32
  %i.lu = zext <4 x i16> %i.ls to <4 x i32>
  %i.lv = add i32 %i.kx, %i.ku                    ; 2 uses
  %i.lw = shl nsw i32 %i.lv, 11
  %i.lx = insertelement <4 x i32> poison, i32 %i.lv, i64 0
  %i.ly = insertelement <4 x i32> poison, i32 %i.lp, i64 0
  %i.lz = shufflevector <4 x i32> %i.ly, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ma = shufflevector <4 x i32> %i.lz, <4 x i32> %i.lo, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.mc = add i32 %i.kx, %i.kr                    ; 4 uses
  %i.md = mul nsw i32 %i.mc, -778
  %i.me = sub nsw i32 %i.md, %i.lw
  %i.mf = ashr i32 %i.me, 12                      ; 3 uses
  %i.mg = insertelement <4 x i32> %i.lx, i32 %i.mf, i64 1
  %i.mh = insertelement <4 x i32> %i.mg, i32 %i.mc, i64 2
  %i.mi = shufflevector <4 x i32> %i.mh, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.mj = add nsw <4 x i32> %i.mi, %i.lu
  %i.mk = mul nsw <4 x i32> %i.mj, %i.ma
  %i.ml = insertelement <2 x i32> poison, i32 %i.mf, i64 0
  %i.mm = insertelement <2 x i32> %i.ml, i32 %i.mc, i64 1
  %i.mn = insertelement <2 x i32> poison, i32 %i.lt, i64 0
  %i.mo = shufflevector <2 x i32> %i.mn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mp = add nsw <2 x i32> %i.mm, %i.mo
  %i.mq = shufflevector <3 x i32> %i.ln, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mr = mul nsw <2 x i32> %i.mp, %i.mq
  %i.ms = ashr <4 x i32> %i.mk, splat (i32 8)
  %i.mt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ms, <4 x i32> zeroinitializer)
  %i.mu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mt, <4 x i32> splat (i32 65535))
  %i.mv = trunc nuw <4 x i32> %i.mu to <4 x i16>
  store <4 x i16> %i.mv, ptr %i.lc, align 2, !tbaa !120
  %i.mw = ashr <2 x i32> %i.mr, splat (i32 8)
  %i.mx = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mw, <2 x i32> zeroinitializer)
  %i.my = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mx, <2 x i32> splat (i32 65535))
  %i.mz = trunc nuw <2 x i32> %i.my to <2 x i16>
  store <2 x i16> %i.mz, ptr %i.le, align 2, !tbaa !120
  %i.na = add nsw <4 x i32> %i.mi, %i.lm
  %i.nb = mul nsw <4 x i32> %i.lo, %i.na
  %i.nc = add nsw i32 %i.mc, %i.ll
  %i.nd = add nsw i32 %i.mf, %i.ll
  %i.ne = insertelement <2 x i32> poison, i32 %i.nd, i64 0
  %i.nf = insertelement <2 x i32> %i.ne, i32 %i.nc, i64 1
  %i.ng = mul nsw <2 x i32> %i.nf, %i.mq
  %i.nh = ashr <4 x i32> %i.nb, splat (i32 8)
  %i.ni = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nh, <4 x i32> zeroinitializer)
  %i.nj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ni, <4 x i32> splat (i32 65535))
  %i.nk = trunc nuw <4 x i32> %i.nj to <4 x i16>
  store <4 x i16> %i.nk, ptr %i.lg, align 2, !tbaa !120
  %i.nl = ashr <2 x i32> %i.ng, splat (i32 8)
  %i.nm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nl, <2 x i32> zeroinitializer)
  %i.nn = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.nm, <2 x i32> splat (i32 65535))
  %i.no = trunc nuw <2 x i32> %i.nn to <2 x i16>
  store <2 x i16> %i.no, ptr %i.mb, align 2, !tbaa !120
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #13 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi0EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !147 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !147
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !147
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2                  ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.050.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !118
  %i.aj = add i32 %i.ai, -16384                   ; 5 uses
  %i.ak = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = mul i32 %i.n, %1
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr [2 x i8], ptr %i.d, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = load <3 x i32>, ptr %i.ao, align 8, !tbaa !119 ; 5 uses
  %i.ar = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !119
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.at = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ax = zext i32 %i.w to i64
  %i.ay = zext i32 %1 to i64
  %i.az = mul nuw i64 %i.ax, %i.ay
  %i.ba = shl i64 %i.az, 1
  %i.bb = shl nuw nsw i64 %wide.trip.count, 3
  %i.bc = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep88 = getelementptr i8, ptr %i.bd, i64 8
  %bound0 = icmp ult ptr %i.an, %scevgep88
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.be = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i64 8, i64 %i.be
  %n.vec = sub nsw i64 %wide.trip.count, %i.bg    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat90 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bh = phi i64 [ 0, %vector.ph ], [ %i.dm, %vector.body ] ; 2 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bi, align 2, !tbaa !120, !alias.scope !150, !noalias !153 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec99.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec100 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec101.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bj = zext <8 x i16> %strided.vec to <8 x i32>
  %i.bk = zext <8 x i16> %strided.vec99.a to <8 x i32>
  %i.bl = zext <8 x i16> %strided.vec100 to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec101.a to <8 x i32>
  %.idx105.a = shl i64 %index, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx105.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %wide.vec102 = load <32 x i16>, ptr %i.bo, align 2, !tbaa !120, !alias.scope !150, !noalias !153 ; 2 uses
  %strided.vec103 = shufflevector <32 x i16> %wide.vec102, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec104 = shufflevector <32 x i16> %wide.vec102, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bp = zext <8 x i16> %strided.vec103 to <8 x i32>
  %i.bq = zext <8 x i16> %strided.vec104 to <8 x i32>
  %i.br = add <8 x i32> %broadcast.splat, %i.bl   ; 3 uses
  %i.bs = add <8 x i32> %broadcast.splat, %i.bm   ; 3 uses
  %i.bt = add <8 x i32> %broadcast.splat, %i.bp
  %i.bu = add <8 x i32> %broadcast.splat, %i.bq
  %i.bv = add nsw <8 x i32> %i.bt, %i.br
  %i.bw = ashr <8 x i32> %i.bv, splat (i32 1)     ; 2 uses
  %i.bx = add nsw <8 x i32> %i.bu, %i.bs
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 2 uses
  %i.bz = add nsw <8 x i32> %i.bj, splat (i32 -512) ; 3 uses
  %i.ca = add <8 x i32> %i.bz, %i.bs
  %i.cb = mul nsw <8 x i32> %i.ca, %broadcast.splat90
  %i.cc = mul nsw <8 x i32> %i.br, splat (i32 -778)
  %i.cd = shl nsw <8 x i32> %i.bs, splat (i32 11)
  %i.ce = sub nsw <8 x i32> %i.cc, %i.cd
  %i.cf = ashr <8 x i32> %i.ce, splat (i32 12)
  %i.cg = add nsw <8 x i32> %i.bz, %i.cf
  %i.ch = mul nsw <8 x i32> %i.cg, %broadcast.splat92
  %i.ci = add <8 x i32> %i.bz, %i.br
  %i.cj = mul nsw <8 x i32> %i.ci, %broadcast.splat94
  %.idx106 = mul nuw nsw i64 %i.bh, 12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx106
  %i.cl = add nsw <8 x i32> %i.bk, splat (i32 -512) ; 3 uses
  %i.cm = add nsw <8 x i32> %i.cl, %i.by
  %i.cn = mul nsw <8 x i32> %i.cm, %broadcast.splat90
  %i.co = mul nsw <8 x i32> %i.bw, splat (i32 -778)
  %i.cp = shl nsw <8 x i32> %i.by, splat (i32 11)
  %i.cq = sub nsw <8 x i32> %i.co, %i.cp
  %i.cr = ashr <8 x i32> %i.cq, splat (i32 12)
  %i.cs = add nsw <8 x i32> %i.cr, %i.cl
  %i.ct = mul nsw <8 x i32> %i.cs, %broadcast.splat92
  %i.cu = add nsw <8 x i32> %i.bw, %i.cl
  %i.cv = mul nsw <8 x i32> %i.cu, %broadcast.splat94
  %i.cw = ashr <8 x i32> %i.ct, splat (i32 8)
  %i.cx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cw, <8 x i32> zeroinitializer)
  %i.cy = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cx, <8 x i32> splat (i32 65535))
  %i.cz = trunc nuw <8 x i32> %i.cy to <8 x i16>
  %i.da = ashr <8 x i32> %i.cv, splat (i32 8)
  %i.db = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.da, <8 x i32> zeroinitializer)
  %i.dc = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.db, <8 x i32> splat (i32 65535))
  %i.dd = trunc nuw <8 x i32> %i.dc to <8 x i16>
  %i.de = shufflevector <8 x i32> %i.cb, <8 x i32> %i.ch, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.df = shufflevector <8 x i32> %i.cj, <8 x i32> %i.cn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <16 x i32> %i.de, <16 x i32> %i.df, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dh = ashr <32 x i32> %i.dg, splat (i32 8)
  %i.di = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dh, <32 x i32> zeroinitializer)
  %i.dj = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.di, <32 x i32> splat (i32 65535))
  %i.dk = trunc nuw <32 x i32> %i.dj to <32 x i16>
  %i.dl = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.dk, <32 x i16> %i.dl, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ck, align 2, !tbaa !120, !alias.scope !156, !noalias !150
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = add nuw nsw i64 %i.bh, 8
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !158

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.do = extractelement <3 x i32> %i.aq, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.ee, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %3 = icmp samesign ult i64 %indvars.iv, %i.at
  tail call void @llvm.assume(i1 %3)
  %i.dp = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !120, !noalias !153
  %i.ds = zext i16 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !120, !noalias !153
  %i.dw = zext i16 %i.dv to i32                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dp ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !120, !noalias !153
  %i.ea = zext i16 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !120, !noalias !153
  %i.ed = zext i16 %i.ec to i32
  %i.ee = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx107 = shl nuw nsw i64 %i.ee, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx107 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !120, !noalias !153
  %i.ei = zext i16 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !120, !noalias !153
  %i.el = zext i16 %i.ek to i32
  %i.em = add i32 %i.aj, %i.ea                    ; 3 uses
  %i.en = add i32 %i.aj, %i.ed                    ; 3 uses
  %i.eo = add i32 %i.aj, %i.ei
  %i.ep = add i32 %i.aj, %i.el
  %i.eq = add nsw i32 %i.eo, %i.em
  %i.er = ashr i32 %i.eq, 1                       ; 2 uses
  %i.es = add nsw i32 %i.ep, %i.en
  %i.et = ashr i32 %i.es, 1                       ; 2 uses
  %i.eu = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, 3                ; 2 uses
  %i.ew = icmp samesign ule i64 %i.ev, %2
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = mul nsw i32 %i.em, -778
  %i.ey = shl nsw i32 %i.en, 11
  %i.ez = sub nsw i32 %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.eu
  %i.fb = mul nsw i32 %i.er, -778
  %i.fc = shl nsw i32 %i.et, 11
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = ashr i32 %i.fd, 12
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ev ; 2 uses
  %i.fg = ashr i32 %i.ez, 12
  %i.fh = add nsw i32 %i.dw, -512                 ; 2 uses
  %i.fi = insertelement <4 x i32> poison, i32 %i.ds, i64 0
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.fg, i64 1
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.dw, i64 3
  %i.fl = add nsw <4 x i32> %i.fk, <i32 -512, i32 0, i32 poison, i32 -512> ; 2 uses
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fn = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.fo = shufflevector <4 x i32> %i.fn, <4 x i32> %i.fl, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.em, i64 2
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.et, i64 3
  %i.fr = add <4 x i32> %i.fm, %i.fq
  %i.fs = mul nsw <4 x i32> %i.fr, %i.ar
  %i.ft = add nsw i32 %i.fe, %i.fh
  %i.fu = mul nsw i32 %i.ft, %i.as
  %i.fv = add nsw i32 %i.er, %i.fh
  %i.fw = mul nsw i32 %i.fv, %i.do
  %i.fx = ashr <4 x i32> %i.fs, splat (i32 8)
  %i.fy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fx, <4 x i32> zeroinitializer)
  %i.fz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fy, <4 x i32> splat (i32 65535))
  %i.ga = trunc nuw <4 x i32> %i.fz to <4 x i16>
  store <4 x i16> %i.ga, ptr %i.fa, align 2, !tbaa !120
  %i.gb = ashr i32 %i.fu, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gb, i32 0)
  %i.gc = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !120
  %i.gf = ashr i32 %i.fw, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 0)
  %i.gg = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.gh = trunc nuw i32 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.ee, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !159

._crit_edge:                                      ; preds = %scalar.ph
  %i.gj = zext nneg i32 %i.s to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.gl = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gm = zext nneg i32 %i.gl to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !120, !noalias !160
  %i.gp = zext i16 %i.go to i32
  %i.gq = or disjoint i64 %i.gm, 1                ; 2 uses
  %i.gr = icmp samesign ult i64 %i.gq, %i.gj
  tail call void @llvm.assume(i1 %i.gr)
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gq
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !120, !noalias !160
  %i.gu = zext i16 %i.gt to i32
  %i.gv = icmp samesign ult i32 %i.gl, %i.s
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = zext nneg i32 %i.gl to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !120, !noalias !160
  %i.ha = zext i16 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 6
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !120, !noalias !160
  %i.hd = zext i16 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !118
  %i.hg = add i32 %i.hf, -16384                   ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.hi = mul nuw nsw i32 %i.ac, 6
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hk = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hl = add nuw nsw i64 %i.hk, 3                ; 2 uses
  %i.hm = icmp samesign ule i64 %i.hl, %2
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hk
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hl
  %i.hp = add i32 %i.hg, %i.hd                    ; 2 uses
  %i.hq = load <3 x i32>, ptr %i.hj, align 8, !tbaa !119 ; 2 uses
  %i.hr = shufflevector <3 x i32> %i.hq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hs = add nsw i32 %i.gp, -512
  %i.ht = shl nsw i32 %i.hp, 11
  %i.hu = add nsw i32 %i.gu, -512                 ; 2 uses
  %i.hv = insertelement <4 x i32> poison, i32 %i.hs, i64 0
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hx = add i32 %i.hg, %i.ha                    ; 3 uses
  %i.hy = mul nsw i32 %i.hx, -778
  %i.hz = sub nsw i32 %i.hy, %i.ht
  %i.ia = ashr i32 %i.hz, 12                      ; 2 uses
  %i.ib = insertelement <4 x i32> %i.hv, i32 %i.ia, i64 1
  %i.ic = insertelement <4 x i32> %i.ib, i32 %i.hx, i64 2
  %i.id = insertelement <4 x i32> %i.ic, i32 %i.hp, i64 3 ; 2 uses
  %i.ie = shufflevector <4 x i32> %i.id, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 poison>
  %i.if = insertelement <4 x i32> %i.ie, i32 %i.hu, i64 3
  %i.ig = add <4 x i32> %i.id, %i.if
  %i.ih = mul nsw <4 x i32> %i.ig, %i.hr
  %i.ii = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %i.ij = insertelement <2 x i32> %i.ii, i32 %i.hx, i64 1
  %i.ik = insertelement <2 x i32> poison, i32 %i.hu, i64 0
  %i.il = shufflevector <2 x i32> %i.ik, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.im = add <2 x i32> %i.ij, %i.il
  %i.in = shufflevector <3 x i32> %i.hq, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.io = mul nsw <2 x i32> %i.im, %i.in
  %i.ip = ashr <4 x i32> %i.ih, splat (i32 8)
  %i.iq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ip, <4 x i32> zeroinitializer)
  %i.ir = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.iq, <4 x i32> splat (i32 65535))
  %i.is = trunc nuw <4 x i32> %i.ir to <4 x i16>
  store <4 x i16> %i.is, ptr %i.hn, align 2, !tbaa !120
  %i.it = ashr <2 x i32> %i.io, splat (i32 8)
  %i.iu = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.it, <2 x i32> zeroinitializer)
  %i.iv = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.iu, <2 x i32> splat (i32 65535))
  %i.iw = trunc nuw <2 x i32> %i.iv to <2 x i16>
  store <2 x i16> %i.iw, ptr %i.hw, align 2, !tbaa !120
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !163 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !163
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !163
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !163
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !163
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2                  ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.054.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.054.0.copyload, i64 %i.af ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !118
  %i.aj = add i32 %i.ai, -16384                   ; 2 uses
  %i.ak = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = mul i32 %i.n, %1
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr [2 x i8], ptr %i.d, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = load <3 x i32>, ptr %i.ao, align 8, !tbaa !119 ; 5 uses
  %i.ar = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !119
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.at = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ax = zext i32 %i.w to i64
  %i.ay = zext i32 %1 to i64
  %i.az = mul nuw i64 %i.ax, %i.ay
  %i.ba = shl i64 %i.az, 1
  %i.bb = shl nuw nsw i64 %wide.trip.count, 3
  %i.bc = getelementptr i8, ptr %.sroa.054.0.copyload, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep92 = getelementptr i8, ptr %i.bd, i64 8
  %bound0 = icmp ult ptr %i.an, %scevgep92
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.be = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i64 8, i64 %i.be
  %n.vec = sub nsw i64 %wide.trip.count, %i.bg    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat96 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat98 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bh = phi i64 [ 0, %vector.ph ], [ %i.ea, %vector.body ] ; 2 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bi, align 2, !tbaa !120, !alias.scope !166, !noalias !169 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec103.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec104 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec105.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bj = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.bk = zext <8 x i16> %strided.vec103.a to <8 x i32> ; 3 uses
  %i.bl = zext <8 x i16> %strided.vec104 to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec105.a to <8 x i32>
  %.idx109.a = shl i64 %index, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx109.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %wide.vec106 = load <32 x i16>, ptr %i.bo, align 2, !tbaa !120, !alias.scope !166, !noalias !169 ; 2 uses
  %strided.vec107 = shufflevector <32 x i16> %wide.vec106, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec108 = shufflevector <32 x i16> %wide.vec106, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bp = zext <8 x i16> %strided.vec107 to <8 x i32>
  %i.bq = zext <8 x i16> %strided.vec108 to <8 x i32>
  %i.br = add <8 x i32> %broadcast.splat, %i.bl   ; 4 uses
  %i.bs = add <8 x i32> %broadcast.splat, %i.bm   ; 4 uses
  %i.bt = add <8 x i32> %broadcast.splat, %i.bp
  %i.bu = add <8 x i32> %broadcast.splat, %i.bq
  %i.bv = add nsw <8 x i32> %i.bt, %i.br
  %i.bw = ashr <8 x i32> %i.bv, splat (i32 1)     ; 3 uses
  %i.bx = add nsw <8 x i32> %i.bu, %i.bs
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 3 uses
  %i.bz = mul nsw <8 x i32> %i.br, splat (i32 50)
  %i.ca = mul nsw <8 x i32> %i.bs, splat (i32 22929)
  %i.cb = add nsw <8 x i32> %i.ca, %i.bz
  %i.cc = ashr <8 x i32> %i.cb, splat (i32 12)
  %i.cd = add nsw <8 x i32> %i.cc, %i.bj
  %i.ce = mul nsw <8 x i32> %i.cd, %broadcast.splat94
  %i.cf = mul nsw <8 x i32> %i.br, splat (i32 -5640)
  %i.cg = mul <8 x i32> %i.bs, splat (i32 -11751)
  %i.ch = add <8 x i32> %i.cg, %i.cf
  %i.ci = ashr <8 x i32> %i.ch, splat (i32 12)
  %i.cj = add nsw <8 x i32> %i.ci, %i.bj
  %i.ck = mul nsw <8 x i32> %i.cj, %broadcast.splat96
  %i.cl = mul nsw <8 x i32> %i.br, splat (i32 29040)
  %i.cm = mul <8 x i32> %i.bs, splat (i32 -101)
  %i.cn = add <8 x i32> %i.cm, %i.cl
  %i.co = ashr <8 x i32> %i.cn, splat (i32 12)
  %i.cp = add nsw <8 x i32> %i.co, %i.bj
  %i.cq = mul nsw <8 x i32> %i.cp, %broadcast.splat98
  %.idx110 = mul nuw nsw i64 %i.bh, 12
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx110
  %i.cs = mul nsw <8 x i32> %i.bw, splat (i32 50)
  %i.ct = mul nsw <8 x i32> %i.by, splat (i32 22929)
  %i.cu = add nsw <8 x i32> %i.ct, %i.cs
  %i.cv = ashr <8 x i32> %i.cu, splat (i32 12)
  %i.cw = add nsw <8 x i32> %i.cv, %i.bk
  %i.cx = mul nsw <8 x i32> %i.cw, %broadcast.splat94
  %i.cy = mul nsw <8 x i32> %i.bw, splat (i32 -5640)
  %i.cz = mul <8 x i32> %i.by, splat (i32 -11751)
  %i.da = add <8 x i32> %i.cz, %i.cy
  %i.db = ashr <8 x i32> %i.da, splat (i32 12)
  %i.dc = add nsw <8 x i32> %i.db, %i.bk
  %i.dd = mul nsw <8 x i32> %i.dc, %broadcast.splat96
  %i.de = mul nsw <8 x i32> %i.bw, splat (i32 29040)
  %i.df = mul <8 x i32> %i.by, splat (i32 -101)
  %i.dg = add <8 x i32> %i.df, %i.de
  %i.dh = ashr <8 x i32> %i.dg, splat (i32 12)
  %i.di = add nsw <8 x i32> %i.dh, %i.bk
  %i.dj = mul nsw <8 x i32> %i.di, %broadcast.splat98
  %i.dk = ashr <8 x i32> %i.dd, splat (i32 8)
  %i.dl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dk, <8 x i32> zeroinitializer)
  %i.dm = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dl, <8 x i32> splat (i32 65535))
  %i.dn = trunc nuw <8 x i32> %i.dm to <8 x i16>
  %i.do = ashr <8 x i32> %i.dj, splat (i32 8)
  %i.dp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.do, <8 x i32> zeroinitializer)
  %i.dq = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dp, <8 x i32> splat (i32 65535))
  %i.dr = trunc nuw <8 x i32> %i.dq to <8 x i16>
  %i.ds = shufflevector <8 x i32> %i.ce, <8 x i32> %i.ck, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dt = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.du = shufflevector <16 x i32> %i.ds, <16 x i32> %i.dt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dv = ashr <32 x i32> %i.du, splat (i32 8)
  %i.dw = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.dv, <32 x i32> zeroinitializer)
  %i.dx = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dw, <32 x i32> splat (i32 65535))
  %i.dy = trunc nuw <32 x i32> %i.dx to <32 x i16>
  %i.dz = shufflevector <8 x i16> %i.dn, <8 x i16> %i.dr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.dy, <32 x i16> %i.dz, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cr, align 2, !tbaa !120, !alias.scope !172, !noalias !166
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = add nuw nsw i64 %i.bh, 8
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !174

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.ec = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.ed = shufflevector <2 x i32> %i.ec, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <2 x i32> <i32 poison, i32 2>
  %i.ef = insertelement <2 x i32> %i.ee, i32 %i.as, i64 0
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.eo, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %3 = icmp samesign ult i64 %indvars.iv, %i.at
  tail call void @llvm.assume(i1 %3)
  %i.eg = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.eg
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load <2 x i16>, ptr %i.el, align 2, !tbaa !120, !noalias !169
  %i.en = zext <2 x i16> %i.em to <2 x i32>
  %i.eo = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx111 = shl nuw nsw i64 %i.eo, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx111
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load <2 x i16>, ptr %i.eq, align 2, !tbaa !120, !noalias !169
  %i.es = zext <2 x i16> %i.er to <2 x i32>
  %i.et = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.eu = add nuw nsw i64 %i.et, 3                ; 2 uses
  %i.ev = icmp samesign ule i64 %i.eu, %2
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.et
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.eu
  %i.ey = load i16, ptr %i.ej, align 2, !tbaa !120, !noalias !169
  %i.ez = load <2 x i16>, ptr %i.eh, align 2, !tbaa !120, !noalias !169
  %i.fa = shufflevector <2 x i16> %i.ez, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fb = zext i16 %i.ey to i32
  %i.fc = zext <4 x i16> %i.fa to <4 x i32>
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fe = add <2 x i32> %i.ed, %i.es
  %i.ff = add <2 x i32> %i.ed, %i.en              ; 3 uses
  %i.fg = add nsw <2 x i32> %i.fe, %i.ff
  %i.fh = ashr <2 x i32> %i.fg, splat (i32 1)     ; 4 uses
  %i.fi = shufflevector <2 x i32> %i.ff, <2 x i32> %i.fh, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.fj = mul <4 x i32> %i.fi, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.fk = shufflevector <2 x i32> %i.ff, <2 x i32> %i.fh, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.fl = mul <4 x i32> %i.fk, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.fm = add <4 x i32> %i.fl, %i.fj
  %i.fn = ashr <4 x i32> %i.fm, splat (i32 12)
  %i.fo = add nsw <4 x i32> %i.fn, %i.fc
  %i.fp = mul nsw <4 x i32> %i.fo, %i.ar
  %i.fq = mul <2 x i32> %i.fh, <i32 29040, i32 -11751>
  %i.fr = shufflevector <2 x i32> %i.fq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = mul <2 x i32> %i.fh, <i32 -5640, i32 -101>
  %i.ft = add <2 x i32> %i.fs, %i.fr
  %i.fu = ashr <2 x i32> %i.ft, splat (i32 12)
  %i.fv = insertelement <2 x i32> poison, i32 %i.fb, i64 0
  %i.fw = shufflevector <2 x i32> %i.fv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fx = add nsw <2 x i32> %i.fu, %i.fw
  %i.fy = mul nsw <2 x i32> %i.fx, %i.ef
  %i.fz = ashr <4 x i32> %i.fp, splat (i32 8)
  %i.ga = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fz, <4 x i32> zeroinitializer)
  %i.gb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ga, <4 x i32> splat (i32 65535))
  %i.gc = trunc nuw <4 x i32> %i.gb to <4 x i16>
  store <4 x i16> %i.gc, ptr %i.ew, align 2, !tbaa !120
  %i.gd = ashr <2 x i32> %i.fy, splat (i32 8)
  %i.ge = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gd, <2 x i32> zeroinitializer)
  %i.gf = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ge, <2 x i32> splat (i32 65535))
  %i.gg = trunc nuw <2 x i32> %i.gf to <2 x i16>
  store <2 x i16> %i.gg, ptr %i.fd, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.eo, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !175

._crit_edge:                                      ; preds = %scalar.ph
  %i.gh = zext nneg i32 %i.s to i64
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.054.0.copyload, i64 %i.af ; 3 uses
  %i.gj = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gk
  %i.gm = or disjoint i64 %i.gk, 1                ; 2 uses
  %i.gn = icmp samesign ult i64 %i.gm, %i.gh
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gm
  %i.gp = icmp samesign ult i32 %i.gj, %i.s
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = zext nneg i32 %i.gj to i64
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !118
  %i.gv = add i32 %i.gu, -16384
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.gx = mul nuw nsw i32 %i.ac, 6
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.ha = add nuw nsw i64 %i.gz, 3                ; 2 uses
  %i.hb = icmp samesign ule i64 %i.ha, %2
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.ha
  %i.he = load i16, ptr %i.go, align 2, !tbaa !120, !noalias !176
  %i.hf = load <2 x i16>, ptr %i.gl, align 2, !tbaa !120, !noalias !176
  %i.hg = shufflevector <2 x i16> %i.hf, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hh = zext i16 %i.he to i32
  %i.hi = zext <4 x i16> %i.hg to <4 x i32>
  %i.hj = load <2 x i16>, ptr %i.gs, align 2, !tbaa !120, !noalias !176
  %i.hk = zext <2 x i16> %i.hj to <2 x i32>
  %i.hl = insertelement <2 x i32> poison, i32 %i.gv, i64 0
  %i.hm = shufflevector <2 x i32> %i.hl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hn = add <2 x i32> %i.hm, %i.hk              ; 2 uses
  %i.ho = shufflevector <2 x i32> %i.hn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hp = load <3 x i32>, ptr %i.gy, align 8, !tbaa !119 ; 2 uses
  %i.hq = shufflevector <3 x i32> %i.hp, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hr = mul <4 x i32> %i.ho, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.hs = shufflevector <2 x i32> %i.hn, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ht = mul <4 x i32> %i.hs, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.hu = add <4 x i32> %i.hr, %i.ht
  %i.hv = ashr <4 x i32> %i.hu, splat (i32 12)    ; 2 uses
  %i.hw = add nsw <4 x i32> %i.hv, %i.hi
  %i.hx = mul nsw <4 x i32> %i.hw, %i.hq
  %i.hy = ashr <4 x i32> %i.hx, splat (i32 8)
  %i.hz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hy, <4 x i32> zeroinitializer)
  %i.ia = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hz, <4 x i32> splat (i32 65535))
  %i.ib = trunc nuw <4 x i32> %i.ia to <4 x i16>
  store <4 x i16> %i.ib, ptr %i.hc, align 2, !tbaa !120
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.id = shufflevector <4 x i32> %i.hv, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ie = insertelement <2 x i32> poison, i32 %i.hh, i64 0
  %i.if = shufflevector <2 x i32> %i.ie, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ig = add nsw <2 x i32> %i.id, %i.if
  %i.ih = shufflevector <3 x i32> %i.hp, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ii = mul nsw <2 x i32> %i.ig, %i.ih
  %i.ij = ashr <2 x i32> %i.ii, splat (i32 8)
  %i.ik = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ij, <2 x i32> zeroinitializer)
  %i.il = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ik, <2 x i32> splat (i32 65535))
  %i.im = trunc nuw <2 x i32> %i.il to <2 x i16>
  store <2 x i16> %i.im, ptr %i.ic, align 2, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_422_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !179 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !179
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !179
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !179
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !179
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 3 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = and i32 %i.s, 3
  %i.z = icmp eq i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = lshr exact i32 %i.s, 2                  ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.s, 4
  tail call void @llvm.assume(i1 %i.ab)
  %.sroa.050.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ac = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.ad = icmp samesign ult i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul nuw nsw i32 %i.w, %1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !118
  %i.aj = add i32 %i.ai, -16384                   ; 5 uses
  %i.ak = icmp samesign ult i32 %1, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = mul i32 %i.n, %1
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr [2 x i8], ptr %i.d, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = load <3 x i32>, ptr %i.ao, align 8, !tbaa !119 ; 5 uses
  %i.ar = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.as = load i32, ptr %i.ap, align 4, !tbaa !119
  %2 = zext nneg i32 %i.i to i64                  ; 2 uses
  %i.at = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext i32 %i.ac to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.au = mul nuw nsw i64 %wide.trip.count, 12
  %i.av = shl nuw nsw i64 %i.am, 1
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.av
  %i.ax = zext i32 %i.w to i64
  %i.ay = zext i32 %1 to i64
  %i.az = mul nuw i64 %i.ax, %i.ay
  %i.ba = shl i64 %i.az, 1
  %i.bb = shl nuw nsw i64 %wide.trip.count, 3
  %i.bc = getelementptr i8, ptr %.sroa.050.0.copyload, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep88 = getelementptr i8, ptr %i.bd, i64 8
  %bound0 = icmp ult ptr %i.an, %scevgep88
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.be = and i64 %wide.trip.count, 7             ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i64 8, i64 %i.be
  %n.vec = sub nsw i64 %wide.trip.count, %i.bg    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat90 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat92 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat94 = shufflevector <3 x i32> %i.aq, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bh = phi i64 [ 0, %vector.ph ], [ %i.dk, %vector.body ] ; 2 uses
  %.idx = shl nuw nsw i64 %index, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %wide.vec = load <32 x i16>, ptr %i.bi, align 2, !tbaa !120, !alias.scope !182, !noalias !185 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec99.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec100 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec101.a = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.bj = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.bk = zext <8 x i16> %strided.vec99.a to <8 x i32> ; 3 uses
  %i.bl = zext <8 x i16> %strided.vec100 to <8 x i32>
  %i.bm = zext <8 x i16> %strided.vec101.a to <8 x i32>
  %.idx105.a = shl i64 %index, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx105.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %wide.vec102 = load <32 x i16>, ptr %i.bo, align 2, !tbaa !120, !alias.scope !182, !noalias !185 ; 2 uses
  %strided.vec103 = shufflevector <32 x i16> %wide.vec102, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec104 = shufflevector <32 x i16> %wide.vec102, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bp = zext <8 x i16> %strided.vec103 to <8 x i32>
  %i.bq = zext <8 x i16> %strided.vec104 to <8 x i32>
  %i.br = add <8 x i32> %broadcast.splat, %i.bl   ; 3 uses
  %i.bs = add <8 x i32> %broadcast.splat, %i.bm   ; 3 uses
  %i.bt = add <8 x i32> %broadcast.splat, %i.bp
  %i.bu = add <8 x i32> %broadcast.splat, %i.bq
  %i.bv = add nsw <8 x i32> %i.bt, %i.br
  %i.bw = ashr <8 x i32> %i.bv, splat (i32 1)     ; 2 uses
  %i.bx = add nsw <8 x i32> %i.bu, %i.bs
  %i.by = ashr <8 x i32> %i.bx, splat (i32 1)     ; 2 uses
  %i.bz = add nsw <8 x i32> %i.bs, %i.bj
  %i.ca = mul nsw <8 x i32> %i.bz, %broadcast.splat90
  %i.cb = mul nsw <8 x i32> %i.br, splat (i32 -778)
  %i.cc = shl nsw <8 x i32> %i.bs, splat (i32 11)
  %i.cd = sub nsw <8 x i32> %i.cb, %i.cc
  %i.ce = ashr <8 x i32> %i.cd, splat (i32 12)
  %i.cf = add nsw <8 x i32> %i.ce, %i.bj
  %i.cg = mul nsw <8 x i32> %i.cf, %broadcast.splat92
  %i.ch = add nsw <8 x i32> %i.br, %i.bj
  %i.ci = mul nsw <8 x i32> %i.ch, %broadcast.splat94
  %.idx106 = mul nuw nsw i64 %i.bh, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx106
  %i.ck = add nsw <8 x i32> %i.by, %i.bk
  %i.cl = mul nsw <8 x i32> %i.ck, %broadcast.splat90
  %i.cm = mul nsw <8 x i32> %i.bw, splat (i32 -778)
  %i.cn = shl nsw <8 x i32> %i.by, splat (i32 11)
  %i.co = sub nsw <8 x i32> %i.cm, %i.cn
  %i.cp = ashr <8 x i32> %i.co, splat (i32 12)
  %i.cq = add nsw <8 x i32> %i.cp, %i.bk
  %i.cr = mul nsw <8 x i32> %i.cq, %broadcast.splat92
  %i.cs = add nsw <8 x i32> %i.bw, %i.bk
  %i.ct = mul nsw <8 x i32> %i.cs, %broadcast.splat94
  %i.cu = ashr <8 x i32> %i.cr, splat (i32 8)
  %i.cv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cu, <8 x i32> zeroinitializer)
  %i.cw = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cv, <8 x i32> splat (i32 65535))
  %i.cx = trunc nuw <8 x i32> %i.cw to <8 x i16>
  %i.cy = ashr <8 x i32> %i.ct, splat (i32 8)
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.da = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cz, <8 x i32> splat (i32 65535))
  %i.db = trunc nuw <8 x i32> %i.da to <8 x i16>
  %i.dc = shufflevector <8 x i32> %i.ca, <8 x i32> %i.cg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dd = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.de = shufflevector <16 x i32> %i.dc, <16 x i32> %i.dd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.df = ashr <32 x i32> %i.de, splat (i32 8)
  %i.dg = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.df, <32 x i32> zeroinitializer)
  %i.dh = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.dg, <32 x i32> splat (i32 65535))
  %i.di = trunc nuw <32 x i32> %i.dh to <32 x i16>
  %i.dj = shufflevector <8 x i16> %i.cx, <8 x i16> %i.db, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.di, <32 x i16> %i.dj, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.cj, align 2, !tbaa !120, !alias.scope !188, !noalias !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = add nuw nsw i64 %i.bh, 8
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %scalar.ph.preheader, label %vector.body, !llvm.loop !190

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.dm = extractelement <3 x i32> %i.aq, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.dy, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %3 = icmp samesign ult i64 %indvars.iv, %i.at
  tail call void @llvm.assume(i1 %3)
  %i.dn = shl nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dn
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.dn ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !120, !noalias !185
  %i.du = zext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 6
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !120, !noalias !185
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %.idx107 = shl nuw nsw i64 %i.dy, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx107 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !120, !noalias !185
  %i.ec = zext i16 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !120, !noalias !185
  %i.ef = zext i16 %i.ee to i32
  %i.eg = add i32 %i.aj, %i.ec
  %i.eh = add i32 %i.aj, %i.ef
  %i.ei = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.ek = icmp samesign ule i64 %i.ej, %2
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ei
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ej ; 2 uses
  %i.en = load i16, ptr %i.dq, align 2, !tbaa !120, !noalias !185
  %i.eo = load <2 x i16>, ptr %i.do, align 2, !tbaa !120, !noalias !185
  %i.ep = shufflevector <2 x i16> %i.eo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eq = zext i16 %i.en to i32                   ; 2 uses
  %i.er = zext <4 x i16> %i.ep to <4 x i32>
  %i.es = add i32 %i.aj, %i.du                    ; 3 uses
  %i.et = add i32 %i.aj, %i.dx                    ; 3 uses
  %i.eu = add nsw i32 %i.eg, %i.es
  %i.ev = ashr i32 %i.eu, 1                       ; 2 uses
  %i.ew = add nsw i32 %i.eh, %i.et
  %i.ex = ashr i32 %i.ew, 1                       ; 2 uses
  %i.ey = mul nsw i32 %i.es, -778
  %i.ez = shl nsw i32 %i.et, 11
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = ashr i32 %i.fa, 12
  %i.fc = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.fb, i64 1
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.es, i64 2
  %i.ff = insertelement <4 x i32> %i.fe, i32 %i.ex, i64 3
  %i.fg = add nsw <4 x i32> %i.ff, %i.er
  %i.fh = mul nsw <4 x i32> %i.fg, %i.ar
  %i.fi = mul nsw i32 %i.ev, -778
  %i.fj = shl nsw i32 %i.ex, 11
  %i.fk = sub nsw i32 %i.fi, %i.fj
  %i.fl = ashr i32 %i.fk, 12
  %i.fm = add nsw i32 %i.fl, %i.eq
  %i.fn = mul nsw i32 %i.fm, %i.as
  %i.fo = add nsw i32 %i.ev, %i.eq
  %i.fp = mul nsw i32 %i.fo, %i.dm
  %i.fq = ashr <4 x i32> %i.fh, splat (i32 8)
  %i.fr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fq, <4 x i32> zeroinitializer)
  %i.fs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fr, <4 x i32> splat (i32 65535))
  %i.ft = trunc nuw <4 x i32> %i.fs to <4 x i16>
  store <4 x i16> %i.ft, ptr %i.el, align 2, !tbaa !120
  %i.fu = ashr i32 %i.fn, 8
  %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %i.fv = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i3.i.i.1.i, i32 65535)
  %i.fw = trunc nuw i32 %i.fv to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !120
  %i.fy = ashr i32 %i.fp, 8
  %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 0)
  %i.fz = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i5.i.i.1.i, i32 65535)
  %i.ga = trunc nuw i32 %i.fz to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.dy, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !191

._crit_edge:                                      ; preds = %scalar.ph
  %i.gc = zext nneg i32 %i.s to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.050.0.copyload, i64 %i.af ; 3 uses
  %i.ge = shl nuw nsw i32 %i.ac, 2                ; 3 uses
  %i.gf = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gf
  %i.gh = or disjoint i64 %i.gf, 1                ; 2 uses
  %i.gi = icmp samesign ult i64 %i.gh, %i.gc
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gh
  %i.gk = icmp samesign ult i32 %i.ge, %i.s
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = zext nneg i32 %i.ge to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.gl ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !120, !noalias !192
  %i.gp = zext i16 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !120, !noalias !192
  %i.gs = zext i16 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !118
  %i.gv = add i32 %i.gu, -16384                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.gx = mul nuw nsw i32 %i.ac, 6
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gz = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.ha = add nuw nsw i64 %i.gz, 3                ; 2 uses
  %i.hb = icmp samesign ule i64 %i.ha, %2
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.gz
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %i.ha
  %i.he = load i16, ptr %i.gj, align 2, !tbaa !120, !noalias !192
  %i.hf = load <2 x i16>, ptr %i.gg, align 2, !tbaa !120, !noalias !192
  %i.hg = shufflevector <2 x i16> %i.hf, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hh = zext i16 %i.he to i32
  %i.hi = zext <4 x i16> %i.hg to <4 x i32>
  %i.hj = add i32 %i.gv, %i.gs                    ; 2 uses
  %i.hk = load <3 x i32>, ptr %i.gy, align 8, !tbaa !119 ; 2 uses
  %i.hl = shufflevector <3 x i32> %i.hk, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hm = shl nsw i32 %i.hj, 11
  %i.hn = insertelement <4 x i32> poison, i32 %i.hj, i64 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hp = add i32 %i.gv, %i.gp                    ; 3 uses
  %i.hq = mul nsw i32 %i.hp, -778
  %i.hr = sub nsw i32 %i.hq, %i.hm
  %i.hs = ashr i32 %i.hr, 12                      ; 2 uses
  %i.ht = insertelement <4 x i32> %i.hn, i32 %i.hs, i64 1
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hp, i64 2
  %i.hv = shufflevector <4 x i32> %i.hu, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hw = add nsw <4 x i32> %i.hv, %i.hi
  %i.hx = mul nsw <4 x i32> %i.hw, %i.hl
  %i.hy = insertelement <2 x i32> poison, i32 %i.hs, i64 0
  %i.hz = insertelement <2 x i32> %i.hy, i32 %i.hp, i64 1
  %i.ia = insertelement <2 x i32> poison, i32 %i.hh, i64 0
  %i.ib = shufflevector <2 x i32> %i.ia, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ic = add nsw <2 x i32> %i.hz, %i.ib
  %i.id = shufflevector <3 x i32> %i.hk, <3 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.ie = mul nsw <2 x i32> %i.ic, %i.id
  %i.if = ashr <4 x i32> %i.hx, splat (i32 8)
  %i.ig = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.if, <4 x i32> zeroinitializer)
  %i.ih = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ig, <4 x i32> splat (i32 65535))
  %i.ii = trunc nuw <4 x i32> %i.ih to <4 x i16>
  store <4 x i16> %i.ii, ptr %i.hc, align 2, !tbaa !120
  %i.ij = ashr <2 x i32> %i.ie, splat (i32 8)
  %i.ik = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ij, <2 x i32> zeroinitializer)
  %i.il = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ik, <2 x i32> splat (i32 65535))
  %i.im = trunc nuw <2 x i32> %i.il to <2 x i16>
  store <2 x i16> %i.im, ptr %i.ho, align 2, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !195 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !195
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !195 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !195
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = udiv i32 %i.s, 6                         ; 2 uses
  %i.z = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.0114.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 7 uses
  %i.aa = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !118
  %i.ae = add i32 %i.ad, -16384                   ; 3 uses
  %i.af = shl nsw i32 %1, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load <3 x i32>, ptr %i.ag, align 8, !tbaa !119 ; 5 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !119
  %i.ak = zext nneg i32 %invariant.op to i64
  %i.al = sext i32 %1 to i64                      ; 3 uses
  %2 = zext nneg i32 %i.u to i64
  %i.am = zext i32 %i.w to i64                    ; 4 uses
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = zext i32 %i.af to i64                   ; 3 uses
  %i.ap = zext i32 %i.n to i64                    ; 4 uses
  %i.aq = zext nneg i32 %i.k to i64
  %i.ar = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %i.as = mul nsw i64 %i.al, %i.am                ; 2 uses
  %i.at = getelementptr [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.as ; 20 uses
  %i.au = add nuw nsw i64 %i.al, 1                ; 3 uses
  %i.av = icmp samesign ult i64 %i.au, %2
  tail call void @llvm.assume(i1 %i.av), !noalias !198
  %i.aw = mul nuw nsw i64 %i.au, %i.am            ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.aw ; 4 uses
  %i.ay = icmp ult i32 %i.af, %i.k
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = mul nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 16 uses
  %i.bb = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.aq
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw i64 %i.bb, %i.ap                ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %i.d, i64 %i.bd ; 16 uses
  %min.iters.check = icmp ult i32 %i.ab, 33
  br i1 %min.iters.check, label %.preheader215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = mul nuw i64 %i.ap, %i.ao
  %i.bg = shl i64 %i.bf, 1                        ; 8 uses
  %i.bh = mul nuw nsw i64 %wide.trip.count, 12    ; 8 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bj, i64 -10 ; 13 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep544 = getelementptr i8, ptr %i.bk, i64 2 ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep545 = getelementptr i8, ptr %i.bl, i64 -8 ; 13 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep546 = getelementptr i8, ptr %i.bm, i64 4 ; 13 uses
  %i.bn = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep547 = getelementptr i8, ptr %i.bo, i64 -6 ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep548 = getelementptr i8, ptr %i.bp, i64 6 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep549 = getelementptr i8, ptr %i.bq, i64 -4 ; 13 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep550 = getelementptr i8, ptr %i.br, i64 8 ; 13 uses
  %i.bs = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bs
  %scevgep551 = getelementptr i8, ptr %i.bt, i64 -2 ; 13 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep552 = getelementptr i8, ptr %i.bu, i64 10 ; 13 uses
  %scevgep553 = getelementptr i8, ptr %i.d, i64 %i.bs ; 13 uses
  %i.bv = mul nuw i64 %i.bb, %i.ap
  %i.bw = shl i64 %i.bv, 1                        ; 8 uses
  %i.bx = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep554 = getelementptr i8, ptr %i.by, i64 -10 ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep555 = getelementptr i8, ptr %i.bz, i64 2 ; 13 uses
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep556 = getelementptr i8, ptr %i.ca, i64 -8 ; 13 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep557 = getelementptr i8, ptr %i.cb, i64 4 ; 13 uses
  %i.cc = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep558 = getelementptr i8, ptr %i.cd, i64 -6 ; 13 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep559 = getelementptr i8, ptr %i.ce, i64 6 ; 13 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep560 = getelementptr i8, ptr %i.cf, i64 -4 ; 13 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep561 = getelementptr i8, ptr %i.cg, i64 8 ; 13 uses
  %i.ch = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ch
  %scevgep562 = getelementptr i8, ptr %i.ci, i64 -2 ; 13 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep563 = getelementptr i8, ptr %i.cj, i64 10 ; 13 uses
  %scevgep564 = getelementptr i8, ptr %i.d, i64 %i.ch ; 13 uses
  %i.ck = mul i64 %i.au, %i.am
  %i.cl = shl i64 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cl
  %scevgep565 = getelementptr i8, ptr %i.cm, i64 8 ; 12 uses
  %i.cn = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.bh
  %scevgep566 = getelementptr i8, ptr %i.co, i64 12 ; 12 uses
  %i.cp = mul nsw i64 %i.al, %i.am
  %i.cq = shl i64 %i.cp, 1
  %i.cr = getelementptr i8, ptr %.sroa.0114.0.copyload, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bh
  %scevgep567 = getelementptr i8, ptr %i.cs, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.ba, %scevgep545
  %bound1 = icmp ult ptr %scevgep544, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0568 = icmp ult ptr %i.ba, %scevgep547
  %bound1569 = icmp ult ptr %scevgep546, %scevgep
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx = or i1 %found.conflict, %found.conflict570
  %bound0571 = icmp ult ptr %i.ba, %scevgep549
  %bound1572 = icmp ult ptr %scevgep548, %scevgep
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %conflict.rdx, %found.conflict573
  %bound0575 = icmp ult ptr %i.ba, %scevgep551
  %bound1576 = icmp ult ptr %scevgep550, %scevgep
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  %bound0579 = icmp ult ptr %i.ba, %scevgep553
  %bound1580 = icmp ult ptr %scevgep552, %scevgep
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx582 = or i1 %conflict.rdx578, %found.conflict581
  %bound0583 = icmp ult ptr %i.ba, %scevgep554
  %bound1584 = icmp ult ptr %i.be, %scevgep
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx582, %found.conflict585
  %bound0587 = icmp ult ptr %i.ba, %scevgep556
  %bound1588 = icmp ult ptr %scevgep555, %scevgep
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %conflict.rdx586, %found.conflict589
  %bound0591 = icmp ult ptr %i.ba, %scevgep558
  %bound1592 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict593 = and i1 %bound0591, %bound1592
  %conflict.rdx594 = or i1 %conflict.rdx590, %found.conflict593
  %bound0595 = icmp ult ptr %i.ba, %scevgep560
  %bound1596 = icmp ult ptr %scevgep559, %scevgep
  %found.conflict597 = and i1 %bound0595, %bound1596
  %conflict.rdx598 = or i1 %conflict.rdx594, %found.conflict597
  %bound0599 = icmp ult ptr %i.ba, %scevgep562
  %bound1600 = icmp ult ptr %scevgep561, %scevgep
  %found.conflict601 = and i1 %bound0599, %bound1600
  %conflict.rdx602 = or i1 %conflict.rdx598, %found.conflict601
  %bound0603 = icmp ult ptr %i.ba, %scevgep564
  %bound1604 = icmp ult ptr %scevgep563, %scevgep
  %found.conflict605 = and i1 %bound0603, %bound1604
  %conflict.rdx606 = or i1 %conflict.rdx602, %found.conflict605
  %bound0607 = icmp ult ptr %i.ba, %scevgep566
  %bound1608 = icmp ult ptr %scevgep565, %scevgep
  %found.conflict609 = and i1 %bound0607, %bound1608
  %conflict.rdx610 = or i1 %conflict.rdx606, %found.conflict609
  %bound0611 = icmp ult ptr %i.ba, %scevgep567
  %bound1612 = icmp ult ptr %i.at, %scevgep
  %found.conflict613 = and i1 %bound0611, %bound1612
  %conflict.rdx614 = or i1 %conflict.rdx610, %found.conflict613
  %bound0615 = icmp ult ptr %scevgep544, %scevgep547
  %bound1616 = icmp ult ptr %scevgep546, %scevgep545
  %found.conflict617 = and i1 %bound0615, %bound1616
  %conflict.rdx618 = or i1 %conflict.rdx614, %found.conflict617
  %bound0619 = icmp ult ptr %scevgep544, %scevgep549
  %bound1620 = icmp ult ptr %scevgep548, %scevgep545
  %found.conflict621 = and i1 %bound0619, %bound1620
  %conflict.rdx622 = or i1 %conflict.rdx618, %found.conflict621
  %bound0623 = icmp ult ptr %scevgep544, %scevgep551
  %bound1624 = icmp ult ptr %scevgep550, %scevgep545
  %found.conflict625 = and i1 %bound0623, %bound1624
  %conflict.rdx626 = or i1 %conflict.rdx622, %found.conflict625
  %bound0627 = icmp ult ptr %scevgep544, %scevgep553
  %bound1628 = icmp ult ptr %scevgep552, %scevgep545
  %found.conflict629 = and i1 %bound0627, %bound1628
  %conflict.rdx630 = or i1 %conflict.rdx626, %found.conflict629
  %bound0631 = icmp ult ptr %scevgep544, %scevgep554
  %bound1632 = icmp ult ptr %i.be, %scevgep545
  %found.conflict633 = and i1 %bound0631, %bound1632
  %conflict.rdx634 = or i1 %conflict.rdx630, %found.conflict633
  %bound0635 = icmp ult ptr %scevgep544, %scevgep556
  %bound1636 = icmp ult ptr %scevgep555, %scevgep545
  %found.conflict637 = and i1 %bound0635, %bound1636
  %conflict.rdx638 = or i1 %conflict.rdx634, %found.conflict637
  %bound0639 = icmp ult ptr %scevgep544, %scevgep558
  %bound1640 = icmp ult ptr %scevgep557, %scevgep545
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx642 = or i1 %conflict.rdx638, %found.conflict641
  %bound0643 = icmp ult ptr %scevgep544, %scevgep560
  %bound1644 = icmp ult ptr %scevgep559, %scevgep545
  %found.conflict645 = and i1 %bound0643, %bound1644
  %conflict.rdx646 = or i1 %conflict.rdx642, %found.conflict645
  %bound0647 = icmp ult ptr %scevgep544, %scevgep562
  %bound1648 = icmp ult ptr %scevgep561, %scevgep545
  %found.conflict649 = and i1 %bound0647, %bound1648
  %conflict.rdx650 = or i1 %conflict.rdx646, %found.conflict649
  %bound0651 = icmp ult ptr %scevgep544, %scevgep564
  %bound1652 = icmp ult ptr %scevgep563, %scevgep545
  %found.conflict653 = and i1 %bound0651, %bound1652
  %conflict.rdx654 = or i1 %conflict.rdx650, %found.conflict653
  %bound0655 = icmp ult ptr %scevgep544, %scevgep566
  %bound1656 = icmp ult ptr %scevgep565, %scevgep545
  %found.conflict657 = and i1 %bound0655, %bound1656
  %conflict.rdx658 = or i1 %conflict.rdx654, %found.conflict657
  %bound0659 = icmp ult ptr %scevgep544, %scevgep567
  %bound1660 = icmp ult ptr %i.at, %scevgep545
  %found.conflict661 = and i1 %bound0659, %bound1660
  %conflict.rdx662 = or i1 %conflict.rdx658, %found.conflict661
  %bound0663 = icmp ult ptr %scevgep546, %scevgep549
  %bound1664 = icmp ult ptr %scevgep548, %scevgep547
  %found.conflict665 = and i1 %bound0663, %bound1664
  %conflict.rdx666 = or i1 %conflict.rdx662, %found.conflict665
  %bound0667 = icmp ult ptr %scevgep546, %scevgep551
  %bound1668 = icmp ult ptr %scevgep550, %scevgep547
  %found.conflict669 = and i1 %bound0667, %bound1668
  %conflict.rdx670 = or i1 %conflict.rdx666, %found.conflict669
  %bound0671 = icmp ult ptr %scevgep546, %scevgep553
  %bound1672 = icmp ult ptr %scevgep552, %scevgep547
  %found.conflict673 = and i1 %bound0671, %bound1672
  %conflict.rdx674 = or i1 %conflict.rdx670, %found.conflict673
  %bound0675 = icmp ult ptr %scevgep546, %scevgep554
  %bound1676 = icmp ult ptr %i.be, %scevgep547
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674, %found.conflict677
  %bound0679 = icmp ult ptr %scevgep546, %scevgep556
  %bound1680 = icmp ult ptr %scevgep555, %scevgep547
  %found.conflict681 = and i1 %bound0679, %bound1680
  %conflict.rdx682 = or i1 %conflict.rdx678, %found.conflict681
  %bound0683 = icmp ult ptr %scevgep546, %scevgep558
  %bound1684 = icmp ult ptr %scevgep557, %scevgep547
  %found.conflict685 = and i1 %bound0683, %bound1684
  %conflict.rdx686 = or i1 %conflict.rdx682, %found.conflict685
  %bound0687 = icmp ult ptr %scevgep546, %scevgep560
  %bound1688 = icmp ult ptr %scevgep559, %scevgep547
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx690 = or i1 %conflict.rdx686, %found.conflict689
  %bound0691 = icmp ult ptr %scevgep546, %scevgep562
  %bound1692 = icmp ult ptr %scevgep561, %scevgep547
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx694 = or i1 %conflict.rdx690, %found.conflict693
  %bound0695 = icmp ult ptr %scevgep546, %scevgep564
  %bound1696 = icmp ult ptr %scevgep563, %scevgep547
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %conflict.rdx694, %found.conflict697
  %bound0699 = icmp ult ptr %scevgep546, %scevgep566
  %bound1700 = icmp ult ptr %scevgep565, %scevgep547
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698, %found.conflict701
  %bound0703 = icmp ult ptr %scevgep546, %scevgep567
  %bound1704 = icmp ult ptr %i.at, %scevgep547
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %bound0707 = icmp ult ptr %scevgep548, %scevgep551
  %bound1708 = icmp ult ptr %scevgep550, %scevgep549
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  %bound0711 = icmp ult ptr %scevgep548, %scevgep553
  %bound1712 = icmp ult ptr %scevgep552, %scevgep549
  %found.conflict713 = and i1 %bound0711, %bound1712
  %conflict.rdx714 = or i1 %conflict.rdx710, %found.conflict713
  %bound0715 = icmp ult ptr %scevgep548, %scevgep554
  %bound1716 = icmp ult ptr %i.be, %scevgep549
  %found.conflict717 = and i1 %bound0715, %bound1716
  %conflict.rdx718 = or i1 %conflict.rdx714, %found.conflict717
  %bound0719 = icmp ult ptr %scevgep548, %scevgep556
  %bound1720 = icmp ult ptr %scevgep555, %scevgep549
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %conflict.rdx718, %found.conflict721
  %bound0723 = icmp ult ptr %scevgep548, %scevgep558
  %bound1724 = icmp ult ptr %scevgep557, %scevgep549
  %found.conflict725 = and i1 %bound0723, %bound1724
  %conflict.rdx726 = or i1 %conflict.rdx722, %found.conflict725
  %bound0727 = icmp ult ptr %scevgep548, %scevgep560
  %bound1728 = icmp ult ptr %scevgep559, %scevgep549
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx730 = or i1 %conflict.rdx726, %found.conflict729
  %bound0731 = icmp ult ptr %scevgep548, %scevgep562
  %bound1732 = icmp ult ptr %scevgep561, %scevgep549
  %found.conflict733 = and i1 %bound0731, %bound1732
  %conflict.rdx734 = or i1 %conflict.rdx730, %found.conflict733
  %bound0735 = icmp ult ptr %scevgep548, %scevgep564
  %bound1736 = icmp ult ptr %scevgep563, %scevgep549
  %found.conflict737 = and i1 %bound0735, %bound1736
  %conflict.rdx738 = or i1 %conflict.rdx734, %found.conflict737
  %bound0739 = icmp ult ptr %scevgep548, %scevgep566
  %bound1740 = icmp ult ptr %scevgep565, %scevgep549
  %found.conflict741 = and i1 %bound0739, %bound1740
  %conflict.rdx742 = or i1 %conflict.rdx738, %found.conflict741
  %bound0743 = icmp ult ptr %scevgep548, %scevgep567
  %bound1744 = icmp ult ptr %i.at, %scevgep549
  %found.conflict745 = and i1 %bound0743, %bound1744
  %conflict.rdx746 = or i1 %conflict.rdx742, %found.conflict745
  %bound0747 = icmp ult ptr %scevgep550, %scevgep553
  %bound1748 = icmp ult ptr %scevgep552, %scevgep551
  %found.conflict749 = and i1 %bound0747, %bound1748
  %conflict.rdx750 = or i1 %conflict.rdx746, %found.conflict749
  %bound0751 = icmp ult ptr %scevgep550, %scevgep554
  %bound1752 = icmp ult ptr %i.be, %scevgep551
  %found.conflict753 = and i1 %bound0751, %bound1752
  %conflict.rdx754 = or i1 %conflict.rdx750, %found.conflict753
  %bound0755 = icmp ult ptr %scevgep550, %scevgep556
  %bound1756 = icmp ult ptr %scevgep555, %scevgep551
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx758 = or i1 %conflict.rdx754, %found.conflict757
  %bound0759 = icmp ult ptr %scevgep550, %scevgep558
end_hunk_0
begin_hunk_1_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi1EEEvi:.lr.ph
  %i.ct = and i64 %wide.trip.count, 7             ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec = sub nsw i64 %wide.trip.count, %i.cv    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splat924 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat926 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat928 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cw = phi i64 [ 0, %vector.ph ], [ %i.ip, %vector.body ] ; 3 uses
  %i.cx = mul nuw nsw i64 %i.cw, 6                ; 4 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cx
  %wide.vec = load <48 x i16>, ptr %i.cy, align 2, !tbaa !120, !alias.scope !201, !noalias !198 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec935.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec936.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec937.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec938 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec939.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.cz = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.da = zext <8 x i16> %strided.vec935.a to <8 x i32> ; 3 uses
  %i.db = zext <8 x i16> %strided.vec936.a to <8 x i32> ; 3 uses
  %i.dc = zext <8 x i16> %strided.vec937.a to <8 x i32> ; 3 uses
  %i.dd = zext <8 x i16> %strided.vec938 to <8 x i32>
  %i.de = zext <8 x i16> %strided.vec939.a to <8 x i32>
  %i.df = mul nuw i64 %i.cw, 6
  %i.dg = or disjoint i64 %i.df, 10               ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dg
  %wide.vec940 = load <48 x i16>, ptr %i.dh, align 2, !tbaa !120, !alias.scope !201, !noalias !198 ; 2 uses
  %strided.vec941 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec942.a = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.di = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.dj = zext <8 x i16> %strided.vec942.a to <8 x i32>
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.cx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.vec943 = load <48 x i16>, ptr %i.dl, align 2, !tbaa !120, !alias.scope !204, !noalias !198 ; 2 uses
  %strided.vec944 = shufflevector <48 x i16> %wide.vec943, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec945.a = shufflevector <48 x i16> %wide.vec943, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dm = zext <8 x i16> %strided.vec944 to <8 x i32>
  %i.dn = zext <8 x i16> %strided.vec945.a to <8 x i32>
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.dg
  %wide.vec946 = load <48 x i16>, ptr %i.do, align 2, !tbaa !120, !alias.scope !204, !noalias !198 ; 2 uses
  %strided.vec947 = shufflevector <48 x i16> %wide.vec946, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec948 = shufflevector <48 x i16> %wide.vec946, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dp = zext <8 x i16> %strided.vec947 to <8 x i32>
  %i.dq = zext <8 x i16> %strided.vec948 to <8 x i32>
  %i.dr = add <8 x i32> %broadcast.splat, %i.dd   ; 5 uses
  %i.ds = add <8 x i32> %broadcast.splat, %i.de   ; 5 uses
  %i.dt = add <8 x i32> %broadcast.splat, %i.di
  %i.du = add <8 x i32> %broadcast.splat, %i.dj
  %i.dv = add <8 x i32> %broadcast.splat, %i.dm   ; 2 uses
  %i.dw = add <8 x i32> %broadcast.splat, %i.dn   ; 2 uses
  %i.dx = add <8 x i32> %broadcast.splat, %i.dp
  %i.dy = add <8 x i32> %broadcast.splat, %i.dq
  %i.dz = add nsw <8 x i32> %i.dt, %i.dr          ; 2 uses
  %i.ea = ashr <8 x i32> %i.dz, splat (i32 1)     ; 3 uses
  %i.eb = add nsw <8 x i32> %i.du, %i.ds          ; 2 uses
  %i.ec = ashr <8 x i32> %i.eb, splat (i32 1)     ; 3 uses
  %i.ed = add nsw <8 x i32> %i.dv, %i.dr
  %i.ee = ashr <8 x i32> %i.ed, splat (i32 1)     ; 3 uses
  %i.ef = add nsw <8 x i32> %i.dw, %i.ds
  %i.eg = ashr <8 x i32> %i.ef, splat (i32 1)     ; 3 uses
  %i.eh = add nsw <8 x i32> %i.dv, %i.dz
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = ashr <8 x i32> %i.ei, splat (i32 2)     ; 3 uses
  %i.ek = add nsw <8 x i32> %i.dw, %i.eb
  %i.el = add nsw <8 x i32> %i.ek, %i.dy
  %i.em = ashr <8 x i32> %i.el, splat (i32 2)     ; 3 uses
  %i.en = mul nsw <8 x i32> %i.dr, splat (i32 50)
  %i.eo = mul nsw <8 x i32> %i.ds, splat (i32 22929)
  %i.ep = add nsw <8 x i32> %i.eo, %i.en
  %i.eq = ashr <8 x i32> %i.ep, splat (i32 12)
  %i.er = add nsw <8 x i32> %i.eq, %i.cz
  %i.es = mul nsw <8 x i32> %i.er, %broadcast.splat924
  %i.et = mul nsw <8 x i32> %i.dr, splat (i32 -5640)
  %i.eu = mul <8 x i32> %i.ds, splat (i32 -11751)
  %i.ev = add <8 x i32> %i.eu, %i.et
  %i.ew = ashr <8 x i32> %i.ev, splat (i32 12)
  %i.ex = add nsw <8 x i32> %i.ew, %i.cz
  %i.ey = mul nsw <8 x i32> %i.ex, %broadcast.splat926
  %i.ez = mul nsw <8 x i32> %i.dr, splat (i32 29040)
  %i.fa = mul <8 x i32> %i.ds, splat (i32 -101)
  %i.fb = add <8 x i32> %i.fa, %i.ez
  %i.fc = ashr <8 x i32> %i.fb, splat (i32 12)
  %i.fd = add nsw <8 x i32> %i.fc, %i.cz
  %i.fe = mul nsw <8 x i32> %i.fd, %broadcast.splat928
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.cx
  %i.fg = mul nsw <8 x i32> %i.ea, splat (i32 50)
  %i.fh = mul nsw <8 x i32> %i.ec, splat (i32 22929)
  %i.fi = add nsw <8 x i32> %i.fh, %i.fg
  %i.fj = ashr <8 x i32> %i.fi, splat (i32 12)
  %i.fk = add nsw <8 x i32> %i.fj, %i.da
  %i.fl = mul nsw <8 x i32> %i.fk, %broadcast.splat924
  %i.fm = mul nsw <8 x i32> %i.ea, splat (i32 -5640)
  %i.fn = mul <8 x i32> %i.ec, splat (i32 -11751)
  %i.fo = add <8 x i32> %i.fn, %i.fm
  %i.fp = ashr <8 x i32> %i.fo, splat (i32 12)
  %i.fq = add nsw <8 x i32> %i.fp, %i.da
  %i.fr = mul nsw <8 x i32> %i.fq, %broadcast.splat926
  %i.fs = mul nsw <8 x i32> %i.ea, splat (i32 29040)
  %i.ft = mul <8 x i32> %i.ec, splat (i32 -101)
  %i.fu = add <8 x i32> %i.ft, %i.fs
  %i.fv = ashr <8 x i32> %i.fu, splat (i32 12)
  %i.fw = add nsw <8 x i32> %i.fv, %i.da
  %i.fx = mul nsw <8 x i32> %i.fw, %broadcast.splat928
  %i.fy = ashr <8 x i32> %i.fr, splat (i32 8)
  %i.fz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fy, <8 x i32> zeroinitializer)
  %i.ga = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fz, <8 x i32> splat (i32 65535))
  %i.gb = trunc nuw <8 x i32> %i.ga to <8 x i16>
  %i.gc = ashr <8 x i32> %i.fx, splat (i32 8)
  %i.gd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gc, <8 x i32> zeroinitializer)
  %i.ge = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gd, <8 x i32> splat (i32 65535))
  %i.gf = trunc nuw <8 x i32> %i.ge to <8 x i16>
  %i.gg = shufflevector <8 x i32> %i.es, <8 x i32> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gh = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gi = shufflevector <16 x i32> %i.gg, <16 x i32> %i.gh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gj = ashr <32 x i32> %i.gi, splat (i32 8)
  %i.gk = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.gj, <32 x i32> zeroinitializer)
  %i.gl = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.gk, <32 x i32> splat (i32 65535))
  %i.gm = trunc nuw <32 x i32> %i.gl to <32 x i16>
  %i.gn = shufflevector <8 x i16> %i.gb, <8 x i16> %i.gf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.gm, <32 x i16> %i.gn, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ff, align 2, !tbaa !120
  %i.go = mul nsw <8 x i32> %i.ee, splat (i32 50)
  %i.gp = mul nsw <8 x i32> %i.eg, splat (i32 22929)
  %i.gq = add nsw <8 x i32> %i.gp, %i.go
  %i.gr = ashr <8 x i32> %i.gq, splat (i32 12)
  %i.gs = add nsw <8 x i32> %i.gr, %i.db
  %i.gt = mul nsw <8 x i32> %i.gs, %broadcast.splat924
  %i.gu = mul nsw <8 x i32> %i.ee, splat (i32 -5640)
  %i.gv = mul <8 x i32> %i.eg, splat (i32 -11751)
  %i.gw = add <8 x i32> %i.gv, %i.gu
  %i.gx = ashr <8 x i32> %i.gw, splat (i32 12)
  %i.gy = add nsw <8 x i32> %i.gx, %i.db
  %i.gz = mul nsw <8 x i32> %i.gy, %broadcast.splat926
  %i.ha = mul nsw <8 x i32> %i.ee, splat (i32 29040)
  %i.hb = mul <8 x i32> %i.eg, splat (i32 -101)
  %i.hc = add <8 x i32> %i.hb, %i.ha
  %i.hd = ashr <8 x i32> %i.hc, splat (i32 12)
  %i.he = add nsw <8 x i32> %i.hd, %i.db
  %i.hf = mul nsw <8 x i32> %i.he, %broadcast.splat928
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cx
  %i.hh = mul nsw <8 x i32> %i.ej, splat (i32 50)
  %i.hi = mul nsw <8 x i32> %i.em, splat (i32 22929)
  %i.hj = add nsw <8 x i32> %i.hi, %i.hh
  %i.hk = ashr <8 x i32> %i.hj, splat (i32 12)
  %i.hl = add nsw <8 x i32> %i.hk, %i.dc
  %i.hm = mul nsw <8 x i32> %i.hl, %broadcast.splat924
  %i.hn = mul nsw <8 x i32> %i.ej, splat (i32 -5640)
  %i.ho = mul <8 x i32> %i.em, splat (i32 -11751)
  %i.hp = add <8 x i32> %i.ho, %i.hn
  %i.hq = ashr <8 x i32> %i.hp, splat (i32 12)
  %i.hr = add nsw <8 x i32> %i.hq, %i.dc
  %i.hs = mul nsw <8 x i32> %i.hr, %broadcast.splat926
  %i.ht = mul nsw <8 x i32> %i.ej, splat (i32 29040)
  %i.hu = mul <8 x i32> %i.em, splat (i32 -101)
  %i.hv = add <8 x i32> %i.hu, %i.ht
  %i.hw = ashr <8 x i32> %i.hv, splat (i32 12)
  %i.hx = add nsw <8 x i32> %i.hw, %i.dc
  %i.hy = mul nsw <8 x i32> %i.hx, %broadcast.splat928
  %i.hz = ashr <8 x i32> %i.hs, splat (i32 8)
  %i.ia = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.hz, <8 x i32> zeroinitializer)
  %i.ib = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ia, <8 x i32> splat (i32 65535))
  %i.ic = trunc nuw <8 x i32> %i.ib to <8 x i16>
  %i.id = ashr <8 x i32> %i.hy, splat (i32 8)
  %i.ie = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.id, <8 x i32> zeroinitializer)
  %i.if = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ie, <8 x i32> splat (i32 65535))
  %i.ig = trunc nuw <8 x i32> %i.if to <8 x i16>
  %i.ih = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ii = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ij = shufflevector <16 x i32> %i.ih, <16 x i32> %i.ii, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ik = ashr <32 x i32> %i.ij, splat (i32 8)
  %i.il = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ik, <32 x i32> zeroinitializer)
  %i.im = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.il, <32 x i32> splat (i32 65535))
  %i.in = trunc nuw <32 x i32> %i.im to <32 x i16>
  %i.io = shufflevector <8 x i16> %i.ic, <8 x i16> %i.ig, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec949 = shufflevector <32 x i16> %i.in, <32 x i16> %i.io, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec949, ptr %i.hg, align 2, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = add nuw nsw i64 %i.cw, 8
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %.preheader215.preheader, label %vector.body, !llvm.loop !206

.preheader215.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.ir = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.is = shufflevector <4 x i32> %i.ir, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.it = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.iu = shufflevector <4 x i32> %i.it, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.iv = shufflevector <4 x i32> %i.iu, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.iw = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ix = shufflevector <2 x i32> %i.iw, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.iy = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.preheader, %.preheader215
  %indvars.iv = phi i64 [ %i.jj, %.preheader215 ], [ %indvars.iv.ph, %.preheader215.preheader ] ; 3 uses
  %3 = icmp samesign ult i64 %indvars.iv, %i.ar
  tail call void @llvm.assume(i1 %3)
  %i.iz = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.iz
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 6
  %i.jh = add nuw nsw i64 %i.iz, 4                ; 2 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.jh
  %i.jj = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.jk = mul nuw nsw i64 %i.jj, 6                ; 2 uses
  %i.jl = add nuw nsw i64 %i.jk, 4                ; 2 uses
  %i.jm = icmp samesign ule i64 %i.jk, %i.ak
  tail call void @llvm.assume(i1 %i.jm), !noalias !198
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.jl
  %i.jo = load <2 x i16>, ptr %i.jn, align 2, !tbaa !120, !noalias !198
  %i.jp = zext <2 x i16> %i.jo to <2 x i32>
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.jh
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.jl
  %i.js = add nuw nsw i64 %i.iz, 3                ; 3 uses
  %i.jt = icmp samesign ule i64 %i.js, %i.an
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.iz
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.js
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.iz
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.js
  %i.jz = load i16, ptr %i.jg, align 2, !tbaa !120, !noalias !198
  %i.ka = load <2 x i16>, ptr %i.je, align 2, !tbaa !120, !noalias !198
  %i.kb = shufflevector <2 x i16> %i.ka, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kc = zext i16 %i.jz to i32
  %i.kd = zext <4 x i16> %i.kb to <4 x i32>
  %i.ke = load <2 x i16>, ptr %i.ji, align 2, !tbaa !120, !noalias !198 ; 2 uses
  %i.kf = load <2 x i16>, ptr %i.jq, align 2, !tbaa !120, !noalias !198 ; 2 uses
  %i.kg = load <2 x i16>, ptr %i.jr, align 2, !tbaa !120, !noalias !198
  %i.kh = shufflevector <2 x i16> %i.ke, <2 x i16> %i.kf, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.ki = shufflevector <2 x i16> %i.kg, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kj = shufflevector <4 x i16> %i.kh, <4 x i16> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kk = zext <4 x i16> %i.kj to <4 x i32>
  %i.kl = shufflevector <2 x i16> %i.ke, <2 x i16> %i.kf, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %i.km = shufflevector <4 x i16> %i.kl, <4 x i16> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.kn = zext <4 x i16> %i.km to <4 x i32>
  %i.ko = add <4 x i32> %i.is, %i.kk              ; 4 uses
  %i.kp = add <4 x i32> %i.is, %i.kn              ; 7 uses
  %i.kq = shufflevector <4 x i32> %i.ko, <4 x i32> %i.kp, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.kr = load i16, ptr %i.jc, align 2, !tbaa !120, !noalias !198
  %i.ks = load <2 x i16>, ptr %i.ja, align 2, !tbaa !120, !noalias !198
  %i.kt = shufflevector <2 x i16> %i.ks, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ku = zext i16 %i.kr to i32
  %i.kv = zext <4 x i16> %i.kt to <4 x i32>
  %i.kw = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.kx = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison>
  %i.ky = add <2 x i32> %i.ix, %i.jp
  %i.kz = shufflevector <4 x i32> %i.kp, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.la = add nsw <2 x i32> %i.ky, %i.kz          ; 2 uses
  %i.lb = shufflevector <4 x i32> %i.ko, <4 x i32> %i.kp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.lc = shufflevector <2 x i32> %i.la, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ld = add nsw <4 x i32> %i.lb, %i.lc          ; 2 uses
  %i.le = shufflevector <4 x i32> %i.kq, <4 x i32> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lf = add nsw <4 x i32> %i.le, %i.ko
  %i.lg = shufflevector <4 x i32> %i.kp, <4 x i32> %i.ko, <4 x i32> <i32 2, i32 6, i32 0, i32 poison>
  %i.lh = shufflevector <4 x i32> %i.lg, <4 x i32> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.li = add nsw <4 x i32> %i.lh, %i.kp
  %i.lj = ashr <4 x i32> %i.lf, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.lk = ashr <4 x i32> %i.li, <i32 1, i32 1, i32 1, i32 2> ; 2 uses
  %i.ll = ashr <2 x i32> %i.la, splat (i32 1)     ; 3 uses
  %i.lm = shufflevector <2 x i32> %i.ll, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ln = shufflevector <4 x i32> %i.kw, <4 x i32> %i.lm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lo = mul <4 x i32> %i.ln, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.lp = shufflevector <4 x i32> %i.kx, <4 x i32> %i.lm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lq = mul <4 x i32> %i.lp, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.lr = add <4 x i32> %i.lq, %i.lo
  %i.ls = ashr <4 x i32> %i.lr, splat (i32 12)
  %i.lt = add nsw <4 x i32> %i.ls, %i.kv
  %i.lu = mul nsw <4 x i32> %i.lt, %i.iv
  %i.lv = mul <2 x i32> %i.ll, <i32 29040, i32 -11751>
  %i.lw = shufflevector <2 x i32> %i.lv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.lx = mul <2 x i32> %i.ll, <i32 -5640, i32 -101>
  %i.ly = add <2 x i32> %i.lx, %i.lw
  %i.lz = ashr <2 x i32> %i.ly, splat (i32 12)
  %i.ma = insertelement <2 x i32> poison, i32 %i.ku, i64 0
  %i.mb = shufflevector <2 x i32> %i.ma, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.mc = add nsw <2 x i32> %i.lz, %i.mb
  %i.md = mul nsw <2 x i32> %i.mc, %i.iy
  %i.me = ashr <4 x i32> %i.lu, splat (i32 8)
  %i.mf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.me, <4 x i32> zeroinitializer)
  %i.mg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mf, <4 x i32> splat (i32 65535))
  %i.mh = trunc nuw <4 x i32> %i.mg to <4 x i16>
  store <4 x i16> %i.mh, ptr %i.ju, align 2, !tbaa !120
  %i.mi = ashr <2 x i32> %i.md, splat (i32 8)
  %i.mj = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mi, <2 x i32> zeroinitializer)
  %i.mk = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.mj, <2 x i32> splat (i32 65535))
  %i.ml = trunc nuw <2 x i32> %i.mk to <2 x i16>
  store <2 x i16> %i.ml, ptr %i.jw, align 2, !tbaa !120
  %i.mm = mul <4 x i32> %i.lj, <i32 50, i32 -11751, i32 29040, i32 50>
  %i.mn = mul <4 x i32> %i.lk, <i32 22929, i32 -5640, i32 -101, i32 22929>
  %i.mo = add <4 x i32> %i.mn, %i.mm
  %i.mp = ashr <4 x i32> %i.mo, splat (i32 12)
  %i.mq = add nsw <4 x i32> %i.mp, %i.kd
  %i.mr = mul nsw <4 x i32> %i.mq, %i.ai
  %i.ms = ashr <4 x i32> %i.mr, splat (i32 8)
  %i.mt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ms, <4 x i32> zeroinitializer)
  %i.mu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mt, <4 x i32> splat (i32 65535))
  %i.mv = trunc nuw <4 x i32> %i.mu to <4 x i16>
  store <4 x i16> %i.mv, ptr %i.jx, align 2, !tbaa !120
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.mx = shufflevector <4 x i32> %i.lj, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.my = mul nsw <2 x i32> %i.mx, <i32 -5640, i32 29040>
  %i.mz = shufflevector <4 x i32> %i.lk, <4 x i32> poison, <2 x i32> <i32 3, i32 3>
  %i.na = mul <2 x i32> %i.mz, <i32 -11751, i32 -101>
  %i.nb = add <2 x i32> %i.na, %i.my
  %i.nc = ashr <2 x i32> %i.nb, splat (i32 12)
  %i.nd = insertelement <2 x i32> poison, i32 %i.kc, i64 0
  %i.ne = shufflevector <2 x i32> %i.nd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.nf = add nsw <2 x i32> %i.nc, %i.ne
  %i.ng = mul nsw <2 x i32> %i.nf, %i.iy
  %i.nh = ashr <2 x i32> %i.ng, splat (i32 8)
  %i.ni = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.nh, <2 x i32> zeroinitializer)
  %i.nj = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ni, <2 x i32> splat (i32 65535))
  %i.nk = trunc nuw <2 x i32> %i.nj to <2 x i16>
  store <2 x i16> %i.nk, ptr %i.mw, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.jj, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader215, !llvm.loop !207

._crit_edge:                                      ; preds = %.preheader215
  %i.nl = zext nneg i32 %i.s to i64
  %i.nm = mul nuw nsw i32 %i.ab, 6                ; 3 uses
  %i.nn = add nuw nsw i32 %i.nm, 4
  %i.no = add nuw nsw i32 %i.nm, 6
  %i.np = icmp samesign ule i32 %i.no, %i.s
  tail call void @llvm.assume(i1 %i.np), !noalias !208
  %i.nq = zext nneg i32 %i.nn to i64              ; 2 uses
  %i.nr = zext nneg i32 %i.nm to i64              ; 7 uses
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.as ; 5 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nr
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nr
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nr
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.ny = add nuw nsw i64 %i.nr, 3                ; 2 uses
  %i.nz = icmp samesign ult i64 %i.ny, %i.nl
  tail call void @llvm.assume(i1 %i.nz), !noalias !208
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.ny
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nq
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0114.0.copyload, i64 %i.aw
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.nq
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !118
  %i.og = add i32 %i.of, -16384
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.oi = add nuw nsw i64 %i.nr, 3                ; 3 uses
  %i.oj = icmp samesign ule i64 %i.oi, %i.an
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  tail call void @llvm.assume(i1 %i.oj)
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.ok, i64 %i.nr
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.ok, i64 %i.oi
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 2
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd ; 2 uses
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.oo, i64 %i.nr
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.oo, i64 %i.oi
  %i.or = load i16, ptr %i.oa, align 2, !tbaa !120, !noalias !208
  %i.os = load <2 x i16>, ptr %i.nx, align 2, !tbaa !120, !noalias !208
  %i.ot = shufflevector <2 x i16> %i.os, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ou = zext i16 %i.or to i32
  %i.ov = zext <4 x i16> %i.ot to <4 x i32>
  %i.ow = load <3 x i32>, ptr %i.oh, align 8, !tbaa !119 ; 2 uses
  %i.ox = shufflevector <3 x i32> %i.ow, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.oy = load i32, ptr %i.oh, align 8, !tbaa !119
  %i.oz = load i16, ptr %i.nv, align 2, !tbaa !120, !noalias !208
  %i.pa = load <2 x i16>, ptr %i.nt, align 2, !tbaa !120, !noalias !208
  %i.pb = shufflevector <2 x i16> %i.pa, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.pc = zext i16 %i.oz to i32
  %i.pd = zext <4 x i16> %i.pb to <4 x i32>
  %i.pe = load <2 x i16>, ptr %i.ob, align 2, !tbaa !120, !noalias !208
  %i.pf = zext <2 x i16> %i.pe to <2 x i32>
  %i.pg = insertelement <2 x i32> poison, i32 %i.og, i64 0
  %i.ph = shufflevector <2 x i32> %i.pg, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pi = add <2 x i32> %i.ph, %i.pf              ; 3 uses
  %i.pj = shufflevector <2 x i32> %i.pi, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pk = load <2 x i16>, ptr %i.od, align 2, !tbaa !120, !noalias !208
  %i.pl = zext <2 x i16> %i.pk to <2 x i32>
  %i.pm = add <2 x i32> %i.ph, %i.pl
  %i.pn = add nsw <2 x i32> %i.pm, %i.pi
  %i.po = shufflevector <2 x i32> %i.pn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pp = ashr <4 x i32> %i.po, splat (i32 1)     ; 2 uses
  %i.pq = mul <4 x i32> %i.pj, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.pr = shufflevector <2 x i32> %i.pi, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ps = mul <4 x i32> %i.pr, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.pt = add <4 x i32> %i.pq, %i.ps
  %i.pu = ashr <4 x i32> %i.pt, splat (i32 12)    ; 2 uses
  %i.pv = add nsw <4 x i32> %i.pu, %i.pd
  %i.pw = insertelement <4 x i32> poison, i32 %i.oy, i64 0
  %i.px = shufflevector <4 x i32> %i.pw, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.py = shufflevector <4 x i32> %i.px, <4 x i32> %i.ox, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.pz = mul nsw <4 x i32> %i.pv, %i.py
  %i.qa = ashr <4 x i32> %i.pz, splat (i32 8)
  %i.qb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qa, <4 x i32> zeroinitializer)
  %i.qc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qb, <4 x i32> splat (i32 65535))
  %i.qd = trunc nuw <4 x i32> %i.qc to <4 x i16>
  store <4 x i16> %i.qd, ptr %i.ol, align 2, !tbaa !120
  %i.qe = shufflevector <4 x i32> %i.pu, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.qf = insertelement <2 x i32> poison, i32 %i.pc, i64 0
  %i.qg = shufflevector <2 x i32> %i.qf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.qh = add nsw <2 x i32> %i.qe, %i.qg
  %i.qi = shufflevector <3 x i32> %i.ow, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.qj = mul nsw <2 x i32> %i.qh, %i.qi
  %i.qk = ashr <2 x i32> %i.qj, splat (i32 8)
  %i.ql = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qk, <2 x i32> zeroinitializer)
  %i.qm = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ql, <2 x i32> splat (i32 65535))
  %i.qn = trunc nuw <2 x i32> %i.qm to <2 x i16>
  store <2 x i16> %i.qn, ptr %i.on, align 2, !tbaa !120
  %i.qo = mul <4 x i32> %i.pp, <i32 50, i32 -11751, i32 29040, i32 22929>
  %i.qp = shufflevector <4 x i32> %i.pp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.qq = mul <4 x i32> %i.qp, <i32 22929, i32 -5640, i32 -101, i32 50>
  %i.qr = add <4 x i32> %i.qo, %i.qq
  %i.qs = ashr <4 x i32> %i.qr, splat (i32 12)    ; 2 uses
  %i.qt = add nsw <4 x i32> %i.qs, %i.ov
  %i.qu = mul nsw <4 x i32> %i.qt, %i.ox
  %i.qv = ashr <4 x i32> %i.qu, splat (i32 8)
  %i.qw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qv, <4 x i32> zeroinitializer)
  %i.qx = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qw, <4 x i32> splat (i32 65535))
  %i.qy = trunc nuw <4 x i32> %i.qx to <4 x i16>
  store <4 x i16> %i.qy, ptr %i.op, align 2, !tbaa !120
  %i.qz = getelementptr inbounds nuw i8, ptr %i.oq, i64 2
  %i.ra = shufflevector <4 x i32> %i.qs, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  %i.rb = insertelement <2 x i32> poison, i32 %i.ou, i64 0
  %i.rc = shufflevector <2 x i32> %i.rb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.rd = add nsw <2 x i32> %i.ra, %i.rc
  %i.re = mul nsw <2 x i32> %i.rd, %i.qi
  %i.rf = ashr <2 x i32> %i.re, splat (i32 8)
  %i.rg = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.rf, <2 x i32> zeroinitializer)
  %i.rh = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.rg, <2 x i32> splat (i32 65535))
  %i.ri = trunc nuw <2 x i32> %i.rh to <2 x i16>
  store <2 x i16> %i.ri, ptr %i.qz, align 2, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11, !nonnull !19, !align !20
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103, !noalias !211 ; 26 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107, !noalias !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !108, !noalias !211
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29, !noalias !211 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !109, !noalias !211
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !110  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !111  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = icmp sge i32 %i.w, %i.s
  tail call void @llvm.assume(i1 %i.x)
  %i.y = udiv i32 %i.s, 6                         ; 2 uses
  %i.z = icmp samesign ugt i32 %i.s, 11
  tail call void @llvm.assume(i1 %i.z)
  %.sroa.0112.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !113 ; 7 uses
  %i.aa = icmp slt i32 %1, %i.u
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %invariant.op = add nsw i32 %i.s, -6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !118
  %i.ae = add i32 %i.ad, -16384                   ; 9 uses
  %i.af = shl nsw i32 %1, 1                       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load <3 x i32>, ptr %i.ag, align 8, !tbaa !119 ; 5 uses
  %i.ai = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !119
  %i.ak = zext nneg i32 %invariant.op to i64
  %i.al = sext i32 %1 to i64                      ; 3 uses
  %2 = zext nneg i32 %i.u to i64
  %i.am = zext i32 %i.w to i64                    ; 4 uses
  %i.an = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ao = zext i32 %i.af to i64                   ; 3 uses
  %i.ap = zext i32 %i.n to i64                    ; 4 uses
  %i.aq = zext nneg i32 %i.k to i64
  %i.ar = zext nneg i32 %i.y to i64
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %i.as = mul nsw i64 %i.al, %i.am                ; 2 uses
  %i.at = getelementptr [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.as ; 20 uses
  %i.au = add nuw nsw i64 %i.al, 1                ; 3 uses
  %i.av = icmp samesign ult i64 %i.au, %2
  tail call void @llvm.assume(i1 %i.av), !noalias !214
  %i.aw = mul nuw nsw i64 %i.au, %i.am            ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.aw ; 4 uses
  %i.ay = icmp ult i32 %i.af, %i.k
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = mul nuw i64 %i.ao, %i.ap                ; 2 uses
  %i.ba = getelementptr [2 x i8], ptr %i.d, i64 %i.az ; 16 uses
  %i.bb = or disjoint i64 %i.ao, 1                ; 3 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.aq
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = mul nuw i64 %i.bb, %i.ap                ; 2 uses
  %i.be = getelementptr [2 x i8], ptr %i.d, i64 %i.bd ; 16 uses
  %min.iters.check = icmp ult i32 %i.ab, 33
  br i1 %min.iters.check, label %.preheader213.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bf = mul nuw i64 %i.ap, %i.ao
  %i.bg = shl i64 %i.bf, 1                        ; 8 uses
  %i.bh = mul nuw nsw i64 %wide.trip.count, 12    ; 8 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bj, i64 -10 ; 13 uses
  %i.bk = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep538 = getelementptr i8, ptr %i.bk, i64 2 ; 13 uses
  %i.bl = getelementptr i8, ptr %i.d, i64 %i.bi
  %scevgep539 = getelementptr i8, ptr %i.bl, i64 -8 ; 13 uses
  %i.bm = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep540 = getelementptr i8, ptr %i.bm, i64 4 ; 13 uses
  %i.bn = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bo = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep541 = getelementptr i8, ptr %i.bo, i64 -6 ; 13 uses
  %i.bp = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep542 = getelementptr i8, ptr %i.bp, i64 6 ; 13 uses
  %i.bq = getelementptr i8, ptr %i.d, i64 %i.bn
  %scevgep543 = getelementptr i8, ptr %i.bq, i64 -4 ; 13 uses
  %i.br = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep544 = getelementptr i8, ptr %i.br, i64 8 ; 13 uses
  %i.bs = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.d, i64 %i.bs
  %scevgep545 = getelementptr i8, ptr %i.bt, i64 -2 ; 13 uses
  %i.bu = getelementptr i8, ptr %i.d, i64 %i.bg
  %scevgep546 = getelementptr i8, ptr %i.bu, i64 10 ; 13 uses
  %scevgep547 = getelementptr i8, ptr %i.d, i64 %i.bs ; 13 uses
  %i.bv = mul nuw i64 %i.bb, %i.ap
  %i.bw = shl i64 %i.bv, 1                        ; 8 uses
  %i.bx = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep548 = getelementptr i8, ptr %i.by, i64 -10 ; 13 uses
  %i.bz = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep549 = getelementptr i8, ptr %i.bz, i64 2 ; 13 uses
  %i.ca = getelementptr i8, ptr %i.d, i64 %i.bx
  %scevgep550 = getelementptr i8, ptr %i.ca, i64 -8 ; 13 uses
  %i.cb = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep551 = getelementptr i8, ptr %i.cb, i64 4 ; 13 uses
  %i.cc = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.cd = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep552 = getelementptr i8, ptr %i.cd, i64 -6 ; 13 uses
  %i.ce = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep553 = getelementptr i8, ptr %i.ce, i64 6 ; 13 uses
  %i.cf = getelementptr i8, ptr %i.d, i64 %i.cc
  %scevgep554 = getelementptr i8, ptr %i.cf, i64 -4 ; 13 uses
  %i.cg = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep555 = getelementptr i8, ptr %i.cg, i64 8 ; 13 uses
  %i.ch = add i64 %i.bw, %i.bh                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.d, i64 %i.ch
  %scevgep556 = getelementptr i8, ptr %i.ci, i64 -2 ; 13 uses
  %i.cj = getelementptr i8, ptr %i.d, i64 %i.bw
  %scevgep557 = getelementptr i8, ptr %i.cj, i64 10 ; 13 uses
  %scevgep558 = getelementptr i8, ptr %i.d, i64 %i.ch ; 13 uses
  %i.ck = mul i64 %i.au, %i.am
  %i.cl = shl i64 %i.ck, 1                        ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cl
  %scevgep559 = getelementptr i8, ptr %i.cm, i64 8 ; 12 uses
  %i.cn = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 %i.bh
  %scevgep560 = getelementptr i8, ptr %i.co, i64 12 ; 12 uses
  %i.cp = mul nsw i64 %i.al, %i.am
  %i.cq = shl i64 %i.cp, 1
  %i.cr = getelementptr i8, ptr %.sroa.0112.0.copyload, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bh
  %scevgep561 = getelementptr i8, ptr %i.cs, i64 12 ; 12 uses
  %bound0 = icmp ult ptr %i.ba, %scevgep539
  %bound1 = icmp ult ptr %scevgep538, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0562 = icmp ult ptr %i.ba, %scevgep541
  %bound1563 = icmp ult ptr %scevgep540, %scevgep
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx = or i1 %found.conflict, %found.conflict564
  %bound0565 = icmp ult ptr %i.ba, %scevgep543
  %bound1566 = icmp ult ptr %scevgep542, %scevgep
  %found.conflict567 = and i1 %bound0565, %bound1566
  %conflict.rdx568 = or i1 %conflict.rdx, %found.conflict567
  %bound0569 = icmp ult ptr %i.ba, %scevgep545
  %bound1570 = icmp ult ptr %scevgep544, %scevgep
  %found.conflict571 = and i1 %bound0569, %bound1570
  %conflict.rdx572 = or i1 %conflict.rdx568, %found.conflict571
  %bound0573 = icmp ult ptr %i.ba, %scevgep547
  %bound1574 = icmp ult ptr %scevgep546, %scevgep
  %found.conflict575 = and i1 %bound0573, %bound1574
  %conflict.rdx576 = or i1 %conflict.rdx572, %found.conflict575
  %bound0577 = icmp ult ptr %i.ba, %scevgep548
  %bound1578 = icmp ult ptr %i.be, %scevgep
  %found.conflict579 = and i1 %bound0577, %bound1578
  %conflict.rdx580 = or i1 %conflict.rdx576, %found.conflict579
  %bound0581 = icmp ult ptr %i.ba, %scevgep550
  %bound1582 = icmp ult ptr %scevgep549, %scevgep
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx584 = or i1 %conflict.rdx580, %found.conflict583
  %bound0585 = icmp ult ptr %i.ba, %scevgep552
  %bound1586 = icmp ult ptr %scevgep551, %scevgep
  %found.conflict587 = and i1 %bound0585, %bound1586
  %conflict.rdx588 = or i1 %conflict.rdx584, %found.conflict587
  %bound0589 = icmp ult ptr %i.ba, %scevgep554
  %bound1590 = icmp ult ptr %scevgep553, %scevgep
  %found.conflict591 = and i1 %bound0589, %bound1590
  %conflict.rdx592 = or i1 %conflict.rdx588, %found.conflict591
  %bound0593 = icmp ult ptr %i.ba, %scevgep556
  %bound1594 = icmp ult ptr %scevgep555, %scevgep
  %found.conflict595 = and i1 %bound0593, %bound1594
  %conflict.rdx596 = or i1 %conflict.rdx592, %found.conflict595
  %bound0597 = icmp ult ptr %i.ba, %scevgep558
  %bound1598 = icmp ult ptr %scevgep557, %scevgep
  %found.conflict599 = and i1 %bound0597, %bound1598
  %conflict.rdx600 = or i1 %conflict.rdx596, %found.conflict599
  %bound0601 = icmp ult ptr %i.ba, %scevgep560
  %bound1602 = icmp ult ptr %scevgep559, %scevgep
  %found.conflict603 = and i1 %bound0601, %bound1602
  %conflict.rdx604 = or i1 %conflict.rdx600, %found.conflict603
  %bound0605 = icmp ult ptr %i.ba, %scevgep561
  %bound1606 = icmp ult ptr %i.at, %scevgep
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx608 = or i1 %conflict.rdx604, %found.conflict607
  %bound0609 = icmp ult ptr %scevgep538, %scevgep541
  %bound1610 = icmp ult ptr %scevgep540, %scevgep539
  %found.conflict611 = and i1 %bound0609, %bound1610
  %conflict.rdx612 = or i1 %conflict.rdx608, %found.conflict611
  %bound0613 = icmp ult ptr %scevgep538, %scevgep543
  %bound1614 = icmp ult ptr %scevgep542, %scevgep539
  %found.conflict615 = and i1 %bound0613, %bound1614
  %conflict.rdx616 = or i1 %conflict.rdx612, %found.conflict615
  %bound0617 = icmp ult ptr %scevgep538, %scevgep545
  %bound1618 = icmp ult ptr %scevgep544, %scevgep539
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %conflict.rdx616, %found.conflict619
  %bound0621 = icmp ult ptr %scevgep538, %scevgep547
  %bound1622 = icmp ult ptr %scevgep546, %scevgep539
  %found.conflict623 = and i1 %bound0621, %bound1622
  %conflict.rdx624 = or i1 %conflict.rdx620, %found.conflict623
  %bound0625 = icmp ult ptr %scevgep538, %scevgep548
  %bound1626 = icmp ult ptr %i.be, %scevgep539
  %found.conflict627 = and i1 %bound0625, %bound1626
  %conflict.rdx628 = or i1 %conflict.rdx624, %found.conflict627
  %bound0629 = icmp ult ptr %scevgep538, %scevgep550
  %bound1630 = icmp ult ptr %scevgep549, %scevgep539
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %conflict.rdx628, %found.conflict631
  %bound0633 = icmp ult ptr %scevgep538, %scevgep552
  %bound1634 = icmp ult ptr %scevgep551, %scevgep539
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %scevgep538, %scevgep554
  %bound1638 = icmp ult ptr %scevgep553, %scevgep539
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  %bound0641 = icmp ult ptr %scevgep538, %scevgep556
  %bound1642 = icmp ult ptr %scevgep555, %scevgep539
  %found.conflict643 = and i1 %bound0641, %bound1642
  %conflict.rdx644 = or i1 %conflict.rdx640, %found.conflict643
  %bound0645 = icmp ult ptr %scevgep538, %scevgep558
  %bound1646 = icmp ult ptr %scevgep557, %scevgep539
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %scevgep538, %scevgep560
  %bound1650 = icmp ult ptr %scevgep559, %scevgep539
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %scevgep538, %scevgep561
  %bound1654 = icmp ult ptr %i.at, %scevgep539
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  %bound0657 = icmp ult ptr %scevgep540, %scevgep543
  %bound1658 = icmp ult ptr %scevgep542, %scevgep541
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %scevgep540, %scevgep545
  %bound1662 = icmp ult ptr %scevgep544, %scevgep541
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  %bound0665 = icmp ult ptr %scevgep540, %scevgep547
  %bound1666 = icmp ult ptr %scevgep546, %scevgep541
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %conflict.rdx664, %found.conflict667
  %bound0669 = icmp ult ptr %scevgep540, %scevgep548
  %bound1670 = icmp ult ptr %i.be, %scevgep541
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx672 = or i1 %conflict.rdx668, %found.conflict671
  %bound0673 = icmp ult ptr %scevgep540, %scevgep550
  %bound1674 = icmp ult ptr %scevgep549, %scevgep541
  %found.conflict675 = and i1 %bound0673, %bound1674
  %conflict.rdx676 = or i1 %conflict.rdx672, %found.conflict675
  %bound0677 = icmp ult ptr %scevgep540, %scevgep552
  %bound1678 = icmp ult ptr %scevgep551, %scevgep541
  %found.conflict679 = and i1 %bound0677, %bound1678
  %conflict.rdx680 = or i1 %conflict.rdx676, %found.conflict679
  %bound0681 = icmp ult ptr %scevgep540, %scevgep554
  %bound1682 = icmp ult ptr %scevgep553, %scevgep541
  %found.conflict683 = and i1 %bound0681, %bound1682
  %conflict.rdx684 = or i1 %conflict.rdx680, %found.conflict683
  %bound0685 = icmp ult ptr %scevgep540, %scevgep556
  %bound1686 = icmp ult ptr %scevgep555, %scevgep541
  %found.conflict687 = and i1 %bound0685, %bound1686
  %conflict.rdx688 = or i1 %conflict.rdx684, %found.conflict687
  %bound0689 = icmp ult ptr %scevgep540, %scevgep558
  %bound1690 = icmp ult ptr %scevgep557, %scevgep541
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx692 = or i1 %conflict.rdx688, %found.conflict691
  %bound0693 = icmp ult ptr %scevgep540, %scevgep560
  %bound1694 = icmp ult ptr %scevgep559, %scevgep541
  %found.conflict695 = and i1 %bound0693, %bound1694
  %conflict.rdx696 = or i1 %conflict.rdx692, %found.conflict695
  %bound0697 = icmp ult ptr %scevgep540, %scevgep561
  %bound1698 = icmp ult ptr %i.at, %scevgep541
  %found.conflict699 = and i1 %bound0697, %bound1698
  %conflict.rdx700 = or i1 %conflict.rdx696, %found.conflict699
  %bound0701 = icmp ult ptr %scevgep542, %scevgep545
  %bound1702 = icmp ult ptr %scevgep544, %scevgep543
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx704 = or i1 %conflict.rdx700, %found.conflict703
  %bound0705 = icmp ult ptr %scevgep542, %scevgep547
  %bound1706 = icmp ult ptr %scevgep546, %scevgep543
  %found.conflict707 = and i1 %bound0705, %bound1706
  %conflict.rdx708 = or i1 %conflict.rdx704, %found.conflict707
  %bound0709 = icmp ult ptr %scevgep542, %scevgep548
  %bound1710 = icmp ult ptr %i.be, %scevgep543
  %found.conflict711 = and i1 %bound0709, %bound1710
  %conflict.rdx712 = or i1 %conflict.rdx708, %found.conflict711
  %bound0713 = icmp ult ptr %scevgep542, %scevgep550
  %bound1714 = icmp ult ptr %scevgep549, %scevgep543
  %found.conflict715 = and i1 %bound0713, %bound1714
  %conflict.rdx716 = or i1 %conflict.rdx712, %found.conflict715
  %bound0717 = icmp ult ptr %scevgep542, %scevgep552
  %bound1718 = icmp ult ptr %scevgep551, %scevgep543
  %found.conflict719 = and i1 %bound0717, %bound1718
  %conflict.rdx720 = or i1 %conflict.rdx716, %found.conflict719
  %bound0721 = icmp ult ptr %scevgep542, %scevgep554
  %bound1722 = icmp ult ptr %scevgep553, %scevgep543
  %found.conflict723 = and i1 %bound0721, %bound1722
  %conflict.rdx724 = or i1 %conflict.rdx720, %found.conflict723
  %bound0725 = icmp ult ptr %scevgep542, %scevgep556
  %bound1726 = icmp ult ptr %scevgep555, %scevgep543
  %found.conflict727 = and i1 %bound0725, %bound1726
  %conflict.rdx728 = or i1 %conflict.rdx724, %found.conflict727
  %bound0729 = icmp ult ptr %scevgep542, %scevgep558
  %bound1730 = icmp ult ptr %scevgep557, %scevgep543
  %found.conflict731 = and i1 %bound0729, %bound1730
  %conflict.rdx732 = or i1 %conflict.rdx728, %found.conflict731
  %bound0733 = icmp ult ptr %scevgep542, %scevgep560
  %bound1734 = icmp ult ptr %scevgep559, %scevgep543
  %found.conflict735 = and i1 %bound0733, %bound1734
  %conflict.rdx736 = or i1 %conflict.rdx732, %found.conflict735
  %bound0737 = icmp ult ptr %scevgep542, %scevgep561
  %bound1738 = icmp ult ptr %i.at, %scevgep543
  %found.conflict739 = and i1 %bound0737, %bound1738
  %conflict.rdx740 = or i1 %conflict.rdx736, %found.conflict739
  %bound0741 = icmp ult ptr %scevgep544, %scevgep547
  %bound1742 = icmp ult ptr %scevgep546, %scevgep545
  %found.conflict743 = and i1 %bound0741, %bound1742
  %conflict.rdx744 = or i1 %conflict.rdx740, %found.conflict743
  %bound0745 = icmp ult ptr %scevgep544, %scevgep548
  %bound1746 = icmp ult ptr %i.be, %scevgep545
  %found.conflict747 = and i1 %bound0745, %bound1746
  %conflict.rdx748 = or i1 %conflict.rdx744, %found.conflict747
  %bound0749 = icmp ult ptr %scevgep544, %scevgep550
  %bound1750 = icmp ult ptr %scevgep549, %scevgep545
  %found.conflict751 = and i1 %bound0749, %bound1750
  %conflict.rdx752 = or i1 %conflict.rdx748, %found.conflict751
  %bound0753 = icmp ult ptr %scevgep544, %scevgep552
end_hunk_1
begin_hunk_2_@_ZN8rawspeed19Cr2sRawInterpolator19interpolate_420_rowILi2EEEvi:.lr.ph
  %conflict.rdx884 = or i1 %conflict.rdx880, %found.conflict883
  %bound0885 = icmp ult ptr %scevgep553, %scevgep558
  %bound1886 = icmp ult ptr %scevgep557, %scevgep554
  %found.conflict887 = and i1 %bound0885, %bound1886
  %conflict.rdx888 = or i1 %conflict.rdx884, %found.conflict887
  %bound0889 = icmp ult ptr %scevgep553, %scevgep560
  %bound1890 = icmp ult ptr %scevgep559, %scevgep554
  %found.conflict891 = and i1 %bound0889, %bound1890
  %conflict.rdx892 = or i1 %conflict.rdx888, %found.conflict891
  %bound0893 = icmp ult ptr %scevgep553, %scevgep561
  %bound1894 = icmp ult ptr %i.at, %scevgep554
  %found.conflict895 = and i1 %bound0893, %bound1894
  %conflict.rdx896 = or i1 %conflict.rdx892, %found.conflict895
  %bound0897 = icmp ult ptr %scevgep555, %scevgep558
  %bound1898 = icmp ult ptr %scevgep557, %scevgep556
  %found.conflict899 = and i1 %bound0897, %bound1898
  %conflict.rdx900 = or i1 %conflict.rdx896, %found.conflict899
  %bound0901 = icmp ult ptr %scevgep555, %scevgep560
  %bound1902 = icmp ult ptr %scevgep559, %scevgep556
  %found.conflict903 = and i1 %bound0901, %bound1902
  %conflict.rdx904 = or i1 %conflict.rdx900, %found.conflict903
  %bound0905 = icmp ult ptr %scevgep555, %scevgep561
  %bound1906 = icmp ult ptr %i.at, %scevgep556
  %found.conflict907 = and i1 %bound0905, %bound1906
  %conflict.rdx908 = or i1 %conflict.rdx904, %found.conflict907
  %bound0909 = icmp ult ptr %scevgep557, %scevgep560
  %bound1910 = icmp ult ptr %scevgep559, %scevgep558
  %found.conflict911 = and i1 %bound0909, %bound1910
  %conflict.rdx912 = or i1 %conflict.rdx908, %found.conflict911
  %bound0913 = icmp ult ptr %scevgep557, %scevgep561
  %bound1914 = icmp ult ptr %i.at, %scevgep558
  %found.conflict915 = and i1 %bound0913, %bound1914
  %conflict.rdx916 = or i1 %conflict.rdx912, %found.conflict915
  br i1 %conflict.rdx916, label %.preheader213.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ct = and i64 %wide.trip.count, 7             ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = select i1 %i.cu, i64 8, i64 %i.ct
  %n.vec = sub nsw i64 %wide.trip.count, %i.cv    ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splat918 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat920 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat922 = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cw = phi i64 [ 0, %vector.ph ], [ %i.hj, %vector.body ] ; 3 uses
  %i.cx = mul nuw nsw i64 %i.cw, 6                ; 4 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.cx
  %wide.vec = load <48 x i16>, ptr %i.cy, align 2, !tbaa !120, !alias.scope !217, !noalias !214 ; 6 uses
  %strided.vec = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec929.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec930.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec931.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec932 = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %strided.vec933.a = shufflevector <48 x i16> %wide.vec, <48 x i16> poison, <8 x i32> <i32 5, i32 11, i32 17, i32 23, i32 29, i32 35, i32 41, i32 47>
  %i.cz = zext <8 x i16> %strided.vec to <8 x i32> ; 3 uses
  %i.da = zext <8 x i16> %strided.vec929.a to <8 x i32> ; 3 uses
  %i.db = zext <8 x i16> %strided.vec930.a to <8 x i32> ; 3 uses
  %i.dc = zext <8 x i16> %strided.vec931.a to <8 x i32> ; 3 uses
  %i.dd = zext <8 x i16> %strided.vec932 to <8 x i32>
  %i.de = zext <8 x i16> %strided.vec933.a to <8 x i32>
  %i.df = mul nuw i64 %i.cw, 6
  %i.dg = or disjoint i64 %i.df, 10               ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dg
  %wide.vec934 = load <48 x i16>, ptr %i.dh, align 2, !tbaa !120, !alias.scope !217, !noalias !214 ; 2 uses
  %strided.vec935 = shufflevector <48 x i16> %wide.vec934, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec936.a = shufflevector <48 x i16> %wide.vec934, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.di = zext <8 x i16> %strided.vec935 to <8 x i32>
  %i.dj = zext <8 x i16> %strided.vec936.a to <8 x i32>
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.cx
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %wide.vec937 = load <48 x i16>, ptr %i.dl, align 2, !tbaa !120, !alias.scope !220, !noalias !214 ; 2 uses
  %strided.vec938 = shufflevector <48 x i16> %wide.vec937, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec939.a = shufflevector <48 x i16> %wide.vec937, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dm = zext <8 x i16> %strided.vec938 to <8 x i32>
  %i.dn = zext <8 x i16> %strided.vec939.a to <8 x i32>
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.dg
  %wide.vec940 = load <48 x i16>, ptr %i.do, align 2, !tbaa !120, !alias.scope !220, !noalias !214 ; 2 uses
  %strided.vec941 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec942 = shufflevector <48 x i16> %wide.vec940, <48 x i16> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %i.dp = zext <8 x i16> %strided.vec941 to <8 x i32>
  %i.dq = zext <8 x i16> %strided.vec942 to <8 x i32>
  %i.dr = add <8 x i32> %broadcast.splat, %i.dd   ; 4 uses
  %i.ds = add <8 x i32> %broadcast.splat, %i.de   ; 4 uses
  %i.dt = add <8 x i32> %broadcast.splat, %i.di
  %i.du = add <8 x i32> %broadcast.splat, %i.dj
  %i.dv = add <8 x i32> %broadcast.splat, %i.dm   ; 2 uses
  %i.dw = add <8 x i32> %broadcast.splat, %i.dn   ; 2 uses
  %i.dx = add <8 x i32> %broadcast.splat, %i.dp
  %i.dy = add <8 x i32> %broadcast.splat, %i.dq
  %i.dz = add nsw <8 x i32> %i.dt, %i.dr          ; 2 uses
  %i.ea = ashr <8 x i32> %i.dz, splat (i32 1)     ; 2 uses
  %i.eb = add nsw <8 x i32> %i.du, %i.ds          ; 2 uses
  %i.ec = ashr <8 x i32> %i.eb, splat (i32 1)     ; 2 uses
  %i.ed = add nsw <8 x i32> %i.dv, %i.dr
  %i.ee = ashr <8 x i32> %i.ed, splat (i32 1)     ; 2 uses
  %i.ef = add nsw <8 x i32> %i.dw, %i.ds
  %i.eg = ashr <8 x i32> %i.ef, splat (i32 1)     ; 2 uses
  %i.eh = add nsw <8 x i32> %i.dv, %i.dz
  %i.ei = add nsw <8 x i32> %i.eh, %i.dx
  %i.ej = ashr <8 x i32> %i.ei, splat (i32 2)     ; 2 uses
  %i.ek = add nsw <8 x i32> %i.dw, %i.eb
  %i.el = add nsw <8 x i32> %i.ek, %i.dy
  %i.em = ashr <8 x i32> %i.el, splat (i32 2)     ; 2 uses
  %i.en = add nsw <8 x i32> %i.ds, %i.cz
  %i.eo = mul nsw <8 x i32> %i.en, %broadcast.splat918
  %i.ep = mul nsw <8 x i32> %i.dr, splat (i32 -778)
  %i.eq = shl nsw <8 x i32> %i.ds, splat (i32 11)
  %i.er = sub nsw <8 x i32> %i.ep, %i.eq
  %i.es = ashr <8 x i32> %i.er, splat (i32 12)
  %i.et = add nsw <8 x i32> %i.es, %i.cz
  %i.eu = mul nsw <8 x i32> %i.et, %broadcast.splat920
  %i.ev = add nsw <8 x i32> %i.dr, %i.cz
  %i.ew = mul nsw <8 x i32> %broadcast.splat922, %i.ev
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.cx
  %i.ey = add nsw <8 x i32> %i.ec, %i.da
  %i.ez = mul nsw <8 x i32> %i.ey, %broadcast.splat918
  %i.fa = mul nsw <8 x i32> %i.ea, splat (i32 -778)
  %i.fb = shl nsw <8 x i32> %i.ec, splat (i32 11)
  %i.fc = sub nsw <8 x i32> %i.fa, %i.fb
  %i.fd = ashr <8 x i32> %i.fc, splat (i32 12)
  %i.fe = add nsw <8 x i32> %i.fd, %i.da
  %i.ff = mul nsw <8 x i32> %i.fe, %broadcast.splat920
  %i.fg = add nsw <8 x i32> %i.ea, %i.da
  %i.fh = mul nsw <8 x i32> %broadcast.splat922, %i.fg
  %i.fi = ashr <8 x i32> %i.ff, splat (i32 8)
  %i.fj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fi, <8 x i32> zeroinitializer)
  %i.fk = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fj, <8 x i32> splat (i32 65535))
  %i.fl = trunc nuw <8 x i32> %i.fk to <8 x i16>
  %i.fm = ashr <8 x i32> %i.fh, splat (i32 8)
  %i.fn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fm, <8 x i32> zeroinitializer)
  %i.fo = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.fn, <8 x i32> splat (i32 65535))
  %i.fp = trunc nuw <8 x i32> %i.fo to <8 x i16>
  %i.fq = shufflevector <8 x i32> %i.eo, <8 x i32> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fr = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fs = shufflevector <16 x i32> %i.fq, <16 x i32> %i.fr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ft = ashr <32 x i32> %i.fs, splat (i32 8)
  %i.fu = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.ft, <32 x i32> zeroinitializer)
  %i.fv = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.fu, <32 x i32> splat (i32 65535))
  %i.fw = trunc nuw <32 x i32> %i.fv to <32 x i16>
  %i.fx = shufflevector <8 x i16> %i.fl, <8 x i16> %i.fp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.fw, <32 x i16> %i.fx, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec, ptr %i.ex, align 2, !tbaa !120
  %i.fy = add nsw <8 x i32> %i.eg, %i.db
  %i.fz = mul nsw <8 x i32> %i.fy, %broadcast.splat918
  %i.ga = mul nsw <8 x i32> %i.ee, splat (i32 -778)
  %i.gb = shl nsw <8 x i32> %i.eg, splat (i32 11)
  %i.gc = sub nsw <8 x i32> %i.ga, %i.gb
  %i.gd = ashr <8 x i32> %i.gc, splat (i32 12)
  %i.ge = add nsw <8 x i32> %i.gd, %i.db
  %i.gf = mul nsw <8 x i32> %i.ge, %broadcast.splat920
  %i.gg = add nsw <8 x i32> %i.ee, %i.db
  %i.gh = mul nsw <8 x i32> %broadcast.splat922, %i.gg
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cx
  %i.gj = add nsw <8 x i32> %i.em, %i.dc
  %i.gk = mul nsw <8 x i32> %i.gj, %broadcast.splat918
  %i.gl = mul nsw <8 x i32> %i.ej, splat (i32 -778)
  %i.gm = shl nsw <8 x i32> %i.em, splat (i32 11)
  %i.gn = sub nsw <8 x i32> %i.gl, %i.gm
  %i.go = ashr <8 x i32> %i.gn, splat (i32 12)
  %i.gp = add nsw <8 x i32> %i.go, %i.dc
  %i.gq = mul nsw <8 x i32> %i.gp, %broadcast.splat920
  %i.gr = add nsw <8 x i32> %i.ej, %i.dc
  %i.gs = mul nsw <8 x i32> %broadcast.splat922, %i.gr
  %i.gt = ashr <8 x i32> %i.gq, splat (i32 8)
  %i.gu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gt, <8 x i32> zeroinitializer)
  %i.gv = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gu, <8 x i32> splat (i32 65535))
  %i.gw = trunc nuw <8 x i32> %i.gv to <8 x i16>
  %i.gx = ashr <8 x i32> %i.gs, splat (i32 8)
  %i.gy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> zeroinitializer)
  %i.gz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.gy, <8 x i32> splat (i32 65535))
  %i.ha = trunc nuw <8 x i32> %i.gz to <8 x i16>
  %i.hb = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hc = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hd = shufflevector <16 x i32> %i.hb, <16 x i32> %i.hc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.he = ashr <32 x i32> %i.hd, splat (i32 8)
  %i.hf = tail call <32 x i32> @llvm.smax.v32i32(<32 x i32> %i.he, <32 x i32> zeroinitializer)
  %i.hg = tail call <32 x i32> @llvm.umin.v32i32(<32 x i32> %i.hf, <32 x i32> splat (i32 65535))
  %i.hh = trunc nuw <32 x i32> %i.hg to <32 x i16>
  %i.hi = shufflevector <8 x i16> %i.gw, <8 x i16> %i.ha, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec943 = shufflevector <32 x i16> %i.hh, <32 x i16> %i.hi, <48 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47>
  store <48 x i16> %interleaved.vec943, ptr %i.gi, align 2, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = add nuw nsw i64 %i.cw, 8
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %.preheader213.preheader, label %vector.body, !llvm.loop !222

.preheader213.preheader:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  %i.hl = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.hm = shufflevector <4 x i32> %i.hl, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hn = shufflevector <4 x i32> %i.hm, <4 x i32> %i.ai, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ho = shufflevector <3 x i32> %i.ah, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.preheader, %.preheader213
  %indvars.iv = phi i64 [ %i.ie, %.preheader213 ], [ %indvars.iv.ph, %.preheader213.preheader ] ; 3 uses
  %3 = icmp samesign ult i64 %indvars.iv, %i.ar
  tail call void @llvm.assume(i1 %3)
  %i.hp = mul nuw nsw i64 %indvars.iv, 6          ; 8 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hp
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 6
  %i.hx = add nuw nsw i64 %i.hp, 4                ; 2 uses
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !120, !noalias !214
  %i.ia = zext i16 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !120, !noalias !214
  %i.id = zext i16 %i.ic to i32
  %i.ie = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.if = mul nuw nsw i64 %i.ie, 6                ; 2 uses
  %i.ig = add nuw nsw i64 %i.if, 4                ; 2 uses
  %i.ih = icmp samesign ule i64 %i.if, %i.ak
  tail call void @llvm.assume(i1 %i.ih), !noalias !214
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ig ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !120, !noalias !214
  %i.ik = zext i16 %i.ij to i32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !120, !noalias !214
  %i.in = zext i16 %i.im to i32
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.hx ; 2 uses
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !120, !noalias !214
  %i.iq = zext i16 %i.ip to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !120, !noalias !214
  %i.it = zext i16 %i.is to i32
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ig ; 2 uses
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !120, !noalias !214
  %i.iw = zext i16 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !120, !noalias !214
  %i.iz = zext i16 %i.iy to i32
  %i.ja = add i32 %i.ae, %i.ik
  %i.jb = add i32 %i.ae, %i.in
  %i.jc = add i32 %i.ae, %i.iq                    ; 2 uses
  %i.jd = add i32 %i.ae, %i.it                    ; 2 uses
  %i.je = add i32 %i.ae, %i.iw
  %i.jf = add i32 %i.ae, %i.iz
  %i.jg = add nuw nsw i64 %i.hp, 3                ; 3 uses
  %i.jh = icmp samesign ule i64 %i.jg, %i.an
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.hp
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.jg
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.hp
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.jg
  %i.jn = load i16, ptr %i.hw, align 2, !tbaa !120, !noalias !214
  %i.jo = load <2 x i16>, ptr %i.hu, align 2, !tbaa !120, !noalias !214
  %i.jp = shufflevector <2 x i16> %i.jo, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jq = zext i16 %i.jn to i32                   ; 2 uses
  %i.jr = zext <4 x i16> %i.jp to <4 x i32>
  %i.js = load i16, ptr %i.hs, align 2, !tbaa !120, !noalias !214
  %i.jt = load <2 x i16>, ptr %i.hq, align 2, !tbaa !120, !noalias !214
  %i.ju = shufflevector <2 x i16> %i.jt, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jv = zext i16 %i.js to i32
  %i.jw = zext <4 x i16> %i.ju to <4 x i32>
  %i.jx = insertelement <2 x i32> poison, i32 %i.jv, i64 0
  %i.jy = shufflevector <2 x i32> %i.jx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.ka = add i32 %i.ae, %i.ia                    ; 4 uses
  %i.kb = add i32 %i.ae, %i.id                    ; 3 uses
  %i.kc = add nsw i32 %i.ja, %i.ka                ; 2 uses
  %i.kd = add nsw i32 %i.jb, %i.kb                ; 2 uses
  %i.ke = add nsw i32 %i.jc, %i.ka
  %i.kf = add nsw i32 %i.jd, %i.kb
  %i.kg = add nsw i32 %i.jc, %i.kc
  %i.kh = add nsw i32 %i.kg, %i.je                ; 2 uses
  %i.ki = add nsw i32 %i.jd, %i.kd
  %i.kj = add nsw i32 %i.ki, %i.jf
  %i.kk = insertelement <4 x i32> poison, i32 %i.kb, i64 0 ; 2 uses
  %i.kl = insertelement <4 x i32> %i.kk, i32 %i.kd, i64 1
  %i.km = insertelement <4 x i32> %i.kl, i32 %i.kf, i64 2
  %i.kn = insertelement <4 x i32> %i.km, i32 %i.kj, i64 3
  %i.ko = ashr <4 x i32> %i.kn, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.kp = shl nsw <4 x i32> %i.ko, splat (i32 11)
  %i.kq = ashr i32 %i.kh, 2
  %i.kr = insertelement <4 x i32> poison, i32 %i.ka, i64 0
  %i.ks = insertelement <4 x i32> %i.kr, i32 %i.kc, i64 1
  %i.kt = insertelement <4 x i32> %i.ks, i32 %i.ke, i64 2
  %i.ku = insertelement <4 x i32> %i.kt, i32 %i.kh, i64 3
  %i.kv = ashr <4 x i32> %i.ku, <i32 0, i32 1, i32 1, i32 2> ; 3 uses
  %i.kw = mul nsw <4 x i32> %i.kv, splat (i32 -778)
  %i.kx = sub nsw <4 x i32> %i.kw, %i.kp
  %i.ky = ashr <4 x i32> %i.kx, splat (i32 12)    ; 4 uses
  %i.kz = shufflevector <4 x i32> %i.kk, <4 x i32> %i.ky, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.la = shufflevector <4 x i32> %i.kz, <4 x i32> %i.ko, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.lb = insertelement <4 x i32> %i.la, i32 %i.ka, i64 2
  %i.lc = add nsw <4 x i32> %i.lb, %i.jw
  %i.ld = mul nsw <4 x i32> %i.lc, %i.hn
  %i.le = ashr <4 x i32> %i.ld, splat (i32 8)
  %i.lf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.le, <4 x i32> zeroinitializer)
  %i.lg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lf, <4 x i32> splat (i32 65535))
  %i.lh = trunc nuw <4 x i32> %i.lg to <4 x i16>
  store <4 x i16> %i.lh, ptr %i.ji, align 2, !tbaa !120
  %i.li = shufflevector <4 x i32> %i.ky, <4 x i32> %i.kv, <2 x i32> <i32 1, i32 5>
  %i.lj = add nsw <2 x i32> %i.li, %i.jy
  %i.lk = mul nsw <2 x i32> %i.lj, %i.ho
  %i.ll = ashr <2 x i32> %i.lk, splat (i32 8)
  %i.lm = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ll, <2 x i32> zeroinitializer)
  %i.ln = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.lm, <2 x i32> splat (i32 65535))
  %i.lo = trunc nuw <2 x i32> %i.ln to <2 x i16>
  store <2 x i16> %i.lo, ptr %i.jk, align 2, !tbaa !120
  %i.lp = shufflevector <4 x i32> %i.ky, <4 x i32> %i.kv, <4 x i32> <i32 poison, i32 2, i32 6, i32 poison>
  %i.lq = shufflevector <4 x i32> %i.lp, <4 x i32> %i.ko, <4 x i32> <i32 6, i32 1, i32 2, i32 7>
  %i.lr = add nsw <4 x i32> %i.lq, %i.jr
  %i.ls = mul nsw <4 x i32> %i.ai, %i.lr
  %i.lt = ashr <4 x i32> %i.ls, splat (i32 8)
  %i.lu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lt, <4 x i32> zeroinitializer)
  %i.lv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lu, <4 x i32> splat (i32 65535))
  %i.lw = trunc nuw <4 x i32> %i.lv to <4 x i16>
  store <4 x i16> %i.lw, ptr %i.jl, align 2, !tbaa !120
  %i.lx = add nsw i32 %i.kq, %i.jq
  %i.ly = extractelement <4 x i32> %i.ky, i64 3
  %i.lz = add nsw i32 %i.ly, %i.jq
  %i.ma = insertelement <2 x i32> poison, i32 %i.lz, i64 0
  %i.mb = insertelement <2 x i32> %i.ma, i32 %i.lx, i64 1
  %i.mc = mul nsw <2 x i32> %i.mb, %i.ho
  %i.md = ashr <2 x i32> %i.mc, splat (i32 8)
  %i.me = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.md, <2 x i32> zeroinitializer)
  %i.mf = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.me, <2 x i32> splat (i32 65535))
  %i.mg = trunc nuw <2 x i32> %i.mf to <2 x i16>
  store <2 x i16> %i.mg, ptr %i.jz, align 2, !tbaa !120
  %exitcond.not = icmp eq i64 %i.ie, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader213, !llvm.loop !223

._crit_edge:                                      ; preds = %.preheader213
  %i.mh = zext nneg i32 %i.s to i64
  %i.mi = mul nuw nsw i32 %i.ab, 6                ; 3 uses
  %i.mj = add nuw nsw i32 %i.mi, 4
  %i.mk = add nuw nsw i32 %i.mi, 6
  %i.ml = icmp samesign ule i32 %i.mk, %i.s
  tail call void @llvm.assume(i1 %i.ml), !noalias !224
  %i.mm = zext nneg i32 %i.mj to i64              ; 2 uses
  %i.mn = zext nneg i32 %i.mi to i64              ; 7 uses
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.as ; 5 uses
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mn
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mn
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 2
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mn
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mu = add nuw nsw i64 %i.mn, 3                ; 2 uses
  %i.mv = icmp samesign ult i64 %i.mu, %i.mh
  tail call void @llvm.assume(i1 %i.mv), !noalias !224
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mu
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mo, i64 %i.mm ; 2 uses
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !120, !noalias !224
  %i.mz = zext i16 %i.my to i32
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !120, !noalias !224
  %i.nc = zext i16 %i.nb to i32
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0112.0.copyload, i64 %i.aw
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %i.mm ; 2 uses
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !120, !noalias !224
  %i.ng = zext i16 %i.nf to i32
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 2
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !120, !noalias !224
  %i.nj = zext i16 %i.ni to i32
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !118
  %i.nm = add i32 %i.nl, -16384                   ; 4 uses
  %i.nn = add i32 %i.nm, %i.ng
  %i.no = add i32 %i.nm, %i.nj
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.nq = add nuw nsw i64 %i.mn, 3                ; 3 uses
  %i.nr = icmp samesign ule i64 %i.nq, %i.an
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az ; 2 uses
  tail call void @llvm.assume(i1 %i.nr)
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.mn
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nq
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 2
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bd ; 2 uses
  %i.nx = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.mn
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %i.nq
  %i.nz = load i16, ptr %i.mw, align 2, !tbaa !120, !noalias !224
  %i.oa = load <2 x i16>, ptr %i.mt, align 2, !tbaa !120, !noalias !224
  %i.ob = shufflevector <2 x i16> %i.oa, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.oc = zext i16 %i.nz to i32                   ; 2 uses
  %i.od = zext <4 x i16> %i.ob to <4 x i32>
  %i.oe = load <3 x i32>, ptr %i.np, align 8, !tbaa !119 ; 2 uses
  %i.of = shufflevector <3 x i32> %i.oe, <3 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.og = load i32, ptr %i.np, align 8, !tbaa !119
  %i.oh = load i16, ptr %i.mr, align 2, !tbaa !120, !noalias !224
  %i.oi = load <2 x i16>, ptr %i.mp, align 2, !tbaa !120, !noalias !224
  %i.oj = shufflevector <2 x i16> %i.oi, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ok = zext i16 %i.oh to i32
  %i.ol = zext <4 x i16> %i.oj to <4 x i32>
  %i.om = add i32 %i.nm, %i.nc                    ; 3 uses
  %i.on = add nsw i32 %i.no, %i.om
  %i.oo = shl nsw i32 %i.om, 11
  %i.op = insertelement <4 x i32> poison, i32 %i.om, i64 0
  %i.oq = ashr i32 %i.on, 1                       ; 2 uses
  %i.or = insertelement <4 x i32> poison, i32 %i.og, i64 0
  %i.os = shufflevector <4 x i32> %i.or, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ot = shufflevector <4 x i32> %i.os, <4 x i32> %i.of, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ou = add i32 %i.nm, %i.mz                    ; 4 uses
  %i.ov = add nsw i32 %i.nn, %i.ou
  %i.ow = mul nsw i32 %i.ou, -778
  %i.ox = sub nsw i32 %i.ow, %i.oo
  %i.oy = ashr i32 %i.ox, 12                      ; 2 uses
  %i.oz = insertelement <4 x i32> %i.op, i32 %i.oy, i64 1
  %i.pa = insertelement <4 x i32> %i.oz, i32 %i.ou, i64 2
  %i.pb = shufflevector <4 x i32> %i.pa, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.pc = add nsw <4 x i32> %i.pb, %i.ol
  %i.pd = insertelement <2 x i32> poison, i32 %i.oy, i64 0
  %i.pe = insertelement <2 x i32> %i.pd, i32 %i.ou, i64 1
  %i.pf = insertelement <2 x i32> poison, i32 %i.ok, i64 0
  %i.pg = shufflevector <2 x i32> %i.pf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ph = add nsw <2 x i32> %i.pe, %i.pg
  %i.pi = mul nsw <4 x i32> %i.pc, %i.ot
  %i.pj = shufflevector <3 x i32> %i.oe, <3 x i32> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pk = mul nsw <2 x i32> %i.ph, %i.pj
  %i.pl = ashr <4 x i32> %i.pi, splat (i32 8)
  %i.pm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.pl, <4 x i32> zeroinitializer)
  %i.pn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.pm, <4 x i32> splat (i32 65535))
  %i.po = trunc nuw <4 x i32> %i.pn to <4 x i16>
  store <4 x i16> %i.po, ptr %i.nt, align 2, !tbaa !120
  %i.pp = ashr <2 x i32> %i.pk, splat (i32 8)
  %i.pq = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.pp, <2 x i32> zeroinitializer)
  %i.pr = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.pq, <2 x i32> splat (i32 65535))
  %i.ps = trunc nuw <2 x i32> %i.pr to <2 x i16>
  store <2 x i16> %i.ps, ptr %i.nv, align 2, !tbaa !120
  %i.pt = shl nsw i32 %i.oq, 11
  %i.pu = insertelement <4 x i32> poison, i32 %i.oq, i64 0
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.pw = ashr i32 %i.ov, 1                       ; 3 uses
  %i.px = mul nsw i32 %i.pw, -778
  %i.py = sub nsw i32 %i.px, %i.pt
  %i.pz = ashr i32 %i.py, 12                      ; 2 uses
  %i.qa = insertelement <4 x i32> %i.pu, i32 %i.pz, i64 1
  %i.qb = insertelement <4 x i32> %i.qa, i32 %i.pw, i64 2
  %i.qc = shufflevector <4 x i32> %i.qb, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.qd = add nsw <4 x i32> %i.qc, %i.od
  %i.qe = mul nsw <4 x i32> %i.of, %i.qd
  %i.qf = add nsw i32 %i.pw, %i.oc
  %i.qg = add nsw i32 %i.pz, %i.oc
  %i.qh = insertelement <2 x i32> poison, i32 %i.qg, i64 0
  %i.qi = insertelement <2 x i32> %i.qh, i32 %i.qf, i64 1
  %i.qj = mul nsw <2 x i32> %i.qi, %i.pj
  %i.qk = ashr <4 x i32> %i.qe, splat (i32 8)
  %i.ql = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qk, <4 x i32> zeroinitializer)
  %i.qm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ql, <4 x i32> splat (i32 65535))
  %i.qn = trunc nuw <4 x i32> %i.qm to <4 x i16>
  store <4 x i16> %i.qn, ptr %i.nx, align 2, !tbaa !120
  %i.qo = ashr <2 x i32> %i.qj, splat (i32 8)
  %i.qp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qo, <2 x i32> zeroinitializer)
  %i.qq = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.qp, <2 x i32> splat (i32 65535))
  %i.qr = trunc nuw <2 x i32> %i.qq to <2 x i16>
  store <2 x i16> %i.qr, ptr %i.pv, align 2, !tbaa !120
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #15
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !227
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !227
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.1, ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.umin.v32i32(<32 x i32>, <32 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i32> @llvm.smax.v32i32(<32 x i32>, <32 x i32>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold noreturn }
attributes #11 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
end_hunk_2
