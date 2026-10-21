Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_string?download=true
inline.NumInlined: 115
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@archive_string_normalize_D:bb.a
  br i1 %i.nk, label %.thread516, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nl = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.nm = load i64, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm ; 3 uses
  %i.no = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.np = sub nsw i64 %i.no, %.0402               ; 2 uses
  %i.nq = ptrtoint ptr %i.nn to i64
  %gepdiff781 = sub nsw i64 %i.np, %i.nm
  %i.nr = load i32, ptr %i.a, align 4, !tbaa !25
  %i.ns = call i64 %.0399(ptr noundef %i.nn, i64 noundef %gepdiff781, i32 noundef %i.nr) #23, !callees !54 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %bb.bc, label %._crit_edge710.loopexit, !llvm.loop !104

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
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !113 ; 2 uses
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !25
  %i.oa = ptrtoint ptr %.19428721 to i64
  %i.ob = ptrtoint ptr %.39720 to i64             ; 2 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = call i64 %.0399(ptr noundef %.39720, i64 noundef %i.oc, i32 noundef %i.nz) #23, !callees !54 ; 2 uses
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %bb.bf, %archive_string_ensure.exit
  %i.of = phi i64 [ %i.oz, %archive_string_ensure.exit ], [ %i.ob, %bb.bf ]
  %i.og = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.of, %i.oh                    ; 2 uses
  store i64 %i.oi, ptr %i.q, align 8, !tbaa !18
  %i.oj = load i64, ptr %i.aa, align 8, !tbaa !26 ; 9 uses
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
  %i.ot = load ptr, ptr %0, align 8, !tbaa !19
  br label %.thread516.sink.split

bb.bm:                                            ; preds = %bb.bk
  store ptr %i.or, ptr %0, align 8, !tbaa !19
  store i64 %spec.select.i, ptr %i.aa, align 8, !tbaa !26
  %.pre945 = load i64, ptr %i.q, align 8, !tbaa !18
  br label %archive_string_ensure.exit

archive_string_ensure.exit:                       ; preds = %bb.bm, %.lr.ph715
  %i.ou = phi i64 [ %spec.select.i, %bb.bm ], [ %i.oj, %.lr.ph715 ]
  %i.ov = phi i64 [ %.pre945, %bb.bm ], [ %i.oi, %.lr.ph715 ] ; 2 uses
  %i.ow = phi ptr [ %i.or, %bb.bm ], [ %i.og, %.lr.ph715 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov ; 3 uses
  %i.oy = sub nsw i64 %i.ou, %.0402               ; 2 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %gepdiff783 = sub nsw i64 %i.oy, %i.ov
  %i.pa = load i32, ptr %i.a, align 4, !tbaa !25
  %i.pb = call i64 %.0399(ptr noundef %i.ox, i64 noundef %gepdiff783, i32 noundef %i.pa) #23, !callees !54 ; 2 uses
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %.lr.ph715, label %._crit_edge716.loopexit, !llvm.loop !105

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
  br i1 %exitcond944.not, label %._crit_edge725, label %bb.bf, !llvm.loop !106

._crit_edge725:                                   ; preds = %._crit_edge716, %bb.be
  %.39.lcssa = phi ptr [ %.38, %bb.be ], [ %i.pe, %._crit_edge716 ] ; 3 uses
  %.19428.lcssa = phi ptr [ %.18427, %bb.be ], [ %.21.lcssa, %._crit_edge716 ] ; 2 uses
  %i.pf = icmp eq i32 %.lcssa553, 0
  br i1 %i.pf, label %.thread523, label %bb.bn

.thread523:                                       ; preds = %._crit_edge725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.bn:                                            ; preds = %._crit_edge725
  %i.pg = load i32, ptr %i.b, align 4, !tbaa !25  ; 3 uses
  store i32 %i.pg, ptr %i.a, align 4, !tbaa !25
  %i.ph = icmp slt i32 %.lcssa553, 0
  br i1 %i.ph, label %.preheader540, label %.lr.ph736

.thread516.sink.split:                            ; preds = %bb.bl, %bb.bj
  %.lcssa1011.sink = phi ptr [ %i.og, %bb.bj ], [ %i.ot, %bb.bl ]
  call void @free(ptr noundef %.lcssa1011.sink) #23
  store ptr null, ptr %0, align 8, !tbaa !19
  %i.pi = tail call ptr @__errno_location() #24
  store i32 12, ptr %i.pi, align 4, !tbaa !25
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
  %i.pj = call i32 %.0400(ptr noundef nonnull %i.a, ptr noundef %.3456, i64 noundef %.3464) #23, !callees !53 ; 2 uses
  %.not491 = icmp eq i32 %i.pj, 0
  br i1 %.not491, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %bb.bo, %bb.m, %.thread523
  %.0404671 = phi i32 [ %.0404775, %.thread523 ], [ 0, %bb.m ], [ %.1405, %bb.bo ] ; 2 uses
  %.48 = phi ptr [ %.39.lcssa, %.thread523 ], [ %i.z, %bb.m ], [ %.47, %bb.bo ]
  %i.pk = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.pl = ptrtoint ptr %.48 to i64
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = sub i64 %i.pl, %i.pm                    ; 2 uses
  store i64 %i.pn, ptr %i.q, align 8, !tbaa !18
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pn
  store i8 0, ptr %i.po, align 1, !tbaa !20
  br i1 %i.n, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.loopexit
  %i.pp = load ptr, ptr %0, align 8, !tbaa !19
  %i.pq = load i64, ptr %i.q, align 8, !tbaa !18
  %i.pr = getelementptr i8, ptr %i.pp, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 1
  store i8 0, ptr %i.ps, align 1, !tbaa !20
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 10 uses
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
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = mul i64 %.0626, %2
  %i.v = add i64 %i.u, %.0627
  %i.w = add i64 %i.v, %i.t
  %i.x = tail call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.w)
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.thread850, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ae = sub nsw i64 0, %.0627                   ; 7 uses
  %i.af = call i32 %.0625(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) #23, !callees !53 ; 2 uses
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
  %i.ba = phi i32 [ %i.amo, %bb.fz ], [ %i.af, %.lr.ph1212.preheader ] ; 6 uses
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
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !25
  %i.bg = call i64 %.0624(ptr noundef %.06801208, i64 noundef %i.be, i32 noundef %i.bf) #23, !callees !54 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph1200, label %._crit_edge1201

