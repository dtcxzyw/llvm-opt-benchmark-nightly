inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.NCrypto::NSha1::CContext" = type { %"class.NCrypto::NSha1::CContextBase2.base", [4 x i8] }
%"class.NCrypto::NSha1::CContextBase2.base" = type <{ %"class.NCrypto::NSha1::CContextBase", i32, [16 x i32] }>
%"class.NCrypto::NSha1::CContextBase" = type { [5 x i32], i64 }

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha15CHmac6SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !tbaa !8
  %i.b = icmp ugt i64 %2, 64
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %vector.body, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %1, i64 %2, i1 false), !tbaa !8
  br label %vector.body

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.c, align 8, !tbaa !9
  tail call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, i64 noundef %2)
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a)
  br label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %.preheader, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %wide.load25 = load <16 x i8>, ptr %i.d, align 16, !tbaa !8
  %i.e = xor <16 x i8> %wide.load, splat (i8 54)
  %i.f = xor <16 x i8> %wide.load25, splat (i8 54)
  store <16 x i8> %i.e, ptr %i.a, align 16, !tbaa !8
  store <16 x i8> %i.f, ptr %i.d, align 16, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.g, align 16, !tbaa !8
  %wide.load25.1 = load <16 x i8>, ptr %i.h, align 16, !tbaa !8
  %i.i = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.j = xor <16 x i8> %wide.load25.1, splat (i8 54)
  store <16 x i8> %i.i, ptr %i.g, align 16, !tbaa !8
  store <16 x i8> %i.j, ptr %i.h, align 16, !tbaa !8
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !9
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a, i64 noundef 64)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load29 = load <16 x i8>, ptr %i.a, align 16, !tbaa !8
  %wide.load30 = load <16 x i8>, ptr %i.l, align 16, !tbaa !8
  %i.m = xor <16 x i8> %wide.load29, splat (i8 106)
  %i.n = xor <16 x i8> %wide.load30, splat (i8 106)
  store <16 x i8> %i.m, ptr %i.a, align 16, !tbaa !8
  store <16 x i8> %i.n, ptr %i.l, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load29.1 = load <16 x i8>, ptr %i.o, align 16, !tbaa !8
  %wide.load30.1 = load <16 x i8>, ptr %i.p, align 16, !tbaa !8
  %i.q = xor <16 x i8> %wide.load29.1, splat (i8 106)
  %i.r = xor <16 x i8> %wide.load30.1, splat (i8 106)
  store <16 x i8> %i.q, ptr %i.o, align 16, !tbaa !8
  store <16 x i8> %i.r, ptr %i.p, align 16, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.t, align 8, !tbaa !9
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %i.s, ptr noundef nonnull %i.a, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha15CHmac5FinalEPhm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %i.b, ptr noundef nonnull %i.a, i64 noundef 20)
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %i.b, ptr noundef nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %i.a, i64 %2, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha17CHmac326SetKeyEPKhm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 21 uses
  %3 = alloca %"class.NCrypto::NSha1::CContext", align 8 ; 6 uses
  %i.b = alloca [20 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !tbaa !4
  %i.c = icmp ugt i64 %2, 64
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %2, 1
  %i.d = icmp eq i64 %2, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 126
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !9
  call void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr noundef nonnull align 8 dereferenceable(100) %3, ptr noundef nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = load i32, ptr %i.g, align 8
  %i.l = call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = load i32, ptr %i.f, align 4
  %i.n = call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = load i32, ptr %i.b, align 16
  %i.p = call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i32, ptr %i.q, align 16
  %i.s = call i32 @llvm.bswap.i32(i32 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.t = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.u = insertelement <4 x i32> %i.t, i32 %i.n, i64 1
  %i.v = insertelement <4 x i32> %i.u, i32 %i.l, i64 2
  %i.w = insertelement <4 x i32> %i.v, i32 %i.j, i64 3
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.031 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %.0.tr = trunc i64 %.031 to i32
  %i.aa = shl i32 %.0.tr, 3
  %i.ab = and i32 %i.aa, 16
  %i.ac = xor i32 %i.ab, 24
  %i.ad = shl nuw i32 %i.z, %i.ac
  %i.ae = lshr i64 %.031, 2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ad, %i.ag
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = zext i8 %i.ak to i32
  %.0.tr.1 = trunc i64 %.031 to i32
  %i.am = shl i32 %.0.tr.1, 3
  %i.an = and i32 %i.am, 16
  %i.ao = xor i32 %i.an, 16
  %i.ap = shl nuw nsw i32 %i.al, %i.ao
  %i.aq = lshr i64 %.031, 2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = or i32 %i.ap, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !4
  %i.au = add nuw nsw i64 %.031, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.031.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.au, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod46 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.031.epil.init
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i32
  %.0.tr.epil = trunc i64 %.031.epil.init to i32
  %i.ay = shl i32 %.0.tr.epil, 3
  %i.az = and i32 %i.ay, 24
  %i.ba = xor i32 %i.az, 24
  %i.bb = shl nuw i32 %i.ax, %i.ba
  %i.bc = lshr i64 %.031.epil.init, 2
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = or i32 %i.bb, %i.be
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !4
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %i.bg = load <4 x i32>, ptr %i.a, align 16, !tbaa !4
  %.phi.trans.insert44 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre45 = load i32, ptr %.phi.trans.insert44, align 16, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.b
  %i.bh = phi i32 [ %.pre45, %.loopexit.loopexit ], [ 0, %.preheader ], [ %i.s, %bb.b ]
  %i.bi = phi <4 x i32> [ %i.bg, %.loopexit.loopexit ], [ zeroinitializer, %.preheader ], [ %i.w, %bb.b ]
  %i.bj = xor <4 x i32> %i.bi, splat (i32 909522486)
  store <4 x i32> %i.bj, ptr %i.a, align 16, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.bl = xor i32 %i.bh, 909522486
  store i32 %i.bl, ptr %i.bk, align 16, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bo = load <4 x i32>, ptr %i.bm, align 4, !tbaa !4
  %i.bp = xor <4 x i32> %i.bo, splat (i32 909522486)
  store <4 x i32> %i.bp, ptr %i.bm, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bs = load <4 x i32>, ptr %i.bq, align 4, !tbaa !4
  %i.bt = xor <4 x i32> %i.bs, splat (i32 909522486)
  store <4 x i32> %i.bt, ptr %i.bq, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 52 ; 2 uses
  %4 = load i32, ptr %i.bu, align 4, !tbaa !4
  %5 = xor i32 %4, 909522486
  store i32 %5, ptr %i.bu, align 4, !tbaa !4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %7 = load i32, ptr %6, align 8, !tbaa !4
  %8 = xor i32 %7, 909522486
  store i32 %8, ptr %6, align 8, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = xor i32 %i.bw, 909522486
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !4
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.by, align 8, !tbaa !9
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a, i64 noundef 16)
  %i.bz = load <4 x i32>, ptr %i.a, align 16, !tbaa !4
  %i.ca = xor <4 x i32> %i.bz, splat (i32 1785358954)
  store <4 x i32> %i.ca, ptr %i.a, align 16, !tbaa !4
  %i.cb = load <4 x i32>, ptr %i.bk, align 16, !tbaa !4
  %i.cc = xor <4 x i32> %i.cb, splat (i32 1785358954)
  store <4 x i32> %i.cc, ptr %i.bk, align 16, !tbaa !4
  %i.cd = load <4 x i32>, ptr %i.bn, align 16, !tbaa !4
  %i.ce = xor <4 x i32> %i.cd, splat (i32 1785358954)
  store <4 x i32> %i.ce, ptr %i.bn, align 16, !tbaa !4
  %i.cf = load <4 x i32>, ptr %i.br, align 16, !tbaa !4
  %i.cg = xor <4 x i32> %i.cf, splat (i32 1785358954)
  store <4 x i32> %i.cg, ptr %i.br, align 16, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(100) %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.ci, align 8, !tbaa !9
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(100) %i.ch, ptr noundef nonnull %i.a, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha17CHmac325FinalEPjm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @_ZN7NCrypto5NSha110CContext325FinalEPj(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr noundef nonnull align 8 dereferenceable(100) %i.b, ptr noundef nonnull %i.a, i64 noundef 5)
  call void @_ZN7NCrypto5NSha110CContext325FinalEPj(ptr noundef nonnull align 8 dereferenceable(100) %i.b, ptr noundef nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = shl nuw i64 %2, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 16 %i.a, i64 %i.c, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @_ZN7NCrypto5NSha110CContext325FinalEPj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7NCrypto5NSha17CHmac3216GetLoopXorDigestEPjj(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
.preheader:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, i32 noundef 5)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %i.b, i32 noundef 5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa !4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01317 = phi i32 [ %i.l, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false)
  %i.f = load <4 x i32>, ptr %i.a, align 16, !tbaa !4
  %i.g = load <4 x i32>, ptr %1, align 4, !tbaa !4
  %i.h = xor <4 x i32> %i.g, %i.f
  store <4 x i32> %i.h, ptr %1, align 4, !tbaa !4
  %i.i = load i32, ptr %i.d, align 16, !tbaa !4
  %i.j = load i32, ptr %i.e, align 4, !tbaa !4
  %i.k = xor i32 %i.j, %i.i
  store i32 %i.k, ptr %i.e, align 4, !tbaa !4
  %i.l = add nuw i32 %.01317, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

declare void @_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN7NCrypto5NSha112CContextBase4InitEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 32}
!10 = !{!"_ZTSN7NCrypto5NSha113CContextBase2E", !11, i64 0, !5, i64 32, !6, i64 36}
!11 = !{!"_ZTSN7NCrypto5NSha112CContextBaseE", !6, i64 0, !12, i64 24}
!12 = !{!"long long", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
end_hunk_0
