inline.NumInlined: 82
inline.NumDeleted: 32
begin_hunk_0_@_ZN5o3dgc20DynamicVectorEncoder6EncodeERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorEncoder6EncodeERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) initializes((0, 8), (56, 60)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder12EncodeHeaderERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) ; 0 uses
  %i.d = tail call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder13EncodePayloadERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) ; 0 uses
  %i.e = load i64, ptr %0, align 8                ; 8 uses
  %i.f = load i64, ptr %i.a, align 8
  %i.g = sub i64 %i.f, %i.b                       ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.i, 1
  %i.k = trunc i64 %i.g to i8                     ; 3 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = and i8 %i.k, 127
  %i.m = load ptr, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  store i8 %i.l, ptr %i.n, align 1
  %i.o = lshr i64 %i.g, 7
  %i.p = trunc i64 %i.o to i8
  %i.q = and i8 %i.p, 127
  %i.r = load ptr, ptr %3, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 %i.e
  %i.t = getelementptr i8, ptr %i.s, i64 1
  store i8 %i.q, ptr %i.t, align 1
  %i.u = lshr i64 %i.g, 14
  %i.v = trunc i64 %i.u to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %3, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  %i.z = getelementptr i8, ptr %i.y, i64 2
  store i8 %i.w, ptr %i.z, align 1
  %i.aa = lshr i64 %i.g, 21
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = and i8 %i.ab, 127
  %i.ad = load ptr, ptr %3, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.e
  %i.af = getelementptr i8, ptr %i.ae, i64 3
  store i8 %i.ac, ptr %i.af, align 1
  %i.ag = lshr i64 %i.g, 28
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 127
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.g, 8
  %.sroa.3.0.extract.trunc.i.i = trunc i64 %.sroa.3.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.g, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i64 %i.g, 24
  %.sroa.7.0.extract.trunc.i.i = trunc i64 %.sroa.7.0.extract.shift.i.i to i8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.ak, 0                    ; 4 uses
  %i.am = load ptr, ptr %3, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.e
  %.sroa.7.0.extract.trunc..sroa.0.0.extract.trunc.i.i = select i1 %i.al, i8 %.sroa.7.0.extract.trunc.i.i, i8 %i.k
  %.sroa.5.0.extract.trunc..sroa.3.0.extract.trunc.i.i = select i1 %i.al, i8 %.sroa.5.0.extract.trunc.i.i, i8 %.sroa.3.0.extract.trunc.i.i
  %.sroa.3.0.extract.trunc..sroa.5.0.extract.trunc.i.i = select i1 %i.al, i8 %.sroa.3.0.extract.trunc.i.i, i8 %.sroa.5.0.extract.trunc.i.i
  %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.i = select i1 %i.al, i8 %i.k, i8 %.sroa.7.0.extract.trunc.i.i
  store i8 %.sroa.7.0.extract.trunc..sroa.0.0.extract.trunc.i.i, ptr %i.an, align 1
  %i.ao = load ptr, ptr %3, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.e
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  store i8 %.sroa.5.0.extract.trunc..sroa.3.0.extract.trunc.i.i, ptr %i.aq, align 1
  %i.ar = load ptr, ptr %3, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.e
  %i.at = getelementptr i8, ptr %i.as, i64 2
  store i8 %.sroa.3.0.extract.trunc..sroa.5.0.extract.trunc.i.i, ptr %i.at, align 1
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.b, %bb.c
  %.sink6.i = phi i64 [ 3, %bb.c ], [ 4, %bb.b ]
  %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.sink.i = phi i8 [ %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.i, %bb.c ], [ %i.ai, %bb.b ]
  %i.au = load ptr, ptr %3, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 %i.e
  %i.aw = getelementptr i8, ptr %i.av, i64 %.sink6.i
  store i8 %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.sink.i, ptr %i.aw, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorEncoder12EncodeHeaderERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) initializes((0, 8), (56, 60)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store i32 %i.b, ptr %i.c, align 8
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 498)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 498)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %0, align 8
  %i.g = load i32, ptr %i.c, align 8
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit14

bb.e:                                             ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit14

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit14: ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = trunc i32 %i.j to i8
  %i.l = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.k, i32 noundef %i.l)
  %i.m = load i64, ptr %2, align 8                ; 2 uses
  %i.n = load i32, ptr %i.c, align 8
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit14
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.m)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit15

bb.g:                                             ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit14
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.m)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit15

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit15: ; preds = %bb.f, %bb.g
  %i.p = load i64, ptr %2, align 8
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr %i.c, align 8
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.r)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit16

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %i.r)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit16

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit16: ; preds = %bb.i, %bb.j
  %i.u = load i64, ptr %1, align 8
  %i.v = trunc i64 %i.u to i8
  %i.w = load i32, ptr %i.c, align 8
  tail call void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 noundef zeroext %i.v, i32 noundef %i.w)
  br label %bb.k

bb.k:                                             ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit16, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit15
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorEncoder13EncodePayloadERKNS_14DVEncodeParamsERKNS_13DynamicVectorERNS_12BinaryStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 25 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 15 uses
  %i.c = load i64, ptr %i.b, align 8              ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 16 uses
  %i.f = load i64, ptr %2, align 8                ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5o3dgc12BinaryStream14WriteUInt32BinEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 0)
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.b, %bb.c
  %i.j = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %16

._crit_edge:                                      ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %1, align 8
  %i.v = mul i64 %i.f, %i.e                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ult i64 %i.x, %i.v
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.v, ptr %i.w, align 8
  %i.ac = icmp ugt i64 %i.v, 2305843009213693951
  %i.ad = shl nuw i64 %i.v, 3
  %i.ae = select i1 %i.ac, i64 -1, i64 %i.ad
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #12
  store ptr %i.af, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.not.i = icmp eq i64 %i.e, 0                   ; 2 uses
  br i1 %.not.i, label %._crit_edge78, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.g
  %i.ag = trunc i64 %i.u to i32
  %notmask.i = shl nsw i32 -1, %i.ag
  %i.ah = xor i32 %notmask.i, -1
  %i.ai = uitofp nneg i32 %i.ah to float
  %.not38.i = icmp eq i64 %i.f, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not38.i, label %._crit_edge78.thread143, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph36.i
  %xtraiter = and i64 %i.f, 1
  %i.ak = icmp eq i64 %i.f, 1
  %unroll_iter = and i64 %i.f, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod150 = trunc i64 %i.f to i1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge80.split.thread
  %.02734.i = phi i64 [ %12, %._crit_edge80.split.thread ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.02734.i
  %i.am = load float, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02734.i ; 4 uses
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fsub float %i.am, %i.ao                 ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 0.000000e+00
  %i.ar = fdiv float %i.ai, %i.ap
  %.028.i = select i1 %i.aq, float %i.ar, float 1.000000e+00 ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.n, i64 %.02734.i ; 3 uses
  %i.as = mul i64 %.02734.i, %i.f                 ; 3 uses
  br i1 %i.ak, label %bb.h, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.033.i = phi i64 [ %i.bm, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.at = mul i64 %.033.i, %i.p
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.at
  %i.au = load float, ptr %gep.i, align 4
  %i.av = load float, ptr %i.an, align 4
  %i.aw = fsub float %i.au, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %.028.i, float 5.000000e-01)
  %i.ay = fptosi float %i.ax to i64
  %i.az = load ptr, ptr %i.aj, align 8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.033.i
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.as
  store i64 %i.ay, ptr %i.bb, align 8
  %i.bc = or disjoint i64 %.033.i, 1              ; 2 uses
  %i.bd = mul i64 %i.bc, %i.p
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bd
  %i.be = load float, ptr %gep.i.1, align 4
  %i.bf = load float, ptr %i.an, align 4
  %i.bg = fsub float %i.be, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %.028.i, float 5.000000e-01)
  %i.bi = fptosi float %i.bh to i64
  %i.bj = load ptr, ptr %i.aj, align 8
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bc
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.as
  store i64 %i.bi, ptr %i.bl, align 8
  %i.bm = add nuw i64 %.033.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph79, label %.lr.ph.i.new, !llvm.loop !3

