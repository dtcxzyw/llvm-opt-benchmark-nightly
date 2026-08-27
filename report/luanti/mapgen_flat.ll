Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_flat?download=true
inline.NumInlined: 320
inline.NumDeleted: 42
begin_hunk_0_@_ZN10MapgenFlat9makeChunkEP13BlockMakeData:bb.a

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.ae)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !49
  %i.ax = and i32 %i.aw, 4
  %.not50 = icmp eq i32 %i.ax, 0
  br i1 %.not50, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %0, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.ae)
  br i1 %i.bb, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !59
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.critedge
  %.sink = phi i16 [ %i.bd, %.critedge ], [ -31007, %bb.e ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.ae, i16 noundef signext %.sink)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  %i.bh = load i32, ptr %i.af, align 4, !tbaa !125 ; 2 uses
  %i.bi = and i32 %i.bh, 128
  %.not51 = icmp eq i32 %i.bi, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !128
  %i.bn = load i32, ptr %i.ad, align 8, !tbaa !124
  %.sroa.024.0.copyload = load i48, ptr %i.j, align 8
  %.sroa.023.0.copyload = load i48, ptr %i.k, align 2
  %i.bo = tail call noundef i64 @_ZN10OreManager12placeAllOresEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44) %i.bm, ptr noundef nonnull %0, i32 noundef %i.bn, i48 %.sroa.024.0.copyload, i48 %.sroa.023.0.copyload) ; 0 uses
  %.pre163 = load i32, ptr %i.af, align 4, !tbaa !125
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = phi i32 [ %.pre163, %bb.g ], [ %i.bh, %bb.f ] ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %.not52 = icmp eq i32 %i.bq, 0
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %0, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(474) %0, i16 noundef signext %i.ae)
  %.pre164 = load i32, ptr %i.af, align 4, !tbaa !125
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = phi i32 [ %.pre164, %bb.i ], [ %i.bp, %bb.h ] ; 2 uses
  %i.bv = and i32 %i.bu, 32
  %.not53 = icmp eq i32 %i.bv, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !127
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !133
  %i.ca = load i32, ptr %i.ad, align 8, !tbaa !124
  %.sroa.019.0.copyload = load i48, ptr %i.j, align 8
  %.sroa.018.0.copyload = load i48, ptr %i.k, align 2
  tail call void @_ZN17DecorationManager13placeAllDecosEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44) %i.bz, ptr noundef nonnull %0, i32 noundef %i.ca, i48 %.sroa.019.0.copyload, i48 %.sroa.018.0.copyload)
  %.pre165 = load i32, ptr %i.af, align 4, !tbaa !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cb = phi i32 [ %.pre165, %bb.k ], [ %i.bu, %bb.j ]
  %i.cc = and i32 %i.cb, 64
  %.not54 = icmp eq i32 %i.cc, 0
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr %0, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(474) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.014.0.copyload = load i48, ptr %i.n, align 4
  %.sroa.013.0.copyload = load i48, ptr %i.z, align 2
  tail call void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.cg, i48 %.sroa.014.0.copyload, i48 %.sroa.013.0.copyload)
  %i.ch = load i32, ptr %i.af, align 4, !tbaa !125
  %i.ci = and i32 %i.ch, 16
  %.not55 = icmp eq i32 %i.ci, 0
  br i1 %.not55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i16, ptr %i.j, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !72
  %i.cm = add i16 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !73
  %.sroa.3.0.insert.ext.i112 = zext i16 %i.co to i48
  %.sroa.3.0.insert.shift.i113 = shl nuw i48 %.sroa.3.0.insert.ext.i112, 32
  %.sroa.2.0.insert.ext.i114 = zext i16 %i.cm to i48
  %.sroa.2.0.insert.shift.i115 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i114, 16
  %.sroa.2.0.insert.insert.i116 = or disjoint i48 %.sroa.3.0.insert.shift.i113, %.sroa.2.0.insert.shift.i115
  %.sroa.0.0.insert.ext.i117 = zext i16 %i.cj to i48
  %.sroa.0.0.insert.insert.i118 = or disjoint i48 %.sroa.2.0.insert.insert.i116, %.sroa.0.0.insert.ext.i117
  %i.cp = load i16, ptr %i.k, align 2, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !72
  %i.cs = add i16 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !73
  %.sroa.3.0.insert.ext.i119 = zext i16 %i.cu to i48
  %.sroa.3.0.insert.shift.i120 = shl nuw i48 %.sroa.3.0.insert.ext.i119, 32
  %.sroa.2.0.insert.ext.i121 = zext i16 %i.cs to i48
  %.sroa.2.0.insert.shift.i122 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i121, 16
  %.sroa.2.0.insert.insert.i123 = or disjoint i48 %.sroa.3.0.insert.shift.i120, %.sroa.2.0.insert.shift.i122
  %.sroa.0.0.insert.ext.i124 = zext i16 %i.cp to i48
  %.sroa.0.0.insert.insert.i125 = or disjoint i48 %.sroa.2.0.insert.insert.i123, %.sroa.0.0.insert.ext.i124
  %.sroa.07.0.copyload = load i48, ptr %i.n, align 4
  %.sroa.0.0.copyload = load i48, ptr %i.z, align 2
  tail call void @_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b(ptr noundef nonnull align 8 dereferenceable(200) %0, i48 %.sroa.0.0.insert.insert.i118, i48 %.sroa.0.0.insert.insert.i125, i48 %.sroa.07.0.copyload, i48 %.sroa.0.0.copyload, i1 noundef zeroext true)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i8 0, ptr %i.a, align 8, !tbaa !107
  ret void
}

