inline.NumInlined: 115
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@archive_string_normalize_D:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.nl = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.nm = load i64, ptr %i.q, align 8, !tbaa !9   ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm ; 3 uses
  %i.no = load i64, ptr %i.aa, align 8, !tbaa !21
  %i.np = sub nsw i64 %i.no, %.0402               ; 2 uses
  %i.nq = ptrtoint ptr %i.nn to i64
  %gepdiff781 = sub nsw i64 %i.np, %i.nm
  %i.nr = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ns = call i64 %.0399(ptr noundef %i.nn, i64 noundef %gepdiff781, i32 noundef %i.nr) #23, !callees !73 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %bb.bc, label %._crit_edge710.loopexit, !llvm.loop !109

._crit_edge710.loopexit:                          ; preds = %bb.bd
  %i.nu = getelementptr inbounds i8, ptr %i.nl, i64 %i.np
  br label %._crit_edge710

._crit_edge710:                                   ; preds = %._crit_edge710.loopexit, %.preheader538
  %.37.lcssa = phi ptr [ %.1430732, %.preheader538 ], [ %i.nn, %._crit_edge710.loopexit ]
  %.17426.lcssa = phi ptr [ %.1410733, %.preheader538 ], [ %i.nu, %._crit_edge710.loopexit ]
  %.lcssa554 = phi i64 [ %i.lw, %.preheader538 ], [ %i.ns, %._crit_edge710.loopexit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.37.lcssa, i64 %.lcssa554
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bb, %._crit_edge710
  %.38 = phi ptr [ %i.nv, %._crit_edge710 ], [ %.32, %bb.ax ], [ %i.nc, %bb.bb ] ; 2 uses
  %.18427 = phi ptr [ %.17426.lcssa, %._crit_edge710 ], [ %.16425, %bb.ax ], [ %.16425, %bb.bb ] ; 2 uses
  %.not782 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not782, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.be
  %i.nw = mul i64 %.2463.lcssa, %.0401
  %i.nx = add i64 %i.nw, %.0402
  %wide.trip.count = zext i32 %.1.lcssa to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph724, %._crit_edge716
  %indvars.iv940 = phi i64 [ 0, %.lr.ph724 ], [ %indvars.iv.next941, %._crit_edge716 ] ; 2 uses
  %.19428721 = phi ptr [ %.18427, %.lr.ph724 ], [ %.21.lcssa, %._crit_edge716 ] ; 2 uses
  %.39720 = phi ptr [ %.38, %.lr.ph724 ], [ %i.pe, %._crit_edge716 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv940
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !105 ; 2 uses
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !20
  %i.oa = ptrtoint ptr %.19428721 to i64
  %i.ob = ptrtoint ptr %.39720 to i64             ; 2 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = call i64 %.0399(ptr noundef %.39720, i64 noundef %i.oc, i32 noundef %i.nz) #23, !callees !73 ; 2 uses
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %bb.bf, %archive_string_ensure.exit
  %i.of = phi i64 [ %i.oz, %archive_string_ensure.exit ], [ %i.ob, %bb.bf ]
  %i.og = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.of, %i.oh                    ; 2 uses
  store i64 %i.oi, ptr %i.q, align 8, !tbaa !9
  %i.oj = load i64, ptr %i.aa, align 8, !tbaa !21 ; 9 uses
  %i.ok = add i64 %i.nx, %i.oj                    ; 2 uses
  %.not.i505 = icmp eq ptr %i.og, null
  %.not30.i = icmp ugt i64 %i.ok, %i.oj
  %or.cond.i506 = select i1 %.not.i505, i1 true, i1 %.not30.i
  br i1 %or.cond.i506, label %._crit_edge.i, label %archive_string_ensure.exit

._crit_edge.i:                                    ; preds = %.lr.ph715
  %i.ol = icmp ult i64 %i.oj, 32
  br i1 %i.ol, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.om = icmp ult i64 %i.oj, 8192
  br i1 %i.om, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.on = shl nuw nsw i64 %i.oj, 1
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.oo = lshr i64 %i.oj, 2
  %i.op = add i64 %i.oo, %i.oj                    ; 2 uses
  %i.oq = icmp ult i64 %i.op, %i.oj
  br i1 %i.oq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %.thread516.sink.split

bb.bk:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i
  %.0.i = phi i64 [ %i.op, %bb.bi ], [ %i.on, %bb.bh ], [ 32, %._crit_edge.i ]
  %spec.select.i = call i64 @llvm.umax.i64(i64 %.0.i, i64 %i.ok) ; 3 uses
  %i.or = call ptr @realloc(ptr noundef %i.og, i64 noundef %spec.select.i) #25 ; 3 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.ot = load ptr, ptr %0, align 8, !tbaa !14
  br label %.thread516.sink.split

bb.bm:                                            ; preds = %bb.bk
  store ptr %i.or, ptr %0, align 8, !tbaa !14
  store i64 %spec.select.i, ptr %i.aa, align 8, !tbaa !21
  %.pre945 = load i64, ptr %i.q, align 8, !tbaa !9
  br label %archive_string_ensure.exit

archive_string_ensure.exit:                       ; preds = %bb.bm, %.lr.ph715
  %i.ou = phi i64 [ %spec.select.i, %bb.bm ], [ %i.oj, %.lr.ph715 ]
  %i.ov = phi i64 [ %.pre945, %bb.bm ], [ %i.oi, %.lr.ph715 ] ; 2 uses
  %i.ow = phi ptr [ %i.or, %bb.bm ], [ %i.og, %.lr.ph715 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov ; 3 uses
  %i.oy = sub nsw i64 %i.ou, %.0402               ; 2 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %gepdiff783 = sub nsw i64 %i.oy, %i.ov
  %i.pa = load i32, ptr %i.a, align 4, !tbaa !20
  %i.pb = call i64 %.0399(ptr noundef %i.ox, i64 noundef %gepdiff783, i32 noundef %i.pa) #23, !callees !73 ; 2 uses
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %.lr.ph715, label %._crit_edge716.loopexit, !llvm.loop !110

._crit_edge716.loopexit:                          ; preds = %archive_string_ensure.exit
  %i.pd = getelementptr inbounds i8, ptr %i.ow, i64 %i.oy
  br label %._crit_edge716

._crit_edge716:                                   ; preds = %._crit_edge716.loopexit, %bb.bf
  %.45.lcssa = phi ptr [ %.39720, %bb.bf ], [ %i.ox, %._crit_edge716.loopexit ]
  %.21.lcssa = phi ptr [ %.19428721, %bb.bf ], [ %i.pd, %._crit_edge716.loopexit ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.od, %bb.bf ], [ %i.pb, %._crit_edge716.loopexit ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.45.lcssa, i64 %.lcssa558 ; 2 uses
  %indvars.iv.next941 = add nuw nsw i64 %indvars.iv940, 1 ; 2 uses
  %exitcond944.not = icmp eq i64 %indvars.iv.next941, %wide.trip.count
  br i1 %exitcond944.not, label %._crit_edge725, label %bb.bf, !llvm.loop !111

._crit_edge725:                                   ; preds = %._crit_edge716, %bb.be
  %.39.lcssa = phi ptr [ %.38, %bb.be ], [ %i.pe, %._crit_edge716 ] ; 3 uses
  %.19428.lcssa = phi ptr [ %.18427, %bb.be ], [ %.21.lcssa, %._crit_edge716 ] ; 2 uses
  %i.pf = icmp eq i32 %.lcssa553, 0
  br i1 %i.pf, label %.thread523, label %bb.bn

.thread523:                                       ; preds = %._crit_edge725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.bn:                                            ; preds = %._crit_edge725
  %i.pg = load i32, ptr %i.b, align 4, !tbaa !20  ; 3 uses
  store i32 %i.pg, ptr %i.a, align 4, !tbaa !20
  %i.ph = icmp slt i32 %.lcssa553, 0
  br i1 %i.ph, label %.preheader540, label %.lr.ph736

.thread516.sink.split:                            ; preds = %bb.bl, %bb.bj
  %.lcssa1011.sink = phi ptr [ %i.og, %bb.bj ], [ %i.ot, %bb.bl ]
  call void @free(ptr noundef %.lcssa1011.sink) #23
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.pi = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.pi, align 4, !tbaa !20
  br label %.thread516

.thread516:                                       ; preds = %bb.ad, %bb.av, %bb.ak, %bb.r, %bb.t, %bb.w, %bb.o, %bb.bc, %.thread516.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bq

bb.bo:                                            ; preds = %._crit_edge743, %bb.aj, %bb.af, %._crit_edge761, %._crit_edge755, %._crit_edge766
  %.3464 = phi i64 [ %i.br, %._crit_edge743 ], [ %i.bn, %._crit_edge766 ], [ %i.br, %bb.af ], [ %i.br, %._crit_edge755 ], [ %i.br, %._crit_edge761 ], [ %i.br, %bb.aj ] ; 2 uses
  %.3456 = phi ptr [ %i.bq, %._crit_edge743 ], [ %i.bm, %._crit_edge766 ], [ %i.bq, %bb.af ], [ %i.bq, %._crit_edge755 ], [ %i.bq, %._crit_edge761 ], [ %i.bq, %bb.aj ] ; 2 uses
  %.47 = phi ptr [ %i.hy, %._crit_edge743 ], [ %i.bj, %._crit_edge766 ], [ %.25, %bb.af ], [ %i.dz, %._crit_edge755 ], [ %i.ez, %._crit_edge761 ], [ %i.hf, %bb.aj ] ; 2 uses
  %.23 = phi ptr [ %.14423.lcssa, %._crit_edge743 ], [ %.2411.lcssa, %._crit_edge766 ], [ %.13422, %bb.af ], [ %.7416.lcssa, %._crit_edge755 ], [ %.10419.lcssa, %._crit_edge761 ], [ %.13422, %bb.aj ]
  %.1405 = phi i32 [ %.0404775, %._crit_edge743 ], [ -1, %._crit_edge766 ], [ %.0404775, %bb.af ], [ %.0404775, %._crit_edge755 ], [ %.0404775, %._crit_edge761 ], [ %.0404775, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.pj = call i32 %.0400(ptr noundef nonnull %i.a, ptr noundef %.3456, i64 noundef %.3464) #23, !callees !72 ; 2 uses
  %.not491 = icmp eq i32 %i.pj, 0
  br i1 %.not491, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.bo, %bb.m, %.thread523
  %.0404671 = phi i32 [ %.0404775, %.thread523 ], [ 0, %bb.m ], [ %.1405, %bb.bo ] ; 2 uses
  %.48 = phi ptr [ %.39.lcssa, %.thread523 ], [ %i.z, %bb.m ], [ %.47, %bb.bo ]
  %i.pk = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.pl = ptrtoint ptr %.48 to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 2 uses
  store i64 %i.pn, ptr %i.q, align 8, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  store i8 0, ptr %i.po, align 1, !tbaa !15
  br i1 %i.n, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit
  %i.pp = load ptr, ptr %0, align 8, !tbaa !14
  %i.pq = load i64, ptr %i.q, align 8, !tbaa !9
  %i.pr = getelementptr i8, ptr %i.pp, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 1
  store i8 0, ptr %i.ps, align 1, !tbaa !15
  br label %bb.bq

bb.bq:                                            ; preds = %.thread516, %.loopexit, %bb.bp, %bb.l
  %.3460 = phi i32 [ -1, %bb.l ], [ -1, %.thread516 ], [ %.0404671, %bb.bp ], [ %.0404671, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.3460
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @archive_string_normalize_C(ptr nofree noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 21 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca [10 x i32], align 16              ; 28 uses
  %i.d = alloca [10 x i32], align 16              ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 10 uses
  %i.g = and i32 %i.f, 1024
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.f, 2048
  %.not793 = icmp eq i32 %i.h, 0
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.f, 4096
  %.not787 = icmp eq i32 %i.i, 0
  br i1 %.not787, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = and i32 %i.f, 8192
  %.not792 = icmp eq i32 %i.j, 0
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = and i32 %i.f, 256
  %.not788 = icmp eq i32 %i.k, 0
  br i1 %.not788, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.f, 512
  %.not791 = icmp eq i32 %i.l, 0
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = and i32 %i.f, 2048
  %.not789 = icmp eq i32 %i.m, 0
  br i1 %.not789, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.f, 8192
  %.not790 = icmp ne i32 %i.n, 0                  ; 3 uses
  %.809 = select i1 %.not790, i64 2, i64 1
  %unicode_to_utf8.unicode_to_utf16le = select i1 %.not790, ptr @unicode_to_utf16le, ptr @unicode_to_utf8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.h, %bb.g
  %i.o = phi i1 [ false, %bb.g ], [ false, %bb.h ], [ %.not793, %bb.b ], [ %.not791, %bb.f ], [ %.not792, %bb.d ] ; 2 uses
  %i.p = phi i1 [ true, %bb.g ], [ %.not790, %bb.h ], [ true, %bb.b ], [ false, %bb.f ], [ true, %bb.d ]
  %.0627 = phi i64 [ 2, %bb.g ], [ %.809, %bb.h ], [ 2, %bb.b ], [ 1, %bb.f ], [ 2, %bb.d ] ; 32 uses
  %.0624 = phi ptr [ @unicode_to_utf16be, %bb.g ], [ %unicode_to_utf8.unicode_to_utf16le, %bb.h ], [ @unicode_to_utf16be, %bb.b ], [ @unicode_to_utf8, %bb.f ], [ @unicode_to_utf16le, %bb.d ] ; 22 uses
  %i.q = and i32 %i.f, 2048
  %.not794 = icmp eq i32 %i.q, 0
  br i1 %.not794, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.r = and i32 %i.f, 8192
  %.not795 = icmp eq i32 %i.r, 0
  br i1 %.not795, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.k
  %.0628 = phi i32 [ 6, %bb.k ], [ 4, %bb.i ], [ 4, %bb.j ] ; 2 uses
  %.0626 = phi i64 [ %.0627, %bb.k ], [ 1, %bb.i ], [ 1, %bb.j ] ; 19 uses
  %.0625 = phi ptr [ @cesu8_to_unicode, %bb.k ], [ @utf16be_to_unicode, %bb.i ], [ @utf16le_to_unicode, %bb.j ] ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 42 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = mul i64 %.0626, %2
  %i.v = add i64 %i.u, %.0627
  %i.w = add i64 %i.v, %i.t
  %i.x = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.w)
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread850, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ae = sub nsw i64 0, %.0627                   ; 7 uses
  %i.af = call i32 %.0625(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) #23, !callees !72 ; 2 uses
  %.not7961205 = icmp eq i32 %i.af, 0
  br i1 %.not7961205, label %.thread858, label %.lr.ph1212.preheader

.lr.ph1212.preheader:                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  br label %.lr.ph1212

.lr.ph1212:                                       ; preds = %.lr.ph1212.preheader, %bb.fz
  %i.ba = phi i32 [ %i.amm, %bb.fz ], [ %i.af, %.lr.ph1212.preheader ] ; 6 uses
  %.06291210 = phi i32 [ %.9638, %bb.fz ], [ 0, %.lr.ph1212.preheader ] ; 21 uses
  %.06481209 = phi ptr [ %.36, %bb.fz ], [ %i.ah, %.lr.ph1212.preheader ] ; 4 uses
  %.06801208 = phi ptr [ %.64, %bb.fz ], [ %i.ab, %.lr.ph1212.preheader ] ; 5 uses
  %.07171207 = phi ptr [ %.11728, %bb.fz ], [ %1, %.lr.ph1212.preheader ] ; 3 uses
  %.07371206 = phi i64 [ %.11748, %bb.fz ], [ %2, %.lr.ph1212.preheader ] ; 3 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader875, label %bb.p

.preheader875:                                    ; preds = %.lr.ph1212
  %i.bc = ptrtoint ptr %.06481209 to i64
  %i.bd = ptrtoint ptr %.06801208 to i64          ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !20
  %i.bg = call i64 %.0624(ptr noundef %.06801208, i64 noundef %i.be, i32 noundef %i.bf) #23, !callees !73 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph1200, label %._crit_edge1201

.lr.ph1200:                                       ; preds = %.preheader875
  %i.bi = mul i64 %.07371206, %.0626
  %i.bj = add i64 %i.bi, %.0627
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1200, %bb.o
  %i.bk = phi i64 [ %i.bd, %.lr.ph1200 ], [ %i.bx, %bb.o ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !14
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bk, %i.bm
  store i64 %i.bn, ptr %i.s, align 8, !tbaa !9
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.bp = add i64 %i.bj, %i.bo
  %i.bq = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.bp)
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread850, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !9   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.bw = sub nsw i64 %i.bv, %.0627               ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %gepdiff1228 = sub nsw i64 %i.bw, %i.bt
  %i.by = load i32, ptr %i.a, align 4, !tbaa !20
  %i.bz = call i64 %.0624(ptr noundef %i.bu, i64 noundef %gepdiff1228, i32 noundef %i.by) #23, !callees !73 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %._crit_edge1201.loopexit, !llvm.loop !112

._crit_edge1201.loopexit:                         ; preds = %bb.o
  %i.cb = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  br label %._crit_edge1201

._crit_edge1201:                                  ; preds = %._crit_edge1201.loopexit, %.preheader875
  %.1681.lcssa = phi ptr [ %.06801208, %.preheader875 ], [ %i.bu, %._crit_edge1201.loopexit ]
  %.1649.lcssa = phi ptr [ %.06481209, %.preheader875 ], [ %i.cb, %._crit_edge1201.loopexit ]
  %.lcssa1015 = phi i64 [ %i.bg, %.preheader875 ], [ %i.bz, %._crit_edge1201.loopexit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.1681.lcssa, i64 %.lcssa1015
  %i.cd = sub nsw i32 0, %i.ba
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.07171207, i64 %i.ce
  %i.cg = sub i64 %.07371206, %i.ce
  br label %bb.fz, !llvm.loop !113

bb.p:                                             ; preds = %.lr.ph1212
  %i.ch = icmp eq i32 %i.ba, %.0628
  %or.cond = or i1 %i.o, %i.ch
  %..0717 = select i1 %or.cond, ptr null, ptr %.07171207 ; 2 uses
  %i.ci = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07171207, i64 %i.ci ; 3 uses
  %i.ck = sub i64 %.07371206, %i.ci               ; 3 uses
  %i.cl = call i32 %.0625(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cj, i64 noundef %i.ck) #23, !callees !72 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph1088, label %.loopexit

.lr.ph1088:                                       ; preds = %bb.p, %bb.ez
  %i.cn = phi i32 [ %i.agx, %bb.ez ], [ %i.cl, %bb.p ] ; 6 uses
  %.16141086 = phi ptr [ %.24, %bb.ez ], [ %..0717, %bb.p ] ; 27 uses
  %.06401085 = phi i32 [ %.5645, %bb.ez ], [ %i.ba, %bb.p ] ; 13 uses
  %.26501084 = phi ptr [ %.27675, %bb.ez ], [ %.06481209, %bb.p ] ; 23 uses
  %.26821083 = phi ptr [ %.47, %bb.ez ], [ %.06801208, %bb.p ] ; 33 uses
  %.17181082 = phi ptr [ %i.cq, %bb.ez ], [ %i.cj, %bb.p ] ; 2 uses
  %.17381081 = phi i64 [ %i.cr, %bb.ez ], [ %i.ck, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.co = icmp eq i32 %i.cn, %.0628
  %or.cond3 = or i1 %i.o, %i.co
  %..1718 = select i1 %or.cond3, ptr null, ptr %.17181082 ; 4 uses
  %i.cp = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.17181082, i64 %i.cp ; 7 uses
  %i.cr = sub i64 %.17381081, %i.cp               ; 15 uses
end_hunk_0
begin_hunk_1_@archive_string_normalize_C:bb.a
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.tb = phi i32 [ %i.ta, %bb.cz ], [ 0, %bb.cy ] ; 8 uses
  %i.tc = icmp samesign uge i32 %i.rz, %i.tb
  %or.cond13.4 = and i1 %i.sb, %i.tc
  %i.td = icmp ne i32 %i.tb, 228                  ; 2 uses
  %or.cond15.4 = and i1 %i.td, %or.cond13.4
  br i1 %or.cond15.4, label %.lr.ph1142.preheader, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.te = zext nneg i32 %i.sf to i64              ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.te ; 4 uses
  %i.tg = sub i64 %i.se, %i.te                    ; 4 uses
  store i32 %i.tb, ptr %i.ar, align 4, !tbaa !20
  %i.th = call i32 %.0625(ptr noundef nonnull %i.as, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #23, !callees !72 ; 4 uses
  %i.ti = icmp slt i32 %i.th, 1
  br i1 %i.ti, label %.lr.ph1142.preheader, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tj = load i32, ptr %i.as, align 8, !tbaa !20 ; 4 uses
  %i.tk = icmp ugt i32 %i.tj, 119364
  br i1 %i.tk, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tl = lshr i32 %i.tj, 8
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !15
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.tp
  %i.tr = lshr i32 %i.tj, 4
  %i.ts = and i32 %i.tr, 15
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !15
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.tw
  %i.ty = and i32 %i.tj, 15
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !15
  %i.uc = zext i8 %i.ub to i32
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.ud = phi i32 [ %i.uc, %bb.dd ], [ 0, %bb.dc ] ; 8 uses
  %i.ue = icmp samesign uge i32 %i.tb, %i.ud
  %or.cond13.5 = and i1 %i.td, %i.ue
  %i.uf = icmp ne i32 %i.ud, 228                  ; 2 uses
  %or.cond15.5 = and i1 %i.uf, %or.cond13.5
  br i1 %or.cond15.5, label %.lr.ph1142.preheader, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ug = zext nneg i32 %i.th to i64              ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.ug ; 4 uses
  %i.ui = sub i64 %i.tg, %i.ug                    ; 4 uses
  store i32 %i.ud, ptr %i.at, align 8, !tbaa !20
  %i.uj = call i32 %.0625(ptr noundef nonnull %i.au, ptr noundef nonnull %i.uh, i64 noundef %i.ui) #23, !callees !72 ; 4 uses
  %i.uk = icmp slt i32 %i.uj, 1
  br i1 %i.uk, label %.lr.ph1142.preheader, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ul = load i32, ptr %i.au, align 4, !tbaa !20 ; 4 uses
  %i.um = icmp ugt i32 %i.ul, 119364
  br i1 %i.um, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.un = lshr i32 %i.ul, 8
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !15
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.ur
  %i.ut = lshr i32 %i.ul, 4
  %i.uu = and i32 %i.ut, 15
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !15
  %i.uy = zext i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.uy
  %i.va = and i32 %i.ul, 15
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !15
  %i.ve = zext i8 %i.vd to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.vf = phi i32 [ %i.ve, %bb.dh ], [ 0, %bb.dg ] ; 8 uses
  %i.vg = icmp samesign uge i32 %i.ud, %i.vf
  %or.cond13.6 = and i1 %i.uf, %i.vg
  %i.vh = icmp ne i32 %i.vf, 228                  ; 2 uses
  %or.cond15.6 = and i1 %i.vh, %or.cond13.6
  br i1 %or.cond15.6, label %.lr.ph1142.preheader, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vi = zext nneg i32 %i.uj to i64              ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.vi ; 4 uses
  %i.vk = sub i64 %i.ui, %i.vi                    ; 4 uses
  store i32 %i.vf, ptr %i.av, align 4, !tbaa !20
  %i.vl = call i32 %.0625(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.vj, i64 noundef %i.vk) #23, !callees !72 ; 4 uses
  %i.vm = icmp slt i32 %i.vl, 1
  br i1 %i.vm, label %.lr.ph1142.preheader, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vn = load i32, ptr %i.aw, align 16, !tbaa !20 ; 4 uses
  %i.vo = icmp ugt i32 %i.vn, 119364
  br i1 %i.vo, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.vp = lshr i32 %i.vn, 8
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !15
  %i.vt = zext i8 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.vt
  %i.vv = lshr i32 %i.vn, 4
  %i.vw = and i32 %i.vv, 15
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !15
  %i.wa = zext i8 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.wa
  %i.wc = and i32 %i.vn, 15
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !15
  %i.wg = zext i8 %i.wf to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.wh = phi i32 [ %i.wg, %bb.dl ], [ 0, %bb.dk ] ; 8 uses
  %i.wi = icmp samesign uge i32 %i.vf, %i.wh
  %or.cond13.7 = and i1 %i.vh, %i.wi
  %i.wj = icmp ne i32 %i.wh, 228                  ; 2 uses
  %or.cond15.7 = and i1 %i.wj, %or.cond13.7
  br i1 %or.cond15.7, label %.lr.ph1142.preheader, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wk = zext nneg i32 %i.vl to i64              ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.wk ; 4 uses
  %i.wm = sub i64 %i.vk, %i.wk                    ; 4 uses
  store i32 %i.wh, ptr %i.ax, align 16, !tbaa !20
  %i.wn = call i32 %.0625(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.wl, i64 noundef %i.wm) #23, !callees !72 ; 5 uses
  %i.wo = icmp slt i32 %i.wn, 1
  br i1 %i.wo, label %.lr.ph1142.preheader, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wp = load i32, ptr %i.ay, align 4, !tbaa !20 ; 4 uses
  %i.wq = icmp ugt i32 %i.wp, 119364
  br i1 %i.wq, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wr = lshr i32 %i.wp, 8
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !15
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.wv
  %i.wx = lshr i32 %i.wp, 4
  %i.wy = and i32 %i.wx, 15
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !15
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.xc
  %i.xe = and i32 %i.wp, 15
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !15
  %i.xi = zext i8 %i.xh to i32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.xj = phi i32 [ %i.xi, %bb.dp ], [ 0, %bb.do ] ; 6 uses
  %i.xk = icmp samesign uge i32 %i.wh, %i.xj
  %i.xl = icmp ne i32 %i.xj, 228
  %i.xm = and i1 %i.xk, %i.xl
  %or.cond15.8 = and i1 %i.xm, %i.wj
  br i1 %or.cond15.8, label %.lr.ph1142.preheader, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xn = zext nneg i32 %i.wn to i64              ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.xn
  %i.xp = sub i64 %i.wm, %i.xn
  store i32 %i.xj, ptr %i.az, align 4, !tbaa !20
  br label %.lr.ph1142.preheader

.lr.ph1142.preheader:                             ; preds = %bb.dr, %bb.df, %bb.dj, %bb.de, %bb.db, %bb.dm, %bb.da, %bb.cx, %bb.di, %bb.cw, %bb.ct, %bb.dn, %bb.cs, %bb.cp, %bb.dq, %bb.co, %bb.cl
  %.11140.ph = phi i32 [ 10, %bb.dr ], [ 2, %bb.cl ], [ 2, %bb.co ], [ 9, %bb.dq ], [ 3, %bb.cp ], [ 3, %bb.cs ], [ 9, %bb.dn ], [ 4, %bb.ct ], [ 4, %bb.cw ], [ 7, %bb.di ], [ 5, %bb.cx ], [ 5, %bb.da ], [ 8, %bb.dm ], [ 6, %bb.db ], [ 6, %bb.de ], [ 8, %bb.dj ], [ 7, %bb.df ]
  %.25931139.ph = phi i32 [ %i.wn, %bb.dr ], [ %i.oz, %bb.cl ], [ %i.oz, %bb.co ], [ %i.wn, %bb.dq ], [ %i.qb, %bb.cp ], [ %i.qb, %bb.cs ], [ %i.wn, %bb.dn ], [ %i.rd, %bb.ct ], [ %i.rd, %bb.cw ], [ %i.uj, %bb.di ], [ %i.sf, %bb.cx ], [ %i.sf, %bb.da ], [ %i.vl, %bb.dm ], [ %i.th, %bb.db ], [ %i.th, %bb.de ], [ %i.vl, %bb.dj ], [ %i.uj, %bb.df ]
  %.26011137.ph = phi i32 [ %i.xj, %bb.dr ], [ %i.os, %bb.cl ], [ %i.pv, %bb.co ], [ %i.xj, %bb.dq ], [ %i.pv, %bb.cp ], [ %i.qx, %bb.cs ], [ %i.wh, %bb.dn ], [ %i.qx, %bb.ct ], [ %i.rz, %bb.cw ], [ %i.vf, %bb.di ], [ %i.rz, %bb.cx ], [ %i.tb, %bb.da ], [ %i.wh, %bb.dm ], [ %i.tb, %bb.db ], [ %i.ud, %bb.de ], [ %i.vf, %bb.dj ], [ %i.ud, %bb.df ]
  %.16071136.ph = phi i32 [ %i.xj, %bb.dr ], [ %i.os, %bb.cl ], [ %i.os, %bb.co ], [ %i.wh, %bb.dq ], [ %i.pv, %bb.cp ], [ %i.pv, %bb.cs ], [ %i.wh, %bb.dn ], [ %i.qx, %bb.ct ], [ %i.qx, %bb.cw ], [ %i.ud, %bb.di ], [ %i.rz, %bb.cx ], [ %i.rz, %bb.da ], [ %i.vf, %bb.dm ], [ %i.tb, %bb.db ], [ %i.tb, %bb.de ], [ %i.vf, %bb.dj ], [ %i.ud, %bb.df ]
  %.36321134.ph = phi i32 [ -1, %bb.dr ], [ %.06291210, %bb.cl ], [ %.06291210, %bb.co ], [ %.06291210, %bb.dq ], [ %.06291210, %bb.cp ], [ %.06291210, %bb.cs ], [ %.06291210, %bb.dn ], [ %.06291210, %bb.ct ], [ %.06291210, %bb.cw ], [ %.06291210, %bb.di ], [ %.06291210, %bb.cx ], [ %.06291210, %bb.da ], [ %.06291210, %bb.dm ], [ %.06291210, %bb.db ], [ %.06291210, %bb.de ], [ %.06291210, %bb.dj ], [ %.06291210, %bb.df ]
  %.37201133.ph = phi ptr [ %i.xo, %bb.dr ], [ %i.ox, %bb.cl ], [ %i.ox, %bb.co ], [ %i.wl, %bb.dq ], [ %i.pz, %bb.cp ], [ %i.pz, %bb.cs ], [ %i.wl, %bb.dn ], [ %i.rb, %bb.ct ], [ %i.rb, %bb.cw ], [ %i.uh, %bb.di ], [ %i.sd, %bb.cx ], [ %i.sd, %bb.da ], [ %i.vj, %bb.dm ], [ %i.tf, %bb.db ], [ %i.tf, %bb.de ], [ %i.vj, %bb.dj ], [ %i.uh, %bb.df ]
  %.37401132.ph = phi i64 [ %i.xp, %bb.dr ], [ %i.oy, %bb.cl ], [ %i.oy, %bb.co ], [ %i.wm, %bb.dq ], [ %i.qa, %bb.cp ], [ %i.qa, %bb.cs ], [ %i.wm, %bb.dn ], [ %i.rc, %bb.ct ], [ %i.rc, %bb.cw ], [ %i.ui, %bb.di ], [ %i.se, %bb.cx ], [ %i.se, %bb.da ], [ %i.vk, %bb.dm ], [ %i.tg, %bb.db ], [ %i.tg, %bb.de ], [ %i.vk, %bb.dj ], [ %i.ui, %bb.df ]
  br label %.lr.ph1142

.lr.ph1142:                                       ; preds = %.lr.ph1142.preheader, %bb.eg
  %.11140 = phi i32 [ %.4, %bb.eg ], [ %.11140.ph, %.lr.ph1142.preheader ] ; 9 uses
  %.25931139 = phi i32 [ %.6, %bb.eg ], [ %.25931139.ph, %.lr.ph1142.preheader ] ; 5 uses
  %.05961138 = phi i32 [ %.1597, %bb.eg ], [ 1, %.lr.ph1142.preheader ] ; 9 uses
  %.26011137 = phi i32 [ %.6605, %bb.eg ], [ %.26011137.ph, %.lr.ph1142.preheader ] ; 6 uses
  %.16071136 = phi i32 [ %.4610, %bb.eg ], [ %.16071136.ph, %.lr.ph1142.preheader ] ; 4 uses
  %.181135 = phi ptr [ %.19, %bb.eg ], [ %.16141086, %.lr.ph1142.preheader ]
  %.36321134 = phi i32 [ %.6635, %bb.eg ], [ %.36321134.ph, %.lr.ph1142.preheader ] ; 4 uses
  %.37201133 = phi ptr [ %.6723, %bb.eg ], [ %.37201133.ph, %.lr.ph1142.preheader ] ; 7 uses
  %.37401132 = phi i64 [ %.6743, %bb.eg ], [ %.37401132.ph, %.lr.ph1142.preheader ] ; 7 uses
  %i.xq = load i32, ptr %i.a, align 4, !tbaa !20  ; 2 uses
  %i.xr = sext i32 %.05961138 to i64              ; 3 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !20 ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ea, %.lr.ph1142
  %.01935.i814 = phi i32 [ 930, %.lr.ph1142 ], [ %.2.i819, %bb.ea ] ; 3 uses
  %.02034.i815 = phi i32 [ 0, %.lr.ph1142 ], [ %.222.i818, %bb.ea ] ; 3 uses
  %i.xu = add nuw nsw i32 %.02034.i815, %.01935.i814
  %i.xv = lshr i32 %i.xu, 1                       ; 5 uses
  %i.xw = zext nneg i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw [12 x i8], ptr @u_composition_table, i64 %i.xw ; 3 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !118 ; 2 uses
  %i.xz = icmp ult i32 %i.xy, %i.xq
  br i1 %i.xz, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.ya = add nuw nsw i32 %i.xv, 1
  br label %bb.ea

bb.du:                                            ; preds = %bb.ds
  %i.yb = icmp ugt i32 %i.xy, %i.xq
  br i1 %i.yb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.yc = add nsw i32 %i.xv, -1
  br label %bb.ea

bb.dw:                                            ; preds = %bb.du
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !120 ; 2 uses
  %i.yf = icmp ult i32 %i.ye, %i.xt
  br i1 %i.yf, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.yg = add nuw nsw i32 %i.xv, 1
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dw
  %i.yh = icmp ugt i32 %i.ye, %i.xt
  br i1 %i.yh, label %bb.dz, label %get_nfc.exit821

bb.dz:                                            ; preds = %bb.dy
  %i.yi = add nsw i32 %i.xv, -1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dx, %bb.dv, %bb.dt
  %.222.i818 = phi i32 [ %.02034.i815, %bb.dz ], [ %i.ya, %bb.dt ], [ %.02034.i815, %bb.dv ], [ %i.yg, %bb.dx ] ; 2 uses
  %.2.i819 = phi i32 [ %i.yi, %bb.dz ], [ %.01935.i814, %bb.dt ], [ %i.yc, %bb.dv ], [ %.01935.i814, %bb.dx ] ; 2 uses
  %.not.i820 = icmp slt i32 %.2.i819, %.222.i818
  br i1 %.not.i820, label %get_nfc.exit821.thread, label %bb.ds, !llvm.loop !121

get_nfc.exit821.thread:                           ; preds = %bb.ea
  %i.yj = add nsw i32 %.05961138, 1
  br label %bb.eg, !llvm.loop !124

get_nfc.exit821:                                  ; preds = %bb.dy
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !122
  store i32 %i.yl, ptr %i.a, align 4, !tbaa !20
  %i.ym = add nsw i32 %.05961138, 1               ; 2 uses
  %i.yn = icmp slt i32 %i.ym, %.11140
  br i1 %i.yn, label %.lr.ph1102.preheader.a, label %._crit_edge1103

.lr.ph1102.preheader.a:                           ; preds = %get_nfc.exit821
  %4 = sext i32 %i.ym to i64                      ; 5 uses
  %5 = sext i32 %.05961138 to i64                 ; 3 uses
  %i.yo = add i32 %.11140, -2
  %i.yp = sub i32 %.05961138, %.11140
  %i.yq = and i32 %i.yp, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yq, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph1102.prol, label %.lr.ph1102.prol.loopexit

.lr.ph1102.prol:                                  ; preds = %.lr.ph1102.preheader.a
  %i.yr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %4
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !20
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %5
  store i32 %i.ys, ptr %i.yt, align 4, !tbaa !20
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %4
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !20
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %5
  store i32 %i.yv, ptr %i.yw, align 4, !tbaa !20
  %indvars.iv.next.prol.a = add nsw i64 %4, 1
  br label %.lr.ph1102.prol.loopexit

.lr.ph1102.prol.loopexit:                         ; preds = %.lr.ph1102.prol, %.lr.ph1102.preheader.a
  %indvars.iv.unr.a = phi i64 [ %4, %.lr.ph1102.preheader.a ], [ %indvars.iv.next.prol.a, %.lr.ph1102.prol ]
  %.05881101.unr = phi i64 [ %5, %.lr.ph1102.preheader.a ], [ %4, %.lr.ph1102.prol ]
  %i.yx = icmp eq i32 %i.yo, %.05961138
  br i1 %i.yx, label %._crit_edge1103, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %.lr.ph1102.prol.loopexit, %.lr.ph1102
  %indvars.iv.a = phi i64 [ %indvars.iv.next.1.a, %.lr.ph1102 ], [ %indvars.iv.unr.a, %.lr.ph1102.prol.loopexit ] ; 6 uses
  %.05881101 = phi i64 [ %indvars.iv.next.a, %.lr.ph1102 ], [ %.05881101.unr, %.lr.ph1102.prol.loopexit ] ; 2 uses
  %i.yy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.a
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !20
  %i.za = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05881101
  store i32 %i.yz, ptr %i.za, align 4, !tbaa !20
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.a
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !20
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.05881101
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !20
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 3 uses
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next.a
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !20
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.a
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !20
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next.a
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !20
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.a
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !20
  %indvars.iv.next.1.a = add nsw i64 %indvars.iv.a, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1.a to i32
  %exitcond.not.1 = icmp eq i32 %.11140, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge1103, label %.lr.ph1102, !llvm.loop !125

._crit_edge1103:                                  ; preds = %.lr.ph1102.prol.loopexit, %.lr.ph1102, %get_nfc.exit821
  %6 = add i32 %.11140, -1                        ; 3 uses
  %i.zk = icmp sgt i32 %.11140, 1
  br i1 %i.zk, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %._crit_edge1103
  %i.zl = icmp eq i32 %.05961138, %6
  %i.zm = icmp sgt i32 %.25931139, 0
  %or.cond17 = select i1 %i.zl, i1 %i.zm, i1 false
  %i.zn = icmp eq i32 %.26011137, %.16071136
  %or.cond812 = select i1 %or.cond17, i1 %i.zn, i1 false
  br i1 %or.cond812, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.zo = zext nneg i32 %.11140 to i64
  %i.zp = getelementptr [4 x i8], ptr %i.d, i64 %i.zo
  %i.zq = getelementptr i8, ptr %i.zp, i64 -8
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !20 ; 3 uses
  %i.zs = icmp samesign ult i32 %.11140, 11
  br i1 %i.zs, label %.lr.ph1110.preheader, label %._crit_edge1111

.lr.ph1110.preheader:                             ; preds = %bb.ec
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xr ; 2 uses
  %i.zu = call i32 %.0625(ptr noundef nonnull %i.zt, ptr noundef %.37201133, i64 noundef %.37401132) #23, !callees !72 ; 3 uses
  %i.zv = icmp slt i32 %i.zu, 1
  br i1 %i.zv, label %._crit_edge1111, label %.lr.ph1903

.lr.ph1110:                                       ; preds = %bb.ef
  %i.zw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next1365 ; 2 uses
  %i.zx = call i32 %.0625(ptr noundef nonnull %i.zw, ptr noundef nonnull %i.aba, i64 noundef %i.abb) #23, !callees !72 ; 3 uses
  %i.zy = icmp slt i32 %i.zx, 1
  br i1 %i.zy, label %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge, label %.lr.ph1903, !llvm.loop !126

.lr.ph1903:                                       ; preds = %.lr.ph1110.preheader, %.lr.ph1110
  %i.zz = phi i32 [ %i.zx, %.lr.ph1110 ], [ %i.zu, %.lr.ph1110.preheader ] ; 3 uses
  %i.aaa = phi ptr [ %i.zw, %.lr.ph1110 ], [ %i.zt, %.lr.ph1110.preheader ]
  %.474111041902 = phi i64 [ %i.abb, %.lr.ph1110 ], [ %.37401132, %.lr.ph1110.preheader ] ; 2 uses
  %.472111051901 = phi ptr [ %i.aba, %.lr.ph1110 ], [ %.37201133, %.lr.ph1110.preheader ] ; 2 uses
  %.260811061900 = phi i32 [ %i.aav, %.lr.ph1110 ], [ %i.zr, %.lr.ph1110.preheader ] ; 3 uses
  %indvars.iv13641899 = phi i64 [ %indvars.iv.next1365, %.lr.ph1110 ], [ %i.xr, %.lr.ph1110.preheader ] ; 3 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !20 ; 4 uses
  %i.aac = icmp ugt i32 %i.aab, 119364
  br i1 %i.aac, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph1903
  %i.aad = lshr i32 %i.aab, 8
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !15
  %i.aah = zext i8 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.aah
  %i.aaj = lshr i32 %i.aab, 4
  %i.aak = and i32 %i.aaj, 15
  %i.aal = zext nneg i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !15
  %i.aao = zext i8 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.aao
  %i.aaq = and i32 %i.aab, 15
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aar
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !15
  %i.aau = zext i8 %i.aat to i32
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph1903, %bb.ed
  %i.aav = phi i32 [ %i.aau, %bb.ed ], [ 0, %.lr.ph1903 ] ; 9 uses
  %i.aaw = icmp sge i32 %.260811061900, %i.aav
  %i.aax = icmp ne i32 %.260811061900, 228
  %or.cond19 = and i1 %i.aax, %i.aaw
  %i.aay = icmp ne i32 %i.aav, 228
  %or.cond21 = and i1 %i.aay, %or.cond19
  br i1 %or.cond21, label %._crit_edge1111.loopexit.split.loop.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.aaz = zext nneg i32 %i.zz to i64             ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.472111051901, i64 %i.aaz ; 4 uses
  %i.abb = sub i64 %.474111041902, %i.aaz         ; 4 uses
  %i.abc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv13641899
  store i32 %i.aav, ptr %i.abc, align 4, !tbaa !20
  %indvars.iv.next1365 = add nsw i64 %indvars.iv13641899, 1 ; 4 uses
  %exitcond1367.not = icmp eq i64 %indvars.iv.next1365, 10
  br i1 %exitcond1367.not, label %._crit_edge1111, label %.lr.ph1110, !llvm.loop !126

._crit_edge1111.loopexit.split.loop.exit:         ; preds = %bb.ee
  %i.abd = trunc nsw i64 %indvars.iv13641899 to i32
  br label %._crit_edge1111

.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge: ; preds = %.lr.ph1110
  %i.abe = trunc nsw i64 %indvars.iv.next1365 to i32
  br label %._crit_edge1111

._crit_edge1111:                                  ; preds = %bb.ef, %.lr.ph1110.preheader, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge, %._crit_edge1111.loopexit.split.loop.exit, %bb.ec
  %.4741.lcssa = phi i64 [ %.37401132, %bb.ec ], [ %.37401132, %.lr.ph1110.preheader ], [ %.474111041902, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abb, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.abb, %bb.ef ]
  %.4721.lcssa = phi ptr [ %.37201133, %bb.ec ], [ %.37201133, %.lr.ph1110.preheader ], [ %.472111051901, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aba, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aba, %bb.ef ]
  %.2608.lcssa = phi i32 [ %i.zr, %bb.ec ], [ %i.zr, %.lr.ph1110.preheader ], [ %.260811061900, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aav, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aav, %bb.ef ]
  %.0.lcssa = phi i32 [ %.05961138, %bb.ec ], [ %.05961138, %.lr.ph1110.preheader ], [ %i.abd, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abe, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ 10, %bb.ef ] ; 2 uses
  %.4603 = phi i32 [ %.26011137, %bb.ec ], [ %.26011137, %.lr.ph1110.preheader ], [ %i.aav, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aav, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aav, %bb.ef ]
  %.4595 = phi i32 [ %.25931139, %bb.ec ], [ %i.zu, %.lr.ph1110.preheader ], [ %i.zz, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.zx, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.zz, %bb.ef ]
  %i.abf = icmp sgt i32 %.0.lcssa, 9              ; 2 uses
  %..3632 = select i1 %i.abf, i32 -1, i32 %.36321134
  %..0 = select i1 %i.abf, i32 10, i32 %.0.lcssa
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge1103, %bb.eb, %._crit_edge1111, %get_nfc.exit821.thread
  %.6743 = phi i64 [ %.37401132, %get_nfc.exit821.thread ], [ %.4741.lcssa, %._crit_edge1111 ], [ %.37401132, %._crit_edge1103 ], [ %.37401132, %bb.eb ] ; 2 uses
  %.6723 = phi ptr [ %.37201133, %get_nfc.exit821.thread ], [ %.4721.lcssa, %._crit_edge1111 ], [ %.37201133, %._crit_edge1103 ], [ %.37201133, %bb.eb ] ; 2 uses
  %.6635 = phi i32 [ %.36321134, %get_nfc.exit821.thread ], [ %..3632, %._crit_edge1111 ], [ %.36321134, %._crit_edge1103 ], [ %.36321134, %bb.eb ] ; 2 uses
  %.19 = phi ptr [ %.181135, %get_nfc.exit821.thread ], [ null, %._crit_edge1111 ], [ null, %._crit_edge1103 ], [ null, %bb.eb ] ; 2 uses
  %.4610 = phi i32 [ %.16071136, %get_nfc.exit821.thread ], [ %.2608.lcssa, %._crit_edge1111 ], [ %.16071136, %._crit_edge1103 ], [ %.16071136, %bb.eb ] ; 2 uses
  %.6605 = phi i32 [ %.26011137, %get_nfc.exit821.thread ], [ %.4603, %._crit_edge1111 ], [ %.26011137, %._crit_edge1103 ], [ %.26011137, %bb.eb ] ; 2 uses
  %.1597 = phi i32 [ %i.yj, %get_nfc.exit821.thread ], [ 0, %._crit_edge1111 ], [ 0, %._crit_edge1103 ], [ 0, %bb.eb ] ; 2 uses
  %.6 = phi i32 [ %.25931139, %get_nfc.exit821.thread ], [ %.4595, %._crit_edge1111 ], [ %.25931139, %._crit_edge1103 ], [ %.25931139, %bb.eb ] ; 2 uses
  %.4 = phi i32 [ %.11140, %get_nfc.exit821.thread ], [ %..0, %._crit_edge1111 ], [ %6, %._crit_edge1103 ], [ %6, %bb.eb ] ; 3 uses
  %i.abg = icmp slt i32 %.1597, %.4
  br i1 %i.abg, label %.lr.ph1142, label %._crit_edge1143.loopexit

._crit_edge1143.loopexit:                         ; preds = %bb.eg
  %i.abh = icmp sgt i32 %.6, 0
  br label %._crit_edge1143

._crit_edge1143:                                  ; preds = %._crit_edge1143.loopexit, %bb.ck, %bb.ch
  %.3740.lcssa = phi i64 [ %i.cr, %bb.ch ], [ %i.cr, %bb.ck ], [ %.6743, %._crit_edge1143.loopexit ] ; 9 uses
  %.3720.lcssa = phi ptr [ %i.cq, %bb.ch ], [ %i.cq, %bb.ck ], [ %.6723, %._crit_edge1143.loopexit ] ; 5 uses
  %.3632.lcssa = phi i32 [ %.06291210, %bb.ch ], [ %.06291210, %bb.ck ], [ %.6635, %._crit_edge1143.loopexit ]
  %.18.lcssa = phi ptr [ %.16141086, %bb.ch ], [ %.16141086, %bb.ck ], [ %.19, %._crit_edge1143.loopexit ] ; 6 uses
  %.1607.lcssa = phi i32 [ %i.nv, %bb.ch ], [ %i.nv, %bb.ck ], [ %.4610, %._crit_edge1143.loopexit ] ; 2 uses
  %.2601.lcssa = phi i32 [ 0, %bb.ch ], [ %i.os, %bb.ck ], [ %.6605, %._crit_edge1143.loopexit ]
  %.2593.lcssa = phi i1 [ false, %bb.ch ], [ true, %bb.ck ], [ %i.abh, %._crit_edge1143.loopexit ]
  %.1.lcssa = phi i32 [ 1, %bb.ch ], [ 1, %bb.ck ], [ %.4, %._crit_edge1143.loopexit ] ; 2 uses
  %.not800 = icmp eq ptr %.18.lcssa, null
  br i1 %.not800, label %.preheader881, label %bb.eh

.preheader881:                                    ; preds = %._crit_edge1143
  %i.abi = ptrtoint ptr %.26501084 to i64
  %i.abj = ptrtoint ptr %.26821083 to i64         ; 2 uses
  %i.abk = sub i64 %i.abi, %i.abj
  %i.abl = load i32, ptr %i.a, align 4, !tbaa !20
  %i.abm = call i64 %.0624(ptr noundef %.26821083, i64 noundef %i.abk, i32 noundef %i.abl) #23, !callees !73 ; 2 uses
  %i.abn = icmp eq i64 %i.abm, 0
  br i1 %i.abn, label %.lr.ph1152, label %._crit_edge1153

.lr.ph1152:                                       ; preds = %.preheader881
  %i.abo = mul i64 %.3740.lcssa, %.0626
  %i.abp = add i64 %i.abo, %.0627
  br label %bb.ep

bb.eh:                                            ; preds = %._crit_edge1143
  %i.abq = zext nneg i32 %.06401085 to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %.26821083, i64 %i.abq
  %i.abs = icmp ugt ptr %i.abr, %.26501084
  br i1 %i.abs, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.abt = load ptr, ptr %0, align 8, !tbaa !14
  %i.abu = ptrtoint ptr %.26821083 to i64
  %i.abv = ptrtoint ptr %i.abt to i64
  %i.abw = sub i64 %i.abu, %i.abv
  store i64 %i.abw, ptr %i.s, align 8, !tbaa !9
  %i.abx = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aby = mul i64 %.3740.lcssa, %.0626
  %i.abz = add i64 %i.aby, %.0627
  %i.aca = add i64 %i.abz, %i.abx
  %i.acb = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.aca)
  %i.acc = icmp eq ptr %i.acb, null
  br i1 %i.acc, label %.thread826, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.acd = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.ace = load i64, ptr %i.s, align 8, !tbaa !9
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.ace
  %i.acg = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 %i.acg
  %i.aci = getelementptr inbounds i8, ptr %i.ach, i64 %i.ae
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eh
  %.35715 = phi ptr [ %i.acf, %bb.ej ], [ %.26821083, %bb.eh ] ; 6 uses
  %.19667 = phi ptr [ %i.aci, %bb.ej ], [ %.26501084, %bb.eh ] ; 2 uses
  switch i32 %.06401085, label %bb.er [
    i32 4, label %bb.el
    i32 3, label %bb.em
    i32 2, label %bb.en
    i32 1, label %bb.eo
  ]

bb.el:                                            ; preds = %bb.ek
  %i.acj = getelementptr inbounds nuw i8, ptr %.18.lcssa, i64 1
  %i.ack = load i8, ptr %.18.lcssa, align 1, !tbaa !15
  %i.acl = getelementptr inbounds nuw i8, ptr %.35715, i64 1
  store i8 %i.ack, ptr %.35715, align 1, !tbaa !15
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.36716 = phi ptr [ %i.acl, %bb.el ], [ %.35715, %bb.ek ] ; 2 uses
  %.20 = phi ptr [ %i.acj, %bb.el ], [ %.18.lcssa, %bb.ek ] ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.20, i64 1
  %i.acn = load i8, ptr %.20, align 1, !tbaa !15
  %i.aco = getelementptr inbounds nuw i8, ptr %.36716, i64 1
  store i8 %i.acn, ptr %.36716, align 1, !tbaa !15
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ek
  %.37 = phi ptr [ %i.aco, %bb.em ], [ %.35715, %bb.ek ] ; 2 uses
  %.21 = phi ptr [ %i.acm, %bb.em ], [ %.18.lcssa, %bb.ek ] ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.21, i64 1
  %i.acq = load i8, ptr %.21, align 1, !tbaa !15
  %i.acr = getelementptr inbounds nuw i8, ptr %.37, i64 1
  store i8 %i.acq, ptr %.37, align 1, !tbaa !15
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ek
  %.38 = phi ptr [ %i.acr, %bb.en ], [ %.35715, %bb.ek ] ; 2 uses
  %.22 = phi ptr [ %i.acp, %bb.en ], [ %.18.lcssa, %bb.ek ]
  %i.acs = load i8, ptr %.22, align 1, !tbaa !15
  %i.act = getelementptr inbounds nuw i8, ptr %.38, i64 1
  store i8 %i.acs, ptr %.38, align 1, !tbaa !15
  br label %bb.er

bb.ep:                                            ; preds = %.lr.ph1152, %bb.eq
  %i.acu = phi i64 [ %i.abj, %.lr.ph1152 ], [ %i.adh, %bb.eq ]
  %i.acv = load ptr, ptr %0, align 8, !tbaa !14
  %i.acw = ptrtoint ptr %i.acv to i64
  %i.acx = sub i64 %i.acu, %i.acw
  store i64 %i.acx, ptr %i.s, align 8, !tbaa !9
  %i.acy = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.acz = add i64 %i.abp, %i.acy
  %i.ada = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.acz)
  %i.adb = icmp eq ptr %i.ada, null
  br i1 %i.adb, label %.thread826, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.adc = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.add = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.add ; 3 uses
  %i.adf = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.adg = sub nsw i64 %i.adf, %.0627             ; 2 uses
  %i.adh = ptrtoint ptr %i.ade to i64
  %gepdiff = sub nsw i64 %i.adg, %i.add
  %i.adi = load i32, ptr %i.a, align 4, !tbaa !20
  %i.adj = call i64 %.0624(ptr noundef %i.ade, i64 noundef %gepdiff, i32 noundef %i.adi) #23, !callees !73 ; 2 uses
  %i.adk = icmp eq i64 %i.adj, 0
  br i1 %i.adk, label %bb.ep, label %._crit_edge1153.loopexit, !llvm.loop !127

._crit_edge1153.loopexit:                         ; preds = %bb.eq
  %i.adl = getelementptr inbounds i8, ptr %i.adc, i64 %i.adg
  br label %._crit_edge1153

._crit_edge1153:                                  ; preds = %._crit_edge1153.loopexit, %.preheader881
  %.40.lcssa = phi ptr [ %.26821083, %.preheader881 ], [ %i.ade, %._crit_edge1153.loopexit ]
  %.20668.lcssa = phi ptr [ %.26501084, %.preheader881 ], [ %i.adl, %._crit_edge1153.loopexit ]
  %.lcssa989 = phi i64 [ %i.abm, %.preheader881 ], [ %i.adj, %._crit_edge1153.loopexit ]
  %i.adm = getelementptr inbounds nuw i8, ptr %.40.lcssa, i64 %.lcssa989
  br label %bb.er

bb.er:                                            ; preds = %bb.ek, %bb.eo, %._crit_edge1153
  %.41 = phi ptr [ %i.adm, %._crit_edge1153 ], [ %.35715, %bb.ek ], [ %i.act, %bb.eo ] ; 2 uses
  %.21669 = phi ptr [ %.20668.lcssa, %._crit_edge1153 ], [ %.19667, %bb.ek ], [ %.19667, %bb.eo ] ; 2 uses
  %i.adn = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.adn, label %.preheader865.lr.ph, label %._crit_edge1165

.preheader865.lr.ph:                              ; preds = %bb.er
  %i.ado = mul i64 %.3740.lcssa, %.0626
  %i.adp = add i64 %i.ado, %.0627
  %wide.trip.count = zext nneg i32 %.1.lcssa to i64
  br label %.preheader865

.preheader865:                                    ; preds = %.preheader865.lr.ph, %._crit_edge1158
  %indvars.iv1368 = phi i64 [ 0, %.preheader865.lr.ph ], [ %indvars.iv.next1369, %._crit_edge1158 ] ; 2 uses
  %.226701163 = phi ptr [ %.21669, %.preheader865.lr.ph ], [ %.23671.lcssa, %._crit_edge1158 ] ; 2 uses
  %.421162 = phi ptr [ %.41, %.preheader865.lr.ph ], [ %i.aep, %._crit_edge1158 ] ; 3 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1368 ; 2 uses
  %i.adr = ptrtoint ptr %.226701163 to i64
  %i.ads = ptrtoint ptr %.421162 to i64           ; 2 uses
  %i.adt = sub i64 %i.adr, %i.ads
  %i.adu = load i32, ptr %i.adq, align 4, !tbaa !20
  %i.adv = call i64 %.0624(ptr noundef %.421162, i64 noundef %i.adt, i32 noundef %i.adu) #23, !callees !73 ; 2 uses
  %i.adw = icmp eq i64 %i.adv, 0
  br i1 %i.adw, label %.lr.ph1157, label %._crit_edge1158

.lr.ph1157:                                       ; preds = %.preheader865, %bb.es
  %i.adx = phi i64 [ %i.aek, %bb.es ], [ %i.ads, %.preheader865 ]
  %i.ady = load ptr, ptr %0, align 8, !tbaa !14
  %i.adz = ptrtoint ptr %i.ady to i64
  %i.aea = sub i64 %i.adx, %i.adz
  store i64 %i.aea, ptr %i.s, align 8, !tbaa !9
  %i.aeb = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aec = add i64 %i.adp, %i.aeb
  %i.aed = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.aec)
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %.thread826, label %bb.es

bb.es:                                            ; preds = %.lr.ph1157
  %i.aef = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.aeg = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aeg ; 3 uses
  %i.aei = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aej = sub nsw i64 %i.aei, %.0627             ; 2 uses
  %i.aek = ptrtoint ptr %i.aeh to i64
  %gepdiff1219 = sub nsw i64 %i.aej, %i.aeg
  %i.ael = load i32, ptr %i.adq, align 4, !tbaa !20
  %i.aem = call i64 %.0624(ptr noundef %i.aeh, i64 noundef %gepdiff1219, i32 noundef %i.ael) #23, !callees !73 ; 2 uses
  %i.aen = icmp eq i64 %i.aem, 0
  br i1 %i.aen, label %.lr.ph1157, label %._crit_edge1158.loopexit, !llvm.loop !128

._crit_edge1158.loopexit:                         ; preds = %bb.es
  %i.aeo = getelementptr inbounds i8, ptr %i.aef, i64 %i.aej
  br label %._crit_edge1158

._crit_edge1158:                                  ; preds = %._crit_edge1158.loopexit, %.preheader865
  %.43.lcssa = phi ptr [ %.421162, %.preheader865 ], [ %i.aeh, %._crit_edge1158.loopexit ]
  %.23671.lcssa = phi ptr [ %.226701163, %.preheader865 ], [ %i.aeo, %._crit_edge1158.loopexit ] ; 2 uses
  %.lcssa993 = phi i64 [ %i.adv, %.preheader865 ], [ %i.aem, %._crit_edge1158.loopexit ]
  %i.aep = getelementptr inbounds nuw i8, ptr %.43.lcssa, i64 %.lcssa993 ; 2 uses
  %indvars.iv.next1369 = add nuw nsw i64 %indvars.iv1368, 1 ; 2 uses
  %exitcond1371.not = icmp eq i64 %indvars.iv.next1369, %wide.trip.count
  br i1 %exitcond1371.not, label %._crit_edge1165, label %.preheader865, !llvm.loop !129

._crit_edge1165:                                  ; preds = %._crit_edge1158, %bb.er
  %.42.lcssa = phi ptr [ %.41, %bb.er ], [ %i.aep, %._crit_edge1158 ] ; 4 uses
  %.22670.lcssa = phi ptr [ %.21669, %bb.er ], [ %.23671.lcssa, %._crit_edge1158 ] ; 4 uses
  br i1 %.2593.lcssa, label %bb.et, label %.loopexit.thread

bb.et:                                            ; preds = %._crit_edge1165
  %i.aeq = icmp eq i32 %.2601.lcssa, %.1607.lcssa
  %i.aer = icmp ne i64 %.3740.lcssa, 0
  %or.cond23 = select i1 %i.aeq, i1 %i.aer, i1 false
  br i1 %or.cond23, label %.preheader880, label %.loopexit.thread

.preheader880:                                    ; preds = %bb.et
  %i.aes = call i32 %.0625(ptr noundef nonnull %i.c, ptr noundef %.3720.lcssa, i64 noundef %.3740.lcssa) #23, !callees !72 ; 2 uses
  %i.aet = icmp sgt i32 %i.aes, 0
  br i1 %i.aet, label %.lr.ph1179, label %.loopexit.thread

.lr.ph1179:                                       ; preds = %.preheader880, %._crit_edge1170
  %i.aeu = phi i32 [ %i.agu, %._crit_edge1170 ], [ %i.aes, %.preheader880 ]
  %.56111178 = phi i32 [ %i.afp, %._crit_edge1170 ], [ %.1607.lcssa, %.preheader880 ]
  %.246721177 = phi ptr [ %.25673.lcssa, %._crit_edge1170 ], [ %.22670.lcssa, %.preheader880 ] ; 3 uses
  %.441176 = phi ptr [ %i.agt, %._crit_edge1170 ], [ %.42.lcssa, %.preheader880 ] ; 4 uses
  %.77241175 = phi ptr [ %i.afs, %._crit_edge1170 ], [ %.3720.lcssa, %.preheader880 ] ; 2 uses
  %.77441174 = phi i64 [ %i.aft, %._crit_edge1170 ], [ %.3740.lcssa, %.preheader880 ] ; 2 uses
  %i.aev = load i32, ptr %i.c, align 16, !tbaa !20 ; 5 uses
  %i.aew = icmp ugt i32 %i.aev, 119364
  br i1 %i.aew, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph1179
  %i.aex = lshr i32 %i.aev, 8
  %i.aey = zext nneg i32 %i.aex to i64
  %i.aez = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !15
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.afb
  %i.afd = lshr i32 %i.aev, 4
  %i.afe = and i32 %i.afd, 15
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.aff
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !15
  %i.afi = zext i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.afi
  %i.afk = and i32 %i.aev, 15
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afl
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !15
  %i.afo = zext i8 %i.afn to i32
  br label %bb.ev

bb.ev:                                            ; preds = %.lr.ph1179, %bb.eu
  %i.afp = phi i32 [ %i.afo, %bb.eu ], [ 0, %.lr.ph1179 ] ; 2 uses
  %i.afq = icmp sgt i32 %.56111178, %i.afp
  br i1 %i.afq, label %.loopexit.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.afr = zext nneg i32 %i.aeu to i64            ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.77241175, i64 %i.afr ; 3 uses
  %i.aft = sub i64 %.77441174, %i.afr             ; 4 uses
  %i.afu = ptrtoint ptr %.246721177 to i64
  %i.afv = ptrtoint ptr %.441176 to i64           ; 2 uses
  %i.afw = sub i64 %i.afu, %i.afv
  %i.afx = call i64 %.0624(ptr noundef %.441176, i64 noundef %i.afw, i32 noundef %i.aev) #23, !callees !73 ; 2 uses
  %i.afy = icmp eq i64 %i.afx, 0
  br i1 %i.afy, label %.lr.ph1169, label %._crit_edge1170

.lr.ph1169:                                       ; preds = %bb.ew
  %i.afz = mul i64 %i.aft, %.0626
  %i.aga = add i64 %i.afz, %.0627
  br label %bb.ex

bb.ex:                                            ; preds = %.lr.ph1169, %bb.ey
  %i.agb = phi i64 [ %i.afv, %.lr.ph1169 ], [ %i.ago, %bb.ey ]
  %i.agc = load ptr, ptr %0, align 8, !tbaa !14
  %i.agd = ptrtoint ptr %i.agc to i64
  %i.age = sub i64 %i.agb, %i.agd
  store i64 %i.age, ptr %i.s, align 8, !tbaa !9
  %i.agf = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.agg = add i64 %i.aga, %i.agf
  %i.agh = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.agg)
  %i.agi = icmp eq ptr %i.agh, null
  br i1 %i.agi, label %.thread826, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.agj = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.agk = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agk ; 3 uses
  %i.agm = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.agn = sub nsw i64 %i.agm, %.0627             ; 2 uses
  %i.ago = ptrtoint ptr %i.agl to i64
  %gepdiff1220 = sub nsw i64 %i.agn, %i.agk
  %i.agp = load i32, ptr %i.c, align 16, !tbaa !20
  %i.agq = call i64 %.0624(ptr noundef %i.agl, i64 noundef %gepdiff1220, i32 noundef %i.agp) #23, !callees !73 ; 2 uses
  %i.agr = icmp eq i64 %i.agq, 0
  br i1 %i.agr, label %bb.ex, label %._crit_edge1170.loopexit, !llvm.loop !130

._crit_edge1170.loopexit:                         ; preds = %bb.ey
  %i.ags = getelementptr inbounds i8, ptr %i.agj, i64 %i.agn
  br label %._crit_edge1170

._crit_edge1170:                                  ; preds = %._crit_edge1170.loopexit, %bb.ew
  %.45.lcssa = phi ptr [ %.441176, %bb.ew ], [ %i.agl, %._crit_edge1170.loopexit ]
  %.25673.lcssa = phi ptr [ %.246721177, %bb.ew ], [ %i.ags, %._crit_edge1170.loopexit ] ; 2 uses
  %.lcssa999 = phi i64 [ %i.afx, %bb.ew ], [ %i.agq, %._crit_edge1170.loopexit ]
  %i.agt = getelementptr inbounds nuw i8, ptr %.45.lcssa, i64 %.lcssa999 ; 2 uses
  %i.agu = call i32 %.0625(ptr noundef nonnull %i.c, ptr noundef nonnull %i.afs, i64 noundef %i.aft) #23, !callees !72 ; 2 uses
  %i.agv = icmp sgt i32 %i.agu, 0
  br i1 %i.agv, label %.lr.ph1179, label %.loopexit.thread, !llvm.loop !131

.thread826.sink.split:                            ; preds = %bb.ag, %bb.ae
  %.lcssa1600.sink = phi ptr [ %i.el, %bb.ae ], [ %i.ey, %bb.ag ]
  call void @free(ptr noundef %.lcssa1600.sink) #23
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.agw = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.agw, align 4, !tbaa !20
  br label %.thread826

.thread826:                                       ; preds = %bb.ei, %bb.bx, %bb.t, %bb.ao, %bb.bd, %bb.ep, %bb.ce, %bb.bk, %bb.av, %.lr.ph1157, %bb.ex, %.thread826.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.thread850

bb.ez:                                            ; preds = %bb.ba, %bb.bm, %bb.al, %bb.ax, %bb.cg, %get_nfc.exit, %bb.ai
  %storemerge.sink = phi i32 [ %i.fr, %bb.al ], [ %i.fk, %bb.ai ], [ %i.nu, %bb.cg ], [ %i.ky, %get_nfc.exit ], [ %i.hw, %bb.ax ], [ %i.kh, %bb.bm ], [ %i.ic, %bb.ba ]
  %.47 = phi ptr [ %.26821083, %bb.al ], [ %.9689, %bb.ai ], [ %.34714, %bb.cg ], [ %.26821083, %get_nfc.exit ], [ %.16696, %bb.ax ], [ %.25705, %bb.bm ], [ %.26821083, %bb.ba ] ; 2 uses
  %.27675 = phi ptr [ %.26501084, %bb.al ], [ %.5653, %bb.ai ], [ %.18666, %bb.cg ], [ %.26501084, %get_nfc.exit ], [ %.8656, %bb.ax ], [ %.13661, %bb.bm ], [ %.26501084, %bb.ba ] ; 2 uses
  %.5645 = phi i32 [ %.06401085, %bb.al ], [ %i.cn, %bb.ai ], [ %i.cn, %bb.cg ], [ %.06401085, %get_nfc.exit ], [ %i.cn, %bb.ax ], [ %i.cn, %bb.bm ], [ %.06401085, %bb.ba ] ; 2 uses
  %.24 = phi ptr [ null, %bb.al ], [ %..1718, %bb.ai ], [ %..1718, %bb.cg ], [ null, %get_nfc.exit ], [ %..1718, %bb.ax ], [ %..1718, %bb.bm ], [ null, %bb.ba ] ; 2 uses
  store i32 %storemerge.sink, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.agx = call i32 %.0625(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cq, i64 noundef %i.cr) #23, !callees !72 ; 3 uses
  %i.agy = icmp sgt i32 %i.agx, 0
  br i1 %i.agy, label %.lr.ph1088, label %.loopexit

.loopexit:                                        ; preds = %bb.ez, %bb.p
  %.0640934 = phi i32 [ %i.ba, %bb.p ], [ %.5645, %bb.ez ] ; 4 uses
  %i.agz = phi i32 [ %i.cl, %bb.p ], [ %i.agx, %bb.ez ] ; 2 uses
  %.10747 = phi i64 [ %i.ck, %bb.p ], [ %i.cr, %bb.ez ] ; 6 uses
  %.10727 = phi ptr [ %i.cj, %bb.p ], [ %i.cq, %bb.ez ]
  %.48 = phi ptr [ %.06801208, %bb.p ], [ %.47, %bb.ez ] ; 12 uses
  %.28676 = phi ptr [ %.06481209, %bb.p ], [ %.27675, %bb.ez ] ; 6 uses
  %.25 = phi ptr [ %..0717, %bb.p ], [ %.24, %bb.ez ] ; 11 uses
  %i.aha = icmp slt i32 %i.agz, 0
  %.not806 = icmp eq ptr %.25, null               ; 2 uses
  br i1 %i.aha, label %bb.fa, label %bb.fo

.loopexit.thread:                                 ; preds = %._crit_edge1170, %bb.ev, %bb.et, %._crit_edge1165, %.preheader880
  %.9746.ph836 = phi i64 [ %.3740.lcssa, %bb.et ], [ %.3740.lcssa, %._crit_edge1165 ], [ %.3740.lcssa, %.preheader880 ], [ %.77441174, %bb.ev ], [ %i.aft, %._crit_edge1170 ]
  %.9726.ph837 = phi ptr [ %.3720.lcssa, %bb.et ], [ %.3720.lcssa, %._crit_edge1165 ], [ %.3720.lcssa, %.preheader880 ], [ %.77241175, %bb.ev ], [ %i.afs, %._crit_edge1170 ]
  %.47.ph838 = phi ptr [ %.42.lcssa, %bb.et ], [ %.42.lcssa, %._crit_edge1165 ], [ %.42.lcssa, %.preheader880 ], [ %.441176, %bb.ev ], [ %i.agt, %._crit_edge1170 ]
  %.27675.ph839 = phi ptr [ %.22670.lcssa, %bb.et ], [ %.22670.lcssa, %._crit_edge1165 ], [ %.22670.lcssa, %.preheader880 ], [ %.246721177, %bb.ev ], [ %.25673.lcssa, %._crit_edge1170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.fz

bb.fa:                                            ; preds = %.loopexit
  br i1 %.not806, label %.preheader878, label %bb.fb

.preheader878:                                    ; preds = %bb.fa
  %i.ahb = ptrtoint ptr %.28676 to i64
  %i.ahc = ptrtoint ptr %.48 to i64               ; 2 uses
  %i.ahd = sub i64 %i.ahb, %i.ahc
  %i.ahe = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ahf = call i64 %.0624(ptr noundef %.48, i64 noundef %i.ahd, i32 noundef %i.ahe) #23, !callees !73 ; 2 uses
  %i.ahg = icmp eq i64 %i.ahf, 0
  br i1 %i.ahg, label %.lr.ph1189, label %._crit_edge1190

.lr.ph1189:                                       ; preds = %.preheader878
  %i.ahh = mul i64 %.10747, %.0626
  %i.ahi = add i64 %i.ahh, %.0627
  br label %bb.fj

bb.fb:                                            ; preds = %bb.fa
  %i.ahj = zext nneg i32 %.0640934 to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr %.48, i64 %i.ahj
  %i.ahl = icmp ugt ptr %i.ahk, %.28676
  br i1 %i.ahl, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.ahm = load ptr, ptr %0, align 8, !tbaa !14
  %i.ahn = ptrtoint ptr %.48 to i64
  %i.aho = ptrtoint ptr %i.ahm to i64
  %i.ahp = sub i64 %i.ahn, %i.aho
  store i64 %i.ahp, ptr %i.s, align 8, !tbaa !9
  %i.ahq = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ahr = mul i64 %.10747, %.0626
  %i.ahs = add i64 %i.ahr, %.0627
  %i.aht = add i64 %i.ahs, %i.ahq
  %i.ahu = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.aht)
  %i.ahv = icmp eq ptr %i.ahu, null
  br i1 %i.ahv, label %.thread850, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ahw = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.ahx = load i64, ptr %i.s, align 8, !tbaa !9
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 %i.ahx
  %i.ahz = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahw, i64 %i.ahz
  %i.aib = getelementptr inbounds i8, ptr %i.aia, i64 %i.ae
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fb
  %.49 = phi ptr [ %i.ahy, %bb.fd ], [ %.48, %bb.fb ] ; 6 uses
  %.29677 = phi ptr [ %i.aib, %bb.fd ], [ %.28676, %bb.fb ] ; 2 uses
  switch i32 %.0640934, label %bb.fl [
    i32 4, label %bb.ff
    i32 3, label %bb.fg
    i32 2, label %bb.fh
    i32 1, label %bb.fi
  ]

bb.ff:                                            ; preds = %bb.fe
  %i.aic = getelementptr inbounds nuw i8, ptr %.25, i64 1
  %i.aid = load i8, ptr %.25, align 1, !tbaa !15
  %i.aie = getelementptr inbounds nuw i8, ptr %.49, i64 1
  store i8 %i.aid, ptr %.49, align 1, !tbaa !15
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.50 = phi ptr [ %i.aie, %bb.ff ], [ %.49, %bb.fe ] ; 2 uses
  %.26 = phi ptr [ %i.aic, %bb.ff ], [ %.25, %bb.fe ] ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.26, i64 1
  %i.aig = load i8, ptr %.26, align 1, !tbaa !15
  %i.aih = getelementptr inbounds nuw i8, ptr %.50, i64 1
  store i8 %i.aig, ptr %.50, align 1, !tbaa !15
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fe
  %.51 = phi ptr [ %i.aih, %bb.fg ], [ %.49, %bb.fe ] ; 2 uses
  %.27 = phi ptr [ %i.aif, %bb.fg ], [ %.25, %bb.fe ] ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.27, i64 1
  %i.aij = load i8, ptr %.27, align 1, !tbaa !15
  %i.aik = getelementptr inbounds nuw i8, ptr %.51, i64 1
  store i8 %i.aij, ptr %.51, align 1, !tbaa !15
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fe
  %.52 = phi ptr [ %i.aik, %bb.fh ], [ %.49, %bb.fe ] ; 2 uses
  %.28 = phi ptr [ %i.aii, %bb.fh ], [ %.25, %bb.fe ]
  %i.ail = load i8, ptr %.28, align 1, !tbaa !15
  %i.aim = getelementptr inbounds nuw i8, ptr %.52, i64 1
  store i8 %i.ail, ptr %.52, align 1, !tbaa !15
  br label %bb.fl

bb.fj:                                            ; preds = %.lr.ph1189, %bb.fk
  %i.ain = phi i64 [ %i.ahc, %.lr.ph1189 ], [ %i.aja, %bb.fk ]
  %i.aio = load ptr, ptr %0, align 8, !tbaa !14
  %i.aip = ptrtoint ptr %i.aio to i64
  %i.aiq = sub i64 %i.ain, %i.aip
  store i64 %i.aiq, ptr %i.s, align 8, !tbaa !9
  %i.air = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ais = add i64 %i.ahi, %i.air
  %i.ait = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.ais)
  %i.aiu = icmp eq ptr %i.ait, null
  br i1 %i.aiu, label %.thread850, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aiv = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.aiw = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.aiw ; 3 uses
  %i.aiy = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aiz = sub nsw i64 %i.aiy, %.0627             ; 2 uses
  %i.aja = ptrtoint ptr %i.aix to i64
  %gepdiff1226 = sub nsw i64 %i.aiz, %i.aiw
  %i.ajb = load i32, ptr %i.a, align 4, !tbaa !20
  %i.ajc = call i64 %.0624(ptr noundef %i.aix, i64 noundef %gepdiff1226, i32 noundef %i.ajb) #23, !callees !73 ; 2 uses
  %i.ajd = icmp eq i64 %i.ajc, 0
  br i1 %i.ajd, label %bb.fj, label %._crit_edge1190.loopexit, !llvm.loop !132

._crit_edge1190.loopexit:                         ; preds = %bb.fk
  %i.aje = getelementptr inbounds i8, ptr %i.aiv, i64 %i.aiz
  br label %._crit_edge1190

._crit_edge1190:                                  ; preds = %._crit_edge1190.loopexit, %.preheader878
  %.54.lcssa = phi ptr [ %.48, %.preheader878 ], [ %i.aix, %._crit_edge1190.loopexit ]
  %.30678.lcssa = phi ptr [ %.28676, %.preheader878 ], [ %i.aje, %._crit_edge1190.loopexit ]
  %.lcssa1007 = phi i64 [ %i.ahf, %.preheader878 ], [ %i.ajc, %._crit_edge1190.loopexit ]
  %i.ajf = getelementptr inbounds nuw i8, ptr %.54.lcssa, i64 %.lcssa1007
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fe, %bb.fi, %._crit_edge1190
  %.55 = phi ptr [ %i.ajf, %._crit_edge1190 ], [ %.49, %bb.fe ], [ %i.aim, %bb.fi ] ; 3 uses
  %.31679 = phi ptr [ %.30678.lcssa, %._crit_edge1190 ], [ %.29677, %bb.fe ], [ %.29677, %bb.fi ] ; 2 uses
  %i.ajg = ptrtoint ptr %.31679 to i64
  %i.ajh = ptrtoint ptr %.55 to i64               ; 2 uses
  %i.aji = sub i64 %i.ajg, %i.ajh
  %i.ajj = load i32, ptr %i.b, align 4, !tbaa !20
  %i.ajk = call i64 %.0624(ptr noundef %.55, i64 noundef %i.aji, i32 noundef %i.ajj) #23, !callees !73 ; 2 uses
  %i.ajl = icmp eq i64 %i.ajk, 0
  br i1 %i.ajl, label %.lr.ph1195, label %._crit_edge1196

.lr.ph1195:                                       ; preds = %bb.fl
  %i.ajm = mul i64 %.10747, %.0626
  %i.ajn = add i64 %i.ajm, %.0627
  br label %bb.fm

bb.fm:                                            ; preds = %.lr.ph1195, %bb.fn
  %i.ajo = phi i64 [ %i.ajh, %.lr.ph1195 ], [ %i.akb, %bb.fn ]
  %i.ajp = load ptr, ptr %0, align 8, !tbaa !14
  %i.ajq = ptrtoint ptr %i.ajp to i64
  %i.ajr = sub i64 %i.ajo, %i.ajq
  store i64 %i.ajr, ptr %i.s, align 8, !tbaa !9
  %i.ajs = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.ajt = add i64 %i.ajn, %i.ajs
  %i.aju = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.ajt)
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %.thread850, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ajw = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.ajx = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ajx ; 3 uses
  %i.ajz = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.aka = sub nsw i64 %i.ajz, %.0627             ; 2 uses
  %i.akb = ptrtoint ptr %i.ajy to i64
  %gepdiff1227 = sub nsw i64 %i.aka, %i.ajx
  %i.akc = load i32, ptr %i.b, align 4, !tbaa !20
  %i.akd = call i64 %.0624(ptr noundef %i.ajy, i64 noundef %gepdiff1227, i32 noundef %i.akc) #23, !callees !73 ; 2 uses
  %i.ake = icmp eq i64 %i.akd, 0
  br i1 %i.ake, label %bb.fm, label %._crit_edge1196.loopexit, !llvm.loop !133

._crit_edge1196.loopexit:                         ; preds = %bb.fn
  %i.akf = getelementptr inbounds i8, ptr %i.ajw, i64 %i.aka
  br label %._crit_edge1196

._crit_edge1196:                                  ; preds = %._crit_edge1196.loopexit, %bb.fl
  %.56.lcssa = phi ptr [ %.55, %bb.fl ], [ %i.ajy, %._crit_edge1196.loopexit ]
  %.32.lcssa = phi ptr [ %.31679, %bb.fl ], [ %i.akf, %._crit_edge1196.loopexit ]
  %.lcssa1011 = phi i64 [ %i.ajk, %bb.fl ], [ %i.akd, %._crit_edge1196.loopexit ]
  %i.akg = getelementptr inbounds nuw i8, ptr %.56.lcssa, i64 %.lcssa1011
  %i.akh = sub nsw i32 0, %i.agz
  %i.aki = zext nneg i32 %i.akh to i64            ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.10727, i64 %i.aki
  %i.akk = sub i64 %.10747, %i.aki
  br label %bb.fz, !llvm.loop !113

bb.fo:                                            ; preds = %.loopexit
  br i1 %.not806, label %.preheader, label %bb.fp

.preheader:                                       ; preds = %bb.fo
  %i.akl = ptrtoint ptr %.28676 to i64
  %i.akm = ptrtoint ptr %.48 to i64               ; 2 uses
  %i.akn = sub i64 %i.akl, %i.akm
  %i.ako = load i32, ptr %i.a, align 4, !tbaa !20
  %i.akp = call i64 %.0624(ptr noundef %.48, i64 noundef %i.akn, i32 noundef %i.ako) #23, !callees !73 ; 2 uses
  %i.akq = icmp eq i64 %i.akp, 0
  br i1 %i.akq, label %.lr.ph1215, label %._crit_edge1216

.lr.ph1215:                                       ; preds = %.preheader
  %i.akr = mul i64 %.10747, %.0626
  %i.aks = add i64 %i.akr, %.0627
  br label %bb.fx

bb.fp:                                            ; preds = %bb.fo
  %i.akt = zext nneg i32 %.0640934 to i64
  %i.aku = getelementptr inbounds nuw i8, ptr %.48, i64 %i.akt
  %i.akv = icmp ugt ptr %i.aku, %.28676
  br i1 %i.akv, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.akw = load ptr, ptr %0, align 8, !tbaa !14
  %i.akx = ptrtoint ptr %.48 to i64
  %i.aky = ptrtoint ptr %i.akw to i64
  %i.akz = sub i64 %i.akx, %i.aky
  store i64 %i.akz, ptr %i.s, align 8, !tbaa !9
  %i.ala = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.alb = mul i64 %.10747, %.0626
  %i.alc = add i64 %i.alb, %.0627
  %i.ald = add i64 %i.alc, %i.ala
  %i.ale = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.ald)
  %i.alf = icmp eq ptr %i.ale, null
  br i1 %i.alf, label %.thread850, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.alg = load ptr, ptr %0, align 8, !tbaa !14
  %i.alh = load i64, ptr %i.s, align 8, !tbaa !9
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.alh
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fp
  %.57 = phi ptr [ %i.ali, %bb.fr ], [ %.48, %bb.fp ] ; 6 uses
  switch i32 %.0640934, label %.thread858 [
    i32 4, label %bb.ft
    i32 3, label %bb.fu
    i32 2, label %bb.fv
    i32 1, label %bb.fw
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.alj = getelementptr inbounds nuw i8, ptr %.25, i64 1
  %i.alk = load i8, ptr %.25, align 1, !tbaa !15
  %i.all = getelementptr inbounds nuw i8, ptr %.57, i64 1
  store i8 %i.alk, ptr %.57, align 1, !tbaa !15
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.58 = phi ptr [ %i.all, %bb.ft ], [ %.57, %bb.fs ] ; 2 uses
  %.29 = phi ptr [ %i.alj, %bb.ft ], [ %.25, %bb.fs ] ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.29, i64 1
  %i.aln = load i8, ptr %.29, align 1, !tbaa !15
  %i.alo = getelementptr inbounds nuw i8, ptr %.58, i64 1
  store i8 %i.aln, ptr %.58, align 1, !tbaa !15
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fs
  %.59 = phi ptr [ %i.alo, %bb.fu ], [ %.57, %bb.fs ] ; 2 uses
  %.30 = phi ptr [ %i.alm, %bb.fu ], [ %.25, %bb.fs ] ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.30, i64 1
  %i.alq = load i8, ptr %.30, align 1, !tbaa !15
  %i.alr = getelementptr inbounds nuw i8, ptr %.59, i64 1
  store i8 %i.alq, ptr %.59, align 1, !tbaa !15
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fs
  %.60 = phi ptr [ %i.alr, %bb.fv ], [ %.57, %bb.fs ] ; 2 uses
  %.31 = phi ptr [ %i.alp, %bb.fv ], [ %.25, %bb.fs ]
  %i.als = load i8, ptr %.31, align 1, !tbaa !15
  %i.alt = getelementptr inbounds nuw i8, ptr %.60, i64 1
  store i8 %i.als, ptr %.60, align 1, !tbaa !15
  br label %.thread858

bb.fx:                                            ; preds = %.lr.ph1215, %bb.fy
  %i.alu = phi i64 [ %i.akm, %.lr.ph1215 ], [ %i.amg, %bb.fy ]
  %i.alv = load ptr, ptr %0, align 8, !tbaa !14
  %i.alw = ptrtoint ptr %i.alv to i64
  %i.alx = sub i64 %i.alu, %i.alw
  store i64 %i.alx, ptr %i.s, align 8, !tbaa !9
  %i.aly = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.alz = add i64 %i.aks, %i.aly
  %i.ama = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.alz)
  %i.amb = icmp eq ptr %i.ama, null
  br i1 %i.amb, label %.thread850, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.amc = load ptr, ptr %0, align 8, !tbaa !14
  %i.amd = load i64, ptr %i.s, align 8, !tbaa !9  ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.amd ; 3 uses
  %i.amf = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.amg = ptrtoint ptr %i.ame to i64
  %i.amh = add i64 %.0627, %i.amd
  %gepdiff1225 = sub i64 %i.amf, %i.amh
  %i.ami = load i32, ptr %i.a, align 4, !tbaa !20
  %i.amj = call i64 %.0624(ptr noundef %i.ame, i64 noundef %gepdiff1225, i32 noundef %i.ami) #23, !callees !73 ; 2 uses
  %i.amk = icmp eq i64 %i.amj, 0
  br i1 %i.amk, label %bb.fx, label %._crit_edge1216, !llvm.loop !134

._crit_edge1216:                                  ; preds = %bb.fy, %.preheader
  %.62.lcssa = phi ptr [ %.48, %.preheader ], [ %i.ame, %bb.fy ]
  %.lcssa = phi i64 [ %i.akp, %.preheader ], [ %i.amj, %bb.fy ]
  %i.aml = getelementptr inbounds nuw i8, ptr %.62.lcssa, i64 %.lcssa
  br label %.thread858

bb.fz:                                            ; preds = %.loopexit.thread, %._crit_edge1196, %._crit_edge1201
  %.11748 = phi i64 [ %i.akk, %._crit_edge1196 ], [ %i.cg, %._crit_edge1201 ], [ %.9746.ph836, %.loopexit.thread ] ; 2 uses
  %.11728 = phi ptr [ %i.akj, %._crit_edge1196 ], [ %i.cf, %._crit_edge1201 ], [ %.9726.ph837, %.loopexit.thread ] ; 2 uses
  %.64 = phi ptr [ %i.akg, %._crit_edge1196 ], [ %i.cc, %._crit_edge1201 ], [ %.47.ph838, %.loopexit.thread ] ; 2 uses
  %.36 = phi ptr [ %.32.lcssa, %._crit_edge1196 ], [ %.1649.lcssa, %._crit_edge1201 ], [ %.27675.ph839, %.loopexit.thread ]
  %.9638 = phi i32 [ -1, %._crit_edge1196 ], [ -1, %._crit_edge1201 ], [ %.3632.lcssa, %.loopexit.thread ] ; 2 uses
  %i.amm = call i32 %.0625(ptr noundef nonnull %i.a, ptr noundef %.11728, i64 noundef %.11748) #23, !callees !72 ; 2 uses
  %.not796 = icmp eq i32 %i.amm, 0
  br i1 %.not796, label %.thread858, label %.lr.ph1212

.thread858:                                       ; preds = %bb.fz, %bb.m, %bb.fw, %bb.fs, %._crit_edge1216
  %.65 = phi ptr [ %i.alt, %bb.fw ], [ %.57, %bb.fs ], [ %i.aml, %._crit_edge1216 ], [ %i.ab, %bb.m ], [ %.64, %bb.fz ]
  %.10639 = phi i32 [ %.06291210, %bb.fw ], [ %.06291210, %bb.fs ], [ %.06291210, %._crit_edge1216 ], [ 0, %bb.m ], [ %.9638, %bb.fz ] ; 2 uses
  %i.amn = load ptr, ptr %0, align 8, !tbaa !14   ; 2 uses
  %i.amo = ptrtoint ptr %.65 to i64
  %i.amp = ptrtoint ptr %i.amn to i64
  %i.amq = sub i64 %i.amo, %i.amp                 ; 2 uses
  store i64 %i.amq, ptr %i.s, align 8, !tbaa !9
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amn, i64 %i.amq
  store i8 0, ptr %i.amr, align 1, !tbaa !15
  br i1 %i.p, label %bb.ga, label %.thread850

bb.ga:                                            ; preds = %.thread858
  %i.ams = load ptr, ptr %0, align 8, !tbaa !14
  %i.amt = load i64, ptr %i.s, align 8, !tbaa !9
  %i.amu = getelementptr i8, ptr %i.ams, i64 %i.amt
  %i.amv = getelementptr i8, ptr %i.amu, i64 1
  store i8 0, ptr %i.amv, align 1, !tbaa !15
  br label %.thread850

.thread850:                                       ; preds = %bb.fc, %bb.fj, %bb.fm, %bb.n, %bb.fx, %bb.fq, %.thread826, %.thread858, %bb.ga, %bb.l
  %.7736 = phi i32 [ -1, %bb.l ], [ %.10639, %.thread858 ], [ %.10639, %bb.ga ], [ -1, %.thread826 ], [ -1, %bb.fj ], [ -1, %bb.n ], [ -1, %bb.fm ], [ -1, %bb.fx ], [ -1, %bb.fq ], [ -1, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.7736
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @best_effort_strncat_from_utf16be(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = add i64 %2, 1
  %i.d = add i64 %i.c, %i.b
  %i.e = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.d)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %best_effort_strncat_from_utf16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = load i64, ptr %i.a, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %.split.i

.split.i:                                         ; preds = %utf16_to_unicode.exit.thread.i, %bb.b
  %.028.i = phi i64 [ %i.ag, %utf16_to_unicode.exit.thread.i ], [ %2, %bb.b ] ; 3 uses
  %.026.i = phi ptr [ %i.ah, %utf16_to_unicode.exit.thread.i ], [ %1, %bb.b ] ; 7 uses
  %.024.i = phi ptr [ %.125.i, %utf16_to_unicode.exit.thread.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0.i = phi i32 [ %.2.i, %utf16_to_unicode.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  switch i64 %.028.i, label %bb.c [
    i64 0, label %utf16_to_unicode.exit.thread7.i
    i64 1, label %utf16_to_unicode.exit.thread.i
  ]

bb.c:                                             ; preds = %.split.i
  %.val47.i.i = load i8, ptr %.026.i, align 1, !tbaa !15
  %i.j = getelementptr i8, ptr %.026.i, i64 1
  %.val48.i.i = load i8, ptr %i.j, align 1, !tbaa !15
  %i.k = zext i8 %.val48.i.i to i16
  %i.l = zext i8 %.val47.i.i to i16               ; 2 uses
  %i.m = shl nuw i16 %i.l, 8
  %i.n = or disjoint i16 %i.m, %i.k
  %.039.i.i = zext i16 %i.n to i32                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.026.i, i64 2 ; 2 uses
  %i.p = and i16 %i.l, 252
  %or.cond.i.i = icmp eq i16 %i.p, 216
  br i1 %or.cond.i.i, label %bb.d, label %utf16_to_unicode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ugt i64 %.028.i, 3
  br i1 %i.q, label %bb.e, label %utf16_to_unicode.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i8, ptr %i.o, align 1, !tbaa !15
  %i.r = zext i8 %.val.i.i to i16                 ; 2 uses
  %i.s = and i16 %i.r, 252
  %or.cond3.i.i = icmp eq i16 %i.s, 220
  br i1 %or.cond3.i.i, label %.thread57.i.i, label %utf16_to_unicode.exit.thread.i

.thread57.i.i:                                    ; preds = %bb.e
  %i.t = shl nuw i16 %i.r, 8
  %i.u = getelementptr i8, ptr %.026.i, i64 3
  %.val46.i.i = load i8, ptr %i.u, align 1, !tbaa !15
  %i.v = zext i8 %.val46.i.i to i16
  %i.w = or disjoint i16 %i.t, %i.v
  %.0.i.i = zext i16 %i.w to i32
  %i.x = shl nuw nsw i32 %.039.i.i, 10
  %i.y = add nsw i32 %i.x, -56613888
  %i.z = add nuw nsw i32 %i.y, %.0.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  br label %utf16_to_unicode.exit.i

utf16_to_unicode.exit.i:                          ; preds = %.thread57.i.i, %bb.c
  %.141.i.i = phi ptr [ %i.aa, %.thread57.i.i ], [ %i.o, %bb.c ]
  %.2.i.i = phi i32 [ %i.z, %.thread57.i.i ], [ %.039.i.i, %bb.c ] ; 2 uses
  %i.ab = and i32 %.2.i.i, -2048
  %or.cond5.i.i = icmp eq i32 %i.ab, 55296        ; 2 uses
  %i.ac = ptrtoint ptr %.141.i.i to i64           ; 2 uses
  %i.ad = ptrtoint ptr %.026.i to i64             ; 2 uses
  %.neg.i.i = sub i64 %i.ad, %i.ac
  %i.ae = sub i64 %i.ac, %i.ad
  %.1.i = select i1 %or.cond5.i.i, i32 65533, i32 %.2.i.i
  %.143.i.v.i = select i1 %or.cond5.i.i, i64 %.neg.i.i, i64 %i.ae
  %.143.i.i = trunc i64 %.143.i.v.i to i32        ; 2 uses
  %.not.i = icmp eq i32 %.143.i.i, 0
  br i1 %.not.i, label %utf16_to_unicode.exit.thread7.i, label %utf16_to_unicode.exit.thread.i

utf16_to_unicode.exit.thread.i:                   ; preds = %utf16_to_unicode.exit.i, %bb.e, %bb.d, %.split.i
  %.143.i6.i = phi i32 [ %.143.i.i, %utf16_to_unicode.exit.i ], [ -2, %bb.d ], [ -2, %bb.e ], [ -1, %.split.i ] ; 2 uses
  %.15.i = phi i32 [ %.1.i, %utf16_to_unicode.exit.i ], [ 65533, %bb.d ], [ 65533, %bb.e ], [ 65533, %.split.i ] ; 2 uses
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 %.143.i6.i, i1 true)
  %.inv.i = icmp slt i32 %.143.i6.i, 0
  %i.af = zext nneg i32 %spec.select.i to i64     ; 2 uses
  %i.ag = sub i64 %.028.i, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.af
  %i.ai = icmp samesign ugt i32 %.15.i, 127       ; 2 uses
  %i.aj = trunc nuw nsw i32 %.15.i to i8
  %storemerge.i = select i1 %i.ai, i8 63, i8 %i.aj
  %i.ak = or i1 %.inv.i, %i.ai
  %.2.i = select i1 %i.ak, i32 -1, i32 %.0.i
  %.125.i = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  store i8 %storemerge.i, ptr %.024.i, align 1, !tbaa !15
  br label %.split.i, !llvm.loop !135

utf16_to_unicode.exit.thread7.i:                  ; preds = %utf16_to_unicode.exit.i, %.split.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.am = ptrtoint ptr %.024.i to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !15
  br label %best_effort_strncat_from_utf16.exit

best_effort_strncat_from_utf16.exit:              ; preds = %bb.a, %utf16_to_unicode.exit.thread7.i
  %.027.i = phi i32 [ %.0.i, %utf16_to_unicode.exit.thread7.i ], [ -1, %bb.a ]
  ret i32 %.027.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @best_effort_strncat_from_utf16le(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = add i64 %2, 1
  %i.d = add i64 %i.c, %i.b
  %i.e = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.d)
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %best_effort_strncat_from_utf16.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = load i64, ptr %i.a, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %.split.us.i

.split.us.i:                                      ; preds = %utf16_to_unicode.exit.thread.us.i, %bb.b
  %.028.us.i = phi i64 [ %i.w, %utf16_to_unicode.exit.thread.us.i ], [ %2, %bb.b ] ; 3 uses
  %.026.us.i = phi ptr [ %i.x, %utf16_to_unicode.exit.thread.us.i ], [ %1, %bb.b ] ; 5 uses
  %.024.us.i = phi ptr [ %.125.us.i, %utf16_to_unicode.exit.thread.us.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0.us.i = phi i32 [ %.2.us.i, %utf16_to_unicode.exit.thread.us.i ], [ 0, %bb.b ] ; 2 uses
  switch i64 %.028.us.i, label %bb.c [
    i64 0, label %utf16_to_unicode.exit.thread7.i
    i64 1, label %utf16_to_unicode.exit.thread.us.i
  ]

bb.c:                                             ; preds = %.split.us.i
  %.val51.i.us.i = load i16, ptr %.026.us.i, align 1 ; 2 uses
  %.039.i.us.i = zext i16 %.val51.i.us.i to i32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 2 ; 2 uses
  %i.k = and i16 %.val51.i.us.i, -1024
  %or.cond.i.us.i = icmp eq i16 %i.k, -10240
  br i1 %or.cond.i.us.i, label %bb.d, label %utf16_to_unicode.exit.us.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %.028.us.i, 3
  br i1 %i.l, label %bb.e, label %utf16_to_unicode.exit.thread.us.i

bb.e:                                             ; preds = %bb.d
  %.val49.i.us.i = load i16, ptr %i.j, align 1    ; 2 uses
  %i.m = and i16 %.val49.i.us.i, -1024
  %or.cond3.i.us.i = icmp eq i16 %i.m, -9216
  br i1 %or.cond3.i.us.i, label %.thread57.i.us.i, label %utf16_to_unicode.exit.thread.us.i

.thread57.i.us.i:                                 ; preds = %bb.e
  %.0.i.us.i = zext i16 %.val49.i.us.i to i32
  %i.n = shl nuw nsw i32 %.039.i.us.i, 10
  %i.o = add nsw i32 %i.n, -56613888
  %i.p = add nuw nsw i32 %i.o, %.0.i.us.i
  %i.q = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 4
  br label %utf16_to_unicode.exit.us.i

utf16_to_unicode.exit.us.i:                       ; preds = %.thread57.i.us.i, %bb.c
  %.141.i.us.i = phi ptr [ %i.q, %.thread57.i.us.i ], [ %i.j, %bb.c ]
  %.2.i.us.i = phi i32 [ %i.p, %.thread57.i.us.i ], [ %.039.i.us.i, %bb.c ] ; 2 uses
  %i.r = and i32 %.2.i.us.i, -2048
  %or.cond5.i.us.i = icmp eq i32 %i.r, 55296      ; 2 uses
  %i.s = ptrtoint ptr %.141.i.us.i to i64         ; 2 uses
  %i.t = ptrtoint ptr %.026.us.i to i64           ; 2 uses
  %.neg.i.us.i = sub i64 %i.t, %i.s
  %i.u = sub i64 %i.s, %i.t
  %.1.us.i = select i1 %or.cond5.i.us.i, i32 65533, i32 %.2.i.us.i
  %.143.i.v.us.i = select i1 %or.cond5.i.us.i, i64 %.neg.i.us.i, i64 %i.u
  %.143.i.us.i = trunc i64 %.143.i.v.us.i to i32  ; 2 uses
  %.not.us.i = icmp eq i32 %.143.i.us.i, 0
  br i1 %.not.us.i, label %utf16_to_unicode.exit.thread7.i, label %utf16_to_unicode.exit.thread.us.i

utf16_to_unicode.exit.thread.us.i:                ; preds = %utf16_to_unicode.exit.us.i, %bb.e, %bb.d, %.split.us.i
  %.143.i6.us.i = phi i32 [ %.143.i.us.i, %utf16_to_unicode.exit.us.i ], [ -2, %bb.d ], [ -2, %bb.e ], [ -1, %.split.us.i ] ; 2 uses
  %.15.us.i = phi i32 [ %.1.us.i, %utf16_to_unicode.exit.us.i ], [ 65533, %bb.d ], [ 65533, %bb.e ], [ 65533, %.split.us.i ] ; 2 uses
  %spec.select.us.i = tail call i32 @llvm.abs.i32(i32 %.143.i6.us.i, i1 true)
  %.inv.us.i = icmp slt i32 %.143.i6.us.i, 0
  %i.v = zext nneg i32 %spec.select.us.i to i64   ; 2 uses
  %i.w = sub i64 %.028.us.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.026.us.i, i64 %i.v
  %i.y = icmp samesign ugt i32 %.15.us.i, 127     ; 2 uses
  %i.z = trunc nuw nsw i32 %.15.us.i to i8
  %storemerge.us.i = select i1 %i.y, i8 63, i8 %i.z
  %i.aa = or i1 %.inv.us.i, %i.y
  %.2.us.i = select i1 %i.aa, i32 -1, i32 %.0.us.i
  %.125.us.i = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 1
  store i8 %storemerge.us.i, ptr %.024.us.i, align 1, !tbaa !15
  br label %.split.us.i, !llvm.loop !135

utf16_to_unicode.exit.thread7.i:                  ; preds = %utf16_to_unicode.exit.us.i, %.split.us.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ac = ptrtoint ptr %.024.us.i to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !15
  br label %best_effort_strncat_from_utf16.exit

best_effort_strncat_from_utf16.exit:              ; preds = %bb.a, %utf16_to_unicode.exit.thread7.i
  %.027.i = phi i32 [ %.0.us.i, %utf16_to_unicode.exit.thread7.i ], [ -1, %bb.a ]
  ret i32 %.027.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal range(i32 -1, 1) i32 @strncat_from_utf8_to_utf8(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = add i64 %2, 1
  %i.g = add i64 %i.f, %i.e
  %i.h = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.g)
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread92, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %.thread92, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader, %bb.ap
  %.040197 = phi ptr [ %i.eo, %bb.ap ], [ %1, %.preheader ] ; 7 uses
  %.042196 = phi i32 [ %spec.select, %bb.ap ], [ 0, %.preheader ] ; 2 uses
  %.048195 = phi i64 [ %i.ep, %bb.ap ], [ %2, %.preheader ] ; 2 uses
  %i.p = load i8, ptr %.040197, align 1, !tbaa !15 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %utf8_to_unicode.exit.thread86, label %.lr.ph179

.lr.ph:                                           ; preds = %utf8_to_unicode.exit.thread
  %i.r = load i8, ptr %i.cy, align 1, !tbaa !15   ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %utf8_to_unicode.exit.thread86, label %.lr.ph179, !llvm.loop !136

.lr.ph179:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.t = phi i8 [ %i.r, %.lr.ph ], [ %i.p, %.lr.ph.preheader ] ; 5 uses
  %.149115178 = phi i64 [ %i.cz, %.lr.ph ], [ %.048195, %.lr.ph.preheader ] ; 8 uses
  %.0116177 = phi ptr [ %i.cy, %.lr.ph ], [ %.040197, %.lr.ph.preheader ] ; 17 uses
  %i.u = zext i8 %i.t to i32                      ; 4 uses
  %i.v = zext i8 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_utf8_to_unicode.utf8_count, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15    ; 2 uses
  %i.y = sext i8 %i.x to i64
  %i.z = icmp ult i64 %.149115178, %i.y
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph179
  %i.aa = trunc i64 %.149115178 to i32            ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph95.preheader.i, label %_utf8_to_unicode.exit

.lr.ph95.preheader.i:                             ; preds = %bb.b
  %wide.trip.count105.i = and i64 %.149115178, 2147483647
  br label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.c, %.lr.ph95.preheader.i
  %indvars.iv102.i = phi i64 [ 1, %.lr.ph95.preheader.i ], [ %indvars.iv.next103.i, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0116177, i64 %indvars.iv102.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  %.not84.i = icmp slt i8 %i.ad, -64
  br i1 %.not84.i, label %bb.c, label %.loopexit.loopexit.split.loop.exit.i

bb.c:                                             ; preds = %.lr.ph95.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next103.i, %wide.trip.count105.i
  br i1 %exitcond106.not.i, label %_utf8_to_unicode.exit, label %.lr.ph95.i, !llvm.loop !137

bb.d:                                             ; preds = %.lr.ph179
  switch i8 %i.x, label %bb.o [
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = and i32 %i.u, 127
  br label %utf8_to_unicode.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = and i32 %i.ah, 192
  %.not82.i = icmp eq i32 %i.ai, 128
  br i1 %.not82.i, label %bb.g, label %utf8_to_unicode.exit.thread145

bb.g:                                             ; preds = %bb.f
  %i.aj = shl nuw nsw i32 %i.u, 6
  %i.ak = and i32 %i.aj, 1984
  %i.al = and i32 %i.ah, 63
  %i.am = or disjoint i32 %i.al, %i.ak
  br label %utf8_to_unicode.exit.thread

bb.h:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = sext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not80.i = icmp eq i32 %i.aq, 128
  br i1 %.not80.i, label %bb.i, label %utf8_to_unicode.exit.thread145

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.0116177, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = and i32 %i.at, 192
  %.not81.i = icmp eq i32 %i.au, 128
  br i1 %.not81.i, label %bb.j, label %utf8_to_unicode.exit.thread145

bb.j:                                             ; preds = %bb.i
  %i.av = shl nuw nsw i32 %i.u, 12
  %i.aw = and i32 %i.av, 61440
  %i.ax = shl nsw i32 %i.ap, 6
  %i.ay = and i32 %i.ax, 4032
  %i.az = or disjoint i32 %i.ay, %i.aw            ; 3 uses
  %i.ba = icmp samesign ult i32 %i.az, 2048
  br i1 %i.ba, label %utf8_to_unicode.exit.thread145, label %bb.y

bb.k:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !15
  %i.bd = sext i8 %i.bc to i32                    ; 2 uses
  %i.be = and i32 %i.bd, 192
  %.not.i59 = icmp eq i32 %i.be, 128
  br i1 %.not.i59, label %bb.l, label %utf8_to_unicode.exit.thread145

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.0116177, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %.not78.i = icmp eq i32 %i.bi, 128
  br i1 %.not78.i, label %bb.m, label %utf8_to_unicode.exit.thread145

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.0116177, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = and i32 %i.bl, 192
  %.not79.i = icmp eq i32 %i.bm, 128
  br i1 %.not79.i, label %bb.n, label %utf8_to_unicode.exit.thread145

bb.n:                                             ; preds = %bb.m
  %i.bn = shl nuw nsw i32 %i.u, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nsw i32 %i.bd, 12
  %i.bq = and i32 %i.bp, 258048
  %i.br = or disjoint i32 %i.bq, %i.bo            ; 2 uses
  %i.bs = shl nsw i32 %i.bh, 6
  %i.bt = and i32 %i.bs, 4032
  %i.bu = and i32 %i.bl, 63
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = add nsw i32 %i.br, -1114112
  %or.cond87.i = icmp ult i32 %i.bx, -1048576
  br i1 %or.cond87.i, label %utf8_to_unicode.exit.thread145, label %utf8_to_unicode.exit.thread

bb.o:                                             ; preds = %bb.d
  %i.by = and i8 %i.t, -2                         ; 2 uses
  %or.cond.i60 = icmp eq i8 %i.by, -64
  br i1 %or.cond.i60, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = add i8 %i.t, 11
  %or.cond3.i61 = icmp ult i8 %i.bz, 3
  br i1 %or.cond3.i61, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = and i8 %i.t, -4
  %or.cond5.i = icmp eq i8 %i.ca, -8
  br i1 %or.cond5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond7.i62 = icmp eq i8 %i.by, -4
  %i.cb = select i1 %or.cond7.i62, i64 6, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.066.i = phi i64 [ 5, %bb.q ], [ 2, %bb.o ], [ 4, %bb.p ], [ %i.cb, %bb.r ]
  %spec.select88.i = call i64 @llvm.umin.i64(i64 %.149115178, i64 %.066.i) ; 7 uses
  %i.cc = icmp samesign ugt i64 %spec.select88.i, 1
  br i1 %i.cc, label %.lr.ph.i, label %utf8_to_unicode.exit.thread145

.lr.ph.i:                                         ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.0116177, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !15
  %.not83.i = icmp slt i8 %i.ce, -64
  br i1 %.not83.i, label %bb.t, label %_utf8_to_unicode.exit

bb.t:                                             ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %spec.select88.i, 2
  br i1 %exitcond.not.i, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.0116177, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !15
  %.not83.i.1 = icmp slt i8 %i.cg, -64
  br i1 %.not83.i.1, label %bb.u, label %_utf8_to_unicode.exit

bb.u:                                             ; preds = %.lr.ph.i.1
  %exitcond.not.i.1 = icmp eq i64 %spec.select88.i, 3
  br i1 %exitcond.not.i.1, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.0116177, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15
  %.not83.i.2 = icmp slt i8 %i.ci, -64
  br i1 %.not83.i.2, label %bb.v, label %_utf8_to_unicode.exit

bb.v:                                             ; preds = %.lr.ph.i.2
  %exitcond.not.i.2 = icmp eq i64 %spec.select88.i, 4
  br i1 %exitcond.not.i.2, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.0116177, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !15
  %.not83.i.3 = icmp slt i8 %i.ck, -64
  br i1 %.not83.i.3, label %bb.w, label %_utf8_to_unicode.exit

bb.w:                                             ; preds = %.lr.ph.i.3
  %exitcond.not.i.3 = icmp eq i64 %spec.select88.i, 5
  br i1 %exitcond.not.i.3, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.0116177, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !15
  %.not83.i.4 = icmp slt i8 %i.cm, -64
  br i1 %.not83.i.4, label %bb.x, label %_utf8_to_unicode.exit

bb.x:                                             ; preds = %.lr.ph.i.4
  %exitcond.not.i.4 = icmp eq i64 %spec.select88.i, 6
  br i1 %exitcond.not.i.4, label %utf8_to_unicode.exit.thread145.loopexit, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %.0116177, i64 6
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !15
  %.not83.i.5 = icmp slt i8 %i.co, -64
  br i1 %.not83.i.5, label %utf8_to_unicode.exit.thread145.loopexit, label %_utf8_to_unicode.exit

.loopexit.loopexit.split.loop.exit.i:             ; preds = %.lr.ph95.i
  %i.cp = trunc nuw nsw i64 %indvars.iv102.i to i32
  br label %_utf8_to_unicode.exit

utf8_to_unicode.exit.thread145.loopexit:          ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.lr.ph.i.5
  %spec.select.i63.le = trunc nuw nsw i64 %spec.select88.i to i32
  br label %utf8_to_unicode.exit.thread145

utf8_to_unicode.exit.thread145:                   ; preds = %bb.s, %bb.j, %bb.h, %bb.f, %bb.l, %bb.i, %bb.m, %bb.k, %bb.n, %utf8_to_unicode.exit.thread145.loopexit
  %.2.i.ph = phi i32 [ %spec.select.i63.le, %utf8_to_unicode.exit.thread145.loopexit ], [ 1, %bb.k ], [ 3, %bb.m ], [ 2, %bb.i ], [ 2, %bb.l ], [ 1, %bb.f ], [ 1, %bb.h ], [ 3, %bb.j ], [ 1, %bb.s ], [ 4, %bb.n ]
  %i.cq = sub nsw i32 0, %.2.i.ph
  br label %utf8_to_unicode.exit.thread86

_utf8_to_unicode.exit:                            ; preds = %bb.c, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %bb.b, %.loopexit.loopexit.split.loop.exit.i
  %.2.i = phi i32 [ 6, %.lr.ph.i.5 ], [ %i.cp, %.loopexit.loopexit.split.loop.exit.i ], [ %i.aa, %bb.b ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ], [ 5, %.lr.ph.i.4 ], [ %i.aa, %bb.c ] ; 3 uses
  %i.cr = icmp eq i32 %.2.i, -3
  br i1 %i.cr, label %utf8_to_unicode.exit.thread, label %utf8_to_unicode.exit

bb.y:                                             ; preds = %bb.j
  %i.cs = and i32 %i.at, 63
  %i.ct = or disjoint i32 %i.cs, %i.az            ; 2 uses
  %i.cu = and i32 %i.az, 63488
  %or.cond.i = icmp eq i32 %i.cu, 55296
  br i1 %or.cond.i, label %utf8_to_unicode.exit.thread86, label %utf8_to_unicode.exit.thread

utf8_to_unicode.exit:                             ; preds = %_utf8_to_unicode.exit
  %i.cv = sub nsw i32 0, %.2.i                    ; 2 uses
  %i.cw = icmp slt i32 %.2.i, 0
  br i1 %i.cw, label %utf8_to_unicode.exit.thread, label %utf8_to_unicode.exit.thread86

utf8_to_unicode.exit.thread:                      ; preds = %bb.e, %bb.g, %bb.n, %bb.y, %_utf8_to_unicode.exit, %utf8_to_unicode.exit
  %.0.i85 = phi i32 [ %i.cv, %utf8_to_unicode.exit ], [ 3, %_utf8_to_unicode.exit ], [ 3, %bb.y ], [ 1, %bb.e ], [ 2, %bb.g ], [ 4, %bb.n ]
  %.3687284 = phi i32 [ 65533, %utf8_to_unicode.exit ], [ 65533, %_utf8_to_unicode.exit ], [ %i.ct, %bb.y ], [ %i.ae, %bb.e ], [ %i.am, %bb.g ], [ %i.bw, %bb.n ] ; 2 uses
  %i.cx = zext nneg i32 %.0.i85 to i64            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0116177, i64 %i.cx ; 4 uses
  %i.cz = sub i64 %.149115178, %i.cx              ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge, label %.lr.ph, !llvm.loop !136

utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge: ; preds = %utf8_to_unicode.exit.thread
  br label %utf8_to_unicode.exit.thread86, !llvm.loop !136

utf8_to_unicode.exit.thread86:                    ; preds = %.lr.ph, %bb.y, %utf8_to_unicode.exit, %.lr.ph.preheader, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge, %utf8_to_unicode.exit.thread145
  %.149.lcssa = phi i64 [ %.149115178, %utf8_to_unicode.exit.thread145 ], [ %.048195, %.lr.ph.preheader ], [ 0, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ %.149115178, %utf8_to_unicode.exit ], [ %i.cz, %.lr.ph ], [ %.149115178, %bb.y ] ; 3 uses
  %.0.lcssa = phi ptr [ %.0116177, %utf8_to_unicode.exit.thread145 ], [ %.040197, %.lr.ph.preheader ], [ %i.cy, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ %.0116177, %utf8_to_unicode.exit ], [ %i.cy, %.lr.ph ], [ %.0116177, %bb.y ] ; 3 uses
  %.0.i90 = phi i32 [ %i.cq, %utf8_to_unicode.exit.thread145 ], [ 0, %.lr.ph.preheader ], [ 0, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ %i.cv, %utf8_to_unicode.exit ], [ 0, %.lr.ph ], [ -3, %bb.y ] ; 3 uses
  %.3687289 = phi i32 [ 65533, %utf8_to_unicode.exit.thread145 ], [ undef, %.lr.ph.preheader ], [ %.3687284, %utf8_to_unicode.exit.thread.utf8_to_unicode.exit.thread86.loopexit_crit_edge ], [ 65533, %utf8_to_unicode.exit ], [ %.3687284, %.lr.ph ], [ %i.ct, %bb.y ] ; 2 uses
  %i.db = icmp ugt ptr %.0.lcssa, %.040197
  br i1 %i.db, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %utf8_to_unicode.exit.thread86
  %i.dc = ptrtoint ptr %.0.lcssa to i64
  %i.dd = ptrtoint ptr %.040197 to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = load i64, ptr %i.d, align 8, !tbaa !9
  %i.dg = add i64 %i.de, 1
  %i.dh = add i64 %i.dg, %i.df
  %i.di = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.dh)
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread92, label %archive_string_append.exit

archive_string_append.exit:                       ; preds = %bb.z
  %i.dk = load ptr, ptr %0, align 8, !tbaa !14
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull readonly align 1 %.040197, i64 %i.de, i1 false)
  %i.dn = load i64, ptr %i.d, align 8, !tbaa !9
  %i.do = add i64 %i.dn, %i.de                    ; 2 uses
  store i64 %i.do, ptr %i.d, align 8, !tbaa !9
  %i.dp = load ptr, ptr %0, align 8, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 0, ptr %i.dq, align 1, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %archive_string_append.exit, %utf8_to_unicode.exit.thread86
  %.141 = phi ptr [ %.040197, %utf8_to_unicode.exit.thread86 ], [ %.0.lcssa, %archive_string_append.exit ] ; 3 uses
  %i.dr = icmp eq i32 %.0.i90, 0
  br i1 %i.dr, label %.thread92, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ds = icmp eq i32 %.0.i90, -3
  %i.dt = and i32 %.3687289, -2048
  %i.du = icmp eq i32 %i.dt, 55296
  %or.cond4 = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond4, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.dv = call fastcc i32 @_utf8_to_unicode(ptr noundef %i.a, ptr noundef nonnull readonly %.141, i64 noundef %.149.lcssa) ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 3                    ; 2 uses
  %i.dx = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dy = and i32 %i.dx, -1024                    ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 55296
  %or.cond3.i = select i1 %i.dw, i1 %i.dz, i1 false
  br i1 %or.cond3.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !20
  %i.ea = add i64 %.149.lcssa, -3                 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 3
  br i1 %i.eb, label %.thread37.i, label %bb.ae

.thread37.i:                                      ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %cesu8_to_unicode.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.141, i64 3
  %i.ed = call fastcc i32 @_utf8_to_unicode(ptr noundef %i.b, ptr noundef nonnull readonly %i.ec, i64 noundef %i.ea)
  %.fr.i = freeze i32 %i.ed                       ; 2 uses
  %i.ee = icmp eq i32 %.fr.i, 3
  %i.ef = load i32, ptr %i.b, align 4             ; 2 uses
  %i.eg = and i32 %i.ef, -1024
  %i.eh = icmp eq i32 %i.eg, 56320
  %or.cond7.i = select i1 %i.ee, i1 %i.eh, i1 false
  br i1 %or.cond7.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ei = shl nuw nsw i32 %i.dx, 10
  %i.ej = add nsw i32 %i.ei, -56613888
  %i.ek = add nuw nsw i32 %i.ej, %i.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %cesu8_to_unicode.exit

bb.ag:                                            ; preds = %bb.ac
  %i.el = icmp eq i32 %i.dy, 56320
  %or.cond11.i = select i1 %i.dw, i1 %i.el, i1 false ; 2 uses
  %spec.select109 = select i1 %or.cond11.i, i32 65533, i32 %i.dx
  %spec.select110 = select i1 %or.cond11.i, i32 -3, i32 %i.dv
  br label %cesu8_to_unicode.exit

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.em = call i32 @llvm.abs.i32(i32 %.fr.i, i1 false)
  %spec.select.i = sub i32 0, %i.em
  br label %cesu8_to_unicode.exit

cesu8_to_unicode.exit:                            ; preds = %bb.ag, %bb.af, %.thread37.i, %bb.ah
  %.267 = phi i32 [ 65533, %.thread37.i ], [ %spec.select109, %bb.ag ], [ 65533, %bb.ah ], [ %i.ek, %bb.af ]
  %.027.i = phi i32 [ -3, %.thread37.i ], [ %spec.select110, %bb.ag ], [ %spec.select.i, %bb.ah ], [ 6, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ai

bb.ai:                                            ; preds = %cesu8_to_unicode.exit, %bb.ab
  %.1 = phi i32 [ %.267, %cesu8_to_unicode.exit ], [ %.3687289, %bb.ab ] ; 2 uses
  %.037 = phi i32 [ %.027.i, %cesu8_to_unicode.exit ], [ %.0.i90, %bb.ab ] ; 2 uses
  %.inv = icmp sgt i32 %.037, -1
  %spec.select = select i1 %.inv, i32 %.042196, i32 -1 ; 2 uses
  %spec.select53 = call i32 @llvm.abs.i32(i32 %.037, i1 true)
  %i.en = zext nneg i32 %spec.select53 to i64     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.141, i64 %i.en
  %i.ep = sub i64 %.149.lcssa, %i.en              ; 2 uses
  %i.eq = icmp ugt i32 %.1, 1114111
  %spec.store.select.i = select i1 %i.eq, i32 65533, i32 %.1 ; 13 uses
  %i.er = icmp samesign ult i32 %spec.store.select.i, 128
  br i1 %i.er, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.es = trunc nuw nsw i32 %spec.store.select.i to i8
  store i8 %i.es, ptr %i.c, align 4, !tbaa !15
  br label %unicode_to_utf8.exit

bb.ak:                                            ; preds = %bb.ai
  %i.et = icmp samesign ult i32 %spec.store.select.i, 2048
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eu = lshr i32 %spec.store.select.i, 6
  %i.ev = trunc nuw nsw i32 %i.eu to i8
  %i.ew = or disjoint i8 %i.ev, -64
  store i8 %i.ew, ptr %i.c, align 4, !tbaa !15
  %i.ex = trunc i32 %spec.store.select.i to i8
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128
  store i8 %i.ez, ptr %i.j, align 1, !tbaa !15
  br label %unicode_to_utf8.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = icmp samesign ult i32 %spec.store.select.i, 65536
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = lshr i32 %spec.store.select.i, 12
  %i.fc = trunc nuw nsw i32 %i.fb to i8
  %i.fd = or disjoint i8 %i.fc, -32
  store i8 %i.fd, ptr %i.c, align 4, !tbaa !15
  %i.fe = lshr i32 %spec.store.select.i, 6
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = and i8 %i.ff, 63
  %i.fh = or disjoint i8 %i.fg, -128
  store i8 %i.fh, ptr %i.j, align 1, !tbaa !15
  %i.fi = trunc i32 %spec.store.select.i to i8
  %i.fj = and i8 %i.fi, 63
  %i.fk = or disjoint i8 %i.fj, -128
  store i8 %i.fk, ptr %i.k, align 2, !tbaa !15
  br label %unicode_to_utf8.exit

bb.ao:                                            ; preds = %bb.am
  %i.fl = lshr i32 %spec.store.select.i, 6
  %i.fm = lshr i32 %spec.store.select.i, 12
  %i.fn = lshr i32 %spec.store.select.i, 18
  %i.fo = trunc i32 %spec.store.select.i to i8
  %i.fp = trunc i32 %i.fl to i8
  %i.fq = trunc i32 %i.fm to i8
  %i.fr = trunc nsw i32 %i.fn to i8
  %i.fs = insertelement <4 x i8> poison, i8 %i.fr, i64 0
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fq, i64 1
  %i.fu = insertelement <4 x i8> %i.ft, i8 %i.fp, i64 2
  %i.fv = insertelement <4 x i8> %i.fu, i8 %i.fo, i64 3
  %i.fw = and <4 x i8> %i.fv, <i8 -1, i8 63, i8 63, i8 63>
  %i.fx = or disjoint <4 x i8> %i.fw, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.fx, ptr %i.c, align 4, !tbaa !15
  br label %unicode_to_utf8.exit

unicode_to_utf8.exit:                             ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %.031.i = phi ptr [ %i.j, %bb.aj ], [ %i.k, %bb.al ], [ %i.l, %bb.an ], [ %i.m, %bb.ao ]
  %i.fy = ptrtoint ptr %.031.i to i64
  %i.fz = sub i64 %i.fy, %i.n                     ; 3 uses
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !9
  %i.gb = add i64 %i.ga, 1
  %i.gc = add i64 %i.gb, %i.fz
  %i.gd = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.gc)
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.thread98, label %bb.ap

.thread98:                                        ; preds = %unicode_to_utf8.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %.thread92

bb.ap:                                            ; preds = %unicode_to_utf8.exit
  %i.gf = load ptr, ptr %0, align 8, !tbaa !14
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !9
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gg
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gh, ptr nonnull readonly align 4 %i.c, i64 %i.fz, i1 false)
  %i.gi = load i64, ptr %i.d, align 8, !tbaa !9
  %i.gj = add i64 %i.gi, %i.fz                    ; 2 uses
  store i64 %i.gj, ptr %i.d, align 8, !tbaa !9
  %i.gk = load ptr, ptr %0, align 8, !tbaa !14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 0, ptr %i.gl, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.gm = icmp eq i64 %i.ep, 0
  br i1 %i.gm, label %.thread92, label %.lr.ph.preheader

.thread92:                                        ; preds = %bb.aa, %bb.z, %bb.ap, %.preheader, %.thread98, %bb.a
  %.3 = phi i32 [ -1, %.thread98 ], [ -1, %bb.a ], [ 0, %.preheader ], [ %spec.select, %bb.ap ], [ -1, %bb.z ], [ %.042196, %bb.aa ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @best_effort_strncat_in_locale(ptr nofree noundef captures(address) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.__mbstate_t, align 8        ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp ne i64 %2, 0
  %i.e = load i8, ptr %1, align 1, !tbaa !15      ; 2 uses
  %i.f = icmp ne i8 %i.e, 0
  %i.g = and i1 %i.d, %i.f
  br i1 %i.g, label %.lr.ph, label %archive_string_append.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 36
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = add i64 %2, 1
  %i.m = add i64 %i.l, %i.k
  %i.n = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.m)
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %archive_string_append.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i.preheader

.thread:                                          ; preds = %bb.c
  %i.p = load i64, ptr %i.j, align 8, !tbaa !9
  %i.q = load ptr, ptr %0, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br label %invalid_mbs.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !14
  %i.t = load i64, ptr %i.j, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.v = load i64, ptr %i.j, align 8, !tbaa !9
  %i.w = add i64 %i.v, %2                         ; 2 uses
  store i64 %i.w, ptr %i.j, align 8, !tbaa !9
  %i.x = load ptr, ptr %0, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 0, ptr %4, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.01310.i = phi ptr [ %i.ab, %bb.e ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.0169.i = phi i64 [ %i.ac, %bb.e ], [ %2, %.lr.ph.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.z = call i64 @mbrtowc(ptr noundef nonnull %i.a, ptr noundef %.01310.i, i64 noundef %.0169.i, ptr noundef nonnull %4) #23 ; 4 uses
  %or.cond.i = icmp ugt i64 %i.z, -3
  br i1 %or.cond.i, label %.loopexit.sink.split.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.01310.i, i64 %i.z
  %i.ac = sub i64 %.0169.i, %i.z                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i23 = icmp eq i64 %i.ac, 0
  br i1 %.not.i23, label %invalid_mbs.exit, label %.lr.ph.i

.loopexit.sink.split.i:                           ; preds = %bb.d, %.lr.ph.i
  %.2.ph.i = phi i32 [ -1, %.lr.ph.i ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %invalid_mbs.exit

invalid_mbs.exit:                                 ; preds = %bb.e, %.thread, %.loopexit.sink.split.i
  %.2.i = phi i32 [ 0, %.thread ], [ %.2.ph.i, %.loopexit.sink.split.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %archive_string_append.exit.thread

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.ad = phi i8 [ %i.e, %.lr.ph ], [ %i.bg, %bb.n ] ; 2 uses
  %.033 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ]
  %.01932 = phi ptr [ %1, %.lr.ph ], [ %i.bf, %bb.n ]
  %i.ae = icmp slt i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.i, align 4, !tbaa !43
  %i.ag = and i32 %i.af, 256
  %.not22 = icmp eq i32 %i.ag, 0
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !9   ; 2 uses
  br i1 %.not22, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add i64 %i.ah, 4
  %i.aj = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.ai)
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %archive_string_append.exit25

archive_string_append.exit25:                     ; preds = %bb.h
  %i.al = load ptr, ptr %0, align 8, !tbaa !14
  %i.am = load i64, ptr %i.h, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) @utf8_replacement_char, i64 3, i1 false)
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  tail call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str) #22
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ao = add i64 %i.ah, 2
  %i.ap = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.ao)
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %archive_strappend_char.exit

bb.k:                                             ; preds = %bb.j
  tail call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str) #22
  unreachable

archive_strappend_char.exit:                      ; preds = %bb.j
  %i.ar = load ptr, ptr %0, align 8, !tbaa !14
  %i.as = load i64, ptr %i.h, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 63, ptr %i.at, align 1
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.au = load i64, ptr %i.h, align 8, !tbaa !9
  %i.av = add i64 %i.au, 2
  %i.aw = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.av)
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.m, label %archive_strappend_char.exit26

bb.m:                                             ; preds = %bb.l
  tail call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str) #22
  unreachable

