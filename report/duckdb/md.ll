Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/md?download=true
inline.NumInlined: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@mbedtls_md_get_type:bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @mbedtls_md_list() local_unnamed_addr #0 {
bb.a:
  ret ptr @_ZL17supported_digests
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_info_from_string(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str, ptr noundef nonnull dereferenceable(1) %0) #12
  %.not10 = icmp eq i32 %i.b, 0
  %_ZL19mbedtls_sha256_info..i = select i1 %.not10, ptr @_ZL19mbedtls_sha256_info, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.07 = phi ptr [ %_ZL19mbedtls_sha256_info..i, %.preheader.preheader ], [ null, %bb.a ]
  ret ptr %.07
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_get_name(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !14
  %.not10 = icmp eq i32 %i.b, 9
  %i.c = select i1 %.not10, ptr @.str, ptr null
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.c, %.preheader ], [ null, %bb.a ]
  ret ptr %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @mbedtls_md_info_from_ctx(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
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
  %i.l = load i32, ptr %i.c, align 4, !tbaa !14
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
  %i.s = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mbedtls_md_update.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.s, align 4, !tbaa !14
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
  %i.ac = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
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
  %.032 = phi ptr [ %i.a, %bb.m ], [ %1, %bb.d ]  ; 26 uses
  %.031 = phi i64 [ %i.af, %bb.m ], [ %2, %bb.d ] ; 21 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 %.pre-phi ; 11 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 54, i64 %.pre-phi, i1 false)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = zext i8 %i.ak to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 92, i64 %i.al, i1 false)
  %.not.i4564 = icmp samesign ult i64 %.031, 8    ; 2 uses
  br i1 %.not.i4564, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.am = add i64 %.031, -8                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 72
  br i1 %min.iters.check, label %.lr.ph.preheader186, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ap = and i64 %.031, -8                       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ap
  %scevgep90 = getelementptr i8, ptr %.032, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep90
  %bound1 = icmp ult ptr %.032, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader186, label %vector.ph

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
  %wide.load = load <2 x i64>, ptr %i.at, align 1, !alias.scope !42, !noalias !43
  %wide.load91 = load <2 x i64>, ptr %i.au, align 1, !alias.scope !42, !noalias !43
  %i.av = getelementptr inbounds nuw i8, ptr %.032, i64 %i.as ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load92 = load <2 x i64>, ptr %i.av, align 1, !alias.scope !43
  %wide.load93 = load <2 x i64>, ptr %i.aw, align 1, !alias.scope !43
  %i.ax = xor <2 x i64> %wide.load92, %wide.load
  %i.ay = xor <2 x i64> %wide.load93, %wide.load91
  store <2 x i64> %i.ax, ptr %i.at, align 1, !alias.scope !42, !noalias !43
  store <2 x i64> %i.ay, ptr %i.au, align 1, !alias.scope !42, !noalias !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.preheader63, label %.lr.ph.preheader186

.lr.ph.preheader186:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph187 = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  %.0.i4465.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.preheader63:                                     ; preds = %.lr.ph, %middle.block, %bb.n
  %.0.i44.lcssa = phi i64 [ 0, %bb.n ], [ %i.aq, %middle.block ], [ %i.cb, %.lr.ph ] ; 10 uses
  %i.ba = icmp samesign ult i64 %.0.i44.lcssa, %.031
  br i1 %i.ba, label %iter.check, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader

iter.check:                                       ; preds = %.preheader63
  %i.bb = sub nuw i64 %.031, %.0.i44.lcssa        ; 7 uses
  %min.iters.check104 = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check104, label %.lr.ph67.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %iter.check
  %scevgep96 = getelementptr i8, ptr %i.ag, i64 %.0.i44.lcssa
  %scevgep97 = getelementptr i8, ptr %i.ag, i64 %.031
  %scevgep98 = getelementptr i8, ptr %.032, i64 %.0.i44.lcssa
  %scevgep99 = getelementptr i8, ptr %.032, i64 %.031
  %bound0100 = icmp ult ptr %scevgep96, %scevgep99
  %bound1101 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck95
  %min.iters.check105 = icmp ult i64 %i.bb, 32
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 24
  %n.vec107 = and i64 %i.bb, -32                  ; 4 uses
  %i.bd = add i64 %.0.i44.lcssa, %n.vec107
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.be = add nuw i64 %.0.i44.lcssa, %index109    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load110 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !47, !alias.scope !48, !noalias !49
  %wide.load111 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !47, !alias.scope !48, !noalias !49
  %i.bh = getelementptr inbounds nuw i8, ptr %.032, i64 %i.be ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load112 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !47, !alias.scope !49
  %wide.load113 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !47, !alias.scope !49
  %i.bj = xor <16 x i8> %wide.load112, %wide.load110
  %i.bk = xor <16 x i8> %wide.load113, %wide.load111
  store <16 x i8> %i.bj, ptr %i.bf, align 1, !tbaa !47, !alias.scope !48, !noalias !49
  store <16 x i8> %i.bk, ptr %i.bg, align 1, !tbaa !47, !alias.scope !48, !noalias !49
  %index.next114 = add nuw i64 %index109, 32      ; 2 uses
  %i.bl = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.bl, label %middle.block115, label %vector.body108, !llvm.loop !25

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.bb, %n.vec107
  br i1 %cmp.n116, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block115
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec107, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec118 = and i64 %i.bb, -8                   ; 3 uses
  %i.bm = add i64 %.0.i44.lcssa, %n.vec118
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = add nuw i64 %.0.i44.lcssa, %index119    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bn ; 2 uses
  %wide.load120 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !47, !alias.scope !48, !noalias !49
  %i.bp = getelementptr inbounds nuw i8, ptr %.032, i64 %i.bn
  %wide.load121 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !47, !alias.scope !49
  %i.bq = xor <8 x i8> %wide.load121, %wide.load120
  store <8 x i8> %i.bq, ptr %i.bo, align 1, !tbaa !47, !alias.scope !48, !noalias !49
  %index.next122 = add nuw i64 %index119, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next122, %n.vec118
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %i.bb, %n.vec118
  br i1 %cmp.n123, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %vector.memcheck95, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i4666.ph = phi i64 [ %.0.i44.lcssa, %iter.check ], [ %.0.i44.lcssa, %vector.memcheck95 ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 4 uses
  %i.bs = sub i64 %.031, %.1.i4666.ph
  %xtraiter = and i64 %i.bs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader, %.lr.ph67.prol
  %.1.i4666.prol = phi i64 [ %i.by, %.lr.ph67.prol ], [ %.1.i4666.ph, %.lr.ph67.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i4666.prol ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %.032, i64 %.1.i4666.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !47
  %i.bx = xor i8 %i.bw, %i.bu
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !47
  %i.by = add nuw nsw i64 %.1.i4666.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !27

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader
  %.1.i4666.unr = phi i64 [ %.1.i4666.ph, %.lr.ph67.preheader ], [ %i.by, %.lr.ph67.prol ]
  %i.bz = sub i64 %.1.i4666.ph, %.031
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.preheader186, %.lr.ph
  %i.cb = phi i64 [ %i.cf, %.lr.ph ], [ %.ph187, %.lr.ph.preheader186 ] ; 3 uses
  %.0.i4465 = phi i64 [ %i.cb, %.lr.ph ], [ %.0.i4465.ph, %.lr.ph.preheader186 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0.i4465 ; 2 uses
  %.0.copyload.i48 = load i64, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.032, i64 %.0.i4465
  %.0.copyload.i = load i64, ptr %i.cd, align 1
  %i.ce = xor i64 %.0.copyload.i, %.0.copyload.i48
  store i64 %i.ce, ptr %i.cc, align 1
  %i.cf = add nuw nsw i64 %i.cb, 8                ; 2 uses
  %.not.i45 = icmp ugt i64 %i.cf, %.031
  br i1 %.not.i45, label %.preheader63, label %.lr.ph, !llvm.loop !28

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader:       ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block115, %vec.epilog.middle.block, %.preheader63
  br i1 %.not.i4564, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88:     ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %i.cg = add i64 %.031, -8                       ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.cg, 104
  br i1 %min.iters.check132, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185, label %vector.memcheck125

vector.memcheck125:                               ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88
  %i.cj = and i64 %.031, -8                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep126 = getelementptr i8, ptr %i.ck, i64 %i.cj
  %scevgep127 = getelementptr i8, ptr %.032, i64 %i.cj
  %bound0128 = icmp ult ptr %i.ah, %scevgep127
  %bound1129 = icmp ult ptr %.032, %scevgep126
  %found.conflict130 = and i1 %bound0128, %bound1129
  br i1 %found.conflict130, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck125
  %n.vec134 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec134, 3                    ; 3 uses
  %i.cm = or disjoint i64 %i.cl, 8
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %i.cn = shl i64 %index136, 3                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load137 = load <2 x i64>, ptr %i.co, align 1, !alias.scope !52, !noalias !53
  %wide.load138 = load <2 x i64>, ptr %i.cp, align 1, !alias.scope !52, !noalias !53
  %i.cq = getelementptr inbounds nuw i8, ptr %.032, i64 %i.cn ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load139 = load <2 x i64>, ptr %i.cq, align 1, !alias.scope !53
  %wide.load140 = load <2 x i64>, ptr %i.cr, align 1, !alias.scope !53
  %i.cs = xor <2 x i64> %wide.load139, %wide.load137
  %i.ct = xor <2 x i64> %wide.load140, %wide.load138
  store <2 x i64> %i.cs, ptr %i.co, align 1, !alias.scope !52, !noalias !53
  store <2 x i64> %i.ct, ptr %i.cp, align 1, !alias.scope !52, !noalias !53
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.cu, label %middle.block142, label %vector.body135, !llvm.loop !32

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.ci, %n.vec134
  br i1 %cmp.n143, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185

_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185:    ; preds = %vector.memcheck125, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88, %middle.block142
  %.ph = phi i64 [ 8, %vector.memcheck125 ], [ 8, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.cm, %middle.block142 ]
  %.0.i69.ph = phi i64 [ 0, %vector.memcheck125 ], [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader88 ], [ %i.cl, %middle.block142 ]
  br label %_ZL11mbedtls_xorPhPKhS1_m.exit47

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %.1.i4666 = phi i64 [ %i.ds, %.lr.ph67 ], [ %.1.i4666.unr, %.lr.ph67.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i4666 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %.032, i64 %.1.i4666
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !47
  %i.cz = xor i8 %i.cy, %i.cw
  store i8 %i.cz, ptr %i.cv, align 1, !tbaa !47
  %i.da = add nuw nsw i64 %.1.i4666, 1            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !47
  %i.dd = getelementptr inbounds nuw i8, ptr %.032, i64 %i.da
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !47
  %i.df = xor i8 %i.de, %i.dc
  store i8 %i.df, ptr %i.db, align 1, !tbaa !47
  %i.dg = add nuw nsw i64 %.1.i4666, 2            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %.032, i64 %i.dg
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !47
  %i.dl = xor i8 %i.dk, %i.di
  store i8 %i.dl, ptr %i.dh, align 1, !tbaa !47
  %i.dm = add nuw nsw i64 %.1.i4666, 3            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !47
  %i.dp = getelementptr inbounds nuw i8, ptr %.032, i64 %i.dm
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !47
  %i.dr = xor i8 %i.dq, %i.do
  store i8 %i.dr, ptr %i.dn, align 1, !tbaa !47
  %i.ds = add nuw nsw i64 %.1.i4666, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ds, %.031
  br i1 %exitcond.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader, label %.lr.ph67, !llvm.loop !33

.preheader:                                       ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47, %middle.block142, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader
  %.0.i.lcssa = phi i64 [ 0, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader ], [ %i.cl, %middle.block142 ], [ %i.ew, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ] ; 10 uses
  %i.dt = icmp samesign ult i64 %.0.i.lcssa, %.031
  br i1 %i.dt, label %iter.check171, label %_ZL11mbedtls_xorPhPKhS1_m.exit

iter.check171:                                    ; preds = %.preheader
  %i.du = sub nuw i64 %.031, %.0.i.lcssa          ; 7 uses
  %min.iters.check155 = icmp ult i64 %i.du, 8
  br i1 %min.iters.check155, label %.lr.ph73.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %iter.check171
  %i.dv = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep147 = getelementptr i8, ptr %i.dv, i64 %.0.i.lcssa
  %i.dw = getelementptr i8, ptr %i.ag, i64 %.pre-phi
  %scevgep148 = getelementptr i8, ptr %i.dw, i64 %.031
  %scevgep149 = getelementptr i8, ptr %.032, i64 %.0.i.lcssa
  %scevgep150 = getelementptr i8, ptr %.032, i64 %.031
  %bound0151 = icmp ult ptr %scevgep147, %scevgep150
  %bound1152 = icmp ult ptr %scevgep149, %scevgep148
  %found.conflict153 = and i1 %bound0151, %bound1152
  br i1 %found.conflict153, label %.lr.ph73.preheader, label %vector.main.loop.iter.check156

vector.main.loop.iter.check156:                   ; preds = %vector.memcheck146
  %min.iters.check157 = icmp ult i64 %i.du, 32
  br i1 %min.iters.check157, label %vec.epilog.ph175, label %vector.ph158

vector.ph158:                                     ; preds = %vector.main.loop.iter.check156
  %i.dx = and i64 %i.du, 24
  %n.vec159 = and i64 %i.du, -32                  ; 4 uses
  %i.dy = add i64 %.0.i.lcssa, %n.vec159
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ] ; 2 uses
  %i.dz = add nuw i64 %.0.i.lcssa, %index161      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load162 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !47, !alias.scope !54, !noalias !55
  %wide.load163 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !47, !alias.scope !54, !noalias !55
  %i.ec = getelementptr inbounds nuw i8, ptr %.032, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load164 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !47, !alias.scope !55
  %wide.load165 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !47, !alias.scope !55
  %i.ee = xor <16 x i8> %wide.load164, %wide.load162
  %i.ef = xor <16 x i8> %wide.load165, %wide.load163
  store <16 x i8> %i.ee, ptr %i.ea, align 1, !tbaa !47, !alias.scope !54, !noalias !55
  store <16 x i8> %i.ef, ptr %i.eb, align 1, !tbaa !47, !alias.scope !54, !noalias !55
  %index.next166 = add nuw i64 %index161, 32      ; 2 uses
  %i.eg = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.eg, label %middle.block167, label %vector.body160, !llvm.loop !37

middle.block167:                                  ; preds = %vector.body160
  %cmp.n168 = icmp eq i64 %i.du, %n.vec159
  br i1 %cmp.n168, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %vec.epilog.iter.check173

vec.epilog.iter.check173:                         ; preds = %middle.block167
  %min.epilog.iters.check174 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check174, label %.lr.ph73.preheader, label %vec.epilog.ph175, !prof !50

vec.epilog.ph175:                                 ; preds = %vector.main.loop.iter.check156, %vec.epilog.iter.check173
  %vec.epilog.resume.val169 = phi i64 [ %n.vec159, %vec.epilog.iter.check173 ], [ 0, %vector.main.loop.iter.check156 ]
  %n.vec176 = and i64 %i.du, -8                   ; 3 uses
  %i.eh = add i64 %.0.i.lcssa, %n.vec176
  br label %vec.epilog.vector.body177

vec.epilog.vector.body177:                        ; preds = %vec.epilog.vector.body177, %vec.epilog.ph175
  %index178 = phi i64 [ %vec.epilog.resume.val169, %vec.epilog.ph175 ], [ %index.next181, %vec.epilog.vector.body177 ] ; 2 uses
  %i.ei = add nuw i64 %.0.i.lcssa, %index178      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ei ; 2 uses
  %wide.load179 = load <8 x i8>, ptr %i.ej, align 1, !tbaa !47, !alias.scope !54, !noalias !55
  %i.ek = getelementptr inbounds nuw i8, ptr %.032, i64 %i.ei
  %wide.load180 = load <8 x i8>, ptr %i.ek, align 1, !tbaa !47, !alias.scope !55
  %i.el = xor <8 x i8> %wide.load180, %wide.load179
  store <8 x i8> %i.el, ptr %i.ej, align 1, !tbaa !47, !alias.scope !54, !noalias !55
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.em, label %vec.epilog.middle.block182, label %vec.epilog.vector.body177, !llvm.loop !38

vec.epilog.middle.block182:                       ; preds = %vec.epilog.vector.body177
  %cmp.n183 = icmp eq i64 %i.du, %n.vec176
  br i1 %cmp.n183, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %vector.memcheck146, %iter.check171, %vec.epilog.iter.check173, %vec.epilog.middle.block182
  %.1.i72.ph = phi i64 [ %.0.i.lcssa, %iter.check171 ], [ %.0.i.lcssa, %vector.memcheck146 ], [ %i.dy, %vec.epilog.iter.check173 ], [ %i.eh, %vec.epilog.middle.block182 ] ; 4 uses
  %i.en = sub i64 %.031, %.1.i72.ph
  %xtraiter189 = and i64 %i.en, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader, %.lr.ph73.prol
  %.1.i72.prol = phi i64 [ %i.et, %.lr.ph73.prol ], [ %.1.i72.ph, %.lr.ph73.preheader ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72.prol ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %.032, i64 %.1.i72.prol
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !47
  %i.es = xor i8 %i.er, %i.ep
  store i8 %i.es, ptr %i.eo, align 1, !tbaa !47
  %i.et = add nuw nsw i64 %.1.i72.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !39

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader
  %.1.i72.unr = phi i64 [ %.1.i72.ph, %.lr.ph73.preheader ], [ %i.et, %.lr.ph73.prol ]
  %i.eu = sub i64 %.1.i72.ph, %.031
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73

_ZL11mbedtls_xorPhPKhS1_m.exit47:                 ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185, %_ZL11mbedtls_xorPhPKhS1_m.exit47
  %i.ew = phi i64 [ %i.fa, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185 ] ; 3 uses
  %.0.i69 = phi i64 [ %i.ew, %_ZL11mbedtls_xorPhPKhS1_m.exit47 ], [ %.0.i69.ph, %_ZL11mbedtls_xorPhPKhS1_m.exit47.preheader185 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.i69 ; 2 uses
  %.0.copyload.i50 = load i64, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.032, i64 %.0.i69
  %.0.copyload.i49 = load i64, ptr %i.ey, align 1
  %i.ez = xor i64 %.0.copyload.i49, %.0.copyload.i50
  store i64 %i.ez, ptr %i.ex, align 1
  %i.fa = add nuw nsw i64 %i.ew, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.fa, %.031
  br i1 %.not.i, label %.preheader, label %_ZL11mbedtls_xorPhPKhS1_m.exit47, !llvm.loop !40

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.1.i72 = phi i64 [ %i.fy, %.lr.ph73 ], [ %.1.i72.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.1.i72 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !47
  %i.fd = getelementptr inbounds nuw i8, ptr %.032, i64 %.1.i72
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !47
  %i.ff = xor i8 %i.fe, %i.fc
  store i8 %i.ff, ptr %i.fb, align 1, !tbaa !47
  %i.fg = add nuw nsw i64 %.1.i72, 1              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fg ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !47
  %i.fj = getelementptr inbounds nuw i8, ptr %.032, i64 %i.fg
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !47
  %i.fl = xor i8 %i.fk, %i.fi
  store i8 %i.fl, ptr %i.fh, align 1, !tbaa !47
  %i.fm = add nuw nsw i64 %.1.i72, 2              ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fm ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !47
  %i.fp = getelementptr inbounds nuw i8, ptr %.032, i64 %i.fm
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !47
  %i.fr = xor i8 %i.fq, %i.fo
  store i8 %i.fr, ptr %i.fn, align 1, !tbaa !47
  %i.fs = add nuw nsw i64 %.1.i72, 3              ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.fs ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !47
  %i.fv = getelementptr inbounds nuw i8, ptr %.032, i64 %i.fs
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !47
  %i.fx = xor i8 %i.fw, %i.fu
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !47
  %i.fy = add nuw nsw i64 %.1.i72, 4              ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %i.fy, %.031
  br i1 %exitcond76.not.3, label %_ZL11mbedtls_xorPhPKhS1_m.exit, label %.lr.ph73, !llvm.loop !41

_ZL11mbedtls_xorPhPKhS1_m.exit:                   ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block167, %vec.epilog.middle.block182, %.preheader
  %i.fz = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %mbedtls_md_update.exit56, label %bb.o

bb.o:                                             ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !14
  switch i32 %i.gb, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.p
    i32 9, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !11
  %i.ge = call i32 @mbedtls_sha1_starts(ptr noundef %i.gd)
  br label %mbedtls_md_starts.exit54

bb.q:                                             ; preds = %bb.o
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !11
  %i.gh = call i32 @mbedtls_sha256_starts(ptr noundef %i.gg, i32 noundef 0)
  br label %mbedtls_md_starts.exit54

mbedtls_md_starts.exit54:                         ; preds = %bb.p, %bb.q
  %.0.i53 = phi i32 [ %i.gh, %bb.q ], [ %i.ge, %bb.p ] ; 2 uses
  %.not43 = icmp eq i32 %.0.i53, 0
  br i1 %.not43, label %bb.r, label %mbedtls_md_update.exit56

bb.r:                                             ; preds = %mbedtls_md_starts.exit54
  %i.gi = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 5
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !16
  %i.gl = zext i8 %i.gk to i64                    ; 2 uses
  %i.gm = load i32, ptr %i.gi, align 4, !tbaa !14
  switch i32 %i.gm, label %mbedtls_md_update.exit56 [
    i32 5, label %bb.s
    i32 9, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !11
  %i.gp = call i32 @mbedtls_sha1_update(ptr noundef %i.go, ptr noundef %i.ag, i64 noundef %i.gl)
  br label %mbedtls_md_update.exit56

bb.t:                                             ; preds = %bb.r
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !11
  %i.gs = call i32 @mbedtls_sha256_update(ptr noundef %i.gr, ptr noundef %i.ag, i64 noundef %i.gl)
  br label %mbedtls_md_update.exit56

mbedtls_md_update.exit56:                         ; preds = %_ZL11mbedtls_xorPhPKhS1_m.exit, %bb.o, %bb.h, %bb.i, %bb.e, %bb.t, %bb.s, %bb.r, %mbedtls_md_starts.exit54, %bb.l, %mbedtls_md_update.exit, %mbedtls_md_starts.exit
  %.0 = phi i32 [ %.0.i51, %mbedtls_md_starts.exit ], [ %.0.i52, %mbedtls_md_update.exit ], [ %i.ab, %bb.l ], [ %.0.i53, %mbedtls_md_starts.exit54 ], [ -20736, %bb.h ], [ %i.gp, %bb.s ], [ -20736, %bb.e ], [ %i.gs, %bb.t ], [ -20736, %bb.r ], [ -20736, %bb.i ], [ -20736, %bb.o ], [ -20736, %_ZL11mbedtls_xorPhPKhS1_m.exit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 32)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %mbedtls_md_update.exit56
  %.033 = phi i32 [ %.0, %mbedtls_md_update.exit56 ], [ -20736, %bb.c ], [ -20736, %bb.b ], [ -20736, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.033
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_md_hmac_update(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %mbedtls_md_update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mbedtls_md_update.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %mbedtls_md_update.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 4, !tbaa !14
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %mbedtls_md_finish.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mbedtls_md_finish.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !14
  switch i32 %i.l, label %mbedtls_md_finish.exit.thread [
    i32 5, label %bb.e
    i32 9, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = call i32 @mbedtls_sha1_finish(ptr noundef %i.n, ptr noundef nonnull %i.a)
  br label %mbedtls_md_finish.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = call i32 @mbedtls_sha256_finish(ptr noundef %i.q, ptr noundef nonnull %i.a)
  br label %mbedtls_md_finish.exit

mbedtls_md_finish.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.r, %bb.f ], [ %i.o, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %mbedtls_md_finish.exit.thread

bb.g:                                             ; preds = %mbedtls_md_finish.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %mbedtls_md_finish.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i32, ptr %i.s, align 4, !tbaa !14
  switch i32 %i.u, label %mbedtls_md_finish.exit.thread [
    i32 5, label %bb.i
end_hunk_0
