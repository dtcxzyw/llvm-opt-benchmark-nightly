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
  br i1 %.not38.i, label %._crit_edge78.thread143, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph36.i
  %xtraiter = and i64 %i.f, 1
  %i.ak = icmp eq i64 %i.f, 1
  %unroll_iter = and i64 %i.f, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod150 = trunc i64 %i.f to i1
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.02734.us.i = phi i64 [ %12, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.02734.us.i
  %i.am = load float, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02734.us.i ; 4 uses
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fsub float %i.am, %i.ao                 ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 0.000000e+00
  %i.ar = fdiv float %i.ai, %i.ap
  %.028.us.i = select i1 %i.aq, float %i.ar, float 1.000000e+00 ; 3 uses
  %invariant.gep.us.i = getelementptr [4 x i8], ptr %i.n, i64 %.02734.us.i ; 3 uses
  %i.as = mul i64 %.02734.us.i, %i.f              ; 3 uses
  br i1 %i.ak, label %.epil.preheader.a, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.033.us.i = phi i64 [ %i.bm, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.at = mul i64 %.033.us.i, %i.p
  %gep.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %i.at
  %i.au = load float, ptr %gep.us.i, align 4
  %i.av = load float, ptr %i.an, align 4
  %i.aw = fsub float %i.au, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %.028.us.i, float 5.000000e-01)
  %i.ay = fptosi float %i.ax to i64
  %i.az = load ptr, ptr %i.aj, align 8
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.033.us.i
  %i.bb = getelementptr [8 x i8], ptr %i.ba, i64 %i.as
  store i64 %i.ay, ptr %i.bb, align 8
  %i.bc = or disjoint i64 %.033.us.i, 1           ; 2 uses
  %i.bd = mul i64 %i.bc, %i.p
  %gep.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %i.bd
  %i.be = load float, ptr %gep.us.i.1, align 4
  %i.bf = load float, ptr %i.an, align 4
  %i.bg = fsub float %i.be, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %.028.us.i, float 5.000000e-01)
  %i.bi = fptosi float %i.bh to i64
  %i.bj = load ptr, ptr %i.aj, align 8
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %i.bc
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.as
  store i64 %i.bi, ptr %i.bl, align 8
  %i.bm = add nuw i64 %.033.us.i, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !3

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.033.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bm, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %4 = mul i64 %.033.us.i.epil.init, %i.p
  %gep.us.i.epil = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %4
  %5 = load float, ptr %gep.us.i.epil, align 4
  %i.bn = load float, ptr %i.an, align 4
  %6 = fsub float %5, %i.bn
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %.028.us.i, float 5.000000e-01)
  %8 = fptosi float %7 to i64
  %9 = load ptr, ptr %i.aj, align 8
  %10 = getelementptr [8 x i8], ptr %9, i64 %.033.us.i.epil.init
  %11 = getelementptr [8 x i8], ptr %10, i64 %i.as
  store i64 %8, ptr %11, align 8
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader.a
  %12 = add nuw i64 %.02734.us.i, 1               ; 2 uses
  %exitcond40.not.i = icmp eq i64 %12, %i.e
  br i1 %exitcond40.not.i, label %.lr.ph77, label %.lr.ph.us.i, !llvm.loop !5

.lr.ph77:                                         ; preds = %._crit_edge.us.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not147 = icmp eq i64 %i.f, 1
  br i1 %.not147, label %._crit_edge78.thread, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph77, %_ZN5o3dgc9TransformEPlm.exit.loopexit.us
  %.05976.us = phi i64 [ %i.fq, %_ZN5o3dgc9TransformEPlm.exit.loopexit.us ], [ 0, %.lr.ph77 ] ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = mul i64 %.05976.us, %i.f
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq ; 12 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN5o3dgc5SplitEPll.exit.i.us, %.lr.ph.i.us
  %.014.i.us = phi i64 [ %i.f, %.lr.ph.i.us ], [ %i.fo, %_ZN5o3dgc5SplitEPll.exit.i.us ] ; 8 uses
  %i.bt = add nsw i64 %.014.i.us, -1              ; 5 uses
  %i.bu = icmp sgt i64 %.014.i.us, 2              ; 2 uses
  br i1 %i.bu, label %.lr.ph.i.i.us.preheader, label %._crit_edge.i.i.us

.lr.ph.i.i.us.preheader:                          ; preds = %bb.h
  %i.bv = add nsw i64 %.014.i.us, -3              ; 2 uses
  %i.bw = lshr i64 %i.bv, 1                       ; 2 uses
  %i.bx = add nuw i64 %i.bw, 1                    ; 2 uses
  %i.by = icmp eq i64 %i.bw, 0
  br i1 %i.by, label %.lr.ph.i.i.us.epil.preheader, label %.lr.ph.i.i.us.preheader.new

