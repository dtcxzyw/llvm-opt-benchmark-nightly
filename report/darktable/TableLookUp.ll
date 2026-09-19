Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/TableLookUp?download=true
inline.NumInlined: 165
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz:bb.a
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #18 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.d
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = load ptr, ptr %2, align 8, !tbaa !23
  %.fr = freeze ptr %i.c                          ; 40 uses
  %.fr204 = freeze ptr %i.b
  %i.d = ptrtoint ptr %.fr204 to i64
  %i.e = ptrtoint ptr %.fr to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = lshr exact i64 %i.f, 1                   ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 11 uses
  %i.i = icmp sgt i32 %i.h, 65536
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE, i32 noundef %i.h) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.k = icmp sgt i32 %1, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8setTableEiRKSt6vectorItSaItEE) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 6 uses
  %i.n = icmp sgt i32 %i.j, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ult i32 %1, %i.j
  tail call void @llvm.assume(i1 %i.o)
  %i.p = shl i32 %1, 17
  %i.q = zext i32 %i.p to i64                     ; 4 uses
  %i.r = getelementptr [2 x i8], ptr %i.m, i64 %i.q ; 32 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !20, !range !51, !noundef !52
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.preheader83, label %.preheader84

.preheader84:                                     ; preds = %bb.e
  %i.v = shl i64 %i.f, 31
  %sext = add i64 %i.v, -4294967296
  %i.w = ashr i64 %sext, 32                       ; 10 uses
  %sext101 = shl i64 %i.f, 31
  %i.x = ashr i64 %sext101, 32                    ; 9 uses
  %i.y = shl nuw nsw i64 %i.q, 1
  %i.z = getelementptr i8, ptr %i.m, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 131072 ; 2 uses
  %scevgep105 = getelementptr i8, ptr %.fr, i64 131072
  %i.aa = shl nsw i64 %i.w, 1                     ; 2 uses
  %scevgep106 = getelementptr i8, ptr %.fr, i64 %i.aa
  %i.ab = getelementptr i8, ptr %.fr, i64 %i.aa
  %scevgep107 = getelementptr i8, ptr %i.ab, i64 2
  %bound0 = icmp ult ptr %i.r, %scevgep105
  %bound1 = icmp ult ptr %.fr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0108 = icmp ult ptr %i.r, %scevgep107
  %bound1109 = icmp ult ptr %scevgep106, %scevgep
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx = or i1 %found.conflict, %found.conflict110
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader84
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <16 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat112 = shufflevector <16 x i64> %broadcast.splatinsert111, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ac = icmp slt <16 x i64> %vec.ind, %broadcast.splat112
  %i.ad = select <16 x i1> %i.ac, <16 x i64> %vec.ind, <16 x i64> %broadcast.splat ; 16 uses
  %i.ae = extractelement <16 x i64> %i.ad, i64 0
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ae
  %i.ag = extractelement <16 x i64> %i.ad, i64 1
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ag
  %i.ai = extractelement <16 x i64> %i.ad, i64 2
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ai
  %i.ak = extractelement <16 x i64> %i.ad, i64 3
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ak
  %i.am = extractelement <16 x i64> %i.ad, i64 4
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.am
  %i.ao = extractelement <16 x i64> %i.ad, i64 5
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ao
  %i.aq = extractelement <16 x i64> %i.ad, i64 6
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.aq
  %i.as = extractelement <16 x i64> %i.ad, i64 7
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.as
  %i.au = extractelement <16 x i64> %i.ad, i64 8
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.au
  %i.aw = extractelement <16 x i64> %i.ad, i64 9
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.aw
  %i.ay = extractelement <16 x i64> %i.ad, i64 10
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ay
  %i.ba = extractelement <16 x i64> %i.ad, i64 11
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.ba
  %i.bc = extractelement <16 x i64> %i.ad, i64 12
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.bc
  %i.be = extractelement <16 x i64> %i.ad, i64 13
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.be
  %i.bg = extractelement <16 x i64> %i.ad, i64 14
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.bg
  %i.bi = extractelement <16 x i64> %i.ad, i64 15
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.bi
  %i.bk = load i16, ptr %i.af, align 2, !tbaa !22, !alias.scope !53
  %i.bl = load i16, ptr %i.ah, align 2, !tbaa !22, !alias.scope !53
  %i.bm = load i16, ptr %i.aj, align 2, !tbaa !22, !alias.scope !53
  %i.bn = load i16, ptr %i.al, align 2, !tbaa !22, !alias.scope !53
  %i.bo = load i16, ptr %i.an, align 2, !tbaa !22, !alias.scope !53
  %i.bp = load i16, ptr %i.ap, align 2, !tbaa !22, !alias.scope !53
  %i.bq = load i16, ptr %i.ar, align 2, !tbaa !22, !alias.scope !53
  %i.br = load i16, ptr %i.at, align 2, !tbaa !22, !alias.scope !53
  %i.bs = load i16, ptr %i.av, align 2, !tbaa !22, !alias.scope !53
  %i.bt = load i16, ptr %i.ax, align 2, !tbaa !22, !alias.scope !53
  %i.bu = load i16, ptr %i.az, align 2, !tbaa !22, !alias.scope !53
  %i.bv = load i16, ptr %i.bb, align 2, !tbaa !22, !alias.scope !53
  %i.bw = load i16, ptr %i.bd, align 2, !tbaa !22, !alias.scope !53
  %i.bx = load i16, ptr %i.bf, align 2, !tbaa !22, !alias.scope !53
  %i.by = load i16, ptr %i.bh, align 2, !tbaa !22, !alias.scope !53
  %i.bz = load i16, ptr %i.bj, align 2, !tbaa !22, !alias.scope !53
  %i.ca = insertelement <16 x i16> poison, i16 %i.bk, i64 0
  %i.cb = insertelement <16 x i16> %i.ca, i16 %i.bl, i64 1
  %i.cc = insertelement <16 x i16> %i.cb, i16 %i.bm, i64 2
  %i.cd = insertelement <16 x i16> %i.cc, i16 %i.bn, i64 3
  %i.ce = insertelement <16 x i16> %i.cd, i16 %i.bo, i64 4
  %i.cf = insertelement <16 x i16> %i.ce, i16 %i.bp, i64 5
  %i.cg = insertelement <16 x i16> %i.cf, i16 %i.bq, i64 6
  %i.ch = insertelement <16 x i16> %i.cg, i16 %i.br, i64 7
  %i.ci = insertelement <16 x i16> %i.ch, i16 %i.bs, i64 8
  %i.cj = insertelement <16 x i16> %i.ci, i16 %i.bt, i64 9
  %i.ck = insertelement <16 x i16> %i.cj, i16 %i.bu, i64 10
  %i.cl = insertelement <16 x i16> %i.ck, i16 %i.bv, i64 11
  %i.cm = insertelement <16 x i16> %i.cl, i16 %i.bw, i64 12
  %i.cn = insertelement <16 x i16> %i.cm, i16 %i.bx, i64 13
  %i.co = insertelement <16 x i16> %i.cn, i16 %i.by, i64 14
  %i.cp = insertelement <16 x i16> %i.co, i16 %i.bz, i64 15
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index
  store <16 x i16> %i.cp, ptr %i.cq, align 2, !tbaa !22, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.cr = icmp eq i64 %index.next, 65536
  br i1 %i.cr, label %.loopexit, label %vector.body, !llvm.loop !36

