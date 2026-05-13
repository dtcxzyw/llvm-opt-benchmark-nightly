inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@parse_char_class:bb.a
  br label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.ox = or i32 %i.os, 1
  store i32 %i.ox, ptr %i.or, align 4, !tbaa !145
  br i1 %.not377, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.oy = getelementptr i8, ptr %.4298, i64 4     ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !145
  %i.pa = or i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !145
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.pb = and i32 %i.os, -2
  store i32 %i.pb, ptr %i.or, align 4, !tbaa !145
  br i1 %.not377, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.pc = getelementptr i8, ptr %.4298, i64 4     ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !145
  %i.pe = and i32 %i.pd, -2
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !145
  br label %bb.ez

bb.ez:                                            ; preds = %.thread555, %.thread550, %bb.ex, %bb.ey, %bb.ev, %bb.ew
  %.4298546 = phi ptr [ null, %bb.ex ], [ %.4298, %bb.ey ], [ null, %bb.ev ], [ %.4298, %bb.ew ], [ null, %.thread550 ], [ null, %.thread555 ]
  %.3306543 = phi ptr [ %.3306, %bb.ex ], [ %.3306, %bb.ey ], [ %.3306, %bb.ev ], [ %.3306, %bb.ew ], [ %.0300.ph, %.thread550 ], [ %.0300.ph, %.thread555 ] ; 12 uses
  %i.pf = getelementptr i8, ptr %.3306543, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !145
  %i.ph = and i32 %i.pg, 1
  %.not379 = icmp eq i32 %i.ph, 0
  br i1 %.not379, label %.thread565, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.pi = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !60
  %i.pl = and i32 %i.pk, 1048576
  %.not380 = icmp eq i32 %i.pl, 0
  br i1 %.not380, label %.thread565, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pm = getelementptr i8, ptr %.3306543, i64 40 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !63
  %.not = icmp eq ptr %i.pn, null
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.fb
  %i.po = getelementptr i8, ptr %.3306543, i64 8
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !7
  %.not381 = icmp eq i32 %i.pp, 0
  br i1 %.not381, label %bb.fc, label %.loopexit

bb.fc:                                            ; preds = %.preheader
  %i.pq = getelementptr i8, ptr %.3306543, i64 12
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !7
  %.not381.1 = icmp eq i32 %i.pr, 0
  br i1 %.not381.1, label %bb.fd, label %.loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.ps = getelementptr i8, ptr %.3306543, i64 16
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !7
  %.not381.2 = icmp eq i32 %i.pt, 0
  br i1 %.not381.2, label %bb.fe, label %.loopexit

bb.fe:                                            ; preds = %bb.fd
  %i.pu = getelementptr i8, ptr %.3306543, i64 20
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !7
  %.not381.3 = icmp eq i32 %i.pv, 0
  br i1 %.not381.3, label %bb.ff, label %.loopexit

bb.ff:                                            ; preds = %bb.fe
  %i.pw = getelementptr i8, ptr %.3306543, i64 24
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !7
  %.not381.4 = icmp eq i32 %i.px, 0
  br i1 %.not381.4, label %bb.fg, label %.loopexit

bb.fg:                                            ; preds = %bb.ff
  %i.py = getelementptr i8, ptr %.3306543, i64 28
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !7
  %.not381.5 = icmp eq i32 %i.pz, 0
  br i1 %.not381.5, label %bb.fh, label %.loopexit

bb.fh:                                            ; preds = %bb.fg
  %i.qa = getelementptr i8, ptr %.3306543, i64 32
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !7
  %.not381.6 = icmp eq i32 %i.qb, 0
  br i1 %.not381.6, label %bb.fi, label %.loopexit

bb.fi:                                            ; preds = %bb.fh
  %i.qc = getelementptr i8, ptr %.3306543, i64 36
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !7
  %.not381.7 = icmp eq i32 %i.qd, 0
  br i1 %.not381.7, label %.thread565, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fb
  %i.qe = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qe, i64 88
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !72
  %i.qh = call i32 %i.qg(i32 noundef 10, i32 noundef 0, ptr noundef %i.qe) #25
  %.not382 = icmp eq i32 %i.qh, 0
  br i1 %.not382, label %.thread565, label %bb.fj

bb.fj:                                            ; preds = %.loopexit
  %i.qi = load ptr, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 40
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !166
  %i.ql = call i32 %i.qk(i32 noundef 10, ptr noundef %i.qi) #25
  %i.qm = icmp eq i32 %i.ql, 1
  br i1 %i.qm, label %bb.fk, label %bb.fn

bb.fk:                                            ; preds = %bb.fj
  %i.qn = getelementptr i8, ptr %.3306543, i64 8  ; 3 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !7  ; 2 uses
  %i.qp = and i32 %i.qo, 1024
  %.not383 = icmp eq i32 %i.qp, 0
  br i1 %.not383, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @CC_DUP_WARN(ptr noundef nonnull %5)
  %.pre678 = load i32, ptr %i.qn, align 8, !tbaa !7
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.qq = phi i32 [ %.pre678, %bb.fl ], [ %i.qo, %bb.fk ]
  %i.qr = or i32 %i.qq, 1024
  store i32 %i.qr, ptr %i.qn, align 8, !tbaa !7
  br label %.thread565

bb.fn:                                            ; preds = %bb.fj
  %i.qs = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.pm, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 10, i32 noundef 1) ; 2 uses
  %i.qt = icmp slt i32 %i.qs, 0
  br i1 %i.qt, label %parse_posix_bracket.exit.thread, label %.thread565

.thread565:                                       ; preds = %bb.fi, %bb.fm, %.loopexit, %bb.fn, %bb.fa, %bb.ez
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !69
  store ptr %i.qu, ptr %3, align 8, !tbaa !69
  %i.qv = load i32, ptr %i.i, align 8, !tbaa !113
  %i.qw = add i32 %i.qv, -1
  store i32 %i.qw, ptr %i.i, align 8, !tbaa !113
  br label %bbuf_free.exit436

parse_posix_bracket.exit.thread.loopexit:         ; preds = %bb.w
  br label %parse_posix_bracket.exit.thread

parse_posix_bracket.exit.thread:                  ; preds = %bb.cd, %bb.aw, %bb.dv, %bb.dk, %CC_ESC_WARN.exit427, %bb.z, %bb.ds, %bb.dl, %bb.dh, %parse_posix_bracket.exit, %bb.ap, %bb.ct, %.thread465, %bb.cr, %.thread478, %.thread491, %bb.eg, %bb.ed, %bb.eb, %bb.w, %parse_posix_bracket.exit.thread.loopexit, %bb.fn, %.thread448, %bb.es, %bb.eq, %bb.eo
  %.4307 = phi ptr [ %.0303.ph, %bb.w ], [ %.0303.ph, %bb.eo ], [ %.0303.ph, %bb.eq ], [ %.3306543, %bb.fn ], [ %.0303.ph, %.thread448 ], [ %.0300.ph, %bb.es ], [ %.0303.ph, %bb.cd ], [ %.0303.ph, %bb.aw ], [ %.0303.ph, %bb.dv ], [ %.0303.ph, %bb.dk ], [ %.0303.ph, %CC_ESC_WARN.exit427 ], [ %.0303.ph, %bb.z ], [ %.0303.ph, %bb.ds ], [ %.0303.ph, %bb.dl ], [ %.0303.ph, %bb.dh ], [ %.0303.ph, %parse_posix_bracket.exit ], [ %.0303.ph, %bb.ap ], [ %.0303.ph, %bb.eb ], [ %.0303.ph, %bb.ed ], [ %.0303.ph, %bb.eg ], [ %.2305507, %.thread491 ], [ %.0303.ph, %.thread478 ], [ %.0303.ph, %bb.cr ], [ %.0303.ph, %.thread465 ], [ %.0303.ph, %bb.ct ], [ %.0303.ph, %parse_posix_bracket.exit.thread.loopexit ] ; 2 uses
  %.5299 = phi ptr [ %.1295.ph, %bb.w ], [ %.1295.ph, %bb.eo ], [ %.1295.ph, %bb.eq ], [ %.4298546, %bb.fn ], [ %.1295.ph, %.thread448 ], [ %.1295.ph, %bb.es ], [ %.1295.ph, %bb.cd ], [ %.1295.ph, %bb.aw ], [ %.1295.ph, %bb.dv ], [ %.1295.ph, %bb.dk ], [ %.1295.ph, %CC_ESC_WARN.exit427 ], [ %.1295.ph, %bb.z ], [ %.1295.ph, %bb.ds ], [ %.1295.ph, %bb.dl ], [ %.1295.ph, %bb.dh ], [ %.1295.ph, %parse_posix_bracket.exit ], [ %.1295.ph, %bb.ap ], [ %.1295.ph, %bb.eb ], [ %.1295.ph, %bb.ed ], [ %.1295.ph, %bb.eg ], [ %.3297511, %.thread491 ], [ %.1295.ph, %.thread478 ], [ %.1295.ph, %bb.cr ], [ %.1295.ph, %.thread465 ], [ %.1295.ph, %bb.ct ], [ %.1295.ph, %parse_posix_bracket.exit.thread.loopexit ] ; 3 uses
  %.15 = phi i32 [ -11, %bb.w ], [ %i.ok, %bb.eo ], [ %i.ol, %bb.eq ], [ %i.qs, %bb.fn ], [ %.5.ph, %.thread448 ], [ %i.oo, %bb.es ], [ -121, %bb.aw ], [ %i.ej, %bb.ap ], [ %i.cd, %bb.z ], [ %.0126.i, %parse_posix_bracket.exit ], [ -121, %bb.cd ], [ %i.mf, %bb.dh ], [ %i.ef, %CC_ESC_WARN.exit427 ], [ %i.mk, %bb.dl ], [ %i.mz, %bb.ds ], [ -112, %bb.dk ], [ -112, %bb.dv ], [ %i.ns, %bb.eb ], [ %i.nt, %bb.ed ], [ %i.nx, %bb.eg ], [ %i.of, %.thread491 ], [ %.9, %.thread478 ], [ %i.kv, %bb.cr ], [ -110, %.thread465 ], [ %i.kz, %bb.ct ], [ -103, %parse_posix_bracket.exit.thread.loopexit ] ; 4 uses
  %i.qx = load ptr, ptr %0, align 8, !tbaa !90
  %.not407 = icmp eq ptr %.4307, %i.qx
  br i1 %.not407, label %bbuf_free.exit434, label %bb.fo

bb.fo:                                            ; preds = %parse_posix_bracket.exit.thread
  %i.qy = getelementptr i8, ptr %.4307, i64 40
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !63 ; 3 uses
  %.not.i433 = icmp eq ptr %i.qz, null
  br i1 %.not.i433, label %bbuf_free.exit434, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !66
  call void @free(ptr noundef %i.ra) #25
  call void @free(ptr noundef nonnull %i.qz) #25
  br label %bbuf_free.exit434

bbuf_free.exit434:                                ; preds = %bb.fp, %bb.fo, %parse_posix_bracket.exit.thread
  %.not408 = icmp eq ptr %.5299, null
  br i1 %.not408, label %bbuf_free.exit436, label %bb.fq

bb.fq:                                            ; preds = %bbuf_free.exit434
  %i.rb = load ptr, ptr %1, align 8, !tbaa !90
  %.not409 = icmp eq ptr %.5299, %i.rb
  br i1 %.not409, label %bbuf_free.exit436, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.rc = getelementptr i8, ptr %.5299, i64 40
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !63 ; 3 uses
  %.not.i435 = icmp eq ptr %i.rd, null
  br i1 %.not.i435, label %bbuf_free.exit436, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !66
  call void @free(ptr noundef %i.re) #25
  call void @free(ptr noundef nonnull %i.rd) #25
  br label %bbuf_free.exit436

bbuf_free.exit436:                                ; preds = %bb.q, %bb.df, %bb.dd, %bb.cj, %bb.cg, %fetch_char_property_to_ctype.exit.thread, %bb.h, %bb.fs, %bb.fr, %node_new_cclass.exit415.thread, %node_new_cclass.exit.thread, %bbuf_free.exit434, %bb.fq, %bb.f, %bb.a, %.thread565
  %.4 = phi i32 [ %.0270, %bb.f ], [ -16, %bb.a ], [ %.15, %bb.fs ], [ -5, %node_new_cclass.exit.thread ], [ -102, %bb.h ], [ -5, %node_new_cclass.exit415.thread ], [ 0, %.thread565 ], [ %.046.i, %fetch_char_property_to_ctype.exit.thread ], [ %i.jk, %bb.cj ], [ %.15, %bbuf_free.exit434 ], [ %.15, %bb.fq ], [ %.15, %bb.fr ], [ %i.mb, %bb.dd ], [ %i.md, %bb.df ], [ %i.jf, %bb.cg ], [ -102, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @is_onechar_cclass(ptr noundef readonly captures(none) %0, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !145
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.not40 = icmp eq ptr %i.b, null
  br i1 %.not40, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 6 uses
  %i.k = getelementptr i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i32 %i.j, 256
  br i1 %i.n, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = lshr i32 %i.j, 5
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = and i32 %i.j, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not41 = icmp eq i32 %i.v, 0
  %spec.store.select = select i1 %.not41, i32 %i.j, i32 -1
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.b
  %.232 = phi i32 [ -1, %bb.b ], [ %i.j, %bb.e ], [ %spec.store.select, %bb.f ]
  %i.w = getelementptr i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.j
  %indvars.iv = phi i64 [ 0, %.thread ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.33353 = phi i32 [ %.232, %.thread ], [ %.5.ph.a, %bb.j ] ; 2 uses
  %2 = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.x = load i32, ptr %2, align 4, !tbaa !7      ; 3 uses
  %.not43.a = icmp eq i32 %i.x, 0
  br i1 %.not43.a, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.x)
  %i.z = icmp samesign ult i32 %i.y, 2
  %i.aa = icmp eq i32 %.33353, -1
  %or.cond.a = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.a, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ab = add i32 %i.x, -1                        ; 2 uses
  %3 = and i32 %i.ab, 1431655765
  %4 = lshr i32 %i.ab, 1
  %5 = and i32 %4, 1431655765
  %6 = add nuw nsw i32 %5, %3                     ; 2 uses
  %7 = and i32 %6, 858993459
  %8 = lshr i32 %6, 2
  %9 = and i32 %8, 322122547
  %10 = add nuw nsw i32 %9, %7                    ; 2 uses
  %11 = and i32 %10, 117901063
  %12 = lshr i32 %10, 4
  %13 = and i32 %12, 117901063
  %14 = add nuw nsw i32 %13, %11                  ; 2 uses
  %15 = and i32 %14, 983055
  %16 = lshr i32 %14, 8
  %17 = and i32 %16, 983055
  %18 = add nuw nsw i32 %17, %15                  ; 2 uses
  %19 = and i32 %18, 31
  %20 = lshr i32 %18, 16
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %21 = shl i32 %indvars.iv.tr, 5
  %i.ac = or disjoint i32 %20, %21
  %22 = add nuw nsw i32 %i.ac, %19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.5.ph.a = phi i32 [ %.33353, %bb.g ], [ %22, %bb.i ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.k, label %bb.g, !llvm.loop !179

bb.k:                                             ; preds = %bb.j
  %.not42 = icmp eq i32 %.5.ph.a, -1
  br i1 %.not42, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.5.ph.a, ptr %1, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c, %bb.k, %bb.a, %bb.l
  %.4 = phi i32 [ 0, %bb.k ], [ 0, %bb.d ], [ 1, %bb.l ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.h ]
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @cclass_case_fold(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.IApplyCaseFoldArg, align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %3, ptr %4, align 8, !tbaa !147
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !149
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !150
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %i.d, align 8, !tbaa !152
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %i.i = getelementptr i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !86
  %i.k = call i32 %i.h(i32 noundef %i.j, ptr noundef nonnull @i_apply_case_fold, ptr noundef nonnull %4, ptr noundef %i.f) #25 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !151  ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @onig_node_free(ptr noundef %i.l)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !90
  %i.n = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @onig_node_free(ptr noundef nonnull %i.l)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 9, ptr %i.n, align 1
  %i.p = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr i8, ptr %i.n, i64 16
  store ptr %i.l, ptr %i.q, align 8, !tbaa !13
  store ptr %i.n, ptr %0, align 8, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread, %bb.b
  %.1 = phi i32 [ %i.k, %bb.b ], [ -5, %.thread ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @scan_env_add_mem_entry(ptr noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 92         ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  %i.c = add i32 %i.b, 1                          ; 5 uses
  %i.d = icmp sgt i32 %i.c, 32767
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, 7
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 100        ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !180  ; 2 uses
  %.not = icmp sgt i32 %i.g, %i.c
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.k, ptr noundef nonnull align 1 dereferenceable(64) %i.m, i64 noundef 64, i1 noundef false) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = shl i32 %i.g, 1                          ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.i, i64 noundef %i.p) #27 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ 16, %bb.f ], [ %i.n, %bb.g ]  ; 3 uses
  %.0 = phi ptr [ %i.k, %bb.f ], [ %i.q, %bb.g ]  ; 2 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.02834 = add i32 %i.s, 1                       ; 3 uses
  %i.t = icmp slt i32 %.02834, %.026
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.u = sext i32 %.02834 to i64
  %i.v = shl nsw i64 %i.u, 3
  %scevgep = getelementptr i8, ptr %.0, i64 %i.v
  %i.w = add i32 %.026, -2
  %i.x = sub i32 %i.w, %i.s
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.aa, i1 false), !tbaa !90
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.h
  store ptr %.0, ptr %i.h, align 8, !tbaa !93
  store i32 %.026, ptr %i.f, align 4, !tbaa !180
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.pre-phi = phi i32 [ %i.c, %bb.c ], [ %.02834, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  store i32 %.pre-phi, ptr %i.a, align 4, !tbaa !92
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.i
  %.027 = phi i32 [ -5, %bb.e ], [ -210, %bb.a ], [ %.pre-phi, %bb.i ], [ -5, %bb.g ]
  ret i32 %.027
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -219, 1) i32 @name_add(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, -2147483648) %3, ptr noundef captures(none) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.st_str_end_key, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %name_find.exit

name_find.exit:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %1, ptr %5, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.h, align 8, !tbaa !14
  %i.i = ptrtoint ptr %5 to i64
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.c, i64 noundef %i.i, ptr noundef nonnull %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !11 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.k = icmp eq ptr %.pre.i, null
  br i1 %i.k, label %bb.d, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.l = tail call ptr @rb_st_init_table_with_size(ptr noundef nonnull @onig_st_init_strend_table_with_size.hashType, i64 noundef 5) #25 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %name_find.exit, %bb.c
  %.063 = phi ptr [ %i.l, %bb.c ], [ %i.c, %name_find.exit ]
  %i.m = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #26 ; 9 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr i8, ptr %i.p, i64 20
  %.val = load i32, ptr %i.q, align 4, !tbaa !47  ; 3 uses
  %i.r = sext i32 %.val to i64
  %i.s = add i64 %i.f, %i.r
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #26 ; 6 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %1, i64 noundef %i.f, i1 noundef false) #25
  %i.v = icmp sgt i32 %.val, 0
  br i1 %i.v, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.t, i64 %i.f
  %i.x = zext nneg i32 %.val to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false), !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.m) #25
  br label %.critedge

bb.h:                                             ; preds = %bb.f, %.lr.ph.i
  store ptr %i.t, ptr %i.m, align 8, !tbaa !49
  %i.y = getelementptr i8, ptr %i.t, i64 %i.f
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.t, ptr %i.aa, align 8, !tbaa !17
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !14
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = call i32 @rb_st_insert(ptr noundef %.063, i64 noundef %i.ac, i64 noundef %i.z) #25
  %.not.i74 = icmp eq i32 %i.ad, 0
  br i1 %.not.i74, label %.thread93, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.aa) #25
  br label %.thread93

