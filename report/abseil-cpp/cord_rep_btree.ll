Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree?download=true
inline.NumInlined: 757
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i7.i61 = phi i64 [ %i.df, %scalar.ph ], [ %.011.i.i7.i61.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cy, i64 %.011.i.i7.i61 ; 2 uses
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.ck
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !19
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !19
  %i.df = add nuw nsw i64 %.011.i.i7.i61, 1       ; 2 uses
  %exitcond.not.i.i.i62 = icmp eq i64 %i.df, %i.cl
  br i1 %exitcond.not.i.i.i62, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit, label %scalar.ph, !llvm.loop !132

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit: ; preds = %scalar.ph, %middle.block
  %.pre90 = load i8, ptr %i.cv, align 1, !tbaa !9
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit, %bb.n, %bb.m
  %i.dg = phi i8 [ %.pre90, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3AddILNS2_8EdgeTypeE1EEEvPNS1_7CordRepE.exit.i63.loopexit ], [ %i.cx, %bb.n ], [ %i.cg, %bb.m ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.di = zext i8 %i.dg to i64
  %i.dj = add i8 %i.dg, 1
  store i8 %i.dj, ptr %i.cv, align 1, !tbaa !9
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.di
  store ptr %.sink126140, ptr %i.dk, align 8, !tbaa !19
  %i.dl = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.dm = add i64 %i.dl, %i.u
  store i64 %i.dm, ptr %i.cd, align 8, !tbaa !10
  br label %.preheader.loopexit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69: ; preds = %bb.k, %bb.l
  %i.dn = phi i8 [ %i.cu, %bb.l ], [ 0, %bb.k ]
  %i.do = load i64, ptr %.sink126140, align 8, !tbaa !10
  store i64 %i.do, ptr %i.cn, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i8 3, ptr %i.dp, align 4, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cn, i64 13
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 14
  store i8 0, ptr %i.dr, align 2, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  store i8 1, ptr %i.ds, align 1, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.sink126140, ptr %i.dt, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  store ptr %i.cn, ptr %i.du, align 8, !tbaa !16
  %i.dv = add i64 %i.ce, 1                        ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !16 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.lr.ph82._crit_edge, label %.lr.ph142, !llvm.loop !133

.lr.ph84:                                         ; preds = %.preheader, %.lr.ph84
  %i.dz = phi ptr [ %i.ef, %.lr.ph84 ], [ %i.bn, %.preheader ] ; 2 uses
  %i.ea = phi i64 [ %i.ed, %.lr.ph84 ], [ %.051.lcssa, %.preheader ]
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.ec = add i64 %i.eb, %i.u
  store i64 %i.ec, ptr %i.dz, align 8, !tbaa !10
  %i.ed = add i64 %i.ea, 1                        ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !16 ; 2 uses
  %.not57 = icmp eq ptr %i.ef, null
  br i1 %.not57, label %._crit_edge, label %.lr.ph84, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %.04986, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.eg, %i.n
  br i1 %.not56, label %.loopexit, label %.lr.ph88

bb.o:                                             ; preds = %bb.c
  br i1 %.not5685, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.eh = zext i8 %i.j to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.eh
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.078 = phi ptr [ %i.ek, %.lr.ph ], [ %i.ei, %.lr.ph.preheader ] ; 2 uses
  %i.ej = load ptr, ptr %.078, align 8, !tbaa !19
  tail call void @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr noundef %0, ptr noundef %i.ej, i1 noundef zeroext %i.d)
  %i.ek = getelementptr inbounds nuw i8, ptr %.078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ek, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.o, %bb.d
  br i1 %2, label %bb.p, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit

bb.p:                                             ; preds = %.loopexit
  br i1 %i.d, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.el = icmp eq ptr %1, null
  br i1 %i.el, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #20
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit

bb.s:                                             ; preds = %bb.p
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = atomicrmw sub ptr %i.em, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.en, 2
  br i1 %.not.i, label %bb.t, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, !prof !32

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [13 x ptr], align 16              ; 18 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 4, !tbaa !28
  store i64 0, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 0>, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  store ptr %i.b, ptr %i.a, align 16, !tbaa !16
  call void @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr noundef nonnull %i.a, ptr noundef %0, i1 noundef zeroext true)
  %i.e = load ptr, ptr %i.a, align 16, !tbaa !16  ; 2 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.014.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %.014.ptr.1, align 8, !tbaa !16 ; 2 uses
  %.not20.1 = icmp eq ptr %i.f, null
  br i1 %.not20.1, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.014.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %.014.ptr.2, align 16, !tbaa !16 ; 2 uses
  %.not20.2 = icmp eq ptr %i.g, null
  br i1 %.not20.2, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.014.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %.014.ptr.3, align 8, !tbaa !16 ; 2 uses
  %.not20.3 = icmp eq ptr %i.h, null
  br i1 %.not20.3, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.014.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %.014.ptr.4, align 16, !tbaa !16 ; 2 uses
  %.not20.4 = icmp eq ptr %i.i, null
  br i1 %.not20.4, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.014.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %.014.ptr.5, align 8, !tbaa !16 ; 2 uses
  %.not20.5 = icmp eq ptr %i.j, null
  br i1 %.not20.5, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.014.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %.014.ptr.6, align 16, !tbaa !16 ; 2 uses
  %.not20.6 = icmp eq ptr %i.k, null
  br i1 %.not20.6, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.014.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.l = load ptr, ptr %.014.ptr.7, align 8, !tbaa !16 ; 2 uses
  %.not20.7 = icmp eq ptr %i.l, null
  br i1 %.not20.7, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.014.ptr.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = load ptr, ptr %.014.ptr.8, align 16, !tbaa !16 ; 2 uses
  %.not20.8 = icmp eq ptr %i.m, null
  br i1 %.not20.8, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.014.ptr.9 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.n = load ptr, ptr %.014.ptr.9, align 8, !tbaa !16 ; 2 uses
  %.not20.9 = icmp eq ptr %i.n, null
  br i1 %.not20.9, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.014.ptr.10 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load ptr, ptr %.014.ptr.10, align 16, !tbaa !16 ; 2 uses
  %.not20.10 = icmp eq ptr %i.o, null
  br i1 %.not20.10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.014.ptr.11 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = load ptr, ptr %.014.ptr.11, align 8, !tbaa !16 ; 2 uses
  %.not20.11 = icmp eq ptr %i.p, null
  br i1 %.not20.11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.014.ptr.12 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = load ptr, ptr %.014.ptr.12, align 16, !tbaa !16
  %.not20.12 = icmp eq ptr %i.q, null
  br i1 %.not20.12, label %bb.n, label %1