.lr.ph1200:                                       ; preds = %.preheader875
  %i.bi = mul i64 %.07371206, %.0626
  %i.bj = add i64 %i.bi, %.0627
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1200, %bb.o
  %i.bk = phi i64 [ %i.bd, %.lr.ph1200 ], [ %i.bx, %bb.o ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bk, %i.bm
  store i64 %i.bn, ptr %i.s, align 8, !tbaa !18
  %i.bo = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.bp = add i64 %i.bj, %i.bo
  %i.bq = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.bp)
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.thread850, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt ; 3 uses
  %i.bv = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.bw = sub nsw i64 %i.bv, %.0627               ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %gepdiff1228 = sub nsw i64 %i.bw, %i.bt
  %i.by = load i32, ptr %i.a, align 4, !tbaa !25
  %i.bz = call i64 %.0624(ptr noundef %i.bu, i64 noundef %gepdiff1228, i32 noundef %i.by) #23, !callees !54 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %._crit_edge1201.loopexit, !llvm.loop !114

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
  br label %bb.fz, !llvm.loop !115

bb.p:                                             ; preds = %.lr.ph1212
  %i.ch = icmp eq i32 %i.ba, %.0628
  %or.cond = or i1 %i.o, %i.ch
  %..0717 = select i1 %or.cond, ptr null, ptr %.07171207 ; 2 uses
  %i.ci = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07171207, i64 %i.ci ; 3 uses
  %i.ck = sub i64 %.07371206, %i.ci               ; 3 uses
  %i.cl = call i32 %.0625(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cj, i64 noundef %i.ck) #23, !callees !53 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph1088, label %.loopexit

