Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ckh?download=true
inline.NumInlined: 64
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@hash:bb.a
  %sext = shl i64 %1, 32
  %i.dg = ashr exact i64 %sext, 32                ; 2 uses
  %i.dh = xor i64 %.1105.i, %i.dg
  %i.di = xor i64 %.9.i, %i.dg                    ; 2 uses
  %i.dj = add i64 %i.di, %i.dh                    ; 3 uses
  %i.dk = add i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = lshr i64 %i.dj, 33
  %i.dm = xor i64 %i.dl, %i.dj
  %i.dn = mul i64 %i.dm, -49064778989728563       ; 2 uses
  %i.do = lshr i64 %i.dn, 33
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, -4265267296055464877     ; 2 uses
  %i.dr = lshr i64 %i.dq, 33
  %i.ds = xor i64 %i.dr, %i.dq
  %i.dt = lshr i64 %i.dk, 33
  %i.du = xor i64 %i.dt, %i.dk
  %i.dv = mul i64 %i.du, -49064778989728563       ; 2 uses
  %i.dw = lshr i64 %i.dv, 33
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = mul i64 %i.dx, -4265267296055464877     ; 2 uses
  %i.dz = lshr i64 %i.dy, 33
  %i.ea = xor i64 %i.dz, %i.dy                    ; 2 uses
  %i.eb = add i64 %i.ea, %i.ds                    ; 2 uses
  %i.ec = add i64 %i.eb, %i.ea
  store i64 %i.eb, ptr %3, align 8, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @duckdb_je_ckh_string_keycomp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #15
  %.not = icmp eq i32 %i.a, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_ckh_pointer_hash(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = mul i64 %i.a, -8663945395140668459
  %i.c = mul i64 %i.a, -8601547726154366976
  %i.d = lshr i64 %i.b, 33
  %i.e = or disjoint i64 %i.d, %i.c
  %i.f = mul i64 %i.e, 5545529020109919103
  %i.g = xor i64 %i.f, 3649255782                 ; 2 uses
  %i.h = add i64 %i.g, 3649255782                 ; 2 uses
  %i.i = add i64 %i.g, 7298511564                 ; 2 uses
  %i.j = lshr i64 %i.h, 33
  %i.k = xor i64 %i.j, %i.h
  %i.l = mul i64 %i.k, -49064778989728563         ; 2 uses
  %i.m = lshr i64 %i.l, 33
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -4265267296055464877       ; 2 uses
  %i.p = lshr i64 %i.o, 33
  %i.q = xor i64 %i.p, %i.o
  %i.r = lshr i64 %i.i, 33
  %i.s = xor i64 %i.r, %i.i
  %i.t = mul i64 %i.s, -49064778989728563         ; 2 uses
  %i.u = lshr i64 %i.t, 33
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -4265267296055464877       ; 2 uses
  %i.x = lshr i64 %i.w, 33
  %i.y = xor i64 %i.x, %i.w                       ; 2 uses
  %i.z = add i64 %i.y, %i.q                       ; 2 uses
  %i.aa = add i64 %i.z, %i.y
  store i64 %i.z, ptr %1, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @duckdb_je_ckh_pointer_keycomp(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

declare ptr @duckdb_je_arena_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !49
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !15

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  store ptr %i.u, ptr %i.r, align 8, !tbaa !50
  store i64 %i.c, ptr %i.d, align 8, !tbaa !49
  store ptr %i.s, ptr %i.t, align 8, !tbaa !50
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !15

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !15

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !15

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !15

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !15

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !15

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #14
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !49
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !50
  store i64 %i.e, ptr %i.at, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !50
  store i64 %i.c, ptr %i.d, align 8, !tbaa !49
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !50
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !58
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !59, !alias.scope !60
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !61, !alias.scope !60
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !62, !alias.scope !60
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !63, !alias.scope !60
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !38, !alias.scope !60
  ret void
}

declare void @duckdb_je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #10

declare ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %2, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %2, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = lshr i64 %2, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !49
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !15

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  store ptr %i.u, ptr %i.r, align 8, !tbaa !50
  store i64 %i.c, ptr %i.d, align 8, !tbaa !49
  store ptr %i.s, ptr %i.t, align 8, !tbaa !50
  %i.v = lshr i64 %2, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !15

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !15

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !15

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !49
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !15

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !15

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !15

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @duckdb_je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef nonnull @duckdb_je_arena_emap_global, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false) #14
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !49
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !50
  store i64 %i.e, ptr %i.at, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !50
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !50
  store i64 %i.c, ptr %i.d, align 8, !tbaa !49
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !50
  %i.az = lshr i64 %2, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !66
  %i.bd = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bg = and i8 %i.bf, 1
  %.sroa.6.17.insert.ext = zext nneg i8 %i.bg to i32
  %.sroa.6.17.insert.shift = shl nuw nsw i32 %.sroa.6.17.insert.ext, 8
  %i.bh = lshr i8 %i.bf, 1
  %i.bi = and i8 %i.bh, 1
  %.sroa.6.16.insert.ext = zext nneg i8 %i.bi to i32
  %.sroa.6.16.insert.insert = or disjoint i32 %.sroa.6.17.insert.shift, %.sroa.6.16.insert.ext
  %i.bj = shl i64 %i.bd, 30
  %.sroa.3.12.insert.shift = and i64 %i.bj, 30064771072
  %.sroa.3.12.insert.insert = or disjoint i64 %.sroa.3.12.insert.shift, %i.be
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.3.12.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.6.16.insert.insert, 1
  ret { i64, i32 } %.fca.1.insert
}