.thread93:                                        ; preds = %bb.h, %bb.i
  %i.ae = getelementptr i8, ptr %i.m, i64 8
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr i8, ptr %i.m, i64 20
  store i32 0, ptr %i.af, align 4, !tbaa !44
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  store i32 1, ptr %i.ah, align 8, !tbaa !43
  br label %bb.n

bb.j:                                             ; preds = %name_find.exit
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 4 uses
  %i.ai = getelementptr i8, ptr %.pre.i, i64 16   ; 3 uses
  %i.aj = icmp sgt i32 %.pre, 0
  br i1 %i.aj, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ao = and i32 %i.an, 256
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %4, i64 56
  store ptr %1, ptr %i.ap, align 8, !tbaa !95
  %i.aq = getelementptr i8, ptr %4, i64 64
  store ptr %2, ptr %i.aq, align 8, !tbaa !96
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.ar, ptr %i.ai, align 8, !tbaa !43
  %i.as = icmp eq i32 %.pre, 0
  br i1 %i.as, label %bb.n, label %.thread76

bb.n:                                             ; preds = %.thread93, %bb.m
  %.0649295 = phi ptr [ %i.m, %.thread93 ], [ %.pre.i, %bb.m ]
  %i.at = getelementptr i8, ptr %.0649295, i64 24
  store i32 %3, ptr %i.at, align 8, !tbaa !45
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.au = add nuw i32 %.pre, 1                    ; 3 uses
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !43
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.p, label %.thread76

bb.p:                                             ; preds = %bb.o
  %i.aw = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %i.ax = getelementptr i8, ptr %.pre.i, i64 32
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !46
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %.pre.i, i64 20
  store i32 8, ptr %i.az, align 4, !tbaa !44
  %i.ba = getelementptr i8, ptr %.pre.i, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !45
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !7
  %i.bc = getelementptr i8, ptr %i.aw, i64 4
  store i32 %3, ptr %i.bc, align 4, !tbaa !7
  br label %.critedge

.thread76:                                        ; preds = %bb.m, %bb.o
  %i.bd = phi i32 [ %i.au, %bb.o ], [ %i.ar, %bb.m ] ; 2 uses
  %i.be = getelementptr i8, ptr %.pre.i, i64 20   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !44 ; 2 uses
  %i.bg = icmp sgt i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.r, label %.thread76._crit_edge

.thread76._crit_edge:                             ; preds = %.thread76
  %.phi.trans.insert77 = getelementptr i8, ptr %.pre.i, i64 32
  %.pre78 = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !46
  br label %bb.t

bb.r:                                             ; preds = %.thread76
  %i.bh = shl i32 %i.bf, 1                        ; 2 uses
  %i.bi = getelementptr i8, ptr %.pre.i, i64 32   ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bk = sext i32 %i.bh to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = call ptr @realloc(ptr noundef %i.bj, i64 noundef %i.bl) #27 ; 3 uses
  %.not72 = icmp eq ptr %i.bm, null
  br i1 %.not72, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !46
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !44
  %.pre79 = load i32, ptr %i.ai, align 8, !tbaa !43
  br label %bb.t