declare noundef i32 @_ZN6Mapgen13getBlockSeed2EN4core8vector3dIsEEi(i48, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef signext range(i16 -31007, -32768) i16 @_ZN10MapgenFlat15generateTerrainEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load i16, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.d = load i16, ptr %i.c, align 2, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49
  %i.j = and i32 %i.i, 3
  %.not = icmp eq i32 %i.j, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load i16, ptr %i.m, align 8, !tbaa !136
  %i.o = sitofp nsz i16 %i.n to float
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.q = load i16, ptr %i.p, align 4, !tbaa !137
  %i.r = sitofp nsz i16 %i.q to float
  %i.s = tail call noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.l, float noundef %i.o, float noundef %i.r, ptr noundef null) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.v = load i16, ptr %i.u, align 4, !tbaa !137  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !138  ; 2 uses
  %.not3766 = icmp sgt i16 %i.v, %i.y
  br i1 %.not3766, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 474
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %.sroa.048.0.insert.ext = zext i16 %i.b to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.insert.ext = zext i16 %i.d to i32
  %i.ai = load i16, ptr %i.t, align 8, !tbaa !136
  %i.aj = load i16, ptr %i.w, align 2, !tbaa !139 ; 3 uses
  %i.ak = icmp sgt i16 %i.ai, %i.aj
  br i1 %i.ak, label %._crit_edge72, label %.lr.ph71.split

._crit_edge72:                                    ; preds = %._crit_edge63, %.lr.ph71, %bb.c
  %.026.lcssa = phi i16 [ -31007, %bb.c ], [ -31007, %.lr.ph71 ], [ %.1.lcssa, %._crit_edge63 ]
  ret i16 %.026.lcssa