.preheader83:                                     ; preds = %bb.e
  %i.cs = icmp sgt i32 %i.h, 0
  br i1 %i.cs, label %bb.f, label %iter.check179

bb.f:                                             ; preds = %.preheader83
  %i.ct = add nuw i64 %i.g, 4294967295
  %i.cu = and i64 %i.ct, 4294967295               ; 6 uses
  %wide.trip.count = and i64 %i.g, 2147483647     ; 6 uses
  %i.cv = load i16, ptr %.fr, align 2, !tbaa !22  ; 2 uses
  %i.cw = zext i16 %i.cv to i32                   ; 3 uses
  %.not = icmp eq i64 %i.cu, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = getelementptr inbounds nuw i8, ptr %.fr, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !22
  %i.cz = tail call i16 @llvm.umax.i16(i16 %i.cy, i16 %i.cv)
  %i.da = zext i16 %i.cz to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.speculated.peel = phi i32 [ %i.da, %bb.g ], [ %i.cw, %bb.f ]
  %i.db = sub nsw i32 %.sroa.speculated.peel, %i.cw ; 3 uses
  %3 = icmp sgt i32 %i.db, -1
  tail call void @llvm.assume(i1 %3)
  %i.dc = add nuw nsw i32 %i.db, 2
  %i.dd = lshr i32 %i.dc, 2
  %i.de = sub nsw i32 %i.cw, %i.dd
  %.sroa.speculate.load.false.sroa.speculated.i.peel = tail call i32 @llvm.smax.i32(i32 %i.de, i32 0)
  %i.df = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.peel to i16
  store i16 %i.df, ptr %i.r, align 2, !tbaa !22
  %i.dg = trunc nuw i32 %i.db to i16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !22
  %exitcond96.peel.not = icmp eq i64 %wide.trip.count, 1
  br i1 %exitcond96.peel.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.di = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.di, 4
  br i1 %min.iters.check, label %.peel.next.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %iter.check
  %i.dj = shl nuw nsw i64 %i.q, 1                 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.m, i64 %i.dj
  %scevgep114 = getelementptr i8, ptr %i.dk, i64 4
  %i.dl = shl nuw nsw i64 %wide.trip.count, 2
  %i.dm = getelementptr i8, ptr %i.m, i64 %i.dl
  %scevgep115 = getelementptr i8, ptr %i.dm, i64 %i.dj
  %i.dn = shl nuw nsw i64 %wide.trip.count, 1
  %i.do = getelementptr i8, ptr %.fr, i64 %i.dn
  %scevgep116 = getelementptr i8, ptr %i.do, i64 2
  %bound0117 = icmp ult ptr %scevgep114, %scevgep116
  %bound1118 = icmp ult ptr %.fr, %scevgep115
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.peel.next.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck113
  %min.iters.check121 = icmp ult i64 %i.di, 16
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check
  %i.dp = and i64 %i.di, 12
  %n.vec = and i64 %i.di, -16                     ; 4 uses
  %i.dq = or disjoint i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert123 = insertelement <16 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat124 = shufflevector <16 x i64> %broadcast.splatinsert123, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %vec.ind127 = phi <16 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16>, %vector.ph122 ], [ %vec.ind.next130, %vector.body125 ] ; 2 uses
  %i.dr = or disjoint i64 %index126, 1            ; 2 uses
  %i.ds = getelementptr [2 x i8], ptr %.fr, i64 %i.dr ; 3 uses
  %wide.load = load <16 x i16>, ptr %i.ds, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.dt = zext <16 x i16> %wide.load to <16 x i32> ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 -2
  %wide.load128 = load <16 x i16>, ptr %i.du, align 2, !tbaa !22, !alias.scope !56
  %i.dv = tail call <16 x i16> @llvm.umin.v16i16(<16 x i16> %wide.load128, <16 x i16> %wide.load)
  %i.dw = zext <16 x i16> %i.dv to <16 x i32>
  %i.dx = icmp samesign ult <16 x i64> %vec.ind127, %broadcast.splat124 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.ds, i64 2
  %wide.masked.load = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.dy, <16 x i1> %i.dx, <16 x i16> poison), !tbaa !22, !alias.scope !56
  %i.dz = tail call <16 x i16> @llvm.umax.v16i16(<16 x i16> %wide.masked.load, <16 x i16> %wide.load)
  %i.ea = zext <16 x i16> %i.dz to <16 x i32>
  %predphi = select <16 x i1> %i.dx, <16 x i32> %i.ea, <16 x i32> %i.dt
  %i.eb = sub nsw <16 x i32> %predphi, %i.dw      ; 2 uses
  %i.ec = add nuw nsw <16 x i32> %i.eb, splat (i32 2)
  %i.ed = lshr <16 x i32> %i.ec, splat (i32 2)
  %i.ee = sub nsw <16 x i32> %i.dt, %i.ed
  %i.ef = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ee, <16 x i32> zeroinitializer)
  %i.eg = trunc nuw <16 x i32> %i.ef to <16 x i16>
  %i.eh = shl nuw nsw i64 %i.dr, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.eh
  %i.ej = trunc nuw <16 x i32> %i.eb to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.eg, <16 x i16> %i.ej, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.ei, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next129 = add nuw i64 %index126, 16      ; 2 uses
  %vec.ind.next130 = add nuw nsw <16 x i64> %vec.ind127, splat (i64 16)
  %i.ek = icmp eq i64 %index.next129, %n.vec
  br i1 %i.ek, label %middle.block131, label %vector.body125, !llvm.loop !40