.lr.ph79:                                         ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge80.split.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph79, %.lr.ph.i
  %.06077 = phi i64 [ 0, %.lr.ph.i ], [ %i.bm, %.lr.ph79 ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %4 = mul i64 %.06077, %i.p
  %i.bn = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %4
  %5 = load float, ptr %i.bn, align 4
  %i.bo = load float, ptr %i.an, align 4
  %6 = fsub float %5, %i.bo
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %.028.i, float 5.000000e-01)
  %8 = fptosi float %7 to i64
  %9 = load ptr, ptr %i.aj, align 8
  %10 = getelementptr [8 x i8], ptr %9, i64 %.06077
  %11 = getelementptr [8 x i8], ptr %10, i64 %i.as
  store i64 %8, ptr %11, align 8
  br label %._crit_edge80.split.thread

._crit_edge80.split.thread:                       ; preds = %.lr.ph79, %bb.h
  %12 = add nuw i64 %.02734.i, 1                  ; 2 uses
  %i.bp = icmp eq i64 %12, %i.e
  br i1 %i.bp, label %.preheader.preheader, label %.lr.ph.i, !llvm.loop !5

.preheader.preheader:                             ; preds = %._crit_edge80.split.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not147 = icmp eq i64 %i.f, 1
  br i1 %.not147, label %._crit_edge90, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.preheader.preheader, %_ZN5o3dgc9TransformEPlm.exit.loopexit
  %.05978 = phi i64 [ %i.fs, %_ZN5o3dgc9TransformEPlm.exit.loopexit ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = mul i64 %.05978, %i.f
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN5o3dgc5SplitEPll.exit.i, %.lr.ph.i67
  %.014.i = phi i64 [ %i.f, %.lr.ph.i67 ], [ %i.fq, %_ZN5o3dgc5SplitEPll.exit.i ] ; 8 uses
  %i.bv = add nsw i64 %.014.i, -1                 ; 5 uses
  %i.bw = icmp sgt i64 %.014.i, 2                 ; 2 uses
  br i1 %i.bw, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.bx = add nsw i64 %.014.i, -3                 ; 2 uses
  %i.by = lshr i64 %i.bx, 1                       ; 2 uses
  %i.bz = add nuw i64 %i.by, 1                    ; 2 uses
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter155 = and i64 %i.bz, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.016.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %i.cu, %.lr.ph.i.i ] ; 3 uses
  %niter156 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter156.next.1, %.lr.ph.i.i ]
  %i.cb = getelementptr [8 x i8], ptr %i.bt, i64 %.016.i.i ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = add i64 %i.cd, 1
  %i.ch = add i64 %i.cg, %i.cf
  %i.ci = ashr i64 %i.ch, 1
  %i.cj = load i64, ptr %i.cb, align 8
  %i.ck = sub nsw i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.cb, align 8
  %i.cl = getelementptr [8 x i8], ptr %i.bt, i64 %.016.i.i ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cl, i64 24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.cf, 1
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = ashr i64 %i.cq, 1
  %i.cs = load i64, ptr %i.cm, align 8
  %i.ct = sub nsw i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %i.cm, align 8
  %i.cu = add nuw nsw i64 %.016.i.i, 4            ; 3 uses
  %niter156.next.1 = add nuw i64 %niter156, 2     ; 2 uses
  %niter156.ncmp.1.not = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1.not, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !6

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %i.cv = and i64 %i.bx, 2
  %lcmp.mod152.not.not = icmp eq i64 %i.cv, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.i.i.epil.preheader, label %._crit_edge.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.016.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.cu, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i64 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.cw = getelementptr [8 x i8], ptr %i.bt, i64 %.016.i.i.epil.init ; 4 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = add i64 %i.cy, 1
  %i.dc = add i64 %i.db, %i.da
  %i.dd = ashr i64 %i.dc, 1
  %i.de = load i64, ptr %i.cw, align 8
  %i.df = sub nsw i64 %i.de, %i.dd
  store i64 %i.df, ptr %i.cw, align 8
  %i.dg = add nuw nsw i64 %.016.i.i.epil.init, 2
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.i
  %.0.lcssa.i.i = phi i64 [ 1, %bb.i ], [ %i.cu, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.dg, %.lr.ph.i.i.epil.preheader ]
  %i.dh = icmp eq i64 %.0.lcssa.i.i, %i.bv
  br i1 %i.dh, label %bb.j, label %_ZN5o3dgc7PredictEPll.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.di = getelementptr [8 x i8], ptr %i.bt, i64 %i.bv ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = load i64, ptr %i.di, align 8
  %i.dm = sub nsw i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.di, align 8
  br label %_ZN5o3dgc7PredictEPll.exit.i

_ZN5o3dgc7PredictEPll.exit.i:                     ; preds = %bb.j, %._crit_edge.i.i
  %i.dn = load i64, ptr %i.bu, align 8
  %i.do = ashr i64 %i.dn, 1
  %i.dp = load i64, ptr %i.bt, align 8
  %i.dq = add nsw i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.bt, align 8
  %i.dr = icmp sgt i64 %.014.i, 3
  br i1 %i.dr, label %.lr.ph.i11.i.preheader, label %._crit_edge.i9.i

.lr.ph.i11.i.preheader:                           ; preds = %_ZN5o3dgc7PredictEPll.exit.i
  %i.ds = add nsw i64 %.014.i, -4
  %i.dt = lshr i64 %i.ds, 1                       ; 2 uses
  %i.du = add nuw i64 %i.dt, 1                    ; 2 uses
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.i11.i.epil.preheader, label %.lr.ph.i11.i.preheader.new

