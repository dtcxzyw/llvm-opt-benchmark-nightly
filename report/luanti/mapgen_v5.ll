Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_v5?download=true
inline.NumInlined: 292
inline.NumDeleted: 40
begin_hunk_0_@_ZN8MapgenV59makeChunkEP13BlockMakeData:bb.a
  %.sroa.2.0.insert.shift.i73 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i72, 16
  %.sroa.2.0.insert.insert.i74 = or disjoint i48 %.sroa.3.0.insert.shift.i71, %.sroa.2.0.insert.shift.i73
  %.sroa.0.0.insert.ext.i75 = zext i16 %i.s to i48
  %.sroa.0.0.insert.insert.i76 = or disjoint i48 %.sroa.2.0.insert.insert.i74, %.sroa.0.0.insert.ext.i75
  store i48 %.sroa.0.0.insert.insert.i76, ptr %i.k, align 2
  %i.x = add <4 x i16> %i.p, <i16 -16, i16 31, i16 31, i16 31> ; 2 uses
  %i.y = extractelement <4 x i16> %i.x, i64 0
  %.sroa.3.0.insert.ext.i84 = zext i16 %i.y to i48
  %.sroa.3.0.insert.shift.i85 = shl nuw i48 %.sroa.3.0.insert.ext.i84, 32
  %.sroa.2.0.insert.insert.i88 = or disjoint i48 %.sroa.3.0.insert.shift.i85, %.sroa.2.0.insert.shift.i87
  %.sroa.0.0.insert.insert.i90 = or disjoint i48 %.sroa.2.0.insert.insert.i88, %.sroa.0.0.insert.ext.i89 ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i90, ptr %i.n, align 4
  %.sroa.0.0.insert.insert.i111.v = shufflevector <4 x i16> %i.x, <4 x i16> poison, <3 x i32> <i32 1, i32 2, i32 3>
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 3 uses
  store <3 x i16> %.sroa.0.0.insert.insert.i111.v, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %i.ac = tail call noundef i32 @_ZN6Mapgen13getBlockSeed2EN4core8vector3dIsEEi(i48 %.sroa.0.0.insert.insert.i90, i32 noundef %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !121
  %i.ae = tail call noundef i32 @_ZN8MapgenV519generateBaseTerrainEv(ptr noundef nonnull align 8 dereferenceable(504) %0)
  %i.af = trunc nsw i32 %i.ae to i16              ; 4 uses
  %.sroa.032.0.copyload = load i48, ptr %i.j, align 8
  %.sroa.031.0.copyload = load i48, ptr %i.k, align 2
  tail call void @_ZN6Mapgen15updateHeightmapEN4core8vector3dIsEES2_(ptr noundef nonnull align 8 dereferenceable(200) %0, i48 %.sroa.032.0.copyload, i48 %.sroa.031.0.copyload)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !122 ; 2 uses
  %i.ai = and i32 %i.ah, 64
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !123 ; 2 uses
  %.sroa.027.0.copyload = load i48, ptr %i.j, align 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(36) %i.ak, i48 %.sroa.027.0.copyload)
  %i.ao = load ptr, ptr %0, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(474) %0)
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !122
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ar = phi i32 [ %.pre, %bb.b ], [ %i.ah, %bb.a ]
  %i.as = and i32 %i.ar, 2
  %.not49 = icmp eq i32 %i.as, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %0, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.af)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = and i32 %i.ax, 1
  %.not50 = icmp eq i32 %i.ay, 0
  br i1 %.not50, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %0, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.af)
  br i1 %i.bc, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !51
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.critedge
  %.sink = phi i16 [ %i.be, %.critedge ], [ -31007, %bb.e ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.af, i16 noundef signext %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %i.bi = load i32, ptr %i.ag, align 4, !tbaa !122 ; 2 uses
  %i.bj = and i32 %i.bi, 128
  %.not51 = icmp eq i32 %i.bj, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !124
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !129
  %i.bo = load i32, ptr %i.ad, align 8, !tbaa !121
  %.sroa.024.0.copyload = load i48, ptr %i.j, align 8
  %.sroa.023.0.copyload = load i48, ptr %i.k, align 2
  %i.bp = tail call noundef i64 @_ZN10OreManager12placeAllOresEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44) %i.bn, ptr noundef nonnull %0, i32 noundef %i.bo, i48 %.sroa.024.0.copyload, i48 %.sroa.023.0.copyload) ; 0 uses
  %.pre163 = load i32, ptr %i.ag, align 4, !tbaa !122
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bq = phi i32 [ %.pre163, %bb.g ], [ %i.bi, %bb.f ] ; 2 uses
  %i.br = and i32 %i.bq, 4
  %.not52 = icmp eq i32 %i.br, 0
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %0, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.af)
  %.pre164 = load i32, ptr %i.ag, align 4, !tbaa !122
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = phi i32 [ %.pre164, %bb.i ], [ %i.bq, %bb.h ] ; 2 uses
  %i.bw = and i32 %i.bv, 32
  %.not53 = icmp eq i32 %i.bw, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !124
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !130
  %i.cb = load i32, ptr %i.ad, align 8, !tbaa !121
  %.sroa.019.0.copyload = load i48, ptr %i.j, align 8
  %.sroa.018.0.copyload = load i48, ptr %i.k, align 2
  tail call void @_ZN17DecorationManager13placeAllDecosEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44) %i.ca, ptr noundef nonnull %0, i32 noundef %i.cb, i48 %.sroa.019.0.copyload, i48 %.sroa.018.0.copyload)
  %.pre165 = load i32, ptr %i.ag, align 4, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi i32 [ %.pre165, %bb.k ], [ %i.bv, %bb.j ]
  %i.cd = and i32 %i.cc, 64
  %.not54 = icmp eq i32 %i.cd, 0
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %0, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(474) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.014.0.copyload = load i48, ptr %i.n, align 4
  %.sroa.013.0.copyload = load i48, ptr %i.z, align 2
  tail call void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.ch, i48 %.sroa.014.0.copyload, i48 %.sroa.013.0.copyload)
  %i.ci = load i32, ptr %i.ag, align 4, !tbaa !122
  %i.cj = and i32 %i.ci, 16
  %.not55 = icmp eq i32 %i.cj, 0
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = load i16, ptr %i.j, align 8, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !63
  %i.cn = add i16 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !64
  %.sroa.3.0.insert.ext.i112 = zext i16 %i.cp to i48
  %.sroa.3.0.insert.shift.i113 = shl nuw i48 %.sroa.3.0.insert.ext.i112, 32
  %.sroa.2.0.insert.ext.i114 = zext i16 %i.cn to i48
  %.sroa.2.0.insert.shift.i115 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i114, 16
  %.sroa.2.0.insert.insert.i116 = or disjoint i48 %.sroa.3.0.insert.shift.i113, %.sroa.2.0.insert.shift.i115
  %.sroa.0.0.insert.ext.i117 = zext i16 %i.ck to i48
  %.sroa.0.0.insert.insert.i118 = or disjoint i48 %.sroa.2.0.insert.insert.i116, %.sroa.0.0.insert.ext.i117
  %i.cq = load i16, ptr %i.k, align 2, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !63
  %i.ct = add i16 %i.cs, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !64
  %.sroa.3.0.insert.ext.i119 = zext i16 %i.cv to i48
  %.sroa.3.0.insert.shift.i120 = shl nuw i48 %.sroa.3.0.insert.ext.i119, 32
  %.sroa.2.0.insert.ext.i121 = zext i16 %i.ct to i48
  %.sroa.2.0.insert.shift.i122 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i121, 16
  %.sroa.2.0.insert.insert.i123 = or disjoint i48 %.sroa.3.0.insert.shift.i120, %.sroa.2.0.insert.shift.i122
  %.sroa.0.0.insert.ext.i124 = zext i16 %i.cq to i48
  %.sroa.0.0.insert.insert.i125 = or disjoint i48 %.sroa.2.0.insert.insert.i123, %.sroa.0.0.insert.ext.i124
  %.sroa.07.0.copyload = load i48, ptr %i.n, align 4
  %.sroa.0.0.copyload = load i48, ptr %i.z, align 2
  tail call void @_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b(ptr noundef nonnull align 8 dereferenceable(200) %0, i48 %.sroa.0.0.insert.insert.i118, i48 %.sroa.0.0.insert.insert.i125, i48 %.sroa.07.0.copyload, i48 %.sroa.0.0.copyload, i1 noundef zeroext true)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i8 0, ptr %i.a, align 8, !tbaa !105
  ret void
}