bb.t:                                             ; preds = %.thread76._crit_edge, %bb.s
  %i.bn = phi i32 [ %i.bd, %.thread76._crit_edge ], [ %.pre79, %bb.s ]
  %i.bo = phi ptr [ %.pre78, %.thread76._crit_edge ], [ %i.bm, %bb.s ]
  %i.bp = add i32 %i.bn, -1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.bo, i64 %i.bq
  store i32 %3, ptr %i.br, align 4, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.n, %bb.t, %bb.q, %bb.p, %bb.d, %bb.a, %bb.l, %bb.g
  %.1 = phi i32 [ -219, %bb.l ], [ -214, %bb.a ], [ -5, %bb.g ], [ 0, %bb.n ], [ -5, %bb.d ], [ -5, %bb.r ], [ -5, %bb.p ], [ 0, %bb.q ], [ 0, %bb.t ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @node_new_option(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_enclose.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x i32> <i32 6, i32 0, i32 2, i32 0>, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.a, i64 20
  store i32 -1, ptr %i.e, align 4, !tbaa !13
  %i.f = getelementptr i8, ptr %i.a, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !13
  store i32 %0, ptr %i.c, align 8, !tbaa !13
  br label %node_new_enclose.exit.thread

node_new_enclose.exit.thread:                     ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @node_new_str_raw(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !13
  %i.h = tail call i32 @onig_node_str_cat(ptr noundef nonnull %i.a, ptr noundef nonnull %0, ptr noundef %1)
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %node_new_str.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @onig_node_free(ptr noundef nonnull %i.a)
  br label %node_new_str.exit.thread

node_new_str.exit:                                ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !13
  %i.j = or i32 %i.i, 1
  store i32 %i.j, ptr %i.d, align 8, !tbaa !13
  br label %node_new_str.exit.thread

node_new_str.exit.thread:                         ; preds = %bb.c, %bb.a, %node_new_str.exit
  %.0.i7 = phi ptr [ %i.a, %node_new_str.exit ], [ null, %bb.a ], [ null, %bb.c ]
  ret ptr %.0.i7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bitset_set_range(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp sle i32 %2, %3
  %i.b = icmp slt i32 %2, 256
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %0, i64 180        ; 2 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %3, i32 255)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %CC_DUP_WARN.exit
  %.014 = phi i32 [ %2, %.lr.ph ], [ %i.aa, %CC_DUP_WARN.exit ] ; 4 uses
  %i.f = sdiv i32 %.014, 32
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [4 x i8], ptr %1, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %.014, 31
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr @onig_warn, align 8
  %i.n = icmp eq ptr %i.m, @onig_null_warn
  %or.cond = select i1 %.not, i1 true, i1 %i.n
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  %i.q = and i64 %i.p, -5
  %.not5.i = icmp eq i64 %i.q, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !60
  %i.u = and i32 %i.t, 67108864
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.e, align 4, !tbaa !137  ; 2 uses
  %i.w = and i32 %i.v, 67108864
  %.not4.i = icmp eq i32 %i.w, 0
  br i1 %.not4.i, label %bb.f, label %CC_DUP_WARN.exit

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i32 %i.v, 67108864
  store i32 %i.x, ptr %i.e, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.y = load i32, ptr %i.h, align 4, !tbaa !7
  %i.z = or i32 %i.y, %i.k
  store i32 %i.z, ptr %i.h, align 4, !tbaa !7
  %i.aa = add nsw i32 %.014, 1
  %i.ab = icmp slt i32 %.014, %invariant.smin
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_code_range_to_buf0(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp ugt i32 %2, %3                      ; 2 uses
  %spec.select = select i1 %i.a, i32 %3, i32 %2   ; 7 uses
  %spec.select352 = select i1 %i.a, i32 %2, i32 %3 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !138    ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 8 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge228, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef 20) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %.critedge228

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !182  ; 2 uses
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !66
  br label %bb.g

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.j = phi i32 [ %i.k, %.preheader.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 1                  ; 3 uses
  %i.l = icmp samesign ult i32 %i.j, 2
  br i1 %i.l, label %.preheader.i, label %bb.e, !llvm.loop !183

bb.e:                                             ; preds = %.preheader.i
  store i32 %i.k, ptr %i.g, align 4, !tbaa !182
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.n = zext nneg i32 %i.k to i64
  %i.o = tail call ptr @realloc(ptr noundef %i.m, i64 noundef %i.n) #27 ; 3 uses
  %.not28.i = icmp eq ptr %i.o, null
  br i1 %.not28.i, label %.critedge228, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.d, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.p = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.f ]
  store i32 0, ptr %i.p, align 1
  %i.q = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !184
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %bb.h, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %i.q, align 8, !tbaa !184
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.h, %bb.g
  %i.t = load ptr, ptr %0, align 8, !tbaa !138    ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !66
  %i.u = getelementptr i8, ptr %.pre, i64 4
  br label %._crit_edge261

bb.i:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 7 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4        ; 4 uses
  %i.y = icmp eq i32 %spec.select, 0
  %.not270 = icmp eq i32 %i.w, 0
  %.not = select i1 %i.y, i1 true, i1 %.not270
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.z = add i32 %spec.select, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.0169256 = phi i32 [ 0, %.lr.ph ], [ %.1170, %bb.j ] ; 2 uses
  %.0173255 = phi i32 [ %i.w, %.lr.ph ], [ %.1174, %bb.j ] ; 2 uses
  %i.aa = add i32 %.0169256, %.0173255            ; 2 uses
  %i.ab = lshr i32 %i.aa, 1                       ; 2 uses
  %i.ac = or i32 %i.aa, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = icmp ugt i32 %i.z, %i.af                ; 2 uses
  %i.ah = add nuw i32 %i.ab, 1
  %.1174 = select i1 %i.ag, i32 %.0173255, i32 %i.ab ; 2 uses
  %.1170 = select i1 %i.ag, i32 %i.ah, i32 %.0169256 ; 3 uses
  %i.ai = icmp ult i32 %.1170, %.1174
  br i1 %i.ai, label %bb.j, label %._crit_edge, !llvm.loop !185

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %.0169.lcssa = phi i32 [ 0, %bb.i ], [ %.1170, %bb.j ] ; 3 uses
  %i.aj = icmp eq i32 %spec.select352, -1
  %i.ak = select i1 %i.aj, i32 %i.w, i32 %.0169.lcssa ; 3 uses
  %i.al = icmp ult i32 %i.ak, %i.w
  br i1 %i.al, label %.lr.ph260, label %._crit_edge261

.lr.ph260:                                        ; preds = %._crit_edge
  %i.am = add i32 %spec.select352, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph260, %bb.k
  %.0171258 = phi i32 [ %i.ak, %.lr.ph260 ], [ %.1172, %bb.k ] ; 2 uses
  %.2175257 = phi i32 [ %i.w, %.lr.ph260 ], [ %.3176, %bb.k ] ; 2 uses
  %i.an = add i32 %.0171258, %.2175257            ; 2 uses
  %i.ao = lshr i32 %i.an, 1                       ; 2 uses
  %i.ap = and i32 %i.an, -2
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.x, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %.not224 = icmp ult i32 %i.am, %i.as            ; 2 uses
  %i.at = add nuw i32 %i.ao, 1
  %.3176 = select i1 %.not224, i32 %i.ao, i32 %.2175257 ; 2 uses
  %.1172 = select i1 %.not224, i32 %.0171258, i32 %i.at ; 3 uses
  %i.au = icmp ult i32 %.1172, %.3176
  br i1 %i.au, label %bb.k, label %._crit_edge261, !llvm.loop !186

._crit_edge261:                                   ; preds = %bb.k, %._crit_edge.thread, %._crit_edge
  %.0169.lcssa328 = phi i32 [ %.0169.lcssa, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %.0169.lcssa, %bb.k ] ; 3 uses
  %storemerge320327 = phi i32 [ %i.w, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %i.w, %bb.k ] ; 3 uses
  %.0177321326 = phi ptr [ %i.b, %._crit_edge ], [ %i.t, %._crit_edge.thread ], [ %i.b, %bb.k ] ; 20 uses
  %i.av = phi ptr [ %i.x, %._crit_edge ], [ %i.u, %._crit_edge.thread ], [ %i.x, %bb.k ] ; 4 uses
  %.0171.lcssa = phi i32 [ %i.ak, %._crit_edge ], [ 0, %._crit_edge.thread ], [ %.1172, %bb.k ] ; 7 uses
  %i.aw = add nuw i32 %.0169.lcssa328, 1          ; 4 uses
  %i.ax = sub i32 %i.aw, %.0171.lcssa             ; 3 uses
  %i.ay = add i32 %i.ax, %storemerge320327        ; 2 uses
  %i.az = icmp ugt i32 %i.ay, 10000
  br i1 %i.az, label %.critedge228, label %bb.l

bb.l:                                             ; preds = %._crit_edge261
  %.not212 = icmp eq i32 %i.ax, 1
  br i1 %.not212, label %.thread242, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not213 = icmp eq i32 %4, 0
  %.pre280 = shl i32 %.0169.lcssa328, 1           ; 3 uses
  br i1 %.not213, label %CC_DUP_WARN.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = or disjoint i32 %.pre280, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %.not214 = icmp ugt i32 %spec.select, %i.bd
  br i1 %.not214, label %CC_DUP_WARN.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %.pre280 to i64
  %i.bf = getelementptr [4 x i8], ptr %i.av, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %.not215 = icmp ugt i32 %i.bg, %spec.select
  %.not216 = icmp ugt i32 %i.bd, %spec.select352
  %or.cond = and i1 %.not216, %.not215
  %i.bh = load ptr, ptr @onig_warn, align 8
  %i.bi = icmp eq ptr %i.bh, @onig_null_warn
  %or.cond245 = select i1 %or.cond, i1 true, i1 %i.bi
  br i1 %or.cond245, label %CC_DUP_WARN.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bl = and i64 %i.bk, -5
  %.not5.i = icmp eq i64 %i.bl, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !98
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !60
  %i.bq = and i32 %i.bp, 67108864
  %.not.i238 = icmp eq i32 %i.bq, 0
  br i1 %.not.i238, label %CC_DUP_WARN.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %1, i64 180       ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !137 ; 2 uses
  %i.bt = and i32 %i.bs, 67108864
  %.not4.i = icmp eq i32 %i.bt, 0
  br i1 %.not4.i, label %bb.s, label %CC_DUP_WARN.exit

bb.s:                                             ; preds = %bb.r
  %i.bu = or disjoint i32 %i.bs, 67108864
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %1, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.m, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.bv = zext i32 %.pre280 to i64
  %i.bw = getelementptr [4 x i8], ptr %i.av, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7  ; 2 uses
  %i.by = icmp ugt i32 %spec.select, %i.bx
  %spec.select353 = select i1 %i.by, i32 %i.bx, i32 %spec.select ; 3 uses
  %i.bz = shl i32 %.0171.lcssa, 1
  %i.ca = add i32 %i.bz, -1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %i.av, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7  ; 2 uses
  %i.ce = icmp ult i32 %spec.select352, %i.cd
  %.1 = select i1 %i.ce, i32 %i.cd, i32 %spec.select352 ; 3 uses
  %.not217 = icmp eq i32 %i.aw, %.0171.lcssa
  br i1 %.not217, label %.critedge, label %bb.t

.thread242:                                       ; preds = %bb.l
  %i.cf = shl i32 %.0171.lcssa, 3
  %i.cg = or disjoint i32 %i.cf, 4
  %i.ch = shl i32 %i.aw, 3
  %i.ci = or disjoint i32 %i.ch, 4
  br label %bb.u

bb.t:                                             ; preds = %CC_DUP_WARN.exit
  %i.cj = shl i32 %.0171.lcssa, 3                 ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 4                ; 3 uses
  %i.cl = shl i32 %i.aw, 3                        ; 2 uses
  %i.cm = or disjoint i32 %i.cl, 4                ; 2 uses
  %i.cn = icmp sgt i32 %i.ax, 0
  br i1 %i.cn, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.thread242, %bb.t
  %.2346 = phi i32 [ %spec.select, %.thread242 ], [ %spec.select353, %bb.t ] ; 3 uses
  %.2 = phi i32 [ %spec.select352, %.thread242 ], [ %.1, %bb.t ] ; 3 uses
  %i.co = phi i32 [ %i.ci, %.thread242 ], [ %i.cm, %bb.t ] ; 2 uses
  %i.cp = phi i32 [ %i.cg, %.thread242 ], [ %i.ck, %bb.t ]
  %i.cq = icmp ult i32 %.0171.lcssa, %storemerge320327
  br i1 %i.cq, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.cr = sub nuw i32 %storemerge320327, %.0171.lcssa
  %i.cs = shl i32 %i.cr, 3                        ; 2 uses
  %i.ct = add i32 %i.co, %i.cs                    ; 4 uses
  %i.cu = getelementptr i8, ptr %.0177321326, i64 12 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !182 ; 2 uses
  %i.cw = icmp ugt i32 %i.ct, %i.cv
  br i1 %i.cw, label %.preheader249, label %._crit_edge275

._crit_edge275:                                   ; preds = %bb.v
  %.pre276 = load ptr, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.y

.preheader249:                                    ; preds = %bb.v, %.preheader249
  %i.cx = phi i32 [ %i.cy, %.preheader249 ], [ %i.cv, %bb.v ]
  %i.cy = shl i32 %i.cx, 1                        ; 4 uses
  %i.cz = icmp ult i32 %i.cy, %i.ct
  br i1 %i.cz, label %.preheader249, label %bb.w, !llvm.loop !187

bb.w:                                             ; preds = %.preheader249
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !182
  %i.da = load ptr, ptr %.0177321326, align 8, !tbaa !66
  %i.db = zext i32 %i.cy to i64
  %i.dc = tail call ptr @realloc(ptr noundef %i.da, i64 noundef %i.db) #27 ; 3 uses
  %.not218 = icmp eq ptr %i.dc, null
  br i1 %.not218, label %.critedge228, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.dc, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge275, %bb.x
  %i.dd = phi ptr [ %.pre276, %._crit_edge275 ], [ %i.dc, %bb.x ] ; 2 uses
  %i.de = sext i32 %i.co to i64
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.de
  %i.dg = sext i32 %i.cp to i64
  %i.dh = getelementptr i8, ptr %i.dd, i64 %i.dg
  %i.di = sext i32 %i.cs to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.df, ptr noundef nonnull align 1 %i.dh, i64 noundef range(i64 -2147483648, 4294967296) %i.di, i1 noundef false) #25
  %i.dj = getelementptr i8, ptr %.0177321326, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !184
  %i.dl = icmp ugt i32 %i.ct, %i.dk
  br i1 %i.dl, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  store i32 %i.ct, ptr %i.dj, align 8, !tbaa !184
  br label %.critedge

bb.aa:                                            ; preds = %bb.t
  %i.dm = load ptr, ptr %.0177321326, align 8, !tbaa !66 ; 2 uses
  %i.dn = sext i32 %i.cm to i64
  %i.do = getelementptr i8, ptr %i.dm, i64 %i.dn
  %i.dp = sext i32 %i.ck to i64
  %i.dq = getelementptr i8, ptr %i.dm, i64 %i.dp
  %i.dr = getelementptr i8, ptr %.0177321326, i64 8 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !184
  %i.dt = sub i32 %i.ds, %i.ck
  %i.du = zext i32 %i.dt to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.do, ptr noundef nonnull align 1 %i.dq, i64 noundef range(i64 -2147483648, 4294967296) %i.du, i1 noundef false) #25
  %.neg = sub i32 %i.cl, %i.cj
  %i.dv = load i32, ptr %i.dr, align 8, !tbaa !184
  %i.dw = add i32 %.neg, %i.dv
  store i32 %i.dw, ptr %i.dr, align 8, !tbaa !184
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.z, %bb.u, %bb.aa, %CC_DUP_WARN.exit
  %.3347 = phi i32 [ %.2346, %bb.z ], [ %.2346, %bb.y ], [ %.2346, %bb.u ], [ %spec.select353, %CC_DUP_WARN.exit ], [ %spec.select353, %bb.aa ]
  %.3 = phi i32 [ %.2, %bb.z ], [ %.2, %bb.y ], [ %.2, %bb.u ], [ %.1, %CC_DUP_WARN.exit ], [ %.1, %bb.aa ]
  %i.dx = shl i32 %.0169.lcssa328, 3              ; 3 uses
  %i.dy = getelementptr i8, ptr %.0177321326, i64 12 ; 7 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !182 ; 3 uses
  %i.ea = add i32 %i.dx, 12                       ; 5 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.critedge
  %.0178 = phi i32 [ %i.dz, %.critedge ], [ %i.ec, %bb.ab ] ; 6 uses
  %i.eb = icmp ult i32 %.0178, %i.ea
  %i.ec = shl i32 %.0178, 1
  br i1 %i.eb, label %bb.ab, label %bb.ac, !llvm.loop !188

bb.ac:                                            ; preds = %bb.ab
  %.not219 = icmp eq i32 %i.dz, %.0178
  br i1 %.not219, label %.critedge229, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load ptr, ptr %.0177321326, align 8, !tbaa !66
  %i.ee = zext i32 %.0178 to i64
  %i.ef = tail call ptr @realloc(ptr noundef %i.ed, i64 noundef %i.ee) #27 ; 2 uses
  %.not220 = icmp eq ptr %i.ef, null
  br i1 %.not220, label %.critedge228, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.ef, ptr %.0177321326, align 8, !tbaa !66
  store i32 %.0178, ptr %i.dy, align 4, !tbaa !182
  br label %.critedge229

.critedge229:                                     ; preds = %bb.ae, %bb.ac
  %.promoted264 = phi i32 [ %.0178, %bb.ae ], [ %i.dz, %bb.ac ] ; 2 uses
  %i.eg = add i32 %i.dx, 8                        ; 5 uses
  %i.eh = icmp ult i32 %.promoted264, %i.eg
  br i1 %i.eh, label %.preheader248, label %.critedge229._crit_edge

.critedge229._crit_edge:                          ; preds = %.critedge229
  %.pre277 = load ptr, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.ah

.preheader248:                                    ; preds = %.critedge229, %.preheader248
  %i.ei = phi i32 [ %i.ej, %.preheader248 ], [ %.promoted264, %.critedge229 ]
  %i.ej = shl i32 %i.ei, 1                        ; 4 uses
  %i.ek = icmp ult i32 %i.ej, %i.eg
  br i1 %i.ek, label %.preheader248, label %bb.af, !llvm.loop !189

bb.af:                                            ; preds = %.preheader248
  store i32 %i.ej, ptr %i.dy, align 4, !tbaa !182
  %i.el = load ptr, ptr %.0177321326, align 8, !tbaa !66
  %i.em = zext i32 %i.ej to i64
  %i.en = tail call ptr @realloc(ptr noundef %i.el, i64 noundef %i.em) #27 ; 3 uses
  %.not221 = icmp eq ptr %i.en, null
  br i1 %.not221, label %.critedge228, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.en, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge229._crit_edge, %bb.ag
  %i.eo = phi ptr [ %.pre277, %.critedge229._crit_edge ], [ %i.en, %bb.ag ]
  %i.ep = sext i32 %i.dx to i64
  %i.eq = getelementptr i8, ptr %i.eo, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  store i32 %.3347, ptr %i.er, align 1
  %i.es = getelementptr i8, ptr %.0177321326, i64 8 ; 6 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !184
  %i.eu = icmp ult i32 %i.et, %i.eg
  br i1 %i.eu, label %bb.ai, label %.critedge232

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.eg, ptr %i.es, align 8, !tbaa !184
  br label %.critedge232

.critedge232:                                     ; preds = %bb.ai, %bb.ah
  %i.ev = load i32, ptr %i.dy, align 4, !tbaa !182 ; 2 uses
  %i.ew = icmp ult i32 %i.ev, %i.ea
  br i1 %i.ew, label %.preheader247, label %.critedge232._crit_edge

.critedge232._crit_edge:                          ; preds = %.critedge232
  %.pre278 = load ptr, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.al

.preheader247:                                    ; preds = %.critedge232, %.preheader247
  %i.ex = phi i32 [ %i.ey, %.preheader247 ], [ %i.ev, %.critedge232 ]
  %i.ey = shl i32 %i.ex, 1                        ; 4 uses
  %i.ez = icmp ult i32 %i.ey, %i.ea
  br i1 %i.ez, label %.preheader247, label %bb.aj, !llvm.loop !190

bb.aj:                                            ; preds = %.preheader247
  store i32 %i.ey, ptr %i.dy, align 4, !tbaa !182
  %i.fa = load ptr, ptr %.0177321326, align 8, !tbaa !66
  %i.fb = zext i32 %i.ey to i64
  %i.fc = tail call ptr @realloc(ptr noundef %i.fa, i64 noundef %i.fb) #27 ; 3 uses
  %.not222 = icmp eq ptr %i.fc, null
  br i1 %.not222, label %.critedge228, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.fc, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.al

bb.al:                                            ; preds = %.critedge232._crit_edge, %bb.ak
  %i.fd = phi ptr [ %.pre278, %.critedge232._crit_edge ], [ %i.fc, %bb.ak ]
  %i.fe = sext i32 %i.eg to i64
  %i.ff = getelementptr i8, ptr %i.fd, i64 %i.fe
  store i32 %.3, ptr %i.ff, align 1
  %i.fg = load i32, ptr %i.es, align 8, !tbaa !184
  %i.fh = icmp ult i32 %i.fg, %i.ea
  br i1 %i.fh, label %bb.am, label %.critedge235

bb.am:                                            ; preds = %bb.al
  store i32 %i.ea, ptr %i.es, align 8, !tbaa !184
  br label %.critedge235

.critedge235:                                     ; preds = %bb.am, %bb.al
  %i.fi = load i32, ptr %i.dy, align 4, !tbaa !182 ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 4
  br i1 %i.fj, label %.preheader, label %.critedge235._crit_edge

.critedge235._crit_edge:                          ; preds = %.critedge235
  %.pre279 = load ptr, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.ap

.preheader:                                       ; preds = %.critedge235, %.preheader
  %i.fk = phi i32 [ %i.fl, %.preheader ], [ %i.fi, %.critedge235 ] ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fk, 1                ; 3 uses
  %i.fm = icmp samesign ult i32 %i.fk, 2
  br i1 %i.fm, label %.preheader, label %bb.an, !llvm.loop !191

bb.an:                                            ; preds = %.preheader
  store i32 %i.fl, ptr %i.dy, align 4, !tbaa !182
  %i.fn = load ptr, ptr %.0177321326, align 8, !tbaa !66
  %i.fo = zext nneg i32 %i.fl to i64
  %i.fp = tail call ptr @realloc(ptr noundef %i.fn, i64 noundef %i.fo) #27 ; 3 uses
  %.not223 = icmp eq ptr %i.fp, null
  br i1 %.not223, label %.critedge228, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %i.fp, ptr %.0177321326, align 8, !tbaa !66
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge235._crit_edge, %bb.ao
  %i.fq = phi ptr [ %.pre279, %.critedge235._crit_edge ], [ %i.fp, %bb.ao ]
  store i32 %i.ay, ptr %i.fq, align 1
  %i.fr = load i32, ptr %i.es, align 8, !tbaa !184
  %i.fs = icmp ult i32 %i.fr, 4
  br i1 %i.fs, label %bb.aq, label %.critedge228

bb.aq:                                            ; preds = %bb.ap
  store i32 4, ptr %i.es, align 8, !tbaa !184
  br label %.critedge228

.critedge228:                                     ; preds = %bb.e, %bb.b, %bb.c, %bb.an, %bb.ap, %bb.aq, %bb.w, %bb.aj, %bb.af, %bb.ad, %._crit_edge261
  %.18 = phi i32 [ -5, %bb.ad ], [ 0, %bb.aq ], [ -5, %bb.af ], [ -205, %._crit_edge261 ], [ -5, %bb.aj ], [ -5, %bb.w ], [ -5, %bb.an ], [ 0, %bb.ap ], [ -5, %bb.e ], [ -5, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.18
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @CC_DUP_WARN(ptr noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @onig_warn, align 8, !tbaa !11
  %i.b = icmp eq ptr %i.a, @onig_null_warn
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %i.e = and i64 %i.d, -5
  %.not5 = icmp eq i64 %i.e, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60
  %i.j = and i32 %i.i, 67108864
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 180        ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !137  ; 2 uses
  %i.m = and i32 %i.l, 67108864
  %.not4 = icmp eq i32 %i.m, 0
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = or disjoint i32 %i.l, 67108864
  store i32 %i.n, ptr %i.k, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d, %bb.c
  ret void
}

declare i32 @onig_bbuf_init(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_property_to_cc(ptr noundef captures(address) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = getelementptr i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = tail call i32 %i.f(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %1, ptr noundef %i.b) #25, !inline_history !192 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %propname2ctype.exit.thread, label %propname2ctype.exit

propname2ctype.exit.thread:                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 56
  store ptr %1, ptr %i.i, align 8, !tbaa !95
  %i.j = getelementptr i8, ptr %3, i64 64
  store ptr %i.b, ptr %i.j, align 8, !tbaa !96
  br label %bb.b

propname2ctype.exit:                              ; preds = %bb.a
  %i.k = tail call fastcc i32 @add_ctype_to_cc(ptr noundef %0, i32 noundef %i.g, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %3)
  br label %bb.b

bb.b:                                             ; preds = %propname2ctype.exit.thread, %propname2ctype.exit
  %.0 = phi i32 [ %i.k, %propname2ctype.exit ], [ %i.g, %propname2ctype.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @quantify_property_node(ptr noundef captures(none) initializes((0, 8)) %0, ptr noundef captures(none) %1, ptr noundef %2, i8 noundef signext range(i8 42, 51) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_cclass.exit.thread.i, label %bb.b

node_new_cclass.exit.thread.i:                    ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %quantify_node.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !90
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = tail call i32 %i.i(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %2, ptr noundef %i.e) #25, !inline_history !193 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %add_property_to_cc.exit.thread.i, label %add_property_to_cc.exit.i

add_property_to_cc.exit.thread.i:                 ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 56
  store ptr %2, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr i8, ptr %1, i64 64
  store ptr %i.e, ptr %i.m, align 8, !tbaa !96
  br label %bb.c

add_property_to_cc.exit.i:                        ; preds = %bb.b
  %i.n = tail call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %create_property_node.exit, label %bb.c

bb.c:                                             ; preds = %add_property_to_cc.exit.i, %add_property_to_cc.exit.thread.i
  %.0.i12.i = phi i32 [ %i.j, %add_property_to_cc.exit.thread.i ], [ %i.n, %add_property_to_cc.exit.i ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.o)
  br label %quantify_node.exit

create_property_node.exit:                        ; preds = %add_property_to_cc.exit.i
  switch i8 %3, label %quantify_node.exit [
    i8 50, label %bb.e
    i8 43, label %bb.d
    i8 42, label %bb.f
  ]

bb.d:                                             ; preds = %create_property_node.exit
  br label %bb.f

bb.e:                                             ; preds = %create_property_node.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %create_property_node.exit
  %i.p = phi <2 x i32> [ splat (i32 2), %bb.e ], [ <i32 1, i32 -1>, %bb.d ], [ <i32 0, i32 -1>, %create_property_node.exit ]
  %i.q = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %quantify_node.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 5, ptr %i.q, align 1
  %i.s = getelementptr i8, ptr %i.q, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !13
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = getelementptr i8, ptr %i.q, i64 16
  store <2 x i32> %i.p, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.q, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr i8, ptr %i.q, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr %0, align 8, !tbaa !90
  store ptr %i.x, ptr %i.t, align 8, !tbaa !13
  store ptr %i.q, ptr %0, align 8, !tbaa !90
  br label %quantify_node.exit

quantify_node.exit:                               ; preds = %bb.c, %node_new_cclass.exit.thread.i, %bb.g, %bb.f, %create_property_node.exit
  %.010 = phi i32 [ -11, %create_property_node.exit ], [ -5, %bb.f ], [ 0, %bb.g ], [ %.0.i12.i, %bb.c ], [ -5, %node_new_cclass.exit.thread.i ]
  ret i32 %.010
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @create_property_node(ptr noundef captures(none) initializes((0, 8)) %0, ptr noundef captures(none) %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_cclass.exit.thread, label %bb.b

node_new_cclass.exit.thread:                      ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !90
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !90
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = tail call i32 %i.i(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %2, ptr noundef %i.e) #25, !inline_history !194 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %add_property_to_cc.exit.thread, label %add_property_to_cc.exit

add_property_to_cc.exit.thread:                   ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 56
  store ptr %2, ptr %i.l, align 8, !tbaa !95
  %i.m = getelementptr i8, ptr %1, i64 64
  store ptr %i.e, ptr %i.m, align 8, !tbaa !96
  br label %bb.c

add_property_to_cc.exit:                          ; preds = %bb.b
  %i.n = tail call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %add_property_to_cc.exit.thread, %add_property_to_cc.exit
  %.0.i12 = phi i32 [ %i.j, %add_property_to_cc.exit.thread ], [ %i.n, %add_property_to_cc.exit ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %node_new_cclass.exit.thread, %add_property_to_cc.exit, %bb.c
  %.0 = phi i32 [ -5, %node_new_cclass.exit.thread ], [ %.0.i12, %bb.c ], [ 0, %add_property_to_cc.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @create_node_from_array(i32 noundef range(i32 0, 2) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) unnamed_addr #12 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.b ], [ -1, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]     ; 3 uses
  %i.a = sext i32 %.0 to i64
  %i.b = getelementptr [8 x i8], ptr %2, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %.not = icmp eq ptr %i.c, null
  %i.d = add i32 %.0, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !139

.preheader:                                       ; preds = %bb.b
  %i.e = add i32 %.0, -1
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = icmp eq i32 %0, 0
  %i.h = zext i32 %indvars.iv to i64              ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.c ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227.us = phi ptr [ %i.o, %bb.c ], [ null, %.lr.ph ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %2, i64 %indvars.iv44 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %node_new_list.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  store i32 8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store ptr %.02227.us, ptr %i.n, align 8, !tbaa !13
  store ptr %i.k, ptr %1, align 8, !tbaa !90
  store ptr null, ptr %i.i, align 8, !tbaa !90
  %i.o = load ptr, ptr %1, align 8, !tbaa !90
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %i.p = icmp sgt i64 %indvars.iv44, 0
  br i1 %i.p, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !140

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.d ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02227 = phi ptr [ %i.w, %bb.d ], [ null, %.lr.ph ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %2, i64 %indvars.iv40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90
  %i.s = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %node_new_list.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  store i32 9, ptr %i.s, align 1
  %i.u = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store ptr %.02227, ptr %i.v, align 8, !tbaa !13
  store ptr %i.s, ptr %1, align 8, !tbaa !90
  store ptr null, ptr %i.q, align 8, !tbaa !90
  %i.w = load ptr, ptr %1, align 8, !tbaa !90
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %i.x = icmp sgt i64 %indvars.iv40, 0
  br i1 %i.x, label %.lr.ph.split, label %.loopexit, !llvm.loop !140

node_new_list.exit:                               ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.02227.us, %.lr.ph.split.us ], [ %.02227, %.lr.ph.split ]
  %.us-phi28.in = phi i64 [ %indvars.iv44, %.lr.ph.split.us ], [ %indvars.iv40, %.lr.ph.split ] ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !90
  %i.y = and i64 %.us-phi28.in, 2147483648
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %node_new_list.exit
  %i.aa = and i64 %.us-phi28.in, 2147483647
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %indvars.iv47 = phi i64 [ %i.aa, %.lr.ph32.preheader ], [ %indvars.iv.next48, %.lr.ph32 ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  tail call void @onig_node_free(ptr noundef %i.ac)
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  store ptr null, ptr %i.ab, align 8, !tbaa !90
  %.not58 = icmp eq i64 %indvars.iv47, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph32, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph32, %node_new_list.exit
  tail call void @onig_node_free(ptr noundef %.us-phi)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader, %._crit_edge
  %.023 = phi i32 [ -5, %._crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @not_code_range_buf(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef nonnull captures(none) initializes((0, 8)) %2, ptr noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !138
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !47
  %i.d = icmp sgt i32 %i.c, 1
  %i.e = select i1 %i.d, i32 0, i32 128
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = icmp sgt i32 %i.k, 1
  %i.m = select i1 %i.l, i32 0, i32 128
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03350 = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.h ] ; 2 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.n = shl i32 %indvars.iv.tr, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %i.t = add i32 %i.q, -1                         ; 2 uses
  %.not = icmp ugt i32 %.03350, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.03350, i32 noundef %i.t, i32 noundef 1) ; 2 uses
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp eq i32 %i.s, -1
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.s, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.sink.split, label %bb.e, !llvm.loop !195

.thread.sink.split:                               ; preds = %bb.h, %bb.b
  %.lcssa.sink = phi i32 [ %i.e, %bb.b ], [ %i.w, %bb.h ]
  %i.x = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.lcssa.sink, i32 noundef -1, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %.thread.sink.split
  %.032 = phi i32 [ %i.x, %.thread.sink.split ], [ 0, %bb.g ], [ %i.u, %bb.f ]
  ret i32 %.032
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_ctype_to_cc_by_range(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(none) %2, i32 noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !7      ; 6 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = icmp sgt i32 %i.a, 0                     ; 3 uses
  br i1 %i.b, label %.preheader, label %.preheader144

.preheader144:                                    ; preds = %bb.a
  br i1 %i.c, label %.preheader142.lr.ph, label %.preheader140

.preheader142.lr.ph:                              ; preds = %.preheader144
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader142

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count203 = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %._crit_edge168
  %indvars.iv200 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next201, %._crit_edge168 ] ; 4 uses
  %sext220 = shl i64 %indvars.iv200, 33
  %i.j = ashr exact i64 %sext220, 30
  %i.k = getelementptr i8, ptr %4, i64 %i.j       ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 4 uses
  %indvars.iv200.tr = trunc i64 %indvars.iv200 to i32
  %i.n = shl i32 %indvars.iv200.tr, 1
  %i.o = add i32 %i.n, 2
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %4, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 2 uses
  %.not119164 = icmp ugt i32 %i.m, %i.r
  br i1 %.not119164, label %._crit_edge168, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %bb.b
  %umax198 = tail call i32 @llvm.umax.i32(i32 %i.m, i32 %3) ; 3 uses
  %exitcond199.not14.not = icmp ult i32 %i.m, %3
  br i1 %exitcond199.not14.not, label %.lr.ph16, label %.lr.ph167.preheader._crit_edge

.lr.ph167:                                        ; preds = %CC_DUP_WARN.exit
  %i.s = add nuw i32 %.010416515, 1               ; 2 uses
  %exitcond199.not = icmp eq i32 %i.s, %umax198
  br i1 %exitcond199.not, label %.lr.ph167.preheader._crit_edge, label %.lr.ph16, !llvm.loop !196

.lr.ph167.preheader._crit_edge:                   ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.lcssa = phi i32 [ %i.av, %.lr.ph167 ], [ %i.r, %.lr.ph167.preheader ]
  %i.t = getelementptr i8, ptr %i.k, i64 4
  %i.u = trunc nuw nsw i64 %indvars.iv200 to i32  ; 2 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !7
  %i.w = icmp ugt i32 %umax198, %i.v
  br i1 %i.w, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph167.preheader._crit_edge
  %i.x = getelementptr i8, ptr %0, i64 40
  %i.y = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.x, ptr noundef %2, i32 noundef %umax198, i32 noundef %.lcssa, i32 noundef 1) ; 2 uses
  %.not122 = icmp eq i32 %i.y, 0
  br i1 %.not122, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.z = add i32 %i.u, 1
  br label %.loopexit

.lr.ph16:                                         ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.010416515 = phi i32 [ %i.s, %.lr.ph167 ], [ %i.m, %.lr.ph167.preheader ] ; 4 uses
  %i.aa = sdiv i32 %.010416515, 32
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %i.g, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = and i32 %.010416515, 31
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = and i32 %i.ad, %i.af
  %.not121 = icmp eq i32 %i.ag, 0
  %i.ah = load ptr, ptr @onig_warn, align 8
  %i.ai = icmp eq ptr %i.ah, @onig_null_warn
  %or.cond = select i1 %.not121, i1 true, i1 %i.ai
  br i1 %or.cond, label %CC_DUP_WARN.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph16
  %i.aj = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57
  %i.al = and i64 %i.ak, -5
  %.not5.i = icmp eq i64 %i.al, 0
  br i1 %.not5.i, label %CC_DUP_WARN.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !60
  %i.ap = and i32 %i.ao, 67108864
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %CC_DUP_WARN.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !137 ; 2 uses
  %i.ar = and i32 %i.aq, 67108864
  %.not4.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i, label %bb.h, label %CC_DUP_WARN.exit

bb.h:                                             ; preds = %bb.g
  %i.as = or disjoint i32 %i.aq, 67108864
  store i32 %i.as, ptr %i.i, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit

CC_DUP_WARN.exit:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph16
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.au = or i32 %i.at, %i.af
  store i32 %i.au, ptr %i.ac, align 4, !tbaa !7
  %i.av = load i32, ptr %i.q, align 4, !tbaa !7   ; 2 uses
  %.not119.not = icmp ult i32 %.010416515, %i.av
  br i1 %.not119.not, label %.lr.ph167, label %._crit_edge168, !llvm.loop !196

._crit_edge168:                                   ; preds = %CC_DUP_WARN.exit, %bb.b
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.thread, label %bb.b, !llvm.loop !197

.loopexit:                                        ; preds = %.preheader, %.lr.ph167.preheader._crit_edge, %bb.d
  %.1107 = phi i32 [ %i.z, %bb.d ], [ %i.u, %.lr.ph167.preheader._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 40
  %i.ax = icmp slt i32 %.1107, %i.a
  br i1 %i.ax, label %.lr.ph175.preheader, label %.thread

.lr.ph175.preheader:                              ; preds = %.loopexit
  %i.ay = zext i32 %.1107 to i64
  br label %.lr.ph175

bb.i:                                             ; preds = %.lr.ph175
  %indvars.iv.next206 = add i64 %indvars.iv205, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next206 to i32
  %exitcond208.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond208.not, label %.thread, label %.lr.ph175, !llvm.loop !198

.lr.ph175:                                        ; preds = %.lr.ph175.preheader, %bb.i
  %indvars.iv205 = phi i64 [ %i.ay, %.lr.ph175.preheader ], [ %indvars.iv.next206, %bb.i ] ; 2 uses
  %i.az = trunc i64 %indvars.iv205 to i32
  %i.ba = shl i32 %i.az, 1                        ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %4, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = add i32 %i.ba, 2
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [4 x i8], ptr %4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.aw, ptr noundef %2, i32 noundef %i.be, i32 noundef %i.bi, i32 noundef 1) ; 2 uses
  %.not123 = icmp eq i32 %i.bj, 0
  br i1 %.not123, label %bb.i, label %.thread

.preheader142:                                    ; preds = %.preheader142.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0155 = phi i32 [ 0, %.preheader142.lr.ph ], [ %i.cw, %._crit_edge ] ; 4 uses
  %sext = shl i64 %indvars.iv, 33
  %i.bk = ashr exact i64 %sext, 30
  %i.bl = getelementptr i8, ptr %4, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 4      ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = icmp ult i32 %.0155, %i.bn
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader142
  %umax = tail call i32 @llvm.umax.i32(i32 %.0155, i32 %3)
  %exitcond.not11.not = icmp ult i32 %.0155, %3
  br i1 %exitcond.not11.not, label %.lr.ph13, label %.loopexit141

.preheader140:                                    ; preds = %._crit_edge, %.preheader144
  %.0.lcssa = phi i32 [ 0, %.preheader144 ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.bp = icmp ult i32 %.0.lcssa, %3
  br i1 %i.bp, label %.lr.ph157, label %.loopexit141

.lr.ph157:                                        ; preds = %.preheader140
  %i.bq = getelementptr i8, ptr %0, i64 8
  %i.br = getelementptr i8, ptr %2, i64 16
  %i.bs = getelementptr i8, ptr %2, i64 180       ; 2 uses
  br label %bb.n

.lr.ph:                                           ; preds = %CC_DUP_WARN.exit127
  %exitcond.not = icmp eq i32 %i.co, %umax
  br i1 %exitcond.not, label %.loopexit141, label %.lr.ph13, !llvm.loop !199

.lr.ph13:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.110515312 = phi i32 [ %i.co, %.lr.ph ], [ %.0155, %.lr.ph.preheader ] ; 3 uses
  %i.bt = sdiv i32 %.110515312, 32
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %i.d, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = and i32 %.110515312, 31
  %i.by = shl nuw i32 1, %i.bx                    ; 2 uses
  %i.bz = and i32 %i.bw, %i.by
  %.not116 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr @onig_warn, align 8
  %i.cb = icmp eq ptr %i.ca, @onig_null_warn
  %or.cond136 = select i1 %.not116, i1 true, i1 %i.cb
  br i1 %or.cond136, label %CC_DUP_WARN.exit127, label %bb.j

bb.j:                                             ; preds = %.lr.ph13
  %i.cc = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !57
  %i.ce = and i64 %i.cd, -5
  %.not5.i124 = icmp eq i64 %i.ce, 0
  br i1 %.not5.i124, label %CC_DUP_WARN.exit127, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !60
  %i.ci = and i32 %i.ch, 67108864
  %.not.i125 = icmp eq i32 %i.ci, 0
  br i1 %.not.i125, label %CC_DUP_WARN.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load i32, ptr %i.f, align 4, !tbaa !137 ; 2 uses
  %i.ck = and i32 %i.cj, 67108864
  %.not4.i126 = icmp eq i32 %i.ck, 0
  br i1 %.not4.i126, label %bb.m, label %CC_DUP_WARN.exit127

bb.m:                                             ; preds = %bb.l
  %i.cl = or disjoint i32 %i.cj, 67108864
  store i32 %i.cl, ptr %i.f, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit127

CC_DUP_WARN.exit127:                              ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.lr.ph13
  %i.cm = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.cn = or i32 %i.cm, %i.by
  store i32 %i.cn, ptr %i.bv, align 4, !tbaa !7
  %i.co = add nuw i32 %.110515312, 1              ; 3 uses
  %i.cp = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %CC_DUP_WARN.exit127, %.preheader142
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cr = shl i32 %indvars.iv.tr, 1
  %i.cs = add i32 %i.cr, 2
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %4, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = add i32 %i.cv, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond191.not, label %.preheader140, label %.preheader142, !llvm.loop !200

bb.n:                                             ; preds = %.lr.ph157, %CC_DUP_WARN.exit131
  %.2156 = phi i32 [ %.0.lcssa, %.lr.ph157 ], [ %i.ds, %CC_DUP_WARN.exit131 ] ; 3 uses
  %i.cx = sdiv i32 %.2156, 32
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.bq, i64 %i.cy ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = and i32 %.2156, 31
  %i.dc = shl nuw i32 1, %i.db                    ; 2 uses
  %i.dd = and i32 %i.da, %i.dc
  %.not = icmp eq i32 %i.dd, 0
  %i.de = load ptr, ptr @onig_warn, align 8
  %i.df = icmp eq ptr %i.de, @onig_null_warn
  %or.cond138 = select i1 %.not, i1 true, i1 %i.df
  br i1 %or.cond138, label %CC_DUP_WARN.exit131, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !57
  %i.di = and i64 %i.dh, -5
  %.not5.i128 = icmp eq i64 %i.di, 0
  br i1 %.not5.i128, label %CC_DUP_WARN.exit131, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = load ptr, ptr %i.br, align 8, !tbaa !98
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !60
  %i.dm = and i32 %i.dl, 67108864
  %.not.i129 = icmp eq i32 %i.dm, 0
  br i1 %.not.i129, label %CC_DUP_WARN.exit131, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load i32, ptr %i.bs, align 4, !tbaa !137 ; 2 uses
  %i.do = and i32 %i.dn, 67108864
  %.not4.i130 = icmp eq i32 %i.do, 0
  br i1 %.not4.i130, label %bb.r, label %CC_DUP_WARN.exit131

bb.r:                                             ; preds = %bb.q
  %i.dp = or disjoint i32 %i.dn, 67108864
  store i32 %i.dp, ptr %i.bs, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %2, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit131

CC_DUP_WARN.exit131:                              ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.dq = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.dr = or i32 %i.dq, %i.dc
  store i32 %i.dr, ptr %i.cz, align 4, !tbaa !7
  %i.ds = add i32 %.2156, 1                       ; 2 uses
  %exitcond192.not = icmp eq i32 %i.ds, %3
  br i1 %exitcond192.not, label %.loopexit141, label %bb.n, !llvm.loop !201

.loopexit141:                                     ; preds = %.lr.ph.preheader, %.lr.ph, %CC_DUP_WARN.exit131, %.preheader140
  br i1 %i.c, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %.loopexit141
  %i.dt = getelementptr i8, ptr %0, i64 40
  %wide.trip.count196 = zext nneg i32 %i.a to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph161, %bb.u
  %indvars.iv193 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next194, %bb.u ] ; 3 uses
  %.1159 = phi i32 [ %3, %.lr.ph161 ], [ %i.eg, %bb.u ] ; 2 uses
  %sext219 = shl i64 %indvars.iv193, 33
  %i.du = ashr exact i64 %sext219, 30
  %i.dv = getelementptr i8, ptr %4, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 2 uses
  %i.dy = icmp ult i32 %.1159, %i.dx
  br i1 %i.dy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dz = add i32 %i.dx, -1
  %i.ea = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.dt, ptr noundef %2, i32 noundef %.1159, i32 noundef %i.dz, i32 noundef 1) ; 2 uses
  %.not118 = icmp eq i32 %i.ea, 0
  br i1 %.not118, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv193.tr = trunc i64 %indvars.iv193 to i32
  %i.eb = shl i32 %indvars.iv193.tr, 1
  %i.ec = add i32 %i.eb, 2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr [4 x i8], ptr %4, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = add i32 %i.ef, 1                        ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196
  br i1 %exitcond197.not, label %._crit_edge162, label %bb.s, !llvm.loop !202

._crit_edge162:                                   ; preds = %bb.u, %.loopexit141
  %.1.lcssa = phi i32 [ %3, %.loopexit141 ], [ %i.eg, %bb.u ] ; 2 uses
  %i.eh = icmp ult i32 %.1.lcssa, 2147483647
  br i1 %i.eh, label %bb.v, label %.thread

bb.v:                                             ; preds = %._crit_edge162
  %i.ei = getelementptr i8, ptr %0, i64 40
  %i.ej = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.ei, ptr noundef %2, i32 noundef %.1.lcssa, i32 noundef 2147483647, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.t, %._crit_edge168, %.lr.ph175, %bb.i, %.loopexit, %bb.v, %._crit_edge162, %bb.c
  %.1103 = phi i32 [ 0, %._crit_edge162 ], [ %i.y, %bb.c ], [ 0, %bb.i ], [ %i.ej, %bb.v ], [ 0, %.loopexit ], [ 0, %._crit_edge168 ], [ %i.bj, %.lr.ph175 ], [ %i.ea, %bb.t ]
  ret i32 %.1103
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @and_cclass(ptr noundef captures(address) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 4, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = and i32 %i.ap, %i.ao                    ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = and i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = and i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = and i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = and i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = and i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = and i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = and i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 4, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 4, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cw = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef 0, ptr noundef %i.t, i32 noundef 0, ptr noundef %i.a, ptr noundef nonnull %2)
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.cx = call fastcc i32 @and_code_range_buf(ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  %or.cond3 = and i1 %i.cy, %i.i
  br i1 %or.cond3, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.da = icmp eq ptr %i.cz, null                 ; 2 uses
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.db = getelementptr i8, ptr %i.f, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !47
  %i.dd = icmp sgt i32 %i.dc, 1
  %i.de = select i1 %i.dd, i32 0, i32 128
  br label %.thread.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !66 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 4
  %i.di = icmp slt i32 %i.dg, 1
  br i1 %i.di, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = getelementptr i8, ptr %i.f, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.dl = icmp sgt i32 %i.dk, 1
  %i.dm = select i1 %i.dl, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.dg to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %indvars.iv.i = phi i64 [ 0, %bb.o ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %.03350.i = phi i32 [ %i.dm, %bb.o ], [ %i.dw, %bb.s ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.dn = shl i32 %indvars.iv.tr.i, 1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %i.dh, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7  ; 2 uses
  %i.dt = add i32 %i.dq, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03350.i, %i.dt
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03350.i, i32 noundef %i.dt, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.du, 0
  br i1 %.not44.i, label %bb.r, label %not_code_range_buf.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dv = icmp eq i32 %i.ds, -1
  br i1 %i.dv, label %not_code_range_buf.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = add nuw i32 %i.ds, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.p, !llvm.loop !195

.thread.sink.split.i:                             ; preds = %bb.s, %bb.m
  %.lcssa.sink.i = phi i32 [ %i.de, %bb.m ], [ %i.dw, %bb.s ]
  %i.dx = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.q, %bb.r, %.thread.sink.split.i
  %.032.i = phi i32 [ %i.dx, %.thread.sink.split.i ], [ %i.du, %bb.q ], [ 0, %bb.r ]
  br i1 %i.da, label %bbuf_free.exit, label %bb.t

bb.t:                                             ; preds = %not_code_range_buf.exit
  %i.dy = load ptr, ptr %i.cz, align 8, !tbaa !66
  call void @free(ptr noundef %i.dy) #25
  call void @free(ptr noundef nonnull %i.cz) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.t
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.dz, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bbuf_free.exit, %bb.j
  %.046 = phi i32 [ %i.cw, %bb.j ], [ %.032.i, %bbuf_free.exit ], [ %i.cx, %bb.k ] ; 3 uses
  %.not48 = icmp eq i32 %.046, 0
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !138 ; 3 uses
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i50 = icmp eq ptr %i.ea, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bb.w:                                             ; preds = %bb.u
  store ptr %i.ea, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %bb.w, %bb.v
  %.sink63 = phi ptr [ %i.ea, %bb.v ], [ %i.m, %bb.w ] ; 2 uses
  %.045.ph = phi i32 [ %.046, %bb.v ], [ 0, %bb.w ]
  %i.eb = load ptr, ptr %.sink63, align 8, !tbaa !66
  call void @free(ptr noundef %i.eb) #25
  call void @free(ptr noundef nonnull %.sink63) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.w, %bb.v, %bb.h
  %.045 = phi i32 [ 0, %bb.w ], [ 0, %bb.h ], [ %.046, %bb.v ], [ %.045.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_cclass(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca [8 x i32], align 16               ; 5 uses
  %i.c = alloca [8 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.g = getelementptr i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145  ; 2 uses
  %i.i = trunc i32 %i.h to i1                     ; 4 uses
  %i.j = and i32 %i.h, 1
  %i.k = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 6 uses
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !145  ; 2 uses
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = and i32 %i.o, 1
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.v = xor <4 x i32> %i.u, splat (i32 -1)
  store <4 x i32> %i.v, ptr %i.b, align 16, !tbaa !7
  %i.w = getelementptr i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load <4 x i32>, ptr %i.w, align 4, !tbaa !7
  %i.z = xor <4 x i32> %i.y, splat (i32 -1)
  store <4 x i32> %i.z, ptr %i.x, align 16, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.044 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !7   ; 2 uses
  br i1 %i.p, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ab = xor i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.c, align 16, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.af = xor <4 x i32> %i.ae, splat (i32 -1)
  store <4 x i32> %i.af, ptr %i.ad, align 4, !tbaa !7
  %i.ag = getelementptr i8, ptr %1, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !tbaa !7
  %i.aj = xor <2 x i32> %i.ai, splat (i32 -1)
  store <2 x i32> %i.aj, ptr %i.ah, align 4, !tbaa !7
  %i.ak = getelementptr i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = xor i32 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.ao = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %bb.c ]
  %.0 = phi ptr [ %i.c, %bb.d ], [ %i.r, %bb.c ]  ; 7 uses
  %i.ap = load i32, ptr %.044, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %i.ao                     ; 2 uses
  store i32 %i.aq, ptr %.044, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %.0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.at, align 4, !tbaa !7
  %i.aw = getelementptr i8, ptr %.0, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr i8, ptr %.044, i64 8      ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = getelementptr i8, ptr %.044, i64 12     ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = or i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %i.bg = getelementptr i8, ptr %.0, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = getelementptr i8, ptr %.044, i64 16     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !7
  %i.bl = getelementptr i8, ptr %.0, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %.044, i64 20     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = or i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !7
  %i.bq = getelementptr i8, ptr %.0, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr i8, ptr %.044, i64 24     ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = or i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !7
  %i.bv = getelementptr i8, ptr %.0, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = getelementptr i8, ptr %.044, i64 28     ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !7
  %.not = icmp eq ptr %.044, %i.k
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %i.aq, ptr %i.k, align 4, !tbaa !7
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !7
  %i.cb = getelementptr i8, ptr %0, i64 12
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !7
  %i.cc = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %0, i64 16
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !7
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %0, i64 24
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !7
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %0, i64 28
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.cn = getelementptr i8, ptr %0, i64 36
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.co = load <4 x i32>, ptr %i.k, align 4, !tbaa !7
  %i.cp = xor <4 x i32> %i.co, splat (i32 -1)
  store <4 x i32> %i.cp, ptr %i.k, align 4, !tbaa !7
  %i.cq = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cq, align 4, !tbaa !7
  %i.cs = xor <4 x i32> %i.cr, splat (i32 -1)
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr i8, ptr %i.f, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bbuf_free.exit51, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond = select i1 %i.i, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.a, align 8, !tbaa !138
  %i.cw = icmp eq ptr %i.m, null
  br i1 %i.cw, label %bbuf_free.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = icmp eq ptr %i.t, null
  br i1 %i.cx, label %and_code_range_buf.exit.thread.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !66  ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7  ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !66  ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 4      ; 2 uses
  %.not128.i = icmp eq i32 %i.dc, 0
  %.not129.i = icmp eq i32 %i.cz, 0
  %or.cond181.i = select i1 %.not128.i, i1 true, i1 %.not129.i
  br i1 %or.cond181.i, label %and_code_range_buf.exit.thread.thread, label %.lr.ph123.us.preheader.i

.lr.ph123.us.preheader.i:                         ; preds = %bb.l
  %wide.trip.count151.i = zext i32 %i.dc to i64
  %wide.trip.count146.i = zext i32 %i.cz to i64
  br label %.lr.ph123.us.i

.lr.ph123.us.i:                                   ; preds = %._crit_edge.us.i, %.lr.ph123.us.preheader.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph123.us.preheader.i ], [ %indvars.iv.next149.i, %._crit_edge.us.i ] ; 2 uses
  %i.de = trunc nuw i64 %indvars.iv148.i to i32
  %i.df = shl i32 %i.de, 1                        ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7  ; 2 uses
  %i.dj = or disjoint i32 %i.df, 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.dd, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph123.us.i
  %indvars.iv143.i = phi i64 [ 0, %.lr.ph123.us.i ], [ %indvars.iv.next144.i, %bb.p ] ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv143.i to i32
  %i.do = shl i32 %i.dn, 1                        ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr %i.da, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7  ; 2 uses
  %i.ds = or disjoint i32 %i.do, 1
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr %i.da, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7  ; 2 uses
  %i.dw = icmp ugt i32 %i.dr, %i.dm
  br i1 %i.dw, label %._crit_edge.us.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp ult i32 %i.dv, %i.di
  br i1 %i.dx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dr)
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dm, i32 %i.dv)
  %i.ea = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef 1) ; 2 uses
  %.not94.us.i = icmp eq i32 %i.ea, 0
  br i1 %.not94.us.i, label %bb.p, label %and_code_range_buf.exit.thread56

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %exitcond147.not.i = icmp eq i64 %indvars.iv.next144.i, %wide.trip.count146.i
  br i1 %exitcond147.not.i, label %._crit_edge.us.i, label %bb.m, !llvm.loop !203

._crit_edge.us.i:                                 ; preds = %bb.p, %bb.m
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %and_code_range_buf.exit.thread, label %.lr.ph123.us.i, !llvm.loop !204

bb.q:                                             ; preds = %bb.i
  %i.eb = call fastcc i32 @or_code_range_buf(ptr noundef nonnull %i.f, ptr noundef %i.m, i32 noundef %i.j, ptr noundef %i.t, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %2) ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %or.cond3 = and i1 %i.ec, %i.i
  br i1 %or.cond3, label %bb.r, label %and_code_range_buf.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !138 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !138
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ef = getelementptr i8, ptr %i.f, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !47
  %i.eh = icmp sgt i32 %i.eg, 1
  %i.ei = select i1 %i.eh, i32 0, i32 128
  br label %.thread.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !66 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7  ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 4
  %i.em = icmp slt i32 %i.ek, 1
  br i1 %i.em, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr i8, ptr %i.f, i64 20
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !47
  %i.ep = icmp sgt i32 %i.eo, 1
  %i.eq = select i1 %i.ep, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.ek to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %indvars.iv.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.i, %bb.y ] ; 2 uses
  %.03350.i = phi i32 [ %i.eq, %bb.u ], [ %i.fa, %bb.y ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.er = shl i32 %indvars.iv.tr.i, 1
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [4 x i8], ptr %i.el, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !7
  %i.ev = getelementptr i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7  ; 2 uses
  %i.ex = add i32 %i.eu, -1                       ; 2 uses
  %.not.i = icmp ugt i32 %.03350.i, %i.ex
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.03350.i, i32 noundef %i.ex, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.ey, 0
  br i1 %.not44.i, label %bb.x, label %not_code_range_buf.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ez = icmp eq i32 %i.ew, -1
  br i1 %i.ez, label %not_code_range_buf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = add nuw i32 %i.ew, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.v, !llvm.loop !195

.thread.sink.split.i:                             ; preds = %bb.y, %bb.s
  %.lcssa.sink.i = phi i32 [ %i.ei, %bb.s ], [ %i.fa, %bb.y ]
  %i.fb = call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %not_code_range_buf.exit

not_code_range_buf.exit:                          ; preds = %bb.w, %bb.x, %.thread.sink.split.i
  %.032.i = phi i32 [ %i.fb, %.thread.sink.split.i ], [ %i.ey, %bb.w ], [ 0, %bb.x ]
  br i1 %i.ee, label %bbuf_free.exit, label %bb.z

bb.z:                                             ; preds = %not_code_range_buf.exit
  %i.fc = load ptr, ptr %i.ed, align 8, !tbaa !66
  call void @free(ptr noundef %i.fc) #25
  call void @free(ptr noundef nonnull %i.ed) #25
  br label %bbuf_free.exit

bbuf_free.exit:                                   ; preds = %not_code_range_buf.exit, %bb.z
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !138
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %and_code_range_buf.exit

and_code_range_buf.exit:                          ; preds = %bb.q, %bbuf_free.exit
  %.046 = phi i32 [ %i.eb, %bb.q ], [ %.032.i, %bbuf_free.exit ] ; 2 uses
  %.not48 = icmp eq i32 %.046, 0
  br i1 %.not48, label %and_code_range_buf.exit.thread, label %and_code_range_buf.exit.thread56

and_code_range_buf.exit.thread56:                 ; preds = %bb.o, %and_code_range_buf.exit
  %.04659 = phi i32 [ %.046, %and_code_range_buf.exit ], [ %i.ea, %bb.o ] ; 2 uses
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !138 ; 2 uses
  %.not.i50 = icmp eq ptr %i.fe, null
  br i1 %.not.i50, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread.thread:            ; preds = %bb.k, %bb.l
  store ptr null, ptr %i.l, align 8, !tbaa !63
  br label %bbuf_free.exit51.sink.split

and_code_range_buf.exit.thread:                   ; preds = %._crit_edge.us.i, %and_code_range_buf.exit
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !138
  store ptr %i.ff, ptr %i.l, align 8, !tbaa !63
  %.not.i52 = icmp eq ptr %i.m, null
  br i1 %.not.i52, label %bbuf_free.exit51, label %bbuf_free.exit51.sink.split

bbuf_free.exit51.sink.split:                      ; preds = %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread.thread, %and_code_range_buf.exit.thread56
  %.sink83 = phi ptr [ %i.fe, %and_code_range_buf.exit.thread56 ], [ %i.m, %and_code_range_buf.exit.thread.thread ], [ %i.m, %and_code_range_buf.exit.thread ] ; 2 uses
  %.045.ph = phi i32 [ %.04659, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread.thread ], [ 0, %and_code_range_buf.exit.thread ]
  %i.fg = load ptr, ptr %.sink83, align 8, !tbaa !66
  call void @free(ptr noundef %i.fg) #25
  call void @free(ptr noundef nonnull %.sink83) #25
  br label %bbuf_free.exit51

bbuf_free.exit51:                                 ; preds = %bbuf_free.exit51.sink.split, %bb.j, %and_code_range_buf.exit.thread, %and_code_range_buf.exit.thread56, %bb.h
  %.045 = phi i32 [ 0, %bb.j ], [ 0, %bb.h ], [ %.04659, %and_code_range_buf.exit.thread56 ], [ 0, %and_code_range_buf.exit.thread ], [ %.045.ph, %bbuf_free.exit51.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.045
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @or_code_range_buf(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address) %1, i32 noundef range(i32 0, 2) %2, ptr noundef readonly captures(address) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull captures(none) initializes((0, 8)) %5, ptr noundef captures(none) %6) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %5, align 8, !tbaa !138
  %i.a = icmp eq ptr %1, null                     ; 2 uses
  %i.b = icmp eq ptr %3, null                     ; 5 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = or i32 %4, %2
  %or.cond3.not = icmp eq i32 %i.c, 0
  br i1 %or.cond3.not, label %bbuf_clone.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47
  %i.f = icmp sgt i32 %i.e, 1
  %i.g = select i1 %i.f, i32 0, i32 128
  %i.h = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.g, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.d:                                             ; preds = %bb.a
  %brmerge = or i1 %i.b, %i.a
  %.mux158 = select i1 %i.b, ptr %1, ptr %3       ; 5 uses
  %.mux159 = select i1 %i.b, i32 %2, i32 %4
  br i1 %brmerge, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.d
  %.mux = select i1 %i.b, i32 %4, i32 %2
  %.not80 = icmp eq i32 %.mux, 0
  br i1 %.not80, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %i.k = icmp sgt i32 %i.j, 1
  %i.l = select i1 %i.k, i32 0, i32 128
  %i.m = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.l, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.f:                                             ; preds = %.thread
  %i.n = icmp eq i32 %.mux159, 0
  br i1 %i.n, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !138
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bbuf_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %.mux158, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !182
  %i.s = zext i32 %i.r to i64
  %i.t = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.o, i64 noundef %i.s) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.i, label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.mux158, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !184  ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 8
  store i32 %i.v, ptr %i.w, align 8, !tbaa !184
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.y = load ptr, ptr %.mux158, align 8, !tbaa !66
  %i.z = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.x, ptr noundef nonnull align 1 %i.y, i64 noundef %i.z, i1 noundef false) #25
  br label %bbuf_clone.exit

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp eq ptr %.mux158, null
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ad = icmp sgt i32 %i.ac, 1
  %i.ae = select i1 %i.ad, i32 0, i32 128
  br label %.thread.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %.mux158, align 8, !tbaa !66 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = icmp slt i32 %i.ag, 1
  br i1 %i.ai, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %0, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = icmp sgt i32 %i.ak, 1
  %i.am = select i1 %i.al, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %indvars.iv.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.03350.i = phi i32 [ %i.am, %bb.m ], [ %i.aw, %bb.q ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.an = shl i32 %indvars.iv.tr.i, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %i.at = add i32 %i.aq, -1                       ; 2 uses
  %.not.i81 = icmp ugt i32 %.03350.i, %i.at
  br i1 %.not.i81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.03350.i, i32 noundef %i.at, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.au, 0
  br i1 %.not44.i, label %bb.p, label %bbuf_clone.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = icmp eq i32 %i.as, -1
  br i1 %i.av, label %bbuf_clone.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw i32 %i.as, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.n, !llvm.loop !195

.thread.sink.split.i:                             ; preds = %bb.q, %bb.k
  %.lcssa.sink.i = phi i32 [ %i.ae, %bb.k ], [ %i.aw, %bb.q ]
  %i.ax = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.r:                                             ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 4      ; 2 uses
  %i.bb = icmp eq i32 %4, 0
  br i1 %i.bb, label %bb.t, label %.thread112

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !138
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bbuf_clone.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr i8, ptr %3, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !182
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #25 ; 2 uses
  %.not.i82 = icmp eq i32 %i.bh, 0
  br i1 %.not.i82, label %bb.v, label %bbuf_clone.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %3, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !184 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !184
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !66
  %i.bm = load ptr, ptr %3, align 8, !tbaa !66
  %i.bn = zext i32 %i.bj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bl, ptr noundef nonnull align 1 %i.bm, i64 noundef %i.bn, i1 noundef false) #25
  br label %.preheader

bb.w:                                             ; preds = %bb.r
  %i.bo = icmp eq i32 %4, 0
  %i.bp = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4      ; 2 uses
  br i1 %i.bo, label %.thread112, label %.preheader

.thread112:                                       ; preds = %bb.s, %bb.w
  %.170110115 = phi ptr [ %1, %bb.w ], [ %3, %bb.s ]
  %i.bs = phi i32 [ %i.bq, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %i.bt = phi ptr [ %i.br, %bb.w ], [ %i.ba, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %.170110115, align 8, !tbaa !66 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 4
  %i.bx = icmp slt i32 %i.bv, 1
  %i.by = getelementptr i8, ptr %0, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = icmp sgt i32 %i.bz, 1
  %i.cb = select i1 %i.ca, i32 0, i32 128         ; 2 uses
  br i1 %i.bx, label %bbuf_clone.exit84, label %bb.x

bb.x:                                             ; preds = %.thread112
  %wide.trip.count.i85 = zext nneg i32 %i.bv to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %indvars.iv.i86 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i92, %bb.ab ] ; 2 uses
  %.03350.i87 = phi i32 [ %i.cb, %bb.x ], [ %i.cl, %bb.ab ] ; 2 uses
  %indvars.iv.tr.i88 = trunc i64 %indvars.iv.i86 to i32
  %i.cc = shl i32 %indvars.iv.tr.i88, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %i.bw, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr i8, ptr %i.ce, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7  ; 2 uses
  %i.ci = add i32 %i.cf, -1                       ; 2 uses
  %.not.i89 = icmp ugt i32 %.03350.i87, %i.ci
  br i1 %.not.i89, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.03350.i87, i32 noundef %i.ci, i32 noundef 1) ; 2 uses
  %.not44.i90 = icmp eq i32 %i.cj, 0
  br i1 %.not44.i90, label %bb.aa, label %bbuf_clone.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ck = icmp eq i32 %i.ch, -1
  br i1 %i.ck, label %.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nuw i32 %i.ch, 1                    ; 2 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i85
  br i1 %exitcond.not.i93, label %bbuf_clone.exit84, label %bb.y, !llvm.loop !195

bbuf_clone.exit84:                                ; preds = %bb.ab, %.thread112
  %.lcssa.sink.i95 = phi i32 [ %i.cb, %.thread112 ], [ %i.cl, %bb.ab ]
  %i.cm = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.lcssa.sink.i95, i32 noundef -1, i32 noundef 1) ; 2 uses
  %.not78 = icmp eq i32 %i.cm, 0
  br i1 %.not78, label %.preheader, label %bbuf_clone.exit

.preheader:                                       ; preds = %bb.aa, %bb.v, %bb.w, %bbuf_clone.exit84
  %i.cn = phi i32 [ %i.bs, %bbuf_clone.exit84 ], [ %i.bq, %bb.w ], [ %i.az, %bb.v ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.co = phi ptr [ %i.bt, %bbuf_clone.exit84 ], [ %i.br, %bb.w ], [ %i.ba, %bb.v ], [ %i.bt, %bb.aa ] ; 2 uses
  %.not127 = icmp eq i32 %i.cn, 0
  br i1 %.not127, label %bbuf_clone.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.cn to i64
  br label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bbuf_clone.exit, label %.lr.ph, !llvm.loop !205

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = shl i32 %i.cp, 1                        ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = or disjoint i32 %i.cq, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.co, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef 1) ; 2 uses
  %.not79 = icmp eq i32 %i.cy, 0
  br i1 %.not79, label %bb.ac, label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %bb.z, %.lr.ph, %bb.ac, %bb.p, %bb.o, %.preheader, %bb.t, %bb.u, %.thread.sink.split.i, %bb.i, %bb.h, %bb.g, %bbuf_clone.exit84, %bb.b, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %.preheader ], [ %i.m, %bb.e ], [ 0, %bb.p ], [ %i.t, %bb.h ], [ 0, %bb.b ], [ %i.cm, %bbuf_clone.exit84 ], [ 0, %bb.i ], [ -5, %bb.g ], [ -5, %bb.t ], [ %i.bh, %bb.u ], [ %i.ax, %.thread.sink.split.i ], [ 0, %bb.ac ], [ %i.au, %bb.o ], [ %i.cy, %.lr.ph ], [ %i.cj, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @and_code_range_buf(ptr noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, ptr noundef nonnull captures(none) initializes((0, 8)) %4, ptr noundef captures(none) %5) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %4, align 8, !tbaa !138
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i32 %1, 0
  %i.c = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.c, label %bbuf_clone.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !138
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bbuf_clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !182
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.d, i64 noundef %i.h) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %2, null
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not95 = icmp eq i32 %3, 0
  br i1 %.not95, label %bbuf_clone.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !138
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bbuf_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !182
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.k, i64 noundef %i.o) #25 ; 2 uses
  %.not.i96 = icmp eq i32 %i.p, 0
  br i1 %.not.i96, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.e
  %.not = icmp eq i32 %1, 0
  %i.q = load ptr, ptr %2, align 8, !tbaa !66     ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7    ; 4 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.t = icmp eq i32 %3, 0
  %i.u = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  br i1 %i.t, label %.preheader111, label %bbuf_clone.exit

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr i8, ptr %i.w, i64 4        ; 3 uses
  %i.z = icmp eq i32 %3, 0
  br i1 %i.z, label %.preheader, label %.preheader111

.preheader111:                                    ; preds = %.thread, %bb.j
  %.ph = phi i32 [ %i.x, %bb.j ], [ %i.r, %.thread ] ; 2 uses
  %.ph112 = phi i32 [ %i.r, %bb.j ], [ %i.v, %.thread ] ; 2 uses
  %.ph113 = phi ptr [ %i.y, %bb.j ], [ %i.s, %.thread ] ; 4 uses
  %i.aa = phi ptr [ %i.q, %bb.j ], [ %i.u, %.thread ]
  %.not127 = icmp eq i32 %.ph, 0
  br i1 %.not127, label %bbuf_clone.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111
  %i.ab = icmp sgt i32 %.ph112, 0
  %wide.trip.count.i = zext nneg i32 %.ph112 to i64
  %wide.trip.count141 = zext i32 %.ph to i64      ; 2 uses
  br i1 %i.ab, label %.lr.ph.preheader.i.us.preheader, label %._crit_edge.i

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %and_code_range1.exit.us
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next139, %and_code_range1.exit.us ] ; 2 uses
  %i.ad = trunc nuw i64 %indvars.iv138 to i32
  %i.ae = shl i32 %i.ad, 1                        ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %.ph113, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = or disjoint i32 %i.ae, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr [4 x i8], ptr %.ph113, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.s, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.s ] ; 2 uses
  %.03755.i.us = phi i32 [ %i.ah, %.lr.ph.preheader.i.us ], [ %.2.i.us, %bb.s ] ; 6 uses
  %.03953.i.us = phi i32 [ %i.al, %.lr.ph.preheader.i.us ], [ %.241.i.us, %bb.s ] ; 6 uses
  %indvars.iv.tr.i.us = trunc i64 %indvars.iv.i.us to i32
  %i.am = shl i32 %indvars.iv.tr.i.us, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.ac, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7  ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 4 uses
  %i.as = icmp ult i32 %i.ap, %.03755.i.us
  br i1 %i.as, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us
  %.not.i100.us = icmp ugt i32 %i.ap, %.03953.i.us
  br i1 %.not.i100.us, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = icmp ult i32 %i.ar, %.03953.i.us
  %i.au = add i32 %i.ap, -1                       ; 3 uses
  br i1 %i.at, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not49.i.us = icmp ugt i32 %.03755.i.us, %i.au
  br i1 %.not49.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.03755.i.us, i32 noundef %i.au, i32 noundef 1) ; 2 uses
  %.not50.i.us = icmp eq i32 %i.av, 0
  br i1 %.not50.i.us, label %bb.o, label %bbuf_clone.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aw = add nuw i32 %i.ar, 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.us
  %i.ax = icmp ult i32 %i.ar, %.03755.i.us
  br i1 %i.ax, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = add i32 %i.ar, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.k
  %.140.i.us = phi i32 [ %.03953.i.us, %bb.q ], [ %.03953.i.us, %bb.o ], [ %.03953.i.us, %bb.k ], [ %i.au, %bb.l ] ; 3 uses
  %.1.i.us = phi i32 [ %i.ay, %bb.q ], [ %i.aw, %bb.o ], [ %i.ap, %bb.k ], [ %.03755.i.us, %bb.l ] ; 3 uses
  %i.az = icmp ugt i32 %.1.i.us, %.140.i.us
  br i1 %i.az, label %._crit_edge.i.loopexit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.241.i.us = phi i32 [ %.03953.i.us, %bb.p ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.2.i.us = phi i32 [ %.03755.i.us, %bb.p ], [ %.1.i.us, %bb.r ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %.lr.ph.i.us, !llvm.loop !206

bb.t:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.ba = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.3.i.ph.us, i32 noundef %.342.i.ph.us, i32 noundef 1) ; 2 uses
  %.not52.i.us = icmp eq i32 %i.ba, 0
  br i1 %.not52.i.us, label %and_code_range1.exit.us, label %bbuf_clone.exit

and_code_range1.exit.us:                          ; preds = %bb.t, %._crit_edge.i.loopexit.us
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %bbuf_clone.exit, label %.lr.ph.preheader.i.us, !llvm.loop !207

._crit_edge.i.loopexit.us:                        ; preds = %bb.s, %bb.r
  %.342.i.ph.us = phi i32 [ %.241.i.us, %bb.s ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.3.i.ph.us = phi i32 [ %.2.i.us, %bb.s ], [ %.1.i.us, %bb.r ] ; 2 uses
  %.not51.i.us = icmp ugt i32 %.3.i.ph.us, %.342.i.ph.us
  br i1 %.not51.i.us, label %and_code_range1.exit.us, label %bb.t

.preheader:                                       ; preds = %bb.j
  %.not128 = icmp eq i32 %i.x, 0
  %.not129 = icmp eq i32 %i.r, 0
  %or.cond181 = select i1 %.not128, i1 true, i1 %.not129
  br i1 %or.cond181, label %bbuf_clone.exit, label %.lr.ph123.us.preheader

.lr.ph123.us.preheader:                           ; preds = %.preheader
  %wide.trip.count151 = zext i32 %i.x to i64
  %wide.trip.count146 = zext i32 %i.r to i64
  br label %.lr.ph123.us

.lr.ph123.us:                                     ; preds = %.lr.ph123.us.preheader, %._crit_edge.us
  %indvars.iv148 = phi i64 [ 0, %.lr.ph123.us.preheader ], [ %indvars.iv.next149, %._crit_edge.us ] ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv148 to i32
  %i.bc = shl i32 %i.bb, 1                        ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7  ; 2 uses
  %i.bg = or disjoint i32 %i.bc, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %i.y, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7  ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph123.us, %bb.x
  %indvars.iv143 = phi i64 [ 0, %.lr.ph123.us ], [ %indvars.iv.next144, %bb.x ] ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv143 to i32
  %i.bl = shl i32 %i.bk, 1                        ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.s, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %i.bp = or disjoint i32 %i.bl, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.s, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 2 uses
  %i.bt = icmp ugt i32 %i.bo, %i.bj
  br i1 %i.bt, label %._crit_edge.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = icmp ult i32 %i.bs, %i.bf
  br i1 %i.bu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.bo)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 %i.bs)
  %i.bx = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %i.bv, i32 noundef %i.bw, i32 noundef 1) ; 2 uses
  %.not94.us = icmp eq i32 %i.bx, 0
  br i1 %.not94.us, label %bb.x, label %bbuf_clone.exit

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %._crit_edge.us, label %bb.u, !llvm.loop !203

._crit_edge.us:                                   ; preds = %bb.u, %bb.x
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %bbuf_clone.exit, label %.lr.ph123.us, !llvm.loop !204

._crit_edge.i:                                    ; preds = %.lr.ph, %and_code_range1.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %and_code_range1.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.by = trunc nuw i64 %indvars.iv to i32
  %i.bz = shl i32 %i.by, 1                        ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr [4 x i8], ptr %.ph113, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7  ; 2 uses
  %i.cd = or disjoint i32 %i.bz, 1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %.ph113, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7  ; 2 uses
  %.not51.i = icmp ugt i32 %i.cc, %i.cg
  br i1 %.not51.i, label %and_code_range1.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  %i.ch = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %i.cc, i32 noundef %i.cg, i32 noundef 1) ; 2 uses
  %.not52.i = icmp eq i32 %i.ch, 0
  br i1 %.not52.i, label %and_code_range1.exit, label %bbuf_clone.exit