.lr.ph1088:                                       ; preds = %bb.p, %bb.ez
  %i.cn = phi i32 [ %i.agz, %bb.ez ], [ %i.cl, %bb.p ] ; 6 uses
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
end_hunk_0
begin_hunk_1_@archive_string_normalize_C:bb.a
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !20
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.su
  %i.sw = and i32 %i.sh, 15
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !20
  %i.ta = zext i8 %i.sz to i32
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
  store i32 %i.tb, ptr %i.ar, align 4, !tbaa !25
  %i.th = call i32 %.0625(ptr noundef nonnull %i.as, ptr noundef nonnull %i.tf, i64 noundef %i.tg) #23, !callees !53 ; 4 uses
  %i.ti = icmp slt i32 %i.th, 1
  br i1 %i.ti, label %.lr.ph1142.preheader, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tj = load i32, ptr %i.as, align 8, !tbaa !25 ; 4 uses
  %i.tk = icmp ugt i32 %i.tj, 119364
  br i1 %i.tk, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tl = lshr i32 %i.tj, 8
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !20
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.tp
  %i.tr = lshr i32 %i.tj, 4
  %i.ts = and i32 %i.tr, 15
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !20
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.tw
  %i.ty = and i32 %i.tj, 15
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !20
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
  store i32 %i.ud, ptr %i.at, align 8, !tbaa !25
  %i.uj = call i32 %.0625(ptr noundef nonnull %i.au, ptr noundef nonnull %i.uh, i64 noundef %i.ui) #23, !callees !53 ; 4 uses
  %i.uk = icmp slt i32 %i.uj, 1
  br i1 %i.uk, label %.lr.ph1142.preheader, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ul = load i32, ptr %i.au, align 4, !tbaa !25 ; 4 uses
  %i.um = icmp ugt i32 %i.ul, 119364
  br i1 %i.um, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.un = lshr i32 %i.ul, 8
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !20
  %i.ur = zext i8 %i.uq to i64
  %i.us = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.ur
  %i.ut = lshr i32 %i.ul, 4
  %i.uu = and i32 %i.ut, 15
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !20
  %i.uy = zext i8 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.uy
  %i.va = and i32 %i.ul, 15
  %i.vb = zext nneg i32 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !20
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
  store i32 %i.vf, ptr %i.av, align 4, !tbaa !25
  %i.vl = call i32 %.0625(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.vj, i64 noundef %i.vk) #23, !callees !53 ; 4 uses
  %i.vm = icmp slt i32 %i.vl, 1
  br i1 %i.vm, label %.lr.ph1142.preheader, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vn = load i32, ptr %i.aw, align 16, !tbaa !25 ; 4 uses
  %i.vo = icmp ugt i32 %i.vn, 119364
  br i1 %i.vo, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.vp = lshr i32 %i.vn, 8
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !20
  %i.vt = zext i8 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.vt
  %i.vv = lshr i32 %i.vn, 4
  %i.vw = and i32 %i.vv, 15
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !20
  %i.wa = zext i8 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.wa
  %i.wc = and i32 %i.vn, 15
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !20
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
  store i32 %i.wh, ptr %i.ax, align 16, !tbaa !25
  %i.wn = call i32 %.0625(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.wl, i64 noundef %i.wm) #23, !callees !53 ; 5 uses
  %i.wo = icmp slt i32 %i.wn, 1
  br i1 %i.wo, label %.lr.ph1142.preheader, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wp = load i32, ptr %i.ay, align 4, !tbaa !25 ; 4 uses
  %i.wq = icmp ugt i32 %i.wp, 119364
  br i1 %i.wq, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wr = lshr i32 %i.wp, 8
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !20
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.wv
  %i.wx = lshr i32 %i.wp, 4
  %i.wy = and i32 %i.wx, 15
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !20
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.xc
  %i.xe = and i32 %i.wp, 15
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !20
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
  store i32 %i.xj, ptr %i.az, align 4, !tbaa !25
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
  %4 = load i32, ptr %i.a, align 4, !tbaa !25     ; 2 uses
  %i.xq = sext i32 %.05961138 to i64              ; 3 uses
  %i.xr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xq
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !25 ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ea, %.lr.ph1142
  %.01935.i814 = phi i32 [ 930, %.lr.ph1142 ], [ %.2.i819, %bb.ea ] ; 3 uses
  %.02034.i815 = phi i32 [ 0, %.lr.ph1142 ], [ %.222.i818, %bb.ea ] ; 3 uses
  %i.xt = add nuw nsw i32 %.02034.i815, %.01935.i814
  %i.xu = lshr i32 %i.xt, 1                       ; 5 uses
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw [12 x i8], ptr @u_composition_table, i64 %i.xv ; 3 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !134 ; 2 uses
  %i.xy = icmp ult i32 %i.xx, %4
  br i1 %i.xy, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.xz = add nuw nsw i32 %i.xu, 1
  br label %bb.ea

bb.du:                                            ; preds = %bb.ds
  %i.ya = icmp ugt i32 %i.xx, %4
  br i1 %i.ya, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.yb = add nsw i32 %i.xu, -1
  br label %bb.ea

bb.dw:                                            ; preds = %bb.du
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !135 ; 2 uses
  %i.ye = icmp ult i32 %i.yd, %i.xs
  br i1 %i.ye, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.yf = add nuw nsw i32 %i.xu, 1
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dw
  %i.yg = icmp ugt i32 %i.yd, %i.xs
  br i1 %i.yg, label %bb.dz, label %get_nfc.exit821

bb.dz:                                            ; preds = %bb.dy
  %i.yh = add nsw i32 %i.xu, -1
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dx, %bb.dv, %bb.dt
  %.222.i818 = phi i32 [ %.02034.i815, %bb.dz ], [ %i.xz, %bb.dt ], [ %.02034.i815, %bb.dv ], [ %i.yf, %bb.dx ] ; 2 uses
  %.2.i819 = phi i32 [ %i.yh, %bb.dz ], [ %.01935.i814, %bb.dt ], [ %i.yb, %bb.dv ], [ %.01935.i814, %bb.dx ] ; 2 uses
  %.not.i820 = icmp slt i32 %.2.i819, %.222.i818
  br i1 %.not.i820, label %get_nfc.exit821.thread, label %bb.ds, !llvm.loop !120

get_nfc.exit821.thread:                           ; preds = %bb.ea
  %i.yi = add nsw i32 %.05961138, 1
  br label %bb.eg, !llvm.loop !122