declare noundef i32 @_ZN6Mapgen13getBlockSeed2EN4core8vector3dIsEEi(i48, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -31007, 32768) i32 @_ZN8MapgenV519generateBaseTerrainEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !136
  %i.e = sitofp nsz i16 %i.d to float
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 4 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !137
  %i.h = sitofp nsz i16 %i.g to float
  %i.i = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.b, float noundef %i.e, float noundef %i.h, ptr noundef null) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = load i16, ptr %i.c, align 8, !tbaa !136
  %i.m = sitofp nsz i16 %i.l to float
  %i.n = load i16, ptr %i.f, align 4, !tbaa !137
  %i.o = sitofp nsz i16 %i.n to float
  %i.p = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.k, float noundef %i.m, float noundef %i.o, ptr noundef null) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.s = load i16, ptr %i.c, align 8, !tbaa !136
  %i.t = sitofp nsz i16 %i.s to float
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !138
  %i.w = sext i16 %i.v to i32
  %i.x = add nsw i32 %i.w, -1
  %i.y = sitofp nsz i32 %i.x to float
  %i.z = load i16, ptr %i.f, align 4, !tbaa !137
  %i.aa = sitofp nsz i16 %i.z to float
  %i.ab = tail call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.r, float noundef %i.t, float noundef %i.y, float noundef %i.aa, ptr noundef null) ; 0 uses
  %i.ac = load i16, ptr %i.f, align 4, !tbaa !137 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !139 ; 2 uses
  %.not76 = icmp sgt i16 %i.ac, %i.af
  br i1 %.not76, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  %.pre = load i16, ptr %i.ag, align 8, !tbaa !140 ; 3 uses
  br label %bb.b

