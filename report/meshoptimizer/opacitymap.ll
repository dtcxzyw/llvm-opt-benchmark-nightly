Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/opacitymap?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE:bb.a
  %i.mw = or i1 %i.mm, %i.mt
  br i1 %i.mw, label %bb.u, label %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i

bb.u:                                             ; preds = %bb.t
  %i.mx = zext i1 %i.mt to i8
  %i.my = select i1 %i.mt, i32 %i.gg, i32 0       ; 3 uses
  %i.mz = and i32 %i.lj, 65535
  %i.na = icmp eq i32 %i.mz, %i.my
  %i.nb = and i32 %i.lo, 65535
  %i.nc = icmp eq i32 %i.nb, %i.my
  %i.nd = and i1 %i.na, %i.nc
  %i.ne = and i32 %i.lt, 65535
  %i.nf = icmp eq i32 %i.ne, %i.my
  %i.ng = and i1 %i.nd, %i.nf
  %i.nh = select i1 %i.ng, i8 %i.mx, i8 %i.mv
  br label %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i

_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i: ; preds = %bb.u, %bb.t
  %.049.i.i = phi i8 [ %i.nh, %bb.u ], [ %i.mv, %bb.t ]
  %.tr.i.i = trunc nuw nsw i64 %.05357.i to i8
  %i.ni = shl nuw nsw i8 %.tr.i.i, 1
  %i.nj = shl nuw i8 %.049.i.i, %i.ni
  %i.nk = or i8 %i.nj, %i.jt                      ; 2 uses
  store i8 %i.nk, ptr %i.gf, align 1, !tbaa !24
  %i.nl = add nuw nsw i64 %.05357.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.nl, 4
  br i1 %exitcond59.not.i, label %_ZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, label %bb.t, !llvm.loop !42

_ZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit: ; preds = %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.nm = load float, ptr %4, align 4, !tbaa !23  ; 2 uses
  %i.nn = load float, ptr %5, align 4, !tbaa !23  ; 2 uses
  %i.no = fadd float %i.nm, %i.nn
  %i.np = fmul float %i.no, 5.000000e-01          ; 2 uses
  store float %i.np, ptr %i.f, align 4, !tbaa !23
  %i.nq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.nr = load float, ptr %i.ef, align 4, !tbaa !23 ; 2 uses
  %i.ns = load float, ptr %i.eg, align 4, !tbaa !23 ; 2 uses
  %i.nt = fadd float %i.nr, %i.ns
  %i.nu = fmul float %i.nt, 5.000000e-01          ; 2 uses
  store float %i.nu, ptr %i.nq, align 4, !tbaa !23
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.nw = load float, ptr %6, align 4, !tbaa !23  ; 2 uses
  %i.nx = fadd float %i.nn, %i.nw
  %i.ny = fmul float %i.nx, 5.000000e-01          ; 2 uses
  store float %i.ny, ptr %i.g, align 4, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.oa = load float, ptr %i.eh, align 4, !tbaa !23 ; 2 uses
  %i.ob = fadd float %i.ns, %i.oa
  %i.oc = fmul float %i.ob, 5.000000e-01          ; 2 uses
  store float %i.oc, ptr %i.nz, align 4, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.oe = fadd float %i.nm, %i.nw
  %i.of = fmul float %i.oe, 5.000000e-01          ; 2 uses
  store float %i.of, ptr %i.h, align 4, !tbaa !23
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.oh = fadd float %i.nr, %i.oa
  %i.oi = fmul float %i.oh, 5.000000e-01          ; 2 uses
  store float %i.oi, ptr %i.og, align 4, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ok = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.np, float noundef %i.nu)
  store float %i.ok, ptr %i.nv, align 4, !tbaa !23
  %i.ol = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.ny, float noundef %i.oc)
  store float %i.ol, ptr %i.od, align 4, !tbaa !23
  %i.om = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.of, float noundef %i.oi)
  store float %i.om, ptr %i.oj, align 4, !tbaa !23
  %i.on = shl i64 %1, 2                           ; 4 uses
  %i.oo = add nsw i32 %2, -1                      ; 4 uses
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.on, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.op = or disjoint i64 %i.on, 1
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.op, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.oq = or disjoint i64 %i.on, 2
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.oq, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.f, ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.or = or disjoint i64 %i.on, 3
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.or, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_opacityMapCompact(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.meshopt_Allocator, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.b = invoke noundef ptr %i.a(i64 noundef %1)
          to label %bb.b unwind label %bb.f, !inline_history !43 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  store i64 1, ptr %i.c, align 8, !tbaa !18
  store ptr %i.b, ptr %8, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %0, i64 %1, i1 false)
  %i.d = lshr i64 %4, 2
  %i.e = add i64 %i.d, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ 1, %bb.b ], [ %i.g, %bb.c ]   ; 5 uses
  %i.f = icmp ult i64 %.0.i, %i.e
  %i.g = shl i64 %.0.i, 1
  br i1 %i.f, label %bb.c, label %_ZN7meshoptL12hashBuckets3Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets3Em.exit:                ; preds = %bb.c
  %i.h = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.i = icmp ugt i64 %.0.i, 4611686018427387903
  %i.j = shl i64 %.0.i, 2                         ; 2 uses
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noundef ptr %i.h(i64 noundef %i.k)
          to label %bb.d unwind label %bb.f, !inline_history !1 ; 5 uses

