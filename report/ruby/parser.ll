inline.NumInlined: 234
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@json_string_fastpath:bb.a
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %.0.copyload4.i)
  %i.al = tail call i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  %i.am = icmp ult i64 %i.ak, %i.al
  %i.an = select i1 %i.am, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

bb.i:                                             ; preds = %.lr.ph
  %i.ao = add nuw i64 %.1.i3265, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.c
  br i1 %exitcond.not, label %rstring_cache_fetch.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.1.i3265 = phi i64 [ %i.ao, %bb.i ], [ %.026.i, %.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.1.i3265
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !43  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i3265
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43  ; 2 uses
  %.not32.i = icmp eq i8 %i.aq, %i.as
  br i1 %.not32.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.at = icmp slt i8 %i.aq, %i.as
  %i.au = select i1 %i.at, i32 -1, i32 1
  br label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit:                           ; preds = %RSTRING_PTR.exit
  %i.av = sub nsw i64 %i.c, %i.ae
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %.not31.i = icmp eq i32 %i.aw, 0
  br i1 %.not31.i, label %rstring_cache_fetch.exit, label %rstring_cache_cmp.exit.thread

rstring_cache_cmp.exit.thread:                    ; preds = %bb.j, %.thread, %rstring_cache_cmp.exit
  %.0.i2740 = phi i32 [ %i.aw, %rstring_cache_cmp.exit ], [ %i.au, %bb.j ], [ %i.an, %.thread ]
  %i.ax = icmp sgt i32 %.0.i2740, 0               ; 2 uses
  %i.ay = add nuw nsw i32 %i.t, 1
  %i.az = add nsw i32 %i.t, -1
  %.128.i = select i1 %i.ax, i32 %.027.i68, i32 %i.az ; 2 uses
  %.125.i = select i1 %i.ax, i32 %i.ay, i32 %.024.i69 ; 3 uses
  %.not.i = icmp sgt i32 %.125.i, %.128.i
  br i1 %.not.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %rstring_cache_cmp.exit.thread, %bb.e
  %.024.i.lcssa = phi i32 [ 0, %bb.e ], [ %.125.i, %rstring_cache_cmp.exit.thread ] ; 2 uses
  %i.ba = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.bb = tail call i64 @rb_enc_interned_str(ptr noundef nonnull %2, i64 noundef %i.c, ptr noundef %i.ba) #19 ; 3 uses
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !95  ; 3 uses
  %i.bd = icmp slt i32 %i.bc, 63
  br i1 %i.bd, label %bb.k, label %rstring_cache_fetch.exit

bb.k:                                             ; preds = %._crit_edge
  %i.be = sub nsw i32 %i.bc, %.024.i.lcssa        ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i32 %i.be, 0
  br i1 %i.bg, label %bb.l, label %rvalue_cache_insert_at.exit, !prof !67

bb.l:                                             ; preds = %bb.k
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bf) #21
  unreachable

rvalue_cache_insert_at.exit:                      ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = zext nneg i32 %.024.i.lcssa to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = shl nuw nsw i64 %i.bf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 8 %i.bj, i64 %i.bl, i1 false)
  %i.bm = add nsw i32 %i.bc, 1
  store i32 %i.bm, ptr %i.n, align 8, !tbaa !95
  store i64 %i.bb, ptr %i.bj, align 8, !tbaa !10
  br label %rstring_cache_fetch.exit

rstring_cache_fetch.exit:                         ; preds = %rstring_cache_cmp.exit, %.preheader, %bb.i, %rvalue_cache_insert_at.exit, %._crit_edge, %bb.d
  %.024 = phi i64 [ %i.o, %bb.d ], [ %i.bb, %._crit_edge ], [ %i.bb, %rvalue_cache_insert_at.exit ], [ %i.w, %bb.i ], [ %i.w, %.preheader ], [ %i.w, %rstring_cache_cmp.exit ] ; 2 uses
  %.not26 = icmp eq i64 %.024, 0
  br i1 %.not26, label %json_string_cacheable_p.exit.thread, label %build_string.exit