get_nfc.exit821:                                  ; preds = %bb.dy
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !136
  store i32 %i.yk, ptr %i.a, align 4, !tbaa !25
  %i.yl = add nsw i32 %.05961138, 1               ; 2 uses
  %i.ym = icmp slt i32 %i.yl, %.11140
  br i1 %i.ym, label %.lr.ph1102.preheader, label %._crit_edge1103

.lr.ph1102.preheader:                             ; preds = %get_nfc.exit821
  %i.yn = sext i32 %i.yl to i64                   ; 5 uses
  %i.yo = sext i32 %.05961138 to i64              ; 3 uses
  %i.yp = add i32 %.11140, -2
  %i.yq = sub i32 %.05961138, %.11140
  %i.yr = and i32 %i.yq, 1
  %lcmp.mod.not.not = icmp eq i32 %i.yr, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph1102.prol, label %.lr.ph1102.prol.loopexit

.lr.ph1102.prol:                                  ; preds = %.lr.ph1102.preheader
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.yn
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !25
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.yo
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !25
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.yn
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !25
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.yo
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !25
  %indvars.iv.next.prol = add nsw i64 %i.yn, 1
  br label %.lr.ph1102.prol.loopexit

.lr.ph1102.prol.loopexit:                         ; preds = %.lr.ph1102.prol, %.lr.ph1102.preheader
  %indvars.iv.unr = phi i64 [ %i.yn, %.lr.ph1102.preheader ], [ %indvars.iv.next.prol, %.lr.ph1102.prol ]
  %.05881101.unr = phi i64 [ %i.yo, %.lr.ph1102.preheader ], [ %i.yn, %.lr.ph1102.prol ]
  %i.yy = icmp eq i32 %i.yp, %.05961138
  br i1 %i.yy, label %._crit_edge1103, label %.lr.ph1102

.lr.ph1102:                                       ; preds = %.lr.ph1102.prol.loopexit, %.lr.ph1102
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph1102 ], [ %indvars.iv.unr, %.lr.ph1102.prol.loopexit ] ; 6 uses
  %.05881101 = phi i64 [ %indvars.iv.next, %.lr.ph1102 ], [ %.05881101.unr, %.lr.ph1102.prol.loopexit ] ; 2 uses
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !25
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.05881101
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !25
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !25
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.d, i64 %.05881101
  store i32 %i.zd, ptr %i.ze, align 4, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !25
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.zg, ptr %i.zh, align 4, !tbaa !25
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !25
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.zj, ptr %i.zk, align 4, !tbaa !25
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %.11140, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge1103, label %.lr.ph1102, !llvm.loop !123

._crit_edge1103:                                  ; preds = %.lr.ph1102.prol.loopexit, %.lr.ph1102, %get_nfc.exit821
  %i.zl = add i32 %.11140, -1                     ; 3 uses
  %i.zm = icmp sgt i32 %.11140, 1
  br i1 %i.zm, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %._crit_edge1103
  %i.zn = icmp eq i32 %.05961138, %i.zl
  %i.zo = icmp sgt i32 %.25931139, 0
  %or.cond17 = select i1 %i.zn, i1 %i.zo, i1 false
  %i.zp = icmp eq i32 %.26011137, %.16071136
  %or.cond812 = select i1 %or.cond17, i1 %i.zp, i1 false
  br i1 %or.cond812, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %bb.eb
  %i.zq = zext nneg i32 %.11140 to i64
  %i.zr = getelementptr [4 x i8], ptr %i.d, i64 %i.zq
  %i.zs = getelementptr i8, ptr %i.zr, i64 -8
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !25 ; 3 uses
  %i.zu = icmp samesign ult i32 %.11140, 11
  br i1 %i.zu, label %.lr.ph1110.preheader, label %._crit_edge1111

.lr.ph1110.preheader:                             ; preds = %bb.ec
  %i.zv = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xq ; 2 uses
  %i.zw = call i32 %.0625(ptr noundef nonnull %i.zv, ptr noundef %.37201133, i64 noundef %.37401132) #23, !callees !53 ; 3 uses
  %i.zx = icmp slt i32 %i.zw, 1
  br i1 %i.zx, label %._crit_edge1111, label %.lr.ph1903

.lr.ph1110:                                       ; preds = %bb.ef
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next1365 ; 2 uses
  %i.zz = call i32 %.0625(ptr noundef nonnull %i.zy, ptr noundef nonnull %i.abc, i64 noundef %i.abd) #23, !callees !53 ; 3 uses
  %i.aaa = icmp slt i32 %i.zz, 1
  br i1 %i.aaa, label %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge, label %.lr.ph1903, !llvm.loop !124