.lr.ph.i11.i.preheader.new:                       ; preds = %.lr.ph.i11.i.preheader
  %unroll_iter161 = and i64 %i.du, -2
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.i11.i.preheader.new
  %.018.i.i = phi i64 [ 2, %.lr.ph.i11.i.preheader.new ], [ %i.ep, %.lr.ph.i11.i ] ; 3 uses
  %niter162 = phi i64 [ 0, %.lr.ph.i11.i.preheader.new ], [ %niter162.next.1, %.lr.ph.i11.i ]
  %i.dw = getelementptr [8 x i8], ptr %i.bt, i64 %.018.i.i ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -8
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.eb = add i64 %i.dy, 2
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = ashr i64 %i.ec, 2
  %i.ee = load i64, ptr %i.dw, align 8
  %i.ef = add nsw i64 %i.ed, %i.ee
  store i64 %i.ef, ptr %i.dw, align 8
  %i.eg = getelementptr [8 x i8], ptr %i.bt, i64 %.018.i.i ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16     ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = add i64 %i.ea, 2
  %i.el = add i64 %i.ek, %i.ej
  %i.em = ashr i64 %i.el, 2
  %i.en = load i64, ptr %i.eh, align 8
  %i.eo = add nsw i64 %i.em, %i.en
  store i64 %i.eo, ptr %i.eh, align 8
  %i.ep = add nuw nsw i64 %.018.i.i, 4            ; 3 uses
  %niter162.next.1 = add nuw i64 %niter162, 2     ; 2 uses
  %niter162.ncmp.1.not = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1.not, label %._crit_edge.i9.i.loopexit.unr-lcssa, label %.lr.ph.i11.i, !llvm.loop !7

._crit_edge.i9.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i11.i
  %i.eq = and i64 %.014.i, 2
  %lcmp.mod158.not.not = icmp eq i64 %i.eq, 0
  br i1 %lcmp.mod158.not.not, label %.lr.ph.i11.i.epil.preheader, label %._crit_edge.i9.i

.lr.ph.i11.i.epil.preheader:                      ; preds = %._crit_edge.i9.i.loopexit.unr-lcssa, %.lr.ph.i11.i.preheader
  %.018.i.i.epil.init = phi i64 [ 2, %.lr.ph.i11.i.preheader ], [ %i.ep, %._crit_edge.i9.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i64 %i.du to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.er = getelementptr [8 x i8], ptr %i.bt, i64 %.018.i.i.epil.init ; 4 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -8
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.et, 2
  %i.ex = add i64 %i.ew, %i.ev
  %i.ey = ashr i64 %i.ex, 2
  %i.ez = load i64, ptr %i.er, align 8
  %i.fa = add nsw i64 %i.ey, %i.ez
  store i64 %i.fa, ptr %i.er, align 8
  %i.fb = add nuw nsw i64 %.018.i.i.epil.init, 2
  br label %._crit_edge.i9.i

._crit_edge.i9.i:                                 ; preds = %.lr.ph.i11.i.epil.preheader, %._crit_edge.i9.i.loopexit.unr-lcssa, %_ZN5o3dgc7PredictEPll.exit.i
  %.0.lcssa.i10.i = phi i64 [ 2, %_ZN5o3dgc7PredictEPll.exit.i ], [ %i.ep, %._crit_edge.i9.i.loopexit.unr-lcssa ], [ %i.fb, %.lr.ph.i11.i.epil.preheader ]
  %i.fc = icmp eq i64 %.0.lcssa.i10.i, %i.bv
  br i1 %i.fc, label %bb.k, label %_ZN5o3dgc6UpdateEPll.exit.i

bb.k:                                             ; preds = %._crit_edge.i9.i
  %i.fd = getelementptr [8 x i8], ptr %i.bt, i64 %i.bv ; 3 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 -8
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = ashr i64 %i.ff, 1
  %i.fh = load i64, ptr %i.fd, align 8
  %i.fi = add nsw i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.fd, align 8
  br label %_ZN5o3dgc6UpdateEPll.exit.i

_ZN5o3dgc6UpdateEPll.exit.i:                      ; preds = %bb.k, %._crit_edge.i9.i
  br i1 %i.bw, label %.preheader.i.i, label %_ZN5o3dgc5SplitEPll.exit.i

.preheader.i.i:                                   ; preds = %_ZN5o3dgc6UpdateEPll.exit.i, %13
  %.01217.i.i = phi i64 [ %.012.i.i.us, %13 ], [ %i.bv, %_ZN5o3dgc6UpdateEPll.exit.i ] ; 2 uses
  %.01316.i.i = phi i64 [ %14, %13 ], [ 1, %_ZN5o3dgc6UpdateEPll.exit.i ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i
  %.014.i.i = phi i64 [ %.01316.i.i, %.preheader.i.i ], [ %i.fm, %bb.l ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.014.i.i ; 2 uses
  %i.fk = load <2 x i64>, ptr %i.fj, align 8
  %i.fl = shufflevector <2 x i64> %i.fk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.fl, ptr %i.fj, align 8
  %i.fm = add nuw nsw i64 %.014.i.i, 2            ; 2 uses
  %i.fn = icmp slt i64 %i.fm, %.01217.i.i
  br i1 %i.fn, label %bb.l, label %13, !llvm.loop !8

13:                                               ; preds = %bb.l
  %14 = add nuw nsw i64 %.01316.i.i, 1            ; 2 uses
  %.012.i.i.us = add nsw i64 %.01217.i.i, -1      ; 2 uses
  %15 = icmp slt i64 %14, %.012.i.i.us
  br i1 %15, label %.preheader.i.i, label %_ZN5o3dgc5SplitEPll.exit.i, !llvm.loop !9

_ZN5o3dgc5SplitEPll.exit.i:                       ; preds = %13, %_ZN5o3dgc6UpdateEPll.exit.i
  %i.fo = lshr i64 %.014.i, 1
  %i.fp = and i64 %.014.i, 1
  %i.fq = add nuw i64 %i.fo, %i.fp                ; 2 uses
  %i.fr = icmp ugt i64 %i.fq, 1
  br i1 %i.fr, label %bb.i, label %_ZN5o3dgc9TransformEPlm.exit.loopexit, !llvm.loop !10

_ZN5o3dgc9TransformEPlm.exit.loopexit:            ; preds = %_ZN5o3dgc5SplitEPll.exit.i
  %i.fs = add nuw i64 %.05978, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %i.e
  br i1 %exitcond.not, label %._crit_edge78, label %.lr.ph.i67, !llvm.loop !11

16:                                               ; preds = %.lr.ph, %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65
  %.06075 = phi i64 [ 0, %.lr.ph ], [ %32, %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65 ] ; 3 uses
  %17 = load ptr, ptr %i.k, align 8
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %.06075
  %19 = load float, ptr %18, align 4              ; 2 uses
  %20 = load i32, ptr %i.g, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = bitcast float %19 to i32
  %.0.insert.ext.i.i = zext i32 %23 to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit

24:                                               ; preds = %16
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %19)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit: ; preds = %22, %24
  %25 = load ptr, ptr %i.l, align 8
  %26 = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %.06075
  %27 = load float, ptr %26, align 4              ; 2 uses
  %28 = load i32, ptr %i.g, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %.preheader

30:                                               ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit
  %31 = bitcast float %27 to i32
  %.0.insert.ext.i.i64 = zext i32 %31 to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i64)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65

.preheader:                                       ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %27)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65: ; preds = %30, %.preheader
  %32 = add nuw i64 %.06075, 1                    ; 2 uses
  %33 = load i64, ptr %i.d, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %16, label %._crit_edge, !llvm.loop !12