and_code_range1.exit:                             ; preds = %bb.y, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count141
  br i1 %exitcond.not, label %bbuf_clone.exit, label %._crit_edge.i, !llvm.loop !207

bbuf_clone.exit.sink.split:                       ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %2, %bb.d ], [ %0, %bb.h ]   ; 2 uses
  %.sink190 = phi ptr [ %i.d, %bb.d ], [ %i.k, %bb.h ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.sink, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !184 ; 2 uses
  %i.ck = getelementptr i8, ptr %.sink190, i64 8
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !184
  %i.cl = load ptr, ptr %.sink190, align 8, !tbaa !66
  %i.cm = load ptr, ptr %.sink, align 8, !tbaa !66
  %i.cn = zext i32 %i.cj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cl, ptr noundef nonnull align 1 %i.cm, i64 noundef %i.cn, i1 noundef false) #25
  br label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %and_code_range1.exit, %bb.y, %and_code_range1.exit.us, %bb.t, %bb.n, %._crit_edge.us, %bb.w, %bbuf_clone.exit.sink.split, %.preheader111, %.preheader, %.thread, %bb.h, %bb.g, %bb.d, %bb.c, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %._crit_edge.us ], [ %i.av, %bb.n ], [ %i.i, %bb.d ], [ 0, %bb.b ], [ 0, %bb.f ], [ %i.p, %bb.h ], [ 0, %.thread ], [ 0, %.preheader ], [ 0, %.preheader111 ], [ -5, %bb.c ], [ %i.bx, %bb.w ], [ -5, %bb.g ], [ 0, %and_code_range1.exit.us ], [ 0, %bbuf_clone.exit.sink.split ], [ %i.ba, %bb.t ], [ 0, %and_code_range1.exit ], [ %i.ch, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @fetch_token_in_cc(ptr noundef nonnull captures(none) initializes((0, 4)) %0, ptr noundef nonnull captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = getelementptr i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 13 uses
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97   ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.g = load ptr, ptr %1, align 8, !tbaa !69     ; 5 uses
  %i.h = icmp ult ptr %i.g, %2
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !99
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 16       ; 15 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.g, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = tail call i32 %i.o(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.f) #25
  %.pre = load i32, ptr %i.i, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ 1, %bb.d ], [ %.pre, %bb.e ]   ; 2 uses
  %i.r = phi i32 [ %i.m, %bb.d ], [ %i.p, %bb.e ] ; 4 uses
  %i.s = getelementptr i8, ptr %i.f, i64 20       ; 12 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %i.u = icmp eq i32 %i.q, %i.t
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @onigenc_mbclen(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.f) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = phi i32 [ %i.v, %bb.g ], [ %i.q, %bb.f ]
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x     ; 19 uses
  store ptr %i.y, ptr %i.b, align 8, !tbaa !69
  store i32 2, ptr %0, align 8, !tbaa !99
  %i.z = getelementptr i8, ptr %0, i64 8          ; 6 uses
  store i32 0, ptr %i.z, align 8, !tbaa !101
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 17 uses
  store i32 %i.r, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr i8, ptr %0, i64 4         ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !105
  switch i32 %i.r, label %bb.k [
    i32 93, label %bb.i
    i32 45, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  store i32 22, ptr %0, align 8, !tbaa !99
  br label %bb.da

bb.j:                                             ; preds = %bb.h
  store i32 23, ptr %0, align 8, !tbaa !99
  br label %bb.da

bb.k:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.d, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !103
  %i.ae = icmp eq i32 %i.r, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.cm

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.d, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !60
  %i.ah = and i32 %i.ag, 2097152
  %.not314 = icmp eq i32 %i.ah, 0
  br i1 %.not314, label %bb.da, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp ult ptr %i.y, %2
  br i1 %i.ai, label %bb.n, label %bb.db

bb.n:                                             ; preds = %bb.m
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !70
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = load i8, ptr %i.y, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.f, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ap = tail call i32 %i.ao(ptr noundef %i.y, ptr noundef %2, ptr noundef nonnull %i.f) #25
  %.pre348 = load i32, ptr %i.i, align 8, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ 1, %bb.o ], [ %.pre348, %bb.p ] ; 2 uses
  %i.ar = phi i32 [ %i.am, %bb.o ], [ %i.ap, %bb.p ] ; 4 uses
  %i.as = load i32, ptr %i.s, align 4, !tbaa !47
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = tail call i32 @onigenc_mbclen(ptr noundef %i.y, ptr noundef %2, ptr noundef nonnull %i.f) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.av = phi i32 [ %i.au, %bb.r ], [ %i.aq, %bb.q ]
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.y, i64 %i.aw   ; 22 uses
  store ptr %i.ax, ptr %i.b, align 8, !tbaa !69
  store i32 1, ptr %i.ab, align 4, !tbaa !105
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !13
  switch i32 %i.ar, label %bb.cj [
    i32 119, label %bb.t
    i32 87, label %bb.u
    i32 100, label %bb.v
    i32 68, label %bb.w
    i32 115, label %bb.x
    i32 83, label %bb.y
    i32 104, label %bb.z
    i32 72, label %bb.ab
    i32 112, label %bb.ad
    i32 80, label %bb.ad
    i32 120, label %bb.at
    i32 117, label %bb.bl
    i32 111, label %bb.bq
    i32 48, label %bb.cg
    i32 49, label %bb.cg
    i32 50, label %bb.cg
    i32 51, label %bb.cg
    i32 52, label %bb.cg
    i32 53, label %bb.cg
    i32 54, label %bb.cg
    i32 55, label %bb.cg
  ]

bb.t:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 12, ptr %i.aa, align 8, !tbaa !13
  %i.ay = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.ay, align 4, !tbaa !13
  br label %bb.da

bb.u:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 12, ptr %i.aa, align 8, !tbaa !13
  %i.az = getelementptr i8, ptr %0, i64 28
  store i32 1, ptr %i.az, align 4, !tbaa !13
  br label %bb.da

bb.v:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 4, ptr %i.aa, align 8, !tbaa !13
  %i.ba = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.ba, align 4, !tbaa !13
  br label %bb.da

bb.w:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 4, ptr %i.aa, align 8, !tbaa !13
  %i.bb = getelementptr i8, ptr %0, i64 28
  store i32 1, ptr %i.bb, align 4, !tbaa !13
  br label %bb.da

bb.x:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 9, ptr %i.aa, align 8, !tbaa !13
  %i.bc = getelementptr i8, ptr %0, i64 28
  store i32 0, ptr %i.bc, align 4, !tbaa !13
  br label %bb.da

bb.y:                                             ; preds = %bb.s
  store i32 6, ptr %0, align 8, !tbaa !99
  store i32 9, ptr %i.aa, align 8, !tbaa !13
  %i.bd = getelementptr i8, ptr %0, i64 28
end_hunk_0
begin_hunk_1_@next_state_val:bb.a
CC_DUP_WARN.exit:                                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.z = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.aa = and i32 %i.z, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = sdiv i32 %i.z, 32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [4 x i8], ptr %i.c, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = or i32 %i.ab, %i.af
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !7
  %.not113 = icmp eq ptr %1, null
  br i1 %.not113, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %CC_DUP_WARN.exit
  %i.ah = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.ai = and i32 %i.ah, 31
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = sdiv i32 %i.ah, 32
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = or i32 %i.aj, %i.ao
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !7
  br label %bb.ai

bb.i:                                             ; preds = %bb.b
  %i.aq = getelementptr i8, ptr %0, i64 40
  %i.ar = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.as = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.aq, ptr noundef %9, i32 noundef %i.ar, i32 noundef %i.ar, i32 noundef 1) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %add_code_range.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not111 = icmp eq ptr %1, null
  br i1 %.not111, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %1, i64 40
  %i.av = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.aw = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.au, ptr noundef %9, i32 noundef %i.av, i32 noundef %i.av, i32 noundef 0) ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %add_code_range.exit.thread, label %bb.ai