._crit_edge83:                                    ; preds = %._crit_edge70, %bb.a
  %.035.lcssa = phi i32 [ -31007, %bb.a ], [ %.1.lcssa, %._crit_edge70 ]
  ret i32 %.035.lcssa

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge70
  %1 = phi i16 [ %i.af, %.lr.ph82 ], [ %30, %._crit_edge70 ] ; 3 uses
  %i.am = phi i16 [ %.pre, %.lr.ph82 ], [ %32, %._crit_edge70 ] ; 9 uses
  %i.an = phi i16 [ %.pre, %.lr.ph82 ], [ %33, %._crit_edge70 ] ; 2 uses
  %i.ao = phi i16 [ %.pre, %.lr.ph82 ], [ %34, %._crit_edge70 ] ; 2 uses
  %.03480 = phi i16 [ %i.ac, %.lr.ph82 ], [ %i.ax, %._crit_edge70 ] ; 2 uses
  %.03579 = phi i32 [ -31007, %.lr.ph82 ], [ %.1.lcssa, %._crit_edge70 ] ; 4 uses
  %.03678 = phi i32 [ 0, %.lr.ph82 ], [ %i.aw, %._crit_edge70 ] ; 5 uses
  %.03977 = phi i32 [ 0, %.lr.ph82 ], [ %.140.lcssa, %._crit_edge70 ] ; 4 uses
  %i.ap = load i16, ptr %i.u, align 2, !tbaa !138 ; 5 uses
  %i.aq = add i16 %i.ap, -1                       ; 5 uses
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = sext i16 %i.ao to i32
  %i.at = add nsw i32 %i.as, 1
  %.not4463 = icmp slt i32 %i.at, %i.ar
  br i1 %.not4463, label %.._crit_edge70_crit_edge, label %.lr.ph69

.._crit_edge70_crit_edge:                         ; preds = %bb.b
  %.pre90 = load i32, ptr %i.al, align 4, !tbaa !141
  br label %._crit_edge70