._crit_edge78:                                    ; preds = %_ZN5o3dgc9TransformEPlm.exit.loopexit, %bb.g
  %35 = load i32, ptr %i.g, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %.preheader73, label %bb.ac

._crit_edge78.thread143:                          ; preds = %.lr.ph36.i
  %37 = load i32, ptr %i.g, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %.loopexit.thread, label %bb.ac

._crit_edge90:                                    ; preds = %.preheader.preheader
  %39 = load i32, ptr %i.g, align 8
  %exitcond99.not.a = icmp eq i32 %39, 1
  br i1 %exitcond99.not.a, label %.preheader.us.preheader, label %bb.ac

.preheader73:                                     ; preds = %._crit_edge78
  %.not92 = icmp eq i64 %i.f, 0
  br i1 %.not92, label %.loopexit.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader73
  br i1 %.not.i, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge90, %.preheader.lr.ph
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit
  %.05889.us = phi i64 [ %i.hj, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader.us, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us
  %.05788 = phi i64 [ 0, %.preheader.us ], [ %50, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us ] ; 2 uses
  %i.ft = load ptr, ptr %40, align 8
  %i.fu = mul i64 %.05788, %i.f
  %i.fv = getelementptr [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %.05889.us
  %i.fx = load i64, ptr %i.fw, align 8            ; 2 uses
  %i.fy = shl nsw i64 %i.fx, 1
  %.lobit.i.i = ashr i64 %i.fx, 63
  %i.fz = xor i64 %i.fy, %.lobit.i.i              ; 3 uses
  %i.ga = icmp ugt i64 %i.fz, 126
  br i1 %i.ga, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %42 = trunc nuw nsw i64 %i.fz to i8
  %i.gb = load i64, ptr %i.b, align 8             ; 6 uses
  %i.gc = load i64, ptr %41, align 8
  %i.gd = icmp eq i64 %i.gb, %i.gc
  br i1 %i.gd, label %bb.o, label %._crit_edge.i.i69

._crit_edge.i.i69:                                ; preds = %bb.n
  %.pre.i.i70 = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ge = shl i64 %i.gb, 1
  %spec.select.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.ge, i64 32) ; 2 uses
  store i64 %spec.select.i.i71, ptr %41, align 8
  %i.gf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i71) #12 ; 3 uses
  %.not.i.i72 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i72, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gg = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr align 1 %i.gg, i64 %i.gb, i1 false)
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.gg) #11
  %.pre6.pre.i.i73 = load i64, ptr %i.b, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.pre6.i.i74 = phi i64 [ %i.gb, %bb.p ], [ %.pre6.pre.i.i73, %bb.q ], [ 0, %bb.o ]
  store ptr %i.gf, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i

_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i:          ; preds = %bb.r, %._crit_edge.i.i69
  %i.gi = phi i64 [ %i.gb, %._crit_edge.i.i69 ], [ %.pre6.i.i74, %bb.r ] ; 2 uses
  %i.gj = phi ptr [ %.pre.i.i70, %._crit_edge.i.i69 ], [ %i.gf, %bb.r ]
  %i.gk = add i64 %i.gi, 1
  store i64 %i.gk, ptr %i.b, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store i8 %42, ptr %i.gl, align 1
  br label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us

bb.s:                                             ; preds = %bb.m
  %i.gm = load i64, ptr %i.b, align 8             ; 6 uses
  %i.gn = load i64, ptr %41, align 8
  %i.go = icmp eq i64 %i.gm, %i.gn
  br i1 %i.go, label %bb.t, label %._crit_edge.i8.i

._crit_edge.i8.i:                                 ; preds = %bb.s
  %.pre.i9.i = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i

bb.t:                                             ; preds = %bb.s
  %i.gp = shl i64 %i.gm, 1
  %spec.select.i10.i = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 32) ; 2 uses
  store i64 %spec.select.i10.i, ptr %41, align 8
  %i.gq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i10.i) #12 ; 3 uses
  %.not.i11.i = icmp eq i64 %i.gm, 0
  br i1 %.not.i11.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr align 1 %i.gr, i64 %i.gm, i1 false)
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.gr) #11
  %.pre6.pre.i12.i = load i64, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pre6.i13.i = phi i64 [ %i.gm, %bb.u ], [ %.pre6.pre.i12.i, %bb.v ], [ 0, %bb.t ]
  store ptr %i.gq, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i

_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i:        ; preds = %bb.w, %._crit_edge.i8.i
  %i.gt = phi i64 [ %i.gm, %._crit_edge.i8.i ], [ %.pre6.i13.i, %bb.w ] ; 2 uses
  %i.gu = phi ptr [ %.pre.i9.i, %._crit_edge.i8.i ], [ %i.gq, %bb.w ]
  %i.gv = add i64 %i.gt, 1
  store i64 %i.gv, ptr %i.b, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gt
  store i8 127, ptr %i.gw, align 1
  %43 = add i64 %i.fz, -127
  br label %bb.x

bb.x:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i
  %.0.i.us = phi i64 [ %43, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i ], [ %46, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i ] ; 2 uses
  %i.gx = trunc i64 %.0.i.us to i8
  %44 = shl i8 %i.gx, 1
  %45 = and i8 %44, 126
  %46 = lshr i64 %.0.i.us, 6                      ; 2 uses
  %47 = icmp ne i64 %46, 0                        ; 2 uses
  %48 = zext i1 %47 to i8
  %49 = or disjoint i8 %45, %48
  %i.gy = load i64, ptr %i.b, align 8             ; 6 uses
  %i.gz = load i64, ptr %41, align 8
  %i.ha = icmp eq i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.y, label %._crit_edge.i15.i

._crit_edge.i15.i:                                ; preds = %bb.x
  %.pre.i16.i = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i

bb.y:                                             ; preds = %bb.x
  %i.hb = shl i64 %i.gy, 1
  %spec.select.i17.i = tail call i64 @llvm.umax.i64(i64 %i.hb, i64 32) ; 2 uses
  store i64 %spec.select.i17.i, ptr %41, align 8
  %i.hc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i17.i) #12 ; 3 uses
  %.not.i18.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i18.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hd = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr align 1 %i.hd, i64 %i.gy, i1 false)
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.hd) #11
  %.pre6.pre.i19.i = load i64, ptr %i.b, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.pre6.i20.i = phi i64 [ %i.gy, %bb.z ], [ %.pre6.pre.i19.i, %bb.aa ], [ 0, %bb.y ]
  store ptr %i.hc, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i

