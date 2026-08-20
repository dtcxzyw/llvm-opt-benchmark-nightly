inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@php_pcre2_dfa_match:bb.a

bb.dp:                                            ; preds = %bb.do
  store ptr %spec.store.select, ptr %i.hp, align 8, !tbaa !89
  br label %.thread730

bb.dq:                                            ; preds = %bb.dh
  br i1 %.not751, label %bb.dy, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qh = load i32, ptr %i.dr, align 4, !tbaa !70 ; 2 uses
  %.not685 = icmp eq i32 %i.qh, 0
  %i.qi = load ptr, ptr %i.dd, align 8, !tbaa !60 ; 3 uses
  br i1 %.not685, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qj = icmp ult ptr %.11, %i.qi
  br i1 %i.qj, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.qk = call i32 @_pcre2_is_newline_8(ptr noundef %.11, i32 noundef %i.qh, ptr noundef nonnull %i.qi, ptr noundef nonnull %i.hr, i32 noundef %.lobit) #6
  %.not687 = icmp eq i32 %i.qk, 0
  br i1 %.not687, label %bb.dy, label %.thread730

bb.du:                                            ; preds = %bb.dr
  %i.ql = load i32, ptr %i.hr, align 8, !tbaa !72 ; 2 uses
  %i.qm = zext i32 %i.ql to i64
  %i.qn = sub nsw i64 0, %i.qm
  %i.qo = getelementptr inbounds i8, ptr %i.qi, i64 %i.qn
  %.not686 = icmp ugt ptr %.11, %i.qo
  br i1 %.not686, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qp = load i8, ptr %.11, align 1, !tbaa !73
  %i.qq = load i8, ptr %i.hs, align 8, !tbaa !73
  %i.qr = icmp eq i8 %i.qp, %i.qq
  br i1 %i.qr, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.qs = icmp eq i32 %i.ql, 1
  br i1 %i.qs, label %.thread730, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qt = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !73
  %i.qv = load i8, ptr %i.ht, align 1, !tbaa !73
  %i.qw = icmp eq i8 %i.qu, %i.qv
  br i1 %i.qw, label %.thread730, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dq
  %i.qx = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 3 uses
  %i.qy = icmp ult ptr %i.qx, %.2586
  %or.cond811 = select i1 %i.an, i1 %i.qy, i1 false
  br i1 %or.cond811, label %.lr.ph805.preheader, label %.critedge37

.lr.ph805.preheader:                              ; preds = %bb.dy
  %i.qz = sub i64 %.2586817, %.11818
  %scevgep = getelementptr i8, ptr %.11, i64 %i.qz
  br label %.lr.ph805

.lr.ph805:                                        ; preds = %.lr.ph805.preheader, %bb.dz
  %.12804 = phi ptr [ %i.rc, %bb.dz ], [ %i.qx, %.lr.ph805.preheader ] ; 3 uses
  %i.ra = load i8, ptr %.12804, align 1, !tbaa !73
  %i.rb = icmp slt i8 %i.ra, -64
  br i1 %i.rb, label %bb.dz, label %.critedge37

bb.dz:                                            ; preds = %.lr.ph805
  %i.rc = getelementptr inbounds nuw i8, ptr %.12804, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.rc, %.2586
  br i1 %exitcond.not, label %.critedge37, label %.lr.ph805, !llvm.loop !106

.critedge37:                                      ; preds = %bb.dz, %.lr.ph805, %bb.dy
  %.13 = phi ptr [ %i.qx, %bb.dy ], [ %.12804, %.lr.ph805 ], [ %scevgep, %bb.dz ] ; 8 uses
  %i.rd = icmp ugt ptr %.13, %.2586
  br i1 %i.rd, label %.thread730, label %bb.ea