.lr.ph69:                                         ; preds = %bb.b
  %i.au = sext i16 %.03480 to i32
  %2 = load i16, ptr %i.c, align 8, !tbaa !136
  %i.av = load i16, ptr %i.ad, align 2, !tbaa !142 ; 2 uses
  %3 = icmp sgt i16 %2, %i.av
  br i1 %3, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  %4 = load i32, ptr %i.al, align 4, !tbaa !141   ; 4 uses
  %5 = sext i16 %i.am to i32                      ; 3 uses
  %6 = add nsw i32 %5, 1
  %7 = add nsw i32 %5, 2
  %8 = sext i16 %i.ap to i32                      ; 2 uses
  %9 = tail call i32 @llvm.smax.i32(i32 %7, i32 %8)
  %10 = add i32 %9, 1
  %11 = sub i32 %10, %8                           ; 3 uses
  %min.iters.check = icmp ult i32 %11, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph69.split.us
  %12 = add nsw i32 %5, 2
  %13 = sext i16 %i.ap to i32                     ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %12, i32 %13)
  %14 = sub i32 %smax, %13                        ; 2 uses
  %15 = trunc i32 %14 to i16
  %16 = add i16 %i.ap, %15
  %17 = icmp slt i16 %16, %i.ap
  %18 = icmp ugt i32 %14, 65535
  %19 = or i1 %17, %18
  br i1 %19, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %11, -8                        ; 3 uses
  %20 = trunc i32 %n.vec to i16
  %21 = add i16 %i.aq, %20
  %22 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.03678, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %22, %vector.ph ], [ %23, %vector.body ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %24, %vector.body ]
  %23 = sub <4 x i32> %vec.phi, %broadcast.splat  ; 2 uses
  %24 = sub <4 x i32> %vec.phi118, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %25 = icmp eq i32 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %24, %23
  %26 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph69.split.us, %middle.block
  %.03367.us.ph = phi i16 [ %i.aq, %vector.scevcheck ], [ %i.aq, %.lr.ph69.split.us ], [ %21, %middle.block ]
  %.13765.us.ph = phi i32 [ %.03678, %vector.scevcheck ], [ %.03678, %.lr.ph69.split.us ], [ %26, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03367.us = phi i16 [ %28, %scalar.ph ], [ %.03367.us.ph, %scalar.ph.preheader ]
  %.13765.us = phi i32 [ %27, %scalar.ph ], [ %.13765.us.ph, %scalar.ph.preheader ]
  %27 = sub i32 %.13765.us, %4                    ; 2 uses
  %28 = add i16 %.03367.us, 1                     ; 2 uses
  %29 = sext i16 %28 to i32
  %.not44.us = icmp slt i32 %6, %29
  br i1 %.not44.us, label %._crit_edge70, label %scalar.ph, !llvm.loop !132

._crit_edge70.loopexit85:                         ; preds = %._crit_edge
  %.pre91 = load i16, ptr %i.ae, align 2, !tbaa !139
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %scalar.ph, %middle.block, %.._crit_edge70_crit_edge, %._crit_edge70.loopexit85
  %30 = phi i16 [ %1, %.._crit_edge70_crit_edge ], [ %.pre91, %._crit_edge70.loopexit85 ], [ %1, %middle.block ], [ %1, %scalar.ph ] ; 2 uses
  %31 = phi i32 [ %.pre90, %.._crit_edge70_crit_edge ], [ %i.cb, %._crit_edge70.loopexit85 ], [ %4, %middle.block ], [ %4, %scalar.ph ]
  %32 = phi i16 [ %i.am, %.._crit_edge70_crit_edge ], [ %36, %._crit_edge70.loopexit85 ], [ %i.am, %middle.block ], [ %i.am, %scalar.ph ]
  %33 = phi i16 [ %i.an, %.._crit_edge70_crit_edge ], [ %i.bz, %._crit_edge70.loopexit85 ], [ %i.am, %middle.block ], [ %i.am, %scalar.ph ]
  %34 = phi i16 [ %i.ao, %.._crit_edge70_crit_edge ], [ %i.bz, %._crit_edge70.loopexit85 ], [ %i.am, %middle.block ], [ %i.am, %scalar.ph ]
  %.140.lcssa = phi i32 [ %.03977, %.._crit_edge70_crit_edge ], [ %.241.lcssa, %._crit_edge70.loopexit85 ], [ %.03977, %middle.block ], [ %.03977, %scalar.ph ]
  %.137.lcssa = phi i32 [ %.03678, %.._crit_edge70_crit_edge ], [ %i.cc, %._crit_edge70.loopexit85 ], [ %26, %middle.block ], [ %27, %scalar.ph ]
  %.1.lcssa = phi i32 [ %.03579, %.._crit_edge70_crit_edge ], [ %.2.lcssa, %._crit_edge70.loopexit85 ], [ %.03579, %middle.block ], [ %.03579, %scalar.ph ] ; 2 uses
  %i.aw = add i32 %31, %.137.lcssa
  %i.ax = add i16 %.03480, 1                      ; 2 uses
  %.not = icmp sgt i16 %i.ax, %30
  br i1 %.not, label %._crit_edge83, label %bb.b, !llvm.loop !133

.lr.ph69.split:                                   ; preds = %.lr.ph69, %._crit_edge
  %35 = phi i16 [ %36, %._crit_edge ], [ %i.am, %.lr.ph69 ]
  %i.ay = phi i16 [ %i.bz, %._crit_edge ], [ %i.an, %.lr.ph69 ]
  %i.az = phi i16 [ %i.ca, %._crit_edge ], [ %i.av, %.lr.ph69 ] ; 2 uses
  %i.ba = phi i32 [ %i.ce, %._crit_edge ], [ %i.ar, %.lr.ph69 ] ; 3 uses
  %.03367 = phi i16 [ %i.cd, %._crit_edge ], [ %i.aq, %.lr.ph69 ] ; 2 uses
  %.166 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.03579, %.lr.ph69 ] ; 2 uses
  %.13765 = phi i32 [ %i.cc, %._crit_edge ], [ %.03678, %.lr.ph69 ] ; 2 uses
  %.14064 = phi i32 [ %.241.lcssa, %._crit_edge ], [ %.03977, %.lr.ph69 ] ; 2 uses
  %i.bb = load i16, ptr %i.c, align 8, !tbaa !136 ; 3 uses
  %.not4555 = icmp sgt i16 %i.bb, %i.az
  br i1 %.not4555, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph69.split
  %i.bc = sext i16 %i.bb to i32
  %i.bd = load ptr, ptr %i.ah, align 8, !tbaa !82 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !147
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !148
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sub nsw i32 %i.au, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !149
  %i.bo = mul nsw i32 %i.bl, %i.bn
  %i.bp = add i32 %i.bo, %i.ba
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 10
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !150
  %i.bs = sext i16 %i.br to i32
  %i.bt = sub i32 %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !151
  %i.bw = mul i32 %i.bt, %i.bv
  %i.bx = add nsw i32 %i.bh, %i.bw
  %i.by = sitofp i16 %.03367 to float
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre89 = load i16, ptr %i.ag, align 8, !tbaa !140 ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph69.split
  %36 = phi i16 [ %35, %.lr.ph69.split ], [ %.pre89, %._crit_edge.loopexit ] ; 2 uses
  %i.bz = phi i16 [ %i.ay, %.lr.ph69.split ], [ %.pre89, %._crit_edge.loopexit ] ; 4 uses
  %i.ca = phi i16 [ %i.az, %.lr.ph69.split ], [ %i.dw, %._crit_edge.loopexit ]
  %.241.lcssa = phi i32 [ %.14064, %.lr.ph69.split ], [ %i.du, %._crit_edge.loopexit ] ; 2 uses
  %.238.lcssa = phi i32 [ %.13765, %.lr.ph69.split ], [ %i.dv, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.166, %.lr.ph69.split ], [ %.4, %._crit_edge.loopexit ] ; 2 uses
  %i.cb = load i32, ptr %i.al, align 4, !tbaa !141 ; 2 uses
  %i.cc = sub i32 %.238.lcssa, %i.cb              ; 2 uses
  %i.cd = add i16 %.03367, 1                      ; 2 uses
  %i.ce = sext i16 %i.cd to i32                   ; 2 uses
  %i.cf = sext i16 %i.bz to i32
  %i.cg = add nsw i32 %i.cf, 1
  %.not44 = icmp slt i32 %i.cg, %i.ce
  br i1 %.not44, label %._crit_edge70.loopexit85, label %.lr.ph69.split, !llvm.loop !134

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.03160 = phi i16 [ %i.bb, %.lr.ph ], [ %i.ds, %bb.l ]
  %.03259 = phi i32 [ %i.bx, %.lr.ph ], [ %i.dt, %bb.l ] ; 2 uses
  %.258 = phi i32 [ %.166, %.lr.ph ], [ %.4, %bb.l ] ; 4 uses
  %.23857 = phi i32 [ %.13765, %.lr.ph ], [ %i.dv, %bb.l ] ; 2 uses
  %.24156 = phi i32 [ %.14064, %.lr.ph ], [ %i.du, %bb.l ] ; 2 uses
  %i.ch = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.ck = zext i32 %.03259 to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck ; 4 uses
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !157
  %.not46 = icmp eq i16 %i.cm, 127
  br i1 %.not46, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !158
  %i.cq = zext i32 %.23857 to i64                 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !54
  %i.ct = fpext nsz float %i.cs to double
  %i.cu = fadd nsz double %i.ct, 5.500000e-01     ; 2 uses
  %i.cv = fptrunc nsz double %i.cu to float       ; 2 uses
  %i.cw = fpext nsz float %i.cv to double         ; 2 uses
  %i.cx = fcmp nsz olt double %i.cw, 1.000000e-02
  br i1 %i.cx, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cy = fcmp nsz ult double %i.cu, f0x3FEFFFFFF0000000
  br i1 %i.cy, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cz = fmul nnan nsz double %i.cw, 1.600000e+00
  %i.da = fptrunc nnan nsz double %i.cz to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi nsz float [ %i.cv, %bb.e ], [ %i.da, %bb.f ], [ f0x3C23D70A, %bb.d ]
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !158
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cq
  %i.df = load float, ptr %i.de, align 4, !tbaa !54
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !158
  %i.dj = zext i32 %.24156 to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !54
  %i.dm = fmul nsz float %.0, %i.dl
  %i.dn = fsub nsz float %i.by, %i.df
  %i.do = fcmp nsz olt float %i.dm, %i.dn
  br i1 %i.do, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dp = load i32, ptr %i.aj, align 4, !tbaa !80
  %.not47 = icmp slt i32 %i.dp, %i.ba
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = load i16, ptr %i.ak, align 2, !tbaa !159
  %.sroa.051.0.insert.ext = zext i16 %i.dq to i32
  store i32 %.sroa.051.0.insert.ext, ptr %i.cl, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  store i32 126, ptr %i.cl, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.dr = load i16, ptr %i.ai, align 8, !tbaa !160
  %.sroa.0.0.insert.ext = zext i16 %i.dr to i32
  store i32 %.sroa.0.0.insert.ext, ptr %i.cl, align 4
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.258, i32 %i.ba)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.c
  %.4 = phi i32 [ %.258, %bb.c ], [ %.258, %bb.i ], [ %.258, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %i.ds = add i16 %.03160, 1                      ; 2 uses
  %i.dt = add i32 %.03259, 1
  %i.du = add i32 %.24156, 1                      ; 2 uses
  %i.dv = add i32 %.23857, 1                      ; 2 uses
  %i.dw = load i16, ptr %i.ad, align 2, !tbaa !142 ; 2 uses
  %.not45 = icmp sgt i16 %i.ds, %i.dw
  br i1 %.not45, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !135
}