.lr.ph.i.i.us.preheader.new:                      ; preds = %.lr.ph.i.i.us.preheader
  %unroll_iter155 = and i64 %i.bx, -2
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.us.preheader.new
  %.016.i.i.us = phi i64 [ 1, %.lr.ph.i.i.us.preheader.new ], [ %i.cs, %.lr.ph.i.i.us ] ; 3 uses
  %niter156 = phi i64 [ 0, %.lr.ph.i.i.us.preheader.new ], [ %niter156.next.1, %.lr.ph.i.i.us ]
  %i.bz = getelementptr [8 x i8], ptr %i.br, i64 %.016.i.i.us ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = add i64 %i.cb, 1
  %i.cf = add i64 %i.ce, %i.cd
  %i.cg = ashr i64 %i.cf, 1
  %i.ch = load i64, ptr %i.bz, align 8
  %i.ci = sub nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr %i.bz, align 8
  %i.cj = getelementptr [8 x i8], ptr %i.br, i64 %.016.i.i.us ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 16     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cj, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = add i64 %i.cd, 1
  %i.co = add i64 %i.cn, %i.cm
  %i.cp = ashr i64 %i.co, 1
  %i.cq = load i64, ptr %i.ck, align 8
  %i.cr = sub nsw i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %i.ck, align 8
  %i.cs = add nuw nsw i64 %.016.i.i.us, 4         ; 3 uses
  %niter156.next.1 = add nuw i64 %niter156, 2     ; 2 uses
  %niter156.ncmp.1.not = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1.not, label %._crit_edge.i.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !6

._crit_edge.i.i.us.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i.us
  %i.ct = and i64 %i.bv, 2
  %lcmp.mod152.not.not = icmp eq i64 %i.ct, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.i.i.us.epil.preheader, label %._crit_edge.i.i.us