archive_strappend_char.exit26:                    ; preds = %bb.l
  %i.ay = load ptr, ptr %0, align 8, !tbaa !14
  %i.az = load i64, ptr %i.h, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  store i8 %i.ad, ptr %i.ba, align 1
  br label %bb.n

bb.n:                                             ; preds = %archive_string_append.exit25, %archive_strappend_char.exit, %archive_strappend_char.exit26
  %.sink44 = phi i64 [ 3, %archive_string_append.exit25 ], [ 1, %archive_strappend_char.exit ], [ 1, %archive_strappend_char.exit26 ]
  %.1 = phi i32 [ -1, %archive_string_append.exit25 ], [ -1, %archive_strappend_char.exit ], [ %.033, %archive_strappend_char.exit26 ] ; 2 uses
  %i.bb = load i64, ptr %i.h, align 8, !tbaa !9
  %i.bc = add i64 %i.bb, %.sink44                 ; 2 uses
  store i64 %i.bc, ptr %i.h, align 8, !tbaa !9
  %i.bd = load ptr, ptr %0, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.01932, i64 1 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15  ; 2 uses
  %.not40 = icmp eq i8 %i.bg, 0
  br i1 %.not40, label %archive_string_append.exit.thread, label %bb.f, !llvm.loop !138

archive_string_append.exit.thread:                ; preds = %bb.n, %.preheader, %bb.b, %invalid_mbs.exit
  %.020 = phi i32 [ -1, %bb.b ], [ %.2.i, %invalid_mbs.exit ], [ 0, %.preheader ], [ %.1, %bb.n ]
  ret i32 %.020
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @_utf8_to_unicode(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !15      ; 6 uses
  %i.c = zext i8 %i.b to i32                      ; 4 uses
  %i.d = icmp eq i8 %i.b, 0
  br i1 %i.d, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i8 %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_utf8_to_unicode.utf8_count, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 3 uses
  %i.h = sext i8 %i.g to i32
  %i.i = sext i8 %i.g to i64
  %i.j = icmp ult i64 %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %2 to i32                      ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %bb.d
  %wide.trip.count105 = and i64 %2, 2147483647
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.e
  %indvars.iv102 = phi i64 [ 1, %.lr.ph95.preheader ], [ %indvars.iv.next103, %bb.e ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv102
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %.not84 = icmp slt i8 %i.n, -64
  br i1 %.not84, label %bb.e, label %.loopexit.loopexit.split.loop.exit

bb.e:                                             ; preds = %.lr.ph95
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.lr.ph95, !llvm.loop !137

bb.f:                                             ; preds = %bb.c
  switch i8 %i.g, label %bb.q [
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.j
    i8 4, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = and i32 %i.c, 127
  store i32 %i.o, ptr %0, align 4, !tbaa !20
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %.not82 = icmp eq i32 %i.s, 128
  br i1 %.not82, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.t = shl nuw nsw i32 %i.c, 6
  %i.u = and i32 %i.t, 1984
  %i.v = and i32 %i.r, 63
  %i.w = or disjoint i32 %i.v, %i.u
  store i32 %i.w, ptr %0, align 4, !tbaa !20
  br label %bb.aa

bb.j:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !15
  %i.z = sext i8 %i.y to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 192
  %.not80 = icmp eq i32 %i.aa, 128
  br i1 %.not80, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 192
  %.not81 = icmp eq i32 %i.ae, 128
  br i1 %.not81, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.af = shl nuw nsw i32 %i.c, 12
  %i.ag = and i32 %i.af, 61440
  %i.ah = shl nsw i32 %i.z, 6
  %i.ai = and i32 %i.ah, 4032
  %i.aj = or disjoint i32 %i.ai, %i.ag            ; 2 uses
  %i.ak = and i32 %i.ad, 63
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = icmp samesign ult i32 %i.aj, 2048
  br i1 %i.am, label %.loopexit, label %.thread

bb.m:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = sext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not = icmp eq i32 %i.aq, 128
  br i1 %.not, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = sext i8 %i.as to i32                    ; 2 uses
  %i.au = and i32 %i.at, 192
  %.not78 = icmp eq i32 %i.au, 128
  br i1 %.not78, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 192
  %.not79 = icmp eq i32 %i.ay, 128
  br i1 %.not79, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.az = shl nuw nsw i32 %i.c, 18
  %i.ba = and i32 %i.az, 1835008
  %i.bb = shl nsw i32 %i.ap, 12
  %i.bc = and i32 %i.bb, 258048
  %i.bd = or disjoint i32 %i.bc, %i.ba            ; 2 uses
  %i.be = shl nsw i32 %i.at, 6
  %i.bf = and i32 %i.be, 4032
  %i.bg = and i32 %i.ax, 63
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd
  %i.bj = add nsw i32 %i.bd, -1114112
  %or.cond87 = icmp ult i32 %i.bj, -1048576
  br i1 %or.cond87, label %.loopexit, label %.thread

bb.q:                                             ; preds = %bb.f
  %i.bk = and i8 %i.b, -2                         ; 2 uses
  %or.cond = icmp eq i8 %i.bk, -64
  br i1 %or.cond, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = add i8 %i.b, 11
  %or.cond3 = icmp ult i8 %i.bl, 3
  br i1 %or.cond3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = and i8 %i.b, -4
  %or.cond5 = icmp eq i8 %i.bm, -8
  br i1 %or.cond5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %or.cond7 = icmp eq i8 %i.bk, -4
  %i.bn = select i1 %or.cond7, i64 6, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.066 = phi i64 [ 5, %bb.s ], [ 2, %bb.q ], [ 4, %bb.r ], [ %i.bn, %bb.t ]
  %spec.select88 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.066) ; 7 uses
  %spec.select = trunc nuw nsw i64 %spec.select88 to i32
  %i.bo = icmp samesign ugt i64 %spec.select88, 1
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !15
  %.not83 = icmp slt i8 %i.bq, -64
  br i1 %.not83, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %spec.select88, 2
  br i1 %exitcond.not, label %.loopexit.loopexit120, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !15
  %.not83.1 = icmp slt i8 %i.bs, -64
  br i1 %.not83.1, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.lr.ph.1
  %exitcond.not.1 = icmp eq i64 %spec.select88, 3
  br i1 %exitcond.not.1, label %.loopexit.loopexit120, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15
  %.not83.2 = icmp slt i8 %i.bu, -64
  br i1 %.not83.2, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.lr.ph.2
  %exitcond.not.2 = icmp eq i64 %spec.select88, 4
  br i1 %exitcond.not.2, label %.loopexit.loopexit120, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !15
  %.not83.3 = icmp slt i8 %i.bw, -64
  br i1 %.not83.3, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph.3
  %exitcond.not.3 = icmp eq i64 %spec.select88, 5
  br i1 %exitcond.not.3, label %.loopexit.loopexit120, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !15
  %.not83.4 = icmp slt i8 %i.by, -64
  br i1 %.not83.4, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.lr.ph.4
  %exitcond.not.4 = icmp eq i64 %spec.select88, 6
  br i1 %exitcond.not.4, label %.loopexit.loopexit120, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !15
  %.not83.5 = icmp slt i8 %i.ca, -64
  br i1 %.not83.5, label %.loopexit.loopexit120, label %.loopexit

.thread:                                          ; preds = %bb.p, %bb.l
  %.086 = phi i32 [ %i.bi, %bb.p ], [ %i.al, %bb.l ]
  store i32 %.086, ptr %0, align 4, !tbaa !20
  br label %bb.aa

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph95
  %i.cb = trunc nuw nsw i64 %indvars.iv102 to i32
  br label %.loopexit

.loopexit.loopexit120:                            ; preds = %.lr.ph.5, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.loopexit.loopexit120, %.loopexit.loopexit.split.loop.exit, %bb.u, %bb.d, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.p, %bb.l
  %.2 = phi i32 [ 4, %bb.p ], [ 1, %bb.m ], [ 3, %bb.o ], [ 2, %bb.k ], [ 2, %bb.n ], [ 1, %bb.h ], [ 1, %bb.j ], [ 3, %bb.l ], [ 1, %bb.u ], [ 6, %.lr.ph.5 ], [ %i.k, %bb.d ], [ %i.cb, %.loopexit.loopexit.split.loop.exit ], [ %spec.select, %.loopexit.loopexit120 ], [ 1, %.lr.ph ], [ 2, %.lr.ph.1 ], [ 3, %.lr.ph.2 ], [ 4, %.lr.ph.3 ], [ 5, %.lr.ph.4 ], [ %i.k, %bb.e ]
  store i32 65533, ptr %0, align 4, !tbaa !20
  %i.cc = sub nsw i32 0, %.2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %bb.a, %.loopexit, %.thread, %bb.i, %bb.g
  %.069 = phi i32 [ %i.h, %.thread ], [ 0, %bb.a ], [ %i.cc, %.loopexit ], [ 1, %bb.g ], [ 2, %bb.i ], [ 0, %bb.b ]
  ret i32 %.069
end_hunk_1
begin_hunk_2_@cesu8_to_unicode:bb.a
  br i1 %or.cond11, label %.thread34, label %bb.f

.thread34:                                        ; preds = %bb.e
  store i32 65533, ptr %0, align 4, !tbaa !20
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = phi i32 [ %i.r, %bb.d ], [ %i.e, %bb.e ]
  %.1 = phi i32 [ 6, %bb.d ], [ %i.c, %bb.e ]
  store i32 %i.t, ptr %0, align 4, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  store i32 65533, ptr %0, align 4, !tbaa !20
  %i.u = tail call i32 @llvm.abs.i32(i32 %.fr, i1 false)
  %spec.select = sub i32 0, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread37, %.thread34, %bb.f
  %.027 = phi i32 [ %.1, %bb.f ], [ %spec.select, %bb.g ], [ -3, %.thread34 ], [ -3, %.thread37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.027
}

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !13, i64 8}
!10 = !{!"archive_string", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !11, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"archive_wstring", !18, i64 0, !13, i64 8, !13, i64 16}
!18 = !{!"p1 int", !12, i64 0}
!19 = !{!17, !13, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{!10, !13, i64 16}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = !{!28, !11, i64 72}
!28 = !{!"archive", !6, i64 0, !6, i64 4, !29, i64 8, !6, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !11, i64 40, !10, i64 48, !11, i64 72, !6, i64 80, !6, i64 84, !30, i64 88, !11, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !7, i64 128, !13, i64 136}
!29 = !{!"p1 _ZTS14archive_vtable", !12, i64 0}
!30 = !{!"p1 _ZTS19archive_string_conv", !12, i64 0}
!31 = !{!28, !6, i64 80}
!32 = !{!28, !6, i64 84}
!33 = !{!30, !30, i64 0}
!34 = !{!35, !11, i64 8}
!35 = !{!"archive_string_conv", !30, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !12, i64 40, !12, i64 48, !10, i64 56, !7, i64 80, !6, i64 96}
!36 = !{!35, !11, i64 16}
!37 = distinct !{!37, !23}
!38 = !{!35, !6, i64 24}
!39 = !{!35, !6, i64 28}
!40 = !{!35, !6, i64 32}
!41 = !{!35, !12, i64 48}
!42 = !{!35, !12, i64 40}
!43 = !{!35, !6, i64 36}
!44 = !{!35, !6, i64 96}
!45 = distinct !{!45, !23}
!46 = !{!28, !30, i64 88}
!47 = !{!35, !30, i64 0}
!48 = distinct !{!48, !23}
!49 = !{!11, !11, i64 0}
!50 = !{!12, !12, i64 0}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = !{!35, !13, i64 64}
!54 = !{!35, !11, i64 56}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = !{!59, !6, i64 96}
!59 = !{!"archive_mstring", !10, i64 0, !10, i64 24, !17, i64 48, !10, i64 72, !6, i64 96}
!60 = !{!59, !13, i64 8}
!61 = !{!59, !13, i64 32}
!62 = !{!59, !13, i64 56}
!63 = !{!59, !11, i64 0}
!64 = !{!59, !11, i64 24}
!65 = !{!59, !18, i64 48}
!66 = !{!18, !18, i64 0}
!67 = !{!59, !11, i64 72}
!68 = !{!59, !13, i64 80}
!69 = !{!13, !13, i64 0}
!70 = distinct !{!70, !23}
!71 = distinct !{!71, !23}
!72 = !{ptr @cesu8_to_unicode, ptr @utf16be_to_unicode, ptr @utf16le_to_unicode}
!73 = !{ptr @unicode_to_utf16be, ptr @unicode_to_utf16le, ptr @unicode_to_utf8}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = !{!77}
!77 = distinct !{!77, !78}
!78 = distinct !{!78, !"LVerDomain"}
!79 = !{!80}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !23, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !23, !82}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !23, !82, !83}
!91 = distinct !{!91, !23, !82}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23}
!94 = distinct !{!94, !23}
!95 = distinct !{!95, !23}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = !{!99, !6, i64 0}
!99 = !{!"unicode_decomposition_table", !6, i64 0, !6, i64 4, !6, i64 8}
!100 = distinct !{!100, !23}
!101 = !{!99, !6, i64 4}
!102 = !{!99, !6, i64 8}
!103 = !{!104, !6, i64 4}
!104 = !{!"", !6, i64 0, !6, i64 4}
!105 = !{!104, !6, i64 0}
!106 = distinct !{!106, !23}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = distinct !{!109, !23}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = distinct !{!116, !23}
!117 = distinct !{!117, !23}
!118 = !{!119, !6, i64 0}
!119 = !{!"unicode_composition_table", !6, i64 0, !6, i64 4, !6, i64 8}
!120 = !{!119, !6, i64 4}
!121 = distinct !{!121, !23}
!122 = !{!119, !6, i64 8}
!123 = distinct !{!123, !23}
!124 = distinct !{!124, !23}
!125 = distinct !{!125, !23}
!126 = distinct !{!126, !23}
!127 = distinct !{!127, !23}
!128 = distinct !{!128, !23}
!129 = distinct !{!129, !23}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
!135 = distinct !{!135, !23}
!136 = distinct !{!136, !23}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23}
end_hunk_2