middle.block131:                                  ; preds = %vector.body125
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block131
  %min.epilog.iters.check = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check, label %.peel.next.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.dq, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.di, -4                   ; 3 uses
  %i.el = or disjoint i64 %n.vec132, 1
  %broadcast.splatinsert133 = insertelement <4 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat134 = shufflevector <4 x i64> %broadcast.splatinsert133, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat136, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next144, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind138 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.em = or disjoint i64 %index137, 1            ; 2 uses
  %i.en = getelementptr [2 x i8], ptr %.fr, i64 %i.em ; 3 uses
  %wide.load139 = load <4 x i16>, ptr %i.en, align 2, !tbaa !22, !alias.scope !56 ; 3 uses
  %i.eo = zext <4 x i16> %wide.load139 to <4 x i32> ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 -2
  %wide.load140 = load <4 x i16>, ptr %i.ep, align 2, !tbaa !22, !alias.scope !56
  %i.eq = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %wide.load140, <4 x i16> %wide.load139)
  %i.er = zext <4 x i16> %i.eq to <4 x i32>
  %i.es = icmp ult <4 x i64> %vec.ind138, %broadcast.splat134 ; 2 uses
  %i.et = getelementptr i8, ptr %i.en, i64 2
  %wide.masked.load141 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.et, <4 x i1> %i.es, <4 x i16> poison), !tbaa !22, !alias.scope !56
  %i.eu = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.masked.load141, <4 x i16> %wide.load139)
  %i.ev = zext <4 x i16> %i.eu to <4 x i32>
  %predphi142 = select <4 x i1> %i.es, <4 x i32> %i.ev, <4 x i32> %i.eo
  %i.ew = sub nsw <4 x i32> %predphi142, %i.er    ; 2 uses
  %i.ex = add nuw nsw <4 x i32> %i.ew, splat (i32 2)
  %i.ey = lshr <4 x i32> %i.ex, splat (i32 2)
  %i.ez = sub nsw <4 x i32> %i.eo, %i.ey
  %i.fa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ez, <4 x i32> zeroinitializer)
  %i.fb = shl nuw nsw i64 %i.em, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.fb
  %i.fd = shufflevector <4 x i32> %i.fa, <4 x i32> %i.ew, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec143 = trunc nuw <8 x i32> %i.fd to <8 x i16>
  store <8 x i16> %interleaved.vec143, ptr %i.fc, align 2, !tbaa !22, !alias.scope !57, !noalias !56
  %index.next144 = add nuw i64 %index137, 4       ; 2 uses
  %vec.ind.next145 = add nuw nsw <4 x i64> %vec.ind138, splat (i64 4)
  %i.fe = icmp eq i64 %index.next144, %n.vec132
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !41

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %i.di, %n.vec132
  br i1 %cmp.n146, label %.preheader, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %vector.memcheck113, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv93.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck113 ], [ %i.dq, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ] ; 7 uses
  %.neg = add nsw i64 %indvars.iv93.ph, 1
  %i.ff = and i64 %i.f, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ff, 0
  br i1 %lcmp.mod.not.not, label %.peel.next.prol, label %.peel.next.prol.loopexit