bb.d:                                             ; preds = %_ZN7meshoptL12hashBuckets3Em.exit
  store i64 2, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.j, i1 false)
  %i.n = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.o = icmp ugt i64 %4, 4611686018427387903
  %i.p = shl nuw i64 %4, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = invoke noundef ptr %i.n(i64 noundef %i.q)
          to label %_ZN17meshopt_Allocator8allocateIiEEPT_m.exit unwind label %bb.f, !inline_history !44 ; 5 uses

_ZN17meshopt_Allocator8allocateIiEEPT_m.exit:     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !19
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.preheader, label %.lr.ph103.a

.lr.ph103.a:                                      ; preds = %_ZN17meshopt_Allocator8allocateIiEEPT_m.exit
  %i.t = ashr i32 %7, 1                           ; 2 uses
  %i.u = icmp eq i32 %7, 2                        ; 3 uses
  %i.v = select i1 %i.u, i32 1, i32 3
  %i.w = select i1 %i.u, i32 255, i32 85
  %i.x = add i64 %.0.i, -1                        ; 3 uses
  br label %bb.g

.preheader:                                       ; preds = %select.unfold, %_ZN17meshopt_Allocator8allocateIiEEPT_m.exit
  %.068.lcssa = phi i64 [ 0, %_ZN17meshopt_Allocator8allocateIiEEPT_m.exit ], [ %.270, %select.unfold ]
  %.not107 = icmp eq i64 %6, 0
  br i1 %.not107, label %.lr.ph.i85, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %.preheader
  %xtraiter130 = and i64 %6, 1
  %i.y = icmp eq i64 %6, 1
  br i1 %i.y, label %.lr.ph106.epil.preheader, label %.lr.ph106.preheader.new

.lr.ph106.preheader.new:                          ; preds = %.lr.ph106.preheader
  %unroll_iter = and i64 %6, -2
  br label %.lr.ph106

.lr.ph.i85.preheader.loopexit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i85, label %.lr.ph106.epil.preheader