bb.m:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !40, !range !62, !noundef !63
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.thread56, label %.thread54

.thread56:                                        ; preds = %bb.m
  %i.bq = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.br = tail call i64 @rb_enc_interned_str(ptr noundef %2, i64 noundef %i.c, ptr noundef %i.bq) #19
  br label %build_string.exit

.thread54:                                        ; preds = %bb.m
  %i.bs = tail call i64 @rb_utf8_str_new(ptr noundef %2, i64 noundef %i.c) #19
  br label %build_string.exit

json_string_cacheable_p.exit.thread:              ; preds = %rstring_cache_fetch.exit, %json_string_cacheable_p.exit, %bb.b
  %i.bt = load ptr, ptr @enc_utf8, align 8, !tbaa !12
  %i.bu = tail call i64 @rb_enc_interned_str(ptr noundef %2, i64 noundef %i.c, ptr noundef %i.bt) #19 ; 2 uses
  br i1 %i.f, label %bb.n, label %build_string.exit

bb.n:                                             ; preds = %json_string_cacheable_p.exit.thread
  %i.bv = tail call i64 @rb_str_intern(i64 noundef %i.bu) #19
  br label %build_string.exit

build_string.exit:                                ; preds = %bb.n, %json_string_cacheable_p.exit.thread, %.thread54, %.thread56, %rstring_cache_fetch.exit
  %.1 = phi i64 [ %.024, %rstring_cache_fetch.exit ], [ %i.bv, %bb.n ], [ %i.bu, %json_string_cacheable_p.exit.thread ], [ %i.bs, %.thread54 ], [ %i.br, %.thread56 ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @json_parse_escaped_string(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %4 = alloca %struct._json_unescape_positions, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  store i64 0, ptr %i.d, align 8
  %.promoted40 = load ptr, ptr %i.e, align 8, !tbaa !64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 34 ; 2 uses
  %i.g = load i32, ptr @simd_impl, align 4
  %.fr57 = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr57, 2
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  br i1 %i.h, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.pre = load i8, ptr %.promoted40, align 1, !tbaa !43
  br label %.split

.split.us.loopexit.loopexit.split.loop.exit:      ; preds = %.lr.ph39.us.3
  %i.j = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  br label %.split.us.backedge

.split.us.loopexit.loopexit.split.loop.exit205:   ; preds = %.lr.ph39.us.2
  %i.k = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  br label %.split.us.backedge

.split.us.loopexit.loopexit.split.loop.exit207:   ; preds = %.lr.ph39.us.1
  %i.l = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  br label %.split.us.backedge

.split.us:                                        ; preds = %bb.a, %.split.us.backedge
  %i.m = phi i64 [ %i.v, %.split.us.backedge ], [ 0, %bb.a ] ; 5 uses
  %.promoted3743.us = phi ptr [ %.promoted3743.us.be, %.split.us.backedge ], [ %.promoted40, %bb.a ] ; 5 uses
  %i.n = load i8, ptr %.promoted3743.us, align 1, !tbaa !43
  switch i8 %i.n, label %bb.f [
    i8 34, label %.split53.us
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.o = icmp slt i64 %i.m, 16
  br i1 %i.o, label %bb.d, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 8, !tbaa !101
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.m
  store ptr %.promoted3743.us, ptr %i.p, align 8, !tbaa !64
  %i.q = add nsw i64 %i.m, 1                      ; 2 uses
  store i64 %i.q, ptr %4, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i64 [ %i.m, %bb.c ], [ %i.q, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted3743.us, i64 1
  br label %bb.g

bb.f:                                             ; preds = %.split.us
  %i.t = load i8, ptr %i.f, align 2, !tbaa !38, !range !62, !noundef !63
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %.split56.us

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %i.m, %bb.f ], [ %i.r, %bb.e ]
  %.promoted3745.us = phi ptr [ %.promoted3743.us, %bb.f ], [ %i.s, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.promoted3745.us, i64 1 ; 3 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !57   ; 5 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.promoted3745.us, i64 17 ; 2 uses
  %.not.i1636.us = icmp ugt ptr %i.z, %i.x
  br i1 %.not.i1636.us, label %string_scan_simd_sse2.exit.thread27.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.g, %5
  %i.aa = phi ptr [ %6, %5 ], [ %i.z, %bb.g ]     ; 4 uses
  %i.ab = phi ptr [ %i.aa, %5 ], [ %i.w, %bb.g ]  ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !43 ; 2 uses
  %i.ad = xor <16 x i8> %i.ac, splat (i8 2)
  %i.ae = icmp ult <16 x i8> %i.ad, splat (i8 33)
  %i.af = icmp eq <16 x i8> %i.ac, splat (i8 92)
  %i.ag = or <16 x i1> %i.af, %i.ae
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not10.i.not.us = icmp eq i16 %i.ah, 0
  br i1 %.not10.i.not.us, label %5, label %string_scan_simd_sse2.exit.us

5:                                                ; preds = %.lr.ph.us
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !64
  %6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.i16.us = icmp ugt ptr %6, %i.x
  br i1 %.not.i16.us, label %string_scan_simd_sse2.exit.thread27.loopexit.us, label %.lr.ph.us

string_scan_simd_sse2.exit.us:                    ; preds = %.lr.ph.us
  %i.ai = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !56
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %.lr.ph39.us, %.split.us.loopexit.loopexit.split.loop.exit207, %.split.us.loopexit.loopexit.split.loop.exit205, %.split.us.loopexit.loopexit.split.loop.exit, %.lr.ph39.us.prol, %string_scan_simd_sse2.exit.us
  %.promoted3743.us.be = phi ptr [ %i.ak, %string_scan_simd_sse2.exit.us ], [ %i.al, %.lr.ph39.us ], [ %i.l, %.split.us.loopexit.loopexit.split.loop.exit207 ], [ %i.k, %.split.us.loopexit.loopexit.split.loop.exit205 ], [ %i.j, %.split.us.loopexit.loopexit.split.loop.exit ], [ %i.bn, %.lr.ph39.us.prol ]
  br label %.split.us

.lr.ph39.us:                                      ; preds = %.lr.ph39.us.prol.loopexit, %bb.h
  %i.al = phi ptr [ %i.bj, %bb.h ], [ %.unr169, %.lr.ph39.us.prol.loopexit ] ; 9 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !66, !range !62, !noundef !63
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.split.us.backedge, label %.lr.ph39.us.1, !prof !67

.lr.ph39.us.1:                                    ; preds = %.lr.ph39.us
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !56
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !43
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !66, !range !62, !noundef !63
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.split.us.loopexit.loopexit.split.loop.exit207, label %.lr.ph39.us.2, !prof !67

.lr.ph39.us.2:                                    ; preds = %.lr.ph39.us.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 2 ; 2 uses
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !56
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !43
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !66, !range !62, !noundef !63
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.split.us.loopexit.loopexit.split.loop.exit205, label %.lr.ph39.us.3, !prof !67

.lr.ph39.us.3:                                    ; preds = %.lr.ph39.us.2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 3 ; 2 uses
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !56
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !43
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !66, !range !62, !noundef !63
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.split.us.loopexit.loopexit.split.loop.exit, label %bb.h, !prof !67

bb.h:                                             ; preds = %.lr.ph39.us.3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  store ptr %i.bj, ptr %i.e, align 8, !tbaa !56
  %exitcond83.not.3 = icmp eq ptr %i.bj, %i.x
  br i1 %exitcond83.not.3, label %string_scan_simd_sse2.exit.thread27._crit_edge, label %.lr.ph39.us

string_scan_simd_sse2.exit.thread27.loopexit.us:  ; preds = %5, %bb.g
  %.promoted3742.us = phi ptr [ %i.w, %bb.g ], [ %i.aa, %5 ] ; 4 uses
  %.not38.us = icmp ult ptr %.promoted3742.us, %i.x
  br i1 %.not38.us, label %.lr.ph39.us.preheader, label %string_scan_simd_sse2.exit.thread27._crit_edge

.lr.ph39.us.preheader:                            ; preds = %string_scan_simd_sse2.exit.thread27.loopexit.us
  %.promoted3742.us165 = ptrtoaddr ptr %.promoted3742.us to i64
  %i.bk = sub i64 %i.y, %.promoted3742.us165
  %i.bl = freeze i64 %i.bk                        ; 2 uses
  %i.bm = add i64 %i.bl, -1
  %xtraiter166 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph39.us.prol.loopexit, label %.lr.ph39.us.prol

.lr.ph39.us.prol:                                 ; preds = %.lr.ph39.us.preheader, %bb.i
  %i.bn = phi ptr [ %i.bt, %bb.i ], [ %.promoted3742.us, %.lr.ph39.us.preheader ] ; 3 uses
  %prol.iter168 = phi i64 [ %prol.iter168.next, %bb.i ], [ 0, %.lr.ph39.us.preheader ]
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !43
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @string_scan_table, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !66, !range !62, !noundef !63
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.split.us.backedge, label %bb.i, !prof !67

bb.i:                                             ; preds = %.lr.ph39.us.prol
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !56
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph39.us.prol.loopexit, label %.lr.ph39.us.prol, !llvm.loop !102

.lr.ph39.us.prol.loopexit:                        ; preds = %bb.i, %.lr.ph39.us.preheader
  %.unr169 = phi ptr [ %.promoted3742.us, %.lr.ph39.us.preheader ], [ %i.bt, %bb.i ]
  %i.bu = icmp ult i64 %i.bm, 3
  br i1 %i.bu, label %string_scan_simd_sse2.exit.thread27._crit_edge, label %.lr.ph39.us

.split.loopexit.loopexit.split.loop.exit:         ; preds = %.lr.ph39.3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  br label %.split.loopexit

.split.loopexit.loopexit.split.loop.exit193:      ; preds = %.lr.ph39.2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  br label %.split.loopexit

.split.loopexit.loopexit.split.loop.exit196:      ; preds = %.lr.ph39.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  br label %.split.loopexit

.split.loopexit:                                  ; preds = %.lr.ph39.prol, %.split.loopexit.loopexit.split.loop.exit, %.split.loopexit.loopexit.split.loop.exit193, %.split.loopexit.loopexit.split.loop.exit196, %.lr.ph39
  %.lcssa155 = phi ptr [ %i.dp, %.lr.ph39 ], [ %i.bx, %.split.loopexit.loopexit.split.loop.exit196 ], [ %i.bw, %.split.loopexit.loopexit.split.loop.exit193 ], [ %i.bv, %.split.loopexit.loopexit.split.loop.exit ], [ %i.dh, %.lr.ph39.prol ]
  %.lcssa153 = phi i8 [ %i.dq, %.lr.ph39 ], [ %i.dw, %.split.loopexit.loopexit.split.loop.exit196 ], [ %i.ec, %.split.loopexit.loopexit.split.loop.exit193 ], [ %i.ei, %.split.loopexit.loopexit.split.loop.exit ], [ %i.di, %.lr.ph39.prol ]
  br label %.split

.split:                                           ; preds = %.split.loopexit, %.split.preheader
  %i.by = phi i8 [ %.pre, %.split.preheader ], [ %.lcssa153, %.split.loopexit ]
  %i.bz = phi i64 [ 0, %.split.preheader ], [ %i.db, %.split.loopexit ] ; 5 uses
  %.promoted3743 = phi ptr [ %.promoted40, %.split.preheader ], [ %.lcssa155, %.split.loopexit ] ; 4 uses
  switch i8 %i.by, label %bb.q [
    i8 34, label %.split53.us
    i8 92, label %bb.m
  ]

.split53.us:                                      ; preds = %.split, %.split.us
  %.us-phi54 = phi ptr [ %.promoted3743.us, %.split.us ], [ %.promoted3743, %.split ]
  %i.ca = call fastcc i64 @json_string_unescape(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %.us-phi54, i1 noundef zeroext %2, ptr noundef %4) ; 2 uses
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !56
  %.val18 = load i64, ptr %1, align 8, !tbaa !35  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !10
  %.not.i19 = icmp eq i64 %.val18, 0
  br i1 %.not.i19, label %bb.k, label %bb.j, !prof !24

bb.j:                                             ; preds = %.split53.us
  %i.cd = call i64 @rb_proc_call_with_block(i64 noundef %.val18, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 2 uses
  store i64 %i.cd, ptr %i.a, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split53.us
  %i.ce = phi i64 [ %i.cd, %bb.j ], [ %i.ca, %.split53.us ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !58 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !50 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !49
  %.not.i.i = icmp slt i64 %i.ci, %i.ck
  br i1 %.not.i.i, label %json_push_value.exit, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %i.cl = call fastcc ptr @rvalue_stack_grow(ptr noundef nonnull %i.cg, ptr noundef nonnull %0, ptr noundef nonnull %i.cf) ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !50
  br label %json_push_value.exit

json_push_value.exit:                             ; preds = %bb.k, %bb.l
  %i.cm = phi i64 [ %.pre.i.i, %bb.l ], [ %i.ci, %bb.k ]
  %.0.i.i = phi ptr [ %i.cl, %bb.l ], [ %i.cg, %bb.k ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cm
  store i64 %i.ce, ptr %i.cq, align 8, !tbaa !10
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !50
  %i.cs = add nsw i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !50
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i64 %i.ct

bb.m:                                             ; preds = %.split
  %i.cu = icmp slt i64 %i.bz, 16
  br i1 %i.cu, label %bb.n, label %bb.o, !prof !24

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bz
  store ptr %.promoted3743, ptr %i.cv, align 8, !tbaa !64
  %i.cw = add nsw i64 %i.bz, 1                    ; 2 uses
  store i64 %i.cw, ptr %4, align 8, !tbaa !96
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i8 1, ptr %i.d, align 8, !tbaa !101
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cx = phi i64 [ %i.bz, %bb.o ], [ %i.cw, %bb.n ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.promoted3743, i64 1
  br label %string_scan_simd_sse2.exit.thread27

bb.q:                                             ; preds = %.split
  %i.cz = load i8, ptr %i.f, align 2, !tbaa !38, !range !62, !noundef !63
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %string_scan_simd_sse2.exit.thread27, label %.split56.us

.split56.us:                                      ; preds = %bb.q, %bb.f
  call fastcc void @raise_parse_error(ptr noundef nonnull @.str.53, ptr noundef %0) #24
  unreachable

string_scan_simd_sse2.exit.thread27:              ; preds = %bb.q, %bb.p
  %i.db = phi i64 [ %i.bz, %bb.q ], [ %i.cx, %bb.p ]
  %.promoted3745 = phi ptr [ %.promoted3743, %bb.q ], [ %i.cy, %bb.p ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.promoted3745, i64 1 ; 4 uses
  store ptr %i.dc, ptr %i.e, align 8, !tbaa !56
  %.val17 = load ptr, ptr %i.i, align 8, !tbaa !57 ; 3 uses
  %.not38 = icmp ult ptr %i.dc, %.val17
  br i1 %.not38, label %.lr.ph39.preheader, label %string_scan_simd_sse2.exit.thread27._crit_edge

.lr.ph39.preheader:                               ; preds = %string_scan_simd_sse2.exit.thread27
  %.val17160 = ptrtoaddr ptr %.val17 to i64
  %.promoted3745161 = ptrtoaddr ptr %.promoted3745 to i64
  %i.dd = xor i64 %.promoted3745161, -1
end_hunk_0