.peel.next.prol:                                  ; preds = %.peel.next.preheader
  %i.fg = getelementptr [2 x i8], ptr %.fr, i64 %indvars.iv93.ph ; 3 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !22 ; 3 uses
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fg, i64 -2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !22
  %i.fl = tail call i16 @llvm.umin.i16(i16 %i.fk, i16 %i.fh)
  %i.fm = zext i16 %i.fl to i32
  %i.fn = icmp samesign ult i64 %indvars.iv93.ph, %i.cu
  br i1 %i.fn, label %bb.i, label %.peel.next.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.peel.next.prol
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !22
  %i.fq = tail call i16 @llvm.umax.i16(i16 %i.fp, i16 %i.fh)
  %i.fr = zext i16 %i.fq to i32
  br label %.peel.next.prol.loopexit.unr-lcssa

.peel.next.prol.loopexit.unr-lcssa:               ; preds = %bb.i, %.peel.next.prol
  %.sroa.speculated.prol = phi i32 [ %i.fr, %bb.i ], [ %i.fi, %.peel.next.prol ]
  %i.fs = sub nsw i32 %.sroa.speculated.prol, %i.fm ; 3 uses
  %4 = icmp sgt i32 %i.fs, -1
  tail call void @llvm.assume(i1 %4)
  %i.ft = add nuw nsw i32 %i.fs, 2
  %i.fu = lshr i32 %i.ft, 2
  %i.fv = sub nsw i32 %i.fi, %i.fu
  %.sroa.speculate.load.false.sroa.speculated.i.prol = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %i.fw = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.prol to i16
  %i.fx = icmp samesign ult i64 %indvars.iv93.ph, 65536
  tail call void @llvm.assume(i1 %i.fx)
  %.idx.prol = shl nuw nsw i64 %indvars.iv93.ph, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.prol ; 2 uses
  store i16 %i.fw, ptr %i.fy, align 2, !tbaa !22
  %i.fz = trunc nuw i32 %i.fs to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !22
  %indvars.iv.next94.prol = add nuw nsw i64 %indvars.iv93.ph, 1
  br label %.peel.next.prol.loopexit

.peel.next.prol.loopexit:                         ; preds = %.peel.next.prol.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv93.unr = phi i64 [ %indvars.iv93.ph, %.peel.next.preheader ], [ %indvars.iv.next94.prol, %.peel.next.prol.loopexit.unr-lcssa ]
  %i.gb = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.gb, label %.preheader, label %.peel.next