bb.ea:                                            ; preds = %.critedge37
  %i.re = getelementptr inbounds i8, ptr %.13, i64 -1
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !73
  %i.rg = icmp eq i8 %i.rf, 13
  %i.rh = icmp ult ptr %.13, %.2586
  %or.cond708 = select i1 %i.rg, i1 %i.rh, i1 false
  br i1 %or.cond708, label %bb.eb, label %.backedge

bb.eb:                                            ; preds = %bb.ea
  %i.ri = load i8, ptr %.13, align 1, !tbaa !73
  %i.rj = icmp eq i8 %i.ri, 10
  br i1 %i.rj, label %bb.ec, label %.backedge

bb.ec:                                            ; preds = %bb.eb
  %i.rk = load i32, ptr %i.x, align 8, !tbaa !25
  %i.rl = and i32 %i.rk, 2048
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.ed, label %.backedge

bb.ed:                                            ; preds = %bb.ec
  %i.rn = load i32, ptr %i.dr, align 4, !tbaa !70
  %.off712 = add i32 %i.rn, -1
  %switch713 = icmp ult i32 %.off712, 2
  %i.ro = load i32, ptr %i.hr, align 8
  %i.rp = icmp eq i32 %i.ro, 2
  %or.cond716 = select i1 %switch713, i1 true, i1 %i.rp
  %spec.select717.idx = zext i1 %or.cond716 to i64
  %spec.select717 = getelementptr inbounds nuw i8, ptr %.13, i64 %spec.select717.idx
  br label %.backedge

.backedge:                                        ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.0587.be = phi ptr [ %.13, %bb.ea ], [ %spec.select717, %bb.ed ], [ %.13, %bb.ec ], [ %.13, %bb.eb ]
  br label %bb.bc

.thread730:                                       ; preds = %bb.br, %bb.cz, %bb.dg, %bb.bt, %.critedge37, %bb.dt, %bb.dw, %bb.dx, %.thread747, %bb.cg, %._crit_edge902, %.split860, %bb.dn, %bb.do, %bb.dp
  %.0594 = phi i32 [ %i.pd, %bb.do ], [ %i.pd, %bb.dn ], [ %i.pd, %bb.dp ], [ -1, %.split860 ], [ -1, %._crit_edge902 ], [ -1, %bb.cg ], [ -1, %.thread747 ], [ -1, %bb.dx ], [ -1, %bb.dw ], [ -1, %bb.dt ], [ -1, %.critedge37 ], [ -1, %bb.bt ], [ -1, %bb.dg ], [ -1, %bb.cz ], [ -1, %bb.br ] ; 2 uses
  %i.rq = load ptr, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %.not690809 = icmp eq ptr %i.rq, null
  br i1 %.not690809, label %.thread720, label %.lr.ph810

.lr.ph810:                                        ; preds = %.thread730
  %i.rr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.rs = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph810, %bb.ee
  %i.rt = phi ptr [ %i.rq, %.lr.ph810 ], [ %i.rx, %bb.ee ] ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !12
  store ptr %i.ru, ptr %i.a, align 16, !tbaa !12
  %i.rv = load ptr, ptr %i.rr, align 8, !tbaa !107
  %i.rw = load ptr, ptr %i.rs, align 8, !tbaa !108
  call void %i.rv(ptr noundef nonnull %i.rt, ptr noundef %i.rw) #6
  %i.rx = load ptr, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %.not690 = icmp eq ptr %i.rx, null
  br i1 %.not690, label %.thread720, label %bb.ee, !llvm.loop !109