_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i:        ; preds = %bb.ab, %._crit_edge.i15.i
  %i.hf = phi i64 [ %i.gy, %._crit_edge.i15.i ], [ %.pre6.i20.i, %bb.ab ] ; 2 uses
  %i.hg = phi ptr [ %.pre.i16.i, %._crit_edge.i15.i ], [ %i.hc, %bb.ab ]
  %i.hh = add i64 %i.hf, 1
  store i64 %i.hh, ptr %i.b, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  store i8 %49, ptr %i.hi, align 1
  br i1 %47, label %bb.x, label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us, !llvm.loop !13

_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us: ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i
  %50 = add nuw i64 %.05788, 1                    ; 2 uses
  %exitcond98.not = icmp eq i64 %50, %i.e
  br i1 %exitcond98.not, label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit, label %bb.m, !llvm.loop !14

_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit:   ; preds = %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us
  %i.hj = add nuw i64 %.05889.us, 1               ; 2 uses
  %exitcond98.not.a = icmp eq i64 %i.hj, %i.f
  br i1 %exitcond98.not.a, label %.loopexit, label %.preheader.us, !llvm.loop !15

bb.ac:                                            ; preds = %._crit_edge78.thread143, %._crit_edge90, %._crit_edge78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8
  %i.hk = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hl = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hm = icmp ugt i64 %i.hl, 4294967295
  br i1 %i.hm, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hn = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ho = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, %i.hl
  br i1 %i.hp, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hr = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hs = icmp ugt i64 %i.hr, %i.ho
  br i1 %i.hs, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ht = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hu = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hv = icmp ugt i64 %i.hu, %i.hr
  br i1 %i.hv, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hw = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hx = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, %i.hu
  br i1 %i.hy, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hz = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ia = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ib = icmp ugt i64 %i.ia, %i.hx
  br i1 %i.ib, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.id = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ie = icmp ugt i64 %i.id, %i.ia
  br i1 %i.ie, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ig = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ih = icmp ugt i64 %i.ig, %i.id
  br i1 %i.ih, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ii = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ij = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ik = icmp ugt i64 %i.ij, %i.ig
  br i1 %i.ik, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.il = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.im = load i64, ptr %i.a, align 8
  %i.in = icmp ugt i64 %i.im, %i.ij
  %spec.select = select i1 %i.in, i64 256, i64 512
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.054.lcssa = phi i64 [ 1, %bb.ac ], [ 16, %bb.ah ], [ 1, %bb.ad ], [ %spec.select, %bb.al ], [ 2, %bb.ae ], [ 64, %bb.aj ], [ 4, %bb.af ], [ 128, %bb.ak ], [ 8, %bb.ag ], [ 32, %bb.ai ]
  %i.io = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.054.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ip = load i64, ptr %i.a, align 8             ; 2 uses
  %.not93 = icmp eq i64 %i.ip, 0
  br i1 %.not93, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.am
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.an

._crit_edge87:                                    ; preds = %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

bb.an:                                            ; preds = %.lr.ph86, %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit
  %.084 = phi i64 [ 0, %.lr.ph86 ], [ %i.jg, %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit ] ; 2 uses
  %i.is = load ptr, ptr %i.iq, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.084
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = load i64, ptr %i.b, align 8             ; 6 uses
  %i.iw = load i64, ptr %i.ir, align 8
  %i.ix = icmp eq i64 %i.iv, %i.iw
  br i1 %i.ix, label %bb.ao, label %._crit_edge.i.i68

._crit_edge.i.i68:                                ; preds = %bb.an
  %.pre.i.i = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit

bb.ao:                                            ; preds = %bb.an
  %i.iy = shl i64 %i.iv, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.iy, i64 32) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.ir, align 8
  %i.iz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i) #12 ; 3 uses
  %.not.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ja = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.ja, i64 %i.iv, i1 false)
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdaPv(ptr noundef nonnull %i.ja) #11
  %.pre6.pre.i.i = load i64, ptr %i.b, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pre6.i.i = phi i64 [ %i.iv, %bb.ap ], [ %.pre6.pre.i.i, %bb.aq ], [ 0, %bb.ao ]
  store ptr %i.iz, ptr %3, align 8
  br label %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit

_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit:   ; preds = %._crit_edge.i.i68, %bb.ar
  %i.jc = phi i64 [ %i.iv, %._crit_edge.i.i68 ], [ %.pre6.i.i, %bb.ar ] ; 2 uses
  %i.jd = phi ptr [ %.pre.i.i, %._crit_edge.i.i68 ], [ %i.iz, %bb.ar ]
  %i.je = add i64 %i.jc, 1
  store i64 %i.je, ptr %i.b, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jc
  store i8 %i.iu, ptr %i.jf, align 1
  %i.jg = add nuw i64 %.084, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.jg, %i.ip
  br i1 %exitcond97.not, label %._crit_edge87, label %bb.an, !llvm.loop !16

.loopexit.thread:                                 ; preds = %.preheader73, %._crit_edge78.thread143
  %i.jh = load i64, ptr %i.b, align 8
  %i.ji = sub i64 %i.jh, %i.c                     ; 2 uses
  %i.jj = trunc i64 %i.ji to i8
  br label %bb.as

.loopexit:                                        ; preds = %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit, %.preheader.lr.ph, %._crit_edge87
  %.pr = load i32, ptr %i.g, align 8
  %i.jk = load i64, ptr %i.b, align 8
  %i.jl = sub i64 %i.jk, %i.c                     ; 5 uses
  %i.jm = icmp eq i32 %.pr, 1
  %i.jn = trunc i64 %i.jl to i8                   ; 3 uses
  br i1 %i.jm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit.thread, %.loopexit
  %i.jo = phi i8 [ %i.jj, %.loopexit.thread ], [ %i.jn, %.loopexit ]
  %i.jp = phi i64 [ %i.ji, %.loopexit.thread ], [ %i.jl, %.loopexit ] ; 4 uses
  %i.jq = and i8 %i.jo, 127
  %i.jr = load ptr, ptr %3, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.c
  store i8 %i.jq, ptr %i.js, align 1
  %i.jt = lshr i64 %i.jp, 7
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = and i8 %i.ju, 127
  %i.jw = load ptr, ptr %3, align 8
  %i.jx = getelementptr i8, ptr %i.jw, i64 %i.c
  %i.jy = getelementptr i8, ptr %i.jx, i64 1
  store i8 %i.jv, ptr %i.jy, align 1
  %i.jz = lshr i64 %i.jp, 14
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = and i8 %i.ka, 127
  %i.kc = load ptr, ptr %3, align 8
  %i.kd = getelementptr i8, ptr %i.kc, i64 %i.c
  %i.ke = getelementptr i8, ptr %i.kd, i64 2
  store i8 %i.kb, ptr %i.ke, align 1
  %i.kf = lshr i64 %i.jp, 21
  %i.kg = trunc i64 %i.kf to i8
  %i.kh = and i8 %i.kg, 127
  %i.ki = load ptr, ptr %3, align 8
  %i.kj = getelementptr i8, ptr %i.ki, i64 %i.c
  %i.kk = getelementptr i8, ptr %i.kj, i64 3
  store i8 %i.kh, ptr %i.kk, align 1
  %i.kl = lshr i64 %i.jp, 28
  %i.km = trunc i64 %i.kl to i8
  %i.kn = and i8 %i.km, 127
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit

bb.at:                                            ; preds = %.loopexit
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.jl, 8
  %.sroa.3.0.extract.trunc.i.i = trunc i64 %.sroa.3.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.jl, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i64 %i.jl, 24
  %.sroa.7.0.extract.trunc.i.i = trunc i64 %.sroa.7.0.extract.shift.i.i to i8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kp = load i32, ptr %i.ko, align 8
  %i.kq = icmp eq i32 %i.kp, 0                    ; 4 uses
  %i.kr = load ptr, ptr %3, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.c
  %.sroa.7.0.extract.trunc..sroa.0.0.extract.trunc.i.i = select i1 %i.kq, i8 %.sroa.7.0.extract.trunc.i.i, i8 %i.jn
  %.sroa.5.0.extract.trunc..sroa.3.0.extract.trunc.i.i = select i1 %i.kq, i8 %.sroa.5.0.extract.trunc.i.i, i8 %.sroa.3.0.extract.trunc.i.i
  %.sroa.3.0.extract.trunc..sroa.5.0.extract.trunc.i.i = select i1 %i.kq, i8 %.sroa.3.0.extract.trunc.i.i, i8 %.sroa.5.0.extract.trunc.i.i
  %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.i = select i1 %i.kq, i8 %i.jn, i8 %.sroa.7.0.extract.trunc.i.i
  store i8 %.sroa.7.0.extract.trunc..sroa.0.0.extract.trunc.i.i, ptr %i.ks, align 1
  %i.kt = load ptr, ptr %3, align 8
  %i.ku = getelementptr i8, ptr %i.kt, i64 %i.c
  %i.kv = getelementptr i8, ptr %i.ku, i64 1
  store i8 %.sroa.5.0.extract.trunc..sroa.3.0.extract.trunc.i.i, ptr %i.kv, align 1
  %i.kw = load ptr, ptr %3, align 8
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.c
  %i.ky = getelementptr i8, ptr %i.kx, i64 2
  store i8 %.sroa.3.0.extract.trunc..sroa.5.0.extract.trunc.i.i, ptr %i.ky, align 1
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.as, %bb.at
  %.sink6.i = phi i64 [ 3, %bb.at ], [ 4, %bb.as ]
  %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.sink.i = phi i8 [ %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.i, %bb.at ], [ %i.kn, %bb.as ]
  %i.kz = load ptr, ptr %3, align 8
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.c
  %i.lb = getelementptr i8, ptr %i.la, i64 %.sink6.i
  store i8 %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.sink.i, ptr %i.lb, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5o3dgc12BinaryStream10WriteUCharEhNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.c, %i.e                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc12BinaryStream15WriteUCharASCIIEh.exit

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %i.c, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 32) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i) #12 ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.i, i64 %i.c, i1 false)
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #11
  %.pre6.pre.i.i = load i64, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pre6.i.i = phi i64 [ %i.c, %bb.d ], [ %.pre6.pre.i.i, %bb.e ], [ 0, %bb.c ]
  store ptr %i.h, ptr %0, align 8
  br label %_ZN5o3dgc12BinaryStream15WriteUCharASCIIEh.exit

_ZN5o3dgc12BinaryStream15WriteUCharASCIIEh.exit:  ; preds = %._crit_edge.i.i, %bb.f
  %i.k = phi i64 [ %i.c, %._crit_edge.i.i ], [ %.pre6.i.i, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.h, %bb.f ]
  %i.m = add i64 %i.k, 1
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 %1, ptr %i.n, align 1
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.h, label %._crit_edge.i.i3

._crit_edge.i.i3:                                 ; preds = %bb.g
  %.pre.i.i4 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit

bb.h:                                             ; preds = %bb.g
  %i.o = shl i64 %i.c, 1
  %spec.select.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.o, i64 32) ; 2 uses
  store i64 %spec.select.i.i5, ptr %i.d, align 8
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i5) #12 ; 3 uses
  %.not.i.i6 = icmp eq i64 %i.c, 0
  br i1 %.not.i.i6, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.q, i64 %i.c, i1 false)
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #11
  %.pre6.pre.i.i7 = load i64, ptr %i.b, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.pre6.i.i8 = phi i64 [ %i.c, %bb.i ], [ %.pre6.pre.i.i7, %bb.j ], [ 0, %bb.h ]
  store ptr %i.p, ptr %0, align 8
  br label %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit

_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit:   ; preds = %._crit_edge.i.i3, %bb.k
  %i.s = phi i64 [ %i.c, %._crit_edge.i.i3 ], [ %.pre6.i.i8, %bb.k ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i4, %._crit_edge.i.i3 ], [ %i.p, %bb.k ]
  %i.u = add i64 %i.s, 1
  store i64 %i.u, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.v, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit, %_ZN5o3dgc12BinaryStream15WriteUCharASCIIEh.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 19 uses
  %6 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 6 uses
  %7 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 10 uses
  %8 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.a = trunc i64 %3 to i32                      ; 4 uses
  %i.b = add i32 %i.a, 2
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %8, i32 noundef %i.b)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.c = mul i64 %2, %1
  %.tr = trunc i64 %i.c to i32
  %i.d = shl i32 %.tr, 3
  %i.e = add i32 %i.d, 100                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = zext i32 %i.e to i64                     ; 3 uses
  %i.i = icmp ult i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  br i1 %i.i, label %bb.e, label %._crit_edge63

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.k) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.h, ptr %i.f, align 8
  %i.m = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
          to label %bb.h unwind label %.loopexit.split-lp46.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.m, ptr %i.j, align 8
  br label %._crit_edge63

bb.i:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit45:                                      ; preds = %.lr.ph21.i
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split-lp46.loopexit:                    ; preds = %.lr.ph.i
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split-lp46.loopexit.split-lp:           ; preds = %._crit_edge.i, %bb.m, %._crit_edge57, %bb.l, %._crit_edge63, %bb.g
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

._crit_edge63:                                    ; preds = %bb.d, %bb.h
  %i.q = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.d ]
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.e, ptr noundef %i.q)
          to label %bb.l unwind label %.loopexit.split-lp46.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge63
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %bb.m unwind label %.loopexit.split-lp46.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit unwind label %.loopexit.split-lp46.loopexit.split-lp