declare void @_ZN6Mapgen15updateHeightmapEN4core8vector3dIsEES2_(ptr noundef nonnull align 8 dereferenceable(200), i48, i48) local_unnamed_addr #1

declare noundef i64 @_ZN10OreManager12placeAllOresEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN17DecorationManager13placeAllDecosEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b(ptr noundef nonnull align 8 dereferenceable(200), i48, i48, i48, i48, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8MapgenV57getTypeEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN6Mapgen21getGroundLevelAtPointEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZN11MapgenBasic14generateBiomesEv(ptr noundef nonnull align 8 dereferenceable(474)) unnamed_addr #1

declare void @_ZN11MapgenBasic12dustTopNodesEv(ptr noundef nonnull align 8 dereferenceable(474)) unnamed_addr #1

declare void @_ZN11MapgenBasic30generateCavesNoiseIntersectionEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

declare void @_ZN11MapgenBasic23generateCavesRandomWalkEss(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare noundef zeroext i1 @_ZN11MapgenBasic20generateCavernsNoiseEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

declare void @_ZN11MapgenBasic16generateDungeonsEs(ptr noundef nonnull align 8 dereferenceable(474), i16 noundef signext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14MapgenV5ParamsD0Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 408) #11
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS10MapgenType", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTSN4core8vector3dIsEE", !12, i64 0, !12, i64 2, !12, i64 4}
!14 = !{!"long", !5, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS11BiomeParams", !15, i64 0}
!17 = !{!"_ZTS12MapgenParams", !11, i64 8, !13, i64 12, !14, i64 24, !12, i64 32, !12, i64 34, !6, i64 36, !6, i64 40, !16, i64 48}
!18 = !{!17, !6, i64 40}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"p1 _ZTS8MMVManip", !15, i64 0}
!21 = !{!"p1 _ZTS12EmergeParams", !15, i64 0}
!22 = !{!"p1 _ZTS14NodeDefManager", !15, i64 0}
!23 = !{!"p1 short", !15, i64 0}
!24 = !{!"p1 _ZTS8BiomeGen", !15, i64 0}
!25 = !{!"p1 _ZTSSt3setIjSt4lessIjESaIjEE", !15, i64 0}
!26 = !{!"p1 _ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !15, i64 0}
!27 = !{!"p1 _ZTSN16GenerateNotifier14GenNotifyEventE", !15, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !30, i64 0}
!32 = !{!"any p2 pointer", !15, i64 0}
!33 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !32, i64 0}
!34 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!35 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!"float", !5, i64 0}
!37 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !36, i64 0, !14, i64 8}
!38 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !33, i64 0, !14, i64 8, !35, i64 16, !14, i64 24, !37, i64 32, !34, i64 48}
!39 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !38, i64 0}
!40 = !{!"_ZTS16GenerateNotifier", !6, i64 0, !25, i64 8, !26, i64 16, !31, i64 24, !39, i64 48}
!41 = !{!"_ZTS6Mapgen", !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !19, i64 24, !6, i64 28, !20, i64 32, !21, i64 40, !22, i64 48, !6, i64 56, !23, i64 64, !23, i64 72, !13, i64 80, !24, i64 88, !40, i64 96}
!42 = !{!"p1 _ZTS12BiomeManager", !15, i64 0}
!43 = !{!"p1 _ZTS5Noise", !15, i64 0}
!44 = !{!"_ZTSN4core8vector3dIfEE", !36, i64 0, !36, i64 4, !36, i64 8}
!45 = !{!"_ZTS11NoiseParams", !36, i64 0, !36, i64 4, !44, i64 8, !6, i64 20, !12, i64 24, !36, i64 28, !36, i64 32, !6, i64 36}
!46 = !{!"_ZTS11MapgenBasic", !41, i64 0, !42, i64 200, !43, i64 208, !13, i64 216, !13, i64 222, !13, i64 228, !13, i64 234, !12, i64 240, !12, i64 242, !12, i64 244, !12, i64 246, !12, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !45, i64 272, !45, i64 312, !45, i64 352, !45, i64 392, !36, i64 432, !36, i64 436, !36, i64 440, !36, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !36, i64 464, !12, i64 468, !12, i64 470, !12, i64 472}
!47 = !{!46, !6, i64 268}
!48 = !{!"_ZTS14MapgenV5Params", !17, i64 0, !36, i64 56, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !12, i64 68, !36, i64 72, !12, i64 76, !12, i64 78, !36, i64 80, !12, i64 84, !12, i64 86, !45, i64 88, !45, i64 128, !45, i64 168, !45, i64 208, !45, i64 248, !45, i64 288, !45, i64 328, !45, i64 368}
!49 = !{!48, !36, i64 56}
!50 = !{!48, !12, i64 60}
!51 = !{!46, !12, i64 468}
!52 = !{!12, !12, i64 0}
!53 = !{!48, !36, i64 72}
!54 = !{!36, !36, i64 0}
!55 = !{!48, !36, i64 80}
!56 = !{!41, !6, i64 8}
!57 = !{!46, !43, i64 208}
!58 = !{!"_ZTS8MapgenV5", !46, i64 0, !43, i64 480, !43, i64 488, !43, i64 496}
!59 = !{!58, !43, i64 480}
!60 = !{!58, !43, i64 488}
!61 = !{!58, !43, i64 496}
!62 = !{!13, !12, i64 0}
!63 = !{!13, !12, i64 2}
!64 = !{!13, !12, i64 4}
!65 = !{!48, !12, i64 68}
!66 = !{!48, !12, i64 76}
!67 = !{!48, !12, i64 78}
!68 = !{!48, !12, i64 84}
!69 = !{!48, !12, i64 86}
!70 = !{!"p1 omnipotent char", !15, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!72 = !{!71, !70, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !14, i64 8, !5, i64 16}
!74 = !{!73, !14, i64 8}
!75 = !{!5, !5, i64 0}
!76 = !{!73, !70, i64 0}
!77 = !{!14, !14, i64 0}
!78 = !{!"p1 float", !15, i64 0}
!79 = !{!"_ZTS5Noise", !45, i64 0, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !78, i64 56, !78, i64 64, !78, i64 72, !78, i64 80}
!80 = !{!41, !6, i64 12}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!41, !20, i64 32}
!83 = !{!46, !36, i64 432}
!84 = !{!6, !6, i64 0}
!85 = !{!46, !36, i64 464}
!86 = !{!46, !36, i64 444}
!87 = !{!41, !12, i64 80}
!88 = !{!41, !12, i64 84}
!89 = !{!41, !12, i64 82}
!90 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 4, !54, i64 20, i64 4, !84, i64 24, i64 2, !52, i64 28, i64 4, !54, i64 32, i64 4, !54, i64 36, i64 4, !84}
!91 = !{!17, !11, i64 8}
!92 = !{!17, !14, i64 24}
!93 = !{!17, !12, i64 32}
!94 = !{!17, !12, i64 34}
!95 = !{!17, !6, i64 36}
!96 = !{!17, !16, i64 48}
!97 = !{!45, !6, i64 20}
!98 = !{!45, !12, i64 24}
!99 = !{!45, !6, i64 36}
!100 = !{!48, !12, i64 62}
!101 = !{!48, !12, i64 64}
!102 = !{!48, !12, i64 66}
!103 = distinct !{!103, !81}
!104 = !{!79, !36, i64 0}
!105 = !{!41, !19, i64 24}
!106 = !{!"_ZTSSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !33, i64 0, !14, i64 8, !35, i64 16, !14, i64 24, !37, i64 32, !34, i64 48}
!107 = !{!"_ZTSSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !106, i64 0}
!108 = !{!"p2 _ZTSN4core8vector3dIsEE", !32, i64 0}
!109 = !{!"p1 _ZTSN4core8vector3dIsEE", !15, i64 0}
!110 = !{!"_ZTSSt15_Deque_iteratorIN4core8vector3dIsEERS2_PS2_E", !109, i64 0, !109, i64 8, !109, i64 16, !108, i64 24}
!111 = !{!"_ZTSNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_Deque_impl_dataE", !108, i64 0, !14, i64 8, !110, i64 16, !110, i64 48}
!112 = !{!"_ZTSNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE11_Deque_implE", !111, i64 0}
!113 = !{!"_ZTSSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE", !112, i64 0}
!114 = !{!"_ZTSSt5dequeIN4core8vector3dIsEESaIS2_EE", !113, i64 0}
!115 = !{!"_ZTSSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE", !114, i64 0}
!116 = !{!"_ZTS11UniqueQueueIN4core8vector3dIsEEE", !107, i64 0, !115, i64 56}
!117 = !{!"_ZTS13BlockMakeData", !20, i64 0, !14, i64 8, !13, i64 16, !13, i64 22, !116, i64 32, !22, i64 168}
!118 = !{!117, !20, i64 0}
!119 = !{!117, !22, i64 168}
!120 = !{!41, !22, i64 48}
!121 = !{!41, !6, i64 56}
!122 = !{!41, !6, i64 20}
!123 = !{!41, !24, i64 88}
!124 = !{!41, !21, i64 40}
!125 = !{!"p1 _ZTS10OreManager", !15, i64 0}
!126 = !{!"p1 _ZTS17DecorationManager", !15, i64 0}
!127 = !{!"p1 _ZTS16SchematicManager", !15, i64 0}
!128 = !{!"_ZTS12EmergeParams", !22, i64 0, !19, i64 8, !6, i64 12, !25, i64 16, !26, i64 24, !24, i64 32, !42, i64 40, !125, i64 48, !126, i64 56, !127, i64 64}
!129 = !{!128, !125, i64 48}
!130 = !{!128, !126, i64 56}
!131 = distinct !{!131, !81, !143, !144}
!132 = distinct !{!132, !81, !143}
!133 = distinct !{!133, !81}
!134 = distinct !{!134, !81, !152}
!135 = distinct !{!135, !81}
!136 = !{!46, !12, i64 216}
!137 = !{!46, !12, i64 220}
!138 = !{!46, !12, i64 218}
!139 = !{!46, !12, i64 226}
!140 = !{!46, !12, i64 224}
!141 = !{!46, !6, i64 252}
!142 = !{!46, !12, i64 222}
!143 = !{!"llvm.loop.isvectorized", i32 1}
!144 = !{!"llvm.loop.unroll.runtime.disable"}
!145 = !{!"_ZTSN4core8vector3dIiEE", !6, i64 0, !6, i64 4, !6, i64 8}
!146 = !{!"_ZTS9VoxelArea", !13, i64 0, !13, i64 6, !145, i64 12}
!147 = !{!146, !12, i64 0}
!148 = !{!146, !12, i64 4}
!149 = !{!146, !6, i64 16}
!150 = !{!146, !12, i64 2}
!151 = !{!146, !6, i64 12}
!152 = !{!"llvm.loop.unswitch.partial.disable"}
!153 = !{!"p1 _ZTS7MapNode", !15, i64 0}
!154 = !{!"_ZTS16VoxelManipulator", !146, i64 8, !153, i64 32, !70, i64 40}
!155 = !{!154, !153, i64 32}
!156 = !{!"_ZTS7MapNode", !12, i64 0, !5, i64 2, !5, i64 3}
!157 = !{!156, !12, i64 0}
!158 = !{!79, !78, i64 80}
!159 = !{!46, !12, i64 242}
!160 = !{!46, !12, i64 240}
end_hunk_0
