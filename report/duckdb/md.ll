inline.NumInlined: 15
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_get_name(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  %.not10 = icmp eq i32 %i.b, 9
  %i.c = select i1 %.not10, ptr @.str, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.c, %.preheader ], [ null, %bb.a ]
  ret ptr %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_info_from_ctx(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_starts(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.c, align 4, !tbaa !12
  switch i32 %i.l, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.f
    i32 9, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = tail call i32 @mbedtls_sha1_starts(ptr noundef %i.n)
  br label %mbedtls_md_starts.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = tail call i32 @mbedtls_sha256_starts(ptr noundef %i.q, i32 noundef 0)
  br label %mbedtls_md_starts.exit

mbedtls_md_starts.exit:                           ; preds = %bb.f, %bb.g
  %.0.i51 = phi i32 [ %i.r, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.0.i51, 0
  br i1 %.not, label %bb.h, label %mbedtls_md_update.exit56

bb.h:                                             ; preds = %mbedtls_md_starts.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mbedtls_md_update.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.s, align 4, !tbaa !12
  switch i32 %i.u, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.j
    i32 9, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i32 @mbedtls_sha1_update(ptr noundef %i.w, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.aa = tail call i32 @mbedtls_sha256_update(ptr noundef %i.z, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.j, %bb.k
  %.0.i52 = phi i32 [ %i.aa, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  %.not41 = icmp eq i32 %.0.i52, 0
  br i1 %.not41, label %bb.l, label %mbedtls_md_update.exit56

bb.l:                                             ; preds = %mbedtls_md_update.exit
  %i.ab = call i32 @mbedtls_md_finish(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 2 uses
  %.not42 = icmp eq i32 %i.ab, 0
  br i1 %.not42, label %bb.m, label %mbedtls_md_update.exit56

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !17
  %i.af = zext i8 %i.ae to i64
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 5
  %.pre77 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !16
  %.pre78 = zext i8 %.pre77 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.pre-phi = phi i64 [ %.pre78, %bb.m ], [ %i.j, %bb.d ] ; 5 uses
  %i.ag = phi ptr [ %.pre, %bb.m ], [ %i.f, %bb.d ] ; 20 uses
  %.033 = phi i64 [ %i.af, %bb.m ], [ %2, %bb.d ] ; 21 uses
  %.031 = phi ptr [ %i.a, %bb.m ], [ %1, %bb.d ]  ; 26 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %.pre-phi ; 11 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 54, i64 %.pre-phi, i1 false)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = zext i8 %i.ak to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 92, i64 %i.al, i1 false)
  %.not.i4564 = icmp samesign ult i64 %.033, 8    ; 2 uses
  br i1 %.not.i4564, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.am = add i64 %.033, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 88
  br i1 %min.iters.check, label %.lr.ph.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = and i64 %.033, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ap
  %scevgep90 = getelementptr i8, ptr %.031, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep90
  %bound1 = icmp ult ptr %.031, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 3 uses
  %i.ar = or disjoint i64 %i.aq, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.at, align 1, !alias.scope !18, !noalias !21
  %wide.load91 = load <2 x i64>, ptr %i.au, align 1, !alias.scope !18, !noalias !21
  %i.av = getelementptr inbounds nuw i8, ptr %.031, i64 %i.as ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load92 = load <2 x i64>, ptr %i.av, align 1, !alias.scope !21
  %wide.load93 = load <2 x i64>, ptr %i.aw, align 1, !alias.scope !21
  %i.ax = xor <2 x i64> %wide.load92, %wide.load
  %i.ay = xor <2 x i64> %wide.load93, %wide.load91
  store <2 x i64> %i.ax, ptr %i.at, align 1, !alias.scope !18, !noalias !21
  store <2 x i64> %i.ay, ptr %i.au, align 1, !alias.scope !18, !noalias !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.preheader63, label %.lr.ph.preheader191

.lr.ph.preheader191:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph192 = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.0.i4465.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.preheader63:                                     ; preds = %.lr.ph, %middle.block, %bb.n
  %.0.i44.lcssa = phi i64 [ 0, %bb.n ], [ %i.aq, %middle.block ], [ %i.bz, %.lr.ph ] ; 10 uses
  %i.ba = icmp samesign ult i64 %.0.i44.lcssa, %.033
  br i1 %i.ba, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader

iter.check:                                       ; preds = %.preheader63
  %i.bb = sub nuw i64 %.033, %.0.i44.lcssa        ; 7 uses
  %min.iters.check104 = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check104, label %.lr.ph67.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %iter.check
  %scevgep96 = getelementptr i8, ptr %i.ag, i64 %.0.i44.lcssa
  %scevgep97 = getelementptr i8, ptr %i.ag, i64 %.033
  %scevgep98 = getelementptr i8, ptr %.031, i64 %.0.i44.lcssa
  %scevgep99 = getelementptr i8, ptr %.031, i64 %.033
  %bound0100 = icmp ult ptr %scevgep96, %scevgep99
  %bound1101 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck95
  %min.iters.check105 = icmp ult i64 %i.bb, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf107 = and i64 %i.bb, 24
  %n.vec108 = and i64 %i.bb, -32                  ; 4 uses
  %i.bc = add i64 %.0.i44.lcssa, %n.vec108
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.bd = add i64 %.0.i44.lcssa, %index110        ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load111 = load <16 x i8>, ptr %i.be, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %wide.load112 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %i.bg = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bd ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load113 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !27, !alias.scope !31
  %wide.load114 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !27, !alias.scope !31
  %i.bi = xor <16 x i8> %wide.load113, %wide.load111
  %i.bj = xor <16 x i8> %wide.load114, %wide.load112
  store <16 x i8> %i.bi, ptr %i.be, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  store <16 x i8> %i.bj, ptr %i.bf, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %index.next115 = add nuw i64 %index110, 32      ; 2 uses
  %i.bk = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.bk, label %middle.block116, label %vector.body109, !llvm.loop !33

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.bb, %n.vec108
  br i1 %cmp.n117, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block116
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf107, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec108, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %i.bb, -8                   ; 3 uses
  %i.bl = add i64 %.0.i44.lcssa, %n.vec120
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = add i64 %.0.i44.lcssa, %index121        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm ; 2 uses
  %wide.load122 = load <8 x i8>, ptr %i.bn, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %i.bo = getelementptr inbounds nuw i8, ptr %.031, i64 %i.bm
  %wide.load123 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !27, !alias.scope !31
  %3 = xor <8 x i8> %wide.load123, %wide.load122
  store <8 x i8> %3, ptr %i.bn, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %index.next124 = add nuw i64 %index121, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next124, %n.vec120
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %i.bb, %n.vec120
  br i1 %cmp.n125, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %vector.memcheck95, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i4666.ph = phi i64 [ %.0.i44.lcssa, %iter.check ], [ %.0.i44.lcssa, %vector.memcheck95 ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ] ; 4 uses
  %i.bq = sub i64 %.033, %.1.i4666.ph
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader, %.lr.ph67.prol
  %.1.i4666.prol = phi i64 [ %i.bw, %.lr.ph67.prol ], [ %.1.i4666.ph, %.lr.ph67.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i4666.prol ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i4666.prol
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  %i.bv = xor i8 %i.bu, %i.bs
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !27
  %i.bw = add nuw nsw i64 %.1.i4666.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !36

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader
  %.1.i4666.unr = phi i64 [ %.1.i4666.ph, %.lr.ph67.preheader ], [ %i.bw, %.lr.ph67.prol ]
  %i.bx = sub i64 %.1.i4666.ph, %.033
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader191, %.lr.ph
  %i.bz = phi i64 [ %i.cd, %.lr.ph ], [ %.ph192, %.lr.ph.preheader191 ] ; 3 uses
  %.0.i4465 = phi i64 [ %i.bz, %.lr.ph ], [ %.0.i4465.ph, %.lr.ph.preheader191 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0.i4465 ; 2 uses
  %.0.copyload.i48 = load i64, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.031, i64 %.0.i4465
  %.0.copyload.i = load i64, ptr %i.cb, align 1
  %i.cc = xor i64 %.0.copyload.i, %.0.copyload.i48
  store i64 %i.cc, ptr %i.ca, align 1
  %i.cd = add nuw nsw i64 %i.bz, 8                ; 2 uses
  %.not.i45 = icmp ugt i64 %i.cd, %.033
  br i1 %.not.i45, label %.preheader63, label %.lr.ph, !llvm.loop !38

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader:       ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block116, %vec.epilog.middle.block, %.preheader63
  br i1 %.not.i4564, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88:     ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %i.ce = add i64 %.033, -8                       ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.ce, 120
  br i1 %min.iters.check134, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, label %vector.memcheck127

vector.memcheck127:                               ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88
  %i.ch = and i64 %.033, -8                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep128 = getelementptr i8, ptr %i.ci, i64 %i.ch
  %scevgep129 = getelementptr i8, ptr %.031, i64 %i.ch
  %bound0130 = icmp ult ptr %i.ah, %scevgep129
  %bound1131 = icmp ult ptr %.031, %scevgep128
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec137 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.cj = shl i64 %n.vec137, 3                    ; 3 uses
  %i.ck = or disjoint i64 %i.cj, 8
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next144, %vector.body138 ] ; 2 uses
  %i.cl = shl i64 %index139, 3                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load140 = load <2 x i64>, ptr %i.cm, align 1, !alias.scope !39, !noalias !42
  %wide.load141 = load <2 x i64>, ptr %i.cn, align 1, !alias.scope !39, !noalias !42
  %i.co = getelementptr inbounds nuw i8, ptr %.031, i64 %i.cl ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load142 = load <2 x i64>, ptr %i.co, align 1, !alias.scope !42
  %wide.load143 = load <2 x i64>, ptr %i.cp, align 1, !alias.scope !42
  %i.cq = xor <2 x i64> %wide.load142, %wide.load140
  %i.cr = xor <2 x i64> %wide.load143, %wide.load141
  store <2 x i64> %i.cq, ptr %i.cm, align 1, !alias.scope !39, !noalias !42
  store <2 x i64> %i.cr, ptr %i.cn, align 1, !alias.scope !39, !noalias !42
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.cs, label %middle.block145, label %vector.body138, !llvm.loop !44

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %i.cg, %n.vec137
  br i1 %cmp.n146, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190:    ; preds = %vector.memcheck127, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88, %middle.block145
  %.ph = phi i64 [ 8, %vector.memcheck127 ], [ 8, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.ck, %middle.block145 ]
  %.0.i69.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.cj, %middle.block145 ]
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit47

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %.1.i4666 = phi i64 [ %i.dq, %.lr.ph67 ], [ %.1.i4666.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i4666 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i4666
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !27
  %i.cx = xor i8 %i.cw, %i.cu
  store i8 %i.cx, ptr %i.ct, align 1, !tbaa !27
  %i.cy = add nuw nsw i64 %.1.i4666, 1            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %.031, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !27
  %i.dd = xor i8 %i.dc, %i.da
  store i8 %i.dd, ptr %i.cz, align 1, !tbaa !27
  %i.de = add nuw nsw i64 %.1.i4666, 2            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.de ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %.031, i64 %i.de
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  %i.dj = xor i8 %i.di, %i.dg
  store i8 %i.dj, ptr %i.df, align 1, !tbaa !27
  %i.dk = add nuw nsw i64 %.1.i4666, 3            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.dn = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dk
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !27
  %i.dp = xor i8 %i.do, %i.dm
  store i8 %i.dp, ptr %i.dl, align 1, !tbaa !27
  %i.dq = add nuw nsw i64 %.1.i4666, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dq, %.033
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67, !llvm.loop !45

.preheader:                                       ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47, %middle.block145, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %.0.i.lcssa = phi i64 [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader ], [ %i.cj, %middle.block145 ], [ %i.es, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ] ; 10 uses
  %i.dr = icmp samesign ult i64 %.0.i.lcssa, %.033
  br i1 %i.dr, label %iter.check175, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check175:                                    ; preds = %.preheader
  %i.ds = sub nuw i64 %.033, %.0.i.lcssa          ; 7 uses
  %min.iters.check158 = icmp ult i64 %i.ds, 8
  br i1 %min.iters.check158, label %.lr.ph73.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check175
  %i.dt = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep150 = getelementptr i8, ptr %i.dt, i64 %.0.i.lcssa
  %i.du = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep151 = getelementptr i8, ptr %i.du, i64 %.033
  %scevgep152 = getelementptr i8, ptr %.031, i64 %.0.i.lcssa
  %scevgep153 = getelementptr i8, ptr %.031, i64 %.033
  %bound0154 = icmp ult ptr %scevgep150, %scevgep153
  %bound1155 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph73.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck149
  %min.iters.check160 = icmp ult i64 %i.ds, 32
  br i1 %min.iters.check160, label %vec.epilog.ph179, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %n.mod.vf162 = and i64 %i.ds, 24
  %n.vec163 = and i64 %i.ds, -32                  ; 4 uses
  %i.dv = add i64 %.0.i.lcssa, %n.vec163
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %i.dw = add i64 %.0.i.lcssa, %index165          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %wide.load166 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %wide.load167 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.dz = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dw ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load168 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !27, !alias.scope !49
  %wide.load169 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !27, !alias.scope !49
  %i.eb = xor <16 x i8> %wide.load168, %wide.load166
  %i.ec = xor <16 x i8> %wide.load169, %wide.load167
  store <16 x i8> %i.eb, ptr %i.dx, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  store <16 x i8> %i.ec, ptr %i.dy, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %index.next170 = add nuw i64 %index165, 32      ; 2 uses
  %i.ed = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.ed, label %middle.block171, label %vector.body164, !llvm.loop !51

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.ds, %n.vec163
  br i1 %cmp.n172, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block171
  %min.epilog.iters.check178 = icmp eq i64 %n.mod.vf162, 0
  br i1 %min.epilog.iters.check178, label %.lr.ph73.preheader, label %vec.epilog.ph179, !prof !34

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check177
  %vec.epilog.resume.val173 = phi i64 [ %n.vec163, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %i.ds, -8                   ; 3 uses
  %i.ee = add i64 %.0.i.lcssa, %n.vec181
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val173, %vec.epilog.ph179 ], [ %index.next186, %vec.epilog.vector.body182 ] ; 2 uses
  %i.ef = add i64 %.0.i.lcssa, %index183          ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ef ; 2 uses
  %wide.load184 = load <8 x i8>, ptr %i.eg, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.eh = getelementptr inbounds nuw i8, ptr %.031, i64 %i.ef
  %wide.load185 = load <8 x i8>, ptr %i.eh, align 1, !tbaa !27, !alias.scope !49
  %4 = xor <8 x i8> %wide.load185, %wide.load184
  store <8 x i8> %4, ptr %i.eg, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %index.next186 = add nuw i64 %index183, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.ei, label %vec.epilog.middle.block187, label %vec.epilog.vector.body182, !llvm.loop !52

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body182
  %cmp.n188 = icmp eq i64 %i.ds, %n.vec181
  br i1 %cmp.n188, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %vector.memcheck149, %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block187
  %.1.i72.ph = phi i64 [ %.0.i.lcssa, %iter.check175 ], [ %.0.i.lcssa, %vector.memcheck149 ], [ %i.dv, %vec.epilog.iter.check177 ], [ %i.ee, %vec.epilog.middle.block187 ] ; 4 uses
  %i.ej = sub i64 %.033, %.1.i72.ph
  %xtraiter194 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader, %.lr.ph73.prol
  %.1.i72.prol = phi i64 [ %i.ep, %.lr.ph73.prol ], [ %.1.i72.ph, %.lr.ph73.preheader ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72.prol ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i72.prol
  %i.en = load i8, ptr %i.em, align 1, !tbaa !27
  %i.eo = xor i8 %i.en, %i.el
  store i8 %i.eo, ptr %i.ek, align 1, !tbaa !27
  %i.ep = add nuw nsw i64 %.1.i72.prol, 1         ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !53

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.1.i72.unr = phi i64 [ %.1.i72.ph, %.lr.ph73.preheader ], [ %i.ep, %.lr.ph73.prol ]
  %i.eq = sub i64 %.1.i72.ph, %.033
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73

_ZL11mbedtls_xorPhPKhS1_m.exit47:                 ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, %_ZL11mbedtls_xorPhPKhS1_m.exit47
  %i.es = phi i64 [ %i.ew, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190 ] ; 3 uses
  %.0.i69 = phi i64 [ %i.es, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.0.i69.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190 ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i69 ; 2 uses
  %.0.copyload.i50 = load i64, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.031, i64 %.0.i69
  %.0.copyload.i49 = load i64, ptr %i.eu, align 1
  %i.ev = xor i64 %.0.copyload.i49, %.0.copyload.i50
  store i64 %i.ev, ptr %i.et, align 1
  %i.ew = add nuw nsw i64 %i.es, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.ew, %.033
  br i1 %.not.i, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47, !llvm.loop !54

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.1.i72 = phi i64 [ %i.fu, %.lr.ph73 ], [ %.1.i72.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i72
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !27
  %i.fb = xor i8 %i.fa, %i.ey
  store i8 %i.fb, ptr %i.ex, align 1, !tbaa !27
  %i.fc = add nuw nsw i64 %.1.i72, 1              ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fc ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !27
  %i.ff = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fc
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = xor i8 %i.fg, %i.fe
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !27
  %i.fi = add nuw nsw i64 %.1.i72, 2              ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fi ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !27
  %i.fl = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fi
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  %i.fn = xor i8 %i.fm, %i.fk
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !27
  %i.fo = add nuw nsw i64 %.1.i72, 3              ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fo ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fo
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !27
  %i.ft = xor i8 %i.fs, %i.fq
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !27
  %i.fu = add nuw nsw i64 %.1.i72, 4              ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %i.fu, %.033
  br i1 %exitcond76.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73, !llvm.loop !55

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block171, %vec.epilog.middle.block187, %.preheader
  %i.fv = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %mbedtls_md_update.exit56, label %bb.o

bb.o:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !12
  switch i32 %i.fx, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.p
    i32 9, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !11
  %i.ga = call i32 @mbedtls_sha1_starts(ptr noundef %i.fz)
  br label %mbedtls_md_starts.exit54

bb.q:                                             ; preds = %bb.o
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !11
  %i.gd = call i32 @mbedtls_sha256_starts(ptr noundef %i.gc, i32 noundef 0)
  br label %mbedtls_md_starts.exit54

mbedtls_md_starts.exit54:                         ; preds = %bb.p, %bb.q
  %.0.i53 = phi i32 [ %i.gd, %bb.q ], [ %i.ga, %bb.p ] ; 2 uses
  %.not43 = icmp eq i32 %.0.i53, 0
  br i1 %.not43, label %bb.r, label %mbedtls_md_update.exit56

bb.r:                                             ; preds = %mbedtls_md_starts.exit54
  %i.ge = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 5
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !16
  %i.gh = zext i8 %i.gg to i64                    ; 2 uses
  %i.gi = load i32, ptr %i.ge, align 4, !tbaa !12
  switch i32 %i.gi, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.s
    i32 9, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !11
  %i.gl = call i32 @mbedtls_sha1_update(ptr noundef %i.gk, ptr noundef %i.ag, i64 noundef %i.gh)
  br label %mbedtls_md_update.exit56

bb.t:                                             ; preds = %bb.r
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !11
  %i.go = call i32 @mbedtls_sha256_update(ptr noundef %i.gn, ptr noundef %i.ag, i64 noundef %i.gh)
  br label %mbedtls_md_update.exit56

mbedtls_md_update.exit56:                         ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit, %bb.o, %bb.h, %bb.i, %bb.e, %bb.t, %bb.s, %bb.r, %mbedtls_md_starts.exit54, %bb.l, %mbedtls_md_update.exit, %mbedtls_md_starts.exit
  %.032 = phi i32 [ %.0.i51, %mbedtls_md_starts.exit ], [ %.0.i52, %mbedtls_md_update.exit ], [ %i.ab, %bb.l ], [ %.0.i53, %mbedtls_md_starts.exit54 ], [ -20736, %bb.h ], [ %i.gl, %bb.s ], [ -20736, %bb.e ], [ %i.go, %bb.t ], [ -20736, %bb.r ], [ -20736, %bb.i ], [ -20736, %bb.o ], [ -20736, %_ZL11mbedtls_xorPhPKhS1_m.exit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 32)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %mbedtls_md_update.exit56
  %.0 = phi i32 [ %.032, %mbedtls_md_update.exit56 ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ -20736, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_update(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_md_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mbedtls_md_update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %mbedtls_md_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 4, !tbaa !12
  switch i32 %i.g, label %mbedtls_md_update.exit [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @mbedtls_sha1_update(ptr noundef %i.i, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = tail call i32 @mbedtls_sha256_update(ptr noundef %i.l, ptr noundef %1, i64 noundef %2)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -20736, %bb.a ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ %i.m, %bb.f ], [ -20736, %bb.d ], [ %i.j, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_finish(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %mbedtls_md_finish.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mbedtls_md_finish.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
end_hunk_0
begin_hunk_1_@mbedtls_md_hmac_reset:bb.a
mbedtls_md_starts.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.m, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %mbedtls_md_update.exit

bb.g:                                             ; preds = %mbedtls_md_starts.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64                      ; 2 uses
  %i.r = load i32, ptr %i.n, align 4, !tbaa !12
  switch i32 %i.r, label %mbedtls_md_update.exit [
    i32 5, label %bb.h
    i32 9, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = tail call i32 @mbedtls_sha1_update(ptr noundef %i.t, ptr noundef nonnull %i.e, i64 noundef %i.q)
  br label %mbedtls_md_update.exit

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i32 @mbedtls_sha256_update(ptr noundef %i.w, ptr noundef nonnull %i.e, i64 noundef %i.q)
  br label %mbedtls_md_update.exit

mbedtls_md_update.exit:                           ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %mbedtls_md_starts.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.u, %bb.h ], [ -20736, %bb.a ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ %.0.i, %mbedtls_md_starts.exit ], [ %i.x, %bb.i ], [ -20736, %bb.g ], [ -20736, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.mbedtls_md_context_t, align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_md_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.b = call i32 @mbedtls_md_setup(ptr noundef nonnull %6, ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %mbedtls_md_hmac_update.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = call i32 @mbedtls_md_hmac_starts(ptr noundef nonnull %6, ptr noundef %1, i64 noundef %2) ; 2 uses
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %bb.d, label %mbedtls_md_hmac_update.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %mbedtls_md_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %mbedtls_md_hmac_update.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.d, align 4, !tbaa !12
  switch i32 %i.i, label %mbedtls_md_hmac_update.exit.thread [
    i32 5, label %bb.g
    i32 9, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = call i32 @mbedtls_sha1_update(ptr noundef %i.k, ptr noundef %3, i64 noundef %4)
  br label %mbedtls_md_hmac_update.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = call i32 @mbedtls_sha256_update(ptr noundef %i.n, ptr noundef %3, i64 noundef %4)
  br label %mbedtls_md_hmac_update.exit

mbedtls_md_hmac_update.exit:                      ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.l, %bb.g ], [ %i.o, %bb.h ] ; 2 uses
  %.not14 = icmp eq i32 %.0.i, 0
  br i1 %.not14, label %bb.i, label %mbedtls_md_hmac_update.exit.thread

bb.i:                                             ; preds = %mbedtls_md_hmac_update.exit
  %i.p = call i32 @mbedtls_md_hmac_finish(ptr noundef nonnull %6, ptr noundef %5)
  br label %mbedtls_md_hmac_update.exit.thread

mbedtls_md_hmac_update.exit.thread:               ; preds = %bb.f, %bb.e, %bb.i, %mbedtls_md_hmac_update.exit, %bb.c, %bb.b
  %.0.ph = phi i32 [ -20736, %bb.f ], [ -20736, %bb.e ], [ %i.p, %bb.i ], [ %.0.i, %mbedtls_md_hmac_update.exit ], [ %i.c, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.q = icmp eq ptr %.pr, null
  br i1 %i.q, label %mbedtls_md_free.exit, label %bb.j

bb.j:                                             ; preds = %mbedtls_md_hmac_update.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %.pr, align 4, !tbaa !12
  switch i32 %i.t, label %bb.n [
    i32 5, label %bb.l
    i32 9, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void @mbedtls_sha1_free(ptr noundef nonnull %i.s)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @mbedtls_sha256_free(ptr noundef nonnull %i.s)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !11
  call void @free(ptr noundef %i.u) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %.not14.i = icmp eq ptr %i.w, null
  br i1 %.not14.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %6, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.w, i64 noundef %i.ab)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %6, i64 noundef 24)
  br label %mbedtls_md_free.exit

mbedtls_md_free.exit:                             ; preds = %bb.d, %bb.q, %mbedtls_md_hmac_update.exit.thread, %bb.a
  %.08 = phi i32 [ -20736, %bb.a ], [ %.0.ph, %mbedtls_md_hmac_update.exit.thread ], [ %.0.ph, %bb.q ], [ -20736, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i32 %.08
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS20mbedtls_md_context_t", !9, i64 0, !10, i64 8, !10, i64 16}
!9 = !{!"p1 _ZTS17mbedtls_md_info_t", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !10, i64 8}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTS17mbedtls_md_info_t", !14, i64 0, !5, i64 4, !5, i64 5}
!14 = !{!"_ZTS17mbedtls_md_type_t", !5, i64 0}
!15 = !{!8, !10, i64 16}
!16 = !{!13, !5, i64 5}
!17 = !{!13, !5, i64 4}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !24, !25, !26}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!5, !5, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !24, !25, !26}
!34 = !{!"branch_weights", i32 8, i32 24}
!35 = distinct !{!35, !24, !25, !26}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !24, !25}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !24, !25, !26}
!45 = distinct !{!45, !24, !25}
!46 = !{!47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!50}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !24, !25, !26}
!52 = distinct !{!52, !24, !25, !26}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !24, !25}
!55 = distinct !{!55, !24, !25}
end_hunk_1