.lr.ph1903:                                       ; preds = %.lr.ph1110.preheader, %.lr.ph1110
  %i.aab = phi i32 [ %i.zz, %.lr.ph1110 ], [ %i.zw, %.lr.ph1110.preheader ] ; 3 uses
  %i.aac = phi ptr [ %i.zy, %.lr.ph1110 ], [ %i.zv, %.lr.ph1110.preheader ]
  %.474111041902 = phi i64 [ %i.abd, %.lr.ph1110 ], [ %.37401132, %.lr.ph1110.preheader ] ; 2 uses
  %.472111051901 = phi ptr [ %i.abc, %.lr.ph1110 ], [ %.37201133, %.lr.ph1110.preheader ] ; 2 uses
  %.260811061900 = phi i32 [ %i.aax, %.lr.ph1110 ], [ %i.zt, %.lr.ph1110.preheader ] ; 3 uses
  %indvars.iv13641899 = phi i64 [ %indvars.iv.next1365, %.lr.ph1110 ], [ %i.xq, %.lr.ph1110.preheader ] ; 3 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !25 ; 4 uses
  %i.aae = icmp ugt i32 %i.aad, 119364
  br i1 %i.aae, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph1903
  %i.aaf = lshr i32 %i.aad, 8
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !20
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.aaj
  %i.aal = lshr i32 %i.aad, 4
  %i.aam = and i32 %i.aal, 15
  %i.aan = zext nneg i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !20
  %i.aaq = zext i8 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.aaq
  %i.aas = and i32 %i.aad, 15
  %i.aat = zext nneg i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aat
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !20
  %i.aaw = zext i8 %i.aav to i32
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph1903, %bb.ed
  %i.aax = phi i32 [ %i.aaw, %bb.ed ], [ 0, %.lr.ph1903 ] ; 9 uses
  %i.aay = icmp sge i32 %.260811061900, %i.aax
  %i.aaz = icmp ne i32 %.260811061900, 228
  %or.cond19 = and i1 %i.aaz, %i.aay
  %i.aba = icmp ne i32 %i.aax, 228
  %or.cond21 = and i1 %i.aba, %or.cond19
  br i1 %or.cond21, label %._crit_edge1111.loopexit.split.loop.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.abb = zext nneg i32 %i.aab to i64            ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.472111051901, i64 %i.abb ; 4 uses
  %i.abd = sub i64 %.474111041902, %i.abb         ; 4 uses
  %i.abe = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv13641899
  store i32 %i.aax, ptr %i.abe, align 4, !tbaa !25
  %indvars.iv.next1365 = add nsw i64 %indvars.iv13641899, 1 ; 4 uses
  %exitcond1367.not = icmp eq i64 %indvars.iv.next1365, 10
  br i1 %exitcond1367.not, label %._crit_edge1111, label %.lr.ph1110, !llvm.loop !124

._crit_edge1111.loopexit.split.loop.exit:         ; preds = %bb.ee
  %i.abf = trunc nsw i64 %indvars.iv13641899 to i32
  br label %._crit_edge1111

.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge: ; preds = %.lr.ph1110
  %i.abg = trunc nsw i64 %indvars.iv.next1365 to i32
  br label %._crit_edge1111