.lr.ph71.split:                                   ; preds = %.lr.ph71, %._crit_edge63
  %i.al = phi i16 [ %i.aq, %._crit_edge63 ], [ %i.y, %.lr.ph71 ]
  %i.am = phi i16 [ %i.ar, %._crit_edge63 ], [ %i.aj, %.lr.ph71 ] ; 2 uses
  %i.an = phi i16 [ %i.as, %._crit_edge63 ], [ %i.aj, %.lr.ph71 ] ; 2 uses
  %.02669 = phi i16 [ %.1.lcssa, %._crit_edge63 ], [ -31007, %.lr.ph71 ] ; 2 uses
  %.02968 = phi i16 [ %i.at, %._crit_edge63 ], [ %i.v, %.lr.ph71 ] ; 2 uses
  %.03067 = phi i32 [ %.131.lcssa, %._crit_edge63 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.ao = load i16, ptr %i.t, align 8, !tbaa !136 ; 2 uses
  %.not3857 = icmp sgt i16 %i.ao, %i.an
  br i1 %.not3857, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph71.split
  %i.ap = sext i16 %.02968 to i32
  br label %bb.d

._crit_edge63.loopexit:                           ; preds = %._crit_edge
  %.pre75 = load i16, ptr %i.x, align 2, !tbaa !138
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %._crit_edge63.loopexit, %.lr.ph71.split
  %i.aq = phi i16 [ %i.al, %.lr.ph71.split ], [ %.pre75, %._crit_edge63.loopexit ] ; 2 uses
  %i.ar = phi i16 [ %i.am, %.lr.ph71.split ], [ %i.cw, %._crit_edge63.loopexit ]
  %i.as = phi i16 [ %i.an, %.lr.ph71.split ], [ %i.cw, %._crit_edge63.loopexit ]
  %.131.lcssa = phi i32 [ %.03067, %.lr.ph71.split ], [ %i.cy, %._crit_edge63.loopexit ]
  %.1.lcssa = phi i16 [ %.02669, %.lr.ph71.split ], [ %.2.lcssa, %._crit_edge63.loopexit ] ; 2 uses
  %i.at = add i16 %.02968, 1                      ; 2 uses
  %.not37 = icmp sgt i16 %i.at, %i.aq
  br i1 %.not37, label %._crit_edge72, label %.lr.ph71.split, !llvm.loop !140

bb.d:                                             ; preds = %.lr.ph62, %._crit_edge
  %i.au = phi i16 [ %i.am, %.lr.ph62 ], [ %i.cw, %._crit_edge ]
  %.160.a = phi i16 [ %.02669, %.lr.ph62 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.02859 = phi i16 [ %i.ao, %.lr.ph62 ], [ %i.cx, %._crit_edge ] ; 2 uses
  %.13158 = phi i32 [ %.03067, %.lr.ph62 ], [ %i.cy, %._crit_edge ] ; 2 uses
  %i.av = load i16, ptr %i.z, align 2, !tbaa !52  ; 4 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !143
  %i.az = zext i32 %.13158 to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bc = phi nsz float [ %i.bb, %bb.e ], [ 0.000000e+00, %bb.d ] ; 4 uses
  %i.bd = load i32, ptr %i.h, align 4, !tbaa !49  ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not39.a = icmp eq i32 %i.be, 0
  br i1 %.not39.a, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load float, ptr %i.ab, align 4, !tbaa !102 ; 2 uses
  %i.bg = fcmp nsz olt float %i.bc, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = fsub nsz float %i.bf, %i.bc
  %i.bi = load float, ptr %i.ac, align 8, !tbaa !103
  %i.bj = fmul nsz float %i.bh, %i.bi
  %i.bk = fptosi float %i.bj to i16
  %i.bl = sub i16 %i.av, %i.bk
  br label %bb.l

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.bm = and i32 %i.bd, 2
  %.not40 = icmp eq i32 %i.bm, 0
  br i1 %.not40, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load float, ptr %i.ad, align 4, !tbaa !104 ; 2 uses
  %i.bo = fcmp nsz ogt float %i.bc, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = fsub nsz float %i.bc, %i.bn
  %i.bq = load float, ptr %i.ae, align 8, !tbaa !105
  %i.br = fmul nsz float %i.bp, %i.bq
  %i.bs = fptosi float %i.br to i16
  %i.bt = add i16 %i.av, %i.bs
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.h
  %.027 = phi i16 [ %i.bl, %bb.h ], [ %i.bt, %bb.k ], [ %i.av, %bb.j ], [ %i.av, %bb.i ]
  %i.bu = load i16, ptr %i.af, align 2, !tbaa !146
  %i.bv = add i16 %i.bu, -1                       ; 2 uses
  %i.bw = sext i16 %i.bv to i32                   ; 3 uses
  %i.bx = load i16, ptr %i.ag, align 8, !tbaa !147
  %i.by = sext i16 %i.bx to i32
  %i.bz = add nsw i32 %i.by, 1
  %.not4153 = icmp slt i32 %i.bz, %i.bw
  br i1 %.not4153, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ca = sext i16 %.02859 to i32
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !121 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !148
  %i.ce = sext i16 %i.cd to i32
  %i.cf = sub nsw i32 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !151
  %i.ci = sext i16 %i.ch to i32
  %i.cj = sub nsw i32 %i.ap, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !152
  %i.cm = mul nsw i32 %i.cj, %i.cl
  %i.cn = add i32 %i.cm, %i.bw
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !153
  %i.cq = sext i16 %i.cp to i32
  %i.cr = sub i32 %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !154
  %i.cu = mul i32 %i.cr, %i.ct
  %i.cv = add nsw i32 %i.cf, %i.cu
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre = load i16, ptr %i.w, align 2, !tbaa !139
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.cw = phi i16 [ %i.au, %bb.l ], [ %.pre, %._crit_edge.loopexit ] ; 4 uses
  %.2.lcssa = phi i16 [ %.160.a, %bb.l ], [ %.3, %._crit_edge.loopexit ] ; 2 uses
  %i.cx = add i16 %.02859, 1                      ; 2 uses
  %i.cy = add i32 %.13158, 1                      ; 2 uses
  %.not38 = icmp sgt i16 %i.cx, %i.cw
  br i1 %.not38, label %._crit_edge63.loopexit, label %bb.d, !llvm.loop !155

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %i.cz = phi i32 [ %i.dl, %bb.r ], [ %i.bw, %.lr.ph.preheader ]
  %.056 = phi i16 [ %i.dk, %bb.r ], [ %i.bv, %.lr.ph.preheader ] ; 3 uses
  %.255 = phi i16 [ %.3, %bb.r ], [ %.160.a, %.lr.ph.preheader ] ; 4 uses
  %.05154 = phi i32 [ %i.dj, %bb.r ], [ %i.cv, %.lr.ph.preheader ] ; 2 uses
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !156
  %i.dd = zext i32 %.05154 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd ; 4 uses
  %i.df = load i16, ptr %i.de, align 4, !tbaa !159
  %i.dg = icmp eq i16 %i.df, 127
  br i1 %i.dg, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph
  %.not42.a = icmp sgt i16 %.056, %.027
  br i1 %.not42.a, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %.sroa.048.0.insert.ext, ptr %i.de, align 4
  %spec.select = tail call i16 @llvm.smax.i16(i16 %.056, i16 %.255)
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %i.ah, align 4, !tbaa !106
  %.not43 = icmp slt i32 %i.dh, %i.cz
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.sroa.0.0.insert.ext, ptr %i.de, align 4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i32 126, ptr %i.de, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %.lr.ph
  %.3 = phi i16 [ %.255, %.lr.ph ], [ %spec.select, %bb.n ], [ %.255, %bb.p ], [ %.255, %bb.q ] ; 2 uses
  %i.di = load i32, ptr %i.g, align 4, !tbaa !161
  %i.dj = add i32 %i.di, %.05154
  %i.dk = add i16 %.056, 1                        ; 2 uses
  %i.dl = sext i16 %i.dk to i32                   ; 2 uses
  %i.dm = load i16, ptr %i.ag, align 8, !tbaa !147
  %i.dn = sext i16 %i.dm to i32
  %i.do = add nsw i32 %i.dn, 1
  %.not41 = icmp slt i32 %i.do, %i.dl
  br i1 %.not41, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !162
}

declare void @_ZN6Mapgen15updateHeightmapEN4core8vector3dIsEES2_(ptr noundef nonnull align 8 dereferenceable(200), i48, i48) local_unnamed_addr #1

declare noundef i64 @_ZN10OreManager12placeAllOresEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN17DecorationManager13placeAllDecosEP6MapgenjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b(ptr noundef nonnull align 8 dereferenceable(200), i48, i48, i48, i48, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr noundef nonnull align 8 dereferenceable(88), float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10MapgenFlat7getTypeEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 4
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
define linkonce_odr dso_local void @_ZN16MapgenFlatParamsD0Ev(ptr noundef nonnull align 8 dereferenceable(348) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN12MapgenParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(348) dereferenceable(348) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #10
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !42, i64 496}
!12 = !{!"_ZTS10MapgenFlat", !13, i64 0, !22, i64 474, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !42, i64 496}
!13 = !{!"_ZTS11MapgenBasic", !14, i64 0, !41, i64 200, !42, i64 208, !21, i64 216, !21, i64 222, !21, i64 228, !21, i64 234, !22, i64 240, !22, i64 242, !22, i64 244, !22, i64 246, !22, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !43, i64 272, !43, i64 312, !43, i64 352, !43, i64 392, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !40, i64 464, !22, i64 468, !22, i64 470, !22, i64 472}
!14 = !{!"_ZTS6Mapgen", !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !15, i64 24, !6, i64 28, !16, i64 32, !18, i64 40, !19, i64 48, !6, i64 56, !20, i64 64, !20, i64 72, !21, i64 80, !23, i64 88, !24, i64 96}
!15 = !{!"bool", !7, i64 0}
!16 = !{!"p1 _ZTS8MMVManip", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 _ZTS12EmergeParams", !17, i64 0}
!19 = !{!"p1 _ZTS14NodeDefManager", !17, i64 0}
!20 = !{!"p1 short", !17, i64 0}
!21 = !{!"_ZTSN4core8vector3dIsEE", !22, i64 0, !22, i64 2, !22, i64 4}
!22 = !{!"short", !7, i64 0}
!23 = !{!"p1 _ZTS8BiomeGen", !17, i64 0}
!24 = !{!"_ZTS16GenerateNotifier", !6, i64 0, !25, i64 8, !26, i64 16, !27, i64 24, !32, i64 48}
!25 = !{!"p1 _ZTSSt3setIjSt4lessIjESaIjEE", !17, i64 0}
!26 = !{!"p1 _ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !17, i64 0}
!27 = !{!"_ZTSSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN16GenerateNotifier14GenNotifyEventE", !17, i64 0}
!32 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !33, i64 0}
!33 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !34, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !39, i64 32, !38, i64 48}
!34 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !35, i64 0}
!35 = !{!"any p2 pointer", !17, i64 0}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !38, i64 0}
!38 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!39 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !40, i64 0, !36, i64 8}
!40 = !{!"float", !7, i64 0}
!41 = !{!"p1 _ZTS12BiomeManager", !17, i64 0}
!42 = !{!"p1 _ZTS5Noise", !17, i64 0}
!43 = !{!"_ZTS11NoiseParams", !40, i64 0, !40, i64 4, !44, i64 8, !6, i64 20, !22, i64 24, !40, i64 28, !40, i64 32, !6, i64 36}
!44 = !{!"_ZTSN4core8vector3dIfEE", !40, i64 0, !40, i64 4, !40, i64 8}
!45 = !{!46, !6, i64 40}
!46 = !{!"_ZTS12MapgenParams", !47, i64 8, !21, i64 12, !36, i64 24, !22, i64 32, !22, i64 34, !6, i64 36, !6, i64 40, !48, i64 48}
!47 = !{!"_ZTS10MapgenType", !7, i64 0}
!48 = !{!"p1 _ZTS11BiomeParams", !17, i64 0}
!49 = !{!13, !6, i64 268}
!50 = !{!51, !22, i64 56}
!51 = !{!"_ZTS16MapgenFlatParams", !46, i64 0, !22, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !22, i64 80, !22, i64 82, !22, i64 84, !22, i64 86, !22, i64 88, !40, i64 92, !22, i64 96, !22, i64 98, !40, i64 100, !22, i64 104, !22, i64 106, !43, i64 108, !43, i64 148, !43, i64 188, !43, i64 228, !43, i64 268, !43, i64 308}
!52 = !{!12, !22, i64 474}
!53 = !{!40, !40, i64 0}
!54 = !{!51, !40, i64 76}
!55 = !{!13, !40, i64 432}
!56 = !{!22, !22, i64 0}
!57 = !{!6, !6, i64 0}
!58 = !{!51, !22, i64 88}
!59 = !{!13, !22, i64 468}
!60 = !{!51, !40, i64 92}
!61 = !{!13, !40, i64 464}
!62 = !{!51, !40, i64 100}
!63 = !{!13, !40, i64 444}
!64 = !{!14, !6, i64 8}
!65 = !{!14, !22, i64 80}
!66 = !{!14, !22, i64 84}
!67 = !{!13, !42, i64 208}
!68 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 12, i64 4, !53, i64 16, i64 4, !53, i64 20, i64 4, !57, i64 24, i64 2, !56, i64 28, i64 4, !53, i64 32, i64 4, !53, i64 36, i64 4, !57}
!69 = !{ptr @_ZN10MapgenFlatD2Ev}
!70 = !{!46, !47, i64 8}
!71 = !{!21, !22, i64 0}
!72 = !{!21, !22, i64 2}
!73 = !{!21, !22, i64 4}
!74 = !{!46, !36, i64 24}
!75 = !{!46, !22, i64 32}
!76 = !{!46, !22, i64 34}
!77 = !{!46, !6, i64 36}
!78 = !{!46, !48, i64 48}
!79 = !{!51, !22, i64 96}
!80 = !{!51, !22, i64 98}
!81 = !{!51, !22, i64 104}
!82 = !{!51, !22, i64 106}
end_hunk_0