.lr.ph.i.i.us.epil.preheader:                     ; preds = %._crit_edge.i.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.016.i.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.us.preheader ], [ %i.cs, %._crit_edge.i.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i64 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.cu = getelementptr [8 x i8], ptr %i.br, i64 %.016.i.i.us.epil.init ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = add i64 %i.cw, 1
  %i.da = add i64 %i.cz, %i.cy
  %i.db = ashr i64 %i.da, 1
  %i.dc = load i64, ptr %i.cu, align 8
  %i.dd = sub nsw i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cu, align 8
  %i.de = add nuw nsw i64 %.016.i.i.us.epil.init, 2
  br label %._crit_edge.i.i.us

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i.us.epil.preheader, %._crit_edge.i.i.us.loopexit.unr-lcssa, %bb.h
  %.0.lcssa.i.i.us = phi i64 [ 1, %bb.h ], [ %i.cs, %._crit_edge.i.i.us.loopexit.unr-lcssa ], [ %i.de, %.lr.ph.i.i.us.epil.preheader ]
  %i.df = icmp eq i64 %.0.lcssa.i.i.us, %i.bt
  br i1 %i.df, label %bb.i, label %_ZN5o3dgc7PredictEPll.exit.i.us

bb.i:                                             ; preds = %._crit_edge.i.i.us
  %i.dg = getelementptr [8 x i8], ptr %i.br, i64 %i.bt ; 3 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = load i64, ptr %i.dg, align 8
  %i.dk = sub nsw i64 %i.dj, %i.di
  store i64 %i.dk, ptr %i.dg, align 8
  br label %_ZN5o3dgc7PredictEPll.exit.i.us

_ZN5o3dgc7PredictEPll.exit.i.us:                  ; preds = %bb.i, %._crit_edge.i.i.us
  %i.dl = load i64, ptr %i.bs, align 8
  %i.dm = ashr i64 %i.dl, 1
  %i.dn = load i64, ptr %i.br, align 8
  %i.do = add nsw i64 %i.dn, %i.dm
  store i64 %i.do, ptr %i.br, align 8
  %i.dp = icmp sgt i64 %.014.i.us, 3
  br i1 %i.dp, label %.lr.ph.i11.i.us.preheader, label %._crit_edge.i9.i.us

.lr.ph.i11.i.us.preheader:                        ; preds = %_ZN5o3dgc7PredictEPll.exit.i.us
  %i.dq = add nsw i64 %.014.i.us, -4
  %i.dr = lshr i64 %i.dq, 1                       ; 2 uses
  %i.ds = add nuw i64 %i.dr, 1                    ; 2 uses
  %i.dt = icmp eq i64 %i.dr, 0
  br i1 %i.dt, label %.lr.ph.i11.i.us.epil.preheader, label %.lr.ph.i11.i.us.preheader.new

.lr.ph.i11.i.us.preheader.new:                    ; preds = %.lr.ph.i11.i.us.preheader
  %unroll_iter161 = and i64 %i.ds, -2
  br label %.lr.ph.i11.i.us

.lr.ph.i11.i.us:                                  ; preds = %.lr.ph.i11.i.us, %.lr.ph.i11.i.us.preheader.new
  %.018.i.i.us = phi i64 [ 2, %.lr.ph.i11.i.us.preheader.new ], [ %i.en, %.lr.ph.i11.i.us ] ; 3 uses
  %niter162 = phi i64 [ 0, %.lr.ph.i11.i.us.preheader.new ], [ %niter162.next.1, %.lr.ph.i11.i.us ]
  %i.du = getelementptr [8 x i8], ptr %i.br, i64 %.018.i.i.us ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 -8
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = add i64 %i.dw, 2
  %i.ea = add i64 %i.dz, %i.dy
  %i.eb = ashr i64 %i.ea, 2
  %i.ec = load i64, ptr %i.du, align 8
  %i.ed = add nsw i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.du, align 8
  %i.ee = getelementptr [8 x i8], ptr %i.br, i64 %.018.i.i.us ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = add i64 %i.dy, 2
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = ashr i64 %i.ej, 2
  %i.el = load i64, ptr %i.ef, align 8
  %i.em = add nsw i64 %i.ek, %i.el
  store i64 %i.em, ptr %i.ef, align 8
  %i.en = add nuw nsw i64 %.018.i.i.us, 4         ; 3 uses
  %niter162.next.1 = add nuw i64 %niter162, 2     ; 2 uses
  %niter162.ncmp.1.not = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1.not, label %._crit_edge.i9.i.us.loopexit.unr-lcssa, label %.lr.ph.i11.i.us, !llvm.loop !7

._crit_edge.i9.i.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.i11.i.us
  %i.eo = and i64 %.014.i.us, 2
  %lcmp.mod158.not.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod158.not.not, label %.lr.ph.i11.i.us.epil.preheader, label %._crit_edge.i9.i.us

.lr.ph.i11.i.us.epil.preheader:                   ; preds = %._crit_edge.i9.i.us.loopexit.unr-lcssa, %.lr.ph.i11.i.us.preheader
  %.018.i.i.us.epil.init = phi i64 [ 2, %.lr.ph.i11.i.us.preheader ], [ %i.en, %._crit_edge.i9.i.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i64 %i.ds to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.ep = getelementptr [8 x i8], ptr %i.br, i64 %.018.i.i.us.epil.init ; 4 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 -8
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = add i64 %i.er, 2
  %i.ev = add i64 %i.eu, %i.et
  %i.ew = ashr i64 %i.ev, 2
  %i.ex = load i64, ptr %i.ep, align 8
  %i.ey = add nsw i64 %i.ew, %i.ex
  store i64 %i.ey, ptr %i.ep, align 8
  %i.ez = add nuw nsw i64 %.018.i.i.us.epil.init, 2
  br label %._crit_edge.i9.i.us

._crit_edge.i9.i.us:                              ; preds = %.lr.ph.i11.i.us.epil.preheader, %._crit_edge.i9.i.us.loopexit.unr-lcssa, %_ZN5o3dgc7PredictEPll.exit.i.us
  %.0.lcssa.i10.i.us = phi i64 [ 2, %_ZN5o3dgc7PredictEPll.exit.i.us ], [ %i.en, %._crit_edge.i9.i.us.loopexit.unr-lcssa ], [ %i.ez, %.lr.ph.i11.i.us.epil.preheader ]
  %i.fa = icmp eq i64 %.0.lcssa.i10.i.us, %i.bt
  br i1 %i.fa, label %bb.j, label %_ZN5o3dgc6UpdateEPll.exit.i.us

bb.j:                                             ; preds = %._crit_edge.i9.i.us
  %i.fb = getelementptr [8 x i8], ptr %i.br, i64 %i.bt ; 3 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = ashr i64 %i.fd, 1
  %i.ff = load i64, ptr %i.fb, align 8
  %i.fg = add nsw i64 %i.ff, %i.fe
  store i64 %i.fg, ptr %i.fb, align 8
  br label %_ZN5o3dgc6UpdateEPll.exit.i.us

_ZN5o3dgc6UpdateEPll.exit.i.us:                   ; preds = %bb.j, %._crit_edge.i9.i.us
  br i1 %i.bu, label %.preheader.i.i.us, label %_ZN5o3dgc5SplitEPll.exit.i.us

.preheader.i.i.us:                                ; preds = %_ZN5o3dgc6UpdateEPll.exit.i.us, %13
  %.01217.i.i.us = phi i64 [ %.012.i.i.us, %13 ], [ %i.bt, %_ZN5o3dgc6UpdateEPll.exit.i.us ] ; 2 uses
  %.01316.i.i.us = phi i64 [ %14, %13 ], [ 1, %_ZN5o3dgc6UpdateEPll.exit.i.us ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i.i.us
  %.014.i.i.us = phi i64 [ %.01316.i.i.us, %.preheader.i.i.us ], [ %i.fk, %bb.k ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.014.i.i.us ; 2 uses
  %i.fi = load <2 x i64>, ptr %i.fh, align 8
  %i.fj = shufflevector <2 x i64> %i.fi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.fj, ptr %i.fh, align 8
  %i.fk = add nuw nsw i64 %.014.i.i.us, 2         ; 2 uses
  %i.fl = icmp slt i64 %i.fk, %.01217.i.i.us
  br i1 %i.fl, label %bb.k, label %13, !llvm.loop !8

13:                                               ; preds = %bb.k
  %14 = add nuw nsw i64 %.01316.i.i.us, 1         ; 2 uses
  %.012.i.i.us = add nsw i64 %.01217.i.i.us, -1   ; 2 uses
  %15 = icmp slt i64 %14, %.012.i.i.us
  br i1 %15, label %.preheader.i.i.us, label %_ZN5o3dgc5SplitEPll.exit.i.us, !llvm.loop !9

_ZN5o3dgc5SplitEPll.exit.i.us:                    ; preds = %13, %_ZN5o3dgc6UpdateEPll.exit.i.us
  %i.fm = lshr i64 %.014.i.us, 1
  %i.fn = and i64 %.014.i.us, 1
  %i.fo = add nuw i64 %i.fm, %i.fn                ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 1
  br i1 %i.fp, label %bb.h, label %_ZN5o3dgc9TransformEPlm.exit.loopexit.us, !llvm.loop !10

_ZN5o3dgc9TransformEPlm.exit.loopexit.us:         ; preds = %_ZN5o3dgc5SplitEPll.exit.i.us
  %i.fq = add nuw i64 %.05976.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.fq, %i.e
  br i1 %exitcond.not, label %._crit_edge78, label %.lr.ph.i.us, !llvm.loop !11

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
  br i1 %29, label %30, label %bb.l

30:                                               ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit
  %31 = bitcast float %27 to i32
  %.0.insert.ext.i.i64 = zext i32 %31 to i64
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef %.0.insert.ext.i.i64)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65

bb.l:                                             ; preds = %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit
  tail call void @_ZN5o3dgc12BinaryStream15WriteFloat32BinEf(ptr noundef nonnull align 8 dereferenceable(28) %3, float noundef %27)
  br label %_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65

_ZN5o3dgc12BinaryStream12WriteFloat32EfNS_15O3DGCStreamTypeE.exit65: ; preds = %30, %bb.l
  %32 = add nuw i64 %.06075, 1                    ; 2 uses
  %33 = load i64, ptr %i.d, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %16, label %._crit_edge, !llvm.loop !12

._crit_edge78:                                    ; preds = %_ZN5o3dgc9TransformEPlm.exit.loopexit.us, %bb.g
  %35 = load i32, ptr %i.g, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %.preheader73, label %bb.ac

._crit_edge78.thread143:                          ; preds = %.lr.ph36.i
  %37 = load i32, ptr %i.g, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %.loopexit.thread, label %bb.ac

._crit_edge78.thread:                             ; preds = %.lr.ph77
  %39 = load i32, ptr %i.g, align 8
  %i.fr = icmp eq i32 %39, 1
  br i1 %i.fr, label %.preheader.us.preheader, label %bb.ac

.preheader73:                                     ; preds = %._crit_edge78
  %.not92 = icmp eq i64 %i.f, 0
  br i1 %.not92, label %.loopexit.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader73
  br i1 %.not.i, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %._crit_edge78.thread, %.preheader.lr.ph
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge88.us
  %.05889.us = phi i64 [ %i.hh, %._crit_edge88.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader.us, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us
  %.05786.us = phi i64 [ 0, %.preheader.us ], [ %50, %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us ] ; 2 uses
  %i.fs = load ptr, ptr %40, align 8
  %i.ft = mul i64 %.05786.us, %i.f
  %i.fu = getelementptr [8 x i8], ptr %i.fs, i64 %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.fu, i64 %.05889.us
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = shl nsw i64 %i.fw, 1
  %.lobit.i.i.us = ashr i64 %i.fw, 63
  %i.fy = xor i64 %i.fx, %.lobit.i.i.us           ; 3 uses
  %i.fz = icmp ugt i64 %i.fy, 126
  br i1 %i.fz, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %42 = trunc nuw nsw i64 %i.fy to i8
  %i.ga = load i64, ptr %i.b, align 8             ; 6 uses
  %i.gb = load i64, ptr %41, align 8
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.o, label %._crit_edge.i15.i.us

._crit_edge.i15.i.us:                             ; preds = %bb.n
  %.pre.i16.i.us = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i.us

bb.o:                                             ; preds = %bb.n
  %i.gd = shl i64 %i.ga, 1
  %spec.select.i17.i.us = tail call i64 @llvm.umax.i64(i64 %i.gd, i64 32) ; 2 uses
  store i64 %spec.select.i17.i.us, ptr %41, align 8
  %i.ge = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i17.i.us) #12 ; 3 uses
  %.not.i18.i.us = icmp eq i64 %i.ga, 0
  br i1 %.not.i18.i.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gf = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr align 1 %i.gf, i64 %i.ga, i1 false)
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZdaPv(ptr noundef nonnull %i.gf) #11
  %.pre6.pre.i19.i.us = load i64, ptr %i.b, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.pre6.i20.i.us = phi i64 [ %i.ga, %bb.p ], [ %.pre6.pre.i19.i.us, %bb.q ], [ 0, %bb.o ]
  store ptr %i.ge, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i.us

_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i.us:     ; preds = %bb.r, %._crit_edge.i15.i.us
  %i.gh = phi i64 [ %i.ga, %._crit_edge.i15.i.us ], [ %.pre6.i20.i.us, %bb.r ] ; 2 uses
  %i.gi = phi ptr [ %.pre.i16.i.us, %._crit_edge.i15.i.us ], [ %i.ge, %bb.r ]
  %i.gj = add i64 %i.gh, 1
  store i64 %i.gj, ptr %i.b, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gh
  store i8 %42, ptr %i.gk, align 1
  br label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us

bb.s:                                             ; preds = %bb.m
  %i.gl = load i64, ptr %i.b, align 8             ; 6 uses
  %i.gm = load i64, ptr %41, align 8
  %i.gn = icmp eq i64 %i.gl, %i.gm
  br i1 %i.gn, label %bb.t, label %._crit_edge.i.i67.us

._crit_edge.i.i67.us:                             ; preds = %bb.s
  %.pre.i.i68.us = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i.us

bb.t:                                             ; preds = %bb.s
  %i.go = shl i64 %i.gl, 1
  %spec.select.i.i69.us = tail call i64 @llvm.umax.i64(i64 %i.go, i64 32) ; 2 uses
  store i64 %spec.select.i.i69.us, ptr %41, align 8
  %i.gp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i69.us) #12 ; 3 uses
  %.not.i.i70.us = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i70.us, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gq = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr align 1 %i.gq, i64 %i.gl, i1 false)
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.gq) #11
  %.pre6.pre.i.i71.us = load i64, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.pre6.i.i72.us = phi i64 [ %i.gl, %bb.u ], [ %.pre6.pre.i.i71.us, %bb.v ], [ 0, %bb.t ]
  store ptr %i.gp, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i.us