.thread720:                                       ; preds = %bb.ee, %.thread730, %bb.ak, %bb.an, %bb.dm, %bb.aa, %bb.r, %bb.l, %bb.m, %bb.n, %bb.j, %bb.i, %._crit_edge, %bb.h, %bb.f, %bb.e, %bb.b, %bb.a
  %.4 = phi i32 [ -38, %bb.l ], [ -34, %bb.a ], [ -51, %bb.b ], [ -43, %bb.e ], [ -33, %bb.f ], [ -34, %bb.h ], [ -66, %._crit_edge ], [ -31, %bb.i ], [ -32, %bb.j ], [ -56, %bb.r ], [ -44, %bb.aa ], [ -48, %bb.dm ], [ -38, %bb.m ], [ %i.es, %bb.an ], [ -38, %bb.n ], [ -36, %bb.ak ], [ %.0594, %.thread730 ], [ %.0594, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @_pcre2_strlen_8(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @_pcre2_valid_utf_8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_pcre2_is_newline_8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_pcre2_was_newline_8(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @internal_dfa_match(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef range(i32 0, 131071) %5, ptr nofree noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9) unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.dfa_recursion_info, align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = and i32 %i.m, 524288                     ; 2 uses
  %i.o = icmp ne i32 %i.n, 0                      ; 8 uses
  %.lobit = lshr exact i32 %i.n, 19               ; 16 uses
  %i.p = and i32 %i.m, 655360
  %i.q = icmp ne i32 %i.p, 0                      ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !66   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !45
  %.not = icmp ult i32 %i.s, %i.v
  br i1 %.not, label %bb.b, label %.critedge3469

bb.b:                                             ; preds = %bb.a
  %i.w = add i32 %8, 1                            ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = icmp ugt i32 %8, %i.y
  br i1 %i.z, label %.critedge3469, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %5, 131070                      ; 5 uses
  %i.ab = add nsw i32 %7, -2
  %i.ac = sdiv i32 %i.ab, 6                       ; 115 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 832 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 256 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ai = sext i32 %i.ac to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.ai ; 6 uses
  %i.ak = load i8, ptr %1, align 1, !tbaa !73     ; 2 uses
  %.off = add i8 %i.ak, 127
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.preheader4013, label %bb.l

.preheader4013:                                   ; preds = %bb.c, %.preheader4013
  %.02985 = phi ptr [ %i.bb, %.preheader4013 ], [ %1, %bb.c ] ; 5 uses
  %.02790 = phi i64 [ %spec.select, %.preheader4013 ], [ 0, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02985, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !73
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.02985, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !73
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.as, i64 %.02790) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02985, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !73
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.02985, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !73
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.02985, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !73
  %i.bd = icmp eq i8 %i.bc, 120
  br i1 %i.bd, label %.preheader4013, label %bb.d, !llvm.loop !110

bb.d:                                             ; preds = %.preheader4013
  br i1 %i.o, label %.preheader4011, label %bb.f

.preheader4011:                                   ; preds = %bb.d
  %i.be = icmp ne i64 %spec.select, 0
  %.not33204151 = icmp ugt ptr %2, %i.g
  %or.cond34674152 = select i1 %i.be, i1 %.not33204151, i1 false
  br i1 %or.cond34674152, label %.preheader4010, label %.loopexit4012

.preheader4010:                                   ; preds = %.preheader4011, %.critedge
  %.027884154 = phi i64 [ %i.bk, %.critedge ], [ 0, %.preheader4011 ] ; 2 uses
  %.031964153 = phi ptr [ %.131974601, %.critedge ], [ %2, %.preheader4011 ]
  %.131974600 = getelementptr inbounds i8, ptr %.031964153, i64 -1 ; 3 uses
  %i.bf = icmp ugt ptr %.131974600, %i.g
  br i1 %i.bf, label %.lr.ph4602, label %.critedge.thread

bb.e:                                             ; preds = %.lr.ph4602
  %.13197 = getelementptr inbounds i8, ptr %.131974601, i64 -1 ; 3 uses
  %i.bg = icmp ugt ptr %.13197, %i.g
  br i1 %i.bg, label %.lr.ph4602, label %.critedge.thread, !llvm.loop !111

.critedge.thread:                                 ; preds = %.preheader4010, %bb.e
  %.13197.lcssa = phi ptr [ %.13197, %bb.e ], [ %.131974600, %.preheader4010 ]
  %i.bh = add nuw nsw i64 %.027884154, 1
  br label %.loopexit4012

.lr.ph4602:                                       ; preds = %.preheader4010, %bb.e
  %.131974601 = phi ptr [ %.13197, %bb.e ], [ %.131974600, %.preheader4010 ] ; 4 uses
  %i.bi = load i8, ptr %.131974601, align 1, !tbaa !73
  %i.bj = icmp slt i8 %i.bi, -64
  br i1 %i.bj, label %bb.e, label %.critedge, !llvm.loop !111

.critedge:                                        ; preds = %.lr.ph4602
  %i.bk = add nuw nsw i64 %.027884154, 1          ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %spec.select
  br i1 %i.bl, label %.preheader4010, label %.loopexit4012, !llvm.loop !112

bb.f:                                             ; preds = %bb.d
  %i.bm = ptrtoint ptr %2 to i64
  %i.bn = ptrtoint ptr %i.g to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %spec.select) ; 2 uses
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds i8, ptr %2, i64 %i.bq
  br label %.loopexit4012

.loopexit4012:                                    ; preds = %.critedge, %.critedge.thread, %.preheader4011, %bb.f
  %.23198 = phi ptr [ %i.br, %bb.f ], [ %2, %.preheader4011 ], [ %.13197.lcssa, %.critedge.thread ], [ %.131974601, %.critedge ] ; 3 uses
  %.12789 = phi i64 [ %i.bp, %bb.f ], [ 0, %.preheader4011 ], [ %i.bh, %.critedge.thread ], [ %i.bk, %.critedge ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !98
  %i.bu = icmp ult ptr %.23198, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit4012
  store ptr %.23198, ptr %i.bs, align 8, !tbaa !98
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit4012
  %i.bv = ptrtoint ptr %i.k to i64
  %.neg = add i64 %i.bv, 4294967293
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.03005 = phi ptr [ %i.aj, %bb.h ], [ %.23007, %bb.k ] ; 5 uses
  %.12986 = phi ptr [ %1, %bb.h ], [ %i.cx, %bb.k ] ; 7 uses
  %.02855 = phi i32 [ 0, %bb.h ], [ %.12856, %bb.k ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.12986, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !73
  %.not3321 = icmp eq i8 %i.bx, 125               ; 2 uses
  br i1 %.not3321, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.12986, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !73
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.12986, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !73
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.cb, %i.ce            ; 2 uses
  %.not3322 = icmp ugt i64 %i.cf, %.12789
  br i1 %.not3322, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.cg = phi i64 [ %i.cf, %bb.j ], [ 0, %bb.i ]
  %i.ch = icmp slt i32 %.02855, %i.ac
  br i1 %i.ch, label %.thread3571, label %.critedge3469

.thread3571:                                      ; preds = %.thread
  %i.ci = add nsw i32 %.02855, 1
  %i.cj = ptrtoint ptr %.12986 to i64
  %.neg3324 = select i1 %.not3321, i64 4294967293, i64 0
  %.neg3323 = sub i64 %.neg, %i.cj
  %.neg3325 = add i64 %.neg3323, %.neg3324
  %.neg3326 = trunc i64 %.neg3325 to i32
  store i32 %.neg3326, ptr %.03005, align 4, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.03005, i64 4
  store i32 0, ptr %i.ck, align 4, !tbaa !115
  %i.cl = sub i64 %.12789, %i.cg
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.03005, i64 8
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr %.03005, i64 12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread3571
  %.23007 = phi ptr [ %i.co, %.thread3571 ], [ %.03005, %bb.j ]
  %.12856 = phi i32 [ %i.ci, %.thread3571 ], [ %.02855, %bb.j ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.12986, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !73
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.12986, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !73
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.12986, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !73
  %i.cz = icmp eq i8 %i.cy, 120
  br i1 %i.cz, label %bb.i, label %.thread3582, !llvm.loop !117

bb.l:                                             ; preds = %bb.c
  %i.da = icmp eq i32 %8, 0
  br i1 %i.da, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !64
  %i.dd = and i32 %i.dc, 64
  %.not3318 = icmp eq i32 %i.dd, 0
  br i1 %.not3318, label %bb.p, label %.preheader4016

.preheader4016:                                   ; preds = %bb.m, %.preheader4016
  %.32988 = phi ptr [ %i.dm, %.preheader4016 ], [ %1, %bb.m ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.32988, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !73
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 8
  %i.di = getelementptr inbounds nuw i8, ptr %.32988, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !73
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.32988, i64 %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !73
  %i.do = icmp eq i8 %i.dn, 120
  br i1 %i.do, label %.preheader4016, label %bb.n, !llvm.loop !118

bb.n:                                             ; preds = %.preheader4016
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !26 ; 3 uses
  %i.dr = load i32, ptr %6, align 4, !tbaa !26
  %.not3319 = icmp eq i32 %i.dr, 0
  br i1 %.not3319, label %bb.o, label %.thread3582

bb.o:                                             ; preds = %bb.n
  %i.ds = sext i32 %i.dq to i64
  %i.dt = mul nsw i64 %i.ds, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %i.ah, i64 %i.dt, i1 false)
  br label %.thread3582

bb.p:                                             ; preds = %bb.m, %bb.l
  %switch.tableidx = add i8 %i.ak, 119            ; 2 uses
  %i.du = icmp ult i8 %switch.tableidx, 7
  br i1 %i.du, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.p
  %i.dv = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.internal_dfa_match, i64 %i.dv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %switch.edge

switch.edge:                                      ; preds = %bb.p, %switch.lookup
  %i.dw = phi i64 [ %switch.ext, %switch.lookup ], [ 3, %bb.p ]
  %i.dx = ptrtoint ptr %i.k to i64                ; 2 uses
  %exitcond.peel.not = icmp slt i32 %7, 8
  br i1 %exitcond.peel.not, label %.critedge3469, label %bb.q

bb.q:                                             ; preds = %switch.edge
  %i.dy = ptrtoint ptr %1 to i64
  %i.dz = sub i64 %i.dy, %i.dx
  %i.ea = add nsw i64 %i.dz, %i.dw
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.aj, align 4, !tbaa !113
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.ec, align 4, !tbaa !115
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !73
  %i.ef = zext i8 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 8
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !73
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %i.eg
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !73
  %i.en = icmp eq i8 %i.em, 120
  br i1 %i.en, label %.peel.next.preheader, label %.thread3582

.peel.next.preheader:                             ; preds = %bb.q
  %.off4655 = add nsw i32 %7, -8
  %exitcond.not4595 = icmp ult i32 %.off4655, 6
  br i1 %exitcond.not4595, label %.critedge3469, label %.lr.ph4599

.peel.next:                                       ; preds = %.lr.ph4599
  %exitcond.not = icmp eq i32 %i.ac, %i.eo
  br i1 %exitcond.not, label %.critedge3469, label %.lr.ph4599, !llvm.loop !119

.lr.ph4599:                                       ; preds = %.peel.next.preheader, %.peel.next
  %.328584598 = phi i32 [ %i.eo, %.peel.next ], [ 1, %.peel.next.preheader ]
  %.429894597 = phi ptr [ %i.fc, %.peel.next ], [ %i.el, %.peel.next.preheader ] ; 4 uses
  %.pn4596 = phi ptr [ %.43009, %.peel.next ], [ %i.aj, %.peel.next.preheader ] ; 2 uses
  %.43009 = getelementptr inbounds nuw i8, ptr %.pn4596, i64 12 ; 2 uses
  %i.eo = add nuw nsw i32 %.328584598, 1          ; 3 uses
  %i.ep = ptrtoint ptr %.429894597 to i64
  %i.eq = sub i64 %i.ep, %i.dx
  %i.er = trunc i64 %i.eq to i32
  %i.es = add i32 %i.er, 3
  store i32 %i.es, ptr %.43009, align 4, !tbaa !113
  %i.et = getelementptr inbounds nuw i8, ptr %.pn4596, i64 16
  store i32 0, ptr %i.et, align 4, !tbaa !115
  %i.eu = getelementptr inbounds nuw i8, ptr %.429894597, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !73
  %i.ew = zext i8 %i.ev to i64
  %i.ex = shl nuw nsw i64 %i.ew, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.429894597, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !73
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %.429894597, i64 %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fa ; 3 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !73
  %i.fe = icmp eq i8 %i.fd, 120
  br i1 %i.fe, label %.peel.next, label %.thread3582, !llvm.loop !119

.thread3582:                                      ; preds = %.lr.ph4599, %bb.k, %bb.q, %bb.o, %bb.n
  %.33199 = phi ptr [ %2, %bb.q ], [ %2, %bb.n ], [ %2, %bb.o ], [ %.23198, %bb.k ], [ %2, %.lr.ph4599 ] ; 4 uses
  %.62991 = phi ptr [ %i.el, %bb.q ], [ %i.dm, %bb.n ], [ %i.dm, %bb.o ], [ %i.cx, %bb.k ], [ %i.fc, %.lr.ph4599 ]
  %.42859 = phi i32 [ 1, %bb.q ], [ %i.dq, %bb.n ], [ %i.dq, %bb.o ], [ %.12856, %bb.k ], [ %i.eo, %.lr.ph4599 ]
  store i32 0, ptr %6, align 4, !tbaa !26
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %invariant.op = add nsw i32 %i.ac, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fj = ptrtoint ptr %.33199 to i64             ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fo = ptrtoint ptr %i.g to i64                ; 13 uses
  %i.fp = ptrtoint ptr %i.k to i64                ; 10 uses
  %i.fq = icmp sgt i32 %7, 7                      ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 21 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 19 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 32 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 19 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 11 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 %3
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ge = icmp samesign ugt i32 %5, 1             ; 2 uses
  %i.gf = icmp samesign ugt i32 %i.aa, 2          ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = sub i64 %i.fj, %i.fo
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %invariant.op4822 = add i64 %i.fo, 1
  %invariant.op4821 = add i64 %i.fo, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.afa, %.thread3582
  %.03179 = phi ptr [ %9, %.thread3582 ], [ %.153194.ph, %bb.afa ]
  %.03178 = phi ptr [ %i.ah, %.thread3582 ], [ %.03177, %bb.afa ] ; 2 uses
  %.03177 = phi ptr [ %i.aj, %.thread3582 ], [ %.03178, %bb.afa ] ; 7 uses
  %.02992 = phi ptr [ %.33199, %.thread3582 ], [ %i.dsx, %bb.afa ] ; 14 uses
  %.52860 = phi i32 [ %.42859, %.thread3582 ], [ %.67.ph, %bb.afa ] ; 4 uses
  %.02847 = phi i32 [ -1, %.thread3582 ], [ %.42851.ph, %bb.afa ] ; 2 uses
  %.02839 = phi i32 [ 0, %.thread3582 ], [ %.62845.ph, %bb.afa ] ; 2 uses
  %i.gj = load ptr, ptr %i.ff, align 8, !tbaa !99
  %i.gk = icmp ugt ptr %.02992, %i.gj
  br i1 %i.gk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.02992, ptr %i.ff, align 8, !tbaa !99
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gl = load i32, ptr %6, align 4, !tbaa !26
  %i.gm = xor i32 %i.gl, 1
  store i32 %i.gm, ptr %6, align 4, !tbaa !26
  store i32 %.52860, ptr %i.fg, align 4, !tbaa !26
  %i.gn = sext i32 %.52860 to i64
  %i.go = getelementptr inbounds [12 x i8], ptr %.03177, i64 %i.gn
  %i.gp = icmp ult ptr %.02992, %i.i
  br i1 %i.gp, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.gq = load i8, ptr %.02992, align 1, !tbaa !73 ; 2 uses
  %i.gr = zext i8 %i.gq to i32                    ; 10 uses
  %i.gs = icmp ugt i8 %i.gq, -65
  %or.cond = select i1 %i.o, i1 %i.gs, i1 false
  br i1 %or.cond, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.gt = and i32 %i.gr, 32
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %.02992, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !73
  %i.gx = and i8 %i.gw, 63
  %i.gy = zext nneg i8 %i.gx to i32               ; 5 uses
  br i1 %i.gu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gz = shl nuw nsw i32 %i.gr, 6
  %i.ha = and i32 %i.gz, 1984
  %i.hb = or disjoint i32 %i.ha, %i.gy
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.hc = and i32 %i.gr, 16
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.he = shl nuw nsw i32 %i.gr, 12
  %i.hf = and i32 %i.he, 61440
  %i.hg = shl nuw nsw i32 %i.gy, 6
  %i.hh = or disjoint i32 %i.hg, %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %.02992, i64 2
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !73
  %i.hk = and i8 %i.hj, 63
  %i.hl = zext nneg i8 %i.hk to i32
  %i.hm = or disjoint i32 %i.hh, %i.hl
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.hn = and i32 %i.gr, 8
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hp = shl nuw nsw i32 %i.gr, 18
  %i.hq = and i32 %i.hp, 1835008
  %i.hr = shl nuw nsw i32 %i.gy, 12
  %i.hs = or disjoint i32 %i.hr, %i.hq
  %i.ht = getelementptr inbounds nuw i8, ptr %.02992, i64 2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !73
  %i.hv = and i8 %i.hu, 63
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = shl nuw nsw i32 %i.hw, 6
  %i.hy = or disjoint i32 %i.hs, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %.02992, i64 3
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !73
  %i.ib = and i8 %i.ia, 63
  %i.ic = zext nneg i8 %i.ib to i32
  %i.id = or disjoint i32 %i.hy, %i.ic
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.ie = and i32 %i.gr, 4
  %i.if = icmp eq i32 %i.ie, 0
  %i.ig = getelementptr inbounds nuw i8, ptr %.02992, i64 2
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !73
  %i.ii = and i8 %i.ih, 63
  %i.ij = zext nneg i8 %i.ii to i32               ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.02992, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !73
  %i.im = and i8 %i.il, 63
  %i.in = zext nneg i8 %i.im to i32               ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.02992, i64 4
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !73
  %i.iq = and i8 %i.ip, 63
  %i.ir = zext nneg i8 %i.iq to i32               ; 2 uses
  br i1 %i.if, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.is = shl nuw i32 %i.gr, 24
  %i.it = and i32 %i.is, 50331648
  %i.iu = shl nuw nsw i32 %i.gy, 18
  %i.iv = or disjoint i32 %i.iu, %i.it
  %i.iw = shl nuw nsw i32 %i.ij, 12
  %i.ix = or disjoint i32 %i.iv, %i.iw
  %i.iy = shl nuw nsw i32 %i.in, 6
  %i.iz = or disjoint i32 %i.ix, %i.iy
  %i.ja = or disjoint i32 %i.iz, %i.ir
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.jb = shl i32 %i.gr, 30
  %i.jc = and i32 %i.jb, 1073741824
  %i.jd = shl nuw nsw i32 %i.gy, 24
  %i.je = or disjoint i32 %i.jd, %i.jc
  %i.jf = shl nuw nsw i32 %i.ij, 18
  %i.jg = or disjoint i32 %i.je, %i.jf
  %i.jh = shl nuw nsw i32 %i.in, 12
  %i.ji = or disjoint i32 %i.jg, %i.jh
  %i.jj = shl nuw nsw i32 %i.ir, 6
end_hunk_0