_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit: ; preds = %bb.m
  %.not14.i = icmp eq i32 %i.a, 0
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit, %.noexc
  %i.r = phi i32 [ %i.u, %.noexc ], [ 1, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit ]
  %.016.i = phi i32 [ %i.s, %.noexc ], [ %i.a, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit ]
  %.01115.i = phi i32 [ %i.t, %.noexc ], [ 0, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.noexc unwind label %.loopexit.split-lp46.loopexit

.noexc:                                           ; preds = %.lr.ph.i
  %i.s = sub nuw i32 %.016.i, %i.r                ; 3 uses
  %i.t = add nuw nsw i32 %.01115.i, 1             ; 2 uses
  %i.u = shl nuw i32 2, %.01115.i                 ; 2 uses
  %.not.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.noexc, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit
  %.011.lcssa.i = phi i32 [ 0, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit ], [ %i.t, %.noexc ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit ], [ %i.s, %.noexc ]
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.noexc33 unwind label %.loopexit.split-lp46.loopexit.split-lp

.noexc33:                                         ; preds = %._crit_edge.i
  %.not1318.i = icmp eq i32 %.011.lcssa.i, 0
  br i1 %.not1318.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit35, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.noexc33, %.noexc34
  %.119.i = phi i32 [ %i.v, %.noexc34 ], [ %.011.lcssa.i, %.noexc33 ]
  %i.v = add nsw i32 %.119.i, -1                  ; 3 uses
  %i.w = lshr i32 %.0.lcssa.i, %i.v
  %i.x = and i32 %i.w, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.x, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc34 unwind label %.loopexit45

.noexc34:                                         ; preds = %.lr.ph21.i
  %.not13.i = icmp eq i32 %i.v, 0
  br i1 %.not13.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit35, label %.lr.ph21.i, !llvm.loop !18

_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit35: ; preds = %.noexc34, %.noexc33
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge57, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit35
  %.not58 = icmp eq i64 %2, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not58, label %._crit_edge57, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit
  %.02056 = phi i64 [ %i.aq, %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %.noexc41
  %.055 = phi i64 [ 0, %.preheader ], [ %11, %.noexc41 ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = mul i64 %.055, %1
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %.02056
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 1
  %.lobit.i.i = ashr i64 %i.ad, 63
  %i.af = xor i64 %i.ae, %.lobit.i.i              ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %9, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %.noexc37 unwind label %.loopexit

.noexc37:                                         ; preds = %bb.o
  %i.ah = sub nuw i64 %i.af, %3
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %.not14.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not14.i.i, label %._crit_edge.i.thread.i.us, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc37, %.noexc39
  %i.aj = phi i32 [ %i.am, %.noexc39 ], [ 1, %.noexc37 ]
  %.016.i.i = phi i32 [ %i.ak, %.noexc39 ], [ %i.ai, %.noexc37 ]
  %.01115.i.i = phi i32 [ %i.al, %.noexc39 ], [ 0, %.noexc37 ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit

.noexc39:                                         ; preds = %.lr.ph.i.i
  %i.ak = sub nuw i32 %.016.i.i, %i.aj            ; 3 uses
  %i.al = add nuw nsw i32 %.01115.i.i, 1          ; 2 uses
  %i.am = shl nuw i32 2, %.01115.i.i              ; 2 uses
  %.not.i.i = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !17

._crit_edge.i.i:                                  ; preds = %.noexc39
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.lr.ph21.i.i unwind label %.loopexit

.lr.ph21.i.i:                                     ; preds = %._crit_edge.i.i, %.noexc41.us
  %.119.i.i = phi i32 [ %i.an, %.noexc41.us ], [ %i.al, %._crit_edge.i.i ]
  %i.an = add nsw i32 %.119.i.i, -1               ; 3 uses
  %i.ao = lshr i32 %i.ak, %i.an
  %i.ap = and i32 %i.ao, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc41.us unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc41.us:                                      ; preds = %.lr.ph21.i.i
  %.not13.i.i.us = icmp eq i32 %i.an, 0
  br i1 %.not13.i.i.us, label %.noexc41, label %.lr.ph21.i.i, !llvm.loop !18

._crit_edge.i.thread.i.us:                        ; preds = %.noexc37
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.noexc41 unwind label %.loopexit

9:                                                ; preds = %bb.n
  %10 = trunc i64 %i.af to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %.noexc41 unwind label %.loopexit

.noexc41:                                         ; preds = %.noexc41.us, %9, %._crit_edge.i.thread.i.us
  %11 = add nuw i64 %.055, 1                      ; 2 uses
  %.not13.i.i = icmp eq i64 %11, %2
  br i1 %.not13.i.i, label %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit, label %bb.n, !llvm.loop !19

_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit: ; preds = %.noexc41
  %i.aq = add nuw i64 %.02056, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond.not, label %._crit_edge57, label %.preheader, !llvm.loop !20

.loopexit:                                        ; preds = %9, %._crit_edge.i.thread.i.us, %._crit_edge.i.i, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i
  %lpad.loopexit42 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph21.i.i
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

._crit_edge57:                                    ; preds = %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit, %.preheader.lr.ph, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit35
  %12 = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr noundef nonnull align 8 dereferenceable(44) %5)
          to label %bb.p unwind label %.loopexit.split-lp46.loopexit.split-lp

bb.p:                                             ; preds = %._crit_edge57
  %i.ar = zext i32 %12 to i64
  store i64 %i.ar, ptr %4, align 8
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 0

.loopexit.split-lp46:                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit, %.loopexit45, %.loopexit.split-lp46.loopexit.split-lp, %.loopexit.split-lp46.loopexit
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp50, %.loopexit.split-lp46.loopexit.split-lp ], [ %lpad.loopexit47, %.loopexit45 ], [ %lpad.loopexit49, %.loopexit.split-lp46.loopexit ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit42, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %8) #13
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp46, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp46 ], [ %i.p, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.o, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.r ], [ %i.n, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #5

declare void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #5

declare void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN5o3dgc16Arithmetic_Codec13start_encoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #5

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8QuantizeEPKfmmmS2_S2_m(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = mul i64 %3, %2                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.a, ptr %i.b, align 8
  %i.h = icmp ugt i64 %i.a, 2305843009213693951
  %i.i = shl nuw i64 %i.a, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #12
  store ptr %i.k, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.e
  %i.l = trunc i64 %7 to i32
  %notmask = shl nsw i32 -1, %i.l
  %i.m = xor i32 %notmask, -1
  %i.n = uitofp nneg i32 %i.m to float
  %.not38 = icmp eq i64 %2, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not38, label %._crit_edge37, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph36
  %xtraiter = and i64 %2, 1
  %i.p = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod44 = trunc i64 %2 to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.us
  %.02734 = phi i64 [ %17, %._crit_edge.us ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02734
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02734 ; 4 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %i.w = fdiv float %i.n, %i.u
  %.028 = select i1 %i.v, float %i.w, float 1.000000e+00 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %.02734 ; 3 uses
  %i.x = mul i64 %.02734, %2                      ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.033 = phi i64 [ %i.ar, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.y = mul i64 %.033, %4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.y
  %i.z = load float, ptr %gep, align 4
  %i.aa = load float, ptr %i.s, align 4
  %i.ab = fsub float %i.z, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %.028, float 5.000000e-01)
  %i.ad = fptosi float %i.ac to i64
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %.033
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  store i64 %i.ad, ptr %i.ag, align 8
  %i.ah = or disjoint i64 %.033, 1                ; 2 uses
  %i.ai = mul i64 %i.ah, %4
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ai
  %i.aj = load float, ptr %gep.1, align 4
  %i.ak = load float, ptr %i.s, align 4
  %i.al = fsub float %i.aj, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %.028, float 5.000000e-01)
  %i.an = fptosi float %i.am to i64
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.x
  store i64 %i.an, ptr %i.aq, align 8
  %i.ar = add nuw i64 %.033, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.new, !llvm.loop !3

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph
  %.033.us.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %8 = mul i64 %.033.us.epil.init, %4
  %gep.us.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %8
  %9 = load float, ptr %gep.us.epil, align 4
  %10 = load float, ptr %i.s, align 4
  %11 = fsub float %9, %10
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %.028, float 5.000000e-01)
  %13 = fptosi float %12 to i64
  %14 = load ptr, ptr %i.o, align 8
  %15 = getelementptr [8 x i8], ptr %14, i64 %.033.us.epil.init
  %16 = getelementptr [8 x i8], ptr %15, i64 %i.x
  store i64 %13, ptr %16, align 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %17 = add nuw i64 %.02734, 1                    ; 2 uses
  %exitcond40.not = icmp eq i64 %17, %3
  br i1 %exitcond40.not, label %._crit_edge37, label %.lr.ph, !llvm.loop !5

._crit_edge37:                                    ; preds = %._crit_edge.us, %.lr.ph36, %bb.e
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = trunc i64 %1 to i8
  %i.d = and i8 %i.c, 127
  %i.e = load i64, ptr %i.a, align 8              ; 6 uses
  %i.f = load i64, ptr %i.b, align 8
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %i.e, 1
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.b, align 8
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i) #12 ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.j, i64 %i.e, i1 false)
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #11
  %.pre6.pre.i = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.pre6.i = phi i64 [ %i.e, %bb.c ], [ %.pre6.pre.i, %bb.d ], [ 0, %bb.b ]
  store ptr %i.i, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit

_ZN5o3dgc6VectorIhE8PushBackERKh.exit:            ; preds = %._crit_edge.i, %bb.e
  %i.l = phi i64 [ %i.e, %._crit_edge.i ], [ %.pre6.i, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.i, %bb.e ]
  %i.n = add i64 %i.l, 1
  store i64 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 %i.d, ptr %i.o, align 1
  %i.p = lshr i64 %1, 7
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 127
  %i.s = load i64, ptr %i.a, align 8              ; 6 uses
  %i.t = load i64, ptr %i.b, align 8
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit
  %.pre.i.1 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.1

bb.f:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit
  %i.v = shl i64 %i.s, 1
  %spec.select.i.1 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 32) ; 2 uses
  store i64 %spec.select.i.1, ptr %i.b, align 8
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.1) #12 ; 3 uses
  %.not.i.1 = icmp eq i64 %i.s, 0
  br i1 %.not.i.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %0, align 8                ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.x, i64 %i.s, i1 false)
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #11
  %.pre6.pre.i.1 = load i64, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pre6.i.1 = phi i64 [ %i.s, %bb.g ], [ %.pre6.pre.i.1, %bb.h ], [ 0, %bb.f ]
  store ptr %i.w, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.1