bb.l:                                             ; preds = %bb.a
  %i.ay = load i32, ptr %7, align 4, !tbaa !7
  %i.az = icmp eq i32 %6, %i.ay
  br i1 %i.az, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp eq i32 %6, 0
  %i.bb = load i32, ptr %2, align 4, !tbaa !7     ; 5 uses
  br i1 %i.ba, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bc = or i32 %i.bb, %3
  %or.cond.not = icmp ult i32 %i.bc, 256
  br i1 %or.cond.not, label %bb.o, label %add_code_range.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp samesign ugt i32 %i.bb, %3
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !60
  %i.bi = and i32 %i.bh, 4194304
  %.not110 = icmp eq i32 %i.bi, 0
  br i1 %.not110, label %add_code_range.exit.thread, label %add_code_range0.exit.thread131

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %0, i64 8
  tail call fastcc void @bitset_set_range(ptr noundef %9, ptr noundef %i.bj, i32 noundef %i.bb, i32 noundef %3)
  %.not109 = icmp eq ptr %1, null
  br i1 %.not109, label %add_code_range0.exit.thread131, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr i8, ptr %1, i64 8
  %i.bl = load i32, ptr %2, align 4, !tbaa !7
  tail call fastcc void @bitset_set_range(ptr noundef %9, ptr noundef %i.bk, i32 noundef %i.bl, i32 noundef %3)
  br label %add_code_range0.exit.thread131