._crit_edge1111:                                  ; preds = %bb.ef, %.lr.ph1110.preheader, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge, %._crit_edge1111.loopexit.split.loop.exit, %bb.ec
  %.4741.lcssa = phi i64 [ %.37401132, %bb.ec ], [ %.37401132, %.lr.ph1110.preheader ], [ %.474111041902, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abd, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.abd, %bb.ef ]
  %.4721.lcssa = phi ptr [ %.37201133, %bb.ec ], [ %.37201133, %.lr.ph1110.preheader ], [ %.472111051901, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abc, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.abc, %bb.ef ]
  %.2608.lcssa = phi i32 [ %i.zt, %bb.ec ], [ %i.zt, %.lr.ph1110.preheader ], [ %.260811061900, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aax, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aax, %bb.ef ]
  %.0.lcssa = phi i32 [ %.05961138, %bb.ec ], [ %.05961138, %.lr.ph1110.preheader ], [ %i.abf, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.abg, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ 10, %bb.ef ] ; 2 uses
  %.4603 = phi i32 [ %.26011137, %bb.ec ], [ %.26011137, %.lr.ph1110.preheader ], [ %i.aax, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.aax, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aax, %bb.ef ]
  %.4595 = phi i32 [ %.25931139, %bb.ec ], [ %i.zw, %.lr.ph1110.preheader ], [ %i.aab, %._crit_edge1111.loopexit.split.loop.exit ], [ %i.zz, %.lr.ph1110.._crit_edge1111.loopexit.split.loop.exit1722_crit_edge ], [ %i.aab, %bb.ef ]
  %i.abh = icmp sgt i32 %.0.lcssa, 9              ; 2 uses
  %..3632 = select i1 %i.abh, i32 -1, i32 %.36321134
  %..0 = select i1 %i.abh, i32 10, i32 %.0.lcssa
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge1103, %bb.eb, %._crit_edge1111, %get_nfc.exit821.thread
  %.6743 = phi i64 [ %.37401132, %get_nfc.exit821.thread ], [ %.4741.lcssa, %._crit_edge1111 ], [ %.37401132, %._crit_edge1103 ], [ %.37401132, %bb.eb ] ; 2 uses
  %.6723 = phi ptr [ %.37201133, %get_nfc.exit821.thread ], [ %.4721.lcssa, %._crit_edge1111 ], [ %.37201133, %._crit_edge1103 ], [ %.37201133, %bb.eb ] ; 2 uses
  %.6635 = phi i32 [ %.36321134, %get_nfc.exit821.thread ], [ %..3632, %._crit_edge1111 ], [ %.36321134, %._crit_edge1103 ], [ %.36321134, %bb.eb ] ; 2 uses
  %.19 = phi ptr [ %.181135, %get_nfc.exit821.thread ], [ null, %._crit_edge1111 ], [ null, %._crit_edge1103 ], [ null, %bb.eb ] ; 2 uses
  %.4610 = phi i32 [ %.16071136, %get_nfc.exit821.thread ], [ %.2608.lcssa, %._crit_edge1111 ], [ %.16071136, %._crit_edge1103 ], [ %.16071136, %bb.eb ] ; 2 uses
  %.6605 = phi i32 [ %.26011137, %get_nfc.exit821.thread ], [ %.4603, %._crit_edge1111 ], [ %.26011137, %._crit_edge1103 ], [ %.26011137, %bb.eb ] ; 2 uses
  %.1597 = phi i32 [ %i.yi, %get_nfc.exit821.thread ], [ 0, %._crit_edge1111 ], [ 0, %._crit_edge1103 ], [ 0, %bb.eb ] ; 2 uses
  %.6 = phi i32 [ %.25931139, %get_nfc.exit821.thread ], [ %.4595, %._crit_edge1111 ], [ %.25931139, %._crit_edge1103 ], [ %.25931139, %bb.eb ] ; 2 uses
  %.4 = phi i32 [ %.11140, %get_nfc.exit821.thread ], [ %..0, %._crit_edge1111 ], [ %i.zl, %._crit_edge1103 ], [ %i.zl, %bb.eb ] ; 3 uses
  %i.abi = icmp slt i32 %.1597, %.4
  br i1 %i.abi, label %.lr.ph1142, label %._crit_edge1143.loopexit

._crit_edge1143.loopexit:                         ; preds = %bb.eg
  %i.abj = icmp sgt i32 %.6, 0
  br label %._crit_edge1143

._crit_edge1143:                                  ; preds = %._crit_edge1143.loopexit, %bb.ck, %bb.ch
  %.3740.lcssa = phi i64 [ %i.cr, %bb.ch ], [ %i.cr, %bb.ck ], [ %.6743, %._crit_edge1143.loopexit ] ; 9 uses
  %.3720.lcssa = phi ptr [ %i.cq, %bb.ch ], [ %i.cq, %bb.ck ], [ %.6723, %._crit_edge1143.loopexit ] ; 5 uses
  %.3632.lcssa = phi i32 [ %.06291210, %bb.ch ], [ %.06291210, %bb.ck ], [ %.6635, %._crit_edge1143.loopexit ]
  %.18.lcssa = phi ptr [ %.16141086, %bb.ch ], [ %.16141086, %bb.ck ], [ %.19, %._crit_edge1143.loopexit ] ; 6 uses
  %.1607.lcssa = phi i32 [ %i.nv, %bb.ch ], [ %i.nv, %bb.ck ], [ %.4610, %._crit_edge1143.loopexit ] ; 2 uses
  %.2601.lcssa = phi i32 [ 0, %bb.ch ], [ %i.os, %bb.ck ], [ %.6605, %._crit_edge1143.loopexit ]
  %.2593.lcssa = phi i1 [ false, %bb.ch ], [ true, %bb.ck ], [ %i.abj, %._crit_edge1143.loopexit ]
  %.1.lcssa = phi i32 [ 1, %bb.ch ], [ 1, %bb.ck ], [ %.4, %._crit_edge1143.loopexit ] ; 2 uses
  %.not800 = icmp eq ptr %.18.lcssa, null
  br i1 %.not800, label %.preheader881, label %bb.eh

.preheader881:                                    ; preds = %._crit_edge1143
  %i.abk = ptrtoint ptr %.26501084 to i64
  %i.abl = ptrtoint ptr %.26821083 to i64         ; 2 uses
  %i.abm = sub i64 %i.abk, %i.abl
  %i.abn = load i32, ptr %i.a, align 4, !tbaa !25
  %i.abo = call i64 %.0624(ptr noundef %.26821083, i64 noundef %i.abm, i32 noundef %i.abn) #23, !callees !54 ; 2 uses
  %i.abp = icmp eq i64 %i.abo, 0
  br i1 %i.abp, label %.lr.ph1152, label %._crit_edge1153

.lr.ph1152:                                       ; preds = %.preheader881
  %i.abq = mul i64 %.3740.lcssa, %.0626
  %i.abr = add i64 %i.abq, %.0627
  br label %bb.ep