.lr.ph106.epil.preheader:                         ; preds = %.lr.ph.i85.preheader.loopexit.unr-lcssa, %.lr.ph106.preheader
  %.0105.epil.init = phi i64 [ 0, %.lr.ph106.preheader ], [ %i.fo, %.lr.ph.i85.preheader.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0105.epil.init ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21  ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i85.preheader.loopexit.epilog-lcssa, label %bb.e

bb.e:                                             ; preds = %.lr.ph106.epil.preheader
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  br label %.lr.ph.i85.preheader.loopexit.epilog-lcssa

.lr.ph.i85.preheader.loopexit.epilog-lcssa:       ; preds = %bb.e, %.lr.ph106.epil.preheader
  %i.af = phi i32 [ %i.ae, %bb.e ], [ %i.aa, %.lr.ph106.epil.preheader ]
  store i32 %i.af, ptr %i.z, align 4, !tbaa !21
  br label %.lr.ph.i85

bb.f:                                             ; preds = %bb.a, %_ZN7meshoptL12hashBuckets3Em.exit, %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  resume { ptr, i32 } %i.ag

bb.g:                                             ; preds = %.lr.ph103.a, %select.unfold
  %.066101 = phi i64 [ 0, %.lr.ph103.a ], [ %i.eo, %select.unfold ] ; 4 uses
  %.06799 = phi i64 [ 0, %.lr.ph103.a ], [ %.2, %select.unfold ] ; 5 uses
  %.06897 = phi i64 [ 0, %.lr.ph103.a ], [ %.270, %select.unfold ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.066101
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24  ; 4 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066101
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am ; 3 uses
  %i.ao = shl nuw nsw i32 %i.aj, 1
  %i.ap = shl i32 %i.t, %i.ao
  %i.aq = add nsw i32 %i.ap, 7
  %i.ar = ashr i32 %i.aq, 3                       ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = load i8, ptr %i.an, align 1, !tbaa !24
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.v, %i.au                     ; 3 uses
  %i.aw = xor i32 %i.av, -1                       ; 4 uses
  %i.ax = icmp eq i8 %i.ai, 0
  br i1 %i.ax, label %_ZN7meshoptL15getSpecialIndexEPKhii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp eq i8 %i.ai, 1
  %or.cond.i = and i1 %i.u, %i.ay
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = sub nsw i32 0, %i.av
  %i.ba = xor i32 %i.az, %i.au
  %i.bb = and i32 %i.ba, 15
  %i.bc = icmp eq i32 %i.bb, 0
  %spec.select = select i1 %i.bc, i32 %i.aw, i32 0
  br label %_ZN7meshoptL15getSpecialIndexEPKhii.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = mul nuw nsw i32 %i.av, %i.w
  %.not2627.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not2627.not.i, label %_ZN7meshoptL15getSpecialIndexEPKhii.exit, label %.lr.ph.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.be = add nuw i64 %.028.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.as
  br i1 %exitcond.not.i, label %_ZN7meshoptL15getSpecialIndexEPKhii.exit, label %.lr.ph.i, !llvm.loop !45

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.028.i = phi i64 [ %i.be, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 %.028.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !24
  %i.bh = zext i8 %i.bg to i32
  %.not.i = icmp eq i32 %i.bd, %i.bh
  br i1 %.not.i, label %bb.k, label %_ZN7meshoptL15getSpecialIndexEPKhii.exit

_ZN7meshoptL15getSpecialIndexEPKhii.exit:         ; preds = %bb.k, %.lr.ph.i, %bb.i, %bb.g, %bb.j
  %.2.i = phi i32 [ %i.aw, %bb.g ], [ %spec.select, %bb.i ], [ %i.aw, %bb.j ], [ 0, %.lr.ph.i ], [ %i.aw, %bb.k ] ; 2 uses
  %9 = icmp slt i32 %.2.i, 0
  br i1 %9, label %select.unfold, label %_ZN7meshoptL15getSpecialIndexEPKhii.exit.a

_ZN7meshoptL15getSpecialIndexEPKhii.exit.a:       ; preds = %_ZN7meshoptL15getSpecialIndexEPKhii.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.06799
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %i.an, i64 %i.as, i1 false)
  %i.bj = trunc i64 %.06799 to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06897
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.06897
  store i8 %i.ai, ptr %i.bl, align 1, !tbaa !24
  %i.bm = trunc i64 %.06897 to i32                ; 2 uses
  %i.bn = and i64 %.06897, 4294967295             ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !24  ; 2 uses
  %i.bu = zext i8 %i.bt to i32                    ; 4 uses
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = shl i32 %i.t, %i.bv
  %i.bx = add nsw i32 %i.bw, 7
  %i.by = ashr i32 %i.bx, 3                       ; 2 uses
  %i.bz = sext i32 %i.by to i64                   ; 5 uses
  %i.ca = icmp ult i32 %i.by, 4
  br i1 %i.ca, label %bb.l, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_ZN7meshoptL15getSpecialIndexEPKhii.exit.a
  %i.cb = add nsw i64 %i.bz, -4                   ; 2 uses
  %i.cc = and i64 %i.cb, 4
  %lcmp.mod.not.not = icmp eq i64 %i.cc, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.i.prol, label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader
  %.0.copyload.i.i.i.prol = load i32, ptr %i.br, align 1
  %i.cd = mul i32 %.0.copyload.i.i.i.prol, 1540483477 ; 2 uses
  %i.ce = lshr i32 %i.cd, 24
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = mul i32 %i.cf, 1540483477
  %i.ch = mul i32 %i.bu, 1540483477
  %i.ci = xor i32 %i.cg, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ck = add nsw i64 %i.bz, -4
  br label %.preheader.i.i.prol.loopexit

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.015.i.i.i.unr = phi i32 [ %i.bu, %.preheader.i.i.preheader ], [ %i.ci, %.preheader.i.i.prol ]
  %.01114.i.i.i.unr = phi i64 [ %i.bz, %.preheader.i.i.preheader ], [ %i.ck, %.preheader.i.i.prol ]
  %.01213.i.i.i.unr = phi ptr [ %i.br, %.preheader.i.i.preheader ], [ %i.cj, %.preheader.i.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.ci, %.preheader.i.i.prol ]
  %i.cl = icmp ult i64 %i.cb, 4
  br i1 %i.cl, label %_ZNK7meshopt9OMMHasher4hashEj.exit.i, label %.preheader.i.i

bb.l:                                             ; preds = %_ZN7meshoptL15getSpecialIndexEPKhii.exit.a
  %i.cm = load i8, ptr %i.br, align 1, !tbaa !24
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr i8, ptr %i.br, i64 %i.bz
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = or disjoint i32 %i.cs, %i.cn
  %i.cu = xor i32 %i.ct, %i.bu
  br label %_ZNK7meshopt9OMMHasher4hashEj.exit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.015.i.i.i = phi i32 [ %i.dh, %.preheader.i.i ], [ %.015.i.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %.01114.i.i.i = phi i64 [ %i.dj, %.preheader.i.i ], [ %.01114.i.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %.01213.i.i.i = phi ptr [ %i.di, %.preheader.i.i ], [ %.01213.i.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %.01213.i.i.i, align 1
  %i.cv = mul i32 %.0.copyload.i.i.i, 1540483477  ; 2 uses
  %i.cw = lshr i32 %i.cv, 24
  %i.cx = xor i32 %i.cw, %i.cv
  %i.cy = mul i32 %i.cx, 1540483477
  %i.cz = mul i32 %.015.i.i.i, 1540483477
  %i.da = xor i32 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.01213.i.i.i, i64 4
  %.0.copyload.i.i.i.1 = load i32, ptr %i.db, align 1
  %i.dc = mul i32 %.0.copyload.i.i.i.1, 1540483477 ; 2 uses
  %i.dd = lshr i32 %i.dc, 24
  %i.de = xor i32 %i.dd, %i.dc
  %i.df = mul i32 %i.de, 1540483477
  %i.dg = mul i32 %i.da, 1540483477
  %i.dh = xor i32 %i.df, %i.dg                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01213.i.i.i, i64 8
  %i.dj = add i64 %.01114.i.i.i, -8               ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 3
  br i1 %i.dk, label %.preheader.i.i, label %_ZNK7meshopt9OMMHasher4hashEj.exit.i, !llvm.loop !46

_ZNK7meshopt9OMMHasher4hashEj.exit.i:             ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %bb.l
  %.0.i.i = phi i32 [ %i.cu, %bb.l ], [ %.lcssa.unr, %.preheader.i.i.prol.loopexit ], [ %i.dh, %.preheader.i.i ] ; 2 uses
  %i.dl = lshr i32 %.0.i.i, 13
  %i.dm = xor i32 %i.dl, %.0.i.i
  %i.dn = mul i32 %i.dm, 1540483477               ; 2 uses
  %i.do = lshr i32 %i.dn, 15
  %i.dp = xor i32 %i.do, %i.dn
  %i.dq = zext i32 %i.dp to i64
  %i.dr = and i64 %i.x, %i.dq                     ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !21 ; 2 uses
  %i.du = icmp eq i32 %i.dt, -1
  br i1 %i.du, label %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7meshopt9OMMHasher4hashEj.exit.i, %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i
  %.pr = phi i32 [ %i.ei, %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i ], [ %i.dt, %_ZNK7meshopt9OMMHasher4hashEj.exit.i ] ; 2 uses
  %.02311.i96 = phi i64 [ %i.eg, %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i ], [ %i.dr, %_ZNK7meshopt9OMMHasher4hashEj.exit.i ]
  %.02212.i95 = phi i64 [ %i.ee, %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i ], [ 0, %_ZNK7meshopt9OMMHasher4hashEj.exit.i ]
  %i.dv = zext i32 %.pr to i64                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !24
  %i.dy = icmp eq i8 %i.dx, %i.bt
  br i1 %i.dy, label %_ZNK7meshopt9OMMHasher5equalEjj.exit.i, label %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i

_ZNK7meshopt9OMMHasher5equalEjj.exit.i:           ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dv
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !21
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.eb
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ec, ptr %i.br, i64 %i.bz)
  %i.ed = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ed, label %select.unfold, label %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i

_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i:    ; preds = %_ZNK7meshopt9OMMHasher5equalEjj.exit.i, %.lr.ph
  %i.ee = add i64 %.02212.i95, 1                  ; 3 uses
  %i.ef = add i64 %i.ee, %.02311.i96
  %i.eg = and i64 %i.ef, %i.x                     ; 3 uses
  %.not.i84 = icmp ule i64 %i.ee, %i.x
  tail call void @llvm.assume(i1 %.not.i84)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !21 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i, %_ZNK7meshopt9OMMHasher4hashEj.exit.i
  %.02311.i.lcssa94 = phi i64 [ %i.dr, %_ZNK7meshopt9OMMHasher4hashEj.exit.i ], [ %i.eg, %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02311.i.lcssa94
  store i32 %i.bm, ptr %i.ek, align 4, !tbaa !21
  %i.el = add i64 %.06897, 1
  %i.em = add i64 %.06799, %i.as
  br label %select.unfold

select.unfold:                                    ; preds = %_ZNK7meshopt9OMMHasher5equalEjj.exit.i, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, %_ZN7meshoptL15getSpecialIndexEPKhii.exit
  %.sink = phi i32 [ %.2.i, %_ZN7meshoptL15getSpecialIndexEPKhii.exit ], [ %i.bm, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.pr, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i ]
  %.270 = phi i64 [ %.06897, %_ZN7meshoptL15getSpecialIndexEPKhii.exit ], [ %i.el, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.06897, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i ] ; 2 uses
  %.2 = phi i64 [ %.06799, %_ZN7meshoptL15getSpecialIndexEPKhii.exit ], [ %i.em, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.06799, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.066101
  store i32 %.sink, ptr %i.en, align 4, !tbaa !21
  %i.eo = add nuw i64 %.066101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %4
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !47

.lr.ph.i85:                                       ; preds = %.preheader, %.lr.ph.i85.preheader.loopexit.unr-lcssa, %.lr.ph.i85.preheader.loopexit.epilog-lcssa
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !19
  invoke void %i.ep(ptr noundef %i.er)
          to label %.lr.ph.i85.1 unwind label %bb.m

.lr.ph.i85.1:                                     ; preds = %.lr.ph.i85
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19
  invoke void %i.es(ptr noundef %i.eu)
          to label %.lr.ph.i85.2 unwind label %bb.m

.lr.ph.i85.2:                                     ; preds = %.lr.ph.i85.1
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.ew = load ptr, ptr %8, align 8, !tbaa !19
  invoke void %i.ev(ptr noundef %i.ew)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.m

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i85.2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i64 %.068.lcssa

bb.m:                                             ; preds = %.lr.ph.i85.2, %.lr.ph.i85.1, %.lr.ph.i85
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  tail call void @__clang_call_terminate(ptr %i.ey) #16
  unreachable

.lr.ph106:                                        ; preds = %bb.p, %.lr.ph106.preheader.new
  %.0105 = phi i64 [ 0, %.lr.ph106.preheader.new ], [ %i.fo, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph106.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0105 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !21 ; 3 uses
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph106.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph106
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !21
  br label %.lr.ph106.1

.lr.ph106.1:                                      ; preds = %.lr.ph106, %bb.n
  %i.ff = phi i32 [ %i.fe, %bb.n ], [ %i.fa, %.lr.ph106 ]
  store i32 %i.ff, ptr %i.ez, align 4, !tbaa !21
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0105
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !21 ; 3 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph106.1
  %i.fk = zext nneg i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph106.1
  %i.fn = phi i32 [ %i.fm, %bb.o ], [ %i.fi, %.lr.ph106.1 ]
  store i32 %i.fn, ptr %i.fh, align 4, !tbaa !21
  %i.fo = add nuw i64 %.0105, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i85.preheader.loopexit.unr-lcssa, label %.lr.ph106, !llvm.loop !48
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !12}
!1 = distinct !{null}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"_ZTSN17meshopt_Allocator7StorageE", !13, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_ZTS17meshopt_Allocator", !8, i64 0, !16, i64 192}
!18 = !{!17, !16, i64 192}
!19 = !{!13, !13, i64 0}
!20 = !{!14, !13, i64 8}
!21 = !{!9, !9, i64 0}
!22 = !{!"float", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!"p1 omnipotent char", !13, i64 0}
!26 = !{!"_ZTSN7meshopt7TextureE", !25, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !9, i64 28, !22, i64 32, !22, i64 36}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !16, i64 8}
!29 = !{!26, !16, i64 16}
!30 = !{!26, !9, i64 24}
!31 = !{!26, !9, i64 28}
!32 = !{!"p1 float", !13, i64 0}
!33 = !{!32, !32, i64 0}
!34 = distinct !{null}
!35 = distinct !{!35, !12}
!36 = !{!"_ZTSN7meshopt11TriangleOMME", !8, i64 0, !9, i64 24}
!37 = !{!36, !9, i64 24}
!38 = distinct !{!38, !12}
!39 = !{ptr @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE, ptr @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
end_hunk_0