declare ptr @duckdb_je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #10

declare void @duckdb_je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @duckdb_je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @duckdb_je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare void @duckdb_je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @duckdb_je_rtree_ctx_data_init(ptr noundef nonnull %2) #14
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @duckdb_je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #14
  ret void
}

declare void @duckdb_je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"", !7, i64 0, !7, i64 8, !5, i64 16, !5, i64 20, !8, i64 24, !8, i64 32, !8, i64 40}
!10 = !{!9, !7, i64 8}
!11 = !{!9, !5, i64 16}
!12 = !{!9, !5, i64 20}
!13 = !{!9, !8, i64 24}
!14 = !{!9, !8, i64 32}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!4, !4, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!20 = !{!"p1 _ZTS7arena_s", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_Bool", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"p1 _ZTS13tcache_slow_s", !8, i64 0}
!27 = !{!"", !26, i64 0, !26, i64 8}
!28 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !8, i64 0}
!29 = !{!"", !28, i64 0, !28, i64 8}
!30 = !{!"p1 _ZTS11cache_bin_s", !8, i64 0}
!31 = !{!"cache_bin_array_descriptor_s", !29, i64 0, !30, i64 16}
!32 = !{!"p1 _ZTS8tcache_s", !8, i64 0}
!33 = !{!"tcache_slow_s", !27, i64 0, !31, i64 16, !20, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !4, i64 92, !4, i64 128, !8, i64 168, !32, i64 176}
!34 = !{!33, !20, i64 40}
!35 = !{!"p1 _ZTS7edata_s", !8, i64 0}
!36 = !{!"rtree_metadata_s", !5, i64 0, !5, i64 4, !22, i64 8, !22, i64 9}
!37 = !{!"rtree_contents_s", !35, i64 0, !36, i64 8}
!38 = !{!37, !35, i64 0}
!39 = !{!"p1 _ZTS8hpdata_s", !8, i64 0}
!40 = !{!"edata_s", !7, i64 0, !8, i64 8, !4, i64 16, !39, i64 24, !7, i64 32, !4, i64 40, !4, i64 64}
!41 = !{!40, !7, i64 0}
!42 = !{!9, !8, i64 40}
!43 = !{!"", !8, i64 0, !8, i64 8}
!44 = !{!43, !8, i64 0}
!45 = !{!8, !8, i64 0}
!46 = !{!43, !8, i64 8}
!47 = !{!"p1 _ZTS16rtree_leaf_elm_s", !8, i64 0}
!48 = !{!"rtree_ctx_cache_elm_s", !7, i64 0, !47, i64 8}
!49 = !{!48, !7, i64 0}
!50 = !{!48, !47, i64 8}
!51 = !{!9, !7, i64 0}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{!54, i1 false, !"rtree_leaf_elm_read"}
!55 = distinct !{!55, !54, !"rtree_leaf_elm_read: argument 0"}
!56 = distinct !{!56, i1 false, !"rtree_leaf_elm_bits_decode"}
!57 = distinct !{!57, !56, !"rtree_leaf_elm_bits_decode: argument 0"}
!58 = !{!55}
!59 = !{!37, !5, i64 8}
!60 = !{!57}
!61 = !{!37, !22, i64 17}
!62 = !{!37, !22, i64 16}
!63 = !{!37, !5, i64 12}
!64 = distinct !{!64, i1 false, !"rtree_leaf_elm_read"}
!65 = distinct !{!65, !64, !"rtree_leaf_elm_read: argument 0"}
!66 = !{!65}
end_hunk_0