bb.eh:                                            ; preds = %._crit_edge1143
  %i.abs = zext nneg i32 %.06401085 to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.26821083, i64 %i.abs
  %i.abu = icmp ugt ptr %i.abt, %.26501084
  br i1 %i.abu, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.abv = load ptr, ptr %0, align 8, !tbaa !19
  %i.abw = ptrtoint ptr %.26821083 to i64
  %i.abx = ptrtoint ptr %i.abv to i64
  %i.aby = sub i64 %i.abw, %i.abx
  store i64 %i.aby, ptr %i.s, align 8, !tbaa !18
  %i.abz = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.aca = mul i64 %.3740.lcssa, %.0626
  %i.acb = add i64 %i.aca, %.0627
  %i.acc = add i64 %i.acb, %i.abz
  %i.acd = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.acc)
  %i.ace = icmp eq ptr %i.acd, null
  br i1 %i.ace, label %.thread826, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.acf = load ptr, ptr %0, align 8, !tbaa !19   ; 2 uses
  %i.acg = load i64, ptr %i.s, align 8, !tbaa !18
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.acg
  %i.aci = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aci
  %i.ack = getelementptr inbounds i8, ptr %i.acj, i64 %i.ae
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.eh
  %.35715 = phi ptr [ %i.ach, %bb.ej ], [ %.26821083, %bb.eh ] ; 6 uses
  %.19667 = phi ptr [ %i.ack, %bb.ej ], [ %.26501084, %bb.eh ] ; 2 uses
  switch i32 %.06401085, label %bb.er [
    i32 4, label %bb.el
    i32 3, label %bb.em
    i32 2, label %bb.en
    i32 1, label %bb.eo
  ]

bb.el:                                            ; preds = %bb.ek
  %i.acl = getelementptr inbounds nuw i8, ptr %.18.lcssa, i64 1
  %i.acm = load i8, ptr %.18.lcssa, align 1, !tbaa !20
  %i.acn = getelementptr inbounds nuw i8, ptr %.35715, i64 1
  store i8 %i.acm, ptr %.35715, align 1, !tbaa !20
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.36716 = phi ptr [ %i.acn, %bb.el ], [ %.35715, %bb.ek ] ; 2 uses
  %.20 = phi ptr [ %i.acl, %bb.el ], [ %.18.lcssa, %bb.ek ] ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.20, i64 1
  %i.acp = load i8, ptr %.20, align 1, !tbaa !20
  %i.acq = getelementptr inbounds nuw i8, ptr %.36716, i64 1
  store i8 %i.acp, ptr %.36716, align 1, !tbaa !20
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.ek
  %.37 = phi ptr [ %i.acq, %bb.em ], [ %.35715, %bb.ek ] ; 2 uses
  %.21 = phi ptr [ %i.aco, %bb.em ], [ %.18.lcssa, %bb.ek ] ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.21, i64 1
  %i.acs = load i8, ptr %.21, align 1, !tbaa !20
  %i.act = getelementptr inbounds nuw i8, ptr %.37, i64 1
  store i8 %i.acs, ptr %.37, align 1, !tbaa !20
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.ek
  %.38 = phi ptr [ %i.act, %bb.en ], [ %.35715, %bb.ek ] ; 2 uses
  %.22 = phi ptr [ %i.acr, %bb.en ], [ %.18.lcssa, %bb.ek ]
  %i.acu = load i8, ptr %.22, align 1, !tbaa !20
  %i.acv = getelementptr inbounds nuw i8, ptr %.38, i64 1
  store i8 %i.acu, ptr %.38, align 1, !tbaa !20
  br label %bb.er

bb.ep:                                            ; preds = %.lr.ph1152, %bb.eq
  %i.acw = phi i64 [ %i.abl, %.lr.ph1152 ], [ %i.adj, %bb.eq ]
  %i.acx = load ptr, ptr %0, align 8, !tbaa !19
  %i.acy = ptrtoint ptr %i.acx to i64
  %i.acz = sub i64 %i.acw, %i.acy
  store i64 %i.acz, ptr %i.s, align 8, !tbaa !18
  %i.ada = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.adb = add i64 %i.abr, %i.ada
  %i.adc = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.adb)
  %i.add = icmp eq ptr %i.adc, null
  br i1 %i.add, label %.thread826, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ade = load ptr, ptr %0, align 8, !tbaa !19   ; 2 uses
  %i.adf = load i64, ptr %i.s, align 8, !tbaa !18 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 %i.adf ; 3 uses
  %i.adh = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.adi = sub nsw i64 %i.adh, %.0627             ; 2 uses
  %i.adj = ptrtoint ptr %i.adg to i64
  %gepdiff = sub nsw i64 %i.adi, %i.adf
  %i.adk = load i32, ptr %i.a, align 4, !tbaa !25
  %i.adl = call i64 %.0624(ptr noundef %i.adg, i64 noundef %gepdiff, i32 noundef %i.adk) #23, !callees !54 ; 2 uses
  %i.adm = icmp eq i64 %i.adl, 0
  br i1 %i.adm, label %bb.ep, label %._crit_edge1153.loopexit, !llvm.loop !125