bb.s:                                             ; preds = %bb.m
  %i.bm = icmp ugt i32 %i.bb, %3
  br i1 %i.bm, label %bb.t, label %add_code_range.exit

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %9, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !98
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !60
  %i.br = and i32 %i.bq, 4194304
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %add_code_range.exit.thread, label %add_code_range.exit.thread127

add_code_range.exit:                              ; preds = %bb.s
  %i.bs = getelementptr i8, ptr %0, i64 40
  %i.bt = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.bs, ptr noundef %9, i32 noundef %i.bb, i32 noundef %3, i32 noundef 1) ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %add_code_range.exit.thread, label %add_code_range.exit.thread127

add_code_range.exit.thread127:                    ; preds = %bb.t, %add_code_range.exit
  %.not108 = icmp eq ptr %1, null
  br i1 %.not108, label %add_code_range0.exit.thread131, label %bb.u

bb.u:                                             ; preds = %add_code_range.exit.thread127
  %i.bv = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, %3
  br i1 %i.bw, label %bb.v, label %add_code_range0.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr i8, ptr %9, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !60
  %i.cb = and i32 %i.ca, 4194304
  %.not.i115 = icmp eq i32 %i.cb, 0
  br i1 %.not.i115, label %add_code_range.exit.thread, label %add_code_range0.exit.thread131

