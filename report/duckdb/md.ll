inline.NumInlined: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mbedtls_md_info_from_ctx:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_starts(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
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
  %.0.i44.lcssa = phi i64 [ 0, %bb.n ], [ %i.aq, %middle.block ], [ %i.ca, %.lr.ph ] ; 10 uses
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
  %i.bp = xor <8 x i8> %wide.load123, %wide.load122
  store <8 x i8> %i.bp, ptr %i.bn, align 1, !tbaa !27, !alias.scope !28, !noalias !31
  %index.next124 = add nuw i64 %index121, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next124, %n.vec120
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %i.bb, %n.vec120
  br i1 %cmp.n125, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %vector.memcheck95, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i4666.ph = phi i64 [ %.0.i44.lcssa, %iter.check ], [ %.0.i44.lcssa, %vector.memcheck95 ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ] ; 4 uses
  %i.br = sub i64 %.033, %.1.i4666.ph
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader, %.lr.ph67.prol
  %.1.i4666.prol = phi i64 [ %i.bx, %.lr.ph67.prol ], [ %.1.i4666.ph, %.lr.ph67.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i4666.prol ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i4666.prol
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !27
  %i.bw = xor i8 %i.bv, %i.bt
  store i8 %i.bw, ptr %i.bs, align 1, !tbaa !27
  %i.bx = add nuw nsw i64 %.1.i4666.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !36

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader
  %.1.i4666.unr = phi i64 [ %.1.i4666.ph, %.lr.ph67.preheader ], [ %i.bx, %.lr.ph67.prol ]
  %i.by = sub i64 %.1.i4666.ph, %.033
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader191, %.lr.ph
  %i.ca = phi i64 [ %i.ce, %.lr.ph ], [ %.ph192, %.lr.ph.preheader191 ] ; 3 uses
  %.0.i4465 = phi i64 [ %i.ca, %.lr.ph ], [ %.0.i4465.ph, %.lr.ph.preheader191 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0.i4465 ; 2 uses
  %.0.copyload.i48 = load i64, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.031, i64 %.0.i4465
  %.0.copyload.i = load i64, ptr %i.cc, align 1
  %i.cd = xor i64 %.0.copyload.i, %.0.copyload.i48
  store i64 %i.cd, ptr %i.cb, align 1
  %i.ce = add nuw nsw i64 %i.ca, 8                ; 2 uses
  %.not.i45 = icmp ugt i64 %i.ce, %.033
  br i1 %.not.i45, label %.preheader63, label %.lr.ph, !llvm.loop !38

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader:       ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block116, %vec.epilog.middle.block, %.preheader63
  br i1 %.not.i4564, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88:     ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %i.cf = add i64 %.033, -8                       ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.cf, 120
  br i1 %min.iters.check134, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, label %vector.memcheck127

vector.memcheck127:                               ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88
  %i.ci = and i64 %.033, -8                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep128 = getelementptr i8, ptr %i.cj, i64 %i.ci
  %scevgep129 = getelementptr i8, ptr %.031, i64 %i.ci
  %bound0130 = icmp ult ptr %i.ah, %scevgep129
  %bound1131 = icmp ult ptr %.031, %scevgep128
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec137 = and i64 %i.ch, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec137, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 8
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next144, %vector.body138 ] ; 2 uses
  %i.cm = shl i64 %index139, 3                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load140 = load <2 x i64>, ptr %i.cn, align 1, !alias.scope !39, !noalias !42
  %wide.load141 = load <2 x i64>, ptr %i.co, align 1, !alias.scope !39, !noalias !42
  %i.cp = getelementptr inbounds nuw i8, ptr %.031, i64 %i.cm ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load142 = load <2 x i64>, ptr %i.cp, align 1, !alias.scope !42
  %wide.load143 = load <2 x i64>, ptr %i.cq, align 1, !alias.scope !42
  %i.cr = xor <2 x i64> %wide.load142, %wide.load140
  %i.cs = xor <2 x i64> %wide.load143, %wide.load141
  store <2 x i64> %i.cr, ptr %i.cn, align 1, !alias.scope !39, !noalias !42
  store <2 x i64> %i.cs, ptr %i.co, align 1, !alias.scope !39, !noalias !42
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.ct, label %middle.block145, label %vector.body138, !llvm.loop !44

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %i.ch, %n.vec137
  br i1 %cmp.n146, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190:    ; preds = %vector.memcheck127, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88, %middle.block145
  %.ph = phi i64 [ 8, %vector.memcheck127 ], [ 8, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.cl, %middle.block145 ]
  %.0.i69.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.ck, %middle.block145 ]
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit47

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %.1.i4666 = phi i64 [ %i.dr, %.lr.ph67 ], [ %.1.i4666.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i4666 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i4666
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !27
  %i.cy = xor i8 %i.cx, %i.cv
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !27
  %i.cz = add nuw nsw i64 %.1.i4666, 1            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %.031, i64 %i.cz
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !27
  %i.de = xor i8 %i.dd, %i.db
  store i8 %i.de, ptr %i.da, align 1, !tbaa !27
  %i.df = add nuw nsw i64 %.1.i4666, 2            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %.031, i64 %i.df
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !27
  %i.dk = xor i8 %i.dj, %i.dh
  store i8 %i.dk, ptr %i.dg, align 1, !tbaa !27
  %i.dl = add nuw nsw i64 %.1.i4666, 3            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dl
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27
  %i.dq = xor i8 %i.dp, %i.dn
  store i8 %i.dq, ptr %i.dm, align 1, !tbaa !27
  %i.dr = add nuw nsw i64 %.1.i4666, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dr, %.033
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67, !llvm.loop !45

.preheader:                                       ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47, %middle.block145, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %.0.i.lcssa = phi i64 [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader ], [ %i.ck, %middle.block145 ], [ %i.eu, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ] ; 10 uses
  %i.ds = icmp samesign ult i64 %.0.i.lcssa, %.033
  br i1 %i.ds, label %iter.check175, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check175:                                    ; preds = %.preheader
  %i.dt = sub nuw i64 %.033, %.0.i.lcssa          ; 7 uses
  %min.iters.check158 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check158, label %.lr.ph73.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %iter.check175
  %i.du = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep150 = getelementptr i8, ptr %i.du, i64 %.0.i.lcssa
  %i.dv = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep151 = getelementptr i8, ptr %i.dv, i64 %.033
  %scevgep152 = getelementptr i8, ptr %.031, i64 %.0.i.lcssa
  %scevgep153 = getelementptr i8, ptr %.031, i64 %.033
  %bound0154 = icmp ult ptr %scevgep150, %scevgep153
  %bound1155 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  br i1 %found.conflict156, label %.lr.ph73.preheader, label %vector.main.loop.iter.check159

vector.main.loop.iter.check159:                   ; preds = %vector.memcheck149
  %min.iters.check160 = icmp ult i64 %i.dt, 32
  br i1 %min.iters.check160, label %vec.epilog.ph179, label %vector.ph161

vector.ph161:                                     ; preds = %vector.main.loop.iter.check159
  %n.mod.vf162 = and i64 %i.dt, 24
  %n.vec163 = and i64 %i.dt, -32                  ; 4 uses
  %i.dw = add i64 %.0.i.lcssa, %n.vec163
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %i.dx = add i64 %.0.i.lcssa, %index165          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %wide.load166 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %wide.load167 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.ea = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dx ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load168 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !27, !alias.scope !49
  %wide.load169 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !27, !alias.scope !49
  %i.ec = xor <16 x i8> %wide.load168, %wide.load166
  %i.ed = xor <16 x i8> %wide.load169, %wide.load167
  store <16 x i8> %i.ec, ptr %i.dy, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  store <16 x i8> %i.ed, ptr %i.dz, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %index.next170 = add nuw i64 %index165, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.ee, label %middle.block171, label %vector.body164, !llvm.loop !51

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.dt, %n.vec163
  br i1 %cmp.n172, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block171
  %min.epilog.iters.check178 = icmp eq i64 %n.mod.vf162, 0
  br i1 %min.epilog.iters.check178, label %.lr.ph73.preheader, label %vec.epilog.ph179, !prof !34

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check159, %vec.epilog.iter.check177
  %vec.epilog.resume.val173 = phi i64 [ %n.vec163, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check159 ]
  %n.vec181 = and i64 %i.dt, -8                   ; 3 uses
  %i.ef = add i64 %.0.i.lcssa, %n.vec181
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val173, %vec.epilog.ph179 ], [ %index.next186, %vec.epilog.vector.body182 ] ; 2 uses
  %i.eg = add i64 %.0.i.lcssa, %index183          ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.eg ; 2 uses
  %wide.load184 = load <8 x i8>, ptr %i.eh, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %i.ei = getelementptr inbounds nuw i8, ptr %.031, i64 %i.eg
  %wide.load185 = load <8 x i8>, ptr %i.ei, align 1, !tbaa !27, !alias.scope !49
  %i.ej = xor <8 x i8> %wide.load185, %wide.load184
  store <8 x i8> %i.ej, ptr %i.eh, align 1, !tbaa !27, !alias.scope !46, !noalias !49
  %index.next186 = add nuw i64 %index183, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.ek, label %vec.epilog.middle.block187, label %vec.epilog.vector.body182, !llvm.loop !52

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body182
  %cmp.n188 = icmp eq i64 %i.dt, %n.vec181
  br i1 %cmp.n188, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %vector.memcheck149, %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block187
  %.1.i72.ph = phi i64 [ %.0.i.lcssa, %iter.check175 ], [ %.0.i.lcssa, %vector.memcheck149 ], [ %i.dw, %vec.epilog.iter.check177 ], [ %i.ef, %vec.epilog.middle.block187 ] ; 4 uses
  %i.el = sub i64 %.033, %.1.i72.ph
  %xtraiter194 = and i64 %i.el, 3                 ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader, %.lr.ph73.prol
  %.1.i72.prol = phi i64 [ %i.er, %.lr.ph73.prol ], [ %.1.i72.ph, %.lr.ph73.preheader ] ; 3 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72.prol ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !27
  %i.eo = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i72.prol
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !27
  %i.eq = xor i8 %i.ep, %i.en
  store i8 %i.eq, ptr %i.em, align 1, !tbaa !27
  %i.er = add nuw nsw i64 %.1.i72.prol, 1         ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !53

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.1.i72.unr = phi i64 [ %.1.i72.ph, %.lr.ph73.preheader ], [ %i.er, %.lr.ph73.prol ]
  %i.es = sub i64 %.1.i72.ph, %.033
  %i.et = icmp ugt i64 %i.es, -4
  br i1 %i.et, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73

_ZL11mbedtls_xorPhPKhS1_m.exit47:                 ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190, %_ZL11mbedtls_xorPhPKhS1_m.exit47
  %i.eu = phi i64 [ %i.ey, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190 ] ; 3 uses
  %.0.i69 = phi i64 [ %i.eu, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.0.i69.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader190 ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i69 ; 2 uses
  %.0.copyload.i50 = load i64, ptr %i.ev, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.031, i64 %.0.i69
  %.0.copyload.i49 = load i64, ptr %i.ew, align 1
  %i.ex = xor i64 %.0.copyload.i49, %.0.copyload.i50
  store i64 %i.ex, ptr %i.ev, align 1
  %i.ey = add nuw nsw i64 %i.eu, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.ey, %.033
  br i1 %.not.i, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47, !llvm.loop !54

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.1.i72 = phi i64 [ %i.fw, %.lr.ph73 ], [ %.1.i72.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %.031, i64 %.1.i72
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fd = xor i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !27
  %i.fe = add nuw nsw i64 %.1.i72, 1              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !27
  %i.fj = xor i8 %i.fi, %i.fg
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !27
  %i.fk = add nuw nsw i64 %.1.i72, 2              ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fk
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !27
  %i.fp = xor i8 %i.fo, %i.fm
  store i8 %i.fp, ptr %i.fl, align 1, !tbaa !27
  %i.fq = add nuw nsw i64 %.1.i72, 3              ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %.031, i64 %i.fq
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !27
  %i.fv = xor i8 %i.fu, %i.fs
  store i8 %i.fv, ptr %i.fr, align 1, !tbaa !27
  %i.fw = add nuw nsw i64 %.1.i72, 4              ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %i.fw, %.033
  br i1 %exitcond76.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73, !llvm.loop !55

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block171, %vec.epilog.middle.block187, %.preheader
  %i.fx = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %mbedtls_md_update.exit56, label %bb.o

bb.o:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !12
  switch i32 %i.fz, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.p
    i32 9, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !11
  %i.gc = call i32 @mbedtls_sha1_starts(ptr noundef %i.gb)
  br label %mbedtls_md_starts.exit54

bb.q:                                             ; preds = %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !11
  %i.gf = call i32 @mbedtls_sha256_starts(ptr noundef %i.ge, i32 noundef 0)
  br label %mbedtls_md_starts.exit54

mbedtls_md_starts.exit54:                         ; preds = %bb.p, %bb.q
  %.0.i53 = phi i32 [ %i.gf, %bb.q ], [ %i.gc, %bb.p ] ; 2 uses
  %.not43 = icmp eq i32 %.0.i53, 0
  br i1 %.not43, label %bb.r, label %mbedtls_md_update.exit56

bb.r:                                             ; preds = %mbedtls_md_starts.exit54
  %i.gg = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 5
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !16
  %i.gj = zext i8 %i.gi to i64                    ; 2 uses
  %i.gk = load i32, ptr %i.gg, align 4, !tbaa !12
  switch i32 %i.gk, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.s
    i32 9, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !11
  %i.gn = call i32 @mbedtls_sha1_update(ptr noundef %i.gm, ptr noundef %i.ag, i64 noundef %i.gj)
  br label %mbedtls_md_update.exit56

bb.t:                                             ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !11
  %i.gq = call i32 @mbedtls_sha256_update(ptr noundef %i.gp, ptr noundef %i.ag, i64 noundef %i.gj)
  br label %mbedtls_md_update.exit56

mbedtls_md_update.exit56:                         ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit, %bb.o, %bb.h, %bb.i, %bb.e, %bb.t, %bb.s, %bb.r, %mbedtls_md_starts.exit54, %bb.l, %mbedtls_md_update.exit, %mbedtls_md_starts.exit
  %.032 = phi i32 [ %.0.i51, %mbedtls_md_starts.exit ], [ %.0.i52, %mbedtls_md_update.exit ], [ %i.ab, %bb.l ], [ %.0.i53, %mbedtls_md_starts.exit54 ], [ -20736, %bb.h ], [ %i.gn, %bb.s ], [ -20736, %bb.e ], [ %i.gq, %bb.t ], [ -20736, %bb.r ], [ -20736, %bb.i ], [ -20736, %bb.o ], [ -20736, %_ZL11mbedtls_xorPhPKhS1_m.exit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 32)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %mbedtls_md_update.exit56
  %.0 = phi i32 [ %.032, %mbedtls_md_update.exit56 ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ -20736, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_update(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
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
define hidden i32 @mbedtls_md_hmac_finish(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %mbedtls_md_finish.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