1:                                                ; preds = %bb.m
  br label %bb.n

bb.n:                                             ; preds = %1, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %spec.select = phi ptr [ null, %1 ], [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %i.p, %bb.m ], [ %i.f, %bb.c ], [ %i.k, %bb.h ], [ %i.g, %bb.d ], [ %i.o, %bb.l ], [ %i.h, %bb.e ], [ %i.m, %bb.j ], [ %i.i, %bb.f ], [ %i.n, %bb.k ], [ %i.j, %bb.g ], [ %i.l, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4absl12lts_2026052613cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca [12 x ptr], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %.not4657 = icmp eq i8 %i.c, 0
  br i1 %.not4657, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.03958 = phi ptr [ %i.l, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.03958, i64 8     ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 4
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.03958, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %.03958, i64 15
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %.not46 = icmp eq i8 %i.n, 0
  br i1 %.not46, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !135

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.o = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.039.lcssa = phi ptr [ %0, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 5 uses
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %._crit_edge.loopexit ] ; 3 uses
  %i.p = getelementptr i8, ptr %.039.lcssa, i64 8 ; 2 uses
  %i.q = load atomic i32, ptr %i.p acquire, align 4
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.c, label %.thread

bb.c:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 15 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !29
  %i.z = icmp ugt i8 %i.y, 5
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !10  ; 7 uses
  %i.ae = load i8, ptr %i.x, align 4, !tbaa !29   ; 3 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = icmp ult i8 %i.ae, 67                   ; 2 uses
  %i.ah = icmp ult i8 %i.ae, -69                  ; 2 uses
  %..i.i.i = select i1 %i.ah, i32 6, i32 12
  %.sink6.i.i.i = select i1 %i.ag, i32 3, i32 %..i.i.i
  %i.ai = shl nuw nsw i32 %i.af, %.sink6.i.i.i
  %i.aj = select i1 %i.ah, i32 -3725, i32 -753677
  %i.ak = select i1 %i.ag, i32 -29, i32 %i.aj
  %narrow.i.i = add nsw i32 %i.ai, %i.ak
  %i.al = sext i32 %narrow.i.i to i64
  %i.am = sub i64 %i.al, %i.ad
  %i.an = icmp ugt i64 %1, %i.am
  br i1 %i.an, label %.thread, label %.preheader47

.preheader47:                                     ; preds = %bb.e
  %i.ao = load i8, ptr %i.s, align 1, !tbaa !9    ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 14
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !9
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i64 %i.ap, %i.as
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader, label %._crit_edge64

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader: ; preds = %.preheader47
  tail call void @_ZdlPvm(ptr noundef nonnull %.039.lcssa, i64 noundef 64) #20
  %i.av = icmp slt i32 %.038.lcssa, 1
  br i1 %i.av, label %.thread, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader
  %i.aw = zext nneg i32 %.038.lcssa to i64
  br label %bb.f

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #20
  %i.ax = trunc nuw i64 %i.az to i32
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %.thread, label %bb.f, !llvm.loop !136

bb.f:                                             ; preds = %.lr.ph103, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %indvars.iv82102 = phi i64 [ %i.aw, %.lr.ph103 ], [ %i.az, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ]
  %i.az = add nsw i64 %indvars.iv82102, -1        ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 15
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9   ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i64
  %i.bi = sub nsw i64 %i.be, %i.bh
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %._crit_edge64.loopexit, !llvm.loop !136

._crit_edge64.loopexit:                           ; preds = %bb.f
  %i.bk = trunc i64 %i.az to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.preheader47
  %.140.lcssa61 = phi ptr [ %.039.lcssa, %.preheader47 ], [ %i.bb, %._crit_edge64.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.038.lcssa, %.preheader47 ], [ %i.bk, %._crit_edge64.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.ao, %.preheader47 ], [ %i.bd, %._crit_edge64.loopexit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.140.lcssa61, i64 15
  %i.bm = add i8 %.lcssa, -1
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !9
  %i.bn = load i64, ptr %.140.lcssa61, align 8, !tbaa !10
  %i.bo = sub i64 %i.bn, %i.ad
  store i64 %i.bo, ptr %.140.lcssa61, align 8, !tbaa !10
  %i.bp = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.bp, label %.lr.ph71.preheader, label %.preheader.preheader

.lr.ph71.preheader:                               ; preds = %._crit_edge64
  %i.bq = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader, %.lr.ph71.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %.lr.ph71.prol ], [ %i.bq, %.lr.ph71.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph71.prol ], [ 0, %.lr.ph71.preheader ]
  %indvars.iv.next86.prol = add nsw i64 %indvars.iv85.prol, -1 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next86.prol
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = sub i64 %i.bt, %i.ad
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !10
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol, !llvm.loop !137

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %indvars.iv85.unr = phi i64 [ %i.bq, %.lr.ph71.preheader ], [ %indvars.iv.next86.prol, %.lr.ph71.prol ]
  %.lcssa104.unr = phi ptr [ poison, %.lr.ph71.preheader ], [ %i.bs, %.lr.ph71.prol ]
  %i.bv = icmp ult i32 %.1.lcssa, 4
  br i1 %i.bv, label %.preheader.preheader, label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph71 ], [ %indvars.iv85.unr, %.lr.ph71.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = sub i64 %i.bz, %i.ad
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !10
  %i.cb = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.cc = getelementptr i8, ptr %i.cb, i64 -16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.cf = sub i64 %i.ce, %i.ad
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !10
  %i.cg = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = sub i64 %i.cj, %i.ad
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !10
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, -4 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next86.3
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.co = sub i64 %i.cn, %i.ad
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !10
  %i.cp = icmp sgt i64 %indvars.iv85, 4
  br i1 %i.cp, label %.lr.ph71, label %.preheader.preheader, !llvm.loop !138

.preheader.preheader:                             ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71, %._crit_edge64
  %.3.ph = phi ptr [ %.140.lcssa61, %._crit_edge64 ], [ %.lcssa104.unr, %.lr.ph71.prol.loopexit ], [ %i.cm, %.lr.ph71 ]
  br label %.preheader

end_hunk_0