scalar.ph:                                        ; preds = %.preheader84, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ 0, %.preheader84 ] ; 11 uses
  %i.gc = icmp slt i64 %indvars.iv, %i.x
  %.in.v = select i1 %i.gc, i64 %indvars.iv, i64 %i.w
  %.in = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v
  %i.gd = load i16, ptr %.in, align 2, !tbaa !22
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.gf = icmp slt i64 %indvars.iv.next, %i.x
  %.in.v.1 = select i1 %i.gf, i64 %indvars.iv.next, i64 %i.w
  %.in.1 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.1
  %i.gg = load i16, ptr %.in.1, align 2, !tbaa !22
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !22
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.gi = icmp slt i64 %indvars.iv.next.1, %i.x
  %.in.v.2 = select i1 %i.gi, i64 %indvars.iv.next.1, i64 %i.w
  %.in.2 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.2
  %i.gj = load i16, ptr %.in.2, align 2, !tbaa !22
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next.1
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !22
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.gl = icmp slt i64 %indvars.iv.next.2, %i.x
  %.in.v.3 = select i1 %i.gl, i64 %indvars.iv.next.2, i64 %i.w
  %.in.3 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.3
  %i.gm = load i16, ptr %.in.3, align 2, !tbaa !22
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next.2
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !22
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 3 uses
  %i.go = icmp slt i64 %indvars.iv.next.3, %i.x
  %.in.v.4 = select i1 %i.go, i64 %indvars.iv.next.3, i64 %i.w
  %.in.4 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.4
  %i.gp = load i16, ptr %.in.4, align 2, !tbaa !22
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next.3
  store i16 %i.gp, ptr %i.gq, align 2, !tbaa !22
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 3 uses
  %i.gr = icmp slt i64 %indvars.iv.next.4, %i.x
  %.in.v.5 = select i1 %i.gr, i64 %indvars.iv.next.4, i64 %i.w
  %.in.5 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.5
  %i.gs = load i16, ptr %.in.5, align 2, !tbaa !22
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next.4
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !22
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 3 uses
  %i.gu = icmp slt i64 %indvars.iv.next.5, %i.x
  %.in.v.6 = select i1 %i.gu, i64 %indvars.iv.next.5, i64 %i.w
  %.in.6 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.6
  %i.gv = load i16, ptr %.in.6, align 2, !tbaa !22
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next.5
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !22
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 3 uses
  %i.gx = icmp slt i64 %indvars.iv.next.6, %i.x
  %.in.v.7 = select i1 %i.gx, i64 %indvars.iv.next.6, i64 %i.w
  %.in.7 = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %.in.v.7
  %i.gy = load i16, ptr %.in.7, align 2, !tbaa !22
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.next.6
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !22
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, 65536
  br i1 %exitcond.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !42

.preheader:                                       ; preds = %.peel.next.prol.loopexit, %bb.l, %middle.block131, %vec.epilog.middle.block, %bb.h
  %.not90 = icmp eq i32 %i.h, 65536
  br i1 %.not90, label %.loopexit, label %iter.check179

iter.check179:                                    ; preds = %.preheader83, %.preheader
  %i.ha = shl i64 %i.f, 31
  %sext82 = add i64 %i.ha, -4294967296
  %i.hb = ashr i64 %sext82, 32                    ; 2 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %.fr, i64 %i.hb ; 12 uses
  %i.hd = sub i32 65536, %i.h                     ; 7 uses
  %min.iters.check156 = icmp ult i32 %i.hd, 8
  br i1 %min.iters.check156, label %vec.epilog.scalar.ph180.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %iter.check179
  %i.he = shl i64 %i.f, 1
  %i.hf = and i64 %i.he, 8589934588               ; 2 uses
  %i.hg = shl nuw nsw i64 %i.q, 1                 ; 2 uses
  %i.hh = getelementptr i8, ptr %i.m, i64 %i.hf
  %scevgep149 = getelementptr i8, ptr %i.hh, i64 %i.hg
  %i.hi = shl i64 %i.f, 1
  %i.hj = sub i64 262140, %i.hi
  %i.hk = and i64 %i.hj, 17179869180
  %i.hl = getelementptr i8, ptr %i.m, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hf
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hg
  %scevgep150 = getelementptr i8, ptr %i.hn, i64 4
  %i.ho = shl nuw nsw i64 %i.hb, 1
  %i.hp = getelementptr i8, ptr %.fr, i64 %i.ho
  %scevgep151 = getelementptr i8, ptr %i.hp, i64 2
  %bound0152 = icmp ult ptr %scevgep149, %scevgep151
  %bound1153 = icmp ult ptr %i.hc, %scevgep150
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %vec.epilog.scalar.ph180.preheader, label %vector.main.loop.iter.check157

vector.main.loop.iter.check157:                   ; preds = %vector.memcheck148
  %min.iters.check158 = icmp ult i32 %i.hd, 64
  br i1 %min.iters.check158, label %vec.epilog.ph183, label %vector.ph159

vector.ph159:                                     ; preds = %vector.main.loop.iter.check157
  %i.hq = and i32 %i.hd, 56
  %n.vec160 = and i32 %i.hd, -64                  ; 4 uses
  %i.hr = add i32 %n.vec160, %i.h                 ; 2 uses
  %i.hs = load i16, ptr %i.hc, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert167 = insertelement <16 x i16> poison, i16 %i.hs, i64 0
  %interleaved.vec169 = shufflevector <16 x i16> %broadcast.splatinsert167, <16 x i16> zeroinitializer, <32 x i32> <i32 0, i32 16, i32 0, i32 17, i32 0, i32 18, i32 0, i32 19, i32 0, i32 20, i32 0, i32 21, i32 0, i32 22, i32 0, i32 23, i32 0, i32 24, i32 0, i32 25, i32 0, i32 26, i32 0, i32 27, i32 0, i32 28, i32 0, i32 29, i32 0, i32 30, i32 0, i32 31> ; 4 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph159
  %index165 = phi i32 [ 0, %vector.ph159 ], [ %index.next173, %vector.body164 ]
  %i.ht = phi i32 [ %i.h, %vector.ph159 ], [ %i.ij, %vector.body164 ] ; 5 uses
  %i.hu = shl nsw i32 %i.ht, 1
  %i.hv = shl i32 %i.ht, 1
  %i.hw = add i32 %i.hv, 32
  %i.hx = shl i32 %i.ht, 1
  %i.hy = add i32 %i.hx, 64
  %i.hz = shl i32 %i.ht, 1
  %i.ia = add i32 %i.hz, 96
  %i.ib = zext nneg i32 %i.hu to i64
  %i.ic = zext nneg i32 %i.hw to i64
  %i.id = zext nneg i32 %i.hy to i64
  %i.ie = zext nneg i32 %i.ia to i64
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ib
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ic
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.id
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ie
  store <32 x i16> %interleaved.vec169, ptr %i.if, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec169, ptr %i.ig, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec169, ptr %i.ih, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  store <32 x i16> %interleaved.vec169, ptr %i.ii, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next173 = add nuw i32 %index165, 64      ; 2 uses
  %i.ij = add i32 %i.ht, 64
  %i.ik = icmp eq i32 %index.next173, %n.vec160
  br i1 %i.ik, label %middle.block175, label %vector.body164, !llvm.loop !46