add_code_range0.exit:                             ; preds = %bb.u
  %i.cc = getelementptr i8, ptr %1, i64 40
  %i.cd = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.cc, ptr noundef %9, i32 noundef %i.bv, i32 noundef %3, i32 noundef 0) ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %add_code_range.exit.thread, label %add_code_range0.exit.thread131

bb.w:                                             ; preds = %bb.l
  %i.cf = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.cg = icmp ugt i32 %i.cf, %3
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr i8, ptr %9, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !98
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !60
  %i.cl = and i32 %i.ck, 4194304
  %.not107 = icmp eq i32 %i.cl, 0
  br i1 %.not107, label %add_code_range.exit.thread, label %add_code_range0.exit.thread131

bb.y:                                             ; preds = %bb.w
  %i.cm = getelementptr i8, ptr %0, i64 8
  %i.cn = tail call i32 @llvm.umin.i32(i32 %3, i32 255) ; 3 uses
  %.not142 = icmp sgt i32 %i.cf, %i.cn
  br i1 %.not142, label %bitset_set_range.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.y
  %i.co = getelementptr i8, ptr %9, i64 16
  %i.cp = getelementptr i8, ptr %9, i64 180       ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %CC_DUP_WARN.exit.i, %.lr.ph.i
  %.014.i = phi i32 [ %i.cf, %.lr.ph.i ], [ %i.dl, %CC_DUP_WARN.exit.i ] ; 4 uses
  %i.cq = sdiv i32 %.014.i, 32
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.cm, i64 %i.cr ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = and i32 %.014.i, 31
  %i.cv = shl nuw i32 1, %i.cu                    ; 2 uses
  %i.cw = and i32 %i.cv, %i.ct
  %.not.i116 = icmp eq i32 %i.cw, 0
  %i.cx = load ptr, ptr @onig_warn, align 8
  %i.cy = icmp eq ptr %i.cx, @onig_null_warn
  %or.cond.i = select i1 %.not.i116, i1 true, i1 %i.cy
  br i1 %or.cond.i, label %CC_DUP_WARN.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = tail call ptr @rb_ruby_verbose_ptr() #25
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !57
  %i.db = and i64 %i.da, -5
  %.not5.i.i = icmp eq i64 %i.db, 0
  br i1 %.not5.i.i, label %CC_DUP_WARN.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !98
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !60
  %i.df = and i32 %i.de, 67108864
  %.not.i.i117 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i117, label %CC_DUP_WARN.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load i32, ptr %i.cp, align 4, !tbaa !137 ; 2 uses
  %i.dh = and i32 %i.dg, 67108864
  %.not4.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not4.i.i, label %bb.ad, label %CC_DUP_WARN.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = or disjoint i32 %i.dg, 67108864
  store i32 %i.di, ptr %i.cp, align 4, !tbaa !137
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %9, ptr noundef nonnull @.str.7)
  br label %CC_DUP_WARN.exit.i

CC_DUP_WARN.exit.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.dj = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.dk = or i32 %i.dj, %i.cv
  store i32 %i.dk, ptr %i.cs, align 4, !tbaa !7
  %i.dl = add i32 %.014.i, 1
  %exitcond.not = icmp eq i32 %.014.i, %i.cn
  br i1 %exitcond.not, label %bitset_set_range.exit.loopexit, label %bb.z, !llvm.loop !181

bitset_set_range.exit.loopexit:                   ; preds = %CC_DUP_WARN.exit.i
  %.pre = load i32, ptr %2, align 4, !tbaa !7
  br label %bitset_set_range.exit

bitset_set_range.exit:                            ; preds = %bitset_set_range.exit.loopexit, %bb.y
  %i.dm = phi i32 [ %.pre, %bitset_set_range.exit.loopexit ], [ %i.cf, %bb.y ] ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, %3
  br i1 %i.dn, label %bb.ae, label %add_code_range.exit121

bb.ae:                                            ; preds = %bitset_set_range.exit
  %i.do = getelementptr i8, ptr %9, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !98
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !60
  %i.ds = and i32 %i.dr, 4194304
  %.not.i.i119 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i119, label %add_code_range.exit.thread, label %add_code_range.exit121.thread135

add_code_range.exit121:                           ; preds = %bitset_set_range.exit
  %i.dt = getelementptr i8, ptr %0, i64 40
  %i.du = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.dt, ptr noundef %9, i32 noundef %i.dm, i32 noundef %3, i32 noundef 1) ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %add_code_range.exit.thread, label %add_code_range.exit121.thread135

add_code_range.exit121.thread135:                 ; preds = %bb.ae, %add_code_range.exit121
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %add_code_range0.exit.thread131, label %bb.af

bb.af:                                            ; preds = %add_code_range.exit121.thread135
  %i.dw = getelementptr i8, ptr %1, i64 8
  %i.dx = load i32, ptr %2, align 4, !tbaa !7
  tail call fastcc void @bitset_set_range(ptr noundef %9, ptr noundef %i.dw, i32 noundef %i.dx, i32 noundef %i.cn)
  %i.dy = load i32, ptr %2, align 4, !tbaa !7     ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, %3
  br i1 %i.dz, label %bb.ag, label %add_code_range0.exit125

bb.ag:                                            ; preds = %bb.af
  %i.ea = getelementptr i8, ptr %9, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !98
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !60
  %i.ee = and i32 %i.ed, 4194304
  %.not.i123 = icmp eq i32 %i.ee, 0
  br i1 %.not.i123, label %add_code_range.exit.thread, label %add_code_range0.exit.thread131

add_code_range0.exit125:                          ; preds = %bb.af
  %i.ef = getelementptr i8, ptr %1, i64 40
  %i.eg = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.ef, ptr noundef %9, i32 noundef %i.dy, i32 noundef %3, i32 noundef 0) ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %add_code_range.exit.thread, label %add_code_range0.exit.thread131

add_code_range0.exit.thread131:                   ; preds = %bb.ag, %bb.v, %add_code_range.exit.thread127, %add_code_range0.exit, %bb.q, %bb.r, %add_code_range0.exit125, %add_code_range.exit121.thread135, %bb.x, %bb.p
  store i32 2, ptr %8, align 4, !tbaa !7
  br label %bb.ai

bb.ah:                                            ; preds = %bb.a, %bb.a
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.b, %bb.a, %bb.h, %CC_DUP_WARN.exit, %bb.j, %bb.k, %bb.ah, %add_code_range0.exit.thread131
  store i32 %5, ptr %4, align 4, !tbaa !7
  store i32 %3, ptr %2, align 4, !tbaa !7
  store i32 %6, ptr %7, align 4, !tbaa !7
  br label %add_code_range.exit.thread