_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i.us:       ; preds = %bb.w, %._crit_edge.i.i67.us
  %i.gs = phi i64 [ %i.gl, %._crit_edge.i.i67.us ], [ %.pre6.i.i72.us, %bb.w ] ; 2 uses
  %i.gt = phi ptr [ %.pre.i.i68.us, %._crit_edge.i.i67.us ], [ %i.gp, %bb.w ]
  %i.gu = add i64 %i.gs, 1
  store i64 %i.gu, ptr %i.b, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gs
  store i8 127, ptr %i.gv, align 1
  %43 = add i64 %i.fy, -127
  br label %bb.x

bb.x:                                             ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i.us, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i.us
  %.0.i.us = phi i64 [ %43, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit.i.us ], [ %46, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i.us ] ; 2 uses
  %.0.tr.i.us = trunc i64 %.0.i.us to i8
  %44 = shl i8 %.0.tr.i.us, 1
  %45 = and i8 %44, 126
  %46 = lshr i64 %.0.i.us, 6                      ; 2 uses
  %47 = icmp ne i64 %46, 0                        ; 2 uses
  %48 = zext i1 %47 to i8
  %49 = or disjoint i8 %45, %48
  %i.gw = load i64, ptr %i.b, align 8             ; 6 uses
  %i.gx = load i64, ptr %41, align 8
  %i.gy = icmp eq i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.y, label %._crit_edge.i8.i.us