middle.block175:                                  ; preds = %vector.body164
  %cmp.n176 = icmp eq i32 %i.hd, %n.vec160
  br i1 %cmp.n176, label %.loopexit, label %vec.epilog.iter.check181

vec.epilog.iter.check181:                         ; preds = %middle.block175
  %min.epilog.iters.check182 = icmp eq i32 %i.hq, 0
  br i1 %min.epilog.iters.check182, label %vec.epilog.scalar.ph180.preheader, label %vec.epilog.ph183, !prof !29

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check157, %vec.epilog.iter.check181
  %vec.epilog.resume.val177 = phi i32 [ %n.vec160, %vec.epilog.iter.check181 ], [ 0, %vector.main.loop.iter.check157 ]
  %bc.resume.val178 = phi i32 [ %i.hr, %vec.epilog.iter.check181 ], [ %i.h, %vector.main.loop.iter.check157 ]
  %n.vec184 = and i32 %i.hd, -8                   ; 3 uses
  %i.il = add i32 %n.vec184, %i.h
  %i.im = load i16, ptr %i.hc, align 2, !tbaa !22, !alias.scope !60
  %broadcast.splatinsert191 = insertelement <8 x i16> poison, i16 %i.im, i64 0
  %interleaved.vec193 = shufflevector <8 x i16> %broadcast.splatinsert191, <8 x i16> zeroinitializer, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  br label %vec.epilog.vector.body188

vec.epilog.vector.body188:                        ; preds = %vec.epilog.vector.body188, %vec.epilog.ph183
  %index189 = phi i32 [ %vec.epilog.resume.val177, %vec.epilog.ph183 ], [ %index.next194, %vec.epilog.vector.body188 ]
  %i.in = phi i32 [ %bc.resume.val178, %vec.epilog.ph183 ], [ %i.ir, %vec.epilog.vector.body188 ] ; 2 uses
  %i.io = shl nsw i32 %i.in, 1
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ip
  store <16 x i16> %interleaved.vec193, ptr %i.iq, align 2, !tbaa !22, !alias.scope !61, !noalias !60
  %index.next194 = add nuw i32 %index189, 8       ; 2 uses
  %i.ir = add i32 %i.in, 8
  %i.is = icmp eq i32 %index.next194, %n.vec184
  br i1 %i.is, label %vec.epilog.middle.block196, label %vec.epilog.vector.body188, !llvm.loop !47

vec.epilog.middle.block196:                       ; preds = %vec.epilog.vector.body188
  %cmp.n197 = icmp eq i32 %i.hd, %n.vec184
  br i1 %cmp.n197, label %.loopexit, label %vec.epilog.scalar.ph180.preheader

vec.epilog.scalar.ph180.preheader:                ; preds = %vector.memcheck148, %iter.check179, %vec.epilog.iter.check181, %vec.epilog.middle.block196
  %.088.ph = phi i32 [ %i.h, %iter.check179 ], [ %i.h, %vector.memcheck148 ], [ %i.hr, %vec.epilog.iter.check181 ], [ %i.il, %vec.epilog.middle.block196 ] ; 4 uses
  %i.it = sub i32 0, %.088.ph
  %xtraiter209 = and i32 %i.it, 7                 ; 2 uses
  %lcmp.mod210.not = icmp eq i32 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %vec.epilog.scalar.ph180.prol.loopexit, label %vec.epilog.scalar.ph180.prol

vec.epilog.scalar.ph180.prol:                     ; preds = %vec.epilog.scalar.ph180.preheader, %vec.epilog.scalar.ph180.prol
  %.088.prol = phi i32 [ %i.ja, %vec.epilog.scalar.ph180.prol ], [ %.088.ph, %vec.epilog.scalar.ph180.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph180.prol ], [ 0, %vec.epilog.scalar.ph180.preheader ]
  %i.iu = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.iv = shl nsw i32 %.088.prol, 1               ; 2 uses
  %i.iw = icmp samesign ult i32 %i.iv, 131072
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = zext nneg i32 %i.iv to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ix ; 2 uses
  store i16 %i.iu, ptr %i.iy, align 2, !tbaa !22
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  store i16 0, ptr %i.iz, align 2, !tbaa !22
  %i.ja = add i32 %.088.prol, 1                   ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph180.prol.loopexit, label %vec.epilog.scalar.ph180.prol, !llvm.loop !48

