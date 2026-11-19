Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/cord_rep_btree?download=true
inline.NumInlined: 757
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPPS2_S3_b:bb.a
  store ptr %.sink124137, ptr %i.dd, align 8, !tbaa !28
  %i.de = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.df = add i64 %i.de, %i.u
  store i64 %i.df, ptr %i.bz, align 8, !tbaa !23
  br label %.preheader.loopexit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree7AddEdgeILNS2_8EdgeTypeE1EEENS2_8OpResultEbPNS1_7CordRepEm.exit69: ; preds = %bb.l, %bb.m
  %i.dg = phi i8 [ %i.cq, %bb.m ], [ 0, %bb.l ]
  %i.dh = load i64, ptr %.sink124137, align 8, !tbaa !23
  store i64 %i.dh, ptr %i.cj, align 8, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i8 3, ptr %i.di, align 4, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 13
  store i8 %i.dg, ptr %i.dj, align 1, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  store i8 0, ptr %i.dk, align 2, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cj, i64 15
  store i8 1, ptr %i.dl, align 1, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.sink124137, ptr %i.dm, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca
  store ptr %i.cj, ptr %i.dn, align 8, !tbaa !26
  %i.do = add i64 %i.ca, 1                        ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !26 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.lr.ph82._crit_edge, label %.lr.ph139, !llvm.loop !125

.lr.ph84:                                         ; preds = %.preheader, %.lr.ph84
  %i.ds = phi ptr [ %i.dy, %.lr.ph84 ], [ %i.bj, %.preheader ] ; 2 uses
  %i.dt = phi i64 [ %i.dw, %.lr.ph84 ], [ %.051.lcssa, %.preheader ]
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !23
  %i.dv = add i64 %i.du, %i.u
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !23
  %i.dw = add i64 %i.dt, 1                        ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !26 ; 2 uses
  %.not57 = icmp eq ptr %i.dy, null
  br i1 %.not57, label %._crit_edge, label %.lr.ph84, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph84, %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %.04986, i64 8 ; 2 uses
  %.not56 = icmp eq ptr %i.dz, %i.n
  br i1 %.not56, label %.loopexit, label %.lr.ph88

bb.q:                                             ; preds = %bb.c
  br i1 %.not5685, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ea = zext i8 %i.j to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ea
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.078 = phi ptr [ %i.ed, %.lr.ph ], [ %i.eb, %.lr.ph.preheader ] ; 2 uses
  %i.ec = load ptr, ptr %.078, align 8, !tbaa !28
  tail call void @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr noundef %0, ptr noundef %i.ec, i1 noundef zeroext %i.d)
  %i.ed = getelementptr inbounds nuw i8, ptr %.078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ed, %i.n
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.q, %bb.d
  br i1 %2, label %bb.r, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit

bb.r:                                             ; preds = %.loopexit
  br i1 %i.d, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ee = icmp eq ptr %1, null
  br i1 %i.ee, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #21
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit

bb.u:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = atomicrmw add ptr %i.ef, i32 -2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.eg, 2
  br i1 %.not.i, label %bb.v, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, !prof !36

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %1)
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPS2_(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [13 x ptr], align 16              ; 18 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 2, ptr %i.c, align 4, !tbaa !33
  store i64 0, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store <4 x i8> <i8 3, i8 0, i8 0, i8 0>, ptr %i.d, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  store ptr %i.b, ptr %i.a, align 16, !tbaa !26
  call void @_ZN4absl12lts_2026052613cord_internal12CordRepBtree7RebuildEPPS2_S3_b(ptr noundef nonnull %i.a, ptr noundef %0, i1 noundef zeroext true)
  %i.e = load ptr, ptr %i.a, align 16, !tbaa !26  ; 2 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.014.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %.014.ptr.1, align 8, !tbaa !26 ; 2 uses
  %.not20.1 = icmp eq ptr %i.f, null
  br i1 %.not20.1, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.014.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %.014.ptr.2, align 16, !tbaa !26 ; 2 uses
  %.not20.2 = icmp eq ptr %i.g, null
  br i1 %.not20.2, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.014.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %.014.ptr.3, align 8, !tbaa !26 ; 2 uses
  %.not20.3 = icmp eq ptr %i.h, null
  br i1 %.not20.3, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.014.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %.014.ptr.4, align 16, !tbaa !26 ; 2 uses
  %.not20.4 = icmp eq ptr %i.i, null
  br i1 %.not20.4, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.014.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %.014.ptr.5, align 8, !tbaa !26 ; 2 uses
  %.not20.5 = icmp eq ptr %i.j, null
  br i1 %.not20.5, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.014.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %.014.ptr.6, align 16, !tbaa !26 ; 2 uses
  %.not20.6 = icmp eq ptr %i.k, null
  br i1 %.not20.6, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.014.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.l = load ptr, ptr %.014.ptr.7, align 8, !tbaa !26 ; 2 uses
  %.not20.7 = icmp eq ptr %i.l, null
  br i1 %.not20.7, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.014.ptr.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = load ptr, ptr %.014.ptr.8, align 16, !tbaa !26 ; 2 uses
  %.not20.8 = icmp eq ptr %i.m, null
  br i1 %.not20.8, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.014.ptr.9 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.n = load ptr, ptr %.014.ptr.9, align 8, !tbaa !26 ; 2 uses
  %.not20.9 = icmp eq ptr %i.n, null
  br i1 %.not20.9, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.014.ptr.10 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = load ptr, ptr %.014.ptr.10, align 16, !tbaa !26 ; 2 uses
  %.not20.10 = icmp eq ptr %i.o, null
  br i1 %.not20.10, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.014.ptr.11 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.p = load ptr, ptr %.014.ptr.11, align 8, !tbaa !26 ; 2 uses
  %.not20.11 = icmp eq ptr %i.p, null
  br i1 %.not20.11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.014.ptr.12 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = load ptr, ptr %.014.ptr.12, align 16, !tbaa !26
  %.not20.12 = icmp eq ptr %i.q, null
  %spec.select34 = select i1 %.not20.12, ptr %i.p, ptr null
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %spec.select = phi ptr [ %i.l, %bb.i ], [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %spec.select34, %bb.m ], [ %i.f, %bb.c ], [ %i.k, %bb.h ], [ %i.g, %bb.d ], [ %i.o, %bb.l ], [ %i.h, %bb.e ], [ %i.m, %bb.j ], [ %i.i, %bb.f ], [ %i.n, %bb.k ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, ptr } @_ZN4absl12lts_2026052613cord_internal12CordRepBtree19ExtractAppendBufferEPS2_m(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca [12 x ptr], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17
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
  store ptr %.03958, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %.03958, i64 15
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.d, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17
  %.not46 = icmp eq i8 %i.n, 0
  br i1 %.not46, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !127

._crit_edge.loopexit:                             ; preds = %bb.b
  %2 = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.039.lcssa = phi ptr [ %0, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 5 uses
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %2, %._crit_edge.loopexit ] ; 3 uses
  %i.o = getelementptr i8, ptr %.039.lcssa, i64 8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o acquire, align 4
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.c, label %.thread

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 15 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !34
  %i.y = icmp ugt i8 %i.x, 5
  br i1 %i.y, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !23  ; 7 uses
  %i.ad = load i8, ptr %i.w, align 4, !tbaa !34   ; 3 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp ult i8 %i.ad, 67                   ; 2 uses
  %i.ag = icmp ult i8 %i.ad, -69                  ; 2 uses
  %..i.i.i = select i1 %i.ag, i32 6, i32 12
  %.sink6.i.i.i = select i1 %i.af, i32 3, i32 %..i.i.i
  %i.ah = shl nuw nsw i32 %i.ae, %.sink6.i.i.i
  %i.ai = select i1 %i.ag, i32 -3725, i32 -753677
  %i.aj = select i1 %i.af, i32 -29, i32 %i.ai
  %narrow.i.i = add nsw i32 %i.ah, %i.aj
  %i.ak = sext i32 %narrow.i.i to i64
  %i.al = sub i64 %i.ak, %i.ac
  %i.am = icmp ugt i64 %1, %i.al
  br i1 %i.am, label %.thread, label %.preheader47

.preheader47:                                     ; preds = %bb.e
  %i.an = load i8, ptr %i.r, align 1, !tbaa !17   ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.039.lcssa, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !17
  %i.ar = zext i8 %i.aq to i64
  %i.as = sub nsw i64 %i.ao, %i.ar
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader, label %._crit_edge64

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader: ; preds = %.preheader47
  tail call void @_ZdlPvm(ptr noundef nonnull %.039.lcssa, i64 noundef 64) #21
  %i.au = icmp slt i32 %.038.lcssa, 1
  br i1 %i.au, label %.thread, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader
  %i.av = zext nneg i32 %.038.lcssa to i64
  br label %bb.f

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #21
  %i.aw = trunc nuw i64 %i.ay to i32
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %.thread, label %bb.f, !llvm.loop !128

bb.f:                                             ; preds = %.lr.ph103, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit
  %indvars.iv82102 = phi i64 [ %i.av, %.lr.ph103 ], [ %i.ay, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ]
  %i.ay = add nsw i64 %indvars.iv82102, -1        ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17  ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i64
  %i.bh = sub nsw i64 %i.bd, %i.bg
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, label %._crit_edge64.loopexit, !llvm.loop !128

._crit_edge64.loopexit:                           ; preds = %bb.f
  %i.bj = trunc i64 %i.ay to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.preheader47
  %.140.lcssa61 = phi ptr [ %.039.lcssa, %.preheader47 ], [ %i.ba, %._crit_edge64.loopexit ] ; 4 uses
  %.1.lcssa = phi i32 [ %.038.lcssa, %.preheader47 ], [ %i.bj, %._crit_edge64.loopexit ] ; 3 uses
  %.lcssa = phi i8 [ %i.an, %.preheader47 ], [ %i.bc, %._crit_edge64.loopexit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.140.lcssa61, i64 15
  %i.bl = add i8 %.lcssa, -1
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !17
  %i.bm = load i64, ptr %.140.lcssa61, align 8, !tbaa !23
  %i.bn = sub i64 %i.bm, %i.ac
  store i64 %i.bn, ptr %.140.lcssa61, align 8, !tbaa !23
  %i.bo = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.bo, label %.lr.ph71.preheader, label %.preheader.preheader

.lr.ph71.preheader:                               ; preds = %._crit_edge64
  %i.bp = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %xtraiter = and i64 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader, %.lr.ph71.prol
  %indvars.iv85.prol = phi i64 [ %indvars.iv.next86.prol, %.lr.ph71.prol ], [ %i.bp, %.lr.ph71.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph71.prol ], [ 0, %.lr.ph71.preheader ]
  %indvars.iv.next86.prol = add nsw i64 %indvars.iv85.prol, -1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next86.prol
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !26 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !23
  %i.bt = sub i64 %i.bs, %i.ac
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !23
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol, !llvm.loop !129

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %indvars.iv85.unr = phi i64 [ %i.bp, %.lr.ph71.preheader ], [ %indvars.iv.next86.prol, %.lr.ph71.prol ]
  %.lcssa104.unr = phi ptr [ poison, %.lr.ph71.preheader ], [ %i.br, %.lr.ph71.prol ]
  %i.bu = icmp ult i32 %.1.lcssa, 4
  br i1 %i.bu, label %.preheader.preheader, label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %indvars.iv85 = phi i64 [ %indvars.iv.next86.3, %.lr.ph71 ], [ %indvars.iv85.unr, %.lr.ph71.prol.loopexit ] ; 5 uses
  %i.bv = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !26 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !23
  %i.bz = sub i64 %i.by, %i.ac
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !23
  %i.ca = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.cb = getelementptr i8, ptr %i.ca, i64 -16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !26 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !23
  %i.ce = sub i64 %i.cd, %i.ac
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !23
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !23
  %i.cj = sub i64 %i.ci, %i.ac
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !23
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, -4 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next86.3
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !26 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !23
  %i.cn = sub i64 %i.cm, %i.ac
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !23
  %i.co = icmp sgt i64 %indvars.iv85, 4
  br i1 %i.co, label %.lr.ph71, label %.preheader.preheader, !llvm.loop !130

.preheader.preheader:                             ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71, %._crit_edge64
  %.3.ph = phi ptr [ %.140.lcssa61, %._crit_edge64 ], [ %.lcssa104.unr, %.lr.ph71.prol.loopexit ], [ %i.cl, %.lr.ph71 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43
  %.3 = phi ptr [ %i.db, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %.3.ph, %.preheader.preheader ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.3, i64 15
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !17
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.3, i64 14
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cu = zext i8 %i.ct to i64
  %i.cv = sub nsw i64 %i.cr, %i.cu
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43, label %.thread

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43: ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %.3, i64 13
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = getelementptr i8, ptr %.3, i64 8
  %i.da = getelementptr [8 x i8], ptr %i.cz, i64 %i.cr
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !28 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 64) #21
  %.not = icmp eq i8 %i.cy, 0
  br i1 %.not, label %.thread, label %.preheader, !llvm.loop !131

.thread:                                          ; preds = %.lr.ph, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43, %.preheader, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader, %bb.d, %bb.c, %bb.e, %._crit_edge
  %.sroa.0.4 = phi ptr [ null, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ %0, %._crit_edge ], [ %0, %bb.c ], [ %0, %bb.d ], [ null, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader ], [ %0, %bb.e ], [ %.3, %.preheader ], [ %i.db, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %0, %.lr.ph ]
  %.sroa.5.2 = phi ptr [ %i.v, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit ], [ null, %._crit_edge ], [ null, %bb.c ], [ null, %bb.d ], [ %i.v, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit.preheader ], [ null, %bb.e ], [ %i.v, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6DeleteEPS2_.exit43 ], [ %i.v, %.preheader ], [ null, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.5.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

end_hunk_0