._crit_edge.i8.i.us:                              ; preds = %bb.x
  %.pre.i9.i.us = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i.us

bb.y:                                             ; preds = %bb.x
  %i.gz = shl i64 %i.gw, 1
  %spec.select.i10.i.us = tail call i64 @llvm.umax.i64(i64 %i.gz, i64 32) ; 2 uses
  store i64 %spec.select.i10.i.us, ptr %41, align 8
  %i.ha = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i10.i.us) #12 ; 3 uses
  %.not.i11.i.us = icmp eq i64 %i.gw, 0
  br i1 %.not.i11.i.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hb = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr align 1 %i.hb, i64 %i.gw, i1 false)
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %i.hb) #11
  %.pre6.pre.i12.i.us = load i64, ptr %i.b, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.pre6.i13.i.us = phi i64 [ %i.gw, %bb.z ], [ %.pre6.pre.i12.i.us, %bb.aa ], [ 0, %bb.y ]
  store ptr %i.ha, ptr %3, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i.us

_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i.us:     ; preds = %bb.ab, %._crit_edge.i8.i.us
  %i.hd = phi i64 [ %i.gw, %._crit_edge.i8.i.us ], [ %.pre6.i13.i.us, %bb.ab ] ; 2 uses
  %i.he = phi ptr [ %.pre.i9.i.us, %._crit_edge.i8.i.us ], [ %i.ha, %bb.ab ]
  %i.hf = add i64 %i.hd, 1
  store i64 %i.hf, ptr %i.b, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hd
  store i8 %49, ptr %i.hg, align 1
  br i1 %47, label %bb.x, label %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us, !llvm.loop !13

_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us: ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14.i.us, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21.i.us
  %50 = add nuw i64 %.05786.us, 1                 ; 2 uses
  %exitcond98.not = icmp eq i64 %50, %i.e
  br i1 %exitcond98.not, label %._crit_edge88.us, label %bb.m, !llvm.loop !14

._crit_edge88.us:                                 ; preds = %_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm.exit.us
  %i.hh = add nuw i64 %.05889.us, 1               ; 2 uses
  %exitcond99.not = icmp eq i64 %i.hh, %i.f
  br i1 %exitcond99.not, label %.loopexit, label %.preheader.us, !llvm.loop !15

bb.ac:                                            ; preds = %._crit_edge78.thread143, %._crit_edge78.thread, %._crit_edge78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8
  %i.hi = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hj = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hk = icmp ugt i64 %i.hj, 4294967295
  br i1 %i.hk, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hl = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hm = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hn = icmp ugt i64 %i.hm, %i.hj
  br i1 %i.hn, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ho = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hq = icmp ugt i64 %i.hp, %i.hm
  br i1 %i.hq, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hr = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hs = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, %i.hp
  br i1 %i.ht, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hu = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hv = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hw = icmp ugt i64 %i.hv, %i.hs
  br i1 %i.hw, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hx = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.hy = load i64, ptr %i.a, align 8             ; 2 uses
  %i.hz = icmp ugt i64 %i.hy, %i.hv
  br i1 %i.hz, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ia = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ib = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ic = icmp ugt i64 %i.ib, %i.hy
  br i1 %i.ic, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ie = load i64, ptr %i.a, align 8             ; 2 uses
  %i.if = icmp ugt i64 %i.ie, %i.ib
  br i1 %i.if, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ig = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ih = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ii = icmp ugt i64 %i.ih, %i.ie
  br i1 %i.ii, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ij = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef 512, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.ik = load i64, ptr %i.a, align 8
  %i.il = icmp ugt i64 %i.ik, %i.ih
  %spec.select = select i1 %i.il, i64 256, i64 512
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.054.lcssa = phi i64 [ 1, %bb.ac ], [ 16, %bb.ah ], [ 1, %bb.ad ], [ %spec.select, %bb.al ], [ 2, %bb.ae ], [ 64, %bb.aj ], [ 4, %bb.af ], [ 128, %bb.ak ], [ 8, %bb.ag ], [ 32, %bb.ai ]
  %i.im = call noundef i32 @_ZN5o3dgc20DynamicVectorEncoder8EncodeACEmmmRm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %i.f, i64 noundef %i.e, i64 noundef %.054.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.in = load i64, ptr %i.a, align 8             ; 2 uses
  %.not91 = icmp eq i64 %i.in, 0
  br i1 %.not91, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.am
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.an