vec.epilog.scalar.ph180.prol.loopexit:            ; preds = %vec.epilog.scalar.ph180.prol, %vec.epilog.scalar.ph180.preheader
  %.088.unr = phi i32 [ %.088.ph, %vec.epilog.scalar.ph180.preheader ], [ %i.ja, %vec.epilog.scalar.ph180.prol ]
  %i.jb = add i32 %.088.ph, -65529
  %i.jc = icmp ult i32 %i.jb, 7
  br i1 %i.jc, label %.loopexit, label %vec.epilog.scalar.ph180

.peel.next:                                       ; preds = %.peel.next.prol.loopexit, %bb.l
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.1, %bb.l ], [ %indvars.iv93.unr, %.peel.next.prol.loopexit ] ; 7 uses
  %i.jd = getelementptr [2 x i8], ptr %.fr, i64 %indvars.iv93 ; 3 uses
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !22 ; 3 uses
  %i.jf = zext i16 %i.je to i32                   ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jd, i64 -2
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !22
  %i.ji = tail call i16 @llvm.umin.i16(i16 %i.jh, i16 %i.je)
  %i.jj = zext i16 %i.ji to i32
  %i.jk = icmp samesign ult i64 %indvars.iv93, %i.cu
  br i1 %i.jk, label %bb.j, label %.peel.next.1

bb.j:                                             ; preds = %.peel.next
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !22
  %i.jn = tail call i16 @llvm.umax.i16(i16 %i.jm, i16 %i.je)
  %i.jo = zext i16 %i.jn to i32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %.peel.next, %bb.j
  %.sroa.speculated = phi i32 [ %i.jo, %bb.j ], [ %i.jf, %.peel.next ]
  %i.jp = sub nsw i32 %.sroa.speculated, %i.jj    ; 3 uses
  %5 = icmp sgt i32 %i.jp, -1
  tail call void @llvm.assume(i1 %5)
  %i.jq = add nuw nsw i32 %i.jp, 2
  %i.jr = lshr i32 %i.jq, 2
  %i.js = sub nsw i32 %i.jf, %i.jr
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.js, i32 0)
  %i.jt = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i to i16
  %i.ju = icmp samesign ult i64 %indvars.iv93, 65536
  tail call void @llvm.assume(i1 %i.ju)
  %.idx = shl nuw nsw i64 %indvars.iv93, 2
  %i.jv = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  store i16 %i.jt, ptr %i.jv, align 2, !tbaa !22
  %i.jw = trunc nuw i32 %i.jp to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !22
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 3 uses
  %i.jy = getelementptr [2 x i8], ptr %.fr, i64 %indvars.iv.next94 ; 3 uses
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !22 ; 3 uses
  %i.ka = zext i16 %i.jz to i32                   ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jy, i64 -2
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !22
  %i.kd = tail call i16 @llvm.umin.i16(i16 %i.kc, i16 %i.jz)
  %i.ke = zext i16 %i.kd to i32
  %i.kf = icmp samesign ult i64 %indvars.iv.next94, %i.cu
  br i1 %i.kf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next.1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !22
  %i.ki = tail call i16 @llvm.umax.i16(i16 %i.kh, i16 %i.jz)
  %i.kj = zext i16 %i.ki to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.peel.next.1
  %.sroa.speculated.1 = phi i32 [ %i.kj, %bb.k ], [ %i.ka, %.peel.next.1 ]
  %i.kk = sub nsw i32 %.sroa.speculated.1, %i.ke  ; 3 uses
  %6 = icmp sgt i32 %i.kk, -1
  tail call void @llvm.assume(i1 %6)
  %i.kl = add nuw nsw i32 %i.kk, 2
  %i.km = lshr i32 %i.kl, 2
  %i.kn = sub nsw i32 %i.ka, %i.km
  %.sroa.speculate.load.false.sroa.speculated.i.1 = tail call i32 @llvm.smax.i32(i32 %i.kn, i32 0)
  %i.ko = trunc nuw i32 %.sroa.speculate.load.false.sroa.speculated.i.1 to i16
  %i.kp = icmp ne i64 %indvars.iv93, 65535
  tail call void @llvm.assume(i1 %i.kp)
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next94, 2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.1 ; 2 uses
  store i16 %i.ko, ptr %i.kq, align 2, !tbaa !22
  %i.kr = trunc nuw i32 %i.kk to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  store i16 %i.kr, ptr %i.ks, align 2, !tbaa !22
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %exitcond96.not.1 = icmp eq i64 %indvars.iv.next94.1, %wide.trip.count
  br i1 %exitcond96.not.1, label %.preheader, label %.peel.next, !llvm.loop !49