add_code_range.exit.thread:                       ; preds = %bb.ag, %bb.ae, %bb.v, %bb.t, %add_code_range0.exit125, %add_code_range.exit121, %bb.x, %add_code_range0.exit, %add_code_range.exit, %bb.p, %bb.n, %bb.k, %bb.i, %bb.ai
  %.0 = phi i32 [ 0, %bb.ai ], [ %i.du, %add_code_range.exit121 ], [ %i.as, %bb.i ], [ %i.aw, %bb.k ], [ -400, %bb.n ], [ -203, %bb.p ], [ %i.bt, %add_code_range.exit ], [ %i.cd, %add_code_range0.exit ], [ -203, %bb.x ], [ %i.eg, %add_code_range0.exit125 ], [ -203, %bb.ae ], [ -203, %bb.t ], [ -203, %bb.v ], [ -203, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @str_exist_check_with_esc(i32 %.0.val, i32 %.4.val, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 20         ; 4 uses
  %i.d = getelementptr i8, ptr %2, i64 32         ; 3 uses
  %i.e = getelementptr i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %bb.o
  %.05 = phi ptr [ %0, %.lr.ph7 ], [ %.1, %bb.o ] ; 8 uses
  %.0704 = phi i32 [ 0, %.lr.ph7 ], [ %.2, %bb.o ]
  %.not = icmp eq i32 %.0704, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !47
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @onigenc_mbclen(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ %i.f, %bb.c ]
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr i8, ptr %.05, i64 %i.k
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.n = tail call i32 %i.m(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef %2) #25
  %i.o = load i32, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !47
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 @onigenc_mbclen(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = phi i32 [ %i.r, %bb.g ], [ %i.o, %bb.f ]
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %.05, i64 %i.t     ; 4 uses
  %i.v = icmp eq i32 %i.n, %.0.val
  br i1 %i.v, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.h
  %i.w = icmp ult ptr %i.u, %1
  br i1 %i.w, label %.lr.ph, label %.preheader..critedge_crit_edge

.preheader..critedge_crit_edge:                   ; preds = %.preheader
  %.pre = load i32, ptr %i.b, align 8, !tbaa !70
  %.pre15 = load i32, ptr %i.c, align 4, !tbaa !47
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.y = tail call i32 %i.x(ptr noundef %i.u, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  %.not80 = icmp eq i32 %i.y, %.4.val
  %.pre14 = load i32, ptr %i.b, align 8, !tbaa !70 ; 2 uses
  %.pre16 = load i32, ptr %i.c, align 4, !tbaa !47 ; 2 uses
  br i1 %.not80, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.z = icmp eq i32 %.pre14, %.pre16
  br i1 %i.z, label %._crit_edge8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @onigenc_mbclen(ptr noundef %i.u, ptr noundef nonnull %1, ptr noundef nonnull %2) #25 ; 0 uses
  br label %._crit_edge8

.critedge:                                        ; preds = %.preheader..critedge_crit_edge, %.lr.ph
  %i.ab = phi i32 [ %.pre15, %.preheader..critedge_crit_edge ], [ %.pre16, %.lr.ph ] ; 2 uses
  %i.ac = phi i32 [ %.pre, %.preheader..critedge_crit_edge ], [ %.pre14, %.lr.ph ]
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ae = tail call i32 @onigenc_mbclen(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  %i.af = phi i32 [ %i.ae, %bb.k ], [ %i.ab, %.critedge ]
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %.05, i64 %i.ag
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.aj = tail call i32 %i.ai(ptr noundef %.05, ptr noundef nonnull %1, ptr noundef nonnull %2) #25 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 93
  br i1 %i.ak, label %._crit_edge8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i32, ptr %i.e, align 4, !tbaa !103
  %i.am = icmp eq i32 %i.aj, %i.al
  %spec.select = zext i1 %i.am to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.l ], [ %spec.select, %bb.n ]
  %.1 = phi ptr [ %i.l, %bb.e ], [ %i.ah, %bb.l ], [ %i.u, %bb.n ] ; 2 uses
  %i.an = icmp ult ptr %.1, %1
  br i1 %i.an, label %bb.b, label %._crit_edge8, !llvm.loop !208

._crit_edge8:                                     ; preds = %bb.m, %bb.o, %bb.j, %bb.i, %bb.a
  %.073 = phi i32 [ 0, %bb.a ], [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %bb.o ], [ 0, %bb.m ]
  ret i32 %.073
}

declare i32 @onigenc_strlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @onigenc_with_ascii_strncmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @onigenc_step(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @i_apply_case_fold(i32 noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 9 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !147    ; 4 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 6 uses
  %i.e = getelementptr i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %0, 128
  %i.j = load i32, ptr %1, align 4, !tbaa !7
  %i.k = icmp ugt i32 %i.j, 127
  %i.l = xor i1 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97
  %i.o = tail call i32 @onig_is_code_in_cc(ptr noundef %i.n, i32 noundef %0, ptr noundef nonnull %i.f) #25 ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !145
  %i.r = and i32 %i.q, 1
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not75 = icmp eq i32 %i.o, 0
  %i.s = zext i1 %.not75 to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.066 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ], [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.t = icmp eq i32 %2, 1
  br i1 %i.t, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = tail call i32 @onig_is_code_in_cc(ptr noundef %i.v, i32 noundef %0, ptr noundef %i.d) #25
  %cond80 = icmp eq i32 %i.w, 0
  %i.x = getelementptr i8, ptr %i.d, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !145
  %i.z = trunc i32 %i.y to i1                     ; 2 uses
  br i1 %cond80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.old2.not = icmp eq i32 %.066, 0
  %or.cond89 = select i1 %i.z, i1 true, i1 %.old2.not
  br i1 %or.cond89, label %.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp ne i32 %.066, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ab = load i32, ptr %1, align 4, !tbaa !7     ; 5 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !97  ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !70
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %is_singlebyte_range.exit.thread, label %is_singlebyte_range.exit

is_singlebyte_range.exit:                         ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.ac, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = icmp slt i32 %i.ah, 2
  %i.aj = icmp ult i32 %i.ab, 128
  %spec.select.i = and i1 %i.aj, %i.ai
  br i1 %spec.select.i, label %is_singlebyte_range.exit.thread, label %bb.j

is_singlebyte_range.exit.thread:                  ; preds = %bb.i, %is_singlebyte_range.exit
  %i.ak = and i32 %i.ab, 31
  %i.al = shl nuw i32 1, %i.ak
  %i.am = sdiv i32 %i.ab, 32
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [4 x i8], ptr %i.g, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = or i32 %i.ap, %i.al
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !7
  br label %.thread

bb.j:                                             ; preds = %is_singlebyte_range.exit
  %i.ar = getelementptr i8, ptr %i.d, i64 40
  %i.as = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.ar, ptr noundef nonnull %i.b, i32 noundef %i.ab, i32 noundef %i.ab, i32 noundef 0) ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.h, %is_singlebyte_range.exit.thread, %bb.j, %bb.g
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.au = getelementptr i8, ptr %i.b, i64 8       ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.aw = tail call i32 @onig_is_code_in_cc(ptr noundef %i.av, i32 noundef %0, ptr noundef %i.d) #25
  %.not76 = icmp eq i32 %i.aw, 0
  br i1 %.not76, label %.thread86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.d, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !145
  %i.az = and i32 %i.ay, 1
  %.not77 = icmp eq i32 %i.az, 0
  br i1 %.not77, label %.preheader, label %.thread86

.preheader:                                       ; preds = %bb.l
  %i.ba = icmp sgt i32 %2, 0
  br i1 %i.ba, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !130
  %i.be = load i32, ptr %1, align 4, !tbaa !7
  %i.bf = call i32 %i.bd(i32 noundef %i.be, ptr noundef nonnull %i.a, ptr noundef %i.bb) #25
  %i.bg = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 12 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %onig_node_new_str.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr i8, ptr %i.a, i64 %i.bi
  store i32 0, ptr %i.bg, align 1
  %i.bk = getelementptr i8, ptr %i.bg, i64 28
  store i32 0, ptr %i.bk, align 4, !tbaa !13
  %i.bl = getelementptr i8, ptr %i.bg, i64 24     ; 3 uses
  store i32 0, ptr %i.bl, align 8, !tbaa !13
  %i.bm = getelementptr i8, ptr %i.bg, i64 32     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !13
  %i.bo = getelementptr i8, ptr %i.bg, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !13
  %i.bp = call i32 @onig_node_str_cat(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.bj)
  %.not.i.i.peel = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.peel, label %.lr.ph.peel.next, label %bb.o

.lr.ph.peel.next:                                 ; preds = %bb.n
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !13
  %i.br = or i32 %i.bq, 2
  store i32 %i.br, ptr %i.bl, align 8, !tbaa !13
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @onig_node_free(ptr noundef nonnull %i.bg)
  br label %onig_node_new_str.exit.thread

bb.p:                                             ; preds = %bb.q, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ 1, %.lr.ph.peel.next ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.bs = load ptr, ptr %i.au, align 8, !tbaa !97 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130
  %i.bv = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = call i32 %i.bu(i32 noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef %i.bs) #25
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.a, i64 %i.by
  %i.ca = call i32 @onig_node_str_cat(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, ptr noundef %i.bz) ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %bb.p
  call void @onig_node_free(ptr noundef nonnull %i.bg)
  br label %onig_node_new_str.exit.thread

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !209

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.0.lcssa = phi ptr [ null, %.preheader ], [ %i.bg, %bb.q ]
  %i.cc = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %onig_node_new_alt.exit.thread, label %bb.r

onig_node_new_alt.exit.thread:                    ; preds = %._crit_edge
  %i.ce = getelementptr i8, ptr %3, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !152
  store ptr null, ptr %i.cf, align 8, !tbaa !90
  br label %onig_node_new_str.exit.thread

bb.r:                                             ; preds = %._crit_edge
  store i32 9, ptr %i.cc, align 1
  %i.cg = getelementptr i8, ptr %i.cc, i64 8
  store ptr %.0.lcssa, ptr %i.cg, align 8, !tbaa !13
  %i.ch = getelementptr i8, ptr %i.cc, i64 16     ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !13
  %i.ci = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !152
  store ptr %i.cc, ptr %i.cj, align 8, !tbaa !90
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !152
  br label %.thread86

.thread86:                                        ; preds = %bb.r, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

onig_node_new_str.exit.thread:                    ; preds = %bb.m, %bb.o, %onig_node_new_alt.exit.thread, %.loopexit
  %.164 = phi i32 [ -5, %onig_node_new_alt.exit.thread ], [ %i.ca, %.loopexit ], [ -5, %bb.o ], [ -5, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.s

bb.s:                                             ; preds = %.thread, %.thread86, %onig_node_new_str.exit.thread, %bb.j
  %.2 = phi i32 [ %i.as, %bb.j ], [ %.164, %onig_node_new_str.exit.thread ], [ 0, %.thread86 ], [ 0, %.thread ]
  ret i32 %.2
}

declare i32 @onig_is_code_in_cc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"", !16, i64 0, !16, i64 8}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!15, !16, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!24, !12, i64 88}
!24 = !{!"re_pattern_buffer", !16, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !12, i64 64, !25, i64 72, !12, i64 80, !12, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !26, i64 112, !26, i64 120, !8, i64 128, !16, i64 136, !16, i64 144, !9, i64 152, !27, i64 408, !27, i64 416, !26, i64 424, !26, i64 432, !26, i64 440, !28, i64 448}
!25 = !{!"p1 _ZTS18OnigEncodingTypeST", !12, i64 0}
!26 = !{!"long", !9, i64 0}
!27 = !{!"p1 int", !12, i64 0}
!28 = !{!"p1 _ZTS17re_pattern_buffer", !12, i64 0}
!29 = !{!30, !26, i64 16}
!30 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !31, i64 8, !26, i64 16, !32, i64 24, !26, i64 32, !26, i64 40, !33, i64 48}
!31 = !{!"p1 _ZTS12st_hash_type", !12, i64 0}
!32 = !{!"p1 long", !12, i64 0}
!33 = !{!"p1 _ZTS14st_table_entry", !12, i64 0}
!34 = !{!35, !8, i64 24}
!35 = !{!"", !12, i64 0, !28, i64 8, !12, i64 16, !8, i64 24, !25, i64 32}
!36 = !{!35, !12, i64 0}
!37 = !{!35, !28, i64 8}
!38 = !{!35, !12, i64 16}
!39 = !{!24, !25, i64 72}
!40 = !{!35, !25, i64 32}
!41 = !{!42, !26, i64 8}
!42 = !{!"", !16, i64 0, !26, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !27, i64 32}
!43 = !{!42, !8, i64 16}
!44 = !{!42, !8, i64 20}
!45 = !{!42, !8, i64 24}
!46 = !{!42, !27, i64 32}
!47 = !{!48, !8, i64 20}
!48 = !{!"OnigEncodingTypeST", !12, i64 0, !16, i64 8, !8, i64 16, !8, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 132}
!49 = !{!42, !16, i64 0}
!50 = !{!51, !8, i64 0}
!51 = !{!"", !8, i64 0}
!52 = distinct !{!52, !19}
!53 = !{!27, !27, i64 0}
!54 = !{!55, !32, i64 8}
!55 = !{!"re_registers", !8, i64 0, !8, i64 4, !32, i64 8, !32, i64 16}
!56 = distinct !{!56, !19}
!57 = !{!26, !26, i64 0}
!58 = !{!24, !8, i64 56}
!59 = !{!24, !12, i64 80}
!60 = !{!61, !8, i64 8}
!61 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !62, i64 16}
!62 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!63 = !{!64, !65, i64 40}
!64 = !{!"", !51, i64 0, !8, i64 4, !9, i64 8, !65, i64 40}
!65 = !{!"p1 _ZTS5_BBuf", !12, i64 0}
!66 = !{!67, !16, i64 0}
!67 = !{!"_BBuf", !16, i64 0, !8, i64 8, !8, i64 12}
!68 = distinct !{!68, !19}
!69 = !{!16, !16, i64 0}
!70 = !{!48, !8, i64 16}
!71 = !{!48, !12, i64 32}
!72 = !{!48, !12, i64 88}
!73 = distinct !{!73, !19}
!74 = !{!75, !8, i64 24}
!75 = !{!"", !51, i64 0, !8, i64 4, !76, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !76, i64 32, !76, i64 40, !8, i64 48}
!76 = !{!"p1 _ZTS5_Node", !12, i64 0}
!77 = !{!75, !8, i64 16}
!78 = !{!75, !8, i64 20}
!79 = !{i64 0, i64 56, !13}
!80 = !{!75, !76, i64 8}
!81 = !{!82, !8, i64 0}
!82 = !{!"", !8, i64 0, !8, i64 4, !25, i64 8, !12, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !28, i64 72, !12, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !9, i64 104, !83, i64 168, !8, i64 176, !8, i64 180, !16, i64 184, !8, i64 192}
!83 = !{!"p2 _ZTS5_Node", !84, i64 0}
!84 = !{!"any p2 pointer", !12, i64 0}
!85 = !{!24, !8, i64 96}
!86 = !{!82, !8, i64 4}
!87 = !{!82, !16, i64 40}
!88 = !{!82, !16, i64 48}
!89 = !{!82, !28, i64 72}
!90 = !{!76, !76, i64 0}
!91 = !{!82, !8, i64 88}
!92 = !{!82, !8, i64 92}
!93 = !{!82, !83, i64 168}
!94 = !{!24, !8, i64 16}
!95 = !{!82, !16, i64 56}
!96 = !{!82, !16, i64 64}
!97 = !{!82, !25, i64 8}
!98 = !{!82, !12, i64 16}
!99 = !{!100, !8, i64 0}
!100 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !16, i64 16, !9, i64 24}
!101 = !{!100, !8, i64 8}
!102 = !{!100, !16, i64 16}
!103 = !{!61, !8, i64 16}
!104 = !{!61, !8, i64 4}
!105 = !{!100, !8, i64 4}
!106 = !{!61, !8, i64 0}
!107 = !{!61, !8, i64 20}
!108 = !{!61, !8, i64 24}
!109 = !{!61, !8, i64 28}
!110 = !{!61, !8, i64 32}
!111 = !{!61, !8, i64 36}
!112 = distinct !{!112, !19}
!113 = !{!82, !8, i64 176}
!114 = distinct !{!114, !19}
!115 = !{ptr @onig_scan_unsigned_number}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{null}
!119 = distinct !{!119, !19}
!120 = distinct !{null, ptr @onig_scan_unsigned_number}
!121 = distinct !{!121, !19}
!122 = !{!82, !16, i64 184}
!123 = !{!82, !8, i64 192}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{null}
!129 = !{!82, !8, i64 96}
!130 = !{!48, !12, i64 48}
!131 = distinct !{null}
!132 = !{!48, !8, i64 132}
!133 = distinct !{null}
!134 = !{!48, !12, i64 80}
!135 = distinct !{null, null}
!136 = distinct !{null, ptr @add_property_to_cc, null}
!137 = !{!82, !8, i64 180}
!138 = !{!65, !65, i64 0}
!139 = distinct !{!139, !19}
!140 = distinct !{!140, !19}
!141 = distinct !{!141, !19}
!142 = distinct !{null}
!143 = distinct !{null}
!144 = distinct !{!144, !19}
!145 = !{!64, !8, i64 4}
!146 = distinct !{null, null}
!147 = !{!148, !12, i64 0}
!148 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !76, i64 24, !83, i64 32}
!149 = !{!148, !12, i64 8}
!150 = !{!148, !12, i64 16}
!151 = !{!148, !76, i64 24}
!152 = !{!148, !83, i64 32}
!153 = !{!48, !12, i64 64}
!154 = distinct !{null, ptr @cclass_case_fold}
!155 = distinct !{!155, !19}
!156 = !{!157, !16, i64 16}
!157 = !{!"", !51, i64 0, !16, i64 8, !16, i64 16, !8, i64 24, !8, i64 28, !9, i64 32}
!158 = !{!157, !16, i64 8}
!159 = !{!157, !8, i64 24}
!160 = !{!48, !12, i64 96}
!161 = distinct !{!161, !19}
!162 = distinct !{!162, !19}
!163 = distinct !{!163, !19}
!164 = distinct !{!164, !19}
!165 = distinct !{!165, !19}
!166 = !{!48, !12, i64 40}
!167 = distinct !{!167, !19}
!168 = distinct !{null}
!169 = distinct !{!169, !19}
!170 = distinct !{!170, !19}
!171 = distinct !{!171, !19}
!172 = distinct !{null}
!173 = !{!174, !8, i64 8}
!174 = !{!"", !175, i64 0, !9, i64 2, !8, i64 8}
!175 = !{!"short", !9, i64 0}
!176 = distinct !{!176, !19}
!177 = distinct !{null}
!178 = distinct !{!178, !19}
!179 = distinct !{!179, !19}
!180 = !{!82, !8, i64 100}
!181 = distinct !{!181, !19}
!182 = !{!67, !8, i64 12}
!183 = distinct !{!183, !19}
!184 = !{!67, !8, i64 8}
!185 = distinct !{!185, !19}
!186 = distinct !{!186, !19}
!187 = distinct !{!187, !19}
!188 = distinct !{!188, !19}
!189 = distinct !{!189, !19}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{null}
!193 = distinct !{ptr @create_property_node, ptr @add_property_to_cc, null}
!194 = distinct !{ptr @add_property_to_cc, null}
!195 = distinct !{!195, !19}
!196 = distinct !{!196, !19}
!197 = distinct !{!197, !19}
!198 = distinct !{!198, !19}
!199 = distinct !{!199, !19}
!200 = distinct !{!200, !19}
!201 = distinct !{!201, !19}
!202 = distinct !{!202, !19}
!203 = distinct !{!203, !19}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !19}
!206 = distinct !{!206, !19}
!207 = distinct !{!207, !19}
!208 = distinct !{!208, !19}
!209 = distinct !{!209, !19, !210}
!210 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