_ZN5o3dgc6VectorIhE8PushBackERKh.exit.1:          ; preds = %bb.i, %._crit_edge.i.1
  %i.z = phi i64 [ %i.s, %._crit_edge.i.1 ], [ %.pre6.i.1, %bb.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre.i.1, %._crit_edge.i.1 ], [ %i.w, %bb.i ]
  %i.ab = add i64 %i.z, 1
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.r, ptr %i.ac, align 1
  %i.ad = lshr i64 %1, 14
  %i.ae = trunc i64 %i.ad to i8
  %i.af = and i8 %i.ae, 127
  %i.ag = load i64, ptr %i.a, align 8             ; 6 uses
  %i.ah = load i64, ptr %i.b, align 8
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.j, label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.1
  %.pre.i.2 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.2

bb.j:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.1
  %i.aj = shl i64 %i.ag, 1
  %spec.select.i.2 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 32) ; 2 uses
  store i64 %spec.select.i.2, ptr %i.b, align 8
  %i.ak = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.2) #12 ; 3 uses
  %.not.i.2 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.2, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %0, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr align 1 %i.al, i64 %i.ag, i1 false)
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.al) #11
  %.pre6.pre.i.2 = load i64, ptr %i.a, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre6.i.2 = phi i64 [ %i.ag, %bb.k ], [ %.pre6.pre.i.2, %bb.l ], [ 0, %bb.j ]
  store ptr %i.ak, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.2

_ZN5o3dgc6VectorIhE8PushBackERKh.exit.2:          ; preds = %bb.m, %._crit_edge.i.2
  %i.an = phi i64 [ %i.ag, %._crit_edge.i.2 ], [ %.pre6.i.2, %bb.m ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.2, %._crit_edge.i.2 ], [ %i.ak, %bb.m ]
  %i.ap = add i64 %i.an, 1
  store i64 %i.ap, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 %i.af, ptr %i.aq, align 1
  %i.ar = lshr i64 %1, 21
  %i.as = trunc i64 %i.ar to i8
  %i.at = and i8 %i.as, 127
  %i.au = load i64, ptr %i.a, align 8             ; 6 uses
  %i.av = load i64, ptr %i.b, align 8
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.n, label %._crit_edge.i.3

._crit_edge.i.3:                                  ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.2
  %.pre.i.3 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.3

bb.n:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.2
  %i.ax = shl i64 %i.au, 1
  %spec.select.i.3 = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 32) ; 2 uses
  store i64 %spec.select.i.3, ptr %i.b, align 8
  %i.ay = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.3) #12 ; 3 uses
  %.not.i.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.3, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %0, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.az, i64 %i.au, i1 false)
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.az) #11
  %.pre6.pre.i.3 = load i64, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.pre6.i.3 = phi i64 [ %i.au, %bb.o ], [ %.pre6.pre.i.3, %bb.p ], [ 0, %bb.n ]
  store ptr %i.ay, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.3

_ZN5o3dgc6VectorIhE8PushBackERKh.exit.3:          ; preds = %bb.q, %._crit_edge.i.3
  %i.bb = phi i64 [ %i.au, %._crit_edge.i.3 ], [ %.pre6.i.3, %bb.q ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.3, %._crit_edge.i.3 ], [ %i.ay, %bb.q ]
  %i.bd = add i64 %i.bb, 1
  store i64 %i.bd, ptr %i.a, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 %i.at, ptr %i.be, align 1
  %i.bf = load i64, ptr %i.a, align 8             ; 6 uses
  %i.bg = load i64, ptr %i.b, align 8
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.r, label %._crit_edge.i.4

._crit_edge.i.4:                                  ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.3
  %.pre.i.4 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.4

bb.r:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.3
  %i.bi = shl i64 %i.bf, 1
  %spec.select.i.4 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 32) ; 2 uses
  store i64 %spec.select.i.4, ptr %i.b, align 8
  %i.bj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.4) #12 ; 3 uses
  %.not.i.4 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.4, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %0, align 8               ; 3 uses
end_hunk_0