vec.epilog.scalar.ph180:                          ; preds = %vec.epilog.scalar.ph180.prol.loopexit, %vec.epilog.scalar.ph180
  %.088 = phi i32 [ %i.mw, %vec.epilog.scalar.ph180 ], [ %.088.unr, %vec.epilog.scalar.ph180.prol.loopexit ] ; 9 uses
  %i.kt = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.ku = shl nsw i32 %.088, 1                    ; 2 uses
  %i.kv = icmp samesign ult i32 %i.ku, 131072
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = zext nneg i32 %i.ku to i64
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.kw ; 2 uses
  store i16 %i.kt, ptr %i.kx, align 2, !tbaa !22
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  store i16 0, ptr %i.ky, align 2, !tbaa !22
  %i.kz = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.la = shl i32 %.088, 1
  %i.lb = add i32 %i.la, 2                        ; 2 uses
  %i.lc = icmp samesign ult i32 %i.lb, 131072
  tail call void @llvm.assume(i1 %i.lc)
  %i.ld = zext nneg i32 %i.lb to i64
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ld ; 2 uses
  store i16 %i.kz, ptr %i.le, align 2, !tbaa !22
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  store i16 0, ptr %i.lf, align 2, !tbaa !22
  %i.lg = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.lh = shl i32 %.088, 1
  %i.li = add i32 %i.lh, 4                        ; 2 uses
  %i.lj = icmp samesign ult i32 %i.li, 131072
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = zext nneg i32 %i.li to i64
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.lk ; 2 uses
  store i16 %i.lg, ptr %i.ll, align 2, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  store i16 0, ptr %i.lm, align 2, !tbaa !22
  %i.ln = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.lo = shl i32 %.088, 1
  %i.lp = add i32 %i.lo, 6                        ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lp, 131072
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = zext nneg i32 %i.lp to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.lr ; 2 uses
  store i16 %i.ln, ptr %i.ls, align 2, !tbaa !22
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  store i16 0, ptr %i.lt, align 2, !tbaa !22
  %i.lu = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.lv = shl i32 %.088, 1
  %i.lw = add i32 %i.lv, 8                        ; 2 uses
  %i.lx = icmp samesign ult i32 %i.lw, 131072
  tail call void @llvm.assume(i1 %i.lx)
  %i.ly = zext nneg i32 %i.lw to i64
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ly ; 2 uses
  store i16 %i.lu, ptr %i.lz, align 2, !tbaa !22
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  store i16 0, ptr %i.ma, align 2, !tbaa !22
  %i.mb = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.mc = shl i32 %.088, 1
  %i.md = add i32 %i.mc, 10                       ; 2 uses
  %i.me = icmp samesign ult i32 %i.md, 131072
  tail call void @llvm.assume(i1 %i.me)
  %i.mf = zext nneg i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.mf ; 2 uses
  store i16 %i.mb, ptr %i.mg, align 2, !tbaa !22
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  store i16 0, ptr %i.mh, align 2, !tbaa !22
  %i.mi = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.mj = shl i32 %.088, 1
  %i.mk = add i32 %i.mj, 12                       ; 2 uses
  %i.ml = icmp samesign ult i32 %i.mk, 131072
  tail call void @llvm.assume(i1 %i.ml)
  %i.mm = zext nneg i32 %i.mk to i64
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.mm ; 2 uses
  store i16 %i.mi, ptr %i.mn, align 2, !tbaa !22
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  store i16 0, ptr %i.mo, align 2, !tbaa !22
  %i.mp = load i16, ptr %i.hc, align 2, !tbaa !22
  %i.mq = shl i32 %.088, 1
  %i.mr = add i32 %i.mq, 14                       ; 2 uses
  %i.ms = icmp samesign ult i32 %i.mr, 131072
  tail call void @llvm.assume(i1 %i.ms)
  %i.mt = zext nneg i32 %i.mr to i64
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.mt ; 2 uses
  store i16 %i.mp, ptr %i.mu, align 2, !tbaa !22
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  store i16 0, ptr %i.mv, align 2, !tbaa !22
  %i.mw = add i32 %.088, 8                        ; 2 uses
  %exitcond98.not.7 = icmp eq i32 %i.mw, 65536
  br i1 %exitcond98.not.7, label %.loopexit, label %vec.epilog.scalar.ph180, !llvm.loop !50

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vec.epilog.scalar.ph180.prol.loopexit, %vec.epilog.scalar.ph180, %middle.block175, %vec.epilog.middle.block196, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress uwtable
define hidden { ptr, i32 } @_ZN8rawspeed11TableLookUp8getTableEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = icmp sgt i32 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11TableLookUp8getTableEi) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = icmp sgt i32 %i.a, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i32 %1, %i.a
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i32 %1, 17
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.h
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 131072, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !22     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !25
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !22
  store i16 %i.s, ptr %i.d, align 2, !tbaa !22
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !25
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !75

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
end_hunk_0