._crit_edge85:                                    ; preds = %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

bb.an:                                            ; preds = %.lr.ph84, %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit
  %.082 = phi i64 [ 0, %.lr.ph84 ], [ %i.je, %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit ] ; 2 uses
  %i.iq = load ptr, ptr %i.io, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.082
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = load i64, ptr %i.b, align 8             ; 6 uses
  %i.iu = load i64, ptr %i.ip, align 8
  %i.iv = icmp eq i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.ao, label %._crit_edge.i.i66

._crit_edge.i.i66:                                ; preds = %bb.an
  %.pre.i.i = load ptr, ptr %3, align 8
  br label %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit

bb.ao:                                            ; preds = %bb.an
  %i.iw = shl i64 %i.it, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.iw, i64 32) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.ip, align 8
  %i.ix = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i.i) #12 ; 3 uses
  %.not.i.i = icmp eq i64 %i.it, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iy = load ptr, ptr %3, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ix, ptr align 1 %i.iy, i64 %i.it, i1 false)
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdaPv(ptr noundef nonnull %i.iy) #11
  %.pre6.pre.i.i = load i64, ptr %i.b, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pre6.i.i = phi i64 [ %i.it, %bb.ap ], [ %.pre6.pre.i.i, %bb.aq ], [ 0, %bb.ao ]
  store ptr %i.ix, ptr %3, align 8
  br label %_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit

_ZN5o3dgc12BinaryStream14WriteUChar8BinEh.exit:   ; preds = %._crit_edge.i.i66, %bb.ar
  %i.ja = phi i64 [ %i.it, %._crit_edge.i.i66 ], [ %.pre6.i.i, %bb.ar ] ; 2 uses
  %i.jb = phi ptr [ %.pre.i.i, %._crit_edge.i.i66 ], [ %i.ix, %bb.ar ]
  %i.jc = add i64 %i.ja, 1
  store i64 %i.jc, ptr %i.b, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.ja
  store i8 %i.is, ptr %i.jd, align 1
  %i.je = add nuw i64 %.082, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.je, %i.in
  br i1 %exitcond97.not, label %._crit_edge85, label %bb.an, !llvm.loop !16

.loopexit.thread:                                 ; preds = %.preheader73, %._crit_edge78.thread143
  %i.jf = load i64, ptr %i.b, align 8
  %i.jg = sub i64 %i.jf, %i.c                     ; 2 uses
  %i.jh = trunc i64 %i.jg to i8
  br label %bb.as

.loopexit:                                        ; preds = %._crit_edge88.us, %.preheader.lr.ph, %._crit_edge85
  %.pr = load i32, ptr %i.g, align 8
  %i.ji = load i64, ptr %i.b, align 8
  %i.jj = sub i64 %i.ji, %i.c                     ; 5 uses
  %i.jk = icmp eq i32 %.pr, 1
  %i.jl = trunc i64 %i.jj to i8                   ; 3 uses
  br i1 %i.jk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit.thread, %.loopexit
  %i.jm = phi i8 [ %i.jh, %.loopexit.thread ], [ %i.jl, %.loopexit ]
  %i.jn = phi i64 [ %i.jg, %.loopexit.thread ], [ %i.jj, %.loopexit ] ; 4 uses
  %i.jo = and i8 %i.jm, 127
  %i.jp = load ptr, ptr %3, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.c
  store i8 %i.jo, ptr %i.jq, align 1
  %i.jr = lshr i64 %i.jn, 7
  %i.js = trunc i64 %i.jr to i8
  %i.jt = and i8 %i.js, 127
  %i.ju = load ptr, ptr %3, align 8
  %i.jv = getelementptr i8, ptr %i.ju, i64 %i.c
  %i.jw = getelementptr i8, ptr %i.jv, i64 1
  store i8 %i.jt, ptr %i.jw, align 1
  %i.jx = lshr i64 %i.jn, 14
  %i.jy = trunc i64 %i.jx to i8
  %i.jz = and i8 %i.jy, 127
  %i.ka = load ptr, ptr %3, align 8
  %i.kb = getelementptr i8, ptr %i.ka, i64 %i.c
  %i.kc = getelementptr i8, ptr %i.kb, i64 2
  store i8 %i.jz, ptr %i.kc, align 1
  %i.kd = lshr i64 %i.jn, 21
  %i.ke = trunc i64 %i.kd to i8
  %i.kf = and i8 %i.ke, 127
  %i.kg = load ptr, ptr %3, align 8
  %i.kh = getelementptr i8, ptr %i.kg, i64 %i.c
  %i.ki = getelementptr i8, ptr %i.kh, i64 3
  store i8 %i.kf, ptr %i.ki, align 1
  %i.kj = lshr i64 %i.jn, 28
  %i.kk = trunc i64 %i.kj to i8
  %i.kl = and i8 %i.kk, 127
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit

bb.at:                                            ; preds = %.loopexit
  %.sroa.3.0.extract.shift.i.i = lshr i64 %i.jj, 8
  %.sroa.3.0.extract.trunc.i.i = trunc i64 %.sroa.3.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.jj, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i64 %.sroa.5.0.extract.shift.i.i to i8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i64 %i.jj, 24
  %.sroa.7.0.extract.trunc.i.i = trunc i64 %.sroa.7.0.extract.shift.i.i to i8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kn = load i32, ptr %i.km, align 8
  %i.ko = icmp eq i32 %i.kn, 0                    ; 4 uses
  %i.kp = load ptr, ptr %3, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.c
  %.sroa.7.0.extract.trunc..sroa.0.0.extract.trunc.i.i = select i1 %i.ko, i8 %.sroa.7.0.extract.trunc.i.i, i8 %i.jl
  %.sroa.5.0.extract.trunc..sroa.3.0.extract.trunc.i.i = select i1 %i.ko, i8 %.sroa.5.0.extract.trunc.i.i, i8 %.sroa.3.0.extract.trunc.i.i
  %.sroa.3.0.extract.trunc..sroa.5.0.extract.trunc.i.i = select i1 %i.ko, i8 %.sroa.3.0.extract.trunc.i.i, i8 %.sroa.5.0.extract.trunc.i.i
  %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.i = select i1 %i.ko, i8 %i.jl, i8 %.sroa.7.0.extract.trunc.i.i
  store i8 %.sroa.7.0.extract.trunc..sroa.0.0.extract.trunc.i.i, ptr %i.kq, align 1
  %i.kr = load ptr, ptr %3, align 8
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.c
  %i.kt = getelementptr i8, ptr %i.ks, i64 1
  store i8 %.sroa.5.0.extract.trunc..sroa.3.0.extract.trunc.i.i, ptr %i.kt, align 1
  %i.ku = load ptr, ptr %3, align 8
  %i.kv = getelementptr i8, ptr %i.ku, i64 %i.c
  %i.kw = getelementptr i8, ptr %i.kv, i64 2
  store i8 %.sroa.3.0.extract.trunc..sroa.5.0.extract.trunc.i.i, ptr %i.kw, align 1
  br label %_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit

_ZN5o3dgc12BinaryStream11WriteUInt32EmmNS_15O3DGCStreamTypeE.exit: ; preds = %bb.as, %bb.at
  %.sink6.i = phi i64 [ 3, %bb.at ], [ 4, %bb.as ]
  %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.sink.i = phi i8 [ %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.i, %bb.at ], [ %i.kl, %bb.as ]
  %i.kx = load ptr, ptr %3, align 8
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.c
  %i.kz = getelementptr i8, ptr %i.ky, i64 %.sink6.i
  store i8 %.sroa.0.0.extract.trunc..sroa.7.0.extract.trunc.i.sink.i, ptr %i.kz, align 1
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
  br i1 %i.i, label %bb.e, label %._crit_edge.a

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
  br label %._crit_edge.a

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

.loopexit.split-lp46.loopexit.split-lp:           ; preds = %._crit_edge.i, %bb.m, %._crit_edge57, %bb.l, %._crit_edge.a, %bb.g
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