._crit_edge1153.loopexit:                         ; preds = %bb.eq
  %i.adn = getelementptr inbounds i8, ptr %i.ade, i64 %i.adi
  br label %._crit_edge1153

._crit_edge1153:                                  ; preds = %._crit_edge1153.loopexit, %.preheader881
  %.40.lcssa = phi ptr [ %.26821083, %.preheader881 ], [ %i.adg, %._crit_edge1153.loopexit ]
  %.20668.lcssa = phi ptr [ %.26501084, %.preheader881 ], [ %i.adn, %._crit_edge1153.loopexit ]
  %.lcssa989 = phi i64 [ %i.abo, %.preheader881 ], [ %i.adl, %._crit_edge1153.loopexit ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.40.lcssa, i64 %.lcssa989
  br label %bb.er

bb.er:                                            ; preds = %bb.ek, %bb.eo, %._crit_edge1153
  %.41 = phi ptr [ %i.ado, %._crit_edge1153 ], [ %.35715, %bb.ek ], [ %i.acv, %bb.eo ] ; 2 uses
  %.21669 = phi ptr [ %.20668.lcssa, %._crit_edge1153 ], [ %.19667, %bb.ek ], [ %.19667, %bb.eo ] ; 2 uses
  %i.adp = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.adp, label %.preheader865.lr.ph, label %._crit_edge1165

.preheader865.lr.ph:                              ; preds = %bb.er
  %i.adq = mul i64 %.3740.lcssa, %.0626
  %i.adr = add i64 %i.adq, %.0627
  %wide.trip.count = zext nneg i32 %.1.lcssa to i64
  br label %.preheader865

.preheader865:                                    ; preds = %.preheader865.lr.ph, %._crit_edge1158
  %indvars.iv1368 = phi i64 [ 0, %.preheader865.lr.ph ], [ %indvars.iv.next1369, %._crit_edge1158 ] ; 2 uses
  %.226701163 = phi ptr [ %.21669, %.preheader865.lr.ph ], [ %.23671.lcssa, %._crit_edge1158 ] ; 2 uses
  %.421162 = phi ptr [ %.41, %.preheader865.lr.ph ], [ %i.aer, %._crit_edge1158 ] ; 3 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv1368 ; 2 uses
  %i.adt = ptrtoint ptr %.226701163 to i64
  %i.adu = ptrtoint ptr %.421162 to i64           ; 2 uses
  %i.adv = sub i64 %i.adt, %i.adu
  %i.adw = load i32, ptr %i.ads, align 4, !tbaa !25
  %i.adx = call i64 %.0624(ptr noundef %.421162, i64 noundef %i.adv, i32 noundef %i.adw) #23, !callees !54 ; 2 uses
  %i.ady = icmp eq i64 %i.adx, 0
  br i1 %i.ady, label %.lr.ph1157, label %._crit_edge1158

.lr.ph1157:                                       ; preds = %.preheader865, %bb.es
  %i.adz = phi i64 [ %i.aem, %bb.es ], [ %i.adu, %.preheader865 ]
  %i.aea = load ptr, ptr %0, align 8, !tbaa !19
  %i.aeb = ptrtoint ptr %i.aea to i64
  %i.aec = sub i64 %i.adz, %i.aeb
  store i64 %i.aec, ptr %i.s, align 8, !tbaa !18
  %i.aed = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.aee = add i64 %i.adr, %i.aed
  %i.aef = call ptr @archive_string_ensure(ptr noundef %0, i64 noundef %i.aee)
  %i.aeg = icmp eq ptr %i.aef, null
  br i1 %i.aeg, label %.thread826, label %bb.es

bb.es:                                            ; preds = %.lr.ph1157
  %i.aeh = load ptr, ptr %0, align 8, !tbaa !19   ; 2 uses
  %i.aei = load i64, ptr %i.s, align 8, !tbaa !18 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aei ; 3 uses
  %i.aek = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.ael = sub nsw i64 %i.aek, %.0627             ; 2 uses
  %i.aem = ptrtoint ptr %i.aej to i64
  %gepdiff1219 = sub nsw i64 %i.ael, %i.aei
  %i.aen = load i32, ptr %i.ads, align 4, !tbaa !25
  %i.aeo = call i64 %.0624(ptr noundef %i.aej, i64 noundef %gepdiff1219, i32 noundef %i.aen) #23, !callees !54 ; 2 uses
  %i.aep = icmp eq i64 %i.aeo, 0
  br i1 %i.aep, label %.lr.ph1157, label %._crit_edge1158.loopexit, !llvm.loop !126

end_hunk_1