._crit_edge.a:                                    ; preds = %bb.d, %bb.h
  %i.q = phi ptr [ %i.m, %bb.h ], [ %i.k, %bb.d ]
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.e, ptr noundef %i.q)
          to label %bb.l unwind label %.loopexit.split-lp46.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge.a
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
  %.not60 = icmp eq i64 %2, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not60, label %._crit_edge57, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.02056.us = phi i64 [ %i.aq, %._crit_edge.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us
  %.055.us = phi i64 [ 0, %.preheader.us ], [ %11, %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = mul i64 %.055.us, %1
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %.02056.us
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 1
  %.lobit.i.i.us = ashr i64 %i.ad, 63
  %i.af = xor i64 %i.ae, %.lobit.i.i.us           ; 3 uses
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %9, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %.noexc37.us unwind label %.loopexit.split-lp.loopexit.split-lp.split.us

.noexc37.us:                                      ; preds = %bb.o
  %i.ah = sub nuw i64 %i.af, %3
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %.not14.i.i.us = icmp eq i32 %i.ai, 0
  br i1 %.not14.i.i.us, label %._crit_edge.i.thread.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.noexc37.us, %.noexc39.us
  %i.aj = phi i32 [ %i.am, %.noexc39.us ], [ 1, %.noexc37.us ]
  %.016.i.i.us = phi i32 [ %i.ak, %.noexc39.us ], [ %i.ai, %.noexc37.us ]
  %.01115.i.i.us = phi i32 [ %i.al, %.noexc39.us ], [ 0, %.noexc37.us ] ; 2 uses
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.noexc39.us unwind label %.loopexit.split-lp.loopexit.split.us

.noexc39.us:                                      ; preds = %.lr.ph.i.i.us
  %i.ak = sub nuw i32 %.016.i.i.us, %i.aj         ; 3 uses
  %i.al = add nuw nsw i32 %.01115.i.i.us, 1       ; 2 uses
  %i.am = shl nuw i32 2, %.01115.i.i.us           ; 2 uses
  %.not.i.i.us = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i.us, !llvm.loop !17

._crit_edge.i.i.us:                               ; preds = %.noexc39.us
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %.lr.ph21.i.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.split.us

.lr.ph21.i.i.us:                                  ; preds = %._crit_edge.i.i.us, %.noexc41.us
  %.119.i.i.us = phi i32 [ %i.an, %.noexc41.us ], [ %i.al, %._crit_edge.i.i.us ]
  %i.an = add nsw i32 %.119.i.i.us, -1            ; 3 uses
  %i.ao = lshr i32 %i.ak, %i.an
  %i.ap = and i32 %i.ao, 1
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %.noexc41.us unwind label %.loopexit.split.us

.noexc41.us:                                      ; preds = %.lr.ph21.i.i.us
  %.not13.i.i.us = icmp eq i32 %i.an, 0
  br i1 %.not13.i.i.us, label %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us, label %.lr.ph21.i.i.us, !llvm.loop !18

._crit_edge.i.thread.i.us:                        ; preds = %.noexc37.us
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(20) %7)
          to label %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.split.us

9:                                                ; preds = %bb.n
  %10 = trunc i64 %i.af to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %5, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us unwind label %.loopexit.split-lp.loopexit.split-lp.split.us

_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us: ; preds = %.noexc41.us, %9, %._crit_edge.i.thread.i.us
  %11 = add nuw i64 %.055.us, 1                   ; 2 uses
  %exitcond.not.a = icmp eq i64 %11, %2
  br i1 %exitcond.not.a, label %._crit_edge.us, label %bb.n, !llvm.loop !19

._crit_edge.us:                                   ; preds = %_ZN5o3dgc14EncodeIntACEGCElRNS_16Arithmetic_CodecERNS_19Adaptive_Data_ModelERNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelEm.exit.us
  %i.aq = add nuw i64 %.02056.us, 1               ; 2 uses
  %exitcond65.not = icmp eq i64 %i.aq, %1
  br i1 %exitcond65.not, label %._crit_edge57, label %.preheader.us, !llvm.loop !20

.loopexit.split-lp.loopexit.split-lp.split.us:    ; preds = %9, %._crit_edge.i.thread.i.us, %._crit_edge.i.i.us, %bb.o
  %lpad.loopexit.split-lp43.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split-lp.loopexit.split.us:             ; preds = %.lr.ph.i.i.us
  %lpad.loopexit42.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

.loopexit.split.us:                               ; preds = %.lr.ph21.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp46

._crit_edge57:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombEncodeEjiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit35
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

.loopexit.split-lp46:                             ; preds = %.loopexit.split.us, %.loopexit.split-lp.loopexit.split-lp.split.us, %.loopexit.split-lp.loopexit.split.us, %.loopexit45, %.loopexit.split-lp46.loopexit.split-lp, %.loopexit.split-lp46.loopexit
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp50, %.loopexit.split-lp46.loopexit.split-lp ], [ %lpad.loopexit47, %.loopexit45 ], [ %lpad.loopexit49, %.loopexit.split-lp46.loopexit ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit42.us, %.loopexit.split-lp.loopexit.split.us ], [ %lpad.loopexit.split-lp43.us, %.loopexit.split-lp.loopexit.split-lp.split.us ]
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
  br i1 %.not38, label %._crit_edge37, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph36
  %xtraiter = and i64 %2, 1
  %i.p = icmp eq i64 %2, 1
  %unroll_iter = and i64 %2, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = trunc i64 %2 to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.02734.us = phi i64 [ %17, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02734.us
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02734.us ; 4 uses
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t                    ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %i.w = fdiv float %i.n, %i.u
  %.028.us = select i1 %i.v, float %i.w, float 1.000000e+00 ; 3 uses
  %invariant.gep.us = getelementptr [4 x i8], ptr %1, i64 %.02734.us ; 3 uses
  %i.x = mul i64 %.02734.us, %2                   ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %.033.us = phi i64 [ %i.ar, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.y = mul i64 %.033.us, %4
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.y
  %i.z = load float, ptr %gep.us, align 4
  %i.aa = load float, ptr %i.s, align 4
  %i.ab = fsub float %i.z, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %.028.us, float 5.000000e-01)
  %i.ad = fptosi float %i.ac to i64
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %.033.us
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.x
  store i64 %i.ad, ptr %i.ag, align 8
  %i.ah = or disjoint i64 %.033.us, 1             ; 2 uses
  %i.ai = mul i64 %i.ah, %4
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ai
  %i.aj = load float, ptr %gep.us.1, align 4
  %i.ak = load float, ptr %i.s, align 4
  %i.al = fsub float %i.aj, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %.028.us, float 5.000000e-01)
  %i.an = fptosi float %i.am to i64
  %i.ao = load ptr, ptr %i.o, align 8
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %i.x
  store i64 %i.an, ptr %i.aq, align 8
  %i.ar = add nuw i64 %.033.us, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !3

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.033.us.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %i.ar, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %8 = mul i64 %.033.us.epil.init, %4
  %gep.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %8
  %9 = load float, ptr %gep.us.epil, align 4
  %10 = load float, ptr %i.s, align 4
  %11 = fsub float %9, %10
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %.028.us, float 5.000000e-01)
  %13 = fptosi float %12 to i64
  %14 = load ptr, ptr %i.o, align 8
  %15 = getelementptr [8 x i8], ptr %14, i64 %.033.us.epil.init
  %16 = getelementptr [8 x i8], ptr %15, i64 %i.x
  store i64 %13, ptr %16, align 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %17 = add nuw i64 %.02734.us, 1                 ; 2 uses
  %exitcond40.not = icmp eq i64 %17, %3
  br i1 %exitcond40.not, label %._crit_edge37, label %.lr.ph.us, !llvm.loop !5

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
